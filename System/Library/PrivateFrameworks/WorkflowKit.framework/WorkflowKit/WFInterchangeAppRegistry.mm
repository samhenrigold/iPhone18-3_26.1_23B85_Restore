@interface WFInterchangeAppRegistry
+ (id)bundleIdentifierForLegacyAppIdentifier:(id)identifier;
+ (id)legacyAppIdentifierForBundleIdentifier:(id)identifier;
+ (id)sharedRegistry;
- (NSArray)allActions;
- (NSArray)apps;
- (NSDictionary)actions;
- (NSDictionary)appsDictionary;
- (WFInterchangeApp)currentApp;
- (WFInterchangeAppRegistry)initWithBackgroundRefresh:(BOOL)refresh;
- (id)_appsWithIdentifiers:(id)identifiers;
- (id)actionsWithIdentifiers:(id)identifiers;
- (id)appWithBundleIdentifier:(id)identifier;
- (id)appWithIdentifier:(id)identifier;
- (id)appWithURLScheme:(id)scheme;
- (id)appsWithIdentifiers:(id)identifiers;
- (id)description;
- (void)addInstallStatusObserver:(id)observer forAppIdentifiers:(id)identifiers;
- (void)dealloc;
- (void)fillRegistry;
- (void)refreshInstalledApps;
- (void)removeInstallStatusObserver:(id)observer forAppIdentifiers:(id)identifiers;
- (void)updateRegistry;
@end

@implementation WFInterchangeAppRegistry

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFInterchangeAppRegistry;
  v4 = [(WFInterchangeAppRegistry *)&v8 description];
  apps = [(WFInterchangeAppRegistry *)self apps];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, apps];

  return v6;
}

- (void)refreshInstalledApps
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WFInterchangeAppRegistry_refreshInstalledApps__block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_async(v3, block);
}

void __48__WFInterchangeAppRegistry_refreshInstalledApps__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registryLock];
  [v2 lock];

  v3 = [*(a1 + 32) appsDictionary];
  v4 = [v3 mutableCopy];

  v5 = [*(a1 + 32) registryLock];
  [v5 unlock];

  v6 = [*(a1 + 32) observersLock];
  [v6 lock];

  v7 = objc_alloc(MEMORY[0x1E695DF20]);
  v8 = [*(a1 + 32) observersByIdentifier];
  v9 = [v7 initWithDictionary:v8 copyItems:1];

  v10 = [*(a1 + 32) observersLock];
  [v10 unlock];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WFInterchangeAppRegistry_refreshInstalledApps__block_invoke_2;
  block[3] = &unk_1E837C1E8;
  v14 = v9;
  v15 = v4;
  v16 = *(a1 + 32);
  v11 = v4;
  v12 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __48__WFInterchangeAppRegistry_refreshInstalledApps__block_invoke_2(uint64_t a1)
{
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __48__WFInterchangeAppRegistry_refreshInstalledApps__block_invoke_3;
  v10 = &unk_1E8375FB8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v11 = v3;
  v12 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:&v7];
  v5 = [*(a1 + 40) allValues];
  [v5 makeObjectsPerformSelector:sel_resetInstalledStatus];
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"WFInterchangeAppRegistryInstalledAppsDidChangeNotification" object:*(a1 + 48)];
}

