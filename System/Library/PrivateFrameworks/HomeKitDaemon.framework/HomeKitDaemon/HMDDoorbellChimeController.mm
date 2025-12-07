@interface HMDDoorbellChimeController
+ (id)logCategory;
- (HMDDoorbellChimeController)initWithContext:(id)context;
- (HMDDoorbellChimeController)initWithWorkQueue:(id)queue accessory:(id)accessory;
- (id)clientIdentifier;
- (id)logIdentifier;
- (unint64_t)_numHomePodsWithDoorbellChimeEnabled;
- (void)_handleCharacteristicsValueUpdatedNotification:(id)notification;
- (void)_notifyAllAccessoriesForDoorbellPressAndPlayChimeSound:(BOOL)sound significantEvents:(id)events;
- (void)configure;
- (void)dealloc;
- (void)handleCharacteristicsValueUpdatedNotification:(id)notification;
- (void)handleUpdatedPersonIdentificationInformation;
- (void)listener:(id)listener didUpdateAvailableCharacteristics:(id)characteristics;
- (void)notifyAccessoriesViaCoordinationFreePathWithDelay:(double)delay home:(id)home shouldPlayChime:(BOOL)chime personIdentificationText:(id)text accessoriesToNotify:(id)notify logEvent:(id)event accessoryUUID:(id)d;
@end

@implementation HMDDoorbellChimeController

- (void)listener:(id)listener didUpdateAvailableCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  [(HMDDoorbellChimeController *)self setAvailableCharacteristics:characteristicsCopy];
  context = [(HMDDoorbellChimeController *)self context];
  accessory = [context accessory];
  allObjects = [characteristicsCopy allObjects];

  clientIdentifier = [(HMDDoorbellChimeController *)self clientIdentifier];
  [accessory setNotificationsEnabled:1 forCharacteristics:allObjects clientIdentifier:clientIdentifier];
}

- (id)logIdentifier
{
  context = [(HMDDoorbellChimeController *)self context];
  accessory = [context accessory];
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)handleCharacteristicsValueUpdatedNotification:(id)notification
{
  v17 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  context = [(HMDDoorbellChimeController *)self context];
  isCurrentDevicePrimaryResident = [context isCurrentDevicePrimaryResident];

  if (isCurrentDevicePrimaryResident)
  {
    context2 = [(HMDDoorbellChimeController *)self context];
    workQueue = [context2 workQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__HMDDoorbellChimeController_handleCharacteristicsValueUpdatedNotification___block_invoke;
    v13[3] = &unk_27868A750;
    v13[4] = self;
    v14 = notificationCopy;
    dispatch_async(workQueue, v13);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring characteristic value updated notification since we are not the primary resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (unint64_t)_numHomePodsWithDoorbellChimeEnabled
{
  context = [(HMDDoorbellChimeController *)self context];
  accessory = [context accessory];
  home = [accessory home];
  accessories = [home accessories];
  v6 = [accessories na_map:&__block_literal_global_39_147918];

  v7 = [v6 na_filter:&__block_literal_global_42_147919];
  v8 = [v7 count];

  return v8;
}

uint64_t __66__HMDDoorbellChimeController__numHomePodsWithDoorbellChimeEnabled__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isHomePod])
  {
    v3 = [v2 isDoorbellChimeSettingEnabled];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *__66__HMDDoorbellChimeController__numHomePodsWithDoorbellChimeEnabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
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

  return v3;
}

- (void)notifyAccessoriesViaCoordinationFreePathWithDelay:(double)delay home:(id)home shouldPlayChime:(BOOL)chime personIdentificationText:(id)text accessoriesToNotify:(id)notify logEvent:(id)event accessoryUUID:(id)d
{
  v39 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  textCopy = text;
  notifyCopy = notify;
  eventCopy = event;
  dCopy = d;
  v21 = objc_autoreleasePoolPush();
  selfCopy = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v24;
    v37 = 2112;
    v38 = notifyCopy;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Taking HomeKit path to notify: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __169__HMDDoorbellChimeController_notifyAccessoriesViaCoordinationFreePathWithDelay_home_shouldPlayChime_personIdentificationText_accessoriesToNotify_logEvent_accessoryUUID___block_invoke;
  v30[3] = &unk_27867B5C8;
  v30[4] = selfCopy;
  chimeCopy = chime;
  v25 = textCopy;
  v31 = v25;
  delayCopy = delay;
  v26 = dCopy;
  v32 = v26;
  [notifyCopy na_each:v30];
  if (v25)
  {
    [(HMDDoorbellChimeController *)selfCopy setLastUnidentifiedChimeDate:0];
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(HMDDoorbellChimeController *)selfCopy setLastUnidentifiedChimeDate:date];
  }

  context = [(HMDDoorbellChimeController *)selfCopy context];
  logEventSubmitter = [context logEventSubmitter];
  [logEventSubmitter submitLogEvent:eventCopy];
}

void __169__HMDDoorbellChimeController_notifyAccessoriesViaCoordinationFreePathWithDelay_home_shouldPlayChime_personIdentificationText_accessoriesToNotify_logEvent_accessoryUUID___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) context];
  v4 = [v3 accessorySupportsCoordinationFreeDoorbellChime:v10];

  v5 = v10;
  if (v4)
  {
    v6 = *(a1 + 40);
    if (*(a1 + 64) == 1)
    {
      if (v6)
      {
        v7 = 3;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      if (!v6)
      {
        goto LABEL_9;
      }

      v7 = 2;
    }

    v8 = [v10 doorbellChimeProfile];
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:*(a1 + 56)];
    [v8 sendDoorbellChimeMessageWithChimeMode:v7 chimeDate:v9 personIdentificationText:*(a1 + 40) accessoryUUID:*(a1 + 48)];

    v5 = v10;
  }

LABEL_9:
}

- (void)_notifyAllAccessoriesForDoorbellPressAndPlayChimeSound:(BOOL)sound significantEvents:(id)events
{
  soundCopy = sound;
  v97 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  context = [(HMDDoorbellChimeController *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (soundCopy)
  {
    goto LABEL_6;
  }

  lastUnidentifiedChimeDate = [(HMDDoorbellChimeController *)self lastUnidentifiedChimeDate];

  if (lastUnidentifiedChimeDate)
  {
    lastUnidentifiedChimeDate2 = [(HMDDoorbellChimeController *)self lastUnidentifiedChimeDate];
    [lastUnidentifiedChimeDate2 timeIntervalSinceNow];
    v12 = -v11;

    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      context2 = [(HMDDoorbellChimeController *)selfCopy context];
      [context2 doorbellChimeMaximumAnnounceDelay];
      *buf = 138543874;
      v94 = v16;
      v95 = 2048;
      *v96 = v12;
      *&v96[8] = 2048;
      *&v96[10] = v18;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@It has been %lfs since the last unidentified chime, and our maximum allowed announce delay is %lfs", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    context3 = [(HMDDoorbellChimeController *)selfCopy context];
    [context3 doorbellChimeMaximumAnnounceDelay];
    v21 = v20;

    if (v21 >= v12)
    {
LABEL_6:
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543874;
        v94 = v25;
        v95 = 1024;
        *v96 = soundCopy;
        *&v96[4] = 2112;
        *&v96[6] = eventsCopy;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Notifying accessories for doorbell press with shouldPlayChime: %{BOOL}d, significantEvents: %@", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v22);
      context4 = [(HMDDoorbellChimeController *)selfCopy2 context];
      accessory = [context4 accessory];

      cameraProfiles = [accessory cameraProfiles];
      anyObject = [cameraProfiles anyObject];

      v83 = objc_alloc_init(HMDDoorbellChimeNotificationLogEvent);
      [(HMDDoorbellChimeNotificationLogEvent *)v83 setNumHomePodsWithDoorbellChimeEnabled:[(HMDDoorbellChimeController *)selfCopy2 _numHomePodsWithDoorbellChimeEnabled]];
      if (soundCopy)
      {
        [MEMORY[0x277CBEAA8] date];
      }

      else
      {
        [(HMDDoorbellChimeController *)selfCopy2 lastUnidentifiedChimeDate];
      }
      v30 = ;
      [(HMDDoorbellChimeController *)selfCopy2 setLastUnidentifiedChimeDate:v30];

      if (eventsCopy)
      {
        context5 = [(HMDDoorbellChimeController *)selfCopy2 context];
        doorbellBulletinUtilities = [context5 doorbellBulletinUtilities];
        v33 = [doorbellBulletinUtilities localizedAudioAccessoryAnnounceMessageForSignificantEvents:eventsCopy];
      }

      else if (anyObject)
      {
        context6 = [(HMDDoorbellChimeController *)selfCopy2 context];
        doorbellBulletinUtilities2 = [context6 doorbellBulletinUtilities];
        lastUnidentifiedChimeDate3 = [(HMDDoorbellChimeController *)selfCopy2 lastUnidentifiedChimeDate];
        eventsCopy = [doorbellBulletinUtilities2 significantEventsRelevantToDoorbellPressAtDate:lastUnidentifiedChimeDate3 forCameraProfile:anyObject];

        context7 = [(HMDDoorbellChimeController *)selfCopy2 context];
        doorbellBulletinUtilities3 = [context7 doorbellBulletinUtilities];
        v44 = [doorbellBulletinUtilities3 localizedAudioAccessoryAnnounceMessageForSignificantEvents:eventsCopy];

        if (v44)
        {
          v82 = v44;
          goto LABEL_22;
        }

        v69 = anyObject;
        v70 = accessory;
        v71 = objc_autoreleasePoolPush();
        v72 = selfCopy2;
        v73 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          v74 = HMFGetLogIdentifier();
          *buf = 138543362;
          v94 = v74;
          _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_INFO, "%{public}@Fetching significant events from the cloud because no person identification text was found", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v71);
        context8 = [(HMDDoorbellChimeController *)v72 context];
        doorbellBulletinUtilities4 = [context8 doorbellBulletinUtilities];
        lastUnidentifiedChimeDate4 = [(HMDDoorbellChimeController *)v72 lastUnidentifiedChimeDate];
        v92[0] = MEMORY[0x277D85DD0];
        v92[1] = 3221225472;
        v92[2] = __103__HMDDoorbellChimeController__notifyAllAccessoriesForDoorbellPressAndPlayChimeSound_significantEvents___block_invoke;
        v92[3] = &unk_278682ED8;
        v92[4] = v72;
        v78 = v69;
        [doorbellBulletinUtilities4 fetchSignificantEventsRelevantToDoorbellPressAtDate:lastUnidentifiedChimeDate4 forCameraProfile:v69 completion:v92];

        v33 = 0;
        accessory = v70;
        anyObject = v78;
      }

      else
      {
        v33 = 0;
        eventsCopy = 0;
      }

      if (!soundCopy && !v33)
      {
        v34 = objc_autoreleasePoolPush();
        v35 = selfCopy2;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543362;
          v94 = v37;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Not playing chime and found no persons to announce, so doing nothing", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v34);
        v38 = v83;
LABEL_34:

        goto LABEL_35;
      }

      v82 = v33;
LABEL_22:
      home = [accessory home];
      appleMediaAccessories = [home appleMediaAccessories];
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __103__HMDDoorbellChimeController__notifyAllAccessoriesForDoorbellPressAndPlayChimeSound_significantEvents___block_invoke_31;
      v91[3] = &unk_278688F28;
      v91[4] = selfCopy2;
      v47 = [appleMediaAccessories na_filter:v91];

      if ([v47 count])
      {
        [(HMDDoorbellChimeController *)selfCopy2 context];
        v79 = v81 = eventsCopy;
        fetchDoorbellDelay = [v79 fetchDoorbellDelay];
        v49 = MEMORY[0x277D2C938];
        [(HMDDoorbellChimeController *)selfCopy2 context];
        v80 = anyObject;
        v51 = v50 = accessory;
        workQueue2 = [v51 workQueue];
        v53 = [v49 schedulerWithDispatchQueue:workQueue2];
        v54 = [fetchDoorbellDelay reschedule:v53];
        v84[0] = MEMORY[0x277D85DD0];
        v84[1] = 3221225472;
        v84[2] = __103__HMDDoorbellChimeController__notifyAllAccessoriesForDoorbellPressAndPlayChimeSound_significantEvents___block_invoke_34;
        v84[3] = &unk_27867B5A0;
        v84[4] = selfCopy2;
        v85 = home;
        v90 = soundCopy;
        v55 = v82;
        v86 = v82;
        v87 = v47;
        v38 = v83;
        v88 = v83;
        v89 = v50;
        v56 = [v54 addCompletionBlock:v84];

        accessory = v50;
        anyObject = v80;

        eventsCopy = v81;
      }

      else
      {
        v65 = objc_autoreleasePoolPush();
        v66 = selfCopy2;
        v67 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
        {
          v68 = HMFGetLogIdentifier();
          *buf = 138543618;
          v94 = v68;
          v95 = 2112;
          *v96 = accessory;
          _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_INFO, "%{public}@Nothing to notify for chime from %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v65);
        v55 = v82;
        v38 = v83;
      }

      goto LABEL_34;
    }

    v61 = objc_autoreleasePoolPush();
    v62 = selfCopy;
    v63 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      v64 = HMFGetLogIdentifier();
      *buf = 138543362;
      v94 = v64;
      _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_INFO, "%{public}@Not notifying accessories since we have exceeded our maximum allowed announce delay", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v61);
    [(HMDDoorbellChimeController *)v62 setLastUnidentifiedChimeDate:0];
  }

  else
  {
    v57 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v59 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      v60 = HMFGetLogIdentifier();
      *buf = 138543362;
      v94 = v60;
      _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring updated person information because there was not a recent doorbell press", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v57);
  }

LABEL_35:
}

void __103__HMDDoorbellChimeController__notifyAllAccessoriesForDoorbellPressAndPlayChimeSound_significantEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v4 workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __103__HMDDoorbellChimeController__notifyAllAccessoriesForDoorbellPressAndPlayChimeSound_significantEvents___block_invoke_2;
  v7[3] = &unk_27868A750;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __103__HMDDoorbellChimeController__notifyAllAccessoriesForDoorbellPressAndPlayChimeSound_significantEvents___block_invoke_31(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v4 accessorySupportsCoordinationFreeDoorbellChime:v3];

  return v5;
}

void __103__HMDDoorbellChimeController__notifyAllAccessoriesForDoorbellPressAndPlayChimeSound_significantEvents___block_invoke_34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  [a2 doubleValue];
  v5 = v4;
  v6 = *(a1 + 80);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = [*(a1 + 72) uuid];
  [v3 notifyAccessoriesViaCoordinationFreePathWithDelay:v7 home:v6 shouldPlayChime:v8 personIdentificationText:v9 accessoriesToNotify:v10 logEvent:v11 accessoryUUID:v5];
}

uint64_t __103__HMDDoorbellChimeController__notifyAllAccessoriesForDoorbellPressAndPlayChimeSound_significantEvents___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Attempting to announce any persons without re-playing chime after finished fetching significant events from the cloud", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _notifyAllAccessoriesForDoorbellPressAndPlayChimeSound:0 significantEvents:*(a1 + 40)];
}

- (void)_handleCharacteristicsValueUpdatedNotification:(id)notification
{
  v32 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  context = [(HMDDoorbellChimeController *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v22 = notificationCopy;
  userInfo = [notificationCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"HMDNotificationCharacteristicValueUpdatedChangedCharacteristicsKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v21 = v10;
  [v10 na_filter:&__block_literal_global_147939];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v26 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        selfCopy = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v28 = v20;
          v29 = 2112;
          v30 = v16;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Handling doorbell input event characteristic: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        [(HMDDoorbellChimeController *)selfCopy _notifyAllAccessoriesForDoorbellPressAndPlayChimeSound:1];
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v13);
  }
}

uint64_t __77__HMDDoorbellChimeController__handleCharacteristicsValueUpdatedNotification___block_invoke(uint64_t a1, void *a2)
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

- (id)clientIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  context = [(HMDDoorbellChimeController *)self context];
  accessory = [context accessory];
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];
  v7 = [v2 stringWithFormat:@"%@%@", @"HMDDoorbellChimeControllerIdentifier", uUIDString];

  return v7;
}

- (void)handleUpdatedPersonIdentificationInformation
{
  v14 = *MEMORY[0x277D85DE8];
  context = [(HMDDoorbellChimeController *)self context];
  isCurrentDevicePrimaryResident = [context isCurrentDevicePrimaryResident];

  if (isCurrentDevicePrimaryResident)
  {
    context2 = [(HMDDoorbellChimeController *)self context];
    workQueue = [context2 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__HMDDoorbellChimeController_handleUpdatedPersonIdentificationInformation__block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(workQueue, block);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring new significant event since we are not the primary resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)configure
{
  context = [(HMDDoorbellChimeController *)self context];
  listener = [context listener];
  [listener setDelegate:self];

  context2 = [(HMDDoorbellChimeController *)self context];
  listener2 = [context2 listener];
  [listener2 start];

  context3 = [(HMDDoorbellChimeController *)self context];
  notificationCenter = [context3 notificationCenter];
  context4 = [(HMDDoorbellChimeController *)self context];
  accessory = [context4 accessory];
  [notificationCenter addObserver:self selector:sel_handleCharacteristicsValueUpdatedNotification_ name:@"HMDNotificationCharacteristicValueUpdated" object:accessory];
}

- (void)dealloc
{
  context = [(HMDDoorbellChimeController *)self context];
  accessory = [context accessory];
  availableCharacteristics = [(HMDDoorbellChimeController *)self availableCharacteristics];
  allObjects = [availableCharacteristics allObjects];
  clientIdentifier = [(HMDDoorbellChimeController *)self clientIdentifier];
  [accessory setNotificationsEnabled:0 forCharacteristics:allObjects clientIdentifier:clientIdentifier];

  v8.receiver = self;
  v8.super_class = HMDDoorbellChimeController;
  [(HMDDoorbellChimeController *)&v8 dealloc];
}

- (HMDDoorbellChimeController)initWithContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v6 = contextCopy;
    v16.receiver = self;
    v16.super_class = HMDDoorbellChimeController;
    v7 = [(HMDDoorbellChimeController *)&v16 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_context, context);
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      availableCharacteristics = v8->_availableCharacteristics;
      v8->_availableCharacteristics = v9;
    }

    return v8;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return [(HMDDoorbellChimeController *)v12 initWithWorkQueue:v13 accessory:v14, v15];
  }
}

- (HMDDoorbellChimeController)initWithWorkQueue:(id)queue accessory:(id)accessory
{
  queueCopy = queue;
  accessoryCopy = accessory;
  if (queueCopy)
  {
    v8 = accessoryCopy;
    if (accessoryCopy)
    {
      v9 = [[HMDDoorbellChimeControllerContext alloc] initWithWorkQueue:queueCopy accessory:accessoryCopy];
      v10 = [(HMDDoorbellChimeController *)self initWithContext:v9];

      return v10;
    }
  }

  else
  {
    _HMFPreconditionFailure();
  }

  v12 = _HMFPreconditionFailure();
  return +[(HMDDoorbellChimeController *)v12];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_147969 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_147969, &__block_literal_global_44_147970);
  }

  v3 = logCategory__hmf_once_v15_147971;

  return v3;
}

void __41__HMDDoorbellChimeController_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v15_147971;
  logCategory__hmf_once_v15_147971 = v0;
}

@end