@interface MKAccountStore
+ (id)_convertAccount:(id)account;
+ (id)_convertType:(id)type;
+ (id)convertAccountDataClasses:(id)classes;
+ (void)initialize;
- (BOOL)_createAndSaveAccount:(id)account accountType:(id)type error:(id *)error;
- (BOOL)_importMKAccount:(id)account error:(id *)error;
- (BOOL)_isExistingAccount:(id)account;
- (MKAccountStore)init;
- (id)_getAccountTypeForMKAccount:(id)account;
- (id)_getExistingUsernamesForType:(id)type;
- (id)_username:(id)_username;
- (id)importAccounts:(id)accounts;
- (id)visibleTopLevelAccounts;
- (void)_addToExistingAccounts:(id)accounts;
- (void)_addToOutputArray:(id)array;
- (void)_checkForChildAccounts:(id)accounts;
- (void)_fetchExistingAccountsFromAccountStore;
- (void)_importMKAccountItems:(id)items importResults:(id)results;
- (void)_processChildAccounts:(id)accounts;
- (void)_processVisibleAccounts:(id)accounts;
- (void)_updateExistingAccount:(id)account;
- (void)_updateExistingAccounts:(id)accounts;
@end

@implementation MKAccountStore

+ (void)initialize
{
  v47 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    v3 = *MEMORY[0x277CB8C40];
    v36[0] = *MEMORY[0x277CB8BA0];
    v2 = v36[0];
    v36[1] = v3;
    v5 = *MEMORY[0x277CB8B98];
    v37 = *MEMORY[0x277CB8D38];
    v4 = v37;
    v38 = v5;
    v7 = *MEMORY[0x277CB8B88];
    v39 = *MEMORY[0x277CB8C00];
    v6 = v39;
    v40 = v7;
    v9 = *MEMORY[0x277CB8CE8];
    v41 = *MEMORY[0x277CB8B80];
    v8 = v41;
    v42 = v9;
    v11 = *MEMORY[0x277CB8CD8];
    v43 = *MEMORY[0x277CB8C60];
    v10 = v43;
    v44 = v11;
    v25 = *MEMORY[0x277CB8C50];
    v45 = *MEMORY[0x277CB8C98];
    v24 = v45;
    v46 = v25;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:12];
    v13 = accountTypes;
    accountTypes = v12;

    v14 = *MEMORY[0x277CB8968];
    v34[0] = *MEMORY[0x277CB8958];
    v34[1] = v14;
    v35[0] = &unk_286AAC5D8;
    v35[1] = &unk_286AAC5F0;
    v15 = *MEMORY[0x277CB8A18];
    v34[2] = *MEMORY[0x277CB89C8];
    v34[3] = v15;
    v35[2] = &unk_286AAC608;
    v35[3] = &unk_286AAC620;
    v34[4] = *MEMORY[0x277CB89F8];
    v35[4] = &unk_286AAC638;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:5];
    v17 = acAccountDataClass;
    acAccountDataClass = v16;

    v28[0] = v3;
    v28[1] = v4;
    v33[0] = @"google";
    v33[1] = @"yahoo";
    v28[2] = v2;
    v28[3] = v5;
    v33[2] = @"apple";
    v33[3] = @"aol";
    v28[4] = v6;
    v28[5] = v8;
    v33[4] = @"exchange";
    v33[5] = @"netEase126";
    v28[6] = v7;
    v28[7] = v9;
    v33[6] = @"netEase163";
    v33[7] = @"qq";
    v28[8] = v10;
    v28[9] = v11;
    v33[8] = @"imap";
    v33[9] = @"pop";
    v19 = *MEMORY[0x277CB8BD8];
    v29 = *MEMORY[0x277CB8BC8];
    v18 = v29;
    v30 = v19;
    v33[10] = @"calDav";
    v33[11] = @"cardDav";
    v31 = v24;
    v32 = v25;
    v33[12] = @"ldap";
    v33[13] = @"hotmail";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v28 count:14];
    v21 = typeMap;
    typeMap = v20;

    v26[0] = &unk_286AAC5D8;
    v26[1] = &unk_286AAC620;
    v27[0] = v18;
    v27[1] = v18;
    v26[2] = &unk_286AAC5F0;
    v26[3] = &unk_286AAC608;
    v27[2] = v19;
    v27[3] = v10;
    v26[4] = &unk_286AAC638;
    v27[4] = v10;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:5];
    v23 = dataClassTypeMapping;
    dataClassTypeMapping = v22;
  }
}

