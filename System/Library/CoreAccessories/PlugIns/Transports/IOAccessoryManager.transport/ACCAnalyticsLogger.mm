@interface ACCAnalyticsLogger
+ (id)databasePathForUser:(int)user;
+ (id)loggerForUser:(int)user;
+ (int64_t)fuzzyDaysSinceDate:(id)date;
+ (void)addBuiltInFieldsToEvent:(id)event;
- (BOOL)_onQueuePostJSON:(id)n error:(id *)error httpStatusCode:(int64_t *)code;
- (BOOL)forceUploadWithError:(id *)error httpStatusCode:(int64_t *)code;
- (NSURL)figaroUploadURL;
- (id)datePropertyForKey:(id)key;
- (id)eventDictForEventName:(id)name withAttributes:(id)attributes;
- (id)eventDictWithBlacklistedFieldsStrippedFrom:(id)from;
- (id)getLoggingJSON:(BOOL)n error:(id *)error;
- (id)initForUser:(int)user;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)_logEventNamed:(id)named withAttributes:(id)attributes;
- (void)logEventNamed:(id)named withAttributes:(id)attributes;
- (void)resetUploadDateAndClearDBEntries:(BOOL)entries dueToError:(BOOL)error;
- (void)setDateProperty:(id)property forKey:(id)key;
- (void)setIgnoreServerDisablingMessages:(BOOL)messages;
@end

@implementation ACCAnalyticsLogger

+ (id)loggerForUser:(int)user
{
  v3 = *&user;
  if (objc_opt_class() == self)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] attempt to instatiate abstract class ACCEventLogger", v8, 2u);
    }

    v6 = 0;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = objc_getAssociatedObject(selfCopy, "ACCAnalyticsLoggerInstance");
    if (!v6)
    {
      v6 = [[selfCopy alloc] initForUser:v3];
      objc_setAssociatedObject(selfCopy, "ACCAnalyticsLoggerInstance", v6, 0x301);
    }

    objc_sync_exit(selfCopy);
  }

  return v6;
}

+ (id)databasePathForUser:(int)user
{
  if (user)
  {
    return @"/var/mobile/Library/CoreAccessories/Analytics/acc_analytics_accessoryd_v3.db";
  }

  else
  {
    return @"/var/mobile/Library/CoreAccessories/Analytics/acc_analytics_UserEventAgent_v3.db";
  }
}

+ (int64_t)fuzzyDaysSinceDate:(id)date
{
  v3 = MEMORY[0x277CBEAA8];
  dateCopy = date;
  date = [v3 date];
  [date timeIntervalSinceDate:dateCopy];
  v7 = v6;

  if (v7 < 86400.0)
  {
    return 0;
  }

  if (v7 < 604800.0)
  {
    return 1;
  }

  if (v7 < 2592000.0)
  {
    return 7;
  }

  if (v7 >= 31536000.0)
  {
    return 365;
  }

  return 30;
}