void __48__WFInterchangeAppRegistry_refreshInstalledApps__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKey:v5];
  [*(a1 + 32) removeObjectForKey:v5];
  v8 = [v7 isInstalled];
  [v7 updateInstalledStatus];
  if (v8 != [v7 isInstalled])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * v13++) appRegistry:*(a1 + 40) installStatusChangedForApp:{v7, v14}];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)removeInstallStatusObserver:(id)observer forAppIdentifiers:(id)identifiers
{
  v23 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  identifiersCopy = identifiers;
  observersLock = [(WFInterchangeAppRegistry *)self observersLock];
  [observersLock lock];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = identifiersCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        observersByIdentifier = [(WFInterchangeAppRegistry *)self observersByIdentifier];
        v16 = [observersByIdentifier objectForKey:v14];
        if ([v16 count] == 1 && objc_msgSend(v16, "containsObject:", observerCopy))
        {
          [observersByIdentifier removeObjectForKey:v14];
        }

        else
        {
          [v16 removeObject:observerCopy];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  observersLock2 = [(WFInterchangeAppRegistry *)self observersLock];
  [observersLock2 unlock];
}

- (void)addInstallStatusObserver:(id)observer forAppIdentifiers:(id)identifiers
{
  v33 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  identifiersCopy = identifiers;
  v8 = [(WFInterchangeAppRegistry *)self appsWithIdentifiers:identifiersCopy];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v27 + 1) + 8 * v12++) isInstalled];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  observersLock = [(WFInterchangeAppRegistry *)self observersLock];
  [observersLock lock];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = identifiersCopy;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * v18);
        observersByIdentifier = [(WFInterchangeAppRegistry *)self observersByIdentifier];
        weakObjectsHashTable = [observersByIdentifier objectForKey:v19];
        if (!weakObjectsHashTable)
        {
          weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
          [observersByIdentifier setObject:weakObjectsHashTable forKey:v19];
        }

        [weakObjectsHashTable addObject:observerCopy];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  observersLock2 = [(WFInterchangeAppRegistry *)self observersLock];
  [observersLock2 unlock];
}

- (void)fillRegistry
{
  registryLock = [(WFInterchangeAppRegistry *)self registryLock];
  tryLock = [registryLock tryLock];

  if (tryLock)
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:@"WFInterchangeAppRegistry Locking Exception" reason:@"The registry must be locked while it is being filled." userInfo:0];
    objc_exception_throw(v15);
  }

  self->_isFilled = 1;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = +[WFInterchangeAppDefinitionRegistry registeredDefinitions];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __40__WFInterchangeAppRegistry_fillRegistry__block_invoke;
  v16[3] = &unk_1E8375F90;
  v8 = v5;
  v17 = v8;
  v9 = v6;
  v18 = v9;
  [v7 enumerateKeysAndObjectsUsingBlock:v16];
  actions = self->_actions;
  self->_actions = v9;
  v11 = v9;

  appsDictionary = self->_appsDictionary;
  self->_appsDictionary = v8;
  v13 = v8;

  currentApp = self->_currentApp;
  self->_currentApp = 0;
}

void __40__WFInterchangeAppRegistry_fillRegistry__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v34 = (*(a3 + 16))(a3);
  v6 = [[WFInterchangeApp alloc] initWithIdentifier:v5 definition:v34];
  v35 = v5;
  [*(a1 + 32) setObject:v6 forKey:v5];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v33 = v6;
  obj = [(WFInterchangeApp *)v6 schemes];
  v7 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v7)
  {
    v8 = v7;
    v37 = *v47;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v47 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v46 + 1) + 8 * i);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v11 = [v10 actions];
        v12 = [v11 countByEnumeratingWithState:&v42 objects:v51 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v43;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v43 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v42 + 1) + 8 * j);
              v17 = *(a1 + 40);
              v18 = [v16 identifier];
              v19 = [v17 objectForKey:v18];

              if (!v19)
              {
                v20 = *(a1 + 40);
                v21 = [v16 identifier];
                [v20 setObject:v16 forKey:v21];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v42 objects:v51 count:16];
          }

          while (v13);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v8);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v22 = [(WFInterchangeApp *)v33 documentActions];
  v23 = [v22 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v39;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v38 + 1) + 8 * k);
        v28 = *(a1 + 40);
        v29 = [v27 identifier];
        v30 = [v28 objectForKey:v29];

        if (!v30)
        {
          v31 = *(a1 + 40);
          v32 = [v27 identifier];
          [v31 setObject:v27 forKey:v32];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v24);
  }
}

