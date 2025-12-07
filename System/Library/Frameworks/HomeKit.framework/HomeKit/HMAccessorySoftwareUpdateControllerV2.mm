@interface HMAccessorySoftwareUpdateControllerV2
+ (id)accessoryUUIDsForAccessoryIdentifiers:(id)identifiers home:(id)home;
+ (id)logCategory;
+ (id)softwareUpdateFromSoftwareUpdateV2:(id)v2;
+ (id)topicFiltersForAccessoryIdentifiers:(id)identifiers home:(id)home;
- (HMAccessorySoftwareUpdateControllerV2)initWithContext:(id)context home:(id)home subscriptionProvider:(id)provider documentationManager:(id)manager;
- (HMAccessorySoftwareUpdateControllerV2Delegate)delegate;
- (HMHome)home;
- (id)messageDestinationForAccessory:(id)accessory;
- (id)softwareUpdateForAccessory:(id)accessory withDescriptor:(id)descriptor;
- (id)softwareUpdateProgressForAccessory:(id)accessory withProgress:(id)progress;
- (void)applySoftwareUpdate:(id)update accessory:(id)accessory completion:(id)completion;
- (void)didReceiveCachedEvent:(id)event topic:(id)topic source:(id)source;
- (void)didReceiveEvent:(id)event topic:(id)topic;
- (void)fetchDocumentationFromMetadata:(id)metadata completion:(id)completion;
- (void)handleDidReceiveDescriptorEvent:(id)event forAccessory:(id)accessory;
- (void)handleDidReceiveEvent:(id)event topic:(id)topic;
- (void)handleDidReceiveProgressEvent:(id)event forAccessory:(id)accessory;
- (void)scanForSoftwareUpdateOnAccessories:(id)accessories withOptions:(unint64_t)options completion:(id)completion;
- (void)scanForSoftwareUpdateRepeatedlyOnAccessory:(id)accessory andInstallUpdate:(BOOL)update;
- (void)subscribe:(id)subscribe completion:(id)completion;
- (void)unsubscribe:(id)unsubscribe;
@end

@implementation HMAccessorySoftwareUpdateControllerV2

- (HMHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMAccessorySoftwareUpdateControllerV2Delegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didReceiveCachedEvent:(id)event topic:(id)topic source:(id)source
{
  v23 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  topicCopy = topic;
  sourceCopy = source;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = 138544130;
    v16 = v14;
    v17 = 2112;
    v18 = eventCopy;
    v19 = 2112;
    v20 = topicCopy;
    v21 = 2112;
    v22 = sourceCopy;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Did receive cached event: %@, topic: %@, source: %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy handleDidReceiveEvent:eventCopy topic:topicCopy];
}

- (void)didReceiveEvent:(id)event topic:(id)topic
{
  v18 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  topicCopy = topic;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543874;
    v13 = v11;
    v14 = 2112;
    v15 = eventCopy;
    v16 = 2112;
    v17 = topicCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Did receive event: %@, topic: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy handleDidReceiveEvent:eventCopy topic:topicCopy];
}

- (id)messageDestinationForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  home = [(HMAccessorySoftwareUpdateControllerV2 *)self home];
  v6 = [home accessoryWithUUID:accessoryCopy];

  v7 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [v6 messageTargetUUID];
  v9 = [v7 initWithTarget:messageTargetUUID];

  return v9;
}

- (id)softwareUpdateForAccessory:(id)accessory withDescriptor:(id)descriptor
{
  v21 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  descriptorCopy = descriptor;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v11;
    v17 = 2112;
    v18 = accessoryCopy;
    v19 = 2112;
    v20 = descriptorCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Creating HMSoftwareUpdateV2 for accessory: %@, descriptor: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  v12 = [HMSoftwareUpdateV2 softwareUpdateFromDescriptor:descriptorCopy];
  softwareUpdateByAccessory = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy softwareUpdateByAccessory];
  [softwareUpdateByAccessory setObject:v12 forKeyedSubscript:accessoryCopy];

  os_unfair_lock_unlock(&selfCopy->_lock);

  return v12;
}

