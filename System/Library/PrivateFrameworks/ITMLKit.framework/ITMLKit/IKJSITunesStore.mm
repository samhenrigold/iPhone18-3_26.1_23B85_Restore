@interface IKJSITunesStore
+ (void)setHeadersForURL:(id)l inRequestProperties:(id)properties;
+ (void)setITunesStoreHeaders:(id)headers;
- (BOOL)isManagedAppleID;
- (IKJSITunesStore)initWithAppContext:(id)context urlBagCache:(id)cache;
- (NSDictionary)accountInfo;
- (NSString)DSID;
- (NSString)networkConnectionType;
- (NSString)storefront;
- (NSString)userAgent;
- (id)_subscriptionStatusDictionaryWithStatus:(id)status isFinal:(BOOL)final;
- (id)asPrivateIKJSITunesStore;
- (id)cookie;
- (id)eligibilityForService:(id)service;
- (id)getBag;
- (id)makeStoreXMLHttpRequest;
- (void)_accountStoreChanged;
- (void)_bagCacheUpdated;
- (void)_subscriptionStatusDidChanged:(id)changed;
- (void)authenticate:(id)authenticate :(id)a4;
- (void)clearCookies;
- (void)dealloc;
- (void)evaluateScripts:(id)scripts :(id)a4;
- (void)fetchMarketingItem:(id)item :(id)a4 :(id)a5 :(id)a6 :(id)a7;
- (void)flushUnreportedEvents;
- (void)getServiceEligibility:(id)eligibility :(id)a4;
- (void)invalidateBag;
- (void)loadStoreContent:(id)content :(id)a4;
- (void)openDynamicUIURL:(id)l :(id)a4 :(id)a5;
- (void)openMarketingItem:(id)item :(id)a4 :(id)a5;
- (void)recordEvent:(id)event :(id)a4;
- (void)setCookie:(id)cookie;
- (void)setCookieURL:(id)l;
- (void)setStorefront:(id)storefront;
- (void)signOut;
- (void)updateServiceEligibility:(id)eligibility;
@end

@implementation IKJSITunesStore

- (id)asPrivateIKJSITunesStore
{
  if ([(IKJSITunesStore *)self conformsToProtocol:&unk_2866FB380])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (void)setITunesStoreHeaders:(id)headers
{
  headersCopy = headers;
  if (MGGetSInt32Answer() == 4)
  {
    hTTPHeaders = [headersCopy HTTPHeaders];
    v4 = [hTTPHeaders objectForKey:@"X-Apple-TV-Resolution"];

    if (!v4)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
      v7 = v6;

      if (v7 == 1080.0)
      {
        v8 = @"1080";
      }

      else
      {
        v8 = @"720";
      }

      [headersCopy setValue:v8 forHTTPHeaderField:@"X-Apple-TV-Resolution"];
    }

    hTTPHeaders2 = [headersCopy HTTPHeaders];
    v10 = [hTTPHeaders2 objectForKey:@"X-Apple-TV-Version"];

    if (!v10)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      infoDictionary = [mainBundle infoDictionary];

      v13 = [infoDictionary objectForKey:@"CFBundleVersion"];
      [headersCopy setValue:v13 forHTTPHeaderField:@"X-Apple-TV-Version"];
    }

    hTTPHeaders3 = [headersCopy HTTPHeaders];
    v15 = *MEMORY[0x277D6A158];
    v16 = [hTTPHeaders3 objectForKey:*MEMORY[0x277D6A158]];

    if (!v16)
    {
      [headersCopy setValue:@"ATV" forHTTPHeaderField:v15];
    }
  }
}

+ (void)setHeadersForURL:(id)l inRequestProperties:(id)properties
{
  propertiesCopy = properties;
  lCopy = l;
  v6 = +[IKURLBagCache sharedCache];
  v7 = [v6 isTrustedURL:lCopy];

  if (v7)
  {
    [objc_opt_class() setITunesStoreHeaders:propertiesCopy];
  }
}