- (void)updateRegistry
{
  registryLock = [(WFInterchangeAppRegistry *)self registryLock];
  [registryLock lock];

  if (self->_isFilled)
  {
    [(WFInterchangeAppRegistry *)self fillRegistry];
    registryLock2 = [(WFInterchangeAppRegistry *)self registryLock];
    [registryLock2 unlock];
  }

  else
  {
    appsDictionary = [(WFInterchangeAppRegistry *)self appsDictionary];
    registryLock2 = [appsDictionary allKeys];

    appsDictionary = self->_appsDictionary;
    self->_appsDictionary = 0;

    if ([registryLock2 count])
    {
      v6 = [(WFInterchangeAppRegistry *)self _appsWithIdentifiers:registryLock2];
    }

    registryLock3 = [(WFInterchangeAppRegistry *)self registryLock];
    [registryLock3 unlock];
  }
}

- (id)actionsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  registryLock = [(WFInterchangeAppRegistry *)self registryLock];
  [registryLock lock];

  actions = [(WFInterchangeAppRegistry *)self actions];
  if (actions)
  {
    registryLock2 = [(WFInterchangeAppRegistry *)self registryLock];
    [registryLock2 unlock];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__WFInterchangeAppRegistry_actionsWithIdentifiers___block_invoke;
    v17[3] = &unk_1E8375F68;
    v18 = actions;
    v8 = [identifiersCopy if_map:v17];
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __51__WFInterchangeAppRegistry_actionsWithIdentifiers___block_invoke_2;
    v16[3] = &unk_1E837EB80;
    v16[4] = self;
    v9 = [identifiersCopy if_map:v16];
    v10 = [(WFInterchangeAppRegistry *)self _appsWithIdentifiers:v9];
    registryLock3 = [(WFInterchangeAppRegistry *)self registryLock];
    [registryLock3 unlock];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__WFInterchangeAppRegistry_actionsWithIdentifiers___block_invoke_3;
    v14[3] = &unk_1E8375F68;
    v15 = v10;
    v12 = v10;
    v8 = [identifiersCopy if_map:v14];
  }

  return v8;
}

id __51__WFInterchangeAppRegistry_actionsWithIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 stringByDeletingPathExtension];
  v3 = [objc_opt_class() legacyAppIdentifierForBundleIdentifier:v2];

  return v3;
}

id __51__WFInterchangeAppRegistry_actionsWithIdentifiers___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndex:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v8 = [v6 schemes];
    v28 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v28)
    {
      v9 = *v38;
      v26 = *v38;
      v27 = v6;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v38 != v9)
          {
            objc_enumerationMutation(v8);
          }

          v11 = *(*(&v37 + 1) + 8 * i);
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v12 = [v11 actions];
          v13 = [v12 countByEnumeratingWithState:&v33 objects:v42 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v34;
            while (2)
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v34 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v33 + 1) + 8 * j);
                v18 = [v17 identifier];
                isEqualToString = objc_msgSend_isEqualToString_(v18);

                if (isEqualToString)
                {
                  v7 = v17;

                  v6 = v27;
                  goto LABEL_29;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v33 objects:v42 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          v9 = v26;
        }

        v6 = v27;
        v28 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v28);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = [v6 documentActions];
    v7 = [v8 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v7)
    {
      v20 = *v30;
      while (2)
      {
        for (k = 0; k != v7; k = k + 1)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v8);
          }

          v22 = *(*(&v29 + 1) + 8 * k);
          v23 = [v22 identifier];
          v24 = objc_msgSend_isEqualToString_(v23);

          if (v24)
          {
            v7 = v22;
            goto LABEL_29;
          }
        }

        v7 = [v8 countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_29:
  }

  return v7;
}

