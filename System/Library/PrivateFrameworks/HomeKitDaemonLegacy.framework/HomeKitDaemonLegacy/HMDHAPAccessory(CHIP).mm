@interface HMDHAPAccessory(CHIP)
- (BOOL)requiresThreadRouter;
@end

@implementation HMDHAPAccessory(CHIP)

- (BOOL)requiresThreadRouter
{
  v43 = *MEMORY[0x277D85DE8];
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
    [matterWEDSupport isEqualToNumber:&unk_28662A478];

    home = [(HMDAccessory *)self home];
    deviceCapabilities = [(HMDHAPAccessory *)self deviceCapabilities];
    if (objc_opt_respondsToSelector())
    {
      [deviceCapabilities supportsThreadService];
    }

    isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled();
    LODWORD(v12) = ([home hasThreadCapableResident] ^ 1) & ((unsignedIntValue & 0x10) >> 4);
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v16 = v24 = home;
      HMFBooleanToString();
      v17 = v23 = deviceCapabilities;
      HMFBooleanToString();
      v18 = v25 = v13;
      [(HMDHAPAccessory *)selfCopy supportedLinkLayerTypes];
      v12 = v26 = v12;
      v19 = HMFBooleanToString();
      v20 = HMFBooleanToString();
      v21 = HMFBooleanToString();
      v22 = HMFBooleanToString();
      *buf = 138545154;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      v31 = 2112;
      v32 = v18;
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      v36 = v19;
      v37 = 2112;
      v38 = v20;
      v39 = 2112;
      v40 = v21;
      v41 = 2112;
      v42 = v22;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@requiresThreadRouter = %@ (isDeviceThreadCapable = %@, supportedLinkLayerTypes = %@, isAccessoryThreadCapable = %@, isAccessoryWED = %@, hasAnyResident = %@, hasThreadCapableResident = %@)", buf, 0x52u);

      LOBYTE(v12) = v26;
      v13 = v25;

      deviceCapabilities = v23;
      home = v24;
    }

    objc_autoreleasePoolPop(v13);
    return v12;
  }
}

@end