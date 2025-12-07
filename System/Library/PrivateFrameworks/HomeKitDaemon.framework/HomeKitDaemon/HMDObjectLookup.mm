@interface HMDObjectLookup
+ (id)logCategory;
- (HMDObjectLookup)initWithWorkQueue:(id)queue;
- (id)_lookUpObjectWithUUID:(id)d applyObjectChange:(id)change previous:(id)previous result:(id)result completionHandler:(id)handler;
- (void)applyChange:(id)change previous:(id)previous onObject:(id)object result:(id)result completionHandler:(id)handler;
- (void)lookUpAndApplyObjectChange:(id)change previous:(id)previous result:(id)result completionHandler:(id)handler;
- (void)resetObjects;
@end

@implementation HMDObjectLookup

- (void)applyChange:(id)change previous:(id)previous onObject:(id)object result:(id)result completionHandler:(id)handler
{
  v58 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  previousCopy = previous;
  objectCopy = object;
  resultCopy = result;
  aBlock = handler;
  v15 = objectCopy;
  if ([v15 conformsToProtocol:&unk_283E8A838])
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v46 = resultCopy;
  if (v17)
  {
    label = [resultCopy label];
    v19 = HMFEqualObjects();

    if ((v19 & 1) == 0)
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        change = [changeCopy change];
        uuid = [change uuid];
        *buf = 138543618;
        v55 = v23;
        v56 = 2112;
        v57 = uuid;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Applying object change with UUID %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
    }

    objc_initWeak(buf, self);
    message = [changeCopy message];
    v27 = message;
    if (message)
    {
      if (!aBlock)
      {
LABEL_22:
        change2 = [changeCopy change];
        v43 = [change2 objectChangeType] == 3;

        change3 = [changeCopy change];
        if (v43)
        {
          [v17 transactionObjectRemoved:change3 message:v27];
        }

        else
        {
          [v17 transactionObjectUpdated:previousCopy newValues:change3 message:v27];
        }

        objc_destroyWeak(buf);
        goto LABEL_26;
      }

      v28 = [message mutableCopy];
      responseHandler = [v27 responseHandler];
      [v28 setTransactionResult:v46];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __74__HMDObjectLookup_applyChange_previous_onObject_result_completionHandler___block_invoke_2;
      v48[3] = &unk_278678C68;
      v30 = responseHandler;
      v49 = v30;
      v50 = aBlock;
      [v28 setResponseHandler:v48];
      v31 = objc_msgSend_copy(v28);

      v27 = v31;
    }

    else
    {
      v40 = MEMORY[0x277D0F848];
      allMessageDestinations = [MEMORY[0x277D0F820] allMessageDestinations];
      v28 = [v40 messageWithName:@"kTransactionUpdate" destination:allMessageDestinations payload:0];

      [v28 setTransactionResult:v46];
      [v28 setRemote:1];
      if (aBlock)
      {
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __74__HMDObjectLookup_applyChange_previous_onObject_result_completionHandler___block_invoke;
        v51[3] = &unk_278689728;
        objc_copyWeak(&v53, buf);
        v52 = aBlock;
        [v28 setResponseHandler:v51];

        objc_destroyWeak(&v53);
      }

      else
      {
        [v28 setResponseHandler:&__block_literal_global_55];
      }

      v27 = objc_msgSend_copy(v28);
    }

    goto LABEL_22;
  }

  v32 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v35 = HMFGetLogIdentifier();
    change4 = [changeCopy change];
    uuid2 = [change4 uuid];
    *buf = 138543618;
    v55 = v35;
    v56 = 2112;
    v57 = uuid2;
    _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Object does not implement backing store protocol, cannot apply transaction for object-change: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v32);
  v38 = _Block_copy(aBlock);
  if (v38)
  {
    v39 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v38[2](v38, v39);
  }

LABEL_26:
}

void __74__HMDObjectLookup_applyChange_previous_onObject_result_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Calling completion handler for transaction applied", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  (*(*(a1 + 32) + 16))();
}

void __74__HMDObjectLookup_applyChange_previous_onObject_result_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = v5;
  if (v6)
  {
    (*(v6 + 16))(v6, v5, a3);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)resetObjects
{
  uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
  [uuidToObjectMapping removeAllObjects];
}

- (id)_lookUpObjectWithUUID:(id)d applyObjectChange:(id)change previous:(id)previous result:(id)result completionHandler:(id)handler
{
  dCopy = d;
  changeCopy = change;
  previousCopy = previous;
  resultCopy = result;
  handlerCopy = handler;
  uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
  v18 = [uuidToObjectMapping objectForKey:dCopy];

  if (v18)
  {
    [(HMDObjectLookup *)self applyChange:changeCopy previous:previousCopy onObject:v18 result:resultCopy completionHandler:handlerCopy];
    v19 = 0;
  }

  else
  {
    [(HMDObjectLookup *)self scanObjects];
    uuidToObjectMapping2 = [(HMDObjectLookup *)self uuidToObjectMapping];
    v21 = [uuidToObjectMapping2 objectForKey:dCopy];

    if (v21)
    {
      [(HMDObjectLookup *)self applyChange:changeCopy previous:previousCopy onObject:v21 result:resultCopy completionHandler:handlerCopy];
      v19 = 0;
    }

    else
    {
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    }
  }

  return v19;
}

- (void)lookUpAndApplyObjectChange:(id)change previous:(id)previous result:(id)result completionHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  previousCopy = previous;
  resultCopy = result;
  handlerCopy = handler;
  change = [changeCopy change];
  objectChangeType = [change objectChangeType];

  change2 = [changeCopy change];
  v17 = change2;
  if (objectChangeType == 3)
  {
    parentUUID = [change2 parentUUID];
    v19 = [(HMDObjectLookup *)self _lookUpObjectWithUUID:parentUUID applyObjectChange:changeCopy previous:previousCopy result:resultCopy completionHandler:handlerCopy];

    uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
    change3 = [changeCopy change];
    uuid = [change3 uuid];
    [uuidToObjectMapping removeObjectForKey:uuid];
  }

  else
  {
    uuid2 = [change2 uuid];
    uuid = [(HMDObjectLookup *)self _lookUpObjectWithUUID:uuid2 applyObjectChange:changeCopy previous:previousCopy result:resultCopy completionHandler:handlerCopy];

    if (!uuid)
    {
      goto LABEL_11;
    }

    uuidToObjectMapping = [changeCopy change];
    change3 = [uuidToObjectMapping parentUUID];
    v19 = [(HMDObjectLookup *)self _lookUpObjectWithUUID:change3 applyObjectChange:changeCopy previous:previousCopy result:resultCopy completionHandler:handlerCopy];
  }

  if (v19)
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      change4 = [changeCopy change];
      [change4 uuid];
      v29 = v32 = v24;
      *buf = 138543874;
      v34 = v27;
      v35 = 2112;
      v36 = v29;
      v37 = 2112;
      v38 = v19;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Could not look up and apply object change for %@: %@", buf, 0x20u);

      v24 = v32;
    }

    objc_autoreleasePoolPop(v24);
    v30 = _Block_copy(handlerCopy);
    v31 = v30;
    if (v30)
    {
      (*(v30 + 2))(v30, v19);
    }
  }

LABEL_11:
}

- (HMDObjectLookup)initWithWorkQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = HMDObjectLookup;
  v6 = [(HMDObjectLookup *)&v10 init];
  if (v6)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    uuidToObjectMapping = v6->_uuidToObjectMapping;
    v6->_uuidToObjectMapping = strongToWeakObjectsMapTable;

    objc_storeStrong(&v6->_workQueue, queue);
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_120080 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_120080, &__block_literal_global_120081);
  }

  v3 = logCategory__hmf_once_v1_120082;

  return v3;
}

void __30__HMDObjectLookup_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_120082;
  logCategory__hmf_once_v1_120082 = v0;
}

@end