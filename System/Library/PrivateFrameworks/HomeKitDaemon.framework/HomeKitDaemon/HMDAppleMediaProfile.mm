@interface HMDAppleMediaProfile
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
- (BOOL)_updatePlayback:(id)playback;
- (BOOL)_updateRefreshPlayback:(id)playback;
- (HMDAppleMediaAccessory)mediaAccessory;
- (HMDAppleMediaProfile)initWithAccessory:(id)accessory uniqueIdentifier:(id)identifier services:(id)services workQueue:(id)queue;
- (HMDMediaSystem)mediaSystem;
- (void)_handleSetValue:(id)value withRequestProperty:(id)property withCompletionHandler:(id)handler;
- (void)configureWithMessageDispatcher:(id)dispatcher configurationTracker:(id)tracker;
- (void)didFinishLoadingRequestForController:(id)controller;
- (void)didUpdateSleepWakeState:(unint64_t)state;
- (void)registerForMessages;
- (void)sessionAudioControlUpdated:(id)updated;
- (void)setMediaSession:(id)session;
- (void)setMediaSystem:(id)system;
@end

@implementation HMDAppleMediaProfile

- (void)didUpdateSleepWakeState:(unint64_t)state
{
  v54[2] = *MEMORY[0x277D85DE8];
  mediaSession = [(HMDMediaProfile *)self mediaSession];
  v6 = mediaSession;
  if (mediaSession)
  {
    v7 = MEMORY[0x277CBEB38];
    v53[0] = *MEMORY[0x277CD09A8];
    uuid = [mediaSession uuid];
    uUIDString = [uuid UUIDString];
    v53[1] = @"force-notify";
    v54[0] = uUIDString;
    v54[1] = MEMORY[0x277CBEC38];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
    v11 = [v7 dictionaryWithDictionary:v10];

    if (state)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
      [v11 setValue:v12 forKey:*MEMORY[0x277CD09A0]];
    }

    v13 = objc_msgSend_copy(v11);
    [(HMDMediaProfile *)self handleSessionUpdatedNotification:v13];

    accessory = [(HMDAccessoryProfile *)self accessory];
    home = [accessory home];
    uuid2 = [home uuid];

    if (uuid2)
    {
      v46 = v11;
      v17 = [objc_alloc(MEMORY[0x277CD1730]) initWithSleepWakeState:state];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v19 = v18;
      v20 = objc_alloc(MEMORY[0x277D174B0]);
      uuid3 = [accessory uuid];
      uUIDString2 = [uuid3 UUIDString];
      v23 = [v20 initWithSource:uUIDString2 cachePolicy:2 combineType:2 timestamp:v19];

      v24 = objc_alloc(MEMORY[0x277D174A0]);
      v45 = v17;
      protoData = [v17 protoData];
      v44 = v23;
      v26 = [v24 initWithEventData:protoData metadata:v23];

      v27 = MEMORY[0x277CD16F0];
      v28 = *MEMORY[0x277CCEA90];
      uuid4 = [accessory uuid];
      v30 = [v27 topicFromSuffixID:v28 homeUUID:uuid2 accessoryUUID:uuid4];

      eventForwarder = [(HMDMediaProfile *)self eventForwarder];
      [eventForwarder forwardEvent:v26 topic:v30 completion:0];

      v32 = objc_autoreleasePoolPush();
      selfCopy = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        [v6 uuid];
        v36 = v43 = uuid2;
        [v36 UUIDString];
        v37 = v42 = v26;
        *buf = 138543874;
        v48 = v35;
        v49 = 2112;
        v50 = v37;
        v51 = 2048;
        stateCopy = state;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@didUpdateSleepWakeState called for mediaSession: %@ sw:%tu", buf, 0x20u);

        v26 = v42;
        uuid2 = v43;
      }

      objc_autoreleasePoolPop(v32);
      v11 = v46;
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v41;
        v49 = 2112;
        v50 = accessory;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Unable to post sleep wake state event for accessory without home: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v38);
    }
  }
}

