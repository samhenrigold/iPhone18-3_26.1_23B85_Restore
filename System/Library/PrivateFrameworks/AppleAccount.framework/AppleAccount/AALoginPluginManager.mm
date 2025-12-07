@interface AALoginPluginManager
+ (id)sharedInstance;
- (AALoginPluginManager)init;
- (BOOL)_notifyServicesOfLoginResponse:(id)response forAppleID:(id)d password:(id)password rawPassword:(id)rawPassword;
- (BOOL)shouldStashLoginResponse;
- (id)_createLoginContextForAppleID:(id)d rawPassword:(id)password loginResponse:(id)response;
- (id)_idsPlugin;
- (id)_loadPluginsLimitedToBundleIDs:(id)ds;
- (id)_plugins;
- (id)collectParametersForIdentityEstablishmentRequest;
- (id)collectParametersForLoginRequest;
- (void)notifyServicesOfLoginResponse:(id)response forAppleID:(id)d password:(id)password rawPassword:(id)rawPassword completion:(id)completion;
- (void)restrictToPluginBundleIDs:(id)ds;
- (void)setShouldStashLoginResponse:(BOOL)response;
- (void)unstashLoginResponse;
@end

@implementation AALoginPluginManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AALoginPluginManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __38__AALoginPluginManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(AALoginPluginManager);

  return MEMORY[0x1EEE66BB8]();
}

- (AALoginPluginManager)init
{
  v6.receiver = self;
  v6.super_class = AALoginPluginManager;
  v2 = [(AALoginPluginManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.AppleIDLoginPlugins", MEMORY[0x1E69E96A8]);
    pluginNotificationQueue = v2->_pluginNotificationQueue;
    v2->_pluginNotificationQueue = v3;
  }

  return v2;
}

- (void)restrictToPluginBundleIDs:(id)ds
{
  self->_allowedPluginBundleIDs = [ds copy];

  MEMORY[0x1EEE66BB8]();
}

- (id)_plugins
{
  plugins = self->_plugins;
  if (!plugins)
  {
    v4 = [(AALoginPluginManager *)self _loadPluginsLimitedToBundleIDs:self->_allowedPluginBundleIDs];
    v5 = self->_plugins;
    self->_plugins = v4;

    plugins = self->_plugins;
  }

  return plugins;
}

- (id)_idsPlugin
{
  v17 = *MEMORY[0x1E69E9840];
  idsPlugin = self->_idsPlugin;
  if (!idsPlugin)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [defaultManager URLsForDirectory:5 inDomains:8];
    firstObject = [v5 firstObject];

    v7 = [firstObject URLByAppendingPathComponent:@"SetupAssistantBundles/SBSyncServiceSetupAssistantBundle.bundle"];
    v8 = [MEMORY[0x1E696AAE8] bundleWithURL:v7];
    v9 = objc_alloc_init([v8 principalClass]);
    v10 = self->_idsPlugin;
    self->_idsPlugin = v9;

    v12 = _AALogSystem(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_idsPlugin;
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: hacked IDS plugin loaded %@", &v15, 0xCu);
    }

    idsPlugin = self->_idsPlugin;
  }

  return idsPlugin;
}

- (id)collectParametersForLoginRequest
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  _plugins = [(AALoginPluginManager *)self _plugins];
  v5 = [_plugins countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v30;
    *&v6 = 138412546;
    v28 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(_plugins);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        parametersForLoginRequest = [v10 parametersForLoginRequest];
        serviceIdentifier = [v10 serviceIdentifier];
        v13 = serviceIdentifier;
        if (serviceIdentifier)
        {
          v14 = parametersForLoginRequest == 0;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          v15 = _AALogSystem(serviceIdentifier);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v28;
            v34 = v13;
            v35 = 2112;
            v36 = parametersForLoginRequest;
            v16 = v15;
            v17 = "AALoginPluginManager: collectParametersForLoginRequest is skipping plugin with ID %@ and params %@";
            v18 = 22;
            goto LABEL_13;
          }

LABEL_14:

          goto LABEL_20;
        }

        if (self->_shouldSkipiTunesPlugin)
        {
          v19 = [serviceIdentifier isEqualToString:@"com.apple.itunes"];
          if (v19)
          {
            v15 = _AALogSystem(v19);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v16 = v15;
              v17 = "AALoginPluginManager is skipping iTunes plugin.";
              v18 = 2;
LABEL_13:
              _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, v18);
            }

            goto LABEL_14;
          }
        }

        [v3 setObject:parametersForLoginRequest forKey:v13];
LABEL_20:
      }

      v7 = [_plugins countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v7);
  }

  _idsPlugin = [(AALoginPluginManager *)self _idsPlugin];
  delegateServiceIdentifier = [_idsPlugin delegateServiceIdentifier];

  _idsPlugin2 = [(AALoginPluginManager *)self _idsPlugin];
  accountSetupRequestParameters = [_idsPlugin2 accountSetupRequestParameters];

  if (delegateServiceIdentifier && accountSetupRequestParameters)
  {
    [v3 setObject:accountSetupRequestParameters forKey:delegateServiceIdentifier];
  }

  else
  {
    v25 = _AALogSystem(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      _idsPlugin3 = [(AALoginPluginManager *)self _idsPlugin];
      *buf = 138412546;
      v34 = _idsPlugin3;
      v35 = 2112;
      v36 = accountSetupRequestParameters;
      _os_log_impl(&dword_1B6F6A000, v25, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: collectParametersForLoginRequest is skipping IDS plugin %@ with params %@", buf, 0x16u);
    }
  }

  return v3;
}

- (id)collectParametersForIdentityEstablishmentRequest
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  _plugins = [(AALoginPluginManager *)self _plugins];
  v5 = [_plugins countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 138412290;
    v18 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(_plugins);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        parametersForIdentityEstablishmentRequest = [v10 parametersForIdentityEstablishmentRequest];
        serviceIdentifier = [v10 serviceIdentifier];
        v13 = _AALogSystem(serviceIdentifier);
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (serviceIdentifier)
        {
          v15 = parametersForIdentityEstablishmentRequest == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          if (v14)
          {
            *buf = 138412546;
            v26 = serviceIdentifier;
            v27 = 2112;
            v28 = parametersForIdentityEstablishmentRequest;
            _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: collectParametersForIdentityEstablishmentRequest is skipping plugin with ID %@ and params %@", buf, 0x16u);
          }
        }

        else
        {
          if (v14)
          {
            *buf = v18;
            v26 = serviceIdentifier;
            _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: collectParametersForIdentityEstablishmentRequest got parameters from plugin %@", buf, 0xCu);
          }

          v29 = @"service-data";
          v30 = parametersForIdentityEstablishmentRequest;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          [v3 setObject:v13 forKeyedSubscript:serviceIdentifier];
        }
      }

      v7 = [_plugins countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v7);
  }

  v23 = @"client-info";
  v24 = v3;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];

  return v16;
}

- (void)notifyServicesOfLoginResponse:(id)response forAppleID:(id)d password:(id)password rawPassword:(id)rawPassword completion:(id)completion
{
  responseCopy = response;
  dCopy = d;
  passwordCopy = password;
  rawPasswordCopy = rawPassword;
  completionCopy = completion;
  v17 = dispatch_get_global_queue(0, 0);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __97__AALoginPluginManager_notifyServicesOfLoginResponse_forAppleID_password_rawPassword_completion___block_invoke;
  v23[3] = &unk_1E7C9CD80;
  v23[4] = self;
  v24 = responseCopy;
  v25 = dCopy;
  v26 = passwordCopy;
  v27 = rawPasswordCopy;
  v28 = completionCopy;
  v18 = completionCopy;
  v19 = rawPasswordCopy;
  v20 = passwordCopy;
  v21 = dCopy;
  v22 = responseCopy;
  dispatch_async(v17, v23);
}

uint64_t __97__AALoginPluginManager_notifyServicesOfLoginResponse_forAppleID_password_rawPassword_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _notifyServicesOfLoginResponse:*(a1 + 40) forAppleID:*(a1 + 48) password:*(a1 + 56) rawPassword:*(a1 + 64)];
  v2 = *(*(a1 + 72) + 16);

  return v2();
}

- (id)_createLoginContextForAppleID:(id)d rawPassword:(id)password loginResponse:(id)response
{
  v50 = *MEMORY[0x1E69E9840];
  dCopy = d;
  responseCopy = response;
  passwordCopy = password;
  v10 = _AALogSystem(passwordCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v47 = dCopy;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: creating login context for stashing (appleID: %@)...", buf, 0xCu);
  }

  if (!passwordCopy)
  {
    v12 = _AALogSystem(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: bad news, no password for stashing!", buf, 2u);
    }
  }

  v13 = [responseCopy responseParametersForServiceIdentifier:@"com.apple.mobileme"];
  v14 = [v13 objectForKeyedSubscript:@"service-data"];
  v15 = [v14 objectForKeyedSubscript:@"appleAccountInfo"];
  v16 = [v15 objectForKeyedSubscript:@"aDsID"];

  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }

    stringValue = [v16 stringValue];
  }

  else
  {
    v16 = _AALogSystem(v17);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: no altDSID was found in iCloud service data!", buf, 2u);
    }

    stringValue = 0;
  }

  v16 = stringValue;
LABEL_14:
  dsid = [responseCopy dsid];
  if (dsid)
  {
    v20 = dsid;
  }

  else
  {
    v21 = _AALogSystem(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: checking iCloud service data for DSID...", buf, 2u);
    }

    v22 = [v13 objectForKeyedSubscript:@"service-data"];
    v23 = [v22 objectForKeyedSubscript:@"appleAccountInfo"];
    v20 = [v23 objectForKeyedSubscript:@"dsPrsID"];

    if (!v20)
    {
      v20 = _AALogSystem(v24);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: no DSID was found in iCloud service data!", buf, 2u);
      }

      stringValue2 = 0;
      goto LABEL_24;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_25;
  }

  stringValue2 = [v20 stringValue];
LABEL_24:

  v20 = stringValue2;
LABEL_25:
  v26 = [v13 objectForKeyedSubscript:@"service-data"];
  v27 = [v26 objectForKeyedSubscript:@"tokens"];

  v28 = [v27 objectForKeyedSubscript:@"cloudKitToken"];
  v29 = v28;
  if (!v28)
  {
    v30 = _AALogSystem(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v30, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: no CloudKit token in iCloud service data!", buf, 2u);
    }
  }

  v44 = v13;
  v45 = responseCopy;
  v31 = _AALogSystem(v28);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    *buf = 138412546;
    v47 = v16;
    v48 = 2112;
    v49 = v33;
    _os_log_impl(&dword_1B6F6A000, v31, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: using altDSID %{mask}@ (%@)", buf, 0x16u);
  }

  v34 = dCopy;
  v35 = [[AAStorableLoginContext alloc] initWithAppleID:dCopy altDSID:v16];
  [(AAStorableLoginContext *)v35 setCloudKitToken:v29];
  [(AAStorableLoginContext *)v35 setDSID:v20];
  [(AAStorableLoginContext *)v35 setRawPassword:passwordCopy];

  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  v37 = [defaultStore aa_authKitAccountForAltDSID:v16];
  v38 = v37;
  if (v37)
  {
    v39 = [v37 credential:v44];
    v40 = _AALogSystem(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = v38;
      _os_log_impl(&dword_1B6F6A000, v40, OS_LOG_TYPE_DEFAULT, "Trying to add CK and PRK for %@ to login context...", buf, 0xCu);
    }

    v41 = [v39 credentialItemForKey:*MEMORY[0x1E6959950]];
    [(AAStorableLoginContext *)v35 setContinuationKey:v41];

    v42 = [v39 credentialItemForKey:*MEMORY[0x1E69599E0]];
    [(AAStorableLoginContext *)v35 setPasswordResetKey:v42];
  }

  else
  {
    v39 = _AALogSystem(0);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = v16;
      _os_log_impl(&dword_1B6F6A000, v39, OS_LOG_TYPE_DEFAULT, "No AuthKit account to grab CK and PRK from for altDSID: %{mask}@", buf, 0xCu);
    }
  }

  return v35;
}

- (BOOL)_notifyServicesOfLoginResponse:(id)response forAppleID:(id)d password:(id)password rawPassword:(id)rawPassword
{
  v61 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  dCopy = d;
  passwordCopy = password;
  rawPasswordCopy = rawPassword;
  v11 = _AALogSystem(rawPasswordCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: will notify services of login response.", buf, 2u);
  }

  *buf = 0;
  v57 = buf;
  v58 = 0x2020000000;
  v59 = 1;
  if (responseCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_shouldStashLoginResponse)
    {
      v13 = [(AALoginPluginManager *)selfCopy _createLoginContextForAppleID:dCopy rawPassword:rawPasswordCopy loginResponse:responseCopy];
      v14 = +[AALoginContextManager sharedManager];
      [v14 setStashedContext:v13];
    }

    objc_sync_exit(selfCopy);
  }

  group = dispatch_group_create();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  _plugins = [(AALoginPluginManager *)self _plugins];
  v16 = [_plugins countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v16)
  {
    v17 = *v53;
    obj = _plugins;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v53 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v52 + 1) + 8 * i);
        serviceIdentifier = [v19 serviceIdentifier];
        v21 = serviceIdentifier;
        if (self->_shouldSkipiTunesPlugin && (v22 = [serviceIdentifier isEqualToString:@"com.apple.itunes"], v22))
        {
          v23 = _AALogSystem(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *v51 = 0;
            _os_log_impl(&dword_1B6F6A000, v23, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager is NOT notifying iTunes plugin about login because _shouldSkipiTunesPlugin is YES.", v51, 2u);
          }
        }

        else
        {
          dsid = [responseCopy dsid];
          altDSID = [responseCopy altDSID];
          v26 = [responseCopy augmentedResponseParametersForServiceIdentifier:v21 withAppleID:dCopy password:passwordCopy DSID:dsid altDSID:altDSID];

          pluginNotificationQueue = self->_pluginNotificationQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __87__AALoginPluginManager__notifyServicesOfLoginResponse_forAppleID_password_rawPassword___block_invoke;
          block[3] = &unk_1E7C9CDD0;
          v47 = v21;
          v48 = v19;
          v49 = v26;
          v50 = buf;
          v23 = v26;
          dispatch_group_async(group, pluginNotificationQueue, block);
        }
      }

      _plugins = obj;
      v16 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v16);
  }

  v28 = self->_pluginNotificationQueue;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __87__AALoginPluginManager__notifyServicesOfLoginResponse_forAppleID_password_rawPassword___block_invoke_52;
  v42[3] = &unk_1E7C9CDF8;
  v42[4] = self;
  v29 = responseCopy;
  v43 = v29;
  v30 = dCopy;
  v44 = v30;
  v31 = passwordCopy;
  v45 = v31;
  dispatch_group_async(group, v28, v42);
  v32 = dispatch_time(0, 60000000000);
  v33 = dispatch_group_wait(group, v32);
  if (v33)
  {
    v34 = _AALogSystem(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 0;
      _os_log_impl(&dword_1B6F6A000, v34, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: timed out while notifying plugins!", v51, 2u);
    }

    v35 = 1;
  }

  else
  {
    v35 = v57[24];
  }

  _Block_object_dispose(buf, 8);
  return v35 & 1;
}

void __87__AALoginPluginManager__notifyServicesOfLoginResponse_forAppleID_password_rawPassword___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _AALogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_1B6F6A000, v2, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: notifying plugin %@ of login response...", buf, 0xCu);
  }

  v4 = dispatch_semaphore_create(0);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__AALoginPluginManager__notifyServicesOfLoginResponse_forAppleID_password_rawPassword___block_invoke_50;
  v10[3] = &unk_1E7C9CDA8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  v12 = v4;
  v13 = v8;
  v11 = v7;
  v9 = v4;
  [v5 handleLoginResponse:v6 completion:v10];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
}

void __87__AALoginPluginManager__notifyServicesOfLoginResponse_forAppleID_password_rawPassword___block_invoke_50(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AALogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v11 = 138412802;
    v12 = v7;
    v13 = 1024;
    v14 = a2;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: plugin %@ finished handling login response with success %d and error %@", &v11, 0x1Cu);
  }

  v8 = [*(a1 + 32) isEqualToString:@"com.apple.mobileme"];
  if (a2)
  {
    if (v8)
    {
      v9 = 1;
LABEL_10:
      *(*(*(a1 + 48) + 8) + 24) = v9;
    }
  }

  else if (v8)
  {
    v10 = _AALogSystem(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: Fatal error! The iCloud plugin failed while handling the login response.", &v11, 2u);
    }

    v9 = 0;
    goto LABEL_10;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __87__AALoginPluginManager__notifyServicesOfLoginResponse_forAppleID_password_rawPassword___block_invoke_52(uint64_t a1)
{
  v2 = [*(a1 + 32) _idsPlugin];
  v3 = [v2 delegateServiceIdentifier];

  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = [v5 dsid];
    v9 = [*(a1 + 40) altDSID];
    v10 = [v5 augmentedResponseParametersForServiceIdentifier:v3 withAppleID:v6 password:v7 DSID:v8 altDSID:v9];

    v12 = _AALogSystem(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: about to notify IDS plugin of login response.", buf, 2u);
    }

    v13 = dispatch_semaphore_create(0);
    v14 = [*(a1 + 32) _idsPlugin];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __87__AALoginPluginManager__notifyServicesOfLoginResponse_forAppleID_password_rawPassword___block_invoke_53;
    v16[3] = &unk_1E7C9C900;
    v17 = v13;
    v15 = v13;
    [v14 completeSetupWithResponseParameters:v10 handler:v16];

    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v10 = _AALogSystem(v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: idsServiceID is nil. Skipping...", buf, 2u);
    }
  }
}

void __87__AALoginPluginManager__notifyServicesOfLoginResponse_forAppleID_password_rawPassword___block_invoke_53(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AALogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: finished notifying IDS. Error: %@", &v6, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)shouldStashLoginResponse
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  shouldStashLoginResponse = selfCopy->_shouldStashLoginResponse;
  objc_sync_exit(selfCopy);

  return shouldStashLoginResponse;
}

- (void)setShouldStashLoginResponse:(BOOL)response
{
  obj = self;
  objc_sync_enter(obj);
  obj->_shouldStashLoginResponse = response;
  objc_sync_exit(obj);
}

- (void)unstashLoginResponse
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_shouldStashLoginResponse)
  {
    v2 = +[AALoginContextManager sharedManager];
    [v2 persistStashedContext];
  }

  objc_sync_exit(obj);
}

- (id)_loadPluginsLimitedToBundleIDs:(id)ds
{
  v42 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v4 = _AALogSystem(dsCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: Loading plugin bundles...", buf, 2u);
  }

  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0;
  v35 = &v34;
  v36 = 0x2050000000;
  v5 = getACDPluginLoaderClass_softClass;
  v37 = getACDPluginLoaderClass_softClass;
  if (!getACDPluginLoaderClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getACDPluginLoaderClass_block_invoke;
    v40 = &unk_1E7C9AE88;
    v41 = &v34;
    __getACDPluginLoaderClass_block_invoke(buf);
    v5 = v35[3];
  }

  v6 = v5;
  _Block_object_dispose(&v34, 8);
  v7 = [v5 pluginBundlesAtSubpath:@"/AppleIDLoginPlugins/"];
  v8 = _AALogSystem(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 count];
    *buf = 134217984;
    *&buf[4] = v9;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: found %lu service bundles.", buf, 0xCu);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  v11 = v10;
  if (v10)
  {
    v12 = *v31;
    do
    {
      v13 = 0;
      do
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v30 + 1) + 8 * v13);
        v15 = _AALogSystem(v10);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v14;
          _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: processing plugin bundle %@.", buf, 0xCu);
        }

        if (dsCopy && (v29[0] = MEMORY[0x1E69E9820], v29[1] = 3221225472, v29[2] = __55__AALoginPluginManager__loadPluginsLimitedToBundleIDs___block_invoke, v29[3] = &unk_1E7C9CE20, v29[4] = v14, [dsCopy indexOfObjectPassingTest:v29] == 0x7FFFFFFFFFFFFFFFLL))
        {
          v16 = _AALogSystem(0x7FFFFFFFFFFFFFFFLL);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            bundleIdentifier = [v14 bundleIdentifier];
            *buf = 138412290;
            *&buf[4] = bundleIdentifier;
            _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: skipping plugin %@.", buf, 0xCu);
          }
        }

        else
        {
          principalClass = [v14 principalClass];
          v19 = [principalClass conformsToProtocol:&unk_1F2F453B0];
          if (v19)
          {
            v20 = objc_alloc_init(principalClass);
            v21 = v20;
            if (v20)
            {
              serviceIdentifier = [v20 serviceIdentifier];
              if (serviceIdentifier)
              {
                [v27 addObject:v21];
              }

              else
              {
                v23 = _AALogSystem(0);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v21;
                  _os_log_impl(&dword_1B6F6A000, v23, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: Error! Service %@ has no identifier", buf, 0xCu);
                }
              }
            }

            else
            {
              serviceIdentifier = _AALogSystem(0);
              if (os_log_type_enabled(serviceIdentifier, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *&buf[4] = principalClass;
                *&buf[12] = 2112;
                *&buf[14] = v14;
                _os_log_impl(&dword_1B6F6A000, serviceIdentifier, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: Could not instantiate object of class %@ for bundle %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v21 = _AALogSystem(v19);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = principalClass;
              *&buf[12] = 2112;
              *&buf[14] = v14;
              _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: Principal class %@ does not conform to AAAppleIDLoginPlugin for bundle %@", buf, 0x16u);
            }
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v10 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
      v11 = v10;
    }

    while (v10);
  }

  v25 = _AALogSystem(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v25, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: Finished loading service bundles.", buf, 2u);
  }

  return v27;
}

uint64_t __55__AALoginPluginManager__loadPluginsLimitedToBundleIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lowercaseString];
  v4 = [*(a1 + 32) bundleIdentifier];
  v5 = [v4 lowercaseString];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

@end