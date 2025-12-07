@interface HMCameraRecordingReachabilityEventManager
+ (id)logCategory;
- (HMCameraRecordingReachabilityEventManager)initWithContext:(id)context uniqueIdentifier:(id)identifier;
- (HMCameraRecordingReachabilityEventManager)initWithContext:(id)context uniqueIdentifier:(id)identifier notificationCenter:(id)center;
- (id)logIdentifier;
- (void)addObserver:(id)observer queue:(id)queue;
- (void)configure;
- (void)dealloc;
- (void)deleteAllEventsWithCompletionHandler:(id)handler;
- (void)fetchAllEventsWithCompletion:(id)completion;
- (void)fetchCountOfAllEventsWithCompletion:(id)completion;
- (void)fetchCountOfEventsWithDateInterval:(id)interval completion:(id)completion;
- (void)fetchEventsAfterDate:(id)date withLimit:(unint64_t)limit completion:(id)completion;
- (void)fetchEventsBeforeDate:(id)date withLimit:(unint64_t)limit completion:(id)completion;
- (void)fetchEventsWithDateInterval:(id)interval limit:(unint64_t)limit shouldOrderAscending:(BOOL)ascending completion:(id)completion;
- (void)handleDaemonReconnectedNotification:(id)notification;
- (void)handleDidChangeEventsMessage:(id)message;
- (void)performCloudPullWithCompletion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)subscribe;
- (void)unsubscribe;
@end

@implementation HMCameraRecordingReachabilityEventManager

- (id)logIdentifier
{
  uniqueIdentifier = [(HMCameraRecordingReachabilityEventManager *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

- (void)handleDaemonReconnectedNotification:(id)notification
{
  v13 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling daemon reconnected notification by reconnecting to daemon if necessary", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  delegateCallersByObservers = [(HMCameraRecordingReachabilityEventManager *)selfCopy delegateCallersByObservers];
  v10 = [delegateCallersByObservers count] == 0;

  os_unfair_lock_unlock(&selfCopy->_lock);
  if (!v10)
  {
    [(HMCameraRecordingReachabilityEventManager *)selfCopy subscribe];
  }
}

- (void)handleDidChangeEventsMessage:(id)message
{
  v42[2] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v7;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Handling reachability events changed message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v42[0] = objc_opt_class();
  v42[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  v24 = [messageCopy unarchivedObjectForKey:@"HMCRREM.mk.ue" ofClasses:v8];

  v23 = [messageCopy setForKey:@"HMCRREM.mk.reu"];
  os_unfair_lock_lock_with_options();
  v25 = [(NSMapTable *)selfCopy->_delegateCallersByObservers copy];
  os_unfair_lock_unlock(&selfCopy->_lock);
  v9 = objc_autoreleasePoolPush();
  v10 = selfCopy;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v24 count];
    v14 = [v23 count];
    *buf = 138543874;
    v37 = v12;
    v38 = 2048;
    v39 = v13;
    v40 = 2048;
    v41 = v14;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Received %lu updated events, %lu removed event UUIDs", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [v25 keyEnumerator];
  v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v15)
  {
    v16 = *v32;
    v17 = MEMORY[0x1E69E9820];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        v20 = [v25 objectForKey:v19];
        v26[0] = v17;
        v26[1] = 3221225472;
        v26[2] = __74__HMCameraRecordingReachabilityEventManager_handleDidChangeEventsMessage___block_invoke;
        v26[3] = &unk_1E754DE30;
        v27 = v24;
        v28 = v19;
        v29 = v10;
        v30 = v23;
        [v20 invokeBlock:v26];
      }

      v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v15);
  }

  [messageCopy respondWithSuccess];
}

void *__74__HMCameraRecordingReachabilityEventManager_handleDidChangeEventsMessage___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) reachabilityEventManager:*(a1 + 48) didUpdateReachabilityEvents:*(a1 + 32)];
  }

  result = [*(a1 + 56) count];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 reachabilityEventManager:v4 didRemoveReachabilityEventsWithUUIDs:v5];
  }

  return result;
}

- (void)unsubscribe
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing from camera reachability event changes", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = objc_alloc(MEMORY[0x1E69A2A00]);
  uniqueIdentifier = [(HMCameraRecordingReachabilityEventManager *)selfCopy uniqueIdentifier];
  v9 = [v7 initWithTarget:uniqueIdentifier];

  v10 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCRREM.m.um" destination:v9 payload:0];
  context = [(HMCameraRecordingReachabilityEventManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v10];
}

