@interface DataStallHandler
+ (DataStallHandler)sharedInstance;
+ (id)configureClass:(id)class;
+ (unint64_t)uniqForegroundCountForInterfaceType:(int64_t)type stallType:(unint64_t)stallType;
+ (unint64_t)uniqStallCountForInterfaceType:(int64_t)type stallType:(unint64_t)stallType foregroundOnly:(BOOL)only since:(id)since;
- (BOOL)noteSymptom:(id)symptom;
- (DataStallHandler)init;
- (int)read:(id)read returnedValues:(id)values;
- (unint64_t)uniqStallCountForInterfaceType:(int64_t)type stallType:(unint64_t)stallType foregroundOnly:(BOOL)only since:(id)since;
- (void)_pruneStaleEndpointsFor:(id)for onInterfaceType:(int64_t)type stallType:(unint64_t)stallType;
- (void)_resetInterfaceType:(int64_t)type stallType:(unint64_t)stallType;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)processStall:(id)stall procName:(id)name endpoint:(id)endpoint foreground:(BOOL)foreground interfaceType:(int64_t)type stallType:(unint64_t)stallType;
- (void)removeDelegate:(id)delegate;
@end

@implementation DataStallHandler

- (DataStallHandler)init
{
  v14.receiver = self;
  v14.super_class = DataStallHandler;
  v2 = [(DataStallHandler *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    store = v2->_store;
    v2->_store = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    delegates = v2->_delegates;
    v2->_delegates = v5;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __24__DataStallHandler_init__block_invoke;
    v12[3] = &unk_27898A690;
    v8 = v2;
    v13 = v8;
    v9 = [defaultCenter addObserverForName:@"kNotificationNewConnectivityEpochWiFi" object:0 queue:0 usingBlock:v12];
    wifiEpochObserver = v8->_wifiEpochObserver;
    v8->_wifiEpochObserver = v9;
  }

  return v2;
}

void __24__DataStallHandler_init__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__DataStallHandler_init__block_invoke_2;
  block[3] = &unk_27898A0C8;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __24__DataStallHandler_init__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _resetInterfaceType:1 stallType:1];
  v2 = *(a1 + 32);

  return [v2 _resetInterfaceType:1 stallType:2];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_triggerDisconnectObserver];
  [defaultCenter removeObserver:self->_primaryObserver];

  v4.receiver = self;
  v4.super_class = DataStallHandler;
  [(DataStallHandler *)&v4 dealloc];
}

+ (DataStallHandler)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__DataStallHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_51 != -1)
  {
    dispatch_once(&sharedInstance_pred_51, block);
  }

  v2 = sharedInstance_sharedInstance_53;

  return v2;
}

