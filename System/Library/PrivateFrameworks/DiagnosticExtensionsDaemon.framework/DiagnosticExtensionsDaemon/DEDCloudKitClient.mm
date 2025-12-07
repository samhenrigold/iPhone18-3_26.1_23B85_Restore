@interface DEDCloudKitClient
- (DEDCloudKitClient)initWithBugSession:(id)session configuration:(id)configuration;
- (void)uploadRecords:(id)records taskIdentifier:(id)identifier totalUploadSize:(id)size perRecordProgressBlock:(id)block perRecordSaveBlock:(id)saveBlock completionBlock:(id)completionBlock;
@end

@implementation DEDCloudKitClient

- (DEDCloudKitClient)initWithBugSession:(id)session configuration:(id)configuration
{
  v28 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  configurationCopy = configuration;
  v25.receiver = self;
  v25.super_class = DEDCloudKitClient;
  v9 = [(DEDCloudKitClient *)&v25 init];
  if (v9)
  {
    v10 = +[DEDConfiguration sharedInstance];
    v11 = os_log_create([v10 loggingSubsystem], "ded-cloudkit-client");
    log = v9->_log;
    v9->_log = v11;

    objc_storeStrong(&v9->_bugSession, session);
    objc_storeStrong(&v9->_bugSessionConfig, configuration);
    cloudkitData = [configurationCopy cloudkitData];

    v14 = v9->_log;
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (cloudkitData)
    {
      if (v15)
      {
        v16 = v14;
        cloudkitData2 = [configurationCopy cloudkitData];
        *buf = 138543362;
        v27 = cloudkitData2;
        _os_log_impl(&dword_248AD7000, v16, OS_LOG_TYPE_DEFAULT, "cloudkitData: %{public}@", buf, 0xCu);
      }
    }

    else if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_DEFAULT, "No additional CloudKit data was provided", buf, 2u);
    }

    if ([configurationCopy cloudkitUseDevelopmentEnvironment])
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v19 = objc_alloc(MEMORY[0x277CBC220]);
    cloudkitContainer = [configurationCopy cloudkitContainer];
    v21 = [v19 initWithContainerIdentifier:cloudkitContainer environment:v18];

    v22 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v21];
    container = v9->_container;
    v9->_container = v22;
  }

  return v9;
}

- (void)uploadRecords:(id)records taskIdentifier:(id)identifier totalUploadSize:(id)size perRecordProgressBlock:(id)block perRecordSaveBlock:(id)saveBlock completionBlock:(id)completionBlock
{
  v42 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  identifierCopy = identifier;
  sizeCopy = size;
  blockCopy = block;
  saveBlockCopy = saveBlock;
  completionBlockCopy = completionBlock;
  mEMORY[0x277CF0810] = [MEMORY[0x277CF0810] sharedScheduler];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke;
  v34[3] = &unk_278F66D88;
  v34[4] = self;
  v21 = identifierCopy;
  v35 = v21;
  v31 = recordsCopy;
  v36 = v31;
  v22 = blockCopy;
  v37 = v22;
  v23 = saveBlockCopy;
  v38 = v23;
  v24 = completionBlockCopy;
  v39 = v24;
  [mEMORY[0x277CF0810] registerForTaskWithIdentifier:v21 usingQueue:0 launchHandler:v34];

  v25 = [objc_alloc(MEMORY[0x277CF07C8]) initWithIdentifier:v21];
  [v25 setPriority:2];
  [v25 setRequiresNetworkConnectivity:1];
  if (sizeCopy)
  {
    [v25 setNetworkUploadSize:{objc_msgSend(sizeCopy, "integerValue", v31)}];
  }

  mEMORY[0x277CF0810]2 = [MEMORY[0x277CF0810] sharedScheduler];
  v33 = 0;
  v27 = [mEMORY[0x277CF0810]2 submitTaskRequest:v25 error:&v33];
  v28 = v33;

  v29 = [(DEDCloudKitClient *)self log];
  v30 = v29;
  if (v27)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v41 = v21;
      _os_log_impl(&dword_248AD7000, v30, OS_LOG_TYPE_DEFAULT, "Submitted task %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [DEDCloudKitClient uploadRecords:v21 taskIdentifier:v28 totalUploadSize:v30 perRecordProgressBlock:? perRecordSaveBlock:? completionBlock:?];
    }

    if (v24)
    {
      (*(v24 + 2))(v24, v28);
    }
  }
}

