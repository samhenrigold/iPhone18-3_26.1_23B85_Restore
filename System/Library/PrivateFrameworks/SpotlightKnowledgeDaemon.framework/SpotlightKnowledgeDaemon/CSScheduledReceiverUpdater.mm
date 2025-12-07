@interface CSScheduledReceiverUpdater
- (BOOL)handleDeletion:(id)deletion turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block;
- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block;
- (BOOL)shouldHandleJournalItem:(id)item bundleID:(id)d;
- (CSScheduledReceiverUpdater)initWithSpotlightReceiverConfig:(id)config;
- (id)description;
- (id)excludeBundleIDs;
- (id)includeBundleIDs;
- (id)taskName;
- (unint64_t)eventFlags;
@end

@implementation CSScheduledReceiverUpdater

- (CSScheduledReceiverUpdater)initWithSpotlightReceiverConfig:(id)config
{
  configCopy = config;
  v45.receiver = self;
  v45.super_class = CSScheduledReceiverUpdater;
  v6 = [(CSScheduledReceiverUpdater *)&v45 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, config);
    v8 = objc_alloc_init(CSEventListenerConfig);
    taskConfig = v7->_taskConfig;
    v7->_taskConfig = v8;

    v10 = MEMORY[0x277CCACA8];
    client = [configCopy client];
    name = [configCopy name];
    priority = [configCopy priority];
    v14 = [v10 stringWithFormat:@"receiver-%ld-%@-%@", client, name, priority];
    [(CSEventListenerConfig *)v7->_taskConfig setName:v14];

    v15 = MEMORY[0x277CCACA8];
    name2 = [(CSEventListenerConfig *)v7->_taskConfig name];
    v17 = [v15 stringWithFormat:@"com.apple.spotlightknowledge.task.%@", name2];
    [(CSEventListenerConfig *)v7->_taskConfig setTaskIdentifier:v17];

    -[CSEventListenerConfig setRequirePriorityItems:](v7->_taskConfig, "setRequirePriorityItems:", [configCopy requirePriorityItems]);
    -[CSEventListenerConfig setRequireBacklogItems:](v7->_taskConfig, "setRequireBacklogItems:", [configCopy requireBacklogItems]);
    -[CSEventListenerConfig setSupportsDeletedItems:](v7->_taskConfig, "setSupportsDeletedItems:", [configCopy includeDeletedItems]);
    bundleIDs = [configCopy bundleIDs];
    [(CSEventListenerConfig *)v7->_taskConfig setIncludeBundleIDs:bundleIDs];

    disableBundleIDs = [configCopy disableBundleIDs];
    [(CSEventListenerConfig *)v7->_taskConfig setExcludeBundleIDs:disableBundleIDs];

    contentTypes = [configCopy contentTypes];
    [(CSEventListenerConfig *)v7->_taskConfig setIncludeContentTypes:contentTypes];

    disableContentTypes = [configCopy disableContentTypes];
    [(CSEventListenerConfig *)v7->_taskConfig setExcludeContentTypes:disableContentTypes];

    requiredAttributes = [configCopy requiredAttributes];
    [(CSEventListenerConfig *)v7->_taskConfig setRequiredAttributes:requiredAttributes];

    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    priority2 = [configCopy priority];
    LOBYTE(name) = [priority2 isEqualToString:@"immediate"];

    if (name)
    {
      v25 = 20;
    }

    else
    {
      v26 = MEMORY[0x277CBEC38];
      [v23 setValue:MEMORY[0x277CBEC38] forKey:@"resourceIntensive"];
      priority3 = [configCopy priority];
      [v23 setValue:priority3 forKey:@"priority"];

      [v23 setValue:v26 forKey:@"requiresUserInactivity"];
      [v23 setValue:v26 forKey:@"requiresExternalPower"];
      priority4 = [configCopy priority];
      LODWORD(priority3) = [priority4 isEqualToString:@"urgent"];

      if (priority3)
      {
        v29 = MEMORY[0x277CBEC28];
        [v23 setValue:MEMORY[0x277CBEC28] forKey:@"requiresUserInactivity"];
        [v23 setValue:v29 forKey:@"requiresExternalPower"];
      }

      processes = [configCopy processes];

      if (processes)
      {
        processes2 = [configCopy processes];
        [v23 setValue:processes2 forKey:@"involvedProcesses"];
      }

      v25 = 64;
    }

    [(CSEventListenerConfig *)v7->_taskConfig setEventFlags:v25];
    [(CSEventListenerConfig *)v7->_taskConfig setTaskOptions:v23];
    v32 = MEMORY[0x277CCACA8];
    v33 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(configCopy, "client")}];
    name3 = [configCopy name];
    v35 = [v32 stringWithFormat:@"com.apple.spotlightknowledge.receiver.work.%@.%@", v33, name3];

    v36 = dispatch_queue_create([v35 UTF8String], 0);
    workQueue = v7->_workQueue;
    v7->_workQueue = v36;

    v38 = MEMORY[0x277CCACA8];
    v39 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(configCopy, "client")}];
    name4 = [configCopy name];
    v41 = [v38 stringWithFormat:@"com.apple.spotlightknowledge.receiver.timer.%@.%@", v39, name4];

    v42 = dispatch_queue_create([v41 UTF8String], 0);
    timerQueue = v7->_timerQueue;
    v7->_timerQueue = v42;
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  taskName = [(CSScheduledReceiverUpdater *)self taskName];
  v6 = [v3 initWithFormat:@"<%@:%p; %@>", v4, self, taskName];

  return v6;
}

- (id)taskName
{
  taskConfig = [(CSScheduledReceiverUpdater *)self taskConfig];
  name = [taskConfig name];

  return name;
}

- (unint64_t)eventFlags
{
  taskConfig = [(CSScheduledReceiverUpdater *)self taskConfig];
  eventFlags = [taskConfig eventFlags];

  return eventFlags;
}

- (id)includeBundleIDs
{
  taskConfig = [(CSScheduledReceiverUpdater *)self taskConfig];
  includeBundleIDs = [taskConfig includeBundleIDs];

  return includeBundleIDs;
}

- (id)excludeBundleIDs
{
  taskConfig = [(CSScheduledReceiverUpdater *)self taskConfig];
  excludeBundleIDs = [taskConfig excludeBundleIDs];

  return excludeBundleIDs;
}

- (BOOL)shouldHandleJournalItem:(id)item bundleID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  dCopy = d;
  taskConfig = [(CSScheduledReceiverUpdater *)self taskConfig];
  if (![itemCopy isUserActivity])
  {
    if (!dCopy || ([taskConfig supportsBundleID:dCopy] & 1) == 0)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 6)
      {
        requiredAttributes = SKGLogScheduledReceiverInit();
        if (os_log_type_enabled(requiredAttributes, OS_LOG_TYPE_DEBUG))
        {
          [CSScheduledReceiverUpdater shouldHandleJournalItem:bundleID:];
        }

        goto LABEL_40;
      }

      goto LABEL_12;
    }

    includeContentTypes = [taskConfig includeContentTypes];
    if ([includeContentTypes count])
    {
    }

    else
    {
      excludeContentTypes = [taskConfig excludeContentTypes];
      v13 = [excludeContentTypes count];

      if (!v13)
      {
        goto LABEL_22;
      }
    }

    memset(buf, 0, 24);
    [(CSEventDonationJournalItem *)itemCopy attrDictObj];
    if (_MDPlistDictionaryGetPlistObjectForKey())
    {
      v23 = *buf;
      v24 = *&buf[16];
      requiredAttributes = _MDPlistContainerCopyObject();
      if (requiredAttributes && ([taskConfig supportsContentType:requiredAttributes] & 1) == 0)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 6)
        {
          v14 = SKGLogScheduledReceiverInit();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            [CSScheduledReceiverUpdater shouldHandleJournalItem:bundleID:];
          }

LABEL_39:

          goto LABEL_40;
        }

        goto LABEL_40;
      }
    }

    else
    {
      requiredAttributes = 0;
    }

LABEL_22:
    if ([taskConfig requirePriorityItems])
    {
      requiredAttributes = [itemCopy attributesForKeys:&unk_2846E8010 bundleID:dCopy];
      if (([requiredAttributes recordIsCurrent:requiredAttributes toCalendarUnit:16 maxOffset:1 checkFuture:1 dateKeys:&unk_2846E8010]& 1) == 0)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 6)
        {
          v14 = SKGLogScheduledReceiverInit();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            [CSScheduledReceiverUpdater shouldHandleJournalItem:bundleID:];
          }

          goto LABEL_39;
        }

LABEL_40:
        v11 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      if (![taskConfig requireBacklogItems])
      {
LABEL_33:
        taskConfig2 = [(CSScheduledReceiverUpdater *)self taskConfig];
        requiredAttributes = [taskConfig2 requiredAttributes];

        if (!-[NSObject count](requiredAttributes, "count") || ([itemCopy containsAnyInAttributes:requiredAttributes] & 1) != 0)
        {
          v11 = 1;
LABEL_41:

          goto LABEL_42;
        }

        if (SKGLogGetCurrentLoggingLevel() >= 6)
        {
          v14 = SKGLogScheduledReceiverInit();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            taskConfig3 = [(CSScheduledReceiverUpdater *)self taskConfig];
            name = [taskConfig3 name];
            uTF8String = [name UTF8String];
            isUpdate = [itemCopy isUpdate];
            v21 = [requiredAttributes componentsJoinedByString:@", "];
            uTF8String2 = [v21 UTF8String];
            *buf = 136315650;
            *&buf[4] = uTF8String;
            *&buf[12] = 1024;
            *&buf[14] = isUpdate;
            *&buf[18] = 2080;
            *&buf[20] = uTF8String2;
            _os_log_debug_impl(&dword_231B25000, v14, OS_LOG_TYPE_DEBUG, "### RECEIVER ignoring item for '%s', isUpdate: %d (required: <%s>)", buf, 0x1Cu);
          }

          goto LABEL_39;
        }

        goto LABEL_40;
      }

      requiredAttributes = [itemCopy attributesForKeys:&unk_2846E8010 bundleID:dCopy];
      if ([requiredAttributes recordIsCurrent:requiredAttributes toCalendarUnit:16 maxOffset:1 checkFuture:1 dateKeys:&unk_2846E8010])
      {
        if (SKGLogGetCurrentLoggingLevel() >= 6)
        {
          v14 = SKGLogScheduledReceiverInit();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            [CSScheduledReceiverUpdater shouldHandleJournalItem:bundleID:];
          }

          goto LABEL_39;
        }

        goto LABEL_40;
      }
    }

    goto LABEL_33;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 6)
  {
    requiredAttributes = SKGLogScheduledReceiverInit();
    if (os_log_type_enabled(requiredAttributes, OS_LOG_TYPE_DEBUG))
    {
      [CSScheduledReceiverUpdater shouldHandleJournalItem:bundleID:];
    }

    goto LABEL_40;
  }

LABEL_12:
  v11 = 0;
LABEL_42:

  return v11;
}

- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block
{
  v122 = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  handlerCopy = handler;
  blockCopy = block;
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v11 = SKGLogScheduledReceiverInit();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = donationCopy;
      *&buf[12] = 2080;
      *&buf[14] = [(CSEventListenerManager *)donationCopy journalMap];
      _os_log_impl(&dword_231B25000, v11, OS_LOG_TYPE_DEFAULT, "**** handleDonation for %@ / %s", buf, 0x16u);
    }
  }

  context = objc_autoreleasePoolPush();
  v12 = SKGLogEventInit();
  spid = os_signpost_id_generate(v12);

  v13 = SKGLogEventInit();
  v14 = v13;
  v65 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v14, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CSScheduledReceiverUpdaterHandleDonation", "", buf, 2u);
  }

  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:-[CSEventListenerManager journalMap](donationCopy) encoding:4];
  v16 = objc_alloc(MEMORY[0x277CCACA8]);
  protectionClass = [(CSEventListenerDonation *)donationCopy protectionClass];
  v68 = [v16 initWithString:protectionClass];

  v18 = objc_alloc(MEMORY[0x277CCACA8]);
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalQueue](donationCopy)];
  v67 = [v18 initWithString:v19];

  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  enableReceiverDebugging = [mEMORY[0x277D657A0] enableReceiverDebugging];

  receiverConfig = [(CSScheduledReceiverUpdater *)self receiverConfig];
  if (v15)
  {
    bundleIDs = [receiverConfig bundleIDs];
    v23 = [bundleIDs count];
    if (v23)
    {
      bundleIDs2 = [receiverConfig bundleIDs];
      if (([bundleIDs2 containsObject:v15] & 1) == 0)
      {

LABEL_20:
        if (SKGLogGetCurrentLoggingLevel() >= 6)
        {
          v28 = SKGLogScheduledReceiverInit();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            [CSScheduledReceiverUpdater handleDonation:turboEnabled:completionHandler:cancelBlock:];
          }
        }

        v29 = SKGLogEventInit();
        v30 = v29;
        if (v65 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v29))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_231B25000, v30, OS_SIGNPOST_INTERVAL_END, spid, "CSScheduledReceiverUpdaterHandleDonation", "", buf, 2u);
        }

        (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
        goto LABEL_58;
      }
    }

    disableBundleIDs = [receiverConfig disableBundleIDs];
    if ([disableBundleIDs count])
    {
      v25 = v23 == 0;
      disableBundleIDs2 = [receiverConfig disableBundleIDs];
      v27 = [disableBundleIDs2 containsObject:v15];

      if (v25)
      {

        if (v27)
        {
          goto LABEL_20;
        }
      }

      else
      {

        if (v27)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {

      if (v23)
      {
      }
    }
  }

  name = [receiverConfig name];
  mEMORY[0x277CC33D0] = [MEMORY[0x277CC33D0] sharedListener];
  onBattery = [mEMORY[0x277CC33D0] onBattery];

  v33 = +[CSEventFeedback receiverFeedback];
  [v33 setIndexType:-[CSEventListenerManager folderFd](donationCopy)];
  [v33 setBundleID:v15];
  [v33 start];
  if (enabled)
  {
    v63 = 0;
  }

  else
  {
    v34 = [SKGTimer alloc];
    timerQueue = self->_timerQueue;
    v109[0] = MEMORY[0x277D85DD0];
    v109[1] = 3221225472;
    v109[2] = __88__CSScheduledReceiverUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke;
    v109[3] = &unk_27893D6D8;
    v111 = blockCopy;
    v109[4] = self;
    v110 = donationCopy;
    v63 = [(SKGTimer *)v34 initWithTimeIntervalSinceNow:timerQueue tolerance:v109 queue:5.0 block:2.0];
    v60 = &v111;
    v61 = &v110;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v119 = __Block_byref_object_copy__6;
  v120 = __Block_byref_object_dispose__6;
  v121 = 0;
  v103 = 0;
  v104 = &v103;
  v105 = 0x3032000000;
  v106 = __Block_byref_object_copy__6;
  v107 = __Block_byref_object_dispose__6;
  v108 = 0;
  v97 = 0;
  v98 = &v97;
  v99 = 0x3032000000;
  v100 = __Block_byref_object_copy__6;
  v101 = __Block_byref_object_dispose__6;
  v102 = 0;
  v64 = dispatch_group_create();
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __88__CSScheduledReceiverUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_62;
  v90[3] = &unk_27893D700;
  v90[4] = self;
  v15 = v15;
  v91 = v15;
  v96 = enableReceiverDebugging;
  v36 = donationCopy;
  v92 = v36;
  v94 = &v103;
  v37 = v33;
  v93 = v37;
  v95 = &v97;
  [v36 iterateItems:v90];
  if (!blockCopy[2]())
  {
    if ([v104[5] count])
    {
      v45 = [objc_alloc(MEMORY[0x277CC34A8]) _initWithName:@"ReceiverUpdate" protectionClass:v68 bundleIdentifier:v15 options:32];
      [v45 indexSearchableItems:v104[5] completionHandler:&__block_literal_global_9];
    }

    indexType = [(CSEventListenerManager *)v36 indexType];
    activityJournal = [(CSEmbeddingsUpdater *)v36 activityJournal];
    defaults = [(CSEmbeddingsUpdater *)v36 defaults];
    v49 = v98[5];
    if (v49)
    {
      v50 = [v49 count];
      if (v50)
      {
        [(SKGTimer *)v63 reset];
        queue = self->_workQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __88__CSScheduledReceiverUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2;
        block[3] = &unk_27893D770;
        block[4] = self;
        v75 = v36;
        v85 = v50;
        v51 = v64;
        v88 = indexType;
        v76 = v51;
        v86 = activityJournal;
        v87 = defaults;
        v77 = v15;
        v78 = v68;
        v79 = v67;
        v83 = &v97;
        v80 = receiverConfig;
        v84 = buf;
        v81 = v37;
        v82 = name;
        v89 = onBattery;
        dispatch_group_async(v51, queue, block);
        v52 = dispatch_time(0, 600000000000);
        if (dispatch_group_wait(v51, v52))
        {
          if (SKGLogGetCurrentLoggingLevel() >= 2)
          {
            v53 = SKGLogScheduledReceiverInit();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              [CSScheduledReceiverUpdater handleDonation:v53 turboEnabled:? completionHandler:? cancelBlock:?];
            }
          }

          [MEMORY[0x277D65760] suspend];
          v54 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.spotlightknowledged.EventListenerError" code:-9001 userInfo:0];
        }

        else
        {
          v54 = *(*&buf[8] + 40);
        }

        v55 = v54;

        goto LABEL_51;
      }
    }

    else
    {
      v50 = 0;
    }

    v55 = 0;
LABEL_51:
    v56 = SKGLogEventInit();
    v57 = v56;
    if (v65 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
    {
      *v112 = 0;
      _os_signpost_emit_with_name_impl(&dword_231B25000, v57, OS_SIGNPOST_INTERVAL_END, spid, "CSScheduledTaskUpdaterHandleDonation", "", v112, 2u);
    }

    [v37 end];
    (*(handlerCopy + 2))(handlerCopy, v50, 0, v55);

    goto LABEL_55;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v38 = SKGLogScheduledReceiverInit();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      taskConfig = [(CSScheduledReceiverUpdater *)self taskConfig];
      name2 = [taskConfig name];
      v41 = name2;
      uTF8String = [name2 UTF8String];
      indexTypeName = [(CSEventListenerDonation *)v36 indexTypeName];
      totalJournalSize = [(CSEventListenerManager *)v36 totalJournalSize];
      *v112 = 136315650;
      v113 = uTF8String;
      v114 = 2080;
      v115 = indexTypeName;
      v116 = 2048;
      v117 = totalJournalSize;
      _os_log_impl(&dword_231B25000, v38, OS_LOG_TYPE_DEFAULT, "### cancelling %s due to expiration request while processing type='%s' sn:'%llu'", v112, 0x20u);
    }
  }

  [v37 end];
  (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
LABEL_55:

  _Block_object_dispose(&v97, 8);
  _Block_object_dispose(&v103, 8);

  _Block_object_dispose(buf, 8);
  if (!enabled)
  {
  }

LABEL_58:
  objc_autoreleasePoolPop(context);

  return 1;
}

void __88__CSScheduledReceiverUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ((*(*(a1 + 48) + 16))())
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v4 = SKGLogScheduledReceiverInit();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 32) taskConfig];
        v6 = [v5 name];
        v7 = [v6 UTF8String];
        v8 = [(CSEventListenerDonation *)*(a1 + 40) indexTypeName];
        v9 = [(CSEventListenerManager *)*(a1 + 40) totalJournalSize];
        v10 = 136315650;
        v11 = v7;
        v12 = 2080;
        v13 = v8;
        v14 = 2048;
        v15 = v9;
        _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_DEFAULT, "### cancelling %s due to expiration request while processing type='%s' sn:'%llu'", &v10, 0x20u);
      }
    }

    [MEMORY[0x277D65760] suspend];
  }

  else
  {
    [v3 reset];
  }
}

uint64_t __88__CSScheduledReceiverUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_62(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  [(CSEventDonationJournalItem *)v3 identifier];
  v5 = MDJournalReaderMDPlistObjectCopy();
  v6 = [v5 mutableCopy];

  if ([*(a1 + 32) shouldHandleJournalItem:v3 bundleID:*(a1 + 40)])
  {
    if (*(a1 + 80) == 1)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v7 = SKGLogScheduledReceiverInit();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [*(a1 + 32) taskConfig];
          v9 = [v8 name];
          v10 = [v9 UTF8String];
          v11 = [(CSEventListenerDonation *)*(a1 + 48) indexTypeName];
          v12 = [(CSEventListenerManager *)*(a1 + 48) totalJournalSize];
          v26 = 136315650;
          v27 = v10;
          v28 = 2080;
          v29 = v11;
          v30 = 2048;
          v31 = v12;
          _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_DEFAULT, "### RECEIVER %s logging debug item type='%s' sn:'%llu'", &v26, 0x20u);
        }
      }

      v13 = objc_alloc_init(MEMORY[0x277CC34B8]);
      [v13 setAttribute:&unk_2846E7938 forKey:@"_kMDItemProcessedByUpdater"];
      v14 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v6 domainIdentifier:0 attributeSet:v13];
      [v14 setBundleID:*(a1 + 40)];
      [v14 setIsUpdate:1];
      v15 = *(*(*(a1 + 64) + 8) + 40);
      if (!v15)
      {
        v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v17 = *(*(a1 + 64) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;

        v15 = *(*(*(a1 + 64) + 8) + 40);
      }

      [v15 addObject:v14];
    }

    [*(a1 + 56) setNumItemsInBatch:{objc_msgSend(*(a1 + 56), "numItemsInBatch") + 1}];
    v19 = *(*(*(a1 + 72) + 8) + 40);
    if (!v19)
    {
      v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v21 = *(*(a1 + 72) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v19 = *(*(*(a1 + 72) + 8) + 40);
    }

    v23 = [v19 objectForKeyedSubscript:v6];

    if (!v23)
    {
      v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [*(*(*(a1 + 72) + 8) + 40) setObject:v24 forKeyedSubscript:v6];
LABEL_17:
    }
  }

  else if (SKGLogGetCurrentLoggingLevel() >= 6)
  {
    v24 = SKGLogScheduledReceiverInit();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      __88__CSScheduledReceiverUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_62_cold_1();
    }

    goto LABEL_17;
  }

  objc_autoreleasePoolPop(v4);
  return 0;
}

void __88__CSScheduledReceiverUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_75(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&stru_2846D02B8.isa, a2);
  }
}

void __88__CSScheduledReceiverUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v3 = SKGLogScheduledReceiverInit();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = [(CSEventListenerDonation *)*(a1 + 40) indexTypeName];
      v6 = [(CSEventListenerManager *)*(a1 + 40) totalJournalSize];
      v7 = *(a1 + 120);
      *buf = 138413058;
      v31 = v4;
      v32 = 2080;
      v33 = v5;
      v34 = 2048;
      v35 = v6;
      v36 = 2048;
      v37 = v7;
      _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_INFO, "### donation %@ %s sn:%llu found %lu items", buf, 0x2Au);
    }
  }

  dispatch_group_enter(*(a1 + 48));
  v21 = MEMORY[0x277D65760];
  v20 = *(a1 + 144);
  v18 = *(a1 + 136);
  v19 = *(a1 + 128);
  v8 = [(CSEventListenerManager *)*(a1 + 40) folderFd];
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = [(CSEventListenerManager *)*(a1 + 40) totalJournalSize];
  v12 = *(*(*(a1 + 104) + 8) + 40);
  v13 = *(a1 + 72);
  v14 = [*(a1 + 80) client];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __88__CSScheduledReceiverUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_80;
  v22[3] = &unk_27893D748;
  v27 = *(a1 + 112);
  v15 = *(a1 + 80);
  v23 = *(a1 + 88);
  v24 = *(a1 + 56);
  v16 = *(a1 + 96);
  v17 = *(a1 + 120);
  v25 = v16;
  v28 = v17;
  v29 = *(a1 + 148);
  v26 = *(a1 + 48);
  [v21 addOrUpdateSearchableItemsInJournalFd:v20 atOffset:v19 size:v18 indexType:v8 bundleID:v9 protectionClass:v10 serialNumber:v11 journalCookie:v13 additionalAttributes:v12 client:v14 config:v15 completionHandler:v22];
}

void __88__CSScheduledReceiverUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_80(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9 = *(a1 + 48);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 72)];
    v10[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v5 logReceivedItemForBundleID:v6 counts:v8 onBattery:*(a1 + 80)];
  }

  dispatch_group_leave(*(a1 + 56));
}

- (BOOL)handleDeletion:(id)deletion turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block
{
  v46 = *MEMORY[0x277D85DE8];
  deletionCopy = deletion;
  handlerCopy = handler;
  blockCopy = block;
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v12 = SKGLogScheduledReceiverInit();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = deletionCopy;
      _os_log_impl(&dword_231B25000, v12, OS_LOG_TYPE_INFO, "**** handleDeletion for %@", buf, 0xCu);
    }
  }

  taskConfig = [(CSScheduledReceiverUpdater *)self taskConfig];
  if ([taskConfig supportsDeletedItems])
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v13 = SKGLogScheduledReceiverInit();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        indexTypeName = [(CSEventListenerDonation *)deletionCopy indexTypeName];
        totalJournalSize = [(CSEventListenerManager *)deletionCopy totalJournalSize];
        *buf = 138412802;
        *&buf[4] = self;
        *&buf[12] = 2080;
        *&buf[14] = indexTypeName;
        *&buf[22] = 2048;
        v43 = totalJournalSize;
        _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEFAULT, "### deletion %@ %s sn:%llu", buf, 0x20u);
      }
    }

    receiverConfig = [(CSScheduledReceiverUpdater *)self receiverConfig];
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalQueue](deletionCopy)];
    v19 = [v17 initWithString:v18];

    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    protectionClass = [(CSEventListenerDonation *)deletionCopy protectionClass];
    v22 = [v20 initWithString:protectionClass];

    v23 = blockCopy;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v43 = __Block_byref_object_copy__6;
    v44 = __Block_byref_object_dispose__6;
    v45 = 0;
    v24 = dispatch_group_create();
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__CSScheduledReceiverUpdater_handleDeletion_turboEnabled_completionHandler_cancelBlock___block_invoke;
    block[3] = &unk_27893D7C0;
    v26 = v24;
    v36 = v26;
    v37 = deletionCopy;
    v27 = v22;
    v38 = v27;
    v28 = v19;
    v39 = v28;
    v29 = receiverConfig;
    v40 = v29;
    v41 = buf;
    dispatch_group_async(v26, workQueue, block);
    v30 = dispatch_time(0, 180000000000);
    if (dispatch_group_wait(v26, v30))
    {
      blockCopy = v23;
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v31 = SKGLogScheduledReceiverInit();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [CSScheduledReceiverUpdater handleDeletion:v31 turboEnabled:? completionHandler:? cancelBlock:?];
        }
      }

      v32 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.spotlightknowledged.EventListenerError" code:-9001 userInfo:0];
    }

    else
    {
      v32 = *(*&buf[8] + 40);
      blockCopy = v23;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v32 = 0;
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v32);

  return 1;
}

void __88__CSScheduledReceiverUpdater_handleDeletion_turboEnabled_completionHandler_cancelBlock___block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v10 = MEMORY[0x277D65760];
  v2 = [(CSEventListenerManager *)*(a1 + 40) indexType];
  v3 = [(CSEmbeddingsUpdater *)*(a1 + 40) activityJournal];
  v4 = [(CSEmbeddingsUpdater *)*(a1 + 40) defaults];
  v5 = [(CSEventListenerManager *)*(a1 + 40) folderFd];
  v6 = *(a1 + 48);
  v7 = [(CSEventListenerManager *)*(a1 + 40) totalJournalSize];
  v8 = *(a1 + 56);
  v9 = [*(a1 + 64) client];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__CSScheduledReceiverUpdater_handleDeletion_turboEnabled_completionHandler_cancelBlock___block_invoke_2;
  v11[3] = &unk_27893D798;
  v13 = *(a1 + 72);
  v12 = *(a1 + 32);
  [v10 deleteSearchableItemsInJournalFd:v2 atOffset:v3 size:v4 indexType:v5 protectionClass:v6 serialNumber:v7 journalCookie:v8 client:v9 completionHandler:v11];
}

void __88__CSScheduledReceiverUpdater_handleDeletion_turboEnabled_completionHandler_cancelBlock___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)shouldHandleJournalItem:bundleID:.cold.1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_3();
  v1 = [v0 taskConfig];
  v2 = [v1 name];
  [v2 UTF8String];
  [OUTLINED_FUNCTION_3_0() UTF8String];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_7(&dword_231B25000, v3, v4, "### RECEIVER ignoring for '%s' due to invalid contentType '%s'", v5, v6, v7, v8);

  OUTLINED_FUNCTION_4_1();
}

- (void)shouldHandleJournalItem:bundleID:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_3();
  v1 = [v0 taskConfig];
  v2 = [v1 name];
  [v2 UTF8String];
  [OUTLINED_FUNCTION_3_0() UTF8String];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_7(&dword_231B25000, v3, v4, "### RECEIVER ignoring for '%s', '%s' due to new item", v5, v6, v7, v8);

  OUTLINED_FUNCTION_4_1();
}

- (void)shouldHandleJournalItem:bundleID:.cold.3()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_3();
  v1 = [v0 taskConfig];
  v2 = [v1 name];
  [v2 UTF8String];
  [OUTLINED_FUNCTION_3_0() UTF8String];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_7(&dword_231B25000, v3, v4, "### RECEIVER ignoring for '%s', '%s' due to old item", v5, v6, v7, v8);

  OUTLINED_FUNCTION_4_1();
}

- (void)shouldHandleJournalItem:bundleID:.cold.4()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_3();
  v1 = [v0 taskConfig];
  v2 = [v1 name];
  [v2 UTF8String];
  [OUTLINED_FUNCTION_3_0() UTF8String];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_7(&dword_231B25000, v3, v4, "### RECEIVER ignoring for '%s' due to invalid bundle '%s'", v5, v6, v7, v8);

  OUTLINED_FUNCTION_4_1();
}

- (void)shouldHandleJournalItem:bundleID:.cold.5()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_3();
  v1 = [v0 taskConfig];
  v2 = [v1 name];
  [v2 UTF8String];
  [OUTLINED_FUNCTION_3_0() UTF8String];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_7(&dword_231B25000, v3, v4, "### RECEIVER ignoring for '%s','%s' as user activity", v5, v6, v7, v8);

  OUTLINED_FUNCTION_4_1();
}

- (void)handleDonation:turboEnabled:completionHandler:cancelBlock:.cold.1()
{
  OUTLINED_FUNCTION_5_1();
  v1 = v0;
  v3 = [v2 taskConfig];
  v4 = [v3 name];
  v5 = v4;
  [v4 UTF8String];
  v6 = v1;
  [v1 UTF8String];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_7(&dword_231B25000, v7, v8, "### RECEIVER ignoring item for '%s' due to invalid bundle '%s'", v9, v10, v11, v12);

  OUTLINED_FUNCTION_4_1();
}

void __88__CSScheduledReceiverUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_62_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_3();
  v2 = [*v1 taskConfig];
  v3 = [v2 name];
  [v3 UTF8String];
  [*v0 UTF8String];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_7(&dword_231B25000, v4, v5, "### RECEIVER ignoring item in batch for '%s', '%s'", v6, v7, v8, v9);

  OUTLINED_FUNCTION_4_1();
}

@end