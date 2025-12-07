@interface HMDAccessoryMatterFirmwareUpdateProfile
+ (id)logCategory;
- (HMDAccessoryMatterFirmwareUpdateProfile)initWithAccessory:(id)accessory workQueue:(id)queue;
- (HMDHAPAccessory)accessory;
- (HMDMatterSoftwareUpdateProviderDelegate)matterSoftwareUpdateProviderDelegate;
- (NSString)description;
- (id)characteristics;
- (id)logIdentifier;
- (id)privateDescription;
- (void)__handleMatterFirmwareRevisionNumberUpdate:(id)update;
- (void)__handleMatterFirmwareUpdateStatusUpdate:(id)update;
- (void)_enableCharacteristicsNotifications:(BOOL)notifications;
- (void)_handleCharacteristicChanges:(id)changes;
- (void)_processIdleStateWithCharacteristic:(id)characteristic;
- (void)_registerForNotifications;
- (void)dealloc;
- (void)handleAccessoryIsReachable:(id)reachable;
- (void)handleCharacteristicValuesChanged:(id)changed;
- (void)handleDisplayableFirmwareVersionUpdatedNotification:(id)notification;
- (void)handleVIDPIDUpdatedNotification:(id)notification;
- (void)readAndProcessCharacteristics:(id)characteristics withCompletion:(id)completion;
- (void)readMatterFirmwareUpdateCharacteristics;
- (void)setMatterFirmwareRevisionNumber:(id)number;
@end

@implementation HMDAccessoryMatterFirmwareUpdateProfile

