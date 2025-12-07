@interface ISLoadURLBagOperation
+ (id)_executedNetworkRequests;
+ (id)_networkCounters;
+ (id)_networkSynchronyQueue;
+ (id)storeFrontHeaderSuffix;
+ (id)storeFrontHeaderSuffixForBundleIdentifier:(id)identifier;
+ (void)_addStoreFrontHeaderSuffix:(id)suffix forBundleIdentifier:(id)identifier;
+ (void)decrementNetworkCounterForBagContext:(id)context;
+ (void)incrementNetworkCounterForBagContext:(id)context;
- (BOOL)_setURLBagWithDictionary:(id)dictionary response:(id)response error:(id *)error;
- (BOOL)operation:(id)operation shouldSetStoreFrontID:(id)d;
- (ISLoadURLBagOperation)init;
- (ISLoadURLBagOperation)initWithBagContext:(id)context;
- (ISURLBag)URLBag;
- (id)uniqueKey;
- (void)_addHeadersToRequestProperties:(id)properties;
- (void)_postBagDidLoadNotificationWithURLBag:(id)bag;
- (void)_sendPingsForURLBag:(id)bag;
- (void)_setOutputURLBag:(id)bag;
- (void)operation:(id)operation willSendRequest:(id)request;
- (void)run;
@end

@implementation ISLoadURLBagOperation

- (ISLoadURLBagOperation)init
{
  v3 = objc_alloc_init(MEMORY[0x277D69C90]);
  [v3 setBagType:0];
  v4 = [(ISLoadURLBagOperation *)self initWithBagContext:v3];

  return v4;
}

- (ISLoadURLBagOperation)initWithBagContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = ISLoadURLBagOperation;
  v5 = [(ISOperation *)&v9 init];
  if (v5)
  {
    v6 = [contextCopy copy];
    context = v5->_context;
    v5->_context = v6;
  }

  return v5;
}

+ (void)decrementNetworkCounterForBagContext:(id)context
{
  cacheKey = [context cacheKey];
  if ([cacheKey length])
  {
    _networkSynchronyQueue = [self _networkSynchronyQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__ISLoadURLBagOperation_decrementNetworkCounterForBagContext___block_invoke;
    v6[3] = &unk_27A670AA0;
    selfCopy = self;
    v7 = cacheKey;
    dispatch_sync(_networkSynchronyQueue, v6);
  }
}

void __62__ISLoadURLBagOperation_decrementNetworkCounterForBagContext___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 40) _networkCounters];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "unsignedIntegerValue") - 1}];

    if (![v4 unsignedIntegerValue])
    {
      v5 = [*(a1 + 40) _executedNetworkRequests];
      [v5 removeObject:*(a1 + 32)];

      v4 = &unk_2884CA8D8;
    }

    [v6 setObject:v4 forKeyedSubscript:*(a1 + 32)];
  }
}

+ (void)incrementNetworkCounterForBagContext:(id)context
{
  cacheKey = [context cacheKey];
  if ([cacheKey length])
  {
    _networkSynchronyQueue = [self _networkSynchronyQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__ISLoadURLBagOperation_incrementNetworkCounterForBagContext___block_invoke;
    v6[3] = &unk_27A670AA0;
    selfCopy = self;
    v7 = cacheKey;
    dispatch_sync(_networkSynchronyQueue, v6);
  }
}

void __62__ISLoadURLBagOperation_incrementNetworkCounterForBagContext___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 40) _networkCounters];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 32)];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &unk_2884CA8D8;
  }

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "unsignedIntegerValue") + 1}];

  [v5 setObject:v4 forKeyedSubscript:*(a1 + 32)];
}

+ (id)storeFrontHeaderSuffix
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v5 = [self storeFrontHeaderSuffixForBundleIdentifier:bundleIdentifier];

  return v5;
}

+ (id)storeFrontHeaderSuffixForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v4 = CFPreferencesCopyValue(@"ISURLBagStorefrontHeaderSuffixes", *MEMORY[0x277D6A708], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    v5 = [v4 objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ISURLBag)URLBag
{
  [(ISOperation *)self lock];
  v3 = self->_outputBag;
  [(ISOperation *)self unlock];

  return v3;
}

- (void)run
{
  v88 = *MEMORY[0x277D85DE8];
  +[ISURLOperation sharedCFURLCache];
  v3 = +[ISURLBagCache sharedCache];
  context = [(ISLoadURLBagOperation *)self context];
  v5 = [v3 URLBagForContext:context];
  if (v5)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 2;
    }

    if (v10)
    {
      v11 = objc_opt_class();
      v12 = v11;
      cacheKey = [context cacheKey];
      *v86 = 138412546;
      *&v86[4] = v11;
      *&v86[12] = 2112;
      *&v86[14] = cacheKey;
      v14 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_275BC3000, oSLogObject, 2, "%@: Found an in-memory bag for %@.", v86, 22);

      if (v14)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:4];
        free(v14);
        SSFileLog();
      }
    }

    else
    {
    }

    [(ISLoadURLBagOperation *)self _setOutputURLBag:v5];
    [(ISOperation *)self setSuccess:1];
    goto LABEL_79;
  }

  if (![context usesCachedBagsOnly])
  {
    *v86 = 0;
    *&v86[8] = v86;
    *&v86[16] = 0x2020000000;
    v87 = 0;
    _networkSynchronyQueue = [objc_opt_class() _networkSynchronyQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__ISLoadURLBagOperation_run__block_invoke;
    block[3] = &unk_27A670AC8;
    v26 = context;
    v79 = v26;
    selfCopy = self;
    v81 = v86;
    dispatch_sync(_networkSynchronyQueue, block);

    if ((*(*&v86[8] + 24) & 1) == 0)
    {

LABEL_78:
      _Block_object_dispose(v86, 8);
      goto LABEL_79;
    }

    v27 = objc_alloc_init(ISStoreURLOperation);
    [(ISOperation *)v27 setDelegate:self];
    [(ISStoreURLOperation *)v27 setNeedsURLBag:0];
    [(ISStoreURLOperation *)v27 setShouldAppendAuthKitHeaders:0];
    [(ISURLOperation *)v27 setTracksPerformanceMetrics:SSDebugShouldTrackPerformance()];
    [(ISStoreURLOperation *)v27 setURLBagRequest:1];
    [(ISStoreURLOperation *)v27 setUrlKnownToBeTrusted:1];
    accountDSID = [(ISLoadURLBagOperation *)self accountDSID];
    [(ISURLOperation *)v27 _setAccountDSIDOverride:accountDSID];

    v29 = +[(ISDataProvider *)ISProtocolDataProvider];
    [v29 setShouldProcessProtocol:0];
    [(ISURLOperation *)v27 setDataProvider:v29];
    v73 = v29;
    v30 = objc_alloc(MEMORY[0x277D69BD0]);
    v31 = [ISURLBagCache URLWithBagContext:v26];
    v75 = [v30 initWithURL:v31];

    [v75 setAllowedRetryCount:0];
    if ([v26 allowsBootstrapCellularData])
    {
      [v75 setAllowsBootstrapCellularData:1];
    }

    clientAuditTokenData = [v26 clientAuditTokenData];
    v33 = clientAuditTokenData == 0;

    if (!v33)
    {
      clientAuditTokenData2 = [v26 clientAuditTokenData];
      [v75 setClientAuditTokenData:clientAuditTokenData2];
    }

    if ([v26 ignoresCaches])
    {
      [v75 setCachePolicy:1];
    }

    [v75 setITunesStoreRequest:1];
    [(ISLoadURLBagOperation *)self _addHeadersToRequestProperties:v75];
    [(ISURLOperation *)v27 setRequestProperties:v75];
    v77 = 0;
    v35 = [(ISOperation *)self runSubOperation:v27 returningError:&v77];
    v36 = v77;
    v37 = v36;
    if (v35)
    {
      output = [v73 output];
      response = [(ISURLOperation *)v27 response];
      v76 = v37;
      v40 = [(ISLoadURLBagOperation *)self _setURLBagWithDictionary:output response:response error:&v76];
      v74 = v76;

      if (v40)
      {
        v41 = 1;
        goto LABEL_57;
      }
    }

    else
    {
      v74 = v36;
    }

    if ([v26 bagType] != 2)
    {
      v41 = 0;
      goto LABEL_57;
    }

    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v43) = [mEMORY[0x277D69B38]2 shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38]2 shouldLogToDisk];
    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    v46 = oSLogObject2;
    if (shouldLogToDisk)
    {
      LODWORD(v43) = v43 | 2;
    }

    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v43 = v43;
    }

    else
    {
      v43 &= 2u;
    }

    if (v43)
    {
      v47 = objc_opt_class();
      v82 = 138412290;
      v83 = v47;
      v72 = v47;
      v48 = _os_log_send_and_compose_impl(v43, 0, 0, 0, &dword_275BC3000, v46, 1, "%@: Created default URL bag for external requests", &v82, 12);

      if (!v48)
      {
LABEL_53:

        v49 = [[ISURLBag alloc] initWithURLBagContext:v26];
        v41 = v49 != 0;
        if (v49)
        {
          [v3 addURLBag:v49];
        }

LABEL_57:
        [(ISOperation *)self setError:v74, v68];
        [(ISOperation *)self setSuccess:v41];
        [(ISOperation *)v27 setDelegate:0];
        if (!self->_outputBag)
        {
LABEL_77:

          goto LABEL_78;
        }

        clientBundleIdentifier = [v26 clientBundleIdentifier];
        v51 = clientBundleIdentifier;
        if (clientBundleIdentifier)
        {
          bundleIdentifier = clientBundleIdentifier;
        }

        else
        {
          mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
          bundleIdentifier = [mainBundle bundleIdentifier];
        }

        if (![bundleIdentifier isEqualToString:@"com.apple.itunesstored"] || (objc_msgSend(v26, "cacheKey"), v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v54, "containsString:", @"itunesstored"), v54, (v55 & 1) != 0))
        {
LABEL_76:
          v66 = objc_opt_class();
          v67 = [(ISURLBag *)self->_outputBag valueForKey:@"storefront-header-suffix"];
          [v66 _addStoreFrontHeaderSuffix:v67 forBundleIdentifier:bundleIdentifier];

          goto LABEL_77;
        }

        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38]3)
        {
          mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v57 = mEMORY[0x277D69B38]3;
        shouldLog2 = [mEMORY[0x277D69B38]3 shouldLog];
        shouldLogToDisk2 = [v57 shouldLogToDisk];
        v71 = v57;
        oSLogObject3 = [v57 OSLogObject];
        v61 = oSLogObject3;
        if (shouldLogToDisk2)
        {
          shouldLog2 |= 2u;
        }

        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
        {
          v62 = shouldLog2;
        }

        else
        {
          v62 = shouldLog2 & 2;
        }

        if (v62)
        {
          v63 = v71;
          v70 = objc_opt_class();
          cacheKey2 = [v26 cacheKey];
          v82 = 138412546;
          v83 = v70;
          v84 = 2112;
          v85 = cacheKey2;
          LODWORD(v69) = 22;
          v65 = _os_log_send_and_compose_impl(v62, 0, 0, 0, &dword_275BC3000, v61, 0, "%@: Unable to set the store front header suffix because we don't have the correct bundle ID. bagContext.cacheKey = %@", &v82, v69);

          if (!v65)
          {
LABEL_75:

            bundleIdentifier = 0;
            goto LABEL_76;
          }

          v61 = [MEMORY[0x277CCACA8] stringWithCString:v65 encoding:4];
          free(v65);
          SSFileLog();
        }

        else
        {
          v63 = v71;
        }

        goto LABEL_75;
      }

      v46 = [MEMORY[0x277CCACA8] stringWithCString:v48 encoding:4];
      free(v48);
      v68 = v46;
      SSFileLog();
    }

    goto LABEL_53;
  }

  mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]4)
  {
    mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog3 = [mEMORY[0x277D69B38]4 shouldLog];
  if ([mEMORY[0x277D69B38]4 shouldLogToDisk])
  {
    LODWORD(v18) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v18) = shouldLog3;
  }

  oSLogObject4 = [mEMORY[0x277D69B38]4 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v18;
  }

  else
  {
    v18 &= 2u;
  }

  if (v18)
  {
    v20 = objc_opt_class();
    v21 = v20;
    cacheKey3 = [context cacheKey];
    *v86 = 138412546;
    *&v86[4] = v20;
    *&v86[12] = 2112;
    *&v86[14] = cacheKey3;
    v23 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_275BC3000, oSLogObject4, 0, "%@: Skipping bag load for cached-only context: %@", v86, 22);

    if (v23)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:4];
      free(v23);
      SSFileLog();
    }
  }

  else
  {
  }

