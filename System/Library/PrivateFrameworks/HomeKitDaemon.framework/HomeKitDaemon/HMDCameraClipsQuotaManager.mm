@interface HMDCameraClipsQuotaManager
+ (HMDCameraClipsQuotaManager)defaultManager;
+ (id)_quotaErrorFromServerError:(id)error;
+ (id)_quotaServerErrorFromServerError:(id)error;
+ (id)logCategory;
- (HMDCameraClipsQuotaManager)init;
- (HMDCameraClipsQuotaManager)initWithDatabase:(id)database;
- (id)_addCodeOperationWithFunctionName:(id)name request:(id)request responseClass:(Class)class;
- (id)database:(id)database willRemoveZoneWithName:(id)name isPrivate:(BOOL)private;
- (id)disableCloudStorageForZoneWithName:(id)name;
- (id)enableCloudStorageForZoneWithName:(id)name;
- (id)fetchNamesForZonesWithEnabledCloudStorage;
- (id)logIdentifier;
- (void)synchronize;
@end

@implementation HMDCameraClipsQuotaManager

- (id)logIdentifier
{
  database = [(HMDCameraClipsQuotaManager *)self database];
  cloudDatabase = [database cloudDatabase];
  containerID = [cloudDatabase containerID];
  containerIdentifier = [containerID containerIdentifier];

  return containerIdentifier;
}

- (id)database:(id)database willRemoveZoneWithName:(id)name isPrivate:(BOOL)private
{
  v21 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  nameCopy = name;
  if ([nameCopy hasPrefix:*MEMORY[0x277CCF500]] && private)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = nameCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Disabling cloud storage before removing zone with name %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    futureWithNoResult = [(HMDCameraClipsQuotaManager *)selfCopy disableCloudStorageForZoneWithName:nameCopy];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v15 = futureWithNoResult;

  return v15;
}

- (id)_addCodeOperationWithFunctionName:(id)name request:(id)request responseClass:(Class)class
{
  requestCopy = request;
  nameCopy = name;
  database = [(HMDCameraClipsQuotaManager *)self database];
  cloudDatabase = [database cloudDatabase];
  v12 = [cloudDatabase performCodeOperationWithServiceName:@"HomeQuota" functionName:nameCopy request:requestCopy responseClass:class];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__HMDCameraClipsQuotaManager__addCodeOperationWithFunctionName_request_responseClass___block_invoke;
  v15[3] = &unk_278682FB8;
  v15[4] = self;
  v13 = [v12 recover:v15];

  return v13;
}

id __86__HMDCameraClipsQuotaManager__addCodeOperationWithFunctionName_request_responseClass___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() _quotaErrorFromServerError:v2];

  v4 = [MEMORY[0x277D2C900] futureWithError:v3];

  return v4;
}

- (id)disableCloudStorageForZoneWithName:(id)name
{
  v22 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = objc_alloc_init(HMDCameraClipsQuotaDisableCameraMessage);
  [(HMDCameraClipsQuotaDisableCameraMessage *)v5 setZoneName:nameCopy];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543874;
    v17 = v9;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = nameCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Sending disable camera message %@ for zone with name %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraClipsQuotaManager *)selfCopy _addCodeOperationWithFunctionName:@"disableCamera" request:v5 responseClass:objc_opt_class()];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__HMDCameraClipsQuotaManager_disableCloudStorageForZoneWithName___block_invoke;
  v15[3] = &unk_278675120;
  v15[4] = selfCopy;
  v11 = [v10 flatMap:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__HMDCameraClipsQuotaManager_disableCloudStorageForZoneWithName___block_invoke_28;
  v14[3] = &unk_278682FB8;
  v14[4] = selfCopy;
  v12 = [v11 recover:v14];

  return v12;
}

id __65__HMDCameraClipsQuotaManager_disableCloudStorageForZoneWithName___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully disabled camera with response: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v8;
}

id __65__HMDCameraClipsQuotaManager_disableCloudStorageForZoneWithName___block_invoke_28(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 domain];
  if (![v4 isEqualToString:@"HMDCameraClipsQuotaErrorDomain"])
  {

    goto LABEL_7;
  }

  v5 = [v3 code];

  if (v5 != 2)
  {
LABEL_7:
    v10 = [MEMORY[0x277D2C900] futureWithError:v3];
    goto LABEL_8;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Assuming success for disable camera request because zone does not exist", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_8:
  v11 = v10;

  return v11;
}

