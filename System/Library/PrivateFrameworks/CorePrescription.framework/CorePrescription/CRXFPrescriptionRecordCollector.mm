@interface CRXFPrescriptionRecordCollector
- (CRXFPrescriptionRecordCollector)initWithDeviceModel:(id)model timeout:(double)timeout;
- (id)prescriptionRecordWithEnrollmentName:(id)name enrollmentDate:(id)date accPayload:(id)payload;
- (void)addRecordFetchAnalyticsEventWithFetchSummary:(id)summary;
- (void)fetchPrescriptionRecordsWithCompletion:(id)completion;
@end

@implementation CRXFPrescriptionRecordCollector

- (CRXFPrescriptionRecordCollector)initWithDeviceModel:(id)model timeout:(double)timeout
{
  modelCopy = model;
  v22.receiver = self;
  v22.super_class = CRXFPrescriptionRecordCollector;
  v7 = [(CRXFPrescriptionRecordCollector *)&v22 init];
  if (v7)
  {
    v8 = os_log_create(CRXFLoggingSubsystem, CRXFLoggingCategory[0]);
    log = v7->_log;
    v7->_log = v8;

    v10 = [[CRXFHealthDataProvider alloc] initWithDeviceModel:modelCopy];
    healthDataProvider = v7->_healthDataProvider;
    v7->_healthDataProvider = v10;

    timeoutCopy = 2.0;
    if (timeout >= 2.0)
    {
      timeoutCopy = timeout;
    }

    v13 = [[CRXFCorePrescriptionServiceClient alloc] initWithServer:0 serverVersion:0 timeout:timeoutCopy + -1.0];
    serviceClient = v7->_serviceClient;
    v7->_serviceClient = v13;

    v15 = [[CRXFKeychainAccess alloc] initWithDeviceModel:modelCopy];
    keychainAccess = v7->_keychainAccess;
    v7->_keychainAccess = v15;

    v17 = [CRXUDispatchQueue concurrentQueueWithName:@"PrescriptionRecordCollector.SerialQueue"];
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v17;

    v19 = +[CRXFAppClipCodeTranscoder sharedInstance];
    accTranscoder = v7->_accTranscoder;
    v7->_accTranscoder = v19;
  }

  return v7;
}

