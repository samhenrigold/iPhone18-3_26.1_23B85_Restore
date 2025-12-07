@interface DRSCloudKitHelper
+ (id)helperForCKConfig:(id)config;
+ (id)prodContainerHelper;
+ (id)sandboxContainerHelper;
- (BOOL)_handleRAPIDRequests:(id)requests xpcActivity:(id)activity errorsOut:(id)out;
- (DRSCloudKitHelper)initWithContainerEnvironment:(int64_t)environment rapidEnvironment:(int64_t)rapidEnvironment;
- (id)_requestsPassingUploadSizeCap:(id)cap remainingQuota:(unint64_t)quota;
- (void)_sendDecisionServerRequests:(id)requests xpcActivity:(id)activity replyHandler:(id)handler;
- (void)_uploadRecords:(id)records containerName:(id)name xpcActivity:(id)activity completionHandler:(id)handler;
- (void)reportTerminalRequestStats:(id)stats xpcActivity:(id)activity replyHandler:(id)handler;
- (void)shouldEnableDataGathering:(id)gathering xpcActivity:(id)activity replyHandler:(id)handler;
- (void)shouldUploadRequests:(id)requests xpcActivity:(id)activity replyHandler:(id)handler;
- (void)uploadRequests:(id)requests contactDecisionServer:(BOOL)server xpcActivity:(id)activity remainingUploadQuota:(unint64_t)quota backingPersistentContainer:(id)container completionHandler:(id)handler;
@end

@implementation DRSCloudKitHelper

+ (id)helperForCKConfig:(id)config
{
  configCopy = config;
  v4 = [DRSCloudKitHelper alloc];
  ckContainerEnvironment = [configCopy ckContainerEnvironment];
  ckRapidEnvironment = [configCopy ckRapidEnvironment];

  v7 = [(DRSCloudKitHelper *)v4 initWithContainerEnvironment:ckContainerEnvironment rapidEnvironment:ckRapidEnvironment];

  return v7;
}

- (DRSCloudKitHelper)initWithContainerEnvironment:(int64_t)environment rapidEnvironment:(int64_t)rapidEnvironment
{
  v14.receiver = self;
  v14.super_class = DRSCloudKitHelper;
  v6 = [(DRSCloudKitHelper *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_environment = environment;
    v6->_rapidEnvironment = rapidEnvironment;
    environment = [(DRSCloudKitHelper *)v6 environment];
    if (environment == 1)
    {
      DRSProductionContainer(1);
    }

    else
    {
      DRSSandboxContainer(environment);
    }
    v9 = ;
    targetContainer = v7->__targetContainer;
    v7->__targetContainer = v9;

    if ([(DRSCloudKitHelper *)v7 rapidEnvironment]== 1)
    {
      +[DRSRapidCloudKitHelper prodHelper];
    }

    else
    {
      +[DRSRapidCloudKitHelper devHelper];
    }
    v11 = ;
    rapidHelper = v7->_rapidHelper;
    v7->_rapidHelper = v11;
  }

  return v7;
}

+ (id)sandboxContainerHelper
{
  if (sandboxContainerHelper_onceToken != -1)
  {
    +[DRSCloudKitHelper sandboxContainerHelper];
  }

  v3 = sandboxContainerHelper_helper;

  return v3;
}

void __43__DRSCloudKitHelper_sandboxContainerHelper__block_invoke()
{
  v0 = [[DRSCloudKitHelper alloc] initWithEnvironment:2];
  v1 = sandboxContainerHelper_helper;
  sandboxContainerHelper_helper = v0;
}

+ (id)prodContainerHelper
{
  if (prodContainerHelper_onceToken != -1)
  {
    +[DRSCloudKitHelper prodContainerHelper];
  }

  v3 = prodContainerHelper_helper;

  return v3;
}

void __40__DRSCloudKitHelper_prodContainerHelper__block_invoke()
{
  v0 = [[DRSCloudKitHelper alloc] initWithEnvironment:1];
  v1 = prodContainerHelper_helper;
  prodContainerHelper_helper = v0;
}

- (void)_uploadRecords:(id)records containerName:(id)name xpcActivity:(id)activity completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  v12 = MEMORY[0x277CBC4A0];
  activityCopy = activity;
  recordsCopy = records;
  v15 = [[v12 alloc] initWithRecordsToSave:recordsCopy recordIDsToDelete:0];

  if ([nameCopy isEqualToString:kDRSCloudKitContainerName])
  {
    _targetContainer = [(DRSCloudKitHelper *)self _targetContainer];
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:nameCopy environment:{-[DRSCloudKitHelper environment](self, "environment")}];
    _targetContainer = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v17];
  }

  [(DRSCloudKitHelper *)self _configureOperation:v15 container:_targetContainer xpcActivity:activityCopy];

  operationID = [v15 operationID];
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __80__DRSCloudKitHelper__uploadRecords_containerName_xpcActivity_completionHandler___block_invoke;
  v29 = &unk_27899F038;
  v19 = operationID;
  v30 = v19;
  v31 = handlerCopy;
  v20 = handlerCopy;
  v21 = _Block_copy(&v26);
  v22 = DPLogHandle_CKRecordUpload([v15 setModifyRecordsCompletionBlock:{v21, v26, v27, v28, v29}]);
  v23 = [v19 hash];
  if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v24 = v23;
    if (os_signpost_enabled(v22))
    {
      *buf = 138543618;
      v33 = v19;
      v34 = 2114;
      v35 = nameCopy;
      _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v24, "CKRecordUpload", "Upload operation ID: %{public}@, target container: %{public}@", buf, 0x16u);
    }
  }

  publicCloudDatabase = [_targetContainer publicCloudDatabase];
  [publicCloudDatabase addOperation:v15];
}