- (id)softwareUpdateProgressForAccessory:(id)accessory withProgress:(id)progress
{
  v31 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  progressCopy = progress;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v25 = 138543874;
    v26 = v11;
    v27 = 2112;
    v28 = accessoryCopy;
    v29 = 2112;
    v30 = progressCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Creating HMSoftwareUpdateV2 for accessory: %@, progress: %@", &v25, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  softwareUpdateByAccessory = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy softwareUpdateByAccessory];
  v13 = [softwareUpdateByAccessory objectForKeyedSubscript:accessoryCopy];

  if (v13)
  {
    v14 = [HMSoftwareUpdateProgressV2 alloc];
    [progressCopy percentageComplete];
    v16 = v15;
    [progressCopy estimatedTimeRemaining];
    v18 = v17;
    LODWORD(v17) = v16;
    v19 = [(HMSoftwareUpdateProgressV2 *)v14 initWithPercentageComplete:v17 estimatedTimeRemaining:v18];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v23;
      v27 = 2112;
      v28 = accessoryCopy;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Attempted to update progress without existing software update for accessory: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  os_unfair_lock_unlock(&selfCopy->_lock);

  return v19;
}

- (void)handleDidReceiveProgressEvent:(id)event forAccessory:(id)accessory
{
  v46 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  accessoryCopy = accessory;
  delegate = [(HMAccessorySoftwareUpdateControllerV2 *)self delegate];
  v9 = objc_opt_respondsToSelector();

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v14;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling did receive progress event", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [HMSoftwareUpdateProgress progressFromEvent:eventCopy];
    if (v15)
    {
      home = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy home];
      v17 = [home accessoryWithUUID:accessoryCopy];
      uniqueIdentifier = [v17 uniqueIdentifier];

      if (uniqueIdentifier)
      {
        v19 = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy softwareUpdateProgressForAccessory:accessoryCopy withProgress:v15];
        if (v19)
        {
          v20 = objc_autoreleasePoolPush();
          v21 = selfCopy;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = HMFGetLogIdentifier();
            *buf = 138543874;
            v41 = v23;
            v42 = 2112;
            v43 = uniqueIdentifier;
            v44 = 2112;
            v45 = v19;
            _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Telling delegate that accessory did receive software update progress. Accessory: %@, progress:\n%@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v20);
          context = [(HMAccessorySoftwareUpdateControllerV2 *)v21 context];
          delegateCaller = [context delegateCaller];
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __84__HMAccessorySoftwareUpdateControllerV2_handleDidReceiveProgressEvent_forAccessory___block_invoke;
          v37[3] = &unk_1E754E5E8;
          v37[4] = v21;
          v38 = uniqueIdentifier;
          v39 = v19;
          [delegateCaller invokeBlock:v37];
        }
      }

      else
      {
        v33 = objc_autoreleasePoolPush();
        v34 = selfCopy;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543618;
          v41 = v36;
          v42 = 2112;
          v43 = accessoryCopy;
          _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to find accessory with uuid: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v41 = v32;
        v42 = 2112;
        v43 = eventCopy;
        _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse progress from event: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
    }
  }

  else
  {
    if (v13)
    {
      v26 = HMFGetLogIdentifier();
      v27 = NSStringFromSelector(sel_softwareUpdateController_accessory_didUpdateProgress_);
      delegate2 = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy delegate];
      *buf = 138543874;
      v41 = v26;
      v42 = 2112;
      v43 = v27;
      v44 = 2112;
      v45 = delegate2;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Delegate does not respond to %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

void __84__HMAccessorySoftwareUpdateControllerV2_handleDidReceiveProgressEvent_forAccessory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 softwareUpdateController:*(a1 + 32) accessory:*(a1 + 40) didUpdateProgress:*(a1 + 48)];
}