- (void)fetchPrescriptionRecordsWithCompletion:(id)completion
{
  v117 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = [[CRXUDispatchGroup alloc] initWithName:@"PrescriptionRecordCollectorGroup"];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v105[0] = 0;
  v105[1] = v105;
  v105[2] = 0x3032000000;
  v105[3] = __Block_byref_object_copy__0;
  v105[4] = __Block_byref_object_dispose__0;
  v106 = 0;
  v103[0] = 0;
  v103[1] = v103;
  v103[2] = 0x3032000000;
  v103[3] = __Block_byref_object_copy__0;
  v103[4] = __Block_byref_object_dispose__0;
  v104 = 0;
  v102[0] = 0;
  v102[1] = v102;
  v102[2] = 0x2020000000;
  v102[3] = 0;
  v101[0] = 0;
  v101[1] = v101;
  v101[2] = 0x2020000000;
  v101[3] = 0;
  v100[0] = 0;
  v100[1] = v100;
  v100[2] = 0x2020000000;
  v100[3] = 0;
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceReferenceDate];
  v10 = v9;

  serialQueue = self->_serialQueue;
  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke;
  v99[3] = &unk_278EA0680;
  v99[4] = self;
  [(CRXUDispatchQueue *)serialQueue dispatchSync:v99];
  [(CRXUDispatchGroup *)v4 enter];
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:];
  }

  healthDataProvider = self->_healthDataProvider;
  v13 = self->_serialQueue;
  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3221225472;
  v95[2] = __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_348;
  v95[3] = &unk_278EA06D0;
  v95[4] = self;
  v14 = array2;
  v96 = v14;
  v98 = v105;
  v15 = v4;
  v97 = v15;
  [(CRXFHealthDataProvider *)healthDataProvider listPrescriptionsWithCompletionQueue:v13 completion:v95];
  [(CRXUDispatchGroup *)v15 enter];
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:];
  }

  keychainAccess = self->_keychainAccess;
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_355;
  v91[3] = &unk_278EA06D0;
  v91[4] = self;
  v17 = array3;
  v92 = v17;
  v94 = v103;
  v18 = v15;
  v93 = v18;
  [(CRXFKeychainAccess *)keychainAccess fetchASAKeysWithCompletion:v91];
  [(CRXUDispatchGroup *)v18 waitFor:1.0];
  v54 = v18;
  array4 = [MEMORY[0x277CBEB18] array];
  array5 = [MEMORY[0x277CBEB18] array];
  v19 = array;
  objc_sync_enter(v19);
  [array4 addObjectsFromArray:v19];
  objc_sync_exit(v19);
  v48 = v19;

  v20 = v17;
  objc_sync_enter(v20);
  [array5 addObjectsFromArray:v20];
  objc_sync_exit(v20);
  v47 = v20;

  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = v14;
  v21 = [obj countByEnumeratingWithState:&v83 objects:v116 count:16];
  v22 = 0;
  if (v21)
  {
    v23 = *v84;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v84 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v83 + 1) + 8 * i);
        [(CRXUDispatchGroup *)v54 enter];
        v26 = self->_log;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
          v28 = MEMORY[0x277CCABB0];
          [(CRXFCorePrescriptionServiceClient *)self->_serviceClient timeout];
          v29 = [v28 numberWithDouble:?];
          *buf = 136315906;
          v109 = "[CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:]";
          v110 = 1024;
          v111 = 258;
          v112 = 2114;
          v113 = v27;
          v114 = 2114;
          v115 = v29;
          _os_log_impl(&dword_24732C000, v26, OS_LOG_TYPE_INFO, "%s @%d: Downloading calibration for health record #%{public}@ with timeout %{public}@", buf, 0x26u);
        }

        serviceClient = self->_serviceClient;
        accPayload = [v25 accPayload];
        v32 = self->_serialQueue;
        v77[0] = MEMORY[0x277D85DD0];
        v77[1] = 3221225472;
        v77[2] = __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_356;
        v77[3] = &unk_278EA06F8;
        v79 = v100;
        v80 = v101;
        v81 = v102;
        v82 = v22;
        v77[4] = self;
        v77[5] = v25;
        v78 = v54;
        [(CRXFCorePrescriptionServiceClient *)serviceClient downloadCalibrationDataForACCPayload:accPayload completionQueue:v32 completion:v77];

        ++v22;
      }

      v21 = [obj countByEnumeratingWithState:&v83 objects:v116 count:16];
    }

    while (v21);
  }

  v88[3] = v22;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:];
  }

  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x2020000000;
  v76[3] = 0;
  if (array5)
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v33 = array5;
    v34 = [v33 countByEnumeratingWithState:&v72 objects:v107 count:16];
    if (v34)
    {
      v35 = 0;
      v53 = *v73;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v73 != v53)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v72 + 1) + 8 * j);
          [(CRXUDispatchGroup *)v54 enter];
          v38 = self->_log;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v35];
            v40 = MEMORY[0x277CCABB0];
            [(CRXFCorePrescriptionServiceClient *)self->_serviceClient timeout];
            v41 = [v40 numberWithDouble:?];
            *buf = 136315906;
            v109 = "[CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:]";
            v110 = 1024;
            v111 = 299;
            v112 = 2114;
            v113 = v39;
            v114 = 2114;
            v115 = v41;
            _os_log_impl(&dword_24732C000, v38, OS_LOG_TYPE_INFO, "%s @%d: Downloading calibration for ASA key #%{public}@ with timeout %{public}@", buf, 0x26u);
          }

          v42 = self->_serviceClient;
          privateKey = [v37 privateKey];
          v44 = self->_serialQueue;
          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_358;
          v65[3] = &unk_278EA0720;
          v67 = v100;
          v68 = v101;
          v65[4] = self;
          v65[5] = v37;
          v69 = v76;
          v70 = v102;
          v71 = v35;
          v66 = v54;
          [(CRXFCorePrescriptionServiceClient *)v42 downloadCalibrationDataForASAKey:privateKey completionQueue:v44 completion:v65];

          ++v35;
        }

        v34 = [v33 countByEnumeratingWithState:&v72 objects:v107 count:16];
      }

      while (v34);
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      [CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:];
    }
  }

  v45 = self->_serialQueue;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_359;
  v55[3] = &unk_278EA0748;
  v64 = v10;
  v55[4] = self;
  v57 = v101;
  v58 = v100;
  v59 = v105;
  v60 = v103;
  v61 = &v87;
  v62 = v76;
  v63 = v102;
  v46 = completionCopy;
  v56 = v46;
  [(CRXUDispatchGroup *)v54 notifyOnQueue:v45 withBlock:v55];

  _Block_object_dispose(v76, 8);
  _Block_object_dispose(&v87, 8);

  _Block_object_dispose(v100, 8);
  _Block_object_dispose(v101, 8);
  _Block_object_dispose(v102, 8);
  _Block_object_dispose(v103, 8);

  _Block_object_dispose(v105, 8);
}