- (IKJSITunesStore)initWithAppContext:(id)context urlBagCache:(id)cache
{
  contextCopy = context;
  cacheCopy = cache;
  v38.receiver = self;
  v38.super_class = IKJSITunesStore;
  v8 = [(IKJSObject *)&v38 initWithAppContext:contextCopy];
  if (v8)
  {
    objc_initWeak(&location, v8);
    v9 = objc_alloc_init(MEMORY[0x277D69B78]);
    metricsController = v8->_metricsController;
    v8->_metricsController = v9;

    defaultStore = [MEMORY[0x277D69A20] defaultStore];
    activeAccount = [defaultStore activeAccount];
    uniqueIdentifier = [activeAccount uniqueIdentifier];
    lastAccountDSID = v8->_lastAccountDSID;
    v8->_lastAccountDSID = uniqueIdentifier;

    v15 = cacheCopy;
    if (!cacheCopy)
    {
      v15 = +[IKURLBagCache sharedCache];
    }

    objc_storeStrong(&v8->_bagCache, v15);
    if (!cacheCopy)
    {
    }

    [(IKJSITunesStore *)v8 _bagCacheUpdated];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    bagCache = v8->_bagCache;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __50__IKJSITunesStore_initWithAppContext_urlBagCache___block_invoke;
    v35[3] = &unk_27979A088;
    objc_copyWeak(&v36, &location);
    v18 = [defaultCenter addObserverForName:@"IKURLBagCacheUpdatedNotification" object:bagCache queue:0 usingBlock:v35];
    urlBagCacheUpdateToken = v8->_urlBagCacheUpdateToken;
    v8->_urlBagCacheUpdateToken = v18;

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    defaultStore2 = [MEMORY[0x277D69A20] defaultStore];
    v22 = *MEMORY[0x277D69D70];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __50__IKJSITunesStore_initWithAppContext_urlBagCache___block_invoke_3;
    v33[3] = &unk_27979A088;
    objc_copyWeak(&v34, &location);
    v23 = [defaultCenter2 addObserverForName:v22 object:defaultStore2 queue:0 usingBlock:v33];
    ssAccountStoreChangedToken = v8->_ssAccountStoreChangedToken;
    v8->_ssAccountStoreChangedToken = v23;

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    mEMORY[0x277D69D18] = [MEMORY[0x277D69D18] sharedCoordinator];
    v27 = *MEMORY[0x277D6A630];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __50__IKJSITunesStore_initWithAppContext_urlBagCache___block_invoke_5;
    v31[3] = &unk_27979A088;
    objc_copyWeak(&v32, &location);
    v28 = [defaultCenter3 addObserverForName:v27 object:mEMORY[0x277D69D18] queue:0 usingBlock:v31];
    subscriptionStatusDidChangeToken = v8->_subscriptionStatusDidChangeToken;
    v8->_subscriptionStatusDidChangeToken = v28;

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __50__IKJSITunesStore_initWithAppContext_urlBagCache___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained appContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__IKJSITunesStore_initWithAppContext_urlBagCache___block_invoke_2;
    v7[3] = &unk_2797995A8;
    objc_copyWeak(&v8, (a1 + 32));
    [v6 evaluate:v7 completionBlock:0];

    objc_destroyWeak(&v8);
  }
}

void __50__IKJSITunesStore_initWithAppContext_urlBagCache___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _bagCacheUpdated];
    WeakRetained = v2;
  }
}

void __50__IKJSITunesStore_initWithAppContext_urlBagCache___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained appContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__IKJSITunesStore_initWithAppContext_urlBagCache___block_invoke_4;
    v7[3] = &unk_2797995A8;
    objc_copyWeak(&v8, (a1 + 32));
    [v6 evaluate:v7 completionBlock:0];

    objc_destroyWeak(&v8);
  }
}

void __50__IKJSITunesStore_initWithAppContext_urlBagCache___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _accountStoreChanged];
    WeakRetained = v2;
  }
}

void __50__IKJSITunesStore_initWithAppContext_urlBagCache___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained appContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__IKJSITunesStore_initWithAppContext_urlBagCache___block_invoke_6;
    v7[3] = &unk_27979A0B0;
    objc_copyWeak(&v9, (a1 + 32));
    v8 = v3;
    [v6 evaluate:v7 completionBlock:0];

    objc_destroyWeak(&v9);
  }
}

void __50__IKJSITunesStore_initWithAppContext_urlBagCache___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(a1 + 32) object];
    v4 = [v3 lastKnownStatus];
    [v5 _subscriptionStatusDidChanged:v4];

    WeakRetained = v5;
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_urlBagCacheUpdateToken];
  [defaultCenter removeObserver:self->_ssAccountStoreChangedToken];
  [defaultCenter removeObserver:self->_subscriptionStatusDidChangeToken];

  v4.receiver = self;
  v4.super_class = IKJSITunesStore;
  [(IKJSITunesStore *)&v4 dealloc];
}

- (NSString)userAgent
{
  currentDevice = [MEMORY[0x277D69A80] currentDevice];
  userAgent = [currentDevice userAgent];

  return userAgent;
}

- (NSString)networkConnectionType
{
  mEMORY[0x277D7FD00] = [MEMORY[0x277D7FD00] sharedInstance];
  connectionTypeHeader = [mEMORY[0x277D7FD00] connectionTypeHeader];

  return connectionTypeHeader;
}

- (NSString)storefront
{
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  v4 = SSVStoreFrontIdentifierForAccount();

  return v4;
}

- (void)setStorefront:(id)storefront
{
  v3 = MEMORY[0x277D69A80];
  storefrontCopy = storefront;
  currentDevice = [v3 currentDevice];
  [currentDevice setStoreFrontIdentifier:storefrontCopy];

  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  v7 = [activeAccount copy];
  [v7 setStoreFrontIdentifier:storefrontCopy];

  defaultStore2 = [MEMORY[0x277D69A20] defaultStore];
  [defaultStore2 saveAccount:v7 error:0];
}

