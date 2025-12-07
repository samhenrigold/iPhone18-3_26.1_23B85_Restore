@interface NEHotspotConfigurationManager
+ (NEHotspotConfigurationManager)sharedManager;
- (void)applyConfiguration:(NEHotspotConfiguration *)configuration completionHandler:(void *)completionHandler;
- (void)getConfiguredSSIDsWithCompletionHandler:(void *)completionHandler;
- (void)joinAccessoryHotspot:(id)hotspot passphrase:(id)passphrase completionHandler:(id)handler;
- (void)joinAccessoryHotspotWithoutSecurity:(id)security completionHandler:(id)handler;
- (void)removeConfigurationForHS20DomainName:(NSString *)domainName;
- (void)removeConfigurationForSSID:(NSString *)SSID;
- (void)reportError:(void *)error completionHandler:;
@end

@implementation NEHotspotConfigurationManager

- (void)joinAccessoryHotspotWithoutSecurity:(id)security completionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  sSID = [security SSID];
  if (sSID)
  {
    v8 = [[NEHotspotConfiguration alloc] initWithSSID:sSID];
    [(NEHotspotConfiguration *)v8 setJoinOnce:1];
    [(NEHotspotConfiguration *)v8 setIsAccessory:1];
    [(NEHotspotConfigurationManager *)self applyConfiguration:v8 completionHandler:handlerCopy];
  }

  else
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = objc_opt_class();
      v10 = v12;
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "%@ ASAccessory object not provided", &v11, 0xCu);
    }

    [(NEHotspotConfigurationManager *)self reportError:handlerCopy completionHandler:?];
  }
}

- (void)reportError:(void *)error completionHandler:
{
  errorCopy = error;
  v6 = errorCopy;
  if (self && errorCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__NEHotspotConfigurationManager_reportError_completionHandler___block_invoke;
    block[3] = &unk_1E7F0AB90;
    block[4] = self;
    v8 = errorCopy;
    v9 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __63__NEHotspotConfigurationManager_reportError_completionHandler___block_invoke(void *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  if (a1[4])
  {
    v2 = 0;
    v3 = a1[6];
    if (v3 > 99)
    {
      if (v3 <= 104)
      {
        if (v3 <= 101)
        {
          if (v3 == 100)
          {
            goto LABEL_45;
          }

          v4 = @"invalid SSID.";
          v5 = 1;
        }

        else if (v3 == 102)
        {
          v4 = @"invalid WPA/WPA2 Passphrase.";
          v5 = 2;
        }

        else if (v3 == 103)
        {
          v4 = @"invalid WEP Passphrase.";
          v5 = 3;
        }

        else
        {
          v4 = @"invalid EAP settings.";
          v5 = 4;
        }

        goto LABEL_44;
      }

      if (v3 <= 106)
      {
        if (v3 == 105)
        {
          v4 = @"invalid Hotspot 2.0 Settings.";
          v5 = 5;
        }

        else
        {
          v4 = @"invalid Hotspot 2.0 Domain Name.";
          v5 = 6;
        }

        goto LABEL_44;
      }

      switch(v3)
      {
        case 'k':
          goto LABEL_33;
        case 'm':
          v4 = @"JoinOnce is not supported for EAP security type.";
          v5 = 12;
          goto LABEL_44;
        case 'n':
          v4 = @"invalid SSID Prefix.";
          v5 = 15;
          goto LABEL_44;
      }
    }

    else if (v3 > 4)
    {
      if (v3 <= 7)
      {
        if (v3 == 5)
        {
          v4 = @"cannot modify system configuration.";
          v5 = 10;
          goto LABEL_44;
        }

        if (v3 == 6)
        {
          v4 = @"already associated.";
          v5 = 13;
          goto LABEL_44;
        }
      }

      else
      {
        switch(v3)
        {
          case 8:
            v4 = @"application is not in the foreground.";
            v5 = 14;
            goto LABEL_44;
          case 10:
            v4 = @"accessory access is unauthorized by the user.";
            v5 = 16;
            goto LABEL_44;
          case 11:
            v4 = @"system denied configuration of the accessory network.";
            v5 = 17;
            goto LABEL_44;
        }
      }
    }

    else
    {
      if (v3 > 1)
      {
        if (v3 != 2)
        {
          if (v3 != 3)
          {
            v4 = @"unknown error.";
LABEL_43:
            v5 = 11;
            goto LABEL_44;
          }

          v4 = @"pending request.";
          v5 = 9;
LABEL_44:
          v6 = MEMORY[0x1E696ABC0];
          v10 = *MEMORY[0x1E696A578];
          v11[0] = v4;
          v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
          v8 = [v6 errorWithDomain:@"NEHotspotConfigurationErrorDomain" code:v5 userInfo:v7];

          v2 = v8;
          goto LABEL_45;
        }

LABEL_33:
        v4 = @"internal error.";
        v5 = 8;
        goto LABEL_44;
      }

      if (!v3)
      {
        goto LABEL_45;
      }

      if (v3 == 1)
      {
        v4 = @"failed to get user's approval.";
        v5 = 7;
        goto LABEL_44;
      }
    }

    v4 = @"<unknown>";
    goto LABEL_43;
  }

  v2 = 0;
LABEL_45:
  v9 = v2;
  (*(v1 + 16))(v1);
}

- (void)joinAccessoryHotspot:(id)hotspot passphrase:(id)passphrase completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  passphraseCopy = passphrase;
  handlerCopy = handler;
  sSID = [hotspot SSID];
  if (!sSID)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = objc_opt_class();
      v16 = v19;
      _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "%@ ASAccessory object not provided", &v18, 0xCu);
    }

    selfCopy2 = self;
    v14 = 101;
    goto LABEL_10;
  }

  if (!passphraseCopy)
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = objc_opt_class();
      v17 = v19;
      _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "%@ passphrase string not provided", &v18, 0xCu);
    }

    selfCopy2 = self;
    v14 = 102;
