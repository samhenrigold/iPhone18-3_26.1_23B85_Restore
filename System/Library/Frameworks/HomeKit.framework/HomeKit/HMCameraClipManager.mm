@interface HMCameraClipManager
+ (id)logCategory;
+ (id)zoneNameForRecordingManagementServiceUUID:(id)d;
- (HMCameraClipManager)initWithContext:(id)context profileUniqueIdentifier:(id)identifier zoneName:(id)name home:(id)home;
- (HMCameraClipManager)initWithContext:(id)context profileUniqueIdentifier:(id)identifier zoneName:(id)name notificationCenter:(id)center;
- (id)logIdentifier;
- (id)videoSegmentsAssetContextForClip:(id)clip;
- (void)addObserver:(id)observer queue:(id)queue;
- (void)configure;
- (void)dealloc;
- (void)deleteAllClipsWithCompletionHandler:(id)handler;
- (void)deleteClipWithUUID:(id)d completion:(id)completion;
- (void)donateClipsWithUUIDs:(id)ds completion:(id)completion;
- (void)fetchAllClipsWithCompletion:(id)completion;
- (void)fetchAllSignificantEventsWithCompletion:(id)completion;
- (void)fetchClipForSignificantEventWithUUID:(id)d completion:(id)completion;
- (void)fetchClipWithUUID:(id)d completion:(id)completion;
- (void)fetchClipsWithDateInterval:(id)interval quality:(int64_t)quality limit:(unint64_t)limit shouldOrderAscending:(BOOL)ascending completion:(id)completion;
- (void)fetchCountOfAllClipsWithCompletion:(id)completion;
- (void)fetchCountOfClipsWithDateInterval:(id)interval quality:(int64_t)quality completion:(id)completion;
- (void)fetchFaceCropDataRepresentationForSignificantEventWithUUID:(id)d completion:(id)completion;
- (void)fetchHeroFrameDataRepresentationForClipWithUUID:(id)d completion:(id)completion;
- (void)fetchIsCloudStorageEnabledWithCompletion:(id)completion;
- (void)fetchSignificantEventsWithDateInterval:(id)interval limit:(unint64_t)limit shouldOrderAscending:(BOOL)ascending completion:(id)completion;
- (void)fetchSignificantEventsWithUUIDs:(id)ds completion:(id)completion;
- (void)fetchVideoSegmentsAssetContextForClip:(id)clip completion:(id)completion;
- (void)handleDaemonReconnectedNotification:(id)notification;
- (void)handleDidChangeClipsMessage:(id)message;
- (void)handleDidChangeSignificantEventsMessage:(id)message;
- (void)handleFaceMisclassificationForSignificantEvent:(id)event completion:(id)completion;
- (void)importClipsWithImportData:(id)data completion:(id)completion;
- (void)notifyObserversWithBlock:(id)block;
- (void)performCloudPullWithCompletion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)setCloudStorageEnabled:(BOOL)enabled completion:(id)completion;
- (void)subscribe;
- (void)unsubscribe;
@end

@implementation HMCameraClipManager

- (id)logIdentifier
{
  profileUniqueIdentifier = [(HMCameraClipManager *)self profileUniqueIdentifier];
  uUIDString = [profileUniqueIdentifier UUIDString];

  return uUIDString;
}

- (void)handleDaemonReconnectedNotification:(id)notification
{
  v12 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling daemon reconnected notification by reconnecting to daemon if necessary", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  v9 = [(NSMapTable *)selfCopy->_delegateCallersByObservers count];
  os_unfair_lock_unlock(&selfCopy->_lock);
  if (v9)
  {
    [(HMCameraClipManager *)selfCopy subscribe];
  }
}

- (void)handleDidChangeSignificantEventsMessage:(id)message
{
  v30[2] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling significant events changed message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v30[0] = objc_opt_class();
  v30[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v10 = [messageCopy unarchivedObjectForKey:@"HMCCM.mk.use" ofClasses:v9];

  v11 = [messageCopy setForKey:@"HMCCM.mk.rseu"];
  v12 = objc_autoreleasePoolPush();
  v13 = selfCopy;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v10 count];
    v17 = [v11 count];
    *buf = 138543874;
    v25 = v15;
    v26 = 2048;
    v27 = v16;
    v28 = 2048;
    v29 = v17;
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Received %lu updated significant events, %lu removed significant event UUIDs", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __63__HMCameraClipManager_handleDidChangeSignificantEventsMessage___block_invoke;
  v20[3] = &unk_1E754C440;
  v21 = v10;
  v22 = v13;
  v23 = v11;
  v18 = v11;
  v19 = v10;
  [(HMCameraClipManager *)v13 notifyObserversWithBlock:v20];
  [messageCopy respondWithPayload:0];
}

void __63__HMCameraClipManager_handleDidChangeSignificantEventsMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 clipManager:*(a1 + 40) didUpdateSignificantEvents:*(a1 + 32)];
  }

  if ([*(a1 + 48) count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 clipManager:*(a1 + 40) didRemoveSignificantEventsWithUUIDs:*(a1 + 48)];
  }
}

- (void)handleDidChangeClipsMessage:(id)message
{
  v42[2] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling clips changed message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v42[0] = objc_opt_class();
  v42[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  v10 = [messageCopy unarchivedObjectForKey:@"HMCCM.mk.uc" ofClasses:v9];

  v11 = [messageCopy setForKey:@"HMCCM.mk.rcu"];
  os_unfair_lock_lock_with_options();
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v13)
  {
    v14 = *v32;
    do
    {
      v15 = 0;
      do
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v31 + 1) + 8 * v15);
        videoAssetContextsByClipUUID = [(HMCameraClipManager *)selfCopy videoAssetContextsByClipUUID];
        uniqueIdentifier = [v16 uniqueIdentifier];
        [videoAssetContextsByClipUUID setObject:0 forKeyedSubscript:uniqueIdentifier];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v13);
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v23 = [v12 count];
    v24 = [v11 count];
    *buf = 138543874;
    v36 = v22;
    v37 = 2048;
    v38 = v23;
    v39 = 2048;
    v40 = v24;
    _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@Received %lu updated clips, %lu removed clip UUIDs", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v19);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __51__HMCameraClipManager_handleDidChangeClipsMessage___block_invoke;
  v27[3] = &unk_1E754C440;
  v28 = v12;
  v29 = v20;
  v30 = v11;
  v25 = v11;
  v26 = v12;
  [(HMCameraClipManager *)v20 notifyObserversWithBlock:v27];
  [messageCopy respondWithPayload:0];
}

void __51__HMCameraClipManager_handleDidChangeClipsMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 clipManager:*(a1 + 40) didUpdateClips:*(a1 + 32)];
  }

  if ([*(a1 + 48) count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 clipManager:*(a1 + 40) didRemoveClipsWithUUIDs:*(a1 + 48)];
  }
}