- (id)eligibilityForService:(id)service
{
  mEMORY[0x277D69D18] = [MEMORY[0x277D69D18] sharedCoordinator];
  lastKnownStatus = [mEMORY[0x277D69D18] lastKnownStatus];

  if (lastKnownStatus)
  {
    v6 = [(IKJSITunesStore *)self _subscriptionStatusDictionaryWithStatus:lastKnownStatus isFinal:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)getServiceEligibility:(id)eligibility :(id)a4
{
  eligibilityCopy = eligibility;
  v7 = a4;
  v8 = [MEMORY[0x277CD4650] managedValueWithValue:v7];
  v20 = v7;
  context = [v7 context];
  virtualMachine = [context virtualMachine];

  [virtualMachine addManagedReference:v8 withOwner:self];
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = [eligibilityCopy objectForKey:@"ignoreCache"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v12 BOOLValue])
  {
    [v11 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D6A640]];
  }

  v13 = [eligibilityCopy objectForKey:@"reason"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 isEqualToString:@"deepLink"])
  {
    [v11 setObject:*MEMORY[0x277D6A650] forKey:*MEMORY[0x277D6A648]];
  }

  v14 = [eligibilityCopy objectForKey:@"partialResults"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v14 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  objc_initWeak(&location, self);
  mEMORY[0x277D69D18] = [MEMORY[0x277D69D18] sharedCoordinator];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __42__IKJSITunesStore_getServiceEligibility::__block_invoke;
  v21[3] = &unk_27979A100;
  objc_copyWeak(&v26, &location);
  v17 = v12;
  v27 = bOOLValue;
  v22 = v17;
  selfCopy = self;
  v18 = v8;
  v24 = v18;
  v19 = virtualMachine;
  v25 = v19;
  [mEMORY[0x277D69D18] getStatusWithOptions:v11 statusBlock:v21];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __42__IKJSITunesStore_getServiceEligibility::__block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (v8 && !*(a1 + 32))
    {
      v13 = [MEMORY[0x277D69D18] sharedCoordinator];
      v14 = [v13 lastKnownStatus];

      v10 = 1;
      v7 = v14;
      if (v14)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    if (a3)
    {
      v10 = 1;
      if (!v7)
      {
        goto LABEL_9;
      }

LABEL_11:
      v15 = [v7 accountStatus];
      v16 = [v7 carrierBundlingStatus];
      v18 = v15 != 2 || v16 != 2;
      v20 = v16 == 4 || v16 == 1 || v15 == 3;
      v21 = v18 << 63 >> 63;
      if (v20)
      {
        v12 = 1;
      }

      else
      {
        v12 = v21;
      }

      v11 = [*(a1 + 40) _subscriptionStatusDictionaryWithStatus:v7 isFinal:v10];
      goto LABEL_27;
    }

    if (*(a1 + 72) == 1)
    {
      v10 = 0;
      if (v7)
      {
        goto LABEL_11;
      }

LABEL_9:
      v11 = 0;
      v12 = -1;
LABEL_27:
      v22 = [WeakRetained appContext];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __42__IKJSITunesStore_getServiceEligibility::__block_invoke_2;
      v24[3] = &unk_27979A0D8;
      objc_copyWeak(v28, (a1 + 64));
      v25 = *(a1 + 48);
      v28[1] = v12;
      v23 = v11;
      v26 = v23;
      v29 = v10;
      v27 = *(a1 + 56);
      [v22 evaluate:v24 completionBlock:0];

      objc_destroyWeak(v28);
    }
  }
}

void __42__IKJSITunesStore_getServiceEligibility::__block_invoke_2(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) value];
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
    v9[0] = v4;
    v5 = *(a1 + 40);
    v6 = v5;
    if (!v5)
    {
      v6 = [MEMORY[0x277CBEB68] null];
    }

    v9[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    v8 = [v3 callWithArguments:v7];

    if (!v5)
    {
    }

    if (*(a1 + 72) == 1)
    {
      [*(a1 + 48) removeManagedReference:*(a1 + 32) withOwner:WeakRetained];
    }
  }
}

- (id)makeStoreXMLHttpRequest
{
  v3 = [IKJSXMLHTTPRequest alloc];
  appContext = [(IKJSObject *)self appContext];
  v5 = [(IKJSXMLHTTPRequest *)v3 initWithAppContext:appContext jingleRequest:1];

  return v5;
}

- (void)recordEvent:(id)event :(id)a4
{
  v6 = MEMORY[0x277D69B80];
  v7 = a4;
  eventCopy = event;
  v9 = objc_alloc_init(v6);
  [v9 setTopic:eventCopy];

  [v9 addPropertiesWithDictionary:v7];
  [(SSMetricsController *)self->_metricsController insertEvent:v9 withCompletionHandler:0];
}

