@interface HMDCameraHomeSettingsConfiguration
- (HMDCameraHomeSettingsConfiguration)initWithHome:(id)home;
@end

@implementation HMDCameraHomeSettingsConfiguration

- (HMDCameraHomeSettingsConfiguration)initWithHome:(id)home
{
  v71 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v63.receiver = self;
  v63.super_class = HMDCameraHomeSettingsConfiguration;
  v5 = [(HMDCameraHomeSettingsConfiguration *)&v63 init];
  v6 = v5;
  if (v5)
  {
    v49 = v5;
    array = [MEMORY[0x277CBEB18] array];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v50 = homeCopy;
    accessories = [homeCopy accessories];
    v9 = [accessories countByEnumeratingWithState:&v59 objects:v70 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v60;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v60 != v11)
          {
            objc_enumerationMutation(accessories);
          }

          v13 = *(*(&v59 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;

          cameraProfiles = [v15 cameraProfiles];
          v17 = [cameraProfiles count];

          if (v17)
          {
            v18 = [[HMDCameraAccessorySettingsConfiguration alloc] initWithCameraAccessory:v15];
            [array addObject:v18];
          }
        }

        v10 = [accessories countByEnumeratingWithState:&v59 objects:v70 count:16];
      }

      while (v10);
    }

    v19 = [MEMORY[0x277CBEA60] arrayWithArray:array];
    cameraSettings = v49->_cameraSettings;
    v49->_cameraSettings = v19;

    v21 = objc_autoreleasePoolPush();
    v22 = v49;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      cameraSettings = [(HMDCameraHomeSettingsConfiguration *)v22 cameraSettings];
      *buf = 138543618;
      v67 = v24;
      v68 = 2112;
      v69 = cameraSettings;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Camera accessory settings: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    array2 = [MEMORY[0x277CBEB18] array];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    users = [v50 users];
    v28 = [users countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v56;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v56 != v30)
          {
            objc_enumerationMutation(users);
          }

          v32 = [[HMDCameraUserSettingsConfiguration alloc] initWithUser:*(*(&v55 + 1) + 8 * j)];
          [array2 addObject:v32];
        }

        v29 = [users countByEnumeratingWithState:&v55 objects:v65 count:16];
      }

      while (v29);
    }

    v33 = [MEMORY[0x277CBEA60] arrayWithArray:array2];
    userSettings = v22->_userSettings;
    v22->_userSettings = v33;

    v35 = objc_autoreleasePoolPush();
    v36 = v22;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v38 = HMFGetLogIdentifier();
      userSettings = [(HMDCameraHomeSettingsConfiguration *)v36 userSettings];
      *buf = 138543618;
      v67 = v38;
      v68 = 2112;
      v69 = userSettings;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Camera user settings: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    homeCopy = v50;
    personManagerSettings = [v50 personManagerSettings];
    v36->_faceClassificationEnabled = [personManagerSettings isFaceClassificationEnabled];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    residentDeviceManager = [v50 residentDeviceManager];
    availableResidentDevices = [residentDeviceManager availableResidentDevices];

    v43 = [availableResidentDevices countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v52;
      do
      {
        for (k = 0; k != v44; ++k)
        {
          if (*v52 != v45)
          {
            objc_enumerationMutation(availableResidentDevices);
          }

          v47 = *(*(&v51 + 1) + 8 * k);
          if ([v47 isEnabled])
          {
            v36->_enabledResidentsDeviceCapabilities |= [v47 legacyResidentCapabilities];
          }
        }

        v44 = [availableResidentDevices countByEnumeratingWithState:&v51 objects:v64 count:16];
      }

      while (v44);
    }

    v36->_owner = [v50 isOwnerUser];
    v6 = v49;
  }

  return v6;
}

@end