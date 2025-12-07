@interface DAAccountLoader
+ (id)sharedInstance;
+ (void)_findPrivateFrameworks;
- (BOOL)_loadFrameworkAtSubpath:(id)subpath;
- (Class)agentClassForACAccount:(id)account;
- (Class)clientAccountClassForACAccount:(id)account;
- (Class)daemonAccountClassForACAccount:(id)account;
- (Class)daemonAppropriateAccountClassForACAccount:(id)account;
- (DAAccountLoader)init;
- (id)_classNamesDictionaryForAccount:(id)account;
- (void)_addAccountInfo:(id)info forFrameworkNamed:(id)named;
- (void)loadDaemonBundleForACAccountType:(id)type;
- (void)loadFrameworkForACAccountType:(id)type;
@end

@implementation DAAccountLoader

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__DAAccountLoader_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance__sharedInstance;

  return v2;
}

uint64_t __33__DAAccountLoader_sharedInstance__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _findPrivateFrameworks];
  sharedInstance__sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)_addAccountInfo:(id)info forFrameworkNamed:(id)named
{
  v26 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  namedCopy = named;
  v8 = [infoCopy objectForKeyedSubscript:@"ACAccountType"];
  v9 = [infoCopy objectForKeyedSubscript:@"ACParentAccountType"];
  v10 = [infoCopy objectForKeyedSubscript:@"ACTopLevelAccountType"];
  if (v8)
  {
    v11 = objc_opt_new();
    v12 = [infoCopy objectForKeyedSubscript:@"DAAccountClass"];
    [v11 setAccountClassName:v12];

    v13 = [infoCopy objectForKeyedSubscript:@"DAClientAccountClass"];
    [v11 setClientAccountClassName:v13];

    v14 = [infoCopy objectForKeyedSubscript:@"DADaemonAccountClass"];
    [v11 setDaemonAccountClassName:v14];

    v15 = [infoCopy objectForKeyedSubscript:@"DAAgentClass"];
    [v11 setAgentClassName:v15];

    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v16, v17))
    {
      v24 = 138412290;
      v25 = infoCopy;
      _os_log_impl(&dword_24844D000, v16, v17, "Handling account info mapping %@", &v24, 0xCu);
    }

    [(NSMutableDictionary *)self->_acAccountTypeToAccountFrameworkSubpath setObject:namedCopy forKeyedSubscript:v8];
    if (v10)
    {
      v18 = [(NSMutableDictionary *)self->_classNamesForTopLevelAccountTypes objectForKeyedSubscript:v10];
      if (!v18)
      {
        v18 = objc_opt_new();
        classNamesForTopLevelAccountTypes = self->_classNamesForTopLevelAccountTypes;
        v20 = v18;
        v21 = v10;
LABEL_10:
        [(NSMutableDictionary *)classNamesForTopLevelAccountTypes setObject:v20 forKeyedSubscript:v21];
      }
    }

    else
    {
      if (!v9)
      {
        [(NSMutableDictionary *)self->_defaultClassNamesForAccountTypes setObject:v11 forKeyedSubscript:v8];
        v18 = [infoCopy objectForKeyedSubscript:@"DAAgentClassBundle"];
        if (v18)
        {
          v22 = [namedCopy stringByAppendingPathComponent:v18];
          v23 = [v22 stringByAppendingPathExtension:@"bundle"];

          if (v23)
          {
            [(NSMutableDictionary *)self->_acAccountTypeToAccountDaemonBundleSubpath setObject:v23 forKeyedSubscript:v8];
          }
        }

        goto LABEL_12;
      }

      v18 = [(NSMutableDictionary *)self->_classNamesForDirectlyNestedAccountTypes objectForKeyedSubscript:v9];
      if (!v18)
      {
        v18 = objc_opt_new();
        classNamesForTopLevelAccountTypes = self->_classNamesForDirectlyNestedAccountTypes;
        v20 = v18;
        v21 = v9;
        goto LABEL_10;
      }
    }

    [v18 setObject:v11 forKeyedSubscript:v8];
LABEL_12:
  }
}

