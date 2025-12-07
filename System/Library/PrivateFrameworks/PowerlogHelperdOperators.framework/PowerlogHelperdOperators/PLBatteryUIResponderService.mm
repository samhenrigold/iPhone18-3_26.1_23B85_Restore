@interface PLBatteryUIResponderService
+ (void)load;
- (BOOL)demoMode;
- (double)endOfDayWithNow:(id)now;
- (double)endOfHourWithNow:(id)now;
- (id)constructResponseObjectFromType:(int64_t)type;
- (id)convertResponseToLegacyFormat:(id)format;
- (id)createCoalescedBreakdownWithResponse:(id)response;
- (id)demoPath;
- (id)dynamicRangeKeyForLength:(int)length bucketSize:(int)size;
- (id)getBreakdownForLength:(int)length fromCachedLength:(int)cachedLength forBucketSize:(int)size;
- (id)getUISOCDrainByBuckets:(int)buckets fromCachedLength:(int)length forBucketSize:(int)size isDynamicSource:(BOOL)source;
- (id)possibleRequests;
- (id)rangeKeyForLength:(int)length bucketSize:(int)size;
- (id)result;
- (void)cleanup;
- (void)coalesce;
- (void)configure:(id)configure;
- (void)initOperatorDependancies;
- (void)linkDependencies;
- (void)prepareBreakdown:(id)breakdown withDrainSummaries:(id)summaries withFullDayBreakdown:(id)dayBreakdown withDynamicBreakdown:(id)dynamicBreakdown;
- (void)result;
- (void)run;
@end

@implementation PLBatteryUIResponderService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLBatteryUIResponderService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)initOperatorDependancies
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(PLBatteryUIResponderService *)self setRequestedObjects:dictionary];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [(PLBatteryUIResponderService *)self setResponseCache:dictionary2];

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  [(PLBatteryUIResponderService *)self setSharedUtilityCache:dictionary3];

  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  [(PLBatteryUIResponderService *)self setResultDictionary:dictionary4];

  array = [MEMORY[0x277CBEB18] array];
  [(PLBatteryUIResponderService *)self setOrderOfExecution:array];

  v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [(PLBatteryUIResponderService *)self setOperationQueue:v8];

  operationQueue = [(PLBatteryUIResponderService *)self operationQueue];
  [operationQueue setMaxConcurrentOperationCount:1];

  [(PLBatteryUIResponderService *)self setShouldUseMidnightQueryRange:1];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(PLBatteryUIResponderService *)self setShouldUseMidnightQueryRange:0];
  }

  v10 = objc_alloc(MEMORY[0x277D3F278]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__PLBatteryUIResponderService_initOperatorDependancies__block_invoke;
  v12[3] = &unk_279A5BEC8;
  v12[4] = self;
  v11 = [v10 initWithOperator:self withRegistration:&unk_28714AA70 withBlock:v12];
  [(PLBatteryUIResponderService *)self setQueryResponder:v11];
}

id __55__PLBatteryUIResponderService_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [*(a1 + 32) demoMode];
  if (v7)
  {
    v8 = PLLogCommon(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __55__PLBatteryUIResponderService_initOperatorDependancies__block_invoke_cold_1();
    }

    v9 = [*(a1 + 32) demoPath];
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [v10 fileExistsAtPath:v9];

    v13 = PLLogCommon(v12);
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __55__PLBatteryUIResponderService_initOperatorDependancies__block_invoke_cold_3();
      }

      v15 = MEMORY[0x277CCACA8];
      v16 = [v9 pathExtension];
      v17 = [v15 stringWithFormat:@".%@", v16];

      if ([v17 isEqualToString:@".plist"])
      {
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v9];

LABEL_21:
        goto LABEL_16;
      }

      v26 = [v17 isEqualToString:@".PLSQL"];

      if ((v26 & 1) == 0)
      {
        v18 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __55__PLBatteryUIResponderService_initOperatorDependancies__block_invoke_cold_2();
      }
    }
  }

  v19 = [v6 objectForKeyedSubscript:@"requestingService"];
  [*(a1 + 32) setRequestingService:v19];

  v20 = [v6 objectForKeyedSubscript:@"plistCopyDestination"];
  [*(a1 + 32) setPlistCopyDestination:v20];

  v21 = [v6 objectForKeyedSubscript:@"skipPlistWriteKey"];
  [*(a1 + 32) setSkipPlistWrite:{objc_msgSend(v21, "BOOLValue")}];

  v23 = PLLogCommon(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = [*(a1 + 32) requestingService];
    *buf = 138412290;
    v28 = v24;
    _os_log_impl(&dword_25EE51000, v23, OS_LOG_TYPE_INFO, "requestingService=%@", buf, 0xCu);
  }

  [*(a1 + 32) cleanup];
  [*(a1 + 32) configure:v6];
  [*(a1 + 32) linkDependencies];
  [*(a1 + 32) run];
  [*(a1 + 32) coalesce];
  v18 = [*(a1 + 32) result];
LABEL_16:

  return v18;
}

- (void)cleanup
{
  v3 = PLLogCommon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_INFO, "Responder Service: Cleaning up...", v9, 2u);
  }

  resultDictionary = [(PLBatteryUIResponderService *)self resultDictionary];
  [resultDictionary removeAllObjects];

  requestedObjects = [(PLBatteryUIResponderService *)self requestedObjects];
  [requestedObjects removeAllObjects];

  orderOfExecution = [(PLBatteryUIResponderService *)self orderOfExecution];
  [orderOfExecution removeAllObjects];

  responseCache = [(PLBatteryUIResponderService *)self responseCache];
  [responseCache removeAllObjects];

  sharedUtilityCache = [(PLBatteryUIResponderService *)self sharedUtilityCache];
  [sharedUtilityCache removeAllObjects];
}

- (void)configure:(id)configure
{
  v10 = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  v5 = PLLogCommon(configureCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = configureCopy;
    _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_INFO, "Responder Service: Received configuration %@", buf, 0xCu);
  }

  [(PLBatteryUIResponderService *)self setConfiguration:configureCopy];
  configuration = [(PLBatteryUIResponderService *)self configuration];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__PLBatteryUIResponderService_configure___block_invoke;
  v7[3] = &unk_279A5E430;
  v7[4] = self;
  [configuration enumerateKeysAndObjectsUsingBlock:v7];
}

void __41__PLBatteryUIResponderService_configure___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"enum"];

    if (v7)
    {
      v8 = [v6 objectForKeyedSubscript:@"enum"];
      v9 = [v8 intValue];

      v10 = [*(a1 + 32) constructResponseObjectFromType:v9];
      if (v10)
      {
        v11 = [*(a1 + 32) requestedObjects];
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
        v13 = [v11 objectForKeyedSubscript:v12];

        if (!v13)
        {
          v14 = [MEMORY[0x277CBEB38] dictionary];
          v15 = [*(a1 + 32) requestedObjects];
          v16 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
          [v15 setObject:v14 forKeyedSubscript:v16];
        }

        v17 = [*(a1 + 32) requestedObjects];
        v18 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
        v19 = [v17 objectForKeyedSubscript:v18];
        [v19 setObject:v10 forKeyedSubscript:v5];
      }

      else
      {
        v17 = PLLogCommon(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __41__PLBatteryUIResponderService_configure___block_invoke_cold_1(v6, v9, v17);
        }
      }
    }
  }
}

- (void)linkDependencies
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_INFO, "Responder Service: Linking dependencies...", buf, 2u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  objc_initWeak(&location, self);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  requestedObjects = [(PLBatteryUIResponderService *)self requestedObjects];
  v31 = [requestedObjects countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v31)
  {
    v30 = *v46;
    obj = requestedObjects;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v46 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v45 + 1) + 8 * i);
        v6 = [dictionary objectForKeyedSubscript:{v5, obj}];
        v7 = v6 == 0;

        if (v7)
        {
          array = [MEMORY[0x277CBEB18] array];
          [dictionary setObject:array forKeyedSubscript:v5];
        }

        responseCache = [(PLBatteryUIResponderService *)self responseCache];
        v10 = [responseCache objectForKeyedSubscript:v5];
        v11 = v10 == 0;

        if (v11)
        {
          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          responseCache2 = [(PLBatteryUIResponderService *)self responseCache];
          [responseCache2 setObject:dictionary2 forKeyedSubscript:v5];
        }

        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        v41 = 0u;
        requestedObjects2 = [(PLBatteryUIResponderService *)self requestedObjects];
        v33 = [requestedObjects2 objectForKeyedSubscript:v5];

        v15 = [v33 countByEnumeratingWithState:&v41 objects:v52 count:16];
        if (v15)
        {
          v16 = *v42;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v42 != v16)
              {
                objc_enumerationMutation(v33);
              }

              v18 = *(*(&v41 + 1) + 8 * j);
              requestedObjects3 = [(PLBatteryUIResponderService *)self requestedObjects];
              v20 = [requestedObjects3 objectForKeyedSubscript:v5];
              v21 = [v20 objectForKeyedSubscript:v18];

              if (v21)
              {
                v22 = MEMORY[0x277CCA8C8];
                v37[0] = MEMORY[0x277D85DD0];
                v37[1] = 3221225472;
                v37[2] = __47__PLBatteryUIResponderService_linkDependencies__block_invoke;
                v37[3] = &unk_279A5EB48;
                objc_copyWeak(&v40, &location);
                v37[4] = v18;
                v37[5] = self;
                v38 = v21;
                v39 = v5;
                v23 = [v22 blockOperationWithBlock:v37];
                v24 = [dictionary objectForKeyedSubscript:v5];
                [v24 addObject:v23];

                objc_destroyWeak(&v40);
              }
            }

            v15 = [v33 countByEnumeratingWithState:&v41 objects:v52 count:16];
          }

          while (v15);
        }
      }

      requestedObjects = obj;
      v31 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v31);
  }

  v26 = PLLogCommon(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v51 = dictionary;
    _os_log_impl(&dword_25EE51000, v26, OS_LOG_TYPE_INFO, "Responder Service: Constructed <Response Type, Execution Block(s)> map: %@", buf, 0xCu);
  }

  array2 = [MEMORY[0x277CBEB18] array];
  [(PLBatteryUIResponderService *)self setExecutionChain:array2];

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __47__PLBatteryUIResponderService_linkDependencies__block_invoke_68;
  v35[3] = &unk_279A5EB70;
  v35[4] = self;
  v28 = dictionary;
  v36 = v28;
  [v28 enumerateKeysAndObjectsUsingBlock:v35];

  objc_destroyWeak(&location);
}

