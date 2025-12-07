@interface HMDHomePresenceRemote
- (BOOL)areUsersAtHome:(id)home;
- (BOOL)areUsersNotAtHome:(id)home;
- (BOOL)isAnyUserAtHome;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNoUserAtHome;
- (BOOL)isUserAtHome:(id)home;
- (BOOL)isUserNotAtHome:(id)home;
- (HMDHomePresenceRemote)initWithPresenceByPairingIdentity:(id)identity;
- (HMDHomePresenceRemote)initWithPresenceByUserId:(id)id;
- (NSString)description;
- (id)regionForUser:(id)user;
- (unint64_t)hash;
@end

@implementation HMDHomePresenceRemote

- (BOOL)isAnyUserAtHome
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(NSDictionary *)self->_userPresenceMap count])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    allValues = [(NSDictionary *)self->_userPresenceMap allValues];
    v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(allValues);
          }

          if ([*(*(&v8 + 1) + 8 * i) value] == 1)
          {
            LOBYTE(v4) = 1;
            goto LABEL_12;
          }
        }

        v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isNoUserAtHome
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(NSDictionary *)self->_userPresenceMap count])
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSDictionary *)self->_userPresenceMap allValues];
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v7 &= [*(*(&v10 + 1) + 8 * i) value] == 2;
      }

      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)areUsersNotAtHome:(id)home
{
  v18 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  if ([homeCopy count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = homeCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      v9 = 1;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [(HMDHomePresenceRemote *)self regionForUser:*(*(&v13 + 1) + 8 * i), v13];
          v9 &= [v11 value] == 2;
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)areUsersAtHome:(id)home
{
  v18 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  if ([homeCopy count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = homeCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      v9 = 1;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [(HMDHomePresenceRemote *)self regionForUser:*(*(&v13 + 1) + 8 * i), v13];
          v9 &= [v11 value] == 1;
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isUserNotAtHome:(id)home
{
  v3 = [(HMDHomePresenceRemote *)self regionForUser:home];
  v4 = [v3 value] == 2;

  return v4;
}

- (BOOL)isUserAtHome:(id)home
{
  v3 = [(HMDHomePresenceRemote *)self regionForUser:home];
  v4 = [v3 value] == 1;

  return v4;
}

- (id)regionForUser:(id)user
{
  userCopy = user;
  userPresenceMap = self->_userPresenceMap;
  pairingIdentity = [userCopy pairingIdentity];
  identifier = [pairingIdentity identifier];
  v8 = [(NSDictionary *)userPresenceMap objectForKeyedSubscript:identifier];

  if (!v8)
  {
    v9 = self->_userPresenceMap;
    uuid = [userCopy uuid];
    uUIDString = [uuid UUIDString];
    v8 = [(NSDictionary *)v9 objectForKeyedSubscript:uUIDString];
  }

  return v8;
}

- (unint64_t)hash
{
  userPresenceMap = [(HMDHomePresenceRemote *)self userPresenceMap];
  v3 = [userPresenceMap hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    userPresenceMap = [(HMDHomePresenceRemote *)self userPresenceMap];
    userPresenceMap2 = [v6 userPresenceMap];
    v9 = [userPresenceMap isEqualToDictionary:userPresenceMap2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  userPresenceMap = [(HMDHomePresenceRemote *)self userPresenceMap];
  v4 = [v2 stringWithFormat:@"[Home-Presence-Remote: %@]", userPresenceMap];

  return v4;
}

- (HMDHomePresenceRemote)initWithPresenceByPairingIdentity:(id)identity
{
  v25 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  v23.receiver = self;
  v23.super_class = HMDHomePresenceRemote;
  v5 = [(HMDHomePresenceRemote *)&v23 init];
  v6 = v5;
  if (v5)
  {
    v18 = v5;
    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(identityCopy, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    allKeys = [identityCopy allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [identityCopy objectForKeyedSubscript:v13];
          v15 = [HMDUserPresenceRegion regionWithNumber:v14];
          [(NSDictionary *)v7 setObject:v15 forKey:v13];
        }

        v10 = [allKeys countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }

    v6 = v18;
    userPresenceMap = v18->_userPresenceMap;
    v18->_userPresenceMap = v7;
  }

  return v6;
}

- (HMDHomePresenceRemote)initWithPresenceByUserId:(id)id
{
  v25 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v23.receiver = self;
  v23.super_class = HMDHomePresenceRemote;
  v5 = [(HMDHomePresenceRemote *)&v23 init];
  v6 = v5;
  if (v5)
  {
    v18 = v5;
    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(idCopy, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    allKeys = [idCopy allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [idCopy objectForKeyedSubscript:v13];
          v15 = [HMDUserPresenceRegion regionWithNumber:v14];
          [(NSDictionary *)v7 setObject:v15 forKey:v13];
        }

        v10 = [allKeys countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }

    v6 = v18;
    userPresenceMap = v18->_userPresenceMap;
    v18->_userPresenceMap = v7;
  }

  return v6;
}

@end