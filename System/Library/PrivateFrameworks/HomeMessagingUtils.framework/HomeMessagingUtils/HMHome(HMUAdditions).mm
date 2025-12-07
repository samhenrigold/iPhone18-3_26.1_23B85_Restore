@interface HMHome(HMUAdditions)
+ (id)hmu_homesFromHomes:()HMUAdditions withHomeLocationStatus:;
+ (id)hmu_homesFromHomes:()HMUAdditions withRoomNames:;
+ (id)hmu_homesFromHomes:()HMUAdditions withZoneNames:;
- (id)hmu_accessoryWithUniqueIdentifierUUIDString:()HMUAdditions;
- (id)hmu_allRoomsIncludingRoomForEntireHome;
- (id)hmu_allUsersIncludingCurrentUser;
- (id)hmu_endpointAccessories;
- (id)hmu_homePodsDictionary;
- (id)hmu_homePodsIncludingCurrentAccessoryDictionary;
- (id)hmu_roomWithName:()HMUAdditions;
- (id)hmu_roomWithUniqueIdentifier:()HMUAdditions;
- (id)hmu_roomsWithUniqueIdentifiers:()HMUAdditions;
- (id)hmu_userWithSenderCorrelationIdentifier:()HMUAdditions;
- (id)hmu_userWithUniqueIdentifier:()HMUAdditions;
- (id)hmu_userWithUniqueIdentifierUUIDString:()HMUAdditions;
- (id)hmu_zoneWithName:()HMUAdditions;
- (id)hmu_zoneWithUniqueIdentifier:()HMUAdditions;
- (id)hmu_zonesWithUniqueIdentifiers:()HMUAdditions;
- (uint64_t)hmu_isAdministrator:()HMUAdditions;
- (uint64_t)hmu_isCurrentUserAdministrator;
- (uint64_t)hmu_isCurrentUserOwner;
- (uint64_t)hmu_isOwner:()HMUAdditions;
- (uint64_t)hmu_isRemoteAccessAllowedForCurrentUser;
- (uint64_t)hmu_isRemoteAccessAllowedForUser:()HMUAdditions;
@end

@implementation HMHome(HMUAdditions)

- (id)hmu_allUsersIncludingCurrentUser
{
  users = [self users];
  currentUser = [self currentUser];
  v4 = [users arrayByAddingObject:currentUser];

  return v4;
}

- (id)hmu_userWithUniqueIdentifier:()HMUAdditions
{
  v4 = a3;
  communalUsers = [self communalUsers];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HMHome_HMUAdditions__hmu_userWithUniqueIdentifier___block_invoke;
  v9[3] = &unk_279772560;
  v10 = v4;
  v6 = v4;
  v7 = [communalUsers na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hmu_userWithUniqueIdentifierUUIDString:()HMUAdditions
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [[v4 alloc] initWithUUIDString:v5];

  if (v6)
  {
    v7 = [self hmu_userWithUniqueIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)hmu_isRemoteAccessAllowedForCurrentUser
{
  currentUser = [self currentUser];
  v3 = [self hmu_isRemoteAccessAllowedForUser:currentUser];

  return v3;
}

- (uint64_t)hmu_isCurrentUserAdministrator
{
  currentUser = [self currentUser];
  v3 = [self hmu_isAdministrator:currentUser];

  return v3;
}

- (uint64_t)hmu_isCurrentUserOwner
{
  currentUser = [self currentUser];
  v3 = [self hmu_isOwner:currentUser];

  return v3;
}

- (uint64_t)hmu_isRemoteAccessAllowedForUser:()HMUAdditions
{
  v1 = [self homeAccessControlForUser:?];
  isRemoteAccessAllowed = [v1 isRemoteAccessAllowed];

  return isRemoteAccessAllowed;
}

- (uint64_t)hmu_isAdministrator:()HMUAdditions
{
  v1 = [self homeAccessControlForUser:?];
  isAdministrator = [v1 isAdministrator];

  return isAdministrator;
}

- (uint64_t)hmu_isOwner:()HMUAdditions
{
  v1 = [self homeAccessControlForUser:?];
  isOwner = [v1 isOwner];

  return isOwner;
}

- (id)hmu_userWithSenderCorrelationIdentifier:()HMUAdditions
{
  v4 = a3;
  hmu_allUsersIncludingCurrentUser = [self hmu_allUsersIncludingCurrentUser];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HMHome_HMUAdditions__hmu_userWithSenderCorrelationIdentifier___block_invoke;
  v9[3] = &unk_279772560;
  v10 = v4;
  v6 = v4;
  v7 = [hmu_allUsersIncludingCurrentUser na_firstObjectPassingTest:v9];

  return v7;
}

+ (id)hmu_homesFromHomes:()HMUAdditions withRoomNames:
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v21 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = v5;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v22 = *v28;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          rooms = [v10 rooms];
          v12 = [rooms countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v24;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v24 != v14)
                {
                  objc_enumerationMutation(rooms);
                }

                name = [*(*(&v23 + 1) + 8 * j) name];
                v17 = [v6 containsObject:name];

                if (v17)
                {
                  [v21 addObject:v10];
                  goto LABEL_17;
                }
              }

              v13 = [rooms countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }

        v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v8);
    }

    v5 = v19;
  }

  else
  {
    v21 = MEMORY[0x277CBEBF8];
  }

  return v21;
}

