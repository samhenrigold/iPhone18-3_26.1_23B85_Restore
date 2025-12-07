@interface IDSAccount(HMDAccounts)
+ (uint64_t)isSentinelIDSHandle:()HMDAccounts;
- (id)hmd_handles;
@end

@implementation IDSAccount(HMDAccounts)

- (id)hmd_handles
{
  v19 = *MEMORY[0x277D85DE8];
  handles = [self handles];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(handles, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = handles;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if (([objc_opt_class() isSentinelIDSHandle:{v8, v14}] & 1) == 0 && objc_msgSend(v8, "validationStatus") >= 3)
        {
          v9 = [HMDAccountHandle alloc];
          v10 = [v8 URI];
          v11 = -[HMDAccountHandle initWithURI:local:](v9, "initWithURI:local:", v10, [v8 isUserVisible] ^ 1);

          [v2 addObject:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = objc_msgSend_copy(v2);

  return v12;
}

+ (uint64_t)isSentinelIDSHandle:()HMDAccounts
{
  v3 = isSentinelIDSHandle__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&isSentinelIDSHandle__onceToken, &__block_literal_global_1028);
  }

  v5 = isSentinelIDSHandle__sentinelURIs;
  v6 = [v4 URI];

  v7 = [v5 containsObject:v6];
  return v7;
}

@end