void __47__PLBatteryUIResponderService_linkDependencies__block_invoke(uint64_t a1)
{
  v126 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained configuration];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v5 = [v4 mutableCopy];

  v6 = [*(a1 + 40) resultDictionary];
  v7 = [v6 objectForKeyedSubscript:@"PLBatteryUIQueryTime"];
  [v5 setObject:v7 forKeyedSubscript:@"timestamp"];

  if (!_os_feature_enabled_impl() || ![*(a1 + 40) shouldUseMidnightQueryRange])
  {
    if (![*(a1 + 40) demoMode])
    {
      goto LABEL_13;
    }

    v21 = [v5 objectForKeyedSubscript:@"start"];
    [v21 doubleValue];
    v23 = v22;

    v24 = [v5 objectForKeyedSubscript:@"end"];
    [v24 doubleValue];
    v26 = v25;

    v27 = [*(a1 + 40) resultDictionary];
    v28 = [v27 objectForKeyedSubscript:@"PLBatteryUIQueryTime"];
    [v28 doubleValue];
    v30 = v29;

    v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v30];
    v31 = v26 - v23;
    if (v31 == 864000.0)
    {
      v32 = PLCalculateEndOfDayWithDate();
    }

    else
    {
      if (v31 != 86400.0 && v31 != 1209600.0)
      {
        goto LABEL_11;
      }

      v32 = PLCalculateEndOfHourWithDate();
    }

    v33 = v32;
    [v32 timeIntervalSince1970];
    v26 = v34;

LABEL_11:
    v35 = [MEMORY[0x277CCABB0] numberWithDouble:v26 - v31];
    [v5 setObject:v35 forKeyedSubscript:@"start"];

    v36 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
    [v5 setObject:v36 forKeyedSubscript:@"end"];

    goto LABEL_12;
  }

  v8 = [v5 objectForKeyedSubscript:@"start"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v5 objectForKeyedSubscript:@"end"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [*(a1 + 40) resultDictionary];
  v15 = [v14 objectForKeyedSubscript:@"PLBatteryUIQueryTime"];
  v16 = v13 - v10;
  [v15 doubleValue];
  v18 = v17;

  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v18 - v16];
  [v5 setObject:v19 forKeyedSubscript:@"start"];

  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
  [v5 setObject:v20 forKeyedSubscript:@"end"];
LABEL_12:

LABEL_13:
  v119 = PLBatteryUsageUIKeyFromConfiguration();
  v37 = PLLogCommon(v119);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    v40 = *(a1 + 32);
    *buf = 138412546;
    v121 = v39;
    v122 = 2112;
    v123 = v40;
    _os_log_impl(&dword_25EE51000, v37, OS_LOG_TYPE_INFO, "Responder Service: Running '%@' for '%@'", buf, 0x16u);
  }

  v41 = [v5 objectForKeyedSubscript:@"start"];
  [v41 doubleValue];
  v43 = v42;

  v44 = [v5 objectForKeyedSubscript:@"end"];
  [v44 doubleValue];
  v46 = v45;

  v47 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v46];
  v118 = [v47 convertFromSystemToMonotonic];

  v117 = [v118 dateByAddingTimeInterval:-(v46 - v43)];
  v48 = MEMORY[0x277CCABB0];
  [v117 timeIntervalSince1970];
  v49 = [v48 numberWithDouble:?];
  [v5 setObject:v49 forKeyedSubscript:@"start"];

  v50 = MEMORY[0x277CCABB0];
  [v118 timeIntervalSince1970];
  v51 = [v50 numberWithDouble:?];
  [v5 setObject:v51 forKeyedSubscript:@"end"];

  [*(a1 + 48) configure:v5];
  [*(a1 + 48) run];
  [*(a1 + 48) coalesce];
  v52 = objc_loadWeakRetained((a1 + 64));
  v53 = [v52 responseCache];

  objc_sync_enter(v53);
  v54 = [MEMORY[0x277CBEB38] dictionary];
  v55 = objc_loadWeakRetained((a1 + 64));
  v56 = [v55 responseCache];
  v57 = [v56 objectForKeyedSubscript:*(a1 + 56)];
  [v57 setObject:v54 forKeyedSubscript:v119];

  v58 = objc_loadWeakRetained((a1 + 64));
  v59 = [v58 configuration];
  v60 = [v59 objectForKeyedSubscript:*(a1 + 32)];
  v61 = objc_loadWeakRetained((a1 + 64));
  v62 = [v61 responseCache];
  v63 = [v62 objectForKeyedSubscript:*(a1 + 56)];
  v64 = [v63 objectForKeyedSubscript:v119];
  [v64 setObject:v60 forKeyedSubscript:@"configuration"];

  v65 = [*(a1 + 48) result];
  v66 = objc_loadWeakRetained((a1 + 64));
  v67 = [v66 responseCache];
  v68 = [v67 objectForKeyedSubscript:*(a1 + 56)];
  v69 = [v68 objectForKeyedSubscript:v119];
  [v69 setObject:v65 forKeyedSubscript:@"result"];

  v70 = [*(a1 + 40) isOfTypeBreakdownForResponseType:{objc_msgSend(*(a1 + 56), "intValue")}];
  if (v70)
  {
    v71 = objc_loadWeakRetained((a1 + 64));
    v72 = [v71 responseCache];
    v73 = [v72 objectForKeyedSubscript:&unk_287146FD8];
    v74 = v73 == 0;

    if (v74)
    {
      v75 = [MEMORY[0x277CBEB38] dictionary];
      v76 = objc_loadWeakRetained((a1 + 64));
      v77 = [v76 responseCache];
      [v77 setObject:v75 forKeyedSubscript:&unk_287146FD8];
    }

    v78 = [MEMORY[0x277CBEB38] dictionary];
    v79 = objc_loadWeakRetained((a1 + 64));
    v80 = [v79 responseCache];
    v81 = [v80 objectForKeyedSubscript:&unk_287146FD8];
    [v81 setObject:v78 forKeyedSubscript:v119];

    v82 = objc_loadWeakRetained((a1 + 64));
    v83 = [v82 configuration];
    v84 = [v83 objectForKeyedSubscript:*(a1 + 32)];
    v85 = objc_loadWeakRetained((a1 + 64));
    v86 = [v85 responseCache];
    v87 = [v86 objectForKeyedSubscript:&unk_287146FD8];
    v88 = [v87 objectForKeyedSubscript:v119];
    [v88 setObject:v84 forKeyedSubscript:@"configuration"];

    v89 = [*(a1 + 48) result];
    v90 = objc_loadWeakRetained((a1 + 64));
    v91 = [v90 responseCache];
    v92 = [v91 objectForKeyedSubscript:&unk_287146FD8];
    v93 = [v92 objectForKeyedSubscript:v119];
    [v93 setObject:v89 forKeyedSubscript:@"result"];
  }

  v94 = PLLogCommon(v70);
  if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
  {
    v95 = *(a1 + 32);
    v96 = objc_loadWeakRetained((a1 + 64));
    v97 = [v96 responseCache];
    v98 = [v97 objectForKeyedSubscript:*(a1 + 56)];
    v99 = [v98 objectForKeyedSubscript:v119];
    v100 = [v99 objectForKeyedSubscript:@"result"];
    *buf = 138412802;
    v121 = v95;
    v122 = 2112;
    v123 = v119;
    v124 = 2112;
    v125 = v100;
    _os_log_impl(&dword_25EE51000, v94, OS_LOG_TYPE_INFO, "Responder Service: Stored '%@' as %@: %@", buf, 0x20u);
  }

  objc_sync_exit(v53);
  v101 = objc_loadWeakRetained((a1 + 64));
  v102 = [v101 requestedObjects];

  objc_sync_enter(v102);
  v103 = objc_loadWeakRetained((a1 + 64));
  v104 = [v103 requestedObjects];
  v105 = [v104 objectForKeyedSubscript:*(a1 + 56)];
  [v105 setObject:0 forKeyedSubscript:*(a1 + 32)];

  v107 = PLLogCommon(v106);
  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
  {
    v112 = *(a1 + 32);
    v113 = objc_loadWeakRetained((a1 + 64));
    v114 = [v113 requestedObjects];
    v115 = [v114 objectForKeyedSubscript:*(a1 + 56)];
    v116 = [v115 count];
    *buf = 138412546;
    v121 = v112;
    v122 = 2048;
    v123 = v116;
    _os_log_debug_impl(&dword_25EE51000, v107, OS_LOG_TYPE_DEBUG, "Responder Service: Completed %@ (%lu remaining)", buf, 0x16u);
  }

  objc_sync_exit(v102);
  v108 = objc_loadWeakRetained((a1 + 64));
  v109 = [v108 orderOfExecution];

  objc_sync_enter(v109);
  v110 = objc_loadWeakRetained((a1 + 64));
  v111 = [v110 orderOfExecution];
  [v111 addObject:*(a1 + 32)];

  objc_sync_exit(v109);
}

void __47__PLBatteryUIResponderService_linkDependencies__block_invoke_68(uint64_t a1, void *a2, void *a3)
{
  v115 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v67 = a3;
  v6 = [*(a1 + 32) requestedObjects];
  v61 = v5;
  v7 = [v6 objectForKeyedSubscript:v5];

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v7;
  v57 = [obj countByEnumeratingWithState:&v98 objects:v114 count:16];
  if (!v57)
  {
    goto LABEL_66;
  }

  v58 = *v99;
  do
  {
    v8 = 0;
    do
    {
      if (*v99 != v58)
      {
        objc_enumerationMutation(obj);
      }

      v59 = v8;
      v9 = *(*(&v98 + 1) + 8 * v8);
      v10 = [*(a1 + 32) requestedObjects];
      v11 = [v10 objectForKeyedSubscript:v61];
      v62 = v9;
      v12 = [v11 objectForKeyedSubscript:v9];

      v13 = [v12 dependencies];

      if (!v13)
      {
        goto LABEL_64;
      }

      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v63 = v12;
      v64 = [v12 dependencies];
      v66 = [v64 countByEnumeratingWithState:&v94 objects:v113 count:16];
      if (!v66)
      {
        goto LABEL_63;
      }

      v65 = *v95;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v95 != v65)
          {
            objc_enumerationMutation(v64);
          }

          v68 = v14;
          v15 = *(*(&v94 + 1) + 8 * v14);
          if (![*(a1 + 32) isOfTypeBreakdownForResponseType:{objc_msgSend(v15, "intValue")}])
          {
            v24 = [*(a1 + 40) objectForKeyedSubscript:v15];

            if (v24)
            {
              goto LABEL_25;
            }

            v52 = PLLogCommon(v23);
            if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
LABEL_71:
              v51 = v67;
              v49 = obj;
              v53 = v63;
LABEL_72:

              v50 = v49;
              goto LABEL_73;
            }

LABEL_74:
            v53 = v63;
            v54 = objc_opt_class();
            v55 = NSStringFromClass(v54);
            v56 = [v15 intValue];
            *buf = 138412802;
            v107 = v55;
            v108 = 2112;
            v109 = v62;
            v110 = 1024;
            v111 = v56;
            _os_log_error_impl(&dword_25EE51000, v52, OS_LOG_TYPE_ERROR, "Responder Service: '%@' (%@) is dependent upon type '%d' but this dependency is missing. Skipping response...", buf, 0x1Cu);

            v51 = v67;
            v49 = obj;
            goto LABEL_72;
          }

          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v16 = PLBatteryBreakdownResponseTypes();
          v17 = [v16 countByEnumeratingWithState:&v90 objects:v112 count:16];
          if (!v17)
          {

LABEL_68:
            v52 = PLLogCommon(v23);
            if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_71;
            }

            goto LABEL_74;
          }

          v18 = v17;
          v19 = 0;
          v20 = *v91;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v91 != v20)
              {
                objc_enumerationMutation(v16);
              }

              v22 = [*(a1 + 40) objectForKeyedSubscript:*(*(&v90 + 1) + 8 * i)];

              if (v22)
              {
                ++v19;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v90 objects:v112 count:16];
          }

          while (v18);

          if (!v19)
          {
            goto LABEL_68;
          }