- (DAAccountLoader)init
{
  v64 = *MEMORY[0x277D85DE8];
  v60.receiver = self;
  v60.super_class = DAAccountLoader;
  v2 = [(DAAccountLoader *)&v60 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(DAAccountLoader *)v2 setAcAccountTypeToAccountFrameworkSubpath:v3];

    v4 = objc_opt_new();
    [(DAAccountLoader *)v2 setAcAccountTypeToAccountDaemonBundleSubpath:v4];

    v5 = objc_opt_new();
    [(DAAccountLoader *)v2 setDefaultClassNamesForAccountTypes:v5];

    v6 = objc_opt_new();
    [(DAAccountLoader *)v2 setClassNamesForDirectlyNestedAccountTypes:v6];

    v7 = objc_opt_new();
    [(DAAccountLoader *)v2 setClassNamesForTopLevelAccountTypes:v7];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v9 = privateFrameworksPath;
    v10 = MEMORY[0x277CBEAC0];
    v11 = [v9 stringByAppendingPathComponent:@"AccountInfo.plist"];
    v12 = [v10 dictionaryWithContentsOfFile:v11];

    v13 = [v12 objectForKeyedSubscript:@"DAAccountInfo"];
    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 6);
    v16 = os_log_type_enabled(v14, v15);
    v44 = v9;
    if (v13)
    {
      if (v16)
      {
        *buf = 0;
        _os_log_impl(&dword_24844D000, v14, v15, "Using pre-cached account infos", buf, 2u);
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = v13;
      v17 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v56;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v56 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v55 + 1) + 8 * i);
            v22 = [v21 objectForKeyedSubscript:@"DAFrameworkName"];
            if (v22)
            {
              [(DAAccountLoader *)v2 _addAccountInfo:v21 forFrameworkNamed:v22];
            }
          }

          v18 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
        }

        while (v18);
        v9 = v44;
      }
    }

    else
    {
      if (v16)
      {
        *buf = 0;
        _os_log_impl(&dword_24844D000, v14, v15, "Going to the disk for our account info providers", buf, 2u);
      }

      [defaultManager contentsOfDirectoryAtPath:v9 error:0];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      obj = v54 = 0u;
      v23 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
      if (v23)
      {
        v41 = 0;
        v42 = v12;
        v43 = defaultManager;
        v24 = *v52;
        v25 = 0x277CCA000uLL;
        v26 = v23;
        do
        {
          v27 = 0;
          v45 = v26;
          do
          {
            if (*v52 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v51 + 1) + 8 * v27);
            v29 = objc_alloc(*(v25 + 2264));
            v30 = [v9 stringByAppendingPathComponent:v28];
            v31 = [v29 initWithPath:v30];

            if (v31)
            {
              infoDictionary = [v31 infoDictionary];
              v33 = infoDictionary;
              if (infoDictionary)
              {
                v34 = v24;
                v35 = [infoDictionary objectForKeyedSubscript:@"DAAccountInfo"];
                v47 = 0u;
                v48 = 0u;
                v49 = 0u;
                v50 = 0u;
                v36 = [v35 countByEnumeratingWithState:&v47 objects:v61 count:16];
                if (v36)
                {
                  v37 = v36;
                  v38 = *v48;
                  do
                  {
                    for (j = 0; j != v37; ++j)
                    {
                      if (*v48 != v38)
                      {
                        objc_enumerationMutation(v35);
                      }

                      [(DAAccountLoader *)v2 _addAccountInfo:*(*(&v47 + 1) + 8 * j) forFrameworkNamed:v28, v41, v42, v43];
                    }

                    v37 = [v35 countByEnumeratingWithState:&v47 objects:v61 count:16];
                  }

                  while (v37);
                }

                v9 = v44;
                v26 = v45;
                v24 = v34;
                v25 = 0x277CCA000;
              }
            }

            ++v27;
          }

          while (v27 != v26);
          v26 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
        }

        while (v26);
        v12 = v42;
        defaultManager = v43;
        v13 = v41;
      }
    }
  }

  return v2;
}

+ (void)_findPrivateFrameworks
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DAAccountLoader.m" lineNumber:168 description:{@"Could not find the frameworks directory for bundle %@", v4}];
}

