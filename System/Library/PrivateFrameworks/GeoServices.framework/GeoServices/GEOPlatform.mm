@interface GEOPlatform
+ (id)sharedPlatform;
- (BOOL)isInternalInstall;
- (BOOL)mapsFeatureFreedomEnabled;
- (BOOL)supportsAdvancedMap;
- (BOOL)supportsMultiUser;
- (BOOL)supportsNavigation;
- (GEOPlatform)init;
- (double)deviceScreenScale;
- (id)buildVersion;
- (id)clientCapabilities;
- (id)deviceCountrySKU;
- (id)deviceCountrySKUForServiceRequests;
- (id)hardwareClass;
- (id)hardwareIdentifier;
- (id)osAndBuildVersion;
- (id)osVersion;
- (id)productName;
@end

@implementation GEOPlatform

void __29__GEOPlatform_sharedPlatform__block_invoke()
{
  v0 = objc_alloc_init(GEOPlatform);
  v1 = sharedPlatform_singleton;
  sharedPlatform_singleton = v0;
}

+ (id)sharedPlatform
{
  if (sharedPlatform_once != -1)
  {
    dispatch_once(&sharedPlatform_once, &__block_literal_global_125425);
  }

  v3 = sharedPlatform_singleton;

  return v3;
}

- (GEOPlatform)init
{
  v6.receiver = self;
  v6.super_class = GEOPlatform;
  v2 = [(GEOPlatform *)&v6 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create();
    coreTelephonyIsolationQueue = v2->_coreTelephonyIsolationQueue;
    v2->_coreTelephonyIsolationQueue = v3;
  }

  return v2;
}

- (id)hardwareIdentifier
{
  if (hardwareIdentifier_once != -1)
  {
    dispatch_once(&hardwareIdentifier_once, &__block_literal_global_23_125384);
  }

  v3 = hardwareIdentifier_sHardwareIdentifier;

  return v3;
}

void __33__GEOPlatform_hardwareIdentifier__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = hardwareIdentifier_sHardwareIdentifier;
  hardwareIdentifier_sHardwareIdentifier = v0;

  if (![hardwareIdentifier_sHardwareIdentifier length])
  {
    v2 = hardwareIdentifier_sHardwareIdentifier;
    hardwareIdentifier_sHardwareIdentifier = @"unknown";
  }
}

- (BOOL)isInternalInstall
{
  if (isInternalInstall_once != -1)
  {
    dispatch_once(&isInternalInstall_once, &__block_literal_global_3_125411);
  }

  return isInternalInstall_sIsInternalInstall;
}

uint64_t __32__GEOPlatform_isInternalInstall__block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  isInternalInstall_sIsInternalInstall = result;
  return result;
}

- (BOOL)supportsMultiUser
{
  if (supportsMultiUser_once != -1)
  {
    dispatch_once(&supportsMultiUser_once, &__block_literal_global_84);
  }

  return supportsMultiUser_supportsMultiUser;
}

uint64_t __32__GEOPlatform_supportsMultiUser__block_invoke()
{
  result = MGGetBoolAnswer();
  supportsMultiUser_supportsMultiUser = result;
  return result;
}

- (double)deviceScreenScale
{
  if (deviceScreenScale_once != -1)
  {
    dispatch_once(&deviceScreenScale_once, &__block_literal_global_117_125308);
  }

  return *&deviceScreenScale__deviceScreenScale;
}

void __32__GEOPlatform_deviceScreenScale__block_invoke()
{
  v0 = deviceScreenScale__deviceScreenScale;
  v1 = MGCopyAnswer();
  v2 = v1;
  if (v1)
  {
    [v1 doubleValue];
    v0 = v3;
  }

  deviceScreenScale__deviceScreenScale = v0;
}

- (id)osVersion
{
  if (osVersion_once != -1)
  {
    dispatch_once(&osVersion_once, &__block_literal_global_9_125401);
  }

  v3 = osVersion_sOSVersion;

  return v3;
}

- (id)hardwareClass
{
  if (hardwareClass_onceToken != -1)
  {
    dispatch_once(&hardwareClass_onceToken, &__block_literal_global_31);
  }

  v3 = hardwareClass_sHardwareClass;

  return v3;
}

void __28__GEOPlatform_hardwareClass__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = hardwareClass_sHardwareClass;
  hardwareClass_sHardwareClass = v0;
}

- (id)deviceCountrySKUForServiceRequests
{
  deviceCountrySKU = [(GEOPlatform *)self deviceCountrySKU];
  if (deviceCountrySKU)
  {
    v3 = _getValue(402, &GeoServicesConfig_SKURegionsServiceAllowlist_Metadata, 1, 0, 0, 0);
    v4 = 0;
    if ([v3 containsObject:deviceCountrySKU])
    {
      v4 = deviceCountrySKU;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)deviceCountrySKU
{
  if (deviceCountrySKU_once != -1)
  {
    dispatch_once(&deviceCountrySKU_once, &__block_literal_global_36);
  }

  v3 = deviceCountrySKU_sSKU;

  return v3;
}

void __31__GEOPlatform_deviceCountrySKU__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = deviceCountrySKU_sSKU;
  deviceCountrySKU_sSKU = v0;
}

void __32__GEOPlatform_osAndBuildVersion__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v6 = [*(a1 + 32) osVersion];
  v3 = [*(a1 + 32) buildVersion];
  v4 = [v2 stringWithFormat:@"%@.%@", v6, v3];
  v5 = osAndBuildVersion_sOsAndBuildVersion;
  osAndBuildVersion_sOsAndBuildVersion = v4;
}

void __24__GEOPlatform_osVersion__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = osVersion_sOSVersion;
  osVersion_sOSVersion = v0;
}

- (id)buildVersion
{
  if (buildVersion_once != -1)
  {
    dispatch_once(&buildVersion_once, &__block_literal_global_14_125396);
  }

  v3 = buildVersion_sBuildVersion;

  return v3;
}

void __27__GEOPlatform_buildVersion__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = buildVersion_sBuildVersion;
  buildVersion_sBuildVersion = v0;
}

- (id)osAndBuildVersion
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__GEOPlatform_osAndBuildVersion__block_invoke;
  block[3] = &unk_1E7071900;
  block[4] = self;
  if (osAndBuildVersion_onceToken != -1)
  {
    dispatch_once(&osAndBuildVersion_onceToken, block);
  }

  return osAndBuildVersion_sOsAndBuildVersion;
}

- (BOOL)mapsFeatureFreedomEnabled
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"MapsFeatureFreedom"];

  if (!v4)
  {
    return 0;
  }

  return [(GEOPlatform *)self isInternalInstall];
}

- (id)clientCapabilities
{
  v33 = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__GEOPlatform_clientCapabilities__block_invoke;
  block[3] = &unk_1E7071900;
  block[4] = self;
  if (clientCapabilities_once != -1)
  {
    dispatch_once(&clientCapabilities_once, block);
  }

  v2 = [sClientCapabilities copy];
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v4 = [preferredLanguages mutableCopy];
  [v2 setDisplayLanguages:v4];

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];
  [v2 setDisplayRegion:v6];

  v7 = +[GEOCountryConfiguration sharedConfiguration];
  countryCode = [v7 countryCode];
  [v2 setDeviceCountryCode:countryCode];

  defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
  name = [defaultTimeZone name];
  [v2 setUserCurrentTimezone:name];

  [v2 setSupportsArrivalMapRegion:{GEOConfigGetBOOL(284, &GeoServicesConfig_ShouldUseServerArrivalParameters_Metadata)}];
  [v2 setSupportsGuidanceEvents:1];
  [v2 setSupportsGuidanceEventsInlineShields:1];
  [v2 setSupportsJunctionView:{GEOConfigGetBOOL(278, &GeoServicesConfig_NavdShouldRequestJunctionView_Metadata)}];
  [v2 setSupportsNaturalGuidance:1];
  [v2 setSupportsLicensePlateRestrictions:1];
  [v2 setSupportsCongestionZones:1];
  [v2 setSupportsElectricVehicleRoutes:{GEOConfigGetBOOL(7, &MapsFeaturesConfig_EnableEVRouting_Metadata)}];
  [v2 setSupportsWaypointRoutes:1];
  [v2 setSupportsTrafficCameras:1];
  [v2 setSupportsUserIncidentReports:1];
  [v2 setSupportsSpeedTrapAnnouncements:1];
  [v2 setSupportsAreaEventsEnhancements:1];
  [v2 setSupportsSilentRouteUpdates:1];
  [v2 setReplaceAccidentStringWithCrash:1];
  [v2 setSupportsGuidanceEventImportanceInfo:1];
  [v2 setSupportsRoadComplexities:1];
  [v2 setSupportsDisablingProgressBarFromBannerButtons:1];
  v11 = objc_alloc_init(GEOWalkingSupportedFeatures);
  [v2 setWalkingSupportedFeatures:v11];

  walkingSupportedFeatures = [v2 walkingSupportedFeatures];
  [walkingSupportedFeatures setSupportsWalkingExperience2022:1];

  [v2 setSupportsBannerQueuing:{GEOConfigGetBOOL(468, &GeoServicesConfig_ETATrafficBannerRequestQueuing_Metadata)}];
  [v2 setSupportsBannerQueuingDirections:{GEOConfigGetBOOL(469, &GeoServicesConfig_DirectionsTrafficBannerRequestQueuing_Metadata)}];
  [v2 setSupportsRouteNameRanges:1];
  [v2 setSupportsWalkingSuggestionsAfterParking:1];
  [v2 setSupportsEv2:1];
  [v2 setSupportsGenericCombinationsInstructionsForAllModes:1];
  [v2 setSupportsRouteCameraInputUpdates:1];
  [v2 setSupportsDodgeballCameraInput:1];
  [v2 setSupportsExtendedSpringfieldRegions:1];
  if (GEOConfigGetBOOL(31, &MapsFeaturesConfig_DrivingMultiWaypointRoutesEnabled_Metadata))
  {
    [v2 addSupportsMultipointRouting:0];
  }

  if (GEOConfigGetBOOL(32, &MapsFeaturesConfig_Maps420_Metadata))
  {
    [v2 addSupportsMultipointRouting:3];
  }

  if (GEOConfigGetBOOL(57, &MapsFeaturesConfig_Maps182_Metadata))
  {
    [v2 addSupportsMultipointRouting:2];
  }

  artworkCapabilities = [v2 artworkCapabilities];
  v14 = artworkCapabilities;
  if (artworkCapabilities)
  {
    v15 = artworkCapabilities;
  }

  else
  {
    v15 = objc_alloc_init(GEOArtworkCapabilities);
  }

  v16 = v15;

  [(GEOArtworkCapabilities *)v16 setSupportSfSymbol:1];
  [v2 setArtworkCapabilities:v16];
  [v2 setSupportEmissionsTagging:1];
  if (GEOConfigGetBOOL(337, &GeoServicesConfig_NavdTransitTextInPlanningArtwork_Metadata))
  {
    [v2 addSupportedTransitFeature:1];
  }

  if (GEOConfigGetBOOL(338, &GeoServicesConfig_NavdTransitListInstructionTimeText_Metadata))
  {
    [v2 addSupportedTransitFeature:3];
  }

  [v2 addSupportedTransitFeature:4];
  [v2 addSupportedTransitFeature:5];
  [v2 addSupportedTransitFeature:6];
  v17 = objc_alloc_init(GEOLocalizationCapabilities);
  [(GEOLocalizationCapabilities *)v17 setSupportsLocalizedTrafficControlIcons:1];
  v18 = _getValue(394, &GeoServicesConfig_LocalizationCapabilitiesSupportedPhoneticTypes_Metadata, 1, 0, 0, 0);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        -[GEOLocalizationCapabilities addSupportedPhoneticType:](v17, "addSupportedPhoneticType:", [*(*(&v27 + 1) + 8 * i) unsignedIntegerValue]);
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v20);
  }

  [v2 setLocalizationCapabilities:v17];
  v23 = +[GEOPlatform sharedPlatform];
  deviceCountrySKUForServiceRequests = [v23 deviceCountrySKUForServiceRequests];
  [v2 setDeviceSku:deviceCountrySKUForServiceRequests];

  [v2 setWillSendEvDirectionsFeedback:0];
  v25 = objc_alloc_init(GEOAdvisoryClientCapabilities);
  [(GEOAdvisoryClientCapabilities *)v25 setDownloadOfflineMapActionSupported:1];
  [v2 setAdvisoryClientCapabilities:v25];
  if (GEOConfigGetBOOL(489, &GeoServicesConfig_ShouldRequestWGS84Elevations_Metadata))
  {
    [v2 addSupportedElevationModel:1];
  }

  [v2 addSupportedElevationModel:0];
  [v2 setHasPartnerProfileInstalled:{GEOConfigGetBOOL(72, &MapsFeaturesConfig_EVRoutingEnableAllowListing_Metadata) ^ 1}];

  return v2;
}

void __33__GEOPlatform_clientCapabilities__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(GEOClientCapabilities);
  v3 = sClientCapabilities;
  sClientCapabilities = v2;

  v17 = [*(a1 + 32) hardwareClass];
  [sClientCapabilities setHardwareClass:?];
  if (GEOConfigGetBOOL(506, &GeoServicesConfig_ShouldPopulateFakeHardwareIdentifier_Metadata))
  {
    v4 = [v17 stringByAppendingString:{@"0, 0"}];
    [sClientCapabilities setHardwareModel:v4];
  }

  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 infoDictionary];

  v7 = [v6 objectForKey:*MEMORY[0x1E695E148]];
  [sClientCapabilities setAppMajorVersion:v7];

  v8 = [v6 objectForKey:*MEMORY[0x1E695E500]];
  [sClientCapabilities setAppMinorVersion:v8];

  if ([*(a1 + 32) isInternalInstall])
  {
    [sClientCapabilities setInternalInstall:1];
  }

  v9 = +[GEOPlatform sharedPlatform];
  v10 = [v9 supportsAdvancedMap];
  [sClientCapabilities setSupportsAdvancedMap:v10];

  [sClientCapabilities setMaxManeuverTypeSupported:81];
  [sClientCapabilities setMaxTrafficSpeedSupported:4];
  [sClientCapabilities setMaxFormatterSupported:13];
  [sClientCapabilities setClusteredTransitRoutesSupported:1];
  [sClientCapabilities setRouteOptionsSupported:1];
  [sClientCapabilities setTransitMarketSupport:3];
  [sClientCapabilities setMaxSupportedTransitFareVersion:2];
  v11 = objc_alloc_init(GEOFormattedStringClientCapabilities);
  [sClientCapabilities setFormattedStringClientCapabilities:v11];

  v12 = [sClientCapabilities formattedStringClientCapabilities];
  [v12 setConcatenatingFormatStringsSupported:1];

  v13 = [sClientCapabilities formattedStringClientCapabilities];
  [v13 setTimestampFormatPatternSupported:1];

  v14 = [sClientCapabilities formattedStringClientCapabilities];
  [v14 setStyleSupported:1];

  v15 = [sClientCapabilities formattedStringClientCapabilities];
  [v15 setMaxSupportedAppLinkValue:1];

  [sClientCapabilities setSnapToClosestStopSupported:1];
  [sClientCapabilities setIncludeCrossLanguagePhonetics:1];
  [sClientCapabilities setSupportsLongShieldStrings:1];
  [sClientCapabilities setMaxZilchMessageVersionSupported:4];
  v16 = objc_alloc_init(GEOArtworkCapabilities);
  [(GEOArtworkCapabilities *)v16 setSupportAppleAccountAvatar:1];
  [sClientCapabilities setArtworkCapabilities:v16];
}

- (id)productName
{
  if (productName_once != -1)
  {
    dispatch_once(&productName_once, &__block_literal_global_6_125406);
  }

  v3 = productName_sOSVersion;

  return v3;
}

void __26__GEOPlatform_productName__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = productName_sOSVersion;
  productName_sOSVersion = v0;
}

void __34__GEOPlatform_supportsAdvancedMap__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  supportsAdvancedMap__supportsAdvancedMap = MGGetBoolAnswer();
  v0 = GEOFindOrCreateLog("com.apple.GeoServices", "GEOPlatform");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    if (supportsAdvancedMap__supportsAdvancedMap)
    {
      v1 = @"YES";
    }

    else
    {
      v1 = @"NO";
    }

    v2 = 138412290;
    v3 = v1;
    _os_log_impl(&dword_18660C000, v0, OS_LOG_TYPE_INFO, "Advanced Map Support: %@", &v2, 0xCu);
  }
}

- (BOOL)supportsAdvancedMap
{
  if (supportsAdvancedMap_once != -1)
  {
    dispatch_once(&supportsAdvancedMap_once, &__block_literal_global_55_125354);
  }

  return supportsAdvancedMap__supportsAdvancedMap;
}

- (BOOL)supportsNavigation
{
  if (self)
  {
    if (_deviceSupportsNavigation_once != -1)
    {
      dispatch_once(&_deviceSupportsNavigation_once, &__block_literal_global_41);
    }

    v2 = _deviceSupportsNavigation__supportsNavigation;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t __40__GEOPlatform__deviceSupportsNavigation__block_invoke()
{
  result = MGGetBoolAnswer();
  _deviceSupportsNavigation__supportsNavigation = result;
  return result;
}

@end