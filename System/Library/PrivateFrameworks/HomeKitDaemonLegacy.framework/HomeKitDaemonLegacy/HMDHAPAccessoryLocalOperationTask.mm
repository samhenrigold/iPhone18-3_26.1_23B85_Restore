@interface HMDHAPAccessoryLocalOperationTask
- (NSString)activityRequestEventName;
- (NSString)activityResponseEventName;
- (id)_completionHandlerForAccessory:(id)accessory accessoryRequests:(id)requests responseWaitGroup:(id)group;
- (void)_dispatchToAccessory:(id)accessory requests:(id)requests logEvent:(id)event completion:(id)completion;
- (void)execute;
@end

@implementation HMDHAPAccessoryLocalOperationTask

- (void)_dispatchToAccessory:(id)accessory requests:(id)requests logEvent:(id)event completion:(id)completion
{
  accessoryCopy = accessory;
  requestsCopy = requests;
  eventCopy = event;
  completionCopy = completion;
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = NSStringFromSelector(a2);
  v18 = [v16 stringWithFormat:@"%@ is unavailable", v17];
  v19 = [v14 exceptionWithName:v15 reason:v18 userInfo:0];
  v20 = v19;

  objc_exception_throw(v19);
}

- (NSString)activityResponseEventName
{
  v2 = MEMORY[0x277CCACA8];
  operationName = [(HMDHAPAccessoryTask *)self operationName];
  capitalizedString = [operationName capitalizedString];
  v5 = [v2 stringWithFormat:@"HMDHAPAccessoryLocalOperationTask.MultiCharacteristic%@Response", capitalizedString];

  return v5;
}

- (NSString)activityRequestEventName
{
  v2 = MEMORY[0x277CCACA8];
  operationName = [(HMDHAPAccessoryTask *)self operationName];
  capitalizedString = [operationName capitalizedString];
  v5 = [v2 stringWithFormat:@"HMDHAPAccessoryLocalOperationTask.MultiCharacteristic%@Accessory", capitalizedString];

  return v5;
}

- (id)_completionHandlerForAccessory:(id)accessory accessoryRequests:(id)requests responseWaitGroup:(id)group
{
  accessoryCopy = accessory;
  requestsCopy = requests;
  groupCopy = group;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __104__HMDHAPAccessoryLocalOperationTask__completionHandlerForAccessory_accessoryRequests_responseWaitGroup___block_invoke;
  v16[3] = &unk_279735220;
  v16[4] = self;
  v17 = accessoryCopy;
  v18 = requestsCopy;
  v19 = groupCopy;
  v11 = groupCopy;
  v12 = requestsCopy;
  v13 = accessoryCopy;
  v14 = _Block_copy(v16);

  return v14;
}

void __104__HMDHAPAccessoryLocalOperationTask__completionHandlerForAccessory_accessoryRequests_responseWaitGroup___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v50 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v29;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [*(*(&v28 + 1) + 8 * v8) error];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v9;
        }

        v6 = v12;

        v13 = [*(a1 + 32) activity];
        [*(a1 + 32) activityResponseEventName];

        [*(a1 + 40) uuid];
        [v11 domain];

        [v11 code];
        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v28 objects:v50 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = *(a1 + 32);
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = HMFGetLogIdentifier();
    v18 = *(a1 + 32);
    v25 = [*(a1 + 40) name];
    v27 = [*(a1 + 40) uuid];
    v19 = [v27 UUIDString];
    v20 = [*(a1 + 40) uniqueIdentifier];
    v26 = v14;
    v21 = [v3 count];
    v24 = [*(a1 + 48) count];
    [*(a1 + 32) executionTimeInterval];
    *buf = 138545410;
    v33 = v17;
    v34 = 2114;
    v35 = v18;
    v36 = 2112;
    v37 = v25;
    v38 = 2114;
    v39 = v19;
    v40 = 2114;
    v41 = v20;
    v42 = 2048;
    v43 = v21;
    v14 = v26;
    v44 = 2048;
    v45 = v24;
    v46 = 2048;
    v47 = v22;
    v48 = 2114;
    v49 = v6;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Completed operation for accessory %@/%{public}@/%{public}@ with %ld/%ld responses. Execution Time: %.3fs. Error: %{public}@", buf, 0x5Cu);
  }

  objc_autoreleasePoolPop(v14);
  [*(a1 + 32) addCharacteristicResponses:v3 isRemote:0];
  dispatch_group_leave(*(a1 + 56));
  if ([*(a1 + 32) supportsMultiPartResponse])
  {
    v23 = [*(a1 + 32) completion];
    (v23)[2](v23, v3);
  }
}

