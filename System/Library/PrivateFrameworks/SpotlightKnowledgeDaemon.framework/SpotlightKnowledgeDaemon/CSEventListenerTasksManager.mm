@interface CSEventListenerTasksManager
+ (void)initialize;
- (BOOL)alwaysAllowed:(id)allowed;
- (BOOL)taskAllowedForName:(id)name eventType:(int)type indexType:(int)indexType;
- (void)endJobForDelegate:(id)delegate;
- (void)endTaskForIndexType:(int)type delegate:(id)delegate;
- (void)eventListenerManagerSetupScheduler;
- (void)launchIntensiveTasks;
- (void)launchQueryUpdatesTasks;
- (void)registerEventListenerDelegates:(id)delegates;
- (void)setTurboMode:(BOOL)mode;
- (void)startTaskForIndexType:(int)type delegate:(id)delegate;
@end

@implementation CSEventListenerTasksManager

+ (void)initialize
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = indexPath();
  v4 = [v3 stringByAppendingPathComponent:@".turbo"];

  memset(&v8, 0, sizeof(v8));
  sTurboMode = stat([v4 fileSystemRepresentation], &v8) == 0;
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v5 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v10 = sTurboMode;
      _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_INFO, "**** sTurboMode = %d", buf, 8u);
    }
  }

  if (initialize_onceToken != -1)
  {
    +[CSEventListenerTasksManager initialize];
  }

  if (objc_opt_class() == self)
  {
    v6 = objc_opt_new();
    v7 = gCSEventListenerTasksManager;
    gCSEventListenerTasksManager = v6;
  }
}

void __41__CSEventListenerTasksManager_initialize__block_invoke()
{
  for (i = 0; i != 10; ++i)
  {
    if (i <= 7)
    {
      v1 = gNames[i];
      gNames[i] = off_27893D320[i];
    }

    atomic_store((i & 0xE) == 4, &sAllowed[i]);
  }
}

- (void)setTurboMode:(BOOL)mode
{
  modeCopy = mode;
  v38 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v5 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_INFO, "### Toggling Turbo mode", buf, 2u);
    }
  }

  v6 = indexPath();
  v7 = [v6 stringByAppendingPathComponent:@".turbo"];

  if (modeCopy)
  {
    v34 = 0;
    [&stru_2846CE8D8 writeToFile:v7 atomically:1 encoding:4 error:&v34];
    v8 = v34;
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v33 = 0;
    [defaultManager removeItemAtPath:v7 error:&v33];
    v8 = v33;

    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v10 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CSEventListenerTasksManager *)v8 setTurboMode:v10];
    }
  }

LABEL_13:
  if (sTurboMode != modeCopy)
  {
    sTurboMode = modeCopy;
    if ((modeCopy & 1) == 0)
    {
      v19 = 0;
      do
      {
        if (SKGLogGetCurrentLoggingLevel() >= 5)
        {
          v20 = SKGLogUpdaterInit();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            v36 = v19;
            _os_log_impl(&dword_231B25000, v20, OS_LOG_TYPE_INFO, "### changing throttle state for turbo events %d", buf, 8u);
          }
        }

        ThrottlingChanged(v19, 0);
        v19 = (v19 + 1);
      }

      while (v19 != 10);
      v21 = +[CSEventListenerTasksManager sharedInstance];
      [(NSDictionary *)v21 eventListenerManagerSetupScheduler];
      goto LABEL_45;
    }

    mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
    enableEmbeddings = [mEMORY[0x277D657A0] enableEmbeddings];

    if (enableEmbeddings)
    {
      if (getPriorityStatus_token != -1)
      {
        [CSEventListenerTasksManager setTurboMode:];
      }

      completePriorityTask(getPriorityStatus_sPriorityStatus, 1);
      if (getEmbeddingsStatus_token != -1)
      {
        [CSEventListenerTasksManager setTurboMode:];
      }

      completeEmbeddingsTask(getEmbeddingsStatus_sEmbeddingsStatus, v13);
    }

    mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
    enableKeyphrases = [mEMORY[0x277D657A0]2 enableKeyphrases];

    if (enableKeyphrases)
    {
      if (getKeyphrasesStatus_token != -1)
      {
        [CSEventListenerTasksManager setTurboMode:];
      }

      completeKeyphrasesTask(getKeyphrasesStatus_status, v16);
    }

    mEMORY[0x277D657A0]3 = [MEMORY[0x277D657A0] sharedContext];
    if ([mEMORY[0x277D657A0]3 enableSuggestedEvents])
    {
    }

    else
    {
      mEMORY[0x277D657A0]4 = [MEMORY[0x277D657A0] sharedContext];
      enableDocumentUnderstanding = [mEMORY[0x277D657A0]4 enableDocumentUnderstanding];

      if (!enableDocumentUnderstanding)
      {
LABEL_38:
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v21 = self->_tasks;
        v24 = [(NSDictionary *)v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v30;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v30 != v26)
              {
                objc_enumerationMutation(v21);
              }

              v28 = [(NSDictionary *)self->_tasks objectForKeyedSubscript:*(*(&v29 + 1) + 8 * i)];
              [v28 complete];
            }

            v25 = [(NSDictionary *)v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v25);
        }

LABEL_45:

        goto LABEL_46;
      }
    }

    if (getPreExtractionStatus_token != -1)
    {
      [CSEventListenerTasksManager setTurboMode:];
    }

    completePreExtractionTask(getPreExtractionStatus_status, v18);
    goto LABEL_38;
  }

LABEL_46:
}

- (void)registerEventListenerDelegates:(id)delegates
{
  v32 = *MEMORY[0x277D85DE8];
  delegatesCopy = delegates;
  v5 = indexPath();
  v6 = [v5 stringByAppendingPathComponent:@".turbo"];

  memset(&v28, 0, sizeof(v28));
  sTurboMode = stat([v6 fileSystemRepresentation], &v28) == 0;
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v7 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v30) = sTurboMode;
      _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_INFO, "**** sTurboMode = %d", buf, 8u);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([delegatesCopy count])
  {
    v21 = v6;
    selfCopy = self;
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = delegatesCopy;
    v10 = delegatesCopy;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v31 count:16];
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = v11;
    v13 = *v25;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        if ([v15 conformsToProtocol:&unk_2846E9BE8])
        {
          [(NSArray *)v9 addObject:v15];
          config = [v15 config];
          if (config)
          {
            v17 = [[CSEventListenerTask alloc] initWithConfig:config];
            taskName = [v15 taskName];
            [(NSDictionary *)v8 setObject:v17 forKey:taskName];
          }
        }

        else
        {
          if (SKGLogGetCurrentLoggingLevel() < 2)
          {
            continue;
          }

          config = SKGLogInit();
          if (os_log_type_enabled(config, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v30 = v15;
            _os_log_error_impl(&dword_231B25000, config, OS_LOG_TYPE_ERROR, "### %@ does not conform to CSEventListenerDelegate protocol", buf, 0xCu);
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v31 count:16];
      if (!v12)
      {
LABEL_20:

        self = selfCopy;
        delegates = selfCopy->_delegates;
        selfCopy->_delegates = v9;

        delegatesCopy = v23;
        v6 = v21;
        break;
      }
    }
  }

  tasks = self->_tasks;
  self->_tasks = v8;

  [(CSEventListenerTasksManager *)self eventListenerManagerSetupScheduler];
}

- (void)startTaskForIndexType:(int)type delegate:(id)delegate
{
  delegateCopy = delegate;
  tasks = self->_tasks;
  taskName = [delegateCopy taskName];
  v8 = [(NSDictionary *)tasks objectForKeyedSubscript:taskName];

  if (v8)
  {
    [v8 enter];
  }

  else
  {
    eventType = [delegateCopy eventType];
    if (eventType < 0xA)
    {
      if ((eventType & 0xE) != 4)
      {
        switch(eventType)
        {
          case 3:
            v11 = getKeyphrasesWorkGroup(eventType);
            break;
          case 2:
            v11 = getEmbeddingsWorkGroup(eventType);
            break;
          case 1:
            v11 = getPriorityWorkGroup(eventType);
            break;
          default:
            if ((eventType & 0xE) != 6)
            {
              goto LABEL_3;
            }

            v11 = getPreExtractionWorkGroup(eventType);
            break;
        }

        v12 = v11;
        if (v11)
        {
          dispatch_group_enter(v11);
        }
      }
    }

    else if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v10 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CSEventListenerTasksManager startTaskForIndexType:delegate:];
      }
    }
  }

LABEL_3:
}

- (void)endTaskForIndexType:(int)type delegate:(id)delegate
{
  delegateCopy = delegate;
  tasks = self->_tasks;
  taskName = [delegateCopy taskName];
  v8 = [(NSDictionary *)tasks objectForKeyedSubscript:taskName];

  if (v8)
  {
    [v8 leave];
  }

  else
  {
    eventType = [delegateCopy eventType];
    if (eventType < 0xA)
    {
      if ((eventType & 0xE) != 4)
      {
        switch(eventType)
        {
          case 3:
            v11 = getKeyphrasesWorkGroup(eventType);
            break;
          case 2:
            v11 = getEmbeddingsWorkGroup(eventType);
            break;
          case 1:
            v11 = getPriorityWorkGroup(eventType);
            break;
          default:
            if ((eventType & 0xE) != 6)
            {
              goto LABEL_3;
            }

            v11 = getPreExtractionWorkGroup(eventType);
            break;
        }

        v12 = v11;
        if (v11)
        {
          dispatch_group_leave(v11);
        }
      }
    }

    else if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v10 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CSEventListenerTasksManager startTaskForIndexType:delegate:];
      }
    }
  }

LABEL_3:
}

- (void)endJobForDelegate:(id)delegate
{
  delegateCopy = delegate;
  eventType = [delegateCopy eventType];
  if ((eventType & 0xFFFFFFFE) == 4)
  {
    goto LABEL_10;
  }

  v6 = eventType;
  if (sTurboMode != 1)
  {
    tasks = self->_tasks;
    taskName = [delegateCopy taskName];
    v10 = [(NSDictionary *)tasks objectForKeyedSubscript:taskName];

    if (v10)
    {
      [v10 end];
LABEL_9:

      goto LABEL_10;
    }

    v11 = gTaskTypes[v6];
    if (v11 > 3)
    {
      if (v11 == 4)
      {
        if (getKeyphrasesStatus_token != -1)
        {
          [CSEventListenerTasksManager endJobForDelegate:];
        }

        v12 = getKeyphrasesStatus_status;
        goto LABEL_32;
      }

      if (v11 == 5)
      {
        if (getPreExtractionStatus_token != -1)
        {
          [CSEventListenerTasksManager endJobForDelegate:];
        }

        v12 = getPreExtractionStatus_status;
        goto LABEL_32;
      }
    }

    else
    {
      if (v11 == 2)
      {
        if (getPriorityStatus_token != -1)
        {
          [CSEventListenerTasksManager endJobForDelegate:];
        }

        v12 = getPriorityStatus_sPriorityStatus;
        goto LABEL_32;
      }

      if (v11 == 3)
      {
        if (getEmbeddingsStatus_token != -1)
        {
          EmbeddingsThrottlingSwitch_cold_1();
        }

        v12 = getEmbeddingsStatus_sEmbeddingsStatus;
LABEL_32:
        os_unfair_lock_lock(v12 + 2);
        if (atomic_fetch_add(v12 + 1, 0xFFFFFFFF) == 1)
        {
          v14 = *(v12 + 2);
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __49__CSEventListenerTasksManager_endJobForDelegate___block_invoke_190;
          v15[3] = &__block_descriptor_44_e5_v8__0l;
          v16 = v6;
          v15[4] = v12;
          dispatch_async(v14, v15);
          os_unfair_lock_unlock(v12 + 2);
          [delegateCopy didCompleteJournal];
        }

        else
        {
          os_unfair_lock_unlock(v12 + 2);
        }

        goto LABEL_9;
      }
    }

    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v13 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(CSEventListenerTasksManager *)v6 endJobForDelegate:v13];
      }
    }

    goto LABEL_9;
  }

  if (endJobForDelegate__turboQueueOnceToken != -1)
  {
    [CSEventListenerTasksManager endJobForDelegate:];
  }

  if (!dispatch_group_wait(endJobForDelegate__turboGroup[v6], 0))
  {
    v7 = endJobForDelegate__turboGroup[v6];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__CSEventListenerTasksManager_endJobForDelegate___block_invoke_2;
    block[3] = &__block_descriptor_36_e5_v8__0l;
    v18 = v6;
    dispatch_group_async(v7, endJobForDelegate__turboQueue, block);
  }

LABEL_10:
}

void __49__CSEventListenerTasksManager_endJobForDelegate___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("turbo_queue", v0);
  v2 = endJobForDelegate__turboQueue;
  endJobForDelegate__turboQueue = v1;

  for (i = 0; i != 10; ++i)
  {
    v4 = dispatch_group_create();
    v5 = endJobForDelegate__turboGroup[i];
    endJobForDelegate__turboGroup[i] = v4;
  }
}

void __49__CSEventListenerTasksManager_endJobForDelegate___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v3 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v13 = 67109120;
      v14 = v4;
      _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_DEFAULT, "Running Turbo Cleanup Locked for %d", &v13, 8u);
    }
  }

  queryForCleanupWithDeviceUnlocked(0, *(a1 + 32), &__block_literal_global_155, &__block_literal_global_158, &__block_literal_global_161);
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v5 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v13 = 67109120;
      v14 = v6;
      _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_DEFAULT, "Running Turbo Cleanup Unlocked for %d", &v13, 8u);
    }
  }

  queryForCleanupWithDeviceUnlocked(1, *(a1 + 32), &__block_literal_global_164, &__block_literal_global_167, &__block_literal_global_170);
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v7 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v13 = 67109120;
      v14 = v8;
      _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_DEFAULT, "Running Turbo Updates Locked for %d", &v13, 8u);
    }
  }

  queryForUpdatesWithDeviceUnlocked(0, &__block_literal_global_173, &__block_literal_global_176, &__block_literal_global_179);
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v9 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v13 = 67109120;
      v14 = v10;
      _os_log_impl(&dword_231B25000, v9, OS_LOG_TYPE_DEFAULT, "Running Turbo Updates Unlocked for %d", &v13, 8u);
    }
  }

  queryForUpdatesWithDeviceUnlocked(1, &__block_literal_global_182, &__block_literal_global_185, &__block_literal_global_188);
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v11 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = 67109120;
      v14 = v12;
      _os_log_impl(&dword_231B25000, v11, OS_LOG_TYPE_DEFAULT, "Running Turbo Post Task Work Done for %d", &v13, 8u);
    }
  }
}

void __49__CSEventListenerTasksManager_endJobForDelegate___block_invoke_190(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  switch(v2)
  {
    case 3:
      completeKeyphrasesTask(*(a1 + 32), a2);
      break;
    case 2:
      completeEmbeddingsTask(*(a1 + 32), a2);
      break;
    case 1:
      completePriorityTask(*(a1 + 32), 0);
      break;
    default:
      if ((v2 & 0xFFFFFFFE) == 6)
      {
        completePreExtractionTask(*(a1 + 32), a2);
      }

      break;
  }
}

- (BOOL)taskAllowedForName:(id)name eventType:(int)type indexType:(int)indexType
{
  if (sTurboMode)
  {
    return 1;
  }

  v7 = [(NSDictionary *)self->_tasks objectForKeyedSubscript:name, *&type, *&indexType];
  v8 = v7;
  if (v7)
  {
    allowed = [v7 allowed];
  }

  else if (type > 9)
  {
    allowed = 0;
  }

  else
  {
    v9 = atomic_load(&sAllowed[type]);
    allowed = v9 & 1;
  }

  return allowed;
}

- (void)eventListenerManagerSetupScheduler
{
  v47 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = self->_delegates;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_41;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = *v36;
  do
  {
    v9 = 0;
    do
    {
      if (*v36 != v8)
      {
        objc_enumerationMutation(v3);
      }

      eventType = [*(*(&v35 + 1) + 8 * v9) eventType];
      if (eventType <= 2)
      {
        if (eventType == 1)
        {
          if (getPriorityStatus_token != -1)
          {
            [CSEventListenerTasksManager setTurboMode:];
          }

          if (SKGLogGetCurrentLoggingLevel() >= 5)
          {
            v19 = SKGLogUpdaterInit();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_231B25000, v19, OS_LOG_TYPE_INFO, "### setting up priority task handler", buf, 2u);
            }
          }

          mEMORY[0x277CF0810] = [MEMORY[0x277CF0810] sharedScheduler];
          *v40 = MEMORY[0x277D85DD0];
          v41 = 3221225472;
          v42 = __setupPriorityTaskHandler_block_invoke;
          v43 = &__block_descriptor_40_e34_v16__0__BGNonRepeatingSystemTask_8l;
          v44 = getPriorityStatus_sPriorityStatus;
          [mEMORY[0x277CF0810] registerForTaskWithIdentifier:@"com.apple.spotlightknowledged.task.priority" usingQueue:qword_28158ACA0 launchHandler:v40];

          goto LABEL_37;
        }

        if (eventType != 2)
        {
          goto LABEL_37;
        }

        if (getEmbeddingsStatus_token != -1)
        {
          [CSEventListenerTasksManager setTurboMode:];
        }

        if (SKGLogGetCurrentLoggingLevel() >= 5)
        {
          v13 = SKGLogUpdaterInit();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_INFO, "### setting up embeddings task handler", buf, 2u);
          }
        }

        mEMORY[0x277CF0810]2 = [MEMORY[0x277CF0810] sharedScheduler];
        *v40 = MEMORY[0x277D85DD0];
        v41 = 3221225472;
        v42 = __setupEmbeddingsTaskHandler_block_invoke;
        v43 = &__block_descriptor_40_e34_v16__0__BGNonRepeatingSystemTask_8l;
        v44 = getEmbeddingsStatus_sEmbeddingsStatus;
        [mEMORY[0x277CF0810]2 registerForTaskWithIdentifier:@"com.apple.spotlightknowledged.task" usingQueue:qword_28158AD78 launchHandler:v40];

        v15 = @"com.apple.spotlightknowledged.task.cleanup.embeddings";
        v16 = @"com.apple.spotlightknowledged.task.ab-cleanup.embeddings";
LABEL_27:
        setupQueryCleanupTasks(v15, v16);
        v7 = 1;
        goto LABEL_37;
      }

      switch(eventType)
      {
        case 3:
          if (getKeyphrasesStatus_token != -1)
          {
            [CSEventListenerTasksManager setTurboMode:];
          }

          if (SKGLogGetCurrentLoggingLevel() >= 5)
          {
            v17 = SKGLogUpdaterInit();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_231B25000, v17, OS_LOG_TYPE_INFO, "### setting up keyphrases task handler", buf, 2u);
            }
          }

          mEMORY[0x277CF0810]3 = [MEMORY[0x277CF0810] sharedScheduler];
          *v40 = MEMORY[0x277D85DD0];
          v41 = 3221225472;
          v42 = __setupKeyphrasesTaskHandler_block_invoke;
          v43 = &__block_descriptor_40_e34_v16__0__BGNonRepeatingSystemTask_8l;
          v44 = getKeyphrasesStatus_status;
          [mEMORY[0x277CF0810]3 registerForTaskWithIdentifier:@"com.apple.spotlightknowledged.task.keyphrases" usingQueue:qword_28158AD30 launchHandler:v40];

          v15 = @"com.apple.spotlightknowledged.task.cleanup.keyphrases";
          v16 = @"com.apple.spotlightknowledged.task.ab-cleanup.keyphrases";
          goto LABEL_27;
        case 6:
          v11 = @"com.apple.spotlightknowledged.task.cleanup.suggestedevents";
          v12 = @"com.apple.spotlightknowledged.task.ab-cleanup.suggestedevents";
          break;
        case 7:
          v11 = @"com.apple.spotlightknowledged.task.cleanup.docunderstanding";
          v12 = @"com.apple.spotlightknowledged.task.ab-cleanup.docunderstanding";
          break;
        default:
          goto LABEL_37;
      }

      setupQueryCleanupTasks(v11, v12);
      v6 = 1;
LABEL_37:
      ++v9;
    }

    while (v5 != v9);
    v5 = [(NSArray *)v3 countByEnumeratingWithState:&v35 objects:v46 count:16];
  }

  while (v5);
LABEL_41:

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v21 = self->_tasks;
  v22 = [(NSDictionary *)v21 countByEnumeratingWithState:&v31 objects:v45 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [(NSDictionary *)self->_tasks objectForKeyedSubscript:*(*(&v31 + 1) + 8 * i), v31];
        [v26 setup];
      }

      v23 = [(NSDictionary *)v21 countByEnumeratingWithState:&v31 objects:v45 count:16];
    }

    while (v23);
  }

  if (v6)
  {
    if (getPreExtractionStatus_token != -1)
    {
      [CSEventListenerTasksManager setTurboMode:];
    }

    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v29 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *v40 = 0;
        _os_log_impl(&dword_231B25000, v29, OS_LOG_TYPE_INFO, "### setting up pre-extraction task handler", v40, 2u);
      }
    }

    mEMORY[0x277CF0810]4 = [MEMORY[0x277CF0810] sharedScheduler];
    *v40 = MEMORY[0x277D85DD0];
    v41 = 3221225472;
    v42 = __setupPreExtractionTaskHandler_block_invoke;
    v43 = &__block_descriptor_40_e34_v16__0__BGNonRepeatingSystemTask_8l;
    v44 = getPreExtractionStatus_status;
    [mEMORY[0x277CF0810]4 registerForTaskWithIdentifier:@"com.apple.spotlightknowledged.task.preextraction" usingQueue:qword_28158ACE8 launchHandler:v40];

LABEL_57:
    setupQueryUpdatesTasks(v27, v28);
  }

  else if (v7)
  {
    goto LABEL_57;
  }

  [(CSEventListenerTasksManager *)self launchIntensiveTasks];
}

- (BOOL)alwaysAllowed:(id)allowed
{
  allowedCopy = allowed;
  tasks = self->_tasks;
  taskName = [allowedCopy taskName];
  v7 = [(NSDictionary *)tasks objectForKeyedSubscript:taskName];

  if (v7)
  {
    v8 = [v7 needsThrottling] ^ 1;
  }

  else if (([allowedCopy eventFlags] & 0x40) != 0)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    eventType = [allowedCopy eventType];
    LOBYTE(v8) = eventType > 9 || (eventType & 0xE) == 4;
  }

  return v8;
}

- (void)launchIntensiveTasks
{
  v29 = *MEMORY[0x277D85DE8];
  if (sTurboMode)
  {
    return;
  }

  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  enableEmbeddings = [mEMORY[0x277D657A0] enableEmbeddings];

  if (enableEmbeddings)
  {
    if (getPriorityStatus_token != -1)
    {
      [CSEventListenerTasksManager endJobForDelegate:];
    }

    launchPriorityTask(getPriorityStatus_sPriorityStatus);
  }

  mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
  if ([mEMORY[0x277D657A0]2 enableEmbeddings])
  {
    enableEmbeddings = +[CSXPCEventListener sharedInstance];
    embeddingsJobCount = [enableEmbeddings embeddingsJobCount];

    if (embeddingsJobCount >= 2)
    {
      if (getEmbeddingsStatus_token != -1)
      {
        EmbeddingsThrottlingSwitch_cold_1();
      }

      launchEmbeddingsTask(getEmbeddingsStatus_sEmbeddingsStatus);
    }
  }

  else
  {
  }

  mEMORY[0x277D657A0]3 = [MEMORY[0x277D657A0] sharedContext];
  if ([mEMORY[0x277D657A0]3 enableKeyphrases])
  {
    enableEmbeddings = +[CSXPCEventListener sharedInstance];
    keyphrasesJobCount = [enableEmbeddings keyphrasesJobCount];

    if (keyphrasesJobCount >= 2)
    {
      if (getKeyphrasesStatus_token != -1)
      {
        [CSEventListenerTasksManager endJobForDelegate:];
      }

      launchKeyphrasesTask(getKeyphrasesStatus_status);
    }
  }

  else
  {
  }

  mEMORY[0x277D657A0]4 = [MEMORY[0x277D657A0] sharedContext];
  enableDocumentUnderstanding = [mEMORY[0x277D657A0]4 enableDocumentUnderstanding];
  v11 = enableDocumentUnderstanding;
  if (enableDocumentUnderstanding)
  {
    enableEmbeddings = +[CSXPCEventListener sharedInstance];
    if ([enableEmbeddings docUnderstandingJobCount] >= 2)
    {

LABEL_29:
      if (getPreExtractionStatus_token != -1)
      {
        [CSEventListenerTasksManager endJobForDelegate:];
      }

      launchPreExtractionTask(getPreExtractionStatus_status);
      goto LABEL_32;
    }
  }

  mEMORY[0x277D657A0]5 = [MEMORY[0x277D657A0] sharedContext];
  if (![mEMORY[0x277D657A0]5 enableSuggestedEvents])
  {

    if (v11)
    {
    }

    goto LABEL_32;
  }

  v13 = +[CSXPCEventListener sharedInstance];
  suggestedEventsJobCount = [v13 suggestedEventsJobCount];

  if (v11)
  {

    if (suggestedEventsJobCount > 1)
    {
      goto LABEL_29;
    }
  }

  else
  {

    if (suggestedEventsJobCount >= 2)
    {
      goto LABEL_29;
    }
  }

LABEL_32:
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = self->_tasks;
  v16 = [(NSDictionary *)v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * i);
        v21 = [(NSDictionary *)self->_tasks objectForKeyedSubscript:v20, v24];
        if ([v21 needsThrottling])
        {
          v22 = +[CSXPCEventListener sharedInstance];
          v23 = [v22 jobCountWithTaskName:v20];

          if (v23 >= 2)
          {
            [v21 launch];
          }
        }
      }

      v17 = [(NSDictionary *)v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }
}

- (void)launchQueryUpdatesTasks
{
  setupQueryUpdatesTasks(self, a2);
  launchQueryUpdatesTask(@"com.apple.spotlightknowledged.task.updates");

  launchQueryUpdatesTask(@"com.apple.spotlightknowledged.task.ab-updates");
}

- (void)setTurboMode:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_231B25000, a2, OS_LOG_TYPE_ERROR, "### could not create turbo file %@", &v2, 0xCu);
}

- (void)startTaskForIndexType:delegate:.cold.1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)endJobForDelegate:(int)a1 .cold.5(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_231B25000, a2, OS_LOG_TYPE_ERROR, "unknown task type for listenerType:%u", v2, 8u);
}

@end