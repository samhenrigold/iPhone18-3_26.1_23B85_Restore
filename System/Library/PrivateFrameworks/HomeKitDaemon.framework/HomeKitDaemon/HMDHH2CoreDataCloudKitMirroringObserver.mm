@interface HMDHH2CoreDataCloudKitMirroringObserver
+ (id)logCategory;
- (BOOL)verifyModelsPushedToCloudKitUsingCoreDataExportStream;
- (HMDHH2CoreDataCloudKitMirroringObserver)initWithObjectIds:(id)ids coreData:(id)data storeIdentifier:(id)identifier;
- (void)callClientsCompletionHandler:(id)handler;
- (void)coreData:(id)data persistentStoreWithIdentifierDidChange:(id)change;
- (void)processExportResult:(id)result withError:(id)error;
- (void)startMonitoring:(id)monitoring;
- (void)stopMonitoring;
- (void)verifyModelsPushedToCloudKit;
@end

@implementation HMDHH2CoreDataCloudKitMirroringObserver

- (void)coreData:(id)data persistentStoreWithIdentifierDidChange:(id)change
{
  v27 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  changeCopy = change;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = changeCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received persistent store changed notification for store: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  storeIdentifier = [(HMDHH2CoreDataCloudKitMirroringObserver *)selfCopy storeIdentifier];
  v13 = HMFEqualObjects();

  if (v13)
  {
    cachedMOC = [(HMDHH2CoreDataCloudKitMirroringObserver *)selfCopy cachedMOC];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __91__HMDHH2CoreDataCloudKitMirroringObserver_coreData_persistentStoreWithIdentifierDidChange___block_invoke;
    v20[3] = &unk_27868A728;
    v20[4] = selfCopy;
    [cachedMOC performBlock:v20];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      storeIdentifier2 = [(HMDHH2CoreDataCloudKitMirroringObserver *)v16 storeIdentifier];
      *buf = 138543874;
      v22 = v18;
      v23 = 2112;
      v24 = storeIdentifier2;
      v25 = 2112;
      v26 = changeCopy;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Wrong store identifier: Expecting %@ got %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
  }
}

- (BOOL)verifyModelsPushedToCloudKitUsingCoreDataExportStream
{
  v54 = *MEMORY[0x277D85DE8];
  if ([(HMDHH2CoreDataCloudKitMirroringObserver *)self isExportProgressRequestAlreadyInProgress])
  {
    [(HMDHH2CoreDataCloudKitMirroringObserver *)self setNumberOfIgnoredExportProgressRequest:[(HMDHH2CoreDataCloudKitMirroringObserver *)self numberOfIgnoredExportProgressRequest]+ 1];
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHH2CoreDataCloudKitMirroringObserver numberOfIgnoredExportProgressRequest](selfCopy, "numberOfIgnoredExportProgressRequest")}];
      *buf = 138543618;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@There is an export request already in progress. Will not create another one. : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    return 1;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBE3D8]);
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = MEMORY[0x277CCABB0];
      objectIdsToMonitor = [(HMDHH2CoreDataCloudKitMirroringObserver *)selfCopy2 objectIdsToMonitor];
      v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(objectIdsToMonitor, "count")}];
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Waiting for [%@] migrated models to be pushed to the cloud", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v51 = __Block_byref_object_copy__185732;
    v52 = __Block_byref_object_dispose__185733;
    v53 = 0;
    v17 = objc_alloc(MEMORY[0x277CBE3A8]);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __96__HMDHH2CoreDataCloudKitMirroringObserver_verifyModelsPushedToCloudKitUsingCoreDataExportStream__block_invoke;
    v40[3] = &unk_27867DA88;
    v40[4] = selfCopy2;
    v40[5] = buf;
    v18 = [v17 initWithOptions:v9 completionBlock:v40];
    requestIdentifier = [v18 requestIdentifier];
    v20 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = requestIdentifier;

    objectIdsToMonitor2 = [(HMDHH2CoreDataCloudKitMirroringObserver *)selfCopy2 objectIdsToMonitor];
    v22 = objc_msgSend_copy(objectIdsToMonitor2);
    [v18 setObjectIDsToFetch:v22];

    v23 = +[HMDCoreData sharedInstance];
    cloudPrivateStore = [v23 cloudPrivateStore];
    v49 = cloudPrivateStore;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
    [v18 setAffectedStores:v25];

    cachedMOC = [(HMDHH2CoreDataCloudKitMirroringObserver *)selfCopy2 cachedMOC];
    v39 = 0;
    v27 = [cachedMOC executeRequest:v18 error:&v39];
    v28 = v39;

    if (v27)
    {
      v29 = v28 == 0;
    }

    else
    {
      v29 = 0;
    }

    v8 = v29;
    if (v29)
    {
      [(HMDHH2CoreDataCloudKitMirroringObserver *)selfCopy2 setIsExportProgressRequestAlreadyInProgress:1];
      v33 = objc_autoreleasePoolPush();
      v30 = selfCopy2;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        v32 = *(*&buf[8] + 40);
        *v41 = 138544130;
        v42 = v31;
        v43 = 2112;
        v44 = v32;
        v45 = 2112;
        v46 = v27;
        v47 = 2112;
        v48 = 0;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Successfully submitted NSCloudKitMirroringExportProgressRequest [%@] to CD. Result: %@, error: %@", v41, 0x2Au);
      }
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy2;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *v41 = 138543618;
        v42 = v37;
        v43 = 2112;
        v44 = v28;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Got error while submitting export progress request: %@", v41, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v33);
    _Block_object_dispose(buf, 8);
  }

  return v8;
}

