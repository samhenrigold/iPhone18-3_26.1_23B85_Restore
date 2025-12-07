@interface HMDNotificationRegistryCoreDataAdapter
+ (id)logCategory;
- (BOOL)_deleteAllCharacteristicRegistrationsWithContext:(id)context;
- (BOOL)_deleteAllMKFRegistrationsForActionSetUUID:(id)d hmcContext:(id)context;
- (BOOL)_deleteAllMKFRegistrationsForMediaProfileUUID:(id)d withMediaProperty:(id)property hmcContext:(id)context;
- (BOOL)_deleteAllRegistrationsForCharacteristicIIDs:(id)ds withAccessoryUUID:(id)d hmcContext:(id)context;
- (BOOL)_deleteAllRegistrationsWithEntityName:(id)name withHomeKeypath:(id)keypath hmcContext:(id)context;
- (BOOL)_disableRegistration:(id)registration;
- (BOOL)_enableRegistration:(id)registration;
- (BOOL)_insertNotificationRegistrationForCharacteristic:(id)characteristic notificationThreshold:(id)threshold deviceIdsDestination:(id)destination homeMember:(id)member mkfCharacteristic:(id)mkfCharacteristic context:(id)context;
- (BOOL)_insertNotificationRegistrationForMKFActionSet:(id)set deviceIdsDestination:(id)destination homeMember:(id)member context:(id)context;
- (BOOL)_insertNotificationRegistrationForMediaProperty:(id)property mediaProfile:(id)profile deviceIdsDestination:(id)destination homeMember:(id)member accessory:(id)accessory context:(id)context;
- (BOOL)_updateThresholdRegistration:(id)registration threshold:(id)threshold;
- (BOOL)disableNotificationForActionSetUUID:(id)d user:(id)user deviceIdsDestination:(id)destination;
- (BOOL)disableNotificationForMediaProfile:(id)profile mediaProperties:(id)properties user:(id)user deviceIdsDestination:(id)destination;
- (BOOL)enableNotificationForActionSetUUID:(id)d user:(id)user deviceIdsDestination:(id)destination;
- (BOOL)enableNotificationForMediaProfile:(id)profile mediaProperties:(id)properties user:(id)user deviceIdsDestination:(id)destination;
- (BOOL)enableNotificationsForCharacteristics:(id)characteristics user:(id)user deviceIdsDestination:(id)destination;
- (BOOL)hasEnabledRegistrationForActionSetUUID:(id)d;
- (BOOL)removeRegistrationsForActionSetUUID:(id)d;
- (BOOL)removeRegistrationsForMediaProfile:(id)profile;
- (HMDHome)home;
- (HMDNotificationRegistryCoreDataAdapter)initWithHome:(id)home;
- (NSSet)actionSetRegistrations;
- (NSSet)mediaRegistrations;
- (id)_characteristicRegistrationsIncludeEnabled:(BOOL)enabled includeDisabled:(BOOL)disabled;
- (id)_fetchEnabledMKFRegistrationsForActionSetUUID:(id)d context:(id)context;
- (id)_fetchEnabledMKFRegistrationsForHMDCharacteristic:(id)characteristic exceedingChangeThresholdForCurrentValue:(id)value context:(id)context;
- (id)_fetchEnabledMKFRegistrationsForHMDCharacteristics:(id)characteristics context:(id)context;
- (id)_fetchEnabledMKFRegistrationsForMediaProfileUUID:(id)d withMediaProperty:(id)property context:(id)context;
- (id)_fetchMKFActionSetWithUUID:(id)d context:(id)context;
- (id)_fetchMKFCharacteristicsFromHMDCharacteristics:(id)characteristics context:(id)context;
- (id)_fetchMKFHAPAccessoryWithUUID:(id)d context:(id)context;
- (id)_fetchMKFRegistrationsWithUserUUID:(id)d actionSetUUID:(id)iD deviceIdsDestination:(id)destination prefetchPaths:(id)paths isRestrictedGuest:(BOOL)guest context:(id)context;
- (id)_fetchMKFRegistrationsWithUserUUID:(id)d withCharacteristicIIDs:(id)ds withAccessoryUUID:(id)iD withDeviceIdsDestination:(id)destination withPrefetchPaths:(id)paths isRestrictedGuest:(BOOL)guest context:(id)context;
- (id)_fetchMKFRegistrationsWithUserUUID:(id)d withCharacteristicIIDs:(id)ds withAccessoryUUIDs:(id)iDs withDeviceIdsDestination:(id)destination withPrefetchPaths:(id)paths isRestrictedGuest:(BOOL)guest context:(id)context;
- (id)_fetchMKFRegistrationsWithUserUUID:(id)d withMediaProfileUUID:(id)iD withMediaPropertyIn:(id)in withDeviceIdsDestination:(id)destination withAccessoryUUID:(id)uID withPrefetchPaths:(id)paths isRestrictedGuest:(BOOL)guest context:(id)self0;
- (id)_fetchMKFUserAndRegistrationsWithUserUUID:(id)d actionSetUUID:(id)iD deviceIdsDestination:(id)destination prefetchPaths:(id)paths isRestrictedGuest:(BOOL)guest outHomeMember:(id *)member context:(id)context;
- (id)_fetchMKFUserAndRegistrationsWithUserUUID:(id)d withCharacteristicIIDs:(id)ds withAccessoryUUID:(id)iD withDeviceIdsDestination:(id)destination withPrefetchPaths:(id)paths isRestrictedGuest:(BOOL)guest outHomeMember:(id *)member context:(id)self0;
- (id)_fetchMKFUserAndRegistrationsWithUserUUID:(id)d withCharacteristicIIDs:(id)ds withAccessoryUUIDs:(id)iDs withDeviceIdsDestination:(id)destination withPrefetchPaths:(id)paths isRestrictedGuest:(BOOL)guest outHomeMember:(id *)member context:(id)self0;
- (id)_fetchMKFUserAndRegistrationsWithUserUUID:(id)d withMediaProfileUUID:(id)iD withMediaPropertyIn:(id)in withDeviceIdsDestination:(id)destination withAccessoryUUID:(id)uID withPrefetchPaths:(id)paths isRestrictedGuest:(BOOL)guest outHomeMember:(id *)self0 context:(id)self1;
- (id)_fetchRequestForActionSetRegistrationsWithoutAllowedDestinations:(id)destinations;
- (id)_fetchRequestForAllActionSetRegistrations;
- (id)_fetchRequestForAllMediaProfileRegistrations;
- (id)_fetchRequestForCharacteristicRegistrations:(BOOL)registrations enabled:(BOOL)enabled destination:(id)destination propertiesToFetch:(id)fetch relationshipKeyPathsForPrefetching:(id)prefetching;
- (id)_fetchRequestForCharacteristicRegistrationsWithoutAllowedDestinations:(id)destinations;
- (id)_fetchRequestForMediaProfileRegistrationsWithoutAllowedDestinations:(id)destinations;
- (id)_filterCharacteristicRegistrations:(id)registrations home:(id)home;
- (id)_processDisableCharacteristicsRequest:(id)request registrationsForAccessory:(id)accessory context:(id)context;
- (id)_processEnableCharacteristicsRequest:(id)request homeMember:(id)member registrationsForAccessory:(id)accessory context:(id)context;
- (id)_processGroupedCharacteristicsRequests:(id)requests user:(id)user destination:(id)destination context:(id)context;
- (id)_registrationsForCharacteristicIID:(id)d exceedingChangeThresholdForCurrentValue:(id)value accessoryUUID:(id)iD moc:(id)moc error:(id *)error;
- (id)_registrationsForCharacteristicIIDs:(id)ds accessoryUUID:(id)d moc:(id)moc error:(id *)error;
- (id)_requestToFetchMKFRegistrationsWithActionSetUUID:(id)d context:(id)context;
- (id)_requestToFetchMKFRegistrationsWithMediaProfileUUID:(id)d withMediaProperty:(id)property context:(id)context;
- (id)characteristicIIDsByAccessoryUUIDForEnabledRegistrationsForDestination:(id)destination;
- (id)destinationsToNotifyForActionSetUUID:(id)d;
- (id)destinationsToNotifyForCharacteristic:(id)characteristic applyChangeThresholding:(BOOL)thresholding;
- (id)destinationsToNotifyForMediaPropertyResponse:(id)response;
- (id)destinationsWithEnabledCharacteristicRegistrations;
- (id)disableAllActionSetRegistrations;
- (id)disableAllMediaProfileRegistrations;
- (id)disableNotificationForCharacteristics:(id)characteristics user:(id)user deviceIdsDestination:(id)destination;
- (id)homeMemberForRegistrations:(id)registrations userUUID:(id)d isRestrictedGuest:(BOOL)guest context:(id)context;
- (id)mediaPropertiesRegisteredForMediaProfileUniqueIdentifier:(id)identifier;
- (id)processCharacteristicsRequests:(id)requests;
- (id)removeActionSetRegistrationsWithoutAllowedDestinations:(id)destinations;
- (id)removeAllActionSetRegistrations;
- (id)removeAllMediaProfileRegistrations;
- (id)removeCharacteristicRegistrationsWithoutAllowedDestinations:(id)destinations;
- (id)removeMediaRegistrationsWithoutAllowedDestinations:(id)destinations;
- (id)shortDescription;
- (void)disableAllCharacteristicRegistrations;
- (void)removeAllCharacteristicRegistrations;
- (void)removeRegistrationsForCharacteristics:(id)characteristics;
@end

@implementation HMDNotificationRegistryCoreDataAdapter

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)shortDescription
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __58__HMDNotificationRegistryCoreDataAdapter_shortDescription__block_invoke;
  v14 = &unk_27868A750;
  v15 = home;
  v16 = dictionary;
  v7 = dictionary;
  v8 = home;
  [context unsafeSynchronousBlock:&v11];
  shortDescription = [v7 shortDescription];

  return shortDescription;
}

void __58__HMDNotificationRegistryCoreDataAdapter_shortDescription__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = [HMCContext findHomeWithModelID:v2];

  v4 = [v3 users];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__HMDNotificationRegistryCoreDataAdapter_shortDescription__block_invoke_2;
  v5[3] = &unk_278684D48;
  v6 = *(a1 + 40);
  [v4 na_each:v5];
}

void __58__HMDNotificationRegistryCoreDataAdapter_shortDescription__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 notificationRegistrations];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__HMDNotificationRegistryCoreDataAdapter_shortDescription__block_invoke_3;
  v4[3] = &unk_278684D20;
  v5 = *(a1 + 32);
  [v3 na_each:v4];
}

void __58__HMDNotificationRegistryCoreDataAdapter_shortDescription__block_invoke_3(uint64_t a1, void *a2)
{
  v30 = a2;
  v3 = [v30 castIfNotificationRegistrationCharacteristic];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 enabled];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v7 = [v4 characteristic];
      v8 = MEMORY[0x277CCACA8];
      v9 = [v7 service];
      v10 = [v9 accessory];
      v11 = [v10 modelID];
      v12 = [v7 instanceID];
      v13 = [v8 stringWithFormat:@"%@:%@", v11, v12];

      v15 = *(a1 + 32);
      v14 = (a1 + 32);
      v16 = [v15 objectForKeyedSubscript:v13];
      if (v16)
      {
        v17 = v16;
        v18 = v4;
LABEL_12:
        v27 = [v18 deviceIdsDestination];
        v28 = [v18 lastModified];
        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", v27, v28];
        [v17 addObject:v29];

        v18 = v7;
        goto LABEL_13;
      }

      v18 = v4;
      goto LABEL_11;
    }
  }

  v19 = [v30 castIfNotificationRegistrationMediaProperty];
  v18 = v19;
  if (v19)
  {
    v20 = [v19 enabled];
    v21 = [v20 BOOLValue];

    if (v21)
    {
      v22 = MEMORY[0x277CCACA8];
      v23 = [v18 mediaProfileIdentifier];
      v24 = [v18 mediaProperty];
      v13 = [v22 stringWithFormat:@"%@:%@", v23, v24];

      v25 = *(a1 + 32);
      v14 = (a1 + 32);
      v26 = [v25 objectForKeyedSubscript:v13];
      if (v26)
      {
        v17 = v26;
        v7 = v18;
        goto LABEL_12;
      }

      v7 = v18;
LABEL_11:
      v17 = [MEMORY[0x277CBEB58] set];
      [*v14 setObject:v17 forKeyedSubscript:v13];
      goto LABEL_12;
    }
  }

LABEL_13:
}

- (BOOL)_insertNotificationRegistrationForMKFActionSet:(id)set deviceIdsDestination:(id)destination homeMember:(id)member context:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  setCopy = set;
  destinationCopy = destination;
  memberCopy = member;
  contextCopy = context;
  managedObjectContext = [contextCopy managedObjectContext];
  [managedObjectContext hmd_assertIsExecuting];

  castIfMemberIsUser = [memberCopy castIfMemberIsUser];
  if (castIfMemberIsUser)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    v17 = [castIfMemberIsUser createNotificationRegistrationsRelationOfTypeNotificationRegistrationActionSetWithModelID:uUID];
  }

  else
  {
    castIfMemberIsGuest = [memberCopy castIfMemberIsGuest];
    uUID = [castIfMemberIsGuest castIfGuest];

    if (!uUID)
    {
      goto LABEL_7;
    }

    uUID2 = [MEMORY[0x277CCAD78] UUID];
    v17 = [uUID createNotificationRegistrationsRelationOfTypeNotificationRegistrationActionSetWithModelID:uUID2];
  }

  if (v17)
  {
    [v17 setActionSet:setCopy];
    [v17 setDeviceIdsDestination:destinationCopy];
    v20 = [MEMORY[0x277CBEAA8] now];
    [v17 setLastModified:v20];

    v21 = 1;
    goto LABEL_10;
  }

LABEL_7:
  v22 = objc_autoreleasePoolPush();
  selfCopy = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    v27 = 138544130;
    v28 = v25;
    v29 = 2112;
    v30 = destinationCopy;
    v31 = 2112;
    v32 = memberCopy;
    v33 = 2112;
    v34 = setCopy;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to create notification registration for deviceIdsDestination %@ homeMember %@ mkfActionSet %@", &v27, 0x2Au);
  }

  objc_autoreleasePoolPop(v22);
  v21 = 0;
  v17 = 0;
LABEL_10:

  return v21;
}

- (BOOL)_insertNotificationRegistrationForMediaProperty:(id)property mediaProfile:(id)profile deviceIdsDestination:(id)destination homeMember:(id)member accessory:(id)accessory context:(id)context
{
  v51 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  profileCopy = profile;
  destinationCopy = destination;
  memberCopy = member;
  accessoryCopy = accessory;
  contextCopy = context;
  managedObjectContext = [contextCopy managedObjectContext];
  [managedObjectContext hmd_assertIsExecuting];

  castIfMemberIsUser = [memberCopy castIfMemberIsUser];
  castIfUser = [castIfMemberIsUser castIfUser];

  if (castIfUser)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    v23 = [castIfUser createNotificationRegistrationsRelationOfTypeNotificationRegistrationMediaPropertyWithModelID:uUID];
  }

  else
  {
    castIfMemberIsGuest = [memberCopy castIfMemberIsGuest];
    uUID = [castIfMemberIsGuest castIfGuest];

    if (!uUID)
    {
      goto LABEL_7;
    }

    [MEMORY[0x277CCAD78] UUID];
    v26 = v25 = self;
    v23 = [uUID createNotificationRegistrationsRelationOfTypeNotificationRegistrationMediaPropertyWithModelID:v26];

    self = v25;
  }

  if (v23)
  {
    [v23 setMediaProperty:propertyCopy];
    [profileCopy uniqueIdentifier];
    v27 = profileCopy;
    v29 = v28 = propertyCopy;
    [v23 setMediaProfileIdentifier:v29];

    [v23 setAccessory:accessoryCopy];
    v30 = destinationCopy;
    [v23 setDeviceIdsDestination:destinationCopy];
    v31 = [MEMORY[0x277CBEAA8] now];
    [v23 setLastModified:v31];

    v32 = 1;
    goto LABEL_10;
  }

LABEL_7:
  v27 = profileCopy;
  v28 = propertyCopy;
  v33 = objc_autoreleasePoolPush();
  selfCopy = self;
  v35 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = HMFGetLogIdentifier();
    *buf = 138544642;
    v40 = v36;
    v41 = 2112;
    v42 = v28;
    v43 = 2112;
    v44 = v27;
    v45 = 2112;
    v46 = destinationCopy;
    v47 = 2112;
    v48 = memberCopy;
    v49 = 2112;
    v50 = accessoryCopy;
    _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to create notification registration for media property %@ media profile %@ deviceIdsDestination %@ homeMember %@ mkfAccessory %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v33);
  v32 = 0;
  v23 = 0;
  v30 = destinationCopy;
LABEL_10:

  return v32;
}

- (BOOL)_insertNotificationRegistrationForCharacteristic:(id)characteristic notificationThreshold:(id)threshold deviceIdsDestination:(id)destination homeMember:(id)member mkfCharacteristic:(id)mkfCharacteristic context:(id)context
{
  thresholdCopy = threshold;
  destinationCopy = destination;
  memberCopy = member;
  mkfCharacteristicCopy = mkfCharacteristic;
  managedObjectContext = [context managedObjectContext];
  [managedObjectContext hmd_assertIsExecuting];

  castIfMemberIsUser = [memberCopy castIfMemberIsUser];
  castIfUser = [castIfMemberIsUser castIfUser];

  if (castIfUser)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    v20 = [castIfUser createNotificationRegistrationsRelationOfTypeNotificationRegistrationCharacteristicWithModelID:uUID];
  }

  else
  {
    castIfMemberIsGuest = [memberCopy castIfMemberIsGuest];
    uUID = [castIfMemberIsGuest castIfGuest];

    uUID2 = [MEMORY[0x277CCAD78] UUID];
    v20 = [uUID createNotificationRegistrationsRelationOfTypeNotificationRegistrationCharacteristicWithModelID:uUID2];
  }

  if (v20)
  {
    [v20 setCharacteristic:mkfCharacteristicCopy];
    [v20 setNotificationThreshold:thresholdCopy];
    [v20 setDeviceIdsDestination:destinationCopy];
    v23 = [MEMORY[0x277CBEAA8] now];
    [v20 setLastModified:v23];

    [v20 setEnabled:MEMORY[0x277CBEC38]];
  }

  return v20 != 0;
}

- (BOOL)_updateThresholdRegistration:(id)registration threshold:(id)threshold
{
  registrationCopy = registration;
  thresholdCopy = threshold;
  notificationThreshold = [registrationCopy notificationThreshold];
  v8 = HMFEqualObjects();

  if ((v8 & 1) == 0)
  {
    [registrationCopy setNotificationThreshold:thresholdCopy];
    [registrationCopy setLastNotifiedValue:0];
  }

  return v8 ^ 1;
}

