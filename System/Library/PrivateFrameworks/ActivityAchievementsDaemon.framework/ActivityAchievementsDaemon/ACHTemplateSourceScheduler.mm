@interface ACHTemplateSourceScheduler
- (ACHTemplateSourceScheduler)initWithClient:(id)client assertionClient:(id)assertionClient templateStore:(id)store achievementStore:(id)achievementStore;
- (BOOL)_isProtectedDataAvailable;
- (BOOL)_queue_runTemplateSources:(id)sources requiringRunnableForDate:(BOOL)date error:(id *)error;
- (BOOL)_runSynchronouslyWithError:(id *)error;
- (id)_currentDate;
- (id)_runnableSourcesInSources:(id)sources forDate:(id)date calendar:(id)calendar;
- (unint64_t)_sourceCount;
- (void)_listenForSignificantTimeChanges;
- (void)_runAllTemplateSources;
- (void)_startUp;
- (void)achievementStoreDidFinishInitialFetch:(id)fetch;
- (void)dealloc;
- (void)deregisterTemplateSource:(id)source;
- (void)registerTemplateSource:(id)source;
- (void)runImmediatelyForTemplateSource:(id)source;
@end

@implementation ACHTemplateSourceScheduler

- (ACHTemplateSourceScheduler)initWithClient:(id)client assertionClient:(id)assertionClient templateStore:(id)store achievementStore:(id)achievementStore
{
  clientCopy = client;
  assertionClientCopy = assertionClient;
  storeCopy = store;
  achievementStoreCopy = achievementStore;
  v33.receiver = self;
  v33.super_class = ACHTemplateSourceScheduler;
  v15 = [(ACHTemplateSourceScheduler *)&v33 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_client, client);
    objc_storeStrong(&v16->_assertionClient, assertionClient);
    objc_storeStrong(&v16->_templateStore, store);
    objc_storeStrong(&v16->_achievementStore, achievementStore);
    [(ACHAchievementStoring *)v16->_achievementStore addObserver:v16];
    v17 = HKCreateSerialDispatchQueue();
    serialQueue = v16->_serialQueue;
    v16->_serialQueue = v17;

    v16->_initialRunComplete = 0;
    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    templateSources = v16->_templateSources;
    v16->_templateSources = v19;

    lastRunDateByTemplateSourceIdentifier = v16->_lastRunDateByTemplateSourceIdentifier;
    v16->_lastRunDateByTemplateSourceIdentifier = MEMORY[0x277CBEC10];

    hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    gregorianCalendar = v16->_gregorianCalendar;
    v16->_gregorianCalendar = hk_gregorianCalendar;

    objc_initWeak(&location, v16);
    uTF8String = [*MEMORY[0x277CE8C10] UTF8String];
    v25 = v16->_serialQueue;
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __92__ACHTemplateSourceScheduler_initWithClient_assertionClient_templateStore_achievementStore___block_invoke;
    v30 = &unk_2784907F8;
    objc_copyWeak(&v31, &location);
    notify_register_dispatch(uTF8String, &v16->_protectedDataToken, v25, &v27);
    [(ACHTemplateSourceScheduler *)v16 _startUp:v27];
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v16;
}

void __92__ACHTemplateSourceScheduler_initWithClient_assertionClient_templateStore_achievementStore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained client];
  v4 = [v3 isProtectedDataAvailable];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 _runAllTemplateSources];
  }
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_protectedDataToken))
  {
    notify_cancel(self->_protectedDataToken);
  }

  v3.receiver = self;
  v3.super_class = ACHTemplateSourceScheduler;
  [(ACHTemplateSourceScheduler *)&v3 dealloc];
}

- (void)registerTemplateSource:(id)source
{
  sourceCopy = source;
  serialQueue = [(ACHTemplateSourceScheduler *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__ACHTemplateSourceScheduler_registerTemplateSource___block_invoke;
  v7[3] = &unk_278490898;
  v8 = sourceCopy;
  selfCopy = self;
  v6 = sourceCopy;
  dispatch_async(serialQueue, v7);
}

void __53__ACHTemplateSourceScheduler_registerTemplateSource___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) conformsToProtocol:&unk_28355FB80];
  v4 = ACHLogDefault();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*v2 identifier];
      *buf = 138543362;
      v18 = v6;
      _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Template Source scheduler adding template source with identifier %{public}@", buf, 0xCu);
    }

    v7 = [*(a1 + 40) templateSources];
    [v7 addObject:*(a1 + 32)];

    v8 = [*(a1 + 40) initialRunComplete];
    v5 = ACHLogDefault();
    v9 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v9)
      {
        v10 = [*v2 identifier];
        *buf = 138543362;
        v18 = v10;
        _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Template Source scheduler running new template source with identifier %{public}@", buf, 0xCu);
      }

      v11 = *(a1 + 40);
      v12 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
      v16 = 0;
      [v11 _queue_runTemplateSources:v12 requiringRunnableForDate:1 error:&v16];
      v5 = v16;

      if (v5)
      {
        v13 = ACHLogTemplates();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [*v2 identifier];
          *buf = 138412546;
          v18 = v14;
          v19 = 2112;
          v20 = v5;
          _os_log_impl(&dword_221DDC000, v13, OS_LOG_TYPE_DEFAULT, "Unable to run template source with identifier: %@; %@", buf, 0x16u);
        }
      }
    }

    else if (v9)
    {
      v15 = [*v2 identifier];
      *buf = 138543362;
      v18 = v15;
      _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Template Source scheduler not running new template source with identifier %{public}@ because initial run is not complete", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__ACHTemplateSourceScheduler_registerTemplateSource___block_invoke_cold_1();
  }
}

- (void)deregisterTemplateSource:(id)source
{
  sourceCopy = source;
  serialQueue = [(ACHTemplateSourceScheduler *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__ACHTemplateSourceScheduler_deregisterTemplateSource___block_invoke;
  v7[3] = &unk_278490898;
  v8 = sourceCopy;
  selfCopy = self;
  v6 = sourceCopy;
  dispatch_async(serialQueue, v7);
}

void __55__ACHTemplateSourceScheduler_deregisterTemplateSource___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) conformsToProtocol:&unk_28355FB80];
  v4 = [v2[1] templateSources];
  v5 = [v4 containsObject:*v2];

  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v3)
    {
      if (v5)
      {
        return;
      }

      v7 = ACHLogDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __55__ACHTemplateSourceScheduler_deregisterTemplateSource___block_invoke_cold_2();
      }
    }

    else
    {
      v7 = ACHLogDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __55__ACHTemplateSourceScheduler_deregisterTemplateSource___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v8 = ACHLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*v2 identifier];
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Template Source scheduler removing template source with identifier %{public}@", &v11, 0xCu);
    }

    v7 = [*(a1 + 40) templateSources];
    [v7 removeObject:*(a1 + 32)];
  }
}

- (void)runImmediatelyForTemplateSource:(id)source
{
  v13 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v5 = ACHLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [sourceCopy identifier];
    *buf = 138543362;
    v12 = identifier;
    _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Template Source scheduler immediate run requested for source: %{public}@", buf, 0xCu);
  }

  serialQueue = [(ACHTemplateSourceScheduler *)self serialQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__ACHTemplateSourceScheduler_runImmediatelyForTemplateSource___block_invoke;
  v9[3] = &unk_278490898;
  v9[4] = self;
  v10 = sourceCopy;
  v8 = sourceCopy;
  dispatch_async(serialQueue, v9);
}

void __62__ACHTemplateSourceScheduler_runImmediatelyForTemplateSource___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) templateSources];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    if ([*(a1 + 32) initialRunComplete])
    {
      v4 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
      v5 = *(a1 + 32);
      v9 = 0;
      [v5 _queue_runTemplateSources:v4 requiringRunnableForDate:0 error:&v9];
      v6 = v9;
      if (v6)
      {
        v7 = ACHLogTemplates();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [*(a1 + 40) identifier];
          *buf = 138412546;
          v11 = v8;
          v12 = 2112;
          v13 = v6;
          _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Unable to run template source with identifier %@; %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v4 = ACHLogDefault();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Template Source scheduler not honoring request, initial run hasn't completed", buf, 2u);
      }
    }
  }

  else
  {
    v4 = ACHLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__ACHTemplateSourceScheduler_runImmediatelyForTemplateSource___block_invoke_cold_1();
    }
  }
}

- (BOOL)_isProtectedDataAvailable
{
  client = [(ACHTemplateSourceScheduler *)self client];
  isProtectedDataAvailable = [client isProtectedDataAvailable];

  return isProtectedDataAvailable;
}

- (void)_startUp
{
  if ([(ACHTemplateSourceScheduler *)self _isProtectedDataAvailable]&& [(ACHTemplateSourceScheduler *)self achievementStoreDidFinishInitialFetch])
  {
    [(ACHTemplateSourceScheduler *)self _runAllTemplateSources];
  }

  else if (![(ACHTemplateSourceScheduler *)self achievementStoreDidFinishInitialFetch])
  {
    [(ACHTemplateSourceScheduler *)self setShouldScheduleAfterInitialFetch:1];
  }

  [(ACHTemplateSourceScheduler *)self _listenForSignificantTimeChanges];
}

- (void)_listenForSignificantTimeChanges
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__ACHTemplateSourceScheduler__listenForSignificantTimeChanges__block_invoke;
  aBlock[3] = &unk_278490820;
  objc_copyWeak(&v18, &location);
  v3 = _Block_copy(aBlock);
  uTF8String = [@"SignificantTimeChangeNotification" UTF8String];
  v5 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85CD0];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __62__ACHTemplateSourceScheduler__listenForSignificantTimeChanges__block_invoke_360;
  handler[3] = &unk_278492D70;
  v7 = v3;
  v16 = v7;
  notify_register_dispatch(uTF8String, &self->_significantTimeChangeToken, v5, handler);

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v10 = *MEMORY[0x277CBE580];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__ACHTemplateSourceScheduler__listenForSignificantTimeChanges__block_invoke_2;
  v13[3] = &unk_278492D98;
  v11 = v7;
  v14 = v11;
  v12 = [defaultCenter addObserverForName:v10 object:0 queue:mainQueue usingBlock:v13];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __62__ACHTemplateSourceScheduler__listenForSignificantTimeChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _isProtectedDataAvailable];
    v4 = ACHLogTemplates();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Significant time change: Running template sources", buf, 2u);
      }

      [v2 _runAllTemplateSources];
    }

    else
    {
      if (v5)
      {
        *v6 = 0;
        _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Significant time change: Will run template sources next time protected data is available", v6, 2u);
      }
    }
  }
}

- (id)_runnableSourcesInSources:(id)sources forDate:(id)date calendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__ACHTemplateSourceScheduler__runnableSourcesInSources_forDate_calendar___block_invoke;
  v14[3] = &unk_278492DC0;
  v14[4] = self;
  v15 = calendarCopy;
  v16 = dateCopy;
  v10 = dateCopy;
  v11 = calendarCopy;
  v12 = [sources hk_filter:v14];

  return v12;
}

uint64_t __73__ACHTemplateSourceScheduler__runnableSourcesInSources_forDate_calendar___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) lastRunDateByTemplateSourceIdentifier];
  v5 = [v3 identifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [v3 runCadence];
  if (v7 == 2)
  {
    if (!v6 || ([*(a1 + 40) isDate:*(a1 + 48) inSameDayAsDate:v6] & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v7 == 1 && !v6)
  {
LABEL_8:
    v8 = [v3 sourceShouldRunForDate:*(a1 + 48)];
    goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (void)_runAllTemplateSources
{
  serialQueue = [(ACHTemplateSourceScheduler *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ACHTemplateSourceScheduler__runAllTemplateSources__block_invoke;
  block[3] = &unk_278490870;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __52__ACHTemplateSourceScheduler__runAllTemplateSources__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 templateSources];
  v7 = 0;
  v4 = [v2 _queue_runTemplateSources:v3 requiringRunnableForDate:1 error:&v7];
  v5 = v7;

  if (v4)
  {
    [*(a1 + 32) setInitialRunComplete:1];
  }

  if (v5)
  {
    v6 = ACHLogTemplates();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEFAULT, "Error running template sources: %@", buf, 0xCu);
    }
  }
}

- (BOOL)_queue_runTemplateSources:(id)sources requiringRunnableForDate:(BOOL)date error:(id *)error
{
  v107 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  selfCopy = self;
  serialQueue = [(ACHTemplateSourceScheduler *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v9 = ACHLogAwardEngine();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221DDC000, v9, OS_LOG_TYPE_DEFAULT, "[#mc] _queue_runTemplateSources", buf, 2u);
  }

  v10 = objc_alloc(MEMORY[0x277CBEBD0]);
  v60 = [v10 initWithSuiteName:*MEMORY[0x277CE8C00]];
  v11 = [v60 BOOLForKey:*MEMORY[0x277CE8AC0]];
  v12 = [v60 BOOLForKey:*MEMORY[0x277CE8AB8]];
  _currentDate = [(ACHTemplateSourceScheduler *)selfCopy _currentDate];
  v13 = sourcesCopy;
  v59 = v13;
  if (!(v11 & 1 | !date | v12 & 1))
  {
    gregorianCalendar = [(ACHTemplateSourceScheduler *)selfCopy gregorianCalendar];
    v15 = [(ACHTemplateSourceScheduler *)selfCopy _runnableSourcesInSources:v59 forDate:_currentDate calendar:gregorianCalendar];

    v13 = v15;
  }

  v58 = v13;
  if ([v13 count])
  {
    assertionClient = [(ACHTemplateSourceScheduler *)selfCopy assertionClient];
    v99 = 0;
    v57 = [assertionClient acquireDatabaseAssertionWithIdentifier:@"ACHTemplateSourceScheduler" duration:&v99 error:20.0];
    v55 = v99;

    v97[0] = 0;
    v97[1] = v97;
    v97[2] = 0x2810000000;
    v97[3] = &unk_221E74077;
    v98 = 0;
    *buf = 0;
    v92 = buf;
    v93 = 0x3032000000;
    v94 = __Block_byref_object_copy__30;
    v95 = __Block_byref_object_dispose__30;
    v96 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v85 = 0;
    v86 = &v85;
    v87 = 0x3032000000;
    v88 = __Block_byref_object_copy__30;
    v89 = __Block_byref_object_dispose__30;
    v90 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v79 = 0;
    v80 = &v79;
    v81 = 0x3032000000;
    v82 = __Block_byref_object_copy__30;
    v83 = __Block_byref_object_dispose__30;
    v84 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = ACHLogDefault();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v105 = 138412290;
      v106 = v58;
      _os_log_impl(&dword_221DDC000, v17, OS_LOG_TYPE_DEFAULT, "Running template sourcing for these sources: %@", v105, 0xCu);
    }

    group = dispatch_group_create();
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = v58;
    v18 = [obj countByEnumeratingWithState:&v75 objects:v104 count:16];
    if (v18)
    {
      v19 = *v76;
      v20 = MEMORY[0x277CBEC10];
      do
      {
        v21 = 0;
        v22 = v20;
        do
        {
          if (*v76 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v75 + 1) + 8 * v21);
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __87__ACHTemplateSourceScheduler__queue_runTemplateSources_requiringRunnableForDate_error___block_invoke;
          aBlock[3] = &unk_278492DE8;
          v71 = v97;
          aBlock[4] = v23;
          v72 = buf;
          v73 = &v79;
          v74 = &v85;
          v24 = group;
          v70 = v24;
          v25 = _Block_copy(aBlock);
          dispatch_group_enter(v24);
          [v23 templatesForDate:_currentDate completion:v25];
          identifier = [v23 identifier];
          v102 = identifier;
          v103 = _currentDate;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
          v20 = [v22 hk_dictionaryByAddingEntriesFromDictionary:v27];

          ++v21;
          v22 = v20;
        }

        while (v18 != v21);
        v18 = [obj countByEnumeratingWithState:&v75 objects:v104 count:16];
      }

      while (v18);
    }

    else
    {
      v20 = MEMORY[0x277CBEC10];
    }

    v29 = dispatch_time(0, 30000000000);
    if (dispatch_group_wait(group, v29))
    {
      v30 = ACHLogTemplates();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [ACHTemplateSourceScheduler _queue_runTemplateSources:requiringRunnableForDate:error:];
      }

      v31 = MEMORY[0x277CCA9B8];
      v100 = *MEMORY[0x277CCA450];
      v101 = @"Waited for dispatch group and reached timeout. Source scheduling appears to have failed.";
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
      v33 = [v31 errorWithDomain:@"com.apple.ActivityAchievements" code:-1 userInfo:v32];

      v34 = v33;
      v35 = v34;
      if (v34)
      {
        if (error)
        {
          v36 = v34;
          *error = v35;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      assertionClient2 = [(ACHTemplateSourceScheduler *)selfCopy assertionClient];
      v68 = v55;
      [assertionClient2 invalidateAssertionWithToken:v57 error:&v68];
      v38 = v68;

      v28 = 0;
      goto LABEL_41;
    }

    assertionClient3 = [(ACHTemplateSourceScheduler *)selfCopy assertionClient];
    v67 = v55;
    [assertionClient3 invalidateAssertionWithToken:v57 error:&v67];
    v38 = v67;

    if ([*(v92 + 5) count])
    {
      firstObject = [*(v92 + 5) firstObject];
      assertionClient2 = firstObject;
      if (firstObject)
      {
        if (error)
        {
          v41 = firstObject;
LABEL_33:
          v28 = 0;
          *error = assertionClient2;
LABEL_40:
          v35 = assertionClient2;
LABEL_41:

          _Block_object_dispose(&v79, 8);
          _Block_object_dispose(&v85, 8);

          _Block_object_dispose(buf, 8);
          _Block_object_dispose(v97, 8);

          goto LABEL_42;
        }

        _HKLogDroppedError();
      }
    }

    else
    {
      templateStore = [(ACHTemplateSourceScheduler *)selfCopy templateStore];
      v43 = v80[5];
      v66 = 0;
      [templateStore removeTemplates:v43 error:&v66];
      v35 = v66;

      if (!v35)
      {
        templateStore2 = [(ACHTemplateSourceScheduler *)selfCopy templateStore];
        v47 = v86[5];
        v65 = 0;
        [templateStore2 addTemplates:v47 error:&v65];
        assertionClient2 = v65;

        v28 = assertionClient2 == 0;
        if (assertionClient2)
        {
          v48 = assertionClient2;
          v49 = v48;
          if (error)
          {
            v50 = v48;
            *error = v49;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        else
        {
          lastRunDateByTemplateSourceIdentifier = [(ACHTemplateSourceScheduler *)selfCopy lastRunDateByTemplateSourceIdentifier];
          v53 = [lastRunDateByTemplateSourceIdentifier hk_dictionaryByAddingEntriesFromDictionary:v20];
          [(ACHTemplateSourceScheduler *)selfCopy setLastRunDateByTemplateSourceIdentifier:v53];

          v49 = ACHLogTemplates();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            lastRunDateByTemplateSourceIdentifier2 = [(ACHTemplateSourceScheduler *)selfCopy lastRunDateByTemplateSourceIdentifier];
            *v105 = 138543362;
            v106 = lastRunDateByTemplateSourceIdentifier2;
            _os_log_impl(&dword_221DDC000, v49, OS_LOG_TYPE_DEFAULT, "Updated last run dates for template sources to: %{public}@", v105, 0xCu);
          }
        }

        goto LABEL_41;
      }

      v44 = v35;
      assertionClient2 = v44;
      if (error)
      {
        v45 = v44;
        goto LABEL_33;
      }

      _HKLogDroppedError();
    }

    v28 = 0;
    goto LABEL_40;
  }

  v28 = 1;
LABEL_42:

  return v28;
}

void __87__ACHTemplateSourceScheduler__queue_runTemplateSources_requiringRunnableForDate_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v64 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  os_unfair_lock_lock_with_options();
  if (v9)
  {
    [*(*(*(a1 + 56) + 8) + 40) addObject:v9];
  }

  v42 = v9;
  if (v8)
  {
    v43 = v7;
    v10 = ACHLogTemplates();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) identifier];
      *buf = 138543618;
      v61 = v11;
      v62 = 2048;
      v63 = [v8 count];
      _os_log_impl(&dword_221DDC000, v10, OS_LOG_TYPE_DEFAULT, "Source %{public}@ returned %lu templates, removing from template store:", buf, 0x16u);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v54;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v54 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v53 + 1) + 8 * i);
          v18 = ACHLogTemplates();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v17 uniqueName];
            *buf = 134218242;
            v61 = v17;
            v62 = 2114;
            v63 = v19;
            _os_log_impl(&dword_221DDC000, v18, OS_LOG_TYPE_DEFAULT, "%p: %{public}@", buf, 0x16u);
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v14);
    }

    v20 = *(*(*(a1 + 64) + 8) + 40);
    v21 = [v12 allObjects];
    [v20 addObjectsFromArray:v21];

    v7 = v43;
  }

  v44 = v8;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v22 = v7;
  v23 = [v22 countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v50;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v50 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v49 + 1) + 8 * j);
        v28 = [*(a1 + 32) identifier];
        [v27 setSourceName:v28];
      }

      v24 = [v22 countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v24);
  }

  v29 = ACHLogTemplates();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [*(a1 + 32) identifier];
    v31 = [v22 count];
    *buf = 138543618;
    v61 = v30;
    v62 = 2048;
    v63 = v31;
    _os_log_impl(&dword_221DDC000, v29, OS_LOG_TYPE_DEFAULT, "Source %{public}@ returned %lu templates, writing to template store:", buf, 0x16u);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v32 = v22;
  v33 = [v32 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v46;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v46 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v45 + 1) + 8 * k);
        v38 = ACHLogTemplates();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [v37 uniqueName];
          *buf = 134218242;
          v61 = v37;
          v62 = 2114;
          v63 = v39;
          _os_log_impl(&dword_221DDC000, v38, OS_LOG_TYPE_DEFAULT, "%p: %{public}@", buf, 0x16u);
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v34);
  }

  v40 = *(*(*(a1 + 72) + 8) + 40);
  v41 = [v32 allObjects];
  [v40 addObjectsFromArray:v41];

  os_unfair_lock_unlock((*(*(a1 + 48) + 8) + 32));
  dispatch_group_leave(*(a1 + 40));
}

- (void)achievementStoreDidFinishInitialFetch:(id)fetch
{
  [(ACHTemplateSourceScheduler *)self setAchievementStoreDidFinishInitialFetch:1];
  if ([(ACHTemplateSourceScheduler *)self shouldScheduleAfterInitialFetch]&& [(ACHTemplateSourceScheduler *)self _isProtectedDataAvailable])
  {

    [(ACHTemplateSourceScheduler *)self _runAllTemplateSources];
  }
}

- (unint64_t)_sourceCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  serialQueue = [(ACHTemplateSourceScheduler *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__ACHTemplateSourceScheduler__sourceCount__block_invoke;
  v6[3] = &unk_278490FE8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __42__ACHTemplateSourceScheduler__sourceCount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) templateSources];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (id)_currentDate
{
  currentDateOverride = [(ACHTemplateSourceScheduler *)self currentDateOverride];
  v3 = currentDateOverride;
  if (currentDateOverride)
  {
    date = currentDateOverride;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  v5 = date;

  return v5;
}

- (BOOL)_runSynchronouslyWithError:(id *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__30;
  v13 = __Block_byref_object_dispose__30;
  v14 = 0;
  serialQueue = [(ACHTemplateSourceScheduler *)self serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__ACHTemplateSourceScheduler__runSynchronouslyWithError___block_invoke;
  v8[3] = &unk_278491920;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(serialQueue, v8);

  if (error)
  {
    *error = v10[5];
  }

  v6 = v10[5] == 0;
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __57__ACHTemplateSourceScheduler__runSynchronouslyWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 templateSources];
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  [v2 _queue_runTemplateSources:v3 requiringRunnableForDate:1 error:&obj];
  objc_storeStrong((v4 + 40), obj);
}

@end