void __34__DataStallHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_53;
  sharedInstance_sharedInstance_53 = v1;

  v3 = sharedInstance_sharedInstance_53;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[DataStallHandler sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

+ (unint64_t)uniqForegroundCountForInterfaceType:(int64_t)type stallType:(unint64_t)stallType
{
  v6 = +[DataStallHandler sharedInstance];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 uniqStallCountForInterfaceType:type stallType:stallType foregroundOnly:1 since:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (unint64_t)uniqStallCountForInterfaceType:(int64_t)type stallType:(unint64_t)stallType foregroundOnly:(BOOL)only since:(id)since
{
  onlyCopy = only;
  sinceCopy = since;
  v10 = +[DataStallHandler sharedInstance];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 uniqStallCountForInterfaceType:type stallType:stallType foregroundOnly:onlyCopy since:sinceCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)uniqStallCountForInterfaceType:(int64_t)type stallType:(unint64_t)stallType foregroundOnly:(BOOL)only since:(id)since
{
  onlyCopy = only;
  v60 = *MEMORY[0x277D85DE8];
  sinceCopy = since;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  selfCopy = self;
  obj = self->_store;
  v37 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v37)
  {
    v12 = 0;
    v13 = 0;
    v35 = *v47;
    *&v11 = 134218755;
    v32 = v11;
    stallTypeCopy = stallType;
    do
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v47 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v14;
        v12 = *(*(&v46 + 1) + 8 * v14);

        [(DataStallHandler *)selfCopy _pruneStaleEndpointsFor:v12 onInterfaceType:type stallType:stallType];
        v16 = [(NSMutableDictionary *)selfCopy->_store objectForKeyedSubscript:v12];
        v41 = [MEMORY[0x277CBEB58] set];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v42 objects:v58 count:16];
        if (v18)
        {
          v19 = v18;
          v38 = v12;
          v39 = v13;
          v20 = 0;
          v21 = *v43;
          v22 = v41;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              v24 = v20;
              if (*v43 != v21)
              {
                objc_enumerationMutation(v17);
              }

              v20 = *(*(&v42 + 1) + 8 * i);

              if ([v20 interfaceType] == type && (!onlyCopy || objc_msgSend(v20, "foreground")))
              {
                if (!sinceCopy || ([v20 time], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "compare:", sinceCopy), v25, v27 = v26 == 1, v22 = v41, v27))
                {
                  name = [v20 name];
                  [v22 addObject:name];
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v42 objects:v58 count:16];
          }

          while (v19);

          stallType = stallTypeCopy;
          v12 = v38;
          v13 = v39;
        }

        if ([v41 count])
        {
          v29 = rnfLogHandle;
          if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = v32;
            stallTypeCopy2 = stallType;
            v52 = 2048;
            typeCopy = type;
            v54 = 2112;
            v55 = v12;
            v56 = 2113;
            v57 = v41;
            _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_INFO, "Stall symptom: unique stall type (%lu) on interface type (%ld) for %@: %{private}@", buf, 0x2Au);
          }

          v30 = v41;
          v13 += [v41 count];
        }

        else
        {
          v30 = v41;
        }

        v14 = v40 + 1;
        v15 = v12;
      }

      while (v40 + 1 != v37);
      v37 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v37);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_pruneStaleEndpointsFor:(id)for onInterfaceType:(int64_t)type stallType:(unint64_t)stallType
{
  v40 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v8 = [(NSMutableDictionary *)self->_store objectForKeyedSubscript:?];
  v9 = [MEMORY[0x277CBEB58] set];
  date = [MEMORY[0x277CBEAA8] date];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        v17 = v14;
        if (*v28 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v14 = *(*(&v27 + 1) + 8 * i);

        time = [v14 time];
        [time timeIntervalSinceDate:date];
        v20 = v19;

        v21 = -v20;
        if (v20 >= 0.0)
        {
          v21 = v20;
        }

        if (v21 >= 120.0 && [v14 interfaceType] == type && objc_msgSend(v14, "stallType") == stallType)
        {
          [v9 addObject:v14];
          v22 = rnfLogHandle;
          if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413059;
            v32 = forCopy;
            v33 = 2048;
            stallTypeCopy2 = stallType;
            v35 = 2048;
            typeCopy2 = type;
            v37 = 2113;
            v38 = v14;
            _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "Stall symptom: %@ has stale endpoint for stall type (%lu) on interface type (%ld), removing it: %{private}@", buf, 0x2Au);
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v13);
  }

  if ([v9 count])
  {
    [v11 minusSet:v9];
    v23 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = [v9 count];
      *buf = 138413058;
      v32 = forCopy;
      v33 = 2048;
      stallTypeCopy2 = stallType;
      v35 = 2048;
      typeCopy2 = type;
      v37 = 2048;
      v38 = v25;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "Stall symptom: %@ has %lu stale endpoints total for stall type (%lu) on interface type (%ld), removed them", buf, 0x2Au);
    }
  }
}

