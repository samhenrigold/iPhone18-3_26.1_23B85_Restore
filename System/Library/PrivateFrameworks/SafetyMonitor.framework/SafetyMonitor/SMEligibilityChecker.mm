@interface SMEligibilityChecker
+ (id)convertEligibilityTypeToString:(int64_t)string;
+ (id)convertToPushTokenMap:(id)map;
- (BOOL)checkRecipientAccountIsUnique:(id)unique;
- (SMEligibilityChecker)initWithQueue:(id)queue;
- (SMEligibilityChecker)initWithQueue:(id)queue IDSIDQueryController:(id)controller iMessageIDSService:(id)service iCloudIDSService:(id)sService;
- (int64_t)reportedEligibilityWithiMessageEligibility:(int64_t)eligibility iCloudEligibility:(int64_t)cloudEligibility;
- (void)addDelegateForService:(id)service;
- (void)checkConversationEligibility:(id)eligibility handler:(id)handler;
- (void)checkReceiverEligibility:(id)eligibility handler:(id)handler;
- (void)resolveEndpointsForDestinations:(id)destinations service:(id)service requiredCapabilities:(id)capabilities completionBlock:(id)block;
@end

@implementation SMEligibilityChecker

- (SMEligibilityChecker)initWithQueue:(id)queue
{
  v4 = MEMORY[0x277D18728];
  queueCopy = queue;
  sharedInstance = [v4 sharedInstance];
  v7 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.safetymonitor"];
  v8 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.safetymonitor.multiplex"];
  v9 = [(SMEligibilityChecker *)self initWithQueue:queueCopy IDSIDQueryController:sharedInstance iMessageIDSService:v7 iCloudIDSService:v8];

  return v9;
}

- (SMEligibilityChecker)initWithQueue:(id)queue IDSIDQueryController:(id)controller iMessageIDSService:(id)service iCloudIDSService:(id)sService
{
  queueCopy = queue;
  controllerCopy = controller;
  serviceCopy = service;
  sServiceCopy = sService;
  v19.receiver = self;
  v19.super_class = SMEligibilityChecker;
  v15 = [(SMEligibilityChecker *)&v19 init];
  p_isa = &v15->super.isa;
  if (!v15)
  {
    goto LABEL_5;
  }

  v17 = 0;
  if (controllerCopy && serviceCopy)
  {
    objc_storeStrong(&v15->_queue, queue);
    objc_storeStrong(p_isa + 2, controller);
    objc_storeStrong(p_isa + 3, service);
    objc_storeStrong(p_isa + 4, sService);
    [p_isa addDelegateForService:@"com.apple.private.alloy.safetymonitor"];
    [p_isa addDelegateForService:@"com.apple.private.alloy.safetymonitor.multiplex"];
LABEL_5:
    v17 = p_isa;
  }

  return v17;
}

- (void)addDelegateForService:(id)service
{
  serviceCopy = service;
  idsIDQueryController = [(SMEligibilityChecker *)self idsIDQueryController];
  queue = [(SMEligibilityChecker *)self queue];
  [idsIDQueryController addDelegate:self forService:serviceCopy listenerID:@"__kSMServiceForEligibilityCheckListenerID" queue:queue];
}

+ (id)convertToPushTokenMap:(id)map
{
  if (map)
  {
    v3 = MEMORY[0x277CBEB38];
    mapCopy = map;
    v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(mapCopy, "count")}];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__SMEligibilityChecker_convertToPushTokenMap___block_invoke;
    v9[3] = &unk_279B649D8;
    v10 = v5;
    v6 = v5;
    [mapCopy enumerateObjectsUsingBlock:v9];

    v7 = [v6 copy];
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  return v7;
}

void __46__SMEligibilityChecker_convertToPushTokenMap___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 pushToken];
  [v2 setObject:v3 forKey:v4];
}

