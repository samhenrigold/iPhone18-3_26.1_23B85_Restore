@interface GKDevice
+ (id)currentDevice;
+ (id)zeroOutVersionWithDeviceType:(id)type;
- (BOOL)isDevelopmentDevice;
- (BOOL)isFocusDevice;
- (GKDevice)init;
- (NSString)udid;
- (id)_platformUDID;
- (id)buildVersionHeader;
- (id)platformBuildVersion;
- (id)processNameHeader;
- (id)userAgentWithProcessName:(id)name protocolVersion:(id)version;
- (void)_initPlatform;
@end

@implementation GKDevice

+ (id)currentDevice
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__GKDevice_currentDevice__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (currentDevice_sDispatchOnceToken != -1)
  {
    dispatch_once(&currentDevice_sDispatchOnceToken, block);
  }

  v2 = currentDevice_sCurrentDevice;

  return v2;
}

- (NSString)udid
{
  if (objc_opt_respondsToSelector())
  {
    _platformUDID = [(GKDevice *)self _platformUDID];
    udid = self->_udid;
    self->_udid = _platformUDID;
  }

  v5 = self->_udid;

  return v5;
}

- (id)_platformUDID
{
  if (_platformUDID_onceToken != -1)
  {
    [GKDevice(PlatformDependent) _platformUDID];
  }

  if (!self->_udid)
  {
    objc_storeStrong(&self->_udid, _platformUDID_uuid);
  }

  v3 = _platformUDID_uuid;

  return v3;
}

uint64_t __25__GKDevice_currentDevice__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = currentDevice_sCurrentDevice;
  currentDevice_sCurrentDevice = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (GKDevice)init
{
  v13.receiver = self;
  v13.super_class = GKDevice;
  v2 = [(GKDevice *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v4 = GKGameKitBundle(v2);
    v5 = v4;
    if (v4)
    {
      infoDictionary = [v4 infoDictionary];
      v7 = [infoDictionary objectForKey:*MEMORY[0x277CBED58]];

      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"GameKit-%@", v7];
      gameKitVersion = v3->_gameKitVersion;
      v3->_gameKitVersion = v8;
    }

    v3->_gameKitAvailable = 1;
    [(GKDevice *)v3 _initPlatform];
    if (!v3->_deviceType)
    {
      v3->_deviceType = @"Unknown";
    }

    if (!v3->_buildVersion)
    {
      v3->_buildVersion = @"Unknown";
    }

    if (!v3->_osVersion)
    {
      v3->_osVersion = @"Unknown";
    }

    if (!v3->_gameKitVersion)
    {
      v3->_gameKitVersion = @"Unknown";
    }

    v10 = [GKDevice zeroOutVersionWithDeviceType:v3->_deviceType];
    versionlessDeviceType = v3->_versionlessDeviceType;
    v3->_versionlessDeviceType = v10;
  }

  return v3;
}

- (id)userAgentWithProcessName:(id)name protocolVersion:(id)version
{
  v6 = MEMORY[0x277CCAB68];
  versionCopy = version;
  nameCopy = name;
  v9 = [[v6 alloc] initWithCapacity:256];
  [v9 appendString:nameCopy];

  [v9 appendString:@"/"];
  [v9 appendString:versionCopy];

  objc_msgSend(v9, "appendString:", @" (");
  versionlessDeviceType = [(GKDevice *)self versionlessDeviceType];
  [v9 appendString:versionlessDeviceType];

  [v9 appendString:@"; "];
  osVersion = [(GKDevice *)self osVersion];
  [v9 appendString:osVersion];

  [v9 appendString:@"; "];
  buildVersion = [(GKDevice *)self buildVersion];
  [v9 appendString:buildVersion];

  [v9 appendString:@"; "];
  gameKitVersion = [(GKDevice *)self gameKitVersion];
  [v9 appendString:gameKitVersion];

  [v9 appendString:@""]);

  return v9;
}

- (id)processNameHeader
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = mainBundle;
  if (mainBundle)
  {
    infoDictionary = [mainBundle infoDictionary];
    v5 = [infoDictionary objectForKey:*MEMORY[0x277CBED50]];
    if (v5 || ([infoDictionary objectForKey:*MEMORY[0x277CBEC40]], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = v5;
    }

    else
    {
      v6 = @"GameKit";
    }
  }

  else
  {
    v6 = @"GameKit";
  }

  return v6;
}

- (id)buildVersionHeader
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:256];
  deviceType = [(GKDevice *)self deviceType];
  [v3 appendString:deviceType];

  [v3 appendString:@"; "];
  buildVersion = [(GKDevice *)self buildVersion];
  [v3 appendString:buildVersion];

  [v3 appendString:@"; "];
  gameKitVersion = [(GKDevice *)self gameKitVersion];
  [v3 appendString:gameKitVersion];

  return v3;
}

- (id)platformBuildVersion
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:256];
  [v3 appendString:@"iOS"];
  [v3 appendString:@"."];
  osVersion = [(GKDevice *)self osVersion];
  [v3 appendString:osVersion];

  [v3 appendString:@"."];
  buildVersion = [(GKDevice *)self buildVersion];
  [v3 appendString:buildVersion];

  return v3;
}

- (void)_initPlatform
{
  v23[5] = *MEMORY[0x277D85DE8];
  v23[0] = @"ProductType";
  v23[1] = @"ProductVersion";
  v23[2] = @"BuildVersion";
  v23[3] = @"ipad";
  v23[4] = @"gamekit";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:5];
  v4 = MGCopyMultipleAnswers();
  v5 = [v4 objectForKeyedSubscript:@"ProductType"];
  deviceType = self->_deviceType;
  self->_deviceType = v5;

  v7 = [v4 objectForKeyedSubscript:@"ProductVersion"];
  osVersion = self->_osVersion;
  self->_osVersion = v7;

  v9 = [v4 objectForKeyedSubscript:@"BuildVersion"];
  buildVersion = self->_buildVersion;
  self->_buildVersion = v9;

  v11 = [v4 objectForKeyedSubscript:@"gamekit"];
  self->_gameKitAvailable = [v11 BOOLValue];

  v12 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
    v12 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = self->_deviceType;
    v15 = self->_osVersion;
    v16 = self->_buildVersion;
    v17 = 138412802;
    v18 = v14;
    v19 = 2112;
    v20 = v15;
    v21 = 2112;
    v22 = v16;
    _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "Game Center DeviceType:%@, OS:%@ Build:%@", &v17, 0x20u);
  }
}

uint64_t __44__GKDevice_PlatformDependent___platformUDID__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = _platformUDID_uuid;
  _platformUDID_uuid = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (BOOL)isDevelopmentDevice
{
  if (isDevelopmentDevice_onceToken != -1)
  {
    [GKDevice(PlatformDependent) isDevelopmentDevice];
  }

  return isDevelopmentDevice_isDevelopment;
}

void __50__GKDevice_PlatformDependent__isDevelopmentDevice__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAA00]);
  isDevelopmentDevice_isDevelopment = [v0 fileExistsAtPath:@"/Developer"];
}

- (BOOL)isFocusDevice
{
  if (isFocusDevice_onceToken != -1)
  {
    [GKDevice(PlatformDependent) isFocusDevice];
  }

  return 0;
}

+ (id)zeroOutVersionWithDeviceType:(id)type
{
  v3 = sub_227A724EC();
  static GKDevice.zeroOutVersion(deviceType:)(v3, v4);

  v5 = sub_227A724BC();

  return v5;
}

@end