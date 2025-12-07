@interface NEAppProxyProviderManager
+ (void)loadAllFromPreferencesWithCompletionHandler:(void *)completionHandler;
- (NEAppProxyProviderManager)init;
@end

@implementation NEAppProxyProviderManager

- (NEAppProxyProviderManager)init
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "MDM must be used to create NEAppProxyProvider configurations", v5, 2u);
  }

  return 0;
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
    v7[2] = __73__NEAppProxyProviderManager_loadAllFromPreferencesWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E7F0B1E8;
    selfCopy = self;
    v8 = v4;
    [v6 loadConfigurationsWithCompletionQueue:MEMORY[0x1E69E96A0] handler:v7];
  }
}

void __73__NEAppProxyProviderManager_loadAllFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v29 = a2;
  v5 = a3;
  v27 = a1;
  obj = *(a1 + 40);
  objc_sync_enter(obj);
  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__170;
  v47 = __Block_byref_object_dispose__171;
  v6 = v5;
  v48 = v6;
  v26 = v6;
  if (v6)
  {
    v7 = [NEVPNManager mapError:v6];
    v8 = v44[5];
    v44[5] = v7;

    v9 = v44[5];
  }

  else
  {
    v9 = 0;
  }

  if (!v29 || v9 || ![v29 count])
  {
    (*(*(a1 + 32) + 16))();
    goto LABEL_29;
  }

  group = dispatch_group_create();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = v29;
  v11 = [v10 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (!v11)
  {
    goto LABEL_27;
  }

  v12 = *v40;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v40 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v39 + 1) + 8 * i);
      v15 = [v14 appVPN];
      if (v15)
      {
        v16 = [v14 appVPN];
        v17 = [(NEVPNManager *)v16 protocol];
        if ([v17 type] == 4)
        {
          v18 = [v14 appVPN];
          v19 = [v18 tunnelType] == 2;

          if (!v19)
          {
            continue;
          }

          v15 = [v14 pluginType];
          if (isa_nsstring(v15) && ![NETunnelProviderProtocol isLegacyPluginType:v15])
          {
            v20 = [NEAppProxyProviderManager alloc];
            v21 = [v14 appVPN];
            v16 = -[NETunnelProviderManager initWithSessionType:tunnelType:](v20, "initWithSessionType:tunnelType:", 2, [v21 tunnelType]);

            [(NEVPNManager *)v16 setConfiguration:v14];
            [v30 addObject:v16];
            v22 = +[NEVPNManager loadedManagers];
            v23 = [v14 identifier];
            [v22 setObject:v16 forKeyedSubscript:v23];

            if (v16)
            {
              v16->super.super._hasLoaded = 1;
            }

            dispatch_group_enter(group);
            v24 = [(NEVPNManager *)v16 connection];
            v25 = [v14 identifier];
            v36[0] = MEMORY[0x1E69E9820];
            v36[1] = 3221225472;
            v36[2] = __73__NEAppProxyProviderManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_4;
            v36[3] = &unk_1E7F0B198;
            v36[4] = v14;
            v38 = &v43;
            v37 = group;
            if (v24)
            {
              [(NEVPNConnection *)v24 createSessionWithConfigurationIdentifier:v25 forceInfoFetch:0 completionHandler:v36];
            }

LABEL_23:
          }

          continue;
        }

        goto LABEL_23;
      }
    }

    v11 = [v10 countByEnumeratingWithState:&v39 objects:v49 count:16];
  }

  while (v11);
LABEL_27:

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__NEAppProxyProviderManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_5;
  block[3] = &unk_1E7F0B1C0;
  v35 = &v43;
  v33 = v30;
  v34 = *(v27 + 32);
  dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);

LABEL_29:
  _Block_object_dispose(&v43, 8);

  objc_sync_exit(obj);
}

void __73__NEAppProxyProviderManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
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

uint64_t __73__NEAppProxyProviderManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [*(a1 + 32) removeAllObjects];
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

@end