- (void)notifyObserversWithBlock:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMapTable *)self->_delegateCallersByObservers copy];
  os_unfair_lock_unlock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [v5 keyEnumerator];
  v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v5 objectForKey:v9];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __48__HMCameraClipManager_notifyObserversWithBlock___block_invoke;
        v13[3] = &unk_1E754E458;
        v11 = blockCopy;
        v13[4] = v9;
        v14 = v11;
        [v10 invokeBlock:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
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
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing from camera clip changes", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(HMCameraClipManager *)selfCopy profileUniqueIdentifier];
  v9 = [v7 initWithTarget:profileUniqueIdentifier];

  v10 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.u" destination:v9 payload:0];
  context = [(HMCameraClipManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v10 completionHandler:0];
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
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Subscribing to camera clip changes", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(HMCameraClipManager *)selfCopy profileUniqueIdentifier];
  v9 = [v7 initWithTarget:profileUniqueIdentifier];

  v10 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.s" destination:v9 payload:0];
  context = [(HMCameraClipManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v10 completionHandler:0];
}

- (void)setCloudStorageEnabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  v41 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Updating cloud storage"];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    identifier = [v7 identifier];
    shortDescription = [identifier shortDescription];
    v14 = HMFEnabledStatusToString();
    *buf = 138543874;
    v36 = v11;
    v37 = 2114;
    v38 = shortDescription;
    v39 = 2112;
    v40 = v14;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Setting cloud storage to %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v15 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(HMCameraClipManager *)selfCopy profileUniqueIdentifier];
  v17 = [v15 initWithTarget:profileUniqueIdentifier];

  v33 = @"HMCMM.mk.ie";
  v18 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  v34 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

  v20 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.ucs" destination:v17 payload:v19];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __57__HMCameraClipManager_setCloudStorageEnabled_completion___block_invoke;
  v28 = &unk_1E754C620;
  v29 = selfCopy;
  v30 = v7;
  v32 = enabledCopy;
  v31 = completionCopy;
  v21 = completionCopy;
  v22 = v7;
  [v20 setResponseHandler:&v25];
  v23 = [(HMCameraClipManager *)selfCopy context:v25];
  messageDispatcher = [v23 messageDispatcher];
  [messageDispatcher sendMessage:v20 completionHandler:0];
}

void __57__HMCameraClipManager_setCloudStorageEnabled_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
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
      v19 = 138543874;
      v20 = v11;
      v21 = 2114;
      v22 = v13;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to update cloud storage: %@", &v19, 0x20u);

LABEL_6:
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = [*(a1 + 40) identifier];
    v15 = [v14 shortDescription];
    v16 = HMFEnabledStatusToString();
    v19 = 138543874;
    v20 = v11;
    v21 = 2114;
    v22 = v15;
    v23 = 2112;
    v24 = v16;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully set cloud storage to %@", &v19, 0x20u);

    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v17 = [*(a1 + 32) context];
  v18 = [v17 delegateCaller];
  [v18 callCompletion:*(a1 + 48) error:v5];
}

- (void)fetchIsCloudStorageEnabledWithCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetching is cloud storage enabled"];
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
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching is cloud storage enabled", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(HMCameraClipManager *)selfCopy profileUniqueIdentifier];
  v14 = [v12 initWithTarget:profileUniqueIdentifier];

  v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.ficse" destination:v14 payload:0];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__HMCameraClipManager_fetchIsCloudStorageEnabledWithCompletion___block_invoke;
  v20[3] = &unk_1E754E480;
  v20[4] = selfCopy;
  v21 = v5;
  v22 = completionCopy;
  v16 = completionCopy;
  v17 = v5;
  [v15 setResponseHandler:v20];
  context = [(HMCameraClipManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v15 completionHandler:0];
}

void __64__HMCameraClipManager_fetchIsCloudStorageEnabledWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_numberForKey:@"HMCMM.mk.ie"];
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) identifier];
      v14 = [v13 shortDescription];
      [v7 BOOLValue];
      HMFEnabledStatusToString();
      v26 = v8;
      v16 = v15 = v5;
      *buf = 138543874;
      v28 = v12;
      v29 = 2114;
      v30 = v14;
      v31 = 2112;
      v32 = v16;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched is cloud storage enabled: %@", buf, 0x20u);

      v5 = v15;
      v8 = v26;
    }

    objc_autoreleasePoolPop(v8);
    v17 = [*(a1 + 32) context];
    v18 = [v17 delegateCaller];
    v19 = v18;
    v20 = *(a1 + 48);
    v21 = v7;
    v22 = 0;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [*(a1 + 40) identifier];
      v25 = [v24 shortDescription];
      *buf = 138543874;
      v28 = v23;
      v29 = 2114;
      v30 = v25;
      v31 = 2112;
      v32 = v5;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch is cloud storage enabled: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v17 = [*(a1 + 32) context];
    v18 = [v17 delegateCaller];
    v19 = v18;
    v20 = *(a1 + 48);
    v21 = 0;
    v22 = v5;
  }

  [v18 callCompletion:v20 obj:v21 error:v22];
}

- (void)importClipsWithImportData:(id)data completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Import clips"];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [v8 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v37 = v12;
    v38 = 2114;
    v39 = shortDescription;
    v40 = 2048;
    v41 = [dataCopy count];
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Importing %lu clips", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(HMCameraClipManager *)selfCopy profileUniqueIdentifier];
  v17 = [v15 initWithTarget:profileUniqueIdentifier];

  v34 = @"HMCCM.mk.cid";
  v18 = encodeRootObject(dataCopy);
  v35 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];

  v20 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.ic" destination:v17 payload:v19];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __60__HMCameraClipManager_importClipsWithImportData_completion___block_invoke;
  v29 = &unk_1E754D030;
  v30 = selfCopy;
  v31 = v8;
  v32 = dataCopy;
  v33 = completionCopy;
  v21 = completionCopy;
  v22 = dataCopy;
  v23 = v8;
  [v20 setResponseHandler:&v26];
  v24 = [(HMCameraClipManager *)selfCopy context:v26];
  messageDispatcher = [v24 messageDispatcher];
  [messageDispatcher sendMessage:v20 completionHandler:0];
}

void __60__HMCameraClipManager_importClipsWithImportData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
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
      v14 = "%{public}@[%{public}@] Failed to import clips: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, &v20, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v17 = [*(a1 + 48) count];
    v20 = 138543874;
    v21 = v11;
    v22 = 2114;
    v23 = v13;
    v24 = 2048;
    v25 = v17;
    v14 = "%{public}@[%{public}@] Successfully imported %lu clips";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = [*(a1 + 32) context];
  v19 = [v18 delegateCaller];
  [v19 callCompletion:*(a1 + 56) error:v5];
}

- (void)fetchVideoSegmentsAssetContextForClip:(id)clip completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  clipCopy = clip;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch video segments asset context"];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [v8 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v30 = v12;
    v31 = 2114;
    v32 = shortDescription;
    v33 = 2112;
    v34 = clipCopy;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching video segments asset context for clip %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = [(HMCameraClipManager *)selfCopy videoSegmentsAssetContextForClip:clipCopy];
  if (v15)
  {
    completionCopy[2](completionCopy, v15, 0);
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x1E69A2A00]);
    profileUniqueIdentifier = [(HMCameraClipManager *)selfCopy profileUniqueIdentifier];
    v18 = [v16 initWithTarget:profileUniqueIdentifier];

    v27 = @"HMCCM.mk.cu";
    uniqueIdentifier = [clipCopy uniqueIdentifier];
    v28 = uniqueIdentifier;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];

    v21 = [objc_alloc(MEMORY[0x1E69A2A10]) initWithName:@"HMCCM.m.fvsac" destination:v18 payload:v20];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __72__HMCameraClipManager_fetchVideoSegmentsAssetContextForClip_completion___block_invoke;
    v24[3] = &unk_1E754E480;
    v24[4] = selfCopy;
    v25 = v8;
    v26 = completionCopy;
    [v21 setResponseHandler:v24];
    context = [(HMCameraClipManager *)selfCopy context];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v21 completionHandler:0];
  }
}

