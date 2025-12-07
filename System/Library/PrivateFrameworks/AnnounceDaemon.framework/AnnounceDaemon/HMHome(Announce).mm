@interface HMHome(Announce)
- (BOOL)isAnnounceEnabledForAnyAccessory;
- (BOOL)isAnnounceEnabledForAnyAccessoryOrUser;
- (BOOL)isAnnounceSupported;
- (id)_usersWithAnnounceEnabledIncludingCurrentUser:()Announce;
- (id)usersIncludingCurrentUserWithAnnounceAndRemoteAccessEnabled;
- (uint64_t)announceAccessAllowedForCurrentUser;
- (uint64_t)announceAccessAllowedForUser:()Announce;
- (uint64_t)isAnnounceAvailable;
@end

@implementation HMHome(Announce)

- (BOOL)isAnnounceSupported
{
  appleAnnounceAccessories = [self appleAnnounceAccessories];
  v2 = [appleAnnounceAccessories count] != 0;

  return v2;
}

- (uint64_t)isAnnounceAvailable
{
  v2 = +[ANHomeManager shared];
  currentAccessory = [v2 currentAccessory];

  if (!currentAccessory || ([currentAccessory home], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "uniqueIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "uniqueIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, v4, !v7))
  {
    if (![self announceAccessAllowedForCurrentUser])
    {
      goto LABEL_4;
    }

LABEL_6:
    isAnnounceEnabledForAnyAccessoryOrUser = [self isAnnounceEnabledForAnyAccessoryOrUser];
    goto LABEL_7;
  }

  if ([currentAccessory an_isAnnounceEnabled])
  {
    goto LABEL_6;
  }

LABEL_4:
  isAnnounceEnabledForAnyAccessoryOrUser = 0;
LABEL_7:

  return isAnnounceEnabledForAnyAccessoryOrUser;
}

- (BOOL)isAnnounceEnabledForAnyAccessory
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = +[ANHomeManager shared];
  currentAccessory = [v2 currentAccessory];

  if (currentAccessory && ([currentAccessory home], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "uniqueIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "uniqueIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, v4, v7))
  {
    v8 = MEMORY[0x277CD1650];
    accessories = [self accessories];
    accessories2 = [v8 announceAccessoriesWithAnnounceEnabledFromAccessories:accessories];

    v11 = [MEMORY[0x277CD1650] hmu_accessoriesExcludingCurrentAccessoryFromAccessories:accessories2];
    v12 = [MEMORY[0x277CD1650] hmu_accessoriesFromAccessories:v11 excludingStereoCompanionForAccessory:currentAccessory];
  }

  else
  {
    v13 = MEMORY[0x277CD1650];
    accessories2 = [self accessories];
    v12 = [v13 announceAccessoriesWithAnnounceEnabledFromAccessories:accessories2];
  }

  v15 = ANLogHandleHome_Announce(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v12 count];
    v17 = [v12 count];
    v18 = "ies";
    v22 = &stru_2851BDB18;
    v21 = 138412802;
    if (v17 == 1)
    {
      v18 = "y";
    }

    v23 = 2048;
    v24 = v16;
    v25 = 2080;
    v26 = v18;
    _os_log_impl(&dword_23F525000, v15, OS_LOG_TYPE_DEFAULT, "%@%lu accessor%s with announce enabled", &v21, 0x20u);
  }

  v19 = [v12 count] != 0;
  return v19;
}

- (BOOL)isAnnounceEnabledForAnyAccessoryOrUser
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = +[ANHomeManager shared];
  currentAccessory = [v2 currentAccessory];

  if (currentAccessory && ([currentAccessory home], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "uniqueIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "uniqueIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, v4, v7))
  {
    v8 = MEMORY[0x277CD1650];
    accessories = [self accessories];
    v10 = [v8 announceAccessoriesWithAnnounceEnabledFromAccessories:accessories];

    v11 = [MEMORY[0x277CD1650] hmu_accessoriesExcludingCurrentAccessoryFromAccessories:v10];
    v12 = [MEMORY[0x277CD1650] hmu_accessoriesFromAccessories:v11 excludingStereoCompanionForAccessory:currentAccessory];
    usersIncludingCurrentUserWithAnnounceEnabled = [self usersIncludingCurrentUserWithAnnounceEnabled];
  }

  else
  {
    v15 = MEMORY[0x277CD1650];
    accessories2 = [self accessories];
    v12 = [v15 announceAccessoriesWithAnnounceEnabledFromAccessories:accessories2];

    usersWithAnnounceEnabled = [self usersWithAnnounceEnabled];
    usersIncludingCurrentUserWithAnnounceEnabled = usersWithAnnounceEnabled;
  }

  v17 = ANLogHandleHome_Announce(usersWithAnnounceEnabled);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v12 count];
    if ([v12 count] == 1)
    {
      v19 = "y";
    }

    else
    {
      v19 = "ies";
    }

    v20 = [usersIncludingCurrentUserWithAnnounceEnabled count];
    v21 = [usersIncludingCurrentUserWithAnnounceEnabled count];
    v25 = 138413314;
    v26 = &stru_2851BDB18;
    v22 = "s";
    v28 = v18;
    v27 = 2048;
    v29 = 2080;
    if (v21 == 1)
    {
      v22 = "";
    }

    v30 = v19;
    v31 = 2048;
    v32 = v20;
    v33 = 2080;
    v34 = v22;
    _os_log_impl(&dword_23F525000, v17, OS_LOG_TYPE_DEFAULT, "%@%lu accessor%s with announce enabled.  %ld user%s with announce enabled", &v25, 0x34u);
  }

  if ([v12 count])
  {
    v23 = 1;
  }

  else
  {
    v23 = [usersIncludingCurrentUserWithAnnounceEnabled count] != 0;
  }

  return v23;
}

