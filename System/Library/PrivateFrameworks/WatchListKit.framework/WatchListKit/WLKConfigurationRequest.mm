@interface WLKConfigurationRequest
+ (id)_configURLString:(id *)string;
+ (void)_fetchV3WithOptions:(int64_t)options cachePolicy:(unint64_t)policy sessionConfiguration:(id)configuration queryParameters:(id)parameters completion:(id)completion;
+ (void)fetchWithOptions:(int64_t)options cachePolicy:(unint64_t)policy wlkCachePolicy:(unint64_t)cachePolicy extendedCacheExpireDuration:(double)duration sessionConfiguration:(id)configuration queryParameters:(id)parameters fileStorage:(id)storage completion:(id)self0;
@end

@implementation WLKConfigurationRequest

+ (void)fetchWithOptions:(int64_t)options cachePolicy:(unint64_t)policy wlkCachePolicy:(unint64_t)cachePolicy extendedCacheExpireDuration:(double)duration sessionConfiguration:(id)configuration queryParameters:(id)parameters fileStorage:(id)storage completion:(id)self0
{
  configurationCopy = configuration;
  parametersCopy = parameters;
  storageCopy = storage;
  completionCopy = completion;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __159__WLKConfigurationRequest_fetchWithOptions_cachePolicy_wlkCachePolicy_extendedCacheExpireDuration_sessionConfiguration_queryParameters_fileStorage_completion___block_invoke;
  v37[3] = &unk_279E60080;
  v21 = completionCopy;
  v39 = v21;
  v22 = storageCopy;
  v38 = v22;
  v23 = MEMORY[0x2743D2DF0](v37);
  v24 = v23;
  if (policy == 1 || !v22)
  {
    [self _fetchV3WithOptions:options cachePolicy:policy sessionConfiguration:configurationCopy queryParameters:parametersCopy completion:v23];
  }

  else
  {
    v25 = WLKStartupSignpostLogObject(v23);
    if (os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v25, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.DiskCacheRead", &unk_272A8884E, buf, 2u);
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __159__WLKConfigurationRequest_fetchWithOptions_cachePolicy_wlkCachePolicy_extendedCacheExpireDuration_sessionConfiguration_queryParameters_fileStorage_completion___block_invoke_7;
    v26[3] = &unk_279E600D0;
    cachePolicyCopy = cachePolicy;
    durationCopy = duration;
    v29 = v21;
    selfCopy = self;
    optionsCopy = options;
    policyCopy = policy;
    v27 = configurationCopy;
    v28 = parametersCopy;
    v30 = v24;
    [v22 read:v26];
  }
}

void __159__WLKConfigurationRequest_fetchWithOptions_cachePolicy_wlkCachePolicy_extendedCacheExpireDuration_sessionConfiguration_queryParameters_fileStorage_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 requiredRequestKeyValuePairsDictionary];
    v8 = [v7 count];
    v9 = v8 != 0;

    if (!v6 && v8)
    {
      v11 = WLKStartupSignpostLogObject(v10);
      if (os_signpost_enabled(v11))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_272A0F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.DiskCacheWrite", &unk_272A8884E, buf, 2u);
      }

      v12 = WLKNetworkingLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272A0F000, v12, OS_LOG_TYPE_DEFAULT, "WLKConfigurationRequest - Configuration request is completed", buf, 2u);
      }

      (*(*(a1 + 40) + 16))();
      v13 = *(a1 + 32);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __159__WLKConfigurationRequest_fetchWithOptions_cachePolicy_wlkCachePolicy_extendedCacheExpireDuration_sessionConfiguration_queryParameters_fileStorage_completion___block_invoke_4;
      v16[3] = &unk_279E60058;
      v17 = v5;
      [v13 write:v17 completion:v16];

      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v6 localizedDescription];
    *buf = 138412546;
    v19 = v15;
    v20 = 1024;
    v21 = v9;
    _os_log_impl(&dword_272A0F000, v14, OS_LOG_TYPE_DEFAULT, "WLKConfigurationRequest - Not persisting config on disk. Error:%@; isResponseValid:%d", buf, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
LABEL_13:
}

void __159__WLKConfigurationRequest_fetchWithOptions_cachePolicy_wlkCachePolicy_extendedCacheExpireDuration_sessionConfiguration_queryParameters_fileStorage_completion___block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) expirationDate];
    v10 = 138412802;
    v11 = v7;
    v12 = 1024;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKConfigurationRequest - Wrote to disk. Exp:%@ Success:%d err:%@", &v10, 0x1Cu);
  }

  v9 = WLKStartupSignpostLogObject(v8);
  if (os_signpost_enabled(v9))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.DiskCacheWrite", &unk_272A8884E, &v10, 2u);
  }
}

void __159__WLKConfigurationRequest_fetchWithOptions_cachePolicy_wlkCachePolicy_extendedCacheExpireDuration_sessionConfiguration_queryParameters_fileStorage_completion___block_invoke_7(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = WLKStartupSignpostLogObject(v5);
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.DiskCacheRead", &unk_272A8884E, buf, 2u);
  }

  [v5 setFromDiskCache:1];
  v7 = *(a1 + 64);
  if ((v7 - 1) < 2)
  {
    goto LABEL_7;
  }

  if (v7 == 4)
  {
    if ([v5 isValidIgnoringExpiration])
    {
      goto LABEL_7;
    }
  }

  else if (v7 == 5)
  {
    if ([v5 isValidWithinExtendedExpiration:*(a1 + 72)])
    {
LABEL_7:
      v8 = WLKNetworkingLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKConfigurationRequest - Disk cache hit", buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
      goto LABEL_17;
    }
  }

  else if ([v5 isValid])
  {
    goto LABEL_7;
  }

  if (v5 && !a3)
  {
    v9 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 expirationDate];
      *buf = 138412290;
      v19 = v10;
      _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKConfigurationRequest - Disk cache is invalid. Expiration:%@", buf, 0xCu);
    }
  }

  v11 = dispatch_get_global_queue(17, 0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __159__WLKConfigurationRequest_fetchWithOptions_cachePolicy_wlkCachePolicy_extendedCacheExpireDuration_sessionConfiguration_queryParameters_fileStorage_completion___block_invoke_8;
  v12[3] = &unk_279E600A8;
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  dispatch_async(v11, v12);

LABEL_17:
}

+ (void)_fetchV3WithOptions:(int64_t)options cachePolicy:(unint64_t)policy sessionConfiguration:(id)configuration queryParameters:(id)parameters completion:(id)completion
{
  configurationCopy = configuration;
  parametersCopy = parameters;
  completionCopy = completion;
  if (!completionCopy)
  {
    +[WLKConfigurationRequest _fetchV3WithOptions:cachePolicy:sessionConfiguration:queryParameters:completion:];
  }

  v14 = completionCopy;
  v48 = 0;
  v15 = [self _configURLString:&v48];
  v16 = v48;
  v17 = [v15 length];
  if (v17)
  {
    optionsCopy = options;
    v39 = v16;
    v18 = WLKStartupSignpostLogObject(v17);
    if (os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v18, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.RequestCreation", &unk_272A8884E, buf, 2u);
    }

    v19 = +[WLKUserEnvironment currentEnvironment];
    v20 = objc_alloc(MEMORY[0x277CBEB38]);
    _queryParametersV3 = [v19 _queryParametersV3];
    v22 = [v20 initWithDictionary:_queryParametersV3];

    v40 = parametersCopy;
    [v22 addEntriesFromDictionary:parametersCopy];
    v23 = [v22 objectForKeyedSubscript:@"caller"];

    if (!v23)
    {
      [v22 setObject:@"wlk" forKeyedSubscript:@"caller"];
    }

    v24 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v15];
    v37 = [MEMORY[0x277CBEBC0] wlk_sortedQueryItemsFromDictionary:v22];
    [v24 setQueryItems:?];
    v25 = objc_alloc(MEMORY[0x277CBAB50]);
    v26 = [v24 URL];
    v27 = [v25 initWithURL:v26 cachePolicy:policy timeoutInterval:10.0];

    _queryPostV3 = [v19 _queryPostV3];
    v46 = 0;
    v29 = [MEMORY[0x277CCAAA0] dataWithJSONObject:_queryPostV3 options:0 error:&v46];
    v41 = v46;
    if (!v29)
    {
      v30 = WLKNetworkingLogObject();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [WLKConfigurationRequest _fetchV3WithOptions:v41 cachePolicy:v30 sessionConfiguration:? queryParameters:? completion:?];
      }
    }

    [v27 setHTTPMethod:@"POST"];
    [v27 setHTTPBody:v29];
    v31 = WLKStartupSignpostLogObject([v27 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"]);
    if (os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v31, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.RequestCreation", &unk_272A8884E, buf, 2u);
    }

    v33 = WLKStartupSignpostLogObject(v32);
    if (os_signpost_enabled(v33))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v33, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.NetworkRequest", &unk_272A8884E, buf, 2u);
    }

    v34 = [v27 copy];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __107__WLKConfigurationRequest__fetchV3WithOptions_cachePolicy_sessionConfiguration_queryParameters_completion___block_invoke;
    v43[3] = &unk_279E600F8;
    v44 = v19;
    v45 = v14;
    v35 = v19;
    v36 = configurationCopy;
    [WLKNetworkRequestUtilities startNetworkRequest:v34 account:0 sessionConfiguration:configurationCopy options:optionsCopy completion:v43];

    v16 = v39;
    parametersCopy = v40;
  }

  else
  {
    v22 = WLKError(100, v16, @"WLKConfigurationRequest: Error: UTS init/config (v3) not available in the URL bag.");
    (v14)[2](v14, 0, v22);
    v36 = configurationCopy;
  }
}

void __107__WLKConfigurationRequest__fetchV3WithOptions_cachePolicy_sessionConfiguration_queryParameters_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = WLKStartupSignpostLogObject(v6);
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.NetworkRequest", &unk_272A8884E, buf, 2u);
  }

  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = WLKStartupSignpostLogObject(v8);
    if (os_signpost_enabled(v9))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.ResponseParse", &unk_272A8884E, v17, 2u);
    }

    v10 = objc_alloc_init(WLKDictionaryResponseProcessor);
    [(WLKDictionaryResponseProcessor *)v10 setDictionaryKeyPath:@"data"];
    v11 = [v5 data];
    v16 = 0;
    v12 = [(WLKDictionaryResponseProcessor *)v10 processResponseData:v11 error:&v16];
    v6 = v16;

    v13 = -[WLKServerConfigurationResponse initWithServerResponseDictionary:expirationDate:environmentHash:]([WLKServerConfigurationResponse alloc], "initWithServerResponseDictionary:expirationDate:environmentHash:", v12, 0, [*(a1 + 32) hash]);
    v14 = WLKStartupSignpostLogObject(v13);
    if (os_signpost_enabled(v14))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.ResponseParse", &unk_272A8884E, v15, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

+ (id)_configURLString:(id *)string
{
  v19[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v4 = WLKBaseURLReturningError();
  v5 = 0;
  if ([v4 length])
  {
    v6 = kBagKeyUVSearchRoutesInitConfigPathV3;
    v7 = WLKStartupSignpostLogObject(v6);
    if (os_signpost_enabled(v7))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.initConfigEndpointFromBag", &unk_272A8884E, v17, 2u);
    }

    v8 = [MEMORY[0x277D6C480] app];
    v9 = [v8 cachedStringForKey:v6];

    v11 = WLKStartupSignpostLogObject(v10);
    if (os_signpost_enabled(v11))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.initConfigEndpointFromBag", &unk_272A8884E, v17, 2u);
    }

    if ([v9 length])
    {
      v12 = v9;
    }

    else
    {
      if (string)
      {
        *string = 0;
      }

      v12 = @"uts/v3/configurations";
    }

    v19[0] = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v14 = [v4 wlk_stringByAppendingPathComponents:v15];
  }

  else if (string)
  {
    v13 = v5;
    v14 = 0;
    *string = v5;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (void)_fetchV3WithOptions:(uint64_t)a1 cachePolicy:(NSObject *)a2 sessionConfiguration:queryParameters:completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_272A0F000, a2, OS_LOG_TYPE_ERROR, "WLKConfigurationRequest - Failed to construct POST payload... continuing with empty body.%@", &v2, 0xCu);
}

@end