void __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_2;
  v27[3] = &unk_278F66D10;
  v4 = *(a1 + 40);
  v27[4] = *(a1 + 32);
  v28 = v4;
  v29 = &v30;
  [v3 setExpirationHandler:v27];
  if ((v31[3] & 1) == 0)
  {
    v5 = [*(a1 + 32) log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138543362;
      v35 = v6;
      _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "Task %{public}@ is running", buf, 0xCu);
    }

    v7 = [*(a1 + 32) log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 48) count];
      v9 = *(a1 + 48);
      *buf = 134218242;
      v35 = v8;
      v36 = 2112;
      v37 = v9;
      _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Uploading %lu records: %@", buf, 0x16u);
    }

    v10 = objc_alloc_init(MEMORY[0x277CBC4F0]);
    [v10 setQualityOfService:17];
    [v10 setAllowsCellularAccess:1];
    [v10 setAllowsExpensiveNetworkAccess:1];
    [v10 setSystemTask:v3];
    v11 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:*(a1 + 48) recordIDsToDelete:0];
    [v11 setConfiguration:v10];
    v12 = [*(a1 + 56) copy];
    [v11 setPerRecordProgressBlock:v12];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_17;
    v25[3] = &unk_278F66D38;
    v25[4] = *(a1 + 32);
    v26 = *(a1 + 64);
    [v11 setPerRecordSaveBlock:v25];
    objc_initWeak(buf, v11);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_19;
    v19 = &unk_278F66D60;
    objc_copyWeak(&v24, buf);
    v13 = *(a1 + 40);
    v20 = *(a1 + 32);
    v21 = v13;
    v22 = v3;
    v23 = *(a1 + 72);
    [v11 setCompletionBlock:&v16];
    v14 = [*(a1 + 32) container];
    v15 = [v14 publicCloudDatabase];
    [v15 addOperation:v11];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  _Block_object_dispose(&v30, 8);
}

void __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "Task %{public}@ was expired by DAS", &v4, 0xCu);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_17(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) log];
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_17_cold_1(v8, v9, v11);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v8;
    _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "CloudKit successfully saved record: %@", &v13, 0xCu);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v7, v8, v9);
  }
}

void __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_19(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained error];

  v4 = [*(a1 + 32) log];
  v5 = v4;
  if (!v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = WeakRetained;
      _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "Operation completed successfully: %@", buf, 0xCu);
    }

    v23 = *(a1 + 56);
    if (v23)
    {
      (*(v23 + 16))(v23, 0);
    }

    v24 = [*(a1 + 32) log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 40);
      *buf = 138543362;
      v33 = v25;
      _os_log_impl(&dword_248AD7000, v24, OS_LOG_TYPE_DEFAULT, "Task %{public}@ completed", buf, 0xCu);
    }

    goto LABEL_29;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_19_cold_1(WeakRetained, v5);
  }

  v6 = [WeakRetained error];
  v7 = [v6 domain];
  v8 = *MEMORY[0x277CBBF50];
  if (![v7 isEqualToString:*MEMORY[0x277CBBF50]])
  {
    goto LABEL_26;
  }

  v9 = [WeakRetained error];
  if ([v9 code] != 20)
  {
LABEL_25:

LABEL_26:
LABEL_27:
    v26 = *(a1 + 56);
    if (v26)
    {
      v27 = [WeakRetained error];
      (*(v26 + 16))(v26, v27);
    }

LABEL_29:
    [*(a1 + 48) setTaskCompleted];
    goto LABEL_30;
  }

  v10 = [WeakRetained error];
  v11 = [v10 underlyingErrors];
  v12 = [v11 firstObject];
  v13 = [v12 domain];
  if (![v13 isEqualToString:v8])
  {

    goto LABEL_25;
  }

  v28 = [WeakRetained error];
  [v28 underlyingErrors];
  v14 = v29 = v10;
  v15 = [v14 firstObject];
  v30 = [v15 code];

  if (v30 != 133)
  {
    goto LABEL_27;
  }

  v16 = [*(a1 + 32) log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 40);
    *buf = 138543362;
    v33 = v17;
    _os_log_impl(&dword_248AD7000, v16, OS_LOG_TYPE_DEFAULT, "Expiring task %{public}@", buf, 0xCu);
  }

  v18 = *(a1 + 48);
  v31 = 0;
  v19 = [v18 setTaskExpiredWithRetryAfter:&v31 error:0.0];
  v20 = v31;
  if ((v19 & 1) == 0)
  {
    v21 = [*(a1 + 32) log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_19_cold_2(a1, v21);
    }

    v22 = *(a1 + 56);
    if (v22)
    {
      (*(v22 + 16))(v22, v20);
    }

    [*(a1 + 48) setTaskCompleted];
  }

LABEL_30:
}

- (void)uploadRecords:(NSObject *)a3 taskIdentifier:totalUploadSize:perRecordProgressBlock:perRecordSaveBlock:completionBlock:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_7_0(&dword_248AD7000, a2, a3, "Failed to submit task %{public}@: %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_17_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_7_0(&dword_248AD7000, a2, a3, "CloudKit failed to save record: %@ with error: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_19_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "Operation failed with error: %@", &v4, 0xCu);
}

void __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_19_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "Failed to expire task %{public}@", &v3, 0xCu);
}

@end