void __80__DRSCloudKitHelper__uploadRecords_containerName_xpcActivity_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a2;
  v8 = DPLogHandle_CKRecordUpload(v7);
  v9 = [*(a1 + 32) hash];
  v10 = v9;
  if (v6)
  {
    if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v11 = [v6 localizedDescription];
      v12 = 138412290;
      v13 = v11;
      _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_INTERVAL_END, v10, "CKRecordUpload", "Failed due to error: %@", &v12, 0xCu);
    }
  }

  else if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_INTERVAL_END, v10, "CKRecordUpload", "Completed successfully", &v12, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)_handleRAPIDRequests:(id)requests xpcActivity:(id)activity errorsOut:(id)out
{
  v35 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  activityCopy = activity;
  outCopy = out;
  v10 = DPLogHandle_CKCFUpload(outCopy);
  if (os_signpost_enabled(v10))
  {
    *buf = 134349056;
    v34 = [requestsCopy count];
    _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsUploadSession", "Beginning upload session of %{public}llu requests", buf, 0xCu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = requestsCopy;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    obj = v11;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        if (activityCopy)
        {
          should_defer = xpc_activity_should_defer(activityCopy);
          if (should_defer)
          {
            v22 = DPLogHandle_CKCFUpload(should_defer);
            if (os_signpost_enabled(v22))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsUploadSession", "Ending upload session due to deferral request", buf, 2u);
            }

            v21 = 0;
            v11 = obj;
            v20 = obj;
            goto LABEL_18;
          }
        }

        rapidHelper = [(DRSCloudKitHelper *)self rapidHelper];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __64__DRSCloudKitHelper__handleRAPIDRequests_xpcActivity_errorsOut___block_invoke;
        v26[3] = &unk_27899F060;
        v27 = outCopy;
        [rapidHelper submitRapidPayload:v16 replyHandler:v26];
      }

      v11 = obj;
      v13 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v20 = DPLogHandle_CKCFUpload(v19);
  if (os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsUploadSession", "Successful!", buf, 2u);
  }

  v21 = 1;
LABEL_18:

  return v21;
}

id *__64__DRSCloudKitHelper__handleRAPIDRequests_xpcActivity_errorsOut___block_invoke(id *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return [result[4] addObject:a4];
  }

  return result;
}

- (id)_requestsPassingUploadSizeCap:(id)cap remainingQuota:(unint64_t)quota
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [cap mutableCopy];
  [v5 sortUsingComparator:&__block_literal_global_232];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v22;
    *&v9 = 138543874;
    v20 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        totalLogSizeBytes = [v13 totalLogSizeBytes];
        if (totalLogSizeBytes)
        {
          v15 = totalLogSizeBytes;
          v16 = quota - totalLogSizeBytes;
          if (quota >= totalLogSizeBytes)
          {
            [v6 addObject:v13];
            quota = v16;
          }

          else
          {
            v17 = DPLogHandle_CKRecordUpload(totalLogSizeBytes);
            if (os_signpost_enabled(v17))
            {
              requestID = [v13 requestID];
              *buf = v20;
              v26 = requestID;
              v27 = 2048;
              v28 = v15;
              v29 = 2048;
              quotaCopy = quota;
              _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UploadSkippedDueToSizeLimits", "Skipping upload of request %{public}@ due to upload size limits: %zu (size B) > %llu (remaining quota B)", buf, 0x20u);
            }
          }
        }

        else
        {
          [v13 makeTerminalDueToMissingLog];
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v10);
  }

  return v6;
}