void __72__HMCameraClipManager_fetchVideoSegmentsAssetContextForClip_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v65[1] = *MEMORY[0x1E69E9840];
  v47 = a2;
  v48 = a3;
  v65[0] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:1];
  v6 = [v48 hmf_unarchivedObjectForKey:@"HMCCM.mk.ac" ofClasses:v5];

  if (v6)
  {
    v64 = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:{1, v47}];
    v8 = [v48 hmf_unarchivedObjectForKey:@"HMCCM.mk.c" ofClasses:v7];

    v9 = objc_autoreleasePoolPush();
    v10 = a1[4];
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (v8)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [a1[5] identifier];
        v15 = [v14 shortDescription];
        *buf = 138544130;
        v57 = v13;
        v58 = 2114;
        v59 = v15;
        v60 = 2112;
        v61 = v6;
        v62 = 2112;
        v63 = v8;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched video segments asset context: %@ clip: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v9);
      v16 = [HMCameraClipVideoHLSPlaylistGenerator alloc];
      v17 = [v6 url];
      v18 = [(HMCameraClipVideoHLSPlaylistGenerator *)v16 initWithClip:v8 url:v17];

      v19 = [v6 videoSegments];
      [(HMCameraClipVideoHLSPlaylistGenerator *)v18 addSegments:v19];

      if ([v8 isComplete])
      {
        [(HMCameraClipVideoHLSPlaylistGenerator *)v18 finish];
      }

      v20 = [(HMCameraClipVideoHLSPlaylistGenerator *)v18 hlsPlaylist];
      v21 = [HMCameraClipVideoAssetContext alloc];
      v22 = [v6 url];
      v23 = [v6 expirationDate];
      v24 = [v6 requiredHTTPHeaders];
      v25 = [v6 videoSegments];
      v26 = [(HMCameraClipVideoAssetContext *)v21 initWithURL:v22 expirationDate:v23 requiredHTTPHeaders:v24 videoSegments:v25 hlsPlaylist:v20];

      v27 = a1[4];
      os_unfair_lock_lock_with_options();
      v28 = *(a1[4] + 7);
      v29 = [v8 uniqueIdentifier];
      [v28 setObject:v26 forKeyedSubscript:v29];

      os_unfair_lock_unlock(v27 + 2);
      v30 = [a1[4] context];
      v31 = [v30 delegateCaller];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __72__HMCameraClipManager_fetchVideoSegmentsAssetContextForClip_completion___block_invoke_226;
      v49[3] = &unk_1E754E458;
      v32 = a1[6];
      v50 = v26;
      v51 = v32;
      v33 = v26;
      [v31 invokeBlock:v49];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        v43 = [a1[5] identifier];
        v44 = [v43 shortDescription];
        *buf = 138543874;
        v57 = v42;
        v58 = 2114;
        v59 = v44;
        v60 = 2112;
        v61 = v48;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Could not find clip in response payload: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      v45 = [a1[4] context];
      v46 = [v45 delegateCaller];
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __72__HMCameraClipManager_fetchVideoSegmentsAssetContextForClip_completion___block_invoke_223;
      v52[3] = &unk_1E754E430;
      v53 = a1[6];
      [v46 invokeBlock:v52];

      v18 = v53;
    }
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = a1[4];
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      v38 = [a1[5] identifier];
      v39 = [v38 shortDescription];
      *buf = 138543874;
      v57 = v37;
      v58 = 2114;
      v59 = v39;
      v60 = 2112;
      v61 = v48;
      _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Could not find video segments asset context in response payload %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v34);
    v40 = [a1[4] context];
    v41 = [v40 delegateCaller];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __72__HMCameraClipManager_fetchVideoSegmentsAssetContextForClip_completion___block_invoke_222;
    v54[3] = &unk_1E754E430;
    v55 = a1[6];
    [v41 invokeBlock:v54];

    v8 = v55;
  }
}

void __72__HMCameraClipManager_fetchVideoSegmentsAssetContextForClip_completion___block_invoke_222(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

void __72__HMCameraClipManager_fetchVideoSegmentsAssetContextForClip_completion___block_invoke_223(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)configure
{
  context = [(HMCameraClipManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"HMCCM.m.dcc" receiver:self selector:sel_handleDidChangeClipsMessage_];

  context2 = [(HMCameraClipManager *)self context];
  messageDispatcher2 = [context2 messageDispatcher];
  [messageDispatcher2 registerForMessage:@"HMCCM.m.dcse" receiver:self selector:sel_handleDidChangeSignificantEventsMessage_];

  notificationCenter = [(HMCameraClipManager *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handleDaemonReconnectedNotification_ name:@"HMDaemonReconnectedNotification" object:0];
}

- (void)donateClipsWithUUIDs:(id)ds completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Handle feedback submission"];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [v8 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v36 = v12;
    v37 = 2114;
    v38 = shortDescription;
    v39 = 2112;
    v40 = dsCopy;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Handling feedback submission for clips %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(HMCameraClipManager *)selfCopy profileUniqueIdentifier];
  v17 = [v15 initWithTarget:profileUniqueIdentifier];

  v33 = @"HMCCM.mk.cus";
  v34 = dsCopy;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v19 = [objc_alloc(MEMORY[0x1E69A2A10]) initWithName:@"HMCCM.m.sc" destination:v17 payload:v18];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __55__HMCameraClipManager_donateClipsWithUUIDs_completion___block_invoke;
  v28 = &unk_1E754D030;
  v29 = selfCopy;
  v30 = v8;
  v31 = dsCopy;
  v32 = completionCopy;
  v20 = completionCopy;
  v21 = dsCopy;
  v22 = v8;
  [v19 setResponseHandler:&v25];
  v23 = [(HMCameraClipManager *)selfCopy context:v25];
  messageDispatcher = [v23 messageDispatcher];
  [messageDispatcher sendMessage:v19 completionHandler:0];
}

void __55__HMCameraClipManager_donateClipsWithUUIDs_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
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
      v14 = *(a1 + 48);
      v22 = 138544130;
      v23 = v11;
      v24 = 2114;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v5;
      v15 = "%{public}@[%{public}@] Failed to handle feedback submission for clips %@: %@";
      v16 = v10;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 42;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v16, v17, v15, &v22, v18);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v19 = *(a1 + 48);
    v22 = 138543874;
    v23 = v11;
    v24 = 2114;
    v25 = v13;
    v26 = 2112;
    v27 = v19;
    v15 = "%{public}@[%{public}@] Successfully handled feedback submission for clips %@";
    v16 = v10;
    v17 = OS_LOG_TYPE_INFO;
    v18 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v20 = [*(a1 + 32) context];
  v21 = [v20 delegateCaller];
  [v21 callCompletion:*(a1 + 56) error:v5];
}

