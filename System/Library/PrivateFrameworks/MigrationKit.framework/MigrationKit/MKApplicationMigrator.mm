@interface MKApplicationMigrator
- (BOOL)importAndWait;
- (BOOL)prompt;
- (MKApplicationMigrator)init;
- (id)lookup;
- (void)close;
- (void)dealloc;
- (void)didLookup:(id)lookup identifiers:(id)identifiers error:(id)error;
- (void)drainQueue;
- (void)import;
- (void)import:(id)import;
- (void)import:(id)import identifiers:(id)identifiers;
- (void)importDataEncodedInJSON:(id)n;
- (void)install:(id)install;
- (void)lookup:(id)lookup;
- (void)purchase;
- (void)purchase2;
- (void)purchase:(id)purchase handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)slice:(unint64_t)slice;
@end

@implementation MKApplicationMigrator

- (MKApplicationMigrator)init
{
  v7.receiver = self;
  v7.super_class = MKApplicationMigrator;
  v2 = [(MKMigrator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(MKMigrator *)v2 setType:2];
    v4 = objc_alloc_init(MKApplicationDatabase);
    db = v3->_db;
    v3->_db = v4;
  }

  return v3;
}

- (void)dealloc
{
  [(MKApplicationMigrator *)self close];
  v3.receiver = self;
  v3.super_class = MKApplicationMigrator;
  [(MKApplicationMigrator *)&v3 dealloc];
}

- (void)import
{
  obj = self;
  objc_sync_enter(obj);
  if ([(NSMutableArray *)obj->_identifiers count])
  {
    obj->_isImporting = 1;
    objc_sync_exit(obj);
  }

  else
  {
    objc_sync_exit(obj);

    v3.receiver = obj;
    v3.super_class = MKApplicationMigrator;
    [(MKMigrator *)&v3 import];
  }
}

- (void)close
{
  [(MKApplicationDatabase *)self->_db close];
  db = self->_db;
  self->_db = 0;
}

- (void)importDataEncodedInJSON:(id)n
{
  nCopy = n;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_autoreleasePoolPush();
  [(MKApplicationMigrator *)selfCopy import:nCopy];
  objc_autoreleasePoolPop(v5);
  objc_sync_exit(selfCopy);
}

- (void)import:(id)import
{
  v16 = *MEMORY[0x277D85DE8];
  importCopy = import;
  v5 = +[MKLog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_2592D2000, v5, OS_LOG_TYPE_INFO, "%@ will import applications.", buf, 0xCu);
  }

  v13 = 0;
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:importCopy options:0 error:&v13];
  v7 = v13;
  if (v7)
  {
    v8 = +[MKLog log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MKApplicationMigrator import:];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
      if ([v8 count])
      {
        v9 = [v8 mutableCopy];
        [(MKApplicationMigrator *)self setIdentifiers:v9];

        self->_totalCount = [(NSMutableArray *)self->_identifiers count];
        -[MKMigrator migratorDidAppendDataSize:](self, "migratorDidAppendDataSize:", [importCopy length]);
        totalCount = self->_totalCount;
        if (totalCount % 0x32)
        {
          v11 = totalCount / 0x32 + 1;
        }

        else
        {
          v11 = totalCount / 0x32;
        }

        for (; v11; --v11)
        {
          delegate = [(MKMigrator *)self delegate];
          [delegate migratorWillExecuteOperation:self];
        }

        [(MKApplicationMigrator *)self drainQueue];
      }
    }

    else
    {
      v8 = +[MKLog log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [MKApplicationMigrator import:v8];
      }
    }
  }
}