- (void)checkReceiverEligibility:(id)eligibility handler:(id)handler
{
  v72[1] = *MEMORY[0x277D85DE8];
  eligibilityCopy = eligibility;
  handlerCopy = handler;
  if (eligibilityCopy && ([eligibilityCopy primaryHandle], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    v11 = os_signpost_id_generate(v10);

    v60 = v11;
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    v13 = v12;
    v14 = v58[3];
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_26455D000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "SMCheckReceiverEligibility", " enableTelemetry=YES ", &buf, 2u);
    }

    primaryHandle = [eligibilityCopy primaryHandle];
    v16 = [(SMEligibilityChecker *)self checkRecipientAccountIsUnique:primaryHandle];

    if (v16)
    {
      v17 = dispatch_group_create();
      *&buf = 0;
      *(&buf + 1) = &buf;
      v65 = 0x3032000000;
      v66 = __Block_byref_object_copy_;
      v67 = __Block_byref_object_dispose_;
      v68 = MEMORY[0x277CBEC10];
      v56[0] = 0;
      v56[1] = v56;
      v56[2] = 0x2020000000;
      v56[3] = 0;
      dispatch_group_enter(v17);
      primaryHandle2 = [eligibilityCopy primaryHandle];
      v63 = primaryHandle2;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
      v62 = *MEMORY[0x277D18918];
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __57__SMEligibilityChecker_checkReceiverEligibility_handler___block_invoke;
      v51[3] = &unk_279B64A00;
      v21 = eligibilityCopy;
      v52 = v21;
      v54 = v56;
      p_buf = &buf;
      v22 = v17;
      v53 = v22;
      [(SMEligibilityChecker *)self resolveEndpointsForDestinations:v19 service:@"com.apple.private.alloy.safetymonitor" requiredCapabilities:v20 completionBlock:v51];

      v49[0] = 0;
      v49[1] = v49;
      v49[2] = 0x3032000000;
      v49[3] = __Block_byref_object_copy_;
      v49[4] = __Block_byref_object_dispose_;
      v50 = MEMORY[0x277CBEC10];
      v48[0] = 0;
      v48[1] = v48;
      v48[2] = 0x2020000000;
      v48[3] = 0;
      dispatch_group_enter(v22);
      primaryHandle3 = [v21 primaryHandle];
      v61 = primaryHandle3;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __57__SMEligibilityChecker_checkReceiverEligibility_handler___block_invoke_21;
      v43[3] = &unk_279B64A00;
      v25 = v21;
      v44 = v25;
      v46 = v48;
      v47 = v49;
      v26 = v22;
      v45 = v26;
      [(SMEligibilityChecker *)self resolveEndpointsForDestinations:v24 service:@"com.apple.private.alloy.safetymonitor.multiplex" requiredCapabilities:MEMORY[0x277CBEBF8] completionBlock:v43];

      queue = [(SMEligibilityChecker *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__SMEligibilityChecker_checkReceiverEligibility_handler___block_invoke_22;
      block[3] = &unk_279B64A28;
      block[4] = self;
      v37 = v56;
      v38 = v48;
      v39 = &buf;
      v40 = v49;
      v42 = a2;
      v35 = v25;
      v41 = &v57;
      v36 = handlerCopy;
      dispatch_group_notify(v26, queue, block);

      _Block_object_dispose(v48, 8);
      _Block_object_dispose(v49, 8);

      _Block_object_dispose(v56, 8);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v69 = *MEMORY[0x277CCA450];
      v70 = @"Receiver handle overlaps with initiator iMessage or iCloud account";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SMErrorDomain" code:1 userInfo:v26];
      v31 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
      v32 = v31;
      v33 = v58[3];
      if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        LODWORD(buf) = 134349056;
        *(&buf + 4) = 2;
        _os_signpost_emit_with_name_impl(&dword_26455D000, v32, OS_SIGNPOST_INTERVAL_END, v33, "SMCheckReceiverEligibility", " enableTelemetry=YES {receiverEligibility:%{public,signpost.telemetry:number1}ld}", &buf, 0xCu);
      }

      (*(handlerCopy + 2))(handlerCopy, 2, MEMORY[0x277CBEBF8], v30);
    }

    _Block_object_dispose(&v57, 8);
  }

  else
  {
    v71 = *MEMORY[0x277CCA450];
    v72[0] = @"No handles in the query";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:&v71 count:1];
    v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SMErrorDomain" code:7 userInfo:v28];
    (*(handlerCopy + 2))(handlerCopy, 2, MEMORY[0x277CBEBF8], v29);
  }
}

void __57__SMEligibilityChecker_checkReceiverEligibility_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 count];
      v9 = [*(a1 + 32) primaryHandle];
      v19 = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
      *buf = 134218498;
      v21 = v8;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_26455D000, v7, OS_LOG_TYPE_INFO, "Got %lu zelkova endpoints for %@, error, %@", buf, 0x20u);
    }
  }

  if (v6)
  {
    v11 = [v6 domain];
    v12 = [v11 isEqualToString:*MEMORY[0x277D18560]];

    if (v12)
    {
      v13 = [v6 code];
      v14 = *(*(a1 + 48) + 8);
      if (v13 == 5)
      {
        v15 = 6;
      }

      else if (v13 == 3)
      {
        v15 = 3;
      }

      else
      {
        v15 = 7;
      }

      goto LABEL_14;
    }
  }

  if (![v5 count])
  {
    v14 = *(*(a1 + 48) + 8);
    v15 = 4;
LABEL_14:
    *(v14 + 24) = v15;
  }

  v16 = [SMEligibilityChecker convertToPushTokenMap:v5];
  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  dispatch_group_leave(*(a1 + 40));
}