- (BOOL)_disableRegistration:(id)registration
{
  registrationCopy = registration;
  enabled = [registrationCopy enabled];
  bOOLValue = [enabled BOOLValue];

  if (bOOLValue)
  {
    [registrationCopy setEnabled:MEMORY[0x277CBEC28]];
    v6 = [MEMORY[0x277CBEAA8] now];
    [registrationCopy setLastModified:v6];
  }

  return bOOLValue;
}

- (BOOL)_enableRegistration:(id)registration
{
  registrationCopy = registration;
  enabled = [registrationCopy enabled];
  bOOLValue = [enabled BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    [registrationCopy setEnabled:MEMORY[0x277CBEC38]];
    v6 = [MEMORY[0x277CBEAA8] now];
    [registrationCopy setLastModified:v6];
  }

  return bOOLValue ^ 1;
}

- (NSSet)actionSetRegistrations
{
  v3 = [MEMORY[0x277CBEB58] set];
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__HMDNotificationRegistryCoreDataAdapter_actionSetRegistrations__block_invoke;
  v11[3] = &unk_27868A010;
  v11[4] = self;
  v12 = context;
  v13 = v3;
  v7 = v3;
  v8 = context;
  [v8 unsafeSynchronousBlock:v11];
  v9 = objc_msgSend_copy(v7);

  return v9;
}

void __64__HMDNotificationRegistryCoreDataAdapter_actionSetRegistrations__block_invoke(id *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] _fetchRequestForAllActionSetRegistrations];
  v3 = [a1[5] managedObjectContext];
  v15 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v15];
  v5 = v15;

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = a1[4];
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch all action set notification registrations, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __64__HMDNotificationRegistryCoreDataAdapter_actionSetRegistrations__block_invoke_367;
  v13 = &unk_278684CF8;
  v14 = a1[6];
  [v4 na_each:&v10];
  [a1[5] reset];
}

void __64__HMDNotificationRegistryCoreDataAdapter_actionSetRegistrations__block_invoke_367(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 user];
  v4 = [v3 modelID];

  if (!v4)
  {
    v5 = [v14 guest];
    v4 = [v5 modelID];
  }

  v6 = *(a1 + 32);
  v7 = [HMDActionSetNotificationRegistration alloc];
  v8 = [v14 actionSet];
  v9 = [v8 modelID];
  v10 = [v14 deviceIdsDestination];
  v11 = [v14 lastModified];
  v12 = [v14 enabled];
  v13 = -[HMDActionSetNotificationRegistration initWithActionSetUUID:deviceIdsDestination:userUUID:lastModified:enabled:](v7, "initWithActionSetUUID:deviceIdsDestination:userUUID:lastModified:enabled:", v9, v10, v4, v11, [v12 BOOLValue]);
  [v6 addObject:v13];
}

- (BOOL)hasEnabledRegistrationForActionSetUUID:(id)d
{
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__HMDNotificationRegistryCoreDataAdapter_hasEnabledRegistrationForActionSetUUID___block_invoke;
  v11[3] = &unk_278689D20;
  v8 = context;
  v12 = v8;
  selfCopy = self;
  v9 = dCopy;
  v14 = v9;
  v15 = &v16;
  [v8 unsafeSynchronousBlock:v11];
  LOBYTE(dCopy) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return dCopy;
}

void __81__HMDNotificationRegistryCoreDataAdapter_hasEnabledRegistrationForActionSetUUID___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) _fetchEnabledMKFRegistrationsForActionSetUUID:*(a1 + 48) context:v2];
  v4 = v3;
  if (v3)
  {
    *(*(*(a1 + 56) + 8) + 24) = [v3 count] != 0;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 48);
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch notification registrations for action set uuid %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  [*(a1 + 32) reset];
}

- (id)disableAllActionSetRegistrations
{
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__246802;
  v21 = __Block_byref_object_dispose__246803;
  v22 = 0;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __74__HMDNotificationRegistryCoreDataAdapter_disableAllActionSetRegistrations__block_invoke;
  v12 = &unk_2786869D8;
  v6 = context;
  v13 = v6;
  selfCopy = self;
  v15 = &v17;
  v16 = &v23;
  [v6 unsafeSynchronousBlock:&v9];
  if (v24[3])
  {
    [MEMORY[0x277CBEB98] setWithArray:{v18[5], v9, v10, v11, v12}];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v7 = ;

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v7;
}

void __74__HMDNotificationRegistryCoreDataAdapter_disableAllActionSetRegistrations__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) _fetchRequestForAllActionSetRegistrations];
  v22 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v22];
  v5 = v22;
  if (v4)
  {
    v6 = [v4 na_map:&__block_literal_global_366];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *v27 = 0;
    *&v27[8] = v27;
    *&v27[16] = 0x2020000000;
    v28 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __74__HMDNotificationRegistryCoreDataAdapter_disableAllActionSetRegistrations__block_invoke_2;
    v21[3] = &unk_278684C70;
    v21[4] = *(a1 + 40);
    v21[5] = v27;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v21];
    if (*(*&v27[8] + 24) == 1 && [v2 hasChanges])
    {
      v9 = *(a1 + 32);
      v20 = v5;
      v10 = [v9 save:&v20];
      v11 = v20;

      *(*(*(a1 + 56) + 8) + 24) = v10;
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
      {
        v12 = objc_autoreleasePoolPush();
        v13 = *(a1 + 40);
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = HMFGetLogIdentifier();
          *buf = 138543618;
          v24 = v15;
          v25 = 2112;
          v26 = v11;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove all media profile registrations, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v12);
      }
    }

    else
    {
      v11 = v5;
    }

    [*(a1 + 32) reset];
    _Block_object_dispose(v27, 8);
    v5 = v11;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 40);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *v27 = 138543618;
      *&v27[4] = v19;
      *&v27[12] = 2112;
      *&v27[14] = v5;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch action set registrations, error: %@", v27, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    [*(a1 + 32) reset];
  }
}

void *__74__HMDNotificationRegistryCoreDataAdapter_disableAllActionSetRegistrations__block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _disableRegistration:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

id __74__HMDNotificationRegistryCoreDataAdapter_disableAllActionSetRegistrations__block_invoke_364(uint64_t a1, void *a2)
{
  v2 = [a2 actionSet];
  v3 = [v2 modelID];

  return v3;
}

- (id)removeActionSetRegistrationsWithoutAllowedDestinations:(id)destinations
{
  destinationsCopy = destinations;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__246802;
  v26 = __Block_byref_object_dispose__246803;
  v27 = MEMORY[0x277CBEBF8];
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__HMDNotificationRegistryCoreDataAdapter_removeActionSetRegistrationsWithoutAllowedDestinations___block_invoke;
  v12[3] = &unk_278687D38;
  v8 = context;
  v13 = v8;
  selfCopy = self;
  v9 = destinationsCopy;
  v15 = v9;
  v16 = &v22;
  v17 = &v18;
  [v8 unsafeSynchronousBlock:v12];
  if (v19[3])
  {
    [MEMORY[0x277CBEB98] setWithArray:v23[5]];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v10 = ;

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __97__HMDNotificationRegistryCoreDataAdapter_removeActionSetRegistrationsWithoutAllowedDestinations___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) _fetchRequestForActionSetRegistrationsWithoutAllowedDestinations:*(a1 + 48)];
  v26 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v26];
  v5 = v26;
  if (v4)
  {
    v6 = [v4 na_map:&__block_literal_global_363_246811];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __97__HMDNotificationRegistryCoreDataAdapter_removeActionSetRegistrationsWithoutAllowedDestinations___block_invoke_2;
    v23[3] = &unk_278684C70;
    v9 = *(a1 + 32);
    v10 = *(a1 + 64);
    v24 = v9;
    v25 = v10;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v23];
    if (*(*(*(a1 + 64) + 8) + 24) == 1 && [v2 hasChanges])
    {
      v11 = *(a1 + 32);
      v22 = v5;
      v12 = [v11 save:&v22];
      v13 = v22;

      if ((v12 & 1) == 0)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 40);
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          v28 = v17;
          v29 = 2112;
          v30 = v13;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove all action set registrations, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        *(*(*(a1 + 64) + 8) + 24) = 0;
      }
    }

    else
    {
      v13 = v5;
    }

    [*(a1 + 32) reset];

    v5 = v13;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 40);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v21;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch action set registrations, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    [*(a1 + 32) reset];
  }
}

void *__97__HMDNotificationRegistryCoreDataAdapter_removeActionSetRegistrationsWithoutAllowedDestinations___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) deleteObject:a2];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

HMDActionSetNotificationRegistration *__97__HMDNotificationRegistryCoreDataAdapter_removeActionSetRegistrationsWithoutAllowedDestinations___block_invoke_360(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 user];
  v4 = [v3 modelID];

  if (!v4)
  {
    v5 = [v2 guest];
    v4 = [v5 modelID];
  }

  v6 = [HMDActionSetNotificationRegistration alloc];
  v7 = [v2 actionSet];
  v8 = [v7 modelID];
  v9 = [v2 deviceIdsDestination];
  v10 = [v2 lastModified];
  v11 = [v2 enabled];
  v12 = -[HMDActionSetNotificationRegistration initWithActionSetUUID:deviceIdsDestination:userUUID:lastModified:enabled:](v6, "initWithActionSetUUID:deviceIdsDestination:userUUID:lastModified:enabled:", v8, v9, v4, v10, [v11 BOOLValue]);

  return v12;
}

- (id)removeAllActionSetRegistrations
{
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__246802;
  v21 = __Block_byref_object_dispose__246803;
  v22 = 0;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __73__HMDNotificationRegistryCoreDataAdapter_removeAllActionSetRegistrations__block_invoke;
  v12 = &unk_2786869D8;
  v6 = context;
  v13 = v6;
  selfCopy = self;
  v15 = &v17;
  v16 = &v23;
  [v6 unsafeSynchronousBlock:&v9];
  if (v24[3])
  {
    [MEMORY[0x277CBEB98] setWithArray:{v18[5], v9, v10, v11, v12}];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v7 = ;

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v7;
}

void __73__HMDNotificationRegistryCoreDataAdapter_removeAllActionSetRegistrations__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) _fetchRequestForAllActionSetRegistrations];
  v26 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v26];
  v5 = v26;
  if (v4)
  {
    v6 = [v4 na_map:&__block_literal_global_359_246816];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __73__HMDNotificationRegistryCoreDataAdapter_removeAllActionSetRegistrations__block_invoke_2;
    v23[3] = &unk_278684C70;
    v9 = *(a1 + 32);
    v10 = *(a1 + 56);
    v24 = v9;
    v25 = v10;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v23];
    if (*(*(*(a1 + 56) + 8) + 24) == 1 && [v2 hasChanges])
    {
      v11 = *(a1 + 32);
      v22 = v5;
      v12 = [v11 save:&v22];
      v13 = v22;

      if ((v12 & 1) == 0)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 40);
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          v28 = v17;
          v29 = 2112;
          v30 = v13;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove all action set registrations, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        *(*(*(a1 + 56) + 8) + 24) = 0;
      }
    }

    else
    {
      v13 = v5;
    }

    [*(a1 + 32) reset];

    v5 = v13;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 40);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v21;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch action set registrations, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    [*(a1 + 32) reset];
  }
}

void *__73__HMDNotificationRegistryCoreDataAdapter_removeAllActionSetRegistrations__block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) deleteObject:a2];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

id __73__HMDNotificationRegistryCoreDataAdapter_removeAllActionSetRegistrations__block_invoke_356(uint64_t a1, void *a2)
{
  v2 = [a2 actionSet];
  v3 = [v2 modelID];

  return v3;
}

- (id)destinationsToNotifyForActionSetUUID:(id)d
{
  dCopy = d;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__246802;
  v24 = __Block_byref_object_dispose__246803;
  v25 = MEMORY[0x277CBEBF8];
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __79__HMDNotificationRegistryCoreDataAdapter_destinationsToNotifyForActionSetUUID___block_invoke;
  v15 = &unk_278689D20;
  v8 = context;
  v16 = v8;
  selfCopy = self;
  v9 = dCopy;
  v18 = v9;
  v19 = &v20;
  [v8 unsafeSynchronousBlock:&v12];
  v10 = objc_msgSend_copy(v21[5], v12, v13, v14, v15);

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __79__HMDNotificationRegistryCoreDataAdapter_destinationsToNotifyForActionSetUUID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) _fetchEnabledMKFRegistrationsForActionSetUUID:*(a1 + 48) context:v2];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 na_map:&__block_literal_global_355];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 48);
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch notification registrations for action set: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  [*(a1 + 32) reset];
}

- (BOOL)removeRegistrationsForActionSetUUID:(id)d
{
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__HMDNotificationRegistryCoreDataAdapter_removeRegistrationsForActionSetUUID___block_invoke;
  v11[3] = &unk_278689D20;
  v8 = context;
  v12 = v8;
  selfCopy = self;
  v9 = dCopy;
  v14 = v9;
  v15 = &v16;
  [v8 unsafeSynchronousBlock:v11];
  LOBYTE(dCopy) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return dCopy;
}

void __78__HMDNotificationRegistryCoreDataAdapter_removeRegistrationsForActionSetUUID___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  if ([*(a1 + 40) _deleteAllMKFRegistrationsForActionSetUUID:*(a1 + 48) hmcContext:*(a1 + 32)])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  if ([v2 hasChanges])
  {
    v3 = *(a1 + 32);
    v10 = 0;
    v4 = [v3 save:&v10];
    v5 = v10;
    if ((v4 & 1) == 0)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 40);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543618;
        v12 = v9;
        v13 = 2112;
        v14 = v5;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the disable action set notification registration changes requested, error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  [*(a1 + 32) reset];
}

- (BOOL)disableNotificationForActionSetUUID:(id)d user:(id)user deviceIdsDestination:(id)destination
{
  dCopy = d;
  userCopy = user;
  destinationCopy = destination;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __104__HMDNotificationRegistryCoreDataAdapter_disableNotificationForActionSetUUID_user_deviceIdsDestination___block_invoke;
  v19[3] = &unk_278689D48;
  v14 = context;
  v20 = v14;
  selfCopy = self;
  v15 = userCopy;
  v22 = v15;
  v16 = dCopy;
  v23 = v16;
  v17 = destinationCopy;
  v24 = v17;
  v25 = &v26;
  [v14 unsafeSynchronousBlock:v19];
  LOBYTE(userCopy) = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return userCopy;
}

void __104__HMDNotificationRegistryCoreDataAdapter_disableNotificationForActionSetUUID_user_deviceIdsDestination___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) uuid];
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7 = [*(a1 + 48) isRestrictedGuest];
  v25 = 0;
  v8 = [v3 _fetchMKFUserAndRegistrationsWithUserUUID:v4 actionSetUUID:v6 deviceIdsDestination:v5 prefetchPaths:0 isRestrictedGuest:v7 outHomeMember:&v25 context:v2];
  v9 = v25;

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch user and registrations", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __104__HMDNotificationRegistryCoreDataAdapter_disableNotificationForActionSetUUID_user_deviceIdsDestination___block_invoke_351;
    v24[3] = &unk_278684C70;
    v15 = *(a1 + 72);
    v24[4] = *(a1 + 40);
    v24[5] = v15;
    [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];
    if ([v2 hasChanges])
    {
      v16 = *(a1 + 32);
      v23 = 0;
      v17 = [v16 save:&v23];
      v18 = v23;
      if ((v17 & 1) == 0)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = *(a1 + 40);
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v27 = v22;
          v28 = 2112;
          v29 = v18;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the disable action set notification registration changes requested, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        *(*(*(a1 + 72) + 8) + 24) = 0;
      }
    }
  }

  [*(a1 + 32) reset];
}

void *__104__HMDNotificationRegistryCoreDataAdapter_disableNotificationForActionSetUUID_user_deviceIdsDestination___block_invoke_351(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _disableRegistration:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)enableNotificationForActionSetUUID:(id)d user:(id)user deviceIdsDestination:(id)destination
{
  dCopy = d;
  userCopy = user;
  destinationCopy = destination;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __103__HMDNotificationRegistryCoreDataAdapter_enableNotificationForActionSetUUID_user_deviceIdsDestination___block_invoke;
  v19[3] = &unk_278689D48;
  v14 = context;
  v20 = v14;
  selfCopy = self;
  v15 = userCopy;
  v22 = v15;
  v16 = dCopy;
  v23 = v16;
  v17 = destinationCopy;
  v24 = v17;
  v25 = &v26;
  [v14 unsafeSynchronousBlock:v19];
  LOBYTE(userCopy) = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return userCopy;
}

void __103__HMDNotificationRegistryCoreDataAdapter_enableNotificationForActionSetUUID_user_deviceIdsDestination___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) uuid];
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7 = [*(a1 + 48) isRestrictedGuest];
  v39 = 0;
  v8 = [v3 _fetchMKFUserAndRegistrationsWithUserUUID:v4 actionSetUUID:v6 deviceIdsDestination:v5 prefetchPaths:0 isRestrictedGuest:v7 outHomeMember:&v39 context:v2];
  v9 = v39;

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch user and registrations", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_26;
  }

  v15 = [v8 count];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v36;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v16);
        }

        if ([*(a1 + 40) _enableRegistration:*(*(&v35 + 1) + 8 * i)])
        {
          *(*(*(a1 + 72) + 8) + 24) = 1;
          goto LABEL_19;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  if (!v15)
  {
    v28 = [*(a1 + 40) _fetchMKFActionSetWithUUID:*(a1 + 56) context:v2];
    if (v28)
    {
      if ([*(a1 + 40) _insertNotificationRegistrationForMKFActionSet:v28 deviceIdsDestination:*(a1 + 64) homeMember:v9 context:*(a1 + 32)])
      {
        *(*(*(a1 + 72) + 8) + 24) = 1;

        goto LABEL_20;
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = *(a1 + 40);
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        v33 = *(a1 + 56);
        *buf = 138543618;
        v41 = v32;
        v42 = 2112;
        v43 = v33;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch MKFActionSet for UUID %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
    }

    [*(a1 + 32) reset];

    goto LABEL_27;
  }

LABEL_20:
  if ([v2 hasChanges])
  {
    v21 = *(a1 + 32);
    v34 = 0;
    v22 = [v21 save:&v34];
    v23 = v34;
    if ((v22 & 1) == 0)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = *(a1 + 40);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v41 = v27;
        v42 = 2112;
        v43 = v23;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the enable action set registration changes requested, error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      *(*(*(a1 + 72) + 8) + 24) = 0;
    }
  }

LABEL_26:
  [*(a1 + 32) reset];
LABEL_27:
}

- (NSSet)mediaRegistrations
{
  v3 = [MEMORY[0x277CBEB58] set];
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__HMDNotificationRegistryCoreDataAdapter_mediaRegistrations__block_invoke;
  v11[3] = &unk_27868A010;
  v11[4] = self;
  v12 = context;
  v13 = v3;
  v7 = v3;
  v8 = context;
  [v8 unsafeSynchronousBlock:v11];
  v9 = objc_msgSend_copy(v7);

  return v9;
}

