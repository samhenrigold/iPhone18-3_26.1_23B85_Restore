@interface TRISystemConfiguration
+ (id)_sharedSystemInfo;
+ (id)sharedInstance;
+ (void)updateSystemInfoUsingContext:(id)context;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)marketingOSVersion;
- (BOOL)_updateSystemInfo:(id)info;
- (BOOL)deleteDeviceIdentifierWithPath:(id)path;
- (BOOL)hasAne;
- (BOOL)isAutomatedTestDevice;
- (BOOL)isBetaUserWithIsStale:(BOOL *)stale;
- (BOOL)isDiagnosticsAndUsageEnabled;
- (BOOL)resetDeviceIdentifier;
- (BOOL)setDeviceIdentifier:(id)identifier path:(id)path;
- (BOOL)userSettingsIsSiriEnabled;
- (TRISystemConfiguration)initWithPaths:(id)paths;
- (id)_dispatchQueueForCarrierInfoGathering;
- (id)_systemInfoWithIsStale:(BOOL *)stale;
- (id)_trialVersion;
- (id)activeDictationLocales;
- (id)aneVersion;
- (id)carrierBundleIdentifier;
- (id)carrierCountryIsoCode;
- (id)createDeviceIdentifierWithPath:(id)path;
- (id)deviceClass;
- (id)deviceHardwareModel;
- (id)deviceId;
- (id)deviceInfoForQuestion:(id)question;
- (id)deviceModelCode;
- (id)deviceSystemId;
- (id)enabledInputModeIdentifiers;
- (id)iCloudId;
- (id)mapsBucketId;
- (id)mapsDeviceCountryCode;
- (id)osBuild;
- (id)readDeviceIdentifierWithPath:(id)path;
- (id)reloadDeviceId;
- (id)reloadSystemInfo;
- (id)siriDeviceAggregationIdRotationDate;
- (id)userSettingsBCP47DeviceLocale;
- (id)userSettingsLanguageCode;
- (id)userSettingsRegionCode;
- (id)userSettingsSiriLocale;
- (int)populationType;
- (int64_t)appleIntelligenceState;
- (int64_t)deviceChipId;
- (unint64_t)trialVersionMajor;
- (unint64_t)trialVersionMinor;
@end

@implementation TRISystemConfiguration

- (TRISystemConfiguration)initWithPaths:(id)paths
{
  pathsCopy = paths;
  v9.receiver = self;
  v9.super_class = TRISystemConfiguration;
  v5 = [(TRISystemConfiguration *)&v9 init];
  if (v5)
  {
    deviceIdentifierFile = [pathsCopy deviceIdentifierFile];
    persistentDeviceIdentifierPath = v5->_persistentDeviceIdentifierPath;
    v5->_persistentDeviceIdentifierPath = deviceIdentifierFile;
  }

  return v5;
}

+ (id)sharedInstance
{
  if (qword_281597740 != -1)
  {
    dispatch_once(&qword_281597740, &__block_literal_global_15);
  }

  v3 = _MergedGlobals_34;

  return v3;
}

void __40__TRISystemConfiguration_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [TRISystemConfiguration alloc];
  v2 = [MEMORY[0x277D737E0] sharedPaths];
  v3 = [(TRISystemConfiguration *)v1 initWithPaths:v2];
  v4 = _MergedGlobals_34;
  _MergedGlobals_34 = v3;

  objc_autoreleasePoolPop(v0);
}

+ (id)_sharedSystemInfo
{
  if (qword_281597750 != -1)
  {
    dispatch_once(&qword_281597750, &__block_literal_global_44);
  }

  v3 = qword_281597748;

  return v3;
}

void __43__TRISystemConfiguration__sharedSystemInfo__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  *(v1 + 8) = 1;
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;

  v3 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v1];
  v4 = qword_281597748;
  qword_281597748 = v3;

  objc_autoreleasePoolPop(v0);
}