- (void)flushUnreportedEvents
{
  v3 = dispatch_semaphore_create(0);
  metricsController = self->_metricsController;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__IKJSITunesStore_flushUnreportedEvents__block_invoke;
  v6[3] = &unk_27979A128;
  v7 = v3;
  v5 = v3;
  [(SSMetricsController *)metricsController flushUnreportedEventsWithCompletionHandler:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)setCookieURL:(id)l
{
  currentArguments = [MEMORY[0x277CD4640] currentArguments];
  v4 = [currentArguments count];
  v5 = currentArguments;
  if (v4)
  {
    v6 = [currentArguments objectAtIndexedSubscript:0];
    cookieURL = self->_cookieURL;
    self->_cookieURL = 0;

    if ([v6 isString])
    {
      toString = [v6 toString];
      if ([toString length])
      {
        v9 = [MEMORY[0x277CBEBC0] URLWithString:toString];
        if (v9)
        {
          objc_storeStrong(&self->_cookieURL, toString);
        }
      }
    }

    v5 = currentArguments;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (id)cookie
{
  if ([(NSString *)self->_cookieURL length])
  {
    cookieURL = self->_cookieURL;
  }

  else
  {
    cookieURL = @"http://www.apple.com/";
  }

  v4 = cookieURL;
  appContext = [(IKJSObject *)self appContext];
  jsFoundation = [appContext jsFoundation];
  v7 = [jsFoundation getCookieForURL:v4 useSSCookieStorage:1];

  return v7;
}

- (void)setCookie:(id)cookie
{
  cookieCopy = cookie;
  appContext = [(IKJSObject *)self appContext];
  jsFoundation = [appContext jsFoundation];
  [jsFoundation setCookie:cookieCopy useSSCookieStorage:1];
}

- (void)clearCookies
{
  appContext = [(IKJSObject *)self appContext];
  jsFoundation = [appContext jsFoundation];
  [jsFoundation clearCookies];
}

- (void)loadStoreContent:(id)content :(id)a4
{
  contentCopy = content;
  v7 = a4;
  v8 = [contentCopy objectForKey:@"id"];
  objc_initWeak(&location, self);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 componentsSeparatedByString:{@", "}];
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:
  if ([v10 count])
  {
    v11 = objc_alloc_init(MEMORY[0x277D69CF0]);
    [v11 setStoreFrontSuffix:self->_storeFrontSuffix];
    [v11 setItemIdentifiers:v10];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __37__IKJSITunesStore_loadStoreContent::__block_invoke;
    v24[3] = &unk_27979A150;
    v12 = v11;
    v25 = v12;
    [contentCopy enumerateKeysAndObjectsUsingBlock:v24];
    if (v7)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", v12];
      [(IKJSObject *)self setJSValue:v7 forProperty:v13];
    }

    else
    {
      v13 = 0;
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __37__IKJSITunesStore_loadStoreContent::__block_invoke_2;
    v21[3] = &unk_27979A1A0;
    objc_copyWeak(&v23, &location);
    v16 = v13;
    v22 = v16;
    [v12 setResponseBlock:v21];
    mainQueue = [MEMORY[0x277D7FD20] mainQueue];
    [mainQueue addOperation:v12];

    objc_destroyWeak(&v23);
  }

  else if (v7)
  {
    appContext = [(IKJSObject *)self appContext];

    if (appContext)
    {
      appContext2 = [(IKJSObject *)self appContext];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __37__IKJSITunesStore_loadStoreContent::__block_invoke_4;
      v18[3] = &unk_27979A0B0;
      objc_copyWeak(&v20, &location);
      v19 = v7;
      [appContext2 evaluate:v18 completionBlock:0];

      objc_destroyWeak(&v20);
    }
  }

  objc_destroyWeak(&location);
}

void __37__IKJSITunesStore_loadStoreContent::__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v6 length])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 length] && (objc_msgSend(v6, "isEqualToString:", @"id") & 1) == 0)
      {
        [*(a1 + 32) setValue:v5 forRequestParameter:v6];
      }
    }
  }
}

void __37__IKJSITunesStore_loadStoreContent::__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = *MEMORY[0x277D6A350];
    v10 = [v5 valueForProperty:*MEMORY[0x277D6A350]];
    if (v10)
    {
      [v8 setObject:v10 forKey:v9];
    }

    v11 = *MEMORY[0x277D6A3B0];
    v12 = [v5 valueForProperty:*MEMORY[0x277D6A3B0]];
    if (v12)
    {
      [v8 setObject:v12 forKey:v11];
    }

    v13 = *MEMORY[0x277D6A3F0];
    v14 = [v5 valueForProperty:*MEMORY[0x277D6A3F0]];
    if (v14)
    {
      [v8 setObject:v14 forKey:v13];
    }

    v15 = [WeakRetained appContext];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __37__IKJSITunesStore_loadStoreContent::__block_invoke_3;
    v17[3] = &unk_27979A178;
    objc_copyWeak(&v20, (a1 + 40));
    v18 = *(a1 + 32);
    v16 = v8;
    v19 = v16;
    [v15 evaluate:v17 completionBlock:0];

    objc_destroyWeak(&v20);
  }
}

void __37__IKJSITunesStore_loadStoreContent::__block_invoke_3(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 48));
    v4 = [v3 jsValueForProperty:*(a1 + 32)];

    v7[0] = *(a1 + 40);
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    v6 = [v4 callWithArguments:v5];

    [WeakRetained setJSValue:0 forProperty:*(a1 + 32)];
  }
}

void __37__IKJSITunesStore_loadStoreContent::__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained appContext];
    [v3 setException:0 withErrorMessage:@"loadStoreContent: Dictionary is missing required property 'id'."];

    v4 = [*(a1 + 32) callWithArguments:&unk_2866F0D80];
    WeakRetained = v5;
  }
}

- (void)evaluateScripts:(id)scripts :(id)a4
{
  v6 = a4;
  scriptsCopy = scripts;
  v8 = [IKScriptsEvaluator alloc];
  appContext = [(IKJSObject *)self appContext];
  v10 = [(IKScriptsEvaluator *)v8 initWithScripts:scriptsCopy withContext:appContext callback:v6 jingleRequest:1];

  [(IKScriptsEvaluator *)v10 evaluate];
}

