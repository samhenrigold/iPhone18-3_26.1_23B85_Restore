@interface HMDBulletinNotificationRegistrationUtilities
+ (id)accessoryRegistrationFromLocalRegistration:(id)registration;
+ (id)accessoryRegistrationFromMKFRegistration:(id)registration;
+ (id)adjustedOffsetFromMKFLocalElementTimePeriodSunriseSunSet:(id)set;
+ (id)audioAnalysisNotificationRegistrationFromRemoteRegistration:(id)registration;
+ (id)cameraAccessModeRegistrationFromLocalRegistration:(id)registration;
+ (id)cameraAccessModeRegistrationFromMKFRegistration:(id)registration;
+ (id)cameraReachabilityRegistrationFromLocalRegistration:(id)registration;
+ (id)cameraReachabilityRegistrationFromMKFRegistration:(id)registration;
+ (id)cameraSignificantEventRegistrationFromLocalRegistration:(id)registration;
+ (id)cameraSignificantEventRegistrationFromMKFRegistration:(id)registration;
+ (id)conditionsFromLocalConditions:(id)conditions;
+ (id)conditionsFromMKFConditions:(id)conditions;
+ (id)createAndAddLocalConditionsToRegistration:(id)registration moc:(id)moc conditions:(id)conditions;
+ (id)createAndAddLocalPresenceConditionToRegistration:(id)registration moc:(id)moc condition:(id)condition;
+ (id)createAndAddLocalTimePeriodConditionToRegistration:(id)registration moc:(id)moc condition:(id)condition;
+ (id)createLocalElementFromSunriseSunset:(id)sunset moc:(id)moc;
+ (id)createLocalElementFromTimeOfDay:(id)day moc:(id)moc;
+ (id)endpointRegistrationFromLocalRegistration:(id)registration;
+ (id)matterRegistrationFromLocalRegistration:(id)registration home:(id)home;
+ (id)matterRegistrationFromMKFRegistration:(id)registration home:(id)home;
+ (id)presenceConditionFromLocalCondition:(id)condition;
+ (id)serviceRegistrationFromLocalRegistration:(id)registration;
+ (id)timePeriodConditionFromLocalCondition:(id)condition;
@end

@implementation HMDBulletinNotificationRegistrationUtilities

+ (id)conditionsFromMKFConditions:(id)conditions
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__HMDBulletinNotificationRegistrationUtilities_conditionsFromMKFConditions___block_invoke;
  v5[3] = &__block_descriptor_40_e32__16__0___MKFBulletinCondition__8l;
  v5[4] = self;
  v3 = [conditions na_map:v5];

  return v3;
}

HMDTimePeriodNotificationCondition *__76__HMDBulletinNotificationRegistrationUtilities_conditionsFromMKFConditions___block_invoke(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_283EE0F90])
  {
    v4 = v3;
    v5 = [v4 presenceEventType];
    v6 = [v5 unsignedIntegerValue];

    v7 = [v4 presenceEventUserType];
    v8 = [v7 unsignedIntegerValue];

    v9 = [v4 users];
    v10 = [v9 na_map:&__block_literal_global_332_164489];

    v11 = [HMDPresenceNotificationCondition alloc];
    v12 = [MEMORY[0x277CBEB98] setWithArray:v10];

    v13 = [(HMDPresenceNotificationCondition *)v11 initWithPresenceEventType:v6 presenceEventUserType:v8 userUUIDs:v12];
    goto LABEL_20;
  }

  if ([v3 conformsToProtocol:&unk_283EDDC10])
  {
    v14 = v3;
    v15 = [v14 startElement];
    if ([v15 conformsToProtocol:&unk_283EE1758])
    {
      v16 = [v14 endElement];
      v17 = [v16 conformsToProtocol:&unk_283EE1758];

      if (v17)
      {
        v18 = [v14 startElement];
        v19 = [v14 endElement];
        v20 = [HMDTimeOfDayTimePeriodElement alloc];
        v21 = [v18 hour];
        v22 = [v21 unsignedIntegerValue];
        v23 = [v18 minute];
        v24 = -[HMDTimeOfDayTimePeriodElement initWithHour:minute:](v20, "initWithHour:minute:", v22, [v23 unsignedIntegerValue]);

        v25 = [HMDTimeOfDayTimePeriodElement alloc];
        v26 = [v19 hour];
        v27 = [v26 unsignedIntegerValue];
        v28 = [v19 minute];
        v29 = -[HMDTimeOfDayTimePeriodElement initWithHour:minute:](v25, "initWithHour:minute:", v27, [v28 unsignedIntegerValue]);

        v13 = [[HMDTimePeriodNotificationCondition alloc] initWithStartElement:v24 endElement:v29];
LABEL_14:

LABEL_19:
        goto LABEL_20;
      }
    }

    else
    {
    }

    v34 = [v14 startElement];
    if ([v34 conformsToProtocol:&unk_283F7C808])
    {
      v35 = [v14 endElement];
      v36 = [v35 conformsToProtocol:&unk_283F7C808];

      if (v36)
      {
        v18 = [v14 startElement];
        v19 = [v14 endElement];
        v37 = [HMDSunriseSunsetTimePeriodElement alloc];
        v38 = [v18 significantEvent];
        v39 = [v18 offsetSeconds];
        v40 = HMDTimeOffsetToDateComponents([v39 integerValue], 0);
        v24 = [(HMDSunriseSunsetTimePeriodElement *)v37 initWithSignificantEvent:v38 offset:v40];

        v41 = [HMDSunriseSunsetTimePeriodElement alloc];
        v42 = [v19 significantEvent];
        v43 = [v19 offsetSeconds];
        v44 = HMDTimeOffsetToDateComponents([v43 integerValue], 0);
        v45 = [(HMDSunriseSunsetTimePeriodElement *)v41 initWithSignificantEvent:v42 offset:v44];

        v13 = [[HMDTimePeriodNotificationCondition alloc] initWithStartElement:v24 endElement:v45];
        goto LABEL_14;
      }
    }

    else
    {
    }

    v46 = objc_autoreleasePoolPush();
    v47 = *(a1 + 32);
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = HMFGetLogIdentifier();
      v50 = [v14 startElement];
      v51 = [v14 endElement];
      v53 = 138543874;
      v54 = v49;
      v55 = 2112;
      v56 = v50;
      v57 = 2112;
      v58 = v51;
      _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Unrecognized time period start element: %@ end element: %@, unable to convert", &v53, 0x20u);
    }

    objc_autoreleasePoolPop(v46);
    v13 = 0;
    goto LABEL_19;
  }

  v30 = objc_autoreleasePoolPush();
  v31 = *(a1 + 32);
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v33 = HMFGetLogIdentifier();
    v53 = 138543618;
    v54 = v33;
    v55 = 2112;
    v56 = v3;
    _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unrecognized condition: %@, unable to convert", &v53, 0x16u);
  }

  objc_autoreleasePoolPop(v30);
  v13 = 0;