- (void)handleDidReceiveDescriptorEvent:(id)event forAccessory:(id)accessory
{
  v41 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  accessoryCopy = accessory;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v11;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling did receive descriptor event", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [HMSoftwareUpdateDescriptor descriptorFromEvent:eventCopy];
  if (v12)
  {
    home = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy home];
    v14 = [home accessoryWithUUID:accessoryCopy];
    uniqueIdentifier = [v14 uniqueIdentifier];

    if (uniqueIdentifier)
    {
      v16 = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy softwareUpdateForAccessory:accessoryCopy withDescriptor:v12];
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v36 = v20;
        v37 = 2112;
        v38 = uniqueIdentifier;
        v39 = 2112;
        v40 = v16;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Telling delegate that accessory did receive software update. Accessory: %@, update:\n%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      context = [(HMAccessorySoftwareUpdateControllerV2 *)v18 context];
      delegateCaller = [context delegateCaller];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __86__HMAccessorySoftwareUpdateControllerV2_handleDidReceiveDescriptorEvent_forAccessory___block_invoke;
      v32[3] = &unk_1E754E5E8;
      v32[4] = v18;
      v33 = uniqueIdentifier;
      v34 = v16;
      v23 = v16;
      [delegateCaller invokeBlock:v32];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v31;
        v37 = 2112;
        v38 = accessoryCopy;
        _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to find accessory with uuid: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v27;
      v37 = 2112;
      v38 = eventCopy;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse descriptor from event: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
  }
}

void __86__HMAccessorySoftwareUpdateControllerV2_handleDidReceiveDescriptorEvent_forAccessory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 softwareUpdateController:*(a1 + 32) accessory:*(a1 + 40) didReceiveUpdate:*(a1 + 48)];
}

- (void)handleDidReceiveEvent:(id)event topic:(id)topic
{
  v17 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  topicCopy = topic;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v11;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling did receive event", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [HMEventTopicHelper decodeTopic:topicCopy];
  asAccessoryTopic = [v12 asAccessoryTopic];

  if (asAccessoryTopic)
  {
    if ([asAccessoryTopic accessoryEventTopicSuffixID] == 506)
    {
      accessoryUUID = [asAccessoryTopic accessoryUUID];
      [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy handleDidReceiveDescriptorEvent:eventCopy forAccessory:accessoryUUID];
LABEL_8:

      goto LABEL_9;
    }

    if ([asAccessoryTopic accessoryEventTopicSuffixID] == 507)
    {
      accessoryUUID = [asAccessoryTopic accessoryUUID];
      [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy handleDidReceiveProgressEvent:eventCopy forAccessory:accessoryUUID];
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)scanForSoftwareUpdateRepeatedlyOnAccessory:(id)accessory andInstallUpdate:(BOOL)update
{
  updateCopy = update;
  v34 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v10;
    v32 = 2112;
    v33 = accessoryCopy;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Scanning for software update repeatedly on accessory with identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  home = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy home];
  v12 = [home accessoryWithUniqueIdentifier:accessoryCopy];
  uuid = [v12 uuid];

  if (uuid)
  {
    v28 = @"HMAccessorySoftwareUpdateControllerV2MessageKeyShouldApplyUpdate";
    v14 = [MEMORY[0x1E696AD98] numberWithBool:updateCopy];
    v29 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

    v16 = MEMORY[0x1E69A2A10];
    v17 = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy messageDestinationForAccessory:uuid];
    v18 = [v16 messageWithName:@"HMAccessorySoftwareUpdateControllerV2ScanRepeatedlyAndApplyMessage" destination:v17 payload:v15];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __101__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateRepeatedlyOnAccessory_andInstallUpdate___block_invoke;
    v25[3] = &unk_1E754E0A8;
    v25[4] = selfCopy;
    v26 = accessoryCopy;
    v27 = uuid;
    [v18 setResponseHandler:v25];
    context = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy context];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v18];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = accessoryCopy;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@SRAISU: Failed to find accessory for uniqueIdentifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }
}