- (id)initForUser:(int)user
{
  v3 = *&user;
  v58.receiver = self;
  v58.super_class = ACCAnalyticsLogger;
  v4 = [(ACCAnalyticsLogger *)&v58 init];
  v5 = v4;
  if (v4)
  {
    v4->_user = v3;
    array = [MEMORY[0x277CBEB18] array];
    pluginEventsBeforeFirstUnlock = v5->_pluginEventsBeforeFirstUnlock;
    v5->_pluginEventsBeforeFirstUnlock = array;

    array2 = [MEMORY[0x277CBEB18] array];
    accessorydEventsBeforeFirstUnlock = v5->_accessorydEventsBeforeFirstUnlock;
    v5->_accessorydEventsBeforeFirstUnlock = array2;

    v10 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    eventCacheLock = v5->_eventCacheLock;
    v5->_eventCacheLock = v10;

    v12 = [ACCAnalyticsLogger databasePathForUser:v3];
    v13 = [ACCAnalyticsLoggerSQLiteStore storeWithPath:v12 schema:@"CREATE TABLE IF NOT EXISTS all_events (\nid INTEGER PRIMARY KEY AUTOINCREMENT, \ntimestamp REAL, data BLOB\n)\nCREATE TRIGGER IF NOT EXISTS maintain_ring_buffer_all_events AFTER INSERT ON all_events\nBEGIN\nDELETE FROM all_events WHERE id != NEW.id AND id % 999 = NEW.id % 999;\nEND;\nCREATE TABLE IF NOT EXISTS success_count (\nevent_type STRING PRIMARY KEY, \nsuccess_count INTEGER, \nwrap_failure_count INTEGER\n);\n"];;
    database = v5->_database;
    v5->_database = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.accessoryd.eventLogging", v15);
    queue = v5->_queue;
    v5->_queue = v16;

    v18 = dispatch_queue_create("com.apple.accessoryd.eventLoggingQueue", 0);
    loggingQueue = v5->_loggingQueue;
    v5->_loggingQueue = v18;

    isInternalBuild = systemInfo_isInternalBuild(v20, v21);
    v23 = 259200;
    if (isInternalBuild)
    {
      v23 = 86400;
    }

    v5->_secondsBetweenUploads = v23;
    v5->_secondsBetweenUploadError = 3600;
    v24 = MEMORY[0x277CBEAC0];
    v25 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/CoreAccessories.framework"];
    v26 = [v25 pathForResource:@"ACCAnalyticsLogging" ofType:@"plist"];
    v27 = [v24 dictionaryWithContentsOfFile:v26];

    v28 = [v27 objectForKeyedSubscript:@"figaro_topic"];
    figaroTopicName = v5->_figaroTopicName;
    v5->_figaroTopicName = v28;

    v30 = MEMORY[0x277CBEBC0];
    v31 = [v27 objectForKeyedSubscript:@"figaro_uploadURL"];
    v32 = [v30 URLWithString:v31];
    p_figaroUploadURL = &v5->_figaroUploadURL;
    figaroUploadURL = v5->_figaroUploadURL;
    v5->_figaroUploadURL = v32;

    v35 = MEMORY[0x277CBEBC0];
    v36 = [v27 objectForKeyedSubscript:@"figaro_bagURL"];
    v37 = [v35 URLWithString:v36];
    figaroBagURL = v5->_figaroBagURL;
    v5->_figaroBagURL = v37;

    v39 = [v27 valueForKey:@"figaro_allowInsecureCertificate"];
    *(v5 + 88) = *(v5 + 88) & 0xFE | [v39 BOOLValue];

    v40 = [v27 objectForKeyedSubscript:@"figaro_endpointDomain"];
    v41 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.accessory.eventLogging"];
    v42 = [v41 stringForKey:@"figaro_topic"];
    if (v42)
    {
      objc_storeStrong(&v5->_figaroTopicName, v42);
    }

    v57 = v42;
    v43 = MEMORY[0x277CBEBC0];
    v44 = [v41 stringForKey:@"figaro_uploadURL"];
    v45 = [v43 URLWithString:v44];

    if (v45)
    {
      objc_storeStrong(&v5->_figaroUploadURL, v45);
    }

    v46 = MEMORY[0x277CBEBC0];
    v47 = [v41 stringForKey:@"figaro_bagURL"];
    v48 = [v46 URLWithString:v47];

    if (v48)
    {
      objc_storeStrong(&v5->_figaroBagURL, v48);
    }

    *(v5 + 88) |= [v41 BOOLForKey:@"figaro_allowInsecureCertificate"];
    v49 = [v41 stringForKey:@"figaro_endpointDomain"];
    v51 = v49;
    if (v49)
    {
      v52 = v49;

      v40 = v52;
    }

    if (systemInfo_isInternalBuild(v49, v50))
    {

      *(v5 + 88) |= 8u;
      v40 = @"xp-qa.apple.com";
      if (!v5->_figaroUploadURL)
      {
        v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://%@/report/2/%@", @"xp-qa.apple.com", v5->_figaroTopicName];
        v54 = [MEMORY[0x277CBEBC0] URLWithString:v53];
        v55 = *p_figaroUploadURL;
        *p_figaroUploadURL = v54;
      }
    }
  }

  return v5;
}

- (void)logEventNamed:(id)named withAttributes:(id)attributes
{
  v87 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  attributesCopy = attributes;
  v8 = attributesCopy;
  if (!namedCopy)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_67;
    }

    *buf = 0;
    v26 = MEMORY[0x277D86220];
    v27 = "[#ACCEventLogger] attempt to log an event with no name";
