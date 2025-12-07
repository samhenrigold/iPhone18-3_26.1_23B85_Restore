@interface ESAccountLoader
+ (id)sharedInstance;
- (BOOL)_loadFrameworkAtSubpath:(id)subpath;
- (Class)accountClassForACAccount:(id)account;
- (Class)agentClassForACAccount:(id)account;
- (Class)clientAccountClassForACAccount:(id)account;
- (Class)daemonAccountClassForACAccount:(id)account;
- (Class)daemonAppropriateAccountClassForACAccount:(id)account;
- (ESAccountLoader)init;
- (void)_addAccountInfo:(id)info forFrameworkNamed:(id)named;
- (void)init;
- (void)loadDaemonBundleForACAccountType:(id)type;
- (void)loadFrameworkForACAccountType:(id)type;
@end

@implementation ESAccountLoader

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ESAccountLoader_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance__sharedInstance;

  return v2;
}

uint64_t __33__ESAccountLoader_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_opt_new();
  v2 = sharedInstance__sharedInstance;
  sharedInstance__sharedInstance = v1;

  sMainBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

- (void)_addAccountInfo:(id)info forFrameworkNamed:(id)named
{
  v22 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  namedCopy = named;
  v8 = [infoCopy objectForKeyedSubscript:@"ACAccountType"];
  v9 = [infoCopy objectForKeyedSubscript:@"ACParentAccountType"];
  if (v8)
  {
    v10 = objc_opt_new();
    v11 = [infoCopy objectForKeyedSubscript:@"DAAccountClass"];
    [v10 setAccountClassName:v11];

    v12 = [infoCopy objectForKeyedSubscript:@"DAClientAccountClass"];
    [v10 setClientAccountClassName:v12];

    v13 = [infoCopy objectForKeyedSubscript:@"DADaemonAccountClass"];
    [v10 setDaemonAccountClassName:v13];

    v14 = [infoCopy objectForKeyedSubscript:@"DAAgentClass"];
    [v10 setAgentClassName:v14];

    v15 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v15, v16))
    {
      v20 = 138412290;
      v21 = infoCopy;
      _os_log_impl(&dword_24A097000, v15, v16, "Handling account info mapping %@", &v20, 0xCu);
    }

    if (v9)
    {
      v17 = [(NSMutableDictionary *)self->_acParentAccountTypeToChildAccountTypes objectForKeyedSubscript:v9];
      if (!v17)
      {
        v17 = objc_opt_new();
        [(NSMutableDictionary *)self->_acParentAccountTypeToChildAccountTypes setObject:v17 forKeyedSubscript:v9];
      }

      [v17 setObject:v10 forKeyedSubscript:v8];
      [(NSMutableDictionary *)self->_acAccountTypeToAccountFrameworkSubpath setObject:namedCopy forKeyedSubscript:v8];
    }

    else
    {
      [(NSMutableDictionary *)self->_acAccountTypeToClassNames setObject:v10 forKeyedSubscript:v8];
      [(NSMutableDictionary *)self->_acAccountTypeToAccountFrameworkSubpath setObject:namedCopy forKeyedSubscript:v8];
      v17 = [infoCopy objectForKeyedSubscript:@"DAAgentClassBundle"];
      if (v17)
      {
        v18 = [namedCopy stringByAppendingPathComponent:v17];
        v19 = [v18 stringByAppendingPathExtension:@"bundle"];

        if (v19)
        {
          [(NSMutableDictionary *)self->_acAccountTypeToAccountDaemonBundleSubpath setObject:v19 forKeyedSubscript:v8];
        }
      }
    }
  }
}