void __57__SMEligibilityChecker_checkReceiverEligibility_handler___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 count];
      v9 = [*(a1 + 32) primaryHandle];
      v18 = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
      *buf = 134218498;
      v20 = v8;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_26455D000, v7, OS_LOG_TYPE_INFO, "Got %lu nice endpoints for %@, error, %@", buf, 0x20u);
    }
  }

  if (v6)
  {
    v11 = [v6 domain];
    v12 = [v11 isEqualToString:*MEMORY[0x277D18560]];

    if (v12)
    {
      v13 = [v6 code];
      v14 = 6;
      if (v13 != 5)
      {
        v14 = 7;
      }

      if (v13 == 3)
      {
        v14 = 5;
      }

      *(*(*(a1 + 48) + 8) + 24) = v14;
    }
  }

  v15 = [SMEligibilityChecker convertToPushTokenMap:v5];
  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  dispatch_group_leave(*(a1 + 40));
}

void __57__SMEligibilityChecker_checkReceiverEligibility_handler___block_invoke_22(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) reportedEligibilityWithiMessageEligibility:*(*(*(a1 + 56) + 8) + 24) iCloudEligibility:*(*(*(a1 + 64) + 8) + 24)];
  v3 = MEMORY[0x277CBEB98];
  v4 = [*(*(*(a1 + 72) + 8) + 40) allKeys];
  v5 = [v3 setWithArray:v4];

  v6 = MEMORY[0x277CBEB98];
  v7 = [*(*(*(a1 + 80) + 8) + 40) allKeys];
  v8 = [v6 setWithArray:v7];

  v9 = [v5 mutableCopy];
  [v9 intersectSet:v8];
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      v15 = 0;
      do
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(*(a1 + 72) + 8) + 40) objectForKeyedSubscript:{*(*(&v30 + 1) + 8 * v15), v30}];
        [v10 addObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v30 objects:v48 count:16];
    }

    while (v13);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v26 = NSStringFromSelector(*(a1 + 96));
      v27 = *(a1 + 40);
      v28 = *(*(*(a1 + 56) + 8) + 24);
      v29 = *(*(*(a1 + 64) + 8) + 24);
      *buf = 138413826;
      v35 = v26;
      v36 = 2112;
      v37 = v27;
      v38 = 2048;
      v39 = v28;
      v40 = 2048;
      v41 = v29;
      v42 = 2112;
      v43 = v5;
      v44 = 2112;
      v45 = v8;
      v46 = 2112;
      v47 = v11;
      _os_log_debug_impl(&dword_26455D000, v17, OS_LOG_TYPE_DEBUG, "%@, handle, %@, iMessageEligibilityError, %ld, iCloudEligibilityError, %ld, pushTokenSetForZelkova, %@, pushTokenSetForNice, %@, pushTokenSetIntersection, %@", buf, 0x48u);
    }
  }

  if (!v2)
  {
    if ([v10 count])
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v19 = v18;
  v20 = *(*(*(a1 + 88) + 8) + 24);
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 134349056;
    v35 = v2;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v19, OS_SIGNPOST_INTERVAL_END, v20, "SMCheckReceiverEligibility", " enableTelemetry=YES {receiverEligibility:%{public,signpost.telemetry:number1}ld}", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = NSStringFromSelector(*(a1 + 96));
      v23 = *(a1 + 40);
      *buf = 138412802;
      v35 = v22;
      v36 = 2112;
      v37 = v23;
      v38 = 2048;
      v39 = v2;
      _os_log_impl(&dword_26455D000, v21, OS_LOG_TYPE_INFO, "%@, handle, %@, eligibility, %ld", buf, 0x20u);
    }
  }

  v24 = *(a1 + 48);
  v25 = [v10 copy];
  (*(v24 + 16))(v24, v2, v25, 0);
}

