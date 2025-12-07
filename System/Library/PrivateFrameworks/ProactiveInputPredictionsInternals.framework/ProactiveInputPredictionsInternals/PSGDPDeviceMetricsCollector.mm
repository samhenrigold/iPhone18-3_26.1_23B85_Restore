@interface PSGDPDeviceMetricsCollector
+ (BOOL)recordEngagementMetrics:(id)metrics selectedRecorder:(id)recorder ignoredRecorder:(id)ignoredRecorder;
+ (BOOL)recordResponse:(id)response numTimesToLog:(unint64_t)log recorder:(id)recorder prefix:(id)prefix;
+ (BOOL)sendEngagementToDPUsingData:(id)data;
+ (id)getActiveTrialInformationWithWithXPCActivityManager:(id)manager activity:(id)activity;
+ (id)getPrefixFromRolloutID:(id)d factorPackId:(id)id experimentId:(id)experimentId treatmentId:(id)treatmentId;
+ (id)onCompletionWithXPCActivityManager:(id)manager activity:(id)activity engagementMetrics:(id)metrics idsService:(id)service destinationDevice:(id)device;
+ (id)onDeltaRowWithXPCActivityManager:(id)manager activity:(id)activity engagementMetrics:(id)metrics;
+ (id)recorderForKey:(id)key;
- (BOOL)collectDeviceQREngagement:(id)engagement;
- (PSGDPDeviceMetricsCollector)initWithActivityManager:(id)manager;
- (PSGDPDeviceMetricsCollector)initWithActivityManager:(id)manager idsService:(id)service queue:(id)queue store:(id)store;
- (id)initAsDelegate;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
@end

@implementation PSGDPDeviceMetricsCollector

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  dataCopy = data;
  dCopy = d;
  v12 = psg_default_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [accountCopy serviceName];
    v14 = 138412802;
    v15 = serviceName;
    v16 = 2112;
    v17 = dCopy;
    v18 = 2048;
    v19 = [dataCopy length];
    _os_log_impl(&dword_260D36000, v12, OS_LOG_TYPE_DEFAULT, "Received file for service %@, identifier: %@; size: %tu", &v14, 0x20u);
  }

  [PSGDPDeviceMetricsCollector sendEngagementToDPUsingData:dataCopy];
}

- (BOOL)collectDeviceQREngagement:(id)engagement
{
  v36 = *MEMORY[0x277D85DE8];
  engagementCopy = engagement;
  v5 = psg_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D36000, v5, OS_LOG_TYPE_DEFAULT, "Begin syncing QR engagement data", buf, 2u);
  }

  v6 = [(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:engagementCopy];
  v7 = psg_default_log_handle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_260D36000, v7, OS_LOG_TYPE_DEFAULT, "Begin fetching device experiment information", buf, 2u);
    }

    v10 = [PSGDPDeviceMetricsCollector getActiveTrialInformationWithWithXPCActivityManager:self->_xpcActivityManager activity:engagementCopy];
    v11 = v10;
    if (v10)
    {
      if (![v10 count])
      {
        v15 = psg_default_log_handle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_260D36000, v15, OS_LOG_TYPE_DEFAULT, "Early returning on engagement data sync since no Trial information associated with device", buf, 2u);
        }

        v9 = 1;
        goto LABEL_28;
      }

      v12 = [(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:engagementCopy];
      v13 = psg_default_log_handle();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (!v12)
      {
        if (v14)
        {
          *buf = 0;
          _os_log_impl(&dword_260D36000, v13, OS_LOG_TYPE_DEFAULT, "Begin retrieving and recording delta records from DB", buf, 2u);
        }

        v16 = [PSGDPDeviceMetricsCollector recorderForKey:@"com.apple.proactive.messages.ZKWSelected"];
        v17 = [PSGDPDeviceMetricsCollector recorderForKey:@"com.apple.proactive.messages.ZKWIgnored"];
        v18 = v17;
        if (v16 && v17)
        {
          store = self->_store;
          v20 = [PSGDPDeviceMetricsCollector onDeltaRowWithXPCActivityManager:self->_xpcActivityManager activity:engagementCopy engagementMetrics:v11];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __57__PSGDPDeviceMetricsCollector_collectDeviceQREngagement___block_invoke;
          v22[3] = &unk_279ABDFD0;
          v23 = v11;
          selfCopy = self;
          v25 = engagementCopy;
          v26 = v16;
          v27 = v18;
          v9 = [(SGQuickResponsesStore *)store deltaForResponsesOnRow:v20 completion:v22];
        }

        else
        {
          v20 = psg_default_log_handle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            *buf = 138413058;
            v29 = @"com.apple.proactive.messages.ZKWSelected";
            v30 = 1024;
            v31 = v16 == 0;
            v32 = 2112;
            v33 = @"com.apple.proactive.messages.ZKWIgnored";
            v34 = 1024;
            v35 = v18 == 0;
            _os_log_fault_impl(&dword_260D36000, v20, OS_LOG_TYPE_FAULT, "Bailing out because unable to create recorder for some key(s), %@: %d, %@: %d", buf, 0x22u);
          }

          v9 = 0;
        }

        goto LABEL_28;
      }

      if (v14)
      {
        *buf = 0;
        _os_log_impl(&dword_260D36000, v13, OS_LOG_TYPE_DEFAULT, "Deferring engagement data syncing after successful experiment id retrieval", buf, 2u);
      }
    }

    [(SGXPCActivityManagerProtocol *)self->_xpcActivityManager setState:engagementCopy state:3];
    v9 = 0;