- (HMDMatterSoftwareUpdateProviderDelegate)matterSoftwareUpdateProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_matterSoftwareUpdateProviderDelegate);

  return WeakRetained;
}

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)__handleMatterFirmwareUpdateStatusUpdate:(id)update
{
  v91 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v82 = v8;
    v83 = 2112;
    v84 = updateCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update for %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  value = [updateCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = value;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v80 = 0;
  v12 = [MEMORY[0x277CFEB98] parsedFromData:v11 error:&v80];
  v13 = v80;
  if (!v13)
  {
    oTAProviderState = [v12 OTAProviderState];

    if (!oTAProviderState)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = selfCopy;
      v16 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v82 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Missing OTA Provider state in Matter Firmware Update Status TLV", buf, 0xCu);
      goto LABEL_9;
    }

    oTAProviderState2 = [v12 OTAProviderState];
    value2 = [oTAProviderState2 value];

    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = HAPOTAProviderStateAsString();
      *buf = 138543618;
      v82 = v25;
      v83 = 2112;
      v84 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Matter firmware update state : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    accessory = [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 accessory];
    if (!accessory)
    {
      v37 = objc_autoreleasePoolPush();
      v38 = v23;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543362;
        v82 = v40;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@HAP accessory is nil. Cannot handle matter firmware update status characteristic value change", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      goto LABEL_60;
    }

    matterSoftwareUpdateProviderDelegate = [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 matterSoftwareUpdateProviderDelegate];
    softwareUpdate = [accessory softwareUpdate];
    if (!softwareUpdate)
    {
      v41 = objc_autoreleasePoolPush();
      v42 = v23;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v44 = v74 = matterSoftwareUpdateProviderDelegate;
        *buf = 138543362;
        v82 = v44;
        _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Software update object is nil. Cannot update HMDSoftwareUpdate", buf, 0xCu);

        matterSoftwareUpdateProviderDelegate = v74;
      }

      objc_autoreleasePoolPop(v41);
      softwareUpdate = 0;
      if (value2 != 6 || !matterSoftwareUpdateProviderDelegate)
      {
        goto LABEL_59;
      }

LABEL_47:
      [matterSoftwareUpdateProviderDelegate resetOTAProviderStateForHMDHAPAccessory:accessory];
      goto LABEL_59;
    }

    if ([(HMDAccessoryMatterFirmwareUpdateProfile *)v23 wasPreviousStateInstalling]&& value2 == 6)
    {
      home = [accessory home];
      if (home)
      {
        v73 = matterSoftwareUpdateProviderDelegate;
        v77 = softwareUpdate;
        supportsCHIP = [accessory supportsCHIP];
        context = objc_autoreleasePoolPush();
        v32 = v23;
        v33 = HMFGetOSLogHandle();
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);
        if (supportsCHIP)
        {
          if (v34)
          {
            v70 = HMFGetLogIdentifier();
            name = [accessory name];
            displayableFirmwareVersion = [accessory displayableFirmwareVersion];
            *buf = 138543874;
            v82 = v70;
            v83 = 2112;
            v84 = name;
            v85 = 2112;
            v86 = displayableFirmwareVersion;
            v36 = displayableFirmwareVersion;
            _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Sending firmware update UI notification for accessory = %@ with displayableFirmwareVersion = %@ using Iphone as a controller", buf, 0x20u);
          }

          objc_autoreleasePoolPop(context);
          [home sendFirmwareUpdateUINotification:accessory];
        }

        else
        {
          if (v34)
          {
            v47 = HMFGetLogIdentifier();
            *buf = 138543618;
            v82 = v47;
            v83 = 2112;
            v84 = accessory;
            _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Not a matter accessory, no UI notification %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(context);
        }

        matterSoftwareUpdateProviderDelegate = v73;
        softwareUpdate = v77;
      }

      [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 setWasPreviousStateInstalling:0];
LABEL_46:
      [softwareUpdate updateLocalState:4];
      if (!matterSoftwareUpdateProviderDelegate)
      {
        v48 = objc_autoreleasePoolPush();
        v49 = v23;
        v50 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v51 = HMFGetLogIdentifier();
          *buf = 138543362;
          v82 = v51;
          _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@Couldn't get a strong ref to the software update provider delegate", buf, 0xCu);

          matterSoftwareUpdateProviderDelegate = 0;
        }

        objc_autoreleasePoolPop(v48);
        goto LABEL_59;
      }

      goto LABEL_47;
    }

    [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 setWasPreviousStateInstalling:0];
    if (value2 <= 2)
    {
      if (!value2)
      {
        home2 = [accessory home];
        v53 = home2;
        if (home2)
        {
          if ([home2 isAutomaticThirdPartyAccessorySoftwareUpdateEnabled])
          {
            v54 = softwareUpdate;
            v55 = 2;
          }

          else if ([v53 hasAnyResident])
          {
            v54 = softwareUpdate;
            v55 = 5;
          }

          else
          {
            v54 = softwareUpdate;
            v55 = 0;
          }

          [v54 updateLocalState:v55];
        }

        else
        {
          v79 = softwareUpdate;
          v61 = objc_autoreleasePoolPush();
          v62 = v23;
          v63 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v64 = v76 = matterSoftwareUpdateProviderDelegate;
            *buf = 138543362;
            v82 = v64;
            _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_ERROR, "%{public}@hapAccessory home field is not available", buf, 0xCu);

            matterSoftwareUpdateProviderDelegate = v76;
          }

          objc_autoreleasePoolPop(v61);
          softwareUpdate = v79;
        }

        goto LABEL_59;
      }

      if (value2 == 1)
      {
        matterFirmwareRevisionNumber = [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 matterFirmwareRevisionNumber];
        if (!matterFirmwareRevisionNumber || (v57 = matterFirmwareRevisionNumber, [softwareUpdate version], v75 = matterSoftwareUpdateProviderDelegate, v58 = objc_claimAutoreleasedReturnValue(), contexta = objc_msgSend(v58, "majorVersion"), -[HMDAccessoryMatterFirmwareUpdateProfile matterFirmwareRevisionNumber](v23, "matterFirmwareRevisionNumber"), v78 = softwareUpdate, v59 = objc_claimAutoreleasedReturnValue(), v60 = objc_msgSend(v59, "unsignedIntegerValue"), v59, softwareUpdate = v78, v58, matterSoftwareUpdateProviderDelegate = v75, v57, contexta > v60))
        {
          [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 _processIdleStateWithCharacteristic:updateCopy];
          goto LABEL_59;
        }

        v65 = objc_autoreleasePoolPush();
        v66 = v23;
        v67 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
        {
          v68 = HMFGetLogIdentifier();
          *buf = 138543362;
          v82 = v68;
          _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_INFO, "%{public}@Prevent moving to REQUESTED state because the latest firmware is already installed on the accessory", buf, 0xCu);

          matterSoftwareUpdateProviderDelegate = v75;
        }

        objc_autoreleasePoolPop(v65);
        softwareUpdate = v78;
        goto LABEL_46;
      }

      if (value2 != 2)
      {
LABEL_59:

LABEL_60:
        goto LABEL_61;
      }

      v45 = softwareUpdate;
      v46 = 2;
    }

    else if (value2 > 4)
    {
      if (value2 == 6)
      {
        goto LABEL_46;
      }

      if (value2 != 5)
      {
        goto LABEL_59;
      }

      [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 setWasPreviousStateInstalling:1];
      v45 = softwareUpdate;
      v46 = 3;
    }

    else
    {
      v45 = softwareUpdate;
      if (value2 == 3)
      {
        v46 = 5;
      }

      else
      {
        v46 = 1;
      }
    }

    [v45 updateLocalState:v46];
    goto LABEL_59;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = selfCopy;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    value3 = [updateCopy value];
    *buf = 138544386;
    v82 = v17;
    v83 = 2112;
    v84 = updateCopy;
    v85 = 2112;
    v86 = value3;
    v87 = 2112;
    v88 = v11;
    v89 = 2112;
    v90 = v13;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse matter firmware update status (%@) - characteristic %@ value %@ error %@", buf, 0x34u);