LABEL_33:
    _os_log_impl(&dword_233656000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 2u);
    goto LABEL_67;
  }

  if (!attributesCopy)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_67;
    }

    *buf = 0;
    v26 = MEMORY[0x277D86220];
    v27 = "[#ACCEventLogger] attempt to log an event with no attributes";
    goto LABEL_33;
  }

  if (_isDeviceAnalyticsEnabled_onceToken != -1)
  {
    [ACCAnalyticsLogger logEventNamed:withAttributes:];
  }

  if (_isDeviceAnalyticsEnabled_dataCollectionEnabled == 1)
  {
    v9 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v8];
    [ACCAnalyticsLogger addBuiltInFieldsToEvent:v9];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v84 = namedCopy;
      v85 = 2112;
      v86 = v9;
      _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] Figaro event: %@\neventDict: %@", buf, 0x16u);
    }

    v10 = MKBDeviceUnlockedSinceBoot();
    eventCacheLock = [(ACCAnalyticsLogger *)self eventCacheLock];
    [eventCacheLock lock];

    user = [(ACCAnalyticsLogger *)self user];
    if (v10)
    {
      if (user)
      {
        if ([(ACCAnalyticsLogger *)self user]!= 1)
        {
          goto LABEL_59;
        }

        accessorydEventsBeforeFirstUnlock = [(ACCAnalyticsLogger *)self accessorydEventsBeforeFirstUnlock];
        v14 = [accessorydEventsBeforeFirstUnlock count];

        if (!v14)
        {
          goto LABEL_59;
        }

        v52 = v9;
        v53 = v8;
        v54 = namedCopy;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        obj = [(ACCAnalyticsLogger *)self accessorydEventsBeforeFirstUnlock];
        v59 = [obj countByEnumeratingWithState:&v67 objects:v80 count:16];
        if (v59)
        {
          v57 = *v68;
          v15 = MEMORY[0x277D86220];
          do
          {
            v16 = 0;
            do
            {
              if (*v68 != v57)
              {
                objc_enumerationMutation(obj);
              }

              v61 = v16;
              v17 = *(*(&v67 + 1) + 8 * v16);
              v63 = 0u;
              v64 = 0u;
              v65 = 0u;
              v66 = 0u;
              v18 = v17;
              v19 = [v18 countByEnumeratingWithState:&v63 objects:v79 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v64;
                do
                {
                  for (i = 0; i != v20; ++i)
                  {
                    if (*v64 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = *(*(&v63 + 1) + 8 * i);
                    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v84 = v23;
                      _os_log_impl(&dword_233656000, v15, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] send event: %@ to sql db", buf, 0xCu);
                    }

                    v24 = [v18 objectForKey:v23];
                    [(ACCAnalyticsLogger *)self _logEventNamed:v23 withAttributes:v24];
                  }

                  v20 = [v18 countByEnumeratingWithState:&v63 objects:v79 count:16];
                }

                while (v20);
              }

              v16 = v61 + 1;
            }

            while (v61 + 1 != v59);
            v59 = [obj countByEnumeratingWithState:&v67 objects:v80 count:16];
          }

          while (v59);
        }

        accessorydEventsBeforeFirstUnlock2 = [(ACCAnalyticsLogger *)self accessorydEventsBeforeFirstUnlock];
      }

      else
      {
        pluginEventsBeforeFirstUnlock = [(ACCAnalyticsLogger *)self pluginEventsBeforeFirstUnlock];
        v35 = [pluginEventsBeforeFirstUnlock count];

        if (!v35)
        {
LABEL_59:
          eventCacheLock2 = [(ACCAnalyticsLogger *)self eventCacheLock];
          [eventCacheLock2 unlock];

          [(ACCAnalyticsLogger *)self _logEventNamed:namedCopy withAttributes:v9];
LABEL_66:

          goto LABEL_67;
        }

        v52 = v9;
        v53 = v8;
        v54 = namedCopy;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        obja = [(ACCAnalyticsLogger *)self pluginEventsBeforeFirstUnlock];
        v60 = [obja countByEnumeratingWithState:&v75 objects:v82 count:16];
        if (v60)
        {
          v58 = *v76;
          v36 = MEMORY[0x277D86220];
          do
          {
            v37 = 0;
            do
            {
              if (*v76 != v58)
              {
                objc_enumerationMutation(obja);
              }

              v62 = v37;
              v38 = *(*(&v75 + 1) + 8 * v37);
              v71 = 0u;
              v72 = 0u;
              v73 = 0u;
              v74 = 0u;
              v39 = v38;
              v40 = [v39 countByEnumeratingWithState:&v71 objects:v81 count:16];
              if (v40)
              {
                v41 = v40;
                v42 = *v72;
                do
                {
                  for (j = 0; j != v41; ++j)
                  {
                    if (*v72 != v42)
                    {
                      objc_enumerationMutation(v39);
                    }

                    v44 = *(*(&v71 + 1) + 8 * j);
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v84 = v44;
                      _os_log_impl(&dword_233656000, v36, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] send event: %@ to sql db", buf, 0xCu);
                    }

                    v45 = [v39 objectForKey:v44];
                    [(ACCAnalyticsLogger *)self _logEventNamed:v44 withAttributes:v45];
                  }

                  v41 = [v39 countByEnumeratingWithState:&v71 objects:v81 count:16];
                }

                while (v41);
              }

              v37 = v62 + 1;
            }

            while (v62 + 1 != v60);
            v60 = [obja countByEnumeratingWithState:&v75 objects:v82 count:16];
          }

          while (v60);
        }

        accessorydEventsBeforeFirstUnlock2 = [(ACCAnalyticsLogger *)self pluginEventsBeforeFirstUnlock];
      }

      v46 = accessorydEventsBeforeFirstUnlock2;
      [accessorydEventsBeforeFirstUnlock2 removeAllObjects];

      v8 = v53;
      namedCopy = v54;
      v9 = v52;
      goto LABEL_59;
    }

    if (user)
    {
      if ([(ACCAnalyticsLogger *)self user]!= 1)
      {
        goto LABEL_65;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v84 = namedCopy;
        _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] Adding event: %@ to accessoryd array", buf, 0xCu);
      }

      accessorydEventsBeforeFirstUnlock3 = [(ACCAnalyticsLogger *)self accessorydEventsBeforeFirstUnlock];
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v9 forKey:namedCopy];
      [accessorydEventsBeforeFirstUnlock3 addObject:v29];

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_65;
      }

      accessorydEventsBeforeFirstUnlock4 = [(ACCAnalyticsLogger *)self accessorydEventsBeforeFirstUnlock];
      v31 = [accessorydEventsBeforeFirstUnlock4 count];
      *buf = 134217984;
      v84 = v31;
      v32 = MEMORY[0x277D86220];
      v33 = "[#ACCEventLogger] accessorydEventsBeforeFirstUnlock count: %lu";
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v84 = namedCopy;
        _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] Adding event: %@ to plugin array", buf, 0xCu);
      }

      pluginEventsBeforeFirstUnlock2 = [(ACCAnalyticsLogger *)self pluginEventsBeforeFirstUnlock];
      v49 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v9 forKey:namedCopy];
      [pluginEventsBeforeFirstUnlock2 addObject:v49];

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_65;
      }

      accessorydEventsBeforeFirstUnlock4 = [(ACCAnalyticsLogger *)self pluginEventsBeforeFirstUnlock];
      v50 = [accessorydEventsBeforeFirstUnlock4 count];
      *buf = 134217984;
      v84 = v50;
      v32 = MEMORY[0x277D86220];
      v33 = "[#ACCEventLogger] pluginEventsBeforeFirstUnlock count: %lu";
    }

    _os_log_impl(&dword_233656000, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 0xCu);

