@interface ISURLBagCache
+ (id)URLWithBagContext:(id)context;
+ (id)sharedCache;
- (ISURLBagCache)init;
- (id)URLBagForContext:(id)context;
- (id)_newRequestWithURLBagContext:(id)context;
- (void)_storeFrontChangedNotification:(id)notification;
- (void)addURLBag:(id)bag;
- (void)dealloc;
- (void)invalidateAllURLBags;
- (void)invalidateURLBagForContext:(id)context;
@end

@implementation ISURLBagCache

- (ISURLBagCache)init
{
  v11.receiver = self;
  v11.super_class = ISURLBagCache;
  v2 = [(ISURLBagCache *)&v11 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D69B28]) initWithMaxSize:5];
    cachedBags = v2->_cachedBags;
    v2->_cachedBags = v3;

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.iTunesStore.ISURLBagCache.%p", v2];
    v6 = dispatch_queue_create([v5 UTF8String], 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v6;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__storeFrontChangedNotification_ name:*MEMORY[0x277D69E18] object:0];
    if ((SSIsDaemon() & 1) == 0)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __InvalidateBagsNotification, *MEMORY[0x277D6A6F0], 0, CFNotificationSuspensionBehaviorCoalesce);
    }
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D69E18] object:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D6A6F0], 0);

  v5.receiver = self;
  v5.super_class = ISURLBagCache;
  [(ISURLBagCache *)&v5 dealloc];
}

+ (id)sharedCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__ISURLBagCache_sharedCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCache_sOnce != -1)
  {
    dispatch_once(&sharedCache_sOnce, block);
  }

  v2 = sharedCache_sCache;

  return v2;
}

uint64_t __28__ISURLBagCache_sharedCache__block_invoke(uint64_t a1)
{
  sharedCache_sCache = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

+ (id)URLWithBagContext:(id)context
{
  v39 = *MEMORY[0x277D85DE8];
  bagType = [context bagType];
  v4 = *MEMORY[0x277D6A708];
  if (bagType == 1)
  {
    v5 = CFPreferencesCopyAppValue(@"SandboxSessionURL", v4);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = @"https://sandbox.itunes.apple.com/bag.xml?ix=6";
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v5 = CFPreferencesCopyAppValue(@"InitiateSessionURL", v4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  v6 = @"https://init.itunes.apple.com/bag.xml?ix=6";
LABEL_7:
  v7 = [(__CFString *)v6 mutableCopy];

  currentDevice = [MEMORY[0x277D69A80] currentDevice];
  productVersion = [currentDevice productVersion];
  v10 = [productVersion componentsSeparatedByString:@"."];

  if ([v10 count])
  {
    v11 = [v10 objectAtIndex:0];
    [v7 appendFormat:@"&%@=%@", @"os", v11];
  }

  deviceIsAudioAccessory = [MEMORY[0x277D69A80] deviceIsAudioAccessory];
  v13 = *MEMORY[0x277CBF008];
  v14 = *MEMORY[0x277CBF040];
  v15 = *MEMORY[0x277CBF010];
  if (!deviceIsAudioAccessory)
  {
    goto LABEL_37;
  }

  v16 = CFPreferencesCopyValue(@"AppleLocaleSetup", *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  mEMORY[0x277D69B38]2 = mEMORY[0x277D69B38];
  if (v16)
  {
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      LODWORD(v20) = shouldLog | 2;
    }

    else
    {
      LODWORD(v20) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v20;
    }

    else
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v22 = objc_opt_class();
      v23 = v22;
      v24 = SSHashIfNeeded();
      v35 = 138543618;
      v36 = v22;
      v37 = 2114;
      v38 = v24;
      LODWORD(v34) = 22;
      v25 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: Using the value stored in AppleLocaleSetup, %{public}@", &v35, v34);

      if (!v25)
      {
LABEL_23:

        goto LABEL_38;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v25 encoding:4];
      free(v25);
      v33 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_23;
  }

  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    LODWORD(v27) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v27) = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v27 = v27;
  }

  else
  {
    v27 &= 2u;
  }

  if (!v27)
  {
    goto LABEL_35;
  }

  v35 = 138543362;
  v36 = objc_opt_class();
  v29 = v36;
  LODWORD(v34) = 12;
  v30 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &dword_275BC3000, oSLogObject2, 1, "%{public}@: There's no value stored in AppleLocaleSetup.", &v35, v34);

  if (v30)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v30 encoding:4];
    free(v30);
    v33 = oSLogObject2;
    SSFileLog();