LABEL_9:
  }

LABEL_10:

  objc_autoreleasePoolPop(v14);
LABEL_61:
}

- (void)__handleMatterFirmwareRevisionNumberUpdate:(id)update
{
  v16 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = updateCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update for %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  value = [updateCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = value;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [(HMDAccessoryMatterFirmwareUpdateProfile *)selfCopy setMatterFirmwareRevisionNumber:v11];
}

- (void)_processIdleStateWithCharacteristic:(id)characteristic
{
  v79 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  previousValue = [characteristicCopy previousValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = previousValue;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v68 = 0;
    v8 = [MEMORY[0x277CFEB98] parsedFromData:v7 error:&v68];
    v9 = v68;
    if (v9)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v12 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_9:

        objc_autoreleasePoolPop(v10);
LABEL_10:

        goto LABEL_14;
      }

      v13 = HMFGetLogIdentifier();
      previousValue2 = [characteristicCopy previousValue];
      *buf = 138544386;
      v70 = v13;
      v71 = 2112;
      v72 = characteristicCopy;
      v73 = 2112;
      v74 = previousValue2;
      v75 = 2112;
      v76 = v7;
      v77 = 2112;
      v78 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse matter firmware update status previous value (%@) - characteristic %@ value %@ error %@", buf, 0x34u);

LABEL_8:
      goto LABEL_9;
    }

    oTAProviderState = [v8 OTAProviderState];

    if (!oTAProviderState)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v12 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v70 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Missing OTA Provider state previous value in Matter Firmware Update Status TLV", buf, 0xCu);
      goto LABEL_8;
    }

    oTAProviderState2 = [v8 OTAProviderState];
    value = [oTAProviderState2 value];

    v22 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = HAPOTAProviderStateAsString();
      *buf = 138543618;
      v70 = v25;
      v71 = 2112;
      v72 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Matter firmware update state previous value : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    if (value == 1 || value == 6)
    {
      goto LABEL_10;
    }

    accessory = [(HMDAccessoryMatterFirmwareUpdateProfile *)selfCopy3 accessory];
    v28 = accessory;
    if (!accessory)
    {
      v41 = objc_autoreleasePoolPush();
      v42 = selfCopy3;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543362;
        v70 = v44;
        _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@HAP accessory is nil. Cannot process initial state from accessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v41);
      goto LABEL_46;
    }

    home = [accessory home];
    homeManager = [home homeManager];
    accessoryFirmwareUpdateManager = [homeManager accessoryFirmwareUpdateManager];

    if ([home isCurrentDevicePrimaryResident] && objc_msgSend(home, "isAutomaticThirdPartyAccessorySoftwareUpdateEnabled"))
    {
      v32 = [accessoryFirmwareUpdateManager sessionForAccessory:v28];
      v66 = accessoryFirmwareUpdateManager;
      if (!v32)
      {
        v33 = objc_autoreleasePoolPush();
        v34 = selfCopy3;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v36 = contexta = v33;
          *buf = 138543362;
          v70 = v36;
          _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@No active firmware update session, attempting to create one", buf, 0xCu);

          v33 = contexta;
        }

        objc_autoreleasePoolPop(v33);
        accessoryFirmwareUpdateManager = v66;
        v32 = [v66 registerAndCreateSessionForAccessory:v28 updateUARPParameters:1];
        if (!v32)
        {
          v58 = objc_autoreleasePoolPush();
          v59 = v34;
          v60 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            v61 = HMFGetLogIdentifier();
            *buf = 138543362;
            v70 = v61;
            _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@Failed to register and create a firmware update session", buf, 0xCu);

            accessoryFirmwareUpdateManager = v66;
          }

          objc_autoreleasePoolPop(v58);
          goto LABEL_45;
        }
      }

      v37 = v32;
      if ([v32 isMatterFirmwareUpdateRetryAllowed])
      {
        matterSoftwareUpdateProviderDelegate = [(HMDAccessoryMatterFirmwareUpdateProfile *)selfCopy3 matterSoftwareUpdateProviderDelegate];
        if (!matterSoftwareUpdateProviderDelegate)
        {
          v54 = objc_autoreleasePoolPush();
          v55 = selfCopy3;
          v56 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v57 = contextc = v54;
            *buf = 138543362;
            v70 = v57;
            _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_ERROR, "%{public}@Couldn't get a strong ref to the software update provider delegate", buf, 0xCu);

            v54 = contextc;
          }

          objc_autoreleasePoolPop(v54);
          accessoryFirmwareUpdateManager = v66;
          goto LABEL_45;
        }

        v39 = matterSoftwareUpdateProviderDelegate;
        [v37 incrementMatterFirmwareUpdateRetryCount];
        [v39 notifyUpdateRequestedForHMDHAPAccessory:v28 isUserTriggered:0 isRetry:1];
      }

      else
      {
        v50 = objc_autoreleasePoolPush();
        v51 = selfCopy3;
        v52 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v53 = contextb = v50;
          *buf = 138543362;
          v70 = v53;
          _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Maximum matter firmware update retries reached", buf, 0xCu);

          v50 = contextb;
        }

        objc_autoreleasePoolPop(v50);
        accessoryFirmwareUpdateManager = v66;
      }

