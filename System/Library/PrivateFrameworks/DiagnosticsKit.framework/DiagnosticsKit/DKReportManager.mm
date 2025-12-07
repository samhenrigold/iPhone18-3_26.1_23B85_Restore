@interface DKReportManager
- (DKReportManager)initWithBundleIdentifier:(id)identifier;
- (id)getRequests:(id)requests;
- (id)retryInterruptedRequests:(BOOL)requests andWithError:(id *)error;
- (void)cancelAllReports;
- (void)reportWithComponentPredicateManifest:(id)manifest completion:(id)completion;
- (void)reportersWithCompletion:(id)completion;
- (void)sendRequests:(id)requests serialRequests:(BOOL)serialRequests failOnError:(BOOL)error completion:(id)completion;
@end

@implementation DKReportManager

- (DKReportManager)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v23.receiver = self;
  v23.super_class = DKReportManager;
  v6 = [(DKReportManager *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
    v8 = objc_opt_new();
    registry = v7->_registry;
    v7->_registry = v8;

    v10 = [DKReportPlanner plannerWithReportGeneratorRegistry:v7->_registry];
    planner = v7->_planner;
    v7->_planner = v10;

    v12 = v7->_registry;
    v13 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.diagnostics-reporter-service"];
    v14 = [DKExtensionDiscovery discoveryUsingExtensionRegistry:v12 services:v13 bundleIdentifier:v7->_bundleIdentifier];
    discovery = v7->_discovery;
    v7->_discovery = v14;

    array = [MEMORY[0x277CBEB18] array];
    requestsToRetry = v7->_requestsToRetry;
    v7->_requestsToRetry = array;

    v18 = dispatch_queue_create("com.apple.DiagnosticsKit.reportManager", MEMORY[0x277D85CD8]);
    reportManagerQueue = v7->_reportManagerQueue;
    v7->_reportManagerQueue = v18;

    v7->_cancelled = 0;
    v20 = objc_opt_new();
    resourceUsage = v7->_resourceUsage;
    v7->_resourceUsage = v20;
  }

  return v7;
}

- (void)reportWithComponentPredicateManifest:(id)manifest completion:(id)completion
{
  manifestCopy = manifest;
  completionCopy = completion;
  [(DKReportManager *)self setCancelled:0];
  reportManagerQueue = [(DKReportManager *)self reportManagerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__DKReportManager_reportWithComponentPredicateManifest_completion___block_invoke;
  block[3] = &unk_278F6C1A0;
  block[4] = self;
  v12 = manifestCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = manifestCopy;
  dispatch_async(reportManagerQueue, block);
}

void __67__DKReportManager_reportWithComponentPredicateManifest_completion___block_invoke(uint64_t a1)
{
  v2 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248B9D000, v2, OS_LOG_TYPE_DEFAULT, "Waiting for discovery...", buf, 2u);
  }

  v3 = [*(a1 + 32) discovery];
  [v3 waitUntilComplete];

  *buf = 0;
  v12 = buf;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v4 = [*(a1 + 32) getRequests:*(a1 + 40)];
  v5 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "Starting to request reports...", v10, 2u);
  }

  v6 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__DKReportManager_reportWithComponentPredicateManifest_completion___block_invoke_64;
  v7[3] = &unk_278F6C178;
  v7[4] = v6;
  v9 = buf;
  v8 = *(a1 + 48);
  [v6 sendRequests:v4 serialRequests:0 failOnError:0 completion:v7];

  _Block_object_dispose(buf, 8);
}

void __67__DKReportManager_reportWithComponentPredicateManifest_completion___block_invoke_64(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) requestsToRetry];
  v8 = [v7 count];

  if (v8)
  {
    v9 = *(a1 + 32);
    v18 = v6;
    v10 = [v9 retryInterruptedRequests:0 andWithError:&v18];
    v11 = v18;

    v12 = [v5 reportByMergingReport:v10];

    v6 = v11;
    v5 = v12;
  }

  if ([*(a1 + 32) isCancelled])
  {
    v13 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v14 = DKErrorLocalizedDescriptionForCode(-1003);
    v20[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v16 = [v13 errorWithDomain:@"DKErrorDomain" code:-1003 userInfo:v15];

    v6 = v14;
LABEL_7:

    v6 = v16;
    goto LABEL_8;
  }

  v17 = *(*(*(a1 + 48) + 8) + 40);
  if (v17)
  {
    v16 = v17;
    goto LABEL_7;
  }

LABEL_8:
  (*(*(a1 + 40) + 16))();
}