- (void)_resetInterfaceType:(int64_t)type stallType:(unint64_t)stallType
{
  v40 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  array = [MEMORY[0x277CBEB18] array];
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  selfCopy = self;
  obj = self->_store;
  v27 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v27)
  {
    v9 = 0;
    v25 = *v35;
    do
    {
      v10 = 0;
      v11 = v9;
      do
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * v10);

        v12 = [(NSMutableDictionary *)selfCopy->_store objectForKeyedSubscript:v9];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v13)
        {
          v14 = v13;
          v28 = v10;
          v29 = v9;
          v15 = 0;
          v16 = *v31;
          do
          {
            v17 = 0;
            v18 = v15;
            do
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(v12);
              }

              v15 = *(*(&v30 + 1) + 8 * v17);

              if ([v15 interfaceType] == type && objc_msgSend(v15, "stallType") == stallType)
              {
                goto LABEL_16;
              }

              time = [v15 time];
              [time timeIntervalSinceDate:date];
              v21 = v20;

              v22 = -v21;
              if (v21 >= 0.0)
              {
                v22 = v21;
              }

              if (v22 >= 120.0)
              {
LABEL_16:
                [v8 addObject:v15];
              }

              ++v17;
              v18 = v15;
            }

            while (v14 != v17);
            v14 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v14);

          v10 = v28;
          v9 = v29;
        }

        [v12 minusSet:v8];
        [v8 removeAllObjects];
        if (![v12 count])
        {
          [array addObject:v9];
        }

        ++v10;
        v11 = v9;
      }

      while (v10 != v27);
      v27 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v27);
  }

  [(NSMutableDictionary *)selfCopy->_store removeObjectsForKeys:array];
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = self->_delegates;
  objc_sync_enter(v4);
  if (delegateCopy)
  {
    [(NSMutableSet *)self->_delegates addObject:delegateCopy];
  }

  objc_sync_exit(v4);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = self->_delegates;
  objc_sync_enter(v4);
  if (delegateCopy)
  {
    [(NSMutableSet *)self->_delegates removeObject:delegateCopy];
  }

  objc_sync_exit(v4);
}

- (BOOL)noteSymptom:(id)symptom
{
  v50 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  eventKey = [symptomCopy eventKey];
  v6 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_DATA_STALL"];
  if ([eventKey isEqualToString:v6])
  {
    goto LABEL_4;
  }

  v7 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_ADAPTIVE_WRITE_TIMEOUT"];
  if ([eventKey isEqualToString:v7])
  {

LABEL_4:
    goto LABEL_5;
  }

  v11 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_DNS_FAILED"];
  v12 = [eventKey isEqualToString:v11];

  if (v12)
  {
LABEL_5:
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __32__DataStallHandler_noteSymptom___block_invoke;
    v35[3] = &unk_27898BE68;
    v36 = eventKey;
    selfCopy = self;
    v8 = libnetcoreSymptomTrampoline(symptomCopy, 0, 1, 0, MEMORY[0x277D85CD0], v35);
    if ((v8 & 1) == 0)
    {
      v9 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "Stall symptom: failed to get details", buf, 2u);
      }
    }

    goto LABEL_9;
  }

  v13 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBTRACE_OS_LOG"];
  v14 = [eventKey isEqualToString:v13];

  if (v14)
  {
    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
    v15 = extractLibtraceSymptomElements(symptomCopy, &v34, &v33, &v32, &v31);
    v16 = v34;
    v17 = v33;
    v18 = v32;
    v19 = v31;
    if (v15)
    {
      if (v16 && [(__CFString *)v16 isEqualToString:@"MEDIA_PLAYBACK_STALL"])
      {
        v20 = [InterfaceUtils interfaceTypeForString:v18];
        v21 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413571;
          v39 = v16;
          v40 = 2112;
          v41 = v17;
          v42 = 2048;
          v43 = v20;
          v44 = 2048;
          v45 = 2;
          v46 = 2113;
          v47 = @"unknown";
          v48 = 1024;
          v49 = 1;
          _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "Stall symptom detail: (symName/procName/interfaceType/stallType/endpoint/isFgOrBg): %@/%@/%ld/%lu/%{private}@/%d", buf, 0x3Au);
        }

        [(DataStallHandler *)self processStall:v16 procName:v17 endpoint:@"unknown" foreground:1 interfaceType:v20 stallType:2];
        v22 = +[AppStateMonitor getAppsWithStates];
        v23 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v39 = v22;
          _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "Stall symptom appsWithState: %@", buf, 0xCu);
        }

        goto LABEL_28;
      }

      v30 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v16;
        v26 = "Stall symptom: not a playback stall, no need to process symptom: %@";
        v27 = v30;
        v28 = OS_LOG_TYPE_DEFAULT;
        v29 = 12;
        goto LABEL_27;
      }
    }

    else
    {
      v25 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v26 = "Stall symptom: failed to get libtrace symptom details";
        v27 = v25;
        v28 = OS_LOG_TYPE_ERROR;
        v29 = 2;
LABEL_27:
        _os_log_impl(&dword_23255B000, v27, v28, v26, buf, v29);
      }
    }