- (MKAccountStore)init
{
  v10.receiver = self;
  v10.super_class = MKAccountStore;
  v2 = [(MKAccountStore *)&v10 init];
  if (v2)
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    accountStore = v2->_accountStore;
    v2->_accountStore = defaultStore;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mkAccounts = v2->_mkAccounts;
    v2->_mkAccounts = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    existingAccounts = v2->_existingAccounts;
    v2->_existingAccounts = v7;
  }

  return v2;
}

+ (id)_convertAccount:(id)account
{
  accountCopy = account;
  accountType = [accountCopy accountType];
  v5 = [MKAccountStore _convertType:accountType];

  accountDescription = [accountCopy accountDescription];
  v7 = accountDescription;
  if (accountDescription)
  {
    v8 = accountDescription;
  }

  else
  {
    v8 = &stru_286A8E730;
  }

  v9 = v8;

  username = [accountCopy username];
  v11 = username;
  if (username)
  {
    v12 = username;
  }

  else
  {
    v12 = &stru_286A8E730;
  }

  v13 = v12;

  v14 = [MKAccountStore convertAccountDataClasses:accountCopy];

  v15 = [[MKAccountItem alloc] initWithType:v5 displayName:v9 username:v13 dataClasses:v14];

  return v15;
}

+ (id)_convertType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (typeCopy)
  {
    identifier = [typeCopy identifier];

    v6 = @"unknown";
    if (identifier)
    {
      v7 = typeMap;
      identifier2 = [v4 identifier];
      v9 = [v7 objectForKeyedSubscript:identifier2];

      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = @"unknown";
      }

      v6 = v10;
    }
  }

  else
  {
    v6 = @"unknown";
  }

  return v6;
}