- (BOOL)_loadFrameworkAtSubpath:(id)subpath
{
  subpathCopy = subpath;
  if (subpathCopy)
  {
    v5 = [privateFrameworksPath stringByAppendingPathComponent:subpathCopy];
    v6 = [MEMORY[0x277CCA8D8] bundleWithPath:v5];
  }

  else
  {
    v6 = 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  load = [v6 load];
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

  if (![(DAAccountLoader *)self _loadFrameworkAtSubpath:v7])
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v8, v9))
    {
      identifier2 = [typeCopy identifier];
      v11 = 138412290;
      v12 = identifier2;
      _os_log_impl(&dword_24844D000, v8, v9, "We don't know of any bundles for account type %@", &v11, 0xCu);
    }
  }
}

- (void)loadDaemonBundleForACAccountType:(id)type
{
  acAccountTypeToAccountDaemonBundleSubpath = self->_acAccountTypeToAccountDaemonBundleSubpath;
  identifier = [type identifier];
  v6 = [(NSMutableDictionary *)acAccountTypeToAccountDaemonBundleSubpath objectForKeyedSubscript:identifier];

  [(DAAccountLoader *)self _loadFrameworkAtSubpath:v6];
}

- (id)_classNamesDictionaryForAccount:(id)account
{
  accountCopy = account;
  parentAccount = [accountCopy parentAccount];

  if (parentAccount)
  {
    calTopLevelAccount = [accountCopy calTopLevelAccount];
    accountType = [calTopLevelAccount accountType];
    identifier = [accountType identifier];

    v9 = [(NSMutableDictionary *)self->_classNamesForTopLevelAccountTypes objectForKeyedSubscript:identifier];
    if (v9)
    {
      accountType2 = [accountCopy accountType];
      identifier2 = [accountType2 identifier];
      v12 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:identifier2];

      if (v12)
      {

        goto LABEL_10;
      }
    }

    classNamesForDirectlyNestedAccountTypes = self->_classNamesForDirectlyNestedAccountTypes;
    parentAccount2 = [accountCopy parentAccount];
    accountType3 = [parentAccount2 accountType];
    identifier3 = [accountType3 identifier];
    v17 = [(NSMutableDictionary *)classNamesForDirectlyNestedAccountTypes objectForKeyedSubscript:identifier3];

    if (v17)
    {
      accountType4 = [accountCopy accountType];
      identifier4 = [accountType4 identifier];
      v20 = [(NSMutableDictionary *)v17 objectForKeyedSubscript:identifier4];

      if (v20)
      {

        v9 = v17;
        goto LABEL_10;
      }
    }
  }

  v9 = self->_defaultClassNamesForAccountTypes;
LABEL_10:

  return v9;
}

- (Class)clientAccountClassForACAccount:(id)account
{
  v28 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  accountType = [accountCopy accountType];
  [(DAAccountLoader *)self loadFrameworkForACAccountType:accountType];

  v6 = [(DAAccountLoader *)self _classNamesDictionaryForAccount:accountCopy];
  accountType2 = [accountCopy accountType];
  identifier = [accountType2 identifier];
  v9 = [v6 objectForKeyedSubscript:identifier];
  clientAccountClassName = [v9 clientAccountClassName];

  if (!clientAccountClassName)
  {
    accountType3 = [accountCopy accountType];
    identifier2 = [accountType3 identifier];
    v13 = [v6 objectForKeyedSubscript:identifier2];
    clientAccountClassName = [v13 accountClassName];
  }

  v14 = NSClassFromString(clientAccountClassName);
  if (!v14)
  {
    parentAccount = [accountCopy parentAccount];

    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 3);
    v18 = os_log_type_enabled(v16, v17);
    if (parentAccount)
    {
      if (v18)
      {
        parentAccount2 = [accountCopy parentAccount];
        v22 = 138412802;
        v23 = clientAccountClassName;
        v24 = 2112;
        v25 = accountCopy;
        v26 = 2112;
        v27 = parentAccount2;
        _os_log_impl(&dword_24844D000, v16, v17, "Could not come up with a client account class (name %@) for account %@ parent account %@", &v22, 0x20u);
      }
    }

    else if (v18)
    {
      v22 = 138412546;
      v23 = clientAccountClassName;
      v24 = 2112;
      v25 = accountCopy;
      _os_log_impl(&dword_24844D000, v16, v17, "Could not come up with a client account class (name %@) for account %@", &v22, 0x16u);
    }
  }

  v20 = v14;

  return v14;
}