LABEL_44:

LABEL_45:
LABEL_46:

      goto LABEL_10;
    }

    softwareUpdate = [v28 softwareUpdate];
    v37 = softwareUpdate;
    if (softwareUpdate)
    {
      if ([softwareUpdate state])
      {
        [v37 updateLocalState:0];
        goto LABEL_44;
      }

      v67 = accessoryFirmwareUpdateManager;
      context = objc_autoreleasePoolPush();
      v49 = selfCopy3;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 138543362;
        v70 = v47;
        v48 = "%{public}@Software update state is available, no action needed";
        goto LABEL_42;
      }
    }

    else
    {
      v67 = accessoryFirmwareUpdateManager;
      context = objc_autoreleasePoolPush();
      v45 = selfCopy3;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 138543362;
        v70 = v47;
        v48 = "%{public}@Software update object is nil. Cannot process idle state from accessory";
LABEL_42:
        _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, v48, buf, 0xCu);
      }
    }

    accessoryFirmwareUpdateManager = v67;

    objc_autoreleasePoolPop(context);
    goto LABEL_44;
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v70 = v18;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Not processing idle state as previous value is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
LABEL_14:
}

- (void)_handleCharacteristicChanges:(id)changes
{
  v19 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [changesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(changesCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        type = [v9 type];
        v11 = [type isEqualToString:@"0000026D-0000-1000-8000-0026BB765291"];

        if (v11)
        {
          [(HMDAccessoryMatterFirmwareUpdateProfile *)self __handleMatterFirmwareRevisionNumberUpdate:v9];
        }

        else
        {
          type2 = [v9 type];
          v13 = [type2 isEqualToString:@"0000026E-0000-1000-8000-0026BB765291"];

          if (v13)
          {
            [(HMDAccessoryMatterFirmwareUpdateProfile *)self __handleMatterFirmwareUpdateStatusUpdate:v9];
          }
        }
      }

      v6 = [changesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)handleCharacteristicValuesChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDAccessoryMatterFirmwareUpdateProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HMDAccessoryMatterFirmwareUpdateProfile_handleCharacteristicValuesChanged___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

void __77__HMDAccessoryMatterFirmwareUpdateProfile_handleCharacteristicValuesChanged___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

  if ([v3 count])
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v14 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          v11 = [*(a1 + 40) accessory];
          v12 = [v10 accessory];
          v13 = HMFEqualObjects();

          if (v13)
          {
            [v4 addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [*(a1 + 40) _handleCharacteristicChanges:v4];
    v3 = v14;
  }
}

- (id)characteristics
{
  v16 = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryMatterFirmwareUpdateProfile *)self accessory];
  if (accessory)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = [MEMORY[0x277CBEB98] setWithObjects:{@"0000026D-0000-1000-8000-0026BB765291", 0}];
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{@"0000026E-0000-1000-8000-0026BB765291", 0}];
    v7 = [accessory findCharacteristicsByTypes:v6 forServiceType:@"00000236-0000-1000-8000-0026BB765291"];
    [v4 addObjectsFromArray:v7];

    v8 = [accessory findCharacteristicsByTypes:v5 forServiceType:@"0000003E-0000-1000-8000-0026BB765291"];
    [v4 addObjectsFromArray:v8];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@HAP accessory is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v4 = 0;
  }

  return v4;
}