LABEL_25:
          v25 = PLLogCommon(v23);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            v28 = [v15 intValue];
            *buf = 138412802;
            v107 = v27;
            v108 = 2112;
            v109 = v62;
            v110 = 1024;
            v111 = v28;
            _os_log_impl(&dword_25EE51000, v25, OS_LOG_TYPE_INFO, "Responder Service: '%@' (%@) is dependent upon type '%d'.  Linking dependency...", buf, 0x1Cu);
          }

          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v71 = v67;
          v73 = [v71 countByEnumeratingWithState:&v86 objects:v105 count:16];
          if (v73)
          {
            v29 = *v87;
            v69 = v15;
            v70 = *v87;
            do
            {
              for (j = 0; j != v73; ++j)
              {
                if (*v87 != v29)
                {
                  objc_enumerationMutation(v71);
                }

                v31 = *(*(&v86 + 1) + 8 * j);
                if ([*(a1 + 32) isOfTypeBreakdownForResponseType:{objc_msgSend(v15, "intValue")}])
                {
                  v84 = 0uLL;
                  v85 = 0uLL;
                  v82 = 0uLL;
                  v83 = 0uLL;
                  v32 = PLBatteryBreakdownResponseTypes();
                  v33 = [v32 countByEnumeratingWithState:&v82 objects:v104 count:16];
                  if (v33)
                  {
                    v34 = v33;
                    v72 = j;
                    v35 = *v83;
                    do
                    {
                      for (k = 0; k != v34; ++k)
                      {
                        if (*v83 != v35)
                        {
                          objc_enumerationMutation(v32);
                        }

                        v37 = *(*(&v82 + 1) + 8 * k);
                        v38 = [*(a1 + 40) objectForKeyedSubscript:v37];

                        if (v38)
                        {
                          v80 = 0u;
                          v81 = 0u;
                          v78 = 0u;
                          v79 = 0u;
                          v39 = [*(a1 + 40) objectForKeyedSubscript:v37];
                          v40 = [v39 countByEnumeratingWithState:&v78 objects:v103 count:16];
                          if (v40)
                          {
                            v41 = v40;
                            v42 = *v79;
                            do
                            {
                              for (m = 0; m != v41; ++m)
                              {
                                if (*v79 != v42)
                                {
                                  objc_enumerationMutation(v39);
                                }

                                [v31 addDependency:*(*(&v78 + 1) + 8 * m)];
                              }

                              v41 = [v39 countByEnumeratingWithState:&v78 objects:v103 count:16];
                            }

                            while (v41);
                          }
                        }
                      }

                      v34 = [v32 countByEnumeratingWithState:&v82 objects:v104 count:16];
                    }

                    while (v34);
                    v15 = v69;
                    v29 = v70;
                    j = v72;
                  }

                  else
                  {
                    v29 = v70;
                  }
                }

                else
                {
                  v76 = 0uLL;
                  v77 = 0uLL;
                  v74 = 0uLL;
                  v75 = 0uLL;
                  v32 = [*(a1 + 40) objectForKeyedSubscript:v15];
                  v44 = [v32 countByEnumeratingWithState:&v74 objects:v102 count:16];
                  if (v44)
                  {
                    v45 = v44;
                    v46 = j;
                    v47 = *v75;
                    do
                    {
                      for (n = 0; n != v45; ++n)
                      {
                        if (*v75 != v47)
                        {
                          objc_enumerationMutation(v32);
                        }

                        [v31 addDependency:*(*(&v74 + 1) + 8 * n)];
                      }

                      v45 = [v32 countByEnumeratingWithState:&v74 objects:v102 count:16];
                    }

                    while (v45);
                    j = v46;
                  }
                }
              }

              v73 = [v71 countByEnumeratingWithState:&v86 objects:v105 count:16];
            }

            while (v73);
          }

          v14 = v68 + 1;
        }

        while (v68 + 1 != v66);
        v66 = [v64 countByEnumeratingWithState:&v94 objects:v113 count:16];
        if (v66)
        {
          continue;
        }

        break;
      }

LABEL_63:

      v12 = v63;
LABEL_64:

      v8 = v59 + 1;
    }

    while (v59 + 1 != v57);
    v57 = [obj countByEnumeratingWithState:&v98 objects:v114 count:16];
  }

  while (v57);
LABEL_66:
  v49 = obj;

  v50 = [*(a1 + 32) executionChain];
  v51 = v67;
  [v50 addObjectsFromArray:v67];
LABEL_73:
}

- (void)run
{
  v40 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && [(PLBatteryUIResponderService *)self shouldUseMidnightQueryRange])
  {
    if ([(PLBatteryUIResponderService *)self demoMode])
    {
      v3 = +[PLUtilities getLastBatteryTimestamp];
      convertFromMonotonicToSystem = [v3 convertFromMonotonicToSystem];
    }

    else
    {
      convertFromMonotonicToSystem = [MEMORY[0x277CBEAA8] date];
    }

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v23 = [currentCalendar startOfDayForDate:convertFromMonotonicToSystem];

    v24 = [v23 dateByAddingTimeInterval:86400.0];
    v25 = MEMORY[0x277CCABB0];
    [v24 timeIntervalSince1970];
    v26 = [v25 numberWithDouble:?];
    resultDictionary = [(PLBatteryUIResponderService *)self resultDictionary];
    [resultDictionary setObject:v26 forKeyedSubscript:@"PLBatteryUIQueryTime"];
  }

  else
  {
    if (![(PLBatteryUIResponderService *)self demoMode])
    {
      v8 = MEMORY[0x277CCABB0];
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      v10 = [v8 numberWithDouble:?];
      resultDictionary2 = [(PLBatteryUIResponderService *)self resultDictionary];
      [resultDictionary2 setObject:v10 forKeyedSubscript:@"PLBatteryUIQueryTime"];

      goto LABEL_20;
    }

    convertFromMonotonicToSystem = [MEMORY[0x277D3F180] objectForKey:@"BUI_DEMO_QUERY_TIME" forApplicationID:@"com.apple.powerlogd" synchronize:1];
    v5 = [MEMORY[0x277D3F180] objectForKey:@"BUI_DEMO_QUERY_TIME_OFFSET" forApplicationID:@"com.apple.powerlogd" synchronize:1];
    if (convertFromMonotonicToSystem && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [convertFromMonotonicToSystem doubleValue];
      v7 = v6;
    }

    else
    {
      v13 = +[PLUtilities getLastBatteryTimestamp];
      convertFromMonotonicToSystem2 = [v13 convertFromMonotonicToSystem];
      [convertFromMonotonicToSystem2 timeIntervalSince1970];
      v7 = v15;
    }

    v16 = 0.0;
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 doubleValue];
        v16 = v17;
      }
    }

    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v7 + v16];
    resultDictionary3 = [(PLBatteryUIResponderService *)self resultDictionary];
    [resultDictionary3 setObject:v18 forKeyedSubscript:@"PLBatteryUIQueryTime"];

    v21 = PLLogCommon(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      LOWORD(v38) = 0;
      _os_log_impl(&dword_25EE51000, v21, OS_LOG_TYPE_INFO, "Responder Service: Looking for Query Time...", &v38, 2u);
    }
  }

LABEL_20:
  v28 = PLLogCommon(v12);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    resultDictionary4 = [(PLBatteryUIResponderService *)self resultDictionary];
    v30 = [resultDictionary4 objectForKeyedSubscript:@"PLBatteryUIQueryTime"];
    [v30 doubleValue];
    v38 = 134217984;
    v39 = v31;
    _os_log_impl(&dword_25EE51000, v28, OS_LOG_TYPE_INFO, "Responder Service: Query Time = %f", &v38, 0xCu);
  }

  operationQueue = [(PLBatteryUIResponderService *)self operationQueue];
  executionChain = [(PLBatteryUIResponderService *)self executionChain];
  [operationQueue addOperations:executionChain waitUntilFinished:1];

  v35 = PLLogCommon(v34);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    orderOfExecution = [(PLBatteryUIResponderService *)self orderOfExecution];
    v37 = [orderOfExecution componentsJoinedByString:@" -> "];
    v38 = 138412290;
    v39 = v37;
    _os_log_impl(&dword_25EE51000, v35, OS_LOG_TYPE_INFO, "Responder Service: Ran response objects in order: %@", &v38, 0xCu);
  }
}

- (void)coalesce
{
  configuration = [(PLBatteryUIResponderService *)self configuration];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __39__PLBatteryUIResponderService_coalesce__block_invoke;
  v18[3] = &unk_279A5E430;
  v18[4] = self;
  [configuration enumerateKeysAndObjectsUsingBlock:v18];

  v4 = MEMORY[0x277CBEAA8];
  resultDictionary = [(PLBatteryUIResponderService *)self resultDictionary];
  v6 = [resultDictionary objectForKeyedSubscript:@"PLBatteryUIQueryTime"];
  [v6 doubleValue];
  v7 = [v4 dateWithTimeIntervalSince1970:?];

  if (_os_feature_enabled_impl() && [(PLBatteryUIResponderService *)self shouldUseMidnightQueryRange])
  {
    v8 = MEMORY[0x277CCABB0];
    [v7 timeIntervalSince1970];
    v9 = [v8 numberWithDouble:?];
    resultDictionary2 = [(PLBatteryUIResponderService *)self resultDictionary];
    [resultDictionary2 setObject:v9 forKeyedSubscript:@"endOfDay"];

    v11 = MEMORY[0x277CCABB0];
    [v7 timeIntervalSince1970];
  }

  else
  {
    v12 = MEMORY[0x277CCABB0];
    [(PLBatteryUIResponderService *)self endOfDayWithNow:v7];
    v13 = [v12 numberWithDouble:?];
    resultDictionary3 = [(PLBatteryUIResponderService *)self resultDictionary];
    [resultDictionary3 setObject:v13 forKeyedSubscript:@"endOfDay"];

    v11 = MEMORY[0x277CCABB0];
    [(PLBatteryUIResponderService *)self endOfHourWithNow:v7];
  }

  v15 = [v11 numberWithDouble:?];
  resultDictionary4 = [(PLBatteryUIResponderService *)self resultDictionary];
  [resultDictionary4 setObject:v15 forKeyedSubscript:@"endOfHour"];

  resultDictionary5 = [(PLBatteryUIResponderService *)self resultDictionary];
  [resultDictionary5 setObject:&unk_28714B998 forKeyedSubscript:@"PLBatteryUIXPCVersionKey"];
}