- (void)handleFaceMisclassificationForSignificantEvent:(id)event completion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Handle face misclassification"];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [v8 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v35 = v12;
    v36 = 2114;
    v37 = shortDescription;
    v38 = 2112;
    v39 = eventCopy;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Handling face misclassification for significant event %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(HMCameraClipManager *)selfCopy profileUniqueIdentifier];
  v17 = [v15 initWithTarget:profileUniqueIdentifier];

  v31 = eventCopy;
  v32 = @"HMCCM.mk.se";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v19 = encodeRootObject(v18);
  v33 = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];

  v21 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.hfm" destination:v17 payload:v20];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __81__HMCameraClipManager_handleFaceMisclassificationForSignificantEvent_completion___block_invoke;
  v27[3] = &unk_1E754D030;
  v27[4] = selfCopy;
  v28 = v8;
  v29 = eventCopy;
  v30 = completionCopy;
  v22 = completionCopy;
  v23 = eventCopy;
  v24 = v8;
  [v21 setResponseHandler:v27];
  context = [(HMCameraClipManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v21 completionHandler:0];
}

void __81__HMCameraClipManager_handleFaceMisclassificationForSignificantEvent_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
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
      v14 = *(a1 + 48);
      v22 = 138544130;
      v23 = v11;
      v24 = 2114;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v5;
      v15 = "%{public}@[%{public}@] Failed to handle face misclassification for significant event %@: %@";
      v16 = v10;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 42;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v16, v17, v15, &v22, v18);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v19 = *(a1 + 48);
    v22 = 138543874;
    v23 = v11;
    v24 = 2114;
    v25 = v13;
    v26 = 2112;
    v27 = v19;
    v15 = "%{public}@[%{public}@] Successfully handled face misclassification for significant event %@";
    v16 = v10;
    v17 = OS_LOG_TYPE_INFO;
    v18 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v20 = [*(a1 + 32) context];
  v21 = [v20 delegateCaller];
  [v21 callCompletion:*(a1 + 56) error:v5];
}

- (void)deleteAllClipsWithCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Delete all clips"];
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
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Deleting all clips", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(HMCameraClipManager *)selfCopy profileUniqueIdentifier];
  v14 = [v12 initWithTarget:profileUniqueIdentifier];

  v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.dac" destination:v14 payload:0];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59__HMCameraClipManager_deleteAllClipsWithCompletionHandler___block_invoke;
  v20[3] = &unk_1E754E480;
  v20[4] = selfCopy;
  v21 = v5;
  v22 = handlerCopy;
  v16 = handlerCopy;
  v17 = v5;
  [v15 setResponseHandler:v20];
  context = [(HMCameraClipManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v15 completionHandler:0];
}

void __59__HMCameraClipManager_deleteAllClipsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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
      v14 = "%{public}@[%{public}@] Failed to delete all clips: %@";
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
    v14 = "%{public}@[%{public}@] Successfully deleted all clips";
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

- (void)deleteClipWithUUID:(id)d completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Delete clip"];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [v8 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v36 = v12;
    v37 = 2114;
    v38 = shortDescription;
    v39 = 2112;
    v40 = dCopy;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Deleting clip with UUID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(HMCameraClipManager *)selfCopy profileUniqueIdentifier];
  v17 = [v15 initWithTarget:profileUniqueIdentifier];

  v33 = @"HMCCM.mk.cu";
  v34 = dCopy;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v19 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.dc" destination:v17 payload:v18];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __53__HMCameraClipManager_deleteClipWithUUID_completion___block_invoke;
  v28 = &unk_1E754D030;
  v29 = selfCopy;
  v30 = v8;
  v31 = dCopy;
  v32 = completionCopy;
  v20 = completionCopy;
  v21 = dCopy;
  v22 = v8;
  [v19 setResponseHandler:&v25];
  v23 = [(HMCameraClipManager *)selfCopy context:v25];
  messageDispatcher = [v23 messageDispatcher];
  [messageDispatcher sendMessage:v19 completionHandler:0];
}

void __53__HMCameraClipManager_deleteClipWithUUID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
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
      v14 = *(a1 + 48);
      v22 = 138544130;
      v23 = v11;
      v24 = 2114;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v5;
      v15 = "%{public}@[%{public}@] Failed to delete clip with UUID %@: %@";
      v16 = v10;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 42;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v16, v17, v15, &v22, v18);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v19 = *(a1 + 48);
    v22 = 138543874;
    v23 = v11;
    v24 = 2114;
    v25 = v13;
    v26 = 2112;
    v27 = v19;
    v15 = "%{public}@[%{public}@] Successfully deleted clip with UUID %@";
    v16 = v10;
    v17 = OS_LOG_TYPE_INFO;
    v18 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v20 = [*(a1 + 32) context];
  v21 = [v20 delegateCaller];
  [v21 callCompletion:*(a1 + 56) error:v5];
}

- (void)fetchSignificantEventsWithDateInterval:(id)interval limit:(unint64_t)limit shouldOrderAscending:(BOOL)ascending completion:(id)completion
{
  ascendingCopy = ascending;
  v51 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  completionCopy = completion;
  v12 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch significant events with date interval"];
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v16 = intervalCopy;
    v18 = v17 = ascendingCopy;
    [v12 identifier];
    v19 = v35 = completionCopy;
    shortDescription = [v19 shortDescription];
    *buf = 138544386;
    v42 = v18;
    v43 = 2114;
    v44 = shortDescription;
    v45 = 2112;
    v46 = v16;
    v47 = 2048;
    limitCopy = limit;
    v49 = 1024;
    v50 = v17;
    _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching significant events with date interval: %@ limit: %lu shouldOrderAscending: %d", buf, 0x30u);

    completionCopy = v35;
    ascendingCopy = v17;
    intervalCopy = v16;
  }

  objc_autoreleasePoolPop(v13);
  v21 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(HMCameraClipManager *)selfCopy profileUniqueIdentifier];
  v23 = [v21 initWithTarget:profileUniqueIdentifier];

  v39[0] = @"HMCCM.mk.daf";
  startDate = [intervalCopy startDate];
  v40[0] = startDate;
  v39[1] = @"HMCCM.mk.db";
  endDate = [intervalCopy endDate];
  v40[1] = endDate;
  v39[2] = @"HMCCM.mk.l";
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:limit];
  v40[2] = v26;
  v39[3] = @"HMCCM.mk.soa";
  v27 = [MEMORY[0x1E696AD98] numberWithBool:ascendingCopy];
  v40[3] = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:4];

  fetchClientFactory = [(HMCameraClipManager *)selfCopy fetchClientFactory];
  identifier = [v12 identifier];
  context = [(HMCameraClipManager *)selfCopy context];
  v32 = (fetchClientFactory)[2](fetchClientFactory, identifier, context, @"HMCCM.m.fse", v23);

  [v32 setClassForUnarchiving:objc_opt_class()];
  [v32 setPayload:v28];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __100__HMCameraClipManager_fetchSignificantEventsWithDateInterval_limit_shouldOrderAscending_completion___block_invoke;
  v36[3] = &unk_1E754C418;
  v36[4] = selfCopy;
  v37 = v12;
  v38 = completionCopy;
  v33 = completionCopy;
  v34 = v12;
  [v32 fetchWithCompletion:v36];
}

