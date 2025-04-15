/*
 * Copyright (C) 2008-2018 TrinityCore <https://www.trinitycore.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "Position.h"
#include "ByteBuffer.h"
#include "GridDefines.h"
#include "Random.h"

#include <G3D/LineSegment.h>
#include <G3D/g3dmath.h>
#include <sstream>

void Position::operator+=(Position pos)
{
    m_positionX += pos.m_positionX;
    m_positionY += pos.m_positionY;
    m_positionZ += pos.m_positionZ;
    m_orientation += pos.m_orientation;
}

bool Position::operator==(Position const &a)
{
    return (G3D::fuzzyEq(a.m_positionX, m_positionX) &&
        G3D::fuzzyEq(a.m_positionY, m_positionY) &&
        G3D::fuzzyEq(a.m_positionZ, m_positionZ) &&
        G3D::fuzzyEq(a.m_orientation, m_orientation));
}

Position Position::operator-(Position const& rkVector) const
{
    return Position(m_positionX - rkVector.m_positionX, m_positionY - rkVector.m_positionY, m_positionZ - rkVector.m_positionZ);
}

float Position::magnitude() const
{
    return ::sqrtf(m_positionX * m_positionX + m_positionY * m_positionY + m_positionZ * m_positionZ);
}

float Position::length() const
{
    return magnitude();
}

void Position::RelocateOffset(const Position & offset)
{
    m_positionX = GetPositionX() + (offset.GetPositionX() * std::cos(GetOrientation()) + offset.GetPositionY() * std::sin(GetOrientation() + float(M_PI)));
    m_positionY = GetPositionY() + (offset.GetPositionY() * std::cos(GetOrientation()) + offset.GetPositionX() * std::sin(GetOrientation()));
    m_positionZ = GetPositionZ() + offset.GetPositionZ();
    SetOrientation(GetOrientation() + offset.GetOrientation());
}

bool Position::IsPositionValid() const
{
    return Trinity::IsValidMapCoord(m_positionX, m_positionY, m_positionZ, m_orientation);
}

float Position::GetExactDist2d(const float x, const float y) const
{
    return std::sqrt(GetExactDist2dSq(x, y));
}

float Position::GetExactDist2d(Position const* pos) const
{
    return std::sqrt(GetExactDist2dSq(pos));
}

float Position::GetExactDist(float x, float y, float z) const
{
    return std::sqrt(GetExactDistSq(x, y, z));
}

float Position::GetExactDist(Position const* pos) const
{
    return std::sqrt(GetExactDistSq(pos));
}

void Position::GetPositionOffsetTo(const Position & endPos, Position & retOffset) const
{
    float dx = endPos.GetPositionX() - GetPositionX();
    float dy = endPos.GetPositionY() - GetPositionY();

    retOffset.m_positionX = dx * std::cos(GetOrientation()) + dy * std::sin(GetOrientation());
    retOffset.m_positionY = dy * std::cos(GetOrientation()) - dx * std::sin(GetOrientation());
    retOffset.m_positionZ = endPos.GetPositionZ() - GetPositionZ();
    retOffset.SetOrientation(endPos.GetOrientation() - GetOrientation());
}

Position Position::GetPositionWithOffset(Position const& offset) const
{
    Position ret(*this);
    ret.RelocateOffset(offset);
    return ret;
}

float Position::GetAngle(Position const* pos) const
{
    if (!pos)
        return 0;

    return GetAngle(pos->GetPositionX(), pos->GetPositionY());
}

// Return angle in range 0..2*pi
float Position::GetAngle(float x, float y) const
{
    float dx = x - GetPositionX();
    float dy = y - GetPositionY();

    float ang = std::atan2(dy, dx);
    ang = (ang >= 0) ? ang : 2 * float(M_PI) + ang;
    return ang;
}

void Position::GetSinCos(const float x, const float y, float &vsin, float &vcos) const
{
    float dx = GetPositionX() - x;
    float dy = GetPositionY() - y;

    if (std::fabs(dx) < 0.001f && std::fabs(dy) < 0.001f)
    {
        float angle = (float)rand_norm()*static_cast<float>(2 * M_PI);
        vcos = std::cos(angle);
        vsin = std::sin(angle);
    }
    else
    {
        float dist = std::sqrt((dx*dx) + (dy*dy));
        vcos = dx / dist;
        vsin = dy / dist;
    }
}

void Position::SimplePosXYRelocationByAngle(Position &pos, float dist, float angle, bool relative) const
{
    if (!relative)
        angle += GetOrientation();

    pos.m_positionX = m_positionX + dist * std::cos(angle);
    pos.m_positionY = m_positionY + dist * std::sin(angle);
    pos.m_positionZ = m_positionZ;

    // Prevent invalid coordinates here, position is unchanged
    if (!Trinity::IsValidMapCoord(pos.m_positionX, pos.m_positionY))
    {
        pos.Relocate(this);
        TC_LOG_FATAL("misc", "Position::SimplePosXYRelocationByAngle invalid coordinates X: %f and Y: %f were passed!", pos.m_positionX, pos.m_positionY);
        return;
    }

    Trinity::NormalizeMapCoord(pos.m_positionX);
    Trinity::NormalizeMapCoord(pos.m_positionY);
    pos.SetOrientation(GetOrientation());
}

bool Position::IsWithinBox(const Position& center, float xradius, float yradius, float zradius) const
{
    // rotate the WorldObject position instead of rotating the whole cube, that way we can make a simplified
    // is-in-cube check and we have to calculate only one point instead of 4

    // 2PI = 360*, keep in mind that ingame orientation is counter-clockwise
    double rotation = 2 * M_PI - center.GetOrientation();
    double sinVal = std::sin(rotation);
    double cosVal = std::cos(rotation);

    float BoxDistX = GetPositionX() - center.GetPositionX();
    float BoxDistY = GetPositionY() - center.GetPositionY();

    float rotX = float(center.GetPositionX() + BoxDistX * cosVal - BoxDistY*sinVal);
    float rotY = float(center.GetPositionY() + BoxDistY * cosVal + BoxDistX*sinVal);

    // box edges are parallel to coordiante axis, so we can treat every dimension independently :D
    float dz = GetPositionZ() - center.GetPositionZ();
    float dx = rotX - center.GetPositionX();
    float dy = rotY - center.GetPositionY();
    if ((std::fabs(dx) > xradius) ||
        (std::fabs(dy) > yradius) ||
        (std::fabs(dz) > zradius))
        return false;

    return true;
}

bool Position::HasInArc(float arc, const Position* obj, float border) const
{
    // always have self in arc
    if (obj == this)
        return true;

    // move arc to range 0.. 2*pi
    arc = NormalizeOrientation(arc);

    float angle = GetAngle(obj);
    angle -= m_orientation;

    // move angle to range -pi ... +pi
    angle = NormalizeOrientation(angle);
    if (angle > float(M_PI))
        angle -= 2.0f * float(M_PI);

    float lborder = -1 * (arc / border);                        // in range -pi..0
    float rborder = (arc / border);                             // in range 0..pi
    return ((angle >= lborder) && (angle <= rborder));
}

bool Position::HasInLine(Position const* pos, float width) const
{
    if (!HasInArc(float(M_PI), pos))
        return false;

    float angle = GetRelativeAngle(pos);
    return std::fabs(std::sin(angle)) * GetExactDist2d(pos->GetPositionX(), pos->GetPositionY()) < width;
}

std::string Position::ToString() const
{
    std::stringstream sstr;
    sstr << "X: " << m_positionX << " Y: " << m_positionY << " Z: " << m_positionZ << " O: " << m_orientation;
    return sstr.str();
}

float Position::NormalizeOrientation(float o)
{
    // fmod only supports positive numbers. Thus we have
    // to emulate negative numbers
    if (o < 0)
    {
        float mod = o *-1;
        mod = std::fmod(mod, 2.0f * static_cast<float>(M_PI));
        mod = -mod + 2.0f * static_cast<float>(M_PI);
        return mod;
    }
    return std::fmod(o, 2.0f * static_cast<float>(M_PI));
}

bool Position::IsLinesCross(Position const &pos11, Position const &pos12, Position const &pos21, Position const &pos22, Position * dest) const
{
    //Line 1
    G3D::Vector2 p11(pos11.GetPositionX(), pos11.GetPositionY());
    G3D::Vector2 p12(pos12.GetPositionX(), pos12.GetPositionY());
    G3D::LineSegment2D line1 = G3D::LineSegment2D::fromTwoPoints(p11, p12);
    //Line 2
    G3D::Vector2 p21(pos21.GetPositionX(), pos21.GetPositionY());
    G3D::Vector2 p22(pos22.GetPositionX(), pos22.GetPositionY());
    G3D::LineSegment2D line2 = G3D::LineSegment2D::fromTwoPoints(p21, p22);

    G3D::Vector2 result = line1.intersection(line2);
    //check line
    if (result == G3D::Vector2::inf())
        return false;

    if (dest)
    {
        dest->m_positionX = result.x;
        dest->m_positionY = result.y;
    }

    return true;
}

bool Position::IsPointInBox(Position const& centerBox, std::vector<Position> box, Position const& point) const
{
    for (uint32 j = 0; j < box.size(); ++j)
    {
        uint32 first = j;
        uint32 second = j + 1;
        if (second >= box.size())
            second = 0;

        if (centerBox.IsLinesCross(centerBox, point, box[first], box[second]))
            return false;
    }
    return true;
}

void Position::GenerateNonDuplicatePoints(std::list<Position>& randPosList, Position const& centerPos, uint8 maxPoint, float randMin, float randMax, float minDist) const
{
    Position pos;
    uint8 traiCount = 0;

    while (randPosList.size() < maxPoint)
    {
        auto badPos = false;
        centerPos.SimplePosXYRelocationByAngle(pos, frand(randMin, randMax), frand(0.0f, 6.28f));
        ++traiCount;

        for (const auto& _pos : randPosList)
        {
            if (pos.GetExactDist(&_pos) <= minDist)
            {
                badPos = true;
                break;
            }
        }

        if (!badPos || traiCount > (maxPoint * 10))
            randPosList.push_back(pos);
    }
}

ByteBuffer& operator<<(ByteBuffer& buf, Position::ConstStreamer<Position::XY> const& streamer)
{
    buf << streamer.Pos->GetPositionX();
    buf << streamer.Pos->GetPositionY();
    return buf;
}

ByteBuffer& operator>>(ByteBuffer& buf, Position::Streamer<Position::XY> const& streamer)
{
    float x, y;
    buf >> x >> y;
    streamer.Pos->Relocate(x, y);
    return buf;
}

ByteBuffer& operator<<(ByteBuffer& buf, Position::ConstStreamer<Position::XYZ> const& streamer)
{
    buf << streamer.Pos->GetPositionX();
    buf << streamer.Pos->GetPositionY();
    buf << streamer.Pos->GetPositionZ();
    return buf;
}

ByteBuffer& operator>>(ByteBuffer& buf, Position::Streamer<Position::XYZ> const& streamer)
{
    float x, y, z;
    buf >> x >> y >> z;
    streamer.Pos->Relocate(x, y, z);
    return buf;
}

ByteBuffer& operator<<(ByteBuffer& buf, Position::ConstStreamer<Position::XYZO> const& streamer)
{
    buf << streamer.Pos->GetPositionX();
    buf << streamer.Pos->GetPositionY();
    buf << streamer.Pos->GetPositionZ();
    buf << streamer.Pos->GetOrientation();
    return buf;
}

ByteBuffer& operator>>(ByteBuffer& buf, Position::Streamer<Position::XYZO> const& streamer)
{
    float x, y, z, o;
    buf >> x >> y >> z >> o;
    streamer.Pos->Relocate(x, y, z, o);
    return buf;
}

ByteBuffer& operator<<(ByteBuffer& buf, Position::ConstStreamer<Position::PackedXYZ> const& streamer)
{
    buf.appendPackXYZ(streamer.Pos->GetPositionX(), streamer.Pos->GetPositionY(), streamer.Pos->GetPositionZ());
    return buf;
}
