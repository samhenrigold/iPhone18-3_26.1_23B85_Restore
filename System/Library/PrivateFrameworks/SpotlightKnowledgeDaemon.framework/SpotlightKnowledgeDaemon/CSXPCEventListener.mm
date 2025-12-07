@interface CSXPCEventListener
+ (void)disable;
+ (void)initialize;
- (BOOL)handleMessage:(id)message connection:(id)connection;
- (CSXPCEventListener)init;
- (id)description;
- (int)docUnderstandingJobCount;
- (int)embeddingsJobCount;
- (int)jobCountWithTaskName:(id)name;
- (int)keyphrasesJobCount;
- (int)priorityJobCount;
- (int)suggestedEventsJobCount;
- (void)launchQueryUpdatesTasks;
- (void)lostConnection:(id)connection error:(id)error;
- (void)runJobWithTaskName:(id)name;
- (void)setTurboMode:(BOOL)mode;
- (void)startWithEventListeners:(id)listeners;
- (void)updatePathSet:(id)set withFilesAtPath:(id)path shouldRemove:(BOOL)remove;
@end

@implementation CSXPCEventListener

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<%@:%p; started:%d >", objc_opt_class(), self, self->_started];

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    +[CSEventListenerTasksManager sharedInstance];

    v2 = objc_opt_new();
    v3 = gCSXPCEventListener;
    gCSXPCEventListener = v2;
  }
}

+ (void)disable
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEBC0];
  v3 = indexPath();
  v4 = [v2 fileURLWithPath:v3 isDirectory:1];

  if (v4)
  {
    uRLByDeletingLastPathComponent = [v4 URLByDeletingLastPathComponent];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [uRLByDeletingLastPathComponent path];
    v8 = [defaultManager fileExistsAtPath:path];

    if (v8)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v9 = SKGLogInit();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          path2 = [uRLByDeletingLastPathComponent path];
          *buf = 138412290;
          v17 = path2;
          _os_log_impl(&dword_231B25000, v9, OS_LOG_TYPE_DEFAULT, "### disable root path %@", buf, 0xCu);
        }
      }

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v15 = 0;
      v12 = [defaultManager2 removeItemAtURL:uRLByDeletingLastPathComponent error:&v15];
      v13 = v15;

      if ((v12 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v14 = SKGLogInit();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          +[CSXPCEventListener disable];
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }
}

- (void)setTurboMode:(BOOL)mode
{
  modeCopy = mode;
  v4 = +[CSEventListenerTasksManager sharedInstance];
  [v4 setTurboMode:modeCopy];
}

- (void)launchQueryUpdatesTasks
{
  v2 = +[CSEventListenerTasksManager sharedInstance];
  [v2 launchQueryUpdatesTasks];
}

- (void)updatePathSet:(id)set withFilesAtPath:(id)path shouldRemove:(BOOL)remove
{
  removeCopy = remove;
  v33 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  pathCopy = path;
  v21 = [MEMORY[0x277CBEBC0] fileURLWithPath:? isDirectory:?];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = *MEMORY[0x277CBE8A8];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277CBE8E8], *MEMORY[0x277CBE8A8], 0}];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __65__CSXPCEventListener_updatePathSet_withFilesAtPath_shouldRemove___block_invoke;
  v27[3] = &unk_27893D8D8;
  v27[4] = &v28;
  v20 = [defaultManager enumeratorAtURL:v21 includingPropertiesForKeys:v10 options:4 errorHandler:v27];

  if (*(v29 + 24) == 1)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v20;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v12)
    {
      v13 = *v24;
      do
      {
        v14 = 0;
        do
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v23 + 1) + 8 * v14);
          v22 = 0;
          [v15 getResourceValue:&v22 forKey:v9 error:0];
          v16 = v22;
          if ([v16 BOOLValue])
          {
            uRLByDeletingLastPathComponent = [v15 URLByDeletingLastPathComponent];
            path = [uRLByDeletingLastPathComponent path];
            if (removeCopy)
            {
              [setCopy removeObject:path];
            }

            else
            {
              [setCopy addObject:path];
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v12);
    }
  }

  _Block_object_dispose(&v28, 8);
}

BOOL __65__CSXPCEventListener_updatePathSet_withFilesAtPath_shouldRemove___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return a3 != 0;
}

- (void)startWithEventListeners:(id)listeners
{
  listenersCopy = listeners;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__CSXPCEventListener_startWithEventListeners___block_invoke;
  v7[3] = &unk_27893D900;
  v8 = listenersCopy;
  selfCopy = self;
  v5 = startWithEventListeners__onceToken;
  v6 = listenersCopy;
  if (v5 != -1)
  {
    dispatch_once(&startWithEventListeners__onceToken, v7);
  }
}

void __46__CSXPCEventListener_startWithEventListeners___block_invoke(uint64_t a1)
{
  v132 = *MEMORY[0x277D85DE8];
  v2 = +[CSEventListenerTasksManager sharedInstance];
  v92 = a1;
  [v2 registerEventListenerDelegates:*(a1 + 32)];

  v3 = cascadePath();
  v4 = [MEMORY[0x277D657A0] sharedContext];
  LODWORD(a1) = [v4 enableAppEntities];

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 fileExistsAtPath:v3];

  v91 = v3;
  if (a1)
  {
    if ((v6 & 1) == 0)
    {
      v7 = [MEMORY[0x277CCAA00] defaultManager];
      v122 = 0;
      [v7 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v122];
      v8 = v122;

      if (v8 && SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v9 = SKGLogInit();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __46__CSXPCEventListener_startWithEventListeners___block_invoke_cold_2();
        }

LABEL_12:

        goto LABEL_14;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (!v6)
  {
    goto LABEL_13;
  }

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v121 = 0;
  [v10 removeItemAtPath:v3 error:&v121];
  v8 = v121;

  if (v8 && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v9 = SKGLogInit();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__CSXPCEventListener_startWithEventListeners___block_invoke_cold_1();
    }

    goto LABEL_12;
  }

LABEL_14:
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v11 = legacyPaths();
  v12 = [v11 countByEnumeratingWithState:&v117 objects:v131 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v118;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v118 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v117 + 1) + 8 * i);
        v17 = [MEMORY[0x277CCAA00] defaultManager];
        v18 = [v17 fileExistsAtPath:v16];

        if (v18)
        {
          if (SKGLogGetCurrentLoggingLevel() >= 4)
          {
            v19 = SKGLogInit();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v128 = v16;
              _os_log_impl(&dword_231B25000, v19, OS_LOG_TYPE_DEFAULT, "### removing legacy path %@", buf, 0xCu);
            }
          }

          v20 = [MEMORY[0x277CCAA00] defaultManager];
          v116 = v8;
          v21 = v8;
          v22 = [v20 removeItemAtPath:v16 error:&v116];
          v23 = v116;

          if ((v22 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 2)
          {
            v24 = SKGLogInit();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v128 = v16;
              v129 = 2112;
              v130 = v23;
              _os_log_error_impl(&dword_231B25000, v24, OS_LOG_TYPE_ERROR, "### unable to remove legacy path %@ (%@)", buf, 0x16u);
            }
          }

          v8 = v23;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v117 objects:v131 count:16];
    }

    while (v13);
  }

  v25 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v26 = *(v92 + 40);
  v27 = indexPath();
  [v26 updatePathSet:v25 withFilesAtPath:v27 shouldRemove:0];

  v28 = *(v92 + 40);
  v29 = activityJournalRootPath();
  [v28 updatePathSet:v25 withFilesAtPath:v29 shouldRemove:1];

  v30 = *(v92 + 40);
  v31 = journalsPath();
  [v30 updatePathSet:v25 withFilesAtPath:v31 shouldRemove:1];

  v32 = *(v92 + 40);
  v33 = sdbPath();
  [v32 updatePathSet:v25 withFilesAtPath:v33 shouldRemove:1];

  v34 = *(v92 + 40);
  v35 = embeddingCachePath();
  [v34 updatePathSet:v25 withFilesAtPath:v35 shouldRemove:1];

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v36 = SKGLogInit();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v128 = v25;
      _os_log_impl(&dword_231B25000, v36, OS_LOG_TYPE_DEFAULT, "### pathSet %@", buf, 0xCu);
    }
  }

  v98 = v8;
  v37 = indexPath();
  v38 = [v37 stringByAppendingPathComponent:@".turbo"];

  v90 = v38;
  [v25 removeObject:v38];
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v39 = *(v92 + 32);
  v40 = [v39 countByEnumeratingWithState:&v112 objects:v126 count:16];
  if (v40)
  {
    v41 = v40;
    v96 = 0;
    v42 = *v113;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v113 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v112 + 1) + 8 * j);
        v45 = [v44 config];
        if (v45)
        {
          v46 = v45;
          v47 = [v44 config];
          v48 = [v47 supportsDeletedItems];

          if (v48)
          {
            v49 = v96;
            if (!v96)
            {
              v49 = objc_alloc_init(MEMORY[0x277CBEB58]);
            }

            v50 = [v44 taskName];
            v96 = v49;
            [v49 addObject:v50];
          }
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v112 objects:v126 count:16];
    }

    while (v41);
  }

  else
  {
    v96 = 0;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v51 = SKGLogInit();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v128 = v96;
      _os_log_impl(&dword_231B25000, v51, OS_LOG_TYPE_DEFAULT, "### %@ ignorePaths", buf, 0xCu);
    }
  }

  v52 = [MEMORY[0x277D657A0] sharedContext];
  v53 = [v52 maxJournalSizeForPurge];

  v54 = [MEMORY[0x277D657A8] sharedClientListener];
  v55 = [v54 hasDiskCapacity];

  if ((v55 & 1) == 0)
  {
    v56 = [MEMORY[0x277D657A0] sharedContext];
    v53 = [v56 maxJournalSizeWhenLowDiskSpace];
  }

  v57 = eventsPath();
  v58 = [v57 UTF8String];
  v59 = [v96 allObjects];
  purgeOldJournalFilesAtRootPath(v58, v53, v59);

  v60 = [*(v92 + 32) count];
  if (v60)
  {
    v94 = [MEMORY[0x277CBEB18] arrayWithCapacity:v60];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    obj = *(v92 + 32);
    v97 = [obj countByEnumeratingWithState:&v108 objects:v125 count:16];
    if (v97)
    {
      v95 = *v109;
      do
      {
        for (k = 0; k != v97; ++k)
        {
          if (*v109 != v95)
          {
            objc_enumerationMutation(obj);
          }

          v62 = *(*(&v108 + 1) + 8 * k);
          if ([v62 conformsToProtocol:&unk_2846E9BE8])
          {
            v63 = 0;
            do
            {
              if ([v62 supportsCSIndexType:v63])
              {
                v64 = eventsPath();
                v65 = [v62 taskName];
                v66 = [v64 stringByAppendingFormat:@"/%@/%s", v65, getCSIndexTypeShortNameCString(v63)];

                if (v66)
                {
                  v67 = [v25 copy];
                  v104 = 0u;
                  v105 = 0u;
                  v106 = 0u;
                  v107 = 0u;
                  v68 = v67;
                  v69 = [v68 countByEnumeratingWithState:&v104 objects:v124 count:16];
                  if (v69)
                  {
                    v70 = v69;
                    v71 = *v105;
                    do
                    {
                      for (m = 0; m != v70; ++m)
                      {
                        if (*v105 != v71)
                        {
                          objc_enumerationMutation(v68);
                        }

                        v73 = *(*(&v104 + 1) + 8 * m);
                        if ([v73 containsString:v66])
                        {
                          [v25 removeObject:v73];
                        }
                      }

                      v70 = [v68 countByEnumeratingWithState:&v104 objects:v124 count:16];
                    }

                    while (v70);
                  }
                }
              }

              v63 = (v63 + 1);
            }

            while (v63 != 8);
          }

          else if (SKGLogGetCurrentLoggingLevel() >= 2)
          {
            v74 = SKGLogInit();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v128 = v62;
              _os_log_error_impl(&dword_231B25000, v74, OS_LOG_TYPE_ERROR, "### %@ does not conform to CSEventListenerDelegate protocol", buf, 0xCu);
            }
          }

          v75 = [[CSEventListener alloc] initWithEventListenerDelegate:v62];
          if (v75)
          {
            [v94 addObject:v75];
          }
        }

        v97 = [obj countByEnumeratingWithState:&v108 objects:v125 count:16];
      }

      while (v97);
    }

    if ([v94 count])
    {
      v76 = [v94 copy];
      v77 = gCSEventListeners;
      gCSEventListeners = v76;
    }
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v78 = v25;
  v79 = [v78 countByEnumeratingWithState:&v100 objects:v123 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v101;
    do
    {
      for (n = 0; n != v80; ++n)
      {
        if (*v101 != v81)
        {
          objc_enumerationMutation(v78);
        }

        v83 = *(*(&v100 + 1) + 8 * n);

        v84 = [MEMORY[0x277CCAA00] defaultManager];
        v85 = [v84 fileExistsAtPath:v83];

        if (v85)
        {
          if (SKGLogGetCurrentLoggingLevel() >= 4)
          {
            v86 = SKGLogInit();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v128 = v83;
              _os_log_impl(&dword_231B25000, v86, OS_LOG_TYPE_DEFAULT, "### removing path %@", buf, 0xCu);
            }
          }

          v87 = [MEMORY[0x277CCAA00] defaultManager];
          v99 = 0;
          v88 = [v87 removeItemAtPath:v83 error:&v99];
          v98 = v99;

          if ((v88 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 2)
          {
            v89 = SKGLogInit();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v128 = v83;
              v129 = 2112;
              v130 = v98;
              _os_log_error_impl(&dword_231B25000, v89, OS_LOG_TYPE_ERROR, "### unable to remove path %@ (%@)", buf, 0x16u);
            }
          }
        }

        else
        {
          v98 = 0;
        }
      }

      v80 = [v78 countByEnumeratingWithState:&v100 objects:v123 count:16];
    }

    while (v80);
  }

  *(*(v92 + 40) + 8) = 1;
  dispatch_activate(*(*(v92 + 40) + 16));
  dispatch_async(*(*(v92 + 40) + 16), &__block_literal_global_10);
}

id __46__CSXPCEventListener_startWithEventListeners___block_invoke_42(uint64_t a1, uint64_t a2)
{
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v2 = SKGLogInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __46__CSXPCEventListener_startWithEventListeners___block_invoke_42_cold_1(v2);
    }
  }

  for (i = 0; i != 8; ++i)
  {
    result = [CSIndexEventListener indexEventListenerForType:i allowCreate:1];
  }

  return result;
}

- (CSXPCEventListener)init
{
  v10.receiver = self;
  v10.super_class = CSXPCEventListener;
  v2 = [(CSXPCEventListener *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_initially_inactive(0);
    v4 = dispatch_queue_attr_make_with_overcommit();
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(v4, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);

    v7 = dispatch_queue_create("com.apple.spotlight.eventlistener.queue", v6);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

- (BOOL)handleMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  v6 = [[CSEventMessage alloc] initWithMessage:messageCopy];
  v7 = v6;
  if (v6 && (v6->_event - 1) < 4)
  {
    queue = self->_queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__CSXPCEventListener_handleMessage_connection___block_invoke;
    v11[3] = &unk_27893D928;
    v11[4] = self;
    v12 = v6;
    v13 = messageCopy;
    dispatch_async(queue, v11);

    v9 = 1;
  }

  else
  {
    [(CSXPCEventListener *)self handleMessage:v6 connection:&v14];
    v9 = v14;
  }

  return v9;
}

- (void)lostConnection:(id)connection error:(id)error
{
  v8 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v5 = SKGLogInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_DEFAULT, "### lost connection - %@", &v6, 0xCu);
    }
  }

  dispatch_async(self->_queue, &__block_literal_global_50);
}

void __43__CSXPCEventListener_lostConnection_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [CSIndexEventListener indexEventListenerForType:a2 allowCreate:0];
  [v2 lostConnection];
}

void __41__CSXPCEventListener_handleDeviceLocking__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) <= 1)
  {
    v3 = [CSIndexEventListener indexEventListenerForType:a2 allowCreate:0];
    if (v3)
    {
      v4 = v3;
      [v3 handleDeviceLocking];
      v3 = v4;
    }
  }
}

void __42__CSXPCEventListener_handleDeviceUnlocked__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) <= 1)
  {
    v3 = [CSIndexEventListener indexEventListenerForType:a2 allowCreate:0];
    if (v3)
    {
      v4 = v3;
      [v3 handleDeviceUnlocked];
      v3 = v4;
    }
  }
}

- (int)jobCountWithTaskName:(id)name
{
  nameCopy = name;
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = [CSIndexEventListener indexEventListenerForType:v4 allowCreate:?];
    v6 = v5;
    if (v5 && [*(v5 + 24) count])
    {
      v7 = 0;
      do
      {
        v8 = v6[3];
        v9 = [v8 objectAtIndexedSubscript:v7];
        if (([(CSEventListenerManager *)v9 throttled]& 1) != 0)
        {
          v10 = [v6[3] objectAtIndexedSubscript:v7];
          activityJournal = [(CSEmbeddingsUpdater *)v10 activityJournal];
          asyncIndexProcessors = [(CSEmbeddingsUpdater *)activityJournal asyncIndexProcessors];
          taskName = [asyncIndexProcessors taskName];
          v14 = [taskName isEqualToString:nameCopy];

          v3 += v14 & 1;
        }

        else
        {
        }

        ++v7;
      }

      while (v7 < [v6[3] count]);
    }

    v4 = v16 + 1;
  }

  while (v16 != 7);

  return v3;
}

- (void)runJobWithTaskName:(id)name
{
  nameCopy = name;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__CSXPCEventListener_runJobWithTaskName___block_invoke;
  block[3] = &unk_27893D970;
  v6 = nameCopy;
  v4 = nameCopy;
  dispatch_apply(8uLL, 0, block);
}

void __41__CSXPCEventListener_runJobWithTaskName___block_invoke(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [CSIndexEventListener indexEventListenerForType:a2 allowCreate:0];
  v3 = v2;
  if (v2 && [*(v2 + 24) count])
  {
    v5 = 0;
    *&v4 = 136315138;
    v21 = v4;
    while (1)
    {
      v6 = v3[3];
      v7 = [v6 objectAtIndexedSubscript:v5];
      if (([(CSEventListenerManager *)v7 throttled]& 1) == 0)
      {
        break;
      }

      v8 = v3[3];
      v9 = [v8 objectAtIndexedSubscript:v5];
      v10 = [(CSEmbeddingsUpdater *)v9 activityJournal];
      v11 = [(CSEmbeddingsUpdater *)v10 asyncIndexProcessors];
      v12 = [v11 taskName];
      v13 = [v12 isEqualToString:*(a1 + 32)];

      if (v13)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v14 = SKGLogInit();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v3[3];
            v16 = [v15 objectAtIndexedSubscript:v5];
            v17 = [(CSEmbeddingsUpdater *)v16 activityJournal];
            v18 = [(CSEmbeddingsUpdater *)v17 asyncIndexProcessors];
            v19 = [v18 taskName];
            v20 = [v19 UTF8String];

            *buf = v21;
            v24 = v20;
            _os_log_impl(&dword_231B25000, v14, OS_LOG_TYPE_DEFAULT, "### requesting (%s) to run", buf, 0xCu);
          }
        }

        v6 = [v3[3] objectAtIndexedSubscript:{v5, v21}];
        [v6 runThrottledTaskAsync];
        goto LABEL_12;
      }

LABEL_13:
      if (++v5 >= [v3[3] count])
      {
        goto LABEL_14;
      }
    }

LABEL_12:
    goto LABEL_13;
  }

LABEL_14:
}

- (int)embeddingsJobCount
{
  v2 = 0;
  for (i = 0; i != 8; ++i)
  {
    v4 = [CSIndexEventListener indexEventListenerForType:i allowCreate:0];
    v5 = v4;
    if (v4 && [*(v4 + 24) count])
    {
      v6 = 0;
      do
      {
        v7 = v5[3];
        v8 = [v7 objectAtIndexedSubscript:v6];
        if (([(CSEventListenerManager *)v8 throttled]& 1) != 0)
        {
          v9 = [v5[3] objectAtIndexedSubscript:v6];
          activityJournal = [(CSEmbeddingsUpdater *)v9 activityJournal];
          asyncIndexProcessors = [(CSEmbeddingsUpdater *)activityJournal asyncIndexProcessors];
          eventType = [asyncIndexProcessors eventType];

          if (eventType == 2)
          {
            ++v2;
          }
        }

        else
        {
        }

        ++v6;
      }

      while (v6 < [v5[3] count]);
    }
  }

  return v2;
}

void __52__CSXPCEventListener_handleEmbeddingsTaskScheduling__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v27 = *MEMORY[0x277D85DE8];
  v3 = [CSIndexEventListener indexEventListenerForType:a2 allowCreate:0];
  v4 = v3;
  if (v3 && [*(v3 + 24) count])
  {
    v6 = 0;
    *&v5 = 136315394;
    v21 = v5;
    while (1)
    {
      v7 = v4[3];
      v8 = [v7 objectAtIndexedSubscript:v6];
      if (([(CSEventListenerManager *)v8 throttled]& 1) == 0)
      {
        break;
      }

      v9 = [v4[3] objectAtIndexedSubscript:v6];
      v10 = [(CSEmbeddingsUpdater *)v9 activityJournal];
      v11 = [(CSEmbeddingsUpdater *)v10 asyncIndexProcessors];
      v12 = [v11 eventType];

      if (v12 == 2)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v13 = SKGLogInit();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v4[3];
            v22 = [v14 objectAtIndexedSubscript:v6];
            v15 = [(CSEmbeddingsUpdater *)v22 activityJournal];
            v16 = [(CSEmbeddingsUpdater *)v15 asyncIndexProcessors];
            v17 = [v16 taskName];
            v18 = [v17 UTF8String];
            v19 = v2;
            CSIndexTypeShortNameCString = getCSIndexTypeShortNameCString(v2);

            *buf = v21;
            v24 = v18;
            v25 = 2080;
            v26 = CSIndexTypeShortNameCString;
            v2 = v19;
            _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEFAULT, "### requesting (%s)/(%s) to run", buf, 0x16u);
          }
        }

        v7 = [v4[3] objectAtIndexedSubscript:{v6, v21}];
        [v7 runThrottledTaskAsync];
        goto LABEL_12;
      }

LABEL_13:
      if (++v6 >= [v4[3] count])
      {
        goto LABEL_14;
      }
    }

LABEL_12:
    goto LABEL_13;
  }

LABEL_14:
}

- (int)keyphrasesJobCount
{
  v2 = 0;
  for (i = 0; i != 8; ++i)
  {
    v4 = [CSIndexEventListener indexEventListenerForType:i allowCreate:0];
    v5 = v4;
    if (v4 && [*(v4 + 24) count])
    {
      v6 = 0;
      do
      {
        v7 = v5[3];
        v8 = [v7 objectAtIndexedSubscript:v6];
        if (([(CSEventListenerManager *)v8 throttled]& 1) != 0)
        {
          v9 = [v5[3] objectAtIndexedSubscript:v6];
          activityJournal = [(CSEmbeddingsUpdater *)v9 activityJournal];
          asyncIndexProcessors = [(CSEmbeddingsUpdater *)activityJournal asyncIndexProcessors];
          eventType = [asyncIndexProcessors eventType];

          if (eventType == 3)
          {
            ++v2;
          }
        }

        else
        {
        }

        ++v6;
      }

      while (v6 < [v5[3] count]);
    }
  }

  return v2;
}

void __52__CSXPCEventListener_handleKeyphrasesTaskScheduling__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v27 = *MEMORY[0x277D85DE8];
  v3 = [CSIndexEventListener indexEventListenerForType:a2 allowCreate:0];
  v4 = v3;
  if (v3 && [*(v3 + 24) count])
  {
    v6 = 0;
    *&v5 = 136315394;
    v21 = v5;
    while (1)
    {
      v7 = v4[3];
      v8 = [v7 objectAtIndexedSubscript:v6];
      if (([(CSEventListenerManager *)v8 throttled]& 1) == 0)
      {
        break;
      }

      v9 = [v4[3] objectAtIndexedSubscript:v6];
      v10 = [(CSEmbeddingsUpdater *)v9 activityJournal];
      v11 = [(CSEmbeddingsUpdater *)v10 asyncIndexProcessors];
      v12 = [v11 eventType];

      if (v12 == 3)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v13 = SKGLogInit();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v4[3];
            v22 = [v14 objectAtIndexedSubscript:v6];
            v15 = [(CSEmbeddingsUpdater *)v22 activityJournal];
            v16 = [(CSEmbeddingsUpdater *)v15 asyncIndexProcessors];
            v17 = [v16 taskName];
            v18 = [v17 UTF8String];
            v19 = v2;
            CSIndexTypeShortNameCString = getCSIndexTypeShortNameCString(v2);

            *buf = v21;
            v24 = v18;
            v25 = 2080;
            v26 = CSIndexTypeShortNameCString;
            v2 = v19;
            _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEFAULT, "### requesting (%s)/(%s) to run", buf, 0x16u);
          }
        }

        v7 = [v4[3] objectAtIndexedSubscript:{v6, v21}];
        [v7 runThrottledTaskAsync];
        goto LABEL_12;
      }

LABEL_13:
      if (++v6 >= [v4[3] count])
      {
        goto LABEL_14;
      }
    }

LABEL_12:
    goto LABEL_13;
  }

LABEL_14:
}

- (int)docUnderstandingJobCount
{
  v2 = 0;
  for (i = 0; i != 8; ++i)
  {
    v4 = [CSIndexEventListener indexEventListenerForType:i allowCreate:0];
    v5 = v4;
    if (v4 && [*(v4 + 24) count])
    {
      v6 = 0;
      do
      {
        v7 = [v5[3] objectAtIndexedSubscript:v6];
        activityJournal = [(CSEmbeddingsUpdater *)v7 activityJournal];
        asyncIndexProcessors = [(CSEmbeddingsUpdater *)activityJournal asyncIndexProcessors];
        eventType = [asyncIndexProcessors eventType];

        v11 = [v5[3] objectAtIndexedSubscript:v6];
        throttled = [(CSEventListenerManager *)v11 throttled];
        if (eventType == 7)
        {
          v13 = throttled;
        }

        else
        {
          v13 = 0;
        }

        v2 += v13;
        ++v6;
      }

      while (v6 < [v5[3] count]);
    }
  }

  return v2;
}

- (int)suggestedEventsJobCount
{
  v2 = 0;
  for (i = 0; i != 8; ++i)
  {
    v4 = [CSIndexEventListener indexEventListenerForType:i allowCreate:0];
    v5 = v4;
    if (v4 && [*(v4 + 24) count])
    {
      v6 = 0;
      do
      {
        v7 = [v5[3] objectAtIndexedSubscript:v6];
        activityJournal = [(CSEmbeddingsUpdater *)v7 activityJournal];
        asyncIndexProcessors = [(CSEmbeddingsUpdater *)activityJournal asyncIndexProcessors];
        eventType = [asyncIndexProcessors eventType];

        v11 = [v5[3] objectAtIndexedSubscript:v6];
        throttled = [(CSEventListenerManager *)v11 throttled];
        if (eventType == 6)
        {
          v13 = throttled;
        }

        else
        {
          v13 = 0;
        }

        v2 += v13;
        ++v6;
      }

      while (v6 < [v5[3] count]);
    }
  }

  return v2;
}

void __55__CSXPCEventListener_handlePreExtractionTaskScheduling__block_invoke(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = a2;
  v2 = [CSIndexEventListener indexEventListenerForType:a2 allowCreate:0];
  v3 = v2;
  if (v2 && [*(v2 + 24) count])
  {
    v5 = 0;
    *&v4 = 136315394;
    v19 = v4;
    while (1)
    {
      v6 = [v3[3] objectAtIndexedSubscript:{v5, v19}];
      v7 = [(CSEmbeddingsUpdater *)v6 activityJournal];
      v8 = [(CSEmbeddingsUpdater *)v7 asyncIndexProcessors];
      v9 = [v8 eventType];

      v10 = [v3[3] objectAtIndexedSubscript:v5];
      if (![(CSEventListenerManager *)v10 throttled])
      {
        goto LABEL_11;
      }

      if ((v9 & 0xFFFFFFFE) == 6)
      {
        break;
      }

LABEL_12:
      if (++v5 >= [v3[3] count])
      {
        goto LABEL_13;
      }
    }

    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v11 = SKGLogInit();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v3[3];
        v13 = [v12 objectAtIndexedSubscript:v5];
        v14 = [(CSEmbeddingsUpdater *)v13 activityJournal];
        v15 = [(CSEmbeddingsUpdater *)v14 asyncIndexProcessors];
        v16 = [v15 taskName];
        v17 = [v16 UTF8String];
        CSIndexTypeShortNameCString = getCSIndexTypeShortNameCString(v20);

        *buf = v19;
        v22 = v17;
        v23 = 2080;
        v24 = CSIndexTypeShortNameCString;
        _os_log_impl(&dword_231B25000, v11, OS_LOG_TYPE_DEFAULT, "### requesting (%s)/(%s) to run", buf, 0x16u);
      }
    }

    v10 = [v3[3] objectAtIndexedSubscript:v5];
    [v10 runThrottledTaskAsync];
LABEL_11:

    goto LABEL_12;
  }

LABEL_13:
}

- (int)priorityJobCount
{
  v2 = 0;
  for (i = 0; i != 8; ++i)
  {
    v4 = [CSIndexEventListener indexEventListenerForType:i allowCreate:0];
    v5 = v4;
    if (v4 && [*(v4 + 24) count])
    {
      v6 = 0;
      do
      {
        v7 = v5[3];
        v8 = [v7 objectAtIndexedSubscript:v6];
        if (([(CSEventListenerManager *)v8 throttled]& 1) != 0)
        {
          v9 = [v5[3] objectAtIndexedSubscript:v6];
          activityJournal = [(CSEmbeddingsUpdater *)v9 activityJournal];
          asyncIndexProcessors = [(CSEmbeddingsUpdater *)activityJournal asyncIndexProcessors];
          eventType = [asyncIndexProcessors eventType];

          if (eventType == 1)
          {
            ++v2;
          }
        }

        else
        {
        }

        ++v6;
      }

      while (v6 < [v5[3] count]);
    }
  }

  return v2;
}

void __50__CSXPCEventListener_handlePriorityTaskScheduling__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v27 = *MEMORY[0x277D85DE8];
  v3 = [CSIndexEventListener indexEventListenerForType:a2 allowCreate:0];
  v4 = v3;
  if (v3 && [*(v3 + 24) count])
  {
    v6 = 0;
    *&v5 = 136315394;
    v21 = v5;
    while (1)
    {
      v7 = v4[3];
      v8 = [v7 objectAtIndexedSubscript:v6];
      if (([(CSEventListenerManager *)v8 throttled]& 1) == 0)
      {
        break;
      }

      v9 = [v4[3] objectAtIndexedSubscript:v6];
      v10 = [(CSEmbeddingsUpdater *)v9 activityJournal];
      v11 = [(CSEmbeddingsUpdater *)v10 asyncIndexProcessors];
      v12 = [v11 eventType];

      if (v12 == 1)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v13 = SKGLogInit();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v4[3];
            v22 = [v14 objectAtIndexedSubscript:v6];
            v15 = [(CSEmbeddingsUpdater *)v22 activityJournal];
            v16 = [(CSEmbeddingsUpdater *)v15 asyncIndexProcessors];
            v17 = [v16 taskName];
            v18 = [v17 UTF8String];
            v19 = v2;
            CSIndexTypeShortNameCString = getCSIndexTypeShortNameCString(v2);

            *buf = v21;
            v24 = v18;
            v25 = 2080;
            v26 = CSIndexTypeShortNameCString;
            v2 = v19;
            _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEFAULT, "### requesting (%s)/(%s) to run", buf, 0x16u);
          }
        }

        v7 = [v4[3] objectAtIndexedSubscript:{v6, v21}];
        [v7 runThrottledTaskAsync];
        goto LABEL_12;
      }

LABEL_13:
      if (++v6 >= [v4[3] count])
      {
        goto LABEL_14;
      }
    }

LABEL_12:
    goto LABEL_13;
  }

LABEL_14:
}

void __47__CSXPCEventListener_handleMessage_connection___block_invoke(uint64_t a1, uint64_t a2)
{
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v4 = SKGLogInit();
    if (OUTLINED_FUNCTION_4_2(v4))
    {
      *v16 = 138412546;
      *&v16[4] = *(a1 + 32);
      *&v16[12] = 2112;
      *&v16[14] = *(a1 + 40);
      OUTLINED_FUNCTION_1_8();
      _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    if (*(v10 + 8))
    {
      v11 = 7;
    }

    else
    {
      v11 = *(v10 + 12);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [CSIndexEventListener indexEventListenerForType:v11 allowCreate:1, *v16, *&v16[16]];
  [v12 handleMessage:*(a1 + 40)];
  v13 = xpc_dictionary_get_remote_connection(*(a1 + 48));
  if (v13)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 48));
    v15 = reply;
    if (reply)
    {
      xpc_dictionary_set_int64(reply, "status", 0);
      xpc_connection_send_message(v13, v15);
    }
  }
}

- (void)handleMessage:(_BYTE *)a3 connection:.cold.1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v5 = SKGLogInit();
    if (OUTLINED_FUNCTION_4_2(v5))
    {
      OUTLINED_FUNCTION_1_8();
      _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    }
  }

  *a3 = 0;
}

@end