- (void)didFinishLoadingRequestForController:(id)controller
{
  v61 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  mediaSession = [(HMDMediaProfile *)self mediaSession];
  if (mediaSession)
  {
    response = [controllerCopy response];
    v6 = objc_msgSend_copy(response);

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    uuid = [mediaSession uuid];
    uUIDString = [uuid UUIDString];
    [dictionary setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CD09A8]];

    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"force-notify"];
    state = [v6 state];
    if (state > 6)
    {
      v11 = 0;
    }

    else
    {
      v11 = qword_22A587F60[state];
    }

    v12 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
    [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x277CD0938]];

    tracklist = [v6 tracklist];
    shuffleType = [tracklist shuffleType];
    if (shuffleType == 1)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    if (shuffleType == 2)
    {
      v16 = 3;
    }

    else
    {
      v16 = v15;
    }

    v17 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
    [dictionary setObject:v17 forKeyedSubscript:*MEMORY[0x277CD0990]];

    tracklist2 = [v6 tracklist];
    repeatType = [tracklist2 repeatType];
    if (repeatType == 1)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    if (repeatType == 2)
    {
      v21 = 3;
    }

    else
    {
      v21 = v20;
    }

    v22 = [MEMORY[0x277CCABB0] numberWithInteger:v21];
    [dictionary setObject:v22 forKeyedSubscript:*MEMORY[0x277CD0960]];

    tracklist3 = [v6 tracklist];
    uniqueIdentifier = [tracklist3 uniqueIdentifier];
    [dictionary setObject:uniqueIdentifier forKeyedSubscript:*MEMORY[0x277CD0920]];

    state2 = [mediaSession state];
    volume = [state2 volume];
    [dictionary setObject:volume forKeyedSubscript:*MEMORY[0x277CD09B0]];

    v27 = objc_msgSend_copy(dictionary);
    [(HMDMediaProfile *)self handleSessionUpdatedNotification:v27];

    v28 = objc_autoreleasePoolPush();
    selfCopy = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      uuid2 = [mediaSession uuid];
      uUIDString2 = [uuid2 UUIDString];
      state3 = [v6 state];
      tracklist4 = [v6 tracklist];
      shuffleType2 = [tracklist4 shuffleType];
      tracklist5 = [v6 tracklist];
      repeatType2 = [tracklist5 repeatType];
      state4 = [mediaSession state];
      volume2 = [state4 volume];
      tracklist6 = [v6 tracklist];
      [tracklist6 uniqueIdentifier];
      v35 = v43 = v28;
      *buf = 138545154;
      v46 = v31;
      v47 = 2112;
      v48 = uUIDString2;
      v49 = 2048;
      v50 = state3;
      v51 = 2048;
      v52 = shuffleType2;
      v53 = 2048;
      v54 = repeatType2;
      v55 = 2112;
      v56 = volume2;
      v57 = 2112;
      v58 = v35;
      v59 = 2112;
      v60 = dictionary;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@didFinishLoadingRequestForController called for mediaSession:%@ pb:%tu s:%tu r:%tu v:%@ m:%@ userInfo:%@", buf, 0x52u);

      v28 = v43;
    }

    objc_autoreleasePoolPop(v28);
  }
}

- (void)sessionAudioControlUpdated:(id)updated
{
  v13 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  mediaSystem = [(HMDAppleMediaProfile *)self mediaSystem];

  if (mediaSystem)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Media profile is part of a media system - passing on handling the audio control  update notification for session", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = HMDAppleMediaProfile;
    [(HMDMediaProfile *)&v10 sessionAudioControlUpdated:updatedCopy];
  }
}

