@interface HMDDoorbellPressTracker
+ (id)logCategory;
- (BOOL)doorbellPressInDateInterval:(id)interval doorbellAccessory:(id)accessory;
- (HMDDoorbellPressTracker)initWithWorkQueue:(id)queue notificationCenter:(id)center;
- (void)_handleCharacteristicsValueUpdatedNotification:(id)notification;
- (void)handleCharacteristicsValueUpdatedNotification:(id)notification;
- (void)startTrackingPressesForDoorbellAccessory:(id)accessory registration:(id)registration;
- (void)stopTrackingPressesForDoorbellAccessory:(id)accessory registration:(id)registration;
@end

@implementation HMDDoorbellPressTracker

- (void)handleCharacteristicsValueUpdatedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDDoorbellPressTracker *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HMDDoorbellPressTracker_handleCharacteristicsValueUpdatedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

- (void)_handleCharacteristicsValueUpdatedNotification:(id)notification
{
  v33 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  workQueue = [(HMDDoorbellPressTracker *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"HMDNotificationCharacteristicValueUpdatedChangedCharacteristicsKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 na_filter:&__block_literal_global_167642];
  firstObject = [v10 firstObject];

  if (firstObject)
  {
    accessory = [firstObject accessory];
    os_unfair_lock_lock_with_options();
    v13 = [MEMORY[0x277CBEAA8] now];
    dateOfLastDoorbellPressByAccessoryUUID = [(HMDDoorbellPressTracker *)self dateOfLastDoorbellPressByAccessoryUUID];
    uuid = [accessory uuid];
    [dateOfLastDoorbellPressByAccessoryUUID setObject:v13 forKeyedSubscript:uuid];

    os_unfair_lock_unlock(&self->_lock);
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      dateOfLastDoorbellPressByAccessoryUUID2 = [(HMDDoorbellPressTracker *)selfCopy dateOfLastDoorbellPressByAccessoryUUID];
      uuid2 = [accessory uuid];
      v19 = [dateOfLastDoorbellPressByAccessoryUUID2 objectForKeyedSubscript:uuid2];
      name = [accessory name];
      uuid3 = [accessory uuid];
      *buf = 138544130;
      v26 = v22;
      v27 = 2112;
      v28 = v19;
      v29 = 2112;
      v30 = name;
      v31 = 2112;
      v32 = uuid3;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Updated date of last doorbell press to: %@ for doorbell: %@/%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(context);
  }
}

uint64_t __74__HMDDoorbellPressTracker__handleCharacteristicsValueUpdatedNotification___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type];
  if ([v3 isEqualToString:*MEMORY[0x277CCF910]])
  {
    v4 = [v2 service];
    v5 = [v4 type];
    v6 = [v5 isEqualToString:*MEMORY[0x277CD0E38]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)doorbellPressInDateInterval:(id)interval doorbellAccessory:(id)accessory
{
  v27 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  accessoryCopy = accessory;
  os_unfair_lock_lock_with_options();
  dateOfLastDoorbellPressByAccessoryUUID = [(HMDDoorbellPressTracker *)self dateOfLastDoorbellPressByAccessoryUUID];
  uuid = [accessoryCopy uuid];
  v10 = [dateOfLastDoorbellPressByAccessoryUUID objectForKeyedSubscript:uuid];

  os_unfair_lock_unlock(&self->_lock);
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    name = [accessoryCopy name];
    uuid2 = [accessoryCopy uuid];
    v19 = 138544130;
    v20 = v14;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = name;
    v25 = 2112;
    v26 = uuid2;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Date of last doorbell press: %@ for doorbell accessory: %@/%@", &v19, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  if (v10)
  {
    v17 = [intervalCopy containsDate:v10];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)stopTrackingPressesForDoorbellAccessory:(id)accessory registration:(id)registration
{
  v38 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  registrationCopy = registration;
  os_unfair_lock_lock_with_options();
  registrationsByAccessoryUUID = [(HMDDoorbellPressTracker *)self registrationsByAccessoryUUID];
  uuid = [accessoryCopy uuid];
  v9 = [registrationsByAccessoryUUID objectForKeyedSubscript:uuid];

  if (!v9)
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      name = [accessoryCopy name];
      uuid2 = [accessoryCopy uuid];
      *buf = 138544130;
      v31 = v26;
      v32 = 2112;
      v33 = name;
      v34 = 2112;
      v35 = uuid2;
      v36 = 2112;
      v37 = registrationCopy;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@No existing registrations found for doorbell accessory: %@/%@ registration: %@", buf, 0x2Au);
    }

    goto LABEL_9;
  }

  [v9 removeObject:registrationCopy];
  v10 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    name2 = [accessoryCopy name];
    uuid3 = [accessoryCopy uuid];
    *buf = 138544130;
    v31 = v13;
    v32 = 2112;
    v33 = name2;
    v34 = 2112;
    v35 = uuid3;
    v36 = 2112;
    v37 = registrationCopy;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Stopped tracking presses for doorbell accessory: %@/%@ registration: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  if (![v9 count])
  {
    notificationCenter = [(HMDDoorbellPressTracker *)selfCopy2 notificationCenter];
    [notificationCenter removeObserver:selfCopy2 name:@"HMDNotificationCharacteristicValueUpdated" object:accessoryCopy];

    registrationsByAccessoryUUID2 = [(HMDDoorbellPressTracker *)selfCopy2 registrationsByAccessoryUUID];
    uuid4 = [accessoryCopy uuid];
    [registrationsByAccessoryUUID2 removeObjectForKey:uuid4];

    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy2;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      name3 = [accessoryCopy name];
      uuid5 = [accessoryCopy uuid];
      *buf = 138543874;
      v31 = v22;
      v32 = 2112;
      v33 = name3;
      v34 = 2112;
      v35 = uuid5;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@No more registrations for doorbell accessory: %@/%@", buf, 0x20u);
    }

LABEL_9:

    objc_autoreleasePoolPop(v19);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)startTrackingPressesForDoorbellAccessory:(id)accessory registration:(id)registration
{
  v39 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  registrationCopy = registration;
  v8 = [accessoryCopy findCharacteristicType:*MEMORY[0x277CCF910] forServiceType:*MEMORY[0x277CD0E38]];
  if (v8)
  {
    os_unfair_lock_lock_with_options();
    registrationsByAccessoryUUID = [(HMDDoorbellPressTracker *)self registrationsByAccessoryUUID];
    uuid = [accessoryCopy uuid];
    weakObjectsHashTable = [registrationsByAccessoryUUID objectForKeyedSubscript:uuid];

    if (weakObjectsHashTable)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v30 = v12;
        v15 = HMFGetLogIdentifier();
        name = [accessoryCopy name];
        uuid2 = [accessoryCopy uuid];
        *buf = 138544130;
        v32 = v15;
        v33 = 2112;
        v34 = name;
        v35 = 2112;
        v36 = uuid2;
        v37 = 2112;
        v38 = registrationCopy;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Already tracking presses for doorbell accessory: %@/%@ registration: %@", buf, 0x2Au);

        v12 = v30;
      }
    }

    else
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      registrationsByAccessoryUUID2 = [(HMDDoorbellPressTracker *)self registrationsByAccessoryUUID];
      uuid3 = [accessoryCopy uuid];
      [registrationsByAccessoryUUID2 setObject:weakObjectsHashTable forKeyedSubscript:uuid3];

      notificationCenter = [(HMDDoorbellPressTracker *)self notificationCenter];
      [notificationCenter addObserver:self selector:sel_handleCharacteristicsValueUpdatedNotification_ name:@"HMDNotificationCharacteristicValueUpdated" object:accessoryCopy];

      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v30 = v12;
        v27 = HMFGetLogIdentifier();
        name2 = [accessoryCopy name];
        uuid4 = [accessoryCopy uuid];
        *buf = 138544130;
        v32 = v27;
        v33 = 2112;
        v34 = name2;
        v35 = 2112;
        v36 = uuid4;
        v37 = 2112;
        v38 = registrationCopy;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Started tracking presses for doorbell accessory: %@/%@ registration: %@", buf, 0x2Au);

        v12 = v30;
      }
    }

    objc_autoreleasePoolPop(v12);
    [weakObjectsHashTable addObject:{registrationCopy, v30}];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      name3 = [accessoryCopy name];
      uuid5 = [accessoryCopy uuid];
      *buf = 138543874;
      v32 = v21;
      v33 = 2112;
      v34 = name3;
      v35 = 2112;
      v36 = uuid5;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Accessory: %@/%@ is not a doorbell", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
  }
}

- (HMDDoorbellPressTracker)initWithWorkQueue:(id)queue notificationCenter:(id)center
{
  queueCopy = queue;
  centerCopy = center;
  v16.receiver = self;
  v16.super_class = HMDDoorbellPressTracker;
  v9 = [(HMDDoorbellPressTracker *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_notificationCenter, center);
    objc_storeStrong(&v10->_workQueue, queue);
    v10->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dateOfLastDoorbellPressByAccessoryUUID = v10->_dateOfLastDoorbellPressByAccessoryUUID;
    v10->_dateOfLastDoorbellPressByAccessoryUUID = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    registrationsByAccessoryUUID = v10->_registrationsByAccessoryUUID;
    v10->_registrationsByAccessoryUUID = dictionary2;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_167662 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_167662, &__block_literal_global_8_167663);
  }

  v3 = logCategory__hmf_once_v14_167664;

  return v3;
}

void __38__HMDDoorbellPressTracker_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v14_167664;
  logCategory__hmf_once_v14_167664 = v0;
}

@end