- (ESAccountLoader)init
{
  v77 = *MEMORY[0x277D85DE8];
  v71.receiver = self;
  v71.super_class = ESAccountLoader;
  v3 = [(ESAccountLoader *)&v71 init];
  if (v3)
  {
    v4 = objc_opt_new();
    [(ESAccountLoader *)v3 setAcAccountTypeToAccountFrameworkSubpath:v4];

    v5 = objc_opt_new();
    [(ESAccountLoader *)v3 setAcAccountTypeToAccountDaemonBundleSubpath:v5];

    v6 = objc_opt_new();
    [(ESAccountLoader *)v3 setAcAccountTypeToClassNames:v6];

    v7 = objc_opt_new();
    [(ESAccountLoader *)v3 setAcParentAccountTypeToChildAccountTypes:v7];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v9 = 0x277CCA000uLL;
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    privateFrameworksPath = [v10 privateFrameworksPath];

    if (!privateFrameworksPath)
    {
      [(ESAccountLoader *)v3 init];
    }

    v12 = MEMORY[0x277CBEAC0];
    v13 = [privateFrameworksPath stringByAppendingPathComponent:@"AccountInfo.plist"];
    v14 = [v12 dictionaryWithContentsOfFile:v13];

    v15 = [v14 objectForKeyedSubscript:@"DAAccountInfo"];
    v16 = v15;
    if (v15 && [v15 count])
    {
      v17 = DALoggingwithCategory();
      v18 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v17, v18))
      {
        *buf = 0;
        _os_log_impl(&dword_24A097000, v17, v18, "Using pre-cached account infos", buf, 2u);
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      obj = v16;
      v19 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
      if (!v19)
      {
        goto LABEL_44;
      }

      v20 = v19;
      v51 = v16;
      v21 = v14;
      v22 = defaultManager;
      v23 = *v68;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v68 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v67 + 1) + 8 * i);
          v26 = [v25 objectForKeyedSubscript:@"DAFrameworkName"];
          if (v26)
          {
            [(ESAccountLoader *)v3 _addAccountInfo:v25 forFrameworkNamed:v26];
          }
        }

        v20 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v20);
      defaultManager = v22;
      v14 = v21;
    }

    else
    {
      v27 = DALoggingwithCategory();
      v28 = MEMORY[0x277D03988];
      v29 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v27, v29))
      {
        *buf = 0;
        _os_log_impl(&dword_24A097000, v27, v29, "Going to the disk for our account info providers", buf, 2u);
      }

      [defaultManager contentsOfDirectoryAtPath:privateFrameworksPath error:0];
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      obj = v66 = 0u;
      v30 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
      if (!v30)
      {
        goto LABEL_44;
      }

      v31 = v30;
      v50 = defaultManager;
      v51 = v16;
      v49 = v14;
      v32 = *v64;
      v33 = *(v28 + 7);
      v52 = *v64;
      v53 = privateFrameworksPath;
      do
      {
        v34 = 0;
        v54 = v31;
        do
        {
          if (*v64 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v58 = v34;
          v35 = *(*(&v63 + 1) + 8 * v34);
          v36 = DALoggingwithCategory();
          if (os_log_type_enabled(v36, v33))
          {
            *buf = 138412290;
            v74 = v35;
            _os_log_impl(&dword_24A097000, v36, v33, "Checking account info from framework: %@", buf, 0xCu);
          }

          v37 = objc_alloc(*(v9 + 2264));
          v38 = [privateFrameworksPath stringByAppendingPathComponent:v35];
          v39 = [v37 initWithPath:v38];

          if (v39)
          {
            infoDictionary = [v39 infoDictionary];
            if (infoDictionary)
            {
              v55 = infoDictionary;
              v56 = v39;
              v41 = [infoDictionary objectForKeyedSubscript:@"DAAccountInfo"];
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              v42 = [v41 countByEnumeratingWithState:&v59 objects:v72 count:16];
              if (v42)
              {
                v43 = v42;
                v44 = *v60;
                do
                {
                  for (j = 0; j != v43; ++j)
                  {
                    if (*v60 != v44)
                    {
                      objc_enumerationMutation(v41);
                    }

                    v46 = *(*(&v59 + 1) + 8 * j);
                    v47 = DALoggingwithCategory();
                    if (os_log_type_enabled(v47, v33))
                    {
                      *buf = 138412290;
                      v74 = v46;
                      _os_log_impl(&dword_24A097000, v47, v33, "Adding account info: %@", buf, 0xCu);
                    }

                    [(ESAccountLoader *)v3 _addAccountInfo:v46 forFrameworkNamed:v35];
                  }

                  v43 = [v41 countByEnumeratingWithState:&v59 objects:v72 count:16];
                }

                while (v43);
              }

              v32 = v52;
              privateFrameworksPath = v53;
              v9 = 0x277CCA000;
              v31 = v54;
              infoDictionary = v55;
              v39 = v56;
            }
          }

          v34 = v58 + 1;
        }

        while (v58 + 1 != v31);
        v31 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
      }

      while (v31);
      v14 = v49;
      defaultManager = v50;
    }

    v16 = v51;