LABEL_20:

  return v13;
}

id __76__HMDBulletinNotificationRegistrationUtilities_conditionsFromMKFConditions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 modelID];
  v3 = [v2 UUIDString];

  return v3;
}

+ (id)cameraAccessModeRegistrationFromMKFRegistration:(id)registration
{
  v35 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  conditions = [registrationCopy conditions];
  v6 = [self conditionsFromMKFConditions:conditions];

  accessory = [registrationCopy accessory];
  modelID = [accessory modelID];

  v9 = [HMDCameraAccessModeBulletinNotificationRegistration alloc];
  v10 = [MEMORY[0x277CBEB98] setWithArray:v6];
  v11 = [(HMDCameraAccessModeBulletinNotificationRegistration *)v9 initWithAccessoryUUID:modelID conditions:v10];

  deviceIdsIdentifier = [registrationCopy deviceIdsIdentifier];
  deviceIdsDestination = [registrationCopy deviceIdsDestination];
  user = [registrationCopy user];
  modelID2 = [user modelID];

  v26 = deviceIdsDestination;
  v27 = deviceIdsIdentifier;
  v16 = [[HMDDeviceAddress alloc] initWithIDSIdentifier:deviceIdsIdentifier idsDestination:deviceIdsDestination];
  v17 = [[HMDBulletinNotificationRegistrationSource alloc] initWithUserUUID:modelID2 deviceAddress:v16];
  v28 = [[HMDCameraAccessModeBulletinNotificationRegistrationRemote alloc] initWithCameraAccessModeBulletinNotificationRegistration:v11 source:v17];
  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v25 = v11;
    v21 = modelID;
    v23 = v22 = v6;
    *buf = 138543874;
    v30 = v23;
    v31 = 2112;
    v32 = v28;
    v33 = 2112;
    v34 = registrationCopy;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from MKF registration: %@", buf, 0x20u);

    v6 = v22;
    modelID = v21;
    v11 = v25;
  }

  objc_autoreleasePoolPop(v18);

  return v28;
}