LABEL_79:
}

void __28__ISLoadURLBagOperation_run__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) cacheKey];
  if ([v2 length])
  {
    v3 = [objc_opt_class() _networkCounters];
    v4 = [v3 objectForKeyedSubscript:v2];

    if (v4 && ![v4 isEqualToNumber:&unk_2884CA8D8])
    {
      v5 = [objc_opt_class() _executedNetworkRequests];
      v6 = [v5 containsObject:v2];

      if (v6)
      {
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
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v9 = v9;
        }

        else
        {
          v9 &= 2u;
        }

        if (v9)
        {
          v14 = 138543618;
          v15 = objc_opt_class();
          v16 = 2112;
          v17 = v2;
          v11 = v15;
          v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_275BC3000, v10, 1, "%{public}@: Refusing to load the bag again because someone incremented the counter. %@", &v14, 22);

          if (!v12)
          {
LABEL_17:

LABEL_20:
            goto LABEL_21;
          }

          v10 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:4];
          free(v12);
          SSFileLog();
        }

        goto LABEL_17;
      }

      v13 = [objc_opt_class() _executedNetworkRequests];
      [v13 addObject:v2];
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_20;
  }

LABEL_21:
}

- (id)uniqueKey
{
  v2 = MEMORY[0x277CCACA8];
  context = [(ISLoadURLBagOperation *)self context];
  cacheKey = [context cacheKey];
  v5 = [v2 stringWithFormat:@"com.apple.iTunesStore.LoadURLBag-%@", cacheKey];

  return v5;
}

