/*
 * Copyright (C) 2008-2012 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
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

#include "Common.h"
#include "ObjectMgr.h"
#include "DatabaseEnv.h"

#include "Bag.h"
#include "Log.h"
#include "UpdateData.h"

Bag::Bag(): Item()
{
    m_objectType |= TYPEMASK_CONTAINER | TYPEMASK_OBJECT;
    m_objectTypeId = TYPEID_CONTAINER;

    m_valuesCount = CONTAINER_END;
    _dynamicValuesCount = CONTAINER_DYNAMIC_END;

    memset(m_bagslot, 0, sizeof(Item*) * MAX_BAG_SIZE);
}

Bag::~Bag()
{
    // volatile uint32 bagDebug = GetGUIDLow();
    for (uint8 i = 0; i < MAX_BAG_SIZE; ++i)
        if (Item* item = m_bagslot[i])
        {
            // volatile uint32 itemDebug = m_bagslot[i]->GetGUIDLow();
            if (item->IsInWorld())
            {
                TC_LOG_FATAL("entities.player.items", "Item %u (slot %u, bag slot %u) in bag %u (slot %u, bag slot %u, m_bagslot %u) is to be deleted but is still in world.",
                    item->GetEntry(), (uint32)item->GetSlot(), (uint32)item->GetBagSlot(),
                    GetEntry(), (uint32)GetSlot(), (uint32)GetBagSlot(), (uint32)i);
                item->RemoveFromWorld();
            }
            delete m_bagslot[i];
        }
}

void Bag::AddToWorld()
{
    Item::AddToWorld();

    for (uint32 i = 0; i < GetBagSize(); ++i)
        if (m_bagslot[i])
            m_bagslot[i]->AddToWorld();
}

void Bag::RemoveFromWorld()
{
    volatile uint32 bagDebug = GetGUIDLow();
    for (uint32 i = 0; i < GetBagSize(); ++i)
        if (m_bagslot[i] && m_bagslot[i]->IsInWorld())
        {
            volatile uint32 itemDebug = m_bagslot[i]->GetGUIDLow();
            m_bagslot[i]->RemoveFromWorld();
        }

    Item::RemoveFromWorld();
}

void Bag::ResetMap()
{
    for (uint32 i = 0; i < GetBagSize(); ++i)
        if (m_bagslot[i])
            m_bagslot[i]->ResetMap();

    Item::ResetMap();
}

void Bag::SetMap(Map* map)
{
    for (uint32 i = 0; i < GetBagSize(); ++i)
        if (m_bagslot[i])
            m_bagslot[i]->SetMap(map);

    Item::SetMap(map);
}

bool Bag::Create(ObjectGuid::LowType const& guidlow, uint32 itemid, Player const* owner)
{
    ItemTemplate const* itemProto = sObjectMgr->GetItemTemplate(itemid);

    if (!itemProto || itemProto->GetContainerSlots() > MAX_BAG_SIZE)
        return false;

    Object::_Create(ObjectGuid::Create<HighGuid::Item>(guidlow));

    _bonusData.Initialize(itemProto);

    SetEntry(itemid);
    SetObjectScale(1.0f);

    SetGuidValue(ITEM_FIELD_OWNER, owner ? owner->GetGUID() : ObjectGuid::Empty);
    SetGuidValue(ITEM_FIELD_CONTAINED_IN, owner ? owner->GetGUID() : ObjectGuid::Empty);

    SetUInt32Value(ITEM_FIELD_MAX_DURABILITY, itemProto->MaxDurability);
    SetUInt32Value(ITEM_FIELD_DURABILITY, itemProto->MaxDurability);
    SetUInt32Value(ITEM_FIELD_STACK_COUNT, 1);

    SetUInt32Value(ITEM_FIELD_DYNAMIC_FLAGS, ITEM_FLAG_UNK11 | ITEM_FLAG_UNK12);

    // Setting the number of Slots the Container has
    SetUInt32Value(CONTAINER_FIELD_NUM_SLOTS, itemProto->GetContainerSlots());

    // Cleaning 20 slots
    for (uint8 i = 0; i < MAX_BAG_SIZE; ++i)
    {
        SetGuidValue(CONTAINER_FIELD_SLOT_1 + (i*4), ObjectGuid::Empty);
        m_bagslot[i] = nullptr;
    }

    return true;
}

void Bag::SaveToDB(CharacterDatabaseTransaction& trans)
{
    Item::SaveToDB(trans);
}

bool Bag::LoadFromDB(ObjectGuid::LowType const& guid, ObjectGuid const& owner_guid, Field* fields, uint32 entry, uint8 oLevel)
{
    if (!Item::LoadFromDB(guid, owner_guid, fields, entry, oLevel))
        return false;

    ItemTemplate const* itemProto = GetTemplate(); // checked in Item::LoadFromDB
    SetUInt32Value(CONTAINER_FIELD_NUM_SLOTS, itemProto->GetContainerSlots());
    // cleanup bag content related item value fields (its will be filled correctly from `character_inventory`)
    for (uint8 i = 0; i < MAX_BAG_SIZE; ++i)
    {
        SetGuidValue(CONTAINER_FIELD_SLOT_1 + (i*4), ObjectGuid::Empty);
        delete m_bagslot[i];
        m_bagslot[i] = nullptr;
    }

    return true;
}

void Bag::DeleteFromDB(CharacterDatabaseTransaction& trans)
{
    for (uint8 i = 0; i < MAX_BAG_SIZE; ++i)
        if (m_bagslot[i])
            m_bagslot[i]->DeleteFromDB(trans);

    Item::DeleteFromDB(trans);
}

uint32 Bag::GetFreeSlots() const
{
    uint32 slots = 0;
    for (uint32 i=0; i < GetBagSize(); ++i)
        if (!m_bagslot[i])
            ++slots;

    return slots;
}

void Bag::RemoveItem(uint8 slot, bool /*update*/)
{
    ASSERT(slot < MAX_BAG_SIZE);

    if (m_bagslot[slot])
        m_bagslot[slot]->SetContainer(nullptr);

    m_bagslot[slot] = nullptr;
    SetGuidValue(CONTAINER_FIELD_SLOT_1 + (slot * 4), ObjectGuid::Empty);
}