- (void)checkConversationEligibility:(id)eligibility handler:(id)handler
{
  v43[1] = *MEMORY[0x277D85DE8];
  eligibilityCopy = eligibility;
  handlerCopy = handler;
  if (eligibilityCopy && ([eligibilityCopy receiverHandles], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v8;
        *&buf[12] = 2112;
        *&buf[14] = eligibilityCopy;
        _os_log_impl(&dword_26455D000, v7, OS_LOG_TYPE_INFO, "%@, checking eligibility for %@", buf, 0x16u);
      }
    }

    v9 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v39 = __Block_byref_object_copy_;
    v40 = __Block_byref_object_dispose_;
    v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x3032000000;
    v35[3] = __Block_byref_object_copy_;
    v35[4] = __Block_byref_object_dispose_;
    v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    receiverHandles = [eligibilityCopy receiverHandles];
    v11 = [receiverHandles countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v11)
    {
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(receiverHandles);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          [*(*&buf[8] + 40) setObject:&unk_287611A58 forKey:{v14, handlerCopy}];
          dispatch_group_enter(v9);
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __61__SMEligibilityChecker_checkConversationEligibility_handler___block_invoke;
          v26[3] = &unk_279B64A50;
          v26[4] = v14;
          v28 = buf;
          v29 = v35;
          v30 = a2;
          v27 = v9;
          [(SMEligibilityChecker *)self checkReceiverEligibility:v14 handler:v26];
        }

        v11 = [receiverHandles countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v11);
    }

    queue = [(SMEligibilityChecker *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SMEligibilityChecker_checkConversationEligibility_handler___block_invoke_32;
    block[3] = &unk_279B64A78;
    v23 = buf;
    v24 = v35;
    v25 = a2;
    v21 = eligibilityCopy;
    v22 = handlerCopy;
    dispatch_group_notify(v9, queue, block);

    _Block_object_dispose(v35, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v42 = *MEMORY[0x277CCA450];
    v43[0] = @"No conversation or missing conversation data in the query";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:{1, handlerCopy}];
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SMErrorDomain" code:7 userInfo:v9];
    (*(handlerCopy + 2))(handlerCopy, 2, v16);
  }
}

void __61__SMEligibilityChecker_checkConversationEligibility_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(*(a1 + 64));
      v13 = *(a1 + 32);
      v14 = 138413058;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      v18 = 2048;
      v19 = a2;
      v20 = 2112;
      v21 = v8;
      _os_log_debug_impl(&dword_26455D000, v9, OS_LOG_TYPE_DEBUG, "%@, handle, %@, eligibility, %ld, error, %@", &v14, 0x2Au);
    }
  }

  v10 = *(*(*(a1 + 48) + 8) + 40);
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v10 setObject:v11 forKey:*(a1 + 32)];

  if (v8)
  {
    [*(*(*(a1 + 56) + 8) + 40) setObject:v8 forKey:*(a1 + 32)];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __61__SMEligibilityChecker_checkConversationEligibility_handler___block_invoke_32(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [*(*(*(a1 + 48) + 8) + 40) objectForKey:{v8, v16}];
        v10 = [v9 intValue];

        v11 = [*(*(*(a1 + 56) + 8) + 40) objectForKey:v8];
        if (v11)
        {
          v12 = v11;
          v5 = v10;
          goto LABEL_15;
        }

        if (v5 == 1)
        {
          v5 = 1;
        }

        else
        {
          v5 = v10;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v28 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
    v5 = 0;
  }

LABEL_15:

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = NSStringFromSelector(*(a1 + 64));
      v15 = *(a1 + 32);
      *buf = 138413058;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v24 = 2048;
      v25 = v5;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_26455D000, v13, OS_LOG_TYPE_INFO, "%@, conversation, %@, eligibility, %ld, error, %@", buf, 0x2Au);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)resolveEndpointsForDestinations:(id)destinations service:(id)service requiredCapabilities:(id)capabilities completionBlock:(id)block
{
  destinationsCopy = destinations;
  serviceCopy = service;
  capabilitiesCopy = capabilities;
  blockCopy = block;
  idsIDQueryController = [(SMEligibilityChecker *)self idsIDQueryController];
  queue = [(SMEligibilityChecker *)self queue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __101__SMEligibilityChecker_resolveEndpointsForDestinations_service_requiredCapabilities_completionBlock___block_invoke;
  v21[3] = &unk_279B64AF0;
  v25 = blockCopy;
  v26 = a2;
  v22 = destinationsCopy;
  v23 = serviceCopy;
  v24 = capabilitiesCopy;
  v17 = capabilitiesCopy;
  v18 = serviceCopy;
  v19 = destinationsCopy;
  v20 = blockCopy;
  [idsIDQueryController currentRemoteDevicesForDestinations:v19 service:v18 listenerID:@"__kSMServiceForEligibilityCheckListenerID" queue:queue completionBlockWithError:v21];
}

void __101__SMEligibilityChecker_resolveEndpointsForDestinations_service_requiredCapabilities_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v6)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = NSStringFromSelector(*(a1 + 64));
        v10 = [*(a1 + 32) description];
        v11 = *(a1 + 40);
        v14 = *(a1 + 48);
        v12 = [v5 count];
        v13 = [0 description];
        *buf = 138413570;
        v19 = v9;
        v20 = 2112;
        v21 = v10;
        v22 = 2112;
        v23 = v11;
        v24 = 2112;
        v25 = v14;
        v26 = 2048;
        v27 = v12;
        v28 = 2112;
        v29 = v13;
        _os_log_debug_impl(&dword_26455D000, v8, OS_LOG_TYPE_DEBUG, "%@, destinations, %@, service, %@, capabilities, %@, numResults, %ld, error, %@", buf, 0x3Eu);
      }
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __101__SMEligibilityChecker_resolveEndpointsForDestinations_service_requiredCapabilities_completionBlock___block_invoke_33;
    v15[3] = &unk_279B64AC8;
    v16 = *(a1 + 48);
    v17 = v7;
    [v5 enumerateKeysAndObjectsUsingBlock:v15];
    (*(*(a1 + 56) + 16))();
  }
}