- (void)execute
{
  v57 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  [(HMDHAPAccessoryTask *)self setExecutionTime:date];

  array = [MEMORY[0x277CBEB18] array];
  requests = [(HMDHAPAccessoryTask *)self requests];
  selfCopy = self;
  context = [(HMDHAPAccessoryTask *)self context];
  user = [context user];
  v32 = array;
  v8 = accessoryRequestMapFromRequests(requests, array, user);

  v9 = dispatch_group_create();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v8;
  v36 = [obj countByEnumeratingWithState:&v40 objects:v56 count:16];
  if (v36)
  {
    v35 = *v41;
    v33 = v9;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        v12 = [obj objectForKey:v11];
        activity = [(HMDHAPAccessoryTask *)selfCopy activity];
        operationName = [(HMDHAPAccessoryTask *)selfCopy operationName];
        shortDescription = [v11 shortDescription];
        [activity markWithFormat:@"Starting %@ for accessory: %@", operationName, shortDescription];

        v16 = objc_autoreleasePoolPush();
        v17 = selfCopy;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = HMFGetLogIdentifier();
          name = [v11 name];
          uuid = [v11 uuid];
          [uuid UUIDString];
          v22 = v34 = v16;
          uniqueIdentifier = [v11 uniqueIdentifier];
          v24 = [v12 count];
          *buf = 138544642;
          v45 = v19;
          v46 = 2114;
          v47 = selfCopy;
          v48 = 2112;
          v49 = name;
          v50 = 2114;
          v51 = v22;
          v52 = 2114;
          v53 = uniqueIdentifier;
          v54 = 2048;
          v55 = v24;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Starting for accessory %@/%{public}@/%{public}@ with %ld requests", buf, 0x3Eu);

          v16 = v34;
          v9 = v33;
        }

        objc_autoreleasePoolPop(v16);
        activity2 = [(HMDHAPAccessoryTask *)v17 activity];
        [(HMDHAPAccessoryLocalOperationTask *)v17 activityRequestEventName];

        [(HMDHAPAccessoryTask *)v17 operationName];
        [v11 uuid];

        [v12 count];
        logEvents = [(HMDHAPAccessoryLocalOperationTask *)v17 logEvents];
        uuid2 = [v11 uuid];
        uUIDString = [uuid2 UUIDString];
        v29 = [logEvents objectForKeyedSubscript:uUIDString];

        dispatch_group_enter(v9);
        v30 = [(HMDHAPAccessoryLocalOperationTask *)v17 _completionHandlerForAccessory:v11 accessoryRequests:v12 responseWaitGroup:v9];
        [(HMDHAPAccessoryLocalOperationTask *)v17 _dispatchToAccessory:v11 requests:v12 logEvent:v29 completion:v30];
      }

      v36 = [obj countByEnumeratingWithState:&v40 objects:v56 count:16];
    }

    while (v36);
  }

  [(HMDHAPAccessoryTask *)selfCopy addCharacteristicResponses:v32 isRemote:0];
  workQueue = [(HMDHAPAccessoryTask *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMDHAPAccessoryLocalOperationTask_execute__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = selfCopy;
  dispatch_group_notify(v9, workQueue, block);
}

void __44__HMDHAPAccessoryLocalOperationTask_execute__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) supportsMultiPartResponse] & 1) == 0)
  {
    v3 = [*(a1 + 32) completion];
    v2 = [*(a1 + 32) characteristicResponses];
    v3[2](v3, v2);
  }
}

@end