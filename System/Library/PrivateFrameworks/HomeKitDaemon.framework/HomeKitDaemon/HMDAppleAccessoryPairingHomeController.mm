@interface HMDAppleAccessoryPairingHomeController
+ (id)logCategory;
- (BOOL)handleMessage:(id)message from:(id)from;
- (HMDAppleAccessoryPairingHomeController)initWithState:(id)state homeManager:(id)manager dataSource:(id)source;
- (id)logIdentifier;
- (id)workContext;
- (void)_handleDeviceNotification:(id)notification;
- (void)checkDeviceVersionAndSendUpgrade;
- (void)cleanupLegacyZone;
- (void)localZone:(id)zone didProcessModelCreation:(id)creation;
- (void)localZone:(id)zone didProcessModelDeletion:(id)deletion;
- (void)localZone:(id)zone didProcessModelUpdate:(id)update;
- (void)postNotificationOfDeviceUpdated;
- (void)postSoftwareUpdateEventForDescriptor:(id)descriptor;
- (void)postSoftwareUpdateEventForSoftwareUpdate:(id)update;
- (void)processHMDAppleMediaAccessoryModel:(id)model;
- (void)processHMDResidentDeviceModel:(id)model;
- (void)startWithLocalZone:(id)zone;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDAppleAccessoryPairingHomeController

- (id)logIdentifier
{
  state = [(HMDAppleAccessoryPairingHomeController *)self state];
  accessory = [state accessory];
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)processHMDAppleMediaAccessoryModel:(id)model
{
  v77 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  deviceUUID = [modelCopy deviceUUID];
  if (deviceUUID)
  {
  }

  else
  {
    device = [modelCopy device];

    if (device)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = HMFGetLogIdentifier();
        v71 = 138543618;
        v72 = v18;
        v73 = 2112;
        v74 = modelCopy;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory model does not yet have a device identifier: %@", &v71, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      goto LABEL_46;
    }
  }

  state = [(HMDAppleAccessoryPairingHomeController *)self state];
  deviceIdentifier = [state deviceIdentifier];

  if (deviceIdentifier)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      state2 = [(HMDAppleAccessoryPairingHomeController *)selfCopy2 state];
      deviceIdentifier2 = [state2 deviceIdentifier];
      v71 = 138543874;
      v72 = v11;
      v73 = 2112;
      v74 = deviceIdentifier2;
      v75 = 2112;
      v76 = modelCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Already have a device identifier %@ for %@", &v71, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    device2 = [modelCopy device];
    identifier = [device2 identifier];
    uUIDString = [identifier UUIDString];
    v22 = uUIDString;
    if (uUIDString)
    {
      deviceUUID2 = uUIDString;
    }

    else
    {
      deviceUUID2 = [modelCopy deviceUUID];
    }

    v24 = deviceUUID2;

    v25 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v27 = HMFGetOSLogHandle();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      if (v28)
      {
        v29 = HMFGetLogIdentifier();
        state3 = [(HMDAppleAccessoryPairingHomeController *)selfCopy3 state];
        accessory = [state3 accessory];
        uuid = [accessory uuid];
        v71 = 138543874;
        v72 = v29;
        v73 = 2112;
        v74 = uuid;
        v75 = 2112;
        v76 = v24;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Looks like deviceIdentifier for %@ is: %@", &v71, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      v33 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v24];
      state4 = [(HMDAppleAccessoryPairingHomeController *)selfCopy3 state];
      [state4 setDeviceIdentifier:v33];

      dataSource = [(HMDAppleAccessoryPairingHomeController *)selfCopy3 dataSource];
      state5 = [(HMDAppleAccessoryPairingHomeController *)selfCopy3 state];
      [dataSource updatePairingAccessoryState:state5];
    }

    else
    {
      if (v28)
      {
        v37 = HMFGetLogIdentifier();
        v71 = 138543618;
        v72 = v37;
        v73 = 2112;
        v74 = modelCopy;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Still don't have a device identifier for %@", &v71, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
    }
  }

  state6 = [(HMDAppleAccessoryPairingHomeController *)self state];
  device3 = [state6 device];

  if (device3)
  {
    v40 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = HMFGetLogIdentifier();
      state7 = [(HMDAppleAccessoryPairingHomeController *)selfCopy4 state];
      device4 = [state7 device];
      v71 = 138543874;
      v72 = v43;
      v73 = 2112;
      v74 = device4;
      v75 = 2112;
      v76 = modelCopy;
      _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Already have a device %@ for %@", &v71, 0x20u);
    }

    objc_autoreleasePoolPop(v40);
  }

  else
  {
    device5 = [modelCopy device];
    if (device5)
    {
      v47 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = HMFGetLogIdentifier();
        v71 = 138543618;
        v72 = v50;
        v73 = 2112;
        v74 = device5;
        _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@And we have a device representation: %@", &v71, 0x16u);
      }

      objc_autoreleasePoolPop(v47);
      state8 = [(HMDAppleAccessoryPairingHomeController *)selfCopy5 state];
      [state8 setDevice:device5];

      dataSource2 = [(HMDAppleAccessoryPairingHomeController *)selfCopy5 dataSource];
      state9 = [(HMDAppleAccessoryPairingHomeController *)selfCopy5 state];
      [dataSource2 updatePairingAccessoryState:state9];
    }
  }

  state10 = [(HMDAppleAccessoryPairingHomeController *)self state];
  device6 = [state10 device];
  if (device6)
  {
    device7 = device6;

LABEL_34:
    dataSource3 = [(HMDAppleAccessoryPairingHomeController *)self dataSource];
    hh1ControllerIdentity = [dataSource3 hh1ControllerIdentity];

    v59 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v61 = HMFGetOSLogHandle();
    v62 = v61;
    if (hh1ControllerIdentity)
    {
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v63 = HMFGetLogIdentifier();
        v71 = 138543874;
        v72 = v63;
        v73 = 2112;
        v74 = device7;
        v75 = 2112;
        v76 = hh1ControllerIdentity;
        _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@Updated pairing identity for device %@: %@", &v71, 0x20u);
      }

      objc_autoreleasePoolPop(v59);
      v64 = +[HMDIdentityRegistry sharedRegistry];
      [v64 registerIdentity:hh1ControllerIdentity device:device7 object:selfCopy6];
    }

    else
    {
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v65 = HMFGetLogIdentifier();
        v71 = 138543362;
        v72 = v65;
        _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_ERROR, "%{public}@No Pairing Identity. This will cause issues.", &v71, 0xCu);
      }

      objc_autoreleasePoolPop(v59);
    }

    goto LABEL_42;
  }

  device7 = [modelCopy device];

  if (device7)
  {
    goto LABEL_34;
  }