void __60__HMDNotificationRegistryCoreDataAdapter_mediaRegistrations__block_invoke(id *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] _fetchRequestForAllMediaProfileRegistrations];
  v3 = [a1[5] managedObjectContext];
  v15 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v15];
  v5 = v15;

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = a1[4];
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch all media property notification registrations, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __60__HMDNotificationRegistryCoreDataAdapter_mediaRegistrations__block_invoke_349;
  v13 = &unk_278684C48;
  v14 = a1[6];
  [v4 na_each:&v10];
  [a1[5] reset];
}

void __60__HMDNotificationRegistryCoreDataAdapter_mediaRegistrations__block_invoke_349(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 user];
  v4 = [v3 modelID];

  if (!v4)
  {
    v5 = [v13 guest];
    v4 = [v5 modelID];
  }

  v6 = [HMDMediaPropertyNotificationRegistration alloc];
  v7 = [v13 mediaProfileIdentifier];
  v8 = [v13 mediaProperty];
  v9 = [v13 deviceIdsDestination];
  v10 = [v13 lastModified];
  v11 = [v13 enabled];
  v12 = -[HMDMediaPropertyNotificationRegistration initWithMediaProfileUniqueIdentifier:mediaProperty:deviceIdsDestination:userUUID:lastModified:enabled:](v6, "initWithMediaProfileUniqueIdentifier:mediaProperty:deviceIdsDestination:userUUID:lastModified:enabled:", v7, v8, v9, v4, v10, [v11 BOOLValue]);

  [*(a1 + 32) addObject:v12];
}

- (id)removeMediaRegistrationsWithoutAllowedDestinations:(id)destinations
{
  destinationsCopy = destinations;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__246802;
  v28 = __Block_byref_object_dispose__246803;
  v29 = MEMORY[0x277CBEBF8];
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __93__HMDNotificationRegistryCoreDataAdapter_removeMediaRegistrationsWithoutAllowedDestinations___block_invoke;
  v14[3] = &unk_278687D38;
  v8 = context;
  v15 = v8;
  selfCopy = self;
  v9 = destinationsCopy;
  v17 = v9;
  v18 = &v24;
  v19 = &v20;
  [v8 unsafeSynchronousBlock:v14];
  v10 = MEMORY[0x277CBEB98];
  if (*(v21 + 24) == 1)
  {
    v11 = objc_msgSend_copy(v25[5]);
    v12 = [v10 setWithArray:v11];
  }

  else
  {
    v12 = [MEMORY[0x277CBEB98] set];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

void __93__HMDNotificationRegistryCoreDataAdapter_removeMediaRegistrationsWithoutAllowedDestinations___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) _fetchRequestForMediaProfileRegistrationsWithoutAllowedDestinations:*(a1 + 48)];
  v26 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v26];
  v5 = v26;
  if (v4)
  {
    v6 = [v4 na_map:&__block_literal_global_348];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __93__HMDNotificationRegistryCoreDataAdapter_removeMediaRegistrationsWithoutAllowedDestinations___block_invoke_2;
    v23[3] = &unk_278684BB8;
    v9 = *(a1 + 32);
    v10 = *(a1 + 64);
    v24 = v9;
    v25 = v10;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v23];
    if (*(*(*(a1 + 64) + 8) + 24) == 1 && [v2 hasChanges])
    {
      v11 = *(a1 + 32);
      v22 = v5;
      v12 = [v11 save:&v22];
      v13 = v22;

      if ((v12 & 1) == 0)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 40);
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          v28 = v17;
          v29 = 2112;
          v30 = v13;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove all media profile registrations, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        *(*(*(a1 + 64) + 8) + 24) = 0;
      }
    }

    else
    {
      v13 = v5;
    }

    [*(a1 + 32) reset];

    v5 = v13;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 40);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v21;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch media profile registrations, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    [*(a1 + 32) reset];
  }
}

void *__93__HMDNotificationRegistryCoreDataAdapter_removeMediaRegistrationsWithoutAllowedDestinations___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) deleteObject:a2];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

HMDMediaPropertyNotificationRegistration *__93__HMDNotificationRegistryCoreDataAdapter_removeMediaRegistrationsWithoutAllowedDestinations___block_invoke_345(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 user];
  v4 = [v3 modelID];

  if (!v4)
  {
    v5 = [v2 guest];
    v4 = [v5 modelID];
  }

  v6 = [HMDMediaPropertyNotificationRegistration alloc];
  v7 = [v2 mediaProfileIdentifier];
  v8 = [v2 mediaProperty];
  v9 = [v2 deviceIdsDestination];
  v10 = [v2 lastModified];
  v11 = [v2 enabled];
  v12 = -[HMDMediaPropertyNotificationRegistration initWithMediaProfileUniqueIdentifier:mediaProperty:deviceIdsDestination:userUUID:lastModified:enabled:](v6, "initWithMediaProfileUniqueIdentifier:mediaProperty:deviceIdsDestination:userUUID:lastModified:enabled:", v7, v8, v9, v4, v10, [v11 BOOLValue]);

  return v12;
}

- (id)disableAllMediaProfileRegistrations
{
  array = [MEMORY[0x277CBEB18] array];
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __77__HMDNotificationRegistryCoreDataAdapter_disableAllMediaProfileRegistrations__block_invoke;
  v16 = &unk_278689D20;
  v7 = context;
  v17 = v7;
  selfCopy = self;
  v8 = array;
  v19 = v8;
  v20 = &v21;
  [v7 unsafeSynchronousBlock:&v13];
  v9 = MEMORY[0x277CBEB98];
  if (*(v22 + 24) == 1)
  {
    v10 = objc_msgSend_copy(v8, v13, v14, v15, v16, v17, selfCopy);
    v11 = [v9 setWithArray:v10];
  }

  else
  {
    v11 = [MEMORY[0x277CBEB98] set];
  }

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __77__HMDNotificationRegistryCoreDataAdapter_disableAllMediaProfileRegistrations__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) _fetchRequestForAllMediaProfileRegistrations];
  v22 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v22];
  v5 = v22;
  if (v4)
  {
    *v27 = 0;
    *&v27[8] = v27;
    *&v27[16] = 0x2020000000;
    v28 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77__HMDNotificationRegistryCoreDataAdapter_disableAllMediaProfileRegistrations__block_invoke_344;
    v19[3] = &unk_278684C00;
    v6 = *(a1 + 48);
    v19[4] = *(a1 + 40);
    v21 = v27;
    v20 = v6;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v19];
    if (*(*&v27[8] + 24) == 1 && [v2 hasChanges])
    {
      v7 = *(a1 + 32);
      v18 = v5;
      v8 = [v7 save:&v18];
      v9 = v18;

      *(*(*(a1 + 56) + 8) + 24) = v8;
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = *(a1 + 40);
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543618;
          v24 = v13;
          v25 = 2112;
          v26 = v9;
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove all media profile registrations, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
      }
    }

    else
    {
      v9 = v5;
    }

    [*(a1 + 32) reset];

    _Block_object_dispose(v27, 8);
    v5 = v9;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 40);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *v27 = 138543618;
      *&v27[4] = v17;
      *&v27[12] = 2112;
      *&v27[14] = v5;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch media profile registrations, error: %@", v27, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [*(a1 + 32) reset];
  }
}

void __77__HMDNotificationRegistryCoreDataAdapter_disableAllMediaProfileRegistrations__block_invoke_344(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) _disableRegistration:?])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v3 = *(a1 + 40);
    v4 = [v5 mediaProfileIdentifier];
    [v3 addObject:v4];
  }
}

- (id)removeAllMediaProfileRegistrations
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__246802;
  v27 = __Block_byref_object_dispose__246803;
  v28 = MEMORY[0x277CBEBF8];
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __76__HMDNotificationRegistryCoreDataAdapter_removeAllMediaProfileRegistrations__block_invoke;
  v14 = &unk_2786869D8;
  v6 = context;
  v15 = v6;
  selfCopy = self;
  v17 = &v23;
  v18 = &v19;
  [v6 unsafeSynchronousBlock:&v11];
  v7 = MEMORY[0x277CBEB98];
  if (*(v20 + 24) == 1)
  {
    v8 = objc_msgSend_copy(v24[5], v11, v12, v13, v14);
    v9 = [v7 setWithArray:v8];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB98] set];
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v9;
}

void __76__HMDNotificationRegistryCoreDataAdapter_removeAllMediaProfileRegistrations__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) _fetchRequestForAllMediaProfileRegistrations];
  v26 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v26];
  v5 = v26;
  if (v4)
  {
    v6 = [v4 na_map:&__block_literal_global_343];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __76__HMDNotificationRegistryCoreDataAdapter_removeAllMediaProfileRegistrations__block_invoke_2;
    v23[3] = &unk_278684BB8;
    v9 = *(a1 + 32);
    v10 = *(a1 + 56);
    v24 = v9;
    v25 = v10;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v23];
    if (*(*(*(a1 + 56) + 8) + 24) == 1 && [v2 hasChanges])
    {
      v11 = *(a1 + 32);
      v22 = v5;
      v12 = [v11 save:&v22];
      v13 = v22;

      if ((v12 & 1) == 0)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 40);
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          v28 = v17;
          v29 = 2112;
          v30 = v13;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove all media profile registrations, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        *(*(*(a1 + 56) + 8) + 24) = 0;
      }
    }

    else
    {
      v13 = v5;
    }

    [*(a1 + 32) reset];

    v5 = v13;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 40);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v21;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch media profile registrations, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    [*(a1 + 32) reset];
  }
}

void *__76__HMDNotificationRegistryCoreDataAdapter_removeAllMediaProfileRegistrations__block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) deleteObject:a2];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

- (id)mediaPropertiesRegisteredForMediaProfileUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__246802;
  v24 = __Block_byref_object_dispose__246803;
  v25 = MEMORY[0x277CBEBF8];
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __99__HMDNotificationRegistryCoreDataAdapter_mediaPropertiesRegisteredForMediaProfileUniqueIdentifier___block_invoke;
  v15 = &unk_278689D20;
  v8 = context;
  v16 = v8;
  selfCopy = self;
  v9 = identifierCopy;
  v18 = v9;
  v19 = &v20;
  [v8 unsafeSynchronousBlock:&v12];
  v10 = objc_msgSend_copy(v21[5], v12, v13, v14, v15);

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __99__HMDNotificationRegistryCoreDataAdapter_mediaPropertiesRegisteredForMediaProfileUniqueIdentifier___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) _fetchEnabledMKFRegistrationsForMediaProfileUUID:*(a1 + 48) withMediaProperty:0 context:v2];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 na_map:&__block_literal_global_340_246840];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 48);
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch notification registrations for media profile uuid %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  [*(a1 + 32) reset];
}

- (id)destinationsToNotifyForMediaPropertyResponse:(id)response
{
  responseCopy = response;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__246802;
  v24 = __Block_byref_object_dispose__246803;
  v25 = MEMORY[0x277CBEBF8];
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __87__HMDNotificationRegistryCoreDataAdapter_destinationsToNotifyForMediaPropertyResponse___block_invoke;
  v15 = &unk_278689D20;
  v8 = context;
  v16 = v8;
  v9 = responseCopy;
  v17 = v9;
  selfCopy = self;
  v19 = &v20;
  [v8 unsafeSynchronousBlock:&v12];
  v10 = objc_msgSend_copy(v21[5], v12, v13, v14, v15);

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __87__HMDNotificationRegistryCoreDataAdapter_destinationsToNotifyForMediaPropertyResponse___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) request];
  v4 = [v3 property];
  v5 = [v3 mediaProfile];
  v6 = *(a1 + 48);
  v7 = [v5 uniqueIdentifier];
  v8 = [v6 _fetchEnabledMKFRegistrationsForMediaProfileUUID:v7 withMediaProperty:v4 context:v2];

  if (v8)
  {
    v9 = [v8 na_map:&__block_literal_global_337_246843];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 48);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 40);
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch notification registrations for media property response: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  [*(a1 + 32) reset];
}

- (BOOL)removeRegistrationsForMediaProfile:(id)profile
{
  profileCopy = profile;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HMDNotificationRegistryCoreDataAdapter_removeRegistrationsForMediaProfile___block_invoke;
  v11[3] = &unk_278689D20;
  v8 = context;
  v12 = v8;
  selfCopy = self;
  v9 = profileCopy;
  v14 = v9;
  v15 = &v16;
  [v8 unsafeSynchronousBlock:v11];
  LOBYTE(profileCopy) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return profileCopy;
}

void __77__HMDNotificationRegistryCoreDataAdapter_removeRegistrationsForMediaProfile___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) uniqueIdentifier];
  LODWORD(v3) = [v3 _deleteAllMKFRegistrationsForMediaProfileUUID:v4 withMediaProperty:0 hmcContext:*(a1 + 32)];

  if (v3)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  if ([v2 hasChanges])
  {
    v5 = *(a1 + 32);
    v12 = 0;
    v6 = [v5 save:&v12];
    v7 = v12;
    if ((v6 & 1) == 0)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 40);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v14 = v11;
        v15 = 2112;
        v16 = v7;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the disable media property notification registration changes requested, error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  [*(a1 + 32) reset];
}

- (BOOL)disableNotificationForMediaProfile:(id)profile mediaProperties:(id)properties user:(id)user deviceIdsDestination:(id)destination
{
  profileCopy = profile;
  propertiesCopy = properties;
  userCopy = user;
  destinationCopy = destination;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __119__HMDNotificationRegistryCoreDataAdapter_disableNotificationForMediaProfile_mediaProperties_user_deviceIdsDestination___block_invoke;
  v23[3] = &unk_278684B90;
  v17 = context;
  v24 = v17;
  v18 = profileCopy;
  v25 = v18;
  selfCopy = self;
  v19 = userCopy;
  v27 = v19;
  v20 = propertiesCopy;
  v28 = v20;
  v21 = destinationCopy;
  v29 = v21;
  v30 = &v31;
  [v17 unsafeSynchronousBlock:v23];
  LOBYTE(userCopy) = *(v32 + 24);

  _Block_object_dispose(&v31, 8);
  return userCopy;
}

void __119__HMDNotificationRegistryCoreDataAdapter_disableNotificationForMediaProfile_mediaProperties_user_deviceIdsDestination___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) accessory];
  v4 = [v3 uuid];

  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) uuid];
  v7 = [*(a1 + 40) uniqueIdentifier];
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  v10 = [*(a1 + 56) isRestrictedGuest];
  v28 = 0;
  LOBYTE(v25) = v10;
  v11 = [v5 _fetchMKFUserAndRegistrationsWithUserUUID:v6 withMediaProfileUUID:v7 withMediaPropertyIn:v9 withDeviceIdsDestination:v8 withAccessoryUUID:v4 withPrefetchPaths:0 isRestrictedGuest:v25 outHomeMember:&v28 context:v2];
  v12 = v28;

  if (v11 && v12)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __119__HMDNotificationRegistryCoreDataAdapter_disableNotificationForMediaProfile_mediaProperties_user_deviceIdsDestination___block_invoke_333;
    v27[3] = &unk_278684BB8;
    v13 = *(a1 + 80);
    v27[4] = *(a1 + 48);
    v27[5] = v13;
    [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:v27];
    if ([v2 hasChanges])
    {
      v14 = *(a1 + 32);
      v26 = 0;
      v15 = [v14 save:&v26];
      v16 = v26;
      if ((v15 & 1) == 0)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = *(a1 + 48);
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v30 = v20;
          v31 = 2112;
          v32 = v16;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the disable media property notification registration changes requested, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        *(*(*(a1 + 80) + 8) + 24) = 0;
      }
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 48);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch user and registrations", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  [*(a1 + 32) reset];
}

void *__119__HMDNotificationRegistryCoreDataAdapter_disableNotificationForMediaProfile_mediaProperties_user_deviceIdsDestination___block_invoke_333(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _disableRegistration:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)enableNotificationForMediaProfile:(id)profile mediaProperties:(id)properties user:(id)user deviceIdsDestination:(id)destination
{
  profileCopy = profile;
  propertiesCopy = properties;
  userCopy = user;
  destinationCopy = destination;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __118__HMDNotificationRegistryCoreDataAdapter_enableNotificationForMediaProfile_mediaProperties_user_deviceIdsDestination___block_invoke;
  v23[3] = &unk_278684B90;
  v17 = context;
  v24 = v17;
  v18 = profileCopy;
  v25 = v18;
  selfCopy = self;
  v19 = userCopy;
  v27 = v19;
  v20 = propertiesCopy;
  v28 = v20;
  v21 = destinationCopy;
  v29 = v21;
  v30 = &v31;
  [v17 unsafeSynchronousBlock:v23];
  LOBYTE(userCopy) = *(v32 + 24);

  _Block_object_dispose(&v31, 8);
  return userCopy;
}

void __118__HMDNotificationRegistryCoreDataAdapter_enableNotificationForMediaProfile_mediaProperties_user_deviceIdsDestination___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) accessory];
  v4 = [v3 uuid];

  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) uuid];
  v7 = [*(a1 + 40) uniqueIdentifier];
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = [*(a1 + 56) isRestrictedGuest];
  v41 = 0;
  LOBYTE(v29) = v10;
  v11 = [v5 _fetchMKFUserAndRegistrationsWithUserUUID:v6 withMediaProfileUUID:v7 withMediaPropertyIn:v8 withDeviceIdsDestination:v9 withAccessoryUUID:v4 withPrefetchPaths:0 isRestrictedGuest:v29 outHomeMember:&v41 context:v2];
  v12 = v41;

  if (v11 && v12)
  {
    *&v46 = 0;
    *(&v46 + 1) = &v46;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__246802;
    v49 = __Block_byref_object_dispose__246803;
    v50 = 0;
    v13 = *(a1 + 64);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __118__HMDNotificationRegistryCoreDataAdapter_enableNotificationForMediaProfile_mediaProperties_user_deviceIdsDestination___block_invoke_331;
    v32[3] = &unk_278684B68;
    v14 = v11;
    v15 = *(a1 + 80);
    v33 = v14;
    v39 = v15;
    v40 = &v46;
    v30 = *(a1 + 40);
    v16 = v30.i64[0];
    v34 = vextq_s8(v30, v30, 8uLL);
    v17 = v2;
    v35 = v17;
    v36 = *(a1 + 72);
    v37 = v12;
    v38 = *(a1 + 32);
    [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v32];
    if ([v17 hasChanges])
    {
      v18 = *(a1 + 32);
      v31 = 0;
      v19 = [v18 save:&v31];
      v20 = v31;
      if ((v19 & 1) == 0)
      {
        v21 = objc_autoreleasePoolPush();
        v22 = *(a1 + 48);
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543618;
          v43 = v24;
          v44 = 2112;
          v45 = v20;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the enable media property notification registration changes requested, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        *(*(*(a1 + 80) + 8) + 24) = 0;
      }
    }

    [*(a1 + 32) reset];

    _Block_object_dispose(&v46, 8);
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 48);
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      LODWORD(v46) = 138543362;
      *(&v46 + 4) = v28;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch user and registrations", &v46, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    [*(a1 + 32) reset];
  }
}