- (NSArray)allActions
{
  registryLock = [(WFInterchangeAppRegistry *)self registryLock];
  [registryLock lock];

  if (!self->_isFilled)
  {
    [(WFInterchangeAppRegistry *)self fillRegistry];
  }

  actions = [(WFInterchangeAppRegistry *)self actions];
  allValues = [actions allValues];

  registryLock2 = [(WFInterchangeAppRegistry *)self registryLock];
  [registryLock2 unlock];

  return allValues;
}

- (NSDictionary)actions
{
  registryLock = [(WFInterchangeAppRegistry *)self registryLock];
  tryLock = [registryLock tryLock];

  if (tryLock)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:@"WFInterchangeAppRegistry Locking Exception" reason:@"The registry must be locked while the actions dictionary is being accessed." userInfo:0];
    objc_exception_throw(v7);
  }

  actions = self->_actions;

  return actions;
}

- (id)appWithURLScheme:(id)scheme
{
  schemeCopy = scheme;
  apps = [(WFInterchangeAppRegistry *)self apps];
  v6 = MEMORY[0x1E696AE18];
  lowercaseString = [schemeCopy lowercaseString];

  v8 = [v6 predicateWithFormat:@"%@ IN schemes.scheme", lowercaseString];
  v9 = [apps filteredArrayUsingPredicate:v8];
  firstObject = [v9 firstObject];

  return firstObject;
}

- (id)appWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  apps = [(WFInterchangeAppRegistry *)self apps];
  identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN allBundleIdentifiers", identifierCopy];

  v7 = [apps filteredArrayUsingPredicate:identifierCopy];
  firstObject = [v7 firstObject];

  return firstObject;
}

- (id)appWithIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = MEMORY[0x1E695DEC8];
  identifierCopy2 = identifier;
  v6 = [v4 arrayWithObjects:&identifierCopy count:1];
  v7 = [(WFInterchangeAppRegistry *)self appsWithIdentifiers:v6, identifierCopy, v12];
  firstObject = [v7 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = firstObject;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)appsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  registryLock = [(WFInterchangeAppRegistry *)self registryLock];
  [registryLock lock];

  v6 = [(WFInterchangeAppRegistry *)self _appsWithIdentifiers:identifiersCopy];

  registryLock2 = [(WFInterchangeAppRegistry *)self registryLock];
  [registryLock2 unlock];

  return v6;
}

- (id)_appsWithIdentifiers:(id)identifiers
{
  v70 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  selfCopy = self;
  appsDictionary = [(WFInterchangeAppRegistry *)self appsDictionary];
  v6 = objc_opt_new();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v7 = identifiersCopy;
  v8 = [v7 countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v60;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v60 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v59 + 1) + 8 * i);
        v13 = [(NSDictionary *)appsDictionary objectForKey:v12];

        if (!v13)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v59 objects:v69 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v14 = getWFInterchangeLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v66 = "[WFInterchangeAppRegistry _appsWithIdentifiers:]";
      v67 = 2112;
      v68 = v6;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEFAULT, "%s Loading apps: %@", buf, 0x16u);
    }

    v15 = [(NSDictionary *)appsDictionary mutableCopy];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = objc_opt_new();
    }

    v18 = v17;
    v45 = appsDictionary;
    v46 = v7;

    v47 = v6;
    if (selfCopy->_isFilled)
    {
      v19 = 0;
    }

    else
    {
      v20 = v18;
      v21 = +[WFInterchangeAppDefinitionRegistry registeredDefinitions];
      v19 = objc_opt_new();
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v22 = v6;
      v23 = [v22 countByEnumeratingWithState:&v55 objects:v64 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v56;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v56 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v55 + 1) + 8 * j);
            v28 = [v21 objectForKey:v27];
            v29 = v28;
            if (v28)
            {
              v30 = (*(v28 + 16))(v28);
              [v19 setObject:v30 forKey:v27];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v55 objects:v64 count:16];
        }

        while (v24);
      }

      v6 = v47;
      v18 = v20;
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v31 = v6;
    v32 = [v31 countByEnumeratingWithState:&v51 objects:v63 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v52;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v52 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v51 + 1) + 8 * k);
          v37 = [v19 objectForKey:{v36, v45}];
          if (!v37)
          {
            v38 = v18;
            v39 = getWFInterchangeLogObject();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v66 = "[WFInterchangeAppRegistry _appsWithIdentifiers:]";
              v67 = 2114;
              v68 = v36;
              _os_log_impl(&dword_1CA256000, v39, OS_LOG_TYPE_ERROR, "%s Failed to load a definition for %{public}@", buf, 0x16u);
            }

            v18 = v38;
          }

          v40 = [[WFInterchangeApp alloc] initWithIdentifier:v36 definition:v37];
          [v18 setObject:v40 forKey:v36];
        }

        v33 = [v31 countByEnumeratingWithState:&v51 objects:v63 count:16];
      }

      while (v33);
    }

    appsDictionary = v18;
    appsDictionary = selfCopy->_appsDictionary;
    selfCopy->_appsDictionary = appsDictionary;

    v7 = v46;
    v6 = v47;
  }

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __49__WFInterchangeAppRegistry__appsWithIdentifiers___block_invoke;
  v49[3] = &unk_1E8375F40;
  v50 = appsDictionary;
  v42 = appsDictionary;
  v43 = [v7 if_map:v49];

  return v43;
}