void Bag::StoreItem(uint8 slot, Item* pItem, bool /*update*/)
{
    ASSERT(slot < MAX_BAG_SIZE);

    if (pItem && pItem->GetGUID() != this->GetGUID())
    {
        m_bagslot[slot] = pItem;
        SetGuidValue(CONTAINER_FIELD_SLOT_1 + (slot * 4), pItem->GetGUID());
        pItem->SetGuidValue(ITEM_FIELD_CONTAINED_IN, GetGUID());
        pItem->SetGuidValue(ITEM_FIELD_OWNER, GetOwnerGUID());
        pItem->SetContainer(this);
        pItem->SetSlot(slot);
    }
}

void Bag::BuildCreateUpdateBlockForPlayer(UpdateData* data, Player* target) const
{
    Item::BuildCreateUpdateBlockForPlayer(data, target);

    for (uint32 i = 0; i < GetBagSize(); ++i)
        if (m_bagslot[i])
            m_bagslot[i]->BuildCreateUpdateBlockForPlayer(data, target);
}

// If the bag is empty returns true
bool Bag::IsEmpty() const
{
    for (uint32 i = 0; i < GetBagSize(); ++i)
        if (m_bagslot[i])
            return false;

    return true;
}

uint32 Bag::GetItemCount(uint32 item, Item* eItem) const
{
    Item* pItem;
    uint32 count = 0;
    for (uint32 i=0; i < GetBagSize(); ++i)
    {
        pItem = m_bagslot[i];
        if (pItem && pItem != eItem && pItem->IsInWorld() && pItem->GetEntry() == item)
            count += pItem->GetCount();
    }

    if (eItem && eItem->GetTemplate()->GetGemProperties())
    {
        for (uint32 i=0; i < GetBagSize(); ++i)
        {
            pItem = m_bagslot[i];
            if (pItem && pItem != eItem && pItem->GetTemplate()->GetSocketType(0))
                count += pItem->GetGemCountWithID(item);
        }
    }

    return count;
}

uint32 Bag::GetItemCountWithLimitCategory(uint32 limitCategory, Item* skipItem) const
{
    uint32 count = 0;
    for (uint32 i = 0; i < GetBagSize(); ++i)
        if (Item* pItem = m_bagslot[i])
            if (pItem != skipItem)
                if (ItemTemplate const* pProto = pItem->GetTemplate())
                    if (pProto->GetLimitCategory() == limitCategory)
                        count += m_bagslot[i]->GetCount();

    return count;
}

uint32 Bag::GetItemCountByQuality(uint8 Quality, int8 Expansion) const
{
    uint32 count = 0;
    for (uint32 i = 0; i < GetBagSize(); ++i)
        if (Item* pItem = m_bagslot[i])
            if (ItemTemplate const* pProto = pItem->GetTemplate())
                if (pProto->GetQuality() == Quality && (Expansion == -1 || Expansion == pProto->GetRequiredExpansion()))
                    count += pItem->GetCount();

    return count;
}

uint8 Bag::GetSlotByItemGUID(ObjectGuid guid) const
{
    for (uint32 i = 0; i < GetBagSize(); ++i)
        if (m_bagslot[i] != nullptr)
            if (m_bagslot[i]->GetGUID() == guid)
                return i;

    return NULL_SLOT;
}

Item* Bag::GetItemByPos(uint8 slot) const
{
    if (slot < GetBagSize())
        return m_bagslot[slot];

    return nullptr;
}

