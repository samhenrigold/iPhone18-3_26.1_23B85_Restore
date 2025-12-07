@interface WLKAppLibraryCore
+ (id)sharedInstance;
- (BOOL)containsAppOfInterest:(id)interest;
- (WLKAppLibraryCore)init;
- (id)_connection;
- (id)_nonConformingBundleList;
- (id)_otherBundlesOfInterest;
- (void)_fetchApplicationsInProcess:(id)process;
- (void)fetchApplications:(id)applications;
@end

@implementation WLKAppLibraryCore

+ (id)sharedInstance
{
  if (sharedInstance___once_2 != -1)
  {
    +[WLKAppLibraryCore sharedInstance];
  }

  v3 = sharedInstance___singleInstance;

  return v3;
}

uint64_t __35__WLKAppLibraryCore_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(WLKAppLibraryCore);
  v1 = sharedInstance___singleInstance;
  sharedInstance___singleInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (WLKAppLibraryCore)init
{
  v9.receiver = self;
  v9.super_class = WLKAppLibraryCore;
  v2 = [(WLKAppLibraryCore *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.WatchListKit.AppLibraryCore", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x277D37CA8]);
    subscriptionManager = v2->_subscriptionManager;
    v2->_subscriptionManager = v6;

    v2->_xpcLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)_connection
{
  os_unfair_lock_lock(&self->_xpcLock);
  if (!self->_connection)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.watchlistd.xpc" options:0];
    connection = self->_connection;
    self->_connection = v3;

    v5 = self->_connection;
    v6 = WLKConnectionClientInterface();
    [(NSXPCConnection *)v5 setExportedInterface:v6];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v7 = self->_connection;
    v8 = WLKConnectionServerInterface();
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_69_0];
    objc_initWeak(&location, self);
    v9 = self->_connection;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __32__WLKAppLibraryCore__connection__block_invoke_2;
    v15 = &unk_279E5EC50;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v9 setInvalidationHandler:&v12];
    [(NSXPCConnection *)self->_connection resume:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  os_unfair_lock_unlock(&self->_xpcLock);
  v10 = self->_connection;

  return v10;
}

- (void)fetchApplications:(id)applications
{
  applicationsCopy = applications;
  v5 = WLKIsDaemon();
  if ((v5 & 1) != 0 || (v5 = WLKIsRunningTest(), v5))
  {
    v6 = WLKStartupSignpostLogObject(v5);
    v7 = os_signpost_id_generate(v6);

    v9 = WLKStartupSignpostLogObject(v8);
    v10 = v9;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "LibraryCore.fetchApplicationsInProcess", &unk_272A8884E, buf, 2u);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __39__WLKAppLibraryCore_fetchApplications___block_invoke;
    v24[3] = &unk_279E5EED8;
    v11 = v25;
    v25[0] = applicationsCopy;
    v25[1] = v7;
    v12 = applicationsCopy;
    [(WLKAppLibraryCore *)self _fetchApplicationsInProcess:v24];
  }

  else
  {
    _connection = [(WLKAppLibraryCore *)self _connection];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __39__WLKAppLibraryCore_fetchApplications___block_invoke_5;
    v22[3] = &unk_279E5EB38;
    v11 = &v23;
    v14 = applicationsCopy;
    v23 = v14;
    v15 = [_connection remoteObjectProxyWithErrorHandler:v22];

    date = [MEMORY[0x277CBEAA8] date];
    NSLog(&cfstr_Wlkapplibraryc_0.isa);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __39__WLKAppLibraryCore_fetchApplications___block_invoke_2;
    v19[3] = &unk_279E5EF00;
    v20 = date;
    v21 = v14;
    v17 = v14;
    v18 = date;
    [v15 fetchApplications:v19];
  }
}

