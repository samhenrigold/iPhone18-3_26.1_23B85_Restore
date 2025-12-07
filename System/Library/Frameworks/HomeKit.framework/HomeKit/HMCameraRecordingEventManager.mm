@interface HMCameraRecordingEventManager
+ (id)logCategory;
- (HMCameraRecordingEventManager)initWithContext:(id)context clipManager:(id)manager reachabilityEventManager:(id)eventManager;
- (NSString)zoneName;
- (id)mergedRecordingEventsWithRecordingEvents1:(id)events1 recordingEvents2:(id)events2 limit:(unint64_t)limit shouldOrderAscending:(BOOL)ascending;
- (void)addObserver:(id)observer queue:(id)queue;
- (void)clipManager:(id)manager didRemoveClipsWithUUIDs:(id)ds;
- (void)clipManager:(id)manager didUpdateClips:(id)clips;
- (void)deleteAllEventsWithCompletionHandler:(id)handler;
- (void)fetchAllEventsWithCompletion:(id)completion;
- (void)fetchCountOfAllEventsWithCompletion:(id)completion;
- (void)fetchCountOfEventsWithDateInterval:(id)interval completion:(id)completion;
- (void)fetchEventsWithDateInterval:(id)interval limit:(unint64_t)limit shouldOrderAscending:(BOOL)ascending completion:(id)completion;
- (void)fetchEventsWithDateInterval:(id)interval quality:(int64_t)quality limit:(unint64_t)limit shouldOrderAscending:(BOOL)ascending completion:(id)completion;
- (void)notifyObserversOfUpdatedEvents:(id)events removedEventsWithUUIDs:(id)ds;
- (void)performCloudPullWithCompletion:(id)completion;
- (void)reachabilityEventManager:(id)manager didRemoveReachabilityEventsWithUUIDs:(id)ds;
- (void)reachabilityEventManager:(id)manager didUpdateReachabilityEvents:(id)events;
- (void)removeObserver:(id)observer;
@end

@implementation HMCameraRecordingEventManager

- (void)reachabilityEventManager:(id)manager didRemoveReachabilityEventsWithUUIDs:(id)ds
{
  v17 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  dsCopy = ds;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2048;
    v16 = [dsCopy count];
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Received %lu removed reachability event UUIDs", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x1E695DFD8] set];
  [(HMCameraRecordingEventManager *)selfCopy notifyObserversOfUpdatedEvents:v12 removedEventsWithUUIDs:dsCopy];
}

- (void)reachabilityEventManager:(id)manager didUpdateReachabilityEvents:(id)events
{
  v17 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  eventsCopy = events;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2048;
    v16 = [eventsCopy count];
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Received %lu updated reachability events", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x1E695DFD8] set];
  [(HMCameraRecordingEventManager *)selfCopy notifyObserversOfUpdatedEvents:eventsCopy removedEventsWithUUIDs:v12];
}

- (void)clipManager:(id)manager didRemoveClipsWithUUIDs:(id)ds
{
  v17 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  dsCopy = ds;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2048;
    v16 = [dsCopy count];
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Received %lu removed clip UUIDs", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x1E695DFD8] set];
  [(HMCameraRecordingEventManager *)selfCopy notifyObserversOfUpdatedEvents:v12 removedEventsWithUUIDs:dsCopy];
}

- (void)clipManager:(id)manager didUpdateClips:(id)clips
{
  v17 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  clipsCopy = clips;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2048;
    v16 = [clipsCopy count];
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Received %lu updated clips", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x1E695DFD8] set];
  [(HMCameraRecordingEventManager *)selfCopy notifyObserversOfUpdatedEvents:clipsCopy removedEventsWithUUIDs:v12];
}

