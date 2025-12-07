@interface HMDDoorbellBulletinUtilities
+ (id)_mostRelevantSignificantEventsForDoorbellPressAtDate:(id)date fromSignificantEvents:(id)events;
+ (id)_relevantSignificantEventDateIntervalForDoorbellPressAtDate:(id)date;
+ (id)logCategory;
- (id)_localizedDoorbellMessageForSignificantEvents:(id)events forAudioAccessory:(BOOL)accessory;
- (id)clipUUIDsForCoalesceableSignificantEvents:(id)events;
- (id)localizedMessageForCharacteristic:(id)characteristic;
- (id)significantEventsRelevantToDoorbellPressAtDate:(id)date forCameraProfile:(id)profile;
- (void)fetchSignificantEventsRelevantToDoorbellPressAtDate:(id)date forCameraProfile:(id)profile completion:(id)completion;
@end

@implementation HMDDoorbellBulletinUtilities

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_47697 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_47697, &__block_literal_global_47);
  }

  v3 = logCategory__hmf_once_v8_47698;

  return v3;
}

uint64_t __43__HMDDoorbellBulletinUtilities_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v8_47698;
  logCategory__hmf_once_v8_47698 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)_mostRelevantSignificantEventsForDoorbellPressAtDate:(id)date fromSignificantEvents:(id)events
{
  v32 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  eventsCopy = events;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __107__HMDDoorbellBulletinUtilities__mostRelevantSignificantEventsForDoorbellPressAtDate_fromSignificantEvents___block_invoke;
  v24[3] = &unk_279726440;
  v8 = dateCopy;
  v25 = v8;
  v9 = [eventsCopy sortedArrayUsingComparator:v24];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543874;
    v27 = v13;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@For doorbell press at %@, sorted recent significant events are %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [v9 na_firstObjectPassingTest:&__block_literal_global_44_47703];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __107__HMDDoorbellBulletinUtilities__mostRelevantSignificantEventsForDoorbellPressAtDate_fromSignificantEvents___block_invoke_2;
  v22 = &unk_279726468;
  v23 = v14;
  v15 = v14;
  v16 = [eventsCopy na_filter:&v19];
  v17 = [MEMORY[0x277CBEB98] setWithArray:{v16, v19, v20, v21, v22}];

  return v17;
}

uint64_t __107__HMDDoorbellBulletinUtilities__mostRelevantSignificantEventsForDoorbellPressAtDate_fromSignificantEvents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 dateOfOccurrence];
  [v6 timeIntervalSinceDate:*(a1 + 32)];
  v8 = fabs(v7);

  v9 = [v5 dateOfOccurrence];

  [v9 timeIntervalSinceDate:*(a1 + 32)];
  v11 = fabs(v10);

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  v14 = [v12 compare:v13];

  return v14;
}

uint64_t __107__HMDDoorbellBulletinUtilities__mostRelevantSignificantEventsForDoorbellPressAtDate_fromSignificantEvents___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 clipUUID];
  v4 = [*(a1 + 32) clipUUID];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

BOOL __107__HMDDoorbellBulletinUtilities__mostRelevantSignificantEventsForDoorbellPressAtDate_fromSignificantEvents___block_invoke_41(uint64_t a1, void *a2)
{
  v2 = [a2 faceClassification];
  v3 = v2 != 0;

  return v3;
}

+ (id)_relevantSignificantEventDateIntervalForDoorbellPressAtDate:(id)date
{
  v3 = MEMORY[0x277CBEAA8];
  dateCopy = date;
  v5 = [v3 dateWithTimeInterval:dateCopy sinceDate:-300.0];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:30.0];

  v7 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 endDate:v6];

  return v7;
}

- (id)clipUUIDsForCoalesceableSignificantEvents:(id)events
{
  eventsCopy = events;
  v4 = [eventsCopy na_map:&__block_literal_global_34_47724];
  v5 = [eventsCopy na_map:&__block_literal_global_36_47725];

  v6 = [v4 na_setByRemovingObjectsFromSet:v5];

  return v6;
}

id __74__HMDDoorbellBulletinUtilities_clipUUIDsForCoalesceableSignificantEvents___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 reason] == 1 || objc_msgSend(v2, "reason") == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 clipUUID];
  }

  return v3;
}

- (void)fetchSignificantEventsRelevantToDoorbellPressAtDate:(id)date forCameraProfile:(id)profile completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  profileCopy = profile;
  completionCopy = completion;
  clipManager = [profileCopy clipManager];
  if (clipManager)
  {
    v12 = [objc_opt_class() _relevantSignificantEventDateIntervalForDoorbellPressAtDate:dateCopy];
    v13 = [clipManager fetchSignificantEventsWithDateInterval:v12];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __112__HMDDoorbellBulletinUtilities_fetchSignificantEventsRelevantToDoorbellPressAtDate_forCameraProfile_completion___block_invoke;
    v19[3] = &unk_2797349D8;
    v21 = completionCopy;
    v19[4] = self;
    v20 = dateCopy;
    v14 = [v13 addCompletionBlock:v19];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Cannot fetch significant events relevant to doorbell press: clip manager is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v12 = [MEMORY[0x277CBEB98] set];
    (*(completionCopy + 2))(completionCopy, v12);
  }
}

void __112__HMDDoorbellBulletinUtilities_fetchSignificantEventsRelevantToDoorbellPressAtDate_forCameraProfile_completion___block_invoke(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a2;
  v5 = [objc_opt_class() _mostRelevantSignificantEventsForDoorbellPressAtDate:a1[5] fromSignificantEvents:v4];

  (*(v3 + 16))(v3, v5);
}