void __39__WLKAppLibraryCore_fetchApplications___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKStartupSignpostLogObject(v3);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v5, OS_SIGNPOST_INTERVAL_END, v6, "LibraryCore.fetchApplicationsInProcess", &unk_272A8884E, v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __39__WLKAppLibraryCore_fetchApplications___block_invoke_5(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_Wlkapplibraryc.isa, a2);
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __39__WLKAppLibraryCore_fetchApplications___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSinceDate:*(a1 + 32)];
  NSLog(&cfstr_Wlkapplibraryc_1.isa, v4);

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

- (BOOL)containsAppOfInterest:(id)interest
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  interestCopy = interest;
  v5 = [interestCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(interestCopy);
      }

      v9 = *(*(&v16 + 1) + 8 * v8);
      v10 = [v9 entitlementValueForKey:@"com.apple.smoot.subscriptionservice" ofClass:{objc_opt_class(), v16}];

      _otherBundlesOfInterest = [(WLKAppLibraryCore *)self _otherBundlesOfInterest];
      bundleIdentifier = [v9 bundleIdentifier];
      v13 = [_otherBundlesOfInterest containsObject:bundleIdentifier];

      v14 = 1;
      if (v10 || (v13 & 1) != 0)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [interestCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v14 = 0;
  }

  return v14;
}

- (id)_nonConformingBundleList
{
  if (_nonConformingBundleList_onceToken != -1)
  {
    [WLKAppLibraryCore _nonConformingBundleList];
  }

  v3 = _nonConformingBundleList___nonConformingBundles;

  return v3;
}

void __45__WLKAppLibraryCore__nonConformingBundleList__block_invoke()
{
  v0 = _nonConformingBundleList___nonConformingBundles;
  _nonConformingBundleList___nonConformingBundles = &unk_288222F18;
}

- (id)_otherBundlesOfInterest
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__WLKAppLibraryCore__otherBundlesOfInterest__block_invoke;
  block[3] = &unk_279E5EE08;
  block[4] = self;
  if (_otherBundlesOfInterest_onceToken != -1)
  {
    dispatch_once(&_otherBundlesOfInterest_onceToken, block);
  }

  return _otherBundlesOfInterest___bundlesOfInterest;
}

void __44__WLKAppLibraryCore__otherBundlesOfInterest__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEB18];
  v2 = [*(a1 + 32) _nonConformingBundleList];
  v6 = [v1 arrayWithArray:v2];

  v3 = WLKTVAppBundleID();
  [v6 addObject:v3];

  v4 = [v6 copy];
  v5 = _otherBundlesOfInterest___bundlesOfInterest;
  _otherBundlesOfInterest___bundlesOfInterest = v4;
}

- (void)_fetchApplicationsInProcess:(id)process
{
  processCopy = process;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__WLKAppLibraryCore__fetchApplicationsInProcess___block_invoke;
  v7[3] = &unk_279E5EFC0;
  v7[4] = self;
  v8 = processCopy;
  v6 = processCopy;
  dispatch_async(queue, v7);
}

