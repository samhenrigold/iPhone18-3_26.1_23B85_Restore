@interface NETunnelProviderManager
+ (NETunnelProviderManager)forPerAppVPN;
+ (void)loadAllFromPreferencesWithCompletionHandler:(void *)completionHandler;
- (NETunnelProviderManager)initWithSessionType:(int)type tunnelType:(int64_t)tunnelType;
- (NETunnelProviderRoutingMethod)routingMethod;
- (NSArray)copyAppRules;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (void)additionalSetup;
- (void)loadAppRules;
- (void)loadFromPreferencesWithCompletionHandler:(id)handler;
@end

@implementation NETunnelProviderManager

- (NETunnelProviderRoutingMethod)routingMethod
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  configuration = [(NEVPNManager *)selfCopy configuration];
  appVPN = [configuration appVPN];
  if (appVPN)
  {
    v5 = NETunnelProviderRoutingMethodSourceApplication;
  }

  else
  {
    v5 = NETunnelProviderRoutingMethodDestinationIP;
  }

  objc_sync_exit(selfCopy);
  return v5;
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = objc_alloc(MEMORY[0x1E696AD60]);
  v14.receiver = self;
  v14.super_class = NETunnelProviderManager;
  v8 = [(NEVPNManager *)&v14 descriptionWithIndent:v5 options:options];
  v9 = [v7 initWithString:v8];

  configuration = [(NEVPNManager *)self configuration];
  appVPN = [configuration appVPN];
  appRules = [appVPN appRules];
  [v9 appendPrettyObject:appRules withName:@"appRules" andIndent:v5 options:options];

  return v9;
}

- (NSArray)copyAppRules
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  configuration = [(NEVPNManager *)selfCopy configuration];
  appVPN = [configuration appVPN];
  if (appVPN)
  {
    configuration2 = [(NEVPNManager *)selfCopy configuration];
    appVPN2 = [configuration2 appVPN];
    appRules = [appVPN2 appRules];

    if (!appRules)
    {
      appVPN = 0;
      goto LABEL_6;
    }

    v8 = objc_alloc(MEMORY[0x1E695DEC8]);
    configuration = [(NEVPNManager *)selfCopy configuration];
    appVPN3 = [configuration appVPN];
    appRules2 = [appVPN3 appRules];
    appVPN = [v8 initWithArray:appRules2 copyItems:1];
  }

LABEL_6:
  objc_sync_exit(selfCopy);

  return appVPN;
}

- (void)loadFromPreferencesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = +[NEVPNManager configurationManager];
    configuration = [(NEVPNManager *)self configuration];
    identifier = [configuration identifier];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__NETunnelProviderManager_loadFromPreferencesWithCompletionHandler___block_invoke;
    v8[3] = &unk_1E7F0B5D8;
    v8[4] = self;
    v9 = handlerCopy;
    [v5 loadConfigurationWithID:identifier withCompletionQueue:MEMORY[0x1E69E96A0] handler:v8];
  }
}

void __68__NETunnelProviderManager_loadFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  if (v6)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v28 = 138412290;
      v29 = v6;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "Failed to load the configuration: %@", &v28, 0xCu);
    }

    v9 = [NEVPNManager mapError:v6];

    (*(*(a1 + 40) + 16))();
    goto LABEL_16;
  }

  v10 = *(a1 + 32);
  if (!v5)
  {
    v20 = [v10 configuration];
    v21 = [v20 appVPN];

    v22 = [*(a1 + 32) configuration];
    if (v21)
    {
      [v22 appVPN];
    }

    else
    {
      [v22 VPN];
    }
    v23 = ;
    [v23 setEnabled:0];

    v24 = +[NEVPNManager loadedManagers];
    v25 = [*(a1 + 32) configuration];
    v26 = [v25 identifier];
    [v24 removeObjectForKey:v26];

    v27 = [*(a1 + 32) connection];
    [(NEVPNConnection *)v27 destroySession];

    goto LABEL_15;
  }

  [v10 setConfiguration:v5];
  [(NETunnelProviderManager *)*(a1 + 32) loadAppRules];
  v11 = *(a1 + 32);
  v12 = +[NEVPNManager loadedManagers];
  v13 = [*(a1 + 32) configuration];
  v14 = [v13 identifier];
  [v12 setObject:v11 forKeyedSubscript:v14];

  v15 = [*(a1 + 32) connection];
  if (v15)
  {
    v16 = v15[7];

    if (v16)
    {
LABEL_15:
      (*(*(a1 + 40) + 16))();
      v9 = 0;
      goto LABEL_16;
    }
  }

  v17 = [*(a1 + 32) connection];
  v18 = [*(a1 + 32) configuration];
  v19 = [v18 identifier];
  if (v17)
  {
    [(NEVPNConnection *)v17 createSessionWithConfigurationIdentifier:v19 forceInfoFetch:0 completionHandler:*(a1 + 40)];
  }

  v9 = 0;