- (void)notifyObserversOfUpdatedEvents:(id)events removedEventsWithUUIDs:(id)ds
{
  v25 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  dsCopy = ds;
  os_unfair_lock_lock_with_options();
  v8 = [(NSMapTable *)self->_delegateCallersByObservers copy];
  os_unfair_lock_unlock(&self->_lock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [v8 keyEnumerator];
  v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v8 objectForKey:v12];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __87__HMCameraRecordingEventManager_notifyObserversOfUpdatedEvents_removedEventsWithUUIDs___block_invoke;
        v15[3] = &unk_1E754DE30;
        v16 = eventsCopy;
        v17 = v12;
        selfCopy = self;
        v19 = dsCopy;
        [v13 invokeBlock:v15];
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }
}

void *__87__HMCameraRecordingEventManager_notifyObserversOfUpdatedEvents_removedEventsWithUUIDs___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) recordingEventManager:*(a1 + 48) didUpdateRecordingEvents:*(a1 + 32)];
  }

  result = [*(a1 + 56) count];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 recordingEventManager:v4 didRemoveRecordingEventsWithUUIDs:v5];
  }

  return result;
}

- (id)mergedRecordingEventsWithRecordingEvents1:(id)events1 recordingEvents2:(id)events2 limit:(unint64_t)limit shouldOrderAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  events1Copy = events1;
  events2Copy = events2;
  v26 = events1Copy;
  objectEnumerator = [events1Copy objectEnumerator];
  v25 = events2Copy;
  objectEnumerator2 = [events2Copy objectEnumerator];
  if (ascendingCopy)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  nextObject = [objectEnumerator nextObject];
  nextObject2 = [objectEnumerator2 nextObject];
  array = [MEMORY[0x1E695DF70] array];
  while (nextObject | nextObject2)
  {
    if ([array count] >= limit)
    {
      goto LABEL_16;
    }

    if (nextObject != 0 && nextObject2 != 0)
    {
      dateOfOccurrence = [nextObject2 dateOfOccurrence];
      dateOfOccurrence2 = [nextObject dateOfOccurrence];
      v19 = [dateOfOccurrence compare:dateOfOccurrence2];

      if (v19 != v13)
      {
        goto LABEL_11;
      }

      [array addObject:nextObject2];
      nextObject3 = [objectEnumerator2 nextObject];
    }

    else
    {
      if (nextObject)
      {
LABEL_11:
        [array addObject:nextObject];
        nextObject4 = [objectEnumerator nextObject];
        v22 = nextObject;
        nextObject = nextObject4;
        goto LABEL_14;
      }

      [array addObject:nextObject2];
      nextObject3 = [objectEnumerator2 nextObject];
      nextObject = 0;
    }

    v22 = nextObject2;
    nextObject2 = nextObject3;
LABEL_14:
  }

  nextObject2 = 0;
  nextObject = 0;
LABEL_16:
  v23 = [array copy];

  return v23;
}

- (void)deleteAllEventsWithCompletionHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Deleting all recording events", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  clipManager = [(HMCameraRecordingEventManager *)selfCopy clipManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__HMCameraRecordingEventManager_deleteAllEventsWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E754D870;
  v11[4] = selfCopy;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [clipManager deleteAllClipsWithCompletionHandler:v11];
}

void __70__HMCameraRecordingEventManager_deleteAllEventsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 context];
    v6 = [v5 delegateCaller];
    [v6 callCompletion:*(a1 + 40) error:v3];
  }

  else
  {
    v7 = [v4 reachabilityEventManager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__HMCameraRecordingEventManager_deleteAllEventsWithCompletionHandler___block_invoke_2;
    v9[3] = &unk_1E754D870;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v7 deleteAllEventsWithCompletionHandler:v9];
  }
}