+ (id)convertAccountDataClasses:(id)classes
{
  v18 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  v4 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = acAccountDataClass;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([classesCopy isEnabledForDataclass:{v10, v13}])
        {
          v11 = [acAccountDataClass objectForKeyedSubscript:v10];
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)visibleTopLevelAccounts
{
  v56 = *MEMORY[0x277D85DE8];
  accountStore = self->_accountStore;
  if (accountStore)
  {
    v45 = 0;
    v4 = [(ACAccountStore *)accountStore accountsWithAccountTypeIdentifiers:accountTypes error:&v45];
    v5 = v45;
    v6 = +[MKLog log];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v7)
      {
        *buf = 138412290;
        selfCopy4 = v5;
        _os_log_impl(&dword_2592D2000, v6, OS_LOG_TYPE_INFO, "Failed to lookup accounts with error: %@,  accounts export failed", buf, 0xCu);
      }

      v8 = MEMORY[0x277CBEBF8];
    }

    else
    {
      if (v7)
      {
        v9 = [v4 count];
        *buf = 138412546;
        selfCopy4 = self;
        v49 = 2048;
        v50 = v9;
        _os_log_impl(&dword_2592D2000, v6, OS_LOG_TYPE_INFO, "%@ Fetched accounts: %lu from accountStore", buf, 0x16u);
      }

      v10 = +[MKLog log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2592D2000, v10, OS_LOG_TYPE_INFO, "Fetched accounts from accountStore", buf, 2u);
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v35 = v4;
      obj = v4;
      v11 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v42;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v42 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v41 + 1) + 8 * i);
            v16 = +[MKLog log];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              accountType = [v15 accountType];
              accountDescription = [v15 accountDescription];
              username = [v15 username];
              *buf = 138413058;
              selfCopy4 = self;
              v49 = 2112;
              v50 = accountType;
              v51 = 2112;
              v52 = accountDescription;
              v53 = 2112;
              v54 = username;
              _os_log_impl(&dword_2592D2000, v16, OS_LOG_TYPE_INFO, "%@ account.accountType: %@, account.accountDescription: %@, account.username: %@", buf, 0x2Au);
            }
          }

          v12 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
        }

        while (v12);
      }

      [(MKAccountStore *)self _processVisibleAccounts:obj];
      v20 = +[MKLog log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [(NSMutableArray *)self->_mkAccounts count];
        *buf = 138412546;
        selfCopy4 = self;
        v49 = 2048;
        v50 = v21;
        _os_log_impl(&dword_2592D2000, v20, OS_LOG_TYPE_INFO, "%@ MKAccounts %lu to export", buf, 0x16u);
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v22 = self->_mkAccounts;
      v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v37 objects:v46 count:16];
      p_info = &OBJC_METACLASS___MKHex.info;
      if (v23)
      {
        v25 = v23;
        v26 = *v38;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v38 != v26)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v37 + 1) + 8 * j);
            v29 = [p_info + 311 log];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              type = [v28 type];
              username2 = [v28 username];
              *buf = 138412802;
              selfCopy4 = self;
              v49 = 2112;
              v50 = type;
              v51 = 2112;
              v52 = username2;
              _os_log_impl(&dword_2592D2000, v29, OS_LOG_TYPE_INFO, "%@ MKAccountItem type: %@, username: %@", buf, 0x20u);

              p_info = (&OBJC_METACLASS___MKHex + 32);
            }
          }

          v25 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v37 objects:v46 count:16];
        }

        while (v25);
      }

      selfCopy5 = self;
      v4 = v35;
      v5 = 0;
      if (!-[NSMutableArray count](self->_mkAccounts, "count") && [obj count])
      {
        v33 = +[MKLog log];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy4 = selfCopy5;
          _os_log_impl(&dword_2592D2000, v33, OS_LOG_TYPE_INFO, "%@ FAILED to prepare MKAccounts array for export", buf, 0xCu);
        }
      }

      v8 = [(NSMutableArray *)selfCopy5->_mkAccounts copy];
    }
  }

  else
  {
    v5 = +[MKLog log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2592D2000, v5, OS_LOG_TYPE_INFO, "_accountStore is nil, accounts export failed", buf, 2u);
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (void)_processVisibleAccounts:(id)accounts
{
  v29 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [accountsCopy countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v19;
    v8 = *MEMORY[0x277CB8B28];
    *&v5 = 138412802;
    v16 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(accountsCopy);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        managingOwnerIdentifier = [v10 managingOwnerIdentifier];
        if (managingOwnerIdentifier)
        {
        }

        else
        {
          v12 = [v10 accountPropertyForKey:v8];

          if (!v12)
          {
            v13 = +[MKLog log];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              username = [v10 username];
              accountType = [v10 accountType];
              *buf = v16;
              selfCopy = self;
              v24 = 2112;
              v25 = username;
              v26 = 2112;
              v27 = accountType;
              _os_log_impl(&dword_2592D2000, v13, OS_LOG_TYPE_INFO, "%@ Will prepare account.username = %@, account.accountType = %@ for export", buf, 0x20u);
            }

            [(MKAccountStore *)self _processAccount:v10];
          }
        }
      }

      v6 = [accountsCopy countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v6);
  }
}

- (void)_addToOutputArray:(id)array
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [MKAccountStore _convertAccount:array];
  v5 = MEMORY[0x277CCACA8];
  type = [v4 type];
  username = [v4 username];
  v8 = [v5 stringWithFormat:@"%@+%@", type, username];

  if ([(MKAccountStore *)self _isExistingAccount:v8])
  {
    v9 = +[MKLog log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy = self;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_2592D2000, v9, OS_LOG_TYPE_INFO, "%@ userAccount already present: %@", buf, 0x16u);
    }
  }

  else
  {
    [(NSMutableArray *)self->_mkAccounts addObject:v4];
    [(MKAccountStore *)self _addToExistingAccounts:v8];
  }
}