void __96__HMDHH2CoreDataCloudKitMirroringObserver_verifyModelsPushedToCloudKitUsingCoreDataExportStream__block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v19 = v4;
    v8 = *(*(*(a1 + 40) + 8) + 40);
    [v3 success];
    v9 = HMFBooleanToString();
    [v3 madeChanges];
    v10 = HMFBooleanToString();
    v11 = objc_opt_class();
    v12 = [v3 error];
    *buf = 138544642;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    v4 = v19;
    v28 = 2112;
    v29 = v9;
    v30 = 2112;
    v31 = v10;
    v32 = 2112;
    v33 = v11;
    v34 = 2112;
    v35 = v12;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@[%@] export progress result completion handler block is called with : Success : %@, madeChanges: %@, result Class : %@, error: %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v4);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _HMFPreconditionFailure();
  }

  if ([v3 success])
  {
    v13 = [v3 objectIDToLastExportedToken];
    v14 = objc_msgSend_copy(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = [*(a1 + 32) cachedMOC];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __96__HMDHH2CoreDataCloudKitMirroringObserver_verifyModelsPushedToCloudKitUsingCoreDataExportStream__block_invoke_24;
  v20[3] = &unk_278689D20;
  v16 = *(a1 + 40);
  v20[4] = *(a1 + 32);
  v21 = v14;
  v22 = v3;
  v23 = v16;
  v17 = v3;
  v18 = v14;
  [v15 performBlock:v20];
}

void __96__HMDHH2CoreDataCloudKitMirroringObserver_verifyModelsPushedToCloudKitUsingCoreDataExportStream__block_invoke_24(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(*(*(a1 + 56) + 8) + 40);
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@[%@] processing export results", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = [*(a1 + 48) error];
  [v7 processExportResult:v8 withError:v9];
}

- (void)processExportResult:(id)result withError:(id)error
{
  v50 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v45 = v11;
    v46 = 2112;
    v47 = resultCopy;
    v48 = 2112;
    v49 = errorCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@process export result: %@, %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDHH2CoreDataCloudKitMirroringObserver *)selfCopy setIsExportProgressRequestAlreadyInProgress:0];
  if (errorCopy)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v15;
      v46 = 2112;
      v47 = errorCopy;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Core Data export stream indicated error while exporting models to CloudKit : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = v13;
    v17 = errorCopy;