void __100__HMCameraClipManager_fetchSignificantEventsWithDateInterval_limit_shouldOrderAscending_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v17 = 138543874;
      v18 = v11;
      v19 = 2114;
      v20 = v13;
      v21 = 2048;
      v22 = [v5 count];
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched %lu significant events", &v17, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [*(a1 + 40) identifier];
    v16 = [v15 shortDescription];
    v17 = 138543874;
    v18 = v14;
    v19 = 2114;
    v20 = v16;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch significant events: %@", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))();
}

- (void)fetchAllSignificantEventsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc(MEMORY[0x1E696AB80]);
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v8 = [v5 initWithStartDate:distantPast endDate:distantFuture];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__HMCameraClipManager_fetchAllSignificantEventsWithCompletion___block_invoke;
  v10[3] = &unk_1E754DDD8;
  v11 = completionCopy;
  v9 = completionCopy;
  [(HMCameraClipManager *)self fetchSignificantEventsWithDateInterval:v8 limit:-1 shouldOrderAscending:1 completion:v10];
}

void __63__HMCameraClipManager_fetchAllSignificantEventsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

- (void)fetchSignificantEventsWithUUIDs:(id)ds completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch significant events with UUIDs"];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [v8 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v30 = v12;
    v31 = 2114;
    v32 = shortDescription;
    v33 = 2112;
    v34 = dsCopy;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching significant events with UUIDs %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(HMCameraClipManager *)selfCopy profileUniqueIdentifier];
  v17 = [v15 initWithTarget:profileUniqueIdentifier];

  v27 = @"HMCCM.mk.seu";
  v28 = dsCopy;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v19 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.fse" destination:v17 payload:v18];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __66__HMCameraClipManager_fetchSignificantEventsWithUUIDs_completion___block_invoke;
  v24[3] = &unk_1E754E480;
  v24[4] = selfCopy;
  v25 = v8;
  v26 = completionCopy;
  v20 = completionCopy;
  v21 = v8;
  [v19 setResponseHandler:v24];
  context = [(HMCameraClipManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v19 completionHandler:0];
}

void __66__HMCameraClipManager_fetchSignificantEventsWithUUIDs_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v8 = [v6 hmf_unarchivedObjectForKey:@"HMCCM.mk.se" ofClasses:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = a1[4];
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[5] identifier];
      v15 = [v14 shortDescription];
      *buf = 138543874;
      v27 = v13;
      v28 = 2114;
      v29 = v15;
      v30 = 2112;
      v31 = v8;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched significant events: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = [a1[4] context];
    v17 = [v16 delegateCaller];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __66__HMCameraClipManager_fetchSignificantEventsWithUUIDs_completion___block_invoke_195;
    v23[3] = &unk_1E754E458;
    v25 = a1[6];
    v24 = v8;
    [v17 invokeBlock:v23];

    v18 = v25;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [a1[5] identifier];
      v21 = [v20 shortDescription];
      *buf = 138543874;
      v27 = v19;
      v28 = 2114;
      v29 = v21;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Could not find significant events in response payload %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v22 = a1[6];
    v18 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    v22[2](v22, 0, v18);
  }
}

void __66__HMCameraClipManager_fetchSignificantEventsWithUUIDs_completion___block_invoke_195(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 32)];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)fetchFaceCropDataRepresentationForSignificantEventWithUUID:(id)d completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch face crop image data for significant event"];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [v8 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v31 = v12;
    v32 = 2114;
    v33 = shortDescription;
    v34 = 2112;
    v35 = dCopy;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching face crop image data for significant event with UUID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(HMCameraClipManager *)selfCopy profileUniqueIdentifier];
  v17 = [v15 initWithTarget:profileUniqueIdentifier];

  v28 = @"HMCCM.mk.seu";
  v18 = [MEMORY[0x1E695DFD8] setWithObject:dCopy];
  v29 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

  v20 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.ffcdr" destination:v17 payload:v19];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __93__HMCameraClipManager_fetchFaceCropDataRepresentationForSignificantEventWithUUID_completion___block_invoke;
  v25[3] = &unk_1E754E480;
  v25[4] = selfCopy;
  v26 = v8;
  v27 = completionCopy;
  v21 = completionCopy;
  v22 = v8;
  [v20 setResponseHandler:v25];
  context = [(HMCameraClipManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v20 completionHandler:0];
}

void __93__HMCameraClipManager_fetchFaceCropDataRepresentationForSignificantEventWithUUID_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_dataForKey:@"HMCCM.mk.id"];
  v8 = objc_autoreleasePoolPush();
  v9 = a1[4];
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v12 = v25 = v5;
      v13 = [a1[5] identifier];
      v14 = [v13 shortDescription];
      v15 = [v7 shortDescription];
      *buf = 138543874;
      v33 = v12;
      v34 = 2114;
      v35 = v14;
      v36 = 2112;
      v37 = v15;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched face crop image data: %@", buf, 0x20u);

      v5 = v25;
    }

    objc_autoreleasePoolPop(v8);
    v16 = [a1[4] context];
    v17 = [v16 delegateCaller];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __93__HMCameraClipManager_fetchFaceCropDataRepresentationForSignificantEventWithUUID_completion___block_invoke_190;
    v26[3] = &unk_1E754E458;
    v18 = &v28;
    v28 = a1[6];
    v19 = &v27;
    v27 = v7;
    v20 = v26;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v22 = v21 = v5;
      v23 = [a1[5] identifier];
      v24 = [v23 shortDescription];
      *buf = 138544130;
      v33 = v22;
      v34 = 2114;
      v35 = v24;
      v36 = 2112;
      v37 = v6;
      v38 = 2112;
      v39 = v21;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch face crop image data from response payload %@: %@", buf, 0x2Au);

      v5 = v21;
    }

    objc_autoreleasePoolPop(v8);
    v16 = [a1[4] context];
    v17 = [v16 delegateCaller];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __93__HMCameraClipManager_fetchFaceCropDataRepresentationForSignificantEventWithUUID_completion___block_invoke_189;
    v29[3] = &unk_1E754E458;
    v18 = &v31;
    v31 = a1[6];
    v19 = &v30;
    v30 = v5;
    v20 = v29;
  }

  [v17 invokeBlock:v20];
}

- (void)fetchHeroFrameDataRepresentationForClipWithUUID:(id)d completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch hero frame image data for clip"];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [v8 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v30 = v12;
    v31 = 2114;
    v32 = shortDescription;
    v33 = 2112;
    v34 = dCopy;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching hero frame image data for clip with UUID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(HMCameraClipManager *)selfCopy profileUniqueIdentifier];
  v17 = [v15 initWithTarget:profileUniqueIdentifier];

  v27 = @"HMCCM.mk.cu";
  v28 = dCopy;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v19 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.fhfdr" destination:v17 payload:v18];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __82__HMCameraClipManager_fetchHeroFrameDataRepresentationForClipWithUUID_completion___block_invoke;
  v24[3] = &unk_1E754E480;
  v24[4] = selfCopy;
  v25 = v8;
  v26 = completionCopy;
  v20 = completionCopy;
  v21 = v8;
  [v19 setResponseHandler:v24];
  context = [(HMCameraClipManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v19 completionHandler:0];
}