- (id)retryInterruptedRequests:(BOOL)requests andWithError:(id *)error
{
  requestsCopy = requests;
  v53 = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 1;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy_;
  v46 = __Block_byref_object_dispose_;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = 0;
  v5 = [MEMORY[0x277CBEB58] set];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  requestsToRetry = [(DKReportManager *)self requestsToRetry];
  v7 = [requestsToRetry countByEnumeratingWithState:&v32 objects:v52 count:16];
  if (v7)
  {
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(requestsToRetry);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        type = [v10 type];
        identifier = [v10 identifier];
        v13 = [DKComponentPredicate componentPredicateWithType:type identifier:identifier];
        [v5 addObject:v13];
      }

      v7 = [requestsToRetry countByEnumeratingWithState:&v32 objects:v52 count:16];
    }

    while (v7);
  }

  v14 = [(DKReportManager *)self getRequests:v5];
  v15 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248B9D000, v15, OS_LOG_TYPE_DEFAULT, "Rerunning interrupted report components in serial order", buf, 2u);
  }

  v16 = dispatch_semaphore_create(0);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __57__DKReportManager_retryInterruptedRequests_andWithError___block_invoke;
  v26[3] = &unk_278F6C1C8;
  v26[4] = self;
  v28 = &v42;
  v29 = &v48;
  v30 = &v36;
  v17 = v16;
  v27 = v17;
  [(DKReportManager *)self sendRequests:v14 serialRequests:1 failOnError:0 completion:v26];
  v18 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v17, v18);
  if (requestsCopy && (v49[3] & 1) == 0)
  {
    v19 = v37[5];
    v37[5] = 0;
  }

  v20 = v43[5];
  if (v20)
  {
    *error = v20;
  }

  requestsToRetry2 = [(DKReportManager *)self requestsToRetry];
  [requestsToRetry2 removeAllObjects];

  v22 = v37[5];
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);

  return v22;
}