void __118__HMDNotificationRegistryCoreDataAdapter_enableNotificationForMediaProfile_mediaProperties_user_deviceIdsDestination___block_invoke_331(uint64_t a1, void *a2, _BYTE *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v6 = *(a1 + 32);
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __118__HMDNotificationRegistryCoreDataAdapter_enableNotificationForMediaProfile_mediaProperties_user_deviceIdsDestination___block_invoke_2;
  v25 = &unk_278684B40;
  v7 = v5;
  v8 = *(a1 + 40);
  v26 = v7;
  v27 = v8;
  v9 = *(a1 + 88);
  v28 = &v30;
  v29 = v9;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:&v22];
  if (v31[3])
  {
    goto LABEL_10;
  }

  v10 = *(*(*(a1 + 96) + 8) + 40);
  if (v10)
  {
    goto LABEL_5;
  }

  v11 = [*(a1 + 48) accessory];
  v12 = *(a1 + 40);
  v13 = [v11 uuid];
  v14 = [v12 _fetchMKFHAPAccessoryWithUUID:v13 context:*(a1 + 56)];
  v15 = *(*(a1 + 96) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  if (*(*(*(a1 + 96) + 8) + 40))
  {

    v10 = *(*(*(a1 + 96) + 8) + 40);
LABEL_5:
    if ([*(a1 + 40) _insertNotificationRegistrationForMediaProperty:v7 mediaProfile:*(a1 + 48) deviceIdsDestination:*(a1 + 64) homeMember:*(a1 + 72) accessory:v10 context:{*(a1 + 80), v22, v23, v24, v25}])
    {
      *(*(*(a1 + 88) + 8) + 24) = 1;
    }

    goto LABEL_10;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = *(a1 + 40);
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    v21 = [v11 uuid];
    *buf = 138543618;
    v35 = v20;
    v36 = 2112;
    v37 = v21;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch MKFHAPAccessory for UUID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  *a3 = 1;

LABEL_10:
  _Block_object_dispose(&v30, 8);
}

void __118__HMDNotificationRegistryCoreDataAdapter_enableNotificationForMediaProfile_mediaProperties_user_deviceIdsDestination___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v9 = v6;
  v8 = [v6 mediaProperty];
  LODWORD(v7) = [v7 isEqualToString:v8];

  if (v7)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
    if ([*(a1 + 40) _enableRegistration:v9])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }
}

- (id)_characteristicRegistrationsIncludeEnabled:(BOOL)enabled includeDisabled:(BOOL)disabled
{
  v7 = [MEMORY[0x277CBEB58] set];
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __101__HMDNotificationRegistryCoreDataAdapter__characteristicRegistrationsIncludeEnabled_includeDisabled___block_invoke;
  v18 = &unk_278684B18;
  enabledCopy = enabled;
  disabledCopy = disabled;
  selfCopy = self;
  v20 = context;
  v21 = v7;
  v11 = v7;
  v12 = context;
  [v12 unsafeSynchronousBlock:&v15];
  v13 = objc_msgSend_copy(v11, v15, v16, v17, v18, selfCopy);

  return v13;
}

void __101__HMDNotificationRegistryCoreDataAdapter__characteristicRegistrationsIncludeEnabled_includeDisabled___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1)
  {
    if ((*(a1 + 57) & 1) == 0)
    {
      v2 = *(a1 + 32);
      v3 = 1;
      v4 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!*(a1 + 57))
  {
LABEL_6:
    v2 = *(a1 + 32);
    v3 = 0;
    goto LABEL_7;
  }

  v2 = *(a1 + 32);
  v3 = 1;
LABEL_7:
  v4 = 0;
LABEL_8:
  v5 = [v2 _fetchRequestForCharacteristicRegistrations:v3 enabled:v4 destination:0 propertiesToFetch:0 relationshipKeyPathsForPrefetching:0];
  v6 = [*(a1 + 40) managedObjectContext];
  v19 = 0;
  v7 = [v6 executeFetchRequest:v5 error:&v19];
  v8 = v19;

  if (!v7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v12;
      v22 = 2112;
      v23 = v8;
      v13 = "%{public}@Unable to fetch all characteristic registrations, error: %@";
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 22;
LABEL_15:
      _os_log_impl(&dword_229538000, v14, v15, v13, buf, v16);
    }

LABEL_16:

    objc_autoreleasePoolPop(v9);
    goto LABEL_17;
  }

  if (![v7 count])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v12;
      v13 = "%{public}@Found no characteristic registrations";
      v14 = v11;
      v15 = OS_LOG_TYPE_INFO;
      v16 = 12;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __101__HMDNotificationRegistryCoreDataAdapter__characteristicRegistrationsIncludeEnabled_includeDisabled___block_invoke_330;
  v17[3] = &unk_2786846A8;
  v18 = *(a1 + 48);
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];

LABEL_17:
}

void __101__HMDNotificationRegistryCoreDataAdapter__characteristicRegistrationsIncludeEnabled_includeDisabled___block_invoke_330(uint64_t a1, void *a2)
{
  v19 = a2;
  v2 = [v19 user];
  v3 = [v2 modelID];

  if (!v3)
  {
    v4 = [v19 guest];
    v3 = [v4 modelID];
  }

  v15 = [HMDCharacteristicNotificationRegistration alloc];
  v17 = [v19 characteristic];
  v16 = [v17 service];
  v5 = [v16 accessory];
  v6 = [v5 modelID];
  v7 = [v19 characteristic];
  v8 = [v7 instanceID];
  v9 = [v19 deviceIdsDestination];
  v10 = [v19 lastModified];
  v11 = [v19 enabled];
  v12 = [v11 BOOLValue];
  v13 = [v19 notificationThreshold];
  v14 = [(HMDCharacteristicNotificationRegistration *)v15 initWithAccessoryUUID:v6 characteristicInstanceID:v8 deviceIdsDestination:v9 userUUID:v3 lastModified:v10 enabled:v12 notificationThreshold:v13];

  [*(a1 + 32) addObject:v14];
}

- (id)characteristicIIDsByAccessoryUUIDForEnabledRegistrationsForDestination:(id)destination
{
  destinationCopy = destination;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __113__HMDNotificationRegistryCoreDataAdapter_characteristicIIDsByAccessoryUUIDForEnabledRegistrationsForDestination___block_invoke;
  v15[3] = &unk_2786891E0;
  v15[4] = self;
  v16 = destinationCopy;
  v17 = context;
  v9 = dictionary;
  v18 = v9;
  v10 = context;
  v11 = destinationCopy;
  [v10 unsafeSynchronousBlock:v15];
  v12 = v18;
  v13 = v9;

  return v9;
}

void __113__HMDNotificationRegistryCoreDataAdapter_characteristicIIDsByAccessoryUUIDForEnabledRegistrationsForDestination___block_invoke(uint64_t a1)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v48[0] = @"deviceIdsDestination";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
  v47[0] = @"characteristic.instanceID";
  v47[1] = @"characteristic.service.accessory.modelID";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
  v4 = [*(a1 + 32) _fetchRequestForCharacteristicRegistrations:1 enabled:1 destination:*(a1 + 40) propertiesToFetch:v2 relationshipKeyPathsForPrefetching:v3];
  v5 = [*(a1 + 48) managedObjectContext];
  v39 = 0;
  v6 = [v5 executeFetchRequest:v4 error:&v39];
  v7 = v39;

  if (v6)
  {
    if ([v6 count])
    {
      v31 = v7;
      v32 = v4;
      v33 = v3;
      v34 = v2;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v30 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v36;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v36 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v35 + 1) + 8 * i);
            v14 = [v13 characteristic];
            v15 = [v14 service];
            v16 = [v15 accessory];
            v17 = [v16 modelID];

            v18 = [v13 characteristic];
            v19 = [v18 instanceID];

            v20 = [*(a1 + 56) objectForKeyedSubscript:v17];
            if (!v20)
            {
              v20 = [MEMORY[0x277CBEB58] set];
              [*(a1 + 56) setObject:v20 forKeyedSubscript:v17];
            }

            [v20 addObject:v19];
          }

          v10 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v10);
      }

      v3 = v33;
      v2 = v34;
      v7 = v31;
      v4 = v32;
      v6 = v30;
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v42 = v29;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Found no characteristic registrations", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = *(a1 + 40);
      *buf = 138543874;
      v42 = v24;
      v43 = 2112;
      v44 = v25;
      v45 = 2112;
      v46 = v7;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch enabled characteristic registrations for destination: %@, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v6 = 0;
  }
}

- (id)destinationsWithEnabledCharacteristicRegistrations
{
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v6 = [MEMORY[0x277CBEB58] set];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __92__HMDNotificationRegistryCoreDataAdapter_destinationsWithEnabledCharacteristicRegistrations__block_invoke;
  v11[3] = &unk_27868A010;
  v11[4] = self;
  v12 = context;
  v13 = v6;
  v7 = v6;
  v8 = context;
  [v8 unsafeSynchronousBlock:v11];
  v9 = objc_msgSend_copy(v7);

  return v9;
}

void __92__HMDNotificationRegistryCoreDataAdapter_destinationsWithEnabledCharacteristicRegistrations__block_invoke(id *a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v22[0] = @"deviceIdsDestination";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v3 = [a1[4] _fetchRequestForCharacteristicRegistrations:1 enabled:1 destination:0 propertiesToFetch:v2 relationshipKeyPathsForPrefetching:0];
  v4 = [a1[5] managedObjectContext];
  v17 = 0;
  v5 = [v4 executeFetchRequest:v3 error:&v17];
  v6 = v17;

  if (!v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v10;
      v20 = 2112;
      v21 = v6;
      v11 = "%{public}@Unable to fetch all characteristic registrations, error: %@";
      v12 = v9;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
LABEL_8:
      _os_log_impl(&dword_229538000, v12, v13, v11, buf, v14);
    }

LABEL_9:

    objc_autoreleasePoolPop(v7);
    goto LABEL_10;
  }

  if (![v5 count])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v10;
      v11 = "%{public}@Found no characteristic registrations";
      v12 = v9;
      v13 = OS_LOG_TYPE_INFO;
      v14 = 12;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__HMDNotificationRegistryCoreDataAdapter_destinationsWithEnabledCharacteristicRegistrations__block_invoke_329;
  v15[3] = &unk_2786846A8;
  v16 = a1[6];
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v15];

LABEL_10:
}

void __92__HMDNotificationRegistryCoreDataAdapter_destinationsWithEnabledCharacteristicRegistrations__block_invoke_329(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 deviceIdsDestination];
  [v2 addObject:v3];
}

- (id)removeCharacteristicRegistrationsWithoutAllowedDestinations:(id)destinations
{
  destinationsCopy = destinations;
  v5 = [MEMORY[0x277CBEB58] set];
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __102__HMDNotificationRegistryCoreDataAdapter_removeCharacteristicRegistrationsWithoutAllowedDestinations___block_invoke;
  v15[3] = &unk_278689D98;
  v9 = context;
  v16 = v9;
  selfCopy = self;
  v10 = destinationsCopy;
  v18 = v10;
  v20 = &v21;
  v11 = v5;
  v19 = v11;
  [v9 unsafeSynchronousBlock:v15];
  if (*(v22 + 24) == 1)
  {
    v12 = objc_msgSend_copy(v11);
  }

  else
  {
    v12 = [MEMORY[0x277CBEB98] set];
  }

  v13 = v12;

  _Block_object_dispose(&v21, 8);

  return v13;
}

void __102__HMDNotificationRegistryCoreDataAdapter_removeCharacteristicRegistrationsWithoutAllowedDestinations___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) _fetchRequestForCharacteristicRegistrationsWithoutAllowedDestinations:*(a1 + 48)];
  v4 = [*(a1 + 32) managedObjectContext];
  v34 = 0;
  v5 = [v4 executeFetchRequest:v3 error:&v34];
  v6 = v34;

  if (!v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v10;
      v37 = 2112;
      v38 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch all characteristic registrations without allowed destinations, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  if ([v5 count])
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __102__HMDNotificationRegistryCoreDataAdapter_removeCharacteristicRegistrationsWithoutAllowedDestinations___block_invoke_327;
    v32[3] = &unk_278684AC8;
    v32[4] = *(a1 + 40);
    v33 = *(a1 + 56);
    [v5 na_each:v32];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __102__HMDNotificationRegistryCoreDataAdapter_removeCharacteristicRegistrationsWithoutAllowedDestinations___block_invoke_328;
    v29[3] = &unk_278684AF0;
    v11 = *(a1 + 32);
    v12 = *(a1 + 64);
    v30 = v11;
    v31 = v12;
    [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v29];
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      if ([v2 hasChanges])
      {
        v13 = *(a1 + 32);
        v28 = v6;
        v14 = [v13 save:&v28];
        v15 = v28;

        if ((v14 & 1) == 0)
        {
          v16 = objc_autoreleasePoolPush();
          v17 = *(a1 + 40);
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = HMFGetLogIdentifier();
            *buf = 138543618;
            v36 = v19;
            v37 = 2112;
            v38 = v15;
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to save context after removing characteristic registrations without allowed destinations, error: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v16);
          *(*(*(a1 + 64) + 8) + 24) = 0;
        }

        v6 = v15;
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = *(a1 + 40);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v27;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Did not delete characteristic registrations without allowed destinations", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
    }

    [*(a1 + 32) reset];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 40);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@No notifications without allowed destinations", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    [*(a1 + 32) reset];
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }
}

void __102__HMDNotificationRegistryCoreDataAdapter_removeCharacteristicRegistrationsWithoutAllowedDestinations___block_invoke_327(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 user];
  v4 = [v3 modelID];

  if (!v4)
  {
    v5 = [v2 guest];
    v4 = [v5 modelID];
  }

  v24 = [HMDCharacteristicNotificationRegistration alloc];
  v22 = [v2 characteristic];
  v21 = [v22 service];
  v20 = [v21 accessory];
  v6 = [v20 modelID];
  v7 = [v2 characteristic];
  v8 = [v7 instanceID];
  v9 = [v2 deviceIdsDestination];
  v10 = [v2 lastModified];
  v11 = [v2 enabled];
  v12 = [v11 BOOLValue];
  v13 = [v2 notificationThreshold];
  v14 = v24;
  v25 = v4;
  v15 = [(HMDCharacteristicNotificationRegistration *)v14 initWithAccessoryUUID:v6 characteristicInstanceID:v8 deviceIdsDestination:v9 userUUID:v4 lastModified:v10 enabled:v12 notificationThreshold:v13];

  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 32);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v19;
    v28 = 2112;
    v29 = v15;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Removing registration: %@ that is not in set of allowed destinations", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  [*(a1 + 40) addObject:v15];
}

void *__102__HMDNotificationRegistryCoreDataAdapter_removeCharacteristicRegistrationsWithoutAllowedDestinations___block_invoke_328(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) deleteObject:a2];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

- (void)disableAllCharacteristicRegistrations
{
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HMDNotificationRegistryCoreDataAdapter_disableAllCharacteristicRegistrations__block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = context;
  v6 = context;
  [v6 unsafeSynchronousBlock:v7];
}

void __79__HMDNotificationRegistryCoreDataAdapter_disableAllCharacteristicRegistrations__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _fetchRequestForCharacteristicRegistrations:1 enabled:1 destination:0 propertiesToFetch:0 relationshipKeyPathsForPrefetching:0];
  v3 = [*(a1 + 40) managedObjectContext];
  v24 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v24];
  v5 = v24;

  if (!v4)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v17;
      v27 = 2112;
      v28 = v5;
      v18 = "%{public}@Unable to fetch all characteristic registrations to disable, error: %@";
      v19 = v16;
      v20 = OS_LOG_TYPE_ERROR;
      v21 = 22;
LABEL_14:
      _os_log_impl(&dword_229538000, v19, v20, v18, buf, v21);
    }

LABEL_15:

    objc_autoreleasePoolPop(v14);
    goto LABEL_16;
  }

  if (![v4 count])
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v17;
      v18 = "%{public}@Found no characteristic registrations to disable";
      v19 = v16;
      v20 = OS_LOG_TYPE_INFO;
      v21 = 12;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __79__HMDNotificationRegistryCoreDataAdapter_disableAllCharacteristicRegistrations__block_invoke_326;
  v23[3] = &unk_2786846A8;
  v23[4] = *(a1 + 32);
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v23];
  v6 = [*(a1 + 40) managedObjectContext];
  if ([v6 hasChanges])
  {
    v7 = *(a1 + 40);
    v22 = 0;
    v8 = [v7 save:&v22];
    v9 = v22;
    if ((v8 & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 32);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v26 = v13;
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to save context after disabling all characteristic registrations, error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  [*(a1 + 40) reset];

LABEL_16:
}

- (void)removeAllCharacteristicRegistrations
{
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__HMDNotificationRegistryCoreDataAdapter_removeAllCharacteristicRegistrations__block_invoke;
  v7[3] = &unk_27868A750;
  v8 = context;
  selfCopy = self;
  v6 = context;
  [v6 unsafeSynchronousBlock:v7];
}

void __78__HMDNotificationRegistryCoreDataAdapter_removeAllCharacteristicRegistrations__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  if ([*(a1 + 40) _deleteAllCharacteristicRegistrationsWithContext:*(a1 + 32)] && objc_msgSend(v2, "hasChanges"))
  {
    v3 = *(a1 + 32);
    v10 = 0;
    v4 = [v3 save:&v10];
    v5 = v10;
    if ((v4 & 1) == 0)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 40);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543618;
        v12 = v9;
        v13 = 2112;
        v14 = v5;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to save context after removing all characteristic registrations, error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  [*(a1 + 32) reset];
}

- (id)_filterCharacteristicRegistrations:(id)registrations home:(id)home
{
  homeCopy = home;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__HMDNotificationRegistryCoreDataAdapter__filterCharacteristicRegistrations_home___block_invoke;
  v9[3] = &unk_278684AA0;
  v10 = homeCopy;
  v6 = homeCopy;
  v7 = [registrations na_map:v9];

  return v7;
}

id __82__HMDNotificationRegistryCoreDataAdapter__filterCharacteristicRegistrations_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 user];

  if (v4)
  {
    v5 = [v3 deviceIdsDestination];
  }

  else
  {
    v5 = [v3 guest];

    if (v5)
    {
      v7 = *(a1 + 32);
      v8 = [v3 guest];
      v9 = [v8 modelID];
      v10 = [v7 userWithUUID:v9];

      if ([v10 isAccessCurrentlyAllowedBySchedule])
      {
        v5 = [v3 deviceIdsDestination];
      }

      else
      {

        v5 = 0;
      }
    }
  }

  return v5;
}

- (id)destinationsToNotifyForCharacteristic:(id)characteristic applyChangeThresholding:(BOOL)thresholding
{
  characteristicCopy = characteristic;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__246802;
  v26 = __Block_byref_object_dispose__246803;
  v27 = MEMORY[0x277CBEBF8];
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __104__HMDNotificationRegistryCoreDataAdapter_destinationsToNotifyForCharacteristic_applyChangeThresholding___block_invoke;
  v15[3] = &unk_278684A78;
  v10 = context;
  v16 = v10;
  v11 = characteristicCopy;
  thresholdingCopy = thresholding;
  v17 = v11;
  selfCopy = self;
  v20 = &v22;
  v12 = home;
  v19 = v12;
  [v10 unsafeSynchronousBlock:v15];
  v13 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v13;
}