LABEL_7:
    [(HMDHH2CoreDataCloudKitMirroringObserver *)v16 callClientsCompletionHandler:v17];
    goto LABEL_8;
  }

  allKeys = [resultCopy allKeys];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __73__HMDHH2CoreDataCloudKitMirroringObserver_processExportResult_withError___block_invoke;
  v43[3] = &unk_27867DA60;
  v43[4] = selfCopy;
  [allKeys hmf_enumerateWithAutoreleasePoolUsingBlock:v43];

  objectIdsToMonitor = [(HMDHH2CoreDataCloudKitMirroringObserver *)selfCopy objectIdsToMonitor];
  v20 = [objectIdsToMonitor count];

  v21 = objc_autoreleasePoolPush();
  v22 = selfCopy;
  v23 = HMFGetOSLogHandle();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
  if (!v20)
  {
    if (v24)
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v41;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Successfully exported all the CD objects to CloudKit.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v16 = v22;
    v17 = 0;
    goto LABEL_7;
  }

  if (v24)
  {
    v25 = HMFGetLogIdentifier();
    v26 = MEMORY[0x277CCABB0];
    totalObjectsToMonitor = [(HMDHH2CoreDataCloudKitMirroringObserver *)v22 totalObjectsToMonitor];
    objectIdsToMonitor2 = [(HMDHH2CoreDataCloudKitMirroringObserver *)v22 objectIdsToMonitor];
    v29 = [v26 numberWithUnsignedLongLong:{totalObjectsToMonitor - objc_msgSend(objectIdsToMonitor2, "count")}];
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDHH2CoreDataCloudKitMirroringObserver totalObjectsToMonitor](v22, "totalObjectsToMonitor")}];
    *buf = 138543874;
    v45 = v25;
    v46 = 2112;
    v47 = v29;
    v48 = 2112;
    v49 = v30;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@CD to CK export progress : %@ out of %@ exported", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v21);
  v31 = objc_autoreleasePoolPush();
  v32 = v22;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = HMFGetLogIdentifier();
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHH2CoreDataCloudKitMirroringObserver numberOfIgnoredExportProgressRequest](v32, "numberOfIgnoredExportProgressRequest")}];
    *buf = 138543618;
    v45 = v34;
    v46 = 2112;
    v47 = v35;
    _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Number of ignored export progress request:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v31);
  if ([(HMDHH2CoreDataCloudKitMirroringObserver *)v32 numberOfIgnoredExportProgressRequest])
  {
    [(HMDHH2CoreDataCloudKitMirroringObserver *)v32 setNumberOfIgnoredExportProgressRequest:0];
    v36 = objc_autoreleasePoolPush();
    v37 = v32;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v39;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Requesting to verify the models pushed to CK as we ignored few export progress request earlier", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v36);
    cachedMOC = [(HMDHH2CoreDataCloudKitMirroringObserver *)v37 cachedMOC];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __73__HMDHH2CoreDataCloudKitMirroringObserver_processExportResult_withError___block_invoke_17;
    v42[3] = &unk_27868A728;
    v42[4] = v37;
    [cachedMOC performBlock:v42];
  }

LABEL_8:
}

void __73__HMDHH2CoreDataCloudKitMirroringObserver_processExportResult_withError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 objectIdsToMonitor];
  [v4 removeObject:v3];
}

- (void)verifyModelsPushedToCloudKit
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Going to verify models pushed to cloudKit using export stream", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  objectIdsToMonitor = [(HMDHH2CoreDataCloudKitMirroringObserver *)selfCopy objectIdsToMonitor];
  v8 = [objectIdsToMonitor count];

  if (v8)
  {
    if (![(HMDHH2CoreDataCloudKitMirroringObserver *)selfCopy verifyModelsPushedToCloudKitUsingCoreDataExportStream])
    {
      v9 = objc_autoreleasePoolPush();
      v10 = selfCopy;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v12;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Error occurred while pushing the CD models to CloudKit.", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [(HMDHH2CoreDataCloudKitMirroringObserver *)v10 callClientsCompletionHandler:v13];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Looks like we are not monitoring any object changes. Not doing anything.", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }
}

- (void)callClientsCompletionHandler:(id)handler
{
  handlerCopy = handler;
  completionHandler = [(HMDHH2CoreDataCloudKitMirroringObserver *)self completionHandler];
  [(HMDHH2CoreDataCloudKitMirroringObserver *)self stopMonitoring];
  if (completionHandler)
  {
    completionHandler[2](completionHandler, handlerCopy);
  }
}