LABEL_42:
  state11 = [(HMDAppleAccessoryPairingHomeController *)self state];
  device8 = [state11 device];
  if (device8)
  {

LABEL_45:
    upgradeCheckTimer = [(HMDAppleAccessoryPairingHomeController *)self upgradeCheckTimer];
    [upgradeCheckTimer fire];

    goto LABEL_46;
  }

  state12 = [(HMDAppleAccessoryPairingHomeController *)self state];
  deviceIdentifier3 = [state12 deviceIdentifier];

  if (deviceIdentifier3)
  {
    goto LABEL_45;
  }

LABEL_46:
}

- (void)processHMDResidentDeviceModel:(id)model
{
  device = [model device];
  state = [(HMDAppleAccessoryPairingHomeController *)self state];
  [state setDevice:device];

  dataSource = [(HMDAppleAccessoryPairingHomeController *)self dataSource];
  state2 = [(HMDAppleAccessoryPairingHomeController *)self state];
  [dataSource updatePairingAccessoryState:state2];

  state3 = [(HMDAppleAccessoryPairingHomeController *)self state];
  device2 = [state3 device];
  identifier = [device2 identifier];
  state4 = [(HMDAppleAccessoryPairingHomeController *)self state];
  deviceIdentifier = [state4 deviceIdentifier];
  v13 = [identifier isEqual:deviceIdentifier];

  if (v13)
  {
    upgradeCheckTimer = [(HMDAppleAccessoryPairingHomeController *)self upgradeCheckTimer];
    [upgradeCheckTimer fire];
  }
}