void __82__HMCameraClipManager_fetchHeroFrameDataRepresentationForClipWithUUID_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_dataForKey:@"HMCCM.mk.id"];
  v8 = objc_autoreleasePoolPush();
  v9 = a1[4];
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v12 = v25 = v5;
      v13 = [a1[5] identifier];
      v14 = [v13 shortDescription];
      v15 = [v7 shortDescription];
      *buf = 138543874;
      v33 = v12;
      v34 = 2114;
      v35 = v14;
      v36 = 2112;
      v37 = v15;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched hero frame image data: %@", buf, 0x20u);

      v5 = v25;
    }

    objc_autoreleasePoolPop(v8);
    v16 = [a1[4] context];
    v17 = [v16 delegateCaller];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __82__HMCameraClipManager_fetchHeroFrameDataRepresentationForClipWithUUID_completion___block_invoke_185;
    v26[3] = &unk_1E754E458;
    v18 = &v28;
    v28 = a1[6];
    v19 = &v27;
    v27 = v7;
    v20 = v26;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v22 = v21 = v5;
      v23 = [a1[5] identifier];
      v24 = [v23 shortDescription];
      *buf = 138544130;
      v33 = v22;
      v34 = 2114;
      v35 = v24;
      v36 = 2112;
      v37 = v6;
      v38 = 2112;
      v39 = v21;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch hero frame image data from response payload %@: %@", buf, 0x2Au);

      v5 = v21;
    }

    objc_autoreleasePoolPop(v8);
    v16 = [a1[4] context];
    v17 = [v16 delegateCaller];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __82__HMCameraClipManager_fetchHeroFrameDataRepresentationForClipWithUUID_completion___block_invoke_184;
    v29[3] = &unk_1E754E458;
    v18 = &v31;
    v31 = a1[6];
    v19 = &v30;
    v30 = v5;
    v20 = v29;
  }

  [v17 invokeBlock:v20];
}

- (void)fetchCountOfClipsWithDateInterval:(id)interval quality:(int64_t)quality completion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  completionCopy = completion;
  v10 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch count of clips with date interval"];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    [v10 identifier];
    v15 = v32 = completionCopy;
    shortDescription = [v15 shortDescription];
    v17 = HMStringFromCameraClipQuality(quality);
    *buf = 138544130;
    v39 = v14;
    v40 = 2114;
    v41 = shortDescription;
    v42 = 2112;
    v43 = intervalCopy;
    v44 = 2112;
    v45 = v17;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching count of clips with date interval: %@ quality: %@", buf, 0x2Au);

    completionCopy = v32;
  }

  objc_autoreleasePoolPop(v11);
  v18 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(HMCameraClipManager *)selfCopy profileUniqueIdentifier];
  v20 = [v18 initWithTarget:profileUniqueIdentifier];

  v36[0] = @"HMCCM.mk.daf";
  startDate = [intervalCopy startDate];
  v37[0] = startDate;
  v36[1] = @"HMCCM.mk.db";
  endDate = [intervalCopy endDate];
  v37[1] = endDate;
  v36[2] = @"HMCCM.mk.v";
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:quality];
  v37[2] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3];

  v25 = MEMORY[0x1E69A2A10];
  v26 = [v24 copy];
  v27 = [v25 messageWithName:@"HMCCM.m.fcoc" destination:v20 payload:v26];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __76__HMCameraClipManager_fetchCountOfClipsWithDateInterval_quality_completion___block_invoke;
  v33[3] = &unk_1E754E480;
  v33[4] = selfCopy;
  v34 = v10;
  v35 = completionCopy;
  v28 = completionCopy;
  v29 = v10;
  [v27 setResponseHandler:v33];
  context = [(HMCameraClipManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v27 completionHandler:0];
}

void __76__HMCameraClipManager_fetchCountOfClipsWithDateInterval_quality_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_numberForKey:@"HMCCM.mk.coc"];
  v8 = objc_autoreleasePoolPush();
  v9 = a1[4];
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[5] identifier];
      v14 = [v13 shortDescription];
      *buf = 138543874;
      v33 = v12;
      v34 = 2114;
      v35 = v14;
      v36 = 2112;
      v37 = v7;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched count of %@ clips", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v15 = [a1[4] context];
    v16 = [v15 delegateCaller];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __76__HMCameraClipManager_fetchCountOfClipsWithDateInterval_quality_completion___block_invoke_180;
    v26 = &unk_1E754E458;
    v17 = &v28;
    v28 = a1[6];
    v18 = &v27;
    v27 = v7;
    v19 = &v23;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [a1[5] identifier];
      v22 = [v21 shortDescription];
      *buf = 138543874;
      v33 = v20;
      v34 = 2114;
      v35 = v22;
      v36 = 2112;
      v37 = v5;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch count of clips: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v15 = [a1[4] context];
    v16 = [v15 delegateCaller];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __76__HMCameraClipManager_fetchCountOfClipsWithDateInterval_quality_completion___block_invoke_179;
    v29[3] = &unk_1E754E458;
    v17 = &v31;
    v31 = a1[6];
    v18 = &v30;
    v30 = v5;
    v19 = v29;
  }

  [v16 invokeBlock:{v19, v23, v24, v25, v26, v27}];
}

- (void)fetchCountOfAllClipsWithCompletion:(id)completion
{
  v4 = MEMORY[0x1E696AB80];
  completionCopy = completion;
  v6 = [v4 alloc];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v9 = [v6 initWithStartDate:distantPast endDate:distantFuture];

  [(HMCameraClipManager *)self fetchCountOfClipsWithDateInterval:v9 completion:completionCopy];
}

- (void)fetchClipsWithDateInterval:(id)interval quality:(int64_t)quality limit:(unint64_t)limit shouldOrderAscending:(BOOL)ascending completion:(id)completion
{
  ascendingCopy = ascending;
  v56 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  completionCopy = completion;
  v11 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch clips with date interval"];
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    identifier = [v11 identifier];
    shortDescription = [identifier shortDescription];
    HMStringFromCameraClipQuality(quality);
    qualityCopy = quality;
    v19 = v18 = limit;
    *buf = 138544642;
    v45 = v15;
    v46 = 2114;
    v47 = shortDescription;
    v48 = 2112;
    v49 = v19;
    v50 = 2112;
    v51 = intervalCopy;
    v52 = 2048;
    v53 = v18;
    v54 = 1024;
    v55 = ascendingCopy;
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching clips with date interval: %@ quality: %@ limit: %lu shouldOrderAscending: %d", buf, 0x3Au);

    limit = v18;
    quality = qualityCopy;
  }

  objc_autoreleasePoolPop(v12);
  v20 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(HMCameraClipManager *)selfCopy profileUniqueIdentifier];
  v35 = [v20 initWithTarget:profileUniqueIdentifier];

  v42[0] = @"HMCCM.mk.daf";
  startDate = [intervalCopy startDate];
  v43[0] = startDate;
  v42[1] = @"HMCCM.mk.db";
  endDate = [intervalCopy endDate];
  v43[1] = endDate;
  v42[2] = @"HMCCM.mk.v";
  v24 = [MEMORY[0x1E696AD98] numberWithInteger:quality];
  v43[2] = v24;
  v42[3] = @"HMCCM.mk.l";
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:limit];
  v43[3] = v25;
  v42[4] = @"HMCCM.mk.soa";
  v26 = [MEMORY[0x1E696AD98] numberWithBool:ascendingCopy];
  v43[4] = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:5];

  fetchClientFactory = [(HMCameraClipManager *)selfCopy fetchClientFactory];
  identifier2 = [v11 identifier];
  context = [(HMCameraClipManager *)selfCopy context];
  v31 = (fetchClientFactory)[2](fetchClientFactory, identifier2, context, @"HMCCM.m.fcs", v35);

  [v31 setClassForUnarchiving:objc_opt_class()];
  [v31 setPayload:v27];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __96__HMCameraClipManager_fetchClipsWithDateInterval_quality_limit_shouldOrderAscending_completion___block_invoke;
  v39[3] = &unk_1E754C418;
  v39[4] = selfCopy;
  v40 = v11;
  v41 = completionCopy;
  v32 = completionCopy;
  v33 = v11;
  [v31 fetchWithCompletion:v39];
}

