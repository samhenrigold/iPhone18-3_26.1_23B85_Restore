@interface _HFAppleMusicAccountArbitrationActionItem
+ (id)loginActionItemForAccessories:(id)accessories account:(id)account contextGenerator:(id)generator;
+ (id)logoutActionItemForAccessories:(id)accessories desiredAccount:(id)account;
- (id)description;
@end

@implementation _HFAppleMusicAccountArbitrationActionItem

+ (id)logoutActionItemForAccessories:(id)accessories desiredAccount:(id)account
{
  accountCopy = account;
  accessoriesCopy = accessories;
  if (![accessoriesCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFAppleMusicAccountArbitrator.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"accessories.count > 0"}];
  }

  v9 = objc_opt_new();
  v10 = [accessoriesCopy na_filter:&__block_literal_global_218];

  if (accountCopy)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __91___HFAppleMusicAccountArbitrationActionItem_logoutActionItemForAccessories_desiredAccount___block_invoke_2;
    v22[3] = &unk_277DF3888;
    v23 = accountCopy;
    v11 = [v10 na_filter:v22];

    v10 = v11;
  }

  v12 = [v10 na_filter:&__block_literal_global_58_3];

  [v9 setAccessories:v12];
  v13 = [v12 count];
  v14 = MEMORY[0x277D2C900];
  if (v13)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __91___HFAppleMusicAccountArbitrationActionItem_logoutActionItemForAccessories_desiredAccount___block_invoke_5;
    v20[3] = &unk_277DF29A0;
    v21 = v12;
    v15 = [v14 lazyFutureWithBlock:v20];
    [v9 setFuture:v15];

    v16 = v21;
  }

  else
  {
    v16 = [MEMORY[0x277D2C900] lazyFutureWithBlock:&__block_literal_global_60_1];
    [v9 setFuture:v16];
  }

  if (accountCopy)
  {
    accountCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Accessory Logout for accessories which are not '%@'", accountCopy];
    [v9 setActionItemDescription:accountCopy];
  }

  else
  {
    [v9 setActionItemDescription:@"Accessory Logout"];
  }

  return v9;
}

+ (id)loginActionItemForAccessories:(id)accessories account:(id)account contextGenerator:(id)generator
{
  v57[1] = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  accountCopy = account;
  generatorCopy = generator;
  if (![accessoriesCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFAppleMusicAccountArbitrator.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"accessories.count > 0"}];
  }

  if (generatorCopy)
  {
    v12 = accountCopy == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = @"Proxy ('Manual') Login Plan";
  if (!v12)
  {
    v13 = @"Companion ('Magic') ->Proxy ('Manual') Login Plan";
  }

  if (accountCopy)
  {
    v14 = @"Companion ('Magic') Login Plan";
  }

  else
  {
    v14 = 0;
  }

  if (generatorCopy)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = objc_opt_new();
  [v16 setAccessories:accessoriesCopy];
  v17 = objc_opt_new();
  v18 = objc_opt_new();
  v56 = @"accessoryUUIDToAuthKitContext";
  v57[0] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
  [v16 setUserInfo:v19];

  if (generatorCopy)
  {
    v38 = v15;
    v39 = v16;
    v20 = generatorCopy;
    v40 = accessoriesCopy;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = [v16 accessories];
    v21 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v52;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          v25 = v17;
          if (*v52 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v51 + 1) + 8 * i);
          v27 = MEMORY[0x277D2C900];
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __100___HFAppleMusicAccountArbitrationActionItem_loginActionItemForAccessories_account_contextGenerator___block_invoke;
          v47[3] = &unk_277E01318;
          v50 = v20;
          v47[4] = v26;
          v48 = accountCopy;
          v49 = v18;
          v28 = [v27 lazyFutureWithBlock:v47];
          v17 = v25;
          [v25 addObject:v28];
        }

        v22 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v22);
    }

    v16 = v39;
    accessoriesCopy = v40;
    generatorCopy = v20;
    v15 = v38;
  }

  v29 = MEMORY[0x277CCACA8];
  accessories = [v16 accessories];
  v31 = [v29 stringWithFormat:@"%@ Login for Accessories %@", v15, accessories];
  [v16 setActionItemDescription:v31];

  v32 = [accessoriesCopy count];
  v33 = MEMORY[0x277D2C900];
  if (v32)
  {
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __100___HFAppleMusicAccountArbitrationActionItem_loginActionItemForAccessories_account_contextGenerator___block_invoke_4;
    v42[3] = &unk_277DFD1F8;
    v43 = accountCopy;
    v44 = accessoriesCopy;
    v45 = v17;
    v46 = v18;
    v34 = [v33 lazyFutureWithBlock:v42];
    [v16 setFuture:v34];

    v35 = v43;
  }

  else
  {
    v35 = [MEMORY[0x277D2C900] lazyFutureWithBlock:&__block_literal_global_87_0];
    [v16 setFuture:v35];
  }

  return v16;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  actionItemDescription = [(_HFAppleMusicAccountArbitrationActionItem *)self actionItemDescription];
  [v3 appendString:actionItemDescription withName:@"actionItemDescription"];

  accessories = [(_HFAppleMusicAccountArbitrationActionItem *)self accessories];
  v6 = [v3 appendObject:accessories withName:@"accessories"];

  future = [(_HFAppleMusicAccountArbitrationActionItem *)self future];
  v8 = [v3 appendObject:future withName:@"future"];

  userInfo = [(_HFAppleMusicAccountArbitrationActionItem *)self userInfo];
  [v3 appendDictionarySection:userInfo withName:@"userInfo" skipIfEmpty:1];

  build = [v3 build];

  return build;
}

@end