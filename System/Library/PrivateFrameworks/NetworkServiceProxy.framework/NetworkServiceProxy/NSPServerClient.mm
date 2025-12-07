@interface NSPServerClient
+ (id)getErrorFromDict:(uint64_t)dict;
- (BOOL)checkOriginAllowedAsThirdParty:(id)party;
- (BOOL)removePrivacyProxyPolicy;
- (id)getAgentUUIDForType:(int64_t)type;
- (id)getConnection;
- (id)getTokenFetchConnection;
- (id)initWithCallbackQueue:(id)queue;
- (void)addAuxiliaryAuthenticationData:(id)data type:(unint64_t)type label:(id)label cacheKey:(id)key;
- (void)addOneTimeToken:(id)token oneTimeTokenSalt:(id)salt longLivedToken:(id)livedToken toCacheForFetcher:(id)fetcher;
- (void)addToken:(id)token toCacheForFetcher:(id)fetcher;
- (void)checkRemainingCostQuotaWithFetcher:(id)fetcher allowRetry:(BOOL)retry completionHandler:(id)handler;
- (void)convertPrivacyProxyConfigurationWithCompletionHandler:(id)handler completionHandler:(id)completionHandler;
- (void)dumpPrivacyProxyTokenEventsWithCompletionHandler:(id)handler mostRecent:(BOOL)recent limit:(unint64_t)limit dumpStats:(BOOL)stats completionHandler:(id)completionHandler;
- (void)fetchAuxiliaryAuthenticationDataFromCacheForType:(unint64_t)type label:(id)label cacheKey:(id)key completionHandler:(id)handler;
- (void)fetchCurrentConfigurationWithCompletionHandler:(id)handler;
- (void)fetchKnownPrivateAccessTokenKeyWithFetcher:(id)fetcher allowRetry:(BOOL)retry completionHandler:(id)handler;
- (void)fetchNewConfigurationWithCompletionHandler:(id)handler;
- (void)fetchPrivateAccessTokenAndAuxAuthWithFetcher:(id)fetcher allowRetry:(BOOL)retry completionHandler:(id)handler;
- (void)fetchPrivateAccessTokenPairWithFetcher:(id)fetcher allowRetry:(BOOL)retry completionHandler:(id)handler;
- (void)fetchPrivateAccessTokenWithFetcher:(id)fetcher allowRetry:(BOOL)retry completionHandler:(id)handler;
- (void)getForceFallbackWithCompletionHandler:(id)handler;
- (void)getGeohashSharingPreferenceWithCompletionHandler:(id)handler;
- (void)getOverrideIngressProxyWithCompletionHandler:(id)handler;
- (void)getOverrideProxiedContentMapEnabled:(id)enabled completionHandler:(id)handler;
- (void)getPreferredObliviousProxyWithCompletionHandler:(id)handler;
- (void)getPreferredProxyWithCompletionHandler:(id)handler;
- (void)getPreferredResolverWithCompletionHandler:(id)handler;
- (void)getPrivacyProxyAccountTypeWithCompletionHandler:(id)handler;
- (void)getPrivacyProxyAppStatusesWithCompletionHandler:(id)handler;
- (void)getPrivacyProxyConfiguration:(id)configuration;
- (void)getPrivacyProxyDomainFilters:(id)filters;
- (void)getPrivacyProxyEffectiveUserTierWithCompletionHandler:(id)handler;
- (void)getPrivacyProxyInfoWithCompletionHandler:(id)handler;
- (void)getPrivacyProxyPolicyWithCompletionHandler:(id)handler;
- (void)getPrivacyProxyServiceStatusTimelineWithCompletionHandler:(id)handler;
- (void)getPrivacyProxyServiceStatusWithCompletionHandler:(id)handler;
- (void)getPrivacyProxyStatusWithCompletionHandler:(id)handler;
- (void)getPrivacyProxyTrafficStateWithCompletionHandler:(id)handler;
- (void)getPrivacyProxyUserTierWithCompletionHandler:(id)handler;
- (void)getPrivateAccessTokensEnabledWithCompletionHandler:(id)handler;
- (void)locationAuthorizationStatusWithCompletionHandler:(id)handler;
- (void)mergePrivacyProxyPolicy:(id)policy;
- (void)overrideIngressProxy:(id)proxy fallbackProxy:(id)fallbackProxy key:(id)key completionHandler:(id)handler;
- (void)overridePreferredObliviousProxy:(id)proxy completionHandler:(id)handler;
- (void)overridePreferredProxy:(id)proxy completionHandler:(id)handler;
- (void)overridePreferredResolver:(id)resolver completionHandler:(id)handler;
- (void)overrideProxiedContentMap:(id)map enabled:(BOOL)enabled completionHandler:(id)handler;
- (void)privateAccessTokensAllowTools:(BOOL)tools completionHandler:(id)handler;
- (void)reportPrivacyProxyNetworkStatus:(id)status completionHandler:(id)handler;
- (void)reportPrivacyProxyServiceStatus:(unint64_t)status completionHandler:(id)handler;
- (void)resetConfigurationInternalSettings:(id)settings;
- (void)sendRTCReport:(int64_t)report errorCode:(int64_t)code url:(id)url completionHandler:(id)handler;
- (void)setCurrentConfiguration:(id)configuration withCompletionHandler:(id)handler;
- (void)setForceFallback:(BOOL)fallback completionHandler:(id)handler;
- (void)setFreeUserTierUntilTomorrowWithCompletionHandler:(id)handler;
- (void)setGeohashOverride:(id)override completionHandler:(id)handler;
- (void)setGeohashSharingPreference:(BOOL)preference completionHandler:(id)handler;
- (void)setInProcessFlowDivert:(BOOL)divert completionHandler:(id)handler;
- (void)setLocationMonitorInterval:(double)interval;
- (void)setPreferredPathRoutingEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)setPrivacyProxyAppStatus:(unint64_t)status bundleIdentifier:(id)identifier path:(id)path completionHandler:(id)handler;
- (void)setPrivacyProxyConfiguration:(id)configuration completionHandler:(id)handler;
- (void)setPrivacyProxyPolicy:(id)policy completionHandler:(id)handler;
- (void)setPrivacyProxyStatus:(BOOL)status completionHandler:(id)handler;
- (void)setPrivacyProxyTokenEventsProactiveTokenFetchParams:(id)params lowerTokenCountThresholdStr:(id)str lowerTokenCountProbabilityStr:(id)probabilityStr statsDurationStr:(id)durationStr upperLWMCountThresholdStr:(id)thresholdStr upperLWMCountProbabilityOffsetStr:(id)offsetStr completionHandler:(id)handler;
- (void)setPrivacyProxyTrafficState:(unint64_t)state proxyTraffic:(unint64_t)traffic completionHandler:(id)handler;
- (void)setPrivacyProxyUserTier:(unint64_t)tier completionHandler:(id)handler;
- (void)setPrivateAccessTokensEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)setProxiedContentMapDoHBootstrapEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)startLocationMonitor;
- (void)startProxyToMPTCPConverterProxyWithCompletionHandler:(id)handler;
- (void)stopLocationMonitor;
- (void)stopProxyToMPTCPConverterProxyWithCompletionHandler:(id)handler;
@end

@implementation NSPServerClient

- (id)getConnection
{
  v16 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    v2 = *(self + 24);
    if (!v2)
    {
      uTF8String = [@"com.apple.networkserviceproxy" UTF8String];
      Property = objc_getProperty(self, v4, 16, 1);
      mach_service = xpc_connection_create_mach_service(uTF8String, Property, 0);
      v7 = mach_service;
      if (mach_service)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __32__NSPServerClient_getConnection__block_invoke;
        v12[3] = &unk_1E7A308F8;
        v12[4] = self;
        v8 = mach_service;
        v13 = v8;
        xpc_connection_set_event_handler(v8, v12);
        xpc_connection_resume(v8);
        objc_storeStrong((self + 24), v7);
      }

      else
      {
        v9 = nplog_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          uTF8String2 = [@"com.apple.networkserviceproxy" UTF8String];
          _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to create an XPC connection to %s", buf, 0xCu);
        }
      }

      v2 = *(self + 24);
    }

    v10 = v2;
    os_unfair_lock_unlock((self + 8));
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)initWithCallbackQueue:(id)queue
{
  v3 = a2;
  if (queue)
  {
    v7.receiver = queue;
    v7.super_class = NSPServerClient;
    queue = objc_msgSendSuper2(&v7, sel_init);
    if (queue)
    {
      if (v3)
      {
        v4 = v3;
      }

      else
      {
        v4 = dispatch_queue_create("NSPServerClient queue", 0);
      }

      v5 = *(queue + 2);
      *(queue + 2) = v4;

      *(queue + 2) = 0;
    }
  }

  return queue;
}

void __32__NSPServerClient_getConnection__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && MEMORY[0x1B2708030](v3) == MEMORY[0x1E69E9E98])
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 24);
    }

    else
    {
      v6 = 0;
    }

    if (v6 == *(a1 + 40))
    {
      v7 = nplog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        string = xpc_dictionary_get_string(v4, *MEMORY[0x1E69E9E28]);
        v9 = 136315138;
        v10 = string;
        _os_log_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_INFO, "Got an error on the XPC connection: %s", &v9, 0xCu);
      }

      objc_storeStrong((*(a1 + 32) + 24), 0);
      v5 = *(a1 + 32);
    }

    os_unfair_lock_unlock((v5 + 8));
    xpc_connection_cancel(*(a1 + 40));
  }
}

uint64_t __50__NSPServerClient_isAllowedToUseFetchTokenService__block_invoke()
{
  getpid();
  result = sandbox_check();
  if (!result)
  {
    _MergedGlobals_25 = 1;
  }

  return result;
}

- (id)getTokenFetchConnection
{
  v16 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (qword_1ED4BF5D8 != -1)
    {
      dispatch_once(&qword_1ED4BF5D8, &__block_literal_global_1);
    }

    if (_MergedGlobals_25)
    {
      os_unfair_lock_lock((self + 8));
      v3 = *(self + 32);
      if (!v3)
      {
        Property = objc_getProperty(self, v2, 16, 1);
        mach_service = xpc_connection_create_mach_service("com.apple.networkserviceproxy.fetch-token", Property, 0);
        v6 = mach_service;
        if (mach_service)
        {
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __42__NSPServerClient_getTokenFetchConnection__block_invoke;
          v12[3] = &unk_1E7A308F8;
          v12[4] = self;
          v7 = mach_service;
          v13 = v7;
          xpc_connection_set_event_handler(v7, v12);
          xpc_connection_resume(v7);
          objc_storeStrong((self + 32), v6);
          v8 = nplog_obj();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v15 = "com.apple.networkserviceproxy.fetch-token";
            _os_log_debug_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_DEBUG, "Created an XPC connection to %s", buf, 0xCu);
          }
        }

        else
        {
          v10 = nplog_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v15 = "com.apple.networkserviceproxy.fetch-token";
            _os_log_error_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_ERROR, "Failed to create an XPC connection to %s", buf, 0xCu);
          }
        }

        v3 = *(self + 32);
      }

      getConnection = v3;
      os_unfair_lock_unlock((self + 8));
    }

    else
    {
      getConnection = [(NSPServerClient *)self getConnection];
    }
  }

  else
  {
    getConnection = 0;
  }

  return getConnection;
}

void __42__NSPServerClient_getTokenFetchConnection__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && MEMORY[0x1B2708030](v3) == MEMORY[0x1E69E9E98])
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 32);
    }

    else
    {
      v6 = 0;
    }

    if (v6 == *(a1 + 40))
    {
      v7 = nplog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        string = xpc_dictionary_get_string(v4, *MEMORY[0x1E69E9E28]);
        v9 = 136315138;
        v10 = string;
        _os_log_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_INFO, "Got an error on the XPC connection: %s", &v9, 0xCu);
      }

      objc_storeStrong((*(a1 + 32) + 32), 0);
      v5 = *(a1 + 32);
    }

    os_unfair_lock_unlock((v5 + 8));
    xpc_connection_cancel(*(a1 + 40));
  }
}

- (void)fetchCurrentConfigurationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Requesting fetch configuration", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 1);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __66__NSPServerClient_fetchCurrentConfigurationWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v10 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __66__NSPServerClient_fetchCurrentConfigurationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7 && MEMORY[0x1B2708030]() == MEMORY[0x1E69E9E80])
  {
    v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v5 = get_nsdata_from_xpc_object(v7, "NSPServerConfiguration");
    if (v5)
    {
      v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v4 fromData:v5 error:0];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (void)fetchNewConfigurationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Requesting a new fetch of the configuration from the server", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 74);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __62__NSPServerClient_fetchNewConfigurationWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v10 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }
}

void __62__NSPServerClient_fetchNewConfigurationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && MEMORY[0x1B2708030](v3) == MEMORY[0x1E69E9E80])
  {
    v5 = xpc_dictionary_get_BOOL(v4, "NSPServerCommandResult");
    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8[0] = 67109120;
      v8[1] = v5;
      _os_log_debug_impl(&dword_1AE7E2000, v6, OS_LOG_TYPE_DEBUG, "Attempt to fetch new configuration returned %d", v8, 8u);
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }
}

- (void)resetConfigurationInternalSettings:(id)settings
{
  settingsCopy = settings;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__NSPServerClient_resetConfigurationInternalSettings___block_invoke;
  v6[3] = &unk_1E7A30970;
  v6[4] = self;
  v7 = settingsCopy;
  v5 = settingsCopy;
  [(NSPServerClient *)self fetchCurrentConfigurationWithCompletionHandler:v6];
}

void __54__NSPServerClient_resetConfigurationInternalSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setConfigServerHost:@"none"];
  [v3 setOverrideConfigServerPath:0];
  [v3 setConfigServerHeaders:@"none"];
  [v3 setIgnoreInvalidCerts:0];
  [v3 setIgnoreSignature:0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__NSPServerClient_resetConfigurationInternalSettings___block_invoke_2;
  v5[3] = &unk_1E7A30948;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 setCurrentConfiguration:v3 withCompletionHandler:v5];
}

void __54__NSPServerClient_resetConfigurationInternalSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AE7E2000, v4, OS_LOG_TYPE_INFO, "Set of config while resetting internal settings returned: %@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3 == 0);
  }
}

- (void)setCurrentConfiguration:(id)configuration withCompletionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_DEBUG, "Requesting set configuration", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "NSPServerCommandType", 2);
    v11 = v10;
    v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:configurationCopy requiringSecureCoding:1 error:0];
    if (v12)
    {
      v13 = v11;
      v14 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v13, "NSPServerConfiguration", v14);
    }

    if (self)
    {
      self = objc_getProperty(self, v15, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __65__NSPServerClient_setCurrentConfiguration_withCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v17 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v11, &self->super, handler);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, @"IPC failed");
  }
}

void __65__NSPServerClient_setCurrentConfiguration_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  if (xdict && MEMORY[0x1B2708030]() == MEMORY[0x1E69E9E80])
  {
    string = xpc_dictionary_get_string(xdict, "NSPServerErrorString");
    if (string)
    {
      string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
    }
  }

  else
  {
    string = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, string);
  }
}

- (void)getPrivacyProxyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "get privacy proxy configuration called", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__NSPServerClient_getPrivacyProxyConfiguration___block_invoke;
  v7[3] = &unk_1E7A30998;
  v8 = configurationCopy;
  v6 = configurationCopy;
  [(NSPServerClient *)self fetchCurrentConfigurationWithCompletionHandler:v7];
}

void __48__NSPServerClient_getPrivacyProxyConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v26 = v3;
  if (v3)
  {
    v4 = [v3 proxyConfiguration];
    v5 = [v4 dictionaryRepresentation];

    v6 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v5];
    v7 = [v26 enabled];
    [v6 setValue:v7 forKey:@"privacyProxyEnabled"];

    v8 = [v26 configServerHost];
    [v6 setValue:v8 forKey:@"configServer"];

    v9 = [v26 configServerEnabled];
    [v6 setValue:v9 forKey:@"configFetchEnabled"];

    v10 = [v26 userTier];
    v11 = [v10 intValue];
    if (v11 >= 3)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v11];
    }

    else
    {
      v12 = off_1E7A309E0[v11];
    }

    [v6 setValue:v12 forKey:@"userTier"];
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v26, "ignoreInvalidCerts")}];
    [v6 setValue:v13 forKey:@"ignoreInvalidCerts"];

    v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v26, "ignoreSignature")}];
    [v6 setValue:v14 forKey:@"ignoreConfigSignature"];

    v15 = MEMORY[0x1E696AB78];
    v16 = [v26 configurationFetchDate];
    v17 = [v15 localizedStringFromDate:v16 dateStyle:1 timeStyle:2];
    [v6 setValue:v17 forKey:@"configFetchDate"];

    v18 = [v26 proxyTrafficState];
    v19 = [NSPConfiguration proxyTrafficStateToString:v18];
    [v6 setValue:v19 forKey:@"proxyTraffic"];

    v20 = [v5 objectForKey:@"trustedNetworkDiscoveredProxies"];
    if (v20)
    {
      v21 = v20;
      v22 = [v5 objectForKey:@"trustedNetworkDiscoveredProxies"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v24 = [v5 objectForKey:@"trustedNetworkDiscoveredProxies"];
        [v6 setValue:v24 forKey:@"trustedNetworkDiscoveredProxies"];
      }
    }

    v25 = [v26 cloudSubscriptionCheckEnabled];
    [v6 setValue:v25 forKey:@"cloudSubscriptionCheckEnabled"];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)setPrivacyProxyConfiguration:(id)configuration completionHandler:(id)handler
{
  v4 = MEMORY[0x1EEE9AC00](self, a2, configuration, handler);
  v6 = v5;
  selfa = v4;
  v873 = *MEMORY[0x1E69E9840];
  v8 = v7;
  v9 = v6;
  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEBUG, "Requesting set proxy configuration", buf, 2u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v684 = v9;
    v695 = objc_alloc_init(NSPPrivacyProxyConfiguration);
    v11 = [v8 objectForKeyedSubscript:@"version"];
    if (v11)
    {
      v12 = v11;
      v13 = [v8 objectForKeyedSubscript:@"version"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v15 = [v8 objectForKeyedSubscript:@"version"];
        -[NSPPrivacyProxyConfiguration setVersion:](v695, "setVersion:", [v15 unsignedIntValue]);
      }
    }

    v16 = [v8 objectForKeyedSubscript:{@"enabled", v684}];
    if (v16)
    {
      v17 = v16;
      v18 = [v8 objectForKeyedSubscript:@"enabled"];
      objc_opt_class();
      v19 = objc_opt_isKindOfClass();

      if (v19)
      {
        v20 = [v8 objectForKeyedSubscript:@"enabled"];
        -[NSPPrivacyProxyConfiguration setEnabled:](v695, "setEnabled:", [v20 BOOLValue]);
      }
    }

    v21 = [v8 objectForKeyedSubscript:@"disableUntil"];
    if (v21)
    {
      v22 = v21;
      v23 = [v8 objectForKeyedSubscript:@"disableUntil"];
      objc_opt_class();
      v24 = objc_opt_isKindOfClass();

      if (v24)
      {
        v25 = [v8 objectForKeyedSubscript:@"disableUntil"];
        -[NSPPrivacyProxyConfiguration setDisableUntil:](v695, "setDisableUntil:", [v25 unsignedLongValue]);
      }
    }

    v694 = objc_alloc_init(NSPPrivacyProxyAuthenticationInfo);
    [(NSPPrivacyProxyConfiguration *)v695 setAuthInfo:?];
    v26 = [v8 objectForKeyedSubscript:@"authInfo"];
    v693 = v8;
    if (v26)
    {
      v27 = v26;
      v28 = [v8 objectForKeyedSubscript:@"authInfo"];
      objc_opt_class();
      v29 = objc_opt_isKindOfClass();

      if (v29)
      {
        v30 = [v8 objectForKeyedSubscript:@"authInfo"];
        v31 = [v30 objectForKeyedSubscript:@"authURL"];
        v686 = v30;
        if (v31)
        {
          v32 = v31;
          v33 = [v30 objectForKeyedSubscript:@"authURL"];
          objc_opt_class();
          v34 = objc_opt_isKindOfClass();

          v30 = v686;
          if (v34)
          {
            v35 = [v686 objectForKeyedSubscript:@"authURL"];
            [(NSPPrivacyProxyAuthenticationInfo *)v694 setAuthURL:v35];
          }
        }

        v36 = [v30 objectForKeyedSubscript:@"accessTokenURL"];
        if (v36)
        {
          v37 = v36;
          v38 = [v30 objectForKeyedSubscript:@"accessTokenURL"];
          objc_opt_class();
          v39 = objc_opt_isKindOfClass();

          v30 = v686;
          if (v39)
          {
            v40 = [v686 objectForKeyedSubscript:@"accessTokenURL"];
            [(NSPPrivacyProxyAuthenticationInfo *)v694 setAccessTokenURL:v40];
          }
        }

        v41 = [v30 objectForKeyedSubscript:@"accessTokenTypes"];
        if (v41)
        {
          v42 = v41;
          v43 = [v30 objectForKeyedSubscript:@"accessTokenTypes"];
          objc_opt_class();
          v44 = objc_opt_isKindOfClass();

          v30 = v686;
          if (v44)
          {
            [v686 objectForKeyedSubscript:@"accessTokenTypes"];
            v839 = 0u;
            v840 = 0u;
            v841 = 0u;
            v45 = v842 = 0u;
            v46 = [v45 countByEnumeratingWithState:&v839 objects:v872 count:16];
            if (v46)
            {
              v47 = v46;
              v48 = *v840;
              do
              {
                for (i = 0; i != v47; ++i)
                {
                  if (*v840 != v48)
                  {
                    objc_enumerationMutation(v45);
                  }

                  v50 = *(*(&v839 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    -[NSPPrivacyProxyAuthenticationInfo addAccessTokenTypes:](v694, "addAccessTokenTypes:", [v50 unsignedIntValue]);
                  }
                }

                v47 = [v45 countByEnumeratingWithState:&v839 objects:v872 count:16];
              }

              while (v47);
            }

            v30 = v686;
          }
        }

        v51 = [v30 objectForKeyedSubscript:@"accessTokenKnownOrigins"];
        if (v51)
        {
          v52 = v51;
          v53 = [v30 objectForKeyedSubscript:@"accessTokenKnownOrigins"];
          objc_opt_class();
          v54 = objc_opt_isKindOfClass();

          v30 = v686;
          if (v54)
          {
            [v686 objectForKeyedSubscript:@"accessTokenKnownOrigins"];
            v835 = 0u;
            v836 = 0u;
            v837 = 0u;
            v55 = v838 = 0u;
            v56 = [v55 countByEnumeratingWithState:&v835 objects:v871 count:16];
            if (v56)
            {
              v57 = v56;
              v58 = *v836;
              do
              {
                for (j = 0; j != v57; ++j)
                {
                  if (*v836 != v58)
                  {
                    objc_enumerationMutation(v55);
                  }

                  v60 = *(*(&v835 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [(NSPPrivacyProxyAuthenticationInfo *)v694 addAccessTokenKnownOrigins:v60];
                  }
                }

                v57 = [v55 countByEnumeratingWithState:&v835 objects:v871 count:16];
              }

              while (v57);
            }

            v30 = v686;
          }
        }

        v61 = [v30 objectForKeyedSubscript:@"accessTokenBlockedIssuers"];
        if (v61)
        {
          v62 = v61;
          v63 = [v30 objectForKeyedSubscript:@"accessTokenBlockedIssuers"];
          objc_opt_class();
          v64 = objc_opt_isKindOfClass();

          v30 = v686;
          if (v64)
          {
            [v686 objectForKeyedSubscript:@"accessTokenBlockedIssuers"];
            v831 = 0u;
            v832 = 0u;
            v833 = 0u;
            v65 = v834 = 0u;
            v66 = [v65 countByEnumeratingWithState:&v831 objects:v870 count:16];
            if (v66)
            {
              v67 = v66;
              v68 = *v832;
              do
              {
                for (k = 0; k != v67; ++k)
                {
                  if (*v832 != v68)
                  {
                    objc_enumerationMutation(v65);
                  }

                  v70 = *(*(&v831 + 1) + 8 * k);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [(NSPPrivacyProxyAuthenticationInfo *)v694 addAccessTokenBlockedIssuers:v70];
                  }
                }

                v67 = [v65 countByEnumeratingWithState:&v831 objects:v870 count:16];
              }

              while (v67);
            }

            v30 = v686;
          }
        }

        v71 = [v30 objectForKeyedSubscript:@"authType"];
        if (v71)
        {
          v72 = v71;
          v73 = [v30 objectForKeyedSubscript:@"authType"];
          objc_opt_class();
          v74 = objc_opt_isKindOfClass();

          v30 = v686;
          if (v74)
          {
            v75 = [v686 objectForKeyedSubscript:@"authType"];
            if ([v75 isEqualToString:@"UNKNOWN"])
            {
              v76 = 0;
            }

            else if ([v75 isEqualToString:@"BAA"])
            {
              v76 = 1;
            }

            else if ([v75 isEqualToString:@"ANISETTE"])
            {
              v76 = 2;
            }

            else if ([v75 isEqualToString:@"BAA_ANISETTE"])
            {
              v76 = 3;
            }

            else if ([v75 isEqualToString:@"TOKEN"])
            {
              v76 = 4;
            }

            else
            {
              v76 = 0;
            }

            [(NSPPrivacyProxyAuthenticationInfo *)v694 setAuthType:v76];
            v30 = v686;
          }
        }

        v78 = [v30 objectForKeyedSubscript:@"nonDefaultAttesters"];
        if (v78)
        {
          v79 = v78;
          v80 = [v30 objectForKeyedSubscript:@"nonDefaultAttesters"];
          objc_opt_class();
          v81 = objc_opt_isKindOfClass();

          v30 = v686;
          if (v81)
          {
            [v686 objectForKeyedSubscript:@"nonDefaultAttesters"];
            v827 = 0u;
            v828 = 0u;
            v829 = 0u;
            obj = v830 = 0u;
            v82 = [obj countByEnumeratingWithState:&v827 objects:v869 count:16];
            if (v82)
            {
              v83 = v82;
              v84 = *v828;
              v688 = *v828;
              do
              {
                v85 = 0;
                v689 = v83;
                do
                {
                  if (*v828 != v84)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v86 = *(*(&v827 + 1) + 8 * v85);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v691 = v85;
                    v699 = objc_alloc_init(NSPPrivacyProxyTokenAttester);
                    [(NSPPrivacyProxyAuthenticationInfo *)v694 addNonDefaultAttesters:?];
                    v87 = [v86 objectForKeyedSubscript:@"authType"];
                    if (v87)
                    {
                      v88 = v87;
                      v89 = [v86 objectForKeyedSubscript:@"authType"];
                      objc_opt_class();
                      v90 = objc_opt_isKindOfClass();

                      if (v90)
                      {
                        v91 = [v86 objectForKeyedSubscript:@"authType"];
                        if ([v91 isEqualToString:@"UNKNOWN"])
                        {
                          v92 = 0;
                        }

                        else if ([v91 isEqualToString:@"BAA"])
                        {
                          v92 = 1;
                        }

                        else if ([v91 isEqualToString:@"ANISETTE"])
                        {
                          v92 = 2;
                        }

                        else if ([v91 isEqualToString:@"BAA_ANISETTE"])
                        {
                          v92 = 3;
                        }

                        else if ([v91 isEqualToString:@"TOKEN"])
                        {
                          v92 = 4;
                        }

                        else
                        {
                          v92 = 0;
                        }

                        [(NSPPrivacyProxyTokenAttester *)v699 setAuthType:v92];
                      }
                    }

                    v93 = [v86 objectForKeyedSubscript:@"attesterURL"];
                    if (v93)
                    {
                      v94 = v93;
                      v95 = [v86 objectForKeyedSubscript:@"attesterURL"];
                      objc_opt_class();
                      v96 = objc_opt_isKindOfClass();

                      if (v96)
                      {
                        v97 = [v86 objectForKeyedSubscript:@"attesterURL"];
                        [(NSPPrivacyProxyTokenAttester *)v699 setAttesterURL:v97];
                      }
                    }

                    v98 = [v86 objectForKeyedSubscript:@"associatedIssuers"];
                    if (v98)
                    {
                      v99 = v98;
                      v100 = [v86 objectForKeyedSubscript:@"associatedIssuers"];
                      objc_opt_class();
                      v101 = objc_opt_isKindOfClass();

                      if (v101)
                      {
                        v102 = [v86 objectForKeyedSubscript:@"associatedIssuers"];
                        v823 = 0u;
                        v824 = 0u;
                        v825 = 0u;
                        v826 = 0u;
                        v705 = v102;
                        v103 = [v705 countByEnumeratingWithState:&v823 objects:v868 count:16];
                        if (v103)
                        {
                          v104 = v103;
                          v105 = *v824;
                          v697 = *v824;
                          do
                          {
                            v106 = 0;
                            v702 = v104;
                            do
                            {
                              if (*v824 != v105)
                              {
                                objc_enumerationMutation(v705);
                              }

                              v107 = *(*(&v823 + 1) + 8 * v106);
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v711 = v106;
                                v718 = objc_alloc_init(NSPPrivacyProxyTokenIssuer);
                                [(NSPPrivacyProxyTokenAttester *)v699 addAssociatedIssuers:?];
                                v108 = [v107 objectForKeyedSubscript:@"issuerName"];
                                v109 = v107;
                                if (v108)
                                {
                                  v110 = v108;
                                  v111 = [v107 objectForKeyedSubscript:@"issuerName"];
                                  objc_opt_class();
                                  v112 = objc_opt_isKindOfClass();

                                  if (v112)
                                  {
                                    v113 = [v109 objectForKeyedSubscript:@"issuerName"];
                                    [(NSPPrivacyProxyTokenIssuer *)v718 setIssuerName:v113];
                                  }
                                }

                                v114 = [v109 objectForKeyedSubscript:@"tokenKeys"];
                                if (v114)
                                {
                                  v115 = v114;
                                  v116 = [v109 objectForKeyedSubscript:@"tokenKeys"];
                                  objc_opt_class();
                                  v117 = objc_opt_isKindOfClass();

                                  if (v117)
                                  {
                                    v118 = [v109 objectForKeyedSubscript:@"tokenKeys"];
                                    v819 = 0u;
                                    v820 = 0u;
                                    v821 = 0u;
                                    v822 = 0u;
                                    v119 = v118;
                                    v120 = [v119 countByEnumeratingWithState:&v819 objects:v867 count:16];
                                    if (v120)
                                    {
                                      v121 = v120;
                                      v122 = *v820;
                                      do
                                      {
                                        for (m = 0; m != v121; ++m)
                                        {
                                          if (*v820 != v122)
                                          {
                                            objc_enumerationMutation(v119);
                                          }

                                          v124 = *(*(&v819 + 1) + 8 * m);
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v125 = objc_alloc_init(NSPPrivacyProxyTokenKey);
                                            [(NSPPrivacyProxyTokenIssuer *)v718 addTokenKeys:v125];
                                            v126 = [v124 objectForKeyedSubscript:@"key"];
                                            if (v126)
                                            {
                                              v127 = v126;
                                              v128 = [v124 objectForKeyedSubscript:@"key"];
                                              objc_opt_class();
                                              v129 = objc_opt_isKindOfClass();

                                              if (v129)
                                              {
                                                v130 = [v124 objectForKeyedSubscript:@"key"];
                                                [(NSPPrivacyProxyTokenKey *)v125 setKey:v130];
                                              }
                                            }

                                            v131 = [v124 objectForKeyedSubscript:@"expiration"];
                                            if (v131)
                                            {
                                              v132 = v131;
                                              v133 = [v124 objectForKeyedSubscript:@"expiration"];
                                              objc_opt_class();
                                              v134 = objc_opt_isKindOfClass();

                                              if (v134)
                                              {
                                                v135 = [v124 objectForKeyedSubscript:@"expiration"];
                                                -[NSPPrivacyProxyTokenKey setExpiration:](v125, "setExpiration:", [v135 unsignedLongLongValue]);
                                              }
                                            }

                                            v136 = [v124 objectForKeyedSubscript:@"rotation"];
                                            if (v136)
                                            {
                                              v137 = v136;
                                              v138 = [v124 objectForKeyedSubscript:@"rotation"];
                                              objc_opt_class();
                                              v139 = objc_opt_isKindOfClass();

                                              if (v139)
                                              {
                                                v140 = [v124 objectForKeyedSubscript:@"rotation"];
                                                -[NSPPrivacyProxyTokenKey setRotation:](v125, "setRotation:", [v140 unsignedLongLongValue]);
                                              }
                                            }

                                            v141 = [v124 objectForKeyedSubscript:@"tokenType"];
                                            if (v141)
                                            {
                                              v142 = v141;
                                              v143 = [v124 objectForKeyedSubscript:@"tokenType"];
                                              objc_opt_class();
                                              v144 = objc_opt_isKindOfClass();

                                              if (v144)
                                              {
                                                v145 = [v124 objectForKeyedSubscript:@"tokenType"];
                                                -[NSPPrivacyProxyTokenKey setTokenType:](v125, "setTokenType:", [v145 unsignedIntValue]);
                                              }
                                            }

                                            v146 = [v124 objectForKeyedSubscript:@"metadataSize"];
                                            if (v146)
                                            {
                                              v147 = v146;
                                              v148 = [v124 objectForKeyedSubscript:@"metadataSize"];
                                              objc_opt_class();
                                              v149 = objc_opt_isKindOfClass();

                                              if (v149)
                                              {
                                                v150 = [v124 objectForKeyedSubscript:@"metadataSize"];
                                                -[NSPPrivacyProxyTokenKey setMetadataSize:](v125, "setMetadataSize:", [v150 unsignedIntValue]);
                                              }
                                            }
                                          }
                                        }

                                        v121 = [v119 countByEnumeratingWithState:&v819 objects:v867 count:16];
                                      }

                                      while (v121);
                                    }
                                  }
                                }

                                v151 = [v109 objectForKeyedSubscript:@"transparencyKeyBundle"];
                                if (v151)
                                {
                                  v152 = v151;
                                  v153 = [v109 objectForKeyedSubscript:@"transparencyKeyBundle"];
                                  objc_opt_class();
                                  v154 = objc_opt_isKindOfClass();

                                  if (v154)
                                  {
                                    v155 = [v109 objectForKeyedSubscript:@"transparencyKeyBundle"];
                                    [(NSPPrivacyProxyTokenIssuer *)v718 setTransparencyKeyBundle:v155];
                                  }
                                }

                                v156 = [v109 objectForKeyedSubscript:@"transparencyProof"];
                                if (v156)
                                {
                                  v157 = v156;
                                  v158 = [v109 objectForKeyedSubscript:@"transparencyProof"];
                                  objc_opt_class();
                                  v159 = objc_opt_isKindOfClass();

                                  if (v159)
                                  {
                                    v160 = [v109 objectForKeyedSubscript:@"transparencyProof"];
                                    [(NSPPrivacyProxyTokenIssuer *)v718 setTransparencyProof:v160];
                                  }
                                }

                                v161 = [v109 objectForKeyedSubscript:@"transparencyInternalProof"];
                                if (v161)
                                {
                                  v162 = v161;
                                  v163 = [v109 objectForKeyedSubscript:@"transparencyInternalProof"];
                                  objc_opt_class();
                                  v164 = objc_opt_isKindOfClass();

                                  if (v164)
                                  {
                                    v165 = [v109 objectForKeyedSubscript:@"transparencyInternalProof"];
                                    [(NSPPrivacyProxyTokenIssuer *)v718 setTransparencyInternalProof:v165];
                                  }
                                }

                                v105 = v697;
                                v104 = v702;
                                v106 = v711;
                              }

                              ++v106;
                            }

                            while (v106 != v104);
                            v104 = [v705 countByEnumeratingWithState:&v823 objects:v868 count:16];
                          }

                          while (v104);
                        }
                      }
                    }

                    v85 = v691;
                    v8 = v693;
                    v84 = v688;
                    v83 = v689;
                  }

                  ++v85;
                }

                while (v85 != v83);
                v83 = [obj countByEnumeratingWithState:&v827 objects:v869 count:16];
              }

              while (v83);
            }

            v30 = v686;
          }
        }
      }
    }

    v166 = [v8 objectForKeyedSubscript:@"quotaInfo"];
    if (v166)
    {
      v167 = v166;
      v168 = [v8 objectForKeyedSubscript:@"quotaInfo"];
      objc_opt_class();
      v169 = objc_opt_isKindOfClass();

      if (v169)
      {
        v712 = objc_alloc_init(NSPPrivacyProxyQuotaInfo);
        [(NSPPrivacyProxyConfiguration *)v695 setQuotaInfo:?];
        v170 = [v8 objectForKeyedSubscript:@"quotaInfo"];
        v171 = [v170 objectForKeyedSubscript:@"quotaServices"];
        if (v171)
        {
          v172 = v171;
          v173 = [v170 objectForKeyedSubscript:@"quotaServices"];
          objc_opt_class();
          v174 = objc_opt_isKindOfClass();

          if (v174)
          {
            v706 = v170;
            [v170 objectForKeyedSubscript:@"quotaServices"];
            v815 = 0u;
            v816 = 0u;
            v817 = 0u;
            v719 = v818 = 0u;
            v175 = [v719 countByEnumeratingWithState:&v815 objects:v866 count:16];
            v176 = v712;
            if (v175)
            {
              v177 = v175;
              v178 = *v816;
              do
              {
                for (n = 0; n != v177; ++n)
                {
                  if (*v816 != v178)
                  {
                    objc_enumerationMutation(v719);
                  }

                  v180 = *(*(&v815 + 1) + 8 * n);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v181 = objc_alloc_init(NSPPrivacyProxyQuotaService);
                    [(NSPPrivacyProxyQuotaInfo *)v176 addQuotaServices:v181];
                    v182 = [v180 objectForKeyedSubscript:@"serviceURL"];
                    if (v182)
                    {
                      v183 = v182;
                      v184 = [v180 objectForKeyedSubscript:@"serviceURL"];
                      objc_opt_class();
                      v185 = objc_opt_isKindOfClass();

                      if (v185)
                      {
                        v186 = [v180 objectForKeyedSubscript:@"serviceURL"];
                        [(NSPPrivacyProxyQuotaService *)v181 setServiceURL:v186];
                      }
                    }

                    v187 = [v180 objectForKeyedSubscript:@"supportedUseCaseIdentifiers"];
                    if (v187)
                    {
                      v188 = v187;
                      v189 = [v180 objectForKeyedSubscript:@"supportedUseCaseIdentifiers"];
                      objc_opt_class();
                      v190 = objc_opt_isKindOfClass();

                      if (v190)
                      {
                        v191 = [v180 objectForKeyedSubscript:@"supportedUseCaseIdentifiers"];
                        v811 = 0u;
                        v812 = 0u;
                        v813 = 0u;
                        v814 = 0u;
                        v192 = v191;
                        v193 = [v192 countByEnumeratingWithState:&v811 objects:v865 count:16];
                        if (v193)
                        {
                          v194 = v193;
                          v195 = *v812;
                          do
                          {
                            for (ii = 0; ii != v194; ++ii)
                            {
                              if (*v812 != v195)
                              {
                                objc_enumerationMutation(v192);
                              }

                              v197 = *(*(&v811 + 1) + 8 * ii);
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                [(NSPPrivacyProxyQuotaService *)v181 addSupportedUseCaseIdentifiers:v197];
                              }
                            }

                            v194 = [v192 countByEnumeratingWithState:&v811 objects:v865 count:16];
                          }

                          while (v194);
                        }

                        v176 = v712;
                      }
                    }
                  }
                }

                v177 = [v719 countByEnumeratingWithState:&v815 objects:v866 count:16];
              }

              while (v177);
            }

            v8 = v693;
            v170 = v706;
          }
        }
      }
    }

    v198 = [v8 objectForKeyedSubscript:@"policyTierMap"];
    if (v198)
    {
      v199 = v198;
      v200 = [v8 objectForKeyedSubscript:@"policyTierMap"];
      objc_opt_class();
      v201 = objc_opt_isKindOfClass();

      if (v201)
      {
        [v8 objectForKeyedSubscript:@"policyTierMap"];
        v807 = 0u;
        v808 = 0u;
        v809 = 0u;
        v202 = v810 = 0u;
        v203 = [v202 countByEnumeratingWithState:&v807 objects:v864 count:16];
        if (v203)
        {
          v204 = v203;
          v205 = 0x1E7A30000uLL;
          v206 = *v808;
          v700 = v202;
          v707 = *v808;
          do
          {
            v207 = 0;
            v713 = v204;
            do
            {
              if (*v808 != v206)
              {
                objc_enumerationMutation(v202);
              }

              v208 = *(*(&v807 + 1) + 8 * v207);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v720 = objc_alloc_init(*(v205 + 736));
                [(NSPPrivacyProxyConfiguration *)v695 addPolicyTierMap:?];
                v209 = [v208 objectForKeyedSubscript:@"tier"];
                if (v209)
                {
                  v210 = v209;
                  v211 = [v208 objectForKeyedSubscript:@"tier"];
                  objc_opt_class();
                  v212 = objc_opt_isKindOfClass();

                  if (v212)
                  {
                    v213 = [v208 objectForKeyedSubscript:@"tier"];
                    if ([v213 isEqualToString:@"UNKNOWN"])
                    {
                      v214 = 0;
                    }

                    else if ([v213 isEqualToString:@"FREE"])
                    {
                      v214 = 1;
                    }

                    else if ([v213 isEqualToString:@"SUBSCRIBER"])
                    {
                      v214 = 2;
                    }

                    else
                    {
                      v214 = 0;
                    }

                    [v720 setTier:v214];
                  }
                }

                v215 = [v208 objectForKeyedSubscript:@"policy"];
                if (v215)
                {
                  v216 = v215;
                  v217 = [v208 objectForKeyedSubscript:@"policy"];
                  objc_opt_class();
                  v218 = objc_opt_isKindOfClass();

                  if (v218)
                  {
                    v219 = [v208 objectForKeyedSubscript:@"policy"];
                    v220 = [v219 objectForKeyedSubscript:@"conditions"];
                    if (v220)
                    {
                      v221 = v220;
                      v222 = [v219 objectForKeyedSubscript:@"conditions"];
                      objc_opt_class();
                      v223 = objc_opt_isKindOfClass();

                      if (v223)
                      {
                        v224 = v219;
                        v225 = objc_alloc_init(NSPPrivacyProxyPolicy);
                        [v720 setPolicy:v225];
                        v806 = 0u;
                        v805 = 0u;
                        v804 = 0u;
                        v803 = 0u;
                        v703 = v224;
                        v226 = [v224 objectForKeyedSubscript:@"conditions"];
                        v227 = [v226 countByEnumeratingWithState:&v803 objects:v863 count:16];
                        if (v227)
                        {
                          v228 = v227;
                          v229 = *v804;
                          do
                          {
                            for (jj = 0; jj != v228; ++jj)
                            {
                              if (*v804 != v229)
                              {
                                objc_enumerationMutation(v226);
                              }

                              v231 = *(*(&v803 + 1) + 8 * jj);
                              if ([v231 isEqualToString:@"UNKNOWN"])
                              {
                                v232 = 0;
                              }

                              else if ([v231 isEqualToString:@"SAFARI_UNENCRYPTED"])
                              {
                                v232 = 1;
                              }

                              else if ([v231 isEqualToString:@"SAFARI_DNS"])
                              {
                                v232 = 2;
                              }

                              else if ([v231 isEqualToString:@"SAFARI_TRACKER"])
                              {
                                v232 = 3;
                              }

                              else if ([v231 isEqualToString:@"MAIL_TRACKER"])
                              {
                                v232 = 4;
                              }

                              else if ([v231 isEqualToString:@"SAFARI_ALL"])
                              {
                                v232 = 5;
                              }

                              else if ([v231 isEqualToString:@"SAFARI_HTTP"])
                              {
                                v232 = 6;
                              }

                              else if ([v231 isEqualToString:@"ANY_UNENCRYPTED"])
                              {
                                v232 = 7;
                              }

                              else if ([v231 isEqualToString:@"ANY_DNS"])
                              {
                                v232 = 8;
                              }

                              else if ([v231 isEqualToString:@"ANY_KNOWN_TRACKER"])
                              {
                                v232 = 9;
                              }

                              else if ([v231 isEqualToString:@"ANY_APP_TRACKER"])
                              {
                                v232 = 10;
                              }

                              else if ([v231 isEqualToString:@"NEWS_URL_RESOLUTION"])
                              {
                                v232 = 11;
                              }

                              else if ([v231 isEqualToString:@"EXPOSURE_NOTIFICATIONS"])
                              {
                                v232 = 12;
                              }

                              else if ([v231 isEqualToString:@"APPLE_CERTIFICATES"])
                              {
                                v232 = 13;
                              }

                              else if ([v231 isEqualToString:@"NETWORK_TOOLS"])
                              {
                                v232 = 14;
                              }

                              else if ([v231 isEqualToString:@"METRICS_UPLOAD"])
                              {
                                v232 = 15;
                              }

                              else if ([v231 isEqualToString:@"BRANDED_CALLING"])
                              {
                                v232 = 16;
                              }

                              else if ([v231 isEqualToString:@"NEWS_EMBEDDED_CONTENT"])
                              {
                                v232 = 17;
                              }

                              else if ([v231 isEqualToString:@"APP_METRICS"])
                              {
                                v232 = 18;
                              }

                              else if ([v231 isEqualToString:@"SAFARI_PRIVATE_UNENCRYPTED"])
                              {
                                v232 = 19;
                              }

                              else if ([v231 isEqualToString:@"SAFARI_PRIVATE_DNS"])
                              {
                                v232 = 20;
                              }

                              else if ([v231 isEqualToString:@"SAFARI_PRIVATE_ALL"])
                              {
                                v232 = 21;
                              }

                              else if ([v231 isEqualToString:@"SAFARI_METRICS"])
                              {
                                v232 = 22;
                              }

                              else if ([v231 isEqualToString:@"PROMOTED_CONTENT"])
                              {
                                v232 = 23;
                              }

                              else if ([v231 isEqualToString:@"POSTBACK_FETCH"])
                              {
                                v232 = 24;
                              }

                              else if ([v231 isEqualToString:@"PM_PR_ICON_FETCHING"])
                              {
                                v232 = 25;
                              }

                              else if ([v231 isEqualToString:@"LAUNCH_WARNING_DETAILS"])
                              {
                                v232 = 26;
                              }

                              else if ([v231 isEqualToString:@"PODCASTS_LINK_PRESENTATION"])
                              {
                                v232 = 27;
                              }

                              else
                              {
                                v232 = 0;
                              }

                              [(NSPPrivacyProxyPolicy *)v225 addConditions:v232];
                            }

                            v228 = [v226 countByEnumeratingWithState:&v803 objects:v863 count:16];
                          }

                          while (v228);
                        }

                        v202 = v700;
                        v219 = v703;
                        v205 = 0x1E7A30000;
                      }
                    }
                  }
                }

                v206 = v707;
                v204 = v713;
              }

              ++v207;
            }

            while (v207 != v204);
            v204 = [v202 countByEnumeratingWithState:&v807 objects:v864 count:16];
          }

          while (v204);
        }

        v8 = v693;
      }
    }

    v233 = [v8 objectForKeyedSubscript:@"proxies"];
    if (v233)
    {
      v234 = v233;
      v235 = [v8 objectForKeyedSubscript:@"proxies"];
      objc_opt_class();
      v236 = objc_opt_isKindOfClass();

      if (v236)
      {
        v237 = [v8 objectForKeyedSubscript:@"proxies"];
        v799 = 0u;
        v800 = 0u;
        v801 = 0u;
        v802 = 0u;
        v721 = v237;
        v238 = [v721 countByEnumeratingWithState:&v799 objects:v862 count:16];
        if (v238)
        {
          v239 = v238;
          v240 = *v800;
          v708 = *v800;
          do
          {
            v241 = 0;
            v714 = v239;
            do
            {
              if (*v800 != v240)
              {
                objc_enumerationMutation(v721);
              }

              v242 = *(*(&v799 + 1) + 8 * v241);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v243 = objc_alloc_init(NSPPrivacyProxyProxyInfo);
                [(NSPPrivacyProxyConfiguration *)v695 addProxies:v243];
                v244 = [v242 objectForKeyedSubscript:@"proxyHop"];
                if (v244)
                {
                  v245 = v244;
                  v246 = [v242 objectForKeyedSubscript:@"proxyHop"];
                  objc_opt_class();
                  v247 = objc_opt_isKindOfClass();

                  if (v247)
                  {
                    v248 = [v242 objectForKeyedSubscript:@"proxyHop"];
                    if ([v248 isEqualToString:@"UNKNOWN"])
                    {
                      v249 = 0;
                    }

                    else if ([v248 isEqualToString:@"INGRESS_ONLY"])
                    {
                      v249 = 1;
                    }

                    else if ([v248 isEqualToString:@"EGRESS_ONLY"])
                    {
                      v249 = 2;
                    }

                    else if ([v248 isEqualToString:@"ANY"])
                    {
                      v249 = 3;
                    }

                    else
                    {
                      v249 = 0;
                    }

                    [(NSPPrivacyProxyProxyInfo *)v243 setProxyHop:v249];
                  }
                }

                v250 = [v242 objectForKeyedSubscript:@"proxyURL"];
                if (v250)
                {
                  v251 = v250;
                  v252 = [v242 objectForKeyedSubscript:@"proxyURL"];
                  objc_opt_class();
                  v253 = objc_opt_isKindOfClass();

                  if (v253)
                  {
                    v254 = [v242 objectForKeyedSubscript:@"proxyURL"];
                    [(NSPPrivacyProxyProxyInfo *)v243 setProxyURL:v254];
                  }
                }

                v255 = [v242 objectForKeyedSubscript:@"proxyKeyInfo"];
                if (v255)
                {
                  v256 = v255;
                  v257 = [v242 objectForKeyedSubscript:@"proxyKeyInfo"];
                  objc_opt_class();
                  v258 = objc_opt_isKindOfClass();

                  if (v258)
                  {
                    v259 = [v242 objectForKeyedSubscript:@"proxyKeyInfo"];
                    v795 = 0u;
                    v796 = 0u;
                    v797 = 0u;
                    v798 = 0u;
                    v260 = v259;
                    v261 = [v260 countByEnumeratingWithState:&v795 objects:v861 count:16];
                    if (v261)
                    {
                      v262 = v261;
                      v263 = *v796;
                      do
                      {
                        for (kk = 0; kk != v262; ++kk)
                        {
                          if (*v796 != v263)
                          {
                            objc_enumerationMutation(v260);
                          }

                          v265 = *(*(&v795 + 1) + 8 * kk);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [(NSPPrivacyProxyProxyInfo *)v243 addProxyKeyInfo:v265];
                          }
                        }

                        v262 = [v260 countByEnumeratingWithState:&v795 objects:v861 count:16];
                      }

                      while (v262);
                    }
                  }
                }

                v266 = [v242 objectForKeyedSubscript:@"tokenKeyInfo"];
                if (v266)
                {
                  v267 = v266;
                  v268 = [v242 objectForKeyedSubscript:@"tokenKeyInfo"];
                  objc_opt_class();
                  v269 = objc_opt_isKindOfClass();

                  if (v269)
                  {
                    v270 = [v242 objectForKeyedSubscript:@"tokenKeyInfo"];
                    [(NSPPrivacyProxyProxyInfo *)v243 setTokenKeyInfo:v270];
                  }
                }

                v271 = [v242 objectForKeyedSubscript:@"supportsFallback"];
                if (v271)
                {
                  v272 = v271;
                  v273 = [v242 objectForKeyedSubscript:@"supportsFallback"];
                  objc_opt_class();
                  v274 = objc_opt_isKindOfClass();

                  if (v274)
                  {
                    v275 = [v242 objectForKeyedSubscript:@"supportsFallback"];
                    -[NSPPrivacyProxyProxyInfo setSupportsFallback:](v243, "setSupportsFallback:", [v275 BOOLValue]);
                  }
                }

                v276 = [v242 objectForKeyedSubscript:@"vendor"];
                if (v276)
                {
                  v277 = v276;
                  v278 = [v242 objectForKeyedSubscript:@"vendor"];
                  objc_opt_class();
                  v279 = objc_opt_isKindOfClass();

                  if (v279)
                  {
                    v280 = [v242 objectForKeyedSubscript:@"vendor"];
                    [(NSPPrivacyProxyProxyInfo *)v243 setVendor:v280];
                  }
                }

                v281 = [v242 objectForKeyedSubscript:@"tcpProxyFqdn"];
                if (v281)
                {
                  v282 = v281;
                  v283 = [v242 objectForKeyedSubscript:@"tcpProxyFqdn"];
                  objc_opt_class();
                  v284 = objc_opt_isKindOfClass();

                  if (v284)
                  {
                    v285 = [v242 objectForKeyedSubscript:@"tcpProxyFqdn"];
                    [(NSPPrivacyProxyProxyInfo *)v243 setTcpProxyFqdn:v285];
                  }
                }

                v286 = [v242 objectForKeyedSubscript:@"preferredPathConfigUri"];
                if (v286)
                {
                  v287 = v286;
                  v288 = [v242 objectForKeyedSubscript:@"preferredPathConfigUri"];
                  objc_opt_class();
                  v289 = objc_opt_isKindOfClass();

                  if (v289)
                  {
                    v290 = [v242 objectForKeyedSubscript:@"preferredPathConfigUri"];
                    [(NSPPrivacyProxyProxyInfo *)v243 setPreferredPathConfigUri:v290];
                  }
                }

                v291 = [v242 objectForKeyedSubscript:@"proxyVersion"];
                if (v291)
                {
                  v292 = v291;
                  v293 = [v242 objectForKeyedSubscript:@"proxyVersion"];
                  objc_opt_class();
                  v294 = objc_opt_isKindOfClass();

                  if (v294)
                  {
                    v295 = [v242 objectForKeyedSubscript:@"proxyVersion"];
                    [(NSPPrivacyProxyProxyInfo *)v243 setProxyVersion:v295];
                  }
                }

                v296 = [v242 objectForKeyedSubscript:@"supportsResumption"];
                if (v296)
                {
                  v297 = v296;
                  v298 = [v242 objectForKeyedSubscript:@"supportsResumption"];
                  objc_opt_class();
                  v299 = objc_opt_isKindOfClass();

                  if (v299)
                  {
                    v300 = [v242 objectForKeyedSubscript:@"supportsResumption"];
                    -[NSPPrivacyProxyProxyInfo setSupportsResumption:](v243, "setSupportsResumption:", [v300 BOOLValue]);
                  }
                }

                v301 = [v242 objectForKeyedSubscript:@"fallbackSupportsUDPProxying"];
                if (v301)
                {
                  v302 = v301;
                  v303 = [v242 objectForKeyedSubscript:@"fallbackSupportsUDPProxying"];
                  objc_opt_class();
                  v304 = objc_opt_isKindOfClass();

                  if (v304)
                  {
                    v305 = [v242 objectForKeyedSubscript:@"fallbackSupportsUDPProxying"];
                    -[NSPPrivacyProxyProxyInfo setFallbackSupportsUDPProxying:](v243, "setFallbackSupportsUDPProxying:", [v305 BOOLValue]);
                  }
                }

                v306 = [v242 objectForKeyedSubscript:@"bootstrapAddresses"];
                if (v306)
                {
                  v307 = v306;
                  v308 = [v242 objectForKeyedSubscript:@"bootstrapAddresses"];
                  objc_opt_class();
                  v309 = objc_opt_isKindOfClass();

                  if (v309)
                  {
                    v310 = [v242 objectForKeyedSubscript:@"bootstrapAddresses"];
                    v791 = 0u;
                    v792 = 0u;
                    v793 = 0u;
                    v794 = 0u;
                    v311 = v310;
                    v312 = [v311 countByEnumeratingWithState:&v791 objects:v860 count:16];
                    if (v312)
                    {
                      v313 = v312;
                      v314 = *v792;
                      do
                      {
                        for (mm = 0; mm != v313; ++mm)
                        {
                          if (*v792 != v314)
                          {
                            objc_enumerationMutation(v311);
                          }

                          v316 = *(*(&v791 + 1) + 8 * mm);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [(NSPPrivacyProxyProxyInfo *)v243 addBootstrapAddresses:v316];
                          }
                        }

                        v313 = [v311 countByEnumeratingWithState:&v791 objects:v860 count:16];
                      }

                      while (v313);
                    }
                  }
                }

                v317 = [v242 objectForKeyedSubscript:@"allowedNextHops"];
                if (v317)
                {
                  v318 = v317;
                  v319 = [v242 objectForKeyedSubscript:@"allowedNextHops"];
                  objc_opt_class();
                  v320 = objc_opt_isKindOfClass();

                  if (v320)
                  {
                    v321 = [v242 objectForKeyedSubscript:@"allowedNextHops"];
                    v787 = 0u;
                    v788 = 0u;
                    v789 = 0u;
                    v790 = 0u;
                    v322 = v321;
                    v323 = [v322 countByEnumeratingWithState:&v787 objects:v859 count:16];
                    if (v323)
                    {
                      v324 = v323;
                      v325 = *v788;
                      do
                      {
                        for (nn = 0; nn != v324; ++nn)
                        {
                          if (*v788 != v325)
                          {
                            objc_enumerationMutation(v322);
                          }

                          v327 = *(*(&v787 + 1) + 8 * nn);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [(NSPPrivacyProxyProxyInfo *)v243 addAllowedNextHops:v327];
                          }
                        }

                        v324 = [v322 countByEnumeratingWithState:&v787 objects:v859 count:16];
                      }

                      while (v324);
                    }
                  }
                }

                v328 = [v242 objectForKeyedSubscript:@"tokenChallenge"];
                if (v328)
                {
                  v329 = v328;
                  v330 = [v242 objectForKeyedSubscript:@"tokenChallenge"];
                  objc_opt_class();
                  v331 = objc_opt_isKindOfClass();

                  if (v331)
                  {
                    v332 = [v242 objectForKeyedSubscript:@"tokenChallenge"];
                    [(NSPPrivacyProxyProxyInfo *)v243 setTokenChallenge:v332];
                  }
                }

                v333 = [v242 objectForKeyedSubscript:@"preferredPathPatterns"];
                if (v333)
                {
                  v334 = v333;
                  v335 = [v242 objectForKeyedSubscript:@"preferredPathPatterns"];
                  objc_opt_class();
                  v336 = objc_opt_isKindOfClass();

                  if (v336)
                  {
                    v337 = [v242 objectForKeyedSubscript:@"preferredPathPatterns"];
                    v783 = 0u;
                    v784 = 0u;
                    v785 = 0u;
                    v786 = 0u;
                    v338 = v337;
                    v339 = [v338 countByEnumeratingWithState:&v783 objects:v858 count:16];
                    if (v339)
                    {
                      v340 = v339;
                      v341 = *v784;
                      do
                      {
                        for (i1 = 0; i1 != v340; ++i1)
                        {
                          if (*v784 != v341)
                          {
                            objc_enumerationMutation(v338);
                          }

                          v343 = *(*(&v783 + 1) + 8 * i1);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [(NSPPrivacyProxyProxyInfo *)v243 addPreferredPathPatterns:v343];
                          }
                        }

                        v340 = [v338 countByEnumeratingWithState:&v783 objects:v858 count:16];
                      }

                      while (v340);
                    }
                  }
                }

                v344 = [v242 objectForKeyedSubscript:@"algorithm"];
                if (v344)
                {
                  v345 = v344;
                  v346 = [v242 objectForKeyedSubscript:@"algorithm"];
                  objc_opt_class();
                  v347 = objc_opt_isKindOfClass();

                  if (v347)
                  {
                    v348 = [v242 objectForKeyedSubscript:@"algorithm"];
                    if ([v348 isEqualToString:@"NOT_SET"])
                    {
                      v349 = 0;
                    }

                    else if ([v348 isEqualToString:@"P384"])
                    {
                      v349 = 1;
                    }

                    else if ([v348 isEqualToString:@"X25519"])
                    {
                      v349 = 2;
                    }

                    else if ([v348 isEqualToString:@"X25519_MLKEM768"])
                    {
                      v349 = 3;
                    }

                    else
                    {
                      v349 = 0;
                    }

                    [(NSPPrivacyProxyProxyInfo *)v243 setAlgorithm:v349];
                  }
                }

                v350 = [v242 objectForKeyedSubscript:@"proxyIndex"];
                if (v350)
                {
                  v351 = v350;
                  v352 = [v242 objectForKeyedSubscript:@"proxyIndex"];
                  objc_opt_class();
                  v353 = objc_opt_isKindOfClass();

                  if (v353)
                  {
                    v354 = [v242 objectForKeyedSubscript:@"proxyIndex"];
                    -[NSPPrivacyProxyProxyInfo setProxyIndex:](v243, "setProxyIndex:", [v354 unsignedIntValue]);
                  }
                }

                v240 = v708;
                v239 = v714;
              }

              ++v241;
            }

            while (v241 != v239);
            v239 = [v721 countByEnumeratingWithState:&v799 objects:v862 count:16];
          }

          while (v239);
        }

        v8 = v693;
      }
    }

    v355 = [v8 objectForKeyedSubscript:@"pathWeights"];
    if (v355)
    {
      v356 = v355;
      v357 = [v8 objectForKeyedSubscript:@"pathWeights"];
      objc_opt_class();
      v358 = objc_opt_isKindOfClass();

      if (v358)
      {
        v359 = [v8 objectForKeyedSubscript:@"pathWeights"];
        v779 = 0u;
        v780 = 0u;
        v781 = 0u;
        v782 = 0u;
        v360 = v359;
        v361 = [v360 countByEnumeratingWithState:&v779 objects:v857 count:16];
        if (v361)
        {
          v362 = v361;
          v363 = *v780;
          do
          {
            for (i2 = 0; i2 != v362; ++i2)
            {
              if (*v780 != v363)
              {
                objc_enumerationMutation(v360);
              }

              v365 = *(*(&v779 + 1) + 8 * i2);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v366 = objc_alloc_init(NSPPrivacyProxyProxyPathWeight);
                [(NSPPrivacyProxyConfiguration *)v695 addPathWeights:v366];
                v367 = [v365 objectForKeyedSubscript:@"weight"];
                if (v367)
                {
                  v368 = v367;
                  v369 = [v365 objectForKeyedSubscript:@"weight"];
                  objc_opt_class();
                  v370 = objc_opt_isKindOfClass();

                  if (v370)
                  {
                    v371 = [v365 objectForKeyedSubscript:@"weight"];
                    -[NSPPrivacyProxyProxyPathWeight setWeight:](v366, "setWeight:", [v371 unsignedIntValue]);
                  }
                }

                v372 = [v365 objectForKeyedSubscript:@"proxies"];
                if (v372)
                {
                  v373 = v372;
                  v374 = [v365 objectForKeyedSubscript:@"proxies"];
                  objc_opt_class();
                  v375 = objc_opt_isKindOfClass();

                  if (v375)
                  {
                    v376 = [v365 objectForKeyedSubscript:@"proxies"];
                    v775 = 0u;
                    v776 = 0u;
                    v777 = 0u;
                    v778 = 0u;
                    v377 = v376;
                    v378 = [v377 countByEnumeratingWithState:&v775 objects:v856 count:16];
                    if (v378)
                    {
                      v379 = v378;
                      v380 = *v776;
                      do
                      {
                        for (i3 = 0; i3 != v379; ++i3)
                        {
                          if (*v776 != v380)
                          {
                            objc_enumerationMutation(v377);
                          }

                          -[NSPPrivacyProxyProxyPathWeight addProxies:](v366, "addProxies:", [*(*(&v775 + 1) + 8 * i3) unsignedIntValue]);
                        }

                        v379 = [v377 countByEnumeratingWithState:&v775 objects:v856 count:16];
                      }

                      while (v379);
                    }
                  }
                }
              }
            }

            v362 = [v360 countByEnumeratingWithState:&v779 objects:v857 count:16];
          }

          while (v362);
        }

        v8 = v693;
      }
    }

    v382 = [v8 objectForKeyedSubscript:@"resolvers"];
    if (v382)
    {
      v383 = v382;
      v384 = [v8 objectForKeyedSubscript:@"resolvers"];
      objc_opt_class();
      v385 = objc_opt_isKindOfClass();

      if (v385)
      {
        v386 = [v8 objectForKeyedSubscript:@"resolvers"];
        v771 = 0u;
        v772 = 0u;
        v773 = 0u;
        v774 = 0u;
        v722 = v386;
        v387 = [v722 countByEnumeratingWithState:&v771 objects:v855 count:16];
        if (v387)
        {
          v388 = v387;
          v389 = *v772;
          do
          {
            v390 = 0;
            v715 = v388;
            do
            {
              if (*v772 != v389)
              {
                objc_enumerationMutation(v722);
              }

              v391 = *(*(&v771 + 1) + 8 * v390);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v392 = objc_alloc_init(NSPPrivacyProxyResolverInfo);
                [(NSPPrivacyProxyConfiguration *)v695 addResolvers:v392];
                v393 = [v391 objectForKeyedSubscript:@"dohURL"];
                if (v393)
                {
                  v394 = v393;
                  v395 = [v391 objectForKeyedSubscript:@"dohURL"];
                  objc_opt_class();
                  v396 = objc_opt_isKindOfClass();

                  if (v396)
                  {
                    v397 = [v391 objectForKeyedSubscript:@"dohURL"];
                    [(NSPPrivacyProxyResolverInfo *)v392 setDohURL:v397];
                  }
                }

                v398 = [v391 objectForKeyedSubscript:@"obliviousDoHConfig"];
                if (v398)
                {
                  v399 = v398;
                  v400 = [v391 objectForKeyedSubscript:@"obliviousDoHConfig"];
                  objc_opt_class();
                  v401 = objc_opt_isKindOfClass();

                  if (v401)
                  {
                    v402 = [v391 objectForKeyedSubscript:@"obliviousDoHConfig"];
                    [(NSPPrivacyProxyResolverInfo *)v392 setObliviousDoHConfig:v402];
                  }
                }

                v403 = [v391 objectForKeyedSubscript:@"weight"];
                if (v403)
                {
                  v404 = v403;
                  v405 = [v391 objectForKeyedSubscript:@"weight"];
                  objc_opt_class();
                  v406 = objc_opt_isKindOfClass();

                  if (v406)
                  {
                    v407 = [v391 objectForKeyedSubscript:@"weight"];
                    -[NSPPrivacyProxyResolverInfo setWeight:](v392, "setWeight:", [v407 unsignedIntValue]);
                  }
                }

                v408 = [v391 objectForKeyedSubscript:@"proxyIndex"];
                v388 = v715;
                if (v408)
                {
                  v409 = v408;
                  v410 = [v391 objectForKeyedSubscript:@"proxyIndex"];
                  objc_opt_class();
                  v411 = objc_opt_isKindOfClass();

                  if (v411)
                  {
                    v412 = [v391 objectForKeyedSubscript:@"proxyIndex"];
                    -[NSPPrivacyProxyResolverInfo setProxyIndex:](v392, "setProxyIndex:", [v412 unsignedIntValue]);
                  }
                }
              }

              ++v390;
            }

            while (v388 != v390);
            v388 = [v722 countByEnumeratingWithState:&v771 objects:v855 count:16];
          }

          while (v388);
        }

        v8 = v693;
      }
    }

    v413 = [v8 objectForKeyedSubscript:@"bootstrapResolver"];
    if (v413)
    {
      v414 = v413;
      v415 = [v8 objectForKeyedSubscript:@"bootstrapResolver"];
      objc_opt_class();
      v416 = objc_opt_isKindOfClass();

      if (v416)
      {
        v417 = [v8 objectForKeyedSubscript:@"bootstrapResolver"];
        v418 = objc_alloc_init(NSPPrivacyProxyResolverInfo);
        v419 = [v417 objectForKeyedSubscript:@"dohURL"];
        if (v419)
        {
          v420 = v419;
          v421 = [v417 objectForKeyedSubscript:@"dohURL"];
          objc_opt_class();
          v422 = objc_opt_isKindOfClass();

          if (v422)
          {
            v423 = [v417 objectForKeyedSubscript:@"dohURL"];
            [(NSPPrivacyProxyResolverInfo *)v418 setDohURL:v423];
          }
        }

        v424 = [v417 objectForKeyedSubscript:@"obliviousDoHConfig"];
        if (v424)
        {
          v425 = v424;
          v426 = [v417 objectForKeyedSubscript:@"obliviousDoHConfig"];
          objc_opt_class();
          v427 = objc_opt_isKindOfClass();

          if (v427)
          {
            v428 = [v417 objectForKeyedSubscript:@"obliviousDoHConfig"];
            [(NSPPrivacyProxyResolverInfo *)v418 setObliviousDoHConfig:v428];
          }
        }

        v429 = [v417 objectForKeyedSubscript:@"weight"];
        if (v429)
        {
          v430 = v429;
          v431 = [v417 objectForKeyedSubscript:@"weight"];
          objc_opt_class();
          v432 = objc_opt_isKindOfClass();

          if (v432)
          {
            v433 = [v417 objectForKeyedSubscript:@"weight"];
            -[NSPPrivacyProxyResolverInfo setWeight:](v418, "setWeight:", [v433 unsignedIntValue]);
          }
        }

        v434 = [v417 objectForKeyedSubscript:@"proxyIndex"];
        if (v434)
        {
          v435 = v434;
          v436 = [v417 objectForKeyedSubscript:@"proxyIndex"];
          objc_opt_class();
          v437 = objc_opt_isKindOfClass();

          if (v437)
          {
            v438 = [v417 objectForKeyedSubscript:@"proxyIndex"];
            -[NSPPrivacyProxyResolverInfo setProxyIndex:](v418, "setProxyIndex:", [v438 unsignedIntValue]);
          }
        }

        [(NSPPrivacyProxyConfiguration *)v695 setBootstrapResolver:v418];
      }
    }

    v439 = [v8 objectForKeyedSubscript:@"dnsProbe"];
    if (v439)
    {
      v440 = v439;
      v441 = [v8 objectForKeyedSubscript:@"dnsProbe"];
      objc_opt_class();
      v442 = objc_opt_isKindOfClass();

      if (v442)
      {
        v443 = [v8 objectForKeyedSubscript:@"dnsProbe"];
        [(NSPPrivacyProxyConfiguration *)v695 setDnsProbe:v443];
      }
    }

    v444 = [v8 objectForKeyedSubscript:@"obliviousConfigs"];
    if (v444)
    {
      v445 = v444;
      v446 = [v8 objectForKeyedSubscript:@"obliviousConfigs"];
      objc_opt_class();
      v447 = objc_opt_isKindOfClass();

      if (v447)
      {
        v448 = v8;
        v449 = [v8 objectForKeyedSubscript:@"obliviousConfigs"];
        v767 = 0u;
        v768 = 0u;
        v769 = 0u;
        v770 = 0u;
        v450 = v449;
        v451 = [v450 countByEnumeratingWithState:&v767 objects:v854 count:16];
        if (v451)
        {
          v452 = v451;
          v453 = 0x1E7A30000uLL;
          v454 = *v768;
          v455 = @"proxyURLPath";
          v692 = v450;
          v696 = *v768;
          do
          {
            v456 = 0;
            v698 = v452;
            do
            {
              if (*v768 != v454)
              {
                objc_enumerationMutation(v450);
              }

              v701 = v456;
              v457 = *(*(&v767 + 1) + 8 * v456);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v709 = objc_alloc_init(*(v453 + 712));
                [(NSPPrivacyProxyConfiguration *)v695 addObliviousConfigs:?];
                v458 = [v457 objectForKeyedSubscript:@"obliviousHTTPConfig"];
                if (v458)
                {
                  v459 = v458;
                  v460 = [v457 objectForKeyedSubscript:@"obliviousHTTPConfig"];
                  objc_opt_class();
                  v461 = objc_opt_isKindOfClass();

                  if (v461)
                  {
                    v462 = [v457 objectForKeyedSubscript:@"obliviousHTTPConfig"];
                    [v709 setObliviousHTTPConfig:v462];
                  }
                }

                v463 = [v457 objectForKeyedSubscript:@"obliviousHTTPType"];
                if (v463)
                {
                  v464 = v463;
                  v465 = [v457 objectForKeyedSubscript:@"obliviousHTTPType"];
                  objc_opt_class();
                  v466 = objc_opt_isKindOfClass();

                  if (v466)
                  {
                    v467 = [v457 objectForKeyedSubscript:@"obliviousHTTPType"];
                    if ([v467 isEqualToString:@"DEFAULT"])
                    {
                      v468 = 0;
                    }

                    else if ([v467 isEqualToString:@"CHUNKED"])
                    {
                      v468 = 1;
                    }

                    else if ([v467 isEqualToString:@"CONTEXT"])
                    {
                      v468 = 2;
                    }

                    else
                    {
                      v468 = 0;
                    }

                    [v709 setObliviousHTTPType:v468];
                  }
                }

                v469 = [v457 objectForKeyedSubscript:@"transparencyKeyBundle"];
                if (v469)
                {
                  v470 = v469;
                  v471 = [v457 objectForKeyedSubscript:@"transparencyKeyBundle"];
                  objc_opt_class();
                  v472 = objc_opt_isKindOfClass();

                  if (v472)
                  {
                    v473 = [v457 objectForKeyedSubscript:@"transparencyKeyBundle"];
                    [v709 setTransparencyKeyBundle:v473];
                  }
                }

                v474 = [v457 objectForKeyedSubscript:@"transparencyProof"];
                if (v474)
                {
                  v475 = v474;
                  v476 = [v457 objectForKeyedSubscript:@"transparencyProof"];
                  objc_opt_class();
                  v477 = objc_opt_isKindOfClass();

                  if (v477)
                  {
                    v478 = [v457 objectForKeyedSubscript:@"transparencyProof"];
                    [v709 setTransparencyProof:v478];
                  }
                }

                v479 = [v457 objectForKeyedSubscript:@"transparencyInternalProof"];
                if (v479)
                {
                  v480 = v479;
                  v481 = [v457 objectForKeyedSubscript:@"transparencyInternalProof"];
                  objc_opt_class();
                  v482 = objc_opt_isKindOfClass();

                  if (v482)
                  {
                    v483 = [v457 objectForKeyedSubscript:@"transparencyInternalProof"];
                    [v709 setTransparencyInternalProof:v483];
                  }
                }

                v484 = [v457 objectForKeyedSubscript:@"obliviousTargets"];
                if (v484)
                {
                  v485 = v484;
                  v486 = [v457 objectForKeyedSubscript:@"obliviousTargets"];
                  objc_opt_class();
                  v487 = objc_opt_isKindOfClass();

                  if (v487)
                  {
                    v488 = [v457 objectForKeyedSubscript:@"obliviousTargets"];
                    v763 = 0u;
                    v764 = 0u;
                    v765 = 0u;
                    v766 = 0u;
                    v723 = v488;
                    v489 = [v723 countByEnumeratingWithState:&v763 objects:v853 count:16];
                    if (v489)
                    {
                      v490 = v489;
                      v491 = *v764;
                      v704 = *v764;
                      do
                      {
                        v492 = 0;
                        v716 = v490;
                        do
                        {
                          if (*v764 != v491)
                          {
                            objc_enumerationMutation(v723);
                          }

                          v493 = *(*(&v763 + 1) + 8 * v492);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v494 = v455;
                            v495 = objc_alloc_init(NSPPrivacyProxyObliviousTargetInfo);
                            [v709 addObliviousTargets:v495];
                            v496 = [v493 objectForKeyedSubscript:@"targetHost"];
                            if (v496)
                            {
                              v497 = v496;
                              v498 = [v493 objectForKeyedSubscript:@"targetHost"];
                              objc_opt_class();
                              v499 = objc_opt_isKindOfClass();

                              if (v499)
                              {
                                v500 = [v493 objectForKeyedSubscript:@"targetHost"];
                                [(NSPPrivacyProxyObliviousTargetInfo *)v495 setTargetHost:v500];
                              }
                            }

                            v501 = [v493 objectForKeyedSubscript:v494];
                            if (v501)
                            {
                              v502 = v501;
                              v503 = [v493 objectForKeyedSubscript:v494];
                              objc_opt_class();
                              v504 = objc_opt_isKindOfClass();

                              if (v504)
                              {
                                v505 = [v493 objectForKeyedSubscript:v494];
                                [(NSPPrivacyProxyObliviousTargetInfo *)v495 setProxyURLPath:v505];
                              }
                            }

                            v506 = [v493 objectForKeyedSubscript:@"proxyIndex"];
                            if (v506)
                            {
                              v507 = v506;
                              v508 = [v493 objectForKeyedSubscript:@"proxyIndex"];
                              objc_opt_class();
                              v509 = objc_opt_isKindOfClass();

                              if (v509)
                              {
                                v510 = [v493 objectForKeyedSubscript:@"proxyIndex"];
                                -[NSPPrivacyProxyObliviousTargetInfo setProxyIndex:](v495, "setProxyIndex:", [v510 unsignedIntValue]);
                              }
                            }

                            v511 = [v493 objectForKeyedSubscript:@"weight"];
                            if (v511)
                            {
                              v512 = v511;
                              v513 = [v493 objectForKeyedSubscript:@"weight"];
                              objc_opt_class();
                              v514 = objc_opt_isKindOfClass();

                              if (v514)
                              {
                                v515 = [v493 objectForKeyedSubscript:@"weight"];
                                -[NSPPrivacyProxyObliviousTargetInfo setWeight:](v495, "setWeight:", [v515 unsignedIntValue]);
                              }
                            }

                            v516 = [v493 objectForKeyedSubscript:@"processes"];
                            if (v516)
                            {
                              v517 = v516;
                              v518 = [v493 objectForKeyedSubscript:@"processes"];
                              objc_opt_class();
                              v519 = objc_opt_isKindOfClass();

                              if (v519)
                              {
                                v520 = [v493 objectForKeyedSubscript:@"processes"];
                                v759 = 0u;
                                v760 = 0u;
                                v761 = 0u;
                                v762 = 0u;
                                v521 = v520;
                                v522 = [v521 countByEnumeratingWithState:&v759 objects:v852 count:16];
                                if (v522)
                                {
                                  v523 = v522;
                                  v524 = *v760;
                                  do
                                  {
                                    for (i4 = 0; i4 != v523; ++i4)
                                    {
                                      if (*v760 != v524)
                                      {
                                        objc_enumerationMutation(v521);
                                      }

                                      v526 = *(*(&v759 + 1) + 8 * i4);
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        [(NSPPrivacyProxyObliviousTargetInfo *)v495 addProcesses:v526];
                                      }
                                    }

                                    v523 = [v521 countByEnumeratingWithState:&v759 objects:v852 count:16];
                                  }

                                  while (v523);
                                }
                              }
                            }

                            v455 = v494;
                            v491 = v704;
                            v490 = v716;
                          }

                          ++v492;
                        }

                        while (v492 != v490);
                        v490 = [v723 countByEnumeratingWithState:&v763 objects:v853 count:16];
                      }

                      while (v490);
                    }

                    v450 = v692;
                    v448 = v693;
                    v453 = 0x1E7A30000;
                  }
                }

                v454 = v696;
                v452 = v698;
              }

              v456 = v701 + 1;
            }

            while (v701 + 1 != v452);
            v452 = [v450 countByEnumeratingWithState:&v767 objects:v854 count:16];
          }

          while (v452);
        }

        v8 = v448;
      }
    }

    v527 = [v8 objectForKeyedSubscript:@"preferredPathEnabledPercentage"];
    if (v527)
    {
      v528 = v527;
      v529 = [v8 objectForKeyedSubscript:@"preferredPathEnabledPercentage"];
      objc_opt_class();
      v530 = objc_opt_isKindOfClass();

      if (v530)
      {
        v531 = [v8 objectForKeyedSubscript:@"preferredPathEnabledPercentage"];
        -[NSPPrivacyProxyConfiguration setPreferredPathEnabledPercentage:](v695, "setPreferredPathEnabledPercentage:", [v531 unsignedIntValue]);
      }
    }

    v532 = [v8 objectForKeyedSubscript:@"proxiedContentMaps"];
    if (v532)
    {
      v533 = v532;
      v534 = [v8 objectForKeyedSubscript:@"proxiedContentMaps"];
      objc_opt_class();
      v535 = objc_opt_isKindOfClass();

      if (v535)
      {
        v536 = [v8 objectForKeyedSubscript:@"proxiedContentMaps"];
        v755 = 0u;
        v756 = 0u;
        v757 = 0u;
        v758 = 0u;
        v724 = v536;
        v537 = [v724 countByEnumeratingWithState:&v755 objects:v851 count:16];
        if (v537)
        {
          v538 = v537;
          v539 = @"systemProcessOnly";
          v540 = *v756;
          v710 = *v756;
          do
          {
            v541 = 0;
            v717 = v538;
            do
            {
              if (*v756 != v540)
              {
                objc_enumerationMutation(v724);
              }

              v542 = *(*(&v755 + 1) + 8 * v541);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v543 = v539;
                v544 = objc_alloc_init(NSPPrivacyProxyProxiedContentMap);
                [(NSPPrivacyProxyConfiguration *)v695 addProxiedContentMaps:v544];
                v545 = [v542 objectForKeyedSubscript:@"enabled"];
                if (v545)
                {
                  v546 = v545;
                  v547 = [v542 objectForKeyedSubscript:@"enabled"];
                  objc_opt_class();
                  v548 = objc_opt_isKindOfClass();

                  if (v548)
                  {
                    v549 = [v542 objectForKeyedSubscript:@"enabled"];
                    -[NSPPrivacyProxyProxiedContentMap setEnabled:](v544, "setEnabled:", [v549 BOOLValue]);
                  }
                }

                v550 = [v542 objectForKeyedSubscript:v539];
                if (v550)
                {
                  v551 = v550;
                  v552 = [v542 objectForKeyedSubscript:v539];
                  objc_opt_class();
                  v553 = objc_opt_isKindOfClass();

                  if (v553)
                  {
                    v554 = [v542 objectForKeyedSubscript:v539];
                    -[NSPPrivacyProxyProxiedContentMap setSystemProcessOnly:](v544, "setSystemProcessOnly:", [v554 BOOLValue]);
                  }
                }

                v555 = [v542 objectForKeyedSubscript:@"supportsReverseProxying"];
                if (v555)
                {
                  v556 = v555;
                  v557 = [v542 objectForKeyedSubscript:@"supportsReverseProxying"];
                  objc_opt_class();
                  v558 = objc_opt_isKindOfClass();

                  if (v558)
                  {
                    v559 = [v542 objectForKeyedSubscript:@"supportsReverseProxying"];
                    -[NSPPrivacyProxyProxiedContentMap setSupportsReverseProxying:](v544, "setSupportsReverseProxying:", [v559 BOOLValue]);
                  }
                }

                v560 = [v542 objectForKeyedSubscript:@"percentEnabled"];
                if (v560)
                {
                  v561 = v560;
                  v562 = [v542 objectForKeyedSubscript:@"percentEnabled"];
                  objc_opt_class();
                  v563 = objc_opt_isKindOfClass();

                  if (v563)
                  {
                    v564 = [v542 objectForKeyedSubscript:@"percentEnabled"];
                    -[NSPPrivacyProxyProxiedContentMap setPercentEnabled:](v544, "setPercentEnabled:", [v564 unsignedIntValue]);
                  }
                }

                v565 = [v542 objectForKeyedSubscript:@"resolver"];
                if (v565)
                {
                  v566 = v565;
                  v567 = [v542 objectForKeyedSubscript:@"resolver"];
                  objc_opt_class();
                  v568 = objc_opt_isKindOfClass();

                  if (v568)
                  {
                    v569 = [v542 objectForKeyedSubscript:@"resolver"];
                    -[NSPPrivacyProxyProxiedContentMap setResolver:](v544, "setResolver:", [v569 unsignedIntValue]);
                  }
                }

                v570 = [v542 objectForKeyedSubscript:@"identifier"];
                if (v570)
                {
                  v571 = v570;
                  v572 = [v542 objectForKeyedSubscript:@"identifier"];
                  objc_opt_class();
                  v573 = objc_opt_isKindOfClass();

                  if (v573)
                  {
                    v574 = [v542 objectForKeyedSubscript:@"identifier"];
                    [(NSPPrivacyProxyProxiedContentMap *)v544 setIdentifier:v574];
                  }
                }

                v575 = [v542 objectForKeyedSubscript:@"proxies"];
                if (v575)
                {
                  v576 = v575;
                  v577 = [v542 objectForKeyedSubscript:@"proxies"];
                  objc_opt_class();
                  v578 = objc_opt_isKindOfClass();

                  if (v578)
                  {
                    v579 = [v542 objectForKeyedSubscript:@"proxies"];
                    v751 = 0u;
                    v752 = 0u;
                    v753 = 0u;
                    v754 = 0u;
                    v580 = v579;
                    v581 = [v580 countByEnumeratingWithState:&v751 objects:v850 count:16];
                    if (v581)
                    {
                      v582 = v581;
                      v583 = *v752;
                      do
                      {
                        for (i5 = 0; i5 != v582; ++i5)
                        {
                          if (*v752 != v583)
                          {
                            objc_enumerationMutation(v580);
                          }

                          v585 = *(*(&v751 + 1) + 8 * i5);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            -[NSPPrivacyProxyProxiedContentMap addProxies:](v544, "addProxies:", [v585 unsignedIntValue]);
                          }
                        }

                        v582 = [v580 countByEnumeratingWithState:&v751 objects:v850 count:16];
                      }

                      while (v582);
                    }

                    v539 = v543;
                  }
                }

                v586 = [v542 objectForKeyedSubscript:@"hostnames"];
                if (v586)
                {
                  v587 = v586;
                  v588 = [v542 objectForKeyedSubscript:@"hostnames"];
                  objc_opt_class();
                  v589 = objc_opt_isKindOfClass();

                  if (v589)
                  {
                    v590 = [v542 objectForKeyedSubscript:@"hostnames"];
                    v747 = 0u;
                    v748 = 0u;
                    v749 = 0u;
                    v750 = 0u;
                    v591 = v590;
                    v592 = [v591 countByEnumeratingWithState:&v747 objects:v849 count:16];
                    if (v592)
                    {
                      v593 = v592;
                      v594 = *v748;
                      do
                      {
                        for (i6 = 0; i6 != v593; ++i6)
                        {
                          if (*v748 != v594)
                          {
                            objc_enumerationMutation(v591);
                          }

                          v596 = *(*(&v747 + 1) + 8 * i6);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [(NSPPrivacyProxyProxiedContentMap *)v544 addHostnames:v596];
                          }
                        }

                        v593 = [v591 countByEnumeratingWithState:&v747 objects:v849 count:16];
                      }

                      while (v593);
                    }

                    v539 = v543;
                  }
                }

                v597 = [v542 objectForKeyedSubscript:@"processes"];
                if (v597)
                {
                  v598 = v597;
                  v599 = [v542 objectForKeyedSubscript:@"processes"];
                  objc_opt_class();
                  v600 = objc_opt_isKindOfClass();

                  if (v600)
                  {
                    v601 = [v542 objectForKeyedSubscript:@"processes"];
                    v743 = 0u;
                    v744 = 0u;
                    v745 = 0u;
                    v746 = 0u;
                    v602 = v601;
                    v603 = [v602 countByEnumeratingWithState:&v743 objects:v848 count:16];
                    if (v603)
                    {
                      v604 = v603;
                      v605 = *v744;
                      do
                      {
                        for (i7 = 0; i7 != v604; ++i7)
                        {
                          if (*v744 != v605)
                          {
                            objc_enumerationMutation(v602);
                          }

                          v607 = *(*(&v743 + 1) + 8 * i7);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [(NSPPrivacyProxyProxiedContentMap *)v544 addProcesses:v607];
                          }
                        }

                        v604 = [v602 countByEnumeratingWithState:&v743 objects:v848 count:16];
                      }

                      while (v604);
                    }

                    v539 = v543;
                  }
                }

                v608 = [v542 objectForKeyedSubscript:@"urls"];
                if (v608)
                {
                  v609 = v608;
                  v610 = [v542 objectForKeyedSubscript:@"urls"];
                  objc_opt_class();
                  v611 = objc_opt_isKindOfClass();

                  if (v611)
                  {
                    v612 = [v542 objectForKeyedSubscript:@"urls"];
                    v739 = 0u;
                    v740 = 0u;
                    v741 = 0u;
                    v742 = 0u;
                    v613 = v612;
                    v614 = [v613 countByEnumeratingWithState:&v739 objects:v847 count:16];
                    if (v614)
                    {
                      v615 = v614;
                      v616 = *v740;
                      do
                      {
                        for (i8 = 0; i8 != v615; ++i8)
                        {
                          if (*v740 != v616)
                          {
                            objc_enumerationMutation(v613);
                          }

                          v618 = *(*(&v739 + 1) + 8 * i8);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [(NSPPrivacyProxyProxiedContentMap *)v544 addUrls:v618];
                          }
                        }

                        v615 = [v613 countByEnumeratingWithState:&v739 objects:v847 count:16];
                      }

                      while (v615);
                    }

                    v539 = v543;
                  }
                }

                v619 = [v542 objectForKeyedSubscript:@"matchExactHostnames"];
                if (v619)
                {
                  v620 = v619;
                  v621 = [v542 objectForKeyedSubscript:@"matchExactHostnames"];
                  objc_opt_class();
                  v622 = objc_opt_isKindOfClass();

                  if (v622)
                  {
                    v623 = [v542 objectForKeyedSubscript:@"matchExactHostnames"];
                    -[NSPPrivacyProxyProxiedContentMap setMatchExactHostnames:](v544, "setMatchExactHostnames:", [v623 BOOLValue]);
                  }
                }

                v624 = [v542 objectForKeyedSubscript:@"isPrivacyProxy"];
                v538 = v717;
                if (v624)
                {
                  v625 = v624;
                  v626 = [v542 objectForKeyedSubscript:@"isPrivacyProxy"];
                  objc_opt_class();
                  v627 = objc_opt_isKindOfClass();

                  if (v627)
                  {
                    v628 = [v542 objectForKeyedSubscript:@"isPrivacyProxy"];
                    -[NSPPrivacyProxyProxiedContentMap setIsPrivacyProxy:](v544, "setIsPrivacyProxy:", [v628 BOOLValue]);
                  }
                }

                v540 = v710;
              }

              ++v541;
            }

            while (v541 != v538);
            v538 = [v724 countByEnumeratingWithState:&v755 objects:v851 count:16];
          }

          while (v538);
        }

        v8 = v693;
      }
    }

    v629 = [v8 objectForKeyedSubscript:@"maxTokenNum"];
    if (v629)
    {
      v630 = v629;
      v631 = [v8 objectForKeyedSubscript:@"maxTokenNum"];
      objc_opt_class();
      v632 = objc_opt_isKindOfClass();

      if (v632)
      {
        v633 = [v8 objectForKeyedSubscript:@"maxTokenNum"];
        -[NSPPrivacyProxyConfiguration setMaxTokenNum:](v695, "setMaxTokenNum:", [v633 unsignedIntValue]);
      }
    }

    v634 = [v8 objectForKeyedSubscript:@"regionId"];
    if (v634)
    {
      v635 = v634;
      v636 = [v8 objectForKeyedSubscript:@"regionId"];
      objc_opt_class();
      v637 = objc_opt_isKindOfClass();

      if (v637)
      {
        v638 = [v8 objectForKeyedSubscript:@"regionId"];
        [(NSPPrivacyProxyConfiguration *)v695 setRegionId:v638];
      }
    }

    v639 = [v8 objectForKeyedSubscript:@"fallbackPathWeights"];
    if (v639)
    {
      v640 = v639;
      v641 = [v8 objectForKeyedSubscript:@"fallbackPathWeights"];
      objc_opt_class();
      v642 = objc_opt_isKindOfClass();

      if (v642)
      {
        v643 = [v8 objectForKeyedSubscript:@"fallbackPathWeights"];
        v735 = 0u;
        v736 = 0u;
        v737 = 0u;
        v738 = 0u;
        v644 = v643;
        v645 = [v644 countByEnumeratingWithState:&v735 objects:v846 count:16];
        if (v645)
        {
          v646 = v645;
          v647 = *v736;
          do
          {
            for (i9 = 0; i9 != v646; ++i9)
            {
              if (*v736 != v647)
              {
                objc_enumerationMutation(v644);
              }

              v649 = *(*(&v735 + 1) + 8 * i9);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v650 = objc_alloc_init(NSPPrivacyProxyProxyPathWeight);
                [(NSPPrivacyProxyConfiguration *)v695 addFallbackPathWeights:v650];
                v651 = [v649 objectForKeyedSubscript:@"weight"];
                if (v651)
                {
                  v652 = v651;
                  v653 = [v649 objectForKeyedSubscript:@"weight"];
                  objc_opt_class();
                  v654 = objc_opt_isKindOfClass();

                  if (v654)
                  {
                    v655 = [v649 objectForKeyedSubscript:@"weight"];
                    -[NSPPrivacyProxyProxyPathWeight setWeight:](v650, "setWeight:", [v655 unsignedIntValue]);
                  }
                }

                v656 = [v649 objectForKeyedSubscript:@"proxies"];
                if (v656)
                {
                  v657 = v656;
                  v658 = [v649 objectForKeyedSubscript:@"proxies"];
                  objc_opt_class();
                  v659 = objc_opt_isKindOfClass();

                  if (v659)
                  {
                    v660 = [v649 objectForKeyedSubscript:@"proxies"];
                    v731 = 0u;
                    v732 = 0u;
                    v733 = 0u;
                    v734 = 0u;
                    v661 = v660;
                    v662 = [v661 countByEnumeratingWithState:&v731 objects:v845 count:16];
                    if (v662)
                    {
                      v663 = v662;
                      v664 = *v732;
                      do
                      {
                        for (i10 = 0; i10 != v663; ++i10)
                        {
                          if (*v732 != v664)
                          {
                            objc_enumerationMutation(v661);
                          }

                          -[NSPPrivacyProxyProxyPathWeight addProxies:](v650, "addProxies:", [*(*(&v731 + 1) + 8 * i10) unsignedIntValue]);
                        }

                        v663 = [v661 countByEnumeratingWithState:&v731 objects:v845 count:16];
                      }

                      while (v663);
                    }
                  }
                }
              }
            }

            v646 = [v644 countByEnumeratingWithState:&v735 objects:v846 count:16];
          }

          while (v646);
        }

        v8 = v693;
      }
    }

    v666 = [v8 objectForKeyedSubscript:@"trustedNetworkDiscoveredProxies"];
    if (v666)
    {
      v667 = v666;
      v668 = [v8 objectForKeyedSubscript:@"trustedNetworkDiscoveredProxies"];
      objc_opt_class();
      v669 = objc_opt_isKindOfClass();

      if (v669)
      {
        [v8 objectForKeyedSubscript:@"trustedNetworkDiscoveredProxies"];
        v727 = 0u;
        v728 = 0u;
        v729 = 0u;
        v670 = v730 = 0u;
        v671 = [v670 countByEnumeratingWithState:&v727 objects:v844 count:16];
        if (v671)
        {
          v672 = v671;
          v673 = *v728;
          do
          {
            for (i11 = 0; i11 != v672; ++i11)
            {
              if (*v728 != v673)
              {
                objc_enumerationMutation(v670);
              }

              [(NSPPrivacyProxyConfiguration *)v695 addTrustedNetworkDiscoveredProxies:*(*(&v727 + 1) + 8 * i11)];
            }

            v672 = [v670 countByEnumeratingWithState:&v727 objects:v844 count:16];
          }

          while (v672);
        }
      }
    }

    data = [(NSPPrivacyProxyConfiguration *)v695 data];
    getConnection = [(NSPServerClient *)selfa getConnection];
    if (getConnection)
    {
      v677 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v677, "NSPServerCommandType", 16);
      if (data)
      {
        v679 = v677;
        v680 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v679, "NSPServerConfiguration", v680);
      }

      Property = selfa;
      if (selfa)
      {
        Property = objc_getProperty(selfa, v678, 16, 1);
      }

      v682 = Property;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __66__NSPServerClient_setPrivacyProxyConfiguration_completionHandler___block_invoke;
      handler[3] = &unk_1E7A30920;
      v726 = v685;
      xpc_connection_send_message_with_reply(getConnection, v677, v682, handler);

      v9 = v685;
    }

    else
    {
      v683 = nplog_obj();
      if (os_log_type_enabled(v683, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1AE7E2000, v683, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
      }

      v9 = v685;
      (v685)[2](v685, @"IPC failed");
    }
  }

  else
  {
    v77 = nplog_obj();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v77, OS_LOG_TYPE_ERROR, "Failed to set the NSP configuration: configuration parameter is invalid", buf, 2u);
    }

    v9[2](v9, @"invalid config dictionary");
  }
}

void __66__NSPServerClient_setPrivacyProxyConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  if (xdict && MEMORY[0x1B2708030]() == MEMORY[0x1E69E9E80])
  {
    string = xpc_dictionary_get_string(xdict, "NSPServerErrorString");
    if (string)
    {
      string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
    }
  }

  else
  {
    string = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, string);
  }
}

- (void)convertPrivacyProxyConfigurationWithCompletionHandler:(id)handler completionHandler:(id)completionHandler
{
  v21[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_DEBUG, "converting privacy proxy configuration data into dictionary", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "NSPServerCommandType", 30);
    if (handlerCopy)
    {
      v12 = v10;
      v13 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v12, "NSPServerConfiguration", v13);
    }

    if (self)
    {
      self = objc_getProperty(self, v11, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __91__NSPServerClient_convertPrivacyProxyConfigurationWithCompletionHandler_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v18 = completionHandlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v10, &self->super, handler);
  }

  else
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = *MEMORY[0x1E696A588];
    v21[0] = @"IPC failed";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v10 = [v15 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v16];

    (*(completionHandlerCopy + 2))(completionHandlerCopy, 0, v10);
  }
}

void __91__NSPServerClient_convertPrivacyProxyConfigurationWithCompletionHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v8 = v3;
    v4 = MEMORY[0x1B2708030]() == MEMORY[0x1E69E9E80];
    v3 = v8;
    if (v4)
    {
      v5 = get_nsdictionary_from_xpc_object(v8, "NSPServerPrivacyProxyConfigDictionary");
      v6 = [NSPServerClient getErrorFromDict:v8];
      v7 = *(a1 + 32);
      if (v7)
      {
        (*(v7 + 16))(v7, v5, v6);
      }

      v3 = v8;
    }
  }
}

+ (id)getErrorFromDict:(uint64_t)dict
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  if (!v2)
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = 136315138;
      v11 = "+[NSPServerClient getErrorFromDict:]";
      _os_log_fault_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_FAULT, "%s called with null dict", &v10, 0xCu);
    }

    goto LABEL_3;
  }

  if (MEMORY[0x1B2708030](v2) != MEMORY[0x1E69E9E80])
  {
LABEL_3:
    int64 = 0;
    goto LABEL_13;
  }

  int64 = xpc_dictionary_get_int64(v2, "NSPServerErrorCode");
  string = xpc_dictionary_get_string(v2, "NSPServerErrorString");
  if (string)
  {
    string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
  }

  v5 = xpc_dictionary_get_string(v2, "NSPServerErrorReason");
  if (v5)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v5];
  }

  v6 = xpc_dictionary_get_string(v2, "NSPServerErrorRequestUUID");
  if (v6)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v6];
  }

  if (int64)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v7 setObject:string forKeyedSubscript:*MEMORY[0x1E696A588]];
    [v7 setObject:v5 forKeyedSubscript:@"NSPServerErrorReason"];
    [v7 setObject:v6 forKeyedSubscript:@"NSPServerErrorRequestUUID"];
    int64 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"privacyProxyErrorDomain" code:int64 userInfo:v7];
  }

LABEL_13:

  return int64;
}

- (void)overrideProxiedContentMap:(id)map enabled:(BOOL)enabled completionHandler:(id)handler
{
  v23[1] = *MEMORY[0x1E69E9840];
  mapCopy = map;
  handlerCopy = handler;
  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEBUG, "override proxied content map enabled called", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v12, "NSPServerCommandType", 61);
    if (mapCopy)
    {
      v13 = v12;
      v14 = mapCopy;
      xpc_dictionary_set_string(v13, "NSPServerProxiedContentMapIdentifier", [v14 UTF8String]);
    }

    xpc_dictionary_set_BOOL(v12, "NSPServerProxiedContentMapEnabled", enabled);
    if (self)
    {
      self = objc_getProperty(self, v15, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __71__NSPServerClient_overrideProxiedContentMap_enabled_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v20 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v12, &self->super, handler);
  }

  else
  {
    v16 = nplog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v16, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v17 = objc_alloc(MEMORY[0x1E696ABC0]);
    v22 = *MEMORY[0x1E696A588];
    v23[0] = @"IPC failed";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v12 = [v17 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v18];

    (*(handlerCopy + 2))(handlerCopy, v12);
  }
}

uint64_t __71__NSPServerClient_overrideProxiedContentMap_enabled_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getOverrideProxiedContentMapEnabled:(id)enabled completionHandler:(id)handler
{
  v21[1] = *MEMORY[0x1E69E9840];
  enabledCopy = enabled;
  handlerCopy = handler;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_DEBUG, "get override proxied content map enabled called", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "NSPServerCommandType", 62);
    if (enabledCopy)
    {
      v12 = v10;
      v13 = enabledCopy;
      xpc_dictionary_set_string(v12, "NSPServerProxiedContentMapIdentifier", [v13 UTF8String]);
    }

    if (self)
    {
      self = objc_getProperty(self, v11, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __73__NSPServerClient_getOverrideProxiedContentMapEnabled_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v18 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v10, &self->super, handler);
  }

  else
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = *MEMORY[0x1E696A588];
    v21[0] = @"IPC failed";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v10 = [v15 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v16];

    (*(handlerCopy + 2))(handlerCopy, 0, v10);
  }
}

void __73__NSPServerClient_getOverrideProxiedContentMapEnabled_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_get_BOOL(v3, "NSPServerProxiedContentMapEnabled");
  v6 = [NSPServerClient getErrorFromDict:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4, v6);
  }
}

- (void)setProxiedContentMapDoHBootstrapEnabled:(BOOL)enabled completionHandler:(id)handler
{
  enabledCopy = enabled;
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v19 = enabledCopy;
    _os_log_debug_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_DEBUG, "Set proxied content map DoH bootstrap enabled to %u", buf, 8u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "NSPServerCommandType", 65);
    xpc_dictionary_set_BOOL(v9, "NSPServerPrivacyProxyEnabled", enabledCopy);
    if (self)
    {
      self = objc_getProperty(self, v10, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __77__NSPServerClient_setProxiedContentMapDoHBootstrapEnabled_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v15 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v9, &self->super, handler);
  }

  else
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17 = @"IPC failed";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v9 = [v12 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v13];

    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

uint64_t __77__NSPServerClient_setProxiedContentMapDoHBootstrapEnabled_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)overridePreferredProxy:(id)proxy completionHandler:(id)handler
{
  v21[1] = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  handlerCopy = handler;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_DEBUG, "override preferred proxy called", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "NSPServerCommandType", 37);
    if (proxyCopy)
    {
      v12 = v10;
      v13 = proxyCopy;
      xpc_dictionary_set_string(v12, "NSPServerPrivacyProxyURL", [v13 UTF8String]);
    }

    if (self)
    {
      self = objc_getProperty(self, v11, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __60__NSPServerClient_overridePreferredProxy_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v18 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v10, &self->super, handler);
  }

  else
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = *MEMORY[0x1E696A588];
    v21[0] = @"IPC failed";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v10 = [v15 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v16];

    (*(handlerCopy + 2))(handlerCopy, v10);
  }
}

uint64_t __60__NSPServerClient_overridePreferredProxy_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getPreferredProxyWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "get preferred proxy called", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 38);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __58__NSPServerClient_getPreferredProxyWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v13 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, 0, v7);
  }
}

void __58__NSPServerClient_getPreferredProxyWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  string = xpc_dictionary_get_string(v6, "NSPServerPrivacyProxyURL");
  if (string)
  {
    string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
  }

  v4 = [NSPServerClient getErrorFromDict:v6];
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, string, v4);
  }
}

- (void)overridePreferredResolver:(id)resolver completionHandler:(id)handler
{
  v21[1] = *MEMORY[0x1E69E9840];
  resolverCopy = resolver;
  handlerCopy = handler;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_DEBUG, "override preferred resolver called", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "NSPServerCommandType", 43);
    if (resolverCopy)
    {
      v12 = v10;
      v13 = resolverCopy;
      xpc_dictionary_set_string(v12, "NSPServerPrivacyProxyURL", [v13 UTF8String]);
    }

    if (self)
    {
      self = objc_getProperty(self, v11, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __63__NSPServerClient_overridePreferredResolver_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v18 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v10, &self->super, handler);
  }

  else
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = *MEMORY[0x1E696A588];
    v21[0] = @"IPC failed";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v10 = [v15 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v16];

    (*(handlerCopy + 2))(handlerCopy, v10);
  }
}

uint64_t __63__NSPServerClient_overridePreferredResolver_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getPreferredResolverWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "get preferred resolver called", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 44);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __61__NSPServerClient_getPreferredResolverWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v13 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, 0, v7);
  }
}

void __61__NSPServerClient_getPreferredResolverWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  string = xpc_dictionary_get_string(v6, "NSPServerPrivacyProxyURL");
  if (string)
  {
    string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
  }

  v4 = [NSPServerClient getErrorFromDict:v6];
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, string, v4);
  }
}

- (void)overridePreferredObliviousProxy:(id)proxy completionHandler:(id)handler
{
  v21[1] = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  handlerCopy = handler;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_DEBUG, "override preferred oblivious proxy called", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "NSPServerCommandType", 68);
    if (proxyCopy)
    {
      v12 = v10;
      v13 = proxyCopy;
      xpc_dictionary_set_string(v12, "NSPServerPrivacyProxyURL", [v13 UTF8String]);
    }

    if (self)
    {
      self = objc_getProperty(self, v11, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __69__NSPServerClient_overridePreferredObliviousProxy_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v18 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v10, &self->super, handler);
  }

  else
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = *MEMORY[0x1E696A588];
    v21[0] = @"IPC failed";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v10 = [v15 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v16];

    (*(handlerCopy + 2))(handlerCopy, v10);
  }
}

uint64_t __69__NSPServerClient_overridePreferredObliviousProxy_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getPreferredObliviousProxyWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "get preferred oblivious proxy called", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 69);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __67__NSPServerClient_getPreferredObliviousProxyWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v13 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, 0, v7);
  }
}

void __67__NSPServerClient_getPreferredObliviousProxyWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  string = xpc_dictionary_get_string(v6, "NSPServerPrivacyProxyURL");
  if (string)
  {
    string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
  }

  v4 = [NSPServerClient getErrorFromDict:v6];
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, string, v4);
  }
}

- (void)overrideIngressProxy:(id)proxy fallbackProxy:(id)fallbackProxy key:(id)key completionHandler:(id)handler
{
  v31[1] = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  fallbackProxyCopy = fallbackProxy;
  keyCopy = key;
  handlerCopy = handler;
  v14 = nplog_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_DEBUG, "override ingress proxy called", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v16 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v16, "NSPServerCommandType", 49);
    v17 = proxyCopy;
    if (v17)
    {
      v18 = v16;
      xpc_dictionary_set_string(v18, "NSPServerPrivacyProxyURL", [v17 UTF8String]);
    }

    v19 = fallbackProxyCopy;
    if (v19)
    {
      v20 = v16;
      xpc_dictionary_set_string(v20, "NSPServerPrivacyProxyFallbackURL", [v19 UTF8String]);
    }

    if (keyCopy)
    {
      v22 = v16;
      v23 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v22, "NSPServerPrivacyProxyKey", v23);
    }

    if (self)
    {
      self = objc_getProperty(self, v21, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __76__NSPServerClient_overrideIngressProxy_fallbackProxy_key_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v28 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v16, &self->super, handler);
  }

  else
  {
    v24 = nplog_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v24, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v25 = objc_alloc(MEMORY[0x1E696ABC0]);
    v30 = *MEMORY[0x1E696A588];
    v31[0] = @"IPC failed";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v16 = [v25 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v26];

    (*(handlerCopy + 2))(handlerCopy, v16);
  }
}

uint64_t __76__NSPServerClient_overrideIngressProxy_fallbackProxy_key_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getOverrideIngressProxyWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "get override ingress proxy called", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 50);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __64__NSPServerClient_getOverrideIngressProxyWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v13 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v7);
  }
}

void __64__NSPServerClient_getOverrideIngressProxyWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  string = xpc_dictionary_get_string(xdict, "NSPServerPrivacyProxyURL");
  if (string)
  {
    string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
  }

  v4 = xpc_dictionary_get_string(xdict, "NSPServerPrivacyProxyFallbackURL");
  if (v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v4];
  }

  v5 = get_nsdata_from_xpc_object(xdict, "NSPServerPrivacyProxyKey");
  v6 = [NSPServerClient getErrorFromDict:?];
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, string, v4, v5, v6);
  }
}

- (void)setForceFallback:(BOOL)fallback completionHandler:(id)handler
{
  v18[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_DEBUG, "force fallback called", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "NSPServerCommandType", 46);
    xpc_dictionary_set_BOOL(v9, "NSPServerPrivacyProxyForceFallback", fallback);
    if (self)
    {
      self = objc_getProperty(self, v10, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __54__NSPServerClient_setForceFallback_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v15 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v9, &self->super, handler);
  }

  else
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = *MEMORY[0x1E696A588];
    v18[0] = @"IPC failed";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v9 = [v12 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v13];

    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

uint64_t __54__NSPServerClient_setForceFallback_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getForceFallbackWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "get force fallback called", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 47);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __57__NSPServerClient_getForceFallbackWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v13 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, 0, v7);
  }
}

void __57__NSPServerClient_getForceFallbackWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_get_BOOL(v3, "NSPServerPrivacyProxyForceFallback");
  v6 = [NSPServerClient getErrorFromDict:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4, v6);
  }
}

- (void)setPrivacyProxyStatus:(BOOL)status completionHandler:(id)handler
{
  statusCopy = status;
  v21 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v14 = @"Disabled";
    if (statusCopy)
    {
      v14 = @"Enabled";
    }

    *buf = 138412290;
    v20 = v14;
    _os_log_debug_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_DEBUG, "Setting privacy proxy %@", buf, 0xCu);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "NSPServerCommandType", 17);
    xpc_dictionary_set_BOOL(v9, "NSPServerPrivacyProxyEnabled", statusCopy);
    if (self)
    {
      self = objc_getProperty(self, v10, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __59__NSPServerClient_setPrivacyProxyStatus_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v16 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v9, &self->super, handler);
  }

  else
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = *MEMORY[0x1E696A588];
    v18 = @"IPC failed";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v9 = [v12 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v13];

    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

uint64_t __59__NSPServerClient_setPrivacyProxyStatus_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getPrivacyProxyStatusWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Requesting get privacy proxy status", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 18);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __62__NSPServerClient_getPrivacyProxyStatusWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v13 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, 0, v7);
  }
}

void __62__NSPServerClient_getPrivacyProxyStatusWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_get_BOOL(v3, "NSPServerPrivacyProxyEnabled");
  v6 = [NSPServerClient getErrorFromDict:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4, v6);
  }
}

- (void)getPrivacyProxyServiceStatusWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Requesting get privacy proxy service status", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 33);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __69__NSPServerClient_getPrivacyProxyServiceStatusWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v13 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, 0, v7);
  }
}

void __69__NSPServerClient_getPrivacyProxyServiceStatusWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSPServerClient getErrorFromDict:v3];
  length = 0;
  data = xpc_dictionary_get_data(v3, "NSPServerPrivacyProxyServiceStatus", &length);

  v6 = 0;
  if (data && length)
  {
    v7 = [MEMORY[0x1E695DEF0] dataWithBytes:data length:?];
    v6 = [[PrivacyProxyServiceStatus alloc] initWithData:v7];
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v4);
  }
}

- (void)getPrivacyProxyServiceStatusTimelineWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Requesting get privacy proxy service status timeline", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 36);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __77__NSPServerClient_getPrivacyProxyServiceStatusTimelineWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v13 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, 0, v7);
  }
}

void __77__NSPServerClient_getPrivacyProxyServiceStatusTimelineWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = [NSPServerClient getErrorFromDict:v3];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v7 = get_nsdata_from_xpc_object(v3, "NSPServerPrivacyProxyServiceStatusTimeline");

  if (v7)
  {
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v6 fromData:v7 error:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v8, v10);
  }
}

- (void)reportPrivacyProxyServiceStatus:(unint64_t)status completionHandler:(id)handler
{
  v18[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_DEBUG, "Reporting privacy proxy service status", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "NSPServerCommandType", 34);
    xpc_dictionary_set_int64(v9, "NSPServerPrivacyProxyServiceStatus", status);
    if (self)
    {
      self = objc_getProperty(self, v10, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __69__NSPServerClient_reportPrivacyProxyServiceStatus_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v15 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v9, &self->super, handler);
  }

  else
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = *MEMORY[0x1E696A588];
    v18[0] = @"IPC failed";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v9 = [v12 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v13];

    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

uint64_t __69__NSPServerClient_reportPrivacyProxyServiceStatus_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)reportPrivacyProxyNetworkStatus:(id)status completionHandler:(id)handler
{
  v22[1] = *MEMORY[0x1E69E9840];
  statusCopy = status;
  handlerCopy = handler;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_DEBUG, "Reporting privacy proxy network status", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "NSPServerCommandType", 35);
    serialize = [statusCopy serialize];
    if (serialize)
    {
      v13 = v10;
      v14 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v13, "NSPServerPrivacyProxyNetworkStatus", v14);
    }

    if (self)
    {
      self = objc_getProperty(self, v11, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __69__NSPServerClient_reportPrivacyProxyNetworkStatus_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v19 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v10, &self->super, handler);
  }

  else
  {
    v15 = nplog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v15, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = *MEMORY[0x1E696A588];
    v22[0] = @"IPC failed";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v10 = [v16 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v17];

    (*(handlerCopy + 2))(handlerCopy, v10);
  }
}

uint64_t __69__NSPServerClient_reportPrivacyProxyNetworkStatus_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getPrivacyProxyAppStatusesWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Requesting get privacy proxy app statuses", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 63);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __67__NSPServerClient_getPrivacyProxyAppStatusesWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v13 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, 0, 0, v7);
  }
}

void __67__NSPServerClient_getPrivacyProxyAppStatusesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [NSPServerClient getErrorFromDict:v13];
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v5 = get_nsdata_from_xpc_object(v13, "NSPServerPrivacyProxyAnyAppEnabledDate");
  if (v5)
  {
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v4 fromData:v5 error:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = get_nsdata_from_xpc_object(v13, "NSPServerPrivacyProxyAppStatuses");
  if (v10)
  {
    v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v9 fromData:v10 error:0];
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, v11, v6, v3);
  }
}

- (void)setPrivacyProxyAppStatus:(unint64_t)status bundleIdentifier:(id)identifier path:(id)path completionHandler:(id)handler
{
  v29[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  pathCopy = path;
  handlerCopy = handler;
  v13 = nplog_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v13, OS_LOG_TYPE_DEBUG, "Reporting privacy proxy service status", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v15, "NSPServerCommandType", 64);
    v16 = [[PrivacyProxyAppStatus alloc] initWithStatus:status bundleID:identifierCopy path:pathCopy activeDate:0];
    v17 = v15;
    v18 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v16 requiringSecureCoding:1 error:0];
    if (v18)
    {
      v19 = v17;
      v20 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v19, "NSPServerPrivacyProxyAppStatus", v20);
    }

    if (self)
    {
      self = objc_getProperty(self, v21, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __84__NSPServerClient_setPrivacyProxyAppStatus_bundleIdentifier_path_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v26 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v17, &self->super, handler);
  }

  else
  {
    v22 = nplog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v22, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v28 = *MEMORY[0x1E696A588];
    v29[0] = @"IPC failed";
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v17 = [v23 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v24];

    (*(handlerCopy + 2))(handlerCopy, v17);
  }
}

uint64_t __84__NSPServerClient_setPrivacyProxyAppStatus_bundleIdentifier_path_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)setPrivacyProxyUserTier:(unint64_t)tier completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    if (tier >= 3)
    {
      tier = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", tier];
    }

    else
    {
      tier = off_1E7A309E0[tier & 3];
    }

    *buf = 138412290;
    v24 = tier;
    _os_log_debug_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_DEBUG, "Setting user tier for privacy proxy %@", buf, 0xCu);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "NSPServerCommandType", 19);
    xpc_dictionary_set_uint64(v9, "NSPServerPrivacyProxyUserTier", tier);
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if (bundleIdentifier)
    {
      v13 = v9;
      v14 = bundleIdentifier;
      xpc_dictionary_set_string(v13, "NSPServerSigningIdentifier", [v14 UTF8String]);
    }

    if (self)
    {
      self = objc_getProperty(self, v12, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __61__NSPServerClient_setPrivacyProxyUserTier_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v20 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v9, &self->super, handler);
  }

  else
  {
    v15 = nplog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v15, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = *MEMORY[0x1E696A588];
    v22 = @"IPC failed";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v9 = [v16 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v17];

    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

uint64_t __61__NSPServerClient_setPrivacyProxyUserTier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getPrivacyProxyUserTierWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Get user tier", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 20);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __64__NSPServerClient_getPrivacyProxyUserTierWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v13 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, 0, 0, v7);
  }
}

void __64__NSPServerClient_getPrivacyProxyUserTierWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = [NSPServerClient getErrorFromDict:?];
  if (xdict && MEMORY[0x1B2708030](xdict) == MEMORY[0x1E69E9E80])
  {
    uint64 = xpc_dictionary_get_uint64(xdict, "NSPServerPrivacyProxyUserTier");
    v5 = xpc_dictionary_get_BOOL(xdict, "NSPServerPrivacyProxySetUntilTomorrow");
  }

  else
  {
    uint64 = 0;
    v5 = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, uint64, v5, v3);
  }
}

- (void)setFreeUserTierUntilTomorrowWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Set user tier to free until tomorrow", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 19);
    xpc_dictionary_set_uint64(v7, "NSPServerPrivacyProxyUserTier", 1uLL);
    xpc_dictionary_set_BOOL(v7, "NSPServerPrivacyProxySetUntilTomorrow", 1);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __69__NSPServerClient_setFreeUserTierUntilTomorrowWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v13 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, v7);
  }
}

uint64_t __69__NSPServerClient_setFreeUserTierUntilTomorrowWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)setPrivacyProxyTrafficState:(unint64_t)state proxyTraffic:(unint64_t)traffic completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v9 = nplog_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    stateCopy = state;
    v22 = 2048;
    trafficCopy = traffic;
    _os_log_debug_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_DEBUG, "Setting privacy proxy traffic state for traffic type %llx: %llx", buf, 0x16u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v11 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v11, "NSPServerCommandType", 21);
    xpc_dictionary_set_uint64(v11, "NSPServerPrivacyProxyTrafficMask", state);
    xpc_dictionary_set_uint64(v11, "NSPServerPrivacyProxyTraffic", traffic);
    if (self)
    {
      self = objc_getProperty(self, v12, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __78__NSPServerClient_setPrivacyProxyTrafficState_proxyTraffic_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v17 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v11, &self->super, handler);
  }

  else
  {
    v13 = nplog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v13, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v18 = *MEMORY[0x1E696A588];
    v19 = @"IPC failed";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v11 = [v14 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v15];

    (*(handlerCopy + 2))(handlerCopy, v11);
  }
}

uint64_t __78__NSPServerClient_setPrivacyProxyTrafficState_proxyTraffic_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getPrivacyProxyTrafficStateWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Get privacy proxy traffic state", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 22);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __68__NSPServerClient_getPrivacyProxyTrafficStateWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v13 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, 0, v7);
  }
}

void __68__NSPServerClient_getPrivacyProxyTrafficStateWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = [NSPServerClient getErrorFromDict:?];
  if (xdict && MEMORY[0x1B2708030]() == MEMORY[0x1E69E9E80])
  {
    uint64 = xpc_dictionary_get_uint64(xdict, "NSPServerPrivacyProxyTraffic");
  }

  else
  {
    uint64 = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, uint64, v3);
  }
}

- (void)getPrivacyProxyEffectiveUserTierWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Get effective user tier", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 42);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __73__NSPServerClient_getPrivacyProxyEffectiveUserTierWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v13 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, 0, v7);
  }
}

void __73__NSPServerClient_getPrivacyProxyEffectiveUserTierWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = [NSPServerClient getErrorFromDict:?];
  if (xdict && MEMORY[0x1B2708030]() == MEMORY[0x1E69E9E80])
  {
    uint64 = xpc_dictionary_get_uint64(xdict, "NSPServerPrivacyProxyEffectiveUserTier");
  }

  else
  {
    uint64 = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, uint64, v3);
  }
}

- (void)getPrivacyProxyDomainFilters:(id)filters
{
  filtersCopy = filters;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "get privacy proxy domain filters called", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 58);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __48__NSPServerClient_getPrivacyProxyDomainFilters___block_invoke;
    handler[3] = &unk_1E7A30920;
    v11 = filtersCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    (*(filtersCopy + 2))(filtersCopy, 0);
  }
}

uint64_t __48__NSPServerClient_getPrivacyProxyDomainFilters___block_invoke(uint64_t a1, void *a2)
{
  get_nsdictionary_from_xpc_object(a2, "NSPServerPrivacyProxyDomainFilters");
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (id)getAgentUUIDForType:(int64_t)type
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v17 = 134217984;
    typeCopy5 = type;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Looking up agent UUID for type %lld", &v17, 0xCu);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 75);
    xpc_dictionary_set_int64(v7, "NSPAgentType", type);
    v8 = xpc_connection_send_message_with_reply_sync(getConnection, v7);
    v9 = v8;
    if (v8 && MEMORY[0x1B2708030](v8) == MEMORY[0x1E69E9E80])
    {
      uuid = xpc_dictionary_get_uuid(v9, "NSPAgentUUID");
      if (uuid)
      {
        v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uuid];
        v10 = nplog_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v17 = 138412546;
          typeCopy5 = v11;
          v19 = 2048;
          typeCopy2 = type;
          _os_log_debug_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEBUG, "Received agent UUID %@ for type %lld", &v17, 0x16u);
        }

        goto LABEL_8;
      }

      v10 = nplog_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_7:
        v11 = 0;
LABEL_8:

        goto LABEL_12;
      }

      v17 = 134217984;
      typeCopy5 = type;
      v14 = "Failed to fetch agent UUID for type %lld, UUID was nil";
      v15 = v10;
      v16 = 12;
    }

    else
    {
      v10 = nplog_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v17 = 134218242;
      typeCopy5 = type;
      v19 = 2112;
      typeCopy2 = v9;
      v14 = "Failed to fetch agent UUID for type %lld, message failed (%@)";
      v15 = v10;
      v16 = 22;
    }

    _os_log_error_impl(&dword_1AE7E2000, v15, OS_LOG_TYPE_ERROR, v14, &v17, v16);
    goto LABEL_7;
  }

  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v17 = 134217984;
    typeCopy5 = type;
    _os_log_error_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch agent UUID for type %lld, unable to get connection", &v17, 0xCu);
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (void)getPrivacyProxyPolicyWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "fetching privacy proxy policy data", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 23);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __62__NSPServerClient_getPrivacyProxyPolicyWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v10 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __62__NSPServerClient_getPrivacyProxyPolicyWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7 = v3;
    v4 = MEMORY[0x1B2708030]() == MEMORY[0x1E69E9E80];
    v3 = v7;
    if (v4)
    {
      v5 = get_nsdictionary_from_xpc_object(v7, "NSPServerPrivacyProxyPolicy");
      v6 = *(a1 + 32);
      if (v6)
      {
        (*(v6 + 16))(v6, v5);
      }

      v3 = v7;
    }
  }
}

- (void)setPrivacyProxyPolicy:(id)policy completionHandler:(id)handler
{
  policyCopy = policy;
  handlerCopy = handler;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_DEBUG, "setting privacy proxy policy", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "NSPServerCommandType", 24);
    if (policyCopy)
    {
      v12 = v10;
      v13 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v12, "NSPServerPrivacyProxyPolicy", v13);
    }

    if (self)
    {
      self = objc_getProperty(self, v11, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __59__NSPServerClient_setPrivacyProxyPolicy_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v15 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v10, &self->super, handler);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

uint64_t __59__NSPServerClient_setPrivacyProxyPolicy_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    xdict = v3;
    if (MEMORY[0x1B2708030](v3) == MEMORY[0x1E69E9E80])
    {
      v4 = xpc_dictionary_get_BOOL(xdict, "NSPServerCommandResult");
      v5 = *(a1 + 32);
      if (v5)
      {
        (*(v5 + 16))(v5, v4, xdict);
      }
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

- (BOOL)removePrivacyProxyPolicy
{
  v3 = nplog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v3, OS_LOG_TYPE_DEBUG, "removing privacy proxy policy", v10, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v5, "NSPServerCommandType", 25);
    v6 = xpc_connection_send_message_with_reply_sync(getConnection, v5);
    v7 = v6;
    v8 = v6 && MEMORY[0x1B2708030](v6) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_BOOL(v7, "NSPServerCommandResult");
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)mergePrivacyProxyPolicy:(id)policy
{
  v16[1] = *MEMORY[0x1E69E9840];
  policyCopy = policy;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "merging privacy proxy policy with proxy traffic state", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 31);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __43__NSPServerClient_mergePrivacyProxyPolicy___block_invoke;
    handler[3] = &unk_1E7A30920;
    v13 = policyCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(policyCopy + 2))(policyCopy, 0, v7);
  }
}

void __43__NSPServerClient_mergePrivacyProxyPolicy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v8 = v3;
    v4 = MEMORY[0x1B2708030]() == MEMORY[0x1E69E9E80];
    v3 = v8;
    if (v4)
    {
      v5 = get_nsdictionary_from_xpc_object(v8, "NSPServerPrivacyProxyPolicy");
      v6 = [NSPServerClient getErrorFromDict:v8];
      v7 = *(a1 + 32);
      if (v7)
      {
        (*(v7 + 16))(v7, v5, v6);
      }

      v3 = v8;
    }
  }
}

- (void)locationAuthorizationStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "getting location authorization status", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 26);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __68__NSPServerClient_locationAuthorizationStatusWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v10 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

uint64_t __68__NSPServerClient_locationAuthorizationStatusWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  xdict = v3;
  if (v3 && MEMORY[0x1B2708030](v3) == MEMORY[0x1E69E9E80])
  {
    xpc_dictionary_get_BOOL(xdict, "NSPServerCommandResult");
    v6 = *(a1 + 32);
    if (!v6)
    {
      goto LABEL_8;
    }

    v5 = *(v6 + 16);
  }

  else
  {
    v4 = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = *(v4 + 16);
  }

  v5();
LABEL_8:

  return MEMORY[0x1EEE66BE0]();
}

- (void)setLocationMonitorInterval:(double)interval
{
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "setting location monitor time interval", v8, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 27);
    xpc_dictionary_set_double(v7, "NSPServerLocationMonitorInterval", interval);
    xpc_connection_send_message(getConnection, v7);
  }
}

- (void)startLocationMonitor
{
  v3 = nplog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v3, OS_LOG_TYPE_DEBUG, "starting location monitor", v6, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v5, "NSPServerCommandType", 28);
    xpc_connection_send_message(getConnection, v5);
  }
}

- (void)stopLocationMonitor
{
  v3 = nplog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v3, OS_LOG_TYPE_DEBUG, "stopping location monitor", v6, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v5, "NSPServerCommandType", 29);
    xpc_connection_send_message(getConnection, v5);
  }
}

- (void)getPrivacyProxyInfoWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Get privacy proxy info", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 32);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __60__NSPServerClient_getPrivacyProxyInfoWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v13 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, 0, v7);
  }
}

void __60__NSPServerClient_getPrivacyProxyInfoWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSPServerClient getErrorFromDict:v3];
  length = 0;
  data = xpc_dictionary_get_data(v3, "NSPServerPrivacyProxyInfo", &length);

  v6 = 0;
  if (data && length)
  {
    v7 = [MEMORY[0x1E695DEF0] dataWithBytes:data length:?];
    v6 = [[PrivacyProxyInfo alloc] initWithData:v7];
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v4);
  }
}

- (void)setGeohashSharingPreference:(BOOL)preference completionHandler:(id)handler
{
  v18[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_DEBUG, "Set Geohash sharing preference", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "NSPServerCommandType", 39);
    xpc_dictionary_set_BOOL(v9, "NSPServerPrivacyProxyGeohashSharingEnabled", preference);
    if (self)
    {
      self = objc_getProperty(self, v10, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __65__NSPServerClient_setGeohashSharingPreference_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v15 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v9, &self->super, handler);
  }

  else
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = *MEMORY[0x1E696A588];
    v18[0] = @"IPC failed";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v9 = [v12 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v13];

    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

uint64_t __65__NSPServerClient_setGeohashSharingPreference_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getGeohashSharingPreferenceWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Get Geohash sharing preference", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 40);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __68__NSPServerClient_getGeohashSharingPreferenceWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v13 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, 0, v7);
  }
}

void __68__NSPServerClient_getGeohashSharingPreferenceWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_get_BOOL(v3, "NSPServerPrivacyProxyGeohashSharingEnabled");
  v6 = [NSPServerClient getErrorFromDict:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4, v6);
  }
}

- (void)setGeohashOverride:(id)override completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  overrideCopy = override;
  handlerCopy = handler;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = overrideCopy;
    _os_log_debug_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_DEBUG, "Set Geohash override to %@", buf, 0xCu);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "NSPServerCommandType", 48);
    if ([overrideCopy length])
    {
      xpc_dictionary_set_string(v10, "NSPServerPrivacyProxyGeohash", [overrideCopy UTF8String]);
    }

    if (self)
    {
      self = objc_getProperty(self, v11, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __56__NSPServerClient_setGeohashOverride_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v16 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v10, &self->super, handler);
  }

  else
  {
    v12 = nplog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v12, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = *MEMORY[0x1E696A588];
    v18 = @"IPC failed";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v10 = [v13 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v14];

    (*(handlerCopy + 2))(handlerCopy, v10);
  }
}

uint64_t __56__NSPServerClient_setGeohashOverride_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getPrivacyProxyAccountTypeWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Get Privacy Proxy account type", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 41);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __67__NSPServerClient_getPrivacyProxyAccountTypeWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v13 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, 0, 0, v7);
  }
}

void __67__NSPServerClient_getPrivacyProxyAccountTypeWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  uint64 = xpc_dictionary_get_uint64(v3, "NSPServerPrivacyProxyAccountType");
  v5 = xpc_dictionary_get_BOOL(v3, "NSPServerPrivacyProxyAccountUnlimited");
  v7 = [NSPServerClient getErrorFromDict:v3];

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, uint64, v5, v7);
  }
}

- (void)setPrivateAccessTokensEnabled:(BOOL)enabled completionHandler:(id)handler
{
  enabledCopy = enabled;
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v19 = enabledCopy;
    _os_log_debug_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_DEBUG, "Set private access tokens enabled state to %u", buf, 8u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "NSPServerCommandType", 54);
    xpc_dictionary_set_BOOL(v9, "NSPServerPrivacyProxyPrivateAccessTokensEnabled", enabledCopy);
    if (self)
    {
      self = objc_getProperty(self, v10, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __67__NSPServerClient_setPrivateAccessTokensEnabled_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v15 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v9, &self->super, handler);
  }

  else
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17 = @"IPC failed";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v9 = [v12 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v13];

    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

uint64_t __67__NSPServerClient_setPrivateAccessTokensEnabled_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getPrivateAccessTokensEnabledWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Get private access tokens enabled state", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 55);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __70__NSPServerClient_getPrivateAccessTokensEnabledWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v13 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, 0, v7);
  }
}

void __70__NSPServerClient_getPrivateAccessTokensEnabledWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_get_BOOL(v3, "NSPServerPrivacyProxyPrivateAccessTokensEnabled");
  v6 = [NSPServerClient getErrorFromDict:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4, v6);
  }
}

- (void)privateAccessTokensAllowTools:(BOOL)tools completionHandler:(id)handler
{
  toolsCopy = tools;
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v19 = toolsCopy;
    _os_log_debug_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_DEBUG, "Set private access tokens allow tools to %u", buf, 8u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "NSPServerCommandType", 56);
    xpc_dictionary_set_BOOL(v9, "NSPServerPrivacyProxyPrivateAccessTokensEnabled", toolsCopy);
    if (self)
    {
      self = objc_getProperty(self, v10, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __67__NSPServerClient_privateAccessTokensAllowTools_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v15 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v9, &self->super, handler);
  }

  else
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17 = @"IPC failed";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v9 = [v12 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v13];

    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

uint64_t __67__NSPServerClient_privateAccessTokensAllowTools_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)setInProcessFlowDivert:(BOOL)divert completionHandler:(id)handler
{
  divertCopy = divert;
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v19 = divertCopy;
    _os_log_debug_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_DEBUG, "Set in-process flow divert enabled to %u", buf, 8u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "NSPServerCommandType", 59);
    xpc_dictionary_set_BOOL(v9, "NSPServerPrivacyProxyInProcessFlowDivertEnabled", divertCopy);
    if (self)
    {
      self = objc_getProperty(self, v10, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __60__NSPServerClient_setInProcessFlowDivert_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v15 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v9, &self->super, handler);
  }

  else
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17 = @"IPC failed";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v9 = [v12 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v13];

    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

uint64_t __60__NSPServerClient_setInProcessFlowDivert_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)setPreferredPathRoutingEnabled:(BOOL)enabled completionHandler:(id)handler
{
  enabledCopy = enabled;
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v19 = enabledCopy;
    _os_log_debug_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_DEBUG, "Set preferred path routing enabled to %u", buf, 8u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "NSPServerCommandType", 57);
    xpc_dictionary_set_BOOL(v9, "NSPServerPrivacyProxyEnabled", enabledCopy);
    if (self)
    {
      self = objc_getProperty(self, v10, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __68__NSPServerClient_setPreferredPathRoutingEnabled_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v15 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v9, &self->super, handler);
  }

  else
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17 = @"IPC failed";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v9 = [v12 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v13];

    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

uint64_t __68__NSPServerClient_setPreferredPathRoutingEnabled_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)sendRTCReport:(int64_t)report errorCode:(int64_t)code url:(id)url completionHandler:(id)handler
{
  v25[1] = *MEMORY[0x1E69E9840];
  urlCopy = url;
  handlerCopy = handler;
  v12 = nplog_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v12, OS_LOG_TYPE_DEBUG, "send RTC report", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v14 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v14, "NSPServerCommandType", 45);
    xpc_dictionary_set_int64(v14, "NSPServerPrivacyProxyRTCReportType", report);
    xpc_dictionary_set_int64(v14, "NSPServerPrivacyProxyRTCReportErrorCode", code);
    if (urlCopy)
    {
      v16 = v14;
      v17 = urlCopy;
      xpc_dictionary_set_string(v16, "NSPServerPrivacyProxyRTCReportURL", [v17 UTF8String]);
    }

    if (self)
    {
      self = objc_getProperty(self, v15, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __65__NSPServerClient_sendRTCReport_errorCode_url_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v22 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v14, &self->super, handler);
  }

  else
  {
    v18 = nplog_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v18, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v24 = *MEMORY[0x1E696A588];
    v25[0] = @"IPC failed";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v14 = [v19 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v20];

    (*(handlerCopy + 2))(handlerCopy, v14);
  }
}

uint64_t __65__NSPServerClient_sendRTCReport_errorCode_url_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)fetchPrivateAccessTokenWithFetcher:(id)fetcher allowRetry:(BOOL)retry completionHandler:(id)handler
{
  v90 = *MEMORY[0x1E69E9840];
  fetcherCopy = fetcher;
  handlerCopy = handler;
  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(bytes[0]) = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEBUG, "Fetching Private Access Token", bytes, 2u);
  }

  getTokenFetchConnection = [(NSPServerClient *)self getTokenFetchConnection];
  if (getTokenFetchConnection)
  {
    v75 = handlerCopy;
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v12, "NSPServerCommandType", 51);
    xarray = xpc_array_create(0, 0);
    v14 = xpc_dictionary_create(0, 0, 0);
    if (fetcherCopy)
    {
      v15 = objc_getProperty(fetcherCopy, v13, 64, 1);
      if (v15)
      {
        v16 = v14;
        v17 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v16, "NSPServerPrivateAccessTokenChallenge", v17);
      }

      v19 = objc_getProperty(fetcherCopy, v18, 80, 1);
      if (v19)
      {
        v20 = v14;
        v21 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v20, "NSPServerPrivateAccessTokenKey", v21);
      }

      v23 = objc_getProperty(fetcherCopy, v22, 88, 1);
      if (v23)
      {
        v24 = v14;
        v25 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v24, "NSPServerPrivateAccessTokenOriginNameKey", v25);
      }
    }

    else
    {
      v23 = 0;
    }

    xpc_array_append_value(xarray, v14);
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v76 = fetcherCopy;
    v74 = getTokenFetchConnection;
    retryCopy = retry;
    selfCopy = self;
    v70 = v14;
    if (fetcherCopy)
    {
      Property = objc_getProperty(fetcherCopy, v26, 120, 1);
    }

    else
    {
      Property = 0;
    }

    v28 = Property;
    v29 = [v28 countByEnumeratingWithState:&v83 objects:v89 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v84;
      do
      {
        v32 = 0;
        do
        {
          if (*v84 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v83 + 1) + 8 * v32);
          v35 = xpc_dictionary_create(0, 0, 0);
          if (v33)
          {
            v36 = objc_getProperty(v33, v34, 64, 1);
            if (v36)
            {
              v37 = v35;
              v38 = _CFXPCCreateXPCObjectFromCFObject();
              xpc_dictionary_set_value(v37, "NSPServerPrivateAccessTokenChallenge", v38);
            }

            v40 = objc_getProperty(v33, v39, 80, 1);
            if (v40)
            {
              v41 = v35;
              v42 = _CFXPCCreateXPCObjectFromCFObject();
              xpc_dictionary_set_value(v41, "NSPServerPrivateAccessTokenKey", v42);
            }

            v33 = objc_getProperty(v33, v43, 88, 1);
            if (v33)
            {
              v44 = v35;
              v45 = _CFXPCCreateXPCObjectFromCFObject();
              xpc_dictionary_set_value(v44, "NSPServerPrivateAccessTokenOriginNameKey", v45);
            }
          }

          xpc_array_append_value(xarray, v35);
          ++v32;
        }

        while (v30 != v32);
        v46 = [v28 countByEnumeratingWithState:&v83 objects:v89 count:{16, v70}];
        v30 = v46;
      }

      while (v46);
    }

    v47 = v12;
    xpc_dictionary_set_value(v12, "NSPServerPrivateAccessTokenChallenges", xarray);
    fetcherCopy = v76;
    if ([v76 rateLimit])
    {
      xpc_dictionary_set_uint64(v12, "NSPServerPrivateAccessTokenRateLimit", [v76 rateLimit]);
    }

    getTokenFetchConnection = v74;
    handlerCopy = v75;
    if ([v76 metadataSize])
    {
      xpc_dictionary_set_uint64(v12, "NSPServerPrivateAccessTokenMetadataSize", [v76 metadataSize]);
    }

    selectedOrigin = [v76 selectedOrigin];
    if (selectedOrigin)
    {
      v49 = v12;
      xpc_dictionary_set_string(v49, "NSPServerPrivateAccessTokenOriginName", [selectedOrigin UTF8String]);
    }

    bundleID = [v76 bundleID];
    if (bundleID)
    {
      v51 = v12;
      xpc_dictionary_set_string(v51, "NSPServerSigningIdentifier", [bundleID UTF8String]);
    }

    if (v76)
    {
      v52 = !v76[20] && v76[21] == 0;
      v53 = v52 && v76[22] == 0;
      if (!v53 || v76[23] != 0)
      {
        memset(bytes, 0, sizeof(bytes));
        objc_msgSend_auditToken(v76);
        xpc_dictionary_set_data(v12, "NSPServerEffectiveAuditToken", bytes, 0x20uLL);
      }
    }

    if ([v76 systemClient])
    {
      xpc_dictionary_set_BOOL(v12, "NSPServerTokenSystemClient", 1);
    }

    customAttester = [v76 customAttester];

    if (customAttester)
    {
      customAttester2 = [v76 customAttester];
      absoluteString = [customAttester2 absoluteString];
      if (absoluteString)
      {
        v58 = v12;
        xpc_dictionary_set_string(v58, "NSPServerPrivateAccessTokenCustomAttester", [absoluteString UTF8String]);
      }

      customAttesterHeaders = [v76 customAttesterHeaders];
      if (customAttesterHeaders)
      {
        v60 = v12;
        v61 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v60, "NSPServerPrivateAccessTokenCustomAttesterHeaders", v61);
      }
    }

    auxiliaryAuthenticationCacheKey = [v76 auxiliaryAuthenticationCacheKey];

    if (auxiliaryAuthenticationCacheKey)
    {
      auxiliaryAuthenticationCacheKey2 = [v76 auxiliaryAuthenticationCacheKey];
      if (auxiliaryAuthenticationCacheKey2)
      {
        v65 = v12;
        xpc_dictionary_set_string(v65, "NSPServerAuxiliaryAuthenticationCacheKey", [auxiliaryAuthenticationCacheKey2 UTF8String]);
      }
    }

    if (selfCopy)
    {
      v66 = objc_getProperty(selfCopy, v63, 16, 1);
    }

    else
    {
      v66 = 0;
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __83__NSPServerClient_fetchPrivateAccessTokenWithFetcher_allowRetry_completionHandler___block_invoke;
    handler[3] = &unk_1E7A309C0;
    v81 = retryCopy;
    handler[4] = selfCopy;
    v79 = v76;
    v80 = v75;
    xpc_connection_send_message_with_reply(v74, v12, v66, handler);
  }

  else
  {
    v67 = nplog_obj();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      LOWORD(bytes[0]) = 0;
      _os_log_error_impl(&dword_1AE7E2000, v67, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", bytes, 2u);
    }

    v68 = objc_alloc(MEMORY[0x1E696ABC0]);
    v87 = *MEMORY[0x1E696A588];
    v88 = @"IPC failed";
    v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    v47 = [v68 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v69];

    (*(handlerCopy + 2))(handlerCopy, 0, v47);
  }
}

void __83__NSPServerClient_fetchPrivateAccessTokenWithFetcher_allowRetry_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E20] && *(a1 + 56) == 1)
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_ERROR, "Token fetcher got invalid connection, retrying", v9, 2u);
    }

    [*(a1 + 32) fetchPrivateAccessTokenWithFetcher:*(a1 + 40) allowRetry:0 completionHandler:*(a1 + 48)];
  }

  else
  {
    v6 = get_nsdata_from_xpc_object(v3, "NSPServerPrivateAccessToken");
    v7 = [NSPServerClient getErrorFromDict:v4];
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, v6, v7);
    }
  }
}

- (void)fetchPrivateAccessTokenPairWithFetcher:(id)fetcher allowRetry:(BOOL)retry completionHandler:(id)handler
{
  v67[1] = *MEMORY[0x1E69E9840];
  fetcherCopy = fetcher;
  handlerCopy = handler;
  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(bytes[0]) = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEBUG, "Fetching Private Access Token Pair", bytes, 2u);
  }

  if (fetcherCopy && (v12 = objc_getProperty(fetcherCopy, v11, 64, 1)) != 0 && (v14 = v12, v15 = objc_getProperty(fetcherCopy, v13, 72, 1), v15, v14, v15))
  {
    getTokenFetchConnection = [(NSPServerClient *)self getTokenFetchConnection];
    if (getTokenFetchConnection)
    {
      v17 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v17, "NSPServerCommandType", 51);
      v18 = xpc_array_create(0, 0);
      v19 = xpc_dictionary_create(0, 0, 0);
      v21 = objc_getProperty(fetcherCopy, v20, 64, 1);
      v58 = v19;
      if (v21)
      {
        v22 = v19;
        v23 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v22, "NSPServerPrivateAccessTokenChallenge", v23);

        v19 = v58;
      }

      v25 = objc_getProperty(fetcherCopy, v24, 80, 1);
      if (v25)
      {
        v26 = v19;
        v27 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v26, "NSPServerPrivateAccessTokenKey", v27);

        v19 = v58;
      }

      v29 = objc_getProperty(fetcherCopy, v28, 88, 1);
      if (v29)
      {
        v30 = v19;
        v31 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v30, "NSPServerPrivateAccessTokenOriginNameKey", v31);

        v19 = v58;
      }

      xpc_array_append_value(v18, v19);
      v32 = xpc_dictionary_create(0, 0, 0);
      v34 = objc_getProperty(fetcherCopy, v33, 72, 1);
      if (v34)
      {
        v35 = v32;
        v57 = getTokenFetchConnection;
        v36 = handlerCopy;
        v37 = v17;
        selfCopy = self;
        v39 = v32;
        v40 = v18;
        retryCopy = retry;
        v42 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v35, "NSPServerPrivateAccessPairedTokenChallenge", v42);

        retry = retryCopy;
        v18 = v40;
        v32 = v39;
        self = selfCopy;
        v17 = v37;
        handlerCopy = v36;
        getTokenFetchConnection = v57;
      }

      xpc_array_append_value(v18, v32);
      xpc_dictionary_set_value(v17, "NSPServerPrivateAccessTokenChallenges", v18);
      selectedOrigin = [fetcherCopy selectedOrigin];
      if (selectedOrigin)
      {
        v44 = v17;
        xpc_dictionary_set_string(v44, "NSPServerPrivateAccessTokenOriginName", [selectedOrigin UTF8String]);
      }

      bundleID = [fetcherCopy bundleID];
      if (bundleID)
      {
        v46 = v17;
        xpc_dictionary_set_string(v46, "NSPServerSigningIdentifier", [bundleID UTF8String]);
      }

      if (fetcherCopy[20])
      {
        v47 = 0;
      }

      else
      {
        v47 = fetcherCopy[21] == 0;
      }

      if (!v47 || fetcherCopy[22] != 0 || fetcherCopy[23] != 0)
      {
        memset(bytes, 0, sizeof(bytes));
        objc_msgSend_auditToken(fetcherCopy);
        xpc_dictionary_set_data(v17, "NSPServerEffectiveAuditToken", bytes, 0x20uLL);
      }

      if ([fetcherCopy systemClient])
      {
        xpc_dictionary_set_BOOL(v17, "NSPServerTokenSystemClient", 1);
      }

      xpc_dictionary_set_BOOL(v17, "NSPServerHasPairedTokenChallenges", 1);
      if (self)
      {
        Property = objc_getProperty(self, v50, 16, 1);
      }

      else
      {
        Property = 0;
      }

      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __87__NSPServerClient_fetchPrivateAccessTokenPairWithFetcher_allowRetry_completionHandler___block_invoke;
      handler[3] = &unk_1E7A309C0;
      retryCopy2 = retry;
      handler[4] = self;
      v60 = fetcherCopy;
      v61 = handlerCopy;
      xpc_connection_send_message_with_reply(getTokenFetchConnection, v17, Property, handler);
    }

    else
    {
      v52 = nplog_obj();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        LOWORD(bytes[0]) = 0;
        _os_log_error_impl(&dword_1AE7E2000, v52, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", bytes, 2u);
      }

      v53 = objc_alloc(MEMORY[0x1E696ABC0]);
      v64 = *MEMORY[0x1E696A588];
      v65 = @"IPC failed";
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      v17 = [v53 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v54];

      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v17);
    }
  }

  else
  {
    v55 = objc_alloc(MEMORY[0x1E696ABC0]);
    v66 = *MEMORY[0x1E696A588];
    v67[0] = @"No paired challenges found";
    v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:&v66 count:1];
    getTokenFetchConnection = [v55 initWithDomain:@"privacyProxyErrorDomain" code:1004 userInfo:v56];

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, getTokenFetchConnection);
  }
}

void __87__NSPServerClient_fetchPrivateAccessTokenPairWithFetcher_allowRetry_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E20] && *(a1 + 56) == 1)
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_ERROR, "Token fetcher got invalid connection, retrying", v11, 2u);
    }

    [*(a1 + 32) fetchPrivateAccessTokenPairWithFetcher:*(a1 + 40) allowRetry:0 completionHandler:*(a1 + 48)];
  }

  else
  {
    v6 = get_nsdata_from_xpc_object(v3, "NSPServerPrivateAccessTokenPairLongLived");
    v7 = get_nsdata_from_xpc_object(v4, "NSPServerPrivateAccessTokenPairOneTime");
    v8 = get_nsdata_from_xpc_object(v4, "NSPServerPrivateAccessTokenPairOneTimeSalt");
    v9 = [NSPServerClient getErrorFromDict:v4];
    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, v6, v7, v8, v9);
    }
  }
}

- (void)fetchPrivateAccessTokenAndAuxAuthWithFetcher:(id)fetcher allowRetry:(BOOL)retry completionHandler:(id)handler
{
  v65[1] = *MEMORY[0x1E69E9840];
  fetcherCopy = fetcher;
  handlerCopy = handler;
  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(bytes[0]) = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEBUG, "Fetching Private Access Token and Auxiliary Authentication", bytes, 2u);
  }

  if (fetcherCopy && (v12 = objc_getProperty(fetcherCopy, v11, 64, 1)) != 0 && (v14 = v12, v15 = objc_getProperty(fetcherCopy, v13, 96, 1), v15, v14, v15))
  {
    getTokenFetchConnection = [(NSPServerClient *)self getTokenFetchConnection];
    if (getTokenFetchConnection)
    {
      retryCopy = retry;
      v17 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v17, "NSPServerCommandType", 51);
      v18 = xpc_array_create(0, 0);
      v19 = xpc_dictionary_create(0, 0, 0);
      v21 = objc_getProperty(fetcherCopy, v20, 64, 1);
      v56 = v19;
      if (v21)
      {
        v22 = v19;
        v23 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v22, "NSPServerPrivateAccessTokenChallenge", v23);
      }

      v25 = objc_getProperty(fetcherCopy, v24, 80, 1);
      if (v25)
      {
        v26 = v19;
        v27 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v26, "NSPServerPrivateAccessTokenKey", v27);
      }

      xpc_array_append_value(v18, v19);
      v28 = xpc_dictionary_create(0, 0, 0);
      v30 = objc_getProperty(fetcherCopy, v29, 96, 1);
      if (v30)
      {
        v31 = v28;
        v32 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v31, "NSPServerAuxiliaryAuthenticationChallenge", v32);
      }

      v34 = objc_getProperty(fetcherCopy, v33, 104, 1);
      if (v34)
      {
        v35 = v28;
        v36 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v35, "NSPServerPrivateAccessTokenKey", v36);
      }

      v38 = objc_getProperty(fetcherCopy, v37, 112, 1);
      if (v38)
      {
        v39 = v28;
        xpc_dictionary_set_string(v39, "NSPServerAuxiliaryAuthenticationLabel", [v38 UTF8String]);
      }

      xpc_array_append_value(v18, v28);
      xpc_dictionary_set_value(v17, "NSPServerPrivateAccessTokenChallenges", v18);
      bundleID = [fetcherCopy bundleID];
      if (bundleID)
      {
        v41 = v17;
        xpc_dictionary_set_string(v41, "NSPServerSigningIdentifier", [bundleID UTF8String]);
      }

      if (fetcherCopy[20])
      {
        v42 = 0;
      }

      else
      {
        v42 = fetcherCopy[21] == 0;
      }

      if (!v42 || fetcherCopy[22] != 0 || fetcherCopy[23] != 0)
      {
        memset(bytes, 0, sizeof(bytes));
        objc_msgSend_auditToken(fetcherCopy);
        xpc_dictionary_set_data(v17, "NSPServerEffectiveAuditToken", bytes, 0x20uLL);
      }

      if ([fetcherCopy systemClient])
      {
        xpc_dictionary_set_BOOL(v17, "NSPServerTokenSystemClient", 1);
      }

      if ([fetcherCopy metadataSize])
      {
        xpc_dictionary_set_uint64(v17, "NSPServerPrivateAccessTokenMetadataSize", [fetcherCopy metadataSize]);
      }

      auxiliaryAuthenticationCacheKey = [fetcherCopy auxiliaryAuthenticationCacheKey];

      if (auxiliaryAuthenticationCacheKey)
      {
        auxiliaryAuthenticationCacheKey2 = [fetcherCopy auxiliaryAuthenticationCacheKey];
        if (auxiliaryAuthenticationCacheKey2)
        {
          v47 = v17;
          xpc_dictionary_set_string(v47, "NSPServerAuxiliaryAuthenticationCacheKey", [auxiliaryAuthenticationCacheKey2 UTF8String]);
        }
      }

      xpc_dictionary_set_BOOL(v17, "NSPServerHasAuxiliaryAuthenticationChallenges", 1);
      if (self)
      {
        Property = objc_getProperty(self, v48, 16, 1);
      }

      else
      {
        Property = 0;
      }

      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __93__NSPServerClient_fetchPrivateAccessTokenAndAuxAuthWithFetcher_allowRetry_completionHandler___block_invoke;
      handler[3] = &unk_1E7A309C0;
      v60 = retryCopy;
      handler[4] = self;
      v58 = fetcherCopy;
      v59 = handlerCopy;
      xpc_connection_send_message_with_reply(getTokenFetchConnection, v17, Property, handler);
    }

    else
    {
      v50 = nplog_obj();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        LOWORD(bytes[0]) = 0;
        _os_log_error_impl(&dword_1AE7E2000, v50, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", bytes, 2u);
      }

      v51 = objc_alloc(MEMORY[0x1E696ABC0]);
      v62 = *MEMORY[0x1E696A588];
      v63 = @"IPC failed";
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      v17 = [v51 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v52];

      (*(handlerCopy + 2))(handlerCopy, 0, 0, v17);
    }
  }

  else
  {
    v53 = objc_alloc(MEMORY[0x1E696ABC0]);
    v64 = *MEMORY[0x1E696A588];
    v65[0] = @"Challenges not found";
    v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:&v64 count:1];
    getTokenFetchConnection = [v53 initWithDomain:@"privacyProxyErrorDomain" code:1004 userInfo:v54];

    (*(handlerCopy + 2))(handlerCopy, 0, 0, getTokenFetchConnection);
  }
}

void __93__NSPServerClient_fetchPrivateAccessTokenAndAuxAuthWithFetcher_allowRetry_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E20] && *(a1 + 56) == 1)
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_ERROR, "Token fetcher got invalid connection, retrying", v10, 2u);
    }

    [*(a1 + 32) fetchPrivateAccessTokenAndAuxAuthWithFetcher:*(a1 + 40) allowRetry:0 completionHandler:*(a1 + 48)];
  }

  else
  {
    v6 = get_nsdata_from_xpc_object(v3, "NSPServerPrivateAccessToken");
    v7 = get_nsdata_from_xpc_object(v4, "NSPServerAuxiliaryAuthenticationData");
    v8 = [NSPServerClient getErrorFromDict:v4];
    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, v6, v7, v8);
    }
  }
}

- (void)fetchKnownPrivateAccessTokenKeyWithFetcher:(id)fetcher allowRetry:(BOOL)retry completionHandler:(id)handler
{
  v28[1] = *MEMORY[0x1E69E9840];
  fetcherCopy = fetcher;
  handlerCopy = handler;
  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEBUG, "Fetching Private Access Token key", buf, 2u);
  }

  getTokenFetchConnection = [(NSPServerClient *)self getTokenFetchConnection];
  if (getTokenFetchConnection)
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v12, "NSPServerCommandType", 70);
    if (fetcherCopy)
    {
      v14 = objc_getProperty(fetcherCopy, v13, 64, 1);
      if (v14)
      {
        v15 = v12;
        v16 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v15, "NSPServerPrivateAccessTokenChallenge", v16);
      }
    }

    else
    {
      v14 = 0;
    }

    if (self)
    {
      Property = objc_getProperty(self, v17, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __91__NSPServerClient_fetchKnownPrivateAccessTokenKeyWithFetcher_allowRetry_completionHandler___block_invoke;
    v22[3] = &unk_1E7A309C0;
    retryCopy = retry;
    v22[4] = self;
    v23 = fetcherCopy;
    v24 = handlerCopy;
    xpc_connection_send_message_with_reply(getTokenFetchConnection, v12, Property, v22);
  }

  else
  {
    v19 = nplog_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v19, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v27 = *MEMORY[0x1E696A588];
    v28[0] = @"IPC failed";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v12 = [v20 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v21];

    (*(handlerCopy + 2))(handlerCopy, 0, v12);
  }
}

void __91__NSPServerClient_fetchKnownPrivateAccessTokenKeyWithFetcher_allowRetry_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E20] && *(a1 + 56) == 1)
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_ERROR, "Token fetcher got invalid connection, retrying", v9, 2u);
    }

    [*(a1 + 32) fetchKnownPrivateAccessTokenKeyWithFetcher:*(a1 + 40) allowRetry:0 completionHandler:*(a1 + 48)];
  }

  else
  {
    v6 = get_nsdata_from_xpc_object(v3, "NSPServerPrivateAccessTokenKey");
    v7 = [NSPServerClient getErrorFromDict:v4];
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, v6, v7);
    }
  }
}

- (void)addToken:(id)token toCacheForFetcher:(id)fetcher
{
  tokenCopy = token;
  fetcherCopy = fetcher;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_INFO, "Adding Private Access Token to cache", buf, 2u);
  }

  getTokenFetchConnection = [(NSPServerClient *)self getTokenFetchConnection];
  if (getTokenFetchConnection)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "NSPServerCommandType", 71);
    if (fetcherCopy)
    {
      v12 = objc_getProperty(fetcherCopy, v11, 64, 1);
      if (v12)
      {
        v13 = v10;
        v14 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v13, "NSPServerPrivateAccessTokenChallenge", v14);
      }
    }

    else
    {
      v12 = 0;
    }

    if (tokenCopy)
    {
      v15 = v10;
      v16 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v15, "NSPServerPrivateAccessToken", v16);
    }

    xpc_connection_send_message(getTokenFetchConnection, v10);
  }

  else
  {
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", v17, 2u);
    }
  }
}

- (void)addOneTimeToken:(id)token oneTimeTokenSalt:(id)salt longLivedToken:(id)livedToken toCacheForFetcher:(id)fetcher
{
  tokenCopy = token;
  saltCopy = salt;
  livedTokenCopy = livedToken;
  fetcherCopy = fetcher;
  v14 = nplog_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_INFO, "Adding One Time Token to cache", buf, 2u);
  }

  getTokenFetchConnection = [(NSPServerClient *)self getTokenFetchConnection];
  if (getTokenFetchConnection)
  {
    v16 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v16, "NSPServerCommandType", 71);
    if (fetcherCopy)
    {
      v18 = objc_getProperty(fetcherCopy, v17, 64, 1);
      if (v18)
      {
        v19 = v16;
        v20 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v19, "NSPServerPrivateAccessTokenChallenge", v20);
      }

      v22 = objc_getProperty(fetcherCopy, v21, 72, 1);
      if (v22)
      {
        v23 = v16;
        v24 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v23, "NSPServerPrivateAccessPairedTokenChallenge", v24);
      }
    }

    else
    {
      v22 = 0;
    }

    if (livedTokenCopy)
    {
      v25 = v16;
      v26 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v25, "NSPServerPrivateAccessTokenPairLongLived", v26);
    }

    if (tokenCopy)
    {
      v27 = v16;
      v28 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v27, "NSPServerPrivateAccessTokenPairOneTime", v28);
    }

    if (saltCopy)
    {
      v29 = v16;
      v30 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v29, "NSPServerPrivateAccessTokenPairOneTimeSalt", v30);
    }

    xpc_connection_send_message(getTokenFetchConnection, v16);
  }

  else
  {
    v16 = nplog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v31 = 0;
      _os_log_error_impl(&dword_1AE7E2000, v16, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", v31, 2u);
    }
  }
}

- (void)addAuxiliaryAuthenticationData:(id)data type:(unint64_t)type label:(id)label cacheKey:(id)key
{
  dataCopy = data;
  labelCopy = label;
  keyCopy = key;
  v13 = nplog_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE7E2000, v13, OS_LOG_TYPE_INFO, "Adding auxiliary authentication data to cache", buf, 2u);
  }

  getTokenFetchConnection = [(NSPServerClient *)self getTokenFetchConnection];
  if (getTokenFetchConnection)
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v15, "NSPServerCommandType", 72);
    if (dataCopy)
    {
      v16 = v15;
      v17 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v16, "NSPServerAuxiliaryAuthenticationData", v17);
    }

    v18 = labelCopy;
    if (v18)
    {
      v19 = v15;
      xpc_dictionary_set_string(v19, "NSPServerAuxiliaryAuthenticationLabel", [v18 UTF8String]);
    }

    v20 = keyCopy;
    if (v20)
    {
      v21 = v15;
      xpc_dictionary_set_string(v21, "NSPServerAuxiliaryAuthenticationCacheKey", [v20 UTF8String]);
    }

    xpc_dictionary_set_int64(v15, "NSPServerAuxiliaryAuthenticationType", type);
    xpc_connection_send_message(getTokenFetchConnection, v15);
  }

  else
  {
    v15 = nplog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_error_impl(&dword_1AE7E2000, v15, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", v22, 2u);
    }
  }
}

- (void)fetchAuxiliaryAuthenticationDataFromCacheForType:(unint64_t)type label:(id)label cacheKey:(id)key completionHandler:(id)handler
{
  v28[1] = *MEMORY[0x1E69E9840];
  labelCopy = label;
  keyCopy = key;
  handlerCopy = handler;
  v13 = nplog_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE7E2000, v13, OS_LOG_TYPE_INFO, "Fetching auxiliary authentication data from cache", buf, 2u);
  }

  getTokenFetchConnection = [(NSPServerClient *)self getTokenFetchConnection];
  if (getTokenFetchConnection)
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v15, "NSPServerCommandType", 73);
    v16 = labelCopy;
    if (v16)
    {
      v17 = v15;
      xpc_dictionary_set_string(v17, "NSPServerAuxiliaryAuthenticationLabel", [v16 UTF8String]);
    }

    v18 = keyCopy;
    if (v18)
    {
      v19 = v15;
      xpc_dictionary_set_string(v19, "NSPServerAuxiliaryAuthenticationCacheKey", [v18 UTF8String]);
    }

    xpc_dictionary_set_int64(v15, "NSPServerAuxiliaryAuthenticationType", type);
    if (self)
    {
      self = objc_getProperty(self, v20, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __101__NSPServerClient_fetchAuxiliaryAuthenticationDataFromCacheForType_label_cacheKey_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v25 = handlerCopy;
    xpc_connection_send_message_with_reply(getTokenFetchConnection, v15, &self->super, handler);
  }

  else
  {
    v21 = nplog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v21, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v22 = objc_alloc(MEMORY[0x1E696ABC0]);
    v27 = *MEMORY[0x1E696A588];
    v28[0] = @"IPC failed";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v15 = [v22 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v23];

    (*(handlerCopy + 2))(handlerCopy, 0, v15);
  }
}

void __101__NSPServerClient_fetchAuxiliaryAuthenticationDataFromCacheForType_label_cacheKey_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = get_nsdata_from_xpc_object(v3, "NSPServerAuxiliaryAuthenticationData");
  v4 = [NSPServerClient getErrorFromDict:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6, v4);
  }
}

- (BOOL)checkOriginAllowedAsThirdParty:(id)party
{
  partyCopy = party;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_INFO, "Checking origin for Private Access Token", buf, 2u);
  }

  getTokenFetchConnection = [(NSPServerClient *)self getTokenFetchConnection];
  if (getTokenFetchConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 60);
    v8 = partyCopy;
    if (v8)
    {
      v9 = v7;
      xpc_dictionary_set_string(v9, "NSPServerPrivateAccessTokenOriginName", [v8 UTF8String]);
    }

    v10 = xpc_connection_send_message_with_reply_sync(getTokenFetchConnection, v7);
    v11 = xpc_dictionary_get_BOOL(v10, "NSPServerPrivateAccessTokenOriginAllowed");
  }

  else
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", v13, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (void)startProxyToMPTCPConverterProxyWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "send start request to proxy socket based TCP connections to MPTCP converter proxy", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 52);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __72__NSPServerClient_startProxyToMPTCPConverterProxyWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v13 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, v7);
  }
}

uint64_t __72__NSPServerClient_startProxyToMPTCPConverterProxyWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)stopProxyToMPTCPConverterProxyWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "send stop request to proxy socket based TCP connections to MPTCP converter proxy", buf, 2u);
  }

  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 53);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __71__NSPServerClient_stopProxyToMPTCPConverterProxyWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v13 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, v7);
  }
}

uint64_t __71__NSPServerClient_stopProxyToMPTCPConverterProxyWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)dumpPrivacyProxyTokenEventsWithCompletionHandler:(id)handler mostRecent:(BOOL)recent limit:(unint64_t)limit dumpStats:(BOOL)stats completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v15, "NSPServerCommandType", 66);
    v16 = handlerCopy;
    if (v16)
    {
      v17 = v15;
      xpc_dictionary_set_string(v17, "NSPServerPrivacyProxyTokenEventsVendor", [v16 UTF8String]);
    }

    xpc_dictionary_set_BOOL(v15, "NSPServerPrivacyProxyTokenEventsMostRecent", recent);
    xpc_dictionary_set_uint64(v15, "NSPServerPrivacyProxyTokenEventsLimit", limit);
    xpc_dictionary_set_BOOL(v15, "NSPServerPrivacyProxyTokenEventsStats", stats);
    if (self)
    {
      self = objc_getProperty(self, v18, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __113__NSPServerClient_dumpPrivacyProxyTokenEventsWithCompletionHandler_mostRecent_limit_dumpStats_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v20 = completionHandlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v15, &self->super, handler);
  }

  else
  {
    (*(completionHandlerCopy + 2))(completionHandlerCopy, 0);
  }
}

uint64_t __113__NSPServerClient_dumpPrivacyProxyTokenEventsWithCompletionHandler_mostRecent_limit_dumpStats_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  get_nsarray_from_xpc_object(a2, "NSPServerPrivacyProxyTokenEvents");
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)setPrivacyProxyTokenEventsProactiveTokenFetchParams:(id)params lowerTokenCountThresholdStr:(id)str lowerTokenCountProbabilityStr:(id)probabilityStr statsDurationStr:(id)durationStr upperLWMCountThresholdStr:(id)thresholdStr upperLWMCountProbabilityOffsetStr:(id)offsetStr completionHandler:(id)handler
{
  v42[1] = *MEMORY[0x1E69E9840];
  paramsCopy = params;
  strCopy = str;
  probabilityStrCopy = probabilityStr;
  durationStrCopy = durationStr;
  thresholdStrCopy = thresholdStr;
  offsetStrCopy = offsetStr;
  handlerCopy = handler;
  getConnection = [(NSPServerClient *)self getConnection];
  if (getConnection)
  {
    v21 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v21, "NSPServerCommandType", 67);
    v23 = paramsCopy;
    if (paramsCopy)
    {
      v24 = [paramsCopy caseInsensitiveCompare:@"Yes"];
      if (!v24 || ![paramsCopy caseInsensitiveCompare:@"No"])
      {
        xpc_dictionary_set_BOOL(v21, "NSPServerPrivacyProxyTokenEventsEnableProactiveTokenFetch", v24 == 0);
      }
    }

    v25 = durationStrCopy;
    if (durationStrCopy)
    {
      integerValue = [durationStrCopy integerValue];
      if (integerValue >= 1)
      {
        xpc_dictionary_set_uint64(v21, "NSPServerPrivacyProxyTokenEventsSetStatsDuration", integerValue);
      }
    }

    v28 = offsetStrCopy;
    v27 = strCopy;
    if (strCopy)
    {
      integerValue2 = [strCopy integerValue];
      if (integerValue2 >= 1)
      {
        xpc_dictionary_set_uint64(v21, "NSPServerPrivacyProxyTokenEventsSetLowerTokenCountThreshold", integerValue2);
      }
    }

    if (probabilityStrCopy)
    {
      [probabilityStrCopy doubleValue];
      if (v30 >= 0.0 && v30 <= 1.0)
      {
        xpc_dictionary_set_double(v21, "NSPServerPrivacyProxyTokenEventsSetLowerTokenCountProbability", v30);
      }
    }

    if (thresholdStrCopy)
    {
      integerValue3 = [thresholdStrCopy integerValue];
      if (integerValue3 >= 1)
      {
        xpc_dictionary_set_uint64(v21, "NSPServerPrivacyProxyTokenEventsSetUpperLWMCountThreshold", integerValue3);
      }
    }

    if (offsetStrCopy)
    {
      [offsetStrCopy doubleValue];
      if (v32 >= 0.0 && v32 <= 1.0)
      {
        xpc_dictionary_set_double(v21, "NSPServerPrivacyProxyTokenEventsSetUpperLWMCountProbabilityOffset", v32);
      }
    }

    if (self)
    {
      self = objc_getProperty(self, v22, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __224__NSPServerClient_setPrivacyProxyTokenEventsProactiveTokenFetchParams_lowerTokenCountThresholdStr_lowerTokenCountProbabilityStr_statsDurationStr_upperLWMCountThresholdStr_upperLWMCountProbabilityOffsetStr_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v40 = handlerCopy;
    xpc_connection_send_message_with_reply(getConnection, v21, &self->super, handler);
  }

  else
  {
    v23 = paramsCopy;
    v33 = nplog_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v33, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v34 = objc_alloc(MEMORY[0x1E696ABC0]);
    v41 = *MEMORY[0x1E696A588];
    v42[0] = @"IPC failed";
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v21 = [v34 initWithDomain:@"privacyProxyErrorDomain" code:1004 userInfo:v35];

    (*(handlerCopy + 2))(handlerCopy, v21);
    v25 = durationStrCopy;
    v28 = offsetStrCopy;
    v27 = strCopy;
  }
}

uint64_t __224__NSPServerClient_setPrivacyProxyTokenEventsProactiveTokenFetchParams_lowerTokenCountThresholdStr_lowerTokenCountProbabilityStr_statsDurationStr_upperLWMCountThresholdStr_upperLWMCountProbabilityOffsetStr_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)checkRemainingCostQuotaWithFetcher:(id)fetcher allowRetry:(BOOL)retry completionHandler:(id)handler
{
  v33[1] = *MEMORY[0x1E69E9840];
  fetcherCopy = fetcher;
  handlerCopy = handler;
  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(bytes[0]) = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEBUG, "Checking remaining cost quota", bytes, 2u);
  }

  getTokenFetchConnection = [(NSPServerClient *)self getTokenFetchConnection];
  if (getTokenFetchConnection)
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v12, "NSPServerCommandType", 76);
    if (fetcherCopy)
    {
      v14 = objc_getProperty(fetcherCopy, v13, 64, 1);
      if (v14)
      {
        v15 = v12;
        v16 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v15, "NSPServerPrivateAccessTokenChallenge", v16);
      }
    }

    else
    {
      v14 = 0;
    }

    bundleID = [fetcherCopy bundleID];
    if (bundleID)
    {
      v18 = v12;
      xpc_dictionary_set_string(v18, "NSPServerSigningIdentifier", [bundleID UTF8String]);
    }

    if (fetcherCopy)
    {
      v20 = !fetcherCopy[20] && fetcherCopy[21] == 0;
      v21 = v20 && fetcherCopy[22] == 0;
      if (!v21 || fetcherCopy[23] != 0)
      {
        memset(bytes, 0, sizeof(bytes));
        objc_msgSend_auditToken(fetcherCopy);
        xpc_dictionary_set_data(v12, "NSPServerEffectiveAuditToken", bytes, 0x20uLL);
      }
    }

    if (self)
    {
      Property = objc_getProperty(self, v19, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __83__NSPServerClient_checkRemainingCostQuotaWithFetcher_allowRetry_completionHandler___block_invoke;
    v27[3] = &unk_1E7A309C0;
    retryCopy = retry;
    v27[4] = self;
    v28 = fetcherCopy;
    v29 = handlerCopy;
    xpc_connection_send_message_with_reply(getTokenFetchConnection, v12, Property, v27);
  }

  else
  {
    v24 = nplog_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(bytes[0]) = 0;
      _os_log_error_impl(&dword_1AE7E2000, v24, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", bytes, 2u);
    }

    v25 = objc_alloc(MEMORY[0x1E696ABC0]);
    v32 = *MEMORY[0x1E696A588];
    v33[0] = @"IPC failed";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v12 = [v25 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v26];

    (*(handlerCopy + 2))(handlerCopy, 0, v12, 0.0, 0.0);
  }
}

void __83__NSPServerClient_checkRemainingCostQuotaWithFetcher_allowRetry_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E20] && *(a1 + 56) == 1)
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_ERROR, "Check cost quota got invalid connection, retrying", v12, 2u);
    }

    [*(a1 + 32) checkRemainingCostQuotaWithFetcher:*(a1 + 40) allowRetry:0 completionHandler:*(a1 + 48)];
  }

  else
  {
    v6 = xpc_dictionary_get_double(v3, "NSPServerQuotaCostLimit");
    v7 = xpc_dictionary_get_double(v4, "NSPServerQuotaCostRemaining");
    uint64 = xpc_dictionary_get_uint64(v4, "NSPServerQuotaExpiration");
    if (uint64)
    {
      v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:uint64];
    }

    else
    {
      v9 = 0;
    }

    v10 = [NSPServerClient getErrorFromDict:v4];
    v11 = *(a1 + 48);
    if (v11)
    {
      (*(v11 + 16))(v11, v9, v10, v6, v7);
    }
  }
}

@end