void __101__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateRepeatedlyOnAccessory_andInstallUpdate___block_invoke(uint64_t a1, void *a2, void *a3)
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
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v19 = 138544130;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v5;
      v14 = "%{public}@SRAISU: Failed to initiate scanning for updates repeatedly on accessory with identifier: %@ UUID: %@ error: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, &v19, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v19 = 138544130;
    v20 = v11;
    v21 = 2112;
    v22 = v17;
    v23 = 2112;
    v24 = v18;
    v25 = 2112;
    v26 = 0;
    v14 = "%{public}@SRAISU: Successfully started scanning for updates repeatedly on accessory with identifier: %@ UUID: %@ error: %@";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
}

- (void)unsubscribe:(id)unsubscribe
{
  v25 = *MEMORY[0x1E69E9840];
  unsubscribeCopy = unsubscribe;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v8;
    v23 = 2112;
    v24 = unsubscribeCopy;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing from accessories with identifiers: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([unsubscribeCopy hmf_isEmpty])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = selfCopy;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v12;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing from all topics", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    subscriptionProvider = [(HMAccessorySoftwareUpdateControllerV2 *)v10 subscriptionProvider];
    [subscriptionProvider unregisterConsumer:v10 completion:0];
  }

  else
  {
    v14 = objc_opt_class();
    home = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy home];
    subscriptionProvider = [v14 topicFiltersForAccessoryIdentifiers:unsubscribeCopy home:home];

    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v19;
      v23 = 2112;
      v24 = subscriptionProvider;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing from topicFilters: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    subscriptionProvider2 = [(HMAccessorySoftwareUpdateControllerV2 *)v17 subscriptionProvider];
    [subscriptionProvider2 unregisterConsumer:v17 topicFilters:subscriptionProvider completion:0];
  }
}

- (void)fetchDocumentationFromMetadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  metadataCopy = metadata;
  documentationManager = [(HMAccessorySoftwareUpdateControllerV2 *)self documentationManager];
  [documentationManager documentationForMetadata:metadataCopy completion:completionCopy];
}

- (void)applySoftwareUpdate:(id)update accessory:(id)accessory completion:(id)completion
{
  v57 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  accessoryCopy = accessory;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v52 = v14;
    v53 = 2112;
    v54 = updateCopy;
    v55 = 2112;
    v56 = accessoryCopy;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Applying software update: %@ on accessory with identifier: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  version = [updateCopy version];

  if (version)
  {
    v16 = [objc_opt_class() softwareUpdateFromSoftwareUpdateV2:updateCopy];
    home = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy home];
    v18 = [home accessoryWithUniqueIdentifier:accessoryCopy];
    uuid = [v18 uuid];

    if (uuid)
    {
      v49 = @"update";
      v20 = encodeRootObject(v16);
      v50 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];

      v22 = MEMORY[0x1E69A2A10];
      v23 = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy messageDestinationForAccessory:uuid];
      v24 = [v22 messageWithName:@"HMSU.su" destination:v23 payload:v21];

      v39 = MEMORY[0x1E69E9820];
      v40 = 3221225472;
      v41 = __82__HMAccessorySoftwareUpdateControllerV2_applySoftwareUpdate_accessory_completion___block_invoke_2;
      v42 = &unk_1E754DE00;
      v43 = selfCopy;
      v44 = completionCopy;
      [v24 setResponseHandler:&v39];
      v25 = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy context:v39];
      messageDispatcher = [v25 messageDispatcher];
      [messageDispatcher sendMessage:v24];
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        v52 = v36;
        v53 = 2112;
        v54 = accessoryCopy;
        _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to find accessory for uniqueIdentifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      context = [(HMAccessorySoftwareUpdateControllerV2 *)v34 context];
      delegateCaller = [context delegateCaller];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __82__HMAccessorySoftwareUpdateControllerV2_applySoftwareUpdate_accessory_completion___block_invoke_50;
      v45[3] = &unk_1E754E430;
      v46 = completionCopy;
      [delegateCaller invokeBlock:v45];

      v21 = v46;
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v30;
      v53 = 2112;
      v54 = updateCopy;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@Cannot apply software update with no version: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    context2 = [(HMAccessorySoftwareUpdateControllerV2 *)v28 context];
    delegateCaller2 = [context2 delegateCaller];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __82__HMAccessorySoftwareUpdateControllerV2_applySoftwareUpdate_accessory_completion___block_invoke;
    v47[3] = &unk_1E754E430;
    v48 = completionCopy;
    [delegateCaller2 invokeBlock:v47];

    v16 = v48;
  }
}