LABEL_10:
    [(NEHotspotConfigurationManager *)selfCopy2 reportError:v14 completionHandler:handlerCopy];
    goto LABEL_11;
  }

  v11 = [[NEHotspotConfiguration alloc] initWithSSID:sSID passphrase:passphraseCopy isWEP:0];
  [(NEHotspotConfiguration *)v11 setJoinOnce:1];
  [(NEHotspotConfiguration *)v11 setIsAccessory:1];
  [(NEHotspotConfigurationManager *)self applyConfiguration:v11 completionHandler:handlerCopy];

LABEL_11:
}

- (void)getConfiguredSSIDsWithCompletionHandler:(void *)completionHandler
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = completionHandler;
  if (v3)
  {
    v4 = +[NEHotspotConfigurationHelper sharedManager];
    if (v4)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __73__NEHotspotConfigurationManager_getConfiguredSSIDsWithCompletionHandler___block_invoke;
      v7[3] = &unk_1E7F07AF8;
      v8 = v3;
      [(NEHotspotConfigurationHelper *)v4 sendRequest:2 requestType:v7 resultHandler:?];
      v5 = v8;
    }

    else
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = objc_opt_class();
        v6 = v10;
        _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "%@ Failed to instantiate NEHotspotConfigurationHelper.", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "no completion handler providd.", buf, 2u);
    }
  }
}

void __73__NEHotspotConfigurationManager_getConfiguredSSIDsWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__NEHotspotConfigurationManager_getConfiguredSSIDsWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E7F0B588;
  v7 = v4;
  v8 = *(a1 + 32);
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __73__NEHotspotConfigurationManager_getConfiguredSSIDsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)removeConfigurationForHS20DomainName:(NSString *)domainName
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = domainName;
  v4 = +[NEHotspotConfigurationHelper sharedManager];
  v5 = v4;
  if (v4)
  {
    [(NEHotspotConfigurationHelper *)v4 sendRequest:v3 requestType:1 resultHandler:0];
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = objc_opt_class();
      v7 = v9;
      _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "%@ failed to instantiate hotspot configuration helper.", &v8, 0xCu);
    }
  }
}

- (void)removeConfigurationForSSID:(NSString *)SSID
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = SSID;
  v4 = +[NEHotspotConfigurationHelper sharedManager];
  v5 = v4;
  if (v4)
  {
    [(NEHotspotConfigurationHelper *)v4 sendRequest:v3 requestType:1 resultHandler:0];
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = objc_opt_class();
      v7 = v9;
      _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "%@ failed to instantiate hotspot configuration helper.", &v8, 0xCu);
    }
  }
}

- (void)applyConfiguration:(NEHotspotConfiguration *)configuration completionHandler:(void *)completionHandler
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = configuration;
  v7 = completionHandler;
  validate = [(NEHotspotConfiguration *)v6 validate];
  if (validate != 100)
  {
    v15 = validate;
    selfCopy2 = self;
LABEL_11:
    [(NEHotspotConfigurationManager *)selfCopy2 reportError:v15 completionHandler:v7];
    goto LABEL_17;
  }

  if (!self || (v9 = MEMORY[0x1E696ACC8], v10 = v6, v11 = [[v9 alloc] initRequiringSecureCoding:1], objc_msgSend(v11, "encodeObject:forKey:", v10, @"NEHotspotConfigurationKey"), v10, objc_msgSend(v11, "finishEncoding"), objc_msgSend(v11, "encodedData"), v12 = objc_claimAutoreleasedReturnValue(), v11, !v12))
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = objc_opt_class();
      v19 = v24;
      _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "%@ failed to serialize configuration object", buf, 0xCu);
    }

    selfCopy2 = self;
    v15 = 107;
    goto LABEL_11;
  }

  v13 = +[NEHotspotConfigurationHelper sharedManager];
  v14 = v13;
  if (v13)
  {
    if (v7)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __70__NEHotspotConfigurationManager_applyConfiguration_completionHandler___block_invoke;
      v21[3] = &unk_1E7F07AD0;
      v21[4] = self;
      v22 = v7;
      [(NEHotspotConfigurationHelper *)v14 sendRequest:v12 requestType:0 resultHandler:v21];
    }

    else
    {
      [(NEHotspotConfigurationHelper *)v13 sendRequest:v12 requestType:0 resultHandler:0];
    }
  }

  else
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = objc_opt_class();
      v20 = v24;
      _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "%@ failed to instantiate hotspot configuration helper.", buf, 0xCu);
    }

    [(NEHotspotConfigurationManager *)self reportError:v7 completionHandler:?];
  }

LABEL_17:
}

void __70__NEHotspotConfigurationManager_applyConfiguration_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412546;
    v7 = objc_opt_class();
    v8 = 2048;
    v9 = a2;
    v5 = v7;
    _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "%@ received result code %lld", &v6, 0x16u);
  }

  [(NEHotspotConfigurationManager *)*(a1 + 32) reportError:a2 completionHandler:*(a1 + 40)];
}

+ (NEHotspotConfigurationManager)sharedManager
{
  if (sharedManager_init_manager_7711 != -1)
  {
    dispatch_once(&sharedManager_init_manager_7711, &__block_literal_global_7712);
  }

  v3 = sharedManager_g_manager_7713;

  return v3;
}

uint64_t __46__NEHotspotConfigurationManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(NEHotspotConfigurationManager);
  v1 = sharedManager_g_manager_7713;
  sharedManager_g_manager_7713 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end