- (void)updateServiceEligibility:(id)eligibility
{
  v3 = [eligibility objectForKey:@"carrierBundle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mEMORY[0x277D69D18] = [MEMORY[0x277D69D18] sharedCoordinator];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __44__IKJSITunesStore_updateServiceEligibility___block_invoke;
    v5[3] = &unk_27979A1C8;
    v6 = v3;
    [mEMORY[0x277D69D18] modifyLastKnownStatusUsingBlock:v5];
  }
}

uint64_t __44__IKJSITunesStore_updateServiceEligibility___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([*(a1 + 32) isEqualToString:@"eligible"])
  {
    v3 = 1;
LABEL_9:
    v4 = v8;
LABEL_10:
    v5 = [v4 setCarrierBundlingStatus:v3];
    v6 = v8;
    goto LABEL_11;
  }

  if ([*(a1 + 32) isEqualToString:@"needsVerification"])
  {
    v3 = 3;
    goto LABEL_9;
  }

  if ([*(a1 + 32) isEqualToString:@"notEligible"])
  {
    v3 = 2;
    goto LABEL_9;
  }

  if ([*(a1 + 32) isEqualToString:@"unknown"])
  {
    v3 = 0;
    goto LABEL_9;
  }

  v5 = [*(a1 + 32) isEqualToString:@"unlinked"];
  v6 = v8;
  if (v5)
  {
    v3 = 4;
    v4 = v8;
    goto LABEL_10;
  }

LABEL_11:

  return MEMORY[0x2821F96F8](v5, v6);
}

- (void)fetchMarketingItem:(id)item :(id)a4 :(id)a5 :(id)a6 :(id)a7
{
  itemCopy = item;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v27 = a7;
  bagCache = [(IKJSITunesStore *)self bagCache];
  v16 = MEMORY[0x277CEE408];
  bagKeySet = [MEMORY[0x277CEE540] bagKeySet];
  profile = [bagCache profile];
  profileVersion = [bagCache profileVersion];
  [v16 registerBagKeySet:bagKeySet forProfile:profile profileVersion:profileVersion];

  v20 = [objc_alloc(MEMORY[0x277CEE540]) initWithBag:bagCache clientIdentifier:itemCopy clientVersion:v12 placement:v13 serviceType:v14];
  ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
  [v20 setAccount:ams_activeiTunesAccount];

  objc_initWeak(&location, self);
  if (v27)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", v20];
    [(IKJSObject *)self setJSValue:v27 forProperty:v23];
  }

  else
  {
    v23 = 0;
  }

  perform = [v20 perform];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __42__IKJSITunesStore_fetchMarketingItem___::__block_invoke;
  v28[3] = &unk_27979A218;
  objc_copyWeak(&v30, &location);
  v25 = v23;
  v29 = v25;
  [perform addFinishBlock:v28];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

void __42__IKJSITunesStore_fetchMarketingItem___::__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained && *(a1 + 32))
  {
    v9 = [WeakRetained appContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__IKJSITunesStore_fetchMarketingItem___::__block_invoke_2;
    v10[3] = &unk_27979A1F0;
    objc_copyWeak(&v14, (a1 + 40));
    v11 = *(a1 + 32);
    v12 = v6;
    v13 = v5;
    [v9 evaluate:v10 completionBlock:0];

    objc_destroyWeak(&v14);
  }
}

void __42__IKJSITunesStore_fetchMarketingItem___::__block_invoke_2(uint64_t a1)
{
  v14[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained jsValueForProperty:*(a1 + 32)];
    if (*(a1 + 40))
    {
      v5 = [MEMORY[0x277CBEB68] null];
      v14[0] = v5;
      v12 = @"message";
      v6 = [*(a1 + 40) description];
      v13 = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v14[1] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
      v9 = [v4 callWithArguments:v8];
    }

    else
    {
      v5 = [*(a1 + 48) rawValues];
      v11[0] = v5;
      v6 = [MEMORY[0x277CBEB68] null];
      v11[1] = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
      v10 = [v4 callWithArguments:v7];
    }

    [v3 setJSValue:0 forProperty:*(a1 + 32)];
  }
}

- (void)openMarketingItem:(id)item :(id)a4 :(id)a5
{
  itemCopy = item;
  v9 = a4;
  v10 = a5;
  if (itemCopy)
  {
    appContext = [(IKJSObject *)self appContext];
    objc_initWeak(&location, self);
    if (v10)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      [(IKJSObject *)self setJSValue:v10 forProperty:uUIDString];
    }

    else
    {
      uUIDString = 0;
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __39__IKJSITunesStore_openMarketingItem_::__block_invoke;
    v16[3] = &unk_27979A268;
    v14 = appContext;
    v17 = v14;
    v18 = itemCopy;
    v19 = v9;
    objc_copyWeak(&v21, &location);
    v15 = uUIDString;
    v20 = v15;
    [v14 evaluateDelegateBlockSync:v16];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void __39__IKJSITunesStore_openMarketingItem_::__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [*(a1 + 32) delegate];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__IKJSITunesStore_openMarketingItem_::__block_invoke_2;
    v10[3] = &unk_27979A240;
    objc_copyWeak(&v12, (a1 + 64));
    v11 = *(a1 + 56);
    [v6 appContext:v7 openMarketingItem:v8 metricsOverlay:v9 completion:v10];

    objc_destroyWeak(&v12);
  }
}