uint64_t __66__DRSCloudKitHelper__requestsPassingUploadSizeCap_remainingQuota___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 requestDate];
  v6 = [v4 requestDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)uploadRequests:(id)requests contactDecisionServer:(BOOL)server xpcActivity:(id)activity remainingUploadQuota:(unint64_t)quota backingPersistentContainer:(id)container completionHandler:(id)handler
{
  serverCopy = server;
  v78 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  activityCopy = activity;
  containerCopy = container;
  handlerCopy = handler;
  v13 = +[DRSSystemProfile sharedInstance];
  isLogUploadEnabled = [v13 isLogUploadEnabled];

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v16 = requestsCopy;
  v17 = [v16 countByEnumeratingWithState:&v70 objects:v77 count:16];
  if (v17)
  {
    v18 = *v71;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v71 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v70 + 1) + 8 * i);
        if ([v20 requestState] == 1)
        {
          if ([v20 hasUploadableContent])
          {
            if (isLogUploadEnabled)
            {
              [v15 addObject:v20];
            }

            else
            {
              [v20 updateToState:4103 errorDescription:0 errorOut:0];
            }
          }

          else
          {
            [v20 makeTerminalDueToMissingLog];
          }
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v70 objects:v77 count:16];
    }

    while (v17);
  }

  v21 = [(DRSCloudKitHelper *)self _requestsPassingUploadSizeCap:v15 remainingQuota:quota];
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v23 = v21;
  v24 = [v23 countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v24)
  {
    v25 = *v67;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v67 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v66 + 1) + 8 * j);
        if ([v27 uploadStarted])
        {
          [v22 addObject:v27];
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v66 objects:v76 count:16];
    }

    while (v24);
  }

  if (containerCopy)
  {
    newBackgroundContext = [containerCopy newBackgroundContext];
    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy__0;
    v64 = __Block_byref_object_dispose__0;
    v65 = 0;
    v58[0] = 0;
    v58[1] = v58;
    v58[2] = 0x2020000000;
    v59 = 0;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __136__DRSCloudKitHelper_uploadRequests_contactDecisionServer_xpcActivity_remainingUploadQuota_backingPersistentContainer_completionHandler___block_invoke;
    v53[3] = &unk_27899ED80;
    v29 = v23;
    v54 = v29;
    v30 = newBackgroundContext;
    v55 = v30;
    v56 = v58;
    v57 = &v60;
    v31 = [v30 performBlockAndWait:v53];
    if (v61[5])
    {
      v32 = DPLogHandle_CKRecordUpload(v31);
      if (os_signpost_enabled(v32))
      {
        localizedDescription = [v61[5] localizedDescription];
        v34 = localizedDescription;
        v35 = @"Unknown";
        if (localizedDescription)
        {
          v35 = localizedDescription;
        }

        *buf = 138543362;
        v75 = v35;
        _os_signpost_emit_with_name_impl(&dword_232906000, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PreDPDSAndUploadSaveFailed", "Failed to save records prior to DPDS submission due to error: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v32 = DPLogHandle_CKRecordUpload(v31);
      if (os_signpost_enabled(v32))
      {
        v36 = [v29 count];
        *buf = 134349056;
        v75 = v36;
        _os_signpost_emit_with_name_impl(&dword_232906000, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PreDPDSAndUploadSaveSuccess", "Successfully saved updated state for %{public}llu requests that will be passed along to the DPDPS", buf, 0xCu);
      }
    }

    _Block_object_dispose(v58, 8);
    _Block_object_dispose(&v60, 8);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __136__DRSCloudKitHelper_uploadRequests_contactDecisionServer_xpcActivity_remainingUploadQuota_backingPersistentContainer_completionHandler___block_invoke_233;
  aBlock[3] = &unk_27899F0F8;
  v37 = handlerCopy;
  v52 = v37;
  aBlock[4] = self;
  v38 = activityCopy;
  v51 = v38;
  v39 = _Block_copy(aBlock);
  v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (serverCopy)
  {
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __136__DRSCloudKitHelper_uploadRequests_contactDecisionServer_xpcActivity_remainingUploadQuota_backingPersistentContainer_completionHandler___block_invoke_243;
    v46[3] = &unk_27899F120;
    v47 = v22;
    v48 = v40;
    v49 = v39;
    [(DRSCloudKitHelper *)self shouldUploadRequests:v47 xpcActivity:v38 replyHandler:v46];
  }

  else
  {
    (*(v39 + 2))(v39, v22, 0);
  }
}

void __136__DRSCloudKitHelper_uploadRequests_contactDecisionServer_xpcActivity_remainingUploadQuota_backingPersistentContainer_completionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v11 + 1) + 8 * v6++) updateContextWithRequest_ON_MOC_QUEUE:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 40);
  v8 = *(*(a1 + 56) + 8);
  obj = *(v8 + 40);
  v9 = [v7 save:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v9;
}