void __49__WLKAppLibraryCore__fetchApplicationsInProcess___block_invoke(uint64_t a1)
{
  v83 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = WLKStartupSignpostLogObject(v4);
  v6 = os_signpost_id_generate(v5);

  v8 = WLKStartupSignpostLogObject(v7);
  v9 = v8;
  v10 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "LibraryCore.fetchApplicationsInProcess.filter", &unk_272A8884E, buf, 2u);
  }

  v11 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __49__WLKAppLibraryCore__fetchApplicationsInProcess___block_invoke_29;
  v80[3] = &unk_279E5EF48;
  v80[4] = *(a1 + 32);
  [v11 setFilter:v80];
  v12 = [MEMORY[0x277CBEAA8] date];
  [v12 timeIntervalSinceDate:v4];
  NSLog(&cfstr_Wlkapplibraryc_2.isa, v13);

  v15 = WLKStartupSignpostLogObject(v14);
  v16 = v15;
  if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v16, OS_SIGNPOST_INTERVAL_END, v6, "LibraryCore.fetchApplicationsInProcess.filter", &unk_272A8884E, buf, 2u);
  }

  v18 = WLKStartupSignpostLogObject(v17);
  v19 = v18;
  if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v6, "LibraryCore.fetchApplicationsInProcess.checkAppRecords", &unk_272A8884E, buf, 2u);
  }

  v59 = v3;
  v60 = v6 - 1;
  v57 = v6;
  v58 = v4;
  v62 = a1;

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v20 = v11;
  v21 = [v20 countByEnumeratingWithState:&v76 objects:v82 count:16];
  v61 = v20;
  if (v21)
  {
    v22 = v21;
    LODWORD(v23) = 0;
    v24 = *v77;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v77 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v76 + 1) + 8 * i);
        v27 = objc_autoreleasePoolPush();
        v28 = WLKAppProxyForLSApplicationRecord(v26);
        v29 = [v28 isEntitled];
        v30 = v2;
        if (v29 & 1) != 0 || (v31 = [v28 isTVApp], v30 = v2, (v31) || (objc_msgSend(*(v62 + 32), "_nonConformingBundleList"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "bundleIdentifier"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v32, "containsObject:", v33), v33, v32, v20 = v61, v30 = v63, v34))
        {
          [v30 addObject:v28];
        }

        objc_autoreleasePoolPop(v27);
      }

      v23 = (v23 + v22);
      v22 = [v20 countByEnumeratingWithState:&v76 objects:v82 count:16];
    }

    while (v22);
  }

  else
  {
    v23 = 0;
  }

  v35 = [MEMORY[0x277CBEAA8] date];
  [v35 timeIntervalSinceDate:v58];
  NSLog(&cfstr_Wlkapplibraryc_3.isa, v36, v23);

  v38 = WLKStartupSignpostLogObject(v37);
  v39 = v38;
  if (v60 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v39, OS_SIGNPOST_INTERVAL_END, v57, "LibraryCore.fetchApplicationsInProcess.checkAppRecords", &unk_272A8884E, buf, 2u);
  }

  v41 = WLKStartupSignpostLogObject(v40);
  v42 = v41;
  if (v60 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v42, OS_SIGNPOST_INTERVAL_BEGIN, v57, "LibraryCore.fetchApplicationsInProcess.InstalledAppBundles", &unk_272A8884E, buf, 2u);
  }

  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __49__WLKAppLibraryCore__fetchApplicationsInProcess___block_invoke_37;
  v72[3] = &unk_279E5EF70;
  v43 = v54;
  v73 = v43;
  v44 = v56;
  v74 = v44;
  v45 = v55;
  v75 = v45;
  v46 = WLKStartupSignpostLogObject([v2 enumerateObjectsUsingBlock:v72]);
  v47 = v46;
  if (v60 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v47, OS_SIGNPOST_INTERVAL_END, v57, "LibraryCore.fetchApplicationsInProcess.InstalledAppBundles", &unk_272A8884E, buf, 2u);
  }

  v48 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v49 = [v44 count];
  if (v49)
  {
    v50 = WLKStartupSignpostLogObject(v49);
    v51 = v50;
    if (v60 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v51, OS_SIGNPOST_INTERVAL_BEGIN, v57, "LibraryCore.fetchApplicationsInProcess.ActiveSubscription", &unk_272A8884E, buf, 2u);
    }

    v52 = *(*(v62 + 32) + 24);
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __49__WLKAppLibraryCore__fetchApplicationsInProcess___block_invoke_40;
    v64[3] = &unk_279E5EF98;
    v71 = v57;
    v65 = v44;
    v66 = v48;
    v67 = v59;
    v68 = v43;
    v70 = *(v62 + 40);
    v69 = v63;
    [v52 getActiveSubscriptionServicesMatchingBundleIdentifiers:v45 domainIdentifiers:MEMORY[0x277CBEBF8] maximumExpirationLimit:v64 completionHandler:31104000.0];

    v53 = v65;
    goto LABEL_39;
  }

  NSLog(&cfstr_Wlkapplibraryc_5.isa);
  _configureDemoBundles(v44, v59, v43);
  if (*(v62 + 40))
  {
    v53 = (*(fetchedApplicationsCompletion + 2))(fetchedApplicationsCompletion, v44, v59, v43, v63);
    (*(*(v62 + 40) + 16))();
LABEL_39:
  }
}