void __39__PLBatteryUIResponderService_coalesce__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = PLBatteryUsageUIKeyFromConfiguration();
    v5 = [v36 objectForKeyedSubscript:@"enum"];
    v6 = [v5 intValue];

    v7 = PLBatteryUsageUIStringForResponseType();
    v8 = [*(a1 + 32) responseCache];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    v10 = [v8 objectForKeyedSubscript:v9];
    v11 = [v10 count];

    if (v11 == 1)
    {
      v12 = [MEMORY[0x277CBEB38] dictionary];
      v13 = [*(a1 + 32) resultDictionary];
      [v13 setObject:v12 forKeyedSubscript:v7];

      v14 = [*(a1 + 32) resultDictionary];
      v15 = [v14 objectForKeyedSubscript:v7];
      [v15 setObject:v36 forKeyedSubscript:@"configuration"];

      v16 = [*(a1 + 32) responseCache];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
      v18 = [v16 objectForKeyedSubscript:v17];
      v19 = [v18 objectForKeyedSubscript:v4];
      v20 = [v19 objectForKeyedSubscript:@"result"];
      v21 = [*(a1 + 32) resultDictionary];
      v22 = v7;
      [v21 objectForKeyedSubscript:v7];
      v24 = v23 = v4;
      [v24 setObject:v20 forKeyedSubscript:@"result"];
    }

    else
    {
      v25 = [*(a1 + 32) resultDictionary];
      v26 = [v25 objectForKeyedSubscript:v7];

      if (!v26)
      {
        v27 = [MEMORY[0x277CBEB38] dictionary];
        v28 = [*(a1 + 32) resultDictionary];
        [v28 setObject:v27 forKeyedSubscript:v7];
      }

      v29 = [MEMORY[0x277CBEB38] dictionary];
      v30 = [*(a1 + 32) resultDictionary];
      v31 = [v30 objectForKeyedSubscript:v7];
      [v31 setObject:v29 forKeyedSubscript:v4];

      v32 = [*(a1 + 32) resultDictionary];
      v33 = [v32 objectForKeyedSubscript:v7];
      v34 = [v33 objectForKeyedSubscript:v4];
      [v34 setObject:v36 forKeyedSubscript:@"configuration"];

      v16 = [*(a1 + 32) responseCache];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
      v18 = [v16 objectForKeyedSubscript:v17];
      v19 = [v18 objectForKeyedSubscript:v4];
      v20 = [v19 objectForKeyedSubscript:@"result"];
      v21 = [*(a1 + 32) resultDictionary];
      v22 = v7;
      [v21 objectForKeyedSubscript:v7];
      v24 = v23 = v4;
      v35 = [v24 objectForKeyedSubscript:v23];
      [v35 setObject:v20 forKeyedSubscript:@"result"];
    }
  }
}

- (id)result
{
  v3 = PLLogCommon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_INFO, "Responder Service: Converting response to legacy format...", buf, 2u);
  }

  resultDictionary = [(PLBatteryUIResponderService *)self resultDictionary];
  v5 = [(PLBatteryUIResponderService *)self convertResponseToLegacyFormat:resultDictionary];

  v6 = [v5 mutableCopy];
  [(PLBatteryUIResponderService *)self setResultDictionary:v6];

  skipPlistWrite = [(PLBatteryUIResponderService *)self skipPlistWrite];
  if (skipPlistWrite)
  {
    v8 = PLLogCommon(skipPlistWrite);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v50 = 0;
      _os_log_impl(&dword_25EE51000, v8, OS_LOG_TYPE_INFO, "Skipping write to plist", v50, 2u);
    }

    resultDictionary2 = [(PLBatteryUIResponderService *)self resultDictionary];
    v10 = [resultDictionary2 copy];
    goto LABEL_31;
  }

  v11 = +[PLUtilities containerPath];
  v12 = [v11 stringByAppendingString:@"/Library/BatteryLife/Debug/"];
  [PLUtilities createAndChownDirectoryIfDirectoryDoesNotExist:v12];

  v13 = +[PLUtilities containerPath];
  resultDictionary2 = [v13 stringByAppendingString:@"/Library/BatteryLife/Debug/"];

  requestingService = [(PLBatteryUIResponderService *)self requestingService];

  if (requestingService)
  {
    v15 = MEMORY[0x277CCACA8];
    requestingService2 = [(PLBatteryUIResponderService *)self requestingService];
    v17 = [v15 stringWithFormat:@"BatteryUI%@", requestingService2];

    v18 = [MEMORY[0x277CBEBC0] fileURLWithPath:resultDictionary2 isDirectory:1];
    v19 = [v18 URLByAppendingPathComponent:v17];

    [v19 URLByAppendingPathExtension:@"plist"];
  }

  else
  {
    v20 = MEMORY[0x277CBEBC0];
    v17 = +[PLUtilities containerPath];
    v19 = [v17 stringByAppendingString:@"/Library/BatteryLife/Debug/BatteryUI.plist"];
    [v20 fileURLWithPath:v19];
  }
  v21 = ;

  v23 = PLLogCommon(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponderService result];
  }

  resultDictionary3 = [(PLBatteryUIResponderService *)self resultDictionary];
  v49 = 0;
  v25 = [resultDictionary3 writeToURL:v21 error:&v49];
  v26 = v49;

  if (v25)
  {
    path = [v21 path];
    [PLUtilities setMobileOwnerForFile:path];

    v30 = PLLogCommon(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponderService result];
    }

    [MEMORY[0x277D3F180] doubleForKey:@"kPPSDebugLogRetentionDuration" ifNotSet:1209600.0];
    v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:?];
    v32 = [PPSFileUtilities markAsPurgeable:v21 urgency:512 startDate:v31];

    if (v32)
    {
      goto LABEL_21;
    }

    v34 = PLLogCommon(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryUIResponderService result];
    }
  }

  else
  {
    v34 = PLLogCommon(v27);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryUIResponderService result];
    }
  }

LABEL_21:
  plistCopyDestination = [(PLBatteryUIResponderService *)self plistCopyDestination];

  if (plistCopyDestination)
  {
    v36 = resultDictionary2;
    plistCopyDestination2 = [(PLBatteryUIResponderService *)self plistCopyDestination];
    v38 = [PLUtilities PLCopyItemsFromPath:v36 toPath:plistCopyDestination2];

    if (v38)
    {
      v40 = MEMORY[0x277CBEBC0];
      lastPathComponent = [v21 lastPathComponent];
      v42 = [v36 stringByAppendingPathComponent:lastPathComponent];
      v43 = [v40 fileURLWithPath:v42];
      [PPSFileUtilities markAsPurgeable:v43 urgency:512 startDate:0];

      v45 = PLLogCommon(v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        [(PLBatteryUIResponderService *)self result];
      }
    }

    else
    {
      v46 = PLLogCommon(v39);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [(PLBatteryUIResponderService *)self result];
      }

      [(PLBatteryUIResponderService *)self setResultDictionary:0];
    }
  }

  resultDictionary4 = [(PLBatteryUIResponderService *)self resultDictionary];
  v10 = [resultDictionary4 copy];

LABEL_31:

  return v10;
}

- (double)endOfDayWithNow:(id)now
{
  v3 = MEMORY[0x277CBEA80];
  nowCopy = now;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:60 fromDate:nowCopy];

  v7 = [v6 valueForComponent:32];
  [v6 setValue:(v7 - fmod(v7 forComponent:{3.0) + 3.0), 32}];
  v8 = [currentCalendar dateFromComponents:v6];
  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];
  v10 = [convertFromSystemToMonotonic dateByAddingTimeInterval:-86400.0];
  v11 = convertFromSystemToMonotonic;
  [v10 timeIntervalSince1970];
  v13 = v12;
  [v11 timeIntervalSince1970];
  v15 = v14;

  v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v13 + v15 - v13];
  convertFromMonotonicToSystem = [v16 convertFromMonotonicToSystem];
  [convertFromMonotonicToSystem timeIntervalSince1970];
  v19 = v18;

  return v19;
}

- (double)endOfHourWithNow:(id)now
{
  v3 = PLCalculateEndOfHourWithDate();
  [v3 timeIntervalSince1970];
  v5 = v4;

  return v5;
}

- (id)possibleRequests
{
  v5[23] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_287146FF0;
  v5[0] = objc_opt_class();
  v4[1] = &unk_287147008;
  v5[1] = objc_opt_class();
  v4[2] = &unk_287147020;
  v5[2] = objc_opt_class();
  v4[3] = &unk_287147038;
  v5[3] = objc_opt_class();
  v4[4] = &unk_287147050;
  v5[4] = objc_opt_class();
  v4[5] = &unk_287147068;
  v5[5] = objc_opt_class();
  v4[6] = &unk_287147080;
  v5[6] = objc_opt_class();
  v4[7] = &unk_287147098;
  v5[7] = objc_opt_class();
  v4[8] = &unk_2871470B0;
  v5[8] = objc_opt_class();
  v4[9] = &unk_2871470C8;
  v5[9] = objc_opt_class();
  v4[10] = &unk_2871470E0;
  v5[10] = objc_opt_class();
  v4[11] = &unk_2871470F8;
  v5[11] = objc_opt_class();
  v4[12] = &unk_287147110;
  v5[12] = objc_opt_class();
  v4[13] = &unk_287147128;
  v5[13] = objc_opt_class();
  v4[14] = &unk_287147140;
  v5[14] = objc_opt_class();
  v4[15] = &unk_287147158;
  v5[15] = objc_opt_class();
  v4[16] = &unk_287147170;
  v5[16] = objc_opt_class();
  v4[17] = &unk_287147188;
  v5[17] = objc_opt_class();
  v4[18] = &unk_2871471A0;
  v5[18] = objc_opt_class();
  v4[19] = &unk_2871471B8;
  v5[19] = objc_opt_class();
  v4[20] = &unk_2871471D0;
  v5[20] = objc_opt_class();
  v4[21] = &unk_2871471E8;
  v5[21] = objc_opt_class();
  v4[22] = &unk_287147200;
  v5[22] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:23];

  return v2;
}