+ (id)audioAnalysisNotificationRegistrationFromRemoteRegistration:(id)registration
{
  v37 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  v5 = MEMORY[0x277CBEB98];
  conditions = [registrationCopy conditions];
  v7 = [self conditionsFromMKFConditions:conditions];
  v8 = [v5 setWithArray:v7];

  v9 = [HMDAudioAnalysisEventBulletinNotificationRegistration alloc];
  classifierOptions = [registrationCopy classifierOptions];
  unsignedIntegerValue = [classifierOptions unsignedIntegerValue];
  accessory = [registrationCopy accessory];
  modelID = [accessory modelID];
  v30 = v8;
  v14 = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)v9 initWithConditions:v8 audioAnalysisClassifierOptions:unsignedIntegerValue accessoryUUID:modelID];

  deviceIdsIdentifier = [registrationCopy deviceIdsIdentifier];
  deviceIdsDestination = [registrationCopy deviceIdsDestination];
  user = [registrationCopy user];
  modelID2 = [user modelID];

  v29 = deviceIdsDestination;
  v19 = [[HMDDeviceAddress alloc] initWithIDSIdentifier:deviceIdsIdentifier idsDestination:deviceIdsDestination];
  v20 = [[HMDBulletinNotificationRegistrationSource alloc] initWithUserUUID:modelID2 deviceAddress:v19];
  v21 = [[HMDAudioAnalysisEventBulletinNotificationRegistrationRemote alloc] initWithAudioAnalysisEventBulletinNotificationRegistration:v14 source:v20];
  v22 = objc_autoreleasePoolPush();
  selfCopy = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v28 = deviceIdsIdentifier;
    v26 = v25 = v14;
    *buf = 138543874;
    v32 = v26;
    v33 = 2112;
    v34 = v21;
    v35 = 2112;
    v36 = registrationCopy;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from MKF registration: %@", buf, 0x20u);

    v14 = v25;
    deviceIdsIdentifier = v28;
  }

  objc_autoreleasePoolPop(v22);

  return v21;
}

+ (id)cameraReachabilityRegistrationFromMKFRegistration:(id)registration
{
  v35 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  conditions = [registrationCopy conditions];
  v6 = [self conditionsFromMKFConditions:conditions];

  accessory = [registrationCopy accessory];
  modelID = [accessory modelID];

  v9 = [HMDCameraReachabilityBulletinNotificationRegistration alloc];
  v10 = [MEMORY[0x277CBEB98] setWithArray:v6];
  v11 = [(HMDCameraReachabilityBulletinNotificationRegistration *)v9 initWithAccessoryUUID:modelID conditions:v10];

  deviceIdsIdentifier = [registrationCopy deviceIdsIdentifier];
  deviceIdsDestination = [registrationCopy deviceIdsDestination];
  user = [registrationCopy user];
  modelID2 = [user modelID];

  v26 = deviceIdsDestination;
  v27 = deviceIdsIdentifier;
  v16 = [[HMDDeviceAddress alloc] initWithIDSIdentifier:deviceIdsIdentifier idsDestination:deviceIdsDestination];
  v17 = [[HMDBulletinNotificationRegistrationSource alloc] initWithUserUUID:modelID2 deviceAddress:v16];
  v28 = [[HMDCameraReachabilityBulletinNotificationRegistrationRemote alloc] initWithCameraReachabilityBulletinNotificationRegistration:v11 source:v17];
  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v25 = v11;
    v21 = modelID;
    v23 = v22 = v6;
    *buf = 138543874;
    v30 = v23;
    v31 = 2112;
    v32 = v28;
    v33 = 2112;
    v34 = registrationCopy;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from MKF registration: %@", buf, 0x20u);

    v6 = v22;
    modelID = v21;
    v11 = v25;
  }

  objc_autoreleasePoolPop(v18);

  return v28;
}

+ (id)cameraSignificantEventRegistrationFromMKFRegistration:(id)registration
{
  v41 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  conditions = [registrationCopy conditions];
  v6 = [self conditionsFromMKFConditions:conditions];

  accessory = [registrationCopy accessory];
  modelID = [accessory modelID];

  notificationModes = [registrationCopy notificationModes];
  unsignedIntegerValue = [notificationModes unsignedIntegerValue];

  significantEventTypes = [registrationCopy significantEventTypes];
  unsignedIntegerValue2 = [significantEventTypes unsignedIntegerValue];

  personFamiliarityOptions = [registrationCopy personFamiliarityOptions];
  unsignedIntegerValue3 = [personFamiliarityOptions unsignedIntegerValue];

  v15 = [HMDCameraSignificantEventBulletinNotificationRegistration alloc];
  v33 = v6;
  v16 = [MEMORY[0x277CBEB98] setWithArray:v6];
  v32 = modelID;
  v17 = [(HMDCameraSignificantEventBulletinNotificationRegistration *)v15 initWithCameraIdentifier:modelID notificationModes:unsignedIntegerValue significantEventTypes:unsignedIntegerValue2 personFamiliarityOptions:unsignedIntegerValue3 conditions:v16];

  deviceIdsIdentifier = [registrationCopy deviceIdsIdentifier];
  deviceIdsDestination = [registrationCopy deviceIdsDestination];
  user = [registrationCopy user];
  modelID2 = [user modelID];

  v22 = [[HMDDeviceAddress alloc] initWithIDSIdentifier:deviceIdsIdentifier idsDestination:deviceIdsDestination];
  v23 = [[HMDBulletinNotificationRegistrationSource alloc] initWithUserUUID:modelID2 deviceAddress:v22];
  v34 = [[HMDCameraSignificantEventBulletinNotificationRegistrationRemote alloc] initWithCameraCameraSignificantEventBulletinNotificationRegistration:v17 source:v23];
  v24 = objc_autoreleasePoolPush();
  selfCopy = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v31 = deviceIdsDestination;
    v27 = deviceIdsIdentifier;
    v29 = v28 = v17;
    *buf = 138543874;
    v36 = v29;
    v37 = 2112;
    v38 = v34;
    v39 = 2112;
    v40 = registrationCopy;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from MKF registration: %@", buf, 0x20u);

    v17 = v28;
    deviceIdsIdentifier = v27;
    deviceIdsDestination = v31;
  }

  objc_autoreleasePoolPop(v24);

  return v34;
}