void __136__DRSCloudKitHelper_uploadRequests_contactDecisionServer_xpcActivity_remainingUploadQuota_backingPersistentContainer_completionHandler___block_invoke_233(uint64_t a1, void *a2, uint64_t a3)
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!a3)
  {
    v58 = a1;
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v59 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v55 = [MEMORY[0x277CBEB18] array];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v53 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v69 objects:v78 count:16];
    v54 = v6;
    if (v8)
    {
      v9 = v8;
      v10 = *v70;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v70 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v69 + 1) + 8 * i);
          v13 = [v12 targetContainerName];

          if (v13)
          {
            v14 = [v12 recordRepresentation];
            if (v14)
            {
              v15 = [v12 targetContainerName];
              v16 = [v6 objectForKeyedSubscript:v15];

              if (!v16)
              {
                v16 = [MEMORY[0x277CBEB18] array];
                v17 = [v12 targetContainerName];
                [v6 setObject:v16 forKeyedSubscript:v17];
              }

              [v16 addObject:v14];
              v18 = [v14 recordID];
              [v59 setObject:v12 forKeyedSubscript:v18];

              v20 = DPLogHandle_CKRecord(v19);
              if (os_signpost_enabled(v20))
              {
                v21 = [v14 recordID];
                v22 = [v21 recordName];
                v23 = [v12 debugDescription];
                *buf = 138543618;
                v75 = v22;
                v76 = 2112;
                v77 = v23;
                _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKRecordGenerated", "Generated CK record with name %{public}@ for request %@", buf, 0x16u);

                v6 = v54;
              }
            }

            else
            {
              v24 = DPLogHandle_CKRecordError(0);
              if (os_signpost_enabled(v24))
              {
                v25 = [v12 debugDescription];
                *buf = 138543362;
                v75 = v25;
                _os_signpost_emit_with_name_impl(&dword_232906000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CouldNotCreateCKRecord", "Failed to generate CKRecord for request %{public}@", buf, 0xCu);
              }

              [v12 updateToState:4355 errorDescription:@"Could not create CKRecord for request" errorOut:0];
            }
          }

          else
          {
            [v55 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v69 objects:v78 count:16];
      }

      while (v9);
    }

    v26 = [MEMORY[0x277CBEB18] array];
    v27 = v55;
    if ([v55 count])
    {
      v28 = v58;
      v29 = [*(v58 + 32) _handleRAPIDRequests:v55 xpcActivity:*(v58 + 40) errorsOut:v26];
      if ([v26 count])
      {
        if ((v29 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else
      {

        v26 = 0;
        if ((v29 & 1) == 0)
        {
LABEL_48:
          v50 = (*(*(v58 + 48) + 16))();
          v51 = DPLogHandle_CKRecordUpload(v50);
          v5 = v53;
          if (os_signpost_enabled(v51))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_232906000, v51, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKCFUploadDeferred", &unk_232980861, buf, 2u);
          }

LABEL_52:
          goto LABEL_53;
        }
      }
    }

    else
    {
      v28 = v58;
    }

    if (![v26 count])
    {

      v26 = 0;
    }

    v5 = v53;
    if ([v6 count])
    {
      v52 = v26;
      v57 = [MEMORY[0x277CBEB18] array];
      v56 = dispatch_semaphore_create(0);
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v30 = v6;
      v31 = [v30 countByEnumeratingWithState:&v65 objects:v73 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v66;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v66 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v65 + 1) + 8 * j);
            v36 = [v30 objectForKeyedSubscript:v35];
            v37 = DPLogHandle_CKRecordUpload(v36);
            v38 = [v35 hash];
            if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v39 = v38;
              if (os_signpost_enabled(v37))
              {
                v40 = [v36 count];
                *buf = 134218242;
                v75 = v40;
                v76 = 2114;
                v77 = v35;
                _os_signpost_emit_with_name_impl(&dword_232906000, v37, OS_SIGNPOST_INTERVAL_BEGIN, v39, "PerContainerUploadSession", "Starting upload session for %lu requests for container %{public}@", buf, 0x16u);
              }
            }

            v41 = *(v58 + 32);
            v42 = *(v58 + 40);
            v60[0] = MEMORY[0x277D85DD0];
            v60[1] = 3221225472;
            v60[2] = __136__DRSCloudKitHelper_uploadRequests_contactDecisionServer_xpcActivity_remainingUploadQuota_backingPersistentContainer_completionHandler___block_invoke_238;
            v60[3] = &unk_27899F0D0;
            v61 = v59;
            v43 = v56;
            v62 = v43;
            v44 = v36;
            v63 = v44;
            v64 = v57;
            [v41 _uploadRecords:v44 containerName:v35 xpcActivity:v42 completionHandler:v60];
            v45 = dispatch_semaphore_wait(v43, 0xFFFFFFFFFFFFFFFFLL);
            v46 = DPLogHandle_CKRecordUpload(v45);
            v47 = [v35 hash];
            if ((v47 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v48 = v47;
              if (os_signpost_enabled(v46))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_232906000, v46, OS_SIGNPOST_INTERVAL_END, v48, "PerContainerUploadSession", &unk_232980861, buf, 2u);
              }
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v65 objects:v73 count:16];
        }

        while (v32);
      }

      if ([v57 count])
      {
        v49 = v57;
      }

      else
      {
        v49 = 0;
      }

      v26 = v52;
      (*(*(v58 + 48) + 16))(*(v58 + 48), 0, v52, v49);

      v5 = v53;
      v6 = v54;
      v27 = v55;
    }

    else
    {
      (*(*(v28 + 48) + 16))();
    }

    goto LABEL_52;
  }

  (*(*(a1 + 48) + 16))();
LABEL_53:
}

void __136__DRSCloudKitHelper_uploadRequests_contactDecisionServer_xpcActivity_remainingUploadQuota_backingPersistentContainer_completionHandler___block_invoke_238(uint64_t a1, void *a2, void *a3, void *a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v40 = a3;
  v8 = a4;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v55;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v55 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v54 + 1) + 8 * i);
        v14 = *(a1 + 32);
        v15 = [v13 recordID];
        v16 = [v14 objectForKeyedSubscript:v15];
        v17 = [v13 recordID];
        v18 = [v17 recordName];
        [v16 uploadCompleteWithError:0 ckOperationID:v8 ckRecordID:v18];
      }

      v10 = [v7 countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v10);
  }

  v19 = v40;
  if (!v40)
  {
    goto LABEL_20;
  }

  if ([v40 code] != 2)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v23 = *(a1 + 48);
    v24 = [v23 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v51;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v51 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(a1 + 32);
          v29 = [*(*(&v50 + 1) + 8 * j) recordID];
          v30 = [v28 objectForKeyedSubscript:v29];
          [v30 uploadCompleteWithError:v19 ckOperationID:v8 ckRecordID:0];
        }

        v25 = [v23 countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v25);
    }

    [*(a1 + 56) addObject:v19];