- (void)subscribe
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Subscribing to camera reachability event changes", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = objc_alloc(MEMORY[0x1E69A2A00]);
  uniqueIdentifier = [(HMCameraRecordingReachabilityEventManager *)selfCopy uniqueIdentifier];
  v9 = [v7 initWithTarget:uniqueIdentifier];

  v10 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCRREM.m.sm" destination:v9 payload:0];
  context = [(HMCameraRecordingReachabilityEventManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v10];
}

- (void)configure
{
  context = [(HMCameraRecordingReachabilityEventManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"HMCRREM.m.dcem" receiver:self selector:sel_handleDidChangeEventsMessage_];

  notificationCenter = [(HMCameraRecordingReachabilityEventManager *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handleDaemonReconnectedNotification_ name:@"HMDaemonReconnectedNotification" object:0];
}

- (void)deleteAllEventsWithCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v23 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Deleting all reachability events", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = objc_alloc(MEMORY[0x1E69A2A00]);
  uniqueIdentifier = [(HMCameraRecordingReachabilityEventManager *)selfCopy uniqueIdentifier];
  v11 = [v9 initWithTarget:uniqueIdentifier];

  v12 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCRREM.m.daem" destination:v11 payload:0];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __82__HMCameraRecordingReachabilityEventManager_deleteAllEventsWithCompletionHandler___block_invoke;
  v19 = &unk_1E754DE00;
  v20 = selfCopy;
  v21 = handlerCopy;
  v13 = handlerCopy;
  [v12 setResponseHandler:&v16];
  v14 = [(HMCameraRecordingReachabilityEventManager *)selfCopy context:v16];
  messageDispatcher = [v14 messageDispatcher];
  [messageDispatcher sendMessage:v12 completionHandler:0];
}

void __82__HMCameraRecordingReachabilityEventManager_deleteAllEventsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v11;
      v25 = 2112;
      v26 = v5;
      v12 = "%{public}@Failed to delete all reachability events: %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v13, v14, v12, buf, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v11;
    v12 = "%{public}@Successfully deleted all reachability events";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = [*(a1 + 32) context];
  v17 = [v16 delegateCaller];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __82__HMCameraRecordingReachabilityEventManager_deleteAllEventsWithCompletionHandler___block_invoke_82;
  v20[3] = &unk_1E754E458;
  v18 = *(a1 + 40);
  v21 = v5;
  v22 = v18;
  v19 = v5;
  [v17 invokeBlock:v20];
}

- (void)fetchCountOfAllEventsWithCompletion:(id)completion
{
  v4 = MEMORY[0x1E696AB80];
  completionCopy = completion;
  v6 = [v4 alloc];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v9 = [v6 initWithStartDate:distantPast endDate:distantFuture];

  [(HMCameraRecordingReachabilityEventManager *)self fetchCountOfEventsWithDateInterval:v9 completion:completionCopy];
}

- (void)fetchCountOfEventsWithDateInterval:(id)interval completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch count of reachability events with date interval"];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [v8 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v32 = v12;
    v33 = 2114;
    v34 = shortDescription;
    v35 = 2112;
    v36 = intervalCopy;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching count of reachability events with date interval %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  startDate = [intervalCopy startDate];
  [dictionary setObject:startDate forKeyedSubscript:@"HMCRREM.mk.da"];

  endDate = [intervalCopy endDate];
  [dictionary setObject:endDate forKeyedSubscript:@"HMCRREM.mk.db"];

  v18 = objc_alloc(MEMORY[0x1E69A2A00]);
  uniqueIdentifier = [(HMCameraRecordingReachabilityEventManager *)selfCopy uniqueIdentifier];
  v20 = [v18 initWithTarget:uniqueIdentifier];

  v21 = MEMORY[0x1E69A2A10];
  v22 = [dictionary copy];
  v23 = [v21 messageWithName:@"HMCRREM.m.fcoem" destination:v20 payload:v22];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __91__HMCameraRecordingReachabilityEventManager_fetchCountOfEventsWithDateInterval_completion___block_invoke;
  v28[3] = &unk_1E754E480;
  v28[4] = selfCopy;
  v29 = v8;
  v30 = completionCopy;
  v24 = completionCopy;
  v25 = v8;
  [v23 setResponseHandler:v28];
  context = [(HMCameraRecordingReachabilityEventManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v23];
}

