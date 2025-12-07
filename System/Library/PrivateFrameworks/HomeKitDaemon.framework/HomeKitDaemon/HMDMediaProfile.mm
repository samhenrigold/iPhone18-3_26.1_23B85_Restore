@interface HMDMediaProfile
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
+ (id)namespace;
+ (id)sessionNamespace;
+ (id)uniqueIdentifierFromAccessory:(id)accessory;
+ (id)uniqueIdentifierFromAccessoryUUID:(id)d;
- (BOOL)_updateAudioControl:(id)control;
- (BOOL)_updatePlayback:(id)playback;
- (BOOL)_updateRefreshPlayback:(id)playback;
- (HMDMediaProfile)initWithAccessory:(id)accessory;
- (HMDMediaProfile)initWithAccessory:(id)accessory uniqueIdentifier:(id)identifier services:(id)services workQueue:(id)queue;
- (HMDMediaProfile)initWithAccessory:(id)accessory uniqueIdentifier:(id)identifier services:(id)services workQueue:(id)queue notificationCenter:(id)center;
- (HMDMediaSession)mediaSession;
- (HMEEventForwarder)eventForwarder;
- (NSDictionary)assistantObject;
- (NSString)description;
- (NSString)mediaRouteID;
- (NSString)urlString;
- (id)parseAndSetPlaybackStateFromResponsePayload:(id)payload mediaSessionState:(id)state outDidUpdateMediaSessionState:(BOOL *)sessionState;
- (id)payloadForUpdatedPlaybackState:(void *)state shuffleStateNumber:(void *)number repeatStateNumber:(void *)stateNumber volume:(void *)volume sleepWakeStateNumber:(void *)wakeStateNumber mediaUniqueIdentifier:;
- (void)_handleMediaResponses:(id)responses message:(id)message;
- (void)_handleMediaSessionSetAudioControl:(id)control;
- (void)_handleRefreshPlayback:(id)playback;
- (void)_handleSetPlayback:(id)playback;
- (void)_handleSetValue:(id)value withRequestProperty:(id)property withCompletionHandler:(id)handler;
- (void)_sessionPlaybackStateUpdated:(id)updated notifyXPCClients:(BOOL)clients;
- (void)configureWithMessageDispatcher:(id)dispatcher configurationTracker:(id)tracker;
- (void)encodeWithCoder:(id)coder;
- (void)handleSessionPlaybackStateUpdatedNotification:(id)notification;
- (void)handleSessionUpdatedNotification:(id)notification;
- (void)handleSessionVolumeUpdatedNotification:(id)notification;
- (void)handleSetValue:(id)value withRequestProperty:(id)property withCompletionHandler:(id)handler;
- (void)registerForMessages;
- (void)registerForNotifications;
- (void)sessionAudioControlUpdated:(id)updated;
- (void)setMediaSession:(id)session;
- (void)unregisterForNotifications;
- (void)updateWithResponses:(id)responses requestMessageInformation:(id)information;
@end

@implementation HMDMediaProfile

- (NSDictionary)assistantObject
{
  v69[2] = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryProfile *)self accessory];
  name = [accessory name];
  home = [accessory home];
  v6 = home;
  if (home)
  {
    name2 = [home name];

    if (name2)
    {
      if (name)
      {
        v8 = objc_alloc(MEMORY[0x277CBEB38]);
        v63[0] = *MEMORY[0x277D48170];
        v62[0] = @"objectType";
        v62[1] = @"objectIdentifier";
        urlString = [(HMDMediaProfile *)self urlString];
        v63[1] = urlString;
        v62[2] = @"objectHome";
        name3 = [v6 name];
        v63[2] = name3;
        v62[3] = @"objectHomeIdentifier";
        urlString2 = [v6 urlString];
        v63[3] = urlString2;
        v63[4] = self;
        v62[4] = @"objectReference";
        v62[5] = @"objectName";
        v58 = name;
        v63[5] = name;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:6];
        v13 = [v8 initWithDictionary:v12];

        v14 = accessory;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        category = [v14 category];
        categoryType = [category categoryType];
        v19 = [categoryType isEqual:*MEMORY[0x277CCE870]];

        v59 = category;
        if (v19)
        {
          v20 = MEMORY[0x277D481C0];
          v21 = MEMORY[0x277D48270];
          goto LABEL_25;
        }

        categoryType2 = [category categoryType];
        v27 = [categoryType2 isEqual:*MEMORY[0x277CCE8B0]];

        if (v27)
        {
          v20 = MEMORY[0x277D48200];
        }

        else
        {
          categoryType3 = [category categoryType];
          v30 = [categoryType3 isEqual:*MEMORY[0x277CCE860]];

          if (v30)
          {
            v20 = MEMORY[0x277D481C0];
            v21 = MEMORY[0x277D48258];
            goto LABEL_25;
          }

          categoryType4 = [category categoryType];
          v32 = [categoryType4 isEqual:*MEMORY[0x277CCE900]];

          if ((v32 & 1) == 0)
          {
            siriEndpointProfile = [v16 siriEndpointProfile];

            if (!siriEndpointProfile)
            {
              v38 = v16;
              v39 = objc_autoreleasePoolPush();
              selfCopy = self;
              v41 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v42 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v42;
                *&buf[12] = 2112;
                *&buf[14] = v59;
                _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@MediaProfile with invalid accessory category: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v39);
              v34 = 0;
              v57 = 0;
              v16 = v38;
              goto LABEL_31;
            }
          }

          v20 = MEMORY[0x277D481C0];
        }

        v21 = MEMORY[0x277D48350];
LABEL_25:
        v34 = *v21;
        v35 = *v20;
        v57 = v35;
        if (v34)
        {
          v36 = category;
          if (v35)
          {
            v60[0] = @"objectServiceType";
            v60[1] = @"objectServiceSubType";
            v61[0] = v34;
            v61[1] = v35;
            v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
            [v13 addEntriesFromDictionary:v37];
          }

          goto LABEL_32;
        }

LABEL_31:
        v36 = v59;
LABEL_32:
        name4 = [v14 name];
        [v13 setObject:name4 forKey:@"objectAccessory"];

        urlString3 = [v14 urlString];
        [v13 setObject:urlString3 forKey:@"objectAccessoryIdentifier"];

        v45 = v14;
        room = [v45 room];
        name5 = [room name];
        if (name5)
        {
          v56 = v34;
          v48 = v16;
          v49 = v13;
          home2 = [v45 home];
          name6 = [home2 name];
          v52 = [name5 isEqualToString:name6];

          if (v52)
          {
            v53 = 0;
          }

          else
          {
            *buf = name5;
            v69[0] = @"objectRoom";
            v69[1] = @"objectRoomIdentifier";
            urlString4 = [room urlString];
            *&buf[8] = urlString4;
            v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v69 count:2];
          }

          v13 = v49;
          v16 = v48;
          v36 = v59;
          v34 = v56;
        }

        else
        {
          v53 = 0;
        }

        if (v53)
        {
          [v13 addEntriesFromDictionary:v53];
        }

        v28 = objc_msgSend_copy(v13);

        name = v58;
        goto LABEL_41;
      }
    }
  }

  v22 = objc_autoreleasePoolPush();
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = HMFGetLogIdentifier();
    if (v6)
    {
      name7 = [v6 name];
    }

    else
    {
      name7 = 0;
    }

    *buf = 138544130;
    *&buf[4] = v24;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    v65 = 2112;
    v66 = name7;
    v67 = 2112;
    v68 = name;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping because one of the properties of service is nil: service.accessory.home %@  service.accessory.home.name %@  service.name %@", buf, 0x2Au);
    if (v6)
    {
    }
  }

  objc_autoreleasePoolPop(v22);
  v28 = 0;
LABEL_41:

  return v28;
}

- (NSString)urlString
{
  uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v3 = hm_assistantIdentifier();

  return v3;
}

- (NSString)description
{
  accessory = [(HMDAccessoryProfile *)self accessory];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  name = [accessory name];
  identifier = [accessory identifier];
  uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v10 = [v4 stringWithFormat:@"%@<name %@ identifier %@ uniqueIdentifier %@>", v6, name, identifier, uniqueIdentifier];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v22[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = HMDMediaProfile;
  [(HMDAccessoryProfile *)&v21 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CBEB28] dataWithLength:16];
  uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
  [uniqueIdentifier getUUIDBytes:{objc_msgSend(v5, "mutableBytes")}];

  v7 = MEMORY[0x277CCAD78];
  v8 = +[HMDMediaProfile namespace];
  v9 = [v7 hmf_UUIDWithNamespace:v8 data:v5];

  uUIDString = [v9 UUIDString];
  [coderCopy encodeObject:uUIDString forKey:*MEMORY[0x277CD08E0]];

  mediaSession = [(HMDMediaProfile *)self mediaSession];
  accessory = [(HMDAccessoryProfile *)self accessory];
  v13 = accessory;
  if (accessory)
  {
    home = [accessory home];
    identifier = [v13 identifier];
    v16 = [home mediaSessionStateWithIdentifier:identifier];

    if (!mediaSession && v16)
    {
      if ([coderCopy hmd_isForXPCTransport])
      {
        v17 = [HMDMediaSession alloc];
        v22[0] = self;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
        mediaSession = [(HMDMediaSession *)v17 initWithEndpoint:0 mediaProfiles:v18 state:v16];
      }

      else
      {
        mediaSession = 0;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  [coderCopy encodeObject:mediaSession forKey:*MEMORY[0x277CD08D8]];
  identifier2 = [v13 identifier];
  [coderCopy encodeObject:identifier2 forKey:*MEMORY[0x277CD08D0]];

  capability = [(HMDMediaProfile *)self capability];
  [coderCopy encodeInteger:capability forKey:*MEMORY[0x277CD08C8]];
}

- (void)sessionAudioControlUpdated:(id)updated
{
  v34 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  userInfo = [updatedCopy userInfo];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v8;
    v32 = 2112;
    v33 = userInfo;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@sessionAudioControlUpdated %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CD0968]];
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

  messageIdentifier = [v11 messageIdentifier];
  v13 = *MEMORY[0x277CD0908];
  v14 = [userInfo hmf_numberForKey:*MEMORY[0x277CD0908]];
  v15 = *MEMORY[0x277CD08F0];
  v16 = [userInfo hmf_numberForKey:*MEMORY[0x277CD08F0]];
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = v17;
  if (v14)
  {
    [v17 setValue:v14 forKey:v13];
  }

  if (v16)
  {
    [v18 setValue:v16 forKey:v15];
  }

  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v22;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Notify clients of updated audio control state", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
  v23 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CD08F8] identifier:messageIdentifier messagePayload:v18];
  v24 = objc_alloc(MEMORY[0x277D0F820]);
  uniqueIdentifier = [(HMDAccessoryProfile *)v20 uniqueIdentifier];
  v26 = [v24 initWithTarget:uniqueIdentifier];
  [v23 setDestination:v26];

  msgDispatcher = [(HMDAccessoryProfile *)v20 msgDispatcher];
  v28 = objc_msgSend_copy(v23);
  [msgDispatcher sendMessage:v28 completionHandler:0];
}

- (void)handleSessionVolumeUpdatedNotification:(id)notification
{
  v37[8] = *MEMORY[0x277D85DE8];
  userInfo = [notification userInfo];
  mediaSession = [(HMDMediaProfile *)self mediaSession];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D27E28]];

  uuid = [mediaSession uuid];
  uUIDString = [uuid UUIDString];
  v9 = uUIDString;
  if (!uUIDString || !v6)
  {

LABEL_10:
    goto LABEL_11;
  }

  IsLocalOrigin = MROriginIsLocalOrigin();

  if (IsLocalOrigin)
  {
    uuid = [userInfo hmf_numberForKey:*MEMORY[0x277D27E38]];
    if (uuid)
    {
      state = [mediaSession state];

      if (state)
      {
        state2 = [mediaSession state];
        mediaUniqueIdentifier = [state2 mediaUniqueIdentifier];
        v14 = mediaUniqueIdentifier;
        v15 = &stru_283CF9D50;
        if (mediaUniqueIdentifier)
        {
          v15 = mediaUniqueIdentifier;
        }

        v16 = v15;

        v36[0] = *MEMORY[0x277CD09A8];
        uuid2 = [mediaSession uuid];
        uUIDString2 = [uuid2 UUIDString];
        v37[0] = uUIDString2;
        v36[1] = *MEMORY[0x277CD0938];
        v17 = MEMORY[0x277CCABB0];
        state3 = [mediaSession state];
        v32 = [v17 numberWithInteger:{objc_msgSend(state3, "playbackState")}];
        v37[1] = v32;
        v36[2] = *MEMORY[0x277CD0990];
        v18 = MEMORY[0x277CCABB0];
        state4 = [mediaSession state];
        v30 = [v18 numberWithInteger:{objc_msgSend(state4, "shuffleState")}];
        v37[2] = v30;
        v36[3] = *MEMORY[0x277CD0960];
        v19 = MEMORY[0x277CCABB0];
        state5 = [mediaSession state];
        v21 = [v19 numberWithInteger:{objc_msgSend(state5, "repeatState")}];
        v22 = *MEMORY[0x277CD09B0];
        v37[3] = v21;
        v37[4] = uuid;
        v23 = *MEMORY[0x277CD0920];
        v36[4] = v22;
        v36[5] = v23;
        v37[5] = v16;
        v37[6] = MEMORY[0x277CBEC38];
        v24 = v16;
        v25 = *MEMORY[0x277CD09A0];
        v36[6] = @"force-notify";
        v36[7] = v25;
        v26 = MEMORY[0x277CCABB0];
        state6 = [mediaSession state];
        v28 = [v26 numberWithUnsignedInteger:{objc_msgSend(state6, "sleepWakeState")}];
        v37[7] = v28;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:8];

        [(HMDMediaProfile *)self handleSessionUpdatedNotification:v29];
      }
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)handleSessionPlaybackStateUpdatedNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo mutableCopy];

  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"session-state-changed"];
  [(HMDMediaProfile *)self handleSessionUpdatedNotification:v5];
}

- (void)handleSessionUpdatedNotification:(id)notification
{
  v34 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = [notificationCopy hmf_stringForKey:*MEMORY[0x277CD09A8]];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
  mediaSession = [(HMDMediaProfile *)self mediaSession];
  uuid = [mediaSession uuid];
  v9 = HMFEqualObjects();

  if (v9)
  {
    LODWORD(v10) = [notificationCopy hmf_BOOLForKey:@"force-notify"];
    v11 = [notificationCopy objectForKeyedSubscript:*MEMORY[0x277CD0968]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      v10 = 1;
    }

    else
    {
      v10 = v10;
    }

    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = &stru_283CF9D50;
      v26 = 138543874;
      v27 = v17;
      v28 = 2112;
      if (v10)
      {
        v18 = @" - force notifying clients on remote notification";
      }

      v29 = v5;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Got a playback state update for media session %@%@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDMediaProfile *)selfCopy _sessionPlaybackStateUpdated:notificationCopy notifyXPCClients:v10];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      mediaSession2 = [(HMDMediaProfile *)selfCopy2 mediaSession];
      uuid2 = [mediaSession2 uuid];
      uUIDString = [uuid2 UUIDString];
      v26 = 138544130;
      v27 = v22;
      v28 = 2112;
      v29 = v5;
      v30 = 2112;
      v31 = uUIDString;
      v32 = 2112;
      v33 = notificationCopy;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Media session %@ playback notification does not match our media session:%@ ui:%@", &v26, 0x2Au);
    }

    objc_autoreleasePoolPop(v19);
  }
}

- (void)_handleSetValue:(id)value withRequestProperty:(id)property withCompletionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  propertyCopy = property;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    accessory = [(HMDAccessoryProfile *)selfCopy accessory];
    *buf = 138543618;
    v23 = v14;
    v24 = 2112;
    v25 = accessory;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@The accessory %@ does not support _handleSetValue:", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (handlerCopy)
  {
    v16 = [HMDMediaPropertyRequest requestWithProperty:propertyCopy mediaProfile:selfCopy];
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v18 = [HMDMediaPropertyResponse responseWithRequest:v16 error:v17];

    v21 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    v20 = [HMDMediaPropertyResponse serializeResponses:v19];
    handlerCopy[2](handlerCopy, 0, v20);
  }
}

- (void)handleSetValue:(id)value withRequestProperty:(id)property withCompletionHandler:(id)handler
{
  valueCopy = value;
  propertyCopy = property;
  handlerCopy = handler;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__HMDMediaProfile_handleSetValue_withRequestProperty_withCompletionHandler___block_invoke;
  v15[3] = &unk_278689AB8;
  v15[4] = self;
  v16 = valueCopy;
  v17 = propertyCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = propertyCopy;
  v14 = valueCopy;
  dispatch_async(workQueue, v15);
}

- (id)parseAndSetPlaybackStateFromResponsePayload:(id)payload mediaSessionState:(id)state outDidUpdateMediaSessionState:(BOOL *)sessionState
{
  stateCopy = state;
  v8 = [payload hmf_numberForKey:*MEMORY[0x277CD0938]];
  unsignedIntegerValue = [v8 unsignedIntegerValue];
  if (v8)
  {
    v10 = unsignedIntegerValue;
    if (unsignedIntegerValue != [stateCopy playbackState])
    {
      [stateCopy setPlaybackState:v10];
      *sessionState = 1;
    }
  }

  return v8;
}

- (void)_sessionPlaybackStateUpdated:(id)updated notifyXPCClients:(BOOL)clients
{
  v177 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v6 = [updatedCopy hmf_numberForKey:@"session-state-changed"];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    [v6 BOOLValue];
    v11 = HMFBooleanToString();
    *buf = 138543618;
    v160 = v10;
    v161 = 2112;
    v162 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@_sessionPlaybackStateUpdated with HMDMediaProfileHasMediaSessionStateChangedKey: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v158 = bOOLValue;
  mediaSession = [(HMDMediaProfile *)selfCopy mediaSession];
  state = [mediaSession state];
  accessory = [(HMDAccessoryProfile *)selfCopy accessory];
  home = [accessory home];
  v148 = accessory;
  if (state)
  {
    v140 = 0;
  }

  else
  {
    v15 = accessory;
    if (selfCopy)
    {
      v16 = [updatedCopy hmf_stringForKey:*MEMORY[0x277CD0910]];
      uniqueIdentifier = [(HMDAccessoryProfile *)selfCopy uniqueIdentifier];
      uUIDString = [uniqueIdentifier UUIDString];
      v19 = [v16 isEqualToString:uUIDString];

      if (v19)
      {
        identifier = [v15 identifier];

        v16 = identifier;
      }
    }

    else
    {
      v16 = 0;
    }

    state = [home mediaSessionStateWithIdentifier:v16];
    v140 = state == 0;
    if (!state)
    {
      v21 = home;
      v22 = v15;
      v23 = v16;
      if (selfCopy)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = selfCopy;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v27 = v138 = v6;
          [v22 identifier];
          v28 = v156 = v22;
          *buf = 138543874;
          v160 = v27;
          v161 = 2112;
          v162 = v23;
          v163 = 2112;
          v164 = v28;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Creating a media session state for a remote session (sessionIdentifier %@; accessoryIdentifier %@) update", buf, 0x20u);

          v22 = v156;
          v6 = v138;
        }

        objc_autoreleasePoolPop(v24);
        state = [[HMDMediaSessionState alloc] initWithSessionIdentifier:v23];
        [v21 addMediaSessionState:state];
      }

      else
      {
        state = 0;
      }

      v158 = 1;
    }
  }

  v153 = [(HMDMediaProfile *)selfCopy parseAndSetPlaybackStateFromResponsePayload:updatedCopy mediaSessionState:state outDidUpdateMediaSessionState:&v158];
  v29 = state;
  v30 = v29;
  v31 = MEMORY[0x277CD09B0];
  v32 = MEMORY[0x277CD0920];
  v33 = MEMORY[0x277CD09A0];
  if (selfCopy)
  {
    v34 = [updatedCopy hmf_numberForKey:*MEMORY[0x277CD0990]];
    unsignedIntegerValue = [v34 unsignedIntegerValue];
    v155 = v34;
    if (v34)
    {
      v36 = unsignedIntegerValue;
      if (unsignedIntegerValue != [(HMDMediaSessionState *)v30 shuffleState])
      {
        [(HMDMediaSessionState *)v30 setShuffleState:v36];
        v158 = 1;
      }
    }

    else
    {
      v155 = 0;
    }

    v37 = v30;
    v38 = [updatedCopy hmf_numberForKey:*MEMORY[0x277CD0960]];
    unsignedIntegerValue2 = [v38 unsignedIntegerValue];
    v154 = v38;
    if (v38)
    {
      v40 = unsignedIntegerValue2;
      if (unsignedIntegerValue2 != [(HMDMediaSessionState *)v37 repeatState])
      {
        [(HMDMediaSessionState *)v37 setRepeatState:v40];
        v158 = 1;
      }
    }

    else
    {
      v154 = 0;
    }

    v41 = v37;
    v157 = [updatedCopy hmf_numberForKey:*v31];
    if (v157)
    {
      volume = [(HMDMediaSessionState *)v41 volume];
      if (!volume || (v43 = volume, [v157 floatValue], v45 = v44, -[HMDMediaSessionState volume](v41, "volume"), v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "floatValue"), v48 = vabds_f32(v45, v47), v49 = *MEMORY[0x277CD1F78], v46, v43, v48 > v49))
      {
        [(HMDMediaSessionState *)v41 setVolume:v157];
        v158 = 1;
      }
    }

    else
    {
      v157 = 0;
    }

    v50 = v41;
    v51 = [updatedCopy hmf_stringForKey:*v32];
    if (v51)
    {
      mediaUniqueIdentifier = [(HMDMediaSessionState *)v50 mediaUniqueIdentifier];
      v53 = [v51 isEqualToString:mediaUniqueIdentifier];

      if ((v53 & 1) == 0)
      {
        [(HMDMediaSessionState *)v50 setMediaUniqueIdentifier:v51];
        v158 = 1;
      }
    }

    v54 = v50;
    v55 = [updatedCopy hmf_numberForKey:*v33];
    unsignedIntegerValue3 = [v55 unsignedIntegerValue];
    if (v55)
    {
      v57 = unsignedIntegerValue3;
      if (unsignedIntegerValue3 != [(HMDMediaSessionState *)v54 sleepWakeState])
      {
        [(HMDMediaSessionState *)v54 setSleepWakeState:v57];
        v158 = 1;
      }
    }
  }

  else
  {

    v127 = v30;
    v128 = v127;

    v129 = v128;
    v130 = v129;
    v51 = 0;
    v154 = 0;
    v155 = 0;
    v157 = 0;
    v55 = 0;
  }

  v147 = v30;

  v58 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x277CD0968]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v59 = v58;
  }

  else
  {
    v59 = 0;
  }

  v60 = v59;

  [v60 messageIdentifier];
  v151 = v150 = v60;
  v61 = v158 | (v60 != 0);
  v62 = @", state has not changed so not notifying clients";
  if (v61)
  {
    v62 = @"state has changed, notifying clients";
  }

  v149 = v62;
  v63 = objc_autoreleasePoolPush();
  v64 = selfCopy;
  v65 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
  {
    v66 = HMFGetLogIdentifier();
    *buf = 138545410;
    v160 = v66;
    v161 = 2112;
    v162 = v149;
    v163 = 2112;
    v164 = v153;
    v165 = 2112;
    v166 = v155;
    v167 = 2112;
    v168 = v154;
    v169 = 2112;
    v170 = v157;
    v171 = 2112;
    v172 = v51;
    v173 = 2112;
    v174 = v151;
    v175 = 2112;
    v176 = v55;
    _os_log_impl(&dword_229538000, v65, OS_LOG_TYPE_INFO, "%{public}@_sessionPlaybackStateUpdated, %@, p:%@ s:%@ r:%@ v:%@ m:%@, requestMessageID: %@, sleepWakeState: %@", buf, 0x5Cu);
  }

  objc_autoreleasePoolPop(v63);
  if (v61)
  {
    if (selfCopy && (v158 & 1) != 0)
    {
      v67 = [(HMDMediaProfile *)v64 payloadForUpdatedPlaybackState:v153 shuffleStateNumber:v155 repeatStateNumber:v154 volume:v157 sleepWakeStateNumber:v55 mediaUniqueIdentifier:v51];
      notificationCenter = [(HMDMediaProfile *)v64 notificationCenter];
      [notificationCenter postNotificationName:HMDMediaProfileHasMediaSessionStateChangedNotificationName object:v64 userInfo:v67];
    }

    v139 = v6;
    if (clients || v158 == 1)
    {
      if (selfCopy)
      {
        v69 = v151;
        v70 = [(HMDMediaProfile *)v64 payloadForUpdatedPlaybackState:v153 shuffleStateNumber:v155 repeatStateNumber:v154 volume:v157 sleepWakeStateNumber:v55 mediaUniqueIdentifier:v51];
        v71 = MEMORY[0x277D0F848];
        v72 = *MEMORY[0x277CD0940];
        v73 = objc_msgSend_copy(v70);
        v74 = [v71 entitledMessageWithName:v72 identifier:v69 messagePayload:v73];

        v75 = objc_alloc(MEMORY[0x277D0F820]);
        uniqueIdentifier2 = [(HMDAccessoryProfile *)v64 uniqueIdentifier];
        v77 = [v75 initWithTarget:uniqueIdentifier2];
        [v74 setDestination:v77];

        msgDispatcher = [(HMDAccessoryProfile *)v64 msgDispatcher];
        v79 = objc_msgSend_copy(v74);
        [msgDispatcher sendMessage:v79];
      }

      v80 = v158;
      v6 = v139;
    }

    else
    {
      v80 = 0;
    }

    v81 = v140;
    if (v153)
    {
      v81 = 1;
    }

    if (v157)
    {
      v81 = 1;
    }

    if (v51)
    {
      v81 = 1;
    }

    if (v155)
    {
      v81 = 1;
    }

    if (v154)
    {
      v81 = 1;
    }

    if (v80)
    {
      if (v81)
      {
        isCurrentAccessory = [v148 isCurrentAccessory];
        if (v148)
        {
          if (isCurrentAccessory && home && selfCopy)
          {
            v83 = MEMORY[0x277CD1700];
            v141 = home;
            v144 = v148;
            v84 = v147;
            v135 = [v83 alloc];
            mediaUniqueIdentifier2 = [(HMDMediaSessionState *)v84 mediaUniqueIdentifier];
            volume2 = [(HMDMediaSessionState *)v84 volume];
            [volume2 doubleValue];
            v87 = v86;
            playbackState = [(HMDMediaSessionState *)v84 playbackState];
            shuffleState = [(HMDMediaSessionState *)v84 shuffleState];
            repeatState = [(HMDMediaSessionState *)v84 repeatState];

            v136 = [v135 initWithMediaIdentifier:mediaUniqueIdentifier2 volume:playbackState playbackState:shuffleState shuffleState:repeatState repeatState:v87];
            [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
            v92 = v91;
            v93 = objc_alloc(MEMORY[0x277D174B0]);
            uuid = [v144 uuid];
            uUIDString2 = [uuid UUIDString];
            v133 = [v93 initWithSource:uUIDString2 cachePolicy:2 combineType:2 timestamp:v92];

            v96 = objc_alloc(MEMORY[0x277D174A0]);
            protoData = [v136 protoData];
            v131 = [v96 initWithEventData:protoData metadata:v133];

            v98 = MEMORY[0x277CD16F0];
            v99 = *MEMORY[0x277CCEA68];
            uuid2 = [v141 uuid];

            uuid3 = [v144 uuid];

            v102 = [v98 topicFromSuffixID:v99 homeUUID:uuid2 accessoryUUID:uuid3];

            v6 = v139;
            eventForwarder = [(HMDMediaProfile *)v64 eventForwarder];
            [eventForwarder forwardEvent:v131 topic:v102 completion:0];
          }
        }
      }
    }

    if (!v150 || ([home primaryResident], v104 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v104, "device"), v105 = objc_claimAutoreleasedReturnValue(), v106 = objc_msgSend(v105, "isCurrentDevice"), v105, v104, v106))
    {
      v107 = v153;
      v108 = v155;
      v145 = v154;
      v142 = v157;
      v137 = v55;
      v134 = v51;
      if (selfCopy)
      {
        v109 = objc_alloc_init(MEMORY[0x277CBEB18]);
        date = [MEMORY[0x277CBEAA8] date];
        v111 = v107;
        v112 = v108;
        if (v107)
        {
          v113 = [HMDMediaPropertyRequest requestWithProperty:*MEMORY[0x277CD0938] mediaProfile:v64];
          v114 = [HMDMediaPropertyResponse responseWithRequest:v113 value:v107 updatedTime:date];
          [v109 addObject:v114];

          v107 = v111;
          v108 = v112;
        }

        if (v108)
        {
          v115 = [HMDMediaPropertyRequest requestWithProperty:*MEMORY[0x277CD0990] mediaProfile:v64];
          v116 = [HMDMediaPropertyResponse responseWithRequest:v115 value:v112 updatedTime:date];
          [v109 addObject:v116];

          v107 = v111;
          v108 = v112;
        }

        if (v145)
        {
          v117 = [HMDMediaPropertyRequest requestWithProperty:*MEMORY[0x277CD0960] mediaProfile:v64];
          v118 = [HMDMediaPropertyResponse responseWithRequest:v117 value:v145 updatedTime:date];
          [v109 addObject:v118];

          v107 = v111;
          v108 = v112;
        }

        if (v142)
        {
          v119 = [HMDMediaPropertyRequest requestWithProperty:*MEMORY[0x277CD09B0] mediaProfile:v64];
          v120 = [HMDMediaPropertyResponse responseWithRequest:v119 value:v142 updatedTime:date];
          [v109 addObject:v120];

          v107 = v111;
          v108 = v112;
        }

        if (v134)
        {
          v121 = [HMDMediaPropertyRequest requestWithProperty:*MEMORY[0x277CD0920] mediaProfile:v64];
          v122 = [HMDMediaPropertyResponse responseWithRequest:v121 value:v134 updatedTime:date];
          [v109 addObject:v122];

          v107 = v111;
          v108 = v112;
        }

        if (v137)
        {
          v123 = [HMDMediaPropertyRequest requestWithProperty:*MEMORY[0x277CD09A0] mediaProfile:v64];
          v124 = [HMDMediaPropertyResponse responseWithRequest:v123 value:v137 updatedTime:date];
          [v109 addObject:v124];

          v107 = v111;
          v108 = v112;
        }

        v125 = objc_msgSend_copy(v109, v55);
      }

      else
      {
        v125 = 0;
      }

      v6 = v139;
      if ([v125 count])
      {
        v126 = objc_msgSend_copy(v125);
        [home notifyRemoteUsersOfChangedProperties:v126 requestMessageInformation:v150];
      }
    }
  }
}

- (id)payloadForUpdatedPlaybackState:(void *)state shuffleStateNumber:(void *)number repeatStateNumber:(void *)stateNumber volume:(void *)volume sleepWakeStateNumber:(void *)wakeStateNumber mediaUniqueIdentifier:
{
  v13 = MEMORY[0x277CBEB38];
  wakeStateNumberCopy = wakeStateNumber;
  volumeCopy = volume;
  stateNumberCopy = stateNumber;
  numberCopy = number;
  stateCopy = state;
  v19 = a2;
  v20 = [[v13 alloc] initWithCapacity:7];
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  [v20 setValue:uUIDString forKey:*MEMORY[0x277CD09A8]];

  [v20 setValue:v19 forKey:*MEMORY[0x277CD0938]];
  [v20 setValue:stateCopy forKey:*MEMORY[0x277CD0990]];

  [v20 setValue:numberCopy forKey:*MEMORY[0x277CD0960]];
  [v20 setValue:stateNumberCopy forKey:*MEMORY[0x277CD09B0]];

  [v20 setValue:wakeStateNumberCopy forKey:*MEMORY[0x277CD0920]];
  [v20 setValue:volumeCopy forKey:*MEMORY[0x277CD09A0]];

  v23 = objc_msgSend_copy(v20);

  return v23;
}

- (void)updateWithResponses:(id)responses requestMessageInformation:(id)information
{
  v19 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  informationCopy = information;
  if ([responsesCopy count])
  {
    workQueue = [(HMDAccessoryProfile *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HMDMediaProfile_updateWithResponses_requestMessageInformation___block_invoke;
    block[3] = &unk_27868A010;
    v14 = responsesCopy;
    selfCopy = self;
    v16 = informationCopy;
    dispatch_async(workQueue, block);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Skipping updating media profile due to empty response array", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

void __65__HMDMediaProfile_updateWithResponses_requestMessageInformation___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 32);
      *buf = 138543618;
      v40 = v5;
      v41 = 2112;
      v42 = v6;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Updating media profile with responses %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x277CBEB38];
  v9 = [v7 count];
  if (*(a1 + 48))
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v9;
  }

  [v8 dictionaryWithCapacity:v10];
  v32 = v31 = a1;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = *(a1 + 32);
  v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v35;
    v15 = *MEMORY[0x277CD0910];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        v18 = [v17 request];
        v19 = [v18 property];
        v20 = +[HMDMediaSession mediaPropertyMessageKeys];
        v21 = [v20 containsObject:v19];

        if (v21)
        {
          v22 = [v17 value];
          [HMDMediaSession mediaPropertyValueTypeWithMessageKey:v19];
          if (objc_opt_isKindOfClass())
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }

          [v32 setValue:v23 forKey:v19];
        }

        v24 = [v18 property];
        v25 = [v24 isEqual:v15];

        if (v25)
        {
          v26 = [v17 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          v28 = v27;

          v13 = v28;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  if ([v32 count])
  {
    [v32 setValue:*(v31 + 48) forKey:*MEMORY[0x277CD0968]];
    [v32 setValue:v13 forKey:*MEMORY[0x277CD0910]];
    v29 = *(v31 + 40);
    v30 = objc_msgSend_copy(v32);
    [v29 _sessionPlaybackStateUpdated:v30 notifyXPCClients:1];
  }
}

- (void)_handleMediaResponses:(id)responses message:(id)message
{
  responsesCopy = responses;
  messageCopy = message;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMDMediaProfile__handleMediaResponses_message___block_invoke;
  block[3] = &unk_27868A010;
  v12 = responsesCopy;
  selfCopy = self;
  v14 = messageCopy;
  v9 = messageCopy;
  v10 = responsesCopy;
  dispatch_async(workQueue, block);
}

void __49__HMDMediaProfile__handleMediaResponses_message___block_invoke(uint64_t a1)
{
  v1 = a1;
  v53 = *MEMORY[0x277D85DE8];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = *(a1 + 32);
  v34 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (!v34)
  {
    goto LABEL_26;
  }

  v35 = *v46;
  v33 = *MEMORY[0x277CD0968];
  v2 = *MEMORY[0x277CD0938];
  v38 = *MEMORY[0x277CD0910];
  v30 = v1;
  do
  {
    for (i = 0; i != v34; ++i)
    {
      if (*v46 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v4 = *(*(&v45 + 1) + 8 * i);
      v5 = [v4 firstObject];
      v6 = [v5 request];
      v7 = [v6 mediaProfile];
      v8 = [v7 uniqueIdentifier];
      v9 = [*(v1 + 40) uniqueIdentifier];
      v10 = [v8 isEqual:v9];

      if (!v10)
      {
        goto LABEL_24;
      }

      v32 = i;
      v39 = v5;
      v11 = [[HMDMediaSessionRequestMessageInformation alloc] initWithMessage:*(v1 + 48)];
      v50 = v33;
      v51 = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v40 = [v12 mutableCopy];

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v13 = v4;
      v14 = [v13 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (!v14)
      {

        goto LABEL_23;
      }

      v15 = v14;
      v31 = v11;
      v37 = 0;
      v16 = *v42;
      while (2)
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v41 + 1) + 8 * j);
          v19 = [v18 request];
          v20 = [v19 property];
          v21 = [v20 isEqual:v2];

          if (v21)
          {
            v22 = [v18 error];
            if (v22)
            {

LABEL_28:
              v28 = *(v30 + 48);
              v29 = [v18 error];
              [v28 respondWithError:v29];

              return;
            }

            v23 = [v18 value];

            if (!v23)
            {
              goto LABEL_28;
            }

            v37 = 1;
            v24 = v2;
          }

          else
          {
            v25 = [v19 property];
            v24 = v38;
            v26 = [v25 isEqual:v38];

            if (!v26)
            {
              goto LABEL_18;
            }
          }

          v27 = [v18 value];
          [v40 setObject:v27 forKey:v24];

LABEL_18:
        }

        v15 = [v13 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v1 = v30;
      v11 = v31;
      if (v37)
      {
        [*(v30 + 40) _sessionPlaybackStateUpdated:v40 notifyXPCClients:1];
      }

LABEL_23:

      v5 = v39;
      i = v32;
LABEL_24:
    }

    v34 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
  }

  while (v34);
LABEL_26:

  [*(v1 + 48) respondWithSuccess];
}

- (void)_handleMediaSessionSetAudioControl:(id)control
{
  controlCopy = control;
  if (![(HMDMediaProfile *)self _updateAudioControl:?])
  {
    v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    [controlCopy respondWithError:v4];
  }
}

- (BOOL)_updateAudioControl:(id)control
{
  v14 = *MEMORY[0x277D85DE8];
  controlCopy = control;
  mediaSession = [(HMDMediaProfile *)self mediaSession];
  v6 = mediaSession;
  if (mediaSession)
  {
    [mediaSession handleMediaSessionSetAudioControl:controlCopy];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@No session for mediaProfile", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  return v6 != 0;
}

- (void)_handleRefreshPlayback:(id)playback
{
  playbackCopy = playback;
  if (![(HMDMediaProfile *)self _updateRefreshPlayback:?])
  {
    v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    [playbackCopy respondWithError:v4];
  }
}

- (BOOL)_updateRefreshPlayback:(id)playback
{
  playbackCopy = playback;
  mediaSession = [(HMDMediaProfile *)self mediaSession];
  isConnected = [mediaSession isConnected];
  if (isConnected)
  {
    [mediaSession handleRefreshPlayback:playbackCopy];
  }

  return isConnected;
}

- (void)_handleSetPlayback:(id)playback
{
  playbackCopy = playback;
  if (![(HMDMediaProfile *)self _updatePlayback:?])
  {
    v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    [playbackCopy respondWithError:v4];
  }
}

- (BOOL)_updatePlayback:(id)playback
{
  playbackCopy = playback;
  mediaSession = [(HMDMediaProfile *)self mediaSession];
  isConnected = [mediaSession isConnected];
  if (isConnected)
  {
    [mediaSession handleSetPlayback:playbackCopy];
  }

  return isConnected;
}

- (void)setMediaSession:(id)session
{
  sessionCopy = session;
  os_unfair_lock_lock_with_options();
  if ((HMFEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_mediaSession, session);
  }

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (HMDMediaSession)mediaSession
{
  os_unfair_lock_lock_with_options();
  v3 = self->_mediaSession;
  os_unfair_lock_unlock(&self->_lock.lock);

  return v3;
}

- (HMEEventForwarder)eventForwarder
{
  v15 = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryProfile *)self accessory];
  home = [accessory home];
  eventForwarder = [home eventForwarder];

  if (!eventForwarder)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = accessory;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to get event forwarder for accessory: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  return eventForwarder;
}

- (void)unregisterForNotifications
{
  notificationCenter = [(HMDMediaProfile *)self notificationCenter];
  [notificationCenter removeObserver:self name:@"HMDMediaSessionDidUpdatePlaybackStateNotification" object:0];

  notificationCenter2 = [(HMDMediaProfile *)self notificationCenter];
  [notificationCenter2 removeObserver:self name:*MEMORY[0x277D27E30] object:0];
}

- (void)registerForNotifications
{
  notificationCenter = [(HMDMediaProfile *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handleSessionPlaybackStateUpdatedNotification_ name:@"HMDMediaSessionDidUpdatePlaybackStateNotification" object:0];

  notificationCenter2 = [(HMDMediaProfile *)self notificationCenter];
  [notificationCenter2 addObserver:self selector:sel_handleSessionVolumeUpdatedNotification_ name:*MEMORY[0x277D27E30] object:0];
}

- (void)registerForMessages
{
  v12[2] = *MEMORY[0x277D85DE8];
  [(HMDMediaProfile *)self unregisterForNotifications];
  [(HMDMediaProfile *)self registerForNotifications];
  accessory = [(HMDAccessoryProfile *)self accessory];
  home = [accessory home];
  featuresDataSource = [home featuresDataSource];
  isMessageBindingsEnabled = [featuresDataSource isMessageBindingsEnabled];

  if ((isMessageBindingsEnabled & 1) == 0)
  {
    v11.receiver = self;
    v11.super_class = HMDMediaProfile;
    [(HMDAccessoryProfile *)&v11 registerForMessages];
    msgDispatcher = [(HMDAccessoryProfile *)self msgDispatcher];
    v8 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v12[0] = v8;
    v9 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
    v12[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

    [msgDispatcher registerForMessage:*MEMORY[0x277CD0980] receiver:self policies:v10 selector:sel__handleSetPlayback_];
    [msgDispatcher registerForMessage:*MEMORY[0x277CD0950] receiver:self policies:v10 selector:sel__handleRefreshPlayback_];
    [msgDispatcher registerForMessage:*MEMORY[0x277CD0978] receiver:self policies:v10 selector:sel__handleMediaSessionSetAudioControl_];
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
  block[2] = __71__HMDMediaProfile_configureWithMessageDispatcher_configurationTracker___block_invoke;
  block[3] = &unk_27868A010;
  v13 = dispatcherCopy;
  v14 = v8;
  selfCopy = self;
  v10 = v8;
  v11 = dispatcherCopy;
  dispatch_async(workQueue, block);
}

void __71__HMDMediaProfile_configureWithMessageDispatcher_configurationTracker___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v5.receiver = *(a1 + 48);
  v5.super_class = HMDMediaProfile;
  objc_msgSendSuper2(&v5, sel_configureWithMessageDispatcher_configurationTracker_, v3, v2);
  v4 = *(a1 + 40);
  if (v4)
  {
    dispatch_group_leave(v4);
  }
}

- (HMDMediaProfile)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = [objc_opt_class() uniqueIdentifierFromAccessory:accessoryCopy];
  v6 = [(HMDAccessoryProfile *)self initWithAccessory:accessoryCopy uniqueIdentifier:v5 services:0];

  return v6;
}

- (HMDMediaProfile)initWithAccessory:(id)accessory uniqueIdentifier:(id)identifier services:(id)services workQueue:(id)queue
{
  v10 = MEMORY[0x277CCAB98];
  queueCopy = queue;
  servicesCopy = services;
  identifierCopy = identifier;
  accessoryCopy = accessory;
  defaultCenter = [v10 defaultCenter];
  v16 = [(HMDMediaProfile *)self initWithAccessory:accessoryCopy uniqueIdentifier:identifierCopy services:servicesCopy workQueue:queueCopy notificationCenter:defaultCenter];

  return v16;
}

- (HMDMediaProfile)initWithAccessory:(id)accessory uniqueIdentifier:(id)identifier services:(id)services workQueue:(id)queue notificationCenter:(id)center
{
  centerCopy = center;
  v17.receiver = self;
  v17.super_class = HMDMediaProfile;
  v14 = [(HMDAccessoryProfile *)&v17 initWithAccessory:accessory uniqueIdentifier:identifier services:services workQueue:queue];
  v15 = v14;
  if (v14)
  {
    v14->_lock.lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v14->_notificationCenter, center);
  }

  return v15;
}

- (NSString)mediaRouteID
{
  accessory = [(HMDAccessoryProfile *)self accessory];
  identifier = [accessory identifier];

  return identifier;
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v27[2] = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  messageCopy = message;
  receiverCopy = receiver;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = receiverCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  accessory = [v12 accessory];
  home = [accessory home];

  v15 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v27[0] = v15;
  v16 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
  v27[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];

  name = [messageCopy name];
  LODWORD(v16) = [name isEqualToString:*MEMORY[0x277CD0980]];

  name2 = [messageCopy name];
  name4 = name2;
  if (v16)
  {
    goto LABEL_6;
  }

  v21 = [name2 isEqualToString:*MEMORY[0x277CD0950]];

  name3 = [messageCopy name];
  name4 = name3;
  if (v21)
  {
    goto LABEL_6;
  }

  v25 = [name3 isEqualToString:*MEMORY[0x277CD0978]];

  if (v25)
  {
    name4 = [messageCopy name];
LABEL_6:
    v23 = HMFCreateMessageBinding();

    goto LABEL_7;
  }

  v26.receiver = self;
  v26.super_class = &OBJC_METACLASS___HMDMediaProfile;
  v23 = objc_msgSendSuper2(&v26, sel_messageBindingForDispatcher_message_receiver_, dispatcherCopy, messageCopy, receiverCopy);
LABEL_7:

  return v23;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_245391 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_245391, &__block_literal_global_15_245392);
  }

  v3 = logCategory__hmf_once_v1_245393;

  return v3;
}

void __30__HMDMediaProfile_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_245393;
  logCategory__hmf_once_v1_245393 = v0;
}

+ (id)uniqueIdentifierFromAccessory:(id)accessory
{
  uuid = [accessory uuid];
  v5 = [self uniqueIdentifierFromAccessoryUUID:uuid];

  return v5;
}

+ (id)uniqueIdentifierFromAccessoryUUID:(id)d
{
  v3 = MEMORY[0x277CBEB28];
  dCopy = d;
  v5 = [v3 dataWithLength:16];
  [dCopy getUUIDBytes:{objc_msgSend(v5, "mutableBytes")}];

  v6 = MEMORY[0x277CCAD78];
  namespace = [objc_opt_class() namespace];
  v8 = [v6 hmf_UUIDWithNamespace:namespace data:v5];

  return v8;
}

+ (id)sessionNamespace
{
  if (sessionNamespace_onceToken != -1)
  {
    dispatch_once(&sessionNamespace_onceToken, &__block_literal_global_12_245398);
  }

  v3 = sessionNamespace_sessionNamespace;

  return v3;
}

void __35__HMDMediaProfile_sessionNamespace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"B93C6A7F-75EF-4A55-B3BC-8C09CACC301C"];
  v1 = sessionNamespace_sessionNamespace;
  sessionNamespace_sessionNamespace = v0;
}

+ (id)namespace
{
  if (namespace_onceToken_245403 != -1)
  {
    dispatch_once(&namespace_onceToken_245403, &__block_literal_global_245404);
  }

  v3 = namespace_namespace_245405;

  return v3;
}

void __28__HMDMediaProfile_namespace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"7B3B12CE-F1D8-49D9-A573-4AB2D944B077"];
  v1 = namespace_namespace_245405;
  namespace_namespace_245405 = v0;
}

@end