+ (id)matterRegistrationFromMKFRegistration:(id)registration home:(id)home
{
  v48 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  homeCopy = home;
  v8 = +[HMDCoreData featuresDataSource];
  isRVCEnabled = [v8 isRVCEnabled];

  if (isRVCEnabled)
  {
    conditions = [registrationCopy conditions];
    v11 = [self conditionsFromMKFConditions:conditions];

    matterPaths = [registrationCopy matterPaths];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __91__HMDBulletinNotificationRegistrationUtilities_matterRegistrationFromMKFRegistration_home___block_invoke;
    v38[3] = &unk_27867C680;
    v39 = homeCopy;
    selfCopy = self;
    v13 = registrationCopy;
    v40 = v13;
    v36 = matterPaths;
    v14 = [matterPaths na_map:v38];
    v15 = [HMDMatterBulletinNotificationRegistration alloc];
    v37 = v11;
    v16 = [MEMORY[0x277CBEB98] setWithArray:v11];
    v35 = v14;
    v17 = [(HMDMatterBulletinNotificationRegistration *)v15 initWithMatterPaths:v14 conditions:v16];

    deviceIdsIdentifier = [v13 deviceIdsIdentifier];
    deviceIdsDestination = [v13 deviceIdsDestination];
    user = [v13 user];
    modelID = [user modelID];

    if (!modelID)
    {
      guest = [v13 guest];
      modelID = [guest modelID];
    }

    v32 = deviceIdsDestination;
    v33 = deviceIdsIdentifier;
    v23 = [[HMDDeviceAddress alloc] initWithIDSIdentifier:deviceIdsIdentifier idsDestination:deviceIdsDestination];
    v24 = [[HMDBulletinNotificationRegistrationSource alloc] initWithUserUUID:modelID deviceAddress:v23];
    v34 = v17;
    v25 = [[HMDMatterBulletinNotificationRegistrationRemote alloc] initWithMatterBulletinNotificationRegistration:v17 source:v24];
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v29 = v31 = homeCopy;
      *buf = 138543874;
      v43 = v29;
      v44 = 2112;
      v45 = v25;
      v46 = 2112;
      v47 = v13;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from MKF registration: %@", buf, 0x20u);

      homeCopy = v31;
    }

    objc_autoreleasePoolPop(v26);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

id __91__HMDBulletinNotificationRegistrationUtilities_matterRegistrationFromMKFRegistration_home___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 accessory];
  v6 = [v5 modelID];
  v7 = [v4 accessoryWithUUID:v6];

  v8 = [v3 attributeID];

  if (v8)
  {
    v9 = [v3 attributeID];
    v10 = [v3 endpointID];
    v11 = [v3 clusterID];
    v12 = [HMDMatterPath PathWithAttributeID:v9 endpointID:v10 clusterID:v11 accessory:v7];
LABEL_5:
    v14 = v12;

    goto LABEL_6;
  }

  v13 = [v3 eventID];

  if (v13)
  {
    v9 = [v3 eventID];
    v10 = [v3 endpointID];
    v11 = [v3 clusterID];
    v12 = [HMDMatterPath PathWithEventID:v9 endpointID:v10 clusterID:v11 accessory:v7];
    goto LABEL_5;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 48);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    v20 = *(a1 + 40);
    v21 = 138543618;
    v22 = v19;
    v23 = 2112;
    v24 = v20;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@No attributeID or eventID found on working store Matter bulletin registration=%@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v14 = 0;
LABEL_6:

  return v14;
}