void __91__HMCameraRecordingReachabilityEventManager_fetchCountOfEventsWithDateInterval_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[4];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] identifier];
      v13 = [v12 shortDescription];
      *buf = 138543874;
      v34 = v11;
      v35 = 2114;
      v36 = v13;
      v37 = 2112;
      v38 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch count of reachability events: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [a1[4] context];
    v15 = [v14 delegateCaller];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __91__HMCameraRecordingReachabilityEventManager_fetchCountOfEventsWithDateInterval_completion___block_invoke_80;
    v30[3] = &unk_1E754E458;
    v32 = a1[6];
    v31 = v5;
    [v15 invokeBlock:v30];

    v16 = v32;
  }

  else
  {
    v17 = [v6 hmf_numberForKey:@"HMCRREM.mk.coe"];
    v18 = objc_autoreleasePoolPush();
    v19 = a1[4];
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [a1[5] identifier];
      v23 = [v22 shortDescription];
      *buf = 138543874;
      v34 = v21;
      v35 = 2114;
      v36 = v23;
      v37 = 2048;
      v38 = [v17 unsignedIntegerValue];
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched count of %lu reachability events", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v24 = [a1[4] context];
    v25 = [v24 delegateCaller];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __91__HMCameraRecordingReachabilityEventManager_fetchCountOfEventsWithDateInterval_completion___block_invoke_81;
    v27[3] = &unk_1E754E458;
    v26 = a1[6];
    v28 = v17;
    v29 = v26;
    v16 = v17;
    [v25 invokeBlock:v27];
  }
}

- (void)fetchAllEventsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc(MEMORY[0x1E696AB80]);
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v8 = [v5 initWithStartDate:distantPast endDate:distantFuture];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__HMCameraRecordingReachabilityEventManager_fetchAllEventsWithCompletion___block_invoke;
  v10[3] = &unk_1E754DDD8;
  v11 = completionCopy;
  v9 = completionCopy;
  [(HMCameraRecordingReachabilityEventManager *)self fetchEventsWithDateInterval:v8 limit:-1 shouldOrderAscending:1 completion:v10];
}

void __74__HMCameraRecordingReachabilityEventManager_fetchAllEventsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = a3;
    v8 = [v5 setWithArray:a2];
    (*(v3 + 16))(v3);
  }

  else
  {
    v7 = *(v3 + 16);
    v8 = a3;
    v7(v3, 0);
  }
}

- (void)fetchEventsAfterDate:(id)date withLimit:(unint64_t)limit completion:(id)completion
{
  v8 = MEMORY[0x1E696AB80];
  completionCopy = completion;
  dateCopy = date;
  v11 = [v8 alloc];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v13 = [v11 initWithStartDate:dateCopy endDate:distantFuture];

  [(HMCameraRecordingReachabilityEventManager *)self fetchEventsWithDateInterval:v13 limit:limit shouldOrderAscending:1 completion:completionCopy];
}

- (void)fetchEventsBeforeDate:(id)date withLimit:(unint64_t)limit completion:(id)completion
{
  v8 = MEMORY[0x1E696AB80];
  completionCopy = completion;
  dateCopy = date;
  v11 = [v8 alloc];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v13 = [v11 initWithStartDate:distantPast endDate:dateCopy];

  [(HMCameraRecordingReachabilityEventManager *)self fetchEventsWithDateInterval:v13 limit:limit shouldOrderAscending:0 completion:completionCopy];
}