LABEL_20:
    dispatch_semaphore_signal(*(a1 + 40));
    goto LABEL_32;
  }

  v20 = [v40 userInfo];
  v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

  if (v21)
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __136__DRSCloudKitHelper_uploadRequests_contactDecisionServer_xpcActivity_remainingUploadQuota_backingPersistentContainer_completionHandler___block_invoke_239;
    v41[3] = &unk_27899F0A8;
    v42 = *(a1 + 32);
    v43 = v8;
    v44 = *(a1 + 56);
    [v21 enumerateKeysAndObjectsUsingBlock:v41];
    dispatch_semaphore_signal(*(a1 + 40));
  }

  else
  {
    v31 = DPLogHandle_CKRecordError(v22);
    if (os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MissingPartialErrorInfo", "Upload encountered partial error, but no partial error dict was provided", buf, 2u);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v32 = *(a1 + 48);
    v33 = [v32 countByEnumeratingWithState:&v45 objects:v58 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v46;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v46 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(a1 + 32);
          v38 = [*(*(&v45 + 1) + 8 * k) recordID];
          v39 = [v37 objectForKeyedSubscript:v38];
          [v39 uploadCompleteWithError:v40 ckOperationID:v8 ckRecordID:0];
        }

        v34 = [v32 countByEnumeratingWithState:&v45 objects:v58 count:16];
      }

      while (v34);
    }

    v19 = v40;
    [*(a1 + 56) addObject:v40];
    dispatch_semaphore_signal(*(a1 + 40));
  }

LABEL_32:
}

void __136__DRSCloudKitHelper_uploadRequests_contactDecisionServer_xpcActivity_remainingUploadQuota_backingPersistentContainer_completionHandler___block_invoke_239(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v7 = v6;
  if (v6)
  {
    [v6 uploadCompleteWithError:v5 ckOperationID:*(a1 + 40) ckRecordID:0];
    [*(a1 + 48) addObject:v5];
  }

  else
  {
    v8 = DPLogHandle_CKRecordError(0);
    if (os_signpost_enabled(v8))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MissingRequestForError", "Could not find request that was reported to have errored", v9, 2u);
    }
  }
}

void __136__DRSCloudKitHelper_uploadRequests_contactDecisionServer_xpcActivity_remainingUploadQuota_backingPersistentContainer_completionHandler___block_invoke_243(uint64_t a1, void *a2, void *a3, void *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v41 = a2;
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = DPLogHandle_CKCodeServerError(v7);
    if (os_signpost_enabled(v9))
    {
      v10 = [v8 localizedDescription];
      v11 = v10;
      v12 = @"Unknown";
      if (v10)
      {
        v12 = v10;
      }

      *buf = 138543362;
      v48 = v12;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKCodeServerDecisionServerError", "Encountered decision server error: %{public}@", buf, 0xCu);
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = *(a1 + 32);
  v14 = [v13 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v43;
    do
    {
      v17 = 0;
      do
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v42 + 1) + 8 * v17);
        if ([v18 decisionServerDecision] == 2)
        {
          if (!v8)
          {
            [*(a1 + 40) addObject:v18];
            goto LABEL_27;
          }

          v19 = MEMORY[0x277CCACA8];
          v20 = [v8 localizedDescription];
          v21 = v20;
          v22 = @"Unknown error";
          if (v20)
          {
            v22 = v20;
          }

          v23 = [v19 stringWithFormat:@"Upload cancelled due to DPDS error: %@", v22];

          v24 = v18;
          v25 = v23;
        }

        else
        {
          v26 = [v18 requestID];
          v23 = [v41 objectForKeyedSubscript:v26];

          if (v23)
          {
            v28 = [(__CFString *)v23 acceptedNum];

            if (v28)
            {
              v29 = [(__CFString *)v23 acceptedNum];
              v30 = [v29 BOOLValue];

              if (v30)
              {
                [v18 setDecisionServerDecision:2];
                [*(a1 + 40) addObject:v18];
              }

              else
              {
                v36 = [(__CFString *)v23 rejectionReason];
                v37 = v36;
                if (v36)
                {
                  v38 = v36;
                }

                else
                {
                  v38 = @"Unknown";
                }

                [v18 uploadDeniedByDecisionServerWithReason:v38];

                [v18 setDecisionServerDecision:1];
              }
            }

            else
            {
              v33 = [(__CFString *)v23 errorString];
              v34 = v33;
              if (v33)
              {
                v35 = v33;
              }

              else
              {
                v35 = @"Unknown decision server error";
              }

              [v18 uploadFailedDueToReason:v35 ckOperationID:v6];
            }

            goto LABEL_26;
          }

          v31 = DPLogHandle_CKCodeServerError(v27);
          if (os_signpost_enabled(v31))
          {
            v32 = [v18 debugDescription];
            *buf = 138543362;
            v48 = v32;
            _os_signpost_emit_with_name_impl(&dword_232906000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MissingReply", "Missing reply from DS for %{public}@", buf, 0xCu);
          }

          v24 = v18;
          v25 = @"Missing reply";
        }

        [v24 uploadFailedDueToReason:v25 ckOperationID:v6];
LABEL_26:

LABEL_27:
        ++v17;
      }

      while (v15 != v17);
      v39 = [v13 countByEnumeratingWithState:&v42 objects:v46 count:16];
      v15 = v39;
    }

    while (v39);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)shouldUploadRequests:(id)requests xpcActivity:(id)activity replyHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  activityCopy = activity;
  handlerCopy = handler;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = requestsCopy;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v18 + 1) + 8 * i);
        if (![v17 decisionServerDecision])
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  [(DRSCloudKitHelper *)self _sendDecisionServerRequests:v11 xpcActivity:activityCopy replyHandler:handlerCopy];
}