- (void)stopMonitoring
{
  cachedMOC = [(HMDHH2CoreDataCloudKitMirroringObserver *)self cachedMOC];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__HMDHH2CoreDataCloudKitMirroringObserver_stopMonitoring__block_invoke;
  v4[3] = &unk_27868A728;
  v4[4] = self;
  [cachedMOC performBlock:v4];
}

void __57__HMDHH2CoreDataCloudKitMirroringObserver_stopMonitoring__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@stopMonitoring", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) completionHandler];

  if (v6)
  {
    [*(a1 + 32) setCompletionHandler:0];
    [*(a1 + 32) setNumberOfIgnoredExportProgressRequest:0];
    v7 = [*(a1 + 32) objectIdsToMonitor];
    [v7 removeAllObjects];

    v8 = [*(a1 + 32) coreData];
    [v8 removeNotificationListener:*(a1 + 32)];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@already stopped monitoring. Not doing anything.", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)startMonitoring:(id)monitoring
{
  monitoringCopy = monitoring;
  cachedMOC = [(HMDHH2CoreDataCloudKitMirroringObserver *)self cachedMOC];

  if (cachedMOC)
  {
    cachedMOC2 = [(HMDHH2CoreDataCloudKitMirroringObserver *)self cachedMOC];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__HMDHH2CoreDataCloudKitMirroringObserver_startMonitoring___block_invoke;
    v9[3] = &unk_27868A7A0;
    v9[4] = self;
    v10 = monitoringCopy;
    v7 = monitoringCopy;
    [cachedMOC2 performBlock:v9];
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    __59__HMDHH2CoreDataCloudKitMirroringObserver_startMonitoring___block_invoke(v8);
  }
}

uint64_t __59__HMDHH2CoreDataCloudKitMirroringObserver_startMonitoring___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@startMonitoring", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  if (!*(a1 + 40))
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  v6 = [*(a1 + 32) completionHandler];

  if (v6)
  {
    goto LABEL_7;
  }

  [*(a1 + 32) setCompletionHandler:*(a1 + 40)];
  v7 = [*(a1 + 32) coreData];
  [v7 addNotificationListener:*(a1 + 32)];

  return [*(a1 + 32) verifyModelsPushedToCloudKit];
}

- (HMDHH2CoreDataCloudKitMirroringObserver)initWithObjectIds:(id)ids coreData:(id)data storeIdentifier:(id)identifier
{
  idsCopy = ids;
  dataCopy = data;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = HMDHH2CoreDataCloudKitMirroringObserver;
  v11 = [(HMDHH2CoreDataCloudKitMirroringObserver *)&v20 init];
  if (!v11)
  {
    goto LABEL_5;
  }

  if (identifierCopy)
  {
    if (dataCopy)
    {
      v12 = [MEMORY[0x277CBEB58] setWithSet:idsCopy];
      objectIdsToMonitor = v11->_objectIdsToMonitor;
      v11->_objectIdsToMonitor = v12;

      v11->_totalObjectsToMonitor = [idsCopy count];
      objc_storeStrong(&v11->_coreData, data);
      objc_storeStrong(&v11->_storeIdentifier, identifier);
      v11->_isExportProgressRequestAlreadyInProgress = 0;
      v11->_numberOfIgnoredExportProgressRequest = 0;
      coreData = [(HMDHH2CoreDataCloudKitMirroringObserver *)v11 coreData];
      newManagedObjectContext = [coreData newManagedObjectContext];
      cachedMOC = v11->_cachedMOC;
      v11->_cachedMOC = newManagedObjectContext;

LABEL_5:
      return v11;
    }
  }

  else
  {
    _HMFPreconditionFailure();
  }

  v18 = _HMFPreconditionFailure();
  return +[(HMDHH2CoreDataCloudKitMirroringObserver *)v18];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20_185782 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20_185782, &__block_literal_global_185783);
  }

  v3 = logCategory__hmf_once_v21_185784;

  return v3;
}

void __54__HMDHH2CoreDataCloudKitMirroringObserver_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v21_185784;
  logCategory__hmf_once_v21_185784 = v0;
}

@end