- (void)_handleSetValue:(id)value withRequestProperty:(id)property withCompletionHandler:(id)handler
{
  v60[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  propertyCopy = property;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    _HMFPreconditionFailure();
  }

  v11 = handlerCopy;
  mediaAccessory = [(HMDAppleMediaProfile *)self mediaAccessory];
  device = [(__CFString *)mediaAccessory device];
  v50 = device;
  if (device)
  {
    v14 = device;
    if (([(__CFString *)mediaAccessory isDeviceReachable]& 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543874;
        v55 = v18;
        v56 = 2112;
        v57 = @"HMDMediaProfileSetPowerRequestKey";
        v58 = 2112;
        v59 = mediaAccessory;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Attempting to send message: %@ to unreachable accessory: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
    }

    v19 = valueCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    if (v21)
    {
      v48 = valueCopy;
      v49 = propertyCopy;
      v51 = propertyCopy;
      v52 = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v23 = MEMORY[0x277D0F848];
      v24 = [HMDRemoteDeviceMessageDestination alloc];
      uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
      v26 = [(HMDRemoteDeviceMessageDestination *)v24 initWithTarget:uniqueIdentifier device:v14];
      v27 = [v23 messageWithName:@"HMDMediaProfileSetPowerRequestKey" destination:v26 payload:v22];

      [v27 setResponseHandler:v11];
      if ([(__CFString *)v14 isCurrentDevice])
      {
        [(HMDAppleMediaProfile *)self _handleSetPower:v27];
      }

      else
      {
        v42 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = HMFGetLogIdentifier();
          *buf = 138543874;
          v55 = v45;
          v56 = 2112;
          v57 = v14;
          v58 = 2112;
          v59 = v49;
          _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Sending remote message to device (%@) for set value execution with request property %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v42);
        [v27 setSecureRemote:1];
        v46 = +[HMDSecureRemoteMessageTransport defaultTransport];
        v47 = objc_msgSend_copy(v27);
        [v46 sendMessage:v47 completionHandler:0];
      }

      valueCopy = v48;
      v32 = v49;
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543618;
        v55 = v38;
        v56 = 2112;
        v57 = v19;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@The value %@ passed in is either nil or non NSNumber", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      v22 = [HMDMediaPropertyRequest requestWithProperty:propertyCopy mediaProfile:selfCopy3];
      v32 = propertyCopy;
      v39 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      v27 = [HMDMediaPropertyResponse responseWithRequest:v22 error:v39];

      v53 = v27;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
      v41 = [HMDMediaPropertyResponse serializeResponses:v40];
      (v11)[2](v11, 0, v41);

      v21 = 0;
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v55 = v31;
      v56 = 2112;
      v57 = mediaAccessory;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@The device of Media Accessory %@ is not found", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v21 = [HMDMediaPropertyRequest requestWithProperty:propertyCopy mediaProfile:selfCopy4];
    v32 = propertyCopy;
    v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v22 = [HMDMediaPropertyResponse responseWithRequest:v21 error:v33];

    v60[0] = v22;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];
    v34 = [HMDMediaPropertyResponse serializeResponses:v27];
    (v11)[2](v11, 0, v34);
  }
}

- (BOOL)_updateRefreshPlayback:(id)playback
{
  v33 = *MEMORY[0x277D85DE8];
  playbackCopy = playback;
  v29.receiver = self;
  v29.super_class = HMDAppleMediaProfile;
  if (![(HMDMediaProfile *)&v29 _updateRefreshPlayback:playbackCopy])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@No local session for mediaProfile - attempting to redispatch the command to resident/device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v28 = 0;
    v9 = __lookupDeviceForRemoteCommands(selfCopy, &v28);
    v20 = v28;
    if (v9)
    {
      array = [MEMORY[0x277CBEB18] array];
      [playbackCopy arrayForKey:*MEMORY[0x277CD0948]];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v11 = v25 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v12)
      {
        v13 = *v25;
        v14 = *MEMORY[0x277CD0938];
        do
        {
          v15 = 0;
          do
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v11);
            }

            if ([*(*(&v24 + 1) + 8 * v15) isEqual:v14])
            {
              v16 = [HMDMediaPropertyRequest requestWithProperty:v14 mediaProfile:selfCopy];
              [array addObject:v16];
            }

            ++v15;
          }

          while (v12 != v15);
          v12 = [v11 countByEnumeratingWithState:&v24 objects:v30 count:16];
        }

        while (v12);
      }

      accessory = [(HMDAccessoryProfile *)selfCopy accessory];
      home = [accessory home];
      objc_initWeak(buf, selfCopy);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __47__HMDAppleMediaProfile__updateRefreshPlayback___block_invoke;
      v21[3] = &unk_278689618;
      objc_copyWeak(&v23, buf);
      v22 = playbackCopy;
      [home redispatchMediaReadRequests:array viaDevice:v20 completion:v21];

      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }

    else
    {
      array = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      [playbackCopy respondWithError:array];
    }
  }

  return 1;
}