- (void)shouldEnableDataGathering:(id)gathering xpcActivity:(id)activity replyHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  gatheringCopy = gathering;
  activityCopy = activity;
  handlerCopy = handler;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = gatheringCopy;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        if ([v18 submitQuery])
        {
          v19 = v12;
        }

        else
        {
          v19 = v11;
        }

        [v19 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v15);
  }

  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __72__DRSCloudKitHelper_shouldEnableDataGathering_xpcActivity_replyHandler___block_invoke;
  v26 = &unk_27899F148;
  v27 = v11;
  v28 = handlerCopy;
  v20 = handlerCopy;
  v21 = v11;
  v22 = _Block_copy(&v23);
  [(DRSCloudKitHelper *)self _sendDecisionServerRequests:v12 xpcActivity:activityCopy replyHandler:v22, v23, v24, v25, v26];
}

void __72__DRSCloudKitHelper_shouldEnableDataGathering_xpcActivity_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v25 = a3;
  v8 = a4;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = [v7 allValues];
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = [v14 request];
        [v15 queryFinishedWithDecision:v14 error:v8];
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v11);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = a1;
  v16 = *(a1 + 32);
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * j);
        v22 = [[DRSDecisionServerRequestReply alloc] initWithOriginalRequest:v21 requestAccepted:0 rejectionReason:@"Invalid query state"];
        v23 = [v21 queryID];
        [v7 setObject:v22 forKeyedSubscript:v23];
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  (*(*(v24 + 40) + 16))();
}