void __104__HMDNotificationRegistryCoreDataAdapter_destinationsToNotifyForCharacteristic_applyChangeThresholding___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (*(a1 + 72))
  {
    v6 = *(a1 + 48);
    if (v5)
    {
      v7 = [*(a1 + 48) _fetchEnabledMKFRegistrationsForHMDCharacteristic:*(a1 + 40) exceedingChangeThresholdForCurrentValue:v5 context:v2];
    }

    else
    {
      v20 = [MEMORY[0x277CBEA60] arrayWithObject:*(a1 + 40)];
      v7 = [v6 _fetchEnabledMKFRegistrationsForHMDCharacteristics:v20 context:v2];
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __104__HMDNotificationRegistryCoreDataAdapter_destinationsToNotifyForCharacteristic_applyChangeThresholding___block_invoke_2;
    v27[3] = &unk_278684A50;
    v28 = v5;
    [v7 na_each:v27];

    if (!v7)
    {
LABEL_16:
      v21 = objc_autoreleasePoolPush();
      v22 = *(a1 + 48);
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v25 = *(a1 + 40);
        *buf = 138543618;
        v30 = v24;
        v31 = 2112;
        v32 = v25;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch registrations for characteristic %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      goto LABEL_19;
    }
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = [MEMORY[0x277CBEA60] arrayWithObject:*(a1 + 40)];
    v7 = [v8 _fetchEnabledMKFRegistrationsForHMDCharacteristics:v9 context:v2];

    if (!v7)
    {
      goto LABEL_16;
    }
  }

  v10 = [*(a1 + 48) _filterCharacteristicRegistrations:v7 home:*(a1 + 56)];
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if ([v2 hasChanges])
  {
    v13 = *(a1 + 32);
    v26 = 0;
    v14 = [v13 save:&v26];
    v15 = v26;
    if ((v14 & 1) == 0)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 48);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v19;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to save context after updating characteristic registrations lastNotifiedValues, error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

LABEL_19:
  [*(a1 + 32) reset];
}

void __104__HMDNotificationRegistryCoreDataAdapter_destinationsToNotifyForCharacteristic_applyChangeThresholding___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 notificationThreshold];

  if (v3)
  {
    v4 = objc_msgSend_copy(*(a1 + 32));
    [v5 setLastNotifiedValue:v4];
  }
}

- (void)removeRegistrationsForCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  if ([characteristicsCopy count])
  {
    home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
    backingStore = [home backingStore];
    context = [backingStore context];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __80__HMDNotificationRegistryCoreDataAdapter_removeRegistrationsForCharacteristics___block_invoke;
    v9[3] = &unk_27868A010;
    v10 = context;
    v11 = characteristicsCopy;
    selfCopy = self;
    v8 = context;
    [v8 unsafeSynchronousBlock:v9];
  }
}

void __80__HMDNotificationRegistryCoreDataAdapter_removeRegistrationsForCharacteristics___block_invoke(id *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] managedObjectContext];
  v3 = [a1[5] objectAtIndexedSubscript:0];
  v4 = [v3 service];
  v5 = [v4 accessory];
  v6 = [v5 uuid];

  v7 = [a1[5] na_map:&__block_literal_global_317];
  v8 = updatedCharacteristicIIDs(v7);

  if ([a1[6] _deleteAllRegistrationsForCharacteristicIIDs:v8 withAccessoryUUID:v6 hmcContext:a1[4]] && objc_msgSend(v2, "hasChanges"))
  {
    v9 = a1[4];
    v16 = 0;
    v10 = [v9 save:&v16];
    v11 = v16;
    if ((v10 & 1) == 0)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = a1[6];
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543874;
        v18 = v15;
        v19 = 2112;
        v20 = @"YES";
        v21 = 2112;
        v22 = v11;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the remove characteristic notification registration changes requested, deleteResult %@, error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  [a1[4] reset];
}

- (id)_processDisableCharacteristicsRequest:(id)request registrationsForAccessory:(id)accessory context:(id)context
{
  requestCopy = request;
  accessoryCopy = accessory;
  contextCopy = context;
  managedObjectContext = [contextCopy managedObjectContext];
  [managedObjectContext hmd_assertIsExecuting];

  characteristicThresholds = [requestCopy characteristicThresholds];
  array = [MEMORY[0x277CBEB18] array];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __114__HMDNotificationRegistryCoreDataAdapter__processDisableCharacteristicsRequest_registrationsForAccessory_context___block_invoke;
  v21[3] = &unk_278684838;
  v14 = characteristicThresholds;
  v22 = v14;
  selfCopy = self;
  v25 = v27;
  v26 = &v29;
  v15 = array;
  v24 = v15;
  [accessoryCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v21];
  v16 = [HMDNotificationRegistryCoreDataCharacteristicsRequestResult alloc];
  v17 = *(v30 + 24);
  v18 = objc_msgSend_copy(v15);
  v19 = [(HMDNotificationRegistryCoreDataCharacteristicsRequestResult *)v16 initWithCoreDataRequest:requestCopy didSucceed:1 didModify:v17 didModifyThresholdOnly:0 modifiedCharacteristics:v18];

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);

  return v19;
}

void __114__HMDNotificationRegistryCoreDataAdapter__processDisableCharacteristicsRequest_registrationsForAccessory_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __114__HMDNotificationRegistryCoreDataAdapter__processDisableCharacteristicsRequest_registrationsForAccessory_context___block_invoke_2;
  v13[3] = &unk_278684A28;
  v8 = v6;
  v9 = *(a1 + 40);
  v14 = v8;
  v15 = v9;
  v17 = *(a1 + 64);
  v12 = *(a1 + 48);
  v10 = v12;
  v16 = v12;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v13];
  v11 = *(*(*(a1 + 56) + 8) + 24);
  if ([*(a1 + 32) count] <= v11)
  {
    *a4 = 1;
  }
}

void __114__HMDNotificationRegistryCoreDataAdapter__processDisableCharacteristicsRequest_registrationsForAccessory_context___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v6 = [v13 characteristic];
  v7 = [v6 instanceID];
  v8 = [*(a1 + 32) characteristic];
  v9 = [v8 instanceID];
  v10 = HAPEqualInstanceIDs();

  if (v10)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    *a4 = 1;
    if ([*(a1 + 40) _disableRegistration:*(a1 + 32)])
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      v11 = *(a1 + 48);
      v12 = [v13 characteristic];
      [v11 addObject:v12];
    }
  }
}

- (id)_processEnableCharacteristicsRequest:(id)request homeMember:(id)member registrationsForAccessory:(id)accessory context:(id)context
{
  requestCopy = request;
  memberCopy = member;
  accessoryCopy = accessory;
  contextCopy = context;
  managedObjectContext = [contextCopy managedObjectContext];
  [managedObjectContext hmd_assertIsExecuting];

  characteristicThresholds = [requestCopy characteristicThresholds];
  array = [MEMORY[0x277CBEB18] array];
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 1;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__246802;
  v42[4] = __Block_byref_object_dispose__246803;
  v43 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __124__HMDNotificationRegistryCoreDataAdapter__processEnableCharacteristicsRequest_homeMember_registrationsForAccessory_context___block_invoke;
  v30[3] = &unk_278684A00;
  v28 = accessoryCopy;
  v31 = v28;
  selfCopy = self;
  v38 = &v52;
  v16 = array;
  v33 = v16;
  v39 = &v48;
  v40 = v42;
  v17 = characteristicThresholds;
  v34 = v17;
  v18 = contextCopy;
  v35 = v18;
  v41 = &v44;
  v19 = requestCopy;
  v36 = v19;
  v20 = memberCopy;
  v37 = v20;
  [v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v30];
  v21 = [HMDNotificationRegistryCoreDataCharacteristicsRequestResult alloc];
  v22 = *(v45 + 24);
  v23 = *(v53 + 24);
  v24 = *(v49 + 24);
  v25 = objc_msgSend_copy(v16);
  v26 = [(HMDNotificationRegistryCoreDataCharacteristicsRequestResult *)v21 initWithCoreDataRequest:v19 didSucceed:v22 didModify:v23 didModifyThresholdOnly:v24 modifiedCharacteristics:v25];

  _Block_object_dispose(v42, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);

  return v26;
}

void __124__HMDNotificationRegistryCoreDataAdapter__processEnableCharacteristicsRequest_homeMember_registrationsForAccessory_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v7 = *(a1 + 32);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __124__HMDNotificationRegistryCoreDataAdapter__processEnableCharacteristicsRequest_homeMember_registrationsForAccessory_context___block_invoke_2;
  v38[3] = &unk_2786849B8;
  v8 = v6;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v39 = v8;
  v40 = v9;
  v11 = *(a1 + 88);
  v42 = &v45;
  v43 = v11;
  v12 = v10;
  v13 = *(a1 + 96);
  v41 = v12;
  v44 = v13;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v38];
  if ((v46[3] & 1) == 0)
  {
    if (*(*(*(a1 + 104) + 8) + 40) || (v14 = *(a1 + 40), [*(a1 + 56) na_map:&__block_literal_global_315_246889], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 64), "managedObjectContext"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "_fetchMKFCharacteristicsFromHMDCharacteristics:context:", v15, v16), v17 = objc_claimAutoreleasedReturnValue(), v18 = *(*(a1 + 104) + 8), v19 = *(v18 + 40), *(v18 + 40) = v17, v19, v16, v15, *(*(*(a1 + 104) + 8) + 40)))
    {
      v20 = *(a1 + 40);
      v21 = [v8 characteristic];
      v22 = [v8 threshold];
      v23 = [*(a1 + 72) request];
      v24 = [v23 deviceIdsDestination];
      v25 = *(a1 + 80);
      v26 = [*(*(*(a1 + 104) + 8) + 40) objectAtIndexedSubscript:a3];
      v27 = [v20 _insertNotificationRegistrationForCharacteristic:v21 notificationThreshold:v22 deviceIdsDestination:v24 homeMember:v25 mkfCharacteristic:v26 context:*(a1 + 64)];

      if (v27)
      {
        *(*(*(a1 + 88) + 8) + 24) = 1;
        v28 = *(a1 + 48);
        v29 = [v8 characteristic];
        [v28 addObject:v29];

        goto LABEL_12;
      }

      v30 = objc_autoreleasePoolPush();
      v31 = *(a1 + 40);
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        v34 = [v8 characteristic];
        *buf = 138543618;
        v50 = v33;
        v51 = 2112;
        v52 = v34;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unable to insert notification registration for characteristic: %@", buf, 0x16u);
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = *(a1 + 40);
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        v36 = *(a1 + 56);
        *buf = 138543618;
        v50 = v35;
        v51 = 2112;
        v52 = v36;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unable to find MKFCharacteristics for characteristics: %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v30);
    *(*(*(a1 + 112) + 8) + 24) = 0;
    *a4 = 1;
  }

LABEL_12:

  _Block_object_dispose(&v45, 8);
}

void __124__HMDNotificationRegistryCoreDataAdapter__processEnableCharacteristicsRequest_homeMember_registrationsForAccessory_context___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  v6 = [v17 characteristic];
  v7 = [v6 instanceID];
  v8 = [*(a1 + 32) characteristic];
  v9 = [v8 instanceID];
  v10 = HAPEqualInstanceIDs();

  if (v10)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a4 = 1;
    if ([*(a1 + 40) _enableRegistration:v17])
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      v11 = *(a1 + 48);
      v12 = [*(a1 + 32) characteristic];
      [v11 addObject:v12];
    }

    v13 = *(a1 + 40);
    v14 = [*(a1 + 32) threshold];
    LODWORD(v13) = [v13 _updateThresholdRegistration:v17 threshold:v14];

    if (v13 && (*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
      v15 = *(a1 + 48);
      v16 = [*(a1 + 32) characteristic];
      [v15 addObject:v16];
    }
  }
}

- (id)_processGroupedCharacteristicsRequests:(id)requests user:(id)user destination:(id)destination context:(id)context
{
  v67[3] = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  userCopy = user;
  destinationCopy = destination;
  contextCopy = context;
  managedObjectContext = [contextCopy managedObjectContext];
  [managedObjectContext hmd_assertIsExecuting];

  v15 = [MEMORY[0x277CBEB58] set];
  v16 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke;
  v61[3] = &unk_2786848F8;
  v18 = v15;
  v62 = v18;
  v19 = v16;
  v63 = v19;
  v46 = dictionary;
  v64 = v46;
  v49 = requestsCopy;
  [requestsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v61];
  v47 = contextCopy;
  managedObjectContext2 = [contextCopy managedObjectContext];
  v67[0] = @"characteristic.service.accessory.modelID";
  v67[1] = @"characteristic.instanceID";
  v67[2] = @"lastModified";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:3];
  uuid = [userCopy uuid];
  allObjects = [v19 allObjects];
  v45 = v18;
  allObjects2 = [v18 allObjects];
  v60 = 0;
  v43 = v21;
  v44 = managedObjectContext2;
  v48 = destinationCopy;
  v25 = -[HMDNotificationRegistryCoreDataAdapter _fetchMKFUserAndRegistrationsWithUserUUID:withCharacteristicIIDs:withAccessoryUUIDs:withDeviceIdsDestination:withPrefetchPaths:isRestrictedGuest:outHomeMember:context:](self, "_fetchMKFUserAndRegistrationsWithUserUUID:withCharacteristicIIDs:withAccessoryUUIDs:withDeviceIdsDestination:withPrefetchPaths:isRestrictedGuest:outHomeMember:context:", uuid, allObjects, allObjects2, destinationCopy, v21, [userCopy isRestrictedGuest], &v60, managedObjectContext2);
  v26 = v60;

  if (v25 && v26)
  {
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_2_311;
    v58[3] = &unk_278684968;
    v27 = v46;
    v59 = v46;
    [v25 na_filter:v58];
    v28 = v42 = userCopy;
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_4;
    v56[3] = &unk_2786846A8;
    v30 = dictionary2;
    v57 = v30;
    [v28 hmf_enumerateWithAutoreleasePoolUsingBlock:v56];
    v31 = [MEMORY[0x277CBEB58] set];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_5;
    v50[3] = &unk_278684990;
    v51 = v30;
    selfCopy = self;
    v53 = v26;
    v32 = v47;
    v54 = v47;
    v55 = v31;
    v33 = v31;
    v34 = v30;
    v35 = v49;
    [v49 hmf_enumerateWithAutoreleasePoolUsingBlock:v50];
    v36 = objc_msgSend_copy(v33);

    userCopy = v42;
  }

  else
  {
    v37 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543362;
      v66 = v40;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch home member and registrations", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v37);
    v35 = v49;
    v36 = [v49 na_map:&__block_literal_global_310_246896];
    v27 = v46;
    v32 = v47;
  }

  return v36;
}

void __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke(id *a1, void *a2)
{
  v3 = [a2 characteristicThresholds];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_2;
  v4[3] = &unk_2786848D0;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:v4];
}

uint64_t __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_2_311(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 characteristic];
  v6 = [v5 service];
  v7 = [v6 accessory];
  v8 = [v7 modelID];
  v9 = [v4 objectForKeyedSubscript:v8];

  v10 = [v9 allObjects];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_3;
  v14[3] = &unk_278684940;
  v15 = v3;
  v11 = v3;
  v12 = [v10 na_any:v14];

  return v12;
}

void __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_4(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 characteristic];
  v4 = [v3 service];
  v5 = [v4 accessory];
  v6 = [v5 modelID];

  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
  }

  [v7 addObject:v8];
}

void __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_5(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = *(a1 + 32);
  v4 = [v11 request];
  v5 = [v4 accessoryUUID];
  v6 = [v3 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = [v11 request];
  v8 = [v7 enable];

  v9 = *(a1 + 40);
  if (v8)
  {
    [v9 _processEnableCharacteristicsRequest:v11 homeMember:*(a1 + 48) registrationsForAccessory:v6 context:*(a1 + 56)];
  }

  else
  {
    [v9 _processDisableCharacteristicsRequest:v11 registrationsForAccessory:v6 context:*(a1 + 56)];
  }
  v10 = ;
  [*(a1 + 64) addObject:v10];
}

uint64_t __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 characteristic];
  v5 = [v4 instanceID];
  v6 = HAPEqualInstanceIDs();

  return v6;
}

HMDNotificationRegistryCoreDataCharacteristicsRequestResult *__106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_307(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HMDNotificationRegistryCoreDataCharacteristicsRequestResult alloc];
  v4 = [(HMDNotificationRegistryCoreDataCharacteristicsRequestResult *)v3 initWithCoreDataRequest:v2 didSucceed:0 didModify:0 didModifyThresholdOnly:0 modifiedCharacteristics:MEMORY[0x277CBEBF8]];

  return v4;
}

void __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_2(void *a1, void *a2)
{
  v17 = a2;
  v3 = [v17 characteristic];
  v4 = [v3 accessory];

  v5 = a1[4];
  v6 = [v4 uuid];
  [v5 addObject:v6];

  v7 = a1[5];
  v8 = [v17 characteristic];
  v9 = [v8 instanceID];
  [v7 addObject:v9];

  v10 = a1[6];
  v11 = [v4 uuid];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB58] set];
    v13 = a1[6];
    v14 = [v4 uuid];
    [v13 setObject:v12 forKeyedSubscript:v14];
  }

  v15 = [v17 characteristic];
  v16 = [v15 instanceID];
  [v12 addObject:v16];
}

- (id)processCharacteristicsRequests:(id)requests
{
  requestsCopy = requests;
  if ([requestsCopy count])
  {
    v5 = [MEMORY[0x277CBEB58] set];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __73__HMDNotificationRegistryCoreDataAdapter_processCharacteristicsRequests___block_invoke;
    v25[3] = &unk_278684860;
    v7 = dictionary;
    v26 = v7;
    [requestsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v25];
    home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
    backingStore = [home backingStore];
    context = [backingStore context];

    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __73__HMDNotificationRegistryCoreDataAdapter_processCharacteristicsRequests___block_invoke_2;
    v19 = &unk_278689550;
    v20 = v7;
    selfCopy = self;
    v22 = context;
    v23 = v5;
    v24 = requestsCopy;
    v11 = v5;
    v12 = context;
    v13 = v7;
    [v12 unsafeSynchronousBlock:&v16];
    v14 = objc_msgSend_copy(v11, v16, v17, v18, v19);
  }

  else
  {
    v14 = [MEMORY[0x277CBEB98] set];
  }

  return v14;
}

void __73__HMDNotificationRegistryCoreDataAdapter_processCharacteristicsRequests___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 request];
  v4 = [v3 deviceIdsDestination];

  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB58] set];
  }

  [v5 addObject:v6];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
}