- (void)readMatterFirmwareUpdateCharacteristics
{
  characteristics = [(HMDAccessoryMatterFirmwareUpdateProfile *)self characteristics];
  [(HMDAccessoryMatterFirmwareUpdateProfile *)self readAndProcessCharacteristics:characteristics withCompletion:&__block_literal_global_44_30146];
}

- (void)readAndProcessCharacteristics:(id)characteristics withCompletion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  completionCopy = completion;
  accessory = [(HMDAccessoryMatterFirmwareUpdateProfile *)self accessory];
  v9 = accessory;
  if (accessory && [accessory supportsCHIP])
  {
    v10 = [characteristicsCopy count] == 0;
    v11 = objc_autoreleasePoolPush();
    val = self;
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v24;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@No characteristics to read and process", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      completionCopy[2](completionCopy);
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v14;
        v37 = 2112;
        v38 = characteristicsCopy;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Reading characteristics: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(characteristicsCopy, "count")}];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v16 = characteristicsCopy;
      v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v17)
      {
        v18 = *v31;
        do
        {
          v19 = 0;
          do
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = [HMDCharacteristicRequest requestWithCharacteristic:*(*(&v30 + 1) + 8 * v19), val];
            [v15 addObject:v20];

            ++v19;
          }

          while (v17 != v19);
          v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v17);
      }

      objc_initWeak(buf, val);
      home = [v9 home];
      v22 = objc_msgSend_copy(v15);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __88__HMDAccessoryMatterFirmwareUpdateProfile_readAndProcessCharacteristics_withCompletion___block_invoke;
      v26[3] = &unk_278685EC0;
      objc_copyWeak(&v29, buf);
      v28 = completionCopy;
      v23 = v15;
      v27 = v23;
      [home readCharacteristicValues:v22 source:1000 qualityOfService:-1 withCompletionHandler:v26];

      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }
  }
}

