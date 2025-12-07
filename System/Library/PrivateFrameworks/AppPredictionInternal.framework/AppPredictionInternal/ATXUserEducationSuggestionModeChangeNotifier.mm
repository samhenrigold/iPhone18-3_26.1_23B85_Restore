@interface ATXUserEducationSuggestionModeChangeNotifier
+ (id)sharedInstance;
- (ATXUserEducationSuggestionModeChangeNotifier)init;
- (void)processModeChangeEvent:(id)event;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation ATXUserEducationSuggestionModeChangeNotifier

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ATXUserEducationSuggestionModeChangeNotifier_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken7_2 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken7_2, block);
  }

  v2 = sharedInstance__pasExprOnceResult_2;

  return v2;
}

void __62__ATXUserEducationSuggestionModeChangeNotifier_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_opt_new();
  v3 = sharedInstance__pasExprOnceResult_2;
  sharedInstance__pasExprOnceResult_2 = v2;

  objc_autoreleasePoolPop(v1);
}

- (ATXUserEducationSuggestionModeChangeNotifier)init
{
  v33 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = ATXUserEducationSuggestionModeChangeNotifier;
  v2 = [(ATXUserEducationSuggestionModeChangeNotifier *)&v29 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    observers = v2->_observers;
    v2->_observers = v3;

    if (!v2->_queue)
    {
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7 = dispatch_queue_create("com.apple.ATXUserEducationSuggestionServer.queue", v6);
      queue = v2->_queue;
      v2->_queue = v7;
    }

    v9 = __atxlog_handle_context_user_education_suggestions(v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[ATXUserEducationSuggestionModeChangeNotifier init]";
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "%s: registering for real time mode change events", &buf, 0xCu);
    }

    v10 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"FocusModes.ATXUserEducationSuggestionServer" targetQueue:v2->_queue];
    scheduler = v2->_scheduler;
    v2->_scheduler = v10;

    *&buf = 0;
    *(&buf + 1) = &buf;
    v31 = 0x2020000000;
    v32 = 0;
    v12 = BiomeLibrary();
    userFocus = [v12 UserFocus];
    computedMode = [userFocus ComputedMode];
    v15 = [computedMode atx_publisherWithStartTime:0 endTime:0 maxEvents:&unk_283A552B0 lastN:&unk_283A552B0 reversed:0];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_18;
    v28[3] = &unk_278597BA8;
    v28[4] = &buf;
    v16 = [v15 sinkWithCompletion:&__block_literal_global_17 receiveInput:v28];

    objc_initWeak(&location, v2);
    v17 = BiomeLibrary();
    userFocus2 = [v17 UserFocus];
    computedMode2 = [userFocus2 ComputedMode];
    atx_DSLPublisher = [computedMode2 atx_DSLPublisher];
    v21 = [atx_DSLPublisher subscribeOn:v2->_scheduler];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_22;
    v25[3] = &unk_278597BD0;
    v25[4] = &buf;
    objc_copyWeak(&v26, &location);
    v22 = [v21 sinkWithCompletion:&__block_literal_global_21 receiveInput:v25];
    sink = v2->_sink;
    v2->_sink = v22;

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
    _Block_object_dispose(&buf, 8);
  }

  return v2;
}

void __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  if (v3)
  {
    v4 = __atxlog_handle_context_user_education_suggestions(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_cold_1(v2);
    }
  }
}

void *__52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_18(uint64_t a1, void *a2)
{
  result = [a2 timestamp];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

void __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 state];
  v4 = __atxlog_handle_context_user_education_suggestions(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_2_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ATXUserEducationSuggestionModeChangeNotifier init]_block_invoke_2";
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: done listening to mode change events", &v6, 0xCu);
  }
}

void __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_22(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 timestamp];
  if (v5 >= *(*(*(a1 + 32) + 8) + 24))
  {
    v14 = [v3 eventBody];

    if (v14)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v16 = [v3 eventBody];
      [WeakRetained processModeChangeEvent:v16];
    }

    else
    {
      WeakRetained = __atxlog_handle_context_user_education_suggestions(v15);
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
      {
        __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_22_cold_1();
      }
    }
  }

  else
  {
    WeakRetained = __atxlog_handle_context_user_education_suggestions(v4);
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 eventBody];
      v8 = MEMORY[0x277CBEAA8];
      [v3 timestamp];
      v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
      [v3 timestamp];
      v11 = v10;
      v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(*(*(a1 + 32) + 8) + 24)];
      v13 = *(*(*(a1 + 32) + 8) + 24);
      v17 = 136316418;
      v18 = "[ATXUserEducationSuggestionModeChangeNotifier init]_block_invoke";
      v19 = 2114;
      v20 = v7;
      v21 = 2114;
      v22 = v9;
      v23 = 2048;
      v24 = v11;
      v25 = 2114;
      v26 = v12;
      v27 = 2048;
      v28 = v13;
      _os_log_impl(&dword_2263AA000, WeakRetained, OS_LOG_TYPE_DEFAULT, "%s: Ignoring stale mode switch event: %{public}@ because it occurred on %{public}@ (%f), which was before the latest event in the stream at %{public}@ (%f)", &v17, 0x3Eu);
    }
  }
}

- (void)processModeChangeEvent:(id)event
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = self->_observers;
  objc_sync_enter(v5);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v10 + 1) + 8 * v9++) processModeChangeEvent:{eventCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers addObject:observerCopy];
  objc_sync_exit(v4);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers removeObject:observerCopy];
  objc_sync_exit(v4);
}

void __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  v8 = 136315394;
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v2, v3, "%s: error fetching mode change events from biome %@", v4, v5, v6, v7, v8);
}

void __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_2_cold_1(void *a1)
{
  v1 = [a1 error];
  v8 = 136315394;
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v2, v3, "%s: error listening to mode change events: %@", v4, v5, v6, v7, v8);
}

void __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_22_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_13();
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "%s: not notifying observers of mode change event because the biome event had no eventBody: %@", v1, 0x16u);
}

@end