uint64_t __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 56) = [MEMORY[0x277CBEB18] array];

  return MEMORY[0x2821F96F8]();
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_348(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v34 = v6;
    v37 = a1;
    v8 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_348_cold_1(v8, v5);
    }

    v9 = [MEMORY[0x277CBEB38] dictionary];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v36 = v5;
    v10 = v5;
    v11 = v9;
    obj = v10;
    v12 = [v10 countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v44;
      v15 = *MEMORY[0x277CCE120];
      v16 = *MEMORY[0x277CCC4A8];
      v38 = v9;
      do
      {
        v17 = 0;
        v39 = v13;
        do
        {
          if (*v44 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v43 + 1) + 8 * v17);
          v19 = [v18 metadata];
          v20 = [v19 crxu_dataForKey:v15];

          if (v20)
          {
            v21 = [v18 metadata];
            v22 = [v21 crxu_containsKey:v16];

            if (v22)
            {
              v23 = v16;
              v24 = v14;
              v25 = [v11 objectForKey:v20];
              v26 = v25;
              if (!v25)
              {
                goto LABEL_15;
              }

              v27 = [v25 _creationDate];
              v28 = [v18 _creationDate];
              v29 = [v27 crxu_isBefore:v28];

              v11 = v38;
              if (v29)
              {
                v30 = *(*(v37 + 32) + 8);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                {
                  v31 = v30;
                  v32 = [v20 crxu_asHexString];
                  *buf = 136315650;
                  v48 = "[CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:]_block_invoke";
                  v49 = 1024;
                  v50 = 180;
                  v51 = 2112;
                  v52 = v32;
                  _os_log_debug_impl(&dword_24732C000, v31, OS_LOG_TYPE_DEBUG, "%s @%d: Discarding health record with duplicate ACC %@", buf, 0x1Cu);

                  v11 = v38;
                }

LABEL_15:
                [v11 setObject:v18 forKey:v20];
              }

              v14 = v24;
              v16 = v23;
              v13 = v39;
            }
          }

          ++v17;
        }

        while (v13 != v17);
        v13 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
      }

      while (v13);
    }

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_351;
    v41[3] = &unk_278EA06A8;
    a1 = v37;
    v33 = *(v37 + 40);
    v41[4] = *(v37 + 32);
    v42 = v33;
    [v11 enumerateKeysAndObjectsUsingBlock:v41];

    v7 = v35;
    v5 = v36;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    if (os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_DEBUG))
    {
      __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_348_cold_2();
    }
  }

  [*(a1 + 48) leave];
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_351(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v5 metadata];
  v11 = [v7 crxu_stringForKey:*MEMORY[0x277CCC4A8]];

  v8 = *(a1 + 32);
  v9 = [v5 dateIssued];

  v10 = [v8 prescriptionRecordWithEnrollmentName:v11 enrollmentDate:v9 accPayload:v6];

  if (v10)
  {
    [*(*(a1 + 32) + 56) addObject:v10];
    [*(a1 + 40) addObject:v10];
  }
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_355(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_355_cold_1(v7, v5);
    }

    v8 = *(a1 + 40);
    objc_sync_enter(v8);
    [*(a1 + 40) addObjectsFromArray:v5];
    objc_sync_exit(v8);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    if (os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_ERROR))
    {
      __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_355_cold_2();
    }
  }

  [*(a1 + 48) leave];
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_356(uint64_t a1, void *a2, void *a3, double a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  if (*(v9 + 56))
  {
    v10 = *(v9 + 8);
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = MEMORY[0x277CCABB0];
        v12 = *(a1 + 80);
        v13 = v10;
        v14 = [v11 numberWithUnsignedInteger:v12];
        v18 = 136315650;
        v19 = "[CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:]_block_invoke";
        v20 = 1024;
        v21 = 268;
        v22 = 2114;
        v23 = v14;
        _os_log_impl(&dword_24732C000, v13, OS_LOG_TYPE_INFO, "%s @%d: Calibration download for health record #%{public}@ completed", &v18, 0x1Cu);
      }

      ++*(*(*(a1 + 56) + 8) + 24);
      *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24) + a4;
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_356_cold_1(a1, v10);
      }

      ++*(*(*(a1 + 72) + 8) + 24);
    }

    v15 = *(a1 + 40);
    v16 = [v7 leftCalibrationData];
    v17 = [v7 rightCalibrationData];
    [v15 addLeftCalibrationData:v16 rightCalibrationData:v17];
  }

  [*(a1 + 48) leave];
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_358(uint64_t a1, void *a2, void *a3, double a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  if (*(v9 + 56))
  {
    v10 = *(v9 + 8);
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = MEMORY[0x277CCABB0];
        v12 = *(a1 + 88);
        v13 = v10;
        v14 = [v11 numberWithUnsignedInteger:v12];
        v22 = 136315650;
        v23 = "[CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:]_block_invoke";
        v24 = 1024;
        v25 = 309;
        v26 = 2114;
        v27 = v14;
        _os_log_impl(&dword_24732C000, v13, OS_LOG_TYPE_INFO, "%s @%d: Calibration download for ASA key #%{public}@ completed", &v22, 0x1Cu);
      }

      ++*(*(*(a1 + 56) + 8) + 24);
      *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24) + a4;
      ++*(*(*(a1 + 72) + 8) + 24);
      v15 = *(a1 + 32);
      v16 = [*(a1 + 40) name];
      v17 = [*(a1 + 40) creationDate];
      v18 = [v7 accPayload];
      v19 = [v15 prescriptionRecordWithEnrollmentName:v16 enrollmentDate:v17 accPayload:v18];

      if (v19)
      {
        v20 = [v7 leftCalibrationData];
        v21 = [v7 rightCalibrationData];
        [v19 addLeftCalibrationData:v20 rightCalibrationData:v21];

        [*(*(a1 + 32) + 56) addObject:v19];
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_358_cold_1(a1, v10);
      }

      ++*(*(*(a1 + 80) + 8) + 24);
    }
  }

  [*(a1 + 48) leave];
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_359(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = 0;

  v5 = [MEMORY[0x277CBEAA8] date];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6 - *(a1 + 104);

  v8 = [[CRXFPrescriptionRecordFetchSummary alloc] initWithHealthKitError:*(*(*(a1 + 64) + 8) + 40) keychainError:*(*(*(a1 + 72) + 8) + 40) healthRecordCount:*(*(*(a1 + 80) + 8) + 24) asaKeyCount:*(*(*(a1 + 88) + 8) + 24) calibrationDataDownloadFailureCount:*(*(*(a1 + 96) + 8) + 24) meanCalibrationDataDownloadTime:*(*(*(a1 + 48) + 8) + 24) / *(*(*(a1 + 56) + 8) + 24) totalFetchTime:v7];
  [*(a1 + 32) addRecordFetchAnalyticsEventWithFetchSummary:v8];
  v9 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_359_cold_1(v9, v2);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)prescriptionRecordWithEnrollmentName:(id)name enrollmentDate:(id)date accPayload:(id)payload
{
  nameCopy = name;
  dateCopy = date;
  payloadCopy = payload;
  accTranscoder = self->_accTranscoder;
  v34 = 0;
  v12 = [(CRXFAppClipCodeTranscoder *)accTranscoder decodeAppClipCodeFromData:payloadCopy allowUnsupportedRX:0 error:&v34];
  v13 = v34;
  if (v12)
  {
    v14 = [CRXFRXValues alloc];
    [v12 leftDisplaySphere];
    v16 = v15;
    [v12 leftDisplayCylinder];
    v18 = v17;
    leftDisplayAxis = [v12 leftDisplayAxis];
    LODWORD(v20) = v16;
    LODWORD(v21) = v18;
    v22 = [(CRXFRXValues *)v14 initWithSphere:leftDisplayAxis cylinder:v20 axis:v21];
    v23 = [CRXFRXValues alloc];
    [v12 rightDisplaySphere];
    v25 = v24;
    [v12 rightDisplayCylinder];
    v27 = v26;
    rightDisplayAxis = [v12 rightDisplayAxis];
    LODWORD(v29) = v25;
    LODWORD(v30) = v27;
    v31 = [(CRXFRXValues *)v23 initWithSphere:rightDisplayAxis cylinder:v29 axis:v30];
    v32 = [[CRXFPrescriptionRecord alloc] initWithACCPayload:payloadCopy enrollmentName:nameCopy enrollmentDate:dateCopy leftEyeRX:v22 rightEyeRX:v31];
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [CRXFPrescriptionRecordCollector prescriptionRecordWithEnrollmentName:enrollmentDate:accPayload:];
    }

    v32 = 0;
  }

  return v32;
}