void __47__HMDAppleMediaProfile__updateRefreshPlayback___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  v5 = *(a1 + 32);
  if (WeakRetained)
  {
    [WeakRetained _handleMediaResponses:v7 message:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    [v5 respondWithError:v6];
  }
}

- (BOOL)_updatePlayback:(id)playback
{
  v27 = *MEMORY[0x277D85DE8];
  playbackCopy = playback;
  v23.receiver = self;
  v23.super_class = HMDAppleMediaProfile;
  if (![(HMDMediaProfile *)&v23 _updatePlayback:playbackCopy])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@No local session for mediaProfile - attempting to redispatch the command to resident/device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *MEMORY[0x277CD0938];
    v11 = [playbackCopy numberForKey:*MEMORY[0x277CD0938]];
    if (v11)
    {
      v22 = 0;
      v12 = __lookupDeviceForRemoteCommands(selfCopy, &v22);
      v13 = v22;
      if (!v12)
      {
        v5 = 0;
        goto LABEL_11;
      }

      v14 = [HMDMediaPropertyWriteRequest writeRequestWithProperty:v10 value:v11 mediaProfile:selfCopy];
      accessory = [(HMDAccessoryProfile *)selfCopy accessory];
      home = [accessory home];
      objc_initWeak(buf, selfCopy);
      v24 = v14;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __40__HMDAppleMediaProfile__updatePlayback___block_invoke;
      v19[3] = &unk_278689618;
      objc_copyWeak(&v21, buf);
      v20 = playbackCopy;
      [home redispatchMediaWriteRequests:v17 viaDevice:v13 completion:v19];

      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
      [playbackCopy respondWithError:v13];
    }

    v5 = 1;
LABEL_11:

    goto LABEL_12;
  }

  v5 = 1;
LABEL_12:

  return v5;
}

void __40__HMDAppleMediaProfile__updatePlayback___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  v5 = *(a1 + 32);
  if (WeakRetained)
  {
    [WeakRetained _handleMediaResponses:v7 message:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    [v5 respondWithError:v6];
  }
}

- (void)setMediaSession:(id)session
{
  sessionCopy = session;
  mediaSession = [(HMDMediaProfile *)self mediaSession];
  v6 = HMFEqualObjects();

  if ((v6 & 1) == 0)
  {
    v11.receiver = self;
    v11.super_class = HMDAppleMediaProfile;
    [(HMDMediaProfile *)&v11 setMediaSession:sessionCopy];
    os_unfair_lock_lock_with_options();
    WeakRetained = objc_loadWeakRetained(&self->_mediaSystem);
    [WeakRetained setMediaSession:sessionCopy];

    os_unfair_lock_unlock(&self->super._lock.lock);
    controller = [(HMDAppleMediaProfile *)self controller];
    response = [controller response];

    if (response)
    {
      controller2 = [(HMDAppleMediaProfile *)self controller];
      [(HMDAppleMediaProfile *)self didFinishLoadingRequestForController:controller2];
    }
  }
}

- (HMDMediaSystem)mediaSystem
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_mediaSystem);
  os_unfair_lock_unlock(&self->super._lock.lock);

  return WeakRetained;
}

- (void)setMediaSystem:(id)system
{
  v16 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543874;
    v11 = v8;
    v12 = 2112;
    v13 = systemCopy;
    v14 = 2112;
    v15 = selfCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting media system %@ on profile %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&selfCopy->_mediaSystem, systemCopy);
  os_unfair_lock_unlock(&selfCopy->super._lock.lock);
  msgDispatcher = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
  [(HMDAppleMediaProfile *)selfCopy configureWithMessageDispatcher:msgDispatcher configurationTracker:0];
}

- (HMDAppleMediaAccessory)mediaAccessory
{
  accessory = [(HMDAccessoryProfile *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessory;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)registerForMessages
{
  v12[2] = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryProfile *)self accessory];
  home = [accessory home];
  featuresDataSource = [home featuresDataSource];
  isMessageBindingsEnabled = [featuresDataSource isMessageBindingsEnabled];

  if ((isMessageBindingsEnabled & 1) == 0)
  {
    v11.receiver = self;
    v11.super_class = HMDAppleMediaProfile;
    [(HMDMediaProfile *)&v11 registerForMessages];
    msgDispatcher = [(HMDAccessoryProfile *)self msgDispatcher];
    v8 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
    v12[0] = v8;
    v9 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v12[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    [msgDispatcher registerForMessage:@"HMDMediaProfileSetPowerRequestKey" receiver:self policies:v10 selector:sel__handleSetPower_];
  }
}

- (void)configureWithMessageDispatcher:(id)dispatcher configurationTracker:(id)tracker
{
  dispatcherCopy = dispatcher;
  trackerCopy = tracker;
  v8 = trackerCopy;
  if (trackerCopy)
  {
    dispatch_group_enter(trackerCopy);
  }

  workQueue = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMDAppleMediaProfile_configureWithMessageDispatcher_configurationTracker___block_invoke;
  block[3] = &unk_27868A010;
  v13 = dispatcherCopy;
  v14 = v8;
  selfCopy = self;
  v10 = v8;
  v11 = dispatcherCopy;
  dispatch_async(workQueue, block);
}

void __76__HMDAppleMediaProfile_configureWithMessageDispatcher_configurationTracker___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v5.receiver = *(a1 + 48);
  v5.super_class = HMDAppleMediaProfile;
  objc_msgSendSuper2(&v5, sel_configureWithMessageDispatcher_configurationTracker_, v3, v2);
  v4 = *(a1 + 40);
  if (v4)
  {
    dispatch_group_leave(v4);
  }
}

- (HMDAppleMediaProfile)initWithAccessory:(id)accessory uniqueIdentifier:(id)identifier services:(id)services workQueue:(id)queue
{
  accessoryCopy = accessory;
  v17.receiver = self;
  v17.super_class = HMDAppleMediaProfile;
  v11 = [(HMDMediaProfile *)&v17 initWithAccessory:accessoryCopy uniqueIdentifier:identifier services:services workQueue:queue];
  if (v11 && [accessoryCopy isCurrentAccessory])
  {
    v12 = objc_opt_new();
    controller = v11->_controller;
    v11->_controller = v12;

    v14 = objc_opt_new();
    deviceActivePlayerPath = [MEMORY[0x277D278E0] deviceActivePlayerPath];
    [v14 setPlayerPath:deviceActivePlayerPath];

    [(MPRequestResponseController *)v11->_controller setRequest:v14];
    [(MPRequestResponseController *)v11->_controller setDelegate:v11];
    [(MPRequestResponseController *)v11->_controller beginAutomaticResponseLoading];
  }

  return v11;
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v22[2] = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  receiverCopy = receiver;
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = receiverCopy;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  accessory = [v11 accessory];
  home = [accessory home];

  name = [messageCopy name];
  v15 = [name isEqualToString:@"HMDMediaProfileSetPowerRequestKey"];

  if (v15)
  {
    name2 = [messageCopy name];

    v17 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
    v22[0] = v17;
    v18 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v22[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v20 = HMFCreateMessageBinding();
  }

  else
  {
    v20 = [HMDMediaProfile messageBindingForDispatcher:dispatcherCopy message:messageCopy receiver:receiverCopy];
  }

  return v20;
}

@end