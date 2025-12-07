@interface IDSService(HMDAccounts)
- (BOOL)hmd_isActive;
- (id)hmd_handles;
- (id)hmd_preferredDisplayHandle;
- (id)hmd_preferredHandle;
- (uint64_t)hmd_registrationError;
- (uint64_t)hmd_registrationStatus;
@end

@implementation IDSService(HMDAccounts)

- (BOOL)hmd_isActive
{
  iCloudAccount = [self iCloudAccount];
  if ([iCloudAccount isActive])
  {
    loginID = [iCloudAccount loginID];
    v3 = loginID != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)hmd_preferredDisplayHandle
{
  hmd_handles = [self hmd_handles];
  v3 = [hmd_handles mutableCopy];

  iCloudAccount = [self iCloudAccount];
  loginID = [iCloudAccount loginID];

  if (loginID)
  {
    v6 = +[HMDAccountHandleFormatter defaultFormatter];
    v7 = [v6 accountHandleFromString:loginID];
  }

  else
  {
    v7 = 0;
  }

  if (![v3 containsObject:v7] || (v10[0] = MEMORY[0x277D85DD0], v10[1] = 3221225472, v10[2] = __53__IDSService_HMDAccounts__hmd_preferredDisplayHandle__block_invoke, v10[3] = &unk_27867B3E0, v11 = v7, objc_msgSend(v3, "hmf_objectPassingTest:", v10), lastObject = objc_claimAutoreleasedReturnValue(), v11, !lastObject))
  {
    [v3 sortWithOptions:16 usingComparator:&__block_literal_global_11_146257];
    lastObject = [v3 lastObject];
  }

  return lastObject;
}

- (id)hmd_preferredHandle
{
  v22 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  hmd_handles = [self hmd_handles];
  v14 = [hmd_handles na_map:&__block_literal_global_146260];
  v3 = _IDSCopyOrderedAliasesWithGetter();
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __46__IDSService_HMDAccounts__hmd_preferredHandle__block_invoke_3;
        v16[3] = &unk_27867B3B8;
        v16[4] = v10;
        v11 = [hmd_handles na_firstObjectPassingTest:v16];
        if (v11)
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  firstObject = [v4 firstObject];

  objc_autoreleasePoolPop(context);

  return firstObject;
}

- (id)hmd_handles
{
  v16 = *MEMORY[0x277D85DE8];
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  accounts = [self accounts];
  v4 = [accounts countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(accounts);
        }

        hmd_handles = [*(*(&v11 + 1) + 8 * i) hmd_handles];
        [orderedSet addObjectsFromArray:hmd_handles];
      }

      v5 = [accounts countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  array = [orderedSet array];

  return array;
}

- (uint64_t)hmd_registrationError
{
  iCloudAccount = [self iCloudAccount];
  registrationError = [iCloudAccount registrationError];

  return registrationError;
}

- (uint64_t)hmd_registrationStatus
{
  iCloudAccount = [self iCloudAccount];
  registrationStatus = [iCloudAccount registrationStatus];

  return registrationStatus;
}

@end