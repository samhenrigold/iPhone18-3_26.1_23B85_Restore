@interface MKAccountMigrator
- (MKAccountMigrator)init;
- (void)import:(id)import;
- (void)importDataEncodedInJSON:(id)n;
@end

@implementation MKAccountMigrator

- (MKAccountMigrator)init
{
  v37[1] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = MKAccountMigrator;
  v2 = [(MKMigrator *)&v33 init];
  if (v2)
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    accountStore = v2->_accountStore;
    v2->_accountStore = defaultStore;

    v5 = v2->_accountStore;
    if (v5)
    {
      v36 = @"com.google";
      v6 = [(ACAccountStore *)v5 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C40]];
      v37[0] = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      accountTypes = v2->_accountTypes;
      v2->_accountTypes = v7;
    }

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    existingAccounts = v2->_existingAccounts;
    v2->_existingAccounts = v9;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [(NSDictionary *)v2->_accountTypes allKeys];
    v24 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v24)
    {
      v23 = *v30;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          v13 = [(NSDictionary *)v2->_accountTypes objectForKeyedSubscript:v12];
          v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v15 = [(ACAccountStore *)v2->_accountStore accountsWithAccountType:v13];
          v16 = [v15 countByEnumeratingWithState:&v25 objects:v34 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v26;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v26 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                username = [*(*(&v25 + 1) + 8 * j) username];
                [v14 addObject:username];
              }

              v17 = [v15 countByEnumeratingWithState:&v25 objects:v34 count:16];
            }

            while (v17);
          }

          [(NSMutableDictionary *)v2->_existingAccounts setObject:v14 forKey:v12];
        }

        v24 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v24);
    }

    [(MKMigrator *)v2 setType:1];
  }

  return v2;
}

- (void)importDataEncodedInJSON:(id)n
{
  nCopy = n;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_autoreleasePoolPush();
  [(MKAccountMigrator *)selfCopy import:nCopy];
  objc_autoreleasePoolPop(v5);
  objc_sync_exit(selfCopy);
}

- (void)import:(id)import
{
  v64[1] = *MEMORY[0x277D85DE8];
  importCopy = import;
  date = [MEMORY[0x277CBEAA8] date];
  v5 = +[MKLog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy5 = self;
    _os_log_impl(&dword_2592D2000, v5, OS_LOG_TYPE_INFO, "%@ will import an account.", buf, 0xCu);
  }

  if (!self->_accountStore || ![(NSDictionary *)self->_accountTypes count])
  {
    v21 = MEMORY[0x277CCA9B8];
    v63 = *MEMORY[0x277CCA450];
    v64[0] = @"cannot continue to import an account due to an ACAccountStore error.";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:&v63 count:1];
    v22 = [v21 errorWithDomain:@"MKAccountErrorDomain" code:2 userInfo:v6];
LABEL_14:
    v19 = v22;
    v20 = 0;
LABEL_15:

    v23 = +[MKLog log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [(MKAccount *)v19 description];
      *buf = 138412546;
      selfCopy5 = self;
      v57 = 2112;
      v58 = v24;
      _os_log_impl(&dword_2592D2000, v23, OS_LOG_TYPE_INFO, "%@ account store did store an account. error=%@", buf, 0x16u);
    }

    if (v20)
    {
      [(MKMigrator *)self migratorDidImport];
      -[MKMigrator migratorDidAppendDataSize:](self, "migratorDidAppendDataSize:", [importCopy length]);
    }

    else
    {
      [(MKMigrator *)self migratorDidFailWithImportError:v19];
    }

    v25 = +[MKAnalytics sharedInstance];
    objc_sync_enter(v25);
    payload = [v25 payload];
    accounts = [payload accounts];

    date2 = [MEMORY[0x277CBEAA8] date];
    [date2 timeIntervalSinceDate:date];
    v30 = v29;

    v31 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v30];
    importElapsedTime = [accounts importElapsedTime];
    v33 = [importElapsedTime decimalNumberByAdding:v31];
    [accounts setImportElapsedTime:v33];

    objc_sync_exit(v25);
    v6 = v19;
    goto LABEL_21;
  }

  v6 = [[MKAccount alloc] initWithData:importCopy];
  if (!v6)
  {
    v34 = MEMORY[0x277CCA9B8];
    v61 = *MEMORY[0x277CCA450];
    v62 = @"invalid argument";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v22 = [v34 errorWithDomain:@"MKAccountErrorDomain" code:1 userInfo:v6];
    goto LABEL_14;
  }

  v7 = +[MKLog log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    type = [(MKAccount *)v6 type];
    name = [(MKAccount *)v6 name];
    *buf = 138412802;
    selfCopy5 = self;
    v57 = 2112;
    v58 = type;
    v59 = 2112;
    v60 = name;
    _os_log_impl(&dword_2592D2000, v7, OS_LOG_TYPE_INFO, "%@ received an account. type=%@, name=%@", buf, 0x20u);
  }

  accountTypes = self->_accountTypes;
  type2 = [(MKAccount *)v6 type];
  v47 = [(NSDictionary *)accountTypes objectForKeyedSubscript:type2];

  if (v47)
  {
    existingAccounts = self->_existingAccounts;
    type3 = [(MKAccount *)v6 type];
    v46 = [(NSMutableDictionary *)existingAccounts objectForKeyedSubscript:type3];

    name2 = [(MKAccount *)v6 name];
    v15 = [v46 containsObject:name2];

    if (v15)
    {
      v16 = +[MKLog log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        type4 = [(MKAccount *)v6 type];
        name3 = [(MKAccount *)v6 name];
        *buf = 138412802;
        selfCopy5 = self;
        v57 = 2112;
        v58 = type4;
        v59 = 2112;
        v60 = name3;
        _os_log_impl(&dword_2592D2000, v16, OS_LOG_TYPE_INFO, "%@ account already exists. type=%@, name=%@", buf, 0x20u);
      }

      v19 = 0;
      v20 = 1;
    }

    else
    {
      v36 = [objc_alloc(MEMORY[0x277CB8F30]) initWithAccountType:v47];
      name4 = [(MKAccount *)v6 name];
      [v36 setUsername:name4];

      name5 = [(MKAccount *)v6 name];
      [v36 setAccountDescription:name5];

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      supportedDataclasses = [v47 supportedDataclasses];
      v40 = [supportedDataclasses countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v40)
      {
        v41 = *v51;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v51 != v41)
            {
              objc_enumerationMutation(supportedDataclasses);
            }

            v43 = *(*(&v50 + 1) + 8 * i);
            [v36 setProvisioned:1 forDataclass:{v43, v46}];
            [v36 setEnabled:1 forDataclass:v43];
          }

          v40 = [supportedDataclasses countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v40);
      }

      accountStore = self->_accountStore;
      v49 = 0;
      [(ACAccountStore *)accountStore saveVerifiedAccount:v36 error:&v49];
      v19 = v49;
      v20 = v19 == 0;
      if (!v19)
      {
        name6 = [(MKAccount *)v6 name];
        [v46 addObject:name6];
      }
    }

    goto LABEL_15;
  }

  v25 = +[MKLog log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    type5 = [(MKAccount *)v6 type];
    *buf = 138412546;
    selfCopy5 = self;
    v57 = 2112;
    v58 = type5;
    _os_log_impl(&dword_2592D2000, v25, OS_LOG_TYPE_INFO, "%@ will skip an account. type=%@", buf, 0x16u);
  }

LABEL_21:
}

@end