void __82__HMAccessorySoftwareUpdateControllerV2_applySoftwareUpdate_accessory_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
  (*(v1 + 16))(v1, v2);
}

void __82__HMAccessorySoftwareUpdateControllerV2_applySoftwareUpdate_accessory_completion___block_invoke_50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
  (*(v1 + 16))(v1, v2);
}

void __82__HMAccessorySoftwareUpdateControllerV2_applySoftwareUpdate_accessory_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
      v12 = "%{public}@Failed to start software update with error: %@";
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
    v12 = "%{public}@Successfully started software update";
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
  v20[2] = __82__HMAccessorySoftwareUpdateControllerV2_applySoftwareUpdate_accessory_completion___block_invoke_51;
  v20[3] = &unk_1E754E458;
  v18 = *(a1 + 40);
  v21 = v5;
  v22 = v18;
  v19 = v5;
  [v17 invokeBlock:v20];
}

- (void)scanForSoftwareUpdateOnAccessories:(id)accessories withOptions:(unint64_t)options completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  accessoriesCopy = accessories;
  completionCopy = completion;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543874;
    v31 = v13;
    v32 = 2112;
    v33 = accessoriesCopy;
    v34 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Scanning for software update on accessories: %@ with options: %lu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = objc_opt_class();
  home = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy home];
  v16 = [v14 accessoryUUIDsForAccessoryIdentifiers:accessoriesCopy home:home];
  v17 = [v16 na_map:&__block_literal_global_33];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __99__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateOnAccessories_withOptions_completion___block_invoke_2;
  v29[3] = &unk_1E7547278;
  v29[4] = selfCopy;
  v29[5] = options;
  v18 = [v17 na_map:v29];
  v19 = MEMORY[0x1E69B3780];
  v20 = MEMORY[0x1E69B3790];
  context = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy context];
  queue = [context queue];
  v23 = [v20 schedulerWithDispatchQueue:queue];
  v24 = [v19 combineAllFutures:v18 scheduler:v23];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __99__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateOnAccessories_withOptions_completion___block_invoke_42;
  v27[3] = &unk_1E75472C0;
  v27[4] = selfCopy;
  v28 = completionCopy;
  v25 = completionCopy;
  v26 = [v24 addCompletionBlock:v27];
}

id __99__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateOnAccessories_withOptions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69A2A10];
  v19 = @"HMAccessorySoftwareUpdateControllerV2MessageKeyScanOptions";
  v4 = MEMORY[0x1E696AD98];
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v4 numberWithUnsignedInteger:v5];
  v20[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v9 = [v3 messageWithName:@"HMAccessorySoftwareUpdateControllerV2ScanMessage" destination:v6 payload:v8];

  v10 = objc_alloc_init(MEMORY[0x1E69B3780]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __99__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateOnAccessories_withOptions_completion___block_invoke_3;
  v17[3] = &unk_1E754E570;
  v17[4] = *(a1 + 32);
  v11 = v10;
  v18 = v11;
  [v9 setResponseHandler:v17];
  v12 = [*(a1 + 32) context];
  v13 = [v12 messageDispatcher];
  [v13 sendMessage:v9];

  v14 = v18;
  v15 = v11;

  return v11;
}

void __99__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateOnAccessories_withOptions_completion___block_invoke_42(uint64_t a1, void *a2)
{
  v3 = [a2 na_any:&__block_literal_global_46];
  v4 = [*(a1 + 32) context];
  v5 = [v4 delegateCaller];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateOnAccessories_withOptions_completion___block_invoke_3_47;
  v7[3] = &unk_1E7548108;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v9 = v3;
  v8 = v6;
  [v5 invokeBlock:v7];
}

uint64_t __99__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateOnAccessories_withOptions_completion___block_invoke_3_47(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = HMFBooleanToString();
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling completion with didFindUpdate: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return (*(*(a1 + 40) + 16))();
}

void __99__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateOnAccessories_withOptions_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v21 = 138543362;
    v22 = v10;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Received response for HMAccessorySoftwareUpdateControllerV2ScanMessage", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Scan message failed with error: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [*(a1 + 40) finishWithResult:MEMORY[0x1E695E110]];
  }

  else
  {
    v15 = [v6 hmf_numberForKey:@"HMAccessorySoftwareUpdateControllerV2MessageKeyScanDidFindUpdate"];
    v16 = v15;
    if (!v15)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 32);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v20;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Message did not contain required key in response: HMAccessorySoftwareUpdateControllerV2MessageKeyScanDidFindUpdate", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v16 = MEMORY[0x1E695E110];
    }

    [*(a1 + 40) finishWithResult:v16];
  }
}