LABEL_28:

    v8 = 1;
    goto LABEL_9;
  }

  v24 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_ERROR, "Stall symptom: received symptom is not from libtrace or libnetcore", buf, 2u);
  }

  v8 = 0;
LABEL_9:

  return v8;
}

void __32__DataStallHandler_noteSymptom___block_invoke(uint64_t a1, void *a2, void *a3, int a4, int a5, void *a6, void *a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12)
{
  v49 = *MEMORY[0x277D85DE8];
  v17 = a2;
  v18 = a3;
  v19 = a6;
  v32 = a7;
  v20 = a9;
  v31 = a12;
  if (a5)
  {
    v21 = [objc_alloc(MEMORY[0x277CD91D8]) initWithInterfaceIndex:a5];
    v22 = [v21 type];
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a1 + 32);
  v24 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_DATA_STALL"];
  LODWORD(v23) = [v23 isEqualToString:v24];

  if (v23)
  {
    if (!v19)
    {
      v19 = @"unknown";
    }

    v25 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138414083;
      v34 = v17;
      v35 = 2112;
      v36 = v18;
      v37 = 1024;
      v38 = a4;
      v39 = 1024;
      v40 = a5;
      v41 = 2048;
      v42 = v22;
      v43 = 2048;
      v44 = 1;
      v45 = 2113;
      v46 = v19;
      v47 = 2112;
      v48 = v20;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEFAULT, "Stall symptom detail: (symName/procName/ePid/ifIndex/interfaceType/stallType/endpoint/isFgOrBg): %@/%@/%d/%d/%ld/%lu/%{private}@/%@", buf, 0x4Au);
    }

    if (v20)
    {
      v26 = [v20 BOOLValue];
    }

    else
    {
      v26 = 0;
    }

    [*(a1 + 40) processStall:v17 procName:v18 endpoint:v19 foreground:v26 interfaceType:v22 stallType:1];
  }

  else
  {
    v27 = *(a1 + 32);
    v28 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_DNS_FAILED"];
    LODWORD(v27) = [v27 isEqualToString:v28];

    if (v27 && v22 == 2)
    {
      v29 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v34 = 0;
        v35 = 2048;
        v36 = 1;
        _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEFAULT, "Stall symptom: Relay info on data stall %lu, DNS failure %lu", buf, 0x16u);
      }

      [NetworkAnalyticsEngine relayDataStallState:0 dnsFailureState:1];
    }
  }
}