- (void)_sendDecisionServerRequests:(id)requests xpcActivity:(id)activity replyHandler:(id)handler
{
  v111 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  activityCopy = activity;
  handlerCopy = handler;
  if (requestsCopy && [requestsCopy count])
  {
    v74 = handlerCopy;
    v75 = activityCopy;
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = +[DRSSystemProfile sharedInstance];
    isLogUploadEnabled = [v12 isLogUploadEnabled];

    if (isLogUploadEnabled)
    {
      selfCopy = self;
      v77 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v73 = requestsCopy;
      v15 = requestsCopy;
      v16 = [v15 countByEnumeratingWithState:&v88 objects:v109 count:16];
      v76 = v14;
      if (v16)
      {
        v17 = v16;
        v18 = *v89;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v89 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v88 + 1) + 8 * i);
            pbRequest = [v20 pbRequest];
            if (pbRequest)
            {
              [v77 addObject:pbRequest];
              [v14 addObject:v20];
            }

            else
            {
              v22 = [[DRSDecisionServerRequestReply alloc] initWithOriginalRequest:v20 requestAccepted:0 rejectionReason:@"Invalid upload request"];
              uniqueID = [v20 uniqueID];
              [v11 setObject:v22 forKeyedSubscript:uniqueID];

              v14 = v76;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v88 objects:v109 count:16];
        }

        while (v17);
      }

      v24 = [v11 count];
      if (v24 == [v15 count])
      {
        v25 = MEMORY[0x277CCA9B8];
        v107 = *MEMORY[0x277CCA450];
        v108 = @"Could not create any valid upload requests";
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
        v27 = [v25 errorWithDomain:@"CKCodeServerError" code:0 userInfo:v26];

        handlerCopy = v74;
        (v74)[2](v74, v11, 0, v27);
        activityCopy = v75;
      }

      else
      {
        v37 = objc_alloc(MEMORY[0x277CBC1F8]);
        v38 = kDRSCloudKitDecisionServerName;
        firstObject = [v76 firstObject];
        functionName = [firstObject functionName];
        firstObject2 = [v76 firstObject];
        v27 = [v37 initWithServiceName:v38 functionName:functionName responseClass:{objc_msgSend(firstObject2, "pbBatchResponseClass")}];

        if (v27)
        {
          v43 = DPLogHandle_CKCodeServer(v42);
          if (os_signpost_enabled(v43))
          {
            v44 = kDRSCloudKitDecisionServerName;
            firstObject3 = [v76 firstObject];
            functionName2 = [firstObject3 functionName];
            operationID = [v27 operationID];
            *buf = 138543874;
            v97 = v44;
            v98 = 2114;
            v99 = functionName2;
            v100 = 2114;
            v101 = operationID;
            _os_signpost_emit_with_name_impl(&dword_232906000, v43, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKCodeOperationCreation", "Server: %{public}@, function: %{public}@, CKOperationID: %{public}@", buf, 0x20u);
          }

          _targetContainer = [(DRSCloudKitHelper *)selfCopy _targetContainer];
          activityCopy = v75;
          [(DRSCloudKitHelper *)selfCopy _configureOperation:v27 container:_targetContainer xpcActivity:v75];

          firstObject4 = [v76 firstObject];
          pbBatchInstance = [firstObject4 pbBatchInstance];

          v52 = DRSDeviceMetadata(v51);
          [pbBatchInstance setClientMetadata:v52];

          [pbBatchInstance setRequests:v77];
          [v27 setRequest:pbBatchInstance];
          operationID2 = [v27 operationID];
          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          v78[2] = __74__DRSCloudKitHelper__sendDecisionServerRequests_xpcActivity_replyHandler___block_invoke;
          v78[3] = &unk_27899F170;
          v79 = v76;
          v80 = v11;
          v81 = v15;
          handlerCopy = v74;
          v82 = operationID2;
          v83 = v74;
          v54 = operationID2;
          [v27 setCodeOperationCompletionBlock:v78];
          _targetContainer2 = [(DRSCloudKitHelper *)selfCopy _targetContainer];
          publicCloudDatabase = [_targetContainer2 publicCloudDatabase];
          [publicCloudDatabase addOperation:v27];
        }

        else
        {
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v57 = v76;
          v58 = [v57 countByEnumeratingWithState:&v84 objects:v106 count:16];
          if (v58)
          {
            v59 = v58;
            v60 = *v85;
            do
            {
              for (j = 0; j != v59; ++j)
              {
                if (*v85 != v60)
                {
                  objc_enumerationMutation(v57);
                }

                v62 = *(*(&v84 + 1) + 8 * j);
                v63 = [[DRSDecisionServerRequestReply alloc] initWithOriginalRequest:v62 requestAccepted:0 rejectionReason:@"Could not create upload request operation"];
                uniqueID2 = [v62 uniqueID];
                [v11 setObject:v63 forKeyedSubscript:uniqueID2];
              }

              v59 = [v57 countByEnumeratingWithState:&v84 objects:v106 count:16];
            }

            while (v59);
          }

          v65 = [v11 count];
          v66 = [v15 count];
          v67 = MEMORY[0x277CCA9B8];
          if (v65 == v66)
          {
            v102 = *MEMORY[0x277CCA450];
            v103 = @"Failed to create CKCodeOperation instance to query DS";
            v68 = MEMORY[0x277CBEAC0];
            v69 = &v103;
            v70 = &v102;
          }

          else
          {
            v104 = *MEMORY[0x277CCA450];
            v105 = @"Didn't have a error reply for every request after failing to create upload request operation";
            v68 = MEMORY[0x277CBEAC0];
            v69 = &v105;
            v70 = &v104;
          }

          v71 = [v68 dictionaryWithObjects:v69 forKeys:v70 count:1];
          handlerCopy = v74;
          activityCopy = v75;
          v27 = 0;
          pbBatchInstance = [v67 errorWithDomain:@"CKCodeServerError" code:0 userInfo:v71];

          (*(handlerCopy + 2))(handlerCopy, v11, 0, pbBatchInstance);
        }
      }

      requestsCopy = v73;
    }

    else
    {
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v29 = requestsCopy;
      v30 = [v29 countByEnumeratingWithState:&v92 objects:v110 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v93;
        do
        {
          for (k = 0; k != v31; ++k)
          {
            if (*v93 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v92 + 1) + 8 * k);
            v35 = [[DRSDecisionServerRequestReply alloc] initWithOriginalRequest:v34 requestAccepted:0 rejectionReason:@"Log upload is disabled"];
            uniqueID3 = [v34 uniqueID];
            [v11 setObject:v35 forKeyedSubscript:uniqueID3];
          }

          v31 = [v29 countByEnumeratingWithState:&v92 objects:v110 count:16];
        }

        while (v31);
      }

      handlerCopy = v74;
      (v74)[2](v74, v11, 0, 0);
    }
  }

  else
  {
    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    (*(handlerCopy + 2))(handlerCopy, v28, 0, 0);
  }
}