void __73__HMDNotificationRegistryCoreDataAdapter_processCharacteristicsRequests___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__HMDNotificationRegistryCoreDataAdapter_processCharacteristicsRequests___block_invoke_3;
  v15[3] = &unk_278684888;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v15[4] = *(a1 + 40);
  v16 = v3;
  v17 = *(a1 + 56);
  [v2 enumerateKeysAndObjectsUsingBlock:v15];
  if ([*(a1 + 56) na_any:&__block_literal_global_301])
  {
    v4 = *(a1 + 48);
    v14 = 0;
    v5 = [v4 save:&v14];
    v6 = v14;
    if ((v5 & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 40);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543618;
        v19 = v10;
        v20 = 2112;
        v21 = v6;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the characteristic notification registration changes requested, error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      [*(a1 + 56) removeAllObjects];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __73__HMDNotificationRegistryCoreDataAdapter_processCharacteristicsRequests___block_invoke_302;
      v12[3] = &unk_278684860;
      v11 = *(a1 + 64);
      v13 = *(a1 + 56);
      [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:v12];
    }
  }

  [*(a1 + 48) reset];
}

void __73__HMDNotificationRegistryCoreDataAdapter_processCharacteristicsRequests___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (([v5 hmf_isEmpty] & 1) == 0)
  {
    v6 = [v5 anyObject];
    v7 = [v6 request];
    v8 = [v7 user];

    v9 = [*(a1 + 32) _processGroupedCharacteristicsRequests:v5 user:v8 destination:v12 context:*(a1 + 40)];
    v10 = *(a1 + 48);
    v11 = [v9 allObjects];
    [v10 addObjectsFromArray:v11];
  }
}

void __73__HMDNotificationRegistryCoreDataAdapter_processCharacteristicsRequests___block_invoke_302(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [HMDNotificationRegistryCoreDataCharacteristicsRequestResult alloc];
  v5 = [(HMDNotificationRegistryCoreDataCharacteristicsRequestResult *)v4 initWithCoreDataRequest:v3 didSucceed:0 didModify:0 didModifyThresholdOnly:0 modifiedCharacteristics:MEMORY[0x277CBEBF8]];

  [v2 addObject:v5];
}

uint64_t __73__HMDNotificationRegistryCoreDataAdapter_processCharacteristicsRequests___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 didSucceed])
  {
    if ([v2 didModify])
    {
      v3 = 1;
    }

    else
    {
      v3 = [v2 didModifyThresholdOnly];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)disableNotificationForCharacteristics:(id)characteristics user:(id)user deviceIdsDestination:(id)destination
{
  characteristicsCopy = characteristics;
  userCopy = user;
  destinationCopy = destination;
  if ([characteristicsCopy count])
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(characteristicsCopy, "count")}];
    home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
    backingStore = [home backingStore];
    context = [backingStore context];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __106__HMDNotificationRegistryCoreDataAdapter_disableNotificationForCharacteristics_user_deviceIdsDestination___block_invoke;
    v19[3] = &unk_278684B90;
    v15 = context;
    v20 = v15;
    v21 = characteristicsCopy;
    selfCopy = self;
    v23 = userCopy;
    v24 = destinationCopy;
    v26 = &v27;
    v16 = v11;
    v25 = v16;
    [v15 unsafeSynchronousBlock:v19];
    if (*(v28 + 24) == 1)
    {
      v17 = objc_msgSend_copy(v16);
    }

    else
    {
      v17 = MEMORY[0x277CBEBF8];
    }

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  return v17;
}

void __106__HMDNotificationRegistryCoreDataAdapter_disableNotificationForCharacteristics_user_deviceIdsDestination___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) objectAtIndexedSubscript:0];
  v4 = [v3 service];
  v5 = [v4 accessory];
  v6 = [v5 uuid];

  v7 = [*(a1 + 40) na_map:&__block_literal_global_291_246907];
  v8 = *(a1 + 48);
  v9 = [*(a1 + 56) uuid];
  v10 = *(a1 + 64);
  v11 = [MEMORY[0x277CBEA60] arrayWithObject:@"characteristic.instanceID"];
  v12 = [*(a1 + 56) isRestrictedGuest];
  v39 = 0;
  v13 = [v8 _fetchMKFUserAndRegistrationsWithUserUUID:v9 withCharacteristicIIDs:v7 withAccessoryUUID:v6 withDeviceIdsDestination:v10 withPrefetchPaths:v11 isRestrictedGuest:v12 outHomeMember:&v39 context:v2];
  v14 = v39;

  if (v13 && v14)
  {
    if ([v13 count])
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v45 = 0x2020000000;
      v46 = 0;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __106__HMDNotificationRegistryCoreDataAdapter_disableNotificationForCharacteristics_user_deviceIdsDestination___block_invoke_292;
      v33[3] = &unk_278684838;
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      v34 = v15;
      v35 = v16;
      v18 = *(a1 + 72);
      v17 = *(a1 + 80);
      p_buf = &buf;
      v38 = v17;
      v36 = v18;
      [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v33];
      if ([v2 hasChanges] && ((v19 = *(a1 + 32), v32 = 0, v20 = objc_msgSend(v19, "save:", &v32), (v21 = v32) == 0) ? (v22 = v20) : (v22 = 0), (v22 & 1) == 0))
      {
        v27 = v21;
        context = objc_autoreleasePoolPush();
        v28 = *(a1 + 48);
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          *v40 = 138543618;
          v41 = v30;
          v42 = 2112;
          v43 = v27;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the disable characteristic notification registration changes requested, error: %@", v40, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        *(*(*(a1 + 80) + 8) + 24) = 0;
      }

      else
      {
        [*(a1 + 32) reset];
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      [*(a1 + 32) reset];
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = *(a1 + 48);
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v26;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch home member and registrations", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    [*(a1 + 32) reset];
  }
}

void __106__HMDNotificationRegistryCoreDataAdapter_disableNotificationForCharacteristics_user_deviceIdsDestination___block_invoke_292(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __106__HMDNotificationRegistryCoreDataAdapter_disableNotificationForCharacteristics_user_deviceIdsDestination___block_invoke_2_293;
  v13[3] = &unk_278684810;
  v8 = v6;
  v9 = *(a1 + 40);
  v14 = v8;
  v15 = v9;
  v17 = *(a1 + 64);
  v12 = *(a1 + 48);
  v10 = v12;
  v16 = v12;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v13];
  v11 = *(*(*(a1 + 56) + 8) + 24);
  if ([*(a1 + 32) count] <= v11)
  {
    *a4 = 1;
  }
}

void __106__HMDNotificationRegistryCoreDataAdapter_disableNotificationForCharacteristics_user_deviceIdsDestination___block_invoke_2_293(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 instanceID];
  v7 = [*(a1 + 32) characteristic];
  v8 = [v7 instanceID];
  v9 = HAPEqualInstanceIDs();

  if (v9)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    *a4 = 1;
    if ([*(a1 + 40) _disableRegistration:*(a1 + 32)])
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      [*(a1 + 48) addObject:v10];
    }
  }
}

- (BOOL)enableNotificationsForCharacteristics:(id)characteristics user:(id)user deviceIdsDestination:(id)destination
{
  characteristicsCopy = characteristics;
  userCopy = user;
  destinationCopy = destination;
  if ([characteristicsCopy count])
  {
    home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
    v12 = home;
    if (home)
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x2020000000;
      v27 = 1;
      backingStore = [home backingStore];
      context = [backingStore context];

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __106__HMDNotificationRegistryCoreDataAdapter_enableNotificationsForCharacteristics_user_deviceIdsDestination___block_invoke;
      v18[3] = &unk_2786847E8;
      v15 = context;
      v19 = v15;
      v20 = characteristicsCopy;
      selfCopy = self;
      v22 = userCopy;
      v23 = destinationCopy;
      v24 = v26;
      v25 = &v28;
      [v15 unsafeSynchronousBlock:v18];
      v16 = *(v29 + 24);

      _Block_object_dispose(v26, 8);
      _Block_object_dispose(&v28, 8);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void __106__HMDNotificationRegistryCoreDataAdapter_enableNotificationsForCharacteristics_user_deviceIdsDestination___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) objectAtIndexedSubscript:0];
  v4 = [v3 service];
  v5 = [v4 accessory];
  v33 = [v5 uuid];

  v6 = [*(a1 + 40) na_map:&__block_literal_global_286_246912];
  v7 = *(a1 + 48);
  v8 = [*(a1 + 56) uuid];
  v9 = *(a1 + 64);
  v10 = [*(a1 + 56) isRestrictedGuest];
  v45 = 0;
  v11 = [v7 _fetchMKFUserAndRegistrationsWithUserUUID:v8 withCharacteristicIIDs:v6 withAccessoryUUID:v33 withDeviceIdsDestination:v9 withPrefetchPaths:0 isRestrictedGuest:v10 outHomeMember:&v45 context:v2];
  v12 = v45;

  if (v11 && v12)
  {
    *&v50 = 0;
    *(&v50 + 1) = &v50;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__246802;
    v53 = __Block_byref_object_dispose__246803;
    v54 = 0;
    v13 = *(a1 + 40);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __106__HMDNotificationRegistryCoreDataAdapter_enableNotificationsForCharacteristics_user_deviceIdsDestination___block_invoke_287;
    v35[3] = &unk_2786847C0;
    v14 = v11;
    v15 = *(a1 + 80);
    v36 = v14;
    v42 = v15;
    v43 = &v50;
    v32 = *(a1 + 40);
    v16 = v32.i64[0];
    v37 = vextq_s8(v32, v32, 8uLL);
    v17 = v2;
    v19 = *(a1 + 64);
    v18 = *(a1 + 72);
    v38 = v17;
    v44 = v18;
    v39 = v19;
    v40 = v12;
    v41 = *(a1 + 32);
    [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v35];
    if (*(*(*(a1 + 72) + 8) + 24) == 1 && [v17 hasChanges])
    {
      v20 = *(a1 + 32);
      v34 = 0;
      v21 = [v20 save:&v34];
      v22 = v34;
      v23 = v22;
      *(*(*(a1 + 72) + 8) + 24) = v21;
      if (*(*(*(a1 + 72) + 8) + 24) != 1 || v22)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = *(a1 + 48);
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v47 = v27;
          v48 = 2112;
          v49 = v23;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the enable characteristic notification registration changes requested, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        *(*(*(a1 + 80) + 8) + 24) = 0;
      }
    }

    else
    {
      *(*(*(a1 + 80) + 8) + 24) = 0;
    }

    [*(a1 + 32) reset];

    _Block_object_dispose(&v50, 8);
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 48);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      LODWORD(v50) = 138543362;
      *(&v50 + 4) = v31;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch home member and registrations", &v50, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    *(*(*(a1 + 72) + 8) + 24) = 0;
    [*(a1 + 32) reset];
  }
}

void __106__HMDNotificationRegistryCoreDataAdapter_enableNotificationsForCharacteristics_user_deviceIdsDestination___block_invoke_287(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v8 = *(a1 + 32);
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __106__HMDNotificationRegistryCoreDataAdapter_enableNotificationsForCharacteristics_user_deviceIdsDestination___block_invoke_2_288;
  v28 = &unk_278684798;
  v9 = v7;
  v10 = *(a1 + 40);
  v29 = v9;
  v30 = v10;
  v11 = *(a1 + 88);
  v31 = &v33;
  v32 = v11;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:&v25];
  if ((v34[3] & 1) == 0)
  {
    v12 = *(*(*(a1 + 96) + 8) + 40);
    if (v12 || ([*(a1 + 40) _fetchMKFCharacteristicsFromHMDCharacteristics:*(a1 + 48) context:{*(a1 + 56), v25, v26, v27, v28}], v13 = objc_claimAutoreleasedReturnValue(), v14 = *(*(a1 + 96) + 8), v15 = *(v14 + 40), *(v14 + 40) = v13, v15, (v12 = *(*(*(a1 + 96) + 8) + 40)) != 0))
    {
      v16 = *(a1 + 40);
      v17 = *(a1 + 64);
      v18 = *(a1 + 72);
      v19 = [v12 objectAtIndexedSubscript:{a3, v25, v26, v27, v28}];
      LOBYTE(v17) = [v16 _insertNotificationRegistrationForCharacteristic:v9 notificationThreshold:0 deviceIdsDestination:v17 homeMember:v18 mkfCharacteristic:v19 context:*(a1 + 80)];

      if (v17)
      {
        *(*(*(a1 + 88) + 8) + 24) = 1;
        goto LABEL_10;
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 40);
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v24 = *(a1 + 48);
        *buf = 138543618;
        v38 = v23;
        v39 = 2112;
        v40 = v24;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to find MKFCharacteristics for characteristics: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
    }

    *(*(*(a1 + 104) + 8) + 24) = 0;
    *a4 = 1;
  }

LABEL_10:

  _Block_object_dispose(&v33, 8);
}

void __106__HMDNotificationRegistryCoreDataAdapter_enableNotificationsForCharacteristics_user_deviceIdsDestination___block_invoke_2_288(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 characteristic];
  v7 = [v6 instanceID];
  v8 = [*(a1 + 32) instanceID];
  v9 = HAPEqualInstanceIDs();

  if (v9)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
    if ([*(a1 + 40) _enableRegistration:v10])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }
}

- (id)_fetchRequestForAllActionSetRegistrations
{
  v3 = objc_alloc(MEMORY[0x277CBE428]);
  v4 = +[_MKFNotificationRegistrationActionSet entity];
  name = [v4 name];
  v6 = [v3 initWithEntityName:name];

  v7 = MEMORY[0x277CCAC30];
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  uuid = [home uuid];
  v10 = [v7 predicateWithFormat:@"%K == %@", @"actionSet.home.modelID", uuid];
  [v6 setPredicate:v10];

  return v6;
}

- (id)_fetchRequestForAllMediaProfileRegistrations
{
  v3 = objc_alloc(MEMORY[0x277CBE428]);
  v4 = +[_MKFNotificationRegistrationMediaProperty entity];
  name = [v4 name];
  v6 = [v3 initWithEntityName:name];

  v7 = MEMORY[0x277CCAC30];
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  uuid = [home uuid];
  v10 = [v7 predicateWithFormat:@"%K == %@", @"accessory.home.modelID", uuid];
  [v6 setPredicate:v10];

  return v6;
}

- (id)_fetchRequestForCharacteristicRegistrations:(BOOL)registrations enabled:(BOOL)enabled destination:(id)destination propertiesToFetch:(id)fetch relationshipKeyPathsForPrefetching:(id)prefetching
{
  enabledCopy = enabled;
  registrationsCopy = registrations;
  v43[2] = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  fetchCopy = fetch;
  prefetchingCopy = prefetching;
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v14 = +[_MKFNotificationRegistrationCharacteristic fetchRequest];
  v15 = MEMORY[0x277CCAC30];
  uuid = [home uuid];
  v17 = [v15 predicateWithFormat:@"%K == %@", @"user.home.modelID", uuid];

  v18 = MEMORY[0x277CCAC30];
  v37 = home;
  uuid2 = [home uuid];
  v20 = [v18 predicateWithFormat:@"%K == %@", @"guest.home.modelID", uuid2];

  v21 = MEMORY[0x277CCA920];
  v40 = v17;
  v43[0] = v17;
  v43[1] = v20;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  v23 = [v21 orPredicateWithSubpredicates:v22];

  if (registrationsCopy)
  {
    v24 = MEMORY[0x277CCAC30];
    v25 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
    v26 = [v24 predicateWithFormat:@"%K == %@", @"enabled", v25];

    v27 = MEMORY[0x277CCA920];
    v42[0] = v23;
    v42[1] = v26;
    [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
    v29 = v28 = destinationCopy;
    v30 = [v27 andPredicateWithSubpredicates:v29];

    destinationCopy = v28;
    v23 = v30;
  }

  if (destinationCopy)
  {
    v31 = destinationCopy;
    destinationCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"deviceIdsDestination", destinationCopy];
    v33 = MEMORY[0x277CCA920];
    v41[0] = v23;
    v41[1] = destinationCopy;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
    v35 = [v33 andPredicateWithSubpredicates:v34];

    v23 = v35;
  }

  else
  {
    v31 = 0;
  }

  [v14 setPredicate:v23];
  if (fetchCopy)
  {
    [v14 setPropertiesToFetch:fetchCopy];
  }

  if (prefetchingCopy)
  {
    [v14 setRelationshipKeyPathsForPrefetching:prefetchingCopy];
  }

  [v14 setFetchBatchSize:100];

  return v14;
}

- (id)_fetchRequestForActionSetRegistrationsWithoutAllowedDestinations:(id)destinations
{
  v20[2] = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v6 = objc_alloc(MEMORY[0x277CBE428]);
  v7 = +[_MKFNotificationRegistrationActionSet entity];
  name = [v7 name];
  v9 = [v6 initWithEntityName:name];

  v10 = MEMORY[0x277CCAC30];
  uuid = [home uuid];
  destinationsCopy = [v10 predicateWithFormat:@"(%K == %@) AND NOT (%K IN %@)", @"user.home.modelID", uuid, @"deviceIdsDestination", destinationsCopy];

  [v9 setPredicate:destinationsCopy];
  v13 = MEMORY[0x277CCAC30];
  uuid2 = [home uuid];
  destinationsCopy2 = [v13 predicateWithFormat:@"(%K == %@) AND NOT (%K IN %@)", @"guest.home.modelID", uuid2, @"deviceIdsDestination", destinationsCopy];

  v16 = MEMORY[0x277CCA920];
  v20[0] = destinationsCopy;
  v20[1] = destinationsCopy2;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v18 = [v16 orPredicateWithSubpredicates:v17];
  [v9 setPredicate:v18];

  return v9;
}

- (id)_fetchRequestForMediaProfileRegistrationsWithoutAllowedDestinations:(id)destinations
{
  v20[2] = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v6 = objc_alloc(MEMORY[0x277CBE428]);
  v7 = +[_MKFNotificationRegistrationMediaProperty entity];
  name = [v7 name];
  v9 = [v6 initWithEntityName:name];

  v10 = MEMORY[0x277CCAC30];
  uuid = [home uuid];
  destinationsCopy = [v10 predicateWithFormat:@"(%K == %@) AND NOT (%K IN %@)", @"user.home.modelID", uuid, @"deviceIdsDestination", destinationsCopy];

  [v9 setPredicate:destinationsCopy];
  v13 = MEMORY[0x277CCAC30];
  uuid2 = [home uuid];
  destinationsCopy2 = [v13 predicateWithFormat:@"(%K == %@) AND NOT (%K IN %@)", @"guest.home.modelID", uuid2, @"deviceIdsDestination", destinationsCopy];

  v16 = MEMORY[0x277CCA920];
  v20[0] = destinationsCopy;
  v20[1] = destinationsCopy2;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v18 = [v16 orPredicateWithSubpredicates:v17];
  [v9 setPredicate:v18];

  return v9;
}