- (void)fetchEventsWithDateInterval:(id)interval limit:(unint64_t)limit shouldOrderAscending:(BOOL)ascending completion:(id)completion
{
  ascendingCopy = ascending;
  v48 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  completionCopy = completion;
  v12 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch reachability events with date interval"];
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v16 = v34 = completionCopy;
    identifier = [v12 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138544386;
    v39 = v16;
    v40 = 2114;
    v41 = shortDescription;
    v42 = 2112;
    v43 = intervalCopy;
    v44 = 2048;
    limitCopy = limit;
    v46 = 1024;
    v47 = ascendingCopy;
    _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching reachability events with date interval: %@ limit: %lu shouldOrderAscending: %d", buf, 0x30u);

    completionCopy = v34;
  }

  objc_autoreleasePoolPop(v13);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  startDate = [intervalCopy startDate];
  [dictionary setObject:startDate forKeyedSubscript:@"HMCRREM.mk.da"];

  endDate = [intervalCopy endDate];
  [dictionary setObject:endDate forKeyedSubscript:@"HMCRREM.mk.db"];

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:limit];
  [dictionary setObject:v22 forKeyedSubscript:@"HMCRREM.mk.l"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:ascendingCopy];
  [dictionary setObject:v23 forKeyedSubscript:@"HMCRREM.mk.soa"];

  v24 = objc_alloc(MEMORY[0x1E69A2A00]);
  uniqueIdentifier = [(HMCameraRecordingReachabilityEventManager *)selfCopy uniqueIdentifier];
  v26 = [v24 initWithTarget:uniqueIdentifier];

  v27 = MEMORY[0x1E69A2A10];
  v28 = [dictionary copy];
  v29 = [v27 messageWithName:@"HMCRREM.m.fem" destination:v26 payload:v28];

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __111__HMCameraRecordingReachabilityEventManager_fetchEventsWithDateInterval_limit_shouldOrderAscending_completion___block_invoke;
  v35[3] = &unk_1E754E480;
  v35[4] = selfCopy;
  v36 = v12;
  v37 = completionCopy;
  v30 = completionCopy;
  v31 = v12;
  [v29 setResponseHandler:v35];
  context = [(HMCameraRecordingReachabilityEventManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v29];
}

void __111__HMCameraRecordingReachabilityEventManager_fetchEventsWithDateInterval_limit_shouldOrderAscending_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[5] identifier];
      v12 = [v11 shortDescription];
      *buf = 138543874;
      v36 = v10;
      v37 = 2114;
      v38 = v12;
      v39 = 2112;
      v40 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch reachability events: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [a1[4] context];
    v14 = [v13 delegateCaller];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __111__HMCameraRecordingReachabilityEventManager_fetchEventsWithDateInterval_limit_shouldOrderAscending_completion___block_invoke_68;
    v31[3] = &unk_1E754E458;
    v33 = a1[6];
    v32 = v5;
    [v14 invokeBlock:v31];

    v15 = v33;
  }

  else
  {
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v17 = [v6 hmf_unarchivedObjectForKey:@"HMCRREM.mrk.fe" ofClasses:v16];

    v18 = objc_autoreleasePoolPush();
    v19 = a1[4];
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [a1[5] identifier];
      v23 = [v22 shortDescription];
      v24 = [v17 count];
      *buf = 138543874;
      v36 = v21;
      v37 = 2114;
      v38 = v23;
      v39 = 2048;
      v40 = v24;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched %lu reachability events", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v25 = [a1[4] context];
    v26 = [v25 delegateCaller];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __111__HMCameraRecordingReachabilityEventManager_fetchEventsWithDateInterval_limit_shouldOrderAscending_completion___block_invoke_72;
    v28[3] = &unk_1E754E458;
    v27 = a1[6];
    v29 = v17;
    v30 = v27;
    v15 = v17;
    [v26 invokeBlock:v28];
  }
}

- (void)performCloudPullWithCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Perform cloud pull"];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [v5 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543618;
    v24 = v9;
    v25 = 2114;
    v26 = shortDescription;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Performing cloud pull", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  uniqueIdentifier = [(HMCameraRecordingReachabilityEventManager *)selfCopy uniqueIdentifier];
  v14 = [v12 initWithTarget:uniqueIdentifier];

  v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCRREM.m.pcp" destination:v14 payload:0];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __76__HMCameraRecordingReachabilityEventManager_performCloudPullWithCompletion___block_invoke;
  v20[3] = &unk_1E754E480;
  v20[4] = selfCopy;
  v21 = v5;
  v22 = completionCopy;
  v16 = completionCopy;
  v17 = v5;
  [v15 setResponseHandler:v20];
  context = [(HMCameraRecordingReachabilityEventManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v15];
}

