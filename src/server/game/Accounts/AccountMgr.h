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

#ifndef _ACCMGR_H
#define _ACCMGR_H

#include <string>
#include "Define.h"

enum class AccountOpResult : uint8
{
    AOR_OK,
    AOR_NAME_TOO_LONG,
    AOR_PASS_TOO_LONG,
    AOR_EMAIL_TOO_LONG,
    AOR_NAME_ALREADY_EXIST,
    AOR_NAME_NOT_EXIST,
    AOR_DB_INTERNAL_ERROR,
};

#define MAX_PASS_STR 16
#define MAX_EMAIL_STR 320

namespace AccountMgr
{
    TC_GAME_API AccountOpResult CreateAccount(std::string username, std::string password, bool async = true);
#ifndef _WEB_API
    TC_GAME_API AccountOpResult DeleteAccount(uint32 accountId);
#endif
    TC_GAME_API AccountOpResult ChangeUsername(uint32 accountId, std::string newUsername, std::string newPassword, bool async = true);
    TC_GAME_API AccountOpResult ChangePassword(uint32 accountId, std::string newPassword, bool async = true);
    TC_GAME_API bool CheckPassword(uint32 accountId, std::string password);

    TC_GAME_API uint32 GetId(std::string username);
    TC_GAME_API uint32 GetSecurity(uint32 accountId);
    TC_GAME_API uint32 GetSecurity(uint32 accountId, int32 realmId);
    TC_GAME_API bool GetName(uint32 accountId, std::string& name);
    TC_GAME_API uint32 GetCharactersCount(uint32 accountId);
    TC_GAME_API std::string CalculateShaPassHash(const std::string& name, const std::string& password);

    TC_GAME_API bool IsPlayerAccount(uint32 gmlevel);
    TC_GAME_API bool IsModeratorAccount(uint32 gmlevel);
    TC_GAME_API bool IsGMAccount(uint32 gmlevel);
    TC_GAME_API bool IsAdminAccount(uint32 gmlevel);
    TC_GAME_API bool IsConsoleAccount(uint32 gmlevel);
};

#endif