- (id)_fetchRequestForCharacteristicRegistrationsWithoutAllowedDestinations:(id)destinations
{
  v20[2] = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v6 = objc_alloc(MEMORY[0x277CBE428]);
  v7 = +[_MKFNotificationRegistrationCharacteristic entity];
  name = [v7 name];
  v9 = [v6 initWithEntityName:name];

  v10 = MEMORY[0x277CCAC30];
  uuid = [home uuid];
  destinationsCopy = [v10 predicateWithFormat:@"(%K == %@) AND NOT (%K IN %@)", @"user.home.modelID", uuid, @"deviceIdsDestination", destinationsCopy];

  [v9 setPredicate:destinationsCopy];
  v13 = MEMORY[0x277CCAC30];
  uuid2 = [home uuid];
  destinationsCopy2 = [v13 predicateWithFormat:@"(%K == %@) AND NOT (%K IN %@)", @"guest.home.modelID", uuid2, @"deviceIdsDestination", destinationsCopy];

  v16 = MEMORY[0x277CCA920];
  v20[0] = destinationsCopy;
  v20[1] = destinationsCopy2;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v18 = [v16 orPredicateWithSubpredicates:v17];
  [v9 setPredicate:v18];

  return v9;
}

- (id)_fetchMKFUserAndRegistrationsWithUserUUID:(id)d actionSetUUID:(id)iD deviceIdsDestination:(id)destination prefetchPaths:(id)paths isRestrictedGuest:(BOOL)guest outHomeMember:(id *)member context:(id)context
{
  guestCopy = guest;
  dCopy = d;
  contextCopy = context;
  pathsCopy = paths;
  destinationCopy = destination;
  iDCopy = iD;
  [contextCopy hmd_assertIsExecuting];
  v20 = [MEMORY[0x277CBEB18] arrayWithArray:pathsCopy];

  [v20 addObject:@"user"];
  v21 = [(HMDNotificationRegistryCoreDataAdapter *)self _fetchMKFRegistrationsWithUserUUID:dCopy actionSetUUID:iDCopy deviceIdsDestination:destinationCopy prefetchPaths:v20 isRestrictedGuest:guestCopy context:contextCopy];

  if (v21)
  {
    *member = [(HMDNotificationRegistryCoreDataAdapter *)self homeMemberForRegistrations:v21 userUUID:dCopy isRestrictedGuest:guestCopy context:contextCopy];
    v22 = v21;
  }

  return v21;
}

- (id)_fetchMKFRegistrationsWithUserUUID:(id)d actionSetUUID:(id)iD deviceIdsDestination:(id)destination prefetchPaths:(id)paths isRestrictedGuest:(BOOL)guest context:(id)context
{
  guestCopy = guest;
  v46 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  destinationCopy = destination;
  pathsCopy = paths;
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  v19 = objc_alloc(MEMORY[0x277CBE428]);
  v20 = +[_MKFNotificationRegistrationActionSet entity];
  name = [v20 name];
  v22 = [v19 initWithEntityName:name];

  [v22 setRelationshipKeyPathsForPrefetching:pathsCopy];
  v23 = @"user.modelID";
  if (guestCopy)
  {
    v23 = @"guest.modelID";
  }

  destinationCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K == %@)", v23, dCopy, @"actionSet.modelID", iDCopy, @"deviceIdsDestination", destinationCopy];
  [v22 setPredicate:destinationCopy];

  v33 = 0;
  v25 = [contextCopy executeFetchRequest:v22 error:&v33];
  v26 = v33;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138544642;
      v35 = v31;
      v36 = 2112;
      v37 = dCopy;
      v38 = 2112;
      v39 = iDCopy;
      v40 = 2112;
      v41 = destinationCopy;
      v42 = 2112;
      v43 = pathsCopy;
      v44 = 2112;
      v45 = v26;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch action set registrations for userUUID %@ actionSetUUID %@ deviceIdsDestination %@ prefetchPaths %@, error: %@", buf, 0x3Eu);
    }

    objc_autoreleasePoolPop(context);
  }

  return v25;
}

- (id)_fetchMKFUserAndRegistrationsWithUserUUID:(id)d withMediaProfileUUID:(id)iD withMediaPropertyIn:(id)in withDeviceIdsDestination:(id)destination withAccessoryUUID:(id)uID withPrefetchPaths:(id)paths isRestrictedGuest:(BOOL)guest outHomeMember:(id *)self0 context:(id)self1
{
  dCopy = d;
  contextCopy = context;
  pathsCopy = paths;
  uIDCopy = uID;
  destinationCopy = destination;
  inCopy = in;
  iDCopy = iD;
  [contextCopy hmd_assertIsExecuting];
  v23 = [MEMORY[0x277CBEB18] arrayWithArray:pathsCopy];

  [v23 addObject:@"user"];
  LOBYTE(v27) = guest;
  v24 = [(HMDNotificationRegistryCoreDataAdapter *)self _fetchMKFRegistrationsWithUserUUID:dCopy withMediaProfileUUID:iDCopy withMediaPropertyIn:inCopy withDeviceIdsDestination:destinationCopy withAccessoryUUID:uIDCopy withPrefetchPaths:v23 isRestrictedGuest:v27 context:contextCopy];

  if (v24)
  {
    *member = [(HMDNotificationRegistryCoreDataAdapter *)self homeMemberForRegistrations:v24 userUUID:dCopy isRestrictedGuest:guest context:contextCopy];
    v25 = v24;
  }

  return v24;
}

- (id)_fetchMKFRegistrationsWithUserUUID:(id)d withMediaProfileUUID:(id)iD withMediaPropertyIn:(id)in withDeviceIdsDestination:(id)destination withAccessoryUUID:(id)uID withPrefetchPaths:(id)paths isRestrictedGuest:(BOOL)guest context:(id)self0
{
  v56 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  inCopy = in;
  destinationCopy = destination;
  uIDCopy = uID;
  pathsCopy = paths;
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  v21 = objc_alloc(MEMORY[0x277CBE428]);
  v22 = +[_MKFNotificationRegistrationMediaProperty entity];
  name = [v22 name];
  v24 = [v21 initWithEntityName:name];

  v25 = uIDCopy;
  v38 = pathsCopy;
  [v24 setRelationshipKeyPathsForPrefetching:pathsCopy];
  v26 = @"user.modelID";
  if (guest)
  {
    v26 = @"guest.modelID";
  }

  uIDCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K IN %@) AND (%K == %@) AND (%K == %@)", v26, dCopy, @"mediaProfileIdentifier", iDCopy, @"mediaProperty", inCopy, @"deviceIdsDestination", destinationCopy, @"accessory.modelID", uIDCopy];
  [v24 setPredicate:uIDCopy];

  v39 = 0;
  v28 = [contextCopy executeFetchRequest:v24 error:&v39];
  v29 = v39;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138545154;
      v41 = v36;
      v42 = 2112;
      v43 = dCopy;
      v44 = 2112;
      v45 = iDCopy;
      v46 = 2112;
      v47 = inCopy;
      v48 = 2112;
      v49 = destinationCopy;
      v50 = 2112;
      v51 = uIDCopy;
      v52 = 2112;
      v53 = v38;
      v54 = 2112;
      v55 = v29;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch media property registrations for userUUID %@ mediaProfileUUID %@ mediaProperties %@ deviceIdsDestination %@ accessoryUUID %@ prefetchPaths %@, error: %@", buf, 0x52u);
    }

    objc_autoreleasePoolPop(context);
    v25 = uIDCopy;
  }

  return v28;
}

- (id)_fetchMKFUserAndRegistrationsWithUserUUID:(id)d withCharacteristicIIDs:(id)ds withAccessoryUUIDs:(id)iDs withDeviceIdsDestination:(id)destination withPrefetchPaths:(id)paths isRestrictedGuest:(BOOL)guest outHomeMember:(id *)member context:(id)self0
{
  guestCopy = guest;
  v41 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dsCopy = ds;
  iDsCopy = iDs;
  destinationCopy = destination;
  pathsCopy = paths;
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  if (guestCopy)
  {
    v22 = @"guest";
  }

  else
  {
    v22 = @"user";
  }

  v23 = [MEMORY[0x277CBEB18] arrayWithArray:pathsCopy];
  [v23 addObject:v22];
  v24 = [(HMDNotificationRegistryCoreDataAdapter *)self _fetchMKFRegistrationsWithUserUUID:dCopy withCharacteristicIIDs:dsCopy withAccessoryUUIDs:iDsCopy withDeviceIdsDestination:destinationCopy withPrefetchPaths:v23 isRestrictedGuest:guestCopy context:contextCopy];
  if (v24)
  {
    *member = [(HMDNotificationRegistryCoreDataAdapter *)self homeMemberForRegistrations:v24 userUUID:dCopy isRestrictedGuest:guestCopy context:contextCopy];
    v25 = v24;
  }

  else
  {
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138544386;
      v32 = v29;
      v33 = 2112;
      v34 = dCopy;
      v35 = 2112;
      v36 = dsCopy;
      v37 = 2112;
      v38 = iDsCopy;
      v39 = 2112;
      v40 = destinationCopy;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch registrations for user uuid %@ characteristic iids %@ accessory uuids %@ deviceIdsDestination %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(context);
  }

  return v24;
}

- (id)homeMemberForRegistrations:(id)registrations userUUID:(id)d isRestrictedGuest:(BOOL)guest context:(id)context
{
  guestCopy = guest;
  v25 = *MEMORY[0x277D85DE8];
  registrationsCopy = registrations;
  dCopy = d;
  contextCopy = context;
  if ([registrationsCopy count])
  {
    firstObject = [registrationsCopy firstObject];
    v14 = firstObject;
    if (guestCopy)
    {
      [firstObject guest];
    }

    else
    {
      [firstObject user];
    }
    v15 = ;
  }

  else
  {
    v15 = [(HMDNotificationRegistryCoreDataAdapter *)self _fetchHomeMemberWithUUID:dCopy context:contextCopy];
    if (!v15)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v19;
        v23 = 2112;
        v24 = dCopy;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to find the home member with UUID: %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v15 = 0;
    }
  }

  return v15;
}

- (id)_fetchMKFUserAndRegistrationsWithUserUUID:(id)d withCharacteristicIIDs:(id)ds withAccessoryUUID:(id)iD withDeviceIdsDestination:(id)destination withPrefetchPaths:(id)paths isRestrictedGuest:(BOOL)guest outHomeMember:(id *)member context:(id)self0
{
  guestCopy = guest;
  v40 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dsCopy = ds;
  iDCopy = iD;
  destinationCopy = destination;
  pathsCopy = paths;
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  v22 = [MEMORY[0x277CBEB18] arrayWithArray:pathsCopy];
  [v22 addObject:@"user"];
  v23 = [(HMDNotificationRegistryCoreDataAdapter *)self _fetchMKFRegistrationsWithUserUUID:dCopy withCharacteristicIIDs:dsCopy withAccessoryUUID:iDCopy withDeviceIdsDestination:destinationCopy withPrefetchPaths:v22 isRestrictedGuest:guestCopy context:contextCopy];
  if (v23)
  {
    *member = [(HMDNotificationRegistryCoreDataAdapter *)self homeMemberForRegistrations:v23 userUUID:dCopy isRestrictedGuest:guestCopy context:contextCopy];
    v24 = v23;
  }

  else
  {
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138544386;
      v31 = v28;
      v32 = 2112;
      v33 = dCopy;
      v34 = 2112;
      v35 = dsCopy;
      v36 = 2112;
      v37 = iDCopy;
      v38 = 2112;
      v39 = destinationCopy;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch registrations for user uuid %@ characteristic iids %@ accessory uuid %@ deviceIdsDestination %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(context);
  }

  return v23;
}

- (id)_fetchMKFRegistrationsWithUserUUID:(id)d withCharacteristicIIDs:(id)ds withAccessoryUUIDs:(id)iDs withDeviceIdsDestination:(id)destination withPrefetchPaths:(id)paths isRestrictedGuest:(BOOL)guest context:(id)context
{
  guestCopy = guest;
  v52 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dsCopy = ds;
  iDsCopy = iDs;
  destinationCopy = destination;
  pathsCopy = paths;
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  if ([dsCopy hmf_isEmpty])
  {
    v21 = MEMORY[0x277CBEBF8];
  }

  else
  {
    selfCopy = self;
    v22 = objc_alloc(MEMORY[0x277CBE428]);
    v23 = +[_MKFNotificationRegistrationCharacteristic entity];
    name = [v23 name];
    v25 = [v22 initWithEntityName:name];

    v26 = MEMORY[0x277CCAC30];
    v27 = updatedCharacteristicIIDs(dsCopy);
    v28 = v27;
    v29 = @"user.modelID";
    if (guestCopy)
    {
      v29 = @"guest.modelID";
    }

    destinationCopy = [v26 predicateWithFormat:@"(%K == %@) AND (%K IN %@) AND (%K IN %@) AND (%K == %@)", v29, dCopy, @"characteristic.instanceID", v27, @"characteristic.service.accessory.modelID", iDsCopy, @"deviceIdsDestination", destinationCopy];
    [v25 setPredicate:destinationCopy];

    if (pathsCopy)
    {
      [v25 setRelationshipKeyPathsForPrefetching:pathsCopy];
    }

    v39 = 0;
    v21 = [contextCopy executeFetchRequest:v25 error:&v39];
    v31 = v39;
    if (v21)
    {
      v32 = v21;
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v38 = selfCopy;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138544642;
        v41 = v35;
        v42 = 2112;
        v43 = dCopy;
        v44 = 2112;
        v45 = dsCopy;
        v46 = 2112;
        v47 = iDsCopy;
        v48 = 2112;
        v49 = destinationCopy;
        v50 = 2112;
        v51 = v31;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch notification registrations for userOrGuest uuid %@ characteristic IIDs %@ accessory UUIDs %@ deviceIdsDestination %@, error: %@", buf, 0x3Eu);
      }

      objc_autoreleasePoolPop(context);
    }
  }

  return v21;
}

- (id)_fetchMKFRegistrationsWithUserUUID:(id)d withCharacteristicIIDs:(id)ds withAccessoryUUID:(id)iD withDeviceIdsDestination:(id)destination withPrefetchPaths:(id)paths isRestrictedGuest:(BOOL)guest context:(id)context
{
  guestCopy = guest;
  v52 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dsCopy = ds;
  iDCopy = iD;
  destinationCopy = destination;
  pathsCopy = paths;
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  if ([dsCopy hmf_isEmpty])
  {
    v21 = 0;
  }

  else
  {
    selfCopy = self;
    v22 = objc_alloc(MEMORY[0x277CBE428]);
    v23 = +[_MKFNotificationRegistrationCharacteristic entity];
    name = [v23 name];
    v25 = [v22 initWithEntityName:name];

    v26 = MEMORY[0x277CCAC30];
    v27 = updatedCharacteristicIIDs(dsCopy);
    v28 = v27;
    v29 = @"user.modelID";
    if (guestCopy)
    {
      v29 = @"guest.modelID";
    }

    destinationCopy = [v26 predicateWithFormat:@"(%K == %@) AND (%K IN %@) AND (%K == %@) AND (%K == %@)", v29, dCopy, @"characteristic.instanceID", v27, @"characteristic.service.accessory.modelID", iDCopy, @"deviceIdsDestination", destinationCopy];
    [v25 setPredicate:destinationCopy];

    if (pathsCopy)
    {
      [v25 setRelationshipKeyPathsForPrefetching:pathsCopy];
    }

    v39 = 0;
    v21 = [contextCopy executeFetchRequest:v25 error:&v39];
    v31 = v39;
    if (v21)
    {
      v32 = v21;
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v38 = selfCopy;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138544642;
        v41 = v35;
        v42 = 2112;
        v43 = dCopy;
        v44 = 2112;
        v45 = dsCopy;
        v46 = 2112;
        v47 = iDCopy;
        v48 = 2112;
        v49 = destinationCopy;
        v50 = 2112;
        v51 = v31;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch notification registrations for userOrGuest uuid %@ characteristic IIDs %@ accessory UUID %@ deviceIdsDestination %@, error: %@", buf, 0x3Eu);
      }

      objc_autoreleasePoolPop(context);
    }
  }

  return v21;
}

- (id)_fetchMKFCharacteristicsFromHMDCharacteristics:(id)characteristics context:(id)context
{
  v71 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  if (characteristicsCopy && [characteristicsCopy count])
  {
    selfCopy = self;
    v8 = [characteristicsCopy objectAtIndexedSubscript:0];
    service = [v8 service];

    accessory = [service accessory];
    uuid = [accessory uuid];

    v58 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(characteristicsCopy, "count")}];
    v12 = objc_alloc(MEMORY[0x277CBE428]);
    v13 = +[_MKFCharacteristic entity];
    name = [v13 name];
    v15 = [v12 initWithEntityName:name];

    v57 = uuid;
    v59 = contextCopy;
    if ([characteristicsCopy count] == 1)
    {
      v53 = service;
      v16 = MEMORY[0x277CCAC30];
      v17 = [characteristicsCopy objectAtIndexedSubscript:0];
      instanceID = [v17 instanceID];
      v19 = HAPInstanceIDFromValue();
      v20 = MEMORY[0x277CCABB0];
      v21 = [characteristicsCopy objectAtIndexedSubscript:0];
      instanceID2 = [v21 instanceID];
      v23 = [v20 numberWithLongLong:{objc_msgSend(instanceID2, "longLongValue")}];
      v24 = [v16 predicateWithFormat:@"(%K == %@ OR %K == %@) AND (%K == %@)", @"instanceID", v19, @"instanceID", v23, @"service.accessory.modelID", uuid];
      [v15 setPredicate:v24];

      v64 = 0;
      v25 = v15;
      v26 = [v59 executeFetchRequest:v15 error:&v64];
      v27 = v64;
      if (v26 && [v26 count])
      {
        v28 = [v26 objectAtIndexedSubscript:0];
        v29 = v58;
        [v58 setObject:v28 atIndexedSubscript:0];

        v30 = v58;
        service = v53;
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        v38 = selfCopy;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = HMFGetLogIdentifier();
          v41 = [characteristicsCopy objectAtIndexedSubscript:0];
          instanceID3 = [v41 instanceID];
          *buf = 138543874;
          v66 = v40;
          v67 = 2112;
          v68 = instanceID3;
          v69 = 2112;
          v70 = v27;
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch MKF Characteristic for characteristic instance id: %@, error: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v37);
        v30 = 0;
        service = v53;
        v29 = v58;
      }
    }

    else
    {
      v31 = [characteristicsCopy na_map:&__block_literal_global_241_246992];
      v32 = MEMORY[0x277CCAC30];
      v33 = updatedCharacteristicIIDs(v31);
      v34 = [v32 predicateWithFormat:@"(%K IN %@) AND (%K == %@)", @"instanceID", v33, @"service.accessory.modelID", uuid];
      [v15 setPredicate:v34];

      v63 = 0;
      v26 = [contextCopy executeFetchRequest:v15 error:&v63];
      v27 = v63;
      if (v26 && [v26 count])
      {
        v25 = v15;
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __97__HMDNotificationRegistryCoreDataAdapter__fetchMKFCharacteristicsFromHMDCharacteristics_context___block_invoke_242;
        v60[3] = &unk_278684770;
        v61 = v26;
        v29 = v58;
        v35 = v58;
        v62 = v35;
        [characteristicsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v60];
        v36 = [v35 count];
        if (v36 == [characteristicsCopy count])
        {
          v30 = v35;
        }

        else
        {
          v47 = objc_autoreleasePoolPush();
          v56 = selfCopy;
          v48 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v49 = v54 = v47;
            v50 = [v35 count];
            v51 = [characteristicsCopy count];
            *buf = 138543874;
            v66 = v49;
            v67 = 2048;
            v68 = v50;
            v29 = v58;
            v69 = 2048;
            v70 = v51;
            _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch all MKFCharacteristics (%lu) for input characteristics (%lu)", buf, 0x20u);

            v47 = v54;
          }

          objc_autoreleasePoolPop(v47);
          v30 = 0;
        }
      }

      else
      {
        v25 = v15;
        v43 = objc_autoreleasePoolPush();
        v44 = selfCopy;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = HMFGetLogIdentifier();
          *buf = 138543618;
          v66 = v46;
          v67 = 2112;
          v68 = v27;
          _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch MKF Characteristics array for characteristics, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v43);
        v30 = 0;
        v29 = v58;
      }
    }

    contextCopy = v59;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