LABEL_65:
    eventCacheLock3 = [(ACCAnalyticsLogger *)self eventCacheLock];
    [eventCacheLock3 unlock];

    goto LABEL_66;
  }

LABEL_67:
}

- (void)_logEventNamed:(id)named withAttributes:(id)attributes
{
  namedCopy = named;
  attributesCopy = attributes;
  objc_initWeak(&location, self);
  loggingQueue = [(ACCAnalyticsLogger *)self loggingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ACCAnalyticsLogger__logEventNamed_withAttributes___block_invoke;
  block[3] = &unk_2789E8780;
  objc_copyWeak(&v15, &location);
  v12 = attributesCopy;
  selfCopy = self;
  v14 = namedCopy;
  v9 = namedCopy;
  v10 = attributesCopy;
  dispatch_async(loggingQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __52__ACCAnalyticsLogger__logEventNamed_withAttributes___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ACCAnalyticsLogger__logEventNamed_withAttributes___block_invoke_107;
  block[3] = &unk_2789E8758;
  block[4] = WeakRetained;
  v14 = *(a1 + 48);
  v5 = v3;
  v15 = v5;
  v16 = &v17;
  dispatch_sync(v4, block);
  v6 = [MEMORY[0x277CBEAA8] date];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = v18[5];
    *buf = 138412290;
    v24 = v7;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[#ACCEventLogger] ACCEventLogging: figaroDate %@", buf, 0xCu);
  }

  if (!v18[5])
  {
    [WeakRetained resetUploadDateAndClearDBEntries:0 dueToError:1];
    goto LABEL_16;
  }

  if ([v6 compare:?] == 1)
  {
    v11 = 0;
    v12 = 0;
    v8 = [WeakRetained forceUploadWithError:&v11 httpStatusCode:&v12];
    v9 = v11;
    if ((v8 & 1) == 0)
    {
      if ((v12 - 400) > 0x63)
      {
        v10 = 0;
LABEL_12:
        [WeakRetained resetUploadDateAndClearDBEntries:v10 dueToError:v8 ^ 1u];
        if (v9 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = v9;
          _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] ACCEventLogging: failed with error: %@", buf, 0xCu);
        }

        goto LABEL_16;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __52__ACCAnalyticsLogger__logEventNamed_withAttributes___block_invoke_cold_1(&v12);
      }
    }

    v10 = 1;
    goto LABEL_12;
  }

LABEL_16:

  _Block_object_dispose(&v17, 8);
}

void __52__ACCAnalyticsLogger__logEventNamed_withAttributes___block_invoke_107(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1 && (*(v1 + 88) & 2) == 0 && ([*(v1 + 80) containsObject:*(a1 + 40)] & 1) == 0)
  {
    v3 = [*(a1 + 32) eventDictForEventName:*(a1 + 40) withAttributes:*(a1 + 48)];
    v4 = [*(a1 + 32) eventDictWithBlacklistedFieldsStrippedFrom:v3];
    v5 = [*(*(a1 + 32) + 8) allEvents];
    v6 = [v5 count];

    [*(*(a1 + 32) + 8) addEventDict:v4 toTable:@"all_events"];
    v7 = [*(*(a1 + 32) + 8) allEvents];
    v8 = [v7 count];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = v8;
      _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] database entry count: %lu", &v12, 0xCu);
    }

    if (v8 > 0x3E7 || v6 == 999)
    {
      if ((v6 != 999 || v8 != 999) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __52__ACCAnalyticsLogger__logEventNamed_withAttributes___block_invoke_107_cold_1(v8);
      }

      [*(*(a1 + 32) + 8) incrementWrapFailureCount];
    }

    else
    {
      [*(*(a1 + 32) + 8) incrementSuccessCount];
    }

    v9 = [*(*(a1 + 32) + 8) uploadDate];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

