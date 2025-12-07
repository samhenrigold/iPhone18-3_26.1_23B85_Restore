@interface HMDMatterUARPControllerDelegate
+ (id)logCategory;
- (BOOL)sendMessageToAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error;
- (HMDAccessoryFirmwareUpdateManager)accessoryFirmwareUpdateManager;
- (HMDMatterUARPControllerDelegate)initWithAccessoryFirmwareUpdateManager:(id)manager;
- (id)newUploader;
- (void)assetAvailablityUpdateForAccessory:(id)accessory assetID:(id)d;
@end

@implementation HMDMatterUARPControllerDelegate

- (HMDAccessoryFirmwareUpdateManager)accessoryFirmwareUpdateManager
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryFirmwareUpdateManager);

  return WeakRetained;
}

- (id)newUploader
{
  v12 = *MEMORY[0x277D85DE8];
  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {

    return objc_alloc_init(HMDMatterUARPUploader);
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543618;
      v9 = v7;
      v10 = 2080;
      v11 = "[HMDMatterUARPControllerDelegate newUploader]";
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@%s: Matter Accessory Software Update not enabled.", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    return 0;
  }
}

- (BOOL)sendMessageToAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  msgCopy = msg;
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@sendMessageToAccessory: failed. This function should not be called for Matter accessories", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  return 0;
}

- (void)assetAvailablityUpdateForAccessory:(id)accessory assetID:(id)d
{
  v41 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    [dCopy updateAvailabilityStatus];
    updated = UARPFirmwareUpdateAvailabilityStatusToString();
    [dCopy releaseNotesAvailabilityStatus];
    *buf = 138544130;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = accessoryCopy;
    *&buf[22] = 2080;
    *&buf[24] = updated;
    v39 = 2080;
    v40 = UARPFirmwareUpdateAvailabilityStatusToString();
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Firmware Update Available for accessory:%@, status:%s, release notes status:%s", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  accessoryFirmwareUpdateManager = [(HMDMatterUARPControllerDelegate *)selfCopy accessoryFirmwareUpdateManager];
  if ([accessoryFirmwareUpdateManager supportsFirmwareUpdate])
  {
    v14 = [accessoryFirmwareUpdateManager sessionForUARPAccessory:accessoryCopy];
    if (v14)
    {
LABEL_5:
      [v14 assetAvailablityUpdateForAccessory:accessoryCopy assetID:dCopy];
LABEL_25:

      goto LABEL_26;
    }

    v19 = [accessoryFirmwareUpdateManager findHMDHAPAccessoryWithUARPAccessory:accessoryCopy];
    v14 = v19;
    if (v19)
    {
      firmwareVersion = [v19 firmwareVersion];
      softwareVersion = [dCopy softwareVersion];
      v22 = [firmwareVersion isAtLeastVersion:softwareVersion];

      if (v22)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = selfCopy;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          softwareVersion2 = [dCopy softwareVersion];
          firmwareVersion2 = [v14 firmwareVersion];
          *buf = 138543874;
          *&buf[4] = v26;
          *&buf[12] = 2112;
          *&buf[14] = softwareVersion2;
          *&buf[22] = 2112;
          *&buf[24] = firmwareVersion2;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Available version %@ is equal or older than current accessory version %@", buf, 0x20u);

LABEL_23:
        }

LABEL_24:

        objc_autoreleasePoolPop(v23);
        goto LABEL_25;
      }

      if (![accessoryFirmwareUpdateManager hasReachedMaximumFirmwareUpdateRetriesForAccessory:v14 assetID:dCopy])
      {
        v36 = [accessoryFirmwareUpdateManager addSessionForUARPAccessory:accessoryCopy];

        v14 = v36;
        goto LABEL_5;
      }

      v23 = objc_autoreleasePoolPush();
      v33 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v26 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      uuid = [v14 uuid];

      if (uuid)
      {
        uuid2 = [v14 uuid];
        [uuid2 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v37 = *buf;
      *buf = 138543874;
      *&buf[4] = v26;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v37;
      v30 = "%{public}@No more retries for HAPAccessory %{uuid_t}.16P";
      v31 = v25;
      v32 = 28;
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v26;
      *&buf[12] = 2112;
      *&buf[14] = accessoryCopy;
      v30 = "%{public}@Couldn't find HAPAccessory from UARPAccessory %@";
      v31 = v25;
      v32 = 22;
    }

    _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
    goto LABEL_23;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v18;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Firmware Update not supported on this device; ignoring", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
LABEL_26:
}

- (HMDMatterUARPControllerDelegate)initWithAccessoryFirmwareUpdateManager:(id)manager
{
  managerCopy = manager;
  v8.receiver = self;
  v8.super_class = HMDMatterUARPControllerDelegate;
  v5 = [(HMDMatterUARPControllerDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_accessoryFirmwareUpdateManager, managerCopy);
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_190404 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_190404, &__block_literal_global_190405);
  }

  v3 = logCategory__hmf_once_v1_190406;

  return v3;
}

void __46__HMDMatterUARPControllerDelegate_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_190406;
  logCategory__hmf_once_v1_190406 = v0;
}

@end