LABEL_16:
  objc_sync_exit(v7);
}

- (void)loadAppRules
{
  v66 = *MEMORY[0x1E69E9840];
  if (self)
  {
    configuration = [self configuration];
    appVPN = [configuration appVPN];
    appRules = [appVPN appRules];
    v5 = [appRules count];

    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      [self setMailDomains:v6];

      v7 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      [self setCalendarDomains:v7];

      v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      [self setContactsDomains:v8];

      v9 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      [self setSafariDomains:v9];

      v10 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      [self setExcludedDomains:v10];

      v11 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      [self setAssociatedDomains:v11];

      v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
      selfCopy = self;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      configuration2 = [self configuration];
      appVPN2 = [configuration2 appVPN];
      appRules2 = [appVPN2 appRules];

      obj = appRules2;
      v15 = [appRules2 countByEnumeratingWithState:&v61 objects:v65 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v62;
        do
        {
          v18 = 0;
          do
          {
            if (*v62 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v61 + 1) + 8 * v18);
            matchSigningIdentifier = [v19 matchSigningIdentifier];
            if (objc_msgSend_isEqualToString_(matchSigningIdentifier))
            {
              goto LABEL_13;
            }

            matchSigningIdentifier2 = [v19 matchSigningIdentifier];
            if (objc_msgSend_isEqualToString_(matchSigningIdentifier2))
            {
              goto LABEL_12;
            }

            matchSigningIdentifier3 = [v19 matchSigningIdentifier];
            if (objc_msgSend_isEqualToString_(matchSigningIdentifier3))
            {

LABEL_12:
LABEL_13:

LABEL_14:
              matchSigningIdentifier4 = [v19 matchSigningIdentifier];
              if (objc_msgSend_isEqualToString_(matchSigningIdentifier4))
              {
                matchDomains = [v19 matchDomains];
                v25 = [matchDomains count];

                if (!v25)
                {
                  goto LABEL_40;
                }

                matchDomains2 = [v19 matchDomains];
                [selfCopy setMailDomains:matchDomains2];
                goto LABEL_17;
              }

LABEL_39:

              goto LABEL_40;
            }

            matchSigningIdentifier5 = [v19 matchSigningIdentifier];
            isEqualToString = objc_msgSend_isEqualToString_(matchSigningIdentifier5);

            if (isEqualToString)
            {
              goto LABEL_14;
            }

            matchSigningIdentifier6 = [v19 matchSigningIdentifier];
            if (objc_msgSend_isEqualToString_(matchSigningIdentifier6))
            {
              goto LABEL_22;
            }

            matchSigningIdentifier7 = [v19 matchSigningIdentifier];
            if (objc_msgSend_isEqualToString_(matchSigningIdentifier7))
            {

LABEL_22:
LABEL_23:
              matchSigningIdentifier4 = [v19 matchSigningIdentifier];
              if ((objc_msgSend_isEqualToString_(matchSigningIdentifier4) & 1) == 0)
              {
                goto LABEL_39;
              }

              matchDomains3 = [v19 matchDomains];
              v32 = [matchDomains3 count];

              if (v32)
              {
                matchDomains2 = [v19 matchDomains];
                [selfCopy setCalendarDomains:matchDomains2];
LABEL_17:

                goto LABEL_40;
              }

              goto LABEL_40;
            }

            matchSigningIdentifier8 = [v19 matchSigningIdentifier];
            v34 = objc_msgSend_isEqualToString_(matchSigningIdentifier8);

            if (v34)
            {
              goto LABEL_23;
            }

            matchSigningIdentifier9 = [v19 matchSigningIdentifier];
            if (objc_msgSend_isEqualToString_(matchSigningIdentifier9))
            {

LABEL_30:
              matchSigningIdentifier4 = [v19 matchSigningIdentifier];
              if ((objc_msgSend_isEqualToString_(matchSigningIdentifier4) & 1) == 0)
              {
                goto LABEL_39;
              }

              matchDomains4 = [v19 matchDomains];
              v39 = [matchDomains4 count];

              if (v39)
              {
                matchDomains2 = [v19 matchDomains];
                [selfCopy setContactsDomains:matchDomains2];
                goto LABEL_17;
              }

              goto LABEL_40;
            }

            matchSigningIdentifier10 = [v19 matchSigningIdentifier];
            v37 = objc_msgSend_isEqualToString_(matchSigningIdentifier10);

            if (v37)
            {
              goto LABEL_30;
            }

            matchSigningIdentifier11 = [v19 matchSigningIdentifier];
            if (objc_msgSend_isEqualToString_(matchSigningIdentifier11))
            {
            }

            else
            {
              matchSigningIdentifier12 = [v19 matchSigningIdentifier];
              v42 = objc_msgSend_isEqualToString_(matchSigningIdentifier12);

              if (!v42)
              {
                matchSigningIdentifier13 = [v19 matchSigningIdentifier];
                v46 = objc_msgSend_isEqualToString_(matchSigningIdentifier13);

                if (v46)
                {
                  matchDomains5 = [v19 matchDomains];
                  v48 = [matchDomains5 count];

                  if (v48)
                  {
                    matchDomains2 = [v19 matchDomains];
                    [selfCopy setAssociatedDomains:matchDomains2];
                    goto LABEL_17;
                  }
                }

                else
                {
                  [v58 addObject:v19];
                }

                goto LABEL_40;
              }
            }

            matchSigningIdentifier4 = [v19 matchSigningIdentifier];
            if ((objc_msgSend_isEqualToString_(matchSigningIdentifier4) & 1) == 0)
            {
              goto LABEL_39;
            }

            matchDomains6 = [v19 matchDomains];
            v44 = [matchDomains6 count];

            if (v44)
            {
              matchDomains2 = [v19 matchDomains];
              [selfCopy setSafariDomains:matchDomains2];
              goto LABEL_17;
            }

LABEL_40:
            ++v18;
          }

          while (v16 != v18);
          v49 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
          v16 = v49;
        }

        while (v49);
      }

      v50 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v58];
      [selfCopy setAppRules:v50];

      configuration3 = [selfCopy configuration];
      appVPN3 = [configuration3 appVPN];
      excludedDomains = [appVPN3 excludedDomains];
      v54 = [excludedDomains count];

      if (v54)
      {
        configuration4 = [selfCopy configuration];
        appVPN4 = [configuration4 appVPN];
        excludedDomains2 = [appVPN4 excludedDomains];
        [selfCopy setExcludedDomains:excludedDomains2];
      }
    }
  }
}

- (void)additionalSetup
{
  configuration = [(NEVPNManager *)self configuration];
  appVPN = [configuration appVPN];

  configuration2 = [(NEVPNManager *)self configuration];
  v6 = configuration2;
  if (appVPN)
  {
    appVPN2 = [configuration2 appVPN];
    protocol = [appVPN2 protocol];

    configuration3 = [(NEVPNManager *)self configuration];
    [configuration3 appVPN];
  }

  else
  {
    v9 = [configuration2 VPN];
    protocol = [v9 protocol];

    configuration3 = [(NEVPNManager *)self configuration];
    [configuration3 VPN];
  }
  v10 = ;
  tunnelType = [v10 tunnelType];

  if ((tunnelType - 1) <= 1)
  {
    providerBundleIdentifier = [protocol providerBundleIdentifier];
    objc_opt_self();
    [protocol setProviderBundleIdentifier:providerBundleIdentifier];
    configuration4 = [(NEVPNManager *)self configuration];
    if (configuration4)
    {
      configuration4[22] = 0;
    }
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [protocol setPluginType:bundleIdentifier];
}

- (NETunnelProviderManager)initWithSessionType:(int)type tunnelType:(int64_t)tunnelType
{
  v6 = [(NEVPNConnection *)[NETunnelProviderSession alloc] initWithType:type];
  v21.receiver = self;
  v21.super_class = NETunnelProviderManager;
  v7 = [(NEVPNManager *)&v21 initWithGrade:1 connection:v6 tunnelType:tunnelType];

  if (v7)
  {
    *&v7->super._hasLoaded = 1;
    v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    mailDomains = v7->_mailDomains;
    v7->_mailDomains = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    calendarDomains = v7->_calendarDomains;
    v7->_calendarDomains = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    contactsDomains = v7->_contactsDomains;
    v7->_contactsDomains = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    safariDomains = v7->_safariDomains;
    v7->_safariDomains = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    excludedDomains = v7->_excludedDomains;
    v7->_excludedDomains = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    associatedDomains = v7->_associatedDomains;
    v7->_associatedDomains = v18;
  }

  return v7;
}

+ (void)loadAllFromPreferencesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  if (v4)
  {
    v5 = +[NEVPNManager loadedManagers];
    v6 = +[NEVPNManager configurationManager];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __71__NETunnelProviderManager_loadAllFromPreferencesWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E7F0B1E8;
    selfCopy = self;
    v8 = v4;
    [v6 loadConfigurationsWithCompletionQueue:MEMORY[0x1E69E96A0] handler:v7];
  }
}

void __71__NETunnelProviderManager_loadAllFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v32 = a2;
  v5 = a3;
  v30 = a1;
  obj = *(a1 + 40);
  objc_sync_enter(obj);
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__23935;
  v50 = __Block_byref_object_dispose__23936;
  v6 = v5;
  v51 = v6;
  v29 = v6;
  if (v6)
  {
    v7 = [NEVPNManager mapError:v6];
    v8 = v47[5];
    v47[5] = v7;

    v9 = v47[5];
  }

  else
  {
    v9 = 0;
  }

  if (!v32 || v9 || ![v32 count])
  {
    (*(*(a1 + 32) + 16))();
    goto LABEL_35;
  }

  group = dispatch_group_create();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v10 = v32;
  v11 = [v10 countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (!v11)
  {
    goto LABEL_33;
  }

  v12 = *v43;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v43 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v42 + 1) + 8 * i);
      v15 = [v14 VPN];
      if (v15)
      {
        [v14 VPN];
      }

      else
      {
        [v14 appVPN];
      }
      v16 = ;

      if (v16)
      {
        v17 = [v16 protocol];
        if ([(NETunnelProviderManager *)v17 type]== 4)
        {
          v18 = [v16 tunnelType] == 1;

          if (!v18)
          {
            goto LABEL_31;
          }

          v19 = [v14 pluginType];
          if (v19)
          {
            if ([NETunnelProviderProtocol isLegacyPluginType:v19])
            {
              v17 = v19;
            }

            else
            {
              v20 = [v14 VPN];
              v21 = v20 == 0;

              if (v21)
              {
                v22 = [NETunnelProviderManager alloc];
                v23 = [v16 tunnelType];
                v24 = 2;
              }

              else
              {
                v22 = [NETunnelProviderManager alloc];
                v23 = [v16 tunnelType];
                v24 = 1;
              }

              v17 = [(NETunnelProviderManager *)v22 initWithSessionType:v24 tunnelType:v23];
              [(NEVPNManager *)v17 setConfiguration:v14];
              [(NETunnelProviderManager *)v17 loadAppRules];
              [v33 addObject:v17];
              v25 = +[NEVPNManager loadedManagers];
              v26 = [v14 identifier];
              [v25 setObject:v17 forKeyedSubscript:v26];

              if (v17)
              {
                v17->super._hasLoaded = 1;
              }

              dispatch_group_enter(group);
              v27 = [(NEVPNManager *)v17 connection];
              v28 = [v14 identifier];
              v39[0] = MEMORY[0x1E69E9820];
              v39[1] = 3221225472;
              v39[2] = __71__NETunnelProviderManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_46;
              v39[3] = &unk_1E7F0B198;
              v39[4] = v14;
              v41 = &v46;
              v40 = group;
              if (v27)
              {
                [(NEVPNConnection *)v27 createSessionWithConfigurationIdentifier:v28 forceInfoFetch:0 completionHandler:v39];
              }
            }
          }

          else
          {
            v17 = 0;
          }
        }
      }

LABEL_31:
    }

    v11 = [v10 countByEnumeratingWithState:&v42 objects:v52 count:16];
  }

  while (v11);
LABEL_33:

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__NETunnelProviderManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_48;
  block[3] = &unk_1E7F0B1C0;
  v38 = &v46;
  v36 = v33;
  v37 = *(v30 + 32);
  dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);

LABEL_35:
  _Block_object_dispose(&v46, 8);

  objc_sync_exit(obj);
}

void __71__NETunnelProviderManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_46(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) identifier];
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "Error creating connection for configuration %@: %@", &v7, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __71__NETunnelProviderManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_48(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [*(a1 + 32) removeAllObjects];
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

+ (NETunnelProviderManager)forPerAppVPN
{
  v2 = [[NETunnelProviderManager alloc] initWithSessionType:2 tunnelType:1];

  return v2;
}

@end