- (void)resetUploadDateAndClearDBEntries:(BOOL)entries dueToError:(BOOL)error
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ACCAnalyticsLogger_resetUploadDateAndClearDBEntries_dueToError___block_invoke;
  block[3] = &unk_2789E87A8;
  objc_copyWeak(&v9, &location);
  entriesCopy = entries;
  errorCopy = error;
  dispatch_sync(queue, block);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __66__ACCAnalyticsLogger_resetUploadDateAndClearDBEntries_dueToError___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 40) == 1)
    {
      [WeakRetained[1] clearAllData];
    }

    if (*(a1 + 41) != 1)
    {
      v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v3[6]];
      [v3[1] setUploadDate:v5];
      goto LABEL_8;
    }

    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v3[7]];
    [v3[1] setUploadDate:v4];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3[1] uploadDate];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] ACCEventLogging: next analytic sync event: %@", &v6, 0xCu);
LABEL_8:
    }
  }
}

- (id)eventDictForEventName:(id)name withAttributes:(id)attributes
{
  if (attributes)
  {
    nameCopy = name;
    dictionary = [attributes mutableCopy];
  }

  else
  {
    v9 = MEMORY[0x277CBEB38];
    nameCopy2 = name;
    dictionary = [v9 dictionary];
  }

  v11 = dictionary;
  [dictionary setObject:self->_figaroTopicName forKeyedSubscript:@"topic"];
  [v11 setObject:name forKeyedSubscript:@"eventType"];

  v12 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v15 = [v12 numberWithDouble:v14 * 1000.0];
  [v11 setObject:v15 forKeyedSubscript:@"eventTime"];

  metricsBase = self->_metricsBase;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __59__ACCAnalyticsLogger_eventDictForEventName_withAttributes___block_invoke;
  v19[3] = &unk_2789E87D0;
  v17 = v11;
  v20 = v17;
  [(NSDictionary *)metricsBase enumerateKeysAndObjectsUsingBlock:v19];

  return v17;
}

void __59__ACCAnalyticsLogger_eventDictForEventName_withAttributes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (!v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

- (id)eventDictWithBlacklistedFieldsStrippedFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [from mutableCopy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_blacklistedFields;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 removeObjectForKey:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)setDateProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ACCAnalyticsLogger_setDateProperty_forKey___block_invoke;
  block[3] = &unk_2789E87F8;
  block[4] = self;
  v12 = propertyCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = propertyCopy;
  dispatch_sync(queue, block);
}

- (id)datePropertyForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ACCAnalyticsLogger_datePropertyForKey___block_invoke;
  block[3] = &unk_2789E8820;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __41__ACCAnalyticsLogger_datePropertyForKey___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 8) datePropertyForKey:a1[5]];

  return MEMORY[0x2821F96F8]();
}