- (BOOL)operation:(id)operation shouldSetStoreFrontID:(id)d
{
  v4 = [(ISLoadURLBagOperation *)self context:operation];
  v5 = [v4 bagType] != 1;

  return v5;
}

- (void)operation:(id)operation willSendRequest:(id)request
{
  v27 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy valueForHTTPHeaderField:@"X-Apple-Synched-Store-Front"];
  if (v5)
  {
    v6 = *MEMORY[0x277D6A708];
    v7 = CFPreferencesCopyAppValue(@"LastSynchedStoreFront", *MEMORY[0x277D6A708]);
    if (([v5 isEqualToString:v7] & 1) == 0)
    {
      [requestCopy setValue:0 forHTTPHeaderField:*MEMORY[0x277D6A190]];
      CFPreferencesSetAppValue(@"LastSynchedStoreFront", v5, v6);
      CFPreferencesAppSynchronize(v6);
    }
  }

  v21 = v5;
  allHTTPHeaderFields = [requestCopy allHTTPHeaderFields];
  v9 = ISDictionaryValueForCaseInsensitiveString(allHTTPHeaderFields, @"Cookie");

  v10 = [v9 componentsSeparatedByString:@""];;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v19 = [v17 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

        if (([v19 hasPrefix:@"xp_ci"] & 1) == 0)
        {
          [v11 addObject:v19];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v20 = [v11 componentsJoinedByString:@" "];;
  [requestCopy setValue:v20 forHTTPHeaderField:@"Cookie"];
}

- (void)_addHeadersToRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  allHTTPHeaders = [(SSURLBagContext *)self->_context allHTTPHeaders];
  if (allHTTPHeaders)
  {
    [v4 addEntriesFromDictionary:allHTTPHeaders];
  }

  if ([v4 count])
  {
    [propertiesCopy setHTTPHeaders:v4];
  }
}

+ (void)_addStoreFrontHeaderSuffix:(id)suffix forBundleIdentifier:(id)identifier
{
  suffixCopy = suffix;
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v6 = *MEMORY[0x277D6A708];
    v7 = CFPreferencesCopyValue(@"ISURLBagStorefrontHeaderSuffixes", *MEMORY[0x277D6A708], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    v8 = [v7 mutableCopy];
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    if ([suffixCopy length])
    {
      [v8 setObject:suffixCopy forKey:identifierCopy];
    }

    else
    {
      [v8 removeObjectForKey:identifierCopy];
    }

    if (([v8 isEqualToDictionary:v7] & 1) == 0)
    {
      CFPreferencesSetAppValue(@"ISURLBagStorefrontHeaderSuffixes", v8, v6);
      CFPreferencesAppSynchronize(v6);
    }
  }
}