- (void)addRecordFetchAnalyticsEventWithFetchSummary:(id)summary
{
  summaryCopy = summary;
  v3 = summaryCopy;
  AnalyticsSendEventLazy();
}

id __80__CRXFPrescriptionRecordCollector_addRecordFetchAnalyticsEventWithFetchSummary___block_invoke(uint64_t a1)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"totalFetchTime";
  v2 = MEMORY[0x277CCABB0];
  [*(a1 + 32) totalFetchTime];
  v3 = [v2 numberWithDouble:?];
  v12[0] = v3;
  v11[1] = @"meanDownloadTime";
  v4 = MEMORY[0x277CCABB0];
  [*(a1 + 32) meanCalibrationDataDownloadTime];
  v5 = [v4 numberWithDouble:?];
  v12[1] = v5;
  v11[2] = @"healthRecordCount";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "healthRecordCount")}];
  v12[2] = v6;
  v11[3] = @"asaKeyCount";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "asaKeyCount")}];
  v12[3] = v7;
  v11[4] = @"downloadFailureCount";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "calibrationDataDownloadFailureCount")}];
  v12[4] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  return v9;
}

- (void)fetchPrescriptionRecordsWithCompletion:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_24732C000, v0, v1, "%s @%d: Fetching health records", v2, v3, v4, v5, v6);
}