void __39__IKJSITunesStore_openMarketingItem_::__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained appContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__IKJSITunesStore_openMarketingItem_::__block_invoke_3;
    v10[3] = &unk_27979A1F0;
    objc_copyWeak(&v14, (a1 + 40));
    v11 = *(a1 + 32);
    v12 = v6;
    v13 = v5;
    [v9 evaluate:v10 completionBlock:0];

    objc_destroyWeak(&v14);
  }
}

void __39__IKJSITunesStore_openMarketingItem_::__block_invoke_3(uint64_t a1)
{
  v14[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained jsValueForProperty:*(a1 + 32)];
    if (*(a1 + 40))
    {
      v5 = [MEMORY[0x277CBEB68] null];
      v14[0] = v5;
      v12 = @"message";
      v6 = [*(a1 + 40) description];
      v13 = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v14[1] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
      v9 = [v4 callWithArguments:v8];
    }

    else
    {
      v5 = [*(a1 + 48) rawResponse];
      v11[0] = v5;
      v6 = [MEMORY[0x277CBEB68] null];
      v11[1] = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
      v10 = [v4 callWithArguments:v7];
    }

    [v3 setJSValue:0 forProperty:*(a1 + 32)];
  }
}

- (void)openDynamicUIURL:(id)l :(id)a4 :(id)a5
{
  lCopy = l;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [MEMORY[0x277CBEBC0] URLWithString:lCopy];
    if (v11)
    {
      v12 = v11;
      appContext = [(IKJSObject *)self appContext];
      objc_initWeak(&location, self);
      if (v10)
      {
        uUID = [MEMORY[0x277CCAD78] UUID];
        uUIDString = [uUID UUIDString];

        [(IKJSObject *)self setJSValue:v10 forProperty:uUIDString];
      }

      else
      {
        uUIDString = 0;
      }

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __38__IKJSITunesStore_openDynamicUIURL_::__block_invoke;
      v19[3] = &unk_27979A268;
      v16 = appContext;
      v20 = v16;
      v17 = v12;
      v21 = v17;
      v22 = v9;
      objc_copyWeak(&v24, &location);
      v18 = uUIDString;
      v23 = v18;
      [v16 evaluateDelegateBlockSync:v19];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }
  }
}

void __38__IKJSITunesStore_openDynamicUIURL_::__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [*(a1 + 32) delegate];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__IKJSITunesStore_openDynamicUIURL_::__block_invoke_2;
    v10[3] = &unk_27979A240;
    objc_copyWeak(&v12, (a1 + 64));
    v11 = *(a1 + 56);
    [v6 appContext:v7 openDynamicUIURL:v8 metricsOverlay:v9 completion:v10];

    objc_destroyWeak(&v12);
  }
}

void __38__IKJSITunesStore_openDynamicUIURL_::__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained appContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__IKJSITunesStore_openDynamicUIURL_::__block_invoke_3;
    v10[3] = &unk_27979A1F0;
    objc_copyWeak(&v14, (a1 + 40));
    v11 = *(a1 + 32);
    v12 = v6;
    v13 = v5;
    [v9 evaluate:v10 completionBlock:0];

    objc_destroyWeak(&v14);
  }
}

void __38__IKJSITunesStore_openDynamicUIURL_::__block_invoke_3(uint64_t a1)
{
  v14[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained jsValueForProperty:*(a1 + 32)];
    if (*(a1 + 40))
    {
      v5 = [MEMORY[0x277CBEB68] null];
      v14[0] = v5;
      v12 = @"message";
      v6 = [*(a1 + 40) description];
      v13 = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v14[1] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
      v9 = [v4 callWithArguments:v8];
    }

    else
    {
      v5 = [*(a1 + 48) rawResponse];
      v11[0] = v5;
      v6 = [MEMORY[0x277CBEB68] null];
      v11[1] = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
      v10 = [v4 callWithArguments:v7];
    }

    [v3 setJSValue:0 forProperty:*(a1 + 32)];
  }
}

- (NSString)DSID
{
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];
  uniqueIdentifier = [activeAccount uniqueIdentifier];
  stringValue = [uniqueIdentifier stringValue];

  return stringValue;
}

- (BOOL)isManagedAppleID
{
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];
  isManagedAppleID = [activeAccount isManagedAppleID];

  return isManagedAppleID;
}

