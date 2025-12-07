@interface DEExtensionTracker
+ (BOOL)hasInactiveLoggingSession:(id)session;
+ (BOOL)shouldSetupWithIdentifier:(id)identifier session:(id)session expirationDate:(id)date;
+ (BOOL)shouldTeardownWithIdentifier:(id)identifier session:(id)session;
+ (id)criteria:(id)criteria;
+ (id)currentLoggingExtensions;
+ (id)sharedSerialQueue;
+ (id)userDefaults;
+ (void)_updateExtensionExpirationDateWithIdentifier:(id)identifier expirationDate:(id)date;
+ (void)_updateXPCActivityDate;
+ (void)checkIn;
+ (void)extensionTrackerCleanup;
+ (void)saveCurrentLoggingExtensionsWithDictionary:(id)dictionary;
+ (void)scheduleXPCActivity;
+ (void)updateExpirationDateWithIdentifier:(id)identifier expirationDate:(id)date;
+ (void)updateRetainCountWithIdentifier:(id)identifier session:(id)session offsetBy:(int)by;
@end

@implementation DEExtensionTracker

+ (void)checkIn
{
  objc_initWeak(&location, self);
  sharedSerialQueue = [objc_opt_class() sharedSerialQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __29__DEExtensionTracker_checkIn__block_invoke;
  v3[3] = &unk_278F634E0;
  objc_copyWeak(&v4, &location);
  dispatch_async(sharedSerialQueue, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __29__DEExtensionTracker_checkIn__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = Log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[DEExtensionTracker checkIn]_block_invoke";
    _os_log_impl(&dword_248AB3000, v2, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: %s", &v5, 0xCu);
  }

  v3 = +[DEExtensionManager sharedInstance];
  [v3 loadExtensions];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [objc_opt_class() _updateXPCActivityDate];
}

+ (BOOL)shouldSetupWithIdentifier:(id)identifier session:(id)session expirationDate:(id)date
{
  identifierCopy = identifier;
  sessionCopy = session;
  dateCopy = date;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  objc_initWeak(&location, self);
  sharedSerialQueue = [objc_opt_class() sharedSerialQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__DEExtensionTracker_shouldSetupWithIdentifier_session_expirationDate___block_invoke;
  v16[3] = &unk_278F63508;
  v17 = identifierCopy;
  v18 = sessionCopy;
  v20 = &v23;
  v12 = sessionCopy;
  v13 = identifierCopy;
  objc_copyWeak(&v21, &location);
  v19 = dateCopy;
  v14 = dateCopy;
  dispatch_sync(sharedSerialQueue, v16);

  LOBYTE(sharedSerialQueue) = *(v24 + 24);
  objc_destroyWeak(&v21);

  objc_destroyWeak(&location);
  _Block_object_dispose(&v23, 8);
  return sharedSerialQueue;
}

void __71__DEExtensionTracker_shouldSetupWithIdentifier_session_expirationDate___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = Log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v11 = 136315650;
    v12 = "+[DEExtensionTracker shouldSetupWithIdentifier:session:expirationDate:]_block_invoke";
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_248AB3000, v2, OS_LOG_TYPE_INFO, "%s %@, %@", &v11, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  *(*(*(a1 + 56) + 8) + 24) = [objc_opt_class() hasInactiveLoggingSession:*(a1 + 32)];

  v6 = objc_loadWeakRetained((a1 + 64));
  [objc_opt_class() increaseRetainCountWithIdentifier:*(a1 + 32) session:*(a1 + 40)];

  v7 = objc_loadWeakRetained((a1 + 64));
  [objc_opt_class() updateExpirationDateWithIdentifier:*(a1 + 32) expirationDate:*(a1 + 48)];

  v9 = Log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(*(*(a1 + 56) + 8) + 24);
    v11 = 67109120;
    LODWORD(v12) = v10;
    _os_log_impl(&dword_248AB3000, v9, OS_LOG_TYPE_INFO, "isFirstTimeRunningExtension: %i", &v11, 8u);
  }
}

+ (BOOL)shouldTeardownWithIdentifier:(id)identifier session:(id)session
{
  identifierCopy = identifier;
  sessionCopy = session;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  objc_initWeak(&location, self);
  sharedSerialQueue = [objc_opt_class() sharedSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__DEExtensionTracker_shouldTeardownWithIdentifier_session___block_invoke;
  block[3] = &unk_278F63530;
  v13 = identifierCopy;
  v14 = sessionCopy;
  v9 = sessionCopy;
  v10 = identifierCopy;
  objc_copyWeak(&v16, &location);
  v15 = &v18;
  dispatch_sync(sharedSerialQueue, block);

  LOBYTE(sharedSerialQueue) = *(v19 + 24);
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);
  _Block_object_dispose(&v18, 8);
  return sharedSerialQueue;
}

void __59__DEExtensionTracker_shouldTeardownWithIdentifier_session___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = Log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v16 = 136315650;
    v17 = "+[DEExtensionTracker shouldTeardownWithIdentifier:session:]_block_invoke";
    v18 = 2112;
    v19 = v3;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_248AB3000, v2, OS_LOG_TYPE_INFO, "%s %@, %@", &v16, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = [objc_opt_class() hasInactiveLoggingSession:*(a1 + 32)];

  v7 = objc_loadWeakRetained((a1 + 56));
  [v7 decreaseRetainCountWithIdentifier:*(a1 + 32) session:*(a1 + 40)];

  if (v6)
  {
    v10 = *(a1 + 48);
    v9 = a1 + 48;
    *(*(v10 + 8) + 24) = 0;
  }

  else
  {
    v11 = objc_loadWeakRetained((a1 + 56));
    v12 = [objc_opt_class() hasInactiveLoggingSession:*(a1 + 32)];
    v13 = *(a1 + 48);
    v9 = a1 + 48;
    *(*(v13 + 8) + 24) = v12;
  }

  v14 = Log(v8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(*(*v9 + 8) + 24);
    v16 = 67109120;
    LODWORD(v17) = v15;
    _os_log_impl(&dword_248AB3000, v14, OS_LOG_TYPE_INFO, "shouldTeardownExtension: %i", &v16, 8u);
  }
}

+ (id)currentLoggingExtensions
{
  userDefaults = [objc_opt_class() userDefaults];
  v3 = [userDefaults dictionaryForKey:@"com.apple.DiagnosticExtensions.extensionTracker"];

  return v3;
}

+ (id)userDefaults
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DiagnosticExtensions.extensionTracker"];

  return v2;
}

+ (void)saveCurrentLoggingExtensionsWithDictionary:(id)dictionary
{
  v9 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  userDefaults = [objc_opt_class() userDefaults];
  [userDefaults setObject:dictionaryCopy forKey:@"com.apple.DiagnosticExtensions.extensionTracker"];

  v5 = Log([userDefaults synchronize]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentLoggingExtensions = [objc_opt_class() currentLoggingExtensions];
    v7 = 138412290;
    v8 = currentLoggingExtensions;
    _os_log_impl(&dword_248AB3000, v5, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: currentLoggingExtensions: %@", &v7, 0xCu);
  }
}

+ (BOOL)hasInactiveLoggingSession:(id)session
{
  sessionCopy = session;
  currentLoggingExtensions = [objc_opt_class() currentLoggingExtensions];
  v5 = [currentLoggingExtensions objectForKeyedSubscript:sessionCopy];
  v6 = [v5 objectForKeyedSubscript:@"Sessions"];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__DEExtensionTracker_hasInactiveLoggingSession___block_invoke;
  v10[3] = &unk_278F63558;
  v10[4] = &v11;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];
  v7 = [currentLoggingExtensions objectForKeyedSubscript:sessionCopy];
  if (v7)
  {
    v8 = *(v12 + 6) == 0;
  }

  else
  {
    v8 = 1;
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

void *__48__DEExtensionTracker_hasInactiveLoggingSession___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 intValue];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

+ (id)sharedSerialQueue
{
  if (sharedSerialQueue_onceToken != -1)
  {
    +[DEExtensionTracker sharedSerialQueue];
  }

  v3 = sharedSerialQueue_sharedDispatchQueue;

  return v3;
}

uint64_t __39__DEExtensionTracker_sharedSerialQueue__block_invoke()
{
  sharedSerialQueue_sharedDispatchQueue = dispatch_queue_create([@"com.apple.DiagnosticExtensions.extensionTracker" UTF8String], 0);

  return MEMORY[0x2821F96F8]();
}

+ (void)updateExpirationDateWithIdentifier:(id)identifier expirationDate:(id)date
{
  [self _updateExtensionExpirationDateWithIdentifier:identifier expirationDate:date];

  [self _updateXPCActivityDate];
}

+ (void)_updateExtensionExpirationDateWithIdentifier:(id)identifier expirationDate:(id)date
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dateCopy = date;
  currentLoggingExtensions = [objc_opt_class() currentLoggingExtensions];
  v8 = currentLoggingExtensions;
  v9 = MEMORY[0x277CBEC10];
  if (!currentLoggingExtensions)
  {
    currentLoggingExtensions = MEMORY[0x277CBEC10];
  }

  v10 = [currentLoggingExtensions mutableCopy];

  v11 = [v10 objectForKeyedSubscript:identifierCopy];
  v12 = v11;
  if (!v11)
  {
    v11 = v9;
  }

  v13 = [v11 mutableCopy];

  v14 = [v13 objectForKeyedSubscript:@"ExpirationDate"];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = dateCopy;
  }

  v17 = v16;

  v18 = [v17 laterDate:dateCopy];

  [v13 setObject:v18 forKeyedSubscript:@"ExpirationDate"];
  v19 = Log([v10 setObject:v13 forKeyedSubscript:identifierCopy]);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = identifierCopy;
    v24 = 2112;
    v25 = v18;
    _os_log_impl(&dword_248AB3000, v19, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: Updating %@ expiration date to %@", &v22, 0x16u);
  }

  v20 = objc_opt_class();
  v21 = [v10 copy];
  [v20 saveCurrentLoggingExtensionsWithDictionary:v21];
}

+ (void)_updateXPCActivityDate
{
  v37 = *MEMORY[0x277D85DE8];
  currentLoggingExtensions = [objc_opt_class() currentLoggingExtensions];
  v4 = currentLoggingExtensions;
  if (!currentLoggingExtensions)
  {
    currentLoggingExtensions = MEMORY[0x277CBEC10];
  }

  v5 = [currentLoggingExtensions mutableCopy];

  allKeys = [v5 allKeys];
  if ([allKeys count] == 1)
  {
    v7 = [v5 objectForKeyedSubscript:@"XPCActivity"];

    if (v7)
    {
      [v5 setObject:0 forKeyedSubscript:@"XPCActivity"];
      v8 = objc_opt_class();
      v9 = [v5 copy];
      [v8 saveCurrentLoggingExtensionsWithDictionary:v9];

      goto LABEL_16;
    }
  }

  else
  {
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __44__DEExtensionTracker__updateXPCActivityDate__block_invoke;
  v24[3] = &unk_278F635A0;
  v24[4] = &v25;
  [v5 enumerateKeysAndObjectsUsingBlock:v24];
  date = [MEMORY[0x277CBEAA8] date];
  if ([v26[5] compare:date] == -1)
  {
    v11 = Log(-1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v26[5];
      *buf = 138412546;
      v34 = v12;
      v35 = 2112;
      v36 = date;
      _os_log_impl(&dword_248AB3000, v11, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: extensionEarliestDate is aged out (%@), assign to %@ instead", buf, 0x16u);
    }

    objc_storeStrong(v26 + 5, date);
  }

  v13 = v26[5];
  [objc_opt_class() xpcActivityTimeInterval];
  v14 = [v13 dateByAddingTimeInterval:?];
  v15 = v26[5];
  v31[0] = @"EarliestExpirationDate";
  v31[1] = @"XPCActivityScheduledDate";
  v32[0] = v15;
  v32[1] = v14;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  [v5 setObject:v16 forKeyedSubscript:@"XPCActivity"];

  v18 = Log(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = v26[5];
    *buf = 138412546;
    v34 = @"XPCActivity";
    v35 = 2112;
    v36 = v19;
    _os_log_impl(&dword_248AB3000, v18, OS_LOG_TYPE_INFO, "DEExtensionTracker: Updating %@ to %@", buf, 0x16u);
  }

  v21 = Log(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v34 = @"XPCActivityScheduledDate";
    v35 = 2112;
    v36 = v14;
    _os_log_impl(&dword_248AB3000, v21, OS_LOG_TYPE_INFO, "DEExtensionTracker: Updating %@ to %@", buf, 0x16u);
  }

  v22 = objc_opt_class();
  v23 = [v5 copy];
  [v22 saveCurrentLoggingExtensionsWithDictionary:v23];

  [self scheduleXPCActivity];
  _Block_object_dispose(&v25, 8);

LABEL_16:
}

uint64_t __44__DEExtensionTracker__updateXPCActivityDate__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"ExpirationDate"];
  if (v4)
  {
    obj = v4;
    if ([v4 compare:*(*(*(a1 + 32) + 8) + 40)] == -1)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
    }
  }

  return MEMORY[0x2821F96F8]();
}

+ (id)criteria:(id)criteria
{
  criteriaCopy = criteria;
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], 0);
  [criteriaCopy timeIntervalSinceNow];
  v6 = v5;

  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86250], v6);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86270], 30);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);

  return v4;
}

+ (void)scheduleXPCActivity
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = Log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "+[DEExtensionTracker scheduleXPCActivity]";
    _os_log_impl(&dword_248AB3000, v3, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: %s", buf, 0xCu);
  }

  currentLoggingExtensions = [objc_opt_class() currentLoggingExtensions];
  v5 = currentLoggingExtensions;
  if (!currentLoggingExtensions)
  {
    currentLoggingExtensions = MEMORY[0x277CBEC10];
  }

  v6 = [currentLoggingExtensions mutableCopy];

  v7 = [v6 objectForKeyedSubscript:@"XPCActivity"];
  v8 = [v7 objectForKeyedSubscript:@"XPCActivityScheduledDate"];

  v10 = Log(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v11)
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&dword_248AB3000, v10, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: scheduleXPCActivityToDate %@", buf, 0xCu);
    }

    uTF8String = [@"com.apple.DiagnosticExtensions.extensionTracker" UTF8String];
    v13 = *MEMORY[0x277D86238];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __41__DEExtensionTracker_scheduleXPCActivity__block_invoke;
    v14[3] = &unk_278F635C8;
    selfCopy = self;
    v15 = v8;
    xpc_activity_register(uTF8String, v13, v14);
    v10 = v15;
  }

  else if (v11)
  {
    *buf = 0;
    _os_log_impl(&dword_248AB3000, v10, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: tracker dict is empty. There's nothing to schedule.", buf, 2u);
  }
}

void __41__DEExtensionTracker_scheduleXPCActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v7 = Log(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_248AB3000, v7, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: XPC_ACTIVITY_STATE_RUN", v8, 2u);
    }

    [objc_opt_class() extensionTrackerCleanup];
  }

  else if (!state)
  {
    v5 = Log(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AB3000, v5, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: XPC_ACTIVITY_STATE_CHECK_IN", buf, 2u);
    }

    v6 = [*(a1 + 40) criteria:*(a1 + 32)];
    xpc_activity_set_criteria(v3, v6);
  }
}

+ (void)extensionTrackerCleanup
{
  objc_initWeak(&location, self);
  sharedSerialQueue = [objc_opt_class() sharedSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__DEExtensionTracker_extensionTrackerCleanup__block_invoke;
  block[3] = &unk_278F63618;
  objc_copyWeak(v5, &location);
  v5[1] = self;
  dispatch_async(sharedSerialQueue, block);

  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __45__DEExtensionTracker_extensionTrackerCleanup__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = Log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[DEExtensionTracker extensionTrackerCleanup]_block_invoke";
    _os_log_impl(&dword_248AB3000, v2, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: %s", &buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [objc_opt_class() currentLoggingExtensions];

  if ([v4 count])
  {
    v5 = [v4 objectForKeyedSubscript:@"XPCActivity"];
    v6 = [v5 objectForKeyedSubscript:@"XPCActivityScheduledDate"];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy_;
    v19 = __Block_byref_object_dispose_;
    v20 = [v4 mutableCopy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __45__DEExtensionTracker_extensionTrackerCleanup__block_invoke_32;
    v12[3] = &unk_278F635F0;
    v7 = v6;
    v13 = v7;
    p_buf = &buf;
    v15 = *(a1 + 40);
    [v4 enumerateKeysAndObjectsUsingBlock:v12];
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = objc_opt_class();
    v10 = [*(*(&buf + 1) + 40) copy];
    [v9 saveCurrentLoggingExtensionsWithDictionary:v10];

    v11 = objc_loadWeakRetained((a1 + 32));
    [objc_opt_class() _updateXPCActivityDate];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v7 = Log(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_248AB3000, v7, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: Exit early. Nothing to clean up.", &buf, 2u);
    }
  }
}

void __45__DEExtensionTracker_extensionTrackerCleanup__block_invoke_32(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"ExpirationDate"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 compare:a1[4]];
    v10 = Log(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9 == 1)
    {
      if (v11)
      {
        v12 = a1[4];
        *buf = 138412802;
        *&buf[4] = v5;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        *&buf[22] = 2112;
        v29 = v12;
        _os_log_impl(&dword_248AB3000, v10, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: %@ (%@) is NOT due (%@). Start cleaning up '0' retain count.", buf, 0x20u);
      }

      v13 = [v6 objectForKeyedSubscript:@"Sessions"];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v29 = __Block_byref_object_copy_;
      v30 = __Block_byref_object_dispose_;
      v31 = [v13 mutableCopy];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __45__DEExtensionTracker_extensionTrackerCleanup__block_invoke_33;
      v27[3] = &unk_278F63558;
      v27[4] = buf;
      [v13 enumerateKeysAndObjectsUsingBlock:v27];
      v14 = [v6 mutableCopy];
      v15 = [*(*&buf[8] + 40) copy];
      [v14 setObject:v15 forKeyedSubscript:@"Sessions"];

      v16 = [v14 copy];
      [*(*(a1[5] + 8) + 40) setObject:v16 forKeyedSubscript:v5];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (v11)
      {
        v17 = a1[4];
        *buf = 138412802;
        *&buf[4] = v5;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        *&buf[22] = 2112;
        v29 = v17;
        _os_log_impl(&dword_248AB3000, v10, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: %@ (%@) is due (%@). Calling checkAndTeardownWithHandler:", buf, 0x20u);
      }

      v18 = +[DEExtensionManager sharedInstance];
      v13 = [v18 extensionForIdentifier:v5];

      v19 = [v13 checkAndTeardown];
      v20 = v19;
      v21 = Log(v19);
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v20)
      {
        if (v22)
        {
          *buf = 138412290;
          *&buf[4] = v5;
          _os_log_impl(&dword_248AB3000, v21, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: %@ is done cleaning up.", buf, 0xCu);
        }

        [*(*(a1[5] + 8) + 40) setObject:0 forKeyedSubscript:v5];
      }

      else
      {
        if (v22)
        {
          *buf = 0;
          _os_log_impl(&dword_248AB3000, v21, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: extension failed to turn off. Reschedule to (now + 2 hours).", buf, 2u);
        }

        v23 = [MEMORY[0x277CBEAA8] date];
        [objc_opt_class() xpcActivityTimeInterval];
        v24 = [v23 dateByAddingTimeInterval:?];

        v25 = [v6 mutableCopy];
        [v25 setObject:v24 forKeyedSubscript:@"ExpirationDate"];
        v26 = [v25 copy];
        [*(*(a1[5] + 8) + 40) setObject:v26 forKeyedSubscript:v5];
      }
    }
  }
}

void __45__DEExtensionTracker_extensionTrackerCleanup__block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (![a3 intValue])
  {
    v6 = Log([*(*(*(a1 + 32) + 8) + 40) setObject:0 forKeyedSubscript:v5]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_248AB3000, v6, OS_LOG_TYPE_INFO, "DEExtensionTracker: %@ retain count is 0. Removing it.", &v7, 0xCu);
    }
  }
}

+ (void)updateRetainCountWithIdentifier:(id)identifier session:(id)session offsetBy:(int)by
{
  sessionCopy = session;
  identifierCopy = identifier;
  currentLoggingExtensions = [objc_opt_class() currentLoggingExtensions];
  v10 = currentLoggingExtensions;
  v11 = MEMORY[0x277CBEC10];
  if (!currentLoggingExtensions)
  {
    currentLoggingExtensions = MEMORY[0x277CBEC10];
  }

  v26 = [currentLoggingExtensions mutableCopy];

  v12 = [v26 objectForKeyedSubscript:identifierCopy];
  v13 = v12;
  if (!v12)
  {
    v12 = v11;
  }

  v14 = [v12 mutableCopy];

  v15 = [v14 objectForKeyedSubscript:@"Sessions"];
  v16 = v15;
  if (!v15)
  {
    v15 = v11;
  }

  v17 = [v15 mutableCopy];

  v18 = [v17 objectForKeyedSubscript:sessionCopy];
  v19 = v18;
  v20 = &unk_285B70FF8;
  if (v18)
  {
    v20 = v18;
  }

  v21 = v20;

  integerValue = [v21 integerValue];
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:(integerValue + by) & ~((integerValue + by) >> 63)];
  [v17 setObject:v23 forKeyedSubscript:sessionCopy];

  [v14 setObject:v17 forKeyedSubscript:@"Sessions"];
  [v26 setObject:v14 forKeyedSubscript:identifierCopy];

  v24 = objc_opt_class();
  v25 = [v26 copy];
  [v24 saveCurrentLoggingExtensionsWithDictionary:v25];
}

@end