void __57__DKReportManager_retryInterruptedRequests_andWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) isCancelled])
  {
    v7 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v8 = DKErrorLocalizedDescriptionForCode(-1003);
    v22[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v10 = [v7 errorWithDomain:@"DKErrorDomain" code:-1003 userInfo:v9];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    v13 = DiagnosticsKitLogHandleForCategory(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __57__DKReportManager_retryInterruptedRequests_andWithError___block_invoke_cold_1(v6, v13);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    v14 = *(*(a1 + 48) + 8);
    v15 = v6;
    v8 = *(v14 + 40);
    *(v14 + 40) = v15;
  }

LABEL_8:
  v16 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_248B9D000, v16, OS_LOG_TYPE_DEFAULT, "Finished executing interrupted report components", v20, 2u);
  }

  v17 = *(*(a1 + 64) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v5;
  v19 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)getRequests:(id)requests
{
  v30 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  planner = [(DKReportManager *)self planner];
  v6 = [planner requestGroupsForPredicateManifest:requestsCopy];

  v7 = [MEMORY[0x277CBEB58] set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        requests = [v13 requests];
        v15 = [requests countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v21;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v21 != v17)
              {
                objc_enumerationMutation(requests);
              }

              [v7 addObject:*(*(&v20 + 1) + 8 * j)];
            }

            v16 = [requests countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v16);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)sendRequests:(id)requests serialRequests:(BOOL)serialRequests failOnError:(BOOL)error completion:(id)completion
{
  errorCopy = error;
  v118 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  completionCopy = completion;
  group = dispatch_group_create();
  v49 = dispatch_semaphore_create(0);
  v97 = 0;
  v98[0] = &v97;
  v98[1] = 0x2020000000;
  v99 = 0;
  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 1;
  v87 = 0;
  v88 = &v87;
  v89 = 0x3032000000;
  v90 = __Block_byref_object_copy_;
  v91 = __Block_byref_object_dispose_;
  array = [MEMORY[0x277CBEA60] array];
  v92 = [DKReport reportWithComponents:array];

  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = __Block_byref_object_copy_;
  v85 = __Block_byref_object_dispose_;
  v86 = 0;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = requestsCopy;
  v46 = [obj countByEnumeratingWithState:&v77 objects:v117 count:16];
  if (v46)
  {
    v45 = *v78;
    v48 = *MEMORY[0x277CCA450];
LABEL_3:
    v47 = 0;
    while (1)
    {
      if (*v78 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v77 + 1) + 8 * v47);
      if ([(DKReportManager *)self isCancelled])
      {
        break;
      }

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      manifest = [v10 manifest];
      v12 = [manifest countByEnumeratingWithState:&v73 objects:v116 count:16];
      v51 = manifest;
      if (v12)
      {
        v52 = *v74;
LABEL_9:
        v13 = 0;
        while (1)
        {
          if (*v74 != v52)
          {
            objc_enumerationMutation(v51);
          }

          v14 = *(*(&v73 + 1) + 8 * v13);
          if ([(DKReportManager *)self isCancelled])
          {
            break;
          }

          generator = [v10 generator];
          extensionAttributes = [generator extensionAttributes];
          v17 = [DKExtensionRequest requestWithExtensionAttributes:extensionAttributes];

          [v17 setHostServicesDelegate:self];
          if (v17)
          {
            v71[0] = 0;
            v71[1] = v71;
            v71[2] = 0x3032000000;
            v71[3] = __Block_byref_object_copy_;
            v71[4] = __Block_byref_object_dispose_;
            v18 = MEMORY[0x277CCACA8];
            requestIdentifier = [v17 requestIdentifier];
            v72 = [v18 stringWithFormat:@"%@", requestIdentifier];

            v69[0] = 0;
            v69[1] = v69;
            v69[2] = 0x3032000000;
            v69[3] = __Block_byref_object_copy_;
            v69[4] = __Block_byref_object_dispose_;
            v20 = MEMORY[0x277CCACA8];
            v21 = [v17 description];
            v70 = [v20 stringWithString:v21];

            ++*(v98[0] + 24);
            v22 = DiagnosticsKitLogHandleForCategory(1);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              requestIdentifier2 = [v17 requestIdentifier];
              v24 = *(v98[0] + 24);
              *buf = 138413570;
              v105 = requestIdentifier2;
              v106 = 1024;
              v107 = v24;
              v108 = 2112;
              v109 = v17;
              v110 = 2112;
              v111 = v14;
              v112 = 2112;
              v113 = v10;
              v114 = 2112;
              v115 = v17;
              _os_log_impl(&dword_248B9D000, v22, OS_LOG_TYPE_DEFAULT, "[RID: %@] Starting; count: %d, %@ < %@ < %@; request: %@", buf, 0x3Au);
            }

            v58[0] = MEMORY[0x277D85DD0];
            v58[1] = 3221225472;
            v58[2] = __70__DKReportManager_sendRequests_serialRequests_failOnError_completion___block_invoke;
            v58[3] = &unk_278F6C1F0;
            v62 = &v87;
            v63 = &v93;
            v58[4] = self;
            v58[5] = v14;
            v64 = &v81;
            v65 = &v97;
            v66 = v71;
            v25 = v17;
            v59 = v25;
            v67 = v69;
            serialRequestsCopy = serialRequests;
            v26 = group;
            v60 = v26;
            v27 = v49;
            v61 = v27;
            v28 = MEMORY[0x24C1E6340](v58);
            if (serialRequests)
            {
              generator2 = [v10 generator];
              [generator2 beginRequest:v25 payload:v14 completion:v28];

              v30 = dispatch_time(0, 60000000000);
              dispatch_semaphore_wait(v27, v30);
            }

            else
            {
              dispatch_group_enter(v26);
              resourceUsage = [(DKReportManager *)self resourceUsage];
              resources = [v14 resources];
              v54[0] = MEMORY[0x277D85DD0];
              v54[1] = 3221225472;
              v54[2] = __70__DKReportManager_sendRequests_serialRequests_failOnError_completion___block_invoke_78;
              v54[3] = &unk_278F6C218;
              v54[4] = self;
              v54[5] = v10;
              v55 = v25;
              v56 = v14;
              v57 = v28;
              [resourceUsage executeWhenSafe:resources withCompletion:v54];
            }

            _Block_object_dispose(v69, 8);
            _Block_object_dispose(v71, 8);
          }

          else
          {
            v31 = DiagnosticsKitLogHandleForCategory(1);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [DKReportManager sendRequests:v102 serialRequests:v98 failOnError:v103 completion:v31];
            }

            v32 = MEMORY[0x277CCA9B8];
            v100 = v48;
            v33 = DKErrorLocalizedDescriptionForCode(-1001);
            v101 = v33;
            v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
            v35 = [v32 errorWithDomain:@"DKErrorDomain" code:-1001 userInfo:v34];
            v36 = v82[5];
            v82[5] = v35;
          }

          if (v12 == ++v13)
          {
            v12 = [v51 countByEnumeratingWithState:&v73 objects:v116 count:16];
            if (v12)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }

      if (++v47 == v46)
      {
        v46 = [obj countByEnumeratingWithState:&v77 objects:v117 count:16];
        if (v46)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v39 = dispatch_time(0, 60000000000);
  if (dispatch_group_wait(group, v39))
  {
    v40 = DiagnosticsKitLogHandleForCategory(1);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248B9D000, v40, OS_LOG_TYPE_DEFAULT, "Dispatch group timed out waiting on all system report component requests to complete", buf, 2u);
    }
  }

  if (errorCopy && (v94[3] & 1) == 0)
  {
    v41 = v88[5];
    v88[5] = 0;
  }

  completionCopy[2](completionCopy, v88[5], v82[5]);
  _Block_object_dispose(&v81, 8);

  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(&v93, 8);
  _Block_object_dispose(&v97, 8);
}