- (void)localZone:(id)zone didProcessModelUpdate:(id)update
{
  v25 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  updateCopy = update;
  model = [updateCopy model];
  convertToHMDModelObject = [model convertToHMDModelObject];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [convertToHMDModelObject debugString:0];
    v21 = 138543618;
    v22 = v13;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Got Legacy Pairing update:\n%@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = convertToHMDModelObject;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    [(HMDAppleAccessoryPairingHomeController *)selfCopy processHMDAppleMediaAccessoryModel:v17];
  }

  v18 = v15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (v20)
  {
    [(HMDAppleAccessoryPairingHomeController *)selfCopy processHMDResidentDeviceModel:v20];
  }
}

- (void)localZone:(id)zone didProcessModelDeletion:(id)deletion
{
  v28 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  deletionCopy = deletion;
  model = [deletionCopy model];
  convertToHMDModelObject = [model convertToHMDModelObject];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [convertToHMDModelObject debugString:0];
    v24 = 138543618;
    v25 = v13;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Got Legacy Pairing deletion:\n%@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  uuid = [convertToHMDModelObject uuid];
  state = [(HMDAppleAccessoryPairingHomeController *)selfCopy state];
  accessory = [state accessory];
  uuid2 = [accessory uuid];
  v19 = [uuid hmf_isEqualToUUID:uuid2];

  if (v19)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Got Legacy Pairing deletion for accessory that is being setup removing HH1 zone", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    [(HMDAppleAccessoryPairingHomeController *)v21 cleanupLegacyZone];
  }
}

- (void)localZone:(id)zone didProcessModelCreation:(id)creation
{
  v22 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  creationCopy = creation;
  model = [creationCopy model];
  convertToHMDModelObject = [model convertToHMDModelObject];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [convertToHMDModelObject debugString:0];
    v18 = 138543618;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Got Legacy Pairing creation:\n%@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = convertToHMDModelObject;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    [(HMDAppleAccessoryPairingHomeController *)selfCopy processHMDResidentDeviceModel:v17];
  }
}

- (void)_handleDeviceNotification:(id)notification
{
  v11 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Got device notification.", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDAppleAccessoryPairingHomeController *)selfCopy checkDeviceVersionAndSendUpgrade];
}

- (void)postSoftwareUpdateEventForDescriptor:(id)descriptor
{
  v43 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  state = [(HMDAppleAccessoryPairingHomeController *)self state];
  accessory = [state accessory];
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];

  if (uUIDString)
  {
    v9 = objc_alloc(MEMORY[0x277CD1E50]);
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v10 = [v9 initWithDescriptor:descriptorCopy eventSource:uUIDString eventTimestamp:?];
    state2 = [(HMDAppleAccessoryPairingHomeController *)self state];
    accessory2 = [state2 accessory];
    uuid2 = [accessory2 uuid];

    homeManager = [(HMDAppleAccessoryPairingHomeController *)self homeManager];
    state3 = [(HMDAppleAccessoryPairingHomeController *)self state];
    homeUUID = [state3 homeUUID];
    v17 = [homeManager _homeWithUUID:homeUUID];

    uuid3 = [v17 uuid];
    v19 = uuid3;
    if (uuid2 && uuid3)
    {
      v20 = [MEMORY[0x277CD16F0] topicFromSuffixID:*MEMORY[0x277CCEA98] homeUUID:uuid3 accessoryUUID:uuid2];
      if (v20)
      {
        state4 = [(HMDAppleAccessoryPairingHomeController *)self state];
        [state4 setLastPostedSoftwareUpdateDescriptor:descriptorCopy];

        homeManager2 = [(HMDAppleAccessoryPairingHomeController *)self homeManager];
        eventForwarder = [homeManager2 eventForwarder];
        [eventForwarder forwardEvent:v10 topic:v20 completion:0];
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        selfCopy = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v35 = v36 = v32;
          *buf = 138543874;
          v38 = v35;
          v39 = 2112;
          v40 = v19;
          v41 = 2112;
          v42 = uuid2;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to get SU topic with homeUUID: %@, accessoryUUID: %@", buf, 0x20u);

          v32 = v36;
        }

        objc_autoreleasePoolPop(v32);
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543874;
        v38 = v31;
        v39 = 2112;
        v40 = v19;
        v41 = 2112;
        v42 = uuid2;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unexpected nil value in homeUUID: %@, accessoryUUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v28);
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Event source was nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
  }
}