+ (id)accessoryRegistrationFromMKFRegistration:(id)registration
{
  v45 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  conditions = [registrationCopy conditions];
  v6 = [self conditionsFromMKFConditions:conditions];

  characteristic = [registrationCopy characteristic];
  service = [characteristic service];
  accessory = [service accessory];
  modelID = [accessory modelID];

  characteristic2 = [registrationCopy characteristic];
  service2 = [characteristic2 service];
  instanceID = [service2 instanceID];

  characteristic3 = [registrationCopy characteristic];
  instanceID2 = [characteristic3 instanceID];

  v16 = [HMDAccessoryBulletinNotificationRegistration alloc];
  v17 = [MEMORY[0x277CBEB98] setWithArray:v6];
  v37 = instanceID2;
  v38 = instanceID;
  v18 = [(HMDAccessoryBulletinNotificationRegistration *)v16 initWithAccessoryUUID:modelID serviceInstanceID:instanceID characteristicInstanceID:instanceID2 conditions:v17];

  deviceIdsIdentifier = [registrationCopy deviceIdsIdentifier];
  deviceIdsDestination = [registrationCopy deviceIdsDestination];
  user = [registrationCopy user];
  modelID2 = [user modelID];

  if (!modelID2)
  {
    guest = [registrationCopy guest];
    modelID2 = [guest modelID];
  }

  v34 = deviceIdsDestination;
  v35 = deviceIdsIdentifier;
  v24 = [[HMDDeviceAddress alloc] initWithIDSIdentifier:deviceIdsIdentifier idsDestination:deviceIdsDestination];
  v25 = [[HMDBulletinNotificationRegistrationSource alloc] initWithUserUUID:modelID2 deviceAddress:v24];
  v36 = v18;
  v26 = [[HMDAccessoryBulletinNotificationRegistrationRemote alloc] initWithAccessoryBulletinNotificationRegistration:v18 source:v25];
  v27 = objc_autoreleasePoolPush();
  selfCopy = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v33 = modelID;
    v31 = v30 = v6;
    *buf = 138543874;
    v40 = v31;
    v41 = 2112;
    v42 = v26;
    v43 = 2112;
    v44 = registrationCopy;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from MKF registration: %@", buf, 0x20u);

    v6 = v30;
    modelID = v33;
  }

  objc_autoreleasePoolPop(v27);

  return v26;
}

+ (id)cameraAccessModeRegistrationFromLocalRegistration:(id)registration
{
  v20 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  accessoryModelID = [registrationCopy accessoryModelID];
  conditions = [registrationCopy conditions];
  v7 = [self conditionsFromLocalConditions:conditions];

  v8 = [[HMDCameraAccessModeBulletinNotificationRegistration alloc] initWithAccessoryUUID:accessoryModelID conditions:v7];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v12;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = registrationCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from local registration: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v9);

  return v8;
}

+ (id)cameraReachabilityRegistrationFromLocalRegistration:(id)registration
{
  v20 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  accessoryModelID = [registrationCopy accessoryModelID];
  conditions = [registrationCopy conditions];
  v7 = [self conditionsFromLocalConditions:conditions];

  v8 = [[HMDCameraReachabilityBulletinNotificationRegistration alloc] initWithAccessoryUUID:accessoryModelID conditions:v7];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v12;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = registrationCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from local registration: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v9);

  return v8;
}

+ (id)cameraSignificantEventRegistrationFromLocalRegistration:(id)registration
{
  v26 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  accessoryModelID = [registrationCopy accessoryModelID];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(registrationCopy, "notificationModes")}];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(registrationCopy, "significantEventTypes")}];
  unsignedIntegerValue2 = [v8 unsignedIntegerValue];

  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(registrationCopy, "personFamiliarityOptions")}];
  unsignedIntegerValue3 = [v10 unsignedIntegerValue];

  conditions = [registrationCopy conditions];
  v13 = [self conditionsFromLocalConditions:conditions];

  v14 = [[HMDCameraSignificantEventBulletinNotificationRegistration alloc] initWithCameraIdentifier:accessoryModelID notificationModes:unsignedIntegerValue significantEventTypes:unsignedIntegerValue2 personFamiliarityOptions:unsignedIntegerValue3 conditions:v13];
  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    v20 = 138543874;
    v21 = v18;
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = registrationCopy;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from local registration: %@", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v15);

  return v14;
}

+ (id)endpointRegistrationFromLocalRegistration:(id)registration
{
  v23 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  v5 = +[HMDCoreData featuresDataSource];
  isRVCEnabled = [v5 isRVCEnabled];

  if (isRVCEnabled)
  {
    accessoryModelID = [registrationCopy accessoryModelID];
    endpointID = [registrationCopy endpointID];
    conditions = [registrationCopy conditions];
    v10 = [self conditionsFromLocalConditions:conditions];

    v11 = [[HMDEndpointBulletinNotificationRegistration alloc] initWithAccessoryUUID:accessoryModelID endpointID:endpointID conditions:v10];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543874;
      v18 = v15;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = registrationCopy;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from local registration: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)serviceRegistrationFromLocalRegistration:(id)registration
{
  v21 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  accessoryModelID = [registrationCopy accessoryModelID];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(registrationCopy, "serviceInstanceID")}];
  conditions = [registrationCopy conditions];
  v8 = [self conditionsFromLocalConditions:conditions];

  v9 = [[HMDServiceBulletinNotificationRegistration alloc] initWithAccessoryUUID:accessoryModelID serviceInstanceID:v6 conditions:v8];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v13;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = registrationCopy;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from local registration: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v10);

  return v9;
}