- (id)constructResponseObjectFromType:(int64_t)type
{
  possibleRequests = [(PLBatteryUIResponderService *)self possibleRequests];
  v6 = _os_feature_enabled_impl();
  v7 = v6;
  v8 = PLLogCommon(v6);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v9)
    {
      [PLBatteryUIResponderService constructResponseObjectFromType:];
    }

    v10 = [possibleRequests mutableCopy];
    [v10 setObject:objc_opt_class() forKeyedSubscript:&unk_287147218];
    v8 = possibleRequests;
    possibleRequests = v10;
  }

  else if (v9)
  {
    [PLBatteryUIResponderService constructResponseObjectFromType:];
  }

  v11 = _os_feature_enabled_impl();
  v12 = v11;
  v13 = PLLogCommon(v11);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v14)
    {
      [PLBatteryUIResponderService constructResponseObjectFromType:];
    }
  }

  else if (v14)
  {
    [PLBatteryUIResponderService constructResponseObjectFromType:];
  }

  allKeys = [possibleRequests allKeys];
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v17 = [allKeys containsObject:v16];

  if (v17)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v19 = [possibleRequests objectForKeyedSubscript:v18];

    v20 = objc_alloc_init(v19);
    v21 = objc_initWeak(&location, self);
    [v20 setResponderService:self];

    objc_destroyWeak(&location);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)convertResponseToLegacyFormat:(id)format
{
  v46 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [formatCopy objectForKeyedSubscript:@"endOfHour"];
  [dictionary setObject:v6 forKeyedSubscript:@"endOfHour"];

  v7 = [formatCopy objectForKeyedSubscript:@"endOfDay"];
  [dictionary setObject:v7 forKeyedSubscript:@"endOfDay"];

  v8 = [formatCopy objectForKeyedSubscript:@"PLBatteryUIXPCVersionKey"];
  [dictionary setObject:v8 forKeyedSubscript:@"PLBatteryUIXPCVersionKey"];

  v9 = [formatCopy objectForKeyedSubscript:@"PLBatteryUIQueryTime"];
  [dictionary setObject:v9 forKeyedSubscript:@"PLBatteryUIQueryTime"];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:dictionary2 forKeyedSubscript:@"Breakdown"];

  array = [MEMORY[0x277CBEB18] array];
  v12 = [dictionary objectForKeyedSubscript:@"Breakdown"];
  [v12 setObject:array forKeyedSubscript:@"PLBatteryUISuggestionArrayKey"];

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:dictionary3 forKeyedSubscript:@"Graph"];

  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  v15 = [dictionary objectForKeyedSubscript:@"Graph"];
  [v15 setObject:dictionary4 forKeyedSubscript:@"PLBatteryUIGraph24hrs"];

  array2 = [MEMORY[0x277CBEB18] array];
  v17 = [dictionary objectForKeyedSubscript:@"Graph"];
  [v17 setObject:array2 forKeyedSubscript:@"PLBatteryUIGraphDays"];

  array3 = [MEMORY[0x277CBEB18] array];
  v19 = [dictionary objectForKeyedSubscript:@"Graph"];
  [v19 setObject:array3 forKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];

  v20 = [dictionary objectForKeyedSubscript:@"Breakdown"];
  [v20 setObject:&unk_287147230 forKeyedSubscript:@"PLBatteryUIDataDurationKey"];

  array4 = [MEMORY[0x277CBEB18] array];
  v22 = [dictionary objectForKeyedSubscript:@"Breakdown"];
  [v22 setObject:array4 forKeyedSubscript:@"PLBatteryUIUrsaIssuesKey"];

  configuration = [(PLBatteryUIResponderService *)self configuration];
  v38 = MEMORY[0x277D85DD0];
  v39 = 3221225472;
  v40 = __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke;
  v41 = &unk_279A5EBC0;
  v42 = formatCopy;
  v24 = dictionary;
  v43 = v24;
  v25 = formatCopy;
  [configuration enumerateKeysAndObjectsUsingBlock:&v38];

  v26 = _os_feature_enabled_impl();
  if (v26)
  {
    v27 = PLLogCommon(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v27, OS_LOG_TYPE_DEFAULT, "Responder Service: createCoalescedBreakdownWithResponse", buf, 2u);
    }

    v28 = [v24 copy];
    v29 = [(PLBatteryUIResponderService *)self createCoalescedBreakdownWithResponse:v28];

    v31 = PLLogCommon(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v29 count];
      *buf = 67109120;
      v45 = v32;
      _os_log_impl(&dword_25EE51000, v31, OS_LOG_TYPE_DEFAULT, "Responder Service: coalescedBreakdown count: %d", buf, 8u);
    }

    if (v29)
    {
      [v24 setObject:v29 forKeyedSubscript:@"PLBatteryUIDailyCoalescedBreakdown"];
    }

    else
    {
      v34 = PLLogCommon(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [PLBatteryUIResponderService convertResponseToLegacyFormat:];
      }
    }
  }

  v35 = v43;
  v36 = v24;

  return v24;
}

void __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v189 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKeyedSubscript:@"enum"];
    v6 = [v5 intValue];

    v7 = [v4 objectForKeyedSubscript:@"bucket"];
    [v7 doubleValue];
    v9 = v8;

    v10 = [v4 objectForKeyedSubscript:@"end"];
    [v10 doubleValue];
    v12 = v11;
    v13 = [v4 objectForKeyedSubscript:@"start"];
    [v13 doubleValue];
    v15 = v14;

    v16 = [v4 objectForKeyedSubscript:@"isDynamicEnd"];
    v17 = [v16 BOOLValue];

    v18 = PLBatteryUsageUIStringForResponseType();
    v19 = PLBatteryUsageUIKeyFromConfiguration();
    v20 = [*(a1 + 32) objectForKeyedSubscript:v18];
    v21 = [v20 objectForKeyedSubscript:@"result"];
    v176 = a1;
    v22 = [*(a1 + 32) objectForKeyedSubscript:v18];
    v23 = v22;
    if (v21)
    {
      v24 = [v22 objectForKeyedSubscript:@"result"];
    }

    else
    {
      [v22 objectForKeyedSubscript:v19];
      v25 = v4;
      v26 = v18;
      v27 = v17;
      v29 = v28 = v19;
      v24 = [v29 objectForKeyedSubscript:@"result"];

      v19 = v28;
      v17 = v27;
      v18 = v26;
      v4 = v25;
    }

    v31 = v24;
    if (v24)
    {
      v32 = v12 - v15;
      switch(v6)
      {
        case 0:
          if (v32 == 86400.0)
          {
            [*(v176 + 40) objectForKeyedSubscript:@"Graph"];
            v34 = v33 = v19;
            v35 = [v34 objectForKeyedSubscript:@"PLBatteryUIGraph24hrs"];
            [v35 setObject:v31 forKeyedSubscript:@"PLBatteryUIChargingIntervalsKey"];
            goto LABEL_9;
          }

          break;
        case 1:
          v104 = *(v176 + 40);
          v105 = @"PLBatteryUILastChargeKey";
          goto LABEL_108;
        case 2:
          if (v32 != 864000.0 || v9 != 86400.0)
          {
            break;
          }

          v166 = v19;
          v168 = v18;
          v163 = v24;
          v69 = v24;
          v92 = PLLogCommon(v69);
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
          {
            __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke_cold_1(v69);
          }

          v93 = [*(v176 + 40) objectForKeyedSubscript:@"Graph"];
          v94 = [v93 objectForKeyedSubscript:@"PLBatteryUIGraphDays"];
          v95 = [v94 count];

          if (v95 <= 9)
          {
            v96 = [*(v176 + 40) objectForKeyedSubscript:@"Graph"];
            v97 = [v96 objectForKeyedSubscript:@"PLBatteryUIGraphDays"];
            v98 = [v97 count];

            if (10 - v98 >= 1)
            {
              v99 = v98 - 10;
              do
              {
                v100 = [*(v176 + 40) objectForKeyedSubscript:{@"Graph", v163}];
                v101 = [v100 objectForKeyedSubscript:@"PLBatteryUIGraphDays"];
                v102 = objc_opt_new();
                [v101 addObject:v102];

                v103 = __CFADD__(v99++, 1);
              }

              while (!v103);
            }
          }

          v181[0] = MEMORY[0x277D85DD0];
          v181[1] = 3221225472;
          v181[2] = __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke_236;
          v181[3] = &unk_279A5E370;
          v182 = *(v176 + 40);
          [v69 enumerateObjectsUsingBlock:v181];

          goto LABEL_66;
        case 3:
          if (v32 != 1296000.0 || v9 != 86400.0)
          {
            break;
          }

          v104 = *(v176 + 40);
          v105 = @"Drain";
          goto LABEL_108;
        case 4:
          if (v32 == 86400.0 && v9 == 900.0)
          {
            [*(v176 + 40) objectForKeyedSubscript:@"Graph"];
            v67 = v66 = v19;
            v68 = [v67 objectForKeyedSubscript:@"PLBatteryUIGraph24hrs"];
            [v68 setObject:v24 forKeyedSubscript:@"PLBatteryUIBatteryLevelsKey"];

            v19 = v66;
          }

          if (v32 <= 86400.0)
          {
            break;
          }

          v166 = v19;
          v168 = v18;
          v69 = v24;
          v70 = (86400.0 / v9);
          LODWORD(v18) = ([v69 count] / v70);
          v71 = [v69 count];
          if (v18 >= v71)
          {
            v18 = v71;
          }

          else
          {
            v18 = v18;
          }

          v72 = [*(v176 + 40) objectForKeyedSubscript:{@"Graph", v24}];
          v73 = [v72 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];
          v74 = [v73 count];

          v171 = v18;
          if (v74 < v18)
          {
            v75 = [*(v176 + 40) objectForKeyedSubscript:@"Graph"];
            v76 = [v75 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];
            v77 = v18 - [v76 count];

            if (v77 >= 1)
            {
              do
              {
                v78 = [*(v176 + 40) objectForKeyedSubscript:@"Graph"];
                v79 = [v78 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];
                v80 = objc_opt_new();
                [v79 addObject:v80];

                --v77;
              }

              while (v77);
            }
          }

          if (v171 >= 1)
          {
            v81 = 0;
            for (i = 0; i != v171; ++i)
            {
              v83 = objc_opt_new();
              v84 = (86400.0 / v9);
              v85 = v81;
              if (v70 >= 1)
              {
                do
                {
                  v86 = [v69 objectAtIndexedSubscript:v85];
                  [v83 addObject:v86];

                  ++v85;
                  --v84;
                }

                while (v84);
              }

              v87 = [*(v176 + 40) objectForKeyedSubscript:@"Graph"];
              v88 = [v87 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];
              v89 = [v88 objectAtIndexedSubscript:i];
              [v89 setObject:v83 forKeyedSubscript:@"PLBatteryUIBatteryLevelsKey"];

              v81 += v70;
            }
          }

LABEL_66:

          v18 = v168;
          goto LABEL_88;
        case 5:
          v167 = v19;
          v170 = v18;
          if (v32 == 86400.0 && v9 == 3600.0)
          {
            v185[0] = @"PLBatteryUIGraphHourly";
            v173 = [v24 objectForKeyedSubscript:@"PLBatteryUIScreenOnTimeKey"];
            v131 = [v173 objectForKeyedSubscript:@"PLBatteryUIGraphByBucket"];
            v186[0] = v131;
            v185[1] = @"PLBatteryUIGraphTotal";
            v132 = [v24 objectForKeyedSubscript:@"PLBatteryUIScreenOnTimeKey"];
            v133 = [v132 objectForKeyedSubscript:@"PLBatteryUIGraphTotal"];
            v186[1] = v133;
            v134 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v186 forKeys:v185 count:2];
            v135 = [*(v176 + 40) objectForKeyedSubscript:@"Graph"];
            v136 = [v135 objectForKeyedSubscript:@"PLBatteryUIGraph24hrs"];
            [v136 setObject:v134 forKeyedSubscript:@"PLBatteryUIScreenOnTimeKey"];

            v183[0] = @"PLBatteryUIGraphHourly";
            v18 = v170;
            v174 = [v24 objectForKeyedSubscript:@"PLBatteryUIScreenOffTimeKey"];
            v164 = [v174 objectForKeyedSubscript:@"PLBatteryUIGraphByBucket"];
            v183[1] = @"PLBatteryUIGraphTotal";
            v184[0] = v164;
            v137 = [v24 objectForKeyedSubscript:@"PLBatteryUIScreenOffTimeKey"];
            v138 = [v137 objectForKeyedSubscript:@"PLBatteryUIGraphTotal"];
            v184[1] = v138;
            v139 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v184 forKeys:v183 count:2];
            v140 = [*(v176 + 40) objectForKeyedSubscript:@"Graph"];
            v141 = [v140 objectForKeyedSubscript:@"PLBatteryUIGraph24hrs"];
            [v141 setObject:v139 forKeyedSubscript:@"PLBatteryUIScreenOffTimeKey"];

            v31 = v24;
          }

          if (v32 == 864000.0 && v9 == 86400.0)
          {
            v142 = [v31 objectForKeyedSubscript:@"PLBatteryUIScreenOnTimeKey"];
            v175 = [v142 objectForKeyedSubscript:@"PLBatteryUIGraphByBucket"];

            v165 = v31;
            v143 = [v31 objectForKeyedSubscript:@"PLBatteryUIScreenOffTimeKey"];
            v144 = [v143 objectForKeyedSubscript:@"PLBatteryUIGraphByBucket"];

            v145 = [*(v176 + 40) objectForKeyedSubscript:@"Graph"];
            v146 = [v145 objectForKeyedSubscript:@"PLBatteryUIGraphDays"];
            v147 = [v146 count];

            if (v147 <= 9)
            {
              v148 = [*(v176 + 40) objectForKeyedSubscript:@"Graph"];
              v149 = [v148 objectForKeyedSubscript:@"PLBatteryUIGraphDays"];
              v150 = [v149 count];

              if (10 - v150 >= 1)
              {
                v151 = v150 - 10;
                do
                {
                  v152 = [*(v176 + 40) objectForKeyedSubscript:@"Graph"];
                  v153 = [v152 objectForKeyedSubscript:@"PLBatteryUIGraphDays"];
                  v154 = objc_opt_new();
                  [v153 addObject:v154];

                  v103 = __CFADD__(v151++, 1);
                }

                while (!v103);
              }
            }

            v179[0] = MEMORY[0x277D85DD0];
            v179[1] = 3221225472;
            v179[2] = __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke_280;
            v179[3] = &unk_279A5EB98;
            v180 = *(v176 + 40);
            [v175 enumerateObjectsUsingBlock:v179];
            v177[0] = MEMORY[0x277D85DD0];
            v177[1] = 3221225472;
            v177[2] = __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke_2;
            v177[3] = &unk_279A5EB98;
            v178 = *(v176 + 40);
            [v144 enumerateObjectsUsingBlock:v177];

            v18 = v170;
            v31 = v165;
          }

          v155 = MEMORY[0x277CCABB0];
          v156 = [v31 objectForKeyedSubscript:@"PLBatteryUIDidAdjustTimesKey"];
          v157 = [v155 numberWithBool:{objc_msgSend(v156, "BOOLValue")}];
          v158 = [*(v176 + 40) objectForKeyedSubscript:@"Graph"];
          [v158 setObject:v157 forKeyedSubscript:@"PLBatteryUIDidAdjustTimesKey"];

          v19 = v167;
          break;
        case 6:
          v159 = _os_feature_enabled_impl();
          if (v159)
          {
            v104 = *(v176 + 40);
            v105 = @"PLBatteryUIPausedChargingKey";
LABEL_108:
            [v104 setObject:v24 forKeyedSubscript:v105];
          }

          else
          {
            v162 = PLLogCommon(v159);
            if (os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
            {
              __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke_cold_2();
            }
          }

          break;
        case 7:
          if (v32 == 86400.0)
          {
            v106 = v19;
            v107 = PLLogCommon(v30);
            if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v188 = *&v24;
              _os_log_impl(&dword_25EE51000, v107, OS_LOG_TYPE_INFO, "response=%@", buf, 0xCu);
            }

            v108 = [*(v176 + 40) objectForKeyedSubscript:@"Graph"];
            v109 = [v108 objectForKeyedSubscript:@"PLBatteryUIGraph24hrs"];
            [v109 setObject:v24 forKeyedSubscript:@"PLBatteryUIChargingStateIntervalsDictKey"];

            v19 = v106;
          }

          if (v32 <= 86400.0 || v9 != 86400.0)
          {
            break;
          }

          v166 = v19;
          v169 = v18;
          v110 = PLLogCommon(v30);
          if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v188 = *&v24;
            _os_log_impl(&dword_25EE51000, v110, OS_LOG_TYPE_INFO, "response=%@", buf, 0xCu);
          }

          LODWORD(v111) = (v32 / 86400.0);
          v112 = v24;
          v113 = [v112 count];
          if (v111 >= v113)
          {
            v111 = v113;
          }

          else
          {
            v111 = v111;
          }

          v114 = [*(v176 + 40) objectForKeyedSubscript:{@"Graph", v24}];
          v115 = [v114 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];
          v116 = [v115 count];

          v172 = v111;
          if (v116 < v111)
          {
            v117 = [*(v176 + 40) objectForKeyedSubscript:@"Graph"];
            v118 = [v117 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];
            v119 = v111 - [v118 count];

            if (v119 >= 1)
            {
              do
              {
                v120 = [*(v176 + 40) objectForKeyedSubscript:@"Graph"];
                v121 = [v120 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];
                v122 = objc_opt_new();
                [v121 addObject:v122];

                --v119;
              }

              while (v119);
            }
          }

          v18 = v169;
          if (v172 >= 1)
          {
            for (j = 0; j != v172; ++j)
            {
              v124 = [v112 objectAtIndexedSubscript:j];
              v125 = [*(v176 + 40) objectForKeyedSubscript:@"Graph"];
              v126 = [v125 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];
              v127 = [v126 objectAtIndexedSubscript:j];
              [v127 setObject:v124 forKeyedSubscript:@"PLBatteryUIChargingStateIntervalsDictKey"];
            }
          }