- (NSDictionary)accountInfo
{
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:7];
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  if (!activeAccount)
  {
    goto LABEL_22;
  }

  uniqueIdentifier = [activeAccount uniqueIdentifier];
  stringValue = [uniqueIdentifier stringValue];

  if (stringValue)
  {
    [v2 setObject:stringValue forKey:@"DSID"];
  }

  accountName = [activeAccount accountName];

  if (accountName)
  {
    accountName2 = [activeAccount accountName];
    [v2 setObject:accountName2 forKey:@"appleId"];
  }

  storeFrontIdentifier = [activeAccount storeFrontIdentifier];

  if (storeFrontIdentifier)
  {
    storeFrontIdentifier2 = [activeAccount storeFrontIdentifier];
    [v2 setObject:storeFrontIdentifier2 forKey:@"storefront"];
  }

  creditsString = [activeAccount creditsString];

  if (creditsString)
  {
    creditsString2 = [activeAccount creditsString];
    [v2 setObject:creditsString2 forKey:@"creditString"];
  }

  if (![activeAccount accountScope])
  {
    v13 = @"production";
    goto LABEL_14;
  }

  if ([activeAccount accountScope] == 1)
  {
    v13 = @"sandbox";
LABEL_14:
    [v2 setObject:v13 forKey:@"scope"];
  }

  if ([activeAccount isManagedAppleID])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(activeAccount, "isManagedAppleID")}];
    [v2 setObject:v14 forKey:@"managedAppleId"];
  }

  firstName = [activeAccount firstName];
  if (firstName)
  {
    [v2 setObject:firstName forKey:@"firstName"];
  }

  lastName = [activeAccount lastName];

  if (lastName)
  {
    [v2 setObject:lastName forKey:@"lastName"];
  }

LABEL_22:

  return v2;
}

- (void)authenticate:(id)authenticate :(id)a4
{
  authenticateCopy = authenticate;
  v7 = a4;
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  if (activeAccount)
  {
    contextForSignIn = [objc_alloc(MEMORY[0x277D69BC8]) initWithAccount:activeAccount];
    [contextForSignIn setPromptStyle:1];
    [contextForSignIn setShouldCreateNewSession:1];
  }

  else
  {
    contextForSignIn = [MEMORY[0x277D69BC8] contextForSignIn];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [authenticateCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [contextForSignIn setReasonDescription:v11];
    }
  }

  v12 = [objc_alloc(MEMORY[0x277D69A50]) initWithAuthenticationContext:contextForSignIn];
  objc_initWeak(&location, self);
  if (v7)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", v12];
    [(IKJSObject *)self setJSValue:v7 forProperty:v13];
  }

  else
  {
    v13 = 0;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __33__IKJSITunesStore_authenticate::__block_invoke;
  v15[3] = &unk_27979A290;
  objc_copyWeak(&v17, &location);
  v14 = v13;
  v16 = v14;
  [v12 startWithAuthenticateResponseBlock:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __33__IKJSITunesStore_authenticate::__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained && *(a1 + 32))
  {
    v9 = [WeakRetained appContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __33__IKJSITunesStore_authenticate::__block_invoke_2;
    v10[3] = &unk_27979A178;
    objc_copyWeak(&v13, (a1 + 40));
    v11 = v5;
    v12 = *(a1 + 32);
    [v9 evaluate:v10 completionBlock:0];

    objc_destroyWeak(&v13);
  }
}

void __33__IKJSITunesStore_authenticate::__block_invoke_2(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) authenticateResponseType] == 4;
    v4 = objc_loadWeakRetained((a1 + 48));
    v5 = [v4 jsValueForProperty:*(a1 + 40)];

    v6 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    v9[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v8 = [v5 callWithArguments:v7];

    [WeakRetained setJSValue:0 forProperty:*(a1 + 40)];
  }
}

- (void)signOut
{
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  if (activeAccount && ([activeAccount isManagedAppleID] & 1) == 0)
  {
    [activeAccount setActive:0];
    defaultStore2 = [MEMORY[0x277D69A20] defaultStore];
    [defaultStore2 saveAccount:activeAccount error:0];
  }
}

- (void)_accountStoreChanged
{
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];
  obj = [activeAccount uniqueIdentifier];

  v5 = obj;
  lastAccountDSID = self->_lastAccountDSID;
  if (lastAccountDSID != obj)
  {
    lastAccountDSID = [(NSNumber *)lastAccountDSID isEqual:obj];
    v5 = obj;
    if ((lastAccountDSID & 1) == 0)
    {
      objc_storeStrong(&self->_lastAccountDSID, obj);
      v7 = [(IKJSObject *)self invokeMethod:@"onAccountChange" withArguments:0];
      mEMORY[0x277D69D18] = [MEMORY[0x277D69D18] sharedCoordinator];
      lastKnownStatus = [mEMORY[0x277D69D18] lastKnownStatus];
      [(IKJSITunesStore *)self _subscriptionStatusDidChanged:lastKnownStatus];

      v5 = obj;
    }
  }

  MEMORY[0x2821F96F8](lastAccountDSID, v5);
}

