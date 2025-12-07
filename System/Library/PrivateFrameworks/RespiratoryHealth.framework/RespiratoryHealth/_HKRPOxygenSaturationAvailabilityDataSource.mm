@interface _HKRPOxygenSaturationAvailabilityDataSource
- (BOOL)deviceIsSupported;
- (_HKRPOxygenSaturationAvailabilityDataSource)initWithDevice:(id)device;
@end

@implementation _HKRPOxygenSaturationAvailabilityDataSource

- (_HKRPOxygenSaturationAvailabilityDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = _HKRPOxygenSaturationAvailabilityDataSource;
  v6 = [(_HKRPOxygenSaturationAvailabilityDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (BOOL)deviceIsSupported
{
  v21 = *MEMORY[0x277D85DE8];
  device = self->_device;
  if (device)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"BD3A4341-7090-4622-9694-2AC0F536C478"];
    v5 = [(NRDevice *)device supportsCapability:v4];

    _HKInitializeLogging();
    v6 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = @"false";
      if (v5)
      {
        v8 = @"true";
      }

      v17 = 138543618;
      v18 = v7;
      v19 = 2114;
      v20 = v8;
      v9 = v7;
      v10 = "[%{public}@] Paired device supports Scandium: %{public}@";
LABEL_11:
      _os_log_impl(&dword_262078000, v6, OS_LOG_TYPE_DEFAULT, v10, &v17, 0x16u);
    }
  }

  else
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

    if (isAppleWatch)
    {
      v5 = MGGetBoolAnswer();
      _HKInitializeLogging();
      v6 = HKLogRespiratoryCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = @"false";
        if (v5)
        {
          v15 = @"true";
        }

        v17 = 138543618;
        v18 = v14;
        v19 = 2114;
        v20 = v15;
        v9 = v14;
        v10 = "[%{public}@] Device supports Scandium: %{public}@";
        goto LABEL_11;
      }
    }

    else
    {
      _HKInitializeLogging();
      v6 = HKLogRespiratoryCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(_HKRPWatchAppInstallabilityDataSource *)self isDeviceSupported];
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end