- (id)enableCloudStorageForZoneWithName:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = objc_alloc_init(HMDCameraClipsQuotaEnableCameraMessage);
  [(HMDCameraClipsQuotaEnableCameraMessage *)v5 setZoneName:nameCopy];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543874;
    v15 = v9;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = nameCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Sending enable camera message %@ for zone with name %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraClipsQuotaManager *)selfCopy _addCodeOperationWithFunctionName:@"enableCamera" request:v5 responseClass:objc_opt_class()];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HMDCameraClipsQuotaManager_enableCloudStorageForZoneWithName___block_invoke;
  v13[3] = &unk_278675120;
  v13[4] = selfCopy;
  v11 = [v10 flatMap:v13];

  return v11;
}

id __64__HMDCameraClipsQuotaManager_enableCloudStorageForZoneWithName___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully enabled camera with response: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v8;
}

- (id)fetchNamesForZonesWithEnabledCloudStorage
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(HMDCameraClipsQuotaGetActiveCamerasMessage);
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Sending get active cameras message %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCameraClipsQuotaManager *)selfCopy _addCodeOperationWithFunctionName:@"getActiveCameras" request:v3 responseClass:objc_opt_class()];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__HMDCameraClipsQuotaManager_fetchNamesForZonesWithEnabledCloudStorage__block_invoke;
  v11[3] = &unk_278675120;
  v11[4] = selfCopy;
  v9 = [v8 flatMap:v11];

  return v9;
}

id __71__HMDCameraClipsQuotaManager_fetchNamesForZonesWithEnabledCloudStorage__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 zoneNames];
    v7 = v6;
    v8 = MEMORY[0x277CBEBF8];
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v13;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Successfully got active cameras with zone names: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = MEMORY[0x277D2C900];
    v15 = [MEMORY[0x277CBEB98] setWithArray:v9];
    v16 = [v14 futureWithResult:v15];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v23 = 138543874;
      v24 = v20;
      v25 = 2112;
      v26 = objc_opt_class();
      v27 = 2112;
      v28 = v3;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Received get active cameras response of unexpected type %@: %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = MEMORY[0x277D2C900];
    v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v16 = [v21 futureWithError:v9];
  }

  return v16;
}

- (void)synchronize
{
  database = [(HMDCameraClipsQuotaManager *)self database];
  cloudDatabase = [database cloudDatabase];
  performInitialCloudSync = [cloudDatabase performInitialCloudSync];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__HMDCameraClipsQuotaManager_synchronize__block_invoke;
  v7[3] = &unk_278687CC0;
  v7[4] = self;
  v6 = [performInitialCloudSync addCompletionBlock:v7];
}

void __41__HMDCameraClipsQuotaManager_synchronize__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Finished initial cloud sync for camera clips quota manager cloud database", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
}

- (HMDCameraClipsQuotaManager)initWithDatabase:(id)database
{
  databaseCopy = database;
  v9.receiver = self;
  v9.super_class = HMDCameraClipsQuotaManager;
  v6 = [(HMDCameraClipsQuotaManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, database);
    [databaseCopy addDelegate:v7];
  }

  return v7;
}

- (HMDCameraClipsQuotaManager)init
{
  v3 = +[HMDDatabase cameraClipsDatabase];
  v4 = [(HMDCameraClipsQuotaManager *)self initWithDatabase:v3];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t15_63335 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t15_63335, &__block_literal_global_63336);
  }

  v3 = logCategory__hmf_once_v16_63337;

  return v3;
}

void __41__HMDCameraClipsQuotaManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v16_63337;
  logCategory__hmf_once_v16_63337 = v0;
}

+ (id)_quotaErrorFromServerError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = [self _quotaServerErrorFromServerError:errorCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Determining quota error based on underlying quota server error: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    code = [v5 code];
    if (code == 1003)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2 * (code == 1002);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMDCameraClipsQuotaErrorDomain" code:v11 userInfo:0];

  return v12;
}

+ (id)_quotaServerErrorFromServerError:(id)error
{
  userInfo = [error userInfo];
  v4 = *MEMORY[0x277CCA7E8];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  userInfo2 = [v7 userInfo];

  v9 = [userInfo2 objectForKeyedSubscript:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  domain = [v11 domain];
  if ([domain isEqualToString:@"HomeQuotaError"])
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

+ (HMDCameraClipsQuotaManager)defaultManager
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&defaultManager_defaultManager);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(HMDCameraClipsQuotaManager);
    objc_storeWeak(&defaultManager_defaultManager, WeakRetained);
  }

  v3 = WeakRetained;

  os_unfair_lock_unlock(&defaultManager_defaultManagerLock);

  return v3;
}

@end