- (void)postSoftwareUpdateEventForSoftwareUpdate:(id)update
{
  v43 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  state = [updateCopy state];
  if (state <= 2)
  {
    selfCopy4 = self;
    v6 = 3;
    v7 = 14;
    v8 = 15;
    if (state != 2)
    {
      v8 = 0;
    }

    if (state != 1)
    {
      v7 = v8;
    }

    if (state)
    {
      v6 = v7;
    }

    goto LABEL_17;
  }

  if (state == 3)
  {
    selfCopy4 = self;
    v6 = 9;
LABEL_17:
    v34 = v6;
LABEL_18:
    v13 = objc_alloc(MEMORY[0x277CD1E48]);
    downloadSize = [updateCopy downloadSize];
    v31 = v13;
    if (downloadSize)
    {
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(updateCopy, "downloadSize")}];
    }

    else
    {
      v40 = 0;
    }

    documentationMetadata = [updateCopy documentationMetadata];
    v36 = [documentationMetadata URL];
    absoluteURL = [v36 absoluteURL];
    documentationMetadata2 = [updateCopy documentationMetadata];
    digest = [documentationMetadata2 digest];
    [digest algorithm];
    v25 = HMFDigestAlgorithmToString();
    documentationMetadata3 = [updateCopy documentationMetadata];
    digest2 = [documentationMetadata3 digest];
    value = [digest2 value];
    v14 = MEMORY[0x277CCABB0];
    version = [updateCopy version];
    v15 = [v14 numberWithUnsignedInteger:{objc_msgSend(version, "majorVersion")}];
    v16 = MEMORY[0x277CCABB0];
    version2 = [updateCopy version];
    v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(version2, "minorVersion")}];
    v19 = MEMORY[0x277CCABB0];
    version3 = [updateCopy version];
    v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(version3, "updateVersion")}];
    version4 = [updateCopy version];
    buildVersion = [version4 buildVersion];
    LOBYTE(v24) = 1;
    v35 = [v31 initWithStatus:v34 downloadSize:v40 humanReadableUpdateName:0 rampEnabled:0 errorCode:0 serverAssetURL:absoluteURL serverAssetAlgorithm:v25 serverAssetMeasurement:value majorVersion:v15 minorVersion:v18 updateVersion:v21 buildVersion:buildVersion softwareVersionRequiresMetadata:v24];

    if (downloadSize)
    {
    }

    [(HMDAppleAccessoryPairingHomeController *)selfCopy4 postSoftwareUpdateEventForDescriptor:v35];

    goto LABEL_24;
  }

  if (state == 4)
  {
    selfCopy4 = self;
    v6 = 2;
    goto LABEL_17;
  }

  if (state != 5)
  {
    selfCopy4 = self;
    v34 = 0;
    goto LABEL_18;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v42 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@HMSoftwareUpdateRequested is not supported for HomePod in the HH1 shim", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
LABEL_24:
}