- (void)processStall:(id)stall procName:(id)name endpoint:(id)endpoint foreground:(BOOL)foreground interfaceType:(int64_t)type stallType:(unint64_t)stallType
{
  foregroundCopy = foreground;
  v57 = *MEMORY[0x277D85DE8];
  stallCopy = stall;
  nameCopy = name;
  endpointCopy = endpoint;
  if (nameCopy)
  {
    v15 = [(NSMutableDictionary *)self->_store objectForKeyedSubscript:nameCopy];
    v16 = [[TimedEndpoint alloc] initWithEndpoint:endpointCopy trigger:stallCopy interfaceType:type stallType:stallType foreground:foregroundCopy];
    if (!v15)
    {
      v25 = [MEMORY[0x277CBEB58] setWithObject:v16];
      [(NSMutableDictionary *)self->_store setObject:v25 forKeyedSubscript:nameCopy];

      v26 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v48 = stallCopy;
        v49 = 2048;
        stallTypeCopy4 = stallType;
        v51 = 2048;
        typeCopy4 = type;
        v53 = 2112;
        typeCopy2 = nameCopy;
        _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "Stall symptom %@: added unique stall type (%lu) on interface type (%ld) for new process %@", buf, 0x2Au);
      }

      v19 = 1;
LABEL_15:

      v28 = type == 2 && v19;
      if (stallType == 1 && v28 && foregroundCopy)
      {
        v29 = [DataStallHandler uniqForegroundCountForInterfaceType:2 stallType:1];
        if (v29 >= 2)
        {
          v30 = rnfLogHandle;
          if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218496;
            v48 = 1;
            v49 = 2048;
            stallTypeCopy4 = v29;
            v51 = 2048;
            typeCopy4 = 0;
            _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEFAULT, "Stall symptom: Relay info on data stall %lu (uniqCount = %lu), DNS failure %lu", buf, 0x20u);
          }

          [NetworkAnalyticsEngine relayDataStallState:1 dnsFailureState:0];
LABEL_32:
          if (!v19)
          {
            goto LABEL_47;
          }

LABEL_35:
          obj = [(DataStallHandler *)self delegates];
          objc_sync_enter(obj);
          v32 = rnfLogHandle;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            delegates = [(DataStallHandler *)self delegates];
            *buf = 138412290;
            v48 = delegates;
            _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEFAULT, "Uniq stall, iterate over delegates %@", buf, 0xCu);
          }

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          delegates2 = [(DataStallHandler *)self delegates];
          v35 = [delegates2 countByEnumeratingWithState:&v42 objects:v46 count:16];
          if (v35)
          {
            v36 = *v43;
            do
            {
              for (i = 0; i != v35; ++i)
              {
                if (*v43 != v36)
                {
                  objc_enumerationMutation(delegates2);
                }

                v38 = *(*(&v42 + 1) + 8 * i);
                if (objc_opt_respondsToSelector())
                {
                  [v38 checkUniqueStallCountOnInterfaceType:type stallType:stallType];
                }
              }

              v35 = [delegates2 countByEnumeratingWithState:&v42 objects:v46 count:16];
            }

            while (v35);
          }

          objc_sync_exit(obj);
          goto LABEL_47;
        }
      }

      else
      {
        v31 = type == 1 && v19;
        if (stallType == 1 && v31 && foregroundCopy)
        {
          internal_symptom_create();
          internal_symptom_send();
          goto LABEL_32;
        }
      }

      if (!v19)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    }

    v17 = [v15 member:v16];
    v18 = v17;
    v19 = v17 == 0;
    if (v17)
    {
      [v17 touch];
      v20 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413315;
        v48 = stallCopy;
        v49 = 2112;
        stallTypeCopy4 = nameCopy;
        v51 = 2048;
        typeCopy4 = stallType;
        v53 = 2048;
        typeCopy2 = type;
        v55 = 2113;
        v56 = v16;
        v21 = "Stall symptom %@: %@ has preexisting endpoint match for stall type (%lu) within time range on interface type (%ld), updating timestamp: %{private}@";
        v22 = v20;
        v23 = 52;
LABEL_13:
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
      }
    }

    else
    {
      [(DataStallHandler *)self _pruneStaleEndpointsFor:nameCopy onInterfaceType:type stallType:stallType];
      [v15 addObject:v16];
      v27 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v48 = stallCopy;
        v49 = 2048;
        stallTypeCopy4 = stallType;
        v51 = 2048;
        typeCopy4 = type;
        v53 = 2112;
        typeCopy2 = nameCopy;
        v21 = "Stall symptom %@: added unique stall type (%lu) on interface type (%ld) for existing process %@ ";
        v22 = v27;
        v23 = 42;
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

  v24 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v48 = stallCopy;
    v49 = 2048;
    stallTypeCopy4 = stallType;
    v51 = 2048;
    typeCopy4 = type;
    v53 = 2112;
    typeCopy2 = 0;
    v55 = 1024;
    LODWORD(v56) = foregroundCopy;
    _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "Stall symptom %@: drop of stall type (%lu) on interface type (%ld) due to either procname (%@) or foreground (%d)", buf, 0x30u);
  }

LABEL_47:
}

- (int)read:(id)read returnedValues:(id)values
{
  valuesCopy = values;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [valuesCopy setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

@end