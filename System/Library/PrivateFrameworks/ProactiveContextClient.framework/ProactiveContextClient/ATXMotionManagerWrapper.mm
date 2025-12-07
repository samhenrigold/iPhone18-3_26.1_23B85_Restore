@interface ATXMotionManagerWrapper
+ (BOOL)hasMotionActivity;
+ (id)sharedInstance;
- (ATXMotionManagerWrapper)init;
- (id)_fetchMotionActivities;
- (id)_motionActivityHandler;
- (id)getCurrentActivity;
- (void)startUpdatingMotionType:(int64_t)type forDelegate:(id)delegate;
- (void)stopUpdatingMotionType:(int64_t)type forDelegate:(id)delegate;
- (void)updateCurrentActivity:(id)activity;
@end

@implementation ATXMotionManagerWrapper

- (id)getCurrentActivity
{
  if (+[ATXMotionManagerWrapper hasMotionActivity])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__16;
    v11 = __Block_byref_object_dispose__16;
    v12 = 0;
    currentMotion = self->_currentMotion;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__ATXMotionManagerWrapper_getCurrentActivity__block_invoke;
    v6[3] = &unk_279AB8CE0;
    v6[4] = self;
    v6[5] = &v7;
    [(_PASLock *)currentMotion runWithLockAcquired:v6];
    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = [[ATXMotion alloc] initFromCMMotionActivity:0];
  }

  return v4;
}

+ (BOOL)hasMotionActivity
{
  if (hasMotionActivity__pasOnceToken7 != -1)
  {
    +[ATXMotionManagerWrapper hasMotionActivity];
  }

  return hasMotionActivity__pasExprOnceResult != 0;
}

void __45__ATXMotionManagerWrapper_getCurrentActivity__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 isExpired])
  {
    [*(a1 + 32) updateCurrentActivity:v6];
  }

  v3 = [v6 currentMotion];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_fetchMotionActivities
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__16;
  v23 = __Block_byref_object_dispose__16;
  v24 = 0;
  v3 = dispatch_semaphore_create(0);
  motionActivityManager = self->_motionActivityManager;
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-30.0];
  date = [MEMORY[0x277CBEAA8] date];
  motionActivityQueue = self->_motionActivityQueue;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __49__ATXMotionManagerWrapper__fetchMotionActivities__block_invoke;
  v16 = &unk_279AB8CB8;
  v18 = &v19;
  v8 = v3;
  v17 = v8;
  [(CMMotionActivityManager *)motionActivityManager queryActivityStartingFromDate:v5 toDate:date toQueue:motionActivityQueue withHandler:&v13];

  v9 = [MEMORY[0x277D425A0] waitForSemaphore:v8 timeoutSeconds:{60.0, v13, v14, v15, v16}];
  if (v9 == 1)
  {
    v10 = __atxlog_handle_default(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ATXMotionManagerWrapper *)v10 _fetchMotionActivities];
    }

    v11 = 0;
  }

  else
  {
    v11 = v20[5];
  }

  _Block_object_dispose(&v19, 8);

  return v11;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ATXMotionManagerWrapper sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __41__ATXMotionManagerWrapper_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (ATXMotionManagerWrapper)init
{
  v17.receiver = self;
  v17.super_class = ATXMotionManagerWrapper;
  v2 = [(ATXMotionManagerWrapper *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CC1CD0]);
    motionActivityManager = v2->_motionActivityManager;
    v2->_motionActivityManager = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
    motionActivityQueue = v2->_motionActivityQueue;
    v2->_motionActivityQueue = v5;

    [(NSOperationQueue *)v2->_motionActivityQueue setMaxConcurrentOperationCount:1];
    v7 = objc_alloc(MEMORY[0x277D425F8]);
    v8 = [[ATXCachedMotion alloc] initWithATXMotion:0];
    v9 = [v7 initWithGuardedData:v8];
    currentMotion = v2->_currentMotion;
    v2->_currentMotion = v9;

    v11 = objc_opt_new();
    delegatesMonitoringForMotionType = v2->_delegatesMonitoringForMotionType;
    v2->_delegatesMonitoringForMotionType = v11;

    v13 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__ATXMotionManagerWrapper_init__block_invoke;
    block[3] = &unk_279AB8758;
    v16 = v2;
    dispatch_async(v13, block);
  }

  return v2;
}

void __31__ATXMotionManagerWrapper_init__block_invoke(uint64_t a1)
{
  if (+[ATXMotionManagerWrapper hasMotionActivity])
  {
    v2 = *(a1 + 32);
    v3 = v2[5];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __31__ATXMotionManagerWrapper_init__block_invoke_2;
    v4[3] = &unk_279AB8C90;
    v5 = v2;
    [v3 runWithLockAcquired:v4];
  }
}

void __44__ATXMotionManagerWrapper_hasMotionActivity__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277CC1CD0] isActivityAvailable])
  {
    v1 = [MEMORY[0x277CC1CD0] authorizationStatus] == 3;
  }

  else
  {
    v1 = 0;
  }

  hasMotionActivity__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __49__ATXMotionManagerWrapper__fetchMotionActivities__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)updateCurrentActivity:(id)activity
{
  activityCopy = activity;
  _fetchMotionActivities = [(ATXMotionManagerWrapper *)self _fetchMotionActivities];
  if (_fetchMotionActivities)
  {
    v5 = [ATXMotion summarizeActivityStream:_fetchMotionActivities];
    [activityCopy update:v5];
  }
}

- (id)_motionActivityHandler
{
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__ATXMotionManagerWrapper__motionActivityHandler__block_invoke;
  v8[3] = &unk_279AB8D08;
  objc_copyWeak(&v9, &location);
  v2 = MEMORY[0x2666EC640](v8);
  v6 = MEMORY[0x2666EC640](v2, v3, v4, v5);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __49__ATXMotionManagerWrapper__motionActivityHandler__block_invoke(uint64_t a1, void *a2)
{
  v83 = *MEMORY[0x277D85DE8];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v8 = objc_sync_enter(v7);
    if (v4)
    {
      v9 = v7 + 4;
      if (!v7[4] || (v10 = [v4 walking], v8 = objc_msgSend(*v9, "walking"), v10 != v8))
      {
        v11 = __atxlog_handle_default(v8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v81 = [v4 walking];
          _os_log_impl(&dword_260C9F000, v11, OS_LOG_TYPE_INFO, "ATXMotionManagerWrapper: WALKING state changed to %d", buf, 8u);
        }

        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v12 = [v7[3] objectForKey:&unk_28733C8B0];
        v13 = [v12 countByEnumeratingWithState:&v67 objects:v79 count:16];
        if (v13)
        {
          v14 = *v68;
          do
          {
            v15 = 0;
            do
            {
              if (*v68 != v14)
              {
                objc_enumerationMutation(v12);
              }

              [*(*(&v67 + 1) + 8 * v15++) didUpdateMotionType:0 isActive:{objc_msgSend(v4, "walking")}];
            }

            while (v13 != v15);
            v13 = [v12 countByEnumeratingWithState:&v67 objects:v79 count:16];
          }

          while (v13);
        }
      }

      if (!*v9 || (v16 = [v4 running], v8 = objc_msgSend(*v9, "running"), v16 != v8))
      {
        v17 = __atxlog_handle_default(v8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [v4 running];
          *buf = 67109120;
          v81 = v18;
          _os_log_impl(&dword_260C9F000, v17, OS_LOG_TYPE_INFO, "ATXMotionManagerWrapper: RUNNING state changed to %d", buf, 8u);
        }

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v19 = [v7[3] objectForKey:&unk_28733C8C8];
        v20 = [v19 countByEnumeratingWithState:&v63 objects:v78 count:16];
        if (v20)
        {
          v21 = *v64;
          do
          {
            v22 = 0;
            do
            {
              if (*v64 != v21)
              {
                objc_enumerationMutation(v19);
              }

              [*(*(&v63 + 1) + 8 * v22++) didUpdateMotionType:1 isActive:{objc_msgSend(v4, "running")}];
            }

            while (v20 != v22);
            v20 = [v19 countByEnumeratingWithState:&v63 objects:v78 count:16];
          }

          while (v20);
        }
      }

      if (!*v9 || (v23 = [v4 cycling], v8 = objc_msgSend(*v9, "cycling"), v23 != v8))
      {
        v24 = __atxlog_handle_default(v8);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [v4 cycling];
          *buf = 67109120;
          v81 = v25;
          _os_log_impl(&dword_260C9F000, v24, OS_LOG_TYPE_INFO, "ATXMotionManagerWrapper: CYCLING state changed to %d", buf, 8u);
        }

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v26 = [v7[3] objectForKey:&unk_28733C8E0];
        v27 = [v26 countByEnumeratingWithState:&v59 objects:v77 count:16];
        if (v27)
        {
          v28 = *v60;
          do
          {
            v29 = 0;
            do
            {
              if (*v60 != v28)
              {
                objc_enumerationMutation(v26);
              }

              [*(*(&v59 + 1) + 8 * v29++) didUpdateMotionType:2 isActive:{objc_msgSend(v4, "cycling")}];
            }

            while (v27 != v29);
            v27 = [v26 countByEnumeratingWithState:&v59 objects:v77 count:16];
          }

          while (v27);
        }
      }

      if (!*v9 || (v30 = [v4 automotive], v8 = objc_msgSend(*v9, "automotive"), v30 != v8))
      {
        v31 = __atxlog_handle_default(v8);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [v4 automotive];
          *buf = 67109120;
          v81 = v32;
          _os_log_impl(&dword_260C9F000, v31, OS_LOG_TYPE_DEFAULT, "ATXMotionManagerWrapper: AUTOMOTIVE state changed to %d", buf, 8u);
        }

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v33 = [v7[3] objectForKey:&unk_28733C8F8];
        v34 = [v33 countByEnumeratingWithState:&v55 objects:v76 count:16];
        if (v34)
        {
          v35 = *v56;
          do
          {
            v36 = 0;
            do
            {
              if (*v56 != v35)
              {
                objc_enumerationMutation(v33);
              }

              [*(*(&v55 + 1) + 8 * v36++) didUpdateMotionType:3 isActive:{objc_msgSend(v4, "automotive")}];
            }

            while (v34 != v36);
            v34 = [v33 countByEnumeratingWithState:&v55 objects:v76 count:16];
          }

          while (v34);
        }
      }

      if (!*v9 || (v37 = [v4 unknown], v8 = objc_msgSend(*v9, "unknown"), v37 != v8))
      {
        v38 = __atxlog_handle_default(v8);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = [v4 unknown];
          *buf = 67109120;
          v81 = v39;
          _os_log_impl(&dword_260C9F000, v38, OS_LOG_TYPE_INFO, "ATXMotionManagerWrapper: UNKNOWN state changed to %d", buf, 8u);
        }

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v40 = [v7[3] objectForKey:{&unk_28733C910, 0}];
        v41 = [v40 countByEnumeratingWithState:&v51 objects:v75 count:16];
        if (v41)
        {
          v42 = *v52;
          do
          {
            v43 = 0;
            do
            {
              if (*v52 != v42)
              {
                objc_enumerationMutation(v40);
              }

              [*(*(&v51 + 1) + 8 * v43++) didUpdateMotionType:4 isActive:{objc_msgSend(v4, "unknown")}];
            }

            while (v41 != v43);
            v41 = [v40 countByEnumeratingWithState:&v51 objects:v75 count:16];
          }

          while (v41);
        }
      }

      objc_storeStrong(v7 + 4, a2);
    }

    else
    {
      for (i = 0; i != 5; ++i)
      {
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v45 = v7[3];
        v46 = [MEMORY[0x277CCABB0] numberWithInteger:i];
        v47 = [v45 objectForKey:v46];

        v48 = [v47 countByEnumeratingWithState:&v71 objects:v82 count:16];
        if (v48)
        {
          v49 = *v72;
          do
          {
            v50 = 0;
            do
            {
              if (*v72 != v49)
              {
                objc_enumerationMutation(v47);
              }

              [*(*(&v71 + 1) + 8 * v50++) didUpdateMotionType:i isActive:0];
            }

            while (v48 != v50);
            v48 = [v47 countByEnumeratingWithState:&v71 objects:v82 count:16];
          }

          while (v48);
        }
      }
    }

    objc_sync_exit(v7);
  }
}

- (void)startUpdatingMotionType:(int64_t)type forDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_motionActivityManager)
  {
    v7 = [(NSMutableDictionary *)selfCopy->_delegatesMonitoringForMotionType count];
    delegatesMonitoringForMotionType = selfCopy->_delegatesMonitoringForMotionType;
    if (!v7)
    {
      v19 = [MEMORY[0x277CBEB58] setWithObject:delegateCopy];
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:type];
      [(NSMutableDictionary *)delegatesMonitoringForMotionType setObject:v19 forKey:v20];

      motionActivityManager = selfCopy->_motionActivityManager;
      motionActivityQueue = selfCopy->_motionActivityQueue;
      _motionActivityHandler = [(ATXMotionManagerWrapper *)selfCopy _motionActivityHandler];
      [(CMMotionActivityManager *)motionActivityManager startActivityUpdatesToQueue:motionActivityQueue withHandler:_motionActivityHandler];

      goto LABEL_19;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v10 = [(NSMutableDictionary *)delegatesMonitoringForMotionType objectForKey:v9];

    if (!v10)
    {
      v11 = selfCopy->_delegatesMonitoringForMotionType;
      v12 = objc_opt_new();
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:type];
      [(NSMutableDictionary *)v11 setObject:v12 forKey:v13];
    }

    v14 = selfCopy->_delegatesMonitoringForMotionType;
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v16 = [(NSMutableDictionary *)v14 objectForKey:v15];
    [v16 addObject:delegateCopy];

    mostRecentActivity = selfCopy->_mostRecentActivity;
    if (mostRecentActivity)
    {
      if (type <= 1)
      {
        if (type)
        {
          if (type != 1)
          {
            goto LABEL_19;
          }

          running = [(CMMotionActivity *)mostRecentActivity running];
        }

        else
        {
          running = [(CMMotionActivity *)mostRecentActivity walking];
        }
      }

      else
      {
        switch(type)
        {
          case 2:
            running = [(CMMotionActivity *)mostRecentActivity cycling];
            break;
          case 3:
            running = [(CMMotionActivity *)mostRecentActivity automotive];
            break;
          case 4:
            running = [(CMMotionActivity *)mostRecentActivity unknown];
            break;
          default:
            goto LABEL_19;
        }
      }

      [delegateCopy didUpdateMotionType:type isActive:running];
    }
  }

LABEL_19:
  objc_sync_exit(selfCopy);
}

- (void)stopUpdatingMotionType:(int64_t)type forDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_motionActivityManager)
  {
    delegatesMonitoringForMotionType = selfCopy->_delegatesMonitoringForMotionType;
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v9 = [(NSMutableDictionary *)delegatesMonitoringForMotionType objectForKey:v8];

    if (v9)
    {
      [v9 removeObject:delegateCopy];
      if (![v9 count])
      {
        v10 = selfCopy->_delegatesMonitoringForMotionType;
        v11 = [MEMORY[0x277CCABB0] numberWithInteger:type];
        [(NSMutableDictionary *)v10 removeObjectForKey:v11];

        if (![(NSMutableDictionary *)selfCopy->_delegatesMonitoringForMotionType count])
        {
          [(CMMotionActivityManager *)selfCopy->_motionActivityManager stopActivityUpdates];
        }
      }
    }
  }

  objc_sync_exit(selfCopy);
}

@end