- (void)checkDeviceVersionAndSendUpgrade
{
  v33 = *MEMORY[0x277D85DE8];
  state = [(HMDAppleAccessoryPairingHomeController *)self state];
  deviceIdentifier = [state deviceIdentifier];
  if (deviceIdentifier)
  {

    goto LABEL_4;
  }

  state2 = [(HMDAppleAccessoryPairingHomeController *)self state];
  device = [state2 device];

  if (device)
  {
LABEL_4:
    dataSource = [(HMDAppleAccessoryPairingHomeController *)self dataSource];
    state3 = [(HMDAppleAccessoryPairingHomeController *)self state];
    device2 = [state3 device];
    identifier = [device2 identifier];
    v11 = [dataSource deviceForIdentifier:identifier];

    if (v11 && ([v11 version], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(v11, "version"), v14 = objc_claimAutoreleasedReturnValue(), +[HMDHomeKitVersion version10](HMDHomeKitVersion, "version10"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isAtLeastVersion:", v15), v15, v14, v13, v16))
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v20;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Previously legacy HomePod has been updated to a HH2.0 viable HomeKit", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      [(HMDAppleAccessoryPairingHomeController *)selfCopy postNotificationOfDeviceUpdated];
      [(HMDAppleAccessoryPairingHomeController *)selfCopy cleanupLegacyZone];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v24;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Querying HomePod to determine if it has upgradable software.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      workContext = [(HMDAppleAccessoryPairingHomeController *)selfCopy2 workContext];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __74__HMDAppleAccessoryPairingHomeController_checkDeviceVersionAndSendUpgrade__block_invoke;
      v30[3] = &unk_27868A728;
      v30[4] = selfCopy2;
      [workContext performBlock:v30];
    }

    return;
  }

  v26 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543362;
    v32 = v29;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to query HomePod for update status (no device).", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v26);
}

void __74__HMDAppleAccessoryPairingHomeController_checkDeviceVersionAndSendUpgrade__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) queryFuture];

  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "suppressedQueries")}];
      *buf = 138543618;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Outstanding query request to HomePod, suppressing query (suppressed %@ so far)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) setSuppressedQueries:{objc_msgSend(*(a1 + 32), "suppressedQueries") + 1}];
  }

  else
  {
    [*(a1 + 32) setSuppressedQueries:0];
    v8 = *(a1 + 32);
    v9 = [v8 state];
    v10 = [v9 accessory];
    v11 = [v10 uuid];
    v12 = __sendMessageWithFutureResult(v8, v11, *MEMORY[0x277CD1070], MEMORY[0x277CBEC10]);

    v13 = [*(a1 + 32) workContext];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __74__HMDAppleAccessoryPairingHomeController_checkDeviceVersionAndSendUpgrade__block_invoke_100;
    v20[3] = &unk_27867FAF0;
    v20[4] = *(a1 + 32);
    v14 = [v12 inContext:v13 then:v20];
    v15 = [*(a1 + 32) workContext];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __74__HMDAppleAccessoryPairingHomeController_checkDeviceVersionAndSendUpgrade__block_invoke_106;
    v18[3] = &unk_27867FAF0;
    v19 = *(a1 + 32);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __74__HMDAppleAccessoryPairingHomeController_checkDeviceVersionAndSendUpgrade__block_invoke_107;
    v17[3] = &unk_278689CD8;
    v17[4] = v19;
    v16 = [v14 inContext:v15 then:v18 orRecover:v17];
    [*(a1 + 32) setQueryFuture:v16];
  }
}

uint64_t __74__HMDAppleAccessoryPairingHomeController_checkDeviceVersionAndSendUpgrade__block_invoke_100(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) setSuppressedQueries:0];
  v4 = *MEMORY[0x277CD1090];
  v5 = [v3 hmf_dataForKey:*MEMORY[0x277CD1090]];
  if (v5)
  {
    v30 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v30];
    v7 = v30;
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (v6)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v34 = v12;
        v35 = 2112;
        v36 = v6;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Requesting device update to: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      [*(a1 + 32) postSoftwareUpdateEventForSoftwareUpdate:v6];
      v31 = v4;
      v32 = v5;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v14 = *(a1 + 32);
      v15 = [v14 state];
      v16 = [v15 accessory];
      v17 = [v16 uuid];
      v18 = __sendMessageWithFutureResult(v14, v17, *MEMORY[0x277CD1080], v13);
      if (!v18)
      {
        _HMFPreconditionFailure();
      }

      v19 = v18;

      v20 = 3;
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v34 = v27;
        v35 = 2112;
        v36 = v7;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive software update from software update data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v28 = v7;
      if (v28)
      {
        v13 = v28;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
        objc_claimAutoreleasedReturnValue();
        v13 = 0;
      }

      v20 = 2;
    }
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v25;
      v35 = 2112;
      v36 = v21;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Payload did not have software update status: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = v21;
    if (v26)
    {
      v6 = v26;
      v20 = 2;
      v7 = v6;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
      v6 = 0;
      v7 = 0;
      v20 = 2;
    }
  }

  return v20;
}