void __76__HMCameraRecordingReachabilityEventManager_performCloudPullWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v20 = 138543874;
      v21 = v11;
      v22 = 2114;
      v23 = v13;
      v24 = 2112;
      v25 = v5;
      v14 = "%{public}@[%{public}@] Failed to perform cloud pull: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 32;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, &v20, v17);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v20 = 138543618;
    v21 = v11;
    v22 = 2114;
    v23 = v13;
    v14 = "%{public}@[%{public}@] Successfully performed cloud pull";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = [*(a1 + 32) context];
  v19 = [v18 delegateCaller];
  [v19 callCompletion:*(a1 + 48) error:v5];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock_with_options();
  delegateCallersByObservers = [(HMCameraRecordingReachabilityEventManager *)self delegateCallersByObservers];
  v5 = [delegateCallersByObservers count];

  delegateCallersByObservers2 = [(HMCameraRecordingReachabilityEventManager *)self delegateCallersByObservers];
  [delegateCallersByObservers2 removeObjectForKey:observerCopy];

  delegateCallersByObservers3 = [(HMCameraRecordingReachabilityEventManager *)self delegateCallersByObservers];
  v8 = [delegateCallersByObservers3 count];

  os_unfair_lock_unlock(&self->_lock);
  if (!v8 && v5)
  {
    [(HMCameraRecordingReachabilityEventManager *)self unsubscribe];
  }
}

- (void)addObserver:(id)observer queue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  os_unfair_lock_lock_with_options();
  delegateCallersByObservers = [(HMCameraRecordingReachabilityEventManager *)self delegateCallersByObservers];
  v8 = [delegateCallersByObservers count];

  if (queueCopy)
  {
    delegateCaller = [[HMDelegateCaller alloc] initWithQueue:queueCopy];
  }

  else
  {
    context = [(HMCameraRecordingReachabilityEventManager *)self context];
    delegateCaller = [context delegateCaller];
  }

  delegateCallersByObservers2 = [(HMCameraRecordingReachabilityEventManager *)self delegateCallersByObservers];
  [delegateCallersByObservers2 setObject:delegateCaller forKey:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
  if (!v8)
  {
    [(HMCameraRecordingReachabilityEventManager *)self subscribe];
  }
}

- (void)dealloc
{
  keyEnumerator = [(NSMapTable *)self->_delegateCallersByObservers keyEnumerator];
  nextObject = [keyEnumerator nextObject];

  if (nextObject)
  {
    [(HMCameraRecordingReachabilityEventManager *)self unsubscribe];
  }

  context = [(HMCameraRecordingReachabilityEventManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  v7.receiver = self;
  v7.super_class = HMCameraRecordingReachabilityEventManager;
  [(HMCameraRecordingReachabilityEventManager *)&v7 dealloc];
}

- (HMCameraRecordingReachabilityEventManager)initWithContext:(id)context uniqueIdentifier:(id)identifier notificationCenter:(id)center
{
  contextCopy = context;
  identifierCopy = identifier;
  centerCopy = center;
  if (!contextCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!identifierCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = centerCopy;
  if (!centerCopy)
  {
LABEL_9:
    v18 = _HMFPreconditionFailure();
    return [(HMCameraRecordingReachabilityEventManager *)v18 initWithContext:v19 uniqueIdentifier:v20, v21];
  }

  v22.receiver = self;
  v22.super_class = HMCameraRecordingReachabilityEventManager;
  v13 = [(HMCameraRecordingReachabilityEventManager *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_context, context);
    objc_storeStrong(&v14->_uniqueIdentifier, identifier);
    objc_storeStrong(&v14->_notificationCenter, center);
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    delegateCallersByObservers = v14->_delegateCallersByObservers;
    v14->_delegateCallersByObservers = weakToStrongObjectsMapTable;
  }

  return v14;
}

- (HMCameraRecordingReachabilityEventManager)initWithContext:(id)context uniqueIdentifier:(id)identifier
{
  v6 = MEMORY[0x1E696AD88];
  identifierCopy = identifier;
  contextCopy = context;
  defaultCenter = [v6 defaultCenter];
  v10 = [(HMCameraRecordingReachabilityEventManager *)self initWithContext:contextCopy uniqueIdentifier:identifierCopy notificationCenter:defaultCenter];

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t21_62823 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t21_62823, &__block_literal_global_62824);
  }

  v3 = logCategory__hmf_once_v22_62825;

  return v3;
}

uint64_t __56__HMCameraRecordingReachabilityEventManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v22_62825;
  logCategory__hmf_once_v22_62825 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end