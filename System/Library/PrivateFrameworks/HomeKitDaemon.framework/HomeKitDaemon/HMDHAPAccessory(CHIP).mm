@interface HMDHAPAccessory(CHIP)
- (BOOL)requiresThreadRouter;
- (NSNumber)matterDeviceTypeID;
@end

@implementation HMDHAPAccessory(CHIP)

- (NSNumber)matterDeviceTypeID
{
  chipAccessoryServer = [(HMDHAPAccessory *)self chipAccessoryServer];
  matterDeviceTypeID = [chipAccessoryServer matterDeviceTypeID];

  return matterDeviceTypeID;
}

- (BOOL)requiresThreadRouter
{
  v49 = *MEMORY[0x277D85DE8];
  chipAccessoryServer = [(HMDHAPAccessory *)self chipAccessoryServer];

  if (chipAccessoryServer)
  {
    chipAccessoryServer2 = [(HMDHAPAccessory *)self chipAccessoryServer];
    requiresThreadRouter = [chipAccessoryServer2 requiresThreadRouter];

    return requiresThreadRouter;
  }

  else
  {
    supportedLinkLayerTypes = [(HMDHAPAccessory *)self supportedLinkLayerTypes];
    unsignedIntValue = [supportedLinkLayerTypes unsignedIntValue];

    matterWEDSupport = [(HMDHAPAccessory *)self matterWEDSupport];
    v10 = [matterWEDSupport isEqualToNumber:&unk_283E750C8];

    home = [(HMDAccessory *)self home];
    deviceCapabilities = [(HMDHAPAccessory *)self deviceCapabilities];
    if (objc_opt_respondsToSelector())
    {
      supportsThreadService = [deviceCapabilities supportsThreadService];
    }

    else
    {
      supportsThreadService = 0;
    }

    v14 = isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() & supportsThreadService;
    hasAnyResident = [home hasAnyResident];
    hasThreadCapableResident = [home hasThreadCapableResident];
    v17 = ((unsignedIntValue & 0x10) == 0) | hasThreadCapableResident;
    if (!(((unsignedIntValue & 0x10) == 0) | hasThreadCapableResident & 1 | hasAnyResident & 1))
    {
      v17 = v14 & v10;
    }

    v18 = v17 ^ 1;
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v21 = v30 = deviceCapabilities;
      v28 = HMFBooleanToString();
      HMFBooleanToString();
      v22 = v31 = v18;
      supportedLinkLayerTypes2 = [(HMDHAPAccessory *)selfCopy supportedLinkLayerTypes];
      HMFBooleanToString();
      v24 = v29 = home;
      v25 = HMFBooleanToString();
      v26 = HMFBooleanToString();
      v27 = HMFBooleanToString();
      *buf = 138545154;
      v34 = v21;
      v35 = 2112;
      v36 = v28;
      v37 = 2112;
      v38 = v22;
      v39 = 2112;
      v40 = supportedLinkLayerTypes2;
      v41 = 2112;
      v42 = v24;
      v43 = 2112;
      v44 = v25;
      v45 = 2112;
      v46 = v26;
      v47 = 2112;
      v48 = v27;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@requiresThreadRouter = %@ (isDeviceThreadCapable = %@, supportedLinkLayerTypes = %@, isAccessoryThreadCapable = %@, isAccessoryWED = %@, hasAnyResident = %@, hasThreadCapableResident = %@)", buf, 0x52u);

      home = v29;
      v18 = v31;

      deviceCapabilities = v30;
    }

    objc_autoreleasePoolPop(context);
    return v18 & 1;
  }
}

@end