+ (id)_executedNetworkRequests
{
  _networkSynchronyQueue = [self _networkSynchronyQueue];
  dispatch_assert_queue_V2(_networkSynchronyQueue);

  if (_executedNetworkRequests_ams_once_token___COUNTER__ != -1)
  {
    +[ISLoadURLBagOperation _executedNetworkRequests];
  }

  v3 = _executedNetworkRequests_ams_once_object___COUNTER__;

  return v3;
}

uint64_t __49__ISLoadURLBagOperation__executedNetworkRequests__block_invoke()
{
  _executedNetworkRequests_ams_once_object___COUNTER__ = objc_alloc_init(MEMORY[0x277CBEB18]);

  return MEMORY[0x2821F96F8]();
}

+ (id)_networkCounters
{
  _networkSynchronyQueue = [self _networkSynchronyQueue];
  dispatch_assert_queue_V2(_networkSynchronyQueue);

  if (_networkCounters_ams_once_token___COUNTER__ != -1)
  {
    +[ISLoadURLBagOperation _networkCounters];
  }

  v3 = _networkCounters_ams_once_object___COUNTER__;

  return v3;
}

uint64_t __41__ISLoadURLBagOperation__networkCounters__block_invoke()
{
  _networkCounters_ams_once_object___COUNTER__ = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

+ (id)_networkSynchronyQueue
{
  if (_networkSynchronyQueue_ams_once_token___COUNTER__ != -1)
  {
    +[ISLoadURLBagOperation _networkSynchronyQueue];
  }

  v3 = _networkSynchronyQueue_ams_once_object___COUNTER__;

  return v3;
}

uint64_t __47__ISLoadURLBagOperation__networkSynchronyQueue__block_invoke()
{
  _networkSynchronyQueue_ams_once_object___COUNTER__ = dispatch_queue_create("com.apple.iTunesStore.ISLoadURLBagOperation._networkSynchrony", 0);

  return MEMORY[0x2821F96F8]();
}

- (void)_postBagDidLoadNotificationWithURLBag:(id)bag
{
  v3 = MEMORY[0x277CCAB98];
  bagCopy = bag;
  defaultCenter = [v3 defaultCenter];
  mainThreadProxy = [defaultCenter mainThreadProxy];

  [mainThreadProxy postNotificationName:@"ISURLBagDidLoadNotification" object:bagCopy];
}

- (void)_sendPingsForURLBag:(id)bag
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [bag valueForKey:@"pingUrls"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (_sendPingsForURLBag__sOnce != -1)
    {
      [ISLoadURLBagOperation _sendPingsForURLBag:];
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v30;
      v8 = 0x277CCA000uLL;
      v9 = 0x277CBE000uLL;
      v10 = 0x277D69000uLL;
      do
      {
        v11 = 0;
        v28 = v6;
        do
        {
          if (*v30 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v12 = *(*(&v29 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [objc_alloc(*(v9 + 3008)) initWithString:v12];
            if (v13)
            {
              sharediTunesStoreConfig = [*(v10 + 2872) sharediTunesStoreConfig];
              if (!sharediTunesStoreConfig)
              {
                sharediTunesStoreConfig = [*(v10 + 2872) sharedConfig];
              }

              LODWORD(v15) = [sharediTunesStoreConfig shouldLog];
              if ([sharediTunesStoreConfig shouldLogToDisk])
              {
                LODWORD(v15) = v15 | 2;
              }

              oSLogObject = [sharediTunesStoreConfig OSLogObject];
              if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
              {
                v15 = v15;
              }

              else
              {
                v15 &= 2u;
              }

              if (v15)
              {
                v17 = objc_opt_class();
                v33 = 138412546;
                v34 = v17;
                v35 = 2112;
                v36 = v13;
                v18 = v7;
                v19 = v8;
                v20 = v4;
                v21 = v9;
                v22 = v17;
                LODWORD(v26) = 22;
                v23 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_275BC3000, oSLogObject, 2, "%@: Pinging URL: %@", &v33, v26);

                v9 = v21;
                v4 = v20;
                v8 = v19;
                v7 = v18;
                v10 = 0x277D69000;

                if (v23)
                {
                  oSLogObject = [*(v8 + 3240) stringWithCString:v23 encoding:4];
                  free(v23);
                  v25 = oSLogObject;
                  SSFileLog();
                  goto LABEL_21;
                }
              }

              else
              {
LABEL_21:
              }

              v24 = [ISStoreURLOperation pingOperationWithUrl:v13];
              [v24 setNeedsURLBag:0];
              [_sendPingsForURLBag__sPingQueue addOperation:v24];

              v6 = v28;
            }
          }

          ++v11;
        }

        while (v6 != v11);
        v6 = [v4 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v6);
    }

    v3 = v27;
  }
}

uint64_t __45__ISLoadURLBagOperation__sendPingsForURLBag___block_invoke()
{
  v0 = objc_alloc_init(ISOperationQueue);
  v1 = _sendPingsForURLBag__sPingQueue;
  _sendPingsForURLBag__sPingQueue = v0;

  [_sendPingsForURLBag__sPingQueue setAdjustsMaxConcurrentOperationCount:0];
  [_sendPingsForURLBag__sPingQueue setMaxConcurrentOperationCount:1];
  v2 = _sendPingsForURLBag__sPingQueue;

  return [v2 setName:@"com.apple.iTunesStore.URLBagPingQueue"];
}

- (void)_setOutputURLBag:(id)bag
{
  bagCopy = bag;
  [(ISOperation *)self lock];
  outputBag = self->_outputBag;
  self->_outputBag = bagCopy;

  [(ISOperation *)self unlock];
}

- (BOOL)_setURLBagWithDictionary:(id)dictionary response:(id)response error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  dictionaryCopy = dictionary;
  v10 = objc_alloc_init(ISURLBag);
  context = [(ISLoadURLBagOperation *)self context];
  [(ISURLBag *)v10 setURLBagContext:context];
  v34 = 0;
  v12 = [(ISURLBag *)v10 loadFromDictionary:dictionaryCopy returningError:&v34];

  v13 = v34;
  if (v12)
  {
    [responseCopy itunes_expirationInterval];
    [(ISURLBag *)v10 setInvalidationTimeWithExprationInterval:?];
    if (SSIsDaemon())
    {
      if (![context bagType])
      {
        userIdentifier = [context userIdentifier];

        if (!userIdentifier)
        {
          v15 = MEMORY[0x277D69A80];
          availableStorefrontItemKinds = [(ISURLBag *)v10 availableStorefrontItemKinds];
          LODWORD(v15) = [v15 setCachedAvailableItemKinds:availableStorefrontItemKinds];

          if (v15)
          {
            CFPreferencesSynchronize(*MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
          }
        }
      }
    }

    allHeaderFields = [responseCopy allHeaderFields];
    v18 = ISDictionaryValueForCaseInsensitiveString(allHeaderFields, *MEMORY[0x277D6A1D0]);
    if (!v18)
    {
      v18 = ISDictionaryValueForCaseInsensitiveString(allHeaderFields, *MEMORY[0x277D6A180]);
    }

    [(ISURLBag *)v10 setStoreFrontIdentifier:v18];
    v19 = +[ISURLBagCache sharedCache];
    [v19 addURLBag:v10];

    [(ISLoadURLBagOperation *)self _postBagDidLoadNotificationWithURLBag:v10];
    [(ISLoadURLBagOperation *)self _setOutputURLBag:v10];
    [(ISLoadURLBagOperation *)self _sendPingsForURLBag:v10];

    goto LABEL_25;
  }

  errorCopy = error;
  v33 = v12;
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v22 = shouldLog | 2;
  }

  else
  {
    v22 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v24 = v22;
  }

  else
  {
    v24 = v22 & 2;
  }

  if (v24)
  {
    v25 = objc_opt_class();
    v26 = v25;
    v27 = [responseCopy URL];
    v35 = 138412802;
    v36 = v25;
    v37 = 2112;
    v38 = v27;
    v39 = 2112;
    v40 = v13;
    v28 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%@: Could not create bag from URL response: %@, error: %@", &v35, 32);

    errorCopy2 = errorCopy;
    if (!v28)
    {
      goto LABEL_23;
    }

    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:4];
    free(v28);
    SSFileLog();
  }

  else
  {
    errorCopy2 = error;
  }

LABEL_23:
  v12 = v33;
  if (errorCopy2)
  {
    v30 = v13;
    *errorCopy2 = v13;
  }

LABEL_25:

  return v12;
}

@end