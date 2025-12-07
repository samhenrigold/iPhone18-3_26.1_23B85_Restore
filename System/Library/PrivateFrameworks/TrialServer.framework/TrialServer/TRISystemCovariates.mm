@interface TRISystemCovariates
- (TRISystemCovariates)initWithPaths:(id)paths;
- (id)_sharedCovariatesFromConfiguration:(id)configuration;
- (id)_userSpecificCovariatesFromConfiguration:(id)configuration;
- (id)dictionary;
- (id)objectForKey:(id)key;
- (id)tri_checkAIUseCaseEnabled:(id)enabled;
- (id)tri_contextValueWithName:(id)name;
@end

@implementation TRISystemCovariates

- (TRISystemCovariates)initWithPaths:(id)paths
{
  pathsCopy = paths;
  v9.receiver = self;
  v9.super_class = TRISystemCovariates;
  v5 = [(TRISystemCovariates *)&v9 init];
  if (v5)
  {
    v6 = [[TRISystemConfiguration alloc] initWithPaths:pathsCopy];
    sysConfig = v5->_sysConfig;
    v5->_sysConfig = v6;
  }

  return v5;
}

- (id)tri_checkAIUseCaseEnabled:(id)enabled
{
  v13 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  v4 = enabledCopy;
  if (enabledCopy && ![enabledCopy isEqualToString:&stru_287FA0430])
  {
    v5 = objc_alloc_init(TRIXPCCovariateFetcher);
    v10 = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    v8 = [(TRIXPCCovariateFetcher *)v5 appleIntelligenceStateWithUseCaseIdentifiers:v7];

    if (v8)
    {
      v6 = &unk_287FC4C30;
    }

    else
    {
      v6 = &unk_287FC4C48;
    }
  }

  else
  {
    v5 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_error_impl(&dword_26F567000, &v5->super, OS_LOG_TYPE_ERROR, "Invalid useCaseId: %@", buf, 0xCu);
    }

    v6 = &unk_287FC4C30;
  }

  return v6;
}

- (id)tri_contextValueWithName:(id)name
{
  nameCopy = name;
  dictionary = [(TRISystemCovariates *)self dictionary];
  v6 = [dictionary objectForKeyedSubscript:nameCopy];

  if (!v6)
  {
    v8 = MEMORY[0x277CBEAD8];
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"The system covariates do not contain the key %@", nameCopy];
    v10 = [v8 exceptionWithName:@"KeyNotFoundException" reason:nameCopy userInfo:0];
    v11 = v10;

    objc_exception_throw(v10);
  }

  return v6;
}

- (id)_sharedCovariatesFromConfiguration:(id)configuration
{
  v32[19] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  sysConfig = self->_sysConfig;
  if (sysConfig)
  {
    objc_msgSend_marketingOSVersion(sysConfig);
  }

  v31[0] = @"OS";
  osType = [configurationCopy osType];
  v32[0] = osType;
  v31[1] = @"OSBuild";
  osBuild = [configurationCopy osBuild];
  v32[1] = osBuild;
  v31[2] = @"DeviceModelCode";
  deviceModelCode = [configurationCopy deviceModelCode];
  v32[2] = deviceModelCode;
  v31[3] = @"DeviceClass";
  deviceClass = [configurationCopy deviceClass];
  v32[3] = deviceClass;
  v31[4] = @"IsInternalBuild";
  v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configurationCopy, "isInternalBuild")}];
  v32[4] = v26;
  v31[5] = @"IsBetaBuild";
  v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configurationCopy, "isBetaBuild")}];
  v32[5] = v25;
  v31[6] = @"MarketingOSMajor";
  v24 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  v32[6] = v24;
  v31[7] = @"MarketingOSMinor";
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  v32[7] = v23;
  v31[8] = @"MarketingOSPatch";
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  v32[8] = v22;
  v31[9] = @"TrialVersionTag";
  trialVersionTag = [configurationCopy trialVersionTag];
  v32[9] = trialVersionTag;
  v31[10] = @"TrialVersionMajor";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(configurationCopy, "trialVersionMajor")}];
  v32[10] = v20;
  v31[11] = @"TrialVersionMinor";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(configurationCopy, "trialVersionMinor")}];
  v32[11] = v6;
  v31[12] = @"DiagnosticsUsageEnabled";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configurationCopy, "isDiagnosticsAndUsageEnabled")}];
  v32[12] = v7;
  v31[13] = @"HasANE";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configurationCopy, "hasAne")}];
  v32[13] = v8;
  v31[14] = @"ANEVersion";
  aneVersion = [configurationCopy aneVersion];
  v10 = aneVersion;
  if (aneVersion)
  {
    v11 = aneVersion;
  }

  else
  {
    v11 = &stru_287FA0430;
  }

  v32[14] = v11;
  v31[15] = @"IsAutomatedTestDevice";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configurationCopy, "isAutomatedTestDevice")}];
  v32[15] = v12;
  v31[16] = @"DeviceSystemId";
  deviceSystemId = [configurationCopy deviceSystemId];
  v14 = deviceSystemId;
  if (deviceSystemId)
  {
    v15 = deviceSystemId;
  }

  else
  {
    v15 = &stru_287FA0430;
  }

  v32[16] = v15;
  v31[17] = @"DeviceChipId";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(configurationCopy, "deviceChipId")}];
  v32[17] = v16;
  v31[18] = @"DeviceHardwareModel";
  deviceHardwareModel = [configurationCopy deviceHardwareModel];
  v32[18] = deviceHardwareModel;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:19];

  return v18;
}

- (id)_userSpecificCovariatesFromConfiguration:(id)configuration
{
  v33[15] = *MEMORY[0x277D85DE8];
  v32[0] = @"DeviceId";
  configurationCopy = configuration;
  deviceId = [configurationCopy deviceId];
  v31 = deviceId;
  if (deviceId)
  {
    v6 = deviceId;
  }

  else
  {
    v6 = &stru_287FA0430;
  }

  v33[0] = v6;
  v32[1] = @"DeviceLocale";
  userSettingsLanguageCode = [configurationCopy userSettingsLanguageCode];
  v33[1] = userSettingsLanguageCode;
  v32[2] = @"IsBetaUser";
  v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configurationCopy, "isBetaUserWithIsStale:", 0)}];
  v33[2] = v29;
  v32[3] = @"UserSettingsLanguageCode";
  userSettingsLanguageCode2 = [configurationCopy userSettingsLanguageCode];
  v33[3] = userSettingsLanguageCode2;
  v32[4] = @"UserSettingsRegionCode";
  userSettingsRegionCode = [configurationCopy userSettingsRegionCode];
  v8 = userSettingsRegionCode;
  if (userSettingsRegionCode)
  {
    v9 = userSettingsRegionCode;
  }

  else
  {
    v9 = &stru_287FA0430;
  }

  v33[4] = v9;
  v32[5] = @"UserKeyboardEnabledInputModeIdentifiers";
  enabledInputModeIdentifiers = [configurationCopy enabledInputModeIdentifiers];
  v33[5] = enabledInputModeIdentifiers;
  v32[6] = @"UserSettingsSiriLocale";
  userSettingsSiriLocale = [configurationCopy userSettingsSiriLocale];
  v11 = userSettingsSiriLocale;
  if (userSettingsSiriLocale)
  {
    v12 = userSettingsSiriLocale;
  }

  else
  {
    v12 = &stru_287FA0430;
  }

  v33[6] = v12;
  v32[7] = @"BCP47DeviceLocale";
  userSettingsBCP47DeviceLocale = [configurationCopy userSettingsBCP47DeviceLocale];
  v33[7] = userSettingsBCP47DeviceLocale;
  v32[8] = @"CarrierBundleIdentifier";
  carrierBundleIdentifier = [configurationCopy carrierBundleIdentifier];
  v33[8] = carrierBundleIdentifier;
  v32[9] = @"CarrierCountryIsoCode";
  carrierCountryIsoCode = [configurationCopy carrierCountryIsoCode];
  v33[9] = carrierCountryIsoCode;
  v32[10] = @"iCloudId";
  iCloudId = [configurationCopy iCloudId];
  v16 = iCloudId;
  if (iCloudId)
  {
    v17 = iCloudId;
  }

  else
  {
    v17 = &stru_287FA0430;
  }

  v33[10] = v17;
  v32[11] = @"AppleIntelligenceState";
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TRISystemConfiguration appleIntelligenceState](self->_sysConfig, "appleIntelligenceState")}];
  v33[11] = v18;
  v32[12] = @"MapsBucketId";
  mapsBucketId = [configurationCopy mapsBucketId];
  v20 = mapsBucketId;
  v21 = &unk_287FC4C60;
  if (mapsBucketId)
  {
    v21 = mapsBucketId;
  }

  v33[12] = v21;
  v32[13] = @"ActiveDictationLocales";
  activeDictationLocales = [configurationCopy activeDictationLocales];
  v33[13] = activeDictationLocales;
  v32[14] = @"MapsDeviceCountryCode";
  mapsDeviceCountryCode = [configurationCopy mapsDeviceCountryCode];

  v33[14] = mapsDeviceCountryCode;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:15];

  return v24;
}

- (id)dictionary
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dictionary = selfCopy->_dictionary;
  if (!dictionary)
  {
    v4 = +[TRISystemConfiguration sharedInstance];
    isInternalBuild = [v4 isInternalBuild];

    if (isInternalBuild)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v7 = [standardUserDefaults objectForKey:@"systemCovariatesOverride"];
      v8 = selfCopy->_dictionary;
      selfCopy->_dictionary = v7;

      v9 = selfCopy->_dictionary;
      if (v9)
      {
        v10 = v9;

        goto LABEL_8;
      }
    }

    v11 = [(TRISystemCovariates *)selfCopy _sharedCovariatesFromConfiguration:selfCopy->_sysConfig];
    v12 = [v11 mutableCopy];

    v13 = [(TRISystemCovariates *)selfCopy _userSpecificCovariatesFromConfiguration:selfCopy->_sysConfig];
    [v12 addEntriesFromDictionary:v13];
    v14 = [v12 copy];
    v15 = selfCopy->_dictionary;
    selfCopy->_dictionary = v14;

    dictionary = selfCopy->_dictionary;
  }

  v10 = dictionary;
LABEL_8:
  objc_sync_exit(selfCopy);

  return v10;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  dictionary = [(TRISystemCovariates *)self dictionary];
  v6 = [dictionary objectForKeyedSubscript:keyCopy];

  return v6;
}

@end