void __74__DRSCloudKitHelper__sendDecisionServerRequests_xpcActivity_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if (!v6)
  {
    v24 = [v7 decisionResults];
    v25 = [v24 count];
    v26 = [*(a1 + 32) count];

    if (v25 == v26)
    {
      if ([*(a1 + 32) count])
      {
        v27 = 0;
        do
        {
          v28 = [DRSDecisionServerRequestReply alloc];
          v29 = [*(a1 + 32) objectAtIndexedSubscript:v27];
          v30 = [v8 decisionResults];
          v31 = [v30 objectAtIndexedSubscript:v27];
          v32 = [(DRSDecisionServerRequestReply *)v28 initWithOriginalRequest:v29 reply:v31];

          v33 = *(a1 + 40);
          v34 = [(DRSDecisionServerRequestReply *)v32 request];
          v35 = [v34 uniqueID];
          [v33 setObject:v32 forKeyedSubscript:v35];

          ++v27;
        }

        while (v27 < [*(a1 + 32) count]);
      }

      v36 = [*(a1 + 40) count];
      v37 = [*(a1 + 48) count];
      if (v36 == v37)
      {
        goto LABEL_33;
      }

      v38 = DPLogHandle_CKCodeServerError(v37);
      if (!os_signpost_enabled(v38))
      {
LABEL_32:

LABEL_33:
        (*(*(a1 + 64) + 16))();
        goto LABEL_34;
      }

      *buf = 0;
      v39 = "Didn't have reply for every request on successful reply";
    }

    else
    {
      v52 = v8;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v40 = *(a1 + 32);
      v41 = [v40 countByEnumeratingWithState:&v53 objects:v62 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v54;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v54 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v53 + 1) + 8 * i);
            v46 = [[DRSDecisionServerRequestReply alloc] initWithOriginalRequest:v45 errorString:@"Reply from decision server did not properly map to request array"];
            v47 = *(a1 + 40);
            v48 = [v45 uniqueID];
            [v47 setObject:v46 forKeyedSubscript:v48];
          }

          v42 = [v40 countByEnumeratingWithState:&v53 objects:v62 count:16];
        }

        while (v42);
      }

      v49 = [*(a1 + 40) count];
      v50 = [*(a1 + 48) count];
      v8 = v52;
      if (v49 == v50)
      {
        goto LABEL_33;
      }

      v38 = DPLogHandle_CKCodeServerError(v50);
      if (!os_signpost_enabled(v38))
      {
        goto LABEL_32;
      }

      *buf = 0;
      v39 = "Didn't have reply for every request when confusing answer from DS received";
    }

    _os_signpost_emit_with_name_impl(&dword_232906000, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InconsistentReplyCount", v39, buf, 2u);
    goto LABEL_32;
  }

  v51 = v7;
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = [v6 localizedDescription];
  v11 = [v9 initWithFormat:@"CKOperationError: %@", v10];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v12 = *(a1 + 32);
  v13 = [v12 countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v59;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v59 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v58 + 1) + 8 * j);
        v18 = [[DRSDecisionServerRequestReply alloc] initWithOriginalRequest:v17 errorString:v11];
        v19 = *(a1 + 40);
        v20 = [v17 uniqueID];
        [v19 setObject:v18 forKeyedSubscript:v20];
      }

      v14 = [v12 countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v14);
  }

  v21 = [*(a1 + 40) count];
  v22 = [*(a1 + 48) count];
  v8 = v51;
  if (v21 != v22)
  {
    v23 = DPLogHandle_CKCodeServerError(v22);
    if (os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InconsistentReplyCount", "Didn't have reply for every request when CKOperation error encountered", buf, 2u);
    }
  }

  (*(*(a1 + 64) + 16))();

LABEL_34:
}

- (void)reportTerminalRequestStats:(id)stats xpcActivity:(id)activity replyHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  activityCopy = activity;
  handlerCopy = handler;
  if ([statsCopy count])
  {
    v11 = [DRSRequestAllStats statsForRequests:statsCopy];
    v12 = [v11 generateCoreAnalyticsEvents:1];
    v13 = DPLogHandle_Telemetry(v12);
    if (os_signpost_enabled(v13))
    {
      *buf = 134349056;
      v30 = v12;
      _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestStatsBatchCoreAnalyticsEvents", "Reported %{public}llu CA events", buf, 0xCu);
    }

    v14 = +[DRSSystemProfile sharedInstance];
    isInternal = [v14 isInternal];

    if (isInternal)
    {
      terminalRequestProtobufRepresentation = [v11 terminalRequestProtobufRepresentation];
      if (terminalRequestProtobufRepresentation)
      {
        v17 = objc_alloc(MEMORY[0x277CBC1F8]);
        v18 = [v17 initWithServiceName:kDRSCloudKitDecisionServerName functionName:@"reportDiagnosticRequestStatsBatch" responseClass:objc_opt_class()];
        _targetContainer = [(DRSCloudKitHelper *)self _targetContainer];
        [(DRSCloudKitHelper *)self _configureOperation:v18 container:_targetContainer xpcActivity:activityCopy];

        [v18 setRequest:terminalRequestProtobufRepresentation];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __73__DRSCloudKitHelper_reportTerminalRequestStats_xpcActivity_replyHandler___block_invoke;
        v25[3] = &unk_27899F198;
        v26 = handlerCopy;
        [v18 setCodeOperationCompletionBlock:v25];
        _targetContainer2 = [(DRSCloudKitHelper *)self _targetContainer];
        publicCloudDatabase = [_targetContainer2 publicCloudDatabase];
        [publicCloudDatabase addOperation:v18];
      }

      else
      {
        v22 = DPLogHandle_CKCodeServerError(0);
        if (os_signpost_enabled(v22))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestStatsBatchProtobufError", "Could not create stats batch protobuf object", buf, 2u);
        }

        v23 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277CCA450];
        v28 = @"Failed to create protobuf object to report stats to DecisionServer";
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v18 = [v23 errorWithDomain:@"DiagnosticPipelineRequestStatsBatchError" code:0 userInfo:v24];

        (*(handlerCopy + 2))(handlerCopy, v18);
      }
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __73__DRSCloudKitHelper_reportTerminalRequestStats_xpcActivity_replyHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = DPLogHandle_CKCodeServerError(v4);
    if (os_signpost_enabled(v6))
    {
      v7 = 138543362;
      v8 = v5;
      _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestStatsBatchError", "CKCS error for 'reportDiagnosticRequestStatsBatch': %{public}@", &v7, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

@end