- (WFInterchangeApp)currentApp
{
  currentApp = self->_currentApp;
  if (!currentApp)
  {
    mEMORY[0x1E6996CA8] = [MEMORY[0x1E6996CA8] sharedContext];
    applicationBundle = [mEMORY[0x1E6996CA8] applicationBundle];
    bundleIdentifier = [applicationBundle bundleIdentifier];
    v7 = bundleIdentifier;
    v8 = *MEMORY[0x1E69E0FB0];
    if (bundleIdentifier)
    {
      v8 = bundleIdentifier;
    }

    v9 = v8;

    v10 = [(WFInterchangeAppRegistry *)self appWithIdentifier:v9];

    v11 = self->_currentApp;
    self->_currentApp = v10;

    currentApp = self->_currentApp;
  }

  return currentApp;
}

- (NSArray)apps
{
  registryLock = [(WFInterchangeAppRegistry *)self registryLock];
  [registryLock lock];

  if (!self->_isFilled)
  {
    [(WFInterchangeAppRegistry *)self fillRegistry];
  }

  appsDictionary = [(WFInterchangeAppRegistry *)self appsDictionary];
  allValues = [appsDictionary allValues];

  registryLock2 = [(WFInterchangeAppRegistry *)self registryLock];
  [registryLock2 unlock];

  return allValues;
}

- (NSDictionary)appsDictionary
{
  registryLock = [(WFInterchangeAppRegistry *)self registryLock];
  tryLock = [registryLock tryLock];

  if (tryLock)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:@"WFInterchangeAppRegistry Locking Exception" reason:@"The registry must be locked while the apps dictionary is being accessed." userInfo:0];
    objc_exception_throw(v7);
  }

  appsDictionary = self->_appsDictionary;

  return appsDictionary;
}

- (void)dealloc
{
  notify_cancel([(WFInterchangeAppRegistry *)self urlTypesToken]);
  v3.receiver = self;
  v3.super_class = WFInterchangeAppRegistry;
  [(WFInterchangeAppRegistry *)&v3 dealloc];
}