- (uint64_t)announceAccessAllowedForCurrentUser
{
  currentUser = [self currentUser];
  v3 = [self announceAccessAllowedForUser:currentUser];

  return v3;
}

- (uint64_t)announceAccessAllowedForUser:()Announce
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [self homeAccessControlForUser:v4];
  isAnnounceAccessAllowed = [v5 isAnnounceAccessAllowed];

  v8 = ANLogHandleHome_Announce(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    name = [v4 name];
    uniqueIdentifier = [v4 uniqueIdentifier];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:isAnnounceAccessAllowed];
    v20 = 138413058;
    v21 = &stru_2851BDB18;
    v22 = 2112;
    v23 = name;
    v24 = 2112;
    v25 = uniqueIdentifier;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@Announce Access Allowed For User (Name = %@, ID = %@): %@", &v20, 0x2Au);
  }

  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v13 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA8C8]];

  if (v13)
  {
    v15 = ANLogHandleHome_Announce(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [v4 name];
      uniqueIdentifier2 = [v4 uniqueIdentifier];
      v20 = 138412802;
      v21 = &stru_2851BDB18;
      v22 = 2112;
      v23 = name2;
      v24 = 2112;
      v25 = uniqueIdentifier2;
      v18 = "%@[Override] Force Allow Announce For User (Name = %@, ID = %@) Enabled";
LABEL_10:
      _os_log_impl(&dword_23F525000, v15, OS_LOG_TYPE_DEFAULT, v18, &v20, 0x20u);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if ((isAnnounceAccessAllowed & 1) == 0)
  {
    v15 = ANLogHandleHome_Announce(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [v4 name];
      uniqueIdentifier2 = [v4 uniqueIdentifier];
      v20 = 138412802;
      v21 = &stru_2851BDB18;
      v22 = 2112;
      v23 = name2;
      v24 = 2112;
      v25 = uniqueIdentifier2;
      v18 = "%@Announce is DISABLED For User (Name = %@, ID = %@)";
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  v13 = 1;
LABEL_12:

  return v13;
}

- (id)usersIncludingCurrentUserWithAnnounceAndRemoteAccessEnabled
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  hmu_allUsersIncludingCurrentUser = [self hmu_allUsersIncludingCurrentUser];
  v5 = [hmu_allUsersIncludingCurrentUser countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(hmu_allUsersIncludingCurrentUser);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([self announceAccessAllowedForUser:v9] && objc_msgSend(self, "hmu_isRemoteAccessAllowedForUser:", v9))
        {
          [v3 addObject:v9];
        }
      }

      v6 = [hmu_allUsersIncludingCurrentUser countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_usersWithAnnounceEnabledIncludingCurrentUser:()Announce
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [self hmu_allUsersIncludingCurrentUser];
  }

  else
  {
    [self users];
  }
  v5 = ;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HMHome_Announce___usersWithAnnounceEnabledIncludingCurrentUser___block_invoke;
  v12[3] = &unk_278C86D78;
  v12[4] = self;
  v6 = [v5 na_filter:v12];
  v7 = ANLogHandleHome_Announce(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v5 count];
    if (a3)
    {
      v9 = " (including current user)";
    }

    else
    {
      v9 = "";
    }

    v10 = [v6 count];
    *buf = 138413058;
    v14 = &stru_2851BDB18;
    v15 = 2048;
    v16 = v8;
    v17 = 2080;
    v18 = v9;
    v19 = 2048;
    v20 = v10;
    _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_INFO, "%@Home has %ld users%s, %ld have intercom enabled", buf, 0x2Au);
  }

  return v6;
}

@end