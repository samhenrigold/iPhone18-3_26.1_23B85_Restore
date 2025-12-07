@interface HMDNaturalLightingCurveWriter
+ (id)logCategory;
- (HMDLightProfile)lightProfile;
- (HMDNaturalLightingCurveWriter)initWithUUID:(id)d workQueue:(id)queue logIdentifier:(id)identifier;
- (HMDNaturalLightingCurveWriter)initWithUUID:(id)d workQueue:(id)queue logIdentifier:(id)identifier dataSource:(id)source notificationCenter:(id)center timerFactory:(id)factory;
- (void)configureWithLightProfile:(id)profile;
- (void)handleActiveTransitionContextUpdated:(id)updated;
- (void)handleCurrentDevicePrimaryResidentChangedWithReason:(id)reason;
- (void)handlePrimaryResidentUpdateNotification:(id)notification;
- (void)synchronizeCurveWithActiveTransitionContext:(id)context;
- (void)timerDidFire:(id)fire;
- (void)writeForNaturalLightingEnabledWithReason:(id)reason;
- (void)writeWithNaturalLightingEnabled:(BOOL)enabled reason:(id)reason completion:(id)completion;
@end

@implementation HMDNaturalLightingCurveWriter

- (HMDLightProfile)lightProfile
{
  WeakRetained = objc_loadWeakRetained(&self->_lightProfile);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v28 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDNaturalLightingCurveWriter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  periodicCharacteristicWriteTimer = [(HMDNaturalLightingCurveWriter *)self periodicCharacteristicWriteTimer];

  if (periodicCharacteristicWriteTimer == fireCopy)
  {
    lightProfile = [(HMDNaturalLightingCurveWriter *)self lightProfile];
    settings = [lightProfile settings];
    isNaturalLightingEnabled = [settings isNaturalLightingEnabled];

    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (isNaturalLightingEnabled)
    {
      if (v18)
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v23 = v19;
        v24 = 2112;
        v25 = fireCopy;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Rewriting the characteristic because timer: %@ fired", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      fireCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"timer expired: %@", fireCopy];
      [(HMDNaturalLightingCurveWriter *)selfCopy writeForNaturalLightingEnabledWithReason:fireCopy];
    }

    else
    {
      if (v18)
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v23 = v21;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Canceling periodic characteristic writer timer because natural lighting is no longer enabled", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      [(HMDNaturalLightingCurveWriter *)selfCopy setPeriodicCharacteristicWriteTimer:0];
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      periodicCharacteristicWriteTimer2 = [(HMDNaturalLightingCurveWriter *)selfCopy2 periodicCharacteristicWriteTimer];
      *buf = 138543874;
      v23 = v10;
      v24 = 2112;
      v25 = periodicCharacteristicWriteTimer2;
      v26 = 2112;
      v27 = fireCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Received timer did fire callback for unknown timer. Expected: %@ received: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)writeForNaturalLightingEnabledWithReason:(id)reason
{
  reasonCopy = reason;
  workQueue = [(HMDNaturalLightingCurveWriter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDNaturalLightingCurveWriter *)self setPeriodicCharacteristicWriteTimer:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__HMDNaturalLightingCurveWriter_writeForNaturalLightingEnabledWithReason___block_invoke;
  v7[3] = &unk_27868A1D8;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  [(HMDNaturalLightingCurveWriter *)self writeWithNaturalLightingEnabled:1 reason:v6 completion:v7];
}

void __74__HMDNaturalLightingCurveWriter_writeForNaturalLightingEnabledWithReason___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      v10 = "%{public}@Failed to update the curve with reason %@:%@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v11, v12, v10, &v15, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v14;
    v10 = "%{public}@Successfully updated curve with reason %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

- (void)synchronizeCurveWithActiveTransitionContext:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  workQueue = [(HMDNaturalLightingCurveWriter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Synchronizing curve...", &v27, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  lightProfile = [(HMDNaturalLightingCurveWriter *)selfCopy lightProfile];
  accessory = [lightProfile accessory];
  home = [accessory home];

  if (!home)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v22;
      v23 = "%{public}@Sychronizing curve failed, home is not configured";
      v24 = v20;
      v25 = OS_LOG_TYPE_ERROR;
LABEL_14:
      _os_log_impl(&dword_229538000, v24, v25, v23, &v27, 0xCu);

      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (![(HMDNaturalLightingCurveWriter *)selfCopy isCurrentDevicePrimaryResident])
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v22;
      v23 = "%{public}@Skipping synchronizing curve, device is not a primary resident";
      goto LABEL_13;
    }

LABEL_15:

    objc_autoreleasePoolPop(v18);
    goto LABEL_16;
  }

  naturalLightingCurve = [lightProfile naturalLightingCurve];
  checksum = [naturalLightingCurve checksum];

  transitionChecksum = [contextCopy transitionChecksum];
  unsignedLongLongValue = [transitionChecksum unsignedLongLongValue];

  transitionChecksum2 = [contextCopy transitionChecksum];

  v18 = objc_autoreleasePoolPush();
  v19 = selfCopy;
  v20 = HMFGetOSLogHandle();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (transitionChecksum2 && checksum == unsignedLongLongValue)
  {
    if (v21)
    {
      v22 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v22;
      v23 = "%{public}@Skipping synchronizing curve, transition checksum has not changed";
LABEL_13:
      v24 = v20;
      v25 = OS_LOG_TYPE_INFO;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (v21)
  {
    v26 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v26;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Start sychronizing curve", &v27, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  [(HMDNaturalLightingCurveWriter *)v19 writeForNaturalLightingEnabledWithReason:@"curve updated"];
LABEL_16:
}

- (void)writeWithNaturalLightingEnabled:(BOOL)enabled reason:(id)reason completion:(id)completion
{
  enabledCopy = enabled;
  v23 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  completionCopy = completion;
  workQueue = [(HMDNaturalLightingCurveWriter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDNaturalLightingCurveWriter *)self isCurrentDevicePrimaryResident])
  {
    lightProfile = [(HMDNaturalLightingCurveWriter *)self lightProfile];
    v12 = lightProfile;
    if (lightProfile)
    {
      [lightProfile setNaturalLightingEnabled:enabledCopy completion:completionCopy];
    }

    else
    {
      v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
      completionCopy[2](completionCopy, v18);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = reasonCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Skipping curve write with reason because current device is not a primary resident: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    completionCopy[2](completionCopy, v17);
  }
}

- (void)handleCurrentDevicePrimaryResidentChangedWithReason:(id)reason
{
  v18 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  workQueue = [(HMDNaturalLightingCurveWriter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    [(HMDNaturalLightingCurveWriter *)selfCopy isCurrentDevicePrimaryResident];
    v10 = HMFBooleanToString();
    v12 = 138543874;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = reasonCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling current device primary resident changed: %@ with reason: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  lightProfile = [(HMDNaturalLightingCurveWriter *)selfCopy lightProfile];
  if ([(HMDNaturalLightingCurveWriter *)selfCopy isCurrentDevicePrimaryResident])
  {
    [lightProfile setNaturalLightingCharacteristicsNotificationEnabled:1 forObserver:selfCopy];
  }

  else
  {
    [lightProfile setNaturalLightingCharacteristicsNotificationEnabled:0 forObserver:selfCopy];
    [(HMDNaturalLightingCurveWriter *)selfCopy setPeriodicCharacteristicWriteTimer:0];
  }
}

- (void)handlePrimaryResidentUpdateNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDNaturalLightingCurveWriter *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HMDNaturalLightingCurveWriter_handlePrimaryResidentUpdateNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __73__HMDNaturalLightingCurveWriter_handlePrimaryResidentUpdateNotification___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) lightProfile];
  v3 = [v2 accessory];
  v4 = [v3 home];
  v5 = [v4 isCurrentDeviceConfirmedPrimaryResident];

  if (v5 != [*(a1 + 32) isCurrentDevicePrimaryResident])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      [*(a1 + 32) isCurrentDevicePrimaryResident];
      v10 = HMFBooleanToString();
      v11 = HMFBooleanToString();
      v14 = 138543874;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Current device primary changed from: (%@->%@)", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 32) setCurrentDevicePrimaryResident:v5];
    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) name];
    [v12 handleCurrentDevicePrimaryResidentChangedWithReason:v13];
  }
}

- (void)handleActiveTransitionContextUpdated:(id)updated
{
  v61 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  workQueue = [(HMDNaturalLightingCurveWriter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDNaturalLightingCurveWriter *)self isCurrentDevicePrimaryResident])
  {
    if (updatedCopy)
    {
      dataSource = [(HMDNaturalLightingCurveWriter *)self dataSource];
      date = [dataSource date];

      startDate = [updatedCopy startDate];
      dataSource2 = [(HMDNaturalLightingCurveWriter *)self dataSource];
      date2 = [dataSource2 date];
      [date2 timeIntervalSinceDate:startDate];
      v12 = v11;

      if (v12 >= 0.0)
      {
        dataSource3 = [(HMDNaturalLightingCurveWriter *)self dataSource];
        [dataSource3 naturalLightingCurveUpdateInterval];
        v28 = v27;

        v29 = v28 - v12;
        if (v28 - v12 <= 0.0)
        {
          v45 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v46 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            v47 = HMFGetLogIdentifier();
            v51 = 138543874;
            v52 = v47;
            v53 = 2048;
            v54 = v12;
            v55 = 2048;
            v56 = v28;
            _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@Updating curve since time elapsed since transition start is greater than curve update interval %f:%f", &v51, 0x20u);
          }

          objc_autoreleasePoolPop(v45);
          v17 = @"transition start is greater than curve update interval";
        }

        else
        {
          v30 = [updatedCopy millisecondsElapsedSinceStartDate] / 1000.0;
          v31 = vabdd_f64(v30, v12);
          dataSource4 = [(HMDNaturalLightingCurveWriter *)self dataSource];
          [dataSource4 naturalLightingCurveUpdateAccessoryTimeDifferenceThreshold];
          v34 = v33;

          v35 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v36 = HMFGetOSLogHandle();
          v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
          if (v31 < v34)
          {
            if (v37)
            {
              v38 = HMFGetLogIdentifier();
              v51 = 138543618;
              v52 = v38;
              v53 = 2048;
              v54 = v29;
              _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Starting timer for natural lighting curve update: %fs", &v51, 0x16u);
            }

            objc_autoreleasePoolPop(v35);
            timerFactory = [(HMDNaturalLightingCurveWriter *)selfCopy3 timerFactory];
            v40 = timerFactory[2](timerFactory, 0, v29);
            [(HMDNaturalLightingCurveWriter *)selfCopy3 setPeriodicCharacteristicWriteTimer:v40];

            periodicCharacteristicWriteTimer = [(HMDNaturalLightingCurveWriter *)selfCopy3 periodicCharacteristicWriteTimer];
            [periodicCharacteristicWriteTimer setDelegate:selfCopy3];

            workQueue2 = [(HMDNaturalLightingCurveWriter *)selfCopy3 workQueue];
            periodicCharacteristicWriteTimer2 = [(HMDNaturalLightingCurveWriter *)selfCopy3 periodicCharacteristicWriteTimer];
            [periodicCharacteristicWriteTimer2 setDelegateQueue:workQueue2];

            periodicCharacteristicWriteTimer3 = [(HMDNaturalLightingCurveWriter *)selfCopy3 periodicCharacteristicWriteTimer];
            [periodicCharacteristicWriteTimer3 resume];

            goto LABEL_25;
          }

          if (v37)
          {
            v48 = HMFGetLogIdentifier();
            dataSource5 = [(HMDNaturalLightingCurveWriter *)selfCopy3 dataSource];
            [dataSource5 naturalLightingCurveUpdateAccessoryTimeDifferenceThreshold];
            v51 = 138544386;
            v52 = v48;
            v53 = 2048;
            v54 = v30;
            v55 = 2048;
            v56 = v12;
            v57 = 2048;
            v58 = v31;
            v59 = 2048;
            v60 = v50;
            _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Updating curve because accessory time (%fs) and controller time (%fs) difference (%fs) is greater than threshold (%fs)", &v51, 0x34u);
          }

          objc_autoreleasePoolPop(v35);
          v17 = @"accessory and controller time difference";
        }
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          v51 = 138543874;
          v52 = v16;
          v53 = 2112;
          v54 = *&date;
          v55 = 2112;
          v56 = *&startDate;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating curve because transition start date is ahead of the current date %@:%@", &v51, 0x20u);
        }

        objc_autoreleasePoolPop(v13);
        v17 = @"start date is ahead of the current date";
      }

      [(HMDNaturalLightingCurveWriter *)selfCopy3 writeForNaturalLightingEnabledWithReason:v17];
LABEL_25:

      goto LABEL_26;
    }

    v22 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v51 = 138543618;
      v52 = v25;
      v53 = 2112;
      v54 = 0.0;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Stopping characteristic write timer because active transition context is not set: %@", &v51, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    [(HMDNaturalLightingCurveWriter *)selfCopy4 setPeriodicCharacteristicWriteTimer:0];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v51 = 138543362;
      v52 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Skipping active transition context update because current device is not primary resident", &v51, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
  }

LABEL_26:
}

- (void)configureWithLightProfile:(id)profile
{
  v21 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  workQueue = [(HMDNaturalLightingCurveWriter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [profileCopy accessory];
  home = [accessory home];

  [(HMDNaturalLightingCurveWriter *)self setLightProfile:profileCopy];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = home;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring with home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  residentDeviceManager = [home residentDeviceManager];
  [residentDeviceManager addDataSource:selfCopy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__HMDNaturalLightingCurveWriter_configureWithLightProfile___block_invoke;
  v16[3] = &unk_27868A250;
  v16[4] = selfCopy;
  [residentDeviceManager confirmWithCompletionHandler:v16];
  notificationCenter = [(HMDNaturalLightingCurveWriter *)selfCopy notificationCenter];
  residentDeviceManager2 = [home residentDeviceManager];
  [notificationCenter addObserver:selfCopy selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:residentDeviceManager2];

  notificationCenter2 = [(HMDNaturalLightingCurveWriter *)selfCopy notificationCenter];
  [notificationCenter2 addObserver:selfCopy selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  -[HMDNaturalLightingCurveWriter setCurrentDevicePrimaryResident:](selfCopy, "setCurrentDevicePrimaryResident:", [home isCurrentDeviceConfirmedPrimaryResident]);
  [(HMDNaturalLightingCurveWriter *)selfCopy handleCurrentDevicePrimaryResidentChangedWithReason:@"Configure"];
}

void __59__HMDNaturalLightingCurveWriter_configureWithLightProfile___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v3;
      v9 = "%{public}@Failed to confirm primary resident with error: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v10, v11, v9, &v13, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v8;
    v9 = "%{public}@Successfully confirmed primary resident";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

- (HMDNaturalLightingCurveWriter)initWithUUID:(id)d workQueue:(id)queue logIdentifier:(id)identifier dataSource:(id)source notificationCenter:(id)center timerFactory:(id)factory
{
  dCopy = d;
  queueCopy = queue;
  identifierCopy = identifier;
  sourceCopy = source;
  centerCopy = center;
  factoryCopy = factory;
  v25.receiver = self;
  v25.super_class = HMDNaturalLightingCurveWriter;
  v19 = [(HMDNaturalLightingCurveWriter *)&v25 init];
  if (v19)
  {
    v20 = _Block_copy(factoryCopy);
    timerFactory = v19->_timerFactory;
    v19->_timerFactory = v20;

    objc_storeStrong(&v19->_UUID, d);
    objc_storeStrong(&v19->_workQueue, queue);
    objc_storeStrong(&v19->_logIdentifier, identifier);
    objc_storeStrong(&v19->_dataSource, source);
    objc_storeStrong(&v19->_notificationCenter, center);
  }

  return v19;
}

- (HMDNaturalLightingCurveWriter)initWithUUID:(id)d workQueue:(id)queue logIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queueCopy = queue;
  dCopy = d;
  v11 = objc_alloc_init(HMDLightProfileDataSource);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = [(HMDNaturalLightingCurveWriter *)self initWithUUID:dCopy workQueue:queueCopy logIdentifier:identifierCopy dataSource:v11 notificationCenter:defaultCenter timerFactory:&__block_literal_global_279500];

  return v13;
}

id __70__HMDNaturalLightingCurveWriter_initWithUUID_workQueue_logIdentifier___block_invoke(double a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:a3 options:a1];

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t19_279506 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19_279506, &__block_literal_global_22_279507);
  }

  v3 = logCategory__hmf_once_v20_279508;

  return v3;
}

void __44__HMDNaturalLightingCurveWriter_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v20_279508;
  logCategory__hmf_once_v20_279508 = v0;
}

@end