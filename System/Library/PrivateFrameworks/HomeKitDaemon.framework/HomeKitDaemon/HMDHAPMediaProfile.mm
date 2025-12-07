@interface HMDHAPMediaProfile
- (BOOL)_updateAudioControl:(id)control;
- (BOOL)_updatePlayback:(id)playback;
- (BOOL)_updateRefreshPlayback:(id)playback;
- (HMDCharacteristic)smartSpeakerCurrentMediaStateCharacteristic;
- (HMDCharacteristic)smartSpeakerVolumeCharacteristic;
- (HMDHAPMediaProfile)initWithMediaServices:(id)services;
- (id)_allCharacteristicsToMonitor;
- (id)_mediaSessionStateFromProfile;
- (id)_smartSpeakerAirPlayEnableCharacteristic;
- (id)_smartSpeakerAirPlayEnableReadRequest;
- (id)_smartSpeakerCurrentMediaStateReadRequest;
- (id)_smartSpeakerMutedCharacteristic;
- (id)_smartSpeakerMutedReadRequest;
- (id)_smartSpeakerMutedWriteRequestWithMuted:(id)muted;
- (id)_smartSpeakerTargetMediaStateCharacteristic;
- (id)_smartSpeakerTargetMediaStateWriteRequestWithPlaybackState:(id)state;
- (id)_smartSpeakerVolumeReadRequest;
- (id)_smartSpeakerVolumeWriteRequestWithVolumePercentage:(id)percentage;
- (id)mediaSessionFromProfile;
- (id)playStateWriteRequestWithPlaybackState:(int64_t)state;
- (int64_t)airPlayEnable;
- (void)_disableCharacteristicNotifications;
- (void)_handleCharacteristicChanges:(id)changes;
- (void)_notifyProfileSettingsUpdated:(id)updated;
- (void)_setCharacteristicNotifications:(BOOL)notifications;
- (void)_updateCharacteristicChanges;
- (void)_updateCurrentMediaState:(id)state volumePercentage:(id)percentage muted:(id)muted enable:(id)enable message:(id)message;
- (void)encodeWithCoder:(id)coder;
- (void)handleAccessoryConfigured:(id)configured;
- (void)handleCharacteristicsUpdated:(id)updated;
- (void)handleHomeCharacteristicValuesChanged:(id)changed;
- (void)handlePrimaryResidentChanged:(id)changed;
- (void)handleResidentAdded:(id)added;
- (void)registerForNotifications;
- (void)setAirPlayEnable:(int64_t)enable;
- (void)setEnable:(int64_t)enable completionHandler:(id)handler;
- (void)updateMediaSessionState:(id)state usingCharacteristics:(id)characteristics;
- (void)updateMediaSessionState:(id)state usingServices:(id)services;
@end

@implementation HMDHAPMediaProfile

- (void)setEnable:(int64_t)enable completionHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (enable < 2)
  {
    accessory = [(HMDAccessoryProfile *)self accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = accessory;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      _smartSpeakerAirPlayEnableCharacteristic = [(HMDHAPMediaProfile *)self _smartSpeakerAirPlayEnableCharacteristic];
      if (_smartSpeakerAirPlayEnableCharacteristic && ([MEMORY[0x277CCABB0] numberWithInteger:enable == 1], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(_smartSpeakerAirPlayEnableCharacteristic, "authorizationData"), v13 = objc_claimAutoreleasedReturnValue(), +[HMDCharacteristicWriteRequest writeRequestWithCharacteristic:value:authorizationData:type:](HMDCharacteristicWriteRequest, "writeRequestWithCharacteristic:value:authorizationData:type:", _smartSpeakerAirPlayEnableCharacteristic, v12, v13, 0), v14 = objc_claimAutoreleasedReturnValue(), v13, v12, v14))
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543618;
          v36 = v18;
          v37 = 2048;
          enableCopy = enable;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Set airplay enable %zd", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        objc_initWeak(buf, selfCopy);
        v34 = v14;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
        workQueue = [(HMDAccessoryProfile *)selfCopy workQueue];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __50__HMDHAPMediaProfile_setEnable_completionHandler___block_invoke;
        v30[3] = &unk_278684638;
        objc_copyWeak(v33, buf);
        v21 = v14;
        v31 = v21;
        v32 = handlerCopy;
        v33[1] = enable;
        [v10 writeCharacteristicValues:v19 source:1160 queue:workQueue completionHandler:v30];

        objc_destroyWeak(v33);
        objc_destroyWeak(buf);
      }

      else
      {
        v22 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543362;
          v36 = v25;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Set AirPlay Enable] failed to create AirPlay enable write request", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        if (handlerCopy)
        {
          (*(handlerCopy + 2))(handlerCopy, v21);
        }
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v29;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Set AirPlay Enable] accessory not part of profile", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
      _smartSpeakerAirPlayEnableCharacteristic = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, _smartSpeakerAirPlayEnableCharacteristic);
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v7);
    }
  }
}

void __50__HMDHAPMediaProfile_setEnable_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v35 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v3 count])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v34 = v3;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v39;
      do
      {
        v9 = 0;
        v36 = v6;
        do
        {
          if (*v39 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v38 + 1) + 8 * v9);
          v11 = [v10 error];

          if (v11)
          {
            v12 = [v10 error];

            v13 = objc_autoreleasePoolPush();
            v14 = WeakRetained;
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v16 = v8;
              v18 = v17 = WeakRetained;
              v19 = [v10 request];
              v20 = [v10 error];
              *buf = 138543874;
              v45 = v18;
              v46 = 2112;
              v47 = v19;
              v48 = 2112;
              v49 = v20;
              _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Write request %@ failed with error %@", buf, 0x20u);

              WeakRetained = v17;
              v8 = v16;
              v6 = v36;
            }

            objc_autoreleasePoolPop(v13);
            v7 = v12;
          }

          else
          {
            v21 = [v10 request];
            v22 = [v21 characteristic];
            v23 = [v22 type];
            v24 = [v23 isEqual:@"0000025B-0000-1000-8000-0026BB765291"];

            if (v24)
            {
              [WeakRetained setAirPlayEnable:v35[7]];
              v42 = @"settings-airplay";
              v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(WeakRetained, "airPlayEnable")}];
              v43 = v25;
              v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];

              [WeakRetained _notifyProfileSettingsUpdated:v26];
            }
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v33 = v35[5];
    if (v33)
    {
      (*(v33 + 16))(v33, v7);
    }

    v3 = v34;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = WeakRetained;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = v35[4];
      *buf = 138543618;
      v45 = v30;
      v46 = 2112;
      v47 = v31;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Invalid response for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
    v32 = v35[5];
    if (v32)
    {
      (*(v32 + 16))(v32, v7);
    }
  }
}

- (void)_notifyProfileSettingsUpdated:(id)updated
{
  updatedCopy = updated;
  if ([updatedCopy count])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"HMDHAPMediaProfileUpdatedNotification" object:self userInfo:updatedCopy];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HMDHAPMediaProfile;
  [(HMDMediaProfile *)&v7 encodeWithCoder:coderCopy];
  mediaSession = [(HMDMediaProfile *)self mediaSession];

  if (!mediaSession)
  {
    mediaSessionFromProfile = [(HMDHAPMediaProfile *)self mediaSessionFromProfile];
    [coderCopy encodeObject:mediaSessionFromProfile forKey:*MEMORY[0x277CD08D8]];
  }
}

- (void)_updateCurrentMediaState:(id)state volumePercentage:(id)percentage muted:(id)muted enable:(id)enable message:(id)message
{
  v50 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  percentageCopy = percentage;
  mutedCopy = muted;
  enableCopy = enable;
  messageCopy = message;
  if (stateCopy || percentageCopy || mutedCopy || enableCopy)
  {
    v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
    v18 = v17;
    if (stateCopy)
    {
      [v17 setValue:stateCopy forKey:*MEMORY[0x277CD0938]];
    }

    if (percentageCopy)
    {
      [v18 setValue:percentageCopy forKey:*MEMORY[0x277CD09B0]];
    }

    if (mutedCopy)
    {
      [v18 setValue:mutedCopy forKey:*MEMORY[0x277CD0928]];
    }

    v41 = v18;
    v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    if (enableCopy)
    {
      integerValue = [enableCopy integerValue];
      v21 = integerValue == 1 ? 1 : -1;
      v22 = integerValue ? v21 : 0;
      if ([(HMDHAPMediaProfile *)self airPlayEnable]!= v22)
      {
        [(HMDHAPMediaProfile *)self setAirPlayEnable:v22];
        v23 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHAPMediaProfile airPlayEnable](self, "airPlayEnable")}];
        [v19 setValue:v23 forKey:@"settings-airplay"];
      }
    }

    v39 = v19;
    v40 = enableCopy;
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138544130;
      v43 = v27;
      v44 = 2112;
      v45 = stateCopy;
      v46 = 2112;
      v47 = percentageCopy;
      v48 = 2112;
      v49 = mutedCopy;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Notifying XPC clients of updated current media state %@, volume %@, muted %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v24);
    v28 = objc_alloc(MEMORY[0x277D0F820]);
    uniqueIdentifier = [(HMDAccessoryProfile *)selfCopy uniqueIdentifier];
    v30 = [v28 initWithTarget:uniqueIdentifier];

    v31 = MEMORY[0x277D0F848];
    v32 = *MEMORY[0x277CD0940];
    v33 = objc_msgSend_copy(v41);
    v34 = [v31 messageWithName:v32 destination:v30 payload:v33];

    v35 = messageCopy;
    identifier = [messageCopy identifier];
    if (identifier)
    {
      [v34 setIdentifier:identifier];
    }

    [v34 setRequiresSPIEntitlement];
    msgDispatcher = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    v38 = objc_msgSend_copy(v34);
    [msgDispatcher sendMessage:v38 completionHandler:0];

    [(HMDHAPMediaProfile *)selfCopy _notifyProfileSettingsUpdated:v39];
    messageCopy = v35;
    enableCopy = v40;
  }
}

- (BOOL)_updateAudioControl:(id)control
{
  v41 = *MEMORY[0x277D85DE8];
  controlCopy = control;
  v36.receiver = self;
  v36.super_class = HMDHAPMediaProfile;
  if (![(HMDMediaProfile *)&v36 _updateAudioControl:controlCopy])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@No local media session for hapMediaProfile", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [controlCopy numberForKey:*MEMORY[0x277CD0908]];
    v11 = [controlCopy numberForKey:*MEMORY[0x277CD08F0]];
    if (v10 | v11)
    {
      accessory = [(HMDAccessoryProfile *)selfCopy accessory];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = accessory;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      if (!v14)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = selfCopy;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v38 = v20;
          v39 = 2112;
          v40 = v18;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Updating Audio Control] accessory not part of profile (%@)", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        v14 = 0;
        v5 = 0;
        goto LABEL_33;
      }

      v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
      if (v10)
      {
        v16 = [(HMDHAPMediaProfile *)selfCopy _smartSpeakerVolumeWriteRequestWithVolumePercentage:v10];
        if (v16)
        {
          [v15 addObject:v16];
        }

        else
        {
          context = objc_autoreleasePoolPush();
          v21 = selfCopy;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = HMFGetLogIdentifier();
            *buf = 138543362;
            v38 = v23;
            _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Updating Audio Control] smart speaker volume is not available", buf, 0xCu);
          }

          objc_autoreleasePoolPop(context);
        }
      }

      if (v11)
      {
        v24 = [(HMDHAPMediaProfile *)selfCopy _smartSpeakerMutedWriteRequestWithMuted:v11];
        if (v24)
        {
          [v15 addObject:v24];
        }

        else
        {
          context = objc_autoreleasePoolPush();
          v25 = selfCopy;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = HMFGetLogIdentifier();
            *buf = 138543362;
            v38 = v27;
            _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Updating Audio Control] smart speaker muted is not available", buf, 0xCu);
          }

          objc_autoreleasePoolPop(context);
        }
      }

      if ([v15 count])
      {
        objc_initWeak(buf, selfCopy);
        workQueue = [(HMDAccessoryProfile *)selfCopy workQueue];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __42__HMDHAPMediaProfile__updateAudioControl___block_invoke;
        v32[3] = &unk_278684610;
        objc_copyWeak(&v35, buf);
        v33 = v15;
        v34 = controlCopy;
        [v14 writeCharacteristicValues:v33 source:1160 message:v34 queue:workQueue completionHandler:v32];

        objc_destroyWeak(&v35);
        objc_destroyWeak(buf);
      }

      else
      {
        v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
        [controlCopy respondWithError:v29];
      }
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
      [controlCopy respondWithError:v14];
    }

    v5 = 1;
LABEL_33:

    goto LABEL_34;
  }

  v5 = 1;
LABEL_34:

  return v5;
}

void __42__HMDHAPMediaProfile__updateAudioControl___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v3 count])
  {
    v30 = a1;
    v31 = v3;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v35;
      do
      {
        v9 = 0;
        v32 = v6;
        do
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v34 + 1) + 8 * v9);
          v11 = [v10 error];

          if (v11)
          {
            v12 = [v10 error];

            v13 = objc_autoreleasePoolPush();
            v14 = WeakRetained;
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v16 = v8;
              v18 = v17 = WeakRetained;
              v19 = [v10 value];
              v20 = [v10 error];
              *buf = 138543874;
              v39 = v18;
              v40 = 2112;
              v41 = v19;
              v42 = 2112;
              v43 = v20;
              _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Write value %@ failed with error %@", buf, 0x20u);

              WeakRetained = v17;
              v8 = v16;
              v6 = v32;
            }

            objc_autoreleasePoolPop(v13);
            v7 = v12;
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v28 = [*(v30 + 40) responseHandler];

    if (v28)
    {
      v29 = [*(v30 + 40) responseHandler];
      (v29)[2](v29, v7, 0);
    }

    v3 = v31;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = WeakRetained;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v25 = v24 = a1;
      v26 = *(v24 + 32);
      *buf = 138543618;
      v39 = v25;
      v40 = 2112;
      v41 = v26;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Invalid response with write values %@", buf, 0x16u);

      a1 = v24;
    }

    objc_autoreleasePoolPop(v21);
    v27 = *(a1 + 40);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
    [v27 respondWithError:v7];
  }
}

- (void)handlePrimaryResidentChanged:(id)changed
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDHAPMediaProfile_handlePrimaryResidentChanged___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __51__HMDHAPMediaProfile_handlePrimaryResidentChanged___block_invoke(uint64_t a1)
{
  v1 = a1;
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessory];
  v3 = [v2 home];
  v4 = [v3 residentDeviceManager];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = v4;
  v5 = [v4 residentDevices];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    v23 = *v26;
    v24 = v1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 device];
        if ([v11 isCurrentDevice])
        {
          v12 = [v10 capabilities];
          v13 = [v12 supportsSiriEndpointSetup];

          if (v13)
          {
            v14 = [v10 isConfirmed];
            v15 = objc_autoreleasePoolPush();
            v16 = *(v1 + 32);
            v17 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = HMFGetLogIdentifier();
              HMFBooleanToString();
              v20 = v19 = v5;
              *buf = 138543618;
              v30 = v18;
              v31 = 2112;
              v32 = v20;
              _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Current device is primary:%@ and does not support home hub", buf, 0x16u);

              v5 = v19;
              v8 = v23;

              v1 = v24;
            }

            objc_autoreleasePoolPop(v15);
            v21 = *(v1 + 32);
            if (v14)
            {
              [v21 _setCharacteristicNotifications:1];
            }

            else
            {
              [v21 _disableCharacteristicNotifications];
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v7);
  }
}

- (void)handleResidentAdded:(id)added
{
  addedCopy = added;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HMDHAPMediaProfile_handleResidentAdded___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = addedCopy;
  selfCopy = self;
  v6 = addedCopy;
  dispatch_async(workQueue, v7);
}

void __42__HMDHAPMediaProfile_handleResidentAdded___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = [v4 device];
    v6 = v5;
    if (v5 && [v5 isCurrentDevice])
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 40);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [*(a1 + 32) name];
        v12 = [v6 identifier];
        v13 = [v12 UUIDString];
        v14 = 138543874;
        v15 = v10;
        v16 = 2112;
        v17 = v11;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Current device was added as a resident device (%@ / %@) notification.", &v14, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      [*(a1 + 40) _setCharacteristicNotifications:1];
    }
  }

  else
  {
    v6 = 0;
  }
}

- (void)_disableCharacteristicNotifications
{
  v16 = *MEMORY[0x277D85DE8];
  _allCharacteristicsToMonitor = [(HMDHAPMediaProfile *)self _allCharacteristicsToMonitor];
  if ([_allCharacteristicsToMonitor count])
  {
    accessory = [(HMDAccessoryProfile *)self accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = accessory;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = _allCharacteristicsToMonitor;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Disabling notifications for characteristics :%@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    clientIdentifier = [(HMDHAPMediaProfile *)selfCopy clientIdentifier];
    [v6 enableNotification:0 forCharacteristics:_allCharacteristicsToMonitor message:0 clientIdentifier:clientIdentifier];
  }
}

- (void)_setCharacteristicNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  v24 = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryProfile *)self accessory];
  home = [accessory home];
  currentDeviceSupportsSidekickSettings = [home currentDeviceSupportsSidekickSettings];

  if (currentDeviceSupportsSidekickSettings)
  {
    _allCharacteristicsToMonitor = [(HMDHAPMediaProfile *)self _allCharacteristicsToMonitor];
    if ([_allCharacteristicsToMonitor count])
    {
      accessory2 = [(HMDAccessoryProfile *)self accessory];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = accessory2;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = @"Disable";
        v18 = 138543874;
        v19 = v15;
        v20 = 2112;
        if (notificationsCopy)
        {
          v16 = @"Enable";
        }

        v21 = v16;
        v22 = 2112;
        v23 = _allCharacteristicsToMonitor;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@%@ notifications for characteristics: %@", &v18, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      clientIdentifier = [(HMDHAPMediaProfile *)selfCopy clientIdentifier];
      [v11 enableNotification:notificationsCopy forCharacteristics:_allCharacteristicsToMonitor message:0 clientIdentifier:clientIdentifier];
    }
  }
}

- (id)_allCharacteristicsToMonitor
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
  _smartSpeakerAirPlayEnableCharacteristic = [(HMDHAPMediaProfile *)self _smartSpeakerAirPlayEnableCharacteristic];
  if (_smartSpeakerAirPlayEnableCharacteristic)
  {
    [v3 addObject:_smartSpeakerAirPlayEnableCharacteristic];
  }

  v5 = objc_msgSend_copy(v3);

  return v5;
}

- (void)handleCharacteristicsUpdated:(id)updated
{
  updatedCopy = updated;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMDHAPMediaProfile_handleCharacteristicsUpdated___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = updatedCopy;
  v6 = updatedCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __51__HMDHAPMediaProfile_handleCharacteristicsUpdated___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _updateCharacteristicChanges];
}

- (void)handleAccessoryConfigured:(id)configured
{
  configuredCopy = configured;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDHAPMediaProfile_handleAccessoryConfigured___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = configuredCopy;
  v6 = configuredCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __48__HMDHAPMediaProfile_handleAccessoryConfigured___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _updateCharacteristicChanges];
  return [*(a1 + 32) _setCharacteristicNotifications:1];
}

- (void)handleHomeCharacteristicValuesChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

  if ([v6 count])
  {
    workQueue = [(HMDAccessoryProfile *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__HMDHAPMediaProfile_handleHomeCharacteristicValuesChanged___block_invoke;
    block[3] = &unk_27868A750;
    v18 = v6;
    selfCopy = self;
    dispatch_async(workQueue, block);

    v8 = v18;
  }

  else
  {
    userInfo2 = [changedCopy userInfo];
    v8 = [userInfo2 hmf_dictionaryForKey:@"kModifiedCharacteristicsForAccessoryKey"];

    accessory = [(HMDAccessoryProfile *)self accessory];
    uuid = [accessory uuid];
    uUIDString = [uuid UUIDString];
    v13 = [v8 hmf_dictionaryForKey:uUIDString];

    if (v13)
    {
      workQueue2 = [(HMDAccessoryProfile *)self workQueue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __60__HMDHAPMediaProfile_handleHomeCharacteristicValuesChanged___block_invoke_2;
      v15[3] = &unk_27868A750;
      v15[4] = self;
      v16 = v13;
      dispatch_async(workQueue2, v15);
    }
  }
}

void __60__HMDHAPMediaProfile_handleHomeCharacteristicValuesChanged___block_invoke(uint64_t a1)
{
  v1 = a1;
  v34 = *MEMORY[0x277D85DE8];
  v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(v1 + 32);
  v2 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v29;
    v20 = *v29;
    v21 = v1;
    do
    {
      v5 = 0;
      v22 = v3;
      do
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * v5);
        v7 = [*(v1 + 40) accessory];
        v8 = [v6 accessory];
        v9 = HMFEqualObjects();

        if (v9)
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v10 = [*(v1 + 40) services];
          v11 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v25;
            while (2)
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v25 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = [*(*(&v24 + 1) + 8 * i) instanceID];
                v16 = [v6 service];
                v17 = [v16 instanceID];
                v18 = HMFEqualObjects();

                if (v18)
                {
                  [v19 addObject:v6];
                  goto LABEL_17;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:

          v4 = v20;
          v1 = v21;
          v3 = v22;
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v3);
  }

  [*(v1 + 40) _handleCharacteristicChanges:v19];
}

void __60__HMDHAPMediaProfile_handleHomeCharacteristicValuesChanged___block_invoke_2(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v34 = [MEMORY[0x277CBEB18] array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v30 = a1;
  obj = *(a1 + 40);
  v26 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v26)
  {
    v25 = *v45;
    v35 = *MEMORY[0x277CD2128];
    do
    {
      v6 = 0;
      do
      {
        if (*v45 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v6;
        v29 = *(*(&v44 + 1) + 8 * v6);
        v7 = [v5 numberFromString:?];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v32 = [*(v30 + 32) services];
        v8 = [v32 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v41;
          v28 = *v41;
          do
          {
            v11 = 0;
            v31 = v9;
            do
            {
              if (*v41 != v10)
              {
                objc_enumerationMutation(v32);
              }

              v12 = [*(*(&v40 + 1) + 8 * v11) instanceID];
              v13 = HMFEqualObjects();

              if (v13)
              {
                v33 = v11;
                v14 = [*(v30 + 40) hmf_dictionaryForKey:v29];
                v36 = 0u;
                v37 = 0u;
                v38 = 0u;
                v39 = 0u;
                v15 = [v14 countByEnumeratingWithState:&v36 objects:v48 count:16];
                if (v15)
                {
                  v16 = v15;
                  v17 = *v37;
                  do
                  {
                    for (i = 0; i != v16; ++i)
                    {
                      if (*v37 != v17)
                      {
                        objc_enumerationMutation(v14);
                      }

                      v19 = *(*(&v36 + 1) + 8 * i);
                      v20 = [v5 numberFromString:v19];
                      v21 = [v4 findCharacteristic:v20 forService:v7];
                      if (v21)
                      {
                        v22 = [v14 hmf_dictionaryForKey:v19];
                        v23 = [v22 hmf_dataForKey:v35];
                        if (v23)
                        {
                        }

                        else
                        {
                          [v34 addObject:v21];
                        }
                      }
                    }

                    v16 = [v14 countByEnumeratingWithState:&v36 objects:v48 count:16];
                  }

                  while (v16);
                }

                v10 = v28;
                v9 = v31;
                v11 = v33;
              }

              ++v11;
            }

            while (v11 != v9);
            v9 = [v32 countByEnumeratingWithState:&v40 objects:v49 count:16];
          }

          while (v9);
        }

        v6 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v26);
  }

  if ([v34 count])
  {
    [*(v30 + 32) _handleCharacteristicChanges:v34];
  }
}

- (void)_updateCharacteristicChanges
{
  v15 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  services = [(HMDAccessoryProfile *)self services];
  v5 = [services countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(services);
        }

        characteristics = [*(*(&v10 + 1) + 8 * v8) characteristics];
        [array addObjectsFromArray:characteristics];

        ++v8;
      }

      while (v6 != v8);
      v6 = [services countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(HMDHAPMediaProfile *)self _handleCharacteristicChanges:array];
}

- (void)_handleCharacteristicChanges:(id)changes
{
  selfCopy = self;
  v42 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = changes;
  v3 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v3)
  {
    v32 = 0;
    v34 = 0;
    v35 = 0;
    v5 = 0;
    goto LABEL_35;
  }

  v4 = v3;
  v32 = 0;
  v34 = 0;
  v35 = 0;
  v5 = 0;
  v6 = *v38;
  v7 = *MEMORY[0x277CCF840];
  v8 = *MEMORY[0x277CCFBA8];
  v33 = *MEMORY[0x277CCF980];
  do
  {
    v9 = 0;
    do
    {
      if (*v38 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v37 + 1) + 8 * v9);
      type = [v10 type];
      v12 = [type isEqualToString:v7];

      if (v12)
      {
        value = [v10 value];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = value;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        v16 = MEMORY[0x277CCABB0];
        v17 = [v15 integerValue] - 1;
        if (v17 > 4)
        {
          v18 = 1;
        }

        else
        {
          v18 = qword_22A587F08[v17];
        }

        [v16 numberWithInteger:v18];
        v5 = value3 = v5;
LABEL_19:

        goto LABEL_20;
      }

      type2 = [v10 type];
      v20 = [type2 isEqualToString:v8];

      if (v20)
      {
        value2 = [v10 value];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = value2;
        }

        else
        {
          v22 = 0;
        }

        v15 = v22;

        __percentageForCharacteristicValue(0, v15);
        v35 = value3 = v35;
        goto LABEL_19;
      }

      type3 = [v10 type];
      v25 = [type3 isEqualToString:v33];

      if (v25)
      {
        value3 = [v10 value];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = value3;
        }

        else
        {
          v26 = 0;
        }

        v15 = v34;
        v34 = v26;
        goto LABEL_19;
      }

      type4 = [v10 type];
      v28 = [type4 isEqualToString:@"0000025B-0000-1000-8000-0026BB765291"];

      if (v28)
      {
        value3 = [v10 value];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = value3;
        }

        else
        {
          v29 = 0;
        }

        v15 = v32;
        v32 = v29;
        goto LABEL_19;
      }

LABEL_20:
      ++v9;
    }

    while (v4 != v9);
    v30 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    v4 = v30;
  }

  while (v30);
LABEL_35:
  [(HMDHAPMediaProfile *)selfCopy _updateCurrentMediaState:v5 volumePercentage:v35 muted:v34 enable:v32 message:0, selfCopy];
}

- (void)updateMediaSessionState:(id)state usingCharacteristics:(id)characteristics
{
  v39 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  characteristicsCopy = characteristics;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = [characteristicsCopy countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    v10 = *MEMORY[0x277CCF840];
    v11 = *MEMORY[0x277CCFBA8];
    v33 = *MEMORY[0x277CCF980];
    do
    {
      v12 = 0;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(characteristicsCopy);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        type = [v13 type];
        v15 = [type isEqualToString:v10];

        if (v15)
        {
          value = [v13 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = value;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;

          integerValue = [v18 integerValue];
          if ((integerValue - 1) > 4)
          {
            v20 = 1;
          }

          else
          {
            v20 = qword_22A587F08[integerValue - 1];
          }

          [stateCopy setPlaybackState:v20];
        }

        else
        {
          type2 = [v13 type];
          v22 = [type2 isEqualToString:v11];

          if (v22)
          {
            value2 = [v13 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = value2;
            }

            else
            {
              v24 = 0;
            }

            v25 = v24;

            v26 = __percentageForCharacteristicValue(0, v25);

            [stateCopy setVolume:v26];
          }

          else
          {
            type3 = [v13 type];
            v28 = [type3 isEqualToString:v33];

            if (v28)
            {
              value3 = [v13 value];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v30 = value3;
              }

              else
              {
                v30 = 0;
              }

              v31 = v30;

              [stateCopy setMuted:v31];
            }
          }
        }

        ++v12;
      }

      while (v8 != v12);
      v32 = [characteristicsCopy countByEnumeratingWithState:&v34 objects:v38 count:16];
      v8 = v32;
    }

    while (v32);
  }
}

- (void)updateMediaSessionState:(id)state usingServices:(id)services
{
  stateCopy = state;
  v6 = [services na_filter:&__block_literal_global_246417];
  if ([v6 count])
  {
    firstObject = [v6 firstObject];
    characteristics = [firstObject characteristics];
    [(HMDHAPMediaProfile *)self updateMediaSessionState:stateCopy usingCharacteristics:characteristics];
  }
}

uint64_t __60__HMDHAPMediaProfile_updateMediaSessionState_usingServices___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:@"00000228-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_mediaSessionStateFromProfile
{
  v15 = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryProfile *)self accessory];
  if (accessory)
  {
    v4 = [HMDMediaSessionState alloc];
    identifier = [accessory identifier];
    v6 = [(HMDMediaSessionState *)v4 initWithSessionIdentifier:identifier];

    if ([accessory isReachable])
    {
      services = [(HMDAccessoryProfile *)self services];
      [(HMDHAPMediaProfile *)self updateMediaSessionState:v6 usingServices:services];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to derive media session state from profile due to no accessory", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v6 = 0;
  }

  return v6;
}

- (id)mediaSessionFromProfile
{
  v15 = *MEMORY[0x277D85DE8];
  _mediaSessionStateFromProfile = [(HMDHAPMediaProfile *)self _mediaSessionStateFromProfile];
  if (_mediaSessionStateFromProfile)
  {
    v4 = [HMDMediaSession alloc];
    selfCopy = self;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy count:1];
    v6 = [(HMDMediaSession *)v4 initWithEndpoint:0 mediaProfiles:v5 state:_mediaSessionStateFromProfile];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to derive media session from profile due to no media session state from profile", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  return v6;
}

- (BOOL)_updateRefreshPlayback:(id)playback
{
  v56 = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = HMDHAPMediaProfile;
  playbackCopy = playback;
  if (![(HMDMediaProfile *)&v50 _updateRefreshPlayback:?])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v53 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@No local media session for hapMediaProfile", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    accessory = [(HMDAccessoryProfile *)selfCopy accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = accessory;
    }

    else
    {
      v9 = 0;
    }

    v36 = v9;

    v37 = v36 != 0;
    if (v36)
    {
      v41 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
      _smartSpeakerAirPlayEnableReadRequest = [(HMDHAPMediaProfile *)selfCopy _smartSpeakerAirPlayEnableReadRequest];
      if (_smartSpeakerAirPlayEnableReadRequest)
      {
        [v41 addObject:_smartSpeakerAirPlayEnableReadRequest];
      }

      else
      {
        v14 = objc_autoreleasePoolPush();
        v15 = selfCopy;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543362;
          v53 = v17;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Playback] smart speaker airplay enable state is not available", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
      }

      [playbackCopy arrayForKey:{*MEMORY[0x277CD0948], _smartSpeakerAirPlayEnableReadRequest}];
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      obj = v47 = 0u;
      v18 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v18)
      {
        v19 = *v47;
        v20 = *MEMORY[0x277CD0938];
        v21 = *MEMORY[0x277CD09B0];
        v39 = *MEMORY[0x277CD0928];
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v47 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v46 + 1) + 8 * i);
            if ([v23 isEqual:v20])
            {
              _smartSpeakerCurrentMediaStateReadRequest = [(HMDHAPMediaProfile *)selfCopy _smartSpeakerCurrentMediaStateReadRequest];
              if (!_smartSpeakerCurrentMediaStateReadRequest)
              {
                v25 = objc_autoreleasePoolPush();
                v26 = selfCopy;
                v27 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  v28 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v53 = v28;
                  _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Playback] smart speaker current media state is not available", buf, 0xCu);
                }

LABEL_39:

                objc_autoreleasePoolPop(v25);
                _smartSpeakerCurrentMediaStateReadRequest = 0;
                goto LABEL_40;
              }
            }

            else if ([v23 isEqual:v21])
            {
              _smartSpeakerCurrentMediaStateReadRequest = [(HMDHAPMediaProfile *)selfCopy _smartSpeakerVolumeReadRequest];
              if (!_smartSpeakerCurrentMediaStateReadRequest)
              {
                v25 = objc_autoreleasePoolPush();
                v26 = selfCopy;
                v27 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  v29 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v53 = v29;
                  _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Playback] smart speaker volume is not available", buf, 0xCu);
                }

                goto LABEL_39;
              }
            }

            else
            {
              if (![v23 isEqual:v39])
              {
                continue;
              }

              _smartSpeakerCurrentMediaStateReadRequest = [(HMDHAPMediaProfile *)selfCopy _smartSpeakerMutedReadRequest];
              if (!_smartSpeakerCurrentMediaStateReadRequest)
              {
                v25 = objc_autoreleasePoolPush();
                v26 = selfCopy;
                v27 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  v30 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v53 = v30;
                  _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Playback] smart speaker muted is not available", buf, 0xCu);
                }

                goto LABEL_39;
              }
            }

            [v41 addObject:_smartSpeakerCurrentMediaStateReadRequest];
LABEL_40:
          }

          v18 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v18);
      }

      objc_initWeak(buf, selfCopy);
      workQueue = [(HMDAccessoryProfile *)selfCopy workQueue];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __45__HMDHAPMediaProfile__updateRefreshPlayback___block_invoke;
      v42[3] = &unk_278684610;
      objc_copyWeak(&v45, buf);
      v32 = v41;
      v43 = v32;
      v44 = playbackCopy;
      [v36 readCharacteristicValues:v32 source:1160 queue:workQueue completionHandler:v42];

      objc_destroyWeak(&v45);
      objc_destroyWeak(buf);
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = selfCopy;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v53 = v13;
        v54 = 2112;
        v55 = v11;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Playback] accessory not part of profile (%@)", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }

    goto LABEL_45;
  }

  v37 = 1;
LABEL_45:

  return v37;
}

void __45__HMDHAPMediaProfile__updateRefreshPlayback___block_invoke(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v3 count])
  {
    v50 = a1;
    v51 = v3;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (!v5)
    {
      v7 = 0;
      v52 = 0;
      v54 = 0;
      v56 = 0;
      v58 = 0;
      goto LABEL_44;
    }

    v6 = v5;
    v7 = 0;
    v52 = 0;
    v54 = 0;
    v56 = 0;
    v58 = 0;
    v8 = *v61;
    v57 = *MEMORY[0x277CCF840];
    v55 = *MEMORY[0x277CCFBA8];
    v53 = *MEMORY[0x277CCF980];
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v61 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v60 + 1) + 8 * v9);
        v11 = [v10 error];

        if (!v11)
        {
          v19 = [v10 request];
          v20 = [v19 characteristic];

          v21 = [v20 type];
          v22 = [v21 isEqual:v57];

          if (v22)
          {
            v23 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = v23;
            }

            else
            {
              v24 = 0;
            }

            v25 = v24;

            v26 = MEMORY[0x277CCABB0];
            v27 = [v25 integerValue] - 1;
            if (v27 > 4)
            {
              v28 = 1;
            }

            else
            {
              v28 = qword_22A587F08[v27];
            }

            [v26 numberWithInteger:v28];
            v58 = v33 = v58;
            goto LABEL_24;
          }

          v29 = [v20 type];
          v30 = [v29 isEqual:v55];

          if (v30)
          {
            v31 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = v31;
            }

            else
            {
              v32 = 0;
            }

            v25 = v32;

            __percentageForCharacteristicValue(v20, v25);
            v56 = v33 = v56;
            goto LABEL_24;
          }

          v34 = [v20 type];
          v35 = [v34 isEqual:v53];

          if (v35)
          {
            v33 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = v33;
            }

            else
            {
              v36 = 0;
            }

            v25 = v54;
            v54 = v36;
            goto LABEL_24;
          }

          v37 = [v20 type];
          v38 = [v37 isEqualToString:@"0000025B-0000-1000-8000-0026BB765291"];

          if (v38)
          {
            v33 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v39 = v33;
            }

            else
            {
              v39 = 0;
            }

            v25 = v52;
            v52 = v39;
LABEL_24:
          }

          goto LABEL_26;
        }

        v12 = [v10 error];

        v13 = objc_autoreleasePoolPush();
        v14 = WeakRetained;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v17 = v16 = WeakRetained;
          v18 = [v10 error];
          *buf = 138543618;
          v66 = v17;
          v67 = 2112;
          v68 = v18;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Read failed with error %@", buf, 0x16u);

          WeakRetained = v16;
        }

        objc_autoreleasePoolPop(v13);
        v7 = v12;
LABEL_26:
        ++v9;
      }

      while (v6 != v9);
      v40 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
      v6 = v40;
      if (!v40)
      {
LABEL_44:

        v47 = v58;
        [WeakRetained _updateCurrentMediaState:v58 volumePercentage:v56 muted:v54 enable:v52 message:*(v50 + 40)];
        v48 = [*(v50 + 40) responseHandler];

        if (v48)
        {
          v49 = [*(v50 + 40) responseHandler];
          (v49)[2](v49, v7, 0);
        }

        v3 = v51;
        goto LABEL_47;
      }
    }
  }

  v41 = objc_autoreleasePoolPush();
  v42 = WeakRetained;
  v43 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    v44 = HMFGetLogIdentifier();
    v45 = *(a1 + 32);
    *buf = 138543618;
    v66 = v44;
    v67 = 2112;
    v68 = v45;
    _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Invalid response for %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v41);
  v46 = *(a1 + 40);
  v47 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
  [v46 respondWithError:v47];
LABEL_47:
}

- (BOOL)_updatePlayback:(id)playback
{
  v34 = *MEMORY[0x277D85DE8];
  playbackCopy = playback;
  v30.receiver = self;
  v30.super_class = HMDHAPMediaProfile;
  if ([(HMDMediaProfile *)&v30 _updatePlayback:playbackCopy])
  {
    v5 = 1;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@No local media session for hapMediaProfile", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [playbackCopy numberForKey:*MEMORY[0x277CD0938]];
    if (v10)
    {
      accessory = [(HMDAccessoryProfile *)selfCopy accessory];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = accessory;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      if (v13)
      {
        v14 = [(HMDHAPMediaProfile *)selfCopy _smartSpeakerTargetMediaStateWriteRequestWithPlaybackState:v10];
        v5 = v14 != 0;
        if (v14)
        {
          objc_initWeak(buf, selfCopy);
          v31 = v14;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
          workQueue = [(HMDAccessoryProfile *)selfCopy workQueue];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __38__HMDHAPMediaProfile__updatePlayback___block_invoke;
          v26[3] = &unk_278684610;
          objc_copyWeak(&v29, buf);
          v27 = v14;
          v28 = playbackCopy;
          [v13 writeCharacteristicValues:v15 source:1160 message:v28 queue:workQueue completionHandler:v26];

          objc_destroyWeak(&v29);
          objc_destroyWeak(buf);
        }

        else
        {
          v21 = objc_autoreleasePoolPush();
          v22 = selfCopy;
          v23 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = HMFGetLogIdentifier();
            *buf = 138543362;
            v33 = v24;
            _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Update Playback] failed to create target media state write request", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v21);
        }
      }

      else
      {
        v17 = objc_autoreleasePoolPush();
        v18 = selfCopy;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543362;
          v33 = v20;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Update Playback] accessory not part of profile", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
        v13 = 0;
        v5 = 0;
      }
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
      [playbackCopy respondWithError:v13];
      v5 = 1;
    }
  }

  return v5;
}

void __38__HMDHAPMediaProfile__updatePlayback___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v3 count])
  {
    v27 = a1;
    v28 = v3;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v32;
      do
      {
        v9 = 0;
        v29 = v6;
        do
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v31 + 1) + 8 * v9);
          v11 = [v10 error];

          if (v11)
          {
            v12 = [v10 error];

            v13 = objc_autoreleasePoolPush();
            v14 = WeakRetained;
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v16 = v8;
              v18 = v17 = WeakRetained;
              v19 = [v10 request];
              v20 = [v10 error];
              *buf = 138543874;
              v36 = v18;
              v37 = 2112;
              v38 = v19;
              v39 = 2112;
              v40 = v20;
              _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Write request %@ failed with error %@", buf, 0x20u);

              WeakRetained = v17;
              v8 = v16;
              v6 = v29;
            }

            objc_autoreleasePoolPop(v13);
            v7 = v12;
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    [*(v27 + 40) respondWithPayload:0 error:v7];
    v3 = v28;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = WeakRetained;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = *(a1 + 32);
      *buf = 138543618;
      v36 = v24;
      v37 = 2112;
      v38 = v25;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Invalid response for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v26 = *(a1 + 40);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
    [v26 respondWithError:v7];
  }
}

- (int64_t)airPlayEnable
{
  os_unfair_lock_lock_with_options();
  airPlayEnable = self->_airPlayEnable;
  os_unfair_lock_unlock(&self->super._lock.lock);
  return airPlayEnable;
}

- (void)setAirPlayEnable:(int64_t)enable
{
  os_unfair_lock_lock_with_options();
  self->_airPlayEnable = enable;

  os_unfair_lock_unlock(&self->super._lock.lock);
}

- (id)_smartSpeakerAirPlayEnableReadRequest
{
  _smartSpeakerAirPlayEnableCharacteristic = [(HMDHAPMediaProfile *)self _smartSpeakerAirPlayEnableCharacteristic];
  if (_smartSpeakerAirPlayEnableCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_smartSpeakerAirPlayEnableCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_smartSpeakerAirPlayEnableCharacteristic
{
  _smartSpeakerService = [(HMDHAPMediaProfile *)self _smartSpeakerService];
  v3 = [_smartSpeakerService findCharacteristicWithType:@"0000025B-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_smartSpeakerMutedWriteRequestWithMuted:(id)muted
{
  mutedCopy = muted;
  _smartSpeakerMutedCharacteristic = [(HMDHAPMediaProfile *)self _smartSpeakerMutedCharacteristic];
  v6 = _smartSpeakerMutedCharacteristic;
  if (mutedCopy | _smartSpeakerMutedCharacteristic)
  {
    authorizationData = [_smartSpeakerMutedCharacteristic authorizationData];
    v8 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v6 value:mutedCopy authorizationData:authorizationData type:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_smartSpeakerMutedReadRequest
{
  _smartSpeakerMutedCharacteristic = [(HMDHAPMediaProfile *)self _smartSpeakerMutedCharacteristic];
  if (_smartSpeakerMutedCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_smartSpeakerMutedCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_smartSpeakerMutedCharacteristic
{
  _smartSpeakerService = [(HMDHAPMediaProfile *)self _smartSpeakerService];
  v3 = [_smartSpeakerService findCharacteristicWithType:*MEMORY[0x277CCF980]];

  return v3;
}

- (id)_smartSpeakerVolumeWriteRequestWithVolumePercentage:(id)percentage
{
  percentageCopy = percentage;
  smartSpeakerVolumeCharacteristic = [(HMDHAPMediaProfile *)self smartSpeakerVolumeCharacteristic];
  v6 = smartSpeakerVolumeCharacteristic;
  if (percentageCopy | smartSpeakerVolumeCharacteristic)
  {
    v7 = 0;
    if (percentageCopy && smartSpeakerVolumeCharacteristic)
    {
      [percentageCopy floatValue];
      v9 = v8;
      metadata = [v6 metadata];
      minimumValue = [metadata minimumValue];
      if (minimumValue)
      {
        minimumValue2 = [metadata minimumValue];
        [minimumValue2 floatValue];
        v14 = v13;
      }

      else
      {
        v14 = 0.0;
      }

      maximumValue = [metadata maximumValue];
      if (maximumValue)
      {
        maximumValue2 = [metadata maximumValue];
        [maximumValue2 floatValue];
        v19 = v18;
      }

      else
      {
        v19 = 100.0;
      }

      v20 = v14 + (v9 * (v19 - v14));
      stepValue = [metadata stepValue];
      v23 = stepValue;
      if (stepValue)
      {
        [stepValue floatValue];
        v20 = *&v22 * roundf(v20 / *&v22);
      }

      *&v22 = v20;
      v7 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
    }

    authorizationData = [v6 authorizationData];
    v15 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v6 value:v7 authorizationData:authorizationData type:0];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_smartSpeakerVolumeReadRequest
{
  smartSpeakerVolumeCharacteristic = [(HMDHAPMediaProfile *)self smartSpeakerVolumeCharacteristic];
  if (smartSpeakerVolumeCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:smartSpeakerVolumeCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HMDCharacteristic)smartSpeakerVolumeCharacteristic
{
  _smartSpeakerService = [(HMDHAPMediaProfile *)self _smartSpeakerService];
  v3 = [_smartSpeakerService findCharacteristicWithType:*MEMORY[0x277CCFBA8]];

  return v3;
}

- (id)_smartSpeakerCurrentMediaStateReadRequest
{
  smartSpeakerCurrentMediaStateCharacteristic = [(HMDHAPMediaProfile *)self smartSpeakerCurrentMediaStateCharacteristic];
  if (smartSpeakerCurrentMediaStateCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:smartSpeakerCurrentMediaStateCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HMDCharacteristic)smartSpeakerCurrentMediaStateCharacteristic
{
  _smartSpeakerService = [(HMDHAPMediaProfile *)self _smartSpeakerService];
  v3 = [_smartSpeakerService findCharacteristicWithType:*MEMORY[0x277CCF840]];

  return v3;
}

- (id)_smartSpeakerTargetMediaStateWriteRequestWithPlaybackState:(id)state
{
  stateCopy = state;
  _smartSpeakerTargetMediaStateCharacteristic = [(HMDHAPMediaProfile *)self _smartSpeakerTargetMediaStateCharacteristic];
  if (_smartSpeakerTargetMediaStateCharacteristic)
  {
    v6 = MEMORY[0x277CCABB0];
    integerValue = [stateCopy integerValue];
    if (integerValue > 6)
    {
      v8 = 0;
    }

    else
    {
      v8 = qword_22A587ED0[integerValue];
    }

    v10 = [v6 numberWithInteger:v8];
    authorizationData = [_smartSpeakerTargetMediaStateCharacteristic authorizationData];
    v9 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:_smartSpeakerTargetMediaStateCharacteristic value:v10 authorizationData:authorizationData type:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)playStateWriteRequestWithPlaybackState:(int64_t)state
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  v5 = [(HMDHAPMediaProfile *)self _smartSpeakerTargetMediaStateWriteRequestWithPlaybackState:v4];

  return v5;
}

- (id)_smartSpeakerTargetMediaStateCharacteristic
{
  _smartSpeakerService = [(HMDHAPMediaProfile *)self _smartSpeakerService];
  v3 = [_smartSpeakerService findCharacteristicWithType:*MEMORY[0x277CCFB48]];

  return v3;
}

- (void)registerForNotifications
{
  v20 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = HMDHAPMediaProfile;
  [(HMDMediaProfile *)&v17 registerForNotifications];
  accessory = [(HMDAccessoryProfile *)self accessory];
  v4 = accessory;
  if (accessory)
  {
    home = [accessory home];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_handleHomeCharacteristicValuesChanged_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:v4];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_handleHomeCharacteristicValuesChanged_ name:@"HMDAccessoryCharacteristicsResponseReceivedNotification" object:home];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel_handleAccessoryConfigured_ name:@"HMDAccessoryConnectedNotification" object:v4];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel_handleCharacteristicsUpdated_ name:@"kHMDNotificationCharacteristicsUpdated" object:v4];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:self selector:sel_handleResidentAdded_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:0];

    defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
    residentDeviceManager = [home residentDeviceManager];
    [defaultCenter6 addObserver:self selector:sel_handlePrimaryResidentChanged_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:residentDeviceManager];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Not registering for notifications as accessory is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (HMDHAPMediaProfile)initWithMediaServices:(id)services
{
  v22 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  firstObject = [servicesCopy firstObject];
  accessory = [firstObject accessory];
  if (accessory)
  {
    v7 = [objc_opt_class() uniqueIdentifierFromAccessory:accessory];
    v17.receiver = self;
    v17.super_class = HMDHAPMediaProfile;
    v8 = [(HMDAccessoryProfile *)&v17 initWithAccessory:accessory uniqueIdentifier:v7 services:servicesCopy];
    v9 = v8;
    if (v8)
    {
      v8->_airPlayEnable = -1;
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.HMDHAPMediaProfile.%@", @"com.apple.HomeKitDaemon.Local", v7];
      clientIdentifier = v9->_clientIdentifier;
      v9->_clientIdentifier = v10;
    }

    self = v9;

    selfCopy = self;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = firstObject;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Cannot create media profile, cannot determine accessory from services %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    selfCopy = 0;
  }

  return selfCopy;
}

@end