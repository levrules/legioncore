#pragma once

#include "DatabaseEnv.h"
#include "QueryHolder.h"

class LoginQueryHolder : public CharacterDatabaseQueryHolder
{
    uint32 m_accountId;
    ObjectGuid m_guid;
public:
    LoginQueryHolder(uint32 accountId, ObjectGuid guid);
    ObjectGuid const& GetGuid() const;
    uint32 GetAccountId() const;
    bool Initialize();
};