LABEL_44:
  }

  return v3;
}

- (BOOL)_loadFrameworkAtSubpath:(id)subpath
{
  subpathCopy = subpath;
  if (subpathCopy)
  {
    privateFrameworksPath = [sMainBundle privateFrameworksPath];
    v6 = [privateFrameworksPath stringByAppendingPathComponent:subpathCopy];

    v7 = [MEMORY[0x277CCA8D8] bundleWithPath:v6];
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  load = [v7 load];
  objc_sync_exit(selfCopy);

  return load;
}

- (void)loadFrameworkForACAccountType:(id)type
{
  v13 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  acAccountTypeToAccountFrameworkSubpath = self->_acAccountTypeToAccountFrameworkSubpath;
  identifier = [typeCopy identifier];
  v7 = [(NSMutableDictionary *)acAccountTypeToAccountFrameworkSubpath objectForKeyedSubscript:identifier];

  if (![(ESAccountLoader *)self _loadFrameworkAtSubpath:v7])
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v8, v9))
    {
      identifier2 = [typeCopy identifier];
      v11 = 138412290;
      v12 = identifier2;
      _os_log_impl(&dword_24A097000, v8, v9, "We don't know of any bundles for account type %@", &v11, 0xCu);
    }
  }
}

- (void)loadDaemonBundleForACAccountType:(id)type
{
  v15 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  acAccountTypeToAccountDaemonBundleSubpath = self->_acAccountTypeToAccountDaemonBundleSubpath;
  identifier = [typeCopy identifier];
  v7 = [(NSMutableDictionary *)acAccountTypeToAccountDaemonBundleSubpath objectForKeyedSubscript:identifier];

  if (![(ESAccountLoader *)self _loadFrameworkAtSubpath:v7])
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v8, v9))
    {
      identifier2 = [typeCopy identifier];
      v11 = 138412546;
      v12 = identifier2;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_24A097000, v8, v9, "Could not load bundle for account type %@ at subpath %@", &v11, 0x16u);
    }
  }
}

- (Class)accountClassForACAccount:(id)account
{
  v31 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  accountType = [accountCopy accountType];
  [(ESAccountLoader *)self loadFrameworkForACAccountType:accountType];

  v6 = self->_acAccountTypeToClassNames;
  parentAccount = [accountCopy parentAccount];

  if (parentAccount)
  {
    acParentAccountTypeToChildAccountTypes = self->_acParentAccountTypeToChildAccountTypes;
    parentAccount2 = [accountCopy parentAccount];
    accountType2 = [parentAccount2 accountType];
    identifier = [accountType2 identifier];
    v12 = [(NSMutableDictionary *)acParentAccountTypeToChildAccountTypes objectForKeyedSubscript:identifier];

    v6 = v12;
  }

  accountType3 = [accountCopy accountType];
  identifier2 = [accountType3 identifier];
  v15 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:identifier2];
  accountClassName = [v15 accountClassName];

  v17 = NSClassFromString(accountClassName);
  if (!v17)
  {
    parentAccount3 = [accountCopy parentAccount];

    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 3);
    v21 = os_log_type_enabled(v19, v20);
    if (parentAccount3)
    {
      if (v21)
      {
        parentAccount4 = [accountCopy parentAccount];
        v25 = 138412802;
        v26 = accountClassName;
        v27 = 2112;
        v28 = accountCopy;
        v29 = 2112;
        v30 = parentAccount4;
        _os_log_impl(&dword_24A097000, v19, v20, "Could not come up with an account class (name %@) for account %@ parent account %@", &v25, 0x20u);
      }
    }

    else if (v21)
    {
      v25 = 138412546;
      v26 = accountClassName;
      v27 = 2112;
      v28 = accountCopy;
      _os_log_impl(&dword_24A097000, v19, v20, "Could not come up with an account class (name %@) for account %@", &v25, 0x16u);
    }
  }

  v23 = v17;

  return v17;
}

