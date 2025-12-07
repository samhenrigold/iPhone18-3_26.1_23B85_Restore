@interface HMIAnalysisStateManager
- (HMIAnalysisStateManager)initWithHomeUUID:(id)d;
- (HMIAnalysisStateManagerDelegate)delegate;
- (id)stateUpdateFromFaceEvents:(id)events;
- (void)handleRemoteStateUpdate:(id)update completionHandler:(id)handler;
- (void)publishLocalState:(id)state;
@end

@implementation HMIAnalysisStateManager

- (HMIAnalysisStateManager)initWithHomeUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = HMIAnalysisStateManager;
  v5 = [(HMIAnalysisStateManager *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    homeUUID = v5->_homeUUID;
    v5->_homeUUID = v6;
  }

  return v5;
}

- (void)publishLocalState:(id)state
{
  v12 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@Publishing local state", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  delegate = [(HMIAnalysisStateManager *)selfCopy delegate];
  [delegate stateManager:? didReceiveLocalUpdate:?];
}

- (void)handleRemoteStateUpdate:(id)update completionHandler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  handlerCopy = handler;
  v8 = +[HMIPreference sharedInstance];
  shouldEnableTorsoRecognition = [v8 shouldEnableTorsoRecognition];

  if (shouldEnableTorsoRecognition)
  {
    torsoAnnotations = [updateCopy torsoAnnotations];
    v11 = [torsoAnnotations na_filter:?];

    torsoAnnotations2 = [updateCopy torsoAnnotations];
    v13 = [torsoAnnotations2 count];
    v14 = [v11 count];

    if (v13 == v14)
    {
      goto LABEL_10;
    }

    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      torsoAnnotations3 = [updateCopy torsoAnnotations];
      v19 = [torsoAnnotations3 count];
      v20 = v19 - [v11 count];
      torsoAnnotations4 = [updateCopy torsoAnnotations];
      *buf = 138543874;
      v37 = v18;
      v38 = 2048;
      v39 = v20;
      v40 = 2048;
      v41 = [torsoAnnotations4 count];
      _os_log_impl(&dword_22D12F000, v17, OS_LOG_TYPE_INFO, "%{public}@Dropped %lu incompatible torsoprint annotations out of %lu total", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    if (![v11 hmf_isEmpty])
    {
LABEL_10:
      v26 = +[HMITaskService taskServiceClient];
      homeUUID = [(HMIAnalysisStateManager *)self homeUUID];
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

      v34 = handlerCopy;
      v28 = [v26 submitTaskWithOptions:? progressHandler:? completionHandler:?];
      v29 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v32;
        v38 = 1024;
        LODWORD(v39) = v28;
        _os_log_impl(&dword_22D12F000, v31, OS_LOG_TYPE_INFO, "%{public}@Submitted torso model update task, taskID:%u", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v29);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v25;
      _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_INFO, "%{public}@Dropping remote analysis torso update since torso rec is not enabled on this device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
  }
}

void *__69__HMIAnalysisStateManager_handleRemoteStateUpdate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 torsoModelVersion];
  v3 = +[HMITorsoprinter currentModelUUID];
  v4 = [v2 hmf_isEqualToUUID:?];

  return v4;
}

void __69__HMIAnalysisStateManager_handleRemoteStateUpdate_completionHandler___block_invoke_44(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:?];
  v8 = HMITaskResultCodeAsString(0);
  v9 = [v7 isEqualToString:?];

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v14;
      v15 = "%{public}@Successfully update torso model";
      v16 = v13;
      v17 = OS_LOG_TYPE_INFO;
      v18 = 12;
LABEL_6:
      _os_log_impl(&dword_22D12F000, v16, v17, v15, &v21, v18);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v14;
    v23 = 2112;
    v24 = v6;
    v15 = "%{public}@Error in update torso model, error:%@";
    v16 = v13;
    v17 = OS_LOG_TYPE_ERROR;
    v18 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v10);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v6, v19, v20);
}

- (id)stateUpdateFromFaceEvents:(id)events
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [events na_map:?];
  v5 = [v3 setWithArray:?];

  if (v5 && ([v5 hmf_isEmpty] & 1) == 0)
  {
    v6 = [[HMIAnalysisStateUpdate alloc] initWithTorsoAnnotations:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HMIAnalysisStateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end