LABEL_28:

    goto LABEL_29;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&dword_260D36000, v7, OS_LOG_TYPE_DEFAULT, "Deferring engagement data syncing during eager initial check", buf, 2u);
  }

  [(SGXPCActivityManagerProtocol *)self->_xpcActivityManager setState:engagementCopy state:3];
  v9 = 0;
LABEL_29:

  return v9;
}

uint64_t __57__PSGDPDeviceMetricsCollector_collectDeviceQREngagement___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [*(a1 + 32) allValues];
  v2 = [obj countByEnumeratingWithState:&v24 objects:v42 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v25;
    v6 = 0x279ABD000uLL;
    *&v3 = 138413826;
    v20 = v3;
    v21 = *v25;
    while (2)
    {
      v7 = 0;
      v22 = v4;
      do
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        if ([*(*(a1 + 40) + 8) shouldDefer:{*(a1 + 48), v20}])
        {
          v18 = psg_default_log_handle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_260D36000, v18, OS_LOG_TYPE_DEFAULT, "Deferring engagement data recording in the middle of recording", buf, 2u);
          }

          [*(*(a1 + 40) + 8) setState:*(a1 + 48) state:3];
          return 0;
        }

        v9 = [*(v6 + 3104) recordEngagementMetrics:v8 selectedRecorder:*(a1 + 56) ignoredRecorder:*(a1 + 64)];
        v10 = psg_default_log_handle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v8 lang];
          v12 = [v8 rolloutId];
          v13 = [v8 factorPackId];
          v14 = [v8 experimentId];
          v15 = [v8 treatmentId];
          v16 = [v8 engagementDeltas];
          v17 = [v16 count];
          *buf = v20;
          v29 = v11;
          v30 = 2112;
          v31 = v12;
          v32 = 2112;
          v33 = v13;
          v34 = 2112;
          v35 = v14;
          v36 = 2112;
          v37 = v15;
          v38 = 2048;
          v39 = v17;
          v40 = 1024;
          v41 = v9;
          _os_log_impl(&dword_260D36000, v10, OS_LOG_TYPE_DEFAULT, "Recorded engagement metrics running in language %@, rollout %@, factor pack %@, experiment %@, treatment %@, records %tu, success %d", buf, 0x44u);

          v5 = v21;
          v4 = v22;

          v6 = 0x279ABD000;
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v24 objects:v42 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  [*(*(a1 + 40) + 8) setState:*(a1 + 48) state:5];
  return 0;
}

- (PSGDPDeviceMetricsCollector)initWithActivityManager:(id)manager idsService:(id)service queue:(id)queue store:(id)store
{
  managerCopy = manager;
  serviceCopy = service;
  queueCopy = queue;
  storeCopy = store;
  v18.receiver = self;
  v18.super_class = PSGDPDeviceMetricsCollector;
  v15 = [(PSGDPDeviceMetricsCollector *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_xpcActivityManager, manager);
    objc_storeStrong(&v16->_idsService, service);
    objc_storeStrong(&v16->_store, store);
    objc_storeStrong(&v16->_queue, queue);
    [(IDSService *)v16->_idsService addDelegate:v16 queue:v16->_queue];
  }

  return v16;
}

- (PSGDPDeviceMetricsCollector)initWithActivityManager:(id)manager
{
  v4 = MEMORY[0x277D18778];
  managerCopy = manager;
  v6 = [[v4 alloc] initWithService:@"com.apple.private.alloy.suggestions.smartreplies"];
  mEMORY[0x277D025B8] = [MEMORY[0x277D025B8] sharedInstance];
  v8 = dispatch_queue_create("com.apple.dpwatchmetricscollection.idsSend", 0);
  v9 = [(PSGDPDeviceMetricsCollector *)self initWithActivityManager:managerCopy idsService:v6 queue:v8 store:mEMORY[0x277D025B8]];

  return v9;
}