uint64_t __49__WLKAppLibraryCore__fetchApplicationsInProcess___block_invoke_29(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 entitlements];
  v5 = [v4 objectForKey:@"com.apple.smoot.subscriptionservice" ofClass:objc_opt_class()];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [*(a1 + 32) _otherBundlesOfInterest];
    v8 = [v3 bundleIdentifier];
    v6 = [v7 containsObject:v8];
  }

  return v6;
}

void __49__WLKAppLibraryCore__fetchApplicationsInProcess___block_invoke_37(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isAppStoreVendable] & 1) == 0 && (objc_msgSend(v5, "isSystemApp") & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
  }

  [*(a1 + 40) addObject:v5];
  v3 = *(a1 + 48);
  v4 = [v5 bundleIdentifier];
  [v3 addObject:v4];
}

void __49__WLKAppLibraryCore__fetchApplicationsInProcess___block_invoke_40(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v34 = a2;
  v5 = a3;
  v6 = WLKStartupSignpostLogObject(v5);
  v7 = v6;
  v8 = *(a1 + 80);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v7, OS_SIGNPOST_INTERVAL_END, v8, "LibraryCore.fetchApplicationsInProcess.ActiveSubscription", &unk_272A8884E, buf, 2u);
  }

  v10 = WLKStartupSignpostLogObject(v9);
  v11 = v10;
  v12 = *(a1 + 80);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v12, "LibraryCore.fetchApplicationsInProcess.SubscribedAppBundle", &unk_272A8884E, buf, 2u);
  }

  if (v5)
  {
    NSLog(&cfstr_Wlkapplibraryc_4.isa, v5);
  }

  v33 = v5;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = [v34 allKeys];
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        if ([*(a1 + 32) count])
        {
          v19 = 0;
          while (1)
          {
            v20 = [*(a1 + 32) objectAtIndexedSubscript:v19];
            v21 = [v20 bundleIdentifier];
            v22 = [v21 isEqualToString:v18];

            if (v22)
            {
              break;
            }

            if (++v19 >= [*(a1 + 32) count])
            {
              goto LABEL_20;
            }
          }

          [*(a1 + 40) addIndex:v19];
          v23 = [v20 dictionaryRepresentation];
          v24 = [v23 mutableCopy];

          v25 = [v34 objectForKeyedSubscript:v18];
          v26 = [v25 objectForKeyedSubscript:@"type"];

          [v24 setObject:v26 forKeyedSubscript:@"WLKAppProxy.subscriptionInfo"];
          v27 = [[WLKAppProxy alloc] initWithDictionary:v24];
          [*(a1 + 48) addObject:v27];
        }

LABEL_20:
        ;
      }

      v15 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v15);
  }

  v29 = WLKStartupSignpostLogObject(v28);
  v30 = v29;
  v31 = *(a1 + 80);
  if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v30, OS_SIGNPOST_INTERVAL_END, v31, "LibraryCore.fetchApplicationsInProcess.SubscribedAppBundle", &unk_272A8884E, buf, 2u);
  }

  [*(a1 + 32) removeObjectsAtIndexes:*(a1 + 40)];
  _configureDemoBundles(*(a1 + 32), *(a1 + 48), *(a1 + 56));
  if (*(a1 + 72))
  {
    v32 = (*(fetchedApplicationsCompletion + 2))(fetchedApplicationsCompletion, *(a1 + 32), *(a1 + 48), *(a1 + 56), *(a1 + 64));
    (*(*(a1 + 72) + 16))();
  }
}

void __32__WLKAppLibraryCore__connection__block_invoke_2(uint64_t a1)
{
  NSLog(&cfstr_Wlkapplibraryc_7.isa);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 8);
    v3 = *&v4[4]._os_unfair_lock_opaque;
    *&v4[4]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(v4 + 8);
    WeakRetained = v4;
  }
}

@end