- (Class)daemonAccountClassForACAccount:(id)account
{
  v29 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  accountType = [accountCopy accountType];
  [(DAAccountLoader *)self loadFrameworkForACAccountType:accountType];

  v6 = [(DAAccountLoader *)self _classNamesDictionaryForAccount:accountCopy];
  accountType2 = [accountCopy accountType];
  identifier = [accountType2 identifier];
  v9 = [v6 objectForKeyedSubscript:identifier];
  daemonAccountClassName = [v9 daemonAccountClassName];

  if (!daemonAccountClassName && ([accountCopy accountType], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "identifier"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", v12), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "accountClassName"), daemonAccountClassName = objc_claimAutoreleasedReturnValue(), v13, v12, v11, !daemonAccountClassName) || (objc_msgSend(accountCopy, "accountType"), v14 = objc_claimAutoreleasedReturnValue(), -[DAAccountLoader loadDaemonBundleForACAccountType:](self, "loadDaemonBundleForACAccountType:", v14), v14, (v15 = NSClassFromString(daemonAccountClassName)) == 0))
  {
    parentAccount = [accountCopy parentAccount];

    v17 = DALoggingwithCategory();
    v18 = *(MEMORY[0x277D03988] + 3);
    v19 = os_log_type_enabled(v17, v18);
    if (parentAccount)
    {
      if (v19)
      {
        parentAccount2 = [accountCopy parentAccount];
        v23 = 138412802;
        v24 = daemonAccountClassName;
        v25 = 2112;
        v26 = accountCopy;
        v27 = 2112;
        v28 = parentAccount2;
        _os_log_impl(&dword_24844D000, v17, v18, "Could not come up with a daemon account class (name %@) for account %@ parent account %@", &v23, 0x20u);
      }
    }

    else if (v19)
    {
      v23 = 138412546;
      v24 = daemonAccountClassName;
      v25 = 2112;
      v26 = accountCopy;
      _os_log_impl(&dword_24844D000, v17, v18, "Could not come up with a daemon account class (name %@) for account %@", &v23, 0x16u);
    }

    v15 = 0;
  }

  v21 = v15;

  return v15;
}

- (Class)agentClassForACAccount:(id)account
{
  accountCopy = account;
  accountType = [accountCopy accountType];
  [(DAAccountLoader *)self loadDaemonBundleForACAccountType:accountType];

  v7 = [(DAAccountLoader *)self _classNamesDictionaryForAccount:accountCopy];
  accountType2 = [accountCopy accountType];
  identifier = [accountType2 identifier];
  v10 = [v7 objectForKeyedSubscript:identifier];
  agentClassName = [v10 agentClassName];

  v12 = NSClassFromString(agentClassName);
  if (!v12)
  {
    parentAccount = [accountCopy parentAccount];

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v15 = currentHandler;
    if (parentAccount)
    {
      parentAccount2 = [accountCopy parentAccount];
      [v15 handleFailureInMethod:a2 object:self file:@"DAAccountLoader.m" lineNumber:273 description:{@"Could not come up with an agent class (name %@) for account %@ parent account %@", agentClassName, accountCopy, parentAccount2}];
    }

    else
    {
      [currentHandler handleFailureInMethod:a2 object:self file:@"DAAccountLoader.m" lineNumber:275 description:{@"Could not come up with an agent class (name %@) for account %@", agentClassName, accountCopy}];
    }
  }

  v17 = v12;

  return v12;
}

- (Class)daemonAppropriateAccountClassForACAccount:(id)account
{
  accountCopy = account;
  if (DAIsRunningInDataAccessD())
  {
    [(DAAccountLoader *)self daemonAccountClassForACAccount:accountCopy];
  }

  else
  {
    [(DAAccountLoader *)self clientAccountClassForACAccount:accountCopy];
  }
  v5 = ;

  return v5;
}

@end