- (id)_subscriptionStatusDictionaryWithStatus:(id)status isFinal:(BOOL)final
{
  finalCopy = final;
  statusCopy = status;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  accountIdentifier = [statusCopy accountIdentifier];
  if (accountIdentifier)
  {
    [dictionary setObject:accountIdentifier forKey:@"accountId"];
  }

  sessionIdentifier = [statusCopy sessionIdentifier];
  if (sessionIdentifier)
  {
    [dictionary setObject:sessionIdentifier forKey:@"sessionId"];
  }

  accountStatus = [statusCopy accountStatus];
  v10 = @"subscribed";
  v11 = @"unknown";
  if (accountStatus == 2)
  {
    v11 = @"notSubscribed";
  }

  if (accountStatus == 3)
  {
    v12 = 1;
  }

  else
  {
    v10 = v11;
    v12 = 0;
  }

  if (accountStatus == 1)
  {
    v13 = @"needsAuthentication";
  }

  else
  {
    v13 = v10;
  }

  if (accountStatus == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  [dictionary setObject:v13 forKey:@"accountStatus"];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:v14];
  [dictionary setObject:v15 forKey:@"subscribed"];

  carrierBundlingStatus = [statusCopy carrierBundlingStatus];
  if (carrierBundlingStatus <= 4)
  {
    [dictionary setObject:off_27979A2B0[carrierBundlingStatus] forKey:@"carrierBundle"];
  }

  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mEMORY[0x277D69CE0] = [MEMORY[0x277D69CE0] sharedCoordinator];
  isCurrentUserAdmin = [mEMORY[0x277D69CE0] isCurrentUserAdmin];

  if (isCurrentUserAdmin)
  {
    [v17 addObject:@"post"];
    [v17 addObject:@"admin"];
    [dictionary setObject:v17 forKey:@"permissions"];
  }

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(statusCopy, "isDiscoveryModeEligible")}];
  [dictionary setObject:v20 forKey:@"discoveryMode"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(statusCopy, "isFamilyOrganizer")}];
  [dictionary setObject:v21 forKey:@"familyOrganizer"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(statusCopy, "isFamilySubscription")}];
  [dictionary setObject:v22 forKey:@"familySubscription"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(statusCopy, "hasFamily")}];
  [dictionary setObject:v23 forKey:@"hasFamily"];

  v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(statusCopy, "hasFamilyMembers")}];
  [dictionary setObject:v24 forKey:@"hasFamilyMembers"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(statusCopy, "isSubscriptionPurchaser")}];
  [dictionary setObject:v25 forKey:@"isSubscriptionPurchaser"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:finalCopy];
  [dictionary setObject:v26 forKey:@"isFinal"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(statusCopy, "acceptedStoreTermsVersion")}];
  [dictionary setObject:v27 forKey:@"acceptedStoreTermsVersion"];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(statusCopy, "latestStoreTermsVersion")}];
  [dictionary setObject:v28 forKey:@"latestStoreTermsVersion"];

  subscriptionExpirationDate = [statusCopy subscriptionExpirationDate];

  if (subscriptionExpirationDate)
  {
    subscriptionExpirationDate2 = [statusCopy subscriptionExpirationDate];
    [dictionary setObject:subscriptionExpirationDate2 forKey:@"subscriptionExpirationDate"];
  }

  rawResponseData = [statusCopy rawResponseData];
  if (rawResponseData)
  {
    [dictionary setObject:rawResponseData forKey:@"rawResponseData"];
  }

  return dictionary;
}

- (void)_subscriptionStatusDidChanged:(id)changed
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = [(IKJSITunesStore *)self _subscriptionStatusDictionaryWithStatus:changed isFinal:1];
  if (([v4 isEqualToDictionary:self->_lastKnownStatusDictionary] & 1) == 0)
  {
    objc_storeStrong(&self->_lastKnownStatusDictionary, v4);
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    v6 = [(IKJSObject *)self invokeMethod:@"onSubscriptionStatusDidChange" withArguments:v5];
  }
}

- (id)getBag
{
  v3 = [(IKJSObject *)self jsValueForProperty:@"StoreURLBag"];
  bagCache = [(IKJSITunesStore *)self bagCache];
  [bagCache _loadWithNotification:1 completion:0];

  return v3;
}

- (void)invalidateBag
{
  bagCache = [(IKJSITunesStore *)self bagCache];
  [bagCache updateWithInvalidation:1];
}

- (void)_bagCacheUpdated
{
  bagCache = [(IKJSITunesStore *)self bagCache];
  v14 = [bagCache valueForKey:*MEMORY[0x277D6A4F8]];

  if ([v14 count])
  {
    v4 = [objc_alloc(MEMORY[0x277D69B70]) initWithGlobalConfiguration:v14];
    [v4 setDisableEventDecoration:{objc_msgSend(v4, "_decorateITMLEvents") ^ 1}];
    [(SSMetricsController *)self->_metricsController setGlobalConfiguration:v4];
    [(SSMetricsController *)self->_metricsController setFlushTimerEnabled:1];
  }

  bagCache2 = [(IKJSITunesStore *)self bagCache];
  existingDictionary = [bagCache2 existingDictionary];

  if (existingDictionary)
  {
    v7 = [existingDictionary objectForKey:@"storefront-header-suffix"];
    storeFrontSuffix = self->_storeFrontSuffix;
    self->_storeFrontSuffix = v7;

    v9 = MEMORY[0x277CD4658];
    appContext = [(IKJSObject *)self appContext];
    jsContext = [appContext jsContext];
    v12 = [v9 valueWithObject:existingDictionary inContext:jsContext];

    [(IKJSObject *)self setJSValue:v12 forProperty:@"StoreURLBag"];
    v13 = [(IKJSObject *)self invokeMethod:@"onBagChange" withArguments:0];
  }
}

@end