- (WFInterchangeAppRegistry)initWithBackgroundRefresh:(BOOL)refresh
{
  v22.receiver = self;
  v22.super_class = WFInterchangeAppRegistry;
  v4 = [(WFInterchangeAppRegistry *)&v22 init];
  v5 = v4;
  if (v4)
  {
    v4->_refreshesInBackground = refresh;
    v6 = objc_opt_new();
    observersByIdentifier = v5->_observersByIdentifier;
    v5->_observersByIdentifier = v6;

    v8 = objc_opt_new();
    registryLock = v5->_registryLock;
    v5->_registryLock = v8;

    v10 = objc_opt_new();
    observersLock = v5->_observersLock;
    v5->_observersLock = v10;

    objc_initWeak(&location, v5);
    v5->_urlTypesToken = -1;
    uTF8String = [*MEMORY[0x1E6963548] UTF8String];
    v13 = MEMORY[0x1E69E96A0];
    v14 = MEMORY[0x1E69E96A0];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __54__WFInterchangeAppRegistry_initWithBackgroundRefresh___block_invoke;
    handler[3] = &unk_1E837E2E8;
    v15 = v5;
    v19 = v15;
    objc_copyWeak(&v20, &location);
    notify_register_dispatch(uTF8String, &v5->_urlTypesToken, v13, handler);

    v16 = v15;
    objc_destroyWeak(&v20);

    objc_destroyWeak(&location);
  }

  return v5;
}

void __54__WFInterchangeAppRegistry_initWithBackgroundRefresh___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6996CA8] sharedContext];
  if ([v2 applicationState])
  {
    v3 = [*(a1 + 32) refreshesInBackground];

    if ((v3 & 1) == 0)
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x3032000000;
      v15 = __Block_byref_object_copy__16341;
      v16 = __Block_byref_object_dispose__16342;
      v17 = 0;
      v4 = [MEMORY[0x1E696AD88] defaultCenter];
      v5 = getUIApplicationDidBecomeActiveNotification();
      v6 = [MEMORY[0x1E696ADC8] mainQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __54__WFInterchangeAppRegistry_initWithBackgroundRefresh___block_invoke_177;
      v10[3] = &unk_1E8375F18;
      objc_copyWeak(&v11, (a1 + 40));
      v10[4] = &v12;
      v7 = [v4 addObserverForName:v5 object:0 queue:v6 usingBlock:v10];
      v8 = v13[5];
      v13[5] = v7;

      objc_destroyWeak(&v11);
      _Block_object_dispose(&v12, 8);

      return;
    }
  }

  else
  {
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained refreshInstalledApps];
}

void __54__WFInterchangeAppRegistry_initWithBackgroundRefresh___block_invoke_177(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained refreshInstalledApps];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 removeObserver:*(*(*(a1 + 32) + 8) + 40)];
}

+ (id)bundleIdentifierForLegacyAppIdentifier:(id)identifier
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = [&unk_1F4A99D48 objectForKeyedSubscript:identifierCopy];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 arrayByAddingObject:identifierCopy];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = objc_alloc(MEMORY[0x1E69635F8]);
          v14 = [v13 initWithBundleIdentifier:v12 allowPlaceholder:0 error:{0, v20}];
          v15 = v14;
          if (v14)
          {
            applicationState = [v14 applicationState];
            isInstalled = [applicationState isInstalled];

            if (isInstalled)
            {
              firstObject = v12;

              goto LABEL_14;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    firstObject = [v7 firstObject];
LABEL_14:
  }

  else
  {
    firstObject = identifierCopy;
  }

  return firstObject;
}

+ (id)legacyAppIdentifierForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [&unk_1F4A99D20 objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = identifierCopy;
  }

  v7 = v6;

  return v6;
}

+ (id)sharedRegistry
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__WFInterchangeAppRegistry_sharedRegistry__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedRegistry_onceToken_16530 != -1)
  {
    dispatch_once(&sharedRegistry_onceToken_16530, block);
  }

  v2 = sharedRegistry_sharedRegistry_16531;

  return v2;
}

void __42__WFInterchangeAppRegistry_sharedRegistry__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedRegistry_sharedRegistry_16531;
  sharedRegistry_sharedRegistry_16531 = v1;
}

@end