+ (id)hmu_homesFromHomes:()HMUAdditions withZoneNames:
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v21 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = v5;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v22 = *v28;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          zones = [v10 zones];
          v12 = [zones countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v24;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v24 != v14)
                {
                  objc_enumerationMutation(zones);
                }

                name = [*(*(&v23 + 1) + 8 * j) name];
                v17 = [v6 containsObject:name];

                if (v17)
                {
                  [v21 addObject:v10];
                  goto LABEL_17;
                }
              }

              v13 = [zones countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }

        v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v8);
    }

    v5 = v19;
  }

  else
  {
    v21 = MEMORY[0x277CBEBF8];
  }

  return v21;
}

+ (id)hmu_homesFromHomes:()HMUAdditions withHomeLocationStatus:
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__HMHome_HMUAdditions__hmu_homesFromHomes_withHomeLocationStatus___block_invoke;
  v6[3] = &__block_descriptor_40_e16_B16__0__HMHome_8l;
  v6[4] = a4;
  v4 = [a3 na_filter:v6];

  return v4;
}

- (id)hmu_allRoomsIncludingRoomForEntireHome
{
  rooms = [self rooms];
  roomForEntireHome = [self roomForEntireHome];
  v4 = [rooms arrayByAddingObject:roomForEntireHome];

  return v4;
}

- (id)hmu_roomWithUniqueIdentifier:()HMUAdditions
{
  v4 = a3;
  rooms = [self rooms];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HMHome_HMUAdditions__hmu_roomWithUniqueIdentifier___block_invoke;
  v9[3] = &unk_2797724F0;
  v10 = v4;
  v6 = v4;
  v7 = [rooms na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hmu_roomsWithUniqueIdentifiers:()HMUAdditions
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    rooms = [self rooms];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__HMHome_HMUAdditions__hmu_roomsWithUniqueIdentifiers___block_invoke;
    v9[3] = &unk_2797724F0;
    v10 = v5;
    v7 = [rooms na_filter:v9];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (id)hmu_roomWithName:()HMUAdditions
{
  v4 = a3;
  rooms = [self rooms];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__HMHome_HMUAdditions__hmu_roomWithName___block_invoke;
  v9[3] = &unk_2797724F0;
  v10 = v4;
  v6 = v4;
  v7 = [rooms na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hmu_zoneWithUniqueIdentifier:()HMUAdditions
{
  v4 = a3;
  zones = [self zones];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HMHome_HMUAdditions__hmu_zoneWithUniqueIdentifier___block_invoke;
  v9[3] = &unk_279772518;
  v10 = v4;
  v6 = v4;
  v7 = [zones na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hmu_zonesWithUniqueIdentifiers:()HMUAdditions
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    zones = [self zones];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__HMHome_HMUAdditions__hmu_zonesWithUniqueIdentifiers___block_invoke;
    v9[3] = &unk_279772518;
    v10 = v5;
    v7 = [zones na_filter:v9];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (id)hmu_zoneWithName:()HMUAdditions
{
  v4 = a3;
  zones = [self zones];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__HMHome_HMUAdditions__hmu_zoneWithName___block_invoke;
  v9[3] = &unk_279772518;
  v10 = v4;
  v6 = v4;
  v7 = [zones na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hmu_accessoryWithUniqueIdentifierUUIDString:()HMUAdditions
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [[v4 alloc] initWithUUIDString:v5];

  if (v6)
  {
    v7 = [self accessoryWithUniqueIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)hmu_homePodsDictionary
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  accessories = [self accessories];
  v4 = [accessories countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(accessories);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 hmu_isHomePod] && (objc_msgSend(v8, "isCurrentAccessory") & 1) == 0)
        {
          uniqueIdentifier = [v8 uniqueIdentifier];
          [v2 setObject:v8 forKey:uniqueIdentifier];
        }
      }

      v5 = [accessories countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)hmu_homePodsIncludingCurrentAccessoryDictionary
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB38];
  hmu_homePodsDictionary = [self hmu_homePodsDictionary];
  v4 = [v2 dictionaryWithDictionary:hmu_homePodsDictionary];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  accessories = [self accessories];
  v6 = [accessories countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(accessories);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 hmu_isHomePod])
        {
          uniqueIdentifier = [v10 uniqueIdentifier];
          [v4 setObject:v10 forKey:uniqueIdentifier];
        }
      }

      v7 = [accessories countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)hmu_endpointAccessories
{
  accessories = [self accessories];
  v2 = [accessories na_filter:&__block_literal_global_1];

  return v2;
}

@end