@interface CSIndexEventListener
+ (id)indexEventListenerForType:(int)type allowCreate:(BOOL)create;
- (CSIndexEventListener)initWithType:(int)type;
- (id)description;
- (id)findJournalBasePath:(id)path;
- (void)handleDeviceLocking;
- (void)handleDeviceUnlocked;
- (void)handleMessage:(id)message;
- (void)lostConnection;
- (void)processJournalsOnStartupForJournalsPath:(id)path;
@end

@implementation CSIndexEventListener

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = [v3 initWithFormat:@"<%@:%p; %s>", v4, self, getCSIndexTypeShortNameCString(self->_indexType)];

  return v5;
}

- (CSIndexEventListener)initWithType:(int)type
{
  v75 = *MEMORY[0x277D85DE8];
  if (type == 7)
  {
    selfCopy = 0;
  }

  else
  {
    v4 = *&type;
    v68.receiver = self;
    v68.super_class = CSIndexEventListener;
    v5 = [(CSIndexEventListener *)&v68 init];
    v6 = v5;
    if (v5)
    {
      v5->_indexType = v4;
      memset(__str, 0, sizeof(__str));
      CSIndexTypeShortNameCString = getCSIndexTypeShortNameCString(v4);
      snprintf(__str, 0x100uLL, "com.apple.spotlight.eventlistener.%s.queue", CSIndexTypeShortNameCString);
      v8 = dispatch_queue_attr_make_with_overcommit();
      v9 = dispatch_queue_attr_make_with_autorelease_frequency(v8, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_UTILITY, 0);

      v55 = v10;
      v11 = dispatch_queue_create(__str, v10);
      queue = v6->_queue;
      v6->_queue = v11;

      [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(gCSEventListeners, "count")}];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v13 = v67 = 0u;
      obj = gCSEventListeners;
      v14 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v65;
        v57 = v4;
        v56 = *v65;
        do
        {
          v17 = 0;
          v58 = v15;
          do
          {
            if (*v65 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v64 + 1) + 8 * v17);
            asyncIndexProcessors = [(CSEmbeddingsUpdater *)v18 asyncIndexProcessors];
            v20 = [asyncIndexProcessors supportsCSIndexType:v4];

            if (v20)
            {
              v61 = v17;
              v21 = MEMORY[0x277CCACA8];
              asyncIndexProcessors2 = [(CSEmbeddingsUpdater *)v18 asyncIndexProcessors];
              taskName = [asyncIndexProcessors2 taskName];
              v24 = [v21 stringWithFormat:@"%@/%s", taskName, getCSIndexTypeShortNameCString(v6->_indexType)];

              array = [MEMORY[0x277CBEB18] array];
              array2 = [MEMORY[0x277CBEB18] array];
              v27 = eventsPath();
              v60 = v24;
              v28 = [v27 stringByAppendingFormat:@"/%@", v24];

              [array addObject:v28];
              v29 = MEMORY[0x277CCABB0];
              v30 = indexPath();
              v31 = [v29 numberWithUnsignedInt:getHashForBasePath(v30)];
              [array2 addObject:v31];

              if ([array count])
              {
                v32 = v18;
                v33 = 0;
                v34 = 1;
                v62 = array;
                do
                {
                  v35 = [array objectAtIndexedSubscript:v33];
                  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
                  v37 = [defaultManager fileExistsAtPath:v35];

                  if ((v37 & 1) == 0)
                  {
                    v38 = array2;
                    v39 = v32;
                    v40 = v13;
                    v41 = v6;
                    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
                    v63 = 0;
                    v43 = [defaultManager2 createDirectoryAtPath:v35 withIntermediateDirectories:1 attributes:0 error:&v63];
                    v44 = v63;

                    if ((v43 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 2)
                    {
                      v45 = SKGLogInit();
                      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v70 = v44;
                        v71 = 2112;
                        v72 = v35;
                        _os_log_error_impl(&dword_231B25000, v45, OS_LOG_TYPE_ERROR, "### Error %@ creating %@", buf, 0x16u);
                      }
                    }

                    v6 = v41;
                    v13 = v40;
                    v32 = v39;
                    array2 = v38;
                    array = v62;
                  }

                  v46 = [CSEventListenerManager alloc];
                  indexType = v6->_indexType;
                  v48 = [array2 objectAtIndexedSubscript:v33];
                  v49 = -[CSEventListenerManager initWithIndexType:indexPath:eventListener:isManagedEventListener:homePathHash:](v46, "initWithIndexType:indexPath:eventListener:isManagedEventListener:homePathHash:", indexType, v35, v32, 0, [v48 unsignedIntValue]);

                  if (v49)
                  {
                    [v13 addObject:v49];
                  }

                  v33 = v34;
                }

                while ([array count] > v34++);
              }

              v4 = v57;
              v16 = v56;
              v15 = v58;
              v17 = v61;
            }

            ++v17;
          }

          while (v17 != v15);
          v15 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
        }

        while (v15);
      }

      if ([v13 count])
      {
        v51 = [v13 copy];
        managers = v6->_managers;
        v6->_managers = v51;
      }

      v53 = journalsPath();
      [(CSIndexEventListener *)v6 processJournalsOnStartupForJournalsPath:v53];
    }

    self = v6;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)indexEventListenerForType:(int)type allowCreate:(BOOL)create
{
  createCopy = create;
  v5 = *&type;
  v6 = indexEventListenerForType_allowCreate__sCSIndexEventListener[type];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = !createCopy;
  }

  if (!v7)
  {
    os_unfair_lock_lock(&indexEventListenerForType_allowCreate__s_lock);
    v6 = indexEventListenerForType_allowCreate__sCSIndexEventListener[v5];
    if (!v6)
    {
      v8 = [[CSIndexEventListener alloc] initWithType:v5];
      v9 = indexEventListenerForType_allowCreate__sCSIndexEventListener[v5];
      indexEventListenerForType_allowCreate__sCSIndexEventListener[v5] = v8;

      v6 = v8;
    }

    os_unfair_lock_unlock(&indexEventListenerForType_allowCreate__s_lock);
  }

  return v6;
}

- (void)processJournalsOnStartupForJournalsPath:(id)path
{
  v93 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v4 = SKGLogInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_DEFAULT, "### CSIndexEventListener(%@) processJournalsOnStartupForJournalsPath", buf, 0xCu);
    }
  }

  v5 = [pathCopy stringByAppendingFormat:@"/%s", getCSIndexTypeShortNameCString(self->_indexType)];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager fileExistsAtPath:v5];

  if (v7)
  {
    v8 = open([v5 fileSystemRepresentation], 0x8000);
    if (v8 != -1)
    {
      v9 = v8;
      bzero(buf, 0x400uLL);
      i = 0;
      if (fcntl(v9, 50, buf) != -1 && buf[0])
      {
        v11 = opendir(buf);
        if (v11)
        {
          v12 = v11;
          v13 = readdir(v11);
          for (i = 0; v13; v13 = readdir(v12))
          {
            if ((v13->d_type | 2) == 0xA || v13->d_namlen > 0xFEu)
            {
              d_name = v13->d_name;
              if (!strncmp(v13->d_name, "skg_events", 0xAuLL) && !strstr(d_name, "toc"))
              {
                v15 = v5;
                v16 = strrchr(d_name, 46);
                v17 = v16;
                if (v16 && (v18 = v16 + 1, v17[1]) && strncmp(v18, "journal", 7uLL))
                {
                  v5 = v15;
                }

                else
                {
                  v87 = 0u;
                  memset(v88, 0, sizeof(v88));
                  v85 = 0u;
                  v86 = 0u;
                  v83 = 0u;
                  v84 = 0u;
                  v81 = 0u;
                  v82 = 0u;
                  v79 = 0u;
                  v80 = 0u;
                  v77 = 0u;
                  v78 = 0u;
                  v76 = 0u;
                  memset(v75, 0, sizeof(v75));
                  __strncpy_chk();
                  if (SKGLogGetCurrentLoggingLevel() >= 7)
                  {
                    v19 = SKGLogInit();
                    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
                    {
                      *v73 = 136315138;
                      v74 = v75;
                      _os_log_debug_impl(&dword_231B25000, v19, OS_LOG_TYPE_DEBUG, "### found %s", v73, 0xCu);
                    }
                  }

                  if (i)
                  {
                    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:v75];
                    [i addObject:v20];
                  }

                  else
                  {
                    v21 = MEMORY[0x277CBEB18];
                    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:v75];
                    i = [v21 arrayWithObject:v20];
                  }

                  v5 = v15;
                }
              }
            }
          }

          closedir(v12);
        }

        else
        {
          i = 0;
        }
      }

      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      obj = i;
      v61 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
      if (v61)
      {
        v59 = *v69;
        v60 = v5;
        do
        {
          v22 = 0;
          do
          {
            if (*v69 != v59)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v68 + 1) + 8 * v22);
            v24 = [(CSIndexEventListener *)v23 componentsSeparatedByString:@"_"];
            v25 = [v5 stringByAppendingFormat:@"/%@.journal", v23];
            v65 = v24;
            if ([v24 count] != 7 && SKGLogGetCurrentLoggingLevel() >= 2)
            {
              v26 = SKGLogInit();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                selfCopy2 = v23;
                _os_log_error_impl(&dword_231B25000, v26, OS_LOG_TYPE_ERROR, "CSXPCEventListener#processJournalsOnStartupForJournalsPath invalid journalName %@", buf, 0xCu);
              }
            }

            if (SKGLogGetCurrentLoggingLevel() >= 4)
            {
              v27 = SKGLogInit();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                selfCopy2 = self;
                v91 = 2112;
                v92 = v25;
                _os_log_impl(&dword_231B25000, v27, OS_LOG_TYPE_DEFAULT, "### CSIndexEventListener(%@) processJournalsOnStartupForJournalsPath registering journal with managers: %@", buf, 0x16u);
              }
            }

            v63 = v25;
            v64 = v22;
            v28 = objc_alloc_init(MEMORY[0x277CCABB8]);
            v29 = [v24 objectAtIndexedSubscript:6];
            v30 = [v29 componentsSeparatedByString:@"."];
            v31 = [v30 objectAtIndexedSubscript:0];
            v32 = [v28 numberFromString:v31];

            v62 = v32;
            unsignedLongLongValue = [v32 unsignedLongLongValue];
            v34 = [v24 objectAtIndexedSubscript:2];
            v35 = objc_alloc_init(MEMORY[0x277CCABB8]);
            v36 = [v24 objectAtIndexedSubscript:3];
            v37 = [v35 numberFromString:v36];
            intValue = [v37 intValue];

            v39 = objc_alloc_init(MEMORY[0x277CCABB8]);
            v40 = [v24 objectAtIndexedSubscript:4];
            v41 = [v39 numberFromString:v40];
            unsignedLongLongValue2 = [v41 unsignedLongLongValue];

            v43 = [v24 objectAtIndexedSubscript:5];
            bzero(buf, 0x400uLL);
            v67 = v34;
            journalTocPathWithProtectionClass([pathCopy UTF8String], self->_indexType, objc_msgSend(v34, "UTF8String"), objc_msgSend(v43, "UTF8String"), unsignedLongLongValue, intValue, buf);
            if ([(NSArray *)self->_managers count])
            {
              for (j = 0; j < [(NSArray *)self->_managers count]; ++j)
              {
                v45 = [(NSArray *)self->_managers objectAtIndexedSubscript:j];
                activityJournal = [(CSEmbeddingsUpdater *)v45 activityJournal];
                asyncIndexProcessors = [(CSEmbeddingsUpdater *)activityJournal asyncIndexProcessors];
                isAcceptingJournals = [asyncIndexProcessors isAcceptingJournals];

                if (isAcceptingJournals)
                {
                  v49 = [(NSArray *)self->_managers objectAtIndexedSubscript:j];
                  [v49 registerJournalWithIno:v43 journalBasePath:pathCopy journalIno:unsignedLongLongValue2 dev:intValue journalNumber:unsignedLongLongValue journalCookie:v67];
                }

                else
                {
                  if (SKGLogGetCurrentLoggingLevel() < 4)
                  {
                    continue;
                  }

                  v49 = SKGLogInit();
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                  {
                    v50 = [(NSArray *)self->_managers objectAtIndexedSubscript:j];
                    *v75 = 138412546;
                    *&v75[4] = self;
                    *&v75[12] = 2112;
                    *&v75[14] = v50;
                    _os_log_impl(&dword_231B25000, v49, OS_LOG_TYPE_DEFAULT, "### processJournalsOnStartupForJournalsPath %@ Not accepting journals at the moment for manager %@", v75, 0x16u);
                  }
                }
              }
            }

            v51 = unlink([v63 UTF8String]);
            v5 = v60;
            if (SKGLogGetCurrentLoggingLevel() > 3)
            {
              v52 = SKGLogInit();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                if (v51 == -1)
                {
                  v51 = *__error();
                }

                uTF8String = [v63 UTF8String];
                *v75 = 67109634;
                *&v75[4] = v51;
                *&v75[8] = 2112;
                *&v75[10] = self;
                *&v75[18] = 2080;
                *&v75[20] = uTF8String;
                _os_log_impl(&dword_231B25000, v52, OS_LOG_TYPE_DEFAULT, "### unlink journal (%d) %@ - %s ", v75, 0x1Cu);
              }
            }

            v54 = unlink(buf);
            if (SKGLogGetCurrentLoggingLevel() >= 4)
            {
              v55 = SKGLogInit();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                if (v54 == -1)
                {
                  v54 = *__error();
                }

                *v75 = 67109634;
                *&v75[4] = v54;
                *&v75[8] = 2112;
                *&v75[10] = self;
                *&v75[18] = 2080;
                *&v75[20] = buf;
                _os_log_impl(&dword_231B25000, v55, OS_LOG_TYPE_DEFAULT, "### unlink toc (%d) %@ - %s ", v75, 0x1Cu);
              }
            }

            v22 = v64 + 1;
          }

          while (v64 + 1 != v61);
          v61 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
        }

        while (v61);
      }

      if ([(NSArray *)self->_managers count])
      {
        v56 = 0;
        do
        {
          v57 = [(NSArray *)self->_managers objectAtIndexedSubscript:v56];
          [v57 startUp];

          ++v56;
        }

        while (v56 < [(NSArray *)self->_managers count]);
      }

      goto LABEL_75;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      obj = SKGLogInit();
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        [(CSIndexEventListener *)v5 processJournalsOnStartupForJournalsPath:?];
      }

LABEL_75:
    }
  }
}

- (id)findJournalBasePath:(id)path
{
  v26 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  getAllCSManagedIndexPath();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = getJournalPathForBasePath(*(*(&v20 + 1) + 8 * v8));
      bzero(__str, 0x400uLL);
      uTF8String = [v9 UTF8String];
      if (pathCopy)
      {
        v11 = *(pathCopy + 3);
        v13 = *(pathCopy + 8);
        v12 = *(pathCopy + 9);
        v14 = *(pathCopy + 5);
        v15 = *(pathCopy + 4);
        v16 = *(pathCopy + 5);
      }

      else
      {
        v14 = 0;
        v13 = 0;
        v11 = 0;
        v12 = 0;
        v15 = 0;
        v16 = 0;
      }

      journalPathWithProtectionClass(uTF8String, v11, v12, v13, v15, v14, v16, __str);
      memset(&v19, 0, sizeof(v19));
      if (!stat(__str, &v19))
      {
        break;
      }

      if (v6 == ++v8)
      {
        v17 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
        v6 = v17;
        if (v17)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v9 = 0;
  }

  return v9;
}

- (void)handleMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  if (!messageCopy)
  {
    v12 = journalsPath();
    goto LABEL_22;
  }

  v6 = messageCopy[4] - 1;
  if (v6 <= 2)
  {
    v7 = 0x242523u >> (8 * v6);
    v8 = +[SKGActivityJournal sharedJournal];
    [v8 addEventWithType:v7 params:MEMORY[0x277CBEC10]];
  }

  if (*(v5 + 4) == 2)
  {
    v9 = +[CSEventListenerTasksManager sharedInstance];
    [v9 eventListenerManagerSetupScheduler];

    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v10 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(CSIndexEventListener *)self handleMessage:v10];
      }
    }
  }

  v11 = *(v5 + 4);
  v12 = journalsPath();
  if (*(v5 + 8) != 1 || ([(CSIndexEventListener *)self findJournalBasePath:v5], v13 = objc_claimAutoreleasedReturnValue(), v12, (v12 = v13) != 0))
  {
    if (v11 == 1)
    {
      v14 = dispatch_group_create();
      v15 = 0;
      if (!self)
      {
        goto LABEL_16;
      }

LABEL_13:
      for (i = self->_managers; [(NSArray *)i count]> v15; i = 0)
      {
        dispatch_group_enter(v14);
        ++v15;
        if (self)
        {
          goto LABEL_13;
        }

LABEL_16:
        ;
      }

      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__CSIndexEventListener_handleMessage___block_invoke;
      block[3] = &unk_27893D928;
      v12 = v12;
      v26 = v12;
      v27 = v5;
      selfCopy = self;
      dispatch_group_notify(v14, queue, block);

      goto LABEL_23;
    }

LABEL_22:
    v14 = 0;
LABEL_23:
    v19 = self->_queue;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __38__CSIndexEventListener_handleMessage___block_invoke_133;
    v21[3] = &unk_27893D9C0;
    v21[4] = self;
    v22 = v5;
    v23 = v12;
    v24 = v14;
    v18 = v14;
    v20 = v12;
    dispatch_async(v19, v21);

LABEL_24:
    goto LABEL_25;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v18 = SKGLogInit();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CSIndexEventListener handleMessage:v18];
    }

    goto LABEL_24;
  }

LABEL_25:
}

- (void)lostConnection
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__CSIndexEventListener_lostConnection__block_invoke;
  block[3] = &unk_27893CE68;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleDeviceLocking
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CSIndexEventListener_handleDeviceLocking__block_invoke;
  block[3] = &unk_27893CE68;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleDeviceUnlocked
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__CSIndexEventListener_handleDeviceUnlocked__block_invoke;
  block[3] = &unk_27893CE68;
  block[4] = self;
  dispatch_async(queue, block);
}

void __38__CSIndexEventListener_handleMessage___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  bzero(__str, 0x400uLL);
  bzero(v32, 0x400uLL);
  v3 = [*(a1 + 32) UTF8String];
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(v4 + 12);
    v7 = *(v4 + 64);
    v6 = *(v4 + 72);
    v8 = *(v4 + 20);
    v9 = *(v4 + 32);
    v10 = *(v4 + 40);
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v5 = 0;
    v6 = 0;
    v9 = 0;
    v10 = 0;
  }

  journalPathWithProtectionClass(v3, v5, v6, v7, v9, v8, v10, __str);
  v11 = [*(a1 + 32) UTF8String];
  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = *(v12 + 12);
    v15 = *(v12 + 64);
    v14 = *(v12 + 72);
    v16 = *(v12 + 32);
    v17 = *(v12 + 20);
  }

  else
  {
    v16 = 0;
    v14 = 0;
    v13 = 0;
    v15 = 0;
    v17 = 0;
  }

  journalTocPathWithProtectionClass(v11, v13, v14, v15, v16, v17, v32);
  if (__str[0])
  {
    v18 = unlink(__str);
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v19 = SKGLogInit();
      if (OUTLINED_FUNCTION_4_2(v19))
      {
        if (v18 == -1)
        {
          __error();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_1_8();
        _os_log_impl(v20, v21, v22, v23, v24, 0x1Cu);
      }
    }
  }

  if (v32[0])
  {
    v25 = unlink(v32);
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v26 = SKGLogInit();
      if (OUTLINED_FUNCTION_4_2(v26))
      {
        if (v25 == -1)
        {
          __error();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_1_8();
        _os_log_impl(v27, v28, v29, v30, v31, 0x1Cu);
      }
    }
  }
}

void __38__CSIndexEventListener_handleMessage___block_invoke_133(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[3];
  }

  v3 = v2;
  v4 = [v3 count];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__CSIndexEventListener_handleMessage___block_invoke_2;
  v7[3] = &unk_27893D998;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v9 = *(a1 + 48);
  v6 = *(a1 + 56);

  v10 = v6;
  dispatch_apply(v4, 0, v7);
}

void __38__CSIndexEventListener_handleMessage___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[3];
  }

  v5 = v4;
  v6 = [v5 objectAtIndexedSubscript:a2];
  [(CSEventListenerManager *)v6 handleMessage:*(a1 + 48) basePath:*(a1 + 56) withDispatchGroup:?];
}

void __38__CSIndexEventListener_lostConnection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[3];
  }

  v3 = v2;
  v4 = [v3 count];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__CSIndexEventListener_lostConnection__block_invoke_2;
  block[3] = &unk_27893D970;
  v5 = *(a1 + 32);

  block[4] = v5;
  dispatch_apply(v4, 0, block);
}

void __38__CSIndexEventListener_lostConnection__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 objectAtIndexedSubscript:a2];
  [(CSEventListenerManager *)v4 lostConnection];
}

void __43__CSIndexEventListener_handleDeviceLocking__block_invoke(uint64_t a1)
{
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  for (i = 0; ; ++i)
  {
    v3 = *(a1 + 32);
    v4 = v3 ? *(v3 + 24) : 0;
    if (i >= [v4 count])
    {
      break;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 24);
    }

    else
    {
      v6 = 0;
    }

    v7 = [v6 objectAtIndexedSubscript:i];
    [v7 takeAssertions:v8];
  }
}

void __44__CSIndexEventListener_handleDeviceUnlocked__block_invoke(uint64_t a1)
{
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  for (i = 0; ; ++i)
  {
    v3 = *(a1 + 32);
    v4 = v3 ? *(v3 + 24) : 0;
    if (i >= [v4 count])
    {
      break;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 24);
    }

    else
    {
      v6 = 0;
    }

    v7 = [v6 objectAtIndexedSubscript:i];
    [v7 dropAssertions:v8];
  }
}

- (void)processJournalsOnStartupForJournalsPath:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *__error();
  v5[0] = 67109378;
  v5[1] = v4;
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&dword_231B25000, a2, OS_LOG_TYPE_ERROR, "### Error %d opening  %@", v5, 0x12u);
}

- (void)handleMessage:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_231B25000, a2, OS_LOG_TYPE_DEBUG, "### %@ possibly launching intensive tasks", &v2, 0xCu);
}

@end