uint64_t __74__HMDAppleAccessoryPairingHomeController_checkDeviceVersionAndSendUpgrade__block_invoke_106(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) setSuppressedQueries:0];
  [*(a1 + 32) setQueryFuture:0];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Message update response: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  return 1;
}

uint64_t __74__HMDAppleAccessoryPairingHomeController_checkDeviceVersionAndSendUpgrade__block_invoke_107(uint64_t a1)
{
  [*(a1 + 32) setQueryFuture:0];
  if ([*(a1 + 32) suppressedQueries])
  {
    [*(a1 + 32) setSuppressedQueries:0];
    [*(a1 + 32) checkDeviceVersionAndSendUpgrade];
  }

  return 1;
}

- (void)postNotificationOfDeviceUpdated
{
  state = [(HMDAppleAccessoryPairingHomeController *)self state];
  lastPostedSoftwareUpdateDescriptor = [state lastPostedSoftwareUpdateDescriptor];

  if (lastPostedSoftwareUpdateDescriptor)
  {
    [lastPostedSoftwareUpdateDescriptor setStatus:2];
    [(HMDAppleAccessoryPairingHomeController *)self postSoftwareUpdateEventForDescriptor:lastPostedSoftwareUpdateDescriptor];
  }

  homeManager = [(HMDAppleAccessoryPairingHomeController *)self homeManager];
  state2 = [(HMDAppleAccessoryPairingHomeController *)self state];
  homeUUID = [state2 homeUUID];
  v7 = [homeManager _homeWithUUID:homeUUID];

  state3 = [(HMDAppleAccessoryPairingHomeController *)self state];
  accessory = [state3 accessory];
  uuid = [accessory uuid];
  v11 = [v7 accessoryWithUUID:uuid];

  if (v11)
  {
    dataSource = [(HMDAppleAccessoryPairingHomeController *)self dataSource];
    bulletinBoard = [dataSource bulletinBoard];
    [bulletinBoard insertHH2SoftwareUpdateCompleteEventBulletinForAccessory:v11];
  }
}

- (void)cleanupLegacyZone
{
  upgradeCheckTimer = [(HMDAppleAccessoryPairingHomeController *)self upgradeCheckTimer];
  [upgradeCheckTimer suspend];

  homeManager = [(HMDAppleAccessoryPairingHomeController *)self homeManager];
  workQueue = [homeManager workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDAppleAccessoryPairingHomeController_cleanupLegacyZone__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __59__HMDAppleAccessoryPairingHomeController_cleanupLegacyZone__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) localZone];
  v3 = [v2 localDatabase];
  v4 = [*(a1 + 32) localZone];
  v5 = [v3 removeZone:v4];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HMDAppleAccessoryPairingHomeController_cleanupLegacyZone__block_invoke_2;
  v9[3] = &unk_27868A200;
  v9[4] = *(a1 + 32);
  v6 = [v5 addSuccessBlock:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HMDAppleAccessoryPairingHomeController_cleanupLegacyZone__block_invoke_96;
  v8[3] = &unk_27868A250;
  v8[4] = *(a1 + 32);
  v7 = [v5 addFailureBlock:v8];
}

void __59__HMDAppleAccessoryPairingHomeController_cleanupLegacyZone__block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Successfully removed legacy pairing zone.", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) homeManager];
  v9 = [v8 legacyAccessoryPairingController];
  v10 = [*(a1 + 32) state];
  v11 = [v10 cloudZoneID];
  [v9 removeControllerForZone:v11];
}

void __59__HMDAppleAccessoryPairingHomeController_cleanupLegacyZone__block_invoke_96(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove temporary pairing zone: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (id)workContext
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMDAppleAccessoryPairingHomeController_workContext__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  if (workContext__hmf_once_t20 != -1)
  {
    dispatch_once(&workContext__hmf_once_t20, block);
  }

  return workContext__hmf_once_v21;
}