void __96__HMCameraClipManager_fetchClipsWithDateInterval_quality_limit_shouldOrderAscending_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v17 = 138543874;
      v18 = v11;
      v19 = 2114;
      v20 = v13;
      v21 = 2048;
      v22 = [v5 count];
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched %lu clips", &v17, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [*(a1 + 40) identifier];
    v16 = [v15 shortDescription];
    v17 = 138543874;
    v18 = v14;
    v19 = 2114;
    v20 = v16;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch clips: %@", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))();
}

- (void)fetchAllClipsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc(MEMORY[0x1E696AB80]);
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v8 = [v5 initWithStartDate:distantPast endDate:distantFuture];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__HMCameraClipManager_fetchAllClipsWithCompletion___block_invoke;
  v10[3] = &unk_1E754DDD8;
  v11 = completionCopy;
  v9 = completionCopy;
  [(HMCameraClipManager *)self fetchClipsWithDateInterval:v8 limit:-1 shouldOrderAscending:1 completion:v10];
}

void __51__HMCameraClipManager_fetchAllClipsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

- (void)fetchClipForSignificantEventWithUUID:(id)d completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch clip for significant event"];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [v8 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v37 = v12;
    v38 = 2114;
    v39 = shortDescription;
    v40 = 2112;
    v41 = dCopy;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching clip for significant event with UUID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(HMCameraClipManager *)selfCopy profileUniqueIdentifier];
  v17 = [v15 initWithTarget:profileUniqueIdentifier];

  v34 = @"HMCCM.mk.seu";
  v18 = [MEMORY[0x1E695DFD8] setWithObject:dCopy];
  v35 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];

  v20 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.fcfse" destination:v17 payload:v19];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __71__HMCameraClipManager_fetchClipForSignificantEventWithUUID_completion___block_invoke;
  v29 = &unk_1E754D030;
  v30 = selfCopy;
  v31 = v8;
  v32 = dCopy;
  v33 = completionCopy;
  v21 = dCopy;
  v22 = completionCopy;
  v23 = v8;
  [v20 setResponseHandler:&v26];
  v24 = [(HMCameraClipManager *)selfCopy context:v26];
  messageDispatcher = [v24 messageDispatcher];
  [messageDispatcher sendMessage:v20 completionHandler:0];
}

void __71__HMCameraClipManager_fetchClipForSignificantEventWithUUID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v38[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  v8 = [v6 hmf_unarchivedObjectForKey:@"HMCCM.mk.c" ofClasses:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 40) identifier];
      v15 = [v14 shortDescription];
      v16 = *(a1 + 48);
      *buf = 138544130;
      v31 = v13;
      v32 = 2114;
      v33 = v15;
      v34 = 2112;
      v35 = v16;
      v36 = 2112;
      v37 = v8;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched clip for significant event with UUID %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    v17 = [*(a1 + 32) context];
    v18 = [v17 delegateCaller];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __71__HMCameraClipManager_fetchClipForSignificantEventWithUUID_completion___block_invoke_169;
    v25[3] = &unk_1E754E458;
    v19 = &v27;
    v27 = *(a1 + 56);
    v26 = v8;
    [v18 invokeBlock:v25];

    v20 = v26;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [*(a1 + 40) identifier];
      v23 = [v22 shortDescription];
      *buf = 138543874;
      v31 = v21;
      v32 = 2114;
      v33 = v23;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Could not find clip in response payload: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v20 = [*(a1 + 32) context];
    v24 = [v20 delegateCaller];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __71__HMCameraClipManager_fetchClipForSignificantEventWithUUID_completion___block_invoke_168;
    v28[3] = &unk_1E754E430;
    v19 = &v29;
    v29 = *(a1 + 56);
    [v24 invokeBlock:v28];
  }
}

void __71__HMCameraClipManager_fetchClipForSignificantEventWithUUID_completion___block_invoke_168(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)fetchClipWithUUID:(id)d completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch clip for significant event"];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [v8 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v30 = v12;
    v31 = 2114;
    v32 = shortDescription;
    v33 = 2112;
    v34 = dCopy;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching clip with UUID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v27 = @"HMCCM.mk.cu";
  v28 = dCopy;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v16 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(HMCameraClipManager *)selfCopy profileUniqueIdentifier];
  v18 = [v16 initWithTarget:profileUniqueIdentifier];

  v19 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.fc" destination:v18 payload:v15];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __52__HMCameraClipManager_fetchClipWithUUID_completion___block_invoke;
  v24[3] = &unk_1E754E480;
  v24[4] = selfCopy;
  v25 = v8;
  v26 = completionCopy;
  v20 = completionCopy;
  v21 = v8;
  [v19 setResponseHandler:v24];
  context = [(HMCameraClipManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v19 completionHandler:0];
}

void __52__HMCameraClipManager_fetchClipWithUUID_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v35[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  v8 = [v6 hmf_unarchivedObjectForKey:@"HMCCM.mk.c" ofClasses:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = a1[4];
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[5] identifier];
      v15 = [v14 shortDescription];
      *buf = 138543874;
      v30 = v13;
      v31 = 2114;
      v32 = v15;
      v33 = 2112;
      v34 = v8;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched clip: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = [a1[4] context];
    v17 = [v16 delegateCaller];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __52__HMCameraClipManager_fetchClipWithUUID_completion___block_invoke_166;
    v24[3] = &unk_1E754E458;
    v18 = &v26;
    v26 = a1[6];
    v25 = v8;
    [v17 invokeBlock:v24];

    v19 = v25;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [a1[5] identifier];
      v22 = [v21 shortDescription];
      *buf = 138543874;
      v30 = v20;
      v31 = 2114;
      v32 = v22;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Could not find clip in response payload: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v19 = [a1[4] context];
    v23 = [v19 delegateCaller];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __52__HMCameraClipManager_fetchClipWithUUID_completion___block_invoke_163;
    v27[3] = &unk_1E754E430;
    v18 = &v28;
    v28 = a1[6];
    [v23 invokeBlock:v27];
  }
}