void __70__HMCameraRecordingEventManager_deleteAllEventsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 context];
  v5 = [v6 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

- (void)fetchCountOfAllEventsWithCompletion:(id)completion
{
  v4 = MEMORY[0x1E696AB80];
  completionCopy = completion;
  v6 = [v4 alloc];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v9 = [v6 initWithStartDate:distantPast endDate:distantFuture];

  [(HMCameraRecordingEventManager *)self fetchCountOfEventsWithDateInterval:v9 completion:completionCopy];
}

- (void)fetchCountOfEventsWithDateInterval:(id)interval completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch count of recording events with date interval"];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [v8 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v24 = v12;
    v25 = 2114;
    v26 = shortDescription;
    v27 = 2112;
    v28 = intervalCopy;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching count of recording events with date interval %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  clipManager = [(HMCameraRecordingEventManager *)selfCopy clipManager];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __79__HMCameraRecordingEventManager_fetchCountOfEventsWithDateInterval_completion___block_invoke;
  v19[3] = &unk_1E7547AB8;
  v19[4] = selfCopy;
  v20 = v8;
  v21 = intervalCopy;
  v22 = completionCopy;
  v16 = intervalCopy;
  v17 = v8;
  v18 = completionCopy;
  [clipManager fetchCountOfClipsWithDateInterval:v16 completion:v19];
}

void __79__HMCameraRecordingEventManager_fetchCountOfEventsWithDateInterval_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) identifier];
      v12 = [v11 shortDescription];
      *buf = 138543874;
      v22 = v10;
      v23 = 2114;
      v24 = v12;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched count of %@ clips", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [*(a1 + 32) reachabilityEventManager];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __79__HMCameraRecordingEventManager_fetchCountOfEventsWithDateInterval_completion___block_invoke_22;
    v17[3] = &unk_1E7547AB8;
    v17[4] = *(a1 + 32);
    v14 = *(a1 + 48);
    v20 = *(a1 + 56);
    v18 = *(a1 + 40);
    v19 = v5;
    [v13 fetchCountOfEventsWithDateInterval:v14 completion:v17];
  }

  else
  {
    v15 = [*(a1 + 32) context];
    v16 = [v15 delegateCaller];
    [v16 callCompletion:*(a1 + 56) obj:0 error:v6];
  }
}

void __79__HMCameraRecordingEventManager_fetchCountOfEventsWithDateInterval_completion___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) identifier];
      v12 = [v11 shortDescription];
      v21 = 138543874;
      v22 = v10;
      v23 = 2114;
      v24 = v12;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched count of %@ reachability events", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [*(a1 + 48) unsignedIntegerValue];
    v14 = [v5 unsignedIntegerValue];
    v15 = [*(a1 + 32) context];
    v16 = [v15 delegateCaller];
    v17 = *(a1 + 56);
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14 + v13];
    [v16 callCompletion:v17 obj:v18 error:0];
  }

  else
  {
    v19 = [*(a1 + 32) context];
    v20 = [v19 delegateCaller];
    [v20 callCompletion:*(a1 + 56) obj:0 error:v6];
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
  v10[2] = __62__HMCameraRecordingEventManager_fetchAllEventsWithCompletion___block_invoke;
  v10[3] = &unk_1E754DDD8;
  v11 = completionCopy;
  v9 = completionCopy;
  [(HMCameraRecordingEventManager *)self fetchEventsWithDateInterval:v8 quality:0 limit:-1 shouldOrderAscending:1 completion:v10];
}

void __62__HMCameraRecordingEventManager_fetchAllEventsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