- (void)drainQueue
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_identifiers count];
  if (v3)
  {
    if (v3 >= 0x32)
    {
      v4 = 50;
    }

    else
    {
      v4 = v3;
    }

    v10 = [(NSMutableArray *)self->_identifiers subarrayWithRange:0, v4];
    [(MKApplicationMigrator *)self lookup:?];
  }

  else
  {
    v5 = self->_totalCount - self->_matchedAppsCount;
    v6 = +[MKLog log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      totalCount = self->_totalCount;
      matchedAppsCount = self->_matchedAppsCount;
      *buf = 138413058;
      selfCopy = self;
      v13 = 2048;
      v14 = totalCount;
      v15 = 2048;
      v16 = matchedAppsCount;
      v17 = 2048;
      v18 = v5;
      _os_log_impl(&dword_2592D2000, v6, OS_LOG_TYPE_INFO, "%@ is done. total_count=%ld, matched_apps_count=%ld, not_matched_apps_count=%ld", buf, 0x2Au);
    }

    v9 = objc_alloc_init(MKApplicationAnalytics);
    [(MKApplicationAnalytics *)v9 send:self->_matchedAppsCount mismatchedApps:v5];

    if (self->_isImporting)
    {
      [(MKApplicationMigrator *)self import];
    }
  }
}

- (void)slice:(unint64_t)slice
{
  [(NSMutableArray *)self->_identifiers removeObjectsInRange:0, slice];

  [(MKApplicationMigrator *)self drainQueue];
}

- (void)lookup:(id)lookup
{
  lookupCopy = lookup;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(MKAppSearchRequest);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__MKApplicationMigrator_lookup___block_invoke;
  v7[3] = &unk_2798DCCF0;
  objc_copyWeak(&v9, &location);
  v6 = lookupCopy;
  v8 = v6;
  [(MKAppSearchRequest *)v5 search:0 androidIDs:v6 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __32__MKApplicationMigrator_lookup___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didLookup:v6 identifiers:*(a1 + 32) error:v5];
}

- (void)didLookup:(id)lookup identifiers:(id)identifiers error:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  lookupCopy = lookup;
  identifiersCopy = identifiers;
  errorCopy = error;
  delegate = [(MKMigrator *)self delegate];
  [delegate migratorDidExecuteOperation:self];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = objc_autoreleasePoolPush();
  v14 = +[MKLog log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v16 = 138412802;
    v17 = selfCopy;
    v18 = 2048;
    v19 = [lookupCopy count];
    v20 = 2112;
    v21 = errorCopy;
    _os_log_impl(&dword_2592D2000, v14, OS_LOG_TYPE_INFO, "%@ did lookup android ids. apps=%ld, error=%@", &v16, 0x20u);
  }

  if (errorCopy)
  {
    lookupErrorCount = selfCopy->_lookupErrorCount;
    if (lookupErrorCount < 0xA)
    {
      selfCopy->_lookupErrorCount = lookupErrorCount + 1;
      [(MKApplicationMigrator *)selfCopy drainQueue];
    }

    else
    {
      [(MKApplicationDatabase *)selfCopy->_db addIdentifiers:identifiersCopy];
      -[MKMigrator migratorDidFailWithImportError:count:](selfCopy, "migratorDidFailWithImportError:count:", errorCopy, [identifiersCopy count]);
      -[MKApplicationMigrator slice:](selfCopy, "slice:", [identifiersCopy count]);
    }
  }

  else
  {
    selfCopy->_lookupErrorCount = 0;
    [(MKApplicationMigrator *)selfCopy import:lookupCopy identifiers:identifiersCopy];
  }

  objc_autoreleasePoolPop(v13);
  objc_sync_exit(selfCopy);
}

- (void)import:(id)import identifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  importCopy = import;
  self->_matchedAppsCount += [importCopy count];
  [(MKApplicationMigrator *)self install:importCopy];
  -[MKMigrator migratorDidImportWithCount:](self, "migratorDidImportWithCount:", [importCopy count]);
  v8 = [identifiersCopy count];
  v9 = [importCopy count];

  [(MKMigrator *)self migratorDidFailWithImportError:0 count:v8 - v9];
  v10 = [identifiersCopy count];

  [(MKApplicationMigrator *)self slice:v10];
}

- (BOOL)importAndWait
{
  v3 = +[MKLog log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2592D2000, v3, OS_LOG_TYPE_INFO, "app installation will continue.", buf, 2u);
  }

  lookup = [(MKApplicationMigrator *)self lookup];
  [(MKApplicationMigrator *)self install:lookup];
  if ([(MKApplicationDatabase *)self->_db countForAppStoreIdentifiers]>= 1 && [(MKApplicationMigrator *)self prompt])
  {
    [(MKApplicationMigrator *)self purchase];
  }

  [(MKApplicationDatabase *)self->_db drop];
  [(MKApplicationDatabase *)self->_db close];
  db = self->_db;
  self->_db = 0;

  v6 = +[MKLog log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_2592D2000, v6, OS_LOG_TYPE_INFO, "app installation is done.", v8, 2u);
  }

  return 1;
}

- (id)lookup
{
  identifiers = [(MKApplicationDatabase *)self->_db identifiers];
  v3 = [identifiers count];
  v4 = v3;
  if (v3 >= 50)
  {
    v5 = 50;
  }

  else
  {
    v5 = v3;
  }

  v6 = [identifiers subarrayWithRange:{0, v5}];
  v7 = dispatch_semaphore_create(0);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v8 = 0;
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  while ([v6 count])
  {
    v9 = objc_alloc_init(MKAppSearchRequest);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __31__MKApplicationMigrator_lookup__block_invoke;
    v16[3] = &unk_2798DCD18;
    v18 = &v31;
    v19 = &v27;
    v20 = &v21;
    v10 = v7;
    v17 = v10;
    [(MKAppSearchRequest *)v9 search:0 androidIDs:v6 completion:v16];
    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    v11 = v28;
    v12 = v32;
    if (v28[3] < 10)
    {
      if (v32[3])
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(v32 + 24) = 0;
    }

    *(v12 + 24) = 0;
    v11[3] = 0;
    v8 += v5;
    v4 -= v5;
    if (v4 >= 50)
    {
      v5 = 50;
    }

    else
    {
      v5 = v4;
    }

    v13 = [identifiers subarrayWithRange:{v8, v5}];

    v6 = v13;
LABEL_13:
  }

  v14 = v22[5];
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v14;
}

void __31__MKApplicationMigrator_lookup__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    ++*(*(*(a1 + 48) + 8) + 24);
    v7 = +[MKLog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __31__MKApplicationMigrator_lookup__block_invoke_cold_1(v6);
    }
  }

  if ([v5 count])
  {
    [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v5];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)install:(id)install
{
  v53 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = install;
  v4 = [obj countByEnumeratingWithState:&v36 objects:v52 count:16];
  if (v4)
  {
    v6 = v4;
    v35 = *v37;
    *&v5 = 138413570;
    v32 = v5;
    selfCopy = self;
    do
    {
      v7 = 0;
      do
      {
        if (*v37 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v36 + 1) + 8 * v7);
        v9 = +[MKLog log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          bundleIdentifier = [v8 bundleIdentifier];
          appStoreIdentifier = [v8 appStoreIdentifier];
          name = [v8 name];
          developer = [v8 developer];
          iconURL = [v8 iconURL];
          isFree = [v8 isFree];
          *buf = v32;
          v41 = bundleIdentifier;
          v42 = 2112;
          v43 = appStoreIdentifier;
          v44 = 2112;
          v45 = name;
          v46 = 2112;
          v47 = developer;
          v48 = 2112;
          v49 = iconURL;
          v50 = 1024;
          v51 = isFree;
          _os_log_impl(&dword_2592D2000, v9, OS_LOG_TYPE_INFO, "will install an application. bundle_id=%@, appstore_id=%@, name=%@, developer=%@, icon=%@, free=%d", buf, 0x3Au);

          self = selfCopy;
        }

        if ([v8 isFree])
        {
          signatures = self->_signatures;
          bundleIdentifier2 = [v8 bundleIdentifier];
          v18 = [(NSDictionary *)signatures objectForKey:bundleIdentifier2];

          if (!v18)
          {
            v19 = MEMORY[0x277CBEA90];
            v20 = MEMORY[0x277CBEBC0];
            iconURL2 = [v8 iconURL];
            v22 = [v20 URLWithString:iconURL2];
            v23 = [v19 dataWithContentsOfURL:v22];

            v24 = [MKPlaceholder alloc];
            bundleIdentifier3 = [v8 bundleIdentifier];
            appStoreIdentifier2 = [v8 appStoreIdentifier];
            name2 = [v8 name];
            developer2 = [v8 developer];
            v29 = [(MKPlaceholder *)v24 initWithBundleIdentifier:bundleIdentifier3 appStoreIdentifier:appStoreIdentifier2 bundleName:name2 developer:developer2 icon:v23];

            self = selfCopy;
            [(MKPlaceholder *)v29 install];
          }

          db = self->_db;
          appStoreIdentifier3 = [v8 appStoreIdentifier];
          [(MKApplicationDatabase *)db addAppStoreIdentifier:appStoreIdentifier3];
        }

        ++v7;
      }

      while (v6 != v7);
      v6 = [obj countByEnumeratingWithState:&v36 objects:v52 count:16];
    }

    while (v6);
  }
}

- (BOOL)prompt
{
  v21[4] = *MEMORY[0x277D85DE8];
  v2 = dispatch_semaphore_create(0);
  v20[0] = *MEMORY[0x277CBF188];
  v3 = MKLocalizedString(@"APP_MIGRATION_PROMPT_TITLE");
  v21[0] = v3;
  v20[1] = *MEMORY[0x277CBF198];
  v4 = MKLocalizedString(@"APP_MIGRATION_PROMPT_MESSAGE");
  v21[1] = v4;
  v20[2] = *MEMORY[0x277CBF1E8];
  v5 = MKLocalizedString(@"APP_MIGRATION_PROMPT_CHOICE_YES");
  v21[2] = v5;
  v20[3] = *MEMORY[0x277CBF1C0];
  v6 = MKLocalizedString(@"APP_MIGRATION_PROMPT_CHOICE_NO");
  v21[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, 0, v7);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v8 = dispatch_get_global_queue(25, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __31__MKApplicationMigrator_prompt__block_invoke;
  v11[3] = &unk_2798DCCC8;
  v13 = v19;
  v14 = &v15;
  v12 = v2;
  v9 = v2;
  dispatch_async(v8, v11);

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v2) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(v19, 8);

  return v2;
}

intptr_t __31__MKApplicationMigrator_prompt__block_invoke(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(*(*(a1 + 40) + 8) + 24), 0.0, &responseFlags);
  CFRelease(*(*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 48) + 8) + 24) = responseFlags == 0;
  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)purchase
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = dispatch_semaphore_create(0);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  appStoreIdentifiers = [(MKApplicationDatabase *)self->_db appStoreIdentifiers];
  v5 = 0;
  v6 = *MEMORY[0x277D6A288];
  *&v7 = 138412290;
  v18 = v7;
  while (v5 < [appStoreIdentifiers count])
  {
    v8 = [appStoreIdentifiers objectAtIndexedSubscript:v5];
    v9 = +[MKLog log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = v18;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_2592D2000, v9, OS_LOG_TYPE_INFO, "will lookup a store item. id=%@", &buf, 0xCu);
    }

    v10 = objc_alloc_init(MEMORY[0x277D69B18]);
    [v10 setValue:v8 forParameter:v6];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __33__MKApplicationMigrator_purchase__block_invoke;
    v24[3] = &unk_2798DCD18;
    v26 = &v39;
    v27 = &v35;
    v28 = &v29;
    v11 = v3;
    v25 = v11;
    [v10 startWithItemLookupBlock:v24];
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    v12 = v36;
    v13 = v40;
    if (v36[3] < 10)
    {
      if (v40[3])
      {
        goto LABEL_9;
      }
    }

    else
    {
      *(v40 + 24) = 0;
    }

    *(v13 + 24) = 0;
    v12[3] = 0;
    ++v5;
LABEL_9:
  }

  v14 = +[MKLog log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_2592D2000, v14, OS_LOG_TYPE_INFO, "will create a store purchase request.", &buf, 2u);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy_;
  v46 = __Block_byref_object_dispose_;
  v15 = objc_alloc(MEMORY[0x277D69C20]);
  v47 = [v15 initWithPurchases:v30[5]];
  v16 = *(*(&buf + 1) + 40);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __33__MKApplicationMigrator_purchase__block_invoke_29;
  v21[3] = &unk_2798DCD40;
  p_buf = &buf;
  v22 = v3;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __33__MKApplicationMigrator_purchase__block_invoke_31;
  v19[3] = &unk_2798DCD68;
  v17 = v22;
  v20 = v17;
  [v16 startWithPurchaseResponseBlock:v21 completionBlock:v19];
  dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
}

void __33__MKApplicationMigrator_purchase__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    ++*(*(*(a1 + 48) + 8) + 24);
    v7 = +[MKLog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __33__MKApplicationMigrator_purchase__block_invoke_cold_1(v6);
    }
  }

  if (v5 && [v5 count] == 1)
  {
    v8 = objc_alloc(MEMORY[0x277D69C10]);
    v9 = [v5 objectAtIndexedSubscript:0];
    v10 = [v8 initWithItem:v9];

    [*(*(*(a1 + 56) + 8) + 40) addObject:v10];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __33__MKApplicationMigrator_purchase__block_invoke_29(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];
  v5 = [v4 domain];
  if ([v5 isEqualToString:*MEMORY[0x277D6A110]])
  {
    v6 = [v3 error];
    v7 = [v6 code];

    if (v7 == 16)
    {
      v8 = +[MKLog log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __33__MKApplicationMigrator_purchase__block_invoke_29_cold_1(v3);
      }

      [*(*(*(a1 + 40) + 8) + 40) cancel];
    }
  }

  else
  {
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)purchase2
{
  v3 = objc_alloc_init(MEMORY[0x277CEE438]);
  [v3 setParameter:&unk_286AAC848 forKey:*MEMORY[0x277CEE170]];
  v4 = [objc_alloc(MEMORY[0x277CEE640]) initWithPurchaseType:0 buyParams:v3];
  [v4 setUserInitiated:1];
  v5 = [MEMORY[0x277CEE3F8] bagForProfile:@"AMSPurchase" profileVersion:@"1"];
  v6 = [objc_alloc(MEMORY[0x277CEE660]) initWithPurchase:v4 bag:v5];
  [v6 setDelegate:self];
  performPurchase = [v6 performPurchase];
  v8 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__MKApplicationMigrator_purchase2__block_invoke;
  v10[3] = &unk_2798DCD90;
  v11 = v8;
  v9 = v8;
  [performPurchase resultWithCompletion:v10];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
}

void __34__MKApplicationMigrator_purchase2__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[MKLog log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_2592D2000, v7, OS_LOG_TYPE_INFO, "result=%@, error=%@", &v8, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)purchase:(id)purchase handleAuthenticateRequest:(id)request completion:(id)completion
{
  v6 = MEMORY[0x277CEE3E8];
  completionCopy = completion;
  requestCopy = request;
  v10 = [[v6 alloc] initWithRequest:requestCopy];

  performAuthentication = [v10 performAuthentication];
  [performAuthentication addFinishBlock:completionCopy];
}

@end