id __99__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateOnAccessories_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69A2A00];
  v3 = a2;
  v4 = [[v2 alloc] initWithTarget:v3];

  return v4;
}

- (void)subscribe:(id)subscribe completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  subscribeCopy = subscribe;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v11;
    v28 = 2112;
    v29 = subscribeCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Subscribing to accessories with identifiers: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  home = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy home];
  if (home)
  {
    v13 = [objc_opt_class() topicFiltersForAccessoryIdentifiers:subscribeCopy home:home];
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v17;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Subscribing to topicFilters: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    subscriptionProvider = [(HMAccessorySoftwareUpdateControllerV2 *)v15 subscriptionProvider];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __62__HMAccessorySoftwareUpdateControllerV2_subscribe_completion___block_invoke;
    v23[3] = &unk_1E754A418;
    v23[4] = v15;
    v25 = completionCopy;
    v24 = home;
    [subscriptionProvider registerConsumer:v15 topicFilters:v13 completion:v23];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v22;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cannot subscribe for updates on nil home", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }
}

void __62__HMAccessorySoftwareUpdateControllerV2_subscribe_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error: %@, ", v6];
  }

  else
  {
    v7 = &stru_1F0E92498;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = a1[4];
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v29 = v11;
    v30 = 2112;
    v31 = v7;
    v32 = 2112;
    v33 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Subscribed with %@cachedEvents: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [a1[4] context];
  v13 = [v12 delegateCaller];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __62__HMAccessorySoftwareUpdateControllerV2_subscribe_completion___block_invoke_20;
  v25[3] = &unk_1E754E458;
  v27 = a1[6];
  v14 = v6;
  v26 = v14;
  [v13 invokeBlock:v25];

  if ([v5 count])
  {
    v15 = [a1[5] uuid];
    v16 = [v15 UUIDString];
    v17 = [@"Home.su." stringByAppendingString:v16];

    v18 = [a1[5] homeManager];
    [v18 notifyDelegateOfBatchNotificationsStartWithReason:v17];
    v19 = objc_autoreleasePoolPush();
    v20 = [v5 na_filter:&__block_literal_global_9380];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __62__HMAccessorySoftwareUpdateControllerV2_subscribe_completion___block_invoke_3;
    v24[3] = &unk_1E7547230;
    v24[4] = a1[4];
    [v20 na_each:v24];

    objc_autoreleasePoolPop(v19);
    v21 = objc_autoreleasePoolPush();
    v22 = [v5 na_filter:&__block_literal_global_29];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __62__HMAccessorySoftwareUpdateControllerV2_subscribe_completion___block_invoke_5;
    v23[3] = &unk_1E7547230;
    v23[4] = a1[4];
    [v22 na_each:v23];

    objc_autoreleasePoolPop(v21);
    [v18 notifyDelegateOfBatchNotificationsEndWithReason:v17];
  }
}