+ (id)matterRegistrationFromLocalRegistration:(id)registration home:(id)home
{
  v44[1] = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  homeCopy = home;
  v8 = +[HMDCoreData featuresDataSource];
  isRVCEnabled = [v8 isRVCEnabled];

  if (!isRVCEnabled)
  {
    v16 = 0;
    goto LABEL_11;
  }

  endpointID = [(HMDMatterBulletinNotificationRegistration *)registrationCopy endpointID];
  clusterID = [(HMDMatterBulletinNotificationRegistration *)registrationCopy clusterID];
  attributeID = [(HMDMatterBulletinNotificationRegistration *)registrationCopy attributeID];
  eventID = [(HMDMatterBulletinNotificationRegistration *)registrationCopy eventID];
  accessoryModelID = [(HMDMatterBulletinNotificationRegistration *)registrationCopy accessoryModelID];
  v14 = [homeCopy accessoryWithUUID:?];
  v36 = v14;
  if (attributeID)
  {
    v34 = eventID;
    v35 = attributeID;
    v15 = [HMDMatterPath PathWithAttributeID:attributeID endpointID:endpointID clusterID:clusterID accessory:v14];
  }

  else
  {
    if (!eventID)
    {
      v29 = objc_autoreleasePoolPush();
      selfCopy = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v39 = v32;
        v40 = 2112;
        v41 = registrationCopy;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@No attributeID or eventID found for local Matter registration=%@", buf, 0x16u);

        eventID = 0;
      }

      objc_autoreleasePoolPop(v29);
      v16 = 0;
      goto LABEL_10;
    }

    v34 = eventID;
    v35 = 0;
    v15 = [HMDMatterPath PathWithEventID:eventID endpointID:endpointID clusterID:clusterID accessory:v14];
  }

  v17 = v15;
  conditions = [(HMDBulletinNotificationRegistration *)registrationCopy conditions];
  v19 = [self conditionsFromLocalConditions:conditions];

  v20 = [HMDMatterBulletinNotificationRegistration alloc];
  v44[0] = v17;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
  v16 = [(HMDMatterBulletinNotificationRegistration *)v20 initWithMatterPaths:v21 conditions:v19];

  v22 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v33 = homeCopy;
    v25 = clusterID;
    v27 = v26 = endpointID;
    *buf = 138543874;
    v39 = v27;
    v40 = 2112;
    v41 = v16;
    v42 = 2112;
    v43 = registrationCopy;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from local registration: %@", buf, 0x20u);

    endpointID = v26;
    clusterID = v25;
    homeCopy = v33;
  }

  objc_autoreleasePoolPop(v22);
  eventID = v34;
  attributeID = v35;
LABEL_10:

LABEL_11:

  return v16;
}

+ (id)accessoryRegistrationFromLocalRegistration:(id)registration
{
  v22 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  accessoryModelID = [registrationCopy accessoryModelID];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(registrationCopy, "serviceInstanceID")}];
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(registrationCopy, "characteristicInstanceID")}];
  conditions = [registrationCopy conditions];
  v9 = [self conditionsFromLocalConditions:conditions];

  v10 = [[HMDAccessoryBulletinNotificationRegistration alloc] initWithAccessoryUUID:accessoryModelID serviceInstanceID:v6 characteristicInstanceID:v7 conditions:v9];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier();
    v16 = 138543874;
    v17 = v14;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = registrationCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from local registration: %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v11);

  return v10;
}

+ (id)adjustedOffsetFromMKFLocalElementTimePeriodSunriseSunSet:(id)set
{
  offset = [set offset];
  hour = [offset hour];
  v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v6 = v5;
  if (hour && hour != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 setHour:hour];
  }

  minute = [offset minute];
  if (minute && minute != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 setMinute:minute];
  }

  return v6;
}