- (Class)clientAccountClassForACAccount:(id)account
{
  v34 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  accountType = [accountCopy accountType];
  [(ESAccountLoader *)self loadFrameworkForACAccountType:accountType];

  v6 = self->_acAccountTypeToClassNames;
  parentAccount = [accountCopy parentAccount];

  if (parentAccount)
  {
    acParentAccountTypeToChildAccountTypes = self->_acParentAccountTypeToChildAccountTypes;
    parentAccount2 = [accountCopy parentAccount];
    accountType2 = [parentAccount2 accountType];
    identifier = [accountType2 identifier];
    v12 = [(NSMutableDictionary *)acParentAccountTypeToChildAccountTypes objectForKeyedSubscript:identifier];

    v6 = v12;
  }

  accountType3 = [accountCopy accountType];
  identifier2 = [accountType3 identifier];
  v15 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:identifier2];
  clientAccountClassName = [v15 clientAccountClassName];

  if (!clientAccountClassName)
  {
    accountType4 = [accountCopy accountType];
    identifier3 = [accountType4 identifier];
    v19 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:identifier3];
    clientAccountClassName = [v19 accountClassName];
  }

  v20 = NSClassFromString(clientAccountClassName);
  if (!v20)
  {
    parentAccount3 = [accountCopy parentAccount];

    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 3);
    v24 = os_log_type_enabled(v22, v23);
    if (parentAccount3)
    {
      if (v24)
      {
        parentAccount4 = [accountCopy parentAccount];
        v28 = 138412802;
        v29 = clientAccountClassName;
        v30 = 2112;
        v31 = accountCopy;
        v32 = 2112;
        v33 = parentAccount4;
        _os_log_impl(&dword_24A097000, v22, v23, "Could not come up with a client account class (name %@) for account %@ parent account %@", &v28, 0x20u);
      }
    }

    else if (v24)
    {
      v28 = 138412546;
      v29 = clientAccountClassName;
      v30 = 2112;
      v31 = accountCopy;
      _os_log_impl(&dword_24A097000, v22, v23, "Could not come up with a client account class (name %@) for account %@", &v28, 0x16u);
    }
  }

  v26 = v20;

  return v20;
}

- (Class)daemonAccountClassForACAccount:(id)account
{
  v35 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  accountType = [accountCopy accountType];
  [(ESAccountLoader *)self loadFrameworkForACAccountType:accountType];

  v6 = self->_acAccountTypeToClassNames;
  parentAccount = [accountCopy parentAccount];

  if (parentAccount)
  {
    acParentAccountTypeToChildAccountTypes = self->_acParentAccountTypeToChildAccountTypes;
    parentAccount2 = [accountCopy parentAccount];
    accountType2 = [parentAccount2 accountType];
    identifier = [accountType2 identifier];
    v12 = [(NSMutableDictionary *)acParentAccountTypeToChildAccountTypes objectForKeyedSubscript:identifier];

    v6 = v12;
  }

  accountType3 = [accountCopy accountType];
  identifier2 = [accountType3 identifier];
  v15 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:identifier2];
  daemonAccountClassName = [v15 daemonAccountClassName];

  if (!daemonAccountClassName && ([accountCopy accountType], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "identifier"), v18 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](v6, "objectForKeyedSubscript:", v18), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "accountClassName"), daemonAccountClassName = objc_claimAutoreleasedReturnValue(), v19, v18, v17, !daemonAccountClassName) || (objc_msgSend(accountCopy, "accountType"), v20 = objc_claimAutoreleasedReturnValue(), -[ESAccountLoader loadDaemonBundleForACAccountType:](self, "loadDaemonBundleForACAccountType:", v20), v20, (v21 = NSClassFromString(daemonAccountClassName)) == 0))
  {
    parentAccount3 = [accountCopy parentAccount];

    v23 = DALoggingwithCategory();
    v24 = *(MEMORY[0x277D03988] + 3);
    v25 = os_log_type_enabled(v23, v24);
    if (parentAccount3)
    {
      if (v25)
      {
        parentAccount4 = [accountCopy parentAccount];
        v29 = 138412802;
        v30 = daemonAccountClassName;
        v31 = 2112;
        v32 = accountCopy;
        v33 = 2112;
        v34 = parentAccount4;
        _os_log_impl(&dword_24A097000, v23, v24, "Could not come up with a daemon account class (name %@) for account %@ parent account %@", &v29, 0x20u);
      }
    }

    else if (v25)
    {
      v29 = 138412546;
      v30 = daemonAccountClassName;
      v31 = 2112;
      v32 = accountCopy;
      _os_log_impl(&dword_24A097000, v23, v24, "Could not come up with a daemon account class (name %@) for account %@", &v29, 0x16u);
    }

    v21 = 0;
  }

  v27 = v21;

  return v21;
}

- (Class)agentClassForACAccount:(id)account
{
  accountCopy = account;
  accountType = [accountCopy accountType];
  [(ESAccountLoader *)self loadDaemonBundleForACAccountType:accountType];

  v7 = self->_acAccountTypeToClassNames;
  parentAccount = [accountCopy parentAccount];

  if (parentAccount)
  {
    acParentAccountTypeToChildAccountTypes = self->_acParentAccountTypeToChildAccountTypes;
    parentAccount2 = [accountCopy parentAccount];
    accountType2 = [parentAccount2 accountType];
    identifier = [accountType2 identifier];
    v13 = [(NSMutableDictionary *)acParentAccountTypeToChildAccountTypes objectForKeyedSubscript:identifier];

    v7 = v13;
  }

  accountType3 = [accountCopy accountType];
  identifier2 = [accountType3 identifier];
  v16 = [(NSMutableDictionary *)v7 objectForKeyedSubscript:identifier2];
  agentClassName = [v16 agentClassName];

  v18 = NSClassFromString(agentClassName);
  if (!v18)
  {
    parentAccount3 = [accountCopy parentAccount];

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v21 = currentHandler;
    if (parentAccount3)
    {
      parentAccount4 = [accountCopy parentAccount];
      [v21 handleFailureInMethod:a2 object:self file:@"ESAccountLoader.m" lineNumber:250 description:{@"Could not come up with an agent class (name %@) for account %@ parent account %@", agentClassName, accountCopy, parentAccount4}];
    }

    else
    {
      [currentHandler handleFailureInMethod:a2 object:self file:@"ESAccountLoader.m" lineNumber:252 description:{@"Could not come up with an agent class (name %@) for account %@", agentClassName, accountCopy}];
    }
  }

  v23 = v18;

  return v18;
}

- (Class)daemonAppropriateAccountClassForACAccount:(id)account
{
  accountCopy = account;
  if (ESIsRunningInExchangeSyncD())
  {
    [(ESAccountLoader *)self daemonAccountClassForACAccount:accountCopy];
  }

  else
  {
    [(ESAccountLoader *)self clientAccountClassForACAccount:accountCopy];
  }
  v5 = ;

  return v5;
}

- (void)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ESAccountLoader.m" lineNumber:105 description:{@"Could not find the frameworks directory for bundle %@", v5}];
}

@end