- (BOOL)_isExistingAccount:(id)account
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [account componentsSeparatedByString:@"+"];
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    v7 = +[MKLog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = 138412802;
      selfCopy3 = self;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_2592D2000, v7, OS_LOG_TYPE_INFO, "%@  addToOutputArray type = %@, username = %@", &v13, 0x20u);
    }

    v8 = [(NSMutableDictionary *)self->_existingAccounts objectForKeyedSubscript:v5];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 containsObject:v6];
    }

    else
    {
      v11 = +[MKLog log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138412802;
        selfCopy3 = self;
        v15 = 2112;
        v16 = v5;
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&dword_2592D2000, v11, OS_LOG_TYPE_INFO, "%@ Account with type:%@, username:%@ not present in existingAccounts", &v13, 0x20u);
      }

      v10 = 0;
    }
  }

  else
  {
    v5 = +[MKLog log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = 138412546;
      selfCopy3 = self;
      v15 = 2048;
      v16 = [v4 count];
      _os_log_impl(&dword_2592D2000, v5, OS_LOG_TYPE_INFO, "%@ userAccount parts.count. %lu", &v13, 0x16u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)_addToExistingAccounts:(id)accounts
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [accounts componentsSeparatedByString:@"+"];
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    v7 = [(NSMutableDictionary *)self->_existingAccounts objectForKeyedSubscript:v5];
    if (!v7)
    {
      v7 = [MEMORY[0x277CBEB58] set];
      [(NSMutableDictionary *)self->_existingAccounts setObject:v7 forKeyedSubscript:v5];
    }

    [v7 addObject:v6];
  }

  else
  {
    v5 = +[MKLog log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412546;
      selfCopy = self;
      v10 = 2048;
      v11 = [v4 count];
      _os_log_impl(&dword_2592D2000, v5, OS_LOG_TYPE_INFO, "%@  parts.count . %lu", &v8, 0x16u);
    }
  }
}

- (void)_fetchExistingAccountsFromAccountStore
{
  v14 = *MEMORY[0x277D85DE8];
  accountStore = self->_accountStore;
  v9 = 0;
  v4 = [(ACAccountStore *)accountStore accountsWithAccountTypeIdentifiers:accountTypes error:&v9];
  v5 = v9;
  v6 = +[MKLog log];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      *buf = 138412290;
      selfCopy = v5;
      _os_log_impl(&dword_2592D2000, v6, OS_LOG_TYPE_INFO, "Failed to lookup existing accounts with error: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v8 = [v4 count];
      *buf = 138412546;
      selfCopy = self;
      v12 = 2048;
      v13 = v8;
      _os_log_impl(&dword_2592D2000, v6, OS_LOG_TYPE_INFO, "%@ Fetched accounts count: %lu from AccountStore", buf, 0x16u);
    }

    [(MKAccountStore *)self _updateExistingAccounts:v4];
  }
}

- (void)_updateExistingAccounts:(id)accounts
{
  v32 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = accounts;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = +[MKLog log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          accountType = [v8 accountType];
          accountDescription = [v8 accountDescription];
          username = [v8 username];
          *buf = 138413058;
          selfCopy = self;
          v25 = 2112;
          v26 = accountType;
          v27 = 2112;
          v28 = accountDescription;
          v29 = 2112;
          v30 = username;
          _os_log_impl(&dword_2592D2000, v9, OS_LOG_TYPE_INFO, "%@ account.accountType: %@, account.accountDescription: %@, account.username: %@", buf, 0x2Au);
        }

        v13 = [MKAccountStore _convertAccount:v8];
        v14 = MEMORY[0x277CCACA8];
        type = [v13 type];
        username2 = [v13 username];
        v17 = [v14 stringWithFormat:@"%@+%@", type, username2];

        [(MKAccountStore *)self _updateExistingAccount:v17];
        [(MKAccountStore *)self _checkForChildAccounts:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v5);
  }
}