LABEL_88:
          v31 = v163;
          v19 = v166;
          break;
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 14:
          if (![v24 count])
          {
            break;
          }

          [*(v176 + 40) objectForKeyedSubscript:@"Breakdown"];
          v34 = v33 = v19;
          v35 = [v34 objectForKeyedSubscript:@"PLBatteryUISuggestionArrayKey"];
          [v35 addObject:v31];
          goto LABEL_9;
        case 13:
          v90 = v19;
          v91 = @"PLBatteryUIUsageSummaryKey";
          goto LABEL_112;
        case 15:
          v90 = v19;
          v91 = @"hasNoteworthyInformation";
          goto LABEL_112;
        case 16:
          v90 = v19;
          v91 = @"insightsAndSuggestionsSummaryKey";
          goto LABEL_112;
        case 17:
          [v24 objectForKeyedSubscript:@"UrsaDefinition"];
          v128 = v33 = v19;
          v129 = [v128 count];

          v19 = v33;
          if (!v129)
          {
            break;
          }

          v34 = [*(v176 + 40) objectForKeyedSubscript:@"Breakdown"];
          v35 = [v34 objectForKeyedSubscript:@"PLBatteryUIUrsaIssuesKey"];
          v130 = [v31 objectForKeyedSubscript:@"UrsaDefinition"];
          [v35 addObjectsFromArray:v130];

LABEL_9:
          v19 = v33;
          break;
        case 18:
          v90 = v19;
          v91 = @"buiMappings";
LABEL_112:
          v160 = [v24 objectForKeyedSubscript:v91];
          v161 = v91;
          v19 = v90;
          [*(v176 + 40) setObject:v160 forKeyedSubscript:v161];

          break;
        default:
          if ((v6 - 100) < 6)
          {
            v36 = v19;
            v37 = [v24 objectForKeyedSubscript:@"PLBatteryUIDataDurationKey"];
            v38 = [v37 intValue];

            v39 = [*(v176 + 40) objectForKeyedSubscript:@"Breakdown"];
            v40 = [v39 objectForKeyedSubscript:@"PLBatteryUIDataDurationKey"];
            [v40 doubleValue];
            v42 = v41;

            if (v42 < v38)
            {
              v44 = PLLogCommon(v43);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                v188 = v38;
                _os_log_impl(&dword_25EE51000, v44, OS_LOG_TYPE_INFO, "Maximum Data Duration = %f", buf, 0xCu);
              }

              v45 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
              v46 = [*(v176 + 40) objectForKeyedSubscript:@"Breakdown"];
              [v46 setObject:v45 forKeyedSubscript:@"PLBatteryUIDataDurationKey"];
            }

            if (v32 == 86400.0 && v9 == 86400.0)
            {
              v47 = [v24 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
              v48 = [v47 firstObject];
              v49 = [*(v176 + 40) objectForKeyedSubscript:@"Breakdown"];
              [v49 setObject:v48 forKeyedSubscript:@"PLBatteryUIQueryRangeDayKey"];
            }

            if (v32 == 86400.0 && v9 == 3600.0)
            {
              v50 = [v24 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
              v51 = [*(v176 + 40) objectForKeyedSubscript:@"Breakdown"];
              [v51 setObject:v50 forKeyedSubscript:@"PLBatteryUIQueryRangeDayTapKey"];
            }

            if (v32 == 864000.0 && v9 == 864000.0)
            {
              v52 = [v24 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
              v53 = [v52 firstObject];
              v54 = [*(v176 + 40) objectForKeyedSubscript:@"Breakdown"];
              [v54 setObject:v53 forKeyedSubscript:@"PLBatteryUIQueryRangeWeekKey"];
            }

            if (v32 == 864000.0 && v9 == 86400.0)
            {
              v55 = [v24 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
              v56 = [*(v176 + 40) objectForKeyedSubscript:@"Breakdown"];
              v57 = v56;
              if (v17)
              {
                v58 = @"PLBatteryUIQueryRangeWeekTapDynamicEndKey";
              }

              else
              {
                v58 = @"PLBatteryUIQueryRangeWeekTapKey";
              }

              [v56 setObject:v55 forKeyedSubscript:v58];
            }

            if (v32 == 10800.0 && v9 == 10800.0)
            {
              v59 = [v24 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
              v60 = [v59 firstObject];
              v61 = [*(v176 + 40) objectForKeyedSubscript:@"Breakdown"];
              [v61 setObject:v60 forKeyedSubscript:@"PLBatteryUIQueryRangeDayKey"];
            }

            if (v32 == 691200.0 && v9 == 86400.0)
            {
              v62 = [v24 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
              v63 = [*(v176 + 40) objectForKeyedSubscript:@"Breakdown"];
              [v63 setObject:v62 forKeyedSubscript:@"PLBatteryUIDailyDynamicDayBreakdown"];
            }

            v19 = v36;
            if (v32 == 1296000.0 && v9 == 86400.0)
            {
              v64 = [v24 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
              v65 = [*(v176 + 40) objectForKeyedSubscript:@"Breakdown"];
              [v65 setObject:v64 forKeyedSubscript:@"PLBatteryUIDailyFullDayBreakdown"];

              v19 = v36;
            }
          }

          break;
      }
    }
  }
}

void __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke_236(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectForKeyedSubscript:@"Graph"];
  v7 = [v6 objectForKeyedSubscript:@"PLBatteryUIGraphDays"];
  v9 = [v7 objectAtIndex:a3];

  v8 = [v5 objectForKeyedSubscript:@"PLBatteryUIEnergyKey"];

  [v9 setObject:v8 forKeyedSubscript:@"PLBatteryUIEnergyKey"];
}

void __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke_280(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectForKeyedSubscript:@"Graph"];
  v7 = [v6 objectForKeyedSubscript:@"PLBatteryUIGraphDays"];
  v9 = [v7 objectAtIndex:a3];

  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:v5 forKeyedSubscript:@"PLBatteryUIGraphTotal"];

  [v9 setObject:v8 forKeyedSubscript:@"PLBatteryUIScreenOnTimeKey"];
}