void __97__HMDNotificationRegistryCoreDataAdapter__fetchMKFCharacteristicsFromHMDCharacteristics_context___block_invoke_242(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __97__HMDNotificationRegistryCoreDataAdapter__fetchMKFCharacteristicsFromHMDCharacteristics_context___block_invoke_2;
  v6[3] = &unk_278684748;
  v5 = v3;
  v7 = v5;
  v8 = *(a1 + 40);
  v9 = v10;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v6];

  _Block_object_dispose(v10, 8);
}

void __97__HMDNotificationRegistryCoreDataAdapter__fetchMKFCharacteristicsFromHMDCharacteristics_context___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [*(a1 + 32) instanceID];
  v7 = [v9 instanceID];
  v8 = HAPEqualInstanceIDs();

  if (v8)
  {
    [*(a1 + 40) addObject:v9];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (id)_fetchEnabledMKFRegistrationsForHMDCharacteristics:(id)characteristics context:(id)context
{
  v47[1] = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  if (!characteristicsCopy || ![characteristicsCopy count])
  {
    v18 = 0;
    goto LABEL_15;
  }

  v8 = [characteristicsCopy objectAtIndexedSubscript:0];
  service = [v8 service];
  accessory = [service accessory];
  uuid = [accessory uuid];

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__246802;
  v39 = __Block_byref_object_dispose__246803;
  array = [MEMORY[0x277CBEB18] array];
  if ([characteristicsCopy count] == 1)
  {
    v12 = [characteristicsCopy objectAtIndexedSubscript:0];
    instanceID = [v12 instanceID];
    v47[0] = instanceID;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
    v34 = 0;
    v15 = [(HMDNotificationRegistryCoreDataAdapter *)self _registrationsForCharacteristicIIDs:v14 accessoryUUID:uuid moc:contextCopy error:&v34];
    v16 = v34;
    v17 = [v15 na_filter:&__block_literal_global_221_247006];

    if (!v17)
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [characteristicsCopy objectAtIndexedSubscript:0];
        instanceID2 = [v30 instanceID];
        *buf = 138543874;
        v42 = v29;
        v43 = 2112;
        v44 = instanceID2;
        v45 = 2112;
        v46 = v16;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch MKFNotificationRegistrationCharacteristic for characteristic instance id: %@, error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      v18 = 0;
      goto LABEL_14;
    }

    [v36[5] addObjectsFromArray:v17];
    v18 = v36[5];
  }

  else
  {
    v19 = [characteristicsCopy na_map:&__block_literal_global_225_247008];
    v33 = 0;
    v20 = [(HMDNotificationRegistryCoreDataAdapter *)self _registrationsForCharacteristicIIDs:v19 accessoryUUID:uuid moc:contextCopy error:&v33];
    v16 = v33;
    v17 = [v20 na_filter:&__block_literal_global_227_247009];

    if (v17)
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __101__HMDNotificationRegistryCoreDataAdapter__fetchEnabledMKFRegistrationsForHMDCharacteristics_context___block_invoke_228;
      v32[3] = &unk_278684720;
      v32[4] = &v35;
      [v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v32];
      v18 = v36[5];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543874;
        v42 = v24;
        v43 = 2112;
        v44 = characteristicsCopy;
        v45 = 2112;
        v46 = v16;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch MKFNotificationRegistrationCharacteristic for characteristics %@, error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v18 = 0;
    }
  }

LABEL_14:
  _Block_object_dispose(&v35, 8);

LABEL_15:

  return v18;
}

uint64_t __101__HMDNotificationRegistryCoreDataAdapter__fetchEnabledMKFRegistrationsForHMDCharacteristics_context___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 enabled];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t __101__HMDNotificationRegistryCoreDataAdapter__fetchEnabledMKFRegistrationsForHMDCharacteristics_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 enabled];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)_deleteAllMKFRegistrationsForActionSetUUID:(id)d hmcContext:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  managedObjectContext = [contextCopy managedObjectContext];
  [managedObjectContext hmd_assertIsExecuting];
  v9 = [(HMDNotificationRegistryCoreDataAdapter *)self _requestToFetchMKFRegistrationsWithActionSetUUID:dCopy context:managedObjectContext];
  v20 = 0;
  v10 = [managedObjectContext executeFetchRequest:v9 error:&v20];
  v11 = v20;
  if (!v10)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543874;
      v22 = v16;
      v23 = 2112;
      v24 = dCopy;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to batch delete action set registrations for action set uuid: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    goto LABEL_7;
  }

  if (![v10 count])
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__HMDNotificationRegistryCoreDataAdapter__deleteAllMKFRegistrationsForActionSetUUID_hmcContext___block_invoke;
  v18[3] = &unk_2786846F8;
  v19 = contextCopy;
  [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v18];

  v12 = 1;
LABEL_8:

  return v12;
}

- (id)_fetchEnabledMKFRegistrationsForActionSetUUID:(id)d context:(id)context
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  v8 = objc_alloc(MEMORY[0x277CBE428]);
  v9 = +[_MKFNotificationRegistrationActionSet entity];
  name = [v9 name];
  v11 = [v8 initWithEntityName:name];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == YES)", @"actionSet.modelID", dCopy, @"enabled"];
  [v11 setPredicate:v12];

  v21 = 0;
  v13 = [contextCopy executeFetchRequest:v11 error:&v21];
  v14 = v21;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543874;
      v23 = v19;
      v24 = 2112;
      v25 = dCopy;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch action set registrations for action set uuid: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
  }

  return v13;
}

- (id)_requestToFetchMKFRegistrationsWithActionSetUUID:(id)d context:(id)context
{
  dCopy = d;
  [context hmd_assertIsExecuting];
  v6 = objc_alloc(MEMORY[0x277CBE428]);
  v7 = +[_MKFNotificationRegistrationActionSet entity];
  name = [v7 name];
  v9 = [v6 initWithEntityName:name];

  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"actionSet.modelID", dCopy];

  [v9 setPredicate:dCopy];

  return v9;
}

- (BOOL)_deleteAllMKFRegistrationsForMediaProfileUUID:(id)d withMediaProperty:(id)property hmcContext:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  propertyCopy = property;
  contextCopy = context;
  managedObjectContext = [contextCopy managedObjectContext];
  [managedObjectContext hmd_assertIsExecuting];
  v12 = [(HMDNotificationRegistryCoreDataAdapter *)self _requestToFetchMKFRegistrationsWithMediaProfileUUID:dCopy withMediaProperty:propertyCopy context:managedObjectContext];
  v24 = 0;
  v13 = [managedObjectContext executeFetchRequest:v12 error:&v24];
  v14 = v24;
  if (!v13)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v19 = v21 = v16;
      *buf = 138543874;
      v26 = v19;
      v27 = 2112;
      v28 = dCopy;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to batch delete media profile registrations for media profile uuid: %@ error: %@", buf, 0x20u);

      v16 = v21;
    }

    objc_autoreleasePoolPop(v16);
    goto LABEL_7;
  }

  if (![v13 count])
  {
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __117__HMDNotificationRegistryCoreDataAdapter__deleteAllMKFRegistrationsForMediaProfileUUID_withMediaProperty_hmcContext___block_invoke;
  v22[3] = &unk_2786846D0;
  v23 = contextCopy;
  [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v22];

  v15 = 1;
LABEL_8:

  return v15;
}

- (id)_fetchEnabledMKFRegistrationsForMediaProfileUUID:(id)d withMediaProperty:(id)property context:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  propertyCopy = property;
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  v11 = objc_alloc(MEMORY[0x277CBE428]);
  v12 = +[_MKFNotificationRegistrationMediaProperty entity];
  name = [v12 name];
  v14 = [v11 initWithEntityName:name];

  if (propertyCopy)
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K == YES)", @"mediaProfileIdentifier", dCopy, @"mediaProperty", propertyCopy, @"enabled"];
  }

  else
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == YES)", @"mediaProfileIdentifier", dCopy, @"enabled", v24, v25];
  }
  v15 = ;
  [v14 setPredicate:v15];

  v26 = 0;
  v16 = [contextCopy executeFetchRequest:v14 error:&v26];
  v17 = v26;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v28 = v22;
      v29 = 2112;
      v30 = dCopy;
      v31 = 2112;
      v32 = v17;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch media profile registrations for media profile uuid: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
  }

  return v16;
}

- (id)_requestToFetchMKFRegistrationsWithMediaProfileUUID:(id)d withMediaProperty:(id)property context:(id)context
{
  propertyCopy = property;
  dCopy = d;
  [context hmd_assertIsExecuting];
  v9 = objc_alloc(MEMORY[0x277CBE428]);
  v10 = +[_MKFNotificationRegistrationMediaProperty entity];
  name = [v10 name];
  v12 = [v9 initWithEntityName:name];

  if (propertyCopy)
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@)", @"mediaProfileIdentifier", dCopy, @"mediaProperty", propertyCopy];
  }

  else
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"mediaProfileIdentifier", dCopy, v15, v16];
  }
  v13 = ;

  [v12 setPredicate:v13];

  return v12;
}

- (BOOL)_deleteAllRegistrationsForCharacteristicIIDs:(id)ds withAccessoryUUID:(id)d hmcContext:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  contextCopy = context;
  managedObjectContext = [contextCopy managedObjectContext];
  [managedObjectContext hmd_assertIsExecuting];
  v22 = 0;
  v12 = [(HMDNotificationRegistryCoreDataAdapter *)self _registrationsForCharacteristicIIDs:dsCopy accessoryUUID:dCopy moc:managedObjectContext error:&v22];
  v13 = v22;
  if (!v12)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138544130;
      v24 = v18;
      v25 = 2112;
      v26 = dsCopy;
      v27 = 2112;
      v28 = dCopy;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to batch delete registrations for characteristic IIDs %@ accessory UUID %@, error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    goto LABEL_7;
  }

  if (![v12 count])
  {
LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __116__HMDNotificationRegistryCoreDataAdapter__deleteAllRegistrationsForCharacteristicIIDs_withAccessoryUUID_hmcContext___block_invoke;
  v20[3] = &unk_2786846A8;
  v21 = contextCopy;
  [v12 hmf_enumerateWithAutoreleasePoolUsingBlock:v20];

  v14 = 1;
LABEL_8:

  return v14;
}

- (id)_registrationsForCharacteristicIID:(id)d exceedingChangeThresholdForCurrentValue:(id)value accessoryUUID:(id)iD moc:(id)moc error:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  mocCopy = moc;
  iDCopy = iD;
  valueCopy = value;
  dCopy = d;
  [mocCopy hmd_assertIsExecuting];
  v15 = objc_alloc(MEMORY[0x277CBE428]);
  v16 = +[_MKFNotificationRegistrationCharacteristic entity];
  name = [v16 name];
  v18 = [v15 initWithEntityName:name];

  v19 = MEMORY[0x277CCAC30];
  v25[0] = dCopy;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v21 = updatedCharacteristicIIDs(v20);
  v22 = [v19 predicateWithFormat:@"(%K IN %@)                               AND (%K == %@)                               AND                                (                                    (%K == nil)                                     OR (%K == nil)                                     OR (%@ < %K - %K)                                     OR (%@ > %K + %K)                                )", @"characteristic.instanceID", v21, @"characteristic.service.accessory.modelID", iDCopy, @"notificationThreshold", @"lastNotifiedValue", valueCopy, @"lastNotifiedValue", @"notificationThreshold", valueCopy, @"lastNotifiedValue", @"notificationThreshold"];

  [v18 setPredicate:v22];
  v23 = [mocCopy executeFetchRequest:v18 error:error];

  return v23;
}

- (id)_fetchEnabledMKFRegistrationsForHMDCharacteristic:(id)characteristic exceedingChangeThresholdForCurrentValue:(id)value context:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  valueCopy = value;
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  if (characteristicCopy)
  {
    service = [characteristicCopy service];
    accessory = [service accessory];
    uuid = [accessory uuid];

    instanceID = [characteristicCopy instanceID];
    v26 = 0;
    v15 = [(HMDNotificationRegistryCoreDataAdapter *)self _registrationsForCharacteristicIID:instanceID exceedingChangeThresholdForCurrentValue:valueCopy accessoryUUID:uuid moc:contextCopy error:&v26];
    v16 = v26;
    v17 = [v15 na_filter:&__block_literal_global_247037];

    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        [characteristicCopy instanceID];
        v23 = v25 = v19;
        *buf = 138543874;
        v28 = v22;
        v29 = 2112;
        v30 = v23;
        v31 = 2112;
        v32 = v16;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch MKFNotificationRegistrationCharacteristic above threshold for characteristic instance id: %@, error: %@", buf, 0x20u);

        v19 = v25;
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t __140__HMDNotificationRegistryCoreDataAdapter__fetchEnabledMKFRegistrationsForHMDCharacteristic_exceedingChangeThresholdForCurrentValue_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 enabled];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)_registrationsForCharacteristicIIDs:(id)ds accessoryUUID:(id)d moc:(id)moc error:(id *)error
{
  mocCopy = moc;
  dCopy = d;
  dsCopy = ds;
  [mocCopy hmd_assertIsExecuting];
  v12 = objc_alloc(MEMORY[0x277CBE428]);
  v13 = +[_MKFNotificationRegistrationCharacteristic entity];
  name = [v13 name];
  v15 = [v12 initWithEntityName:name];

  v16 = MEMORY[0x277CCAC30];
  v17 = updatedCharacteristicIIDs(dsCopy);

  dCopy = [v16 predicateWithFormat:@"(%K IN %@) AND (%K == %@)", @"characteristic.instanceID", v17, @"characteristic.service.accessory.modelID", dCopy];

  [v15 setPredicate:dCopy];
  v19 = [mocCopy executeFetchRequest:v15 error:error];

  return v19;
}

- (BOOL)_deleteAllCharacteristicRegistrationsWithContext:(id)context
{
  contextCopy = context;
  v5 = +[_MKFNotificationRegistrationCharacteristic entity];
  name = [v5 name];
  v7 = [(HMDNotificationRegistryCoreDataAdapter *)self _deleteAllRegistrationsWithEntityName:name withHomeKeypath:@"user.home.modelID" hmcContext:contextCopy];

  v8 = +[_MKFNotificationRegistrationCharacteristic entity];
  name2 = [v8 name];
  LOBYTE(self) = [(HMDNotificationRegistryCoreDataAdapter *)self _deleteAllRegistrationsWithEntityName:name2 withHomeKeypath:@"guest.home.modelID" hmcContext:contextCopy];

  return (v7 | self) & 1;
}

- (BOOL)_deleteAllRegistrationsWithEntityName:(id)name withHomeKeypath:(id)keypath hmcContext:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  keypathCopy = keypath;
  contextCopy = context;
  managedObjectContext = [contextCopy managedObjectContext];
  [managedObjectContext hmd_assertIsExecuting];
  v12 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:nameCopy];
  v13 = MEMORY[0x277CCAC30];
  home = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  uuid = [home uuid];
  v16 = [v13 predicateWithFormat:@"(%K == %@)", keypathCopy, uuid];
  [v12 setPredicate:v16];

  v28 = 0;
  v17 = [managedObjectContext executeFetchRequest:v12 error:&v28];
  v18 = v28;
  if (!v17)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v23 = v25 = v20;
      *buf = 138543618;
      v30 = v23;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch and delete all registrations, error: %@", buf, 0x16u);

      v20 = v25;
    }

    objc_autoreleasePoolPop(v20);
    goto LABEL_7;
  }

  if (![v17 count])
  {
LABEL_7:
    v19 = 0;
    goto LABEL_8;
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __107__HMDNotificationRegistryCoreDataAdapter__deleteAllRegistrationsWithEntityName_withHomeKeypath_hmcContext___block_invoke;
  v26[3] = &unk_278684660;
  v27 = contextCopy;
  [v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v26];

  v19 = 1;
LABEL_8:

  return v19;
}

- (id)_fetchMKFActionSetWithUUID:(id)d context:(id)context
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  v8 = objc_alloc(MEMORY[0x277CBE428]);
  v9 = +[_MKFActionSet entity];
  name = [v9 name];
  v11 = [v8 initWithEntityName:name];

  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@)", @"modelID", dCopy];
  [v11 setPredicate:dCopy];

  v21 = 0;
  v13 = [contextCopy executeFetchRequest:v11 error:&v21];
  v14 = v21;
  if (v13 && [v13 count])
  {
    v15 = [v13 objectAtIndexedSubscript:0];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543874;
      v23 = v19;
      v24 = 2112;
      v25 = dCopy;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch action set for uuid %@, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = 0;
  }

  return v15;
}

- (id)_fetchMKFHAPAccessoryWithUUID:(id)d context:(id)context
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  v8 = objc_alloc(MEMORY[0x277CBE428]);
  v9 = +[_MKFAccessory entity];
  name = [v9 name];
  v11 = [v8 initWithEntityName:name];

  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@)", @"modelID", dCopy];
  [v11 setPredicate:dCopy];

  v21 = 0;
  v13 = [contextCopy executeFetchRequest:v11 error:&v21];
  v14 = v21;
  if (v13 && [v13 count])
  {
    v15 = [v13 objectAtIndexedSubscript:0];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543874;
      v23 = v19;
      v24 = 2112;
      v25 = dCopy;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch accessory for uuid %@, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = 0;
  }

  return v15;
}

- (HMDNotificationRegistryCoreDataAdapter)initWithHome:(id)home
{
  homeCopy = home;
  v8.receiver = self;
  v8.super_class = HMDNotificationRegistryCoreDataAdapter;
  v5 = [(HMDNotificationRegistryCoreDataAdapter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_home, homeCopy);
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t86 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t86, &__block_literal_global_382);
  }

  v3 = logCategory__hmf_once_v87;

  return v3;
}

void __53__HMDNotificationRegistryCoreDataAdapter_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v87;
  logCategory__hmf_once_v87 = v0;
}

@end