- (void)_updateExistingAccount:(id)account
{
  v10 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if ([(MKAccountStore *)self _isExistingAccount:accountCopy])
  {
    v5 = +[MKLog log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412546;
      selfCopy = self;
      v8 = 2112;
      v9 = accountCopy;
      _os_log_impl(&dword_2592D2000, v5, OS_LOG_TYPE_INFO, "%@ userAccount: %@ already present.", &v6, 0x16u);
    }
  }

  else
  {
    [(MKAccountStore *)self _addToExistingAccounts:accountCopy];
  }
}

- (void)_checkForChildAccounts:(id)accounts
{
  v45 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = &qword_27F9A9000;
  v5 = acAccountDataClass;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v44 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v31;
    *&v7 = 138412802;
    v26 = v7;
    v27 = v5;
    v28 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        if ([accountsCopy isEnabledForDataclass:{v11, v26}])
        {
          v12 = dataClassTypeMapping;
          v13 = MEMORY[0x277CCABB0];
          v14 = [v4[67] objectForKeyedSubscript:v11];
          v15 = [v13 numberWithInt:{objc_msgSend(v14, "intValue")}];
          v16 = [v12 objectForKeyedSubscript:v15];

          if (v16)
          {
            v17 = [accountsCopy childAccountsWithAccountTypeIdentifier:v16];
            v18 = +[MKLog log];
            v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
            if (v17)
            {
              if (v19)
              {
                v20 = [v17 count];
                username = [accountsCopy username];
                [accountsCopy accountType];
                v23 = v22 = v4;
                *buf = 138413314;
                selfCopy = self;
                v36 = 2048;
                v37 = v20;
                v38 = 2112;
                v39 = username;
                v40 = 2112;
                v41 = v23;
                v42 = 2112;
                v43 = v16;
                _os_log_impl(&dword_2592D2000, v18, OS_LOG_TYPE_INFO, "%@ childAccounts count: %lu for account.username = %@, account.type = %@ withTypeIdentifier = %@", buf, 0x34u);

                v4 = v22;
                v5 = v27;

                v9 = v28;
              }

              [(MKAccountStore *)self _processChildAccounts:v17];
            }

            else
            {
              if (v19)
              {
                username2 = [accountsCopy username];
                accountType = [accountsCopy accountType];
                *buf = v26;
                selfCopy = username2;
                v36 = 2112;
                v37 = accountType;
                v38 = 2112;
                v39 = v16;
                _os_log_impl(&dword_2592D2000, v18, OS_LOG_TYPE_INFO, "childAccounts not present for account.username = %@, account.type = %@, withTypeIdentifier = %@", buf, 0x20u);

                v9 = v28;
              }
            }
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v30 objects:v44 count:16];
    }

    while (v8);
  }
}

- (void)_processChildAccounts:(id)accounts
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = accounts;
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [MKAccountStore _convertAccount:*(*(&v14 + 1) + 8 * v7)];
        v9 = MEMORY[0x277CCACA8];
        type = [v8 type];
        username = [v8 username];
        v12 = [v9 stringWithFormat:@"%@+%@", type, username];

        [(MKAccountStore *)self _updateExistingAccount:v12];
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)_importMKAccountItems:(id)items importResults:(id)results
{
  v37 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  resultsCopy = results;
  obj = itemsCopy;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [itemsCopy countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v27;
    *&v8 = 138412802;
    v22 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        v25 = 0;
        v13 = [(MKAccountStore *)self _importMKAccount:v12 error:&v25, v22];
        v14 = v25;
        v15 = +[MKLog log];
        v16 = v15;
        if (v13)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            type = [v12 type];
            username = [v12 username];
            *buf = 138412546;
            v31 = type;
            v32 = 2112;
            v33 = username;
            _os_log_impl(&dword_2592D2000, v16, OS_LOG_TYPE_INFO, "Successfully imported MKAccount type: %@, username: %@", buf, 0x16u);
          }

          [resultsCopy addObject:v12];
        }

        else
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            type2 = [v12 type];
            username2 = [v12 username];
            localizedDescription = [v14 localizedDescription];
            *buf = v22;
            v31 = type2;
            v32 = 2112;
            v33 = username2;
            v34 = 2112;
            v35 = localizedDescription;
            _os_log_error_impl(&dword_2592D2000, v16, OS_LOG_TYPE_ERROR, "Failed to import MKAccount type: %@, username: %@, Error: %@", buf, 0x20u);
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v9);
  }
}

- (id)importAccounts:(id)accounts
{
  accountsCopy = accounts;
  if (self->_accountStore)
  {
    [(MKAccountStore *)self _fetchExistingAccountsFromAccountStore];
    array = [MEMORY[0x277CBEB18] array];
    [(MKAccountStore *)self _importMKAccountItems:accountsCopy importResults:array];
    v6 = [array copy];
  }

  else
  {
    v7 = +[MKLog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_2592D2000, v7, OS_LOG_TYPE_INFO, "AccountStore is nil, accounts import failed", v9, 2u);
    }

    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (BOOL)_importMKAccount:(id)account error:(id *)error
{
  v31[1] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v7 = [(MKAccountStore *)self _getAccountTypeForMKAccount:accountCopy];
  if (v7)
  {
    type = [accountCopy type];
    v9 = [(MKAccountStore *)self _getExistingUsernamesForType:type];

    username = [accountCopy username];
    v11 = [v9 containsObject:username];

    username4 = +[MKLog log];
    v13 = os_log_type_enabled(username4, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v13)
      {
        type2 = [accountCopy type];
        username2 = [accountCopy username];
        v24 = 138412802;
        selfCopy2 = self;
        v26 = 2112;
        v27 = type2;
        v28 = 2112;
        v29 = username2;
        v16 = 1;
        _os_log_impl(&dword_2592D2000, username4, OS_LOG_TYPE_INFO, "%@ account already exists. type=%@, name=%@", &v24, 0x20u);

LABEL_16:
        goto LABEL_17;
      }
    }

    else
    {
      if (v13)
      {
        type3 = [accountCopy type];
        username3 = [accountCopy username];
        v24 = 138412802;
        selfCopy2 = self;
        v26 = 2112;
        v27 = type3;
        v28 = 2112;
        v29 = username3;
        _os_log_impl(&dword_2592D2000, username4, OS_LOG_TYPE_INFO, "%@ account does not exist. will import type=%@, name=%@", &v24, 0x20u);
      }

      if (![(MKAccountStore *)self _createAndSaveAccount:accountCopy accountType:v7 error:error])
      {
        username4 = +[MKLog log];
        if (os_log_type_enabled(username4, OS_LOG_TYPE_INFO))
        {
          v22 = *error;
          v24 = 138412290;
          selfCopy2 = v22;
          _os_log_impl(&dword_2592D2000, username4, OS_LOG_TYPE_INFO, "accountStore saveVerifiedAccount failed with error = %@", &v24, 0xCu);
        }

        v16 = 0;
        goto LABEL_16;
      }

      username4 = [accountCopy username];
      [v9 addObject:username4];
    }

    v16 = 1;
    goto LABEL_16;
  }

  v17 = MEMORY[0x277CCA9B8];
  v30 = *MEMORY[0x277CCA450];
  v31[0] = @"will skip an account due to accountType error.";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  *error = [v17 errorWithDomain:@"MKAccountStore" code:2 userInfo:v18];

  v9 = +[MKLog log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v19 = *error;
    v24 = 138412290;
    selfCopy2 = v19;
    _os_log_impl(&dword_2592D2000, v9, OS_LOG_TYPE_INFO, "will skip an account. failed with error = %@", &v24, 0xCu);
  }

  v16 = 0;
LABEL_17:

  return v16;
}

- (id)_getAccountTypeForMKAccount:(id)account
{
  v22 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = typeMap;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    selfCopy = self;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [typeMap objectForKeyedSubscript:v10];
        type = [accountCopy type];
        v13 = [v11 isEqualToString:type];

        if (v13)
        {
          v14 = [(ACAccountStore *)selfCopy->_accountStore accountTypeWithAccountTypeIdentifier:v10];
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)_getExistingUsernamesForType:(id)type
{
  v28 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = [(NSMutableDictionary *)self->_existingAccounts objectForKeyedSubscript:typeCopy];
  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v27 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v18;
      *&v8 = 138412802;
      v16 = v8;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [MKLog log:v16];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = v16;
            selfCopy = self;
            v23 = 2112;
            v24 = v12;
            v25 = 2112;
            v26 = typeCopy;
            _os_log_impl(&dword_2592D2000, v13, OS_LOG_TYPE_INFO, "%@ username: %@, type: %@", buf, 0x20u);
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v17 objects:v27 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v14 = +[MKLog log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = typeCopy;
      _os_log_impl(&dword_2592D2000, v14, OS_LOG_TYPE_INFO, "No existingAccounts usernames for type = %@", buf, 0xCu);
    }

    v6 = [MEMORY[0x277CBEB58] set];
    [(NSMutableDictionary *)self->_existingAccounts setObject:v6 forKeyedSubscript:typeCopy];
  }

  return v6;
}

- (id)_username:(id)_username
{
  _usernameCopy = _username;
  v4 = _usernameCopy;
  if (_usernameCopy && [_usernameCopy length])
  {
    v5 = v4;
    v6 = [v5 rangeOfString:@"@"];
    if (v6)
    {
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = v5;
      }

      else
      {
        v7 = [v5 substringToIndex:v6];
      }

      v8 = v7;
    }

    else
    {
      v8 = &stru_286A8E730;
    }
  }

  else
  {
    v8 = &stru_286A8E730;
  }

  return v8;
}

- (BOOL)_createAndSaveAccount:(id)account accountType:(id)type error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  typeCopy = type;
  v9 = [objc_alloc(MEMORY[0x277CB8F30]) initWithAccountType:typeCopy];
  username = [accountCopy username];
  [v9 setUsername:username];

  username2 = [accountCopy username];
  v12 = [(MKAccountStore *)self _username:username2];

  [v9 setAccountDescription:v12];
  v13 = +[MKLog log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v33 = v12;
    _os_log_impl(&dword_2592D2000, v13, OS_LOG_TYPE_INFO, "Set account description: %@", buf, 0xCu);
  }

  username3 = [accountCopy username];
  [v9 setAccountProperty:username3 forKey:@"IdentityEmailAddress"];

  v15 = +[MKLog log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    username4 = [accountCopy username];
    *buf = 138412290;
    v33 = username4;
    _os_log_impl(&dword_2592D2000, v15, OS_LOG_TYPE_INFO, "Set IdentityEmailAddress property: %@", buf, 0xCu);
  }

  [v9 setAccountProperty:v12 forKey:@"ACPropertyFullName"];
  v17 = +[MKLog log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v33 = v12;
    _os_log_impl(&dword_2592D2000, v17, OS_LOG_TYPE_INFO, "Set ACPropertyFullName property: %@", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  supportedDataclasses = [typeCopy supportedDataclasses];
  v19 = [supportedDataclasses countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(supportedDataclasses);
        }

        v23 = *(*(&v27 + 1) + 8 * i);
        [v9 setProvisioned:1 forDataclass:v23];
        [v9 setEnabled:1 forDataclass:v23];
      }

      v20 = [supportedDataclasses countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v20);
  }

  [(ACAccountStore *)self->_accountStore saveVerifiedAccount:v9 error:error];
  v24 = *error == 0;

  return v24;
}

@end