void __88__HMDAccessoryMatterFirmwareUpdateProfile_readAndProcessCharacteristics_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v33 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v34 = WeakRetained;
    v8 = v5;
    if (v5)
    {
      *v49 = 0;
      *&v49[8] = v49;
      *&v49[16] = 0x3032000000;
      v50 = __Block_byref_object_copy__30152;
      v51 = __Block_byref_object_dispose__30153;
      v32 = a1;
      v52 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = *(a1 + 32);
      v9 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v9)
      {
        v10 = *v41;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v41 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v40 + 1) + 8 * i);
            v13 = [v12 characteristic];
            v39 = 0;
            v14 = [v8 hmd_valueOfCharacteristic:v13 error:&v39];
            v15 = v39;

            if (v14)
            {
              v16 = *(*&v49[8] + 40);
              v17 = [v12 characteristic];
              [v16 addObject:v17];
            }

            else
            {
              v18 = objc_autoreleasePoolPush();
              v19 = v34;
              v20 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                v21 = HMFGetLogIdentifier();
                v22 = [v12 characteristic];
                *buf = 138543618;
                v45 = v21;
                v46 = 2112;
                v47 = v22;
                _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Read failed for %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v18);
            }
          }

          v9 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v9);
      }

      v23 = [v34 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __88__HMDAccessoryMatterFirmwareUpdateProfile_readAndProcessCharacteristics_withCompletion___block_invoke_41;
      block[3] = &unk_278682E60;
      block[4] = v34;
      v38 = v49;
      v37 = *(v32 + 40);
      dispatch_async(v23, block);

      _Block_object_dispose(v49, 8);
    }

    else
    {
      v26 = a1;
      v27 = objc_autoreleasePoolPush();
      v28 = v7;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        v31 = *(v26 + 32);
        *v49 = 138543874;
        *&v49[4] = v30;
        *&v49[12] = 2112;
        *&v49[14] = v31;
        *&v49[22] = 2112;
        v50 = v33;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Read of characteristics %@ failed with error %@", v49, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      (*(*(v26 + 40) + 16))();
    }

    v7 = v34;
  }

  else
  {
    v8 = v5;
    v24 = _Block_copy(*(a1 + 40));
    v25 = v24;
    if (v24)
    {
      (*(v24 + 2))(v24);
    }
  }
}

uint64_t __88__HMDAccessoryMatterFirmwareUpdateProfile_readAndProcessCharacteristics_withCompletion___block_invoke_41(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(*(*(a1 + 48) + 8) + 40);
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Read succeeded for %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 32);
  v8 = objc_msgSend_copy(*(*(*(a1 + 48) + 8) + 40));
  [v7 _handleCharacteristicChanges:v8];

  return (*(*(a1 + 40) + 16))();
}

- (void)handleDisplayableFirmwareVersionUpdatedNotification:(id)notification
{
  workQueue = [(HMDAccessoryMatterFirmwareUpdateProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__HMDAccessoryMatterFirmwareUpdateProfile_handleDisplayableFirmwareVersionUpdatedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __95__HMDAccessoryMatterFirmwareUpdateProfile_handleDisplayableFirmwareVersionUpdatedNotification___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Matter firmware version string updated", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) __handleAccessoryIsReachable];
}

- (void)handleVIDPIDUpdatedNotification:(id)notification
{
  workQueue = [(HMDAccessoryMatterFirmwareUpdateProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDAccessoryMatterFirmwareUpdateProfile_handleVIDPIDUpdatedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __75__HMDAccessoryMatterFirmwareUpdateProfile_handleVIDPIDUpdatedNotification___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@VID/PID updated", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) __handleAccessoryIsReachable];
}

- (void)handleAccessoryIsReachable:(id)reachable
{
  workQueue = [(HMDAccessoryMatterFirmwareUpdateProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDAccessoryMatterFirmwareUpdateProfile_handleAccessoryIsReachable___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __70__HMDAccessoryMatterFirmwareUpdateProfile_handleAccessoryIsReachable___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory is now reachable", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) accessory];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 home];
    v9 = [v8 homeManager];
    v10 = [v9 accessoryFirmwareUpdateManager];
    v11 = [v10 registerAndCreateSessionForAccessory:v7 updateUARPParameters:1];

    [*(a1 + 32) __handleAccessoryIsReachable];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@HAP accessory is nil", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }
}

- (void)_enableCharacteristicsNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  accessory = [(HMDAccessoryMatterFirmwareUpdateProfile *)self accessory];
  characteristics = [(HMDAccessoryMatterFirmwareUpdateProfile *)self characteristics];
  [accessory setNotificationsEnabled:1 forCharacteristics:characteristics clientIdentifier:@"com.apple.HomeKitDaemon.accessoryMatterFirmwareUpdate"];

  if (notificationsCopy)
  {
    characteristics2 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self characteristics];
    [(HMDAccessoryMatterFirmwareUpdateProfile *)self readAndProcessCharacteristics:characteristics2 withCompletion:&__block_literal_global_38];
  }
}

- (void)_registerForNotifications
{
  v18 = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryMatterFirmwareUpdateProfile *)self accessory];
  if (accessory)
  {
    notificationCenter = [(HMDAccessoryMatterFirmwareUpdateProfile *)self notificationCenter];
    [notificationCenter addObserver:self selector:sel_handleCharacteristicValuesChanged_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:accessory];

    notificationCenter2 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self notificationCenter];
    [notificationCenter2 addObserver:self selector:sel_handleAccessoryIsReachable_ name:@"HMDAccessoryIsReachableNotification" object:accessory];

    notificationCenter3 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self notificationCenter];
    [notificationCenter3 addObserver:self selector:sel_handleVIDPIDUpdatedNotification_ name:@"HMDAccessoryVendorIDProductIDUpdatedNotification" object:accessory];

    notificationCenter4 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self notificationCenter];
    [notificationCenter4 addObserver:self selector:sel_handleDisplayableFirmwareVersionUpdatedNotification_ name:@"HMDAccessoryFirmwareDisplayableVersionUpdatedNotification" object:accessory];

    [(HMDAccessoryMatterFirmwareUpdateProfile *)self _enableCharacteristicsNotifications:1];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      v12 = "%{public}@Registered for Matter firmware update notifications";
      v13 = v10;
      v14 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_229538000, v13, v14, v12, &v16, 0xCu);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      v12 = "%{public}@Not registering for notifications as accessory is nil";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v8);
}

- (void)setMatterFirmwareRevisionNumber:(id)number
{
  v24 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v6 = numberCopy;
  if (numberCopy)
  {
    if (!self->_matterFirmwareRevisionNumber || ([numberCopy isEqualToNumber:?] & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        matterFirmwareRevisionNumber = self->_matterFirmwareRevisionNumber;
        v18 = 138543874;
        v19 = v10;
        v20 = 2112;
        v21 = matterFirmwareRevisionNumber;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating Matter firmware revision number from %@ to %@", &v18, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      objc_storeStrong(&self->_matterFirmwareRevisionNumber, number);
      notificationCenter = [(HMDAccessoryMatterFirmwareUpdateProfile *)selfCopy notificationCenter];
      accessory = [(HMDAccessoryMatterFirmwareUpdateProfile *)selfCopy accessory];
      [notificationCenter postNotificationName:@"HMDAccessoryFirmwareUpdateMatterFirmwareRevisionNumberChangedNotification" object:accessory userInfo:0];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Not setting matter firmware revision number to nil", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }
}

- (HMDAccessoryMatterFirmwareUpdateProfile)initWithAccessory:(id)accessory workQueue:(id)queue
{
  accessoryCopy = accessory;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = HMDAccessoryMatterFirmwareUpdateProfile;
  v8 = [(HMDAccessoryMatterFirmwareUpdateProfile *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_accessory, accessoryCopy);
    objc_storeStrong(&v9->_workQueue, queue);
    matterFirmwareRevisionNumber = v9->_matterFirmwareRevisionNumber;
    v9->_matterFirmwareRevisionNumber = 0;

    v9->_wasPreviousStateInstalling = 0;
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDAccessoryMatterFirmwareUpdateProfile;
  [(HMDAccessoryMatterFirmwareUpdateProfile *)&v4 dealloc];
}

- (id)logIdentifier
{
  accessory = [(HMDAccessoryMatterFirmwareUpdateProfile *)self accessory];
  logIdentifier = [accessory logIdentifier];

  return logIdentifier;
}

- (id)privateDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  accessory = [(HMDAccessoryMatterFirmwareUpdateProfile *)self accessory];
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];
  v8 = [v3 stringWithFormat:@"<%@ %@>", v4, uUIDString];

  return v8;
}

- (NSString)description
{
  accessory = [(HMDAccessoryMatterFirmwareUpdateProfile *)self accessory];
  v3 = MEMORY[0x277CCACA8];
  name = [accessory name];
  uniqueIdentifier = [accessory uniqueIdentifier];
  v6 = [v3 stringWithFormat:@"Matter Firmware Update Profile %@, %@", name, uniqueIdentifier];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_30187 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_30187, &__block_literal_global_30188);
  }

  v3 = logCategory__hmf_once_v1_30189;

  return v3;
}

void __54__HMDAccessoryMatterFirmwareUpdateProfile_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_30189;
  logCategory__hmf_once_v1_30189 = v0;
}

@end