- (NSURL)figaroUploadURL
{
  v31[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  figaroUploadURL = self->_figaroUploadURL;
  if (figaroUploadURL)
  {
    v4 = figaroUploadURL;
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = dispatch_semaphore_create(0);
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = __Block_byref_object_copy_;
    v27[4] = __Block_byref_object_dispose_;
    v28 = 0;
    ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    v30 = @"User-Agent";
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"accessoryd/%s", "1.1"];
    v31[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    [ephemeralSessionConfiguration setHTTPAdditionalHeaders:v8];

    v9 = [MEMORY[0x277CCAD30] sessionWithConfiguration:ephemeralSessionConfiguration delegate:self delegateQueue:0];
    v10 = self->_figaroBagURL;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    v26 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __37__ACCAnalyticsLogger_figaroUploadURL__block_invoke;
    v15[3] = &unk_2789E8848;
    objc_copyWeak(&v20, &location);
    v18 = v27;
    v11 = v5;
    v16 = v11;
    v19 = &v21;
    v12 = v9;
    v17 = v12;
    v13 = [v12 dataTaskWithURL:v10 completionHandler:v15];
    [v13 resume];
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    v4 = v22[5];

    objc_destroyWeak(&v20);
    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(v27, 8);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __37__ACCAnalyticsLogger_figaroUploadURL__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    goto LABEL_35;
  }

  if (!v6 || v7)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
    goto LABEL_27;
  }

  v9 = *(*(a1 + 48) + 8);
  obj = *(v9 + 40);
  v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || *(*(*(a1 + 48) + 8) + 40))
  {
LABEL_26:

LABEL_27:
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
LABEL_34:
        dispatch_semaphore_signal(*(a1 + 32));
        [*(a1 + 40) invalidateAndCancel];
        goto LABEL_35;
      }

      *buf = 0;
      v28 = MEMORY[0x277D86220];
      v29 = "[#ACCEventLogger] Unable to fetch figaro endpoint";
    }

    else
    {
      if (*(*(*(a1 + 56) + 8) + 40) || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      *buf = 0;
      v28 = MEMORY[0x277D86220];
      v29 = "[#ACCEventLogger] Malformed config payload!";
    }

    _os_log_impl(&dword_233656000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 2u);
    goto LABEL_34;
  }

  if ((WeakRetained[11] & 8) != 0)
  {
LABEL_19:
    v21 = [v10 objectForKeyedSubscript:@"metricsBase"];
    v22 = WeakRetained[8];
    WeakRetained[8] = v21;

    v23 = [v10 objectForKeyedSubscript:@"metricsUrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [v23 stringByAppendingFormat:@"/2/%@", WeakRetained[3]];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v24;
        _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] got metrics endpoint: %@", buf, 0xCu);
      }

      v25 = [MEMORY[0x277CBEBC0] URLWithString:v24];
      v26 = [v25 scheme];
      v27 = [v26 isEqualToString:@"https"];

      if (v27)
      {
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), v25);
      }
    }

    goto LABEL_26;
  }

  v11 = [v10 valueForKey:@"disabled"];
  if ([v11 BOOLValue])
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  *(WeakRetained + 88) = WeakRetained[11] & 0xFD | v12;

  if ((WeakRetained[11] & 2) == 0)
  {
    v13 = [v10 valueForKey:@"sendDisabled"];
    v14 = [v13 BOOLValue];

    if (!v14)
    {
      v15 = [v10 valueForKey:@"postFrequency"];
      v16 = [v15 unsignedIntegerValue];

      if (v16 >= 0x3E8)
      {
        WeakRetained[6] = v16 / 0x3E8;
      }

      v17 = [v10 objectForKeyedSubscript:@"blacklistedEvents"];
      v18 = WeakRetained[10];
      WeakRetained[10] = v17;

      v19 = [v10 objectForKeyedSubscript:@"blacklistedFields"];
      v20 = WeakRetained[9];
      WeakRetained[9] = v19;

      goto LABEL_19;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] figaro is disabled", buf, 2u);
  }

  dispatch_semaphore_signal(*(a1 + 32));

LABEL_35:
}

- (BOOL)forceUploadWithError:(id *)error httpStatusCode:(int64_t *)code
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v7 = [(ACCAnalyticsLogger *)self getLoggingJSON:0 error:error];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ACCAnalyticsLogger_forceUploadWithError_httpStatusCode___block_invoke;
  block[3] = &unk_2789E8870;
  v12 = v7;
  selfCopy = self;
  v15 = &v21;
  errorCopy = error;
  v14 = &v17;
  v9 = v7;
  dispatch_sync(queue, block);
  *code = v18[3];
  LOBYTE(code) = *(v22 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return code;
}

id *__58__ACCAnalyticsLogger_forceUploadWithError_httpStatusCode___block_invoke(id *result)
{
  v1 = result;
  v2 = result[4];
  v3 = 0;
  if (v2)
  {
    result = [result[5] _onQueuePostJSON:v2 error:result[8] httpStatusCode:*(result[6] + 1) + 24];
    if (result)
    {
      v3 = 1;
    }
  }

  *(*(v1[7] + 1) + 24) = v3;
  return result;
}

- (BOOL)_onQueuePostJSON:(id)n error:(id *)error httpStatusCode:(int64_t *)code
{
  v34[1] = *MEMORY[0x277D85DE8];
  nCopy = n;
  dispatch_assert_queue_V2(self->_queue);
  ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
  v33 = @"User-Agent";
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"accessoryd/%s", "1.1"];
  v34[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  [ephemeralSessionConfiguration setHTTPAdditionalHeaders:v10];

  v11 = [MEMORY[0x277CCAD30] sessionWithConfiguration:ephemeralSessionConfiguration delegate:self delegateQueue:0];
  figaroUploadURL = [(ACCAnalyticsLogger *)self figaroUploadURL];
  if (figaroUploadURL)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] failed to get a figaro endpoint - using bag instead", buf, 2u);
  }

  figaroUploadURL = [(ACCAnalyticsLogger *)self figaroBagURL];
  if (figaroUploadURL)
  {
LABEL_5:
    v13 = objc_alloc_init(MEMORY[0x277CCAB70]);
    [v13 setURL:figaroUploadURL];
    [v13 setHTTPMethod:@"POST"];
    [v13 setHTTPBody:nCopy];
    v14 = dispatch_semaphore_create(0);
    *buf = 0;
    v30 = buf;
    v31 = 0x2020000000;
    v32 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __60__ACCAnalyticsLogger__onQueuePostJSON_error_httpStatusCode___block_invoke;
    v20[3] = &unk_2789E8898;
    v23 = &v25;
    v24 = buf;
    v15 = v14;
    v21 = v15;
    v22 = v11;
    v16 = [v22 dataTaskWithRequest:v13 completionHandler:v20];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] Figaro start", v19, 2u);
    }

    [v16 resume];
    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    *code = v26[3];
    v17 = v30[24];

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v17 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] failed to get a figaro endpoint", buf, 2u);
      v17 = 0;
    }
  }

  return v17 & 1;
}