LABEL_35:
  }

LABEL_37:
  v16 = CFPreferencesCopyValue(@"AppleLocale", v13, v14, v15);
LABEL_38:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 appendFormat:@"&%@=%@", @"locale", v16];
  }

  v31 = [MEMORY[0x277CBEBC0] URLWithString:{v7, v33}];

  return v31;
}

- (void)addURLBag:(id)bag
{
  bagCopy = bag;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__ISURLBagCache_addURLBag___block_invoke;
  v7[3] = &unk_27A670868;
  v8 = bagCopy;
  selfCopy = self;
  v6 = bagCopy;
  dispatch_async(dispatchQueue, v7);
}

void __27__ISURLBagCache_addURLBag___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) URLBagContext];
  v3 = [v2 cacheKey];
  if (v3)
  {
    [*(*(a1 + 40) + 8) setObject:*(a1 + 32) forKey:v3];
    v4 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v4)
    {
      v4 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      LODWORD(v6) = v5 | 2;
    }

    else
    {
      LODWORD(v6) = v5;
    }

    v7 = [v4 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v10 = 138412546;
      v11 = objc_opt_class();
      v12 = 2112;
      v13 = v3;
      v8 = v11;
      v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_275BC3000, v7, 2, "%@: Cached URL bag with cache key: %@", &v10, 22);

      if (!v9)
      {
LABEL_14:

        goto LABEL_15;
      }

      v7 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:4];
      free(v9);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)invalidateAllURLBags
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ISURLBagCache_invalidateAllURLBags__block_invoke;
  block[3] = &unk_27A670818;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __37__ISURLBagCache_invalidateAllURLBags__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allObjectsAndKeys];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__ISURLBagCache_invalidateAllURLBags__block_invoke_2;
  v3[3] = &unk_27A6715A8;
  v3[4] = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __37__ISURLBagCache_invalidateAllURLBags__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setInvalidationTime:-1.79769313e308];
  }

  else
  {
    [*(*(a1 + 32) + 8) setObject:0 forKey:v6];
  }
}

- (void)invalidateURLBagForContext:(id)context
{
  contextCopy = context;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ISURLBagCache_invalidateURLBagForContext___block_invoke;
  block[3] = &unk_27A670868;
  v6 = contextCopy;
  v12 = v6;
  selfCopy = self;
  dispatch_async(dispatchQueue, block);
  v7 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__ISURLBagCache_invalidateURLBagForContext___block_invoke_2;
  v9[3] = &unk_27A670868;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);
}

void __44__ISURLBagCache_invalidateURLBagForContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cacheKey];
  [*(*(a1 + 40) + 8) setObject:0 forKey:v2];
}

void __44__ISURLBagCache_invalidateURLBagForContext___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _newRequestWithURLBagContext:*(a1 + 40)];
  if (+[ISURLOperation sharedCFURLCache])
  {
    [v1 _CFURLRequest];
    CFURLCacheRemoveCachedResponseForRequest();
  }
}