void __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectForKeyedSubscript:@"Graph"];
  v7 = [v6 objectForKeyedSubscript:@"PLBatteryUIGraphDays"];
  v9 = [v7 objectAtIndex:a3];

  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:v5 forKeyedSubscript:@"PLBatteryUIGraphTotal"];

  [v9 setObject:v8 forKeyedSubscript:@"PLBatteryUIScreenOffTimeKey"];
}

- (id)createCoalescedBreakdownWithResponse:(id)response
{
  v32[1] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = [responseCopy objectForKeyedSubscript:@"Breakdown"];
  v6 = [v5 objectForKeyedSubscript:@"PLBatteryUIDailyFullDayBreakdown"];
  if (v6)
  {
    v7 = v6;
    v8 = [responseCopy objectForKeyedSubscript:@"Graph"];
    v9 = [v8 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];

    if (v9)
    {
      v10 = [responseCopy objectForKeyedSubscript:@"Breakdown"];
      v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIDailyFullDayBreakdown"];

      v12 = [responseCopy objectForKeyedSubscript:@"Breakdown"];
      v13 = [v12 objectForKeyedSubscript:@"PLBatteryUIDailyDynamicDayBreakdown"];

      v14 = [responseCopy objectForKeyedSubscript:@"PLBatteryUIUsageSummaryKey"];
      v15 = [responseCopy objectForKeyedSubscript:@"Graph"];
      v16 = [v15 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];

      v17 = [v13 count];
      if (v17)
      {
        *(&v30 + 1) = v14;
        selfCopy = self;
        if (v17 >= 8)
        {
          v18 = 8;
        }

        else
        {
          v18 = v17;
        }

        v19 = [v11 subarrayWithRange:{objc_msgSend(v11, "count") - v18, objc_msgSend(v11, "count") + v18 - objc_msgSend(v11, "count")}];
        v9 = [v19 mutableCopy];

        v20 = [v13 subarrayWithRange:{objc_msgSend(v13, "count") - v18, objc_msgSend(v13, "count") + v18 - objc_msgSend(v13, "count")}];
        *&v30 = [v20 copy];

        if ([v9 count])
        {
          v21 = 0;
          do
          {
            v22 = [responseCopy objectForKeyedSubscript:@"Graph"];
            v23 = [v22 objectForKeyedSubscript:@"PLBatteryUIGraphDays24hrs"];
            v24 = [v23 count];

            if (v24 <= v21)
            {
              break;
            }

            v31 = @"PLBatteryUIGraph24hrs";
            v25 = [v16 objectAtIndexedSubscript:v21];
            v32[0] = v25;
            v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
            v27 = [v9 objectAtIndexedSubscript:v21];
            [v27 setObject:v26 forKeyedSubscript:@"Graph"];

            ++v21;
          }

          while ([v9 count] > v21);
        }

        v14 = *(&v30 + 1);
        v13 = v30;
        if (v30 != 0)
        {
          [(PLBatteryUIResponderService *)selfCopy prepareBreakdown:v9 withDrainSummaries:*(&v30 + 1) withFullDayBreakdown:v11 withDynamicBreakdown:v30];
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

- (void)prepareBreakdown:(id)breakdown withDrainSummaries:(id)summaries withFullDayBreakdown:(id)dayBreakdown withDynamicBreakdown:(id)dynamicBreakdown
{
  v152 = *MEMORY[0x277D85DE8];
  breakdownCopy = breakdown;
  summariesCopy = summaries;
  dayBreakdownCopy = dayBreakdown;
  dynamicBreakdownCopy = dynamicBreakdown;
  v95 = breakdownCopy;
  v107 = [breakdownCopy count];
  v96 = summariesCopy;
  v94 = [summariesCopy objectAtIndexedSubscript:0];
  v11 = objc_opt_new();
  v12 = 8;
  do
  {
    [v11 addObject:&unk_287147230];
    --v12;
  }

  while (v12);
  v13 = [v94 objectForKeyedSubscript:@"SummaryChart"];
  v144[0] = MEMORY[0x277D85DD0];
  v144[1] = 3221225472;
  v144[2] = __109__PLBatteryUIResponderService_prepareBreakdown_withDrainSummaries_withFullDayBreakdown_withDynamicBreakdown___block_invoke;
  v144[3] = &unk_279A5E370;
  v145 = v11;
  v14 = v11;
  [v13 enumerateObjectsUsingBlock:v144];

  reverseObjectEnumerator = [v14 reverseObjectEnumerator];

  allObjects = [reverseObjectEnumerator allObjects];
  v93 = [allObjects mutableCopy];

  v92 = [v94 objectForKeyedSubscript:@"SummaryComparisonType"];
  v91 = [v94 objectForKeyedSubscript:@"SummaryDrainAverage"];
  v103 = [breakdownCopy objectAtIndexedSubscript:v107 - 1];
  [v103 setObject:v93 forKeyedSubscript:@"PLBatteryUIPreviousDrain"];
  [v103 setObject:v92 forKeyedSubscript:@"PLBatteryUIComparisonType"];
  [v103 setObject:v91 forKeyedSubscript:@"PLBatteryUIDrainAverage"];
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  obj = [v103 objectForKeyedSubscript:@"PLBatteryUIAppBreakdownSortOrderKey"];
  v17 = [obj countByEnumeratingWithState:&v140 objects:v151 count:16];
  if (v17)
  {
    v18 = *v141;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v141 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v140 + 1) + 8 * i);
        v21 = [v103 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
        v22 = [v21 objectForKeyedSubscript:v20];

        if (v22)
        {
          v23 = objc_opt_new();
          v24 = 8;
          do
          {
            [v23 addObject:&unk_287147230];
            --v24;
          }

          while (v24);
          v136 = 0;
          v137 = &v136;
          v138 = 0x2020000000;
          v139 = 0;
          v132[0] = MEMORY[0x277D85DD0];
          v132[1] = 3221225472;
          v132[2] = __109__PLBatteryUIResponderService_prepareBreakdown_withDrainSummaries_withFullDayBreakdown_withDynamicBreakdown___block_invoke_2;
          v132[3] = &unk_279A5EBE8;
          v132[4] = v20;
          v25 = v23;
          v133 = v25;
          v134 = dynamicBreakdownCopy;
          v135 = &v136;
          [v134 enumerateObjectsUsingBlock:v132];
          [v22 setObject:v25 forKeyedSubscript:@"PLBatteryUIPreviousDrain"];
          v26 = [MEMORY[0x277CCABB0] numberWithInt:(*(v137 + 6) / 7)];
          [v22 setObject:v26 forKeyedSubscript:@"PLBatteryUIDrainAverage"];

          _Block_object_dispose(&v136, 8);
        }
      }

      v17 = [obj countByEnumeratingWithState:&v140 objects:v151 count:16];
    }

    while (v17);
  }

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  obja = [v94 objectForKeyedSubscript:@"SummaryList"];
  v27 = [obja countByEnumeratingWithState:&v128 objects:v150 count:16];
  if (v27)
  {
    v28 = *v129;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v129 != v28)
        {
          objc_enumerationMutation(obja);
        }

        v30 = *(*(&v128 + 1) + 8 * j);
        v31 = [v30 objectForKeyedSubscript:@"BundleID"];
        v32 = [v103 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
        v33 = [v32 objectForKeyedSubscript:v31];

        if (v33)
        {
          [v33 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"PLBatteryUIIsAnomalous"];
          v34 = [v30 objectForKeyedSubscript:@"qualifierType"];

          if (v34)
          {
            v35 = [v33 objectForKeyedSubscript:@"PLBatteryUIAppQualifiersKey"];
            v36 = [v30 objectForKeyedSubscript:@"qualifierType"];
            [v35 addObject:v36];
          }

          v37 = [v30 objectForKeyedSubscript:@"qualifierDuration"];

          if (v37)
          {
            v38 = [v30 objectForKeyedSubscript:@"qualifierDuration"];
            [v33 setObject:v38 forKeyedSubscript:@"PLBatteryUIQualifierDuration"];
          }
        }
      }

      v27 = [obja countByEnumeratingWithState:&v128 objects:v150 count:16];
    }

    while (v27);
  }

  v39 = [dayBreakdownCopy count];
  objb = objc_opt_new();
  v40 = (v39 - 3);
  if (v39 >= 3)
  {
    v99 = v107 - 2;
    if (v107 >= 2)
    {
      v97 = 1;
      v101 = v39 - 3;
      do
      {
        v100 = v40;
        v108 = [dayBreakdownCopy objectAtIndexedSubscript:?];
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v105 = [v108 objectForKeyedSubscript:@"PLBatteryUIAppBreakdownSortOrderKey"];
        v41 = [v105 countByEnumeratingWithState:&v124 objects:v149 count:16];
        if (v41)
        {
          v42 = *v125;
          do
          {
            for (k = 0; k != v41; ++k)
            {
              if (*v125 != v42)
              {
                objc_enumerationMutation(v105);
              }

              v44 = *(*(&v124 + 1) + 8 * k);
              v45 = [v108 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
              v46 = [v45 objectForKeyedSubscript:v44];

              if (v46)
              {
                v47 = MEMORY[0x277CCABB0];
                v48 = [objb objectForKeyedSubscript:v44];
                intValue = [v48 intValue];
                v50 = [v46 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                v51 = [v47 numberWithInt:{objc_msgSend(v50, "intValue") + intValue}];
                [objb setObject:v51 forKeyedSubscript:v44];
              }
            }

            v41 = [v105 countByEnumeratingWithState:&v124 objects:v149 count:16];
          }

          while (v41);
        }

        if ((v101 - v100) >= 6)
        {
          v106 = [v95 objectAtIndexedSubscript:v99];
          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          v52 = [v106 objectForKeyedSubscript:@"PLBatteryUIAppBreakdownSortOrderKey"];
          v53 = [v52 countByEnumeratingWithState:&v120 objects:v148 count:16];
          if (v53)
          {
            v54 = *v121;
            do
            {
              for (m = 0; m != v53; ++m)
              {
                if (*v121 != v54)
                {
                  objc_enumerationMutation(v52);
                }

                v56 = *(*(&v120 + 1) + 8 * m);
                v57 = [v106 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
                v58 = [v57 objectForKeyedSubscript:v56];

                if (v58)
                {
                  v59 = MEMORY[0x277CCABB0];
                  v60 = [objb objectForKeyedSubscript:v56];
                  v61 = [v59 numberWithInt:{(objc_msgSend(v60, "intValue") / 7)}];
                  [v58 setObject:v61 forKeyedSubscript:@"PLBatteryUIDrainAverage"];
                }
              }

              v53 = [v52 countByEnumeratingWithState:&v120 objects:v148 count:16];
            }

            while (v53);
          }

          if ([v96 count] > v97)
          {
            v62 = [v96 objectAtIndexedSubscript:?];
            v63 = v62;
            if (v62)
            {
              v64 = [v62 objectForKeyedSubscript:@"SummaryComparisonType"];
              [v106 setObject:v64 forKeyedSubscript:@"PLBatteryUIComparisonType"];

              v65 = [v63 objectForKeyedSubscript:@"SummaryDrainAverage"];
              [v106 setObject:v65 forKeyedSubscript:@"PLBatteryUIDrainAverage"];

              v118 = 0u;
              v119 = 0u;
              v116 = 0u;
              v117 = 0u;
              v66 = [v63 objectForKeyedSubscript:@"SummaryList"];
              v67 = [v66 countByEnumeratingWithState:&v116 objects:v147 count:16];
              if (v67)
              {
                v68 = *v117;
                do
                {
                  for (n = 0; n != v67; ++n)
                  {
                    if (*v117 != v68)
                    {
                      objc_enumerationMutation(v66);
                    }

                    v70 = *(*(&v116 + 1) + 8 * n);
                    v71 = [v70 objectForKeyedSubscript:@"BundleID"];
                    v72 = [v106 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
                    v73 = [v72 objectForKeyedSubscript:v71];

                    if (v73)
                    {
                      [v73 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"PLBatteryUIIsAnomalous"];
                      v74 = [v70 objectForKeyedSubscript:@"qualifierType"];

                      if (v74)
                      {
                        v75 = [v73 objectForKeyedSubscript:@"PLBatteryUIAppQualifiersKey"];
                        v76 = [v70 objectForKeyedSubscript:@"qualifierType"];
                        [v75 addObject:v76];
                      }

                      v77 = [v70 objectForKeyedSubscript:@"qualifierDuration"];

                      if (v77)
                      {
                        v78 = [v70 objectForKeyedSubscript:@"qualifierDuration"];
                        [v73 setObject:v78 forKeyedSubscript:@"PLBatteryUIQualifierDuration"];
                      }
                    }
                  }

                  v67 = [v66 countByEnumeratingWithState:&v116 objects:v147 count:16];
                }

                while (v67);
              }
            }
          }

          v79 = [dayBreakdownCopy objectAtIndexedSubscript:v101];
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          v104 = [v79 objectForKeyedSubscript:@"PLBatteryUIAppBreakdownSortOrderKey"];
          v80 = [v104 countByEnumeratingWithState:&v112 objects:v146 count:16];
          if (v80)
          {
            v81 = *v113;
            do
            {
              for (ii = 0; ii != v80; ++ii)
              {
                if (*v113 != v81)
                {
                  objc_enumerationMutation(v104);
                }

                v83 = *(*(&v112 + 1) + 8 * ii);
                v84 = [v79 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
                v85 = [v84 objectForKeyedSubscript:v83];

                if (v85)
                {
                  v86 = MEMORY[0x277CCABB0];
                  v87 = [objb objectForKeyedSubscript:v83];
                  intValue2 = [v87 intValue];
                  v89 = [v85 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                  v90 = [v86 numberWithInt:{intValue2 - objc_msgSend(v89, "intValue")}];
                  [objb setObject:v90 forKeyedSubscript:v83];
                }
              }

              v80 = [v104 countByEnumeratingWithState:&v112 objects:v146 count:16];
            }

            while (v80);
          }

          ++v97;
          --v101;
          --v99;
        }

        if ((v101 & 0x80000000) != 0)
        {
          break;
        }

        if (v100 < 1)
        {
          break;
        }

        v40 = v100 - 1;
      }

      while ((v99 & 0x80000000) == 0);
    }
  }
}

void __109__PLBatteryUIResponderService_prepareBreakdown_withDrainSummaries_withFullDayBreakdown_withDynamicBreakdown___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [v7 objectForKeyedSubscript:@"Drain"];

  if (v5)
  {
    v6 = [v7 objectForKeyedSubscript:@"Drain"];
    [*(a1 + 32) setObject:v6 atIndexedSubscript:a3];
  }
}

void __109__PLBatteryUIResponderService_prepareBreakdown_withDrainSummaries_withFullDayBreakdown_withDynamicBreakdown___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = a2;
  v7 = [v19 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
  v8 = [v7 objectForKeyedSubscript:*(a1 + 32)];

  v9 = v19;
  if (v8)
  {
    v10 = [v19 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
    v11 = [v10 objectForKeyedSubscript:*(a1 + 32)];
    v12 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

    v9 = v19;
    if (v12)
    {
      v13 = [v19 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
      v14 = [v13 objectForKeyedSubscript:*(a1 + 32)];
      v15 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
      [*(a1 + 40) setObject:v15 atIndexedSubscript:a3];

      if ([*(a1 + 48) count] - 1 == a3)
      {
        *a4 = 1;
      }

      else
      {
        v16 = [v19 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
        v17 = [v16 objectForKeyedSubscript:*(a1 + 32)];
        v18 = [v17 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        *(*(*(a1 + 56) + 8) + 24) += [v18 intValue];
      }

      v9 = v19;
    }
  }
}

- (id)getBreakdownForLength:(int)length fromCachedLength:(int)cachedLength forBucketSize:(int)size
{
  if (cachedLength >= length)
  {
    v5 = [(PLBatteryUIResponderService *)self rangeKeyForLength:*&cachedLength bucketSize:*&size];
    responseCache = [(PLBatteryUIResponderService *)self responseCache];
    v11 = [responseCache objectForKeyedSubscript:&unk_287146FD8];
    v12 = [v11 objectForKeyedSubscript:v5];
    v13 = [v12 objectForKeyedSubscript:@"result"];
    v14 = [v13 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];

    if ([v14 count])
    {
      v15 = [v14 count];
      v16 = length / size;
      if (v15 >= length / size)
      {
        if (v16 == 1)
        {
          [v14 lastObject];
        }

        else
        {
          [v14 subarrayWithRange:{(v15 - length / size) & ~((v15 - length / size) >> 31), v16}];
        }
        v6 = ;
        goto LABEL_15;
      }
    }

    else
    {
      v17 = PLLogCommon(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponderService getBreakdownForLength:fromCachedLength:forBucketSize:];
      }
    }

    v6 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v5 = PLLogCommon(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [PLBatteryUIResponderService getBreakdownForLength:fromCachedLength:forBucketSize:];
  }

  v6 = 0;
LABEL_16:

  return v6;
}

- (id)getUISOCDrainByBuckets:(int)buckets fromCachedLength:(int)length forBucketSize:(int)size isDynamicSource:(BOOL)source
{
  if (length >= buckets)
  {
    sourceCopy = source;
    v6 = [(PLBatteryUIResponderService *)self dynamicRangeKeyForLength:*&length bucketSize:*&size];
    v12 = @"FullDay";
    if (sourceCopy)
    {
      v12 = @"Dynamic";
    }

    v13 = v12;
    responseCache = [(PLBatteryUIResponderService *)self responseCache];
    v15 = [responseCache objectForKeyedSubscript:&unk_287147020];
    v16 = [v15 objectForKeyedSubscript:v6];
    v17 = [v16 objectForKeyedSubscript:@"result"];
    v18 = [v17 objectForKeyedSubscript:v13];

    if ([v18 count])
    {
      v19 = [v18 count];
      if (v19 >= buckets / size)
      {
        v7 = [v18 subarrayWithRange:{(v19 - buckets / size) & ~((v19 - buckets / size) >> 31), buckets / size}];
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      v20 = PLLogCommon(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponderService getUISOCDrainByBuckets:fromCachedLength:forBucketSize:isDynamicSource:];
      }
    }

    v7 = 0;
    goto LABEL_14;
  }

  v6 = PLLogCommon(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [PLBatteryUIResponderService getUISOCDrainByBuckets:fromCachedLength:forBucketSize:isDynamicSource:];
  }

  v7 = 0;
LABEL_15:

  return v7;
}

- (id)rangeKeyForLength:(int)length bucketSize:(int)size
{
  v4 = *&size;
  v11[3] = *MEMORY[0x277D85DE8];
  v11[0] = &unk_287147230;
  v10[0] = @"start";
  v10[1] = @"end";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*&length];
  v11[1] = v5;
  v10[2] = @"bucket";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v8 = PLBatteryUsageUIKeyFromConfiguration();

  return v8;
}

- (id)dynamicRangeKeyForLength:(int)length bucketSize:(int)size
{
  v4 = *&size;
  v11[4] = *MEMORY[0x277D85DE8];
  v11[0] = &unk_287147230;
  v10[0] = @"start";
  v10[1] = @"end";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*&length];
  v11[1] = v5;
  v10[2] = @"bucket";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v10[3] = @"isDynamicEnd";
  v11[2] = v6;
  v11[3] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v8 = PLBatteryUsageUIKeyFromConfiguration();

  return v8;
}

- (BOOL)demoMode
{
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    if (demoMode_onceToken_0 != -1)
    {
      [PLBatteryUIResponderService demoMode];
    }

    v2 = demoMode_demoMode;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void __39__PLBatteryUIResponderService_demoMode__block_invoke()
{
  +[PLUtilities containerPath];
  v0 = _CFPreferencesCopyAppValueWithContainer();
  demoMode_demoMode = [v0 BOOLValue];
}

- (id)demoPath
{
  if (demoPath_onceToken != -1)
  {
    [PLBatteryUIResponderService demoPath];
  }

  v3 = demoPath_demoPath;

  return v3;
}

uint64_t __39__PLBatteryUIResponderService_demoPath__block_invoke()
{
  +[PLUtilities containerPath];
  result = _CFPreferencesCopyAppValueWithContainer();
  if (result)
  {
    demoPath_demoPath = result;

    return MEMORY[0x2821F96F8](result);
  }

  return result;
}

void __55__PLBatteryUIResponderService_initOperatorDependancies__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __55__PLBatteryUIResponderService_initOperatorDependancies__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __55__PLBatteryUIResponderService_initOperatorDependancies__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __41__PLBatteryUIResponderService_configure___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2112;
  *&v3[14] = a1;
  OUTLINED_FUNCTION_5_4(&dword_25EE51000, a2, a3, "Responder Service: Failed to initialize type %ld with configuration %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)result
{
  plistCopyDestination = [self plistCopyDestination];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_3(&dword_25EE51000, v2, v3, "Result copied to folder %@", v4, v5, v6, v7);
}

- (void)constructResponseObjectFromType:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)constructResponseObjectFromType:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)constructResponseObjectFromType:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)constructResponseObjectFromType:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)convertResponseToLegacyFormat:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke_cold_1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_3(&dword_25EE51000, v1, v2, "Got %lu 10d UISoC", v3, v4, v5, v6);
}

void __61__PLBatteryUIResponderService_convertResponseToLegacyFormat___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getBreakdownForLength:fromCachedLength:forBucketSize:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)getBreakdownForLength:fromCachedLength:forBucketSize:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getUISOCDrainByBuckets:fromCachedLength:forBucketSize:isDynamicSource:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)getUISOCDrainByBuckets:fromCachedLength:forBucketSize:isDynamicSource:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end