void __60__ACCAnalyticsLogger__onQueuePostJSON_error_httpStatusCode___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v9;
      v10 = MEMORY[0x277D86220];
      v11 = "[#ACCEventLogger] Figaro event error: %@";
      v12 = 12;
LABEL_11:
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_DEFAULT, v11, &v17, v12);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v8;
    *(*(*(a1 + 48) + 8) + 24) = [v13 statusCode];
    if ([v13 statusCode] < 200 || objc_msgSend(v13, "statusCode") > 299)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v17 = 67109120;
        LODWORD(v18) = [v13 statusCode];
        v14 = MEMORY[0x277D86220];
        v15 = "[#ACCEventLogger] Figaro error: %d";
        v16 = 8;
        goto LABEL_14;
      }
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        v14 = MEMORY[0x277D86220];
        v15 = "[#ACCEventLogger] Figaro success";
        v16 = 2;
LABEL_14:
        _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_DEFAULT, v15, &v17, v16);
      }
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    v10 = MEMORY[0x277D86220];
    v11 = "[#ACCEventLogger] Received the wrong kind of class";
    v12 = 2;
    goto LABEL_11;
  }

LABEL_16:
  dispatch_semaphore_signal(*(a1 + 32));
  [*(a1 + 40) invalidateAndCancel];
}

+ (void)addBuiltInFieldsToEvent:(id)event
{
  eventCopy = event;
  v4 = eventCopy;
  if (addBuiltInFieldsToEvent__onceToken != -1)
  {
    +[ACCAnalyticsLogger addBuiltInFieldsToEvent:];
    eventCopy = v4;
  }

  if (addBuiltInFieldsToEvent__build)
  {
    [v4 setObject:addBuiltInFieldsToEvent__build forKeyedSubscript:@"build"];
    eventCopy = v4;
  }

  if (addBuiltInFieldsToEvent__productVersion)
  {
    [v4 setObject:addBuiltInFieldsToEvent__productVersion forKeyedSubscript:@"productVersion"];
    eventCopy = v4;
  }

  if (addBuiltInFieldsToEvent__modelNumberStr)
  {
    [v4 setObject:addBuiltInFieldsToEvent__modelNumberStr forKeyedSubscript:@"modelString"];
    eventCopy = v4;
  }

  if (addBuiltInFieldsToEvent__platform)
  {
    [v4 setObject:addBuiltInFieldsToEvent__platform forKeyedSubscript:@"platform"];
    eventCopy = v4;
  }

  if (addBuiltInFieldsToEvent__productType)
  {
    [v4 setObject:addBuiltInFieldsToEvent__productType forKeyedSubscript:@"productType"];
    eventCopy = v4;
  }
}

void __46__ACCAnalyticsLogger_addBuiltInFieldsToEvent___block_invoke()
{
  v0 = _CFCopySystemVersionDictionary();
  if (v0)
  {
    v13 = v0;
    v1 = [v0 objectForKeyedSubscript:*MEMORY[0x277CBEC70]];
    v2 = addBuiltInFieldsToEvent__build;
    addBuiltInFieldsToEvent__build = v1;

    v3 = [v13 objectForKeyedSubscript:*MEMORY[0x277CBEC88]];
    v4 = addBuiltInFieldsToEvent__productVersion;
    addBuiltInFieldsToEvent__productVersion = v3;

    v5 = MGCopyAnswer();
    v6 = addBuiltInFieldsToEvent__modelNumberStr;
    addBuiltInFieldsToEvent__modelNumberStr = v5;

    v7 = MGCopyAnswer();
    v8 = addBuiltInFieldsToEvent__platform;
    addBuiltInFieldsToEvent__platform = v7;

    v9 = MGCopyAnswer();
    v10 = addBuiltInFieldsToEvent__productVersion;
    addBuiltInFieldsToEvent__productVersion = v9;

    v11 = MGCopyAnswer();
    v12 = addBuiltInFieldsToEvent__productType;
    addBuiltInFieldsToEvent__productType = v11;

    v0 = v13;
  }
}