+ (id)timePeriodConditionFromLocalCondition:(id)condition
{
  v50 = *MEMORY[0x277D85DE8];
  conditionCopy = condition;
  startElement = [conditionCopy startElement];
  endElement = [conditionCopy endElement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = startElement;
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

      v10 = endElement;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      v13 = [HMDTimeOfDayTimePeriodElement alloc];
      hour = [v9 hour];
      unsignedIntegerValue = [hour unsignedIntegerValue];
      minute = [v9 minute];
      v17 = -[HMDTimeOfDayTimePeriodElement initWithHour:minute:](v13, "initWithHour:minute:", unsignedIntegerValue, [minute unsignedIntegerValue]);

      v18 = [HMDTimeOfDayTimePeriodElement alloc];
      hour2 = [v12 hour];
      unsignedIntegerValue2 = [hour2 unsignedIntegerValue];
      minute2 = [v12 minute];
      v22 = -[HMDTimeOfDayTimePeriodElement initWithHour:minute:](v18, "initWithHour:minute:", unsignedIntegerValue2, [minute2 unsignedIntegerValue]);

      v23 = [HMDTimePeriodNotificationCondition alloc];
      v24 = [(HMDTimePeriodNotificationCondition *)v23 initWithStartElement:v17 endElement:v22];

LABEL_19:
      goto LABEL_23;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = startElement;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;

      v28 = endElement;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = v29;

      v17 = [self adjustedOffsetFromMKFLocalElementTimePeriodSunriseSunSet:v27];
      v31 = [self adjustedOffsetFromMKFLocalElementTimePeriodSunriseSunSet:v30];
      v32 = [HMDSunriseSunsetTimePeriodElement alloc];
      significantEvent = [v27 significantEvent];
      v34 = [(HMDSunriseSunsetTimePeriodElement *)v32 initWithSignificantEvent:significantEvent offset:v17];

      v35 = [HMDSunriseSunsetTimePeriodElement alloc];
      significantEvent2 = [v30 significantEvent];
      v37 = [(HMDSunriseSunsetTimePeriodElement *)v35 initWithSignificantEvent:significantEvent2 offset:v31];

      v38 = [HMDTimePeriodNotificationCondition alloc];
      v24 = [(HMDTimePeriodNotificationCondition *)v38 initWithStartElement:v34 endElement:v37];

      goto LABEL_19;
    }
  }

  v39 = objc_autoreleasePoolPush();
  selfCopy = self;
  v41 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v42 = HMFGetLogIdentifier();
    v44 = 138543874;
    v45 = v42;
    v46 = 2112;
    v47 = startElement;
    v48 = 2112;
    v49 = endElement;
    _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unrecognized local time period start element: %@ end element: %@, unable to convert", &v44, 0x20u);
  }

  objc_autoreleasePoolPop(v39);
  v24 = 0;
LABEL_23:

  return v24;
}

+ (id)presenceConditionFromLocalCondition:(id)condition
{
  conditionCopy = condition;
  userModelIDs = [conditionCopy userModelIDs];
  v5 = [MEMORY[0x277CBEB98] set];
  if ([userModelIDs count])
  {
    anyObject = [userModelIDs anyObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && anyObject)
    {
      v8 = [userModelIDs na_map:&__block_literal_global_164559];
    }

    else
    {
      v8 = userModelIDs;
    }

    v9 = v8;

    v5 = v9;
  }

  v10 = [HMDPresenceNotificationCondition alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(conditionCopy, "presenceEventType")}];
  unsignedIntegerValue = [v11 unsignedIntegerValue];
  v13 = MEMORY[0x277CCABB0];
  presenceEventUserType = [conditionCopy presenceEventUserType];

  v15 = [v13 numberWithLongLong:presenceEventUserType];
  v16 = -[HMDPresenceNotificationCondition initWithPresenceEventType:presenceEventUserType:userUUIDs:](v10, "initWithPresenceEventType:presenceEventUserType:userUUIDs:", unsignedIntegerValue, [v15 unsignedIntegerValue], v5);

  return v16;
}

id __84__HMDBulletinNotificationRegistrationUtilities_presenceConditionFromLocalCondition___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

+ (id)conditionsFromLocalConditions:(id)conditions
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__HMDBulletinNotificationRegistrationUtilities_conditionsFromLocalConditions___block_invoke;
  v5[3] = &__block_descriptor_40_e35__16__0__MKFLocalBulletinCondition_8l;
  v5[4] = self;
  v3 = [conditions na_map:v5];

  return v3;
}

id __78__HMDBulletinNotificationRegistrationUtilities_conditionsFromLocalConditions___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    v7 = [HMDBulletinNotificationRegistrationUtilities presenceConditionFromLocalCondition:v6];
LABEL_11:
    v10 = v7;

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v6 = v9;

    v7 = [HMDBulletinNotificationRegistrationUtilities timePeriodConditionFromLocalCondition:v6];
    goto LABEL_11;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v14;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unrecognized local condition: %@, unable to convert", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v10 = 0;
LABEL_15:

  return v10;
}

+ (id)createLocalElementFromSunriseSunset:(id)sunset moc:(id)moc
{
  v5 = MEMORY[0x277CBE408];
  mocCopy = moc;
  sunsetCopy = sunset;
  v8 = +[MKFLocalElementTimePeriodSunriseSunSet entity];
  name = [v8 name];
  v10 = [v5 insertNewObjectForEntityForName:name inManagedObjectContext:mocCopy];

  significantEvent = [sunsetCopy significantEvent];
  [v10 setSignificantEvent:significantEvent];

  offset = [sunsetCopy offset];

  [v10 setOffset:offset];

  return v10;
}