- (void)fetchEventsWithDateInterval:(id)interval quality:(int64_t)quality limit:(unint64_t)limit shouldOrderAscending:(BOOL)ascending completion:(id)completion
{
  ascendingCopy = ascending;
  v48 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  completionCopy = completion;
  v13 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch recording events with date interval"];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    limitCopy = limit;
    v17 = ascendingCopy;
    v19 = v18 = quality;
    [v13 identifier];
    v20 = v27 = v14;
    shortDescription = [v20 shortDescription];
    v22 = HMStringFromCameraClipQuality(v18);
    *buf = 138544642;
    v37 = v19;
    v38 = 2114;
    v39 = shortDescription;
    v40 = 2112;
    v41 = intervalCopy;
    v42 = 2112;
    v43 = v22;
    v44 = 2048;
    v45 = limitCopy;
    v46 = 1024;
    v47 = v17;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching recording events with date interval: %@ quality: %@ limit: %lu shouldOrderAscending: %d", buf, 0x3Au);

    v14 = v27;
    quality = v18;
    ascendingCopy = v17;
    limit = limitCopy;
  }

  objc_autoreleasePoolPop(v14);
  clipManager = [(HMCameraRecordingEventManager *)selfCopy clipManager];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __107__HMCameraRecordingEventManager_fetchEventsWithDateInterval_quality_limit_shouldOrderAscending_completion___block_invoke;
  v30[3] = &unk_1E7547A90;
  v30[4] = selfCopy;
  v31 = v13;
  v32 = intervalCopy;
  v33 = completionCopy;
  limitCopy2 = limit;
  v35 = ascendingCopy;
  v24 = intervalCopy;
  v25 = v13;
  v26 = completionCopy;
  [clipManager fetchClipsWithDateInterval:v24 quality:quality limit:limit shouldOrderAscending:ascendingCopy completion:v30];
}

void __107__HMCameraRecordingEventManager_fetchEventsWithDateInterval_quality_limit_shouldOrderAscending_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) identifier];
      v12 = [v11 shortDescription];
      *buf = 138543874;
      v28 = v10;
      v29 = 2114;
      v30 = v12;
      v31 = 2048;
      v32 = [v5 count];
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched %lu clips", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [*(a1 + 32) reachabilityEventManager];
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __107__HMCameraRecordingEventManager_fetchEventsWithDateInterval_quality_limit_shouldOrderAscending_completion___block_invoke_14;
    v21[3] = &unk_1E7547A90;
    v21[4] = *(a1 + 32);
    v16 = *(a1 + 48);
    v24 = *(a1 + 56);
    v22 = *(a1 + 40);
    v17 = v5;
    v18 = *(a1 + 64);
    v23 = v17;
    v25 = v18;
    v26 = *(a1 + 72);
    [v13 fetchEventsWithDateInterval:v16 limit:v14 shouldOrderAscending:v15 completion:v21];
  }

  else
  {
    v19 = [*(a1 + 32) context];
    v20 = [v19 delegateCaller];
    [v20 callCompletion:*(a1 + 56) obj:0 error:v6];
  }
}

void __107__HMCameraRecordingEventManager_fetchEventsWithDateInterval_quality_limit_shouldOrderAscending_completion___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) identifier];
      v12 = [v11 shortDescription];
      v16 = 138543874;
      v17 = v10;
      v18 = 2114;
      v19 = v12;
      v20 = 2048;
      v21 = [v5 count];
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched %lu reachability events", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [*(a1 + 32) mergedRecordingEventsWithRecordingEvents1:*(a1 + 48) recordingEvents2:v5 limit:*(a1 + 64) shouldOrderAscending:*(a1 + 72)];
    v14 = [*(a1 + 32) context];
    v15 = [v14 delegateCaller];
    [v15 callCompletion:*(a1 + 56) obj:v13 error:0];
  }

  else
  {
    v13 = [*(a1 + 32) context];
    v14 = [v13 delegateCaller];
    [v14 callCompletion:*(a1 + 56) obj:0 error:v6];
  }
}

- (void)fetchEventsWithDateInterval:(id)interval limit:(unint64_t)limit shouldOrderAscending:(BOOL)ascending completion:(id)completion
{
  ascendingCopy = ascending;
  v36 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  completionCopy = completion;
  v12 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch recording events with date interval"];
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    identifier = [v12 identifier];
    shortDescription = [identifier shortDescription];
    v19 = ascendingCopy;
    v20 = shortDescription;
    *buf = 138544386;
    v27 = v16;
    v28 = 2114;
    v29 = shortDescription;
    v30 = 2112;
    v31 = intervalCopy;
    v32 = 2048;
    limitCopy = limit;
    v34 = 1024;
    v35 = v19;
    _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching recording events with date interval: %@ limit: %lu shouldOrderAscending: %d", buf, 0x30u);
  }

  objc_autoreleasePoolPop(v13);
  context = [(HMCameraRecordingEventManager *)selfCopy context];
  delegateCaller = [context delegateCaller];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __99__HMCameraRecordingEventManager_fetchEventsWithDateInterval_limit_shouldOrderAscending_completion___block_invoke;
  v24[3] = &unk_1E754E430;
  v25 = completionCopy;
  v23 = completionCopy;
  [delegateCaller invokeBlock:v24];
}