void __52__HMCameraClipManager_fetchClipWithUUID_completion___block_invoke_163(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

- (id)videoSegmentsAssetContextForClip:(id)clip
{
  v27 = *MEMORY[0x1E69E9840];
  clipCopy = clip;
  os_unfair_lock_lock_with_options();
  videoAssetContextsByClipUUID = [(HMCameraClipManager *)self videoAssetContextsByClipUUID];
  uniqueIdentifier = [clipCopy uniqueIdentifier];
  v7 = [videoAssetContextsByClipUUID objectForKeyedSubscript:uniqueIdentifier];

  if (v7)
  {
    expirationDate = [v7 expirationDate];
    date = [MEMORY[0x1E695DF00] date];
    [expirationDate timeIntervalSinceDate:date];
    v11 = v10;

    if (v11 < 120.0)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        uniqueIdentifier2 = [clipCopy uniqueIdentifier];
        uUIDString = [uniqueIdentifier2 UUIDString];
        v21 = 138543874;
        v22 = v15;
        v23 = 2112;
        v24 = uUIDString;
        v25 = 2112;
        v26 = v7;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Video segments asset context for clip UUID %@ has expired: %@", &v21, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      videoAssetContextsByClipUUID2 = [(HMCameraClipManager *)selfCopy videoAssetContextsByClipUUID];
      uniqueIdentifier3 = [clipCopy uniqueIdentifier];
      [videoAssetContextsByClipUUID2 setObject:0 forKeyedSubscript:uniqueIdentifier3];

      v7 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v7;
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
  profileUniqueIdentifier = [(HMCameraClipManager *)selfCopy profileUniqueIdentifier];
  v14 = [v12 initWithTarget:profileUniqueIdentifier];

  v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.pcp" destination:v14 payload:0];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__HMCameraClipManager_performCloudPullWithCompletion___block_invoke;
  v20[3] = &unk_1E754E480;
  v20[4] = selfCopy;
  v21 = v5;
  v22 = completionCopy;
  v16 = completionCopy;
  v17 = v5;
  [v15 setResponseHandler:v20];
  context = [(HMCameraClipManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v15];
}

void __54__HMCameraClipManager_performCloudPullWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
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
  delegateCallersByObservers = [(HMCameraClipManager *)self delegateCallersByObservers];
  v5 = [delegateCallersByObservers count];

  delegateCallersByObservers2 = [(HMCameraClipManager *)self delegateCallersByObservers];
  [delegateCallersByObservers2 removeObjectForKey:observerCopy];

  delegateCallersByObservers3 = [(HMCameraClipManager *)self delegateCallersByObservers];
  v8 = [delegateCallersByObservers3 count];

  os_unfair_lock_unlock(&self->_lock);
  if (!v8 && v5)
  {
    [(HMCameraClipManager *)self unsubscribe];
  }
}

- (void)addObserver:(id)observer queue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  os_unfair_lock_lock_with_options();
  delegateCallersByObservers = [(HMCameraClipManager *)self delegateCallersByObservers];
  v8 = [delegateCallersByObservers count];

  if (queueCopy)
  {
    delegateCaller = [[HMDelegateCaller alloc] initWithQueue:queueCopy];
  }

  else
  {
    context = [(HMCameraClipManager *)self context];
    delegateCaller = [context delegateCaller];
  }

  delegateCallersByObservers2 = [(HMCameraClipManager *)self delegateCallersByObservers];
  [delegateCallersByObservers2 setObject:delegateCaller forKey:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
  if (!v8)
  {
    [(HMCameraClipManager *)self subscribe];
  }
}

- (void)dealloc
{
  keyEnumerator = [(NSMapTable *)self->_delegateCallersByObservers keyEnumerator];
  nextObject = [keyEnumerator nextObject];

  if (nextObject)
  {
    [(HMCameraClipManager *)self unsubscribe];
  }

  context = [(HMCameraClipManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  v7.receiver = self;
  v7.super_class = HMCameraClipManager;
  [(HMCameraClipManager *)&v7 dealloc];
}

- (HMCameraClipManager)initWithContext:(id)context profileUniqueIdentifier:(id)identifier zoneName:(id)name notificationCenter:(id)center
{
  contextCopy = context;
  identifierCopy = identifier;
  nameCopy = name;
  centerCopy = center;
  if (!contextCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!identifierCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!nameCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v15 = centerCopy;
  if (!centerCopy)
  {
LABEL_11:
    v32 = _HMFPreconditionFailure();
    return __91__HMCameraClipManager_initWithContext_profileUniqueIdentifier_zoneName_notificationCenter___block_invoke(v32, v33, v34, v35, v36);
  }

  v37.receiver = self;
  v37.super_class = HMCameraClipManager;
  v16 = [(HMCameraClipManager *)&v37 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_context, context);
    v18 = [identifierCopy copy];
    profileUniqueIdentifier = v17->_profileUniqueIdentifier;
    v17->_profileUniqueIdentifier = v18;

    v20 = [nameCopy copy];
    zoneName = v17->_zoneName;
    v17->_zoneName = v20;

    objc_storeStrong(&v17->_notificationCenter, center);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    clipsByFetchUUID = v17->_clipsByFetchUUID;
    v17->_clipsByFetchUUID = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    significantEventsByFetchUUID = v17->_significantEventsByFetchUUID;
    v17->_significantEventsByFetchUUID = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    videoAssetContextsByClipUUID = v17->_videoAssetContextsByClipUUID;
    v17->_videoAssetContextsByClipUUID = dictionary3;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    delegateCallersByObservers = v17->_delegateCallersByObservers;
    v17->_delegateCallersByObservers = weakToStrongObjectsMapTable;

    fetchClientFactory = v17->_fetchClientFactory;
    v17->_fetchClientFactory = &__block_literal_global_47985;
  }

  return v17;
}

HMCameraObjectFetchClient *__91__HMCameraClipManager_initWithContext_profileUniqueIdentifier_zoneName_notificationCenter___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = [[HMCameraObjectFetchClient alloc] initWithUUID:v11 context:v10 messageName:v9 destination:v8];

  return v12;
}

- (HMCameraClipManager)initWithContext:(id)context profileUniqueIdentifier:(id)identifier zoneName:(id)name home:(id)home
{
  v9 = MEMORY[0x1E696AD88];
  nameCopy = name;
  identifierCopy = identifier;
  contextCopy = context;
  defaultCenter = [v9 defaultCenter];
  v14 = [(HMCameraClipManager *)self initWithContext:contextCopy profileUniqueIdentifier:identifierCopy zoneName:nameCopy notificationCenter:defaultCenter];

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t67 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t67, &__block_literal_global_246);
  }

  v3 = logCategory__hmf_once_v68;

  return v3;
}

uint64_t __34__HMCameraClipManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v68;
  logCategory__hmf_once_v68 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)zoneNameForRecordingManagementServiceUUID:(id)d
{
  v3 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:d identifierSalt:0 withSalts:0];
  uUIDString = [v3 UUIDString];
  v5 = [@"camera-clips-" stringByAppendingString:uUIDString];

  return v5;
}

@end