+ (id)createLocalElementFromTimeOfDay:(id)day moc:(id)moc
{
  v5 = MEMORY[0x277CBE408];
  mocCopy = moc;
  dayCopy = day;
  v8 = +[MKFLocalElementTimePeriodTimeOfDay entity];
  name = [v8 name];
  v10 = [v5 insertNewObjectForEntityForName:name inManagedObjectContext:mocCopy];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dayCopy, "hour")}];
  [v10 setHour:v11];

  v12 = MEMORY[0x277CCABB0];
  minute = [dayCopy minute];

  v14 = [v12 numberWithUnsignedInteger:minute];
  [v10 setMinute:v14];

  return v10;
}

+ (id)createAndAddLocalTimePeriodConditionToRegistration:(id)registration moc:(id)moc condition:(id)condition
{
  mocCopy = moc;
  conditionCopy = condition;
  v10 = MEMORY[0x277CBE408];
  registrationCopy = registration;
  v12 = +[MKFLocalBulletinConditionTimePeriod entity];
  name = [v12 name];
  v14 = [v10 insertNewObjectForEntityForName:name inManagedObjectContext:mocCopy];

  startElement = [conditionCopy startElement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    endElement = [conditionCopy endElement];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      startElement2 = [conditionCopy startElement];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = startElement2;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      endElement2 = [conditionCopy endElement];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = endElement2;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;

      v24 = [self createLocalElementFromTimeOfDay:v20 moc:mocCopy];

      [v14 setStartElement:v24];
      v25 = [self createLocalElementFromTimeOfDay:v23 moc:mocCopy];
LABEL_20:
      startElement3 = v25;

      [v14 setEndElement:startElement3];
      goto LABEL_21;
    }
  }

  else
  {
  }

  startElement3 = [conditionCopy startElement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    endElement3 = [conditionCopy endElement];
    objc_opt_class();
    v28 = objc_opt_isKindOfClass();

    if ((v28 & 1) == 0)
    {
      goto LABEL_22;
    }

    startElement4 = [conditionCopy startElement];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = startElement4;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    endElement4 = [conditionCopy endElement];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = endElement4;
    }

    else
    {
      v33 = 0;
    }

    v23 = v33;

    v34 = [self createLocalElementFromSunriseSunset:v31 moc:mocCopy];

    [v14 setStartElement:v34];
    v25 = [self createLocalElementFromSunriseSunset:v23 moc:mocCopy];
    goto LABEL_20;
  }

LABEL_21:

LABEL_22:
  [v14 setRegistration:registrationCopy];
  [registrationCopy addConditionsObject:v14];

  return v14;
}

+ (id)createAndAddLocalPresenceConditionToRegistration:(id)registration moc:(id)moc condition:(id)condition
{
  v7 = MEMORY[0x277CBE408];
  conditionCopy = condition;
  mocCopy = moc;
  registrationCopy = registration;
  v11 = +[MKFLocalBulletinConditionPresence entity];
  name = [v11 name];
  v13 = [v7 insertNewObjectForEntityForName:name inManagedObjectContext:mocCopy];

  [v13 setPresenceEventType:{objc_msgSend(conditionCopy, "presenceEventType")}];
  [v13 setPresenceEventUserType:{objc_msgSend(conditionCopy, "presenceEventUserType")}];
  userUUIDs = [conditionCopy userUUIDs];

  [v13 setUserModelIDs:userUUIDs];
  [v13 setRegistration:registrationCopy];
  [registrationCopy addConditionsObject:v13];

  return v13;
}

+ (id)createAndAddLocalConditionsToRegistration:(id)registration moc:(id)moc conditions:(id)conditions
{
  registrationCopy = registration;
  mocCopy = moc;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __105__HMDBulletinNotificationRegistrationUtilities_createAndAddLocalConditionsToRegistration_moc_conditions___block_invoke;
  v14[3] = &unk_27867C638;
  v16 = mocCopy;
  selfCopy = self;
  v15 = registrationCopy;
  v10 = mocCopy;
  v11 = registrationCopy;
  v12 = [conditions na_map:v14];

  return v12;
}

id __105__HMDBulletinNotificationRegistrationUtilities_createAndAddLocalConditionsToRegistration_moc_conditions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    v7 = [*(a1 + 48) createAndAddLocalPresenceConditionToRegistration:*(a1 + 32) moc:*(a1 + 40) condition:v6];
LABEL_11:
    v10 = v7;

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v6 = v9;

    v7 = [*(a1 + 48) createAndAddLocalTimePeriodConditionToRegistration:*(a1 + 32) moc:*(a1 + 40) condition:v6];
    goto LABEL_11;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

@end