- (id)URLBagForContext:(id)context
{
  contextCopy = context;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__14;
  v17 = __Block_byref_object_dispose__14;
  v18 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ISURLBagCache_URLBagForContext___block_invoke;
  block[3] = &unk_27A6715D0;
  selfCopy = self;
  v12 = &v13;
  v10 = contextCopy;
  v6 = contextCopy;
  dispatch_sync(dispatchQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __34__ISURLBagCache_URLBagForContext___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) ignoresCaches] & 1) == 0)
  {
    v2 = [*(a1 + 32) cacheKey];
    v3 = [*(*(a1 + 40) + 8) objectForKey:v2];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(*(*(a1 + 48) + 8) + 40);
    if (!v6 || ([v6 isValid] & 1) != 0 || (objc_msgSend(*(a1 + 32), "allowsExpiredBags") & 1) != 0)
    {
      goto LABEL_18;
    }

    v7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = v8 | 2;
    }

    else
    {
      LODWORD(v9) = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v15 = 138412290;
      v16 = objc_opt_class();
      v11 = v16;
      v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_275BC3000, v10, 0, "%@: Our cached bag is expired, and the context doesn't allow expired bags. Returning nil.", &v15, 12);

      if (!v12)
      {
LABEL_17:

        v13 = *(*(a1 + 48) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = 0;

LABEL_18:
        return;
      }

      v10 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:4];
      free(v12);
      SSFileLog();
    }

    goto LABEL_17;
  }
}

- (void)_storeFrontChangedNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v10 = 138412290;
  v11 = objc_opt_class();
  v8 = v11;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_275BC3000, oSLogObject, 1, "%@: Invalidating URL bags after storefront change", &v10, 12);

  if (v9)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog();
LABEL_12:
  }

  [(ISURLBagCache *)self invalidateAllURLBags];
}

- (id)_newRequestWithURLBagContext:(id)context
{
  contextCopy = context;
  v4 = [objc_opt_class() URLWithBagContext:contextCopy];
  v5 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v4];
  allHTTPHeaders = [contextCopy allHTTPHeaders];
  if (allHTTPHeaders)
  {
    [v5 setAllHTTPHeaderFields:allHTTPHeaders];
  }

  [contextCopy bagType];
  accountScope = SSAccountScopeForURLBagType();
  userIdentifier = [contextCopy userIdentifier];
  if (userIdentifier)
  {
    uniqueIdentifier = userIdentifier;
  }

  else
  {
    defaultStore = [MEMORY[0x277D69A20] defaultStore];
    activeAccount = [defaultStore activeAccount];
    uniqueIdentifier = [activeAccount uniqueIdentifier];

    defaultStore2 = [MEMORY[0x277D69A20] defaultStore];
    activeAccount2 = [defaultStore2 activeAccount];
    accountScope = [activeAccount2 accountScope];
  }

  clientBundleIdentifier = [contextCopy clientBundleIdentifier];
  [ISStoreURLOperation _addiTunesStoreHeadersToRequest:v5 withURLBag:0 accountIdentifier:uniqueIdentifier appendAuthKitHeaders:1 appendStorefrontToURL:0 clientBundleIdentifier:clientBundleIdentifier];

  mEMORY[0x277D69CB8] = [MEMORY[0x277D69CB8] sharedStorage];
  v16 = [mEMORY[0x277D69CB8] cookieHeadersForURL:v4 userIdentifier:uniqueIdentifier scope:accountScope];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __46__ISURLBagCache__newRequestWithURLBagContext___block_invoke;
  v24[3] = &unk_27A6715F8;
  v17 = v5;
  v25 = v17;
  [v16 enumerateKeysAndObjectsUsingBlock:v24];
  v18 = *MEMORY[0x277D6A130];
  v19 = [v17 valueForHTTPHeaderField:*MEMORY[0x277D6A130]];

  if (!v19)
  {
    v20 = +[ISClient currentClient];
    userAgent = [v20 userAgent];

    if (userAgent)
    {
LABEL_10:
      [v17 setValue:userAgent forHTTPHeaderField:v18];

      goto LABEL_11;
    }

    v22 = +[ISURLOperation copyUserAgent];
    if (v22)
    {
      userAgent = v22;
      goto LABEL_10;
    }
  }

LABEL_11:

  return v17;
}

@end