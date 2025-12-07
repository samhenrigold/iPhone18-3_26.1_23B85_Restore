@interface TVRCPreferredDeviceManager
+ (id)sharedInstance;
- (TVRCPreferredDevice)preferredDevice;
- (double)preferredDeviceSearchTimeout;
- (id)preferredDeviceIdentifier;
- (void)preferredDevice;
- (void)setPreferredDevice:(id)device;
@end

@implementation TVRCPreferredDeviceManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__TVRCPreferredDeviceManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance_sharedInstance_1;

  return v2;
}

uint64_t __44__TVRCPreferredDeviceManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_1 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (id)preferredDeviceIdentifier
{
  preferredDevice = [(TVRCPreferredDeviceManager *)self preferredDevice];
  identifier = [preferredDevice identifier];

  return identifier;
}

- (TVRCPreferredDevice)preferredDevice
{
  v2 = CFPreferencesCopyAppValue(@"TVRCPreferredDevicerKey", @"com.apple.TVRemoteCore");
  if (v2)
  {
    v10 = 0;
    v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v10];
    v4 = v10;
    v5 = v4;
    if (v4)
    {
      v6 = _TVRCPreferredDeviceLog(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(TVRCPreferredDeviceManager *)v5 preferredDevice];
      }

      v7 = 0;
    }

    else
    {
      v7 = v3;
    }
  }

  else
  {
    v5 = _TVRCPreferredDeviceLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Could not find a preferred device", v9, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (double)preferredDeviceSearchTimeout
{
  v2 = CFPreferencesCopyAppValue(@"TVRCDeviceTimeoutKey", @"com.apple.TVRemoteCore");
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v6 = _TVRCPreferredDeviceLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Could not find a preferred device timeout. Returning default value for timeout.", v8, 2u);
    }

    v5 = 1.6;
  }

  return v5;
}

- (void)setPreferredDevice:(id)device
{
  v21 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = _TVRCPreferredDeviceLog(deviceCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (deviceCopy)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Removing preferred device identifier keys", buf, 2u);
    }

    CFPreferencesSetAppValue(@"TVRCDeviceIdentifierKey", 0, @"com.apple.TVRemoteCore");
    CFPreferencesSetAppValue(@"TVRCMostRecentlyConnectedIDKey", 0, @"com.apple.TVRemoteCore");
    v7 = [[TVRCPreferredDevice alloc] initFromTVRCDevice:deviceCopy];
    device = self->_device;
    self->_device = v7;

    v10 = _TVRCPreferredDeviceLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_device;
      *buf = 138543362;
      v20 = v11;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Setting preferred device %{public}@", buf, 0xCu);
    }

    device = [(TVRCPreferredDeviceManager *)self device];

    if (device)
    {
      v13 = self->_device;
      v18 = 0;
      v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v18];
      v15 = v18;
      v16 = v15;
      if (v15)
      {
        v17 = _TVRCPreferredDeviceLog(v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [(TVRCSiriRemoteFindingManager *)v16 _updatePairedRemoteInfo:v17];
        }
      }

      else
      {
        CFPreferencesSetAppValue(@"TVRCPreferredDevicerKey", v14, @"com.apple.TVRemoteCore");
        CFPreferencesSetAppValue(@"TVRCDeviceTimeoutKey", &unk_287E66D00, @"com.apple.TVRemoteCore");
      }
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Removing preferred device", buf, 2u);
    }

    CFPreferencesSetAppValue(@"TVRCPreferredDevicerKey", 0, @"com.apple.TVRemoteCore");
    CFPreferencesSetAppValue(@"TVRCDeviceIdentifierKey", 0, @"com.apple.TVRemoteCore");
    CFPreferencesSetAppValue(@"TVRCDeviceTimeoutKey", 0, @"com.apple.TVRemoteCore");
  }
}

- (void)preferredDevice
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Unarchiving error - %{public}@", &v2, 0xCu);
}

@end