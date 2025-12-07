@interface MSAuthTokenProvider
+ (void)fetchAuthTokensForMediaService:(id)service networkActivity:(id)activity completion:(id)completion;
+ (void)validateConfigurationResourceForMediaService:(id)service networkActivity:(id)activity completion:(id)completion;
@end

@implementation MSAuthTokenProvider

+ (void)fetchAuthTokensForMediaService:(id)service networkActivity:(id)activity completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  activityCopy = activity;
  completionCopy = completion;
  authConfiguration = [serviceCopy authConfiguration];

  if (authConfiguration)
  {
    ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    bundleIdentifier = [serviceCopy bundleIdentifier];
    [ephemeralSessionConfiguration set_sourceApplicationBundleIdentifier:bundleIdentifier];

    v16 = _MSLogingFacility(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      bundleIdentifier2 = [serviceCopy bundleIdentifier];
      *buf = 138412290;
      v27 = bundleIdentifier2;
      _os_log_impl(&dword_23986C000, v16, OS_LOG_TYPE_INFO, "AuthFetch: Setting sourceApplicationBundleID to %@", buf, 0xCu);
    }

    authConfiguration2 = [serviceCopy authConfiguration];
    authCredential = [serviceCopy authCredential];
    v20 = [MSOAuthTokenHandler tokenHandlerWithConfiguration:authConfiguration2 existingCredential:authCredential URLSessionConfiguration:ephemeralSessionConfiguration parentNetworkActivity:activityCopy];

    objc_initWeak(buf, self);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __81__MSAuthTokenProvider_fetchAuthTokensForMediaService_networkActivity_completion___block_invoke;
    v22[3] = &unk_278AA2B20;
    objc_copyWeak(&v25, buf);
    v24 = completionCopy;
    v23 = serviceCopy;
    [v20 fetchTokens:v22];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  else
  {
    v21 = _MSLogingFacility(v12);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MSAuthTokenProvider fetchAuthTokensForMediaService:serviceCopy networkActivity:v21 completion:?];
    }

    ephemeralSessionConfiguration = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.mediasetup.errorDomain" code:9 userInfo:0];
    (*(completionCopy + 2))(completionCopy, ephemeralSessionConfiguration);
  }
}

void __81__MSAuthTokenProvider_fetchAuthTokensForMediaService_networkActivity_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    v8 = (a1 + 32);
    [*(a1 + 32) setAuthCredential:v5];
    if (v6)
    {
      v9 = [v6 domain];
      if ([v9 isEqualToString:@"com.apple.mediasetup.errorDomain"])
      {
        v10 = [v6 code];

        if (v10 == 8)
        {
          v11 = [*v8 setAuthFatalError:1];
        }
      }

      else
      {
      }

      v17 = _MSLogingFacility(v11);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __81__MSAuthTokenProvider_fetchAuthTokensForMediaService_networkActivity_completion___block_invoke_cold_1((a1 + 32), v6, v17);
      }

      v16 = *(*(a1 + 40) + 16);
    }

    else
    {
      v14 = _MSLogingFacility([*v8 setAuthFatalError:0]);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [*v8 serviceID];
        v18 = 138477827;
        v19 = v15;
        _os_log_impl(&dword_23986C000, v14, OS_LOG_TYPE_DEFAULT, "Successfully fetched authTokens for service %{private}@", &v18, 0xCu);
      }

      v16 = *(*(a1 + 40) + 16);
    }

    v16();
  }

  else
  {
    v12 = *(a1 + 40);
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.mediasetup.errorDomain" code:1 userInfo:0];
    (*(v12 + 16))(v12, v13);
  }
}

+ (void)validateConfigurationResourceForMediaService:(id)service networkActivity:(id)activity completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  completionCopy = completion;
  authCredential = [serviceCopy authCredential];
  authToken = [authCredential authToken];

  if (authToken)
  {
    authCredential2 = [serviceCopy authCredential];
    authHeader = [authCredential2 authHeader];
  }

  else
  {
    authHeader = 0;
  }

  v12 = _MSLogingFacility(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [serviceCopy bundleIdentifier];
    configPublicKey = [serviceCopy configPublicKey];
    *buf = 138412546;
    v33 = bundleIdentifier;
    v34 = 2112;
    v35 = configPublicKey;
    _os_log_impl(&dword_23986C000, v12, OS_LOG_TYPE_DEFAULT, "Validating mediaService for %@ with public key: %@", buf, 0x16u);
  }

  ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
  bundleIdentifier2 = [serviceCopy bundleIdentifier];
  v28 = ephemeralSessionConfiguration;
  [ephemeralSessionConfiguration set_sourceApplicationBundleIdentifier:bundleIdentifier2];

  v18 = _MSLogingFacility(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier3 = [serviceCopy bundleIdentifier];
    *buf = 138412290;
    v33 = bundleIdentifier3;
    _os_log_impl(&dword_23986C000, v18, OS_LOG_TYPE_INFO, "ConfigFetch: Setting sourceApplicationBundleID to %@", buf, 0xCu);
  }

  v27 = MEMORY[0x277CFB098];
  configURL = [serviceCopy configURL];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  bundleIdentifier4 = [serviceCopy bundleIdentifier];
  configPublicKey2 = [serviceCopy configPublicKey];
  v25 = CMSCloudExtensionLanguageCode();
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __95__MSAuthTokenProvider_validateConfigurationResourceForMediaService_networkActivity_completion___block_invoke;
  v30[3] = &unk_278AA2B48;
  v31 = completionCopy;
  v26 = completionCopy;
  [v27 configurationFromURL:configURL forSession:uUIDString usingAuth:authHeader authProvider:0 parentNetworkActivity:0 keyID:bundleIdentifier4 publicKey:configPublicKey2 URLSessionConfiguration:v28 languageCode:v25 completion:v30];
}

void __95__MSAuthTokenProvider_validateConfigurationResourceForMediaService_networkActivity_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = @"Missing configuration resource";
  if (v5 && !v6)
  {
    v6 = [v5 configForEndpoint:*MEMORY[0x277CFB090]];
    if (v6)
    {

      v9 = 0;
      goto LABEL_9;
    }

    v8 = @"Invalid configuration resource";
  }

  v10 = _MSLogingFacility(v6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __95__MSAuthTokenProvider_validateConfigurationResourceForMediaService_networkActivity_completion___block_invoke_cold_1(v7, v10);
  }

  v11 = MEMORY[0x277CCA9B8];
  v13 = *MEMORY[0x277CCA450];
  v14[0] = v8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = [v11 errorWithDomain:@"com.apple.mediasetup.errorDomain" code:10 userInfo:v12];

LABEL_9:
  (*(*(a1 + 32) + 16))();
}

+ (void)fetchAuthTokensForMediaService:(void *)a1 networkActivity:(NSObject *)a2 completion:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 serviceID];
  v4 = 138477827;
  v5 = v3;
  _os_log_error_impl(&dword_23986C000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch authTokens for service %{private}@ - mediaService missing authConfig", &v4, 0xCu);
}

void __81__MSAuthTokenProvider_fetchAuthTokensForMediaService_networkActivity_completion___block_invoke_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*a1 serviceID];
  v6 = 138478083;
  v7 = v5;
  v8 = 2113;
  v9 = a2;
  _os_log_error_impl(&dword_23986C000, a3, OS_LOG_TYPE_ERROR, "Failed to fetch authTokens for service %{private}@. Error: %{private}@", &v6, 0x16u);
}

void __95__MSAuthTokenProvider_validateConfigurationResourceForMediaService_networkActivity_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23986C000, a2, OS_LOG_TYPE_ERROR, "Encountered an issue trying to attain configuration resource: %@", &v2, 0xCu);
}

@end