void __70__DKReportManager_sendRequests_serialRequests_failOnError_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = *(*(*(a1 + 72) + 8) + 40);
  objc_sync_enter(v8);
  [*(*(*(a1 + 72) + 8) + 40) mergeWithReport:v7];
  objc_sync_exit(v8);

  if (!v7)
  {
    *(*(*(a1 + 80) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 88) + 8) + 40), a3);
    if ([v6 code] == -1002)
    {
      v9 = [*(a1 + 32) requestsToRetry];
      [v9 addObject:*(a1 + 40)];
    }
  }

  --*(*(*(a1 + 96) + 8) + 24);
  v10 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(*(a1 + 104) + 8) + 40);
    v12 = *(*(*(a1 + 96) + 8) + 24);
    v13 = *(a1 + 48);
    v14 = *(*(*(a1 + 112) + 8) + 40);
    v17 = 138413314;
    v18 = v11;
    v19 = 1024;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&dword_248B9D000, v10, OS_LOG_TYPE_DEFAULT, "[RID: %@] Finished; count: %d; Report: %@, error: %@; request: %@", &v17, 0x30u);
  }

  v15 = [*(a1 + 32) resourceUsage];
  v16 = [*(a1 + 40) resources];
  [v15 releaseResources:v16];

  if (*(a1 + 120))
  {
    dispatch_semaphore_signal(*(a1 + 64));
  }

  else
  {
    dispatch_group_leave(*(a1 + 56));
  }
}

void __70__DKReportManager_sendRequests_serialRequests_failOnError_completion___block_invoke_78(uint64_t a1)
{
  v2 = [*(a1 + 32) reportManagerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__DKReportManager_sendRequests_serialRequests_failOnError_completion___block_invoke_2;
  block[3] = &unk_278F6C0E0;
  v6 = *(a1 + 40);
  v3 = *(&v6 + 1);
  v5 = *(a1 + 56);
  v4 = *(&v5 + 1);
  v8 = v6;
  v9 = v5;
  dispatch_async(v2, block);
}

void __70__DKReportManager_sendRequests_serialRequests_failOnError_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) generator];
  [v2 beginRequest:*(a1 + 40) payload:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)reportersWithCompletion:(id)completion
{
  completionCopy = completion;
  reportManagerQueue = [(DKReportManager *)self reportManagerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__DKReportManager_reportersWithCompletion___block_invoke;
  v7[3] = &unk_278F6C108;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(reportManagerQueue, v7);
}

void __43__DKReportManager_reportersWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) discovery];
  [v2 waitUntilComplete];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) availableReportGenerators];
  (*(v3 + 16))(v3, v4);
}

- (void)cancelAllReports
{
  [(DKReportManager *)self setCancelled:1];
  registry = [(DKReportManager *)self registry];
  [registry enumerateExtensionAdaptersWithBlock:&__block_literal_global_7];
}

void __57__DKReportManager_retryInterruptedRequests_andWithError___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_248B9D000, a2, OS_LOG_TYPE_ERROR, "Component execution failed; count: %@", &v2, 0xCu);
}

- (void)sendRequests:(uint8_t *)buf serialRequests:(uint64_t)a2 failOnError:(_DWORD *)a3 completion:(os_log_t)log .cold.1(uint8_t *buf, uint64_t a2, _DWORD *a3, os_log_t log)
{
  v4 = *(*a2 + 24);
  *buf = 67109120;
  *a3 = v4;
  _os_log_error_impl(&dword_248B9D000, log, OS_LOG_TYPE_ERROR, "Could not start report request; count: %d", buf, 8u);
}

@end