- (int)populationType
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = +[TRICKServerEnvironmentReader currentPopulation];
  if (v3)
  {
    v4 = v3;
    v5 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = v4;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Using population override: %d", v7, 8u);
    }
  }

  else if ([(TRISystemConfiguration *)self isInternalBuild])
  {
    return 3;
  }

  else if ([(TRISystemConfiguration *)self isBetaUserWithIsStale:0])
  {
    return 4;
  }

  else
  {
    return 5;
  }

  return v4;
}

- (id)_systemInfoWithIsStale:(BOOL *)stale
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__14;
  v12 = __Block_byref_object_dispose__14;
  v13 = 0;
  _sharedSystemInfo = [objc_opt_class() _sharedSystemInfo];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__TRISystemConfiguration__systemInfoWithIsStale___block_invoke;
  v7[3] = &unk_279DE1298;
  v7[4] = &v8;
  v7[5] = stale;
  [_sharedSystemInfo runWithLockAcquired:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __49__TRISystemConfiguration__systemInfoWithIsStale___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (!*(v3 + 2))
  {
    v4 = +[TRISystemInfo info];
    v5 = v7[2];
    v7[2] = v4;

    v3 = v7;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    *v6 = *(v3 + 8);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), *(v3 + 2));
}

- (BOOL)_updateSystemInfo:(id)info
{
  infoCopy = info;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  _sharedSystemInfo = [objc_opt_class() _sharedSystemInfo];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__TRISystemConfiguration__updateSystemInfo___block_invoke;
  v7[3] = &unk_279DE12C0;
  v5 = infoCopy;
  v8 = v5;
  v9 = &v10;
  [_sharedSystemInfo runWithLockAcquired:v7];

  LOBYTE(_sharedSystemInfo) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return _sharedSystemInfo;
}

void __44__TRISystemConfiguration__updateSystemInfo___block_invoke(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  objc_storeStrong((a2 + 16), *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)reloadSystemInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__14;
  v10 = __Block_byref_object_dispose__14;
  v11 = 0;
  _sharedSystemInfo = [objc_opt_class() _sharedSystemInfo];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__TRISystemConfiguration_reloadSystemInfo__block_invoke;
  v5[3] = &unk_279DE12E8;
  v5[4] = &v6;
  [_sharedSystemInfo runWithLockAcquired:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__TRISystemConfiguration_reloadSystemInfo__block_invoke(uint64_t a1, _BYTE *a2)
{
  a2[8] = 0;
  v5 = a2;
  v3 = +[TRISystemInfo info];
  v4 = *(v5 + 2);
  *(v5 + 2) = v3;

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), *(v5 + 2));
}

- (id)_trialVersion
{
  v2 = MEMORY[0x277D73800];
  trialVersionTag = [(TRISystemConfiguration *)self trialVersionTag];
  v4 = [v2 parseVersionFromString:trialVersionTag withPrefix:@"TrialXP-"];

  return v4;
}

- (unint64_t)trialVersionMajor
{
  _trialVersion = [(TRISystemConfiguration *)self _trialVersion];
  majorVersion = [_trialVersion majorVersion];
  unsignedIntegerValue = [majorVersion unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)trialVersionMinor
{
  _trialVersion = [(TRISystemConfiguration *)self _trialVersion];
  minorVersion = [_trialVersion minorVersion];
  unsignedIntegerValue = [minorVersion unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)isBetaUserWithIsStale:(BOOL *)stale
{
  if ([(TRISystemConfiguration *)self isInternalBuild])
  {
    isEnrolledInBetaProgram = 0;
    if (stale)
    {
      *stale = 0;
    }
  }

  else
  {
    v6 = [(TRISystemConfiguration *)self _systemInfoWithIsStale:stale];
    v7 = v6;
    if (!stale || v6)
    {
      if (v6)
      {
        isEnrolledInBetaProgram = [v6 isEnrolledInBetaProgram];
      }

      else
      {
        isEnrolledInBetaProgram = 0;
      }
    }

    else
    {
      isEnrolledInBetaProgram = 0;
      *stale = 1;
    }
  }

  return isEnrolledInBetaProgram;
}

- (id)readDeviceIdentifierWithPath:(id)path
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v3 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:path encoding:4 error:&v8];
  v4 = v8;
  if (!v3)
  {
    v5 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [v4 description];
      *buf = 138412290;
      v10 = v7;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Persistent identifier file read error: %@", buf, 0xCu);
    }
  }

  return v3;
}

- (BOOL)resetDeviceIdentifier
{
  if (![(TRISystemConfiguration *)self deleteDeviceIdentifier])
  {
    return 0;
  }

  createPersistentDeviceIdentifier = [(TRISystemConfiguration *)self createPersistentDeviceIdentifier];
  v4 = createPersistentDeviceIdentifier != 0;

  return v4;
}

- (BOOL)deleteDeviceIdentifierWithPath:(id)path
{
  v16 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (![defaultManager fileExistsAtPath:pathCopy] || ((v13 = 0, v5 = objc_msgSend(defaultManager, "removeItemAtPath:error:", pathCopy, &v13), v6 = v13, v5) ? (v7 = v6 == 0) : (v7 = 0), v7))
  {
    v10 = 1;
  }

  else
  {
    v8 = v6;
    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = [v8 description];
      *buf = 138412290;
      v15 = v12;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Error deleting persistent identifier file: %@", buf, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)setDeviceIdentifier:(id)identifier path:(id)path
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v20 = 0;
  v9 = [defaultManager triCreateDirectoryForPath:pathCopy isDirectory:0 error:&v20];
  v10 = v20;
  if (v10)
  {
    selfCopy = v10;
    v12 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(TRISystemConfiguration *)selfCopy description];
      *buf = 138412290;
      v22 = v13;
      v14 = "Error creating persistent identifier folder: %@";
LABEL_10:
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
    }
  }

  else
  {
    v19 = 0;
    [identifierCopy writeToFile:pathCopy atomically:1 encoding:4 error:&v19];
    v15 = v19;
    if (!v15)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      cachedDeviceIdentifier = selfCopy->_cachedDeviceIdentifier;
      selfCopy->_cachedDeviceIdentifier = 0;

      objc_sync_exit(selfCopy);
      v16 = 1;
      goto LABEL_7;
    }

    selfCopy = v15;
    v12 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(TRISystemConfiguration *)selfCopy description];
      *buf = 138412290;
      v22 = v13;
      v14 = "Error writing persistent identifier: %@";
      goto LABEL_10;
    }
  }

  v16 = 0;
LABEL_7:

  return v16;
}

- (id)createDeviceIdentifierWithPath:(id)path
{
  pathCopy = path;
  v5 = [(TRISystemConfiguration *)self readDeviceIdentifierWithPath:pathCopy];
  if (!v5)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    if ([(TRISystemConfiguration *)self setDeviceIdentifier:uUIDString path:pathCopy])
    {
      v5 = uUIDString;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)deviceInfoForQuestion:(id)question
{
  v3 = MGCopyAnswer();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"unknown";
  }

  v6 = v5;

  return v5;
}

- (id)reloadDeviceId
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedDeviceIdentifier = selfCopy->_cachedDeviceIdentifier;
  selfCopy->_cachedDeviceIdentifier = 0;

  objc_sync_exit(selfCopy);

  return [(TRISystemConfiguration *)selfCopy deviceId];
}

- (id)deviceId
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedDeviceIdentifier = selfCopy->_cachedDeviceIdentifier;
  if (!cachedDeviceIdentifier)
  {
    storedDeviceIdentifier = [(TRISystemConfiguration *)selfCopy storedDeviceIdentifier];
    v5 = selfCopy->_cachedDeviceIdentifier;
    selfCopy->_cachedDeviceIdentifier = storedDeviceIdentifier;

    cachedDeviceIdentifier = selfCopy->_cachedDeviceIdentifier;
  }

  v6 = cachedDeviceIdentifier;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)deviceSystemId
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__TRISystemConfiguration_deviceSystemId__block_invoke;
  block[3] = &unk_279DDEEE0;
  block[4] = self;
  if (qword_281597760 != -1)
  {
    dispatch_once(&qword_281597760, block);
  }

  return qword_281597758;
}

uint64_t __40__TRISystemConfiguration_deviceSystemId__block_invoke(uint64_t a1)
{
  qword_281597758 = [*(a1 + 32) deviceInfoForQuestion:@"UniqueDeviceID"];

  return MEMORY[0x2821F96F8]();
}

- (id)iCloudId
{
  systemInfo = [(TRISystemConfiguration *)self systemInfo];
  iCloudIdentifier = [systemInfo iCloudIdentifier];
  v4 = iCloudIdentifier;
  if (iCloudIdentifier)
  {
    v5 = iCloudIdentifier;
  }

  else
  {
    v5 = &stru_287FA0430;
  }

  v6 = v5;

  return v5;
}

- (id)deviceClass
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TRISystemConfiguration_deviceClass__block_invoke;
  block[3] = &unk_279DDEEE0;
  block[4] = self;
  if (qword_281597770 != -1)
  {
    dispatch_once(&qword_281597770, block);
  }

  return qword_281597768;
}

uint64_t __37__TRISystemConfiguration_deviceClass__block_invoke(uint64_t a1)
{
  qword_281597768 = [*(a1 + 32) deviceInfoForQuestion:@"DeviceClass"];

  return MEMORY[0x2821F96F8]();
}

- (id)deviceModelCode
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__TRISystemConfiguration_deviceModelCode__block_invoke;
  block[3] = &unk_279DDEEE0;
  block[4] = self;
  if (qword_281597780 != -1)
  {
    dispatch_once(&qword_281597780, block);
  }

  return qword_281597778;
}

uint64_t __41__TRISystemConfiguration_deviceModelCode__block_invoke(uint64_t a1)
{
  qword_281597778 = [*(a1 + 32) deviceInfoForQuestion:@"ProductType"];

  return MEMORY[0x2821F96F8]();
}

- (id)osBuild
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__TRISystemConfiguration_osBuild__block_invoke;
  block[3] = &unk_279DDEEE0;
  block[4] = self;
  if (qword_281597790 != -1)
  {
    dispatch_once(&qword_281597790, block);
  }

  return qword_281597788;
}

uint64_t __33__TRISystemConfiguration_osBuild__block_invoke(uint64_t a1)
{
  qword_281597788 = [*(a1 + 32) deviceInfoForQuestion:@"BuildVersion"];

  return MEMORY[0x2821F96F8]();
}

- (id)userSettingsLanguageCode
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  languageCode = [currentLocale languageCode];

  return languageCode;
}

- (id)userSettingsRegionCode
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  countryCode = [currentLocale countryCode];

  return countryCode;
}

- (id)userSettingsBCP47DeviceLocale
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  languageCode = [currentLocale languageCode];

  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  countryCode = [currentLocale2 countryCode];

  v6 = &stru_287FA0430;
  if (countryCode)
  {
    v6 = countryCode;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", languageCode, v6];

  return v7;
}

- (id)_dispatchQueueForCarrierInfoGathering
{
  if (qword_2815977A0 != -1)
  {
    dispatch_once(&qword_2815977A0, &__block_literal_global_84);
  }

  v3 = qword_281597798;

  return v3;
}

void __63__TRISystemConfiguration__dispatchQueueForCarrierInfoGathering__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.trial.system-config.carrier" qosClass:17];
  v2 = qword_281597798;
  qword_281597798 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)carrierBundleIdentifier
{
  systemInfo = [(TRISystemConfiguration *)self systemInfo];
  carrierBundleIdentifier = [systemInfo carrierBundleIdentifier];
  v4 = carrierBundleIdentifier;
  if (carrierBundleIdentifier)
  {
    v5 = carrierBundleIdentifier;
  }

  else
  {
    v5 = &stru_287FA0430;
  }

  v6 = v5;

  return v5;
}

- (id)carrierCountryIsoCode
{
  systemInfo = [(TRISystemConfiguration *)self systemInfo];
  carrierCountryIsoCode = [systemInfo carrierCountryIsoCode];
  v4 = carrierCountryIsoCode;
  if (carrierCountryIsoCode)
  {
    v5 = carrierCountryIsoCode;
  }

  else
  {
    v5 = &stru_287FA0430;
  }

  v6 = v5;

  return v5;
}

- (BOOL)isDiagnosticsAndUsageEnabled
{
  systemInfo = [(TRISystemConfiguration *)self systemInfo];
  isDiagnosticsAndUsageEnabled = [systemInfo isDiagnosticsAndUsageEnabled];

  return isDiagnosticsAndUsageEnabled;
}

- (BOOL)hasAne
{
  systemInfo = [(TRISystemConfiguration *)self systemInfo];
  hasAne = [systemInfo hasAne];

  return hasAne;
}

- (id)aneVersion
{
  systemInfo = [(TRISystemConfiguration *)self systemInfo];
  aneVersion = [systemInfo aneVersion];

  return aneVersion;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)marketingOSVersion
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  if (processInfo)
  {
    v6 = processInfo;
    [processInfo operatingSystemVersion];
    processInfo = v6;
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (id)enabledInputModeIdentifiers
{
  systemInfo = [(TRISystemConfiguration *)self systemInfo];
  enabledInputModeIdentifiers = [systemInfo enabledInputModeIdentifiers];
  v4 = enabledInputModeIdentifiers;
  if (enabledInputModeIdentifiers)
  {
    v5 = enabledInputModeIdentifiers;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (BOOL)isAutomatedTestDevice
{
  systemInfo = [(TRISystemConfiguration *)self systemInfo];
  isAutomatedTestDevice = [systemInfo isAutomatedTestDevice];

  return isAutomatedTestDevice;
}

- (id)siriDeviceAggregationIdRotationDate
{
  systemInfo = [(TRISystemConfiguration *)self systemInfo];
  siriDeviceAggregationIdRotationDate = [systemInfo siriDeviceAggregationIdRotationDate];

  return siriDeviceAggregationIdRotationDate;
}

- (int64_t)appleIntelligenceState
{
  systemInfo = [(TRISystemConfiguration *)self systemInfo];
  v3 = systemInfo;
  if (systemInfo)
  {
    appleIntelligenceState = [systemInfo appleIntelligenceState];
  }

  else
  {
    v5 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Error: systemInfo is null.", v7, 2u);
    }

    appleIntelligenceState = 2;
  }

  return appleIntelligenceState;
}

- (int64_t)deviceChipId
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__TRISystemConfiguration_deviceChipId__block_invoke;
  block[3] = &unk_279DDEEE0;
  block[4] = self;
  if (qword_2815977B0 != -1)
  {
    dispatch_once(&qword_2815977B0, block);
  }

  return qword_2815977A8;
}

void __38__TRISystemConfiguration_deviceChipId__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) deviceInfoForQuestion:@"ChipID"];
  qword_2815977A8 = [v1 integerValue];
}

- (id)deviceHardwareModel
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__TRISystemConfiguration_deviceHardwareModel__block_invoke;
  block[3] = &unk_279DDEEE0;
  block[4] = self;
  if (qword_2815977C0 != -1)
  {
    dispatch_once(&qword_2815977C0, block);
  }

  if (qword_2815977B8)
  {
    v2 = qword_2815977B8;
  }

  else
  {
    v2 = @"unknown";
  }

  return v2;
}

uint64_t __45__TRISystemConfiguration_deviceHardwareModel__block_invoke(uint64_t a1)
{
  qword_2815977B8 = [*(a1 + 32) deviceInfoForQuestion:@"HWModelStr"];

  return MEMORY[0x2821F96F8]();
}

- (id)mapsBucketId
{
  systemInfo = [(TRISystemConfiguration *)self systemInfo];
  mapsBucketId = [systemInfo mapsBucketId];
  v4 = mapsBucketId;
  if (mapsBucketId)
  {
    v5 = mapsBucketId;
  }

  else
  {
    v5 = &unk_287FC47B0;
  }

  return v5;
}

- (id)mapsDeviceCountryCode
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(TRIXPCCovariateFetcher);
  mapsDeviceCountryCode = [(TRIXPCCovariateFetcher *)v3 mapsDeviceCountryCode];

  objc_autoreleasePoolPop(v2);

  return mapsDeviceCountryCode;
}

- (BOOL)userSettingsIsSiriEnabled
{
  v2 = CFPreferencesCopyAppValue(@"Assistant Enabled", @"com.apple.assistant.support");
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)userSettingsSiriLocale
{
  if ([(TRISystemConfiguration *)self userSettingsIsSiriEnabled])
  {
    v2 = CFPreferencesCopyAppValue(@"Session Language", @"com.apple.assistant.backedup");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)activeDictationLocales
{
  v35 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D737A8] callerIsRunningFromSystemContext])
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v3 = CFPreferencesCopyAppValue(@"Dictation Enabled", @"com.apple.assistant.support");
    if (objc_opt_respondsToSelector() & 1) != 0 && ([v3 BOOLValue])
    {
      v4 = [MEMORY[0x277CBEB58] set];
      v5 = CFPreferencesCopyAppValue(@"DictationLanguagesEnabled", @"com.apple.keyboard.preferences");
      objc_opt_class();
      v23 = v5;
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      allKeys = [v7 allKeys];
      v9 = [allKeys countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v29;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v29 != v11)
            {
              objc_enumerationMutation(allKeys);
            }

            v13 = *(*(&v28 + 1) + 8 * i);
            v14 = [v7 objectForKeyedSubscript:v13];
            bOOLValue = [v14 BOOLValue];

            if (bOOLValue)
            {
              [v4 addObject:v13];
            }
          }

          v10 = [allKeys countByEnumeratingWithState:&v28 objects:v34 count:16];
        }

        while (v10);
      }

      v2 = objc_opt_new();
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v16 = v4;
      v17 = [v16 countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v25;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:*(*(&v24 + 1) + 8 * j)];
            [v2 addObject:v21];
          }

          v18 = [v16 countByEnumeratingWithState:&v24 objects:v33 count:16];
        }

        while (v18);
      }
    }

    else
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "Dictation is not enabled. Returning an empty locale array.", buf, 2u);
      }

      v2 = MEMORY[0x277CBEBF8];
    }
  }

  return v2;
}

+ (void)updateSystemInfoUsingContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Updating system info.", &v18, 2u);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [TRISystemConfiguration alloc];
  paths = [contextCopy paths];
  v8 = [(TRISystemConfiguration *)v6 initWithPaths:paths];

  deviceId = [(TRISystemConfiguration *)v8 deviceId];

  if (!deviceId)
  {
    createPersistentDeviceIdentifier = [(TRISystemConfiguration *)v8 createPersistentDeviceIdentifier];
  }

  client = [contextCopy client];
  v12 = [TRISystemInfo createSystemInfoWithFactorProvider:client];

  if (v12 && ([v12 save] & 1) != 0)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Update sysconfig", &v18, 2u);
    }

    reloadSystemInfo = [(TRISystemConfiguration *)v8 reloadSystemInfo];
  }

  else
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = @"Failed to create system info";
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
    }

    client2 = [contextCopy client];
    v17 = [client2 shouldLogAtLevel:50 withPrivacyRadar:54260918];

    if (v17)
    {
      [contextCopy logErrorMetric:@"Failed to create system info"];
    }
  }

  objc_autoreleasePoolPop(v5);
  notify_post("com.apple.trial.covariates-updated");
}

@end