- (id)getLoggingJSON:(BOOL)n error:(id *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ACCAnalyticsLogger_getLoggingJSON_error___block_invoke;
  v7[3] = &unk_2789E88C0;
  v7[5] = &v9;
  v7[6] = error;
  v7[4] = self;
  nCopy = n;
  dispatch_sync(queue, v7);
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __43__ACCAnalyticsLogger_getLoggingJSON_error___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 8) tryToOpenDatabase])
  {
    v32 = [*(*(a1 + 32) + 8) allEvents];
    v30 = [MEMORY[0x277CBEAA8] date];
    v31 = a1;
    [*(*(a1 + 32) + 8) summaryCounts];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v29 = v36 = 0u;
    v2 = [v29 objectEnumerator];
    v3 = [v2 countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = 0;
      v7 = *v34;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v34 != v7)
          {
            objc_enumerationMutation(v2);
          }

          v9 = *(*(&v33 + 1) + 8 * i);
          v10 = [v9 objectForKeyedSubscript:@"success_count"];
          v6 += [v10 integerValue];

          v11 = [v9 objectForKeyedSubscript:@"wrap_failure_count"];
          v5 += [v11 integerValue];
        }

        v4 = [v2 countByEnumeratingWithState:&v33 objects:v40 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = v12;
    v14 = *(*(v31 + 32) + 24);
    if (v14)
    {
      [v12 setObject:v14 forKeyedSubscript:@"topic"];
    }

    else
    {
      v15 = [MEMORY[0x277CBEB68] null];
      [v13 setObject:v15 forKeyedSubscript:@"topic"];
    }

    v16 = MEMORY[0x277CCABB0];
    [v30 timeIntervalSince1970];
    v18 = [v16 numberWithDouble:v17 * 1000.0];
    [v13 setObject:v18 forKeyedSubscript:@"eventTime"];

    [v13 setObject:@"accessoryHealthSummary" forKeyedSubscript:@"eventType"];
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    [v13 setObject:v19 forKeyedSubscript:@"success_count"];

    v20 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    [v13 setObject:v20 forKeyedSubscript:@"wrap_failure_count"];

    [ACCAnalyticsLogger addBuiltInFieldsToEvent:v13];
    v21 = [v32 mutableCopy];
    [v21 addObject:v13];
    v38[0] = @"postTime";
    v22 = MEMORY[0x277CCABB0];
    [v30 timeIntervalSince1970];
    v24 = [v22 numberWithDouble:v23 * 1000.0];
    v38[1] = @"events";
    v39[0] = v24;
    v39[1] = v21;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];

    v26 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v25 options:*(v31 + 56) error:*(v31 + 48)];
    v27 = *(*(v31 + 40) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] can't get logging JSON because database is not openable", buf, 2u);
  }
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  sessionCopy = session;
  challengeCopy = challenge;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [ACCAnalyticsLogger URLSession:didReceiveChallenge:completionHandler:];
  }

  v11 = handlerCopy;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] Figaro challenge", buf, 2u);
  }

  v19 = 0;
  if ([challengeCopy previousFailureCount] >= 1)
  {
    goto LABEL_5;
  }

  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v14 = [authenticationMethod isEqualToString:*MEMORY[0x277CCA720]];

  if (!v14)
  {
    v11[2](v11, 1, 0);
    goto LABEL_12;
  }

  protectionSpace2 = [challengeCopy protectionSpace];
  serverTrust = [protectionSpace2 serverTrust];

  MEMORY[0x2383A9820](serverTrust, &v19);
  if (*(self + 88))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] Force Accepting Figaro Credential", v18, 2u);
    }

    goto LABEL_15;
  }

  if (v19 == 1 || v19 == 4)
  {
LABEL_15:
    v17 = [MEMORY[0x277CCACF0] credentialForTrust:serverTrust];
    (v11)[2](v11, 0, v17);

    goto LABEL_12;
  }

LABEL_5:
  v11[2](v11, 2, 0);
LABEL_12:
}

- (void)setIgnoreServerDisablingMessages:(BOOL)messages
{
  if (messages)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 88) = *(self + 88) & 0xF7 | v3;
}

void __52__ACCAnalyticsLogger__logEventNamed_withAttributes___block_invoke_cold_1(uint64_t *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = 134217984;
  v3 = v1;
  _os_log_error_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[#ACCEventLogger] ACCEventLogging: error %lu forced events to be dropped", &v2, 0xCu);
}

void __52__ACCAnalyticsLogger__logEventNamed_withAttributes___block_invoke_107_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 134218240;
  v2 = a1;
  v3 = 1024;
  v4 = 999;
  _os_log_error_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[#ACCEventLogger] database count: %lu greater than max count allowed (%d)", &v1, 0x12u);
}

@end