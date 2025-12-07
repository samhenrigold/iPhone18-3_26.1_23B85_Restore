@interface HMDHAPAccessoryPrimaryResidentOperationTask
- (HMDHAPAccessoryPrimaryResidentOperationTask)initWithContext:(id)context requests:(id)requests completion:(id)completion;
- (id)_makeLocalTaskWithRequests:(id)requests completion:(id)completion;
- (void)_processLocalRequests:(id)requests responseWaitGroup:(id)group;
- (void)execute;
@end

@implementation HMDHAPAccessoryPrimaryResidentOperationTask

- (id)_makeLocalTaskWithRequests:(id)requests completion:(id)completion
{
  requestsCopy = requests;
  completionCopy = completion;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"%@ is unavailable", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)_processLocalRequests:(id)requests responseWaitGroup:(id)group
{
  requestsCopy = requests;
  groupCopy = group;
  v9 = [requestsCopy mutableCopy];
  array = [MEMORY[0x277CBEB18] array];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __87__HMDHAPAccessoryPrimaryResidentOperationTask__processLocalRequests_responseWaitGroup___block_invoke;
  v28[3] = &unk_278689280;
  v28[4] = self;
  v11 = v9;
  v12 = array;
  v13 = v28;
  if (v11 == v12)
  {
    v21 = _HMFPreconditionFailure();
    objc_destroyWeak((v4 + 40));
    objc_destroyWeak(location);
    _Unwind_Resume(v21);
  }

  location[0] = MEMORY[0x277D85DD0];
  location[1] = 3221225472;
  location[2] = __migrateRequestsPassingTest_block_invoke;
  location[3] = &unk_2786896B0;
  v30 = v13;
  v14 = [v11 indexesOfObjectsPassingTest:location];
  v15 = [v11 objectsAtIndexes:v14];
  [v12 addObjectsFromArray:v15];

  [v11 removeObjectsAtIndexes:v14];
  if (([v12 hmf_isEmpty] & 1) == 0)
  {
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    v17 = [HMDCharacteristicResponse responsesWithRequests:v12 error:v16];

    completion = [(HMDHAPAccessoryTask *)self completion];
    (completion)[2](completion, v17);
  }

  if (([v11 hmf_isEmpty] & 1) == 0)
  {
    dispatch_group_enter(groupCopy);
    objc_initWeak(location, self);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __87__HMDHAPAccessoryPrimaryResidentOperationTask__processLocalRequests_responseWaitGroup___block_invoke_427;
    v25 = &unk_278689618;
    objc_copyWeak(&v27, location);
    v26 = groupCopy;
    v19 = [(HMDHAPAccessoryPrimaryResidentOperationTask *)self _makeLocalTaskWithRequests:v11 completion:&v22];
    [(HMDHAPAccessoryPrimaryResidentOperationTask *)self setLocalTask:v19, v22, v23, v24, v25];

    localTask = [(HMDHAPAccessoryPrimaryResidentOperationTask *)self localTask];
    [localTask execute];

    objc_destroyWeak(&v27);
    objc_destroyWeak(location);
  }
}

uint64_t __87__HMDHAPAccessoryPrimaryResidentOperationTask__processLocalRequests_responseWaitGroup___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v4 requestMessage];

  v6 = [v3 accessory];
  if ([v5 isRemote] && objc_msgSend(v6, "hasBTLELink") && (objc_msgSend(v6, "hasIPLink") & 1) == 0)
  {
    v9 = [v5 dictionaryForKey:*MEMORY[0x277CCE7A8]];
    v10 = [v6 uuid];
    v11 = [v10 UUIDString];
    v12 = [v9 objectForKeyedSubscript:v11];
    v13 = [v12 objectForKeyedSubscript:@"kAccessoryLinkQuality"];

    v14 = [v6 uuid];
    v15 = [v14 UUIDString];
    v16 = [v9 objectForKeyedSubscript:v15];
    v17 = [v16 objectForKeyedSubscript:@"kAccessoryLastSeen"];

    v7 = 0;
    if (v13 && v17)
    {
      v36 = 0;
      v18 = [v6 home];
      v35 = 5;
      v19 = [v6 identifier];
      v34 = 0;
      v32 = v18;
      [v18 retrieveStateForTrackedAccessory:v19 stateNumber:0 isReachable:&v36 linkQuality:&v35 lastSeen:&v34];
      v33 = v34;

      v20 = [MEMORY[0x277D0F8D0] sharedPreferences];
      v21 = [v20 preferenceForKey:@"BTLEAccessoryLossDetectionTimeInSec"];
      v22 = [v21 numberValue];
      v23 = [v22 unsignedIntegerValue];

      if ((v36 & 1) != 0 || (v24 = [v13 integerValue], v24 >= v35) || objc_msgSend(v17, "unsignedIntegerValue") >= v23)
      {

        v7 = 0;
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v35];
          v28 = v31 = v25;
          v29 = [v5 shortDescription];
          *buf = 138544898;
          v38 = v27;
          v39 = 2112;
          v40 = v3;
          v41 = 2112;
          v42 = v13;
          v43 = 2112;
          v44 = v17;
          v45 = 2112;
          v46 = v28;
          v47 = 2112;
          v48 = v33;
          v49 = 2112;
          v50 = v29;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Skipping characteristic request: %@, accessory has a better link quality: %@(%@s) / %@(%@s) to the device originating message: %@", buf, 0x48u);

          v25 = v31;
        }

        objc_autoreleasePoolPop(v25);
        v30 = [v6 workQueue];
        [v32 retrieveHAPAccessoryForHMDAccessory:v6 linkType:2 forceRetrieve:0 queue:v30 completion:0];

        v7 = 1;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __87__HMDHAPAccessoryPrimaryResidentOperationTask__processLocalRequests_responseWaitGroup___block_invoke_427(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained addCharacteristicResponses:v3 isRemote:0];
    v6 = [v5 localTask];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8 && [v8 allResponsesReceived])
    {
      if ([v5 supportsMultiPartResponse] && (objc_msgSend(v5, "allResponsesReceived") & 1) == 0)
      {
        v9 = [v5 completion];
        (v9)[2](v9, v3);
      }

      dispatch_group_leave(*(a1 + 32));
    }

    else if ([v5 supportsMultiPartResponse])
    {
      v10 = [v5 completion];
      (v10)[2](v10, v3);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Lost self reference for local task completion handler", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    dispatch_group_leave(*(a1 + 32));
  }
}

- (void)execute
{
  date = [MEMORY[0x277CBEAA8] date];
  [(HMDHAPAccessoryTask *)self setExecutionTime:date];

  v4 = dispatch_group_create();
  requests = [(HMDHAPAccessoryTask *)self requests];
  [(HMDHAPAccessoryPrimaryResidentOperationTask *)self _processLocalRequests:requests responseWaitGroup:v4];
  workQueue = [(HMDHAPAccessoryTask *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDHAPAccessoryPrimaryResidentOperationTask_execute__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_group_notify(v4, workQueue, block);
}

void __54__HMDHAPAccessoryPrimaryResidentOperationTask_execute__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) completion];
  v2 = [*(a1 + 32) characteristicResponses];
  v3[2](v3, v2);
}

- (HMDHAPAccessoryPrimaryResidentOperationTask)initWithContext:(id)context requests:(id)requests completion:(id)completion
{
  v6.receiver = self;
  v6.super_class = HMDHAPAccessoryPrimaryResidentOperationTask;
  return [(HMDHAPAccessoryTask *)&v6 initWithContext:context requests:requests completion:completion];
}

@end