void __53__HMDAppleAccessoryPairingHomeController_workContext__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D0F7A8]);
  v6 = [*(a1 + 32) homeManager];
  v3 = [v6 workQueue];
  v4 = [v2 initWithQueue:v3];
  v5 = workContext__hmf_once_v21;
  workContext__hmf_once_v21 = v4;
}

- (void)startWithLocalZone:(id)zone
{
  v31 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  if (!self->_localZone)
  {
    objc_storeStrong(&self->_localZone, zone);
    localZone = [(HMDAppleAccessoryPairingHomeController *)self localZone];
    [localZone addObserverForAllModels:self];

    localZone2 = [(HMDAppleAccessoryPairingHomeController *)self localZone];
    [localZone2 startUp];

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      state = [(HMDAppleAccessoryPairingHomeController *)selfCopy state];
      cloudZoneID = [state cloudZoneID];
      name = [cloudZoneID name];
      *buf = 138543618;
      v28 = v11;
      v29 = 2112;
      v30 = name;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Starting state machine for zone: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    localZone3 = [(HMDAppleAccessoryPairingHomeController *)selfCopy localZone];
    mirror = [localZone3 mirror];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = mirror;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    v19 = [v18 registerSubscriptionForExternalRecordType:0];
    v20 = [MEMORY[0x277D17108] optionsWithLabel:@"Startup zone fetch"];
    v21 = [v18 performCloudPullWithOptions:v20];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __61__HMDAppleAccessoryPairingHomeController_startWithLocalZone___block_invoke;
    v26[3] = &unk_27868A200;
    v26[4] = selfCopy;
    v22 = [v21 addSuccessBlock:v26];

    startUp = [v18 startUp];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __61__HMDAppleAccessoryPairingHomeController_startWithLocalZone___block_invoke_92;
    v25[3] = &unk_27868A200;
    v25[4] = selfCopy;
    v24 = [startUp addSuccessBlock:v25];
  }
}

void __61__HMDAppleAccessoryPairingHomeController_startWithLocalZone___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Initial zone fetch completed, checking for update.", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) upgradeCheckTimer];
  [v8 resume];
}

void __61__HMDAppleAccessoryPairingHomeController_startWithLocalZone___block_invoke_92(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) state];
    v9 = [v8 cloudZoneID];
    v10 = [v9 name];
    *buf = 138543618;
    v43 = v7;
    v44 = 2112;
    v45 = v10;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@State machine completely started for zone: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = [*(a1 + 32) localZone];
  v12 = [*(a1 + 32) state];
  v13 = [v12 accessory];
  v14 = [v13 uuid];
  v41 = 0;
  v15 = [v11 fetchModelWithModelID:v14 error:&v41];
  v16 = v41;

  if (v15)
  {
    v17 = v15;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    v20 = [v19 convertToHMDModelObject];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;

      if (v24)
      {
        [*(a1 + 32) processHMDAppleMediaAccessoryModel:v24];
      }

      else
      {
        v36 = objc_autoreleasePoolPush();
        v37 = *(a1 + 32);
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v39 = v40 = v36;
          *buf = 138543618;
          v43 = v39;
          v44 = 2112;
          v45 = v22;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Expected a HMDAppleMediaAccessory but %@ does not look like one.", buf, 0x16u);

          v36 = v40;
        }

        objc_autoreleasePoolPop(v36);
      }
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = *(a1 + 32);
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v35;
        v44 = 2112;
        v45 = v17;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Unable to extract a HMDBSO from %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 32);
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      v29 = [*(a1 + 32) state];
      v30 = [v29 accessory];
      v31 = [v30 uuid];
      *buf = 138543874;
      v43 = v28;
      v44 = 2112;
      v45 = v31;
      v46 = 2112;
      v47 = v16;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch extant HMDMediaAccessoryModel for %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
  }
}

- (BOOL)handleMessage:(id)message from:(id)from
{
  v46 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  fromCopy = from;
  v8 = [messageCopy uuidForKey:*MEMORY[0x277CCF0B0]];
  name = [messageCopy name];
  v10 = [name isEqual:*MEMORY[0x277CD2070]];

  if (v10)
  {
    state = [(HMDAppleAccessoryPairingHomeController *)self state];
    accessory = [state accessory];
    uuid = [accessory uuid];
    v14 = [v8 isEqual:uuid];

    if (v14)
    {
      uuid2 = [fromCopy uuid];
      state2 = [(HMDAppleAccessoryPairingHomeController *)self state];
      [state2 setHomeUUID:uuid2];

      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = HMFGetLogIdentifier();
        state3 = [(HMDAppleAccessoryPairingHomeController *)selfCopy state];
        accessory2 = [state3 accessory];
        uuid3 = [accessory2 uuid];
        [fromCopy uuid];
        v24 = v37 = v17;
        *buf = 138543874;
        v41 = v20;
        v42 = 2112;
        v43 = uuid3;
        v44 = 2112;
        v45 = v24;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Adding Legacy HomePod %@ To Home: %@", buf, 0x20u);

        v17 = v37;
      }

      objc_autoreleasePoolPop(v17);
      state4 = [(HMDAppleAccessoryPairingHomeController *)selfCopy state];
      [state4 setState:1];

      dataSource = [(HMDAppleAccessoryPairingHomeController *)selfCopy dataSource];
      state5 = [(HMDAppleAccessoryPairingHomeController *)selfCopy state];
      [dataSource updatePairingAccessoryState:state5];
    }
  }

  else
  {
    name2 = [messageCopy name];
    v29 = [name2 isEqual:*MEMORY[0x277CD24F0]];

    if (v29)
    {
      state6 = [(HMDAppleAccessoryPairingHomeController *)self state];
      accessory3 = [state6 accessory];
      uuid4 = [accessory3 uuid];
      v33 = [v8 isEqual:uuid4];

      if (v33)
      {
        homeManager = [(HMDAppleAccessoryPairingHomeController *)self homeManager];
        workQueue = [homeManager workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __61__HMDAppleAccessoryPairingHomeController_handleMessage_from___block_invoke;
        block[3] = &unk_27868A750;
        block[4] = self;
        v39 = v8;
        dispatch_async(workQueue, block);
      }
    }
  }

  return 0;
}

void __61__HMDAppleAccessoryPairingHomeController_handleMessage_from___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) localZone];
  v2 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
  v3 = [MEMORY[0x277D17108] optionsWithLabel:@"Accessory Remove"];
  v4 = [v5 removeModelIDs:v2 options:v3];
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  upgradeCheckTimer = [(HMDAppleAccessoryPairingHomeController *)self upgradeCheckTimer];

  if (upgradeCheckTimer == fireCopy)
  {

    [(HMDAppleAccessoryPairingHomeController *)self checkDeviceVersionAndSendUpgrade];
  }
}

- (HMDAppleAccessoryPairingHomeController)initWithState:(id)state homeManager:(id)manager dataSource:(id)source
{
  stateCopy = state;
  managerCopy = manager;
  sourceCopy = source;
  v18.receiver = self;
  v18.super_class = HMDAppleAccessoryPairingHomeController;
  v12 = [(HMDAppleAccessoryPairingHomeController *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_state, state);
    objc_storeStrong(&v13->_homeManager, manager);
    objc_storeStrong(&v13->_dataSource, source);
    v14 = [sourceCopy timerWithInterval:12 options:120.0];
    upgradeCheckTimer = v13->_upgradeCheckTimer;
    v13->_upgradeCheckTimer = v14;

    [(HMFTimer *)v13->_upgradeCheckTimer setDelegate:v13];
    v13->_suppressedQueries = 0;
    notificationCenter = [sourceCopy notificationCenter];
    [notificationCenter addObserver:v13 selector:sel__handleDeviceNotification_ name:@"HMDAppleAccountManagerResolved" object:0];
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t54_203342 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t54_203342, &__block_literal_global_203343);
  }

  v3 = logCategory__hmf_once_v55_203344;

  return v3;
}

void __53__HMDAppleAccessoryPairingHomeController_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v55_203344;
  logCategory__hmf_once_v55_203344 = v0;
}

@end