- (void)fetchPrescriptionRecordsWithCompletion:.cold.2()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_24732C000, v0, v1, "%s @%d: Fetching ASA keys", v2, v3, v4, v5, v6);
}

- (void)fetchPrescriptionRecordsWithCompletion:.cold.3()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_24732C000, v0, v1, "%s @%d: Done processing health records", v2, v3, v4, v5, v6);
}

- (void)fetchPrescriptionRecordsWithCompletion:.cold.4()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_24732C000, v0, v1, "%s @%d: Done processing ASA keys", v2, v3, v4, v5, v6);
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_348_cold_1(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  v12 = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_0(&dword_24732C000, v6, v7, "%s @%d: Fetched %{public}@ health records", v8, v9, v10, v11, v12);
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_348_cold_2()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  v1 = 136315650;
  v2 = "[CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:]_block_invoke_2";
  v3 = 1024;
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_24732C000, v0, OS_LOG_TYPE_DEBUG, "%s @%d: Failed to fetch health records: %{public}@", &v1, 0x1Cu);
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_355_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  v6[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_24732C000, v4, OS_LOG_TYPE_DEBUG, "%s @%d: Fetched %{public}@ ASA keys", v6, 0x1Cu);
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_355_cold_2()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  v1 = 136315650;
  v2 = "[CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:]_block_invoke";
  v3 = 1024;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_24732C000, v0, OS_LOG_TYPE_ERROR, "%s @%d: Failed to fetch ASA keys: %{public}@", &v1, 0x1Cu);
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_356_cold_1(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 80);
  v4 = a2;
  v5 = [v2 numberWithUnsignedInteger:v3];
  v12 = 136315906;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0(&dword_24732C000, v6, v7, "%s @%d: Calibration download for health record #%{public}@ failed: %{public}@", v8, v9, v10, v11, v12);
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_358_cold_1(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 88);
  v4 = a2;
  v5 = [v2 numberWithUnsignedInteger:v3];
  v12 = 136315906;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0(&dword_24732C000, v6, v7, "%s @%d: Calibration download for ASA key #%{public}@ failed: %{public}@", v8, v9, v10, v11, v12);
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_359_cold_1(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  v12 = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_0(&dword_24732C000, v6, v7, "%s @%d: %{public}@ enrollment records collected", v8, v9, v10, v11, v12);
}

- (void)prescriptionRecordWithEnrollmentName:enrollmentDate:accPayload:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_24732C000, v0, OS_LOG_TYPE_ERROR, "%s @%d: Failed to decode ACC: %{public}@", v1, 0x1Cu);
}

@end