void __99__HMCameraRecordingEventManager_fetchEventsWithDateInterval_limit_shouldOrderAscending_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:48 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)performCloudPullWithCompletion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Performing cloud pull", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  clipManager = [(HMCameraRecordingEventManager *)selfCopy clipManager];
  [clipManager performCloudPullWithCompletion:completionCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock_with_options();
  delegateCallersByObservers = [(HMCameraRecordingEventManager *)self delegateCallersByObservers];
  v5 = [delegateCallersByObservers count];

  delegateCallersByObservers2 = [(HMCameraRecordingEventManager *)self delegateCallersByObservers];
  [delegateCallersByObservers2 removeObjectForKey:observerCopy];

  delegateCallersByObservers3 = [(HMCameraRecordingEventManager *)self delegateCallersByObservers];
  v8 = [delegateCallersByObservers3 count];

  os_unfair_lock_unlock(&self->_lock);
  if (!v8 && v5)
  {
    clipManager = [(HMCameraRecordingEventManager *)self clipManager];
    [clipManager removeObserver:self];

    reachabilityEventManager = [(HMCameraRecordingEventManager *)self reachabilityEventManager];
    [reachabilityEventManager removeObserver:self];
  }
}

- (void)addObserver:(id)observer queue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  os_unfair_lock_lock_with_options();
  if (queueCopy)
  {
    delegateCaller = [[HMDelegateCaller alloc] initWithQueue:queueCopy];
  }

  else
  {
    context = [(HMCameraRecordingEventManager *)self context];
    delegateCaller = [context delegateCaller];
  }

  delegateCallersByObservers = [(HMCameraRecordingEventManager *)self delegateCallersByObservers];
  [delegateCallersByObservers setObject:delegateCaller forKey:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
  clipManager = [(HMCameraRecordingEventManager *)self clipManager];
  [clipManager addObserver:self queue:queueCopy];

  reachabilityEventManager = [(HMCameraRecordingEventManager *)self reachabilityEventManager];
  [reachabilityEventManager addObserver:self queue:queueCopy];
}

- (NSString)zoneName
{
  clipManager = [(HMCameraRecordingEventManager *)self clipManager];
  zoneName = [clipManager zoneName];

  return zoneName;
}

- (HMCameraRecordingEventManager)initWithContext:(id)context clipManager:(id)manager reachabilityEventManager:(id)eventManager
{
  contextCopy = context;
  managerCopy = manager;
  eventManagerCopy = eventManager;
  if (!contextCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!managerCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = eventManagerCopy;
  if (!eventManagerCopy)
  {
LABEL_9:
    v18 = _HMFPreconditionFailure();
    return [(HMCameraRecordingEventManager *)v18 initWithContext:v19 clipManager:v20 reachabilityEventManager:v21 home:v22, v23];
  }

  v24.receiver = self;
  v24.super_class = HMCameraRecordingEventManager;
  v13 = [(HMCameraRecordingEventManager *)&v24 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_context, context);
    objc_storeStrong(&v14->_clipManager, manager);
    objc_storeStrong(&v14->_reachabilityEventManager, eventManager);
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    delegateCallersByObservers = v14->_delegateCallersByObservers;
    v14->_delegateCallersByObservers = weakToStrongObjectsMapTable;
  }

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16, &__block_literal_global_14537);
  }

  v3 = logCategory__hmf_once_v17;

  return v3;
}

uint64_t __44__HMCameraRecordingEventManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v17;
  logCategory__hmf_once_v17 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end