void __101__SMEligibilityChecker_resolveEndpointsForDestinations_service_requiredCapabilities_completionBlock___block_invoke_33(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __101__SMEligibilityChecker_resolveEndpointsForDestinations_service_requiredCapabilities_completionBlock___block_invoke_2;
  v5[3] = &unk_279B64AA0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [a3 enumerateObjectsUsingBlock:v5];
}

void __101__SMEligibilityChecker_resolveEndpointsForDestinations_service_requiredCapabilities_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 capabilities];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v6)
  {

LABEL_11:
    [*(a1 + 40) addObject:{v3, v11}];
    goto LABEL_12;
  }

  v7 = v6;
  v8 = *v12;
  v9 = 1;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v9 &= [v4 valueForCapability:{*(*(&v11 + 1) + 8 * i), v11}];
    }

    v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v7);

  if (v9)
  {
    goto LABEL_11;
  }

LABEL_12:
}

+ (id)convertEligibilityTypeToString:(int64_t)string
{
  if (string > 7)
  {
    return @"Valid";
  }

  else
  {
    return *(&off_279B64B10 + string);
  }
}

- (int64_t)reportedEligibilityWithiMessageEligibility:(int64_t)eligibility iCloudEligibility:(int64_t)cloudEligibility
{
  if (eligibility && cloudEligibility)
  {
    v4 = 7;
    v5 = cloudEligibility == 5 && eligibility == 3;
    eligibilityCopy = 2;
    if (!v5)
    {
      eligibilityCopy = eligibility;
    }

    if (cloudEligibility == 7)
    {
      eligibilityCopy = 7;
    }

    if (eligibility != 7)
    {
      v4 = eligibilityCopy;
    }

    if (cloudEligibility == 6)
    {
      v4 = 6;
    }

    if (eligibility == 6)
    {
      return 6;
    }

    else
    {
      return v4;
    }
  }

  else if (eligibility)
  {
    return eligibility;
  }

  else
  {
    return cloudEligibility;
  }
}

- (BOOL)checkRecipientAccountIsUnique:(id)unique
{
  v21 = *MEMORY[0x277D85DE8];
  uniqueCopy = unique;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  iMessageIDSService = [(SMEligibilityChecker *)self iMessageIDSService];
  aliases = [iMessageIDSService aliases];
  [v6 unionSet:aliases];

  iCloudIDSService = [(SMEligibilityChecker *)self iCloudIDSService];
  aliases2 = [iCloudIDSService aliases];
  [v6 unionSet:aliases2];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = NSStringFromSelector(a2);
      v15 = 138412802;
      v16 = v14;
      v17 = 2112;
      v18 = uniqueCopy;
      v19 = 2112;
      v20 = v6;
      _os_log_debug_impl(&dword_26455D000, v11, OS_LOG_TYPE_DEBUG, "%@, checking recipient handle, recipientHandle, %@, self aliases, %@", &v15, 0x20u);
    }
  }

  v12 = [v6 containsObject:uniqueCopy];

  return v12 ^ 1;
}

@end