BOOL __62__HMAccessorySoftwareUpdateControllerV2_subscribe_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = [HMEventTopicHelper decodeTopic:a2];
  v3 = [v2 asAccessoryTopic];

  v4 = [v3 accessoryEventTopicSuffixID] == 507;
  return v4;
}

BOOL __62__HMAccessorySoftwareUpdateControllerV2_subscribe_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [HMEventTopicHelper decodeTopic:a2];
  v3 = [v2 asAccessoryTopic];

  v4 = [v3 accessoryEventTopicSuffixID] == 506;
  return v4;
}

- (HMAccessorySoftwareUpdateControllerV2)initWithContext:(id)context home:(id)home subscriptionProvider:(id)provider documentationManager:(id)manager
{
  contextCopy = context;
  homeCopy = home;
  providerCopy = provider;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = HMAccessorySoftwareUpdateControllerV2;
  v15 = [(HMAccessorySoftwareUpdateControllerV2 *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_context, context);
    objc_storeStrong(&v16->_subscriptionProvider, provider);
    objc_storeWeak(&v16->_home, homeCopy);
    objc_storeStrong(&v16->_documentationManager, manager);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    softwareUpdateByAccessory = v16->_softwareUpdateByAccessory;
    v16->_softwareUpdateByAccessory = dictionary;
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t40 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t40, &__block_literal_global_64);
  }

  v3 = logCategory__hmf_once_v41;

  return v3;
}

uint64_t __52__HMAccessorySoftwareUpdateControllerV2_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v41;
  logCategory__hmf_once_v41 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)softwareUpdateFromSoftwareUpdateV2:(id)v2
{
  v2Copy = v2;
  v4 = [HMSoftwareUpdate alloc];
  version = [v2Copy version];
  downloadSize = [v2Copy downloadSize];
  documentationMetadata = [v2Copy documentationMetadata];

  v8 = [(HMSoftwareUpdate *)v4 initWithVersion:version downloadSize:downloadSize state:2 documentationMetadata:documentationMetadata];

  return v8;
}

+ (id)accessoryUUIDsForAccessoryIdentifiers:(id)identifiers home:(id)home
{
  v25 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  homeCopy = home;
  allObjects = [identifiersCopy allObjects];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84__HMAccessorySoftwareUpdateControllerV2_accessoryUUIDsForAccessoryIdentifiers_home___block_invoke;
  v17[3] = &unk_1E7547310;
  v9 = homeCopy;
  v18 = v9;
  v10 = [allObjects na_map:v17];

  v11 = [v10 count];
  if (v11 != [identifiersCopy count])
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = identifiersCopy;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert all identifiers to uuids. Identifiers: %@, uuids: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }

  return v10;
}

id __84__HMAccessorySoftwareUpdateControllerV2_accessoryUUIDsForAccessoryIdentifiers_home___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) accessoryWithUniqueIdentifier:a2];
  v3 = [v2 uuid];

  return v3;
}

+ (id)topicFiltersForAccessoryIdentifiers:(id)identifiers home:(id)home
{
  homeCopy = home;
  allObjects = [identifiers allObjects];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__HMAccessorySoftwareUpdateControllerV2_topicFiltersForAccessoryIdentifiers_home___block_invoke;
  v11[3] = &unk_1E75472E8;
  v12 = homeCopy;
  selfCopy = self;
  v8 = homeCopy;
  v9 = [allObjects na_flatMap:v11];

  return v9;
}

id __82__HMAccessorySoftwareUpdateControllerV2_topicFiltersForAccessoryIdentifiers_home___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) accessoryWithUniqueIdentifier:v3];
  v5 = [v4 uuid];

  if (v5)
  {
    v6 = [*(a1 + 32) uuid];
    v7 = [HMAccessoryEventTopic topicFromSuffixID:506 homeUUID:v6 accessoryUUID:v5];
    v8 = [*(a1 + 32) uuid];
    v9 = [HMAccessoryEventTopic topicFromSuffixID:507 homeUUID:v8 accessoryUUID:v5];
    v16[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to find accessory UUID for uniqueIdentifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  return v10;
}

@end