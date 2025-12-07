@interface WLMailAccountMigrator
- (WLFeaturePayload)featurePayload;
- (WLMailAccountMigrator)init;
- (id)importDidEnd;
- (id)importWillBegin;
- (void)addWorkingTime:(unint64_t)time;
- (void)enable;
- (void)estimateItemSizeForSummary:(id)summary account:(id)account;
- (void)importRecordData:(id)data summary:(id)summary account:(id)account completion:(id)completion;
- (void)setEstimatedDataSize:(unint64_t)size;
- (void)setState:(id)state;
@end

@implementation WLMailAccountMigrator

- (WLMailAccountMigrator)init
{
  v36[1] = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = WLMailAccountMigrator;
  v2 = [(WLMailAccountMigrator *)&v32 init];
  if (v2)
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    [(WLMailAccountMigrator *)v2 setAccountStore:defaultStore];

    accountStore = v2->_accountStore;
    if (accountStore)
    {
      v35 = @"com.google";
      v5 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C40]];
      v36[0] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      accountTypes = v2->_accountTypes;
      v2->_accountTypes = v6;
    }

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    existingAccounts = v2->_existingAccounts;
    v2->_existingAccounts = v8;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [(NSDictionary *)v2->_accountTypes allKeys];
    v23 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v23)
    {
      v22 = *v29;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          v12 = [(NSDictionary *)v2->_accountTypes objectForKeyedSubscript:v11];
          v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v14 = [(ACAccountStore *)v2->_accountStore accountsWithAccountType:v12];
          v15 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v25;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v25 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                username = [*(*(&v24 + 1) + 8 * j) username];
                [v13 addObject:username];
              }

              v16 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
            }

            while (v16);
          }

          [(NSMutableDictionary *)v2->_existingAccounts setObject:v13 forKey:v11];
        }

        v23 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v23);
    }
  }

  return v2;
}

- (void)enable
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setEnabled:1];

  v4 = objc_loadWeakRetained(&self->_featurePayload);
  [v4 setState:@"enabled"];
}

- (void)setState:(id)state
{
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setState:stateCopy];
}

- (void)setEstimatedDataSize:(unint64_t)size
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:size];
}

- (void)addWorkingTime:(unint64_t)time
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setElapsedTime:{objc_msgSend(WeakRetained, "elapsedTime") + time}];
}

- (void)estimateItemSizeForSummary:(id)summary account:(id)account
{
  summaryCopy = summary;
  if (![summaryCopy itemSize])
  {
    [summaryCopy setItemSize:5120];
  }
}

- (void)importRecordData:(id)data summary:(id)summary account:(id)account completion:(id)completion
{
  v51[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  selfCopy = self;
  _WLLog();
  if (self->_accountStore && [(NSDictionary *)self->_accountTypes count])
  {
    v44 = 0;
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v44];
    v11 = v44;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v10;
      v13 = [v12 objectForKeyedSubscript:@"accountType"];
      v14 = [v12 objectForKeyedSubscript:@"accountName"];
      v38 = v14;
      if ([v13 length] && objc_msgSend(v14, "length"))
      {
        _WLLog();
        v15 = [(NSDictionary *)self->_accountTypes objectForKeyedSubscript:v13, self, v13, v14];
        if (v15)
        {
          v35 = [(NSMutableDictionary *)self->_existingAccounts objectForKeyedSubscript:v13];
          if ([v35 containsObject:v14])
          {
            _WLLog();
            v16 = 1;
          }

          else
          {
            v37 = v13;
            v33 = v12;
            v34 = dataCopy;
            v21 = [objc_alloc(MEMORY[0x277CB8F30]) initWithAccountType:v15];
            [v21 setUsername:v14];
            [v21 setAccountDescription:v14];
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v32 = v15;
            supportedDataclasses = [v15 supportedDataclasses];
            v23 = [supportedDataclasses countByEnumeratingWithState:&v40 objects:v45 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v41;
              do
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v41 != v25)
                  {
                    objc_enumerationMutation(supportedDataclasses);
                  }

                  v27 = *(*(&v40 + 1) + 8 * i);
                  [v21 setProvisioned:1 forDataclass:v27];
                  [v21 setEnabled:1 forDataclass:v27];
                }

                v24 = [supportedDataclasses countByEnumeratingWithState:&v40 objects:v45 count:16];
              }

              while (v24);
            }

            accountStore = self->_accountStore;
            v39 = v11;
            [(ACAccountStore *)accountStore saveVerifiedAccount:v21 error:&v39];
            v29 = v39;

            v16 = v29 == 0;
            if (!v29)
            {
              [v35 addObject:v38];
            }

            v11 = v29;
            dataCopy = v34;
            v15 = v32;
            v12 = v33;
            v13 = v37;
          }
        }

        else
        {
          _WLLog();
          v16 = 1;
        }
      }

      else
      {
        v36 = v13;
        v19 = MEMORY[0x277CCA9B8];
        v46 = *MEMORY[0x277CCA450];
        v47 = @"invalid argument";
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v20 = [v19 errorWithDomain:@"WLAccountErrorDomain" code:1 userInfo:v15];

        v16 = 0;
        v11 = v20;
        v13 = v36;
      }
    }

    else
    {
      v18 = MEMORY[0x277CCA9B8];
      v48 = *MEMORY[0x277CCA450];
      v49 = @"invalid argument";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      [v18 errorWithDomain:@"WLAccountErrorDomain" code:1 userInfo:v12];
      v16 = 0;
      v11 = v13 = v11;
    }
  }

  else
  {
    v17 = MEMORY[0x277CCA9B8];
    v50 = *MEMORY[0x277CCA450];
    v51[0] = @"cannot continue to import an account due to an ACAccountStore error.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:{1, selfCopy}];
    v11 = [v17 errorWithDomain:@"WLAccountErrorDomain" code:2 userInfo:v10];
    v16 = 0;
  }

  v31 = [v11 description];
  _WLLog();

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v16, v11);
  }
}

- (id)importWillBegin
{
  v10[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:0];

  v4 = 0;
  if (!self->_accountStore)
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277D7B8F8];
    v9 = *MEMORY[0x277CCA450];
    v10[0] = @"Mail account migrator couldn't create account store.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v4 = [v5 errorWithDomain:v6 code:1 userInfo:v7];
  }

  return v4;
}

- (id)importDidEnd
{
  [(WLMailAccountMigrator *)self setAccountStore:0];
  accountTypes = self->_accountTypes;
  self->_accountTypes = 0;

  existingAccounts = self->_existingAccounts;
  self->_existingAccounts = 0;

  return 0;
}

- (WLFeaturePayload)featurePayload
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);

  return WeakRetained;
}

@end