- (id)initAsDelegate
{
  v8.receiver = self;
  v8.super_class = PSGDPDeviceMetricsCollector;
  v2 = [(PSGDPDeviceMetricsCollector *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.suggestions.smartreplies"];
    idsService = v2->_idsService;
    v2->_idsService = v3;

    v5 = dispatch_queue_create("com.apple.dpwatchmetricscollection.idsSend", 0);
    queue = v2->_queue;
    v2->_queue = v5;

    [(IDSService *)v2->_idsService addDelegate:v2 queue:v2->_queue];
  }

  return v2;
}

+ (BOOL)sendEngagementToDPUsingData:(id)data
{
  v96 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v3 = psg_default_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D36000, v3, OS_LOG_TYPE_DEFAULT, "Begin sending QR engagement data to DP", buf, 2u);
  }

  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v5 initWithObjects:{v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v4);
  v13 = psg_default_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D36000, v13, OS_LOG_TYPE_DEFAULT, "Begin payload deserialization", buf, 2u);
  }

  v82 = 0;
  v14 = dataCopy;
  v15 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:dataCopy error:&v82];
  v16 = v82;
  [v15 setRequiresSecureCoding:1];
  [v15 setClass:objc_opt_class() forClassName:@"SGQuickResponsesEngagementMetrics"];
  v17 = objc_autoreleasePoolPush();
  v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v17);
  v19 = [v15 decodeDictionaryWithKeysOfClasses:v18 objectsOfClasses:v12 forKey:*MEMORY[0x277CCA308]];

  if (v16)
  {
    v20 = psg_default_log_handle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v84 = v16;
      _os_log_fault_impl(&dword_260D36000, v20, OS_LOG_TYPE_FAULT, "Unable to deserialize engagement data: %@", buf, 0xCu);
    }

    v21 = 0;
    goto LABEL_76;
  }

  v22 = psg_default_log_handle();
  v20 = v22;
  if (v19)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260D36000, v20, OS_LOG_TYPE_DEFAULT, "Successfully deserialized payload", buf, 2u);
    }

    v23 = psg_default_log_handle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260D36000, v23, OS_LOG_TYPE_DEFAULT, "Begin payload content validation", buf, 2u);
    }

    [v19 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_54];
    v20 = [v19 objectForKeyedSubscript:@"compatVer"];
    if (!v20)
    {
      v24 = psg_default_log_handle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260D36000, v24, OS_LOG_TYPE_DEFAULT, "Compatability version is not in payload. Assuming payload is legacy and inferring version to be 0", buf, 2u);
      }

      v20 = &unk_28734B0B8;
    }

    v25 = psg_default_log_handle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v84 = v20;
      v85 = 1024;
      *v86 = 2;
      _os_log_impl(&dword_260D36000, v25, OS_LOG_TYPE_DEFAULT, "Received compatability version %@ with local compatability version %d", buf, 0x12u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v20 intValue]!= 2)
      {
        v35 = psg_default_log_handle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_260D36000, v35, OS_LOG_TYPE_DEFAULT, "Compatability versions do not match, proceeding to early return", buf, 2u);
        }

        v21 = 1;
        goto LABEL_75;
      }

      v26 = [v19 objectForKeyedSubscript:@"responses"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v50 = psg_default_log_handle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
        {
          v58 = objc_opt_class();
          NSStringFromClass(v58);
          v60 = v59 = v20;
          *buf = 138412290;
          v84 = v60;
          _os_log_fault_impl(&dword_260D36000, v50, OS_LOG_TYPE_FAULT, "Deserialized engagementMetrics was of class %@, something went wrong", buf, 0xCu);

          v20 = v59;
        }

        v21 = 0;
LABEL_59:
        v35 = v26;
        goto LABEL_75;
      }

      if (v26)
      {
        if ([v26 count])
        {
          v65 = v20;
          v66 = v19;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          obj = v26;
          v27 = [obj countByEnumeratingWithState:&v78 objects:v95 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v79;
            while (2)
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v79 != v29)
                {
                  objc_enumerationMutation(obj);
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v52 = psg_default_log_handle();
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
                  {
                    v61 = objc_opt_class();
                    v62 = NSStringFromClass(v61);
                    *buf = 138412290;
                    v84 = v62;
                    _os_log_fault_impl(&dword_260D36000, v52, OS_LOG_TYPE_FAULT, "Deserialized engagementMetrics elements was of class %@, something went wrong", buf, 0xCu);
                  }

                  v35 = obj;
                  v21 = 0;
                  v19 = v66;
                  goto LABEL_74;
                }
              }

              v28 = [obj countByEnumeratingWithState:&v78 objects:v95 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }

          v31 = psg_default_log_handle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_260D36000, v31, OS_LOG_TYPE_DEFAULT, "Successfully validated payload content", buf, 2u);
          }

          v32 = [PSGDPDeviceMetricsCollector recorderForKey:@"com.apple.proactive.messages.SmartReplySelected"];
          v33 = [PSGDPDeviceMetricsCollector recorderForKey:@"com.apple.proactive.messages.SmartReplyIgnored"];
          v34 = v33;
          if (v32 && v33)
          {
            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v35 = obj;
            v72 = obj;
            v36 = [v72 countByEnumeratingWithState:&v74 objects:v94 count:16];
            if (!v36)
            {
              v21 = 1;
              v19 = v66;
LABEL_73:

LABEL_74:
              v20 = v65;
              goto LABEL_75;
            }

            v63 = v15;
            v64 = v12;
            v37 = *v75;
            v21 = 1;
            v38 = v36;
            v69 = v34;
            v70 = v32;
            v68 = *v75;
            do
            {
              v39 = 0;
              v71 = v38;
              do
              {
                if (*v75 != v37)
                {
                  objc_enumerationMutation(v72);
                }

                v40 = *(*(&v74 + 1) + 8 * v39);
                v41 = [PSGDPDeviceMetricsCollector recordEngagementMetrics:v40 selectedRecorder:v32 ignoredRecorder:v34];
                v42 = psg_default_log_handle();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  lang = [v40 lang];
                  rolloutId = [v40 rolloutId];
                  factorPackId = [v40 factorPackId];
                  experimentId = [v40 experimentId];
                  treatmentId = [v40 treatmentId];
                  engagementDeltas = [v40 engagementDeltas];
                  v49 = [engagementDeltas count];
                  *buf = 138413826;
                  v84 = lang;
                  v85 = 2112;
                  *v86 = rolloutId;
                  *&v86[8] = 2112;
                  *&v86[10] = factorPackId;
                  *&v86[18] = 2112;
                  v87 = experimentId;
                  v88 = 2112;
                  v89 = treatmentId;
                  v90 = 2048;
                  v91 = v49;
                  v92 = 1024;
                  v93 = v41;
                  _os_log_impl(&dword_260D36000, v42, OS_LOG_TYPE_DEFAULT, "Recorded engagement metrics running in language %@, rollout %@, factor pack %@, experiment %@, treatment %@, records %tu, success %d", buf, 0x44u);

                  v34 = v69;
                  v38 = v71;

                  v32 = v70;
                  v37 = v68;
                }

                v21 &= v41;
                ++v39;
              }

              while (v38 != v39);
              v38 = [v72 countByEnumeratingWithState:&v74 objects:v94 count:16];
            }

            while (v38);
            v14 = dataCopy;
            v16 = 0;
            v12 = v64;
            v15 = v63;
            v19 = v66;
          }

          else
          {
            v72 = psg_default_log_handle();
            v19 = v66;
            if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
            {
              *buf = 138413058;
              v84 = @"com.apple.proactive.messages.SmartReplySelected";
              v85 = 1024;
              *v86 = v32 == 0;
              *&v86[4] = 2112;
              *&v86[6] = @"com.apple.proactive.messages.SmartReplyIgnored";
              *&v86[14] = 1024;
              *&v86[16] = v34 == 0;
              _os_log_fault_impl(&dword_260D36000, v72, OS_LOG_TYPE_FAULT, "Bailing out because unable to create recorder for some key(s), %@: %d, %@: %d", buf, 0x22u);
            }

            v21 = 0;
          }

          v35 = obj;
          goto LABEL_73;
        }

        v56 = psg_default_log_handle();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_260D36000, v56, OS_LOG_TYPE_DEFAULT, "Received empty engagement rate data to process", buf, 2u);
        }

        v21 = 1;
        goto LABEL_59;
      }

      v51 = psg_default_log_handle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_260D36000, v51, OS_LOG_TYPE_ERROR, "Deserialized engagementMetrics was nil, something went wrong", buf, 2u);
      }

      v35 = 0;
    }

    else
    {
      v35 = psg_default_log_handle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        v53 = objc_opt_class();
        NSStringFromClass(v53);
        v55 = v54 = v35;
        *buf = 138412290;
        v84 = v55;
        _os_log_fault_impl(&dword_260D36000, v54, OS_LOG_TYPE_FAULT, "Deserialized compatability version was of class %@, something went wrong", buf, 0xCu);

        v35 = v54;
      }
    }

    v21 = 0;
LABEL_75:

    goto LABEL_76;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_260D36000, v20, OS_LOG_TYPE_FAULT, "Received empty payload", buf, 2u);
  }

  v21 = 1;
LABEL_76:

  return v21;
}

void __59__PSGDPDeviceMetricsCollector_sendEngagementToDPUsingData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = psg_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_260D36000, v6, OS_LOG_TYPE_DEFAULT, "Payload key %@ is of class %@", &v9, 0x16u);
  }
}

+ (id)onCompletionWithXPCActivityManager:(id)manager activity:(id)activity engagementMetrics:(id)metrics idsService:(id)service destinationDevice:(id)device
{
  managerCopy = manager;
  activityCopy = activity;
  metricsCopy = metrics;
  serviceCopy = service;
  deviceCopy = device;
  v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SGDPDeviceMetricsCollectorErrorDomain" code:0 userInfo:0];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __122__PSGDPDeviceMetricsCollector_onCompletionWithXPCActivityManager_activity_engagementMetrics_idsService_destinationDevice___block_invoke;
  v25[3] = &unk_279ABDFA8;
  v26 = metricsCopy;
  v27 = managerCopy;
  v28 = activityCopy;
  v29 = v16;
  v30 = deviceCopy;
  v31 = serviceCopy;
  v17 = serviceCopy;
  v18 = deviceCopy;
  v19 = v16;
  v20 = activityCopy;
  v21 = managerCopy;
  v22 = metricsCopy;
  v23 = MEMORY[0x2666EDC40](v25);

  return v23;
}

__CFString *__122__PSGDPDeviceMetricsCollector_onCompletionWithXPCActivityManager_activity_engagementMetrics_idsService_destinationDevice___block_invoke(uint64_t a1)
{
  v70 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = objc_opt_new();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v51 objects:v69 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v52;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v52 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [*(a1 + 32) objectForKeyedSubscript:*(*(&v51 + 1) + 8 * i)];
          v10 = [v9 engagementDeltas];
          v11 = [v10 count];

          if (v11)
          {
            [v2 addObject:v9];
            v12 = [v9 engagementDeltas];
            v6 = (v6 + [v12 count]);
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v51 objects:v69 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    v15 = psg_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v56 = v6;
      _os_log_impl(&dword_260D36000, v15, OS_LOG_TYPE_DEFAULT, "Begin syncing for %tu records", buf, 0xCu);
    }

    if ([*(a1 + 40) shouldDefer:*(a1 + 48)])
    {
      v16 = psg_default_log_handle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260D36000, v16, OS_LOG_TYPE_DEFAULT, "Deferring engagement data syncing during initial completion block check", buf, 2u);
      }

      [*(a1 + 40) setState:*(a1 + 48) state:3];
      v14 = *(a1 + 56);
      goto LABEL_61;
    }

    if (!v6)
    {
      v22 = psg_default_log_handle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260D36000, v22, OS_LOG_TYPE_DEFAULT, "Completed engagement data syncing with no updates, no records to sync", buf, 2u);
      }

      [*(a1 + 40) setState:*(a1 + 48) state:5];
      v14 = 0;
      goto LABEL_61;
    }

    v67[0] = @"responses";
    v67[1] = @"compatVer";
    v68[0] = v2;
    v68[1] = &unk_28734B0A0;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
    v18 = psg_default_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260D36000, v18, OS_LOG_TYPE_DEFAULT, "Begin records serialization", buf, 2u);
    }

    v50 = 0;
    v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v17 requiringSecureCoding:1 error:&v50];
    v20 = v50;
    if (v20)
    {
      v14 = v20;
      v21 = psg_default_log_handle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v56 = v14;
        _os_log_error_impl(&dword_260D36000, v21, OS_LOG_TYPE_ERROR, "Deferring engagement data syncing because of serialization error: %@", buf, 0xCu);
      }

      [*(a1 + 40) setState:*(a1 + 48) state:3];
      goto LABEL_60;
    }

    v23 = [*(a1 + 40) shouldDefer:*(a1 + 48)];
    v24 = psg_default_log_handle();
    v25 = v24;
    if (v23)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_260D36000, v25, OS_LOG_TYPE_ERROR, "Deferring engagement data syncing after data serialization", buf, 2u);
      }

      [*(a1 + 40) setState:*(a1 + 48) state:3];
      v14 = *(a1 + 56);
      goto LABEL_60;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v19 length];
      *buf = 134217984;
      v56 = v26;
      _os_log_impl(&dword_260D36000, v25, OS_LOG_TYPE_DEFAULT, "Serialized records with data size of %tu", buf, 0xCu);
    }

    v27 = objc_autoreleasePoolPush();
    v28 = objc_alloc(MEMORY[0x277CBEB98]);
    v29 = IDSCopyIDForDevice();
    v30 = [v28 initWithObjects:{v29, 0}];

    objc_autoreleasePoolPop(v27);
    v31 = psg_default_log_handle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260D36000, v31, OS_LOG_TYPE_DEFAULT, "Begin IDS sync request", buf, 2u);
    }

    v32 = *(a1 + 72);
    v33 = *MEMORY[0x277D18678];
    v65[0] = *MEMORY[0x277D185B0];
    v65[1] = v33;
    v66[0] = MEMORY[0x277CBEC38];
    v66[1] = MEMORY[0x277CBEC38];
    v65[2] = *MEMORY[0x277D185D0];
    v66[2] = MEMORY[0x277CBEC38];
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:3];
    v48 = 0;
    v49 = 0;
    v35 = [v32 sendData:v19 toDestinations:v30 priority:100 options:v34 identifier:&v49 error:&v48];
    v36 = v49;
    v37 = v48;

    v38 = [*(a1 + 40) shouldDefer:*(a1 + 48)];
    v39 = psg_default_log_handle();
    v40 = v39;
    if (v38)
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_260D36000, v40, OS_LOG_TYPE_ERROR, "Deferring engagement data syncing after IDS sync call", buf, 2u);
      }

      [*(a1 + 40) setState:*(a1 + 48) state:3];
      v41 = *(a1 + 56);
    }

    else
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [MEMORY[0x277CCABB0] numberWithBool:v35];
        v43 = [v19 length];
        *buf = 138413314;
        v56 = @"com.apple.private.alloy.suggestions.smartreplies";
        v57 = 2112;
        v58 = v42;
        v59 = 2112;
        v60 = v36;
        v61 = 2048;
        v62 = v43;
        v63 = 2112;
        v64 = v37;
        _os_log_impl(&dword_260D36000, v40, OS_LOG_TYPE_DEFAULT, "Performed IDS request for service %@, success %@, identifier %@, data size: %tu, error %@", buf, 0x34u);
      }

      if (v37)
      {
        v44 = 0;
      }

      else
      {
        v44 = v35;
      }

      if (v44)
      {
        v45 = psg_default_log_handle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_260D36000, v45, OS_LOG_TYPE_DEFAULT, "Successfully passed data to IDS for syncing", buf, 2u);
        }

        [*(a1 + 40) setState:*(a1 + 48) state:5];
        v37 = 0;
        v14 = 0;
        goto LABEL_59;
      }

      if (!v37)
      {
        v37 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SGDPDeviceMetricsCollectorErrorDomain" code:1 userInfo:0];
      }

      v46 = psg_default_log_handle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v56 = v37;
        _os_log_error_impl(&dword_260D36000, v46, OS_LOG_TYPE_ERROR, "Deferring engagement data syncing because IDS failure: %@", buf, 0xCu);
      }

      [*(a1 + 40) setState:*(a1 + 48) state:3];
      v41 = v37;
      v37 = v41;
    }

    v14 = v41;
LABEL_59:

LABEL_60:
LABEL_61:

    goto LABEL_62;
  }

  v13 = psg_default_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D36000, v13, OS_LOG_TYPE_DEFAULT, "Completed engagement data syncing with no updates, no Trial information for device", buf, 2u);
  }

  [*(a1 + 40) setState:*(a1 + 48) state:5];
  v14 = 0;
LABEL_62:

  return v14;
}

+ (id)onDeltaRowWithXPCActivityManager:(id)manager activity:(id)activity engagementMetrics:(id)metrics
{
  managerCopy = manager;
  activityCopy = activity;
  metricsCopy = metrics;
  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SGDPDeviceMetricsCollectorErrorDomain" code:0 userInfo:0];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __91__PSGDPDeviceMetricsCollector_onDeltaRowWithXPCActivityManager_activity_engagementMetrics___block_invoke;
  v17[3] = &unk_279ABDF80;
  v18 = managerCopy;
  v19 = activityCopy;
  v20 = v10;
  v21 = metricsCopy;
  v22 = v23;
  v11 = metricsCopy;
  v12 = v10;
  v13 = activityCopy;
  v14 = managerCopy;
  v15 = MEMORY[0x2666EDC40](v17);

  _Block_object_dispose(v23, 8);

  return v15;
}

uint64_t __91__PSGDPDeviceMetricsCollector_onDeltaRowWithXPCActivityManager_activity_engagementMetrics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  *&v26[5] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = psg_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&dword_260D36000, v6, OS_LOG_TYPE_DEFAULT, "Begin validation for record", &v25, 2u);
  }

  if ([*(a1 + 32) shouldDefer:*(a1 + 40)])
  {
    v7 = psg_default_log_handle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    LOWORD(v25) = 0;
    goto LABEL_6;
  }

  v9 = *(a1 + 56);
  v10 = [v5 lang];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v19 = psg_default_log_handle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = [v5 lang];
      v25 = 138412290;
      *v26 = v24;
      _os_log_error_impl(&dword_260D36000, v19, OS_LOG_TYPE_ERROR, "Error for record due to us recording an unknown language code %@", &v25, 0xCu);
    }

    goto LABEL_25;
  }

  if (([v5 displayed] & 0x80000000) != 0 || (objc_msgSend(v5, "selected") & 0x80000000) != 0)
  {
    v19 = psg_default_log_handle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v5 displayed];
      v21 = [v5 selected];
      v25 = 67109376;
      v26[0] = v20;
      LOWORD(v26[1]) = 1024;
      *(&v26[1] + 2) = v21;
      _os_log_error_impl(&dword_260D36000, v19, OS_LOG_TYPE_ERROR, "Error for record due to negative value for displayed %d or selected %d", &v25, 0xEu);
    }

    goto LABEL_25;
  }

  if (![v5 displayed] && !objc_msgSend(v5, "selected"))
  {
    v19 = psg_default_log_handle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_260D36000, v19, OS_LOG_TYPE_DEFAULT, "Skipping record since no delta in displayed or selected", &v25, 2u);
    }

LABEL_25:

    goto LABEL_26;
  }

  v12 = psg_default_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&dword_260D36000, v12, OS_LOG_TYPE_DEFAULT, "Validated record to sync", &v25, 2u);
  }

  v13 = *(a1 + 56);
  v14 = [v5 lang];
  v15 = [v13 objectForKeyedSubscript:v14];
  v16 = [v15 engagementDeltas];
  [v16 addObject:v5];

  if (++*(*(*(a1 + 64) + 8) + 24) >= 0xD06uLL)
  {
    v17 = psg_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(*(*(a1 + 64) + 8) + 24);
      v25 = 134217984;
      *v26 = v18;
      _os_log_impl(&dword_260D36000, v17, OS_LOG_TYPE_DEFAULT, "Truncating number of responses to fetch since it's greater than %tu", &v25, 0xCu);
    }

    goto LABEL_9;
  }

  if (![*(a1 + 32) shouldDefer:*(a1 + 40)])
  {
LABEL_26:
    v8 = MEMORY[0x277D42690];
    goto LABEL_27;
  }

  v7 = psg_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
LABEL_6:
    _os_log_impl(&dword_260D36000, v7, OS_LOG_TYPE_DEFAULT, "Deferring engagement data syncing during delta row iteration", &v25, 2u);
  }

LABEL_7:

  [*(a1 + 32) setState:*(a1 + 40) state:3];
  if (a3)
  {
    *a3 = *(a1 + 48);
  }

LABEL_9:
  v8 = MEMORY[0x277D42698];
LABEL_27:
  v22 = *v8;

  return v22;
}

+ (id)recorderForKey:(id)key
{
  v3 = MEMORY[0x277D05310];
  keyCopy = key;
  v5 = [[v3 alloc] initWithKey:keyCopy];

  return v5;
}

+ (id)getActiveTrialInformationWithWithXPCActivityManager:(id)manager activity:(id)activity
{
  v42 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  activityCopy = activity;
  context = objc_autoreleasePoolPush();
  v27 = objc_opt_new();
  v30 = +[PSGExperimentResolver sharedInstance];
  zkwLangAndNamespaces = [v30 zkwLangAndNamespaces];
  allKeys = [zkwLangAndNamespaces allKeys];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = allKeys;
  v29 = [v7 countByEnumeratingWithState:&v37 objects:v41 count:16];
  v8 = 0;
  if (v29)
  {
    v28 = *v38;
    obj = v7;
LABEL_3:
    v9 = 0;
    v10 = v8;
    while (1)
    {
      if (*v38 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v37 + 1) + 8 * v9);
      v8 = [v30 getResponseSuggestionsExperimentConfig:v11 shouldDownloadAssets:0];

      if ([managerCopy shouldDefer:activityCopy])
      {
        v23 = psg_default_log_handle();
        v21 = v27;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_260D36000, v23, OS_LOG_TYPE_DEFAULT, "Deferring engagement data syncing during trial information fetching", buf, 2u);
        }

        v7 = obj;
        v22 = 0;
        goto LABEL_17;
      }

      rolloutIdentifiers = [v8 rolloutIdentifiers];
      if (rolloutIdentifiers)
      {
        break;
      }

      experimentIdentifiers = [v8 experimentIdentifiers];

      if (experimentIdentifiers)
      {
        goto LABEL_10;
      }

LABEL_11:
      ++v9;
      v10 = v8;
      if (v29 == v9)
      {
        v7 = obj;
        v29 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v29)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

LABEL_10:
    v33 = [PSGQuickResponsesEngagementMetrics alloc];
    rolloutIdentifiers2 = [v8 rolloutIdentifiers];
    rolloutId = [rolloutIdentifiers2 rolloutId];
    rolloutIdentifiers3 = [v8 rolloutIdentifiers];
    factorPackId = [rolloutIdentifiers3 factorPackId];
    experimentIdentifiers2 = [v8 experimentIdentifiers];
    experimentId = [experimentIdentifiers2 experimentId];
    experimentIdentifiers3 = [v8 experimentIdentifiers];
    treatmentId = [experimentIdentifiers3 treatmentId];
    v20 = [(PSGQuickResponsesEngagementMetrics *)v33 initWithLang:v11 rolloutId:rolloutId factorPackId:factorPackId experimentId:experimentId treatmentId:treatmentId];
    [v27 setObject:v20 forKeyedSubscript:v11];

    goto LABEL_11;
  }

LABEL_13:

  v21 = v27;
  v22 = [v27 copy];
LABEL_17:

  objc_autoreleasePoolPop(context);

  return v22;
}

+ (BOOL)recordEngagementMetrics:(id)metrics selectedRecorder:(id)recorder ignoredRecorder:(id)ignoredRecorder
{
  v39 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  recorderCopy = recorder;
  ignoredRecorderCopy = ignoredRecorder;
  rolloutId = [metricsCopy rolloutId];
  factorPackId = [metricsCopy factorPackId];
  experimentId = [metricsCopy experimentId];
  treatmentId = [metricsCopy treatmentId];
  v12 = [PSGDPDeviceMetricsCollector getPrefixFromRolloutID:rolloutId factorPackId:factorPackId experimentId:experimentId treatmentId:treatmentId];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v27 = metricsCopy;
  obj = [metricsCopy engagementDeltas];
  v13 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    v16 = 1;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        response = [v18 response];
        if (!response)
        {
          v25 = psg_default_log_handle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_260D36000, v25, OS_LOG_TYPE_INFO, "Skipping DP logging for empty response.", buf, 2u);
          }

          goto LABEL_16;
        }

        selected = [v18 selected];
        displayed = [v18 displayed];
        v22 = displayed - [v18 selected];
        if ((selected & 0x80000000) != 0 || (v22 & 0x80000000) != 0)
        {
          v25 = psg_default_log_handle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *v36 = selected;
            *&v36[4] = 1024;
            *&v36[6] = v22;
            _os_log_error_impl(&dword_260D36000, v25, OS_LOG_TYPE_ERROR, "Skipping DP logging for response because invalid count for selected %d or ignored %d", buf, 0xEu);
          }

LABEL_16:

          goto LABEL_17;
        }

        v23 = psg_default_log_handle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *v36 = selected;
          *&v36[8] = 2048;
          v37 = v22;
          _os_log_impl(&dword_260D36000, v23, OS_LOG_TYPE_DEFAULT, "Logging message selected %tu, ignored %tu", buf, 0x16u);
        }

        v24 = [PSGDPDeviceMetricsCollector recordResponse:response numTimesToLog:selected recorder:recorderCopy prefix:v12];
        v16 &= [PSGDPDeviceMetricsCollector recordResponse:response numTimesToLog:v22 recorder:ignoredRecorderCopy prefix:v12]&& v24;
LABEL_17:
      }

      v14 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
      if (!v14)
      {
        goto LABEL_21;
      }
    }
  }

  LOBYTE(v16) = 1;
LABEL_21:

  return v16 & 1;
}

+ (BOOL)recordResponse:(id)response numTimesToLog:(unint64_t)log recorder:(id)recorder prefix:(id)prefix
{
  v34[2] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  recorderCopy = recorder;
  prefixCopy = prefix;
  if ([responseCopy length])
  {
    if (!log)
    {
      v30 = 1;
      goto LABEL_35;
    }

    v34[0] = prefixCopy;
    v34[1] = responseCopy;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v13 = [v12 _pas_componentsJoinedByString:@"|"];

    v14 = psg_default_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 134217984;
      logCopy = log;
      _os_log_impl(&dword_260D36000, v14, OS_LOG_TYPE_DEFAULT, "Preparing to log message %tu times", &v32, 0xCu);
    }

    v15 = [v13 length];
    v16 = 0x800 / v15;
    if (v15 > 0x800)
    {
      v16 = 1;
    }

    if (v16 >= log)
    {
      logCopy2 = log;
    }

    else
    {
      logCopy2 = v16;
    }

    v18 = log / logCopy2;
    v19 = log / logCopy2 * logCopy2;
    v20 = log % logCopy2;
    v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:logCopy2];
    v22 = v21;
    while ([v21 count]< logCopy2)
    {
      [v22 addObject:v13];
      v21 = v22;
    }

    v23 = 0;
    v24 = 0;
    do
    {
      v25 = [recorderCopy record:v22];
      v24 += v25 ^ 1;
      v23 += v25;
    }

    while (v23 < v18 && v24 < 3);
    if (log != v19 && v24 <= 2)
    {
      v27 = [v22 subarrayWithRange:0, v20];
      do
      {
        v28 = [recorderCopy record:v27];
        v24 += v28 ^ 1u;
      }

      while ((v28 & 1) == 0 && v24 < 3);
    }

    if (v24)
    {
      v29 = psg_default_log_handle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v32 = 134217984;
        logCopy = v24;
        _os_log_error_impl(&dword_260D36000, v29, OS_LOG_TYPE_ERROR, "Call to recorder failed %tu times", &v32, 0xCu);
      }
    }

    v30 = v24 < 3;
  }

  else
  {
    v22 = psg_default_log_handle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v32) = 0;
      _os_log_error_impl(&dword_260D36000, v22, OS_LOG_TYPE_ERROR, "Logging of empty response is not allowed", &v32, 2u);
    }

    v30 = 0;
    v13 = responseCopy;
  }

  responseCopy = v13;
LABEL_35:

  return v30;
}

+ (id)getPrefixFromRolloutID:(id)d factorPackId:(id)id experimentId:(id)experimentId treatmentId:(id)treatmentId
{
  v24[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  idCopy = id;
  experimentIdCopy = experimentId;
  treatmentIdCopy = treatmentId;
  v13 = &stru_287345C00;
  if (idCopy)
  {
    v14 = idCopy;
  }

  else
  {
    v14 = &stru_287345C00;
  }

  v15 = v14;
  if (experimentIdCopy)
  {
    v16 = experimentIdCopy;
  }

  else
  {
    v16 = &stru_287345C00;
  }

  v17 = v16;
  if (treatmentIdCopy)
  {
    v18 = treatmentIdCopy;
  }

  else
  {
    v18 = &stru_287345C00;
  }

  if (treatmentIdCopy)
  {
    v19 = experimentIdCopy != 0;
  }

  else
  {
    v19 = 0;
  }

  v20 = v18;
  if (idCopy)
  {
    v21 = dCopy == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21 || v19)
  {
    if (v19)
    {
      v24[0] = experimentIdCopy;
      v24[1] = treatmentIdCopy;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
      v13 = [v22 _pas_componentsJoinedByString:@"|"];
    }

    else
    {
      v13 = v15;
    }
  }

  return v13;
}

@end