- (id)significantEventsRelevantToDoorbellPressAtDate:(id)date forCameraProfile:(id)profile
{
  v19 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  profileCopy = profile;
  clipManager = [profileCopy clipManager];
  if (clipManager)
  {
    v9 = [objc_opt_class() _relevantSignificantEventDateIntervalForDoorbellPressAtDate:dateCopy];
    v10 = [clipManager significantEventsWithDateInterval:v9];
    v11 = [objc_opt_class() _mostRelevantSignificantEventsForDoorbellPressAtDate:dateCopy fromSignificantEvents:v10];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Cannot fetch significant events relevant to doorbell press: clip manager is nil", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v11 = [MEMORY[0x277CBEB98] set];
  }

  return v11;
}

- (id)localizedMessageForCharacteristic:(id)characteristic
{
  v27 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  v4 = MEMORY[0x277CCACA8];
  v5 = HMDLocalizedStringForKey(@"NOTIFICATION_MESSAGE_DOORBELL_EVENT");
  v18 = 0;
  accessory = [characteristicCopy accessory];
  room = [accessory room];
  name = [room name];
  v9 = [HMDBulletinCategory trimLeadingAndTailingSpacesInName:name];
  v10 = [v4 localizedStringWithValidatedFormat:v5 validFormatSpecifiers:@"%@" error:&v18, v9];
  v11 = v18;

  v12 = v10;
  if (!v10)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138544130;
      v20 = v15;
      v21 = 2112;
      v22 = @"NOTIFICATION_MESSAGE_DOORBELL_EVENT";
      v23 = 2112;
      v24 = @"%@";
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v12 = @"NOTIFICATION_MESSAGE_DOORBELL_EVENT";
  }

  v16 = v12;

  return v12;
}

- (id)_localizedDoorbellMessageForSignificantEvents:(id)events forAudioAccessory:(BOOL)accessory
{
  accessoryCopy = accessory;
  v54 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v47 = v10;
    v48 = 2112;
    v49 = eventsCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Determining localized camera doorbell message from significant events: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(__CFString *)eventsCopy na_map:&__block_literal_global_47742];
  v12 = [(__CFString *)eventsCopy na_filter:&__block_literal_global_3_47743];
  allObjects = [v11 allObjects];
  v14 = [allObjects na_map:&__block_literal_global_6];

  v15 = [v14 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
  v16 = [v15 count];
  if (v16 == 1)
  {
    v42 = v12;
    v18 = @"NOTIFICATION_MESSAGE_CAMERA_DOORBELL_EVENT_FAMILIAR";
    if (accessoryCopy)
    {
      v18 = @"NOTIFICATION_MESSAGE_CAMERA_DOORBELL_EVENT_FAMILIAR_AUDIO_ACCESSORY";
    }

    v19 = v18;
    v20 = MEMORY[0x277CCACA8];
    v21 = HMDLocalizedStringForKey(v19);
    v45 = 0;
    firstObject = [v15 firstObject];
    v23 = [v20 localizedStringWithValidatedFormat:v21 validFormatSpecifiers:@"%@" error:&v45, firstObject];
    v24 = v45;

    v25 = v23;
    if (!v23)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138544130;
        v47 = v28;
        v48 = 2112;
        v49 = v19;
        v50 = 2112;
        v51 = @"%@";
        v52 = 2112;
        v53 = v24;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v26);
      v25 = v19;
    }

    v17 = v25;

    v12 = v42;
  }

  else if (v16)
  {
    v43 = v11;
    v29 = @"NOTIFICATION_MESSAGE_CAMERA_DOORBELL_EVENT_FAMILIAR_MULTIPLE";
    if (accessoryCopy)
    {
      v29 = @"NOTIFICATION_MESSAGE_CAMERA_DOORBELL_EVENT_FAMILIAR_MULTIPLE_AUDIO_ACCESSORY";
    }

    v30 = v29;
    v31 = MEMORY[0x277CCACA8];
    v32 = HMDLocalizedStringForKey(v30);
    v44 = 0;
    firstObject2 = [v15 firstObject];
    v34 = [v31 localizedStringWithValidatedFormat:v32 validFormatSpecifiers:@"%@" error:&v44, firstObject2];
    v35 = v44;

    v36 = v34;
    if (!v34)
    {
      v37 = objc_autoreleasePoolPush();
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138544130;
        v47 = v39;
        v48 = 2112;
        v49 = v30;
        v50 = 2112;
        v51 = @"%@";
        v52 = 2112;
        v53 = v35;
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v37);
      v36 = v30;
    }

    v17 = v36;

    v11 = v43;
  }

  else if (accessoryCopy)
  {
    v17 = 0;
  }

  else
  {
    if ([v12 count] < 2)
    {
      v40 = @"NOTIFICATION_MESSAGE_CAMERA_DOORBELL_EVENT_UNFAMILIAR";
    }

    else
    {
      v40 = @"NOTIFICATION_MESSAGE_CAMERA_DOORBELL_EVENT_UNFAMILIAR_MULTIPLE";
    }

    v17 = HMDLocalizedStringForKey(v40);
  }

  return v17;
}

id __96__HMDDoorbellBulletinUtilities__localizedDoorbellMessageForSignificantEvents_forAudioAccessory___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 person];
  v3 = [v2 name];

  return v3;
}

@end