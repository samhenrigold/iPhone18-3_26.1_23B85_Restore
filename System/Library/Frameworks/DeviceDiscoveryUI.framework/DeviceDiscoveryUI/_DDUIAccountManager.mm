@interface _DDUIAccountManager
- (_DDUIAccountManager)init;
- (void)_findMemberForiCloudAccount:(id)account completionHandler:(id)handler;
- (void)_updateMemberDataForiCloudAccount:(id)account completion:(id)completion;
- (void)altDsidForiCloudAccount:(id)account completion:(id)completion;
- (void)nameComponentsForiCloudAccount:(id)account completion:(id)completion;
@end

@implementation _DDUIAccountManager

- (_DDUIAccountManager)init
{
  v8.receiver = self;
  v8.super_class = _DDUIAccountManager;
  v2 = [(_DDUIAccountManager *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    iCloudToAltDSIDDictionary = v2->_iCloudToAltDSIDDictionary;
    v2->_iCloudToAltDSIDDictionary = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    iCloudToNameComponentsDictionary = v2->_iCloudToNameComponentsDictionary;
    v2->_iCloudToNameComponentsDictionary = dictionary2;

    v2->_enabled = 1;
  }

  return v2;
}

- (void)altDsidForiCloudAccount:(id)account completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  completionCopy = completion;
  v8 = *MEMORY[0x277D04790];
  v9 = os_log_create(*MEMORY[0x277D04790], "core");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = accountCopy;
    _os_log_impl(&dword_238060000, v9, OS_LOG_TYPE_DEFAULT, "Fetching altDSID for account %@", buf, 0xCu);
  }

  if ([accountCopy length])
  {
    iCloudToAltDSIDDictionary = [(_DDUIAccountManager *)self iCloudToAltDSIDDictionary];
    v11 = [iCloudToAltDSIDDictionary objectForKeyedSubscript:accountCopy];

    if (v11)
    {
      v12 = os_log_create(v8, "core");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v11;
        _os_log_impl(&dword_238060000, v12, OS_LOG_TYPE_DEFAULT, "Found cached altDSID %@", buf, 0xCu);
      }

      completionCopy[2](completionCopy, v11, 1);
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __58___DDUIAccountManager_altDsidForiCloudAccount_completion___block_invoke;
      v13[3] = &unk_278A48290;
      v13[4] = self;
      v14 = accountCopy;
      v15 = completionCopy;
      [(_DDUIAccountManager *)self _updateMemberDataForiCloudAccount:v14 completion:v13];
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0);
  }
}

- (void)nameComponentsForiCloudAccount:(id)account completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  completionCopy = completion;
  v8 = *MEMORY[0x277D04790];
  v9 = os_log_create(*MEMORY[0x277D04790], "core");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = accountCopy;
    _os_log_impl(&dword_238060000, v9, OS_LOG_TYPE_DEFAULT, "Fetching name components for account %@", buf, 0xCu);
  }

  if (accountCopy)
  {
    iCloudToNameComponentsDictionary = [(_DDUIAccountManager *)self iCloudToNameComponentsDictionary];
    v11 = [iCloudToNameComponentsDictionary objectForKeyedSubscript:accountCopy];

    if (v11)
    {
      v12 = os_log_create(v8, "core");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v11;
        _os_log_impl(&dword_238060000, v12, OS_LOG_TYPE_DEFAULT, "Found cached components %@", buf, 0xCu);
      }

      completionCopy[2](completionCopy, v11, 1);
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __65___DDUIAccountManager_nameComponentsForiCloudAccount_completion___block_invoke;
      v13[3] = &unk_278A48290;
      v13[4] = self;
      v14 = accountCopy;
      v15 = completionCopy;
      [(_DDUIAccountManager *)self _updateMemberDataForiCloudAccount:v14 completion:v13];
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0);
  }
}

- (void)_updateMemberDataForiCloudAccount:(id)account completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  completionCopy = completion;
  v8 = *MEMORY[0x277D04790];
  v9 = os_log_create(*MEMORY[0x277D04790], "core");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = accountCopy;
    _os_log_impl(&dword_238060000, v9, OS_LOG_TYPE_DEFAULT, "Fetching account details for %@", buf, 0xCu);
  }

  if ([(_DDUIAccountManager *)self enabled])
  {
    objc_initWeak(buf, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68___DDUIAccountManager__updateMemberDataForiCloudAccount_completion___block_invoke;
    v11[3] = &unk_278A482B8;
    objc_copyWeak(&v14, buf);
    v12 = accountCopy;
    v13 = completionCopy;
    [(_DDUIAccountManager *)self _findMemberForiCloudAccount:v12 completionHandler:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = os_log_create(v8, "core");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238060000, v10, OS_LOG_TYPE_DEFAULT, "_NWUIAccountManager is disabled, early returning...", buf, 2u);
    }
  }
}

- (void)_findMemberForiCloudAccount:(id)account completionHandler:(id)handler
{
  accountCopy = account;
  handlerCopy = handler;
  v8 = objc_alloc_init(MEMORY[0x277D08280]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69___DDUIAccountManager__findMemberForiCloudAccount_completionHandler___block_invoke;
  v11[3] = &unk_278A482E0;
  v12 = accountCopy;
  v13 = handlerCopy;
  v11[4] = self;
  v9 = accountCopy;
  v10 = handlerCopy;
  [v8 startRequestWithCompletionHandler:v11];
}

@end