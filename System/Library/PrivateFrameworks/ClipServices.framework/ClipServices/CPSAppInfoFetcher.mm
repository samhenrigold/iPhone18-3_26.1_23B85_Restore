@interface CPSAppInfoFetcher
+ (id)_cachedIconFileURLForItemID:(id)d;
+ (id)_sharedAMSBag;
- (CPSAppInfoFetcher)init;
- (void)_downloadIconIfNeeded:(id)needed completionHandler:(id)handler;
- (void)_lookUpClipDemoAMSMetadataWithBundleID:(id)d completion:(id)completion;
- (void)evictCachedMetadataForClipBundleID:(id)d;
- (void)lookUpClipMetadataByBundleID:(id)d sourceBundleID:(id)iD URL:(id)l downloadIconIfNeeded:(BOOL)needed skipCaching:(BOOL)caching completionHandler:(id)handler;
@end

@implementation CPSAppInfoFetcher

- (CPSAppInfoFetcher)init
{
  v7.receiver = self;
  v7.super_class = CPSAppInfoFetcher;
  v2 = [(CPSAppInfoFetcher *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    appMetadataByBundleID = v2->_appMetadataByBundleID;
    v2->_appMetadataByBundleID = v3;

    [(NSCache *)v2->_appMetadataByBundleID setCountLimit:10];
    v5 = v2;
  }

  return v2;
}

- (void)lookUpClipMetadataByBundleID:(id)d sourceBundleID:(id)iD URL:(id)l downloadIconIfNeeded:(BOOL)needed skipCaching:(BOOL)caching completionHandler:(id)handler
{
  cachingCopy = caching;
  neededCopy = needed;
  v47 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  lCopy = l;
  handlerCopy = handler;
  if (dCopy)
  {
    cps_looksLikeUUIDOrWebClipIdentifier = [dCopy cps_looksLikeUUIDOrWebClipIdentifier];
    if (cps_looksLikeUUIDOrWebClipIdentifier)
    {
      v20 = CPS_LOG_CHANNEL_PREFIXClipServices(cps_looksLikeUUIDOrWebClipIdentifier, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [CPSAppInfoFetcher lookUpClipMetadataByBundleID:iDCopy sourceBundleID:dCopy URL:v20 downloadIconIfNeeded:? skipCaching:? completionHandler:?];
      }
    }

    v21 = [(NSCache *)self->_appMetadataByBundleID objectForKey:dCopy];
    cps_isAMSPlaceholderBundleIdentifier = [dCopy cps_isAMSPlaceholderBundleIdentifier];
    if (cps_isAMSPlaceholderBundleIdentifier)
    {
      v24 = CPS_LOG_CHANNEL_PREFIXClipServices(cps_isAMSPlaceholderBundleIdentifier, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138478083;
        v44 = dCopy;
        v45 = 2113;
        v46 = lCopy;
        _os_log_impl(&dword_2436ED000, v24, OS_LOG_TYPE_INFO, "Look up metadata for AMS placeholder bundleID: %{private}@, URL: %{private}@", buf, 0x16u);
      }

      v21 = 0;
    }

    else if (v21)
    {
      amsDictionary = [v21 amsDictionary];
      if (amsDictionary)
      {
        isExpired = [v21 isExpired];

        if (((isExpired | cachingCopy) & 1) == 0)
        {
          amsDictionary2 = [v21 amsDictionary];
          v37 = [CPSClipInvocationPolicy invocationPolicyWithAMSDict:amsDictionary2];
          [v21 setInvocationPolicy:v37];

          if (neededCopy)
          {
            [(CPSAppInfoFetcher *)self _downloadIconIfNeeded:v21 completionHandler:handlerCopy];
          }

          else
          {
            handlerCopy[2](handlerCopy, v21, 0);
          }

LABEL_20:

          goto LABEL_21;
        }
      }
    }

    v28 = +[CPSClipURL usesDemoMetadata];
    if (v28)
    {
      [(CPSAppInfoFetcher *)self _lookUpClipDemoAMSMetadataWithBundleID:dCopy completion:handlerCopy];
    }

    else
    {
      v30 = CPS_LOG_CHANNEL_PREFIXClipServices(v28, v29);
      if (os_signpost_enabled(v30))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2436ED000, v30, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "lookUpClipMetadataAction", "start looking up clip metadata", buf, 2u);
      }

      v31 = objc_alloc(MEMORY[0x277CEE458]);
      v32 = +[CPSAppInfoFetcher _sharedAMSBag];
      v33 = [v31 initWithClientID:@"com.apple.ClipServices.clipserviced" bundleID:dCopy URL:lCopy bag:v32];

      if ([iDCopy length])
      {
        v34 = [objc_alloc(MEMORY[0x277CEE620]) initWithBundleIdentifier:iDCopy];
        [v33 setClientInfo:v34];
      }

      perform = [v33 perform];
      objc_initWeak(buf, self);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __120__CPSAppInfoFetcher_lookUpClipMetadataByBundleID_sourceBundleID_URL_downloadIconIfNeeded_skipCaching_completionHandler___block_invoke;
      v38[3] = &unk_278DCF288;
      v40 = handlerCopy;
      objc_copyWeak(&v41, buf);
      v39 = dCopy;
      v42 = neededCopy;
      [perform addFinishBlock:v38];

      objc_destroyWeak(&v41);
      objc_destroyWeak(buf);
    }

    goto LABEL_20;
  }

  v25 = [MEMORY[0x277CCA9B8] cps_errorWithCode:1];
  (handlerCopy)[2](handlerCopy, 0, v25);

LABEL_21:
}

void __120__CPSAppInfoFetcher_lookUpClipMetadataByBundleID_sourceBundleID_URL_downloadIconIfNeeded_skipCaching_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v8 = CPS_LOG_CHANNEL_PREFIXClipServices(v6, v7);
  if (os_signpost_enabled(v8))
  {
    LOWORD(v35) = 0;
    _os_signpost_emit_with_name_impl(&dword_2436ED000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "lookUpClipMetadataAction", "end looking up clip metadata", &v35, 2u);
  }

  v9 = objc_alloc_init(CPSClipMetadata);
  if (v6)
  {
    v10 = [v6 domain];
    if ([v10 isEqualToString:*MEMORY[0x277CEE188]])
    {
      v11 = [v6 code];

      if (v11 == 405)
      {
        v12 = [CPSClipInvocationPolicy ineligiblePolicyWithReason:8];
        [(CPSClipMetadata *)v9 setInvocationPolicy:v12];

        v13 = *(*(a1 + 40) + 16);
LABEL_20:
        v13();
        goto LABEL_24;
      }
    }

    else
    {
    }

    v13 = *(*(a1 + 40) + 16);
    goto LABEL_20;
  }

  v14 = [v5 responseDataItems];
  v15 = [v14 firstObject];

  if (v15)
  {
    [(CPSClipMetadata *)v9 updateWithStoreClipMetadata:v15];
    v16 = [v5 responseHeaders];
    [v16 maxAge];
    v18 = v17;

    if (v18 < 10.0)
    {
      v21 = CPS_LOG_CHANNEL_PREFIXClipServices(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __120__CPSAppInfoFetcher_lookUpClipMetadataByBundleID_sourceBundleID_URL_downloadIconIfNeeded_skipCaching_completionHandler___block_invoke_cold_1();
      }
    }

    v22 = [MEMORY[0x277CBEAA8] now];
    v23 = [v22 dateByAddingTimeInterval:v18];
    [(CPSClipMetadata *)v9 setExpirationDate:v23];

    v26 = CPS_LOG_CHANNEL_PREFIXClipServices(v24, v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = v26;
      v28 = [(CPSClipMetadata *)v9 expirationDate];
      v35 = 134218242;
      v36 = v9;
      v37 = 2114;
      v38 = v28;
      _os_log_impl(&dword_2436ED000, v27, OS_LOG_TYPE_INFO, "Set expiration date for metadata: (%p) to: %{public}@", &v35, 0x16u);
    }

    v29 = [CPSClipInvocationPolicy invocationPolicyWithAMSDict:v15];
    [(CPSClipMetadata *)v9 setInvocationPolicy:v29];

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained && ([*(a1 + 32) cps_isAMSPlaceholderBundleIdentifier] & 1) == 0)
    {
      v31 = WeakRetained[1];
      v32 = [(CPSClipMetadata *)v9 clipBundleID];
      [v31 setObject:v9 forKey:v32];
    }

    v33 = *(a1 + 40);
    if (*(a1 + 56) == 1)
    {
      [WeakRetained _downloadIconIfNeeded:v9 completionHandler:v33];
    }

    else
    {
      (*(v33 + 16))(*(a1 + 40), v9, 0);
    }
  }

  else
  {
    v34 = *(a1 + 40);
    WeakRetained = [MEMORY[0x277CCA9B8] cps_errorWithCode:1];
    (*(v34 + 16))(v34, 0, WeakRetained);
  }

LABEL_24:
}

- (void)evictCachedMetadataForClipBundleID:(id)d
{
  if (d)
  {
    [(NSCache *)self->_appMetadataByBundleID removeObjectForKey:?];
  }
}

+ (id)_sharedAMSBag
{
  if (_sharedAMSBag_onceToken != -1)
  {
    +[CPSAppInfoFetcher _sharedAMSBag];
  }

  v3 = _sharedAMSBag_bag;

  return v3;
}

uint64_t __34__CPSAppInfoFetcher__sharedAMSBag__block_invoke()
{
  v0 = MEMORY[0x277CEE408];
  v1 = [MEMORY[0x277CEE458] bagKeySet];
  [v0 registerBagKeySet:v1 forProfile:@"clipserviced" profileVersion:@"1"];

  _sharedAMSBag_bag = [MEMORY[0x277CEE3F8] bagForProfile:@"clipserviced" profileVersion:@"1"];

  return MEMORY[0x2821F96F8]();
}

+ (id)_cachedIconFileURLForItemID:(id)d
{
  dCopy = d;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  v5 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v15];
  v6 = v15;

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[CPSAppInfoFetcher _cachedIconFileURLForItemID:];
    }

    v7 = 0;
  }

  else
  {
    v8 = [v5 URLByAppendingPathComponent:@"com.apple.ClipServices/Icons" isDirectory:1];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0;
    [defaultManager2 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v14];
    v6 = v14;

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        +[CPSAppInfoFetcher _cachedIconFileURLForItemID:];
      }

      v7 = 0;
    }

    else
    {
      v10 = MEMORY[0x277CCACA8];
      stringValue = [dCopy stringValue];
      v12 = [v10 stringWithFormat:@"%@.png", stringValue];

      v7 = [v8 URLByAppendingPathComponent:v12 isDirectory:0];
    }
  }

  return v7;
}

- (void)_downloadIconIfNeeded:(id)needed completionHandler:(id)handler
{
  neededCopy = needed;
  handlerCopy = handler;
  fullAppIconURL = [neededCopy fullAppIconURL];
  if (fullAppIconURL)
  {
    fullAppCachedIconFilePath = [neededCopy fullAppCachedIconFilePath];
    if (![fullAppCachedIconFilePath length] || (objc_msgSend(MEMORY[0x277CBEBC0], "fileURLWithPath:", fullAppCachedIconFilePath), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      itemID = [neededCopy itemID];
      v10 = [objc_opt_class() _cachedIconFileURLForItemID:itemID];
    }

    path = [v10 path];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v14 = [defaultManager fileExistsAtPath:path];

    if (v14)
    {
      [neededCopy setFullAppCachedIconFilePath:path];
      handlerCopy[2](handlerCopy, neededCopy, 0);
    }

    else
    {
      mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __61__CPSAppInfoFetcher__downloadIconIfNeeded_completionHandler___block_invoke;
      v18[3] = &unk_278DCF2B0;
      v21 = handlerCopy;
      v19 = neededCopy;
      v20 = path;
      v17 = [mEMORY[0x277CCAD30] dataTaskWithURL:fullAppIconURL completionHandler:v18];

      [v17 resume];
    }
  }

  else
  {
    v15 = CPS_LOG_CHANNEL_PREFIXClipServices(0, v7);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CPSAppInfoFetcher _downloadIconIfNeeded:completionHandler:];
    }

    path = [MEMORY[0x277CCA9B8] cps_errorWithCode:7];
    (handlerCopy)[2](handlerCopy, neededCopy, path);
  }
}

void __61__CPSAppInfoFetcher__downloadIconIfNeeded_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    if (v7)
    {
      v11 = [v7 writeToFile:*(a1 + 40) atomically:1];
      if (v11)
      {
        v13 = [*(a1 + 32) setFullAppCachedIconFilePath:*(a1 + 40)];
        v15 = CPS_LOG_CHANNEL_PREFIXClipServices(v13, v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = *(a1 + 40);
          v21 = 138739971;
          v22 = v16;
          _os_log_impl(&dword_2436ED000, v15, OS_LOG_TYPE_INFO, "Successful in writing icon data to disk at path: %{sensitive}@", &v21, 0xCu);
        }

        v10 = *(*(a1 + 48) + 16);
        goto LABEL_3;
      }

      v17 = CPS_LOG_CHANNEL_PREFIXClipServices(v11, v12);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __61__CPSAppInfoFetcher__downloadIconIfNeeded_completionHandler___block_invoke_cold_1();
      }
    }

    v18 = *(a1 + 48);
    v19 = *(a1 + 32);
    v20 = [MEMORY[0x277CCA9B8] cps_errorWithCode:7];
    (*(v18 + 16))(v18, v19, v20);

    goto LABEL_12;
  }

  v10 = *(*(a1 + 48) + 16);
LABEL_3:
  v10();
LABEL_12:
}

- (void)_lookUpClipDemoAMSMetadataWithBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v7 = +[CPSClipURL usesDemoMetadata];
  if (v7)
  {
    v9 = MEMORY[0x277CBEBC0];
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"https://test-safari.apple.com/amp/%@/", dCopy];
    v11 = [v9 URLWithString:dCopy];

    v12 = [v11 URLByAppendingPathComponent:@"/Info.json"];
    v13 = [objc_alloc(MEMORY[0x277CCAD20]) initWithURL:v12 cachePolicy:1 timeoutInterval:5.0];
    mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __71__CPSAppInfoFetcher__lookUpClipDemoAMSMetadataWithBundleID_completion___block_invoke;
    v18[3] = &unk_278DCF2D8;
    v19 = v12;
    v20 = completionCopy;
    v15 = v12;
    v16 = [mEMORY[0x277CCAD30] dataTaskWithRequest:v13 completionHandler:v18];

    [v16 resume];
  }

  else
  {
    v17 = CPS_LOG_CHANNEL_PREFIXClipServices(v7, v8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CPSAppInfoFetcher _lookUpClipDemoAMSMetadataWithBundleID:completion:];
    }

    v11 = [MEMORY[0x277CCA9B8] cps_errorWithCode:10];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __71__CPSAppInfoFetcher__lookUpClipDemoAMSMetadataWithBundleID_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v11 = v9;
  if (v9 || (v9 = [v7 length]) == 0)
  {
    v12 = CPS_LOG_CHANNEL_PREFIXClipServices(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __71__CPSAppInfoFetcher__lookUpClipDemoAMSMetadataWithBundleID_completion___block_invoke_cold_2();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v20 = 0;
    v13 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v20];
    v14 = v20;
    v16 = v14;
    if (v14)
    {
      v17 = CPS_LOG_CHANNEL_PREFIXClipServices(v14, v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __71__CPSAppInfoFetcher__lookUpClipDemoAMSMetadataWithBundleID_completion___block_invoke_cold_1();
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v18 = objc_alloc_init(CPSClipMetadata);
      [(CPSClipMetadata *)v18 updateWithStoreClipMetadata:v13];
      v19 = +[CPSClipInvocationPolicy eligiblePolicy];
      [(CPSClipMetadata *)v18 setInvocationPolicy:v19];

      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)lookUpClipMetadataByBundleID:(NSObject *)a3 sourceBundleID:URL:downloadIconIfNeeded:skipCaching:completionHandler:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543619;
  *&v3[4] = a1;
  *&v3[12] = 2117;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_0_0(&dword_2436ED000, a2, a3, "%{public}@ is attempting to look up app clip metadata with web clip identifier %{sensitive}@. This is not supported.", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __71__CPSAppInfoFetcher__lookUpClipDemoAMSMetadataWithBundleID_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end