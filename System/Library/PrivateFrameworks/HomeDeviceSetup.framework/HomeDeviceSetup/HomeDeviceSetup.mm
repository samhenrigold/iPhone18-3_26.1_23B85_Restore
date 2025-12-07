id initSFLocalizedStringForKey(void *a1)
{
  v1 = SharingLibrary_sOnce;
  v2 = a1;
  if (v1 != -1)
  {
    initSFLocalizedStringForKey_cold_1();
  }

  softLinkSFLocalizedStringForKey = dlsym(SharingLibrary_sLib, "SFLocalizedStringForKey");
  v3 = (softLinkSFLocalizedStringForKey)(v2);

  return v3;
}

id SFNormalizeEmailAddress(void *a1, int a2)
{
  v3 = [a1 lowercaseString];
  v4 = v3;
  if (a2 && (([v3 hasSuffix:@"@me.com"] & 1) != 0 || objc_msgSend(v4, "hasSuffix:", @"@mac.com")))
  {
    v5 = [v4 componentsSeparatedByString:@"@"];
    if ([v5 count])
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [v5 objectAtIndexedSubscript:0];
      v8 = [v6 stringWithFormat:@"%@@icloud.com", v7];
    }

    else
    {
      v8 = v4;
    }
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

Class initTROperationQueue()
{
  if (TouchRemoteLibrary_sOnce != -1)
  {
    initTROperationQueue_cold_1();
  }

  result = objc_getClass("TROperationQueue");
  classTROperationQueue = result;
  getTROperationQueueClass = TROperationQueueFunction;
  return result;
}

void *__TouchRemoteLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/TouchRemote.framework/TouchRemote", 2);
  TouchRemoteLibrary_sLib = result;
  return result;
}

Class initHMMutableHomeManagerConfiguration()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    initHMMutableHomeManagerConfiguration_cold_1();
  }

  result = objc_getClass("HMMutableHomeManagerConfiguration");
  classHMMutableHomeManagerConfiguration = result;
  getHMMutableHomeManagerConfigurationClass = HMMutableHomeManagerConfigurationFunction;
  return result;
}

void *__HomeKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib = result;
  return result;
}

Class initHMHomeManager()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    initHMMutableHomeManagerConfiguration_cold_1();
  }

  result = objc_getClass("HMHomeManager");
  classHMHomeManager = result;
  getHMHomeManagerClass = HMHomeManagerFunction;
  return result;
}

Class initHMAccessoryBrowser()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    initHMMutableHomeManagerConfiguration_cold_1();
  }

  result = objc_getClass("HMAccessoryBrowser");
  classHMAccessoryBrowser = result;
  getHMAccessoryBrowserClass = HMAccessoryBrowserFunction;
  return result;
}

Class initHMDeviceSetupOperation()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    initHMMutableHomeManagerConfiguration_cold_1();
  }

  result = objc_getClass("HMDeviceSetupOperation");
  classHMDeviceSetupOperation = result;
  getHMDeviceSetupOperationClass = HMDeviceSetupOperationFunction;
  return result;
}

void *__SharingLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Sharing.framework/Sharing", 2);
  SharingLibrary_sLib = result;
  return result;
}

Class initHMMediaSystemBuilder()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    initHMMutableHomeManagerConfiguration_cold_1();
  }

  result = objc_getClass("HMMediaSystemBuilder");
  classHMMediaSystemBuilder = result;
  getHMMediaSystemBuilderClass = HMMediaSystemBuilderFunction;
  return result;
}

Class initHMMediaSystemRole()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    initHMMutableHomeManagerConfiguration_cold_1();
  }

  result = objc_getClass("HMMediaSystemRole");
  classHMMediaSystemRole = result;
  getHMMediaSystemRoleClass = HMMediaSystemRoleFunction;
  return result;
}

Class initHMMediaSystemComponent()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    initHMMutableHomeManagerConfiguration_cold_1();
  }

  result = objc_getClass("HMMediaSystemComponent");
  classHMMediaSystemComponent = result;
  getHMMediaSystemComponentClass = HMMediaSystemComponentFunction;
  return result;
}

id initValHMAccessoryCategoryTypeHomePod(uint64_t a1)
{
  if (softLinkOnceHMAccessoryCategoryTypeHomePod != -1)
  {
    initValHMAccessoryCategoryTypeHomePod_cold_1();
  }

  v2 = constantValHMAccessoryCategoryTypeHomePod;

  return v2;
}

void __initValHMAccessoryCategoryTypeHomePod_block_invoke()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    initHMMutableHomeManagerConfiguration_cold_1();
  }

  v0 = dlsym(HomeKitLibrary_sLib, "HMAccessoryCategoryTypeHomePod");
  if (v0)
  {
    objc_storeStrong(&constantValHMAccessoryCategoryTypeHomePod, *v0);
  }

  getHMAccessoryCategoryTypeHomePod = HMAccessoryCategoryTypeHomePodFunction;
}

id initValHMAccessoryCategoryTypeAppleTV(uint64_t a1)
{
  if (softLinkOnceHMAccessoryCategoryTypeAppleTV != -1)
  {
    initValHMAccessoryCategoryTypeAppleTV_cold_1();
  }

  v2 = constantValHMAccessoryCategoryTypeAppleTV;

  return v2;
}

void __initValHMAccessoryCategoryTypeAppleTV_block_invoke()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    initHMMutableHomeManagerConfiguration_cold_1();
  }

  v0 = dlsym(HomeKitLibrary_sLib, "HMAccessoryCategoryTypeAppleTV");
  if (v0)
  {
    objc_storeStrong(&constantValHMAccessoryCategoryTypeAppleTV, *v0);
  }

  getHMAccessoryCategoryTypeAppleTV = HMAccessoryCategoryTypeAppleTVFunction;
}

Class initASDSystemAppRequest()
{
  if (AppStoreDaemonLibrary_sOnce != -1)
  {
    initASDSystemAppRequest_cold_1();
  }

  result = objc_getClass("ASDSystemAppRequest");
  classASDSystemAppRequest = result;
  getASDSystemAppRequestClass = ASDSystemAppRequestFunction;
  return result;
}

void *__AppStoreDaemonLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppStoreDaemon.framework/AppStoreDaemon", 2);
  AppStoreDaemonLibrary_sLib = result;
  return result;
}

Class initSFAirDropDiscoveryController()
{
  if (SharingUILibrary_sOnce != -1)
  {
    initSFAirDropDiscoveryController_cold_1();
  }

  result = objc_getClass("SFAirDropDiscoveryController");
  classSFAirDropDiscoveryController = result;
  getSFAirDropDiscoveryControllerClass = SFAirDropDiscoveryControllerFunction;
  return result;
}

void *__SharingUILibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/SharingUI.framework/SharingUI", 2);
  SharingUILibrary_sLib = result;
  return result;
}

void HDSMetricsLog(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if (gLogCategory_Metrics <= 30 && (gLogCategory_Metrics != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  softLinkAnalyticsSendEvent(v4, v3);
}

void initAnalyticsSendEvent(void *a1, void *a2)
{
  v3 = CoreAnalyticsLibrary_sOnce;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    initAnalyticsSendEvent_cold_1();
  }

  softLinkAnalyticsSendEvent = dlsym(CoreAnalyticsLibrary_sLib, "AnalyticsSendEvent");
  softLinkAnalyticsSendEvent(v5, v4);
}

void *__CoreAnalyticsLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics", 2);
  CoreAnalyticsLibrary_sLib = result;
  return result;
}

void sub_252F8F01C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_252F9052C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

Class initHMHomeManager_0()
{
  if (HomeKitLibrary_sOnce_0 != -1)
  {
    initHMHomeManager_cold_1();
  }

  result = objc_getClass("HMHomeManager");
  classHMHomeManager_0 = result;
  getHMHomeManagerClass_0 = HMHomeManagerFunction_0;
  return result;
}

void *__HomeKitLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_0 = result;
  return result;
}

uint64_t initAudioServicesSetProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (AudioToolboxLibrary_sOnce != -1)
  {
    initAudioServicesSetProperty_cold_1();
  }

  v10 = dlsym(AudioToolboxLibrary_sLib, "AudioServicesSetProperty");
  softLinkAudioServicesSetProperty = v10;

  return (v10)(a1, a2, a3, a4, a5);
}

void *__AudioToolboxLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/AudioToolbox", 2);
  AudioToolboxLibrary_sLib = result;
  return result;
}

Class initAPCPlayer()
{
  if (AudioPasscodeLibrary_sOnce != -1)
  {
    initAPCPlayer_cold_1();
  }

  result = objc_getClass("APCPlayer");
  classAPCPlayer = result;
  getAPCPlayerClass = APCPlayerFunction;
  return result;
}

void *__AudioPasscodeLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AudioPasscode.framework/AudioPasscode", 2);
  AudioPasscodeLibrary_sLib = result;
  return result;
}

uint64_t init_AXSVoiceOverTouchSetEnabled(uint64_t a1)
{
  if (AccessibilityLibrary_sOnce != -1)
  {
    init_AXSVoiceOverTouchSetEnabled_cold_1();
  }

  v2 = dlsym(AccessibilityLibrary_sLib, "_AXSVoiceOverTouchSetEnabled");
  softLink_AXSVoiceOverTouchSetEnabled = v2;

  return v2(a1);
}

void *__AccessibilityLibrary_block_invoke()
{
  result = dlopen("/usr/lib/libAccessibility.dylib", 2);
  AccessibilityLibrary_sLib = result;
  return result;
}

uint64_t init_AXSVoiceOverTouchSetSpeakingRate(float a1)
{
  if (AccessibilityLibrary_sOnce != -1)
  {
    init_AXSVoiceOverTouchSetEnabled_cold_1();
  }

  v2 = dlsym(AccessibilityLibrary_sLib, "_AXSVoiceOverTouchSetSpeakingRate");
  softLink_AXSVoiceOverTouchSetSpeakingRate = v2;
  v3.n128_f32[0] = a1;

  return (v2)(v3);
}

Class initAXSettings()
{
  if (AccessibilityUtilitiesLibrary_sOnce != -1)
  {
    initAXSettings_cold_1();
  }

  result = objc_getClass("AXSettings");
  classAXSettings = result;
  getAXSettingsClass = AXSettingsFunction;
  return result;
}

void *__AccessibilityUtilitiesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AccessibilityUtilities.framework/AccessibilityUtilities", 2);
  AccessibilityUtilitiesLibrary_sLib = result;
  return result;
}

Class initCLLocationManager()
{
  if (CoreLocationLibrary_sOnce != -1)
  {
    initCLLocationManager_cold_1();
  }

  result = objc_getClass("CLLocationManager");
  classCLLocationManager = result;
  getCLLocationManagerClass = CLLocationManagerFunction;
  return result;
}

void *__CoreLocationLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreLocation.framework/CoreLocation", 2);
  CoreLocationLibrary_sLib = result;
  return result;
}

uint64_t initValTMSourceProxBuddy()
{
  if (CoreTimeLibrary_sOnce != -1)
  {
    initValTMSourceProxBuddy_cold_1();
  }

  v0 = dlsym(CoreTimeLibrary_sLib, "TMSourceProxBuddy");
  if (v0)
  {
    result = *v0;
    constantValTMSourceProxBuddy = result;
  }

  else
  {
    result = constantValTMSourceProxBuddy;
  }

  getTMSourceProxBuddy = type metadata for ;
  return result;
}

void *__CoreTimeLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreTime.framework/CoreTime", 2);
  CoreTimeLibrary_sLib = result;
  return result;
}

uint64_t initTMSetSourceTime(uint64_t a1, double a2, double a3)
{
  if (CoreTimeLibrary_sOnce != -1)
  {
    initValTMSourceProxBuddy_cold_1();
  }

  v6 = dlsym(CoreTimeLibrary_sLib, "TMSetSourceTime");
  softLinkTMSetSourceTime = v6;
  v7.n128_f64[0] = a2;
  v8.n128_f64[0] = a3;

  return (v6)(a1, v7, v8);
}

Class initHMDeviceSetupOperationHandler()
{
  if (HomeKitLibrary_sOnce_0 != -1)
  {
    initHMHomeManager_cold_1();
  }

  result = objc_getClass("HMDeviceSetupOperationHandler");
  classHMDeviceSetupOperationHandler = result;
  getHMDeviceSetupOperationHandlerClass = HMDeviceSetupOperationHandlerFunction;
  return result;
}

Class initVTPreferences()
{
  if (VoiceTriggerLibrary_sOnce != -1)
  {
    initVTPreferences_cold_1();
  }

  result = objc_getClass("VTPreferences");
  classVTPreferences = result;
  getVTPreferencesClass = VTPreferencesFunction;
  return result;
}

void *__VoiceTriggerLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/VoiceTrigger.framework/VoiceTrigger", 2);
  VoiceTriggerLibrary_sLib = result;
  return result;
}

uint64_t initTMSetAutomaticTimeZoneEnabled(uint64_t a1)
{
  if (CoreTimeLibrary_sOnce != -1)
  {
    initValTMSourceProxBuddy_cold_1();
  }

  v2 = dlsym(CoreTimeLibrary_sLib, "TMSetAutomaticTimeZoneEnabled");
  softLinkTMSetAutomaticTimeZoneEnabled = v2;

  return v2(a1);
}

uint64_t initTMSetAutomaticTimeEnabled(uint64_t a1)
{
  if (CoreTimeLibrary_sOnce != -1)
  {
    initValTMSourceProxBuddy_cold_1();
  }

  v2 = dlsym(CoreTimeLibrary_sLib, "TMSetAutomaticTimeEnabled");
  softLinkTMSetAutomaticTimeEnabled = v2;

  return v2(a1);
}

void initTMSetupTime(void *a1, void *a2, double a3)
{
  v5 = CoreTimeLibrary_sOnce;
  v6 = a2;
  v7 = a1;
  if (v5 != -1)
  {
    initValTMSourceProxBuddy_cold_1();
  }

  softLinkTMSetupTime = dlsym(CoreTimeLibrary_sLib, "TMSetupTime");
  softLinkTMSetupTime(v7, v6, a3);
}

Class initFLFollowUpController()
{
  if (CoreFollowUpLibrary_sOnce != -1)
  {
    initFLFollowUpController_cold_1();
  }

  result = objc_getClass("FLFollowUpController");
  classFLFollowUpController = result;
  getFLFollowUpControllerClass = FLFollowUpControllerFunction;
  return result;
}

void *__CoreFollowUpLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreFollowUp.framework/CoreFollowUp", 2);
  CoreFollowUpLibrary_sLib = result;
  return result;
}

Class initSUICDefaultVoicePreviewer()
{
  if (SiriUICoreLibrary_sOnce != -1)
  {
    initSUICDefaultVoicePreviewer_cold_1();
  }

  result = objc_getClass("SUICDefaultVoicePreviewer");
  classSUICDefaultVoicePreviewer = result;
  getSUICDefaultVoicePreviewerClass = SUICDefaultVoicePreviewerFunction;
  return result;
}

void *__SiriUICoreLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SiriUICore.framework/SiriUICore", 2);
  SiriUICoreLibrary_sLib = result;
  return result;
}

Class initAFVoiceInfo()
{
  if (AssistantServicesLibrary_sOnce != -1)
  {
    initAFVoiceInfo_cold_1();
  }

  result = objc_getClass("AFVoiceInfo");
  classAFVoiceInfo = result;
  getAFVoiceInfoClass = AFVoiceInfoFunction;
  return result;
}

void *__AssistantServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AssistantServices.framework/AssistantServices", 2);
  AssistantServicesLibrary_sLib = result;
  return result;
}

void initAFPreferencesSetHorsemanSupplementalLanguageDictionary(void *a1)
{
  v1 = AssistantServicesLibrary_sOnce;
  v2 = a1;
  if (v1 != -1)
  {
    initAFVoiceInfo_cold_1();
  }

  softLinkAFPreferencesSetHorsemanSupplementalLanguageDictionary = dlsym(AssistantServicesLibrary_sLib, "AFPreferencesSetHorsemanSupplementalLanguageDictionary");
  softLinkAFPreferencesSetHorsemanSupplementalLanguageDictionary(v2);
}

Class initAFConnection()
{
  if (AssistantServicesLibrary_sOnce != -1)
  {
    initAFVoiceInfo_cold_1();
  }

  result = objc_getClass("AFConnection");
  classAFConnection = result;
  getAFConnectionClass = AFConnectionFunction;
  return result;
}

Class initAFLocalization()
{
  if (AssistantServicesLibrary_sOnce != -1)
  {
    initAFVoiceInfo_cold_1();
  }

  result = objc_getClass("AFLocalization");
  classAFLocalization = result;
  getAFLocalizationClass = AFLocalizationFunction;
  return result;
}

uint64_t initAFPreferencesSupportedLanguages()
{
  if (AssistantServicesLibrary_sOnce != -1)
  {
    initAFVoiceInfo_cold_1();
  }

  v0 = dlsym(AssistantServicesLibrary_sLib, "AFPreferencesSupportedLanguages");
  softLinkAFPreferencesSupportedLanguages = v0;

  return (v0)();
}

Class initAFPreferences()
{
  if (AssistantServicesLibrary_sOnce != -1)
  {
    initAFVoiceInfo_cold_1();
  }

  result = objc_getClass("AFPreferences");
  classAFPreferences = result;
  getAFPreferencesClass = AFPreferencesFunction;
  return result;
}

Class initAFSettingsConnection()
{
  if (AssistantServicesLibrary_sOnce != -1)
  {
    initAFVoiceInfo_cold_1();
  }

  result = objc_getClass("AFSettingsConnection");
  classAFSettingsConnection = result;
  getAFSettingsConnectionClass = AFSettingsConnectionFunction;
  return result;
}

Class initICCloudClient()
{
  if (iTunesCloudLibrary_sOnce != -1)
  {
    initICCloudClient_cold_1();
  }

  result = objc_getClass("ICCloudClient");
  classICCloudClient = result;
  getICCloudClientClass = ICCloudClientFunction;
  return result;
}

void *__iTunesCloudLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/iTunesCloud.framework/iTunesCloud", 2);
  iTunesCloudLibrary_sLib = result;
  return result;
}

Class initCWFScanParameters()
{
  if (CoreWifiLibrary_sOnce != -1)
  {
    initCWFScanParameters_cold_1();
  }

  result = objc_getClass("CWFScanParameters");
  classCWFScanParameters = result;
  getCWFScanParametersClass = CWFScanParametersFunction;
  return result;
}

void *__CoreWifiLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreWifi.framework/CoreWifi", 2);
  CoreWifiLibrary_sLib = result;
  return result;
}

Class initCWFInterface()
{
  if (CoreWifiLibrary_sOnce != -1)
  {
    initCWFScanParameters_cold_1();
  }

  result = objc_getClass("CWFInterface");
  classCWFInterface = result;
  getCWFInterfaceClass = CWFInterfaceFunction;
  return result;
}

void sub_252F9CC58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_252F9E544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_252FA0CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

const char *CUWiFiShareableStatusToString(int a1)
{
  if ((a1 - 2) > 7)
  {
    return "?";
  }

  else
  {
    return off_2797154D0[a1 - 2];
  }
}

void sub_252FBFE08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

const char *SFDeviceSetupProgressEventToString(int a1)
{
  if (a1 > 279)
  {
    if (a1 <= 709)
    {
      if (a1 <= 499)
      {
        if (a1 > 400)
        {
          if (a1 > 419)
          {
            switch(a1)
            {
              case 420:
                return "FileTransferReady";
              case 430:
                return "eSimExternal2FAStart";
              case 431:
                return "eSimExternal2FAStop";
            }
          }

          else
          {
            switch(a1)
            {
              case 401:
                return "PINPair";
              case 410:
                return "MigrateStart";
              case 411:
                return "MigrateStop";
            }
          }
        }

        else if (a1 > 299)
        {
          switch(a1)
          {
            case 300:
              return "BackupProgress";
            case 310:
              return "SyncProgress";
            case 400:
              return "StopSetup";
          }
        }

        else
        {
          switch(a1)
          {
            case 280:
              return "TVLCalFailed";
            case 281:
              return "TVLCalTryAgain";
            case 282:
              return "TVLCalFinal";
          }
        }
      }

      else if (a1 <= 554)
      {
        if (a1 > 529)
        {
          switch(a1)
          {
            case 530:
              return "SiriDialogBHome";
            case 540:
              return "SiriDialogBNews";
            case 550:
              return "SiriDialogBWeather";
          }
        }

        else
        {
          switch(a1)
          {
            case 500:
              return "SiriWelcome";
            case 510:
              return "SiriDialogA";
            case 520:
              return "SiriDialogBStart";
          }
        }
      }

      else if (a1 <= 569)
      {
        switch(a1)
        {
          case 555:
            return "SiriDialogBClock";
          case 558:
            return "SiriDialogBMusic";
          case 560:
            return "SiriDialogCMusic";
        }
      }

      else if (a1 > 599)
      {
        if (a1 == 600)
        {
          return "SiriSkipDemo";
        }

        if (a1 == 700)
        {
          return "StopSetupLEDs";
        }
      }

      else
      {
        if (a1 == 570)
        {
          return "SiriDialogCNews";
        }

        if (a1 == 580)
        {
          return "SiriDialogCWeather";
        }
      }

      return "?";
    }

    if (a1 <= 899)
    {
      if (a1 <= 802)
      {
        if (a1 == 710)
        {
          return "AudioPasscodeEnded";
        }

        if (a1 == 800)
        {
          return "AuthAccountsStart";
        }
      }

      else
      {
        switch(a1)
        {
          case 803:
            return "AuthAccountsiCloudProgress";
          case 804:
            return "AuthAccountsStoreProgress";
          case 805:
            return "AuthAccountsGameCenterProgress";
        }
      }

      return "?";
    }

    if (a1 > 999)
    {
      if (a1 <= 1099)
      {
        if (a1 == 1000)
        {
          return "SecureIntentStart";
        }

        if (a1 == 1001)
        {
          return "SecureIntentFinish";
        }
      }

      else
      {
        switch(a1)
        {
          case 1100:
            return "OneTimeCodeDetected";
          case 2000:
            return "DependentStart";
          case 2001:
            return "DependentEnd";
        }
      }

      return "?";
    }

    switch(a1)
    {
      case 900:
        result = "SU-No-SetupScanAttempt";
        break;
      case 901:
        result = "SU-No-SetupStatusUpdate";
        break;
      case 902:
        result = "SU-No-SetupWipeWifi";
        break;
      case 903:
        result = "SU-No-SetupCancelled";
        break;
      case 904:
        result = "SU-No-SetupObliterate";
        break;
      case 905:
        result = "SU-No-SetupCannotCancel";
        break;
      case 906:
        result = "SysDrop AirDrop Event";
        break;
      case 907:
        result = "SysDrop Sysdiagnose Event";
        break;
      case 908:
        result = "SysDrop Cancel Event";
        break;
      case 909:
        result = "File Transfer Progress Event";
        break;
      case 910:
        result = "File Transfer Completed Event";
        break;
      case 911:
        result = "iOSWiFiSetup";
        break;
      case 912:
        result = "HKPrimaryResidentSSIDFetchStart";
        break;
      case 913:
        result = "LoggingProfileTransfer";
        break;
      default:
        return "?";
    }
  }

  else
  {
    if (a1 > 121)
    {
      if (a1 <= 239)
      {
        if (a1 > 209)
        {
          if (a1 > 229)
          {
            switch(a1)
            {
              case 230:
                return "HomeKitStart";
              case 234:
                return "HomeKitSetupStart";
              case 236:
                return "CDPSetupStart";
            }
          }

          else
          {
            switch(a1)
            {
              case 210:
                return "ActivationStart";
              case 220:
                return "iCloudStart";
              case 224:
                return "AppleIDSetupStart";
            }
          }
        }

        else if (a1 > 139)
        {
          switch(a1)
          {
            case 140:
              return "RecognizeVoice";
            case 150:
              return "SiriForEveryone";
            case 200:
              return "WiFiStart";
          }
        }

        else
        {
          switch(a1)
          {
            case 122:
              return "CheckingAppleMusic";
            case 124:
              return "CheckingAccount";
            case 130:
              return "WiFiPoweredOff";
          }
        }
      }

      else if (a1 <= 269)
      {
        if (a1 > 249)
        {
          switch(a1)
          {
            case 250:
              return "ReportSuccess";
            case 260:
              return "TVLSStart";
            case 264:
              return "TVLSFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 240:
              return "BuddyStarting";
            case 241:
              return "BuddyProgress";
            case 242:
              return "BuddyFinished";
          }
        }
      }

      else
      {
        if (a1 > 275)
        {
          if (a1 > 277)
          {
            if (a1 == 278)
            {
              return "TVLCalStart";
            }

            else
            {
              return "TVLCalStep";
            }
          }

          else if (a1 == 276)
          {
            return "TVLSTryAgain";
          }

          else
          {
            return "TVLSToneBegan";
          }
        }

        switch(a1)
        {
          case 270:
            return "TVLSEstimateStart";
          case 272:
            return "TVLSEstimateFinal";
          case 274:
            return "TVLSEstimateFailed";
        }
      }

      return "?";
    }

    if (a1 > 69)
    {
      if (a1 <= 95)
      {
        if (a1 > 91)
        {
          switch(a1)
          {
            case '\\':
              return "StepStart";
            case '^':
              return "StepFinish";
            case '_':
              return "PreFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 'F':
              return "SecurityFinish";
            case 'P':
              return "BasicConfigStart";
            case 'Z':
              return "BasicConfigFinish";
          }
        }

        return "?";
      }

      if (a1 > 98)
      {
        switch(a1)
        {
          case 'c':
            return "SetupPeerSWUpdate";
          case 'd':
            return "Finished";
          case 'x':
            return "CheckingiCloud";
        }

        return "?";
      }

      if (a1 == 96)
      {
        return "SetupFinished";
      }

      else if (a1 == 97)
      {
        return "SetupResumed";
      }

      else
      {
        return "SetupSuspend";
      }
    }

    else
    {
      if (a1 > 32)
      {
        if (a1 > 49)
        {
          switch(a1)
          {
            case '2':
              return "PreAuthFinish";
            case '<':
              return "SecurityStart";
            case 'A':
              return "SecurityAPCLoopStart";
          }
        }

        else
        {
          switch(a1)
          {
            case '!':
              return "SessionSecured";
            case '#':
              return "ConnectStart";
            case '(':
              return "PreAuthStart";
          }
        }

        return "?";
      }

      if (a1 <= 29)
      {
        switch(a1)
        {
          case 0:
            return "Invalid";
          case 10:
            return "Start";
          case 20:
            return "Final";
        }

        return "?";
      }

      if (a1 == 30)
      {
        return "Error";
      }

      else if (a1 == 31)
      {
        return "SessionStarted";
      }

      else
      {
        return "SessionEnded";
      }
    }
  }

  return result;
}

void sub_252FCAFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_252FCF888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initCWFInterface_0()
{
  if (CoreWifiLibrary_sOnce_0 != -1)
  {
    initCWFInterface_cold_1();
  }

  result = objc_getClass("CWFInterface");
  classCWFInterface_0 = result;
  getCWFInterfaceClass_0 = CWFInterfaceFunction_0;
  return result;
}

void *__CoreWifiLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreWifi.framework/CoreWifi", 2);
  CoreWifiLibrary_sLib_0 = result;
  return result;
}

Class initAFSettingsConnection_0()
{
  if (AssistantServicesLibrary_sOnce_0 != -1)
  {
    initAFSettingsConnection_cold_1();
  }

  result = objc_getClass("AFSettingsConnection");
  classAFSettingsConnection_0 = result;
  getAFSettingsConnectionClass_0 = AFSettingsConnectionFunction_0;
  return result;
}

void *__AssistantServicesLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/AssistantServices.framework/AssistantServices", 2);
  AssistantServicesLibrary_sLib_0 = result;
  return result;
}

Class initSSAccountStore()
{
  if (StoreServicesLibrary_sOnce != -1)
  {
    initSSAccountStore_cold_1();
  }

  result = objc_getClass("SSAccountStore");
  classSSAccountStore = result;
  getSSAccountStoreClass = SSAccountStoreFunction;
  return result;
}

void *__StoreServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/StoreServices.framework/StoreServices", 2);
  StoreServicesLibrary_sLib = result;
  return result;
}

id initValAVAudioSessionInterruptionNotification(uint64_t a1)
{
  if (softLinkOnceAVAudioSessionInterruptionNotification != -1)
  {
    initValAVAudioSessionInterruptionNotification_cold_1();
  }

  v2 = constantValAVAudioSessionInterruptionNotification;

  return v2;
}

void __initValAVAudioSessionInterruptionNotification_block_invoke()
{
  if (AVFoundationLibrary_sOnce != -1)
  {
    __initValAVAudioSessionInterruptionNotification_block_invoke_cold_1();
  }

  v0 = dlsym(AVFoundationLibrary_sLib, "AVAudioSessionInterruptionNotification");
  if (v0)
  {
    objc_storeStrong(&constantValAVAudioSessionInterruptionNotification, *v0);
  }

  getAVAudioSessionInterruptionNotification = AVAudioSessionInterruptionNotificationFunction;
}

void *__AVFoundationLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AVFoundation.framework/AVFoundation", 2);
  AVFoundationLibrary_sLib = result;
  return result;
}

Class initSKCloudServiceController()
{
  if (StoreKitLibrary_sOnce != -1)
  {
    initSKCloudServiceController_cold_1();
  }

  result = objc_getClass("SKCloudServiceController");
  classSKCloudServiceController = result;
  getSKCloudServiceControllerClass = SKCloudServiceControllerFunction;
  return result;
}

void *__StoreKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/StoreKit.framework/StoreKit", 2);
  StoreKitLibrary_sLib = result;
  return result;
}

Class initHFUtilities()
{
  if (HomeLibrary_sOnce != -1)
  {
    initHFUtilities_cold_1();
  }

  result = objc_getClass("HFUtilities");
  classHFUtilities = result;
  getHFUtilitiesClass = HFUtilitiesFunction;
  return result;
}

void *__HomeLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Home.framework/Home", 2);
  HomeLibrary_sLib = result;
  return result;
}

Class initAFPreferences_0()
{
  if (AssistantServicesLibrary_sOnce_0 != -1)
  {
    initAFSettingsConnection_cold_1();
  }

  result = objc_getClass("AFPreferences");
  classAFPreferences_0 = result;
  getAFPreferencesClass_0 = AFPreferencesFunction_0;
  return result;
}

Class initAFVoiceInfo_0()
{
  if (AssistantServicesLibrary_sOnce_0 != -1)
  {
    initAFSettingsConnection_cold_1();
  }

  result = objc_getClass("AFVoiceInfo");
  classAFVoiceInfo_0 = result;
  getAFVoiceInfoClass_0 = AFVoiceInfoFunction_0;
  return result;
}

Class initCLLocationManager_0()
{
  if (CoreLocationLibrary_sOnce_0 != -1)
  {
    initCLLocationManager_cold_1_0();
  }

  result = objc_getClass("CLLocationManager");
  classCLLocationManager_0 = result;
  getCLLocationManagerClass_0 = CLLocationManagerFunction_0;
  return result;
}

void *__CoreLocationLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/Frameworks/CoreLocation.framework/CoreLocation", 2);
  CoreLocationLibrary_sLib_0 = result;
  return result;
}

Class initAARemoteServer()
{
  if (AppleAccountLibrary_sOnce != -1)
  {
    initAARemoteServer_cold_1();
  }

  result = objc_getClass("AARemoteServer");
  classAARemoteServer = result;
  getAARemoteServerClass = AARemoteServerFunction;
  return result;
}

void *__AppleAccountLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleAccount.framework/AppleAccount", 2);
  AppleAccountLibrary_sLib = result;
  return result;
}

Class initAKAccountManager()
{
  if (AuthKitLibrary_sOnce != -1)
  {
    initAKAccountManager_cold_1();
  }

  result = objc_getClass("AKAccountManager");
  classAKAccountManager = result;
  getAKAccountManagerClass = AKAccountManagerFunction;
  return result;
}

void *__AuthKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AuthKit.framework/AuthKit", 2);
  AuthKitLibrary_sLib = result;
  return result;
}

id initValkAccountDataclassHome(uint64_t a1)
{
  if (softLinkOncekAccountDataclassHome != -1)
  {
    initValkAccountDataclassHome_cold_1();
  }

  v2 = constantValkAccountDataclassHome;

  return v2;
}

void __initValkAccountDataclassHome_block_invoke()
{
  if (AccountsLibrary_sOnce != -1)
  {
    __initValkAccountDataclassHome_block_invoke_cold_1();
  }

  v0 = dlsym(AccountsLibrary_sLib, "kAccountDataclassHome");
  if (v0)
  {
    objc_storeStrong(&constantValkAccountDataclassHome, *v0);
  }

  getkAccountDataclassHome = kAccountDataclassHomeFunction;
}

void *__AccountsLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Accounts.framework/Accounts", 2);
  AccountsLibrary_sLib = result;
  return result;
}

Class initCDPAccount()
{
  if (CoreCDPLibrary_sOnce != -1)
  {
    initCDPAccount_cold_1();
  }

  result = objc_getClass("CDPAccount");
  classCDPAccount = result;
  getCDPAccountClass = CDPAccountFunction;
  return result;
}

void *__CoreCDPLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreCDP.framework/CoreCDP", 2);
  CoreCDPLibrary_sLib = result;
  return result;
}

Class initVTPreferences_0()
{
  if (VoiceTriggerLibrary_sOnce_0 != -1)
  {
    initVTPreferences_cold_1_0();
  }

  result = objc_getClass("VTPreferences");
  classVTPreferences_0 = result;
  getVTPreferencesClass_0 = VTPreferencesFunction_0;
  return result;
}

void *__VoiceTriggerLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/VoiceTrigger.framework/VoiceTrigger", 2);
  VoiceTriggerLibrary_sLib_0 = result;
  return result;
}

Class initCWFNetworkSignature()
{
  if (CoreWifiLibrary_sOnce_0 != -1)
  {
    initCWFNetworkSignature_cold_1();
  }

  result = objc_getClass("CWFNetworkSignature");
  classCWFNetworkSignature = result;
  getCWFNetworkSignatureClass = CWFNetworkSignatureFunction;
  return result;
}

uint64_t initAFPreferencesHorsemanSupplementalLanguageDictionary()
{
  if (AssistantServicesLibrary_sOnce_0 != -1)
  {
    initAFSettingsConnection_cold_1();
  }

  v0 = dlsym(AssistantServicesLibrary_sLib_0, "AFPreferencesHorsemanSupplementalLanguageDictionary");
  softLinkAFPreferencesHorsemanSupplementalLanguageDictionary = v0;

  return (v0)();
}

Class initCDPWalrusStateController()
{
  if (CoreCDPLibrary_sOnce != -1)
  {
    initCDPAccount_cold_1();
  }

  result = objc_getClass("CDPWalrusStateController");
  classCDPWalrusStateController = result;
  getCDPWalrusStateControllerClass = CDPWalrusStateControllerFunction;
  return result;
}

Class initSSRVoiceProfileManager()
{
  if (SpeakerRecognitionLibrary_sOnce != -1)
  {
    initSSRVoiceProfileManager_cold_1();
  }

  result = objc_getClass("SSRVoiceProfileManager");
  classSSRVoiceProfileManager = result;
  getSSRVoiceProfileManagerClass = SSRVoiceProfileManagerFunction;
  return result;
}

void *__SpeakerRecognitionLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SpeakerRecognition.framework/SpeakerRecognition", 2);
  SpeakerRecognitionLibrary_sLib = result;
  return result;
}

Class initAFEnablementFlowConfigurationProvider()
{
  if (AssistantServicesLibrary_sOnce_0 != -1)
  {
    initAFSettingsConnection_cold_1();
  }

  result = objc_getClass("AFEnablementFlowConfigurationProvider");
  classAFEnablementFlowConfigurationProvider = result;
  getAFEnablementFlowConfigurationProviderClass = AFEnablementFlowConfigurationProviderFunction;
  return result;
}

Class initAKAppleIDAuthenticationInAppContext()
{
  if (AuthKitUILibrary_sOnce != -1)
  {
    initAKAppleIDAuthenticationInAppContext_cold_1();
  }

  result = objc_getClass("AKAppleIDAuthenticationInAppContext");
  classAKAppleIDAuthenticationInAppContext = result;
  getAKAppleIDAuthenticationInAppContextClass = AKAppleIDAuthenticationInAppContextFunction;
  return result;
}

void *__AuthKitUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AuthKitUI.framework/AuthKitUI", 2);
  AuthKitUILibrary_sLib = result;
  return result;
}

Class initAPCListener()
{
  if (AudioPasscodeLibrary_sOnce_0 != -1)
  {
    initAPCListener_cold_1();
  }

  result = objc_getClass("APCListener");
  classAPCListener = result;
  getAPCListenerClass = APCListenerFunction;
  return result;
}

void *__AudioPasscodeLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/AudioPasscode.framework/AudioPasscode", 2);
  AudioPasscodeLibrary_sLib_0 = result;
  return result;
}

id initValAVAudioSessionCategoryAmbient(uint64_t a1)
{
  if (softLinkOnceAVAudioSessionCategoryAmbient != -1)
  {
    initValAVAudioSessionCategoryAmbient_cold_1();
  }

  v2 = constantValAVAudioSessionCategoryAmbient;

  return v2;
}

void __initValAVAudioSessionCategoryAmbient_block_invoke()
{
  if (AVFoundationLibrary_sOnce != -1)
  {
    __initValAVAudioSessionCategoryAmbient_block_invoke_cold_1();
  }

  v0 = dlsym(AVFoundationLibrary_sLib, "AVAudioSessionCategoryAmbient");
  if (v0)
  {
    objc_storeStrong(&constantValAVAudioSessionCategoryAmbient, *v0);
  }

  getAVAudioSessionCategoryAmbient = AVAudioSessionCategoryAmbientFunction;
}

id initValAVAudioSessionModeDefault(uint64_t a1)
{
  if (softLinkOnceAVAudioSessionModeDefault != -1)
  {
    initValAVAudioSessionModeDefault_cold_1();
  }

  v2 = constantValAVAudioSessionModeDefault;

  return v2;
}

void __initValAVAudioSessionModeDefault_block_invoke()
{
  if (AVFoundationLibrary_sOnce != -1)
  {
    __initValAVAudioSessionCategoryAmbient_block_invoke_cold_1();
  }

  v0 = dlsym(AVFoundationLibrary_sLib, "AVAudioSessionModeDefault");
  if (v0)
  {
    objc_storeStrong(&constantValAVAudioSessionModeDefault, *v0);
  }

  getAVAudioSessionModeDefault = AVAudioSessionModeDefaultFunction;
}

uint64_t init_AXSVoiceOverTouchEnabled()
{
  if (AccessibilityLibrary_sOnce_0 != -1)
  {
    init_AXSVoiceOverTouchEnabled_cold_1();
  }

  v0 = dlsym(AccessibilityLibrary_sLib_0, "_AXSVoiceOverTouchEnabled");
  softLink_AXSVoiceOverTouchEnabled = v0;

  return (v0)();
}

void *__AccessibilityLibrary_block_invoke_0()
{
  result = dlopen("/usr/lib/libAccessibility.dylib", 2);
  AccessibilityLibrary_sLib_0 = result;
  return result;
}

uint64_t init_AXSVoiceOverTouchSpeakingRate()
{
  if (AccessibilityLibrary_sOnce_0 != -1)
  {
    init_AXSVoiceOverTouchEnabled_cold_1();
  }

  v0 = dlsym(AccessibilityLibrary_sLib_0, "_AXSVoiceOverTouchSpeakingRate");
  softLink_AXSVoiceOverTouchSpeakingRate = v0;

  return v0();
}

Class initAXSettings_0()
{
  if (AccessibilityUtilitiesLibrary_sOnce_0 != -1)
  {
    initAXSettings_cold_1_0();
  }

  result = objc_getClass("AXSettings");
  classAXSettings_0 = result;
  getAXSettingsClass_0 = AXSettingsFunction_0;
  return result;
}

void *__AccessibilityUtilitiesLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/AccessibilityUtilities.framework/AccessibilityUtilities", 2);
  AccessibilityUtilitiesLibrary_sLib_0 = result;
  return result;
}

uint64_t initTMIsAutomaticTimeEnabled()
{
  if (CoreTimeLibrary_sOnce_0 != -1)
  {
    initTMIsAutomaticTimeEnabled_cold_1();
  }

  v0 = dlsym(CoreTimeLibrary_sLib_0, "TMIsAutomaticTimeEnabled");
  softLinkTMIsAutomaticTimeEnabled = v0;

  return v0();
}

void *__CoreTimeLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreTime.framework/CoreTime", 2);
  CoreTimeLibrary_sLib_0 = result;
  return result;
}

uint64_t initTMIsAutomaticTimeZoneEnabled()
{
  if (CoreTimeLibrary_sOnce_0 != -1)
  {
    initTMIsAutomaticTimeEnabled_cold_1();
  }

  v0 = dlsym(CoreTimeLibrary_sLib_0, "TMIsAutomaticTimeZoneEnabled");
  softLinkTMIsAutomaticTimeZoneEnabled = v0;

  return (v0)();
}

Class initTROperationQueue_0()
{
  if (TouchRemoteLibrary_sOnce_0 != -1)
  {
    initTROperationQueue_cold_1_0();
  }

  result = objc_getClass("TROperationQueue");
  classTROperationQueue_0 = result;
  getTROperationQueueClass_0 = TROperationQueueFunction_0;
  return result;
}

void *__TouchRemoteLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/TouchRemote.framework/TouchRemote", 2);
  TouchRemoteLibrary_sLib_0 = result;
  return result;
}

Class initTRSetupConfigurationOperation()
{
  if (TouchRemoteLibrary_sOnce_0 != -1)
  {
    initTROperationQueue_cold_1_0();
  }

  result = objc_getClass("TRSetupConfigurationOperation");
  classTRSetupConfigurationOperation = result;
  getTRSetupConfigurationOperationClass = TRSetupConfigurationOperationFunction;
  return result;
}

id initValTRSetupConfigurationOperationNeedsNetworkKey(uint64_t a1)
{
  if (softLinkOnceTRSetupConfigurationOperationNeedsNetworkKey != -1)
  {
    initValTRSetupConfigurationOperationNeedsNetworkKey_cold_1();
  }

  v2 = constantValTRSetupConfigurationOperationNeedsNetworkKey;

  return v2;
}

void __initValTRSetupConfigurationOperationNeedsNetworkKey_block_invoke()
{
  if (TouchRemoteLibrary_sOnce_0 != -1)
  {
    initTROperationQueue_cold_1_0();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_0, "TRSetupConfigurationOperationNeedsNetworkKey");
  if (v0)
  {
    objc_storeStrong(&constantValTRSetupConfigurationOperationNeedsNetworkKey, *v0);
  }

  getTRSetupConfigurationOperationNeedsNetworkKey = TRSetupConfigurationOperationNeedsNetworkKeyFunction;
}

id initValTRSetupConfigurationOperationUnauthenticatedServicesKey(uint64_t a1)
{
  if (softLinkOnceTRSetupConfigurationOperationUnauthenticatedServicesKey != -1)
  {
    initValTRSetupConfigurationOperationUnauthenticatedServicesKey_cold_1();
  }

  v2 = constantValTRSetupConfigurationOperationUnauthenticatedServicesKey;

  return v2;
}

void __initValTRSetupConfigurationOperationUnauthenticatedServicesKey_block_invoke()
{
  if (TouchRemoteLibrary_sOnce_0 != -1)
  {
    initTROperationQueue_cold_1_0();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_0, "TRSetupConfigurationOperationUnauthenticatedServicesKey");
  if (v0)
  {
    objc_storeStrong(&constantValTRSetupConfigurationOperationUnauthenticatedServicesKey, *v0);
  }

  getTRSetupConfigurationOperationUnauthenticatedServicesKey = TRSetupConfigurationOperationUnauthenticatedServicesKeyFunction;
}

id initValTRSetupConfigurationOperationUseAIDAKey(uint64_t a1)
{
  if (softLinkOnceTRSetupConfigurationOperationUseAIDAKey != -1)
  {
    initValTRSetupConfigurationOperationUseAIDAKey_cold_1();
  }

  v2 = constantValTRSetupConfigurationOperationUseAIDAKey;

  return v2;
}

void __initValTRSetupConfigurationOperationUseAIDAKey_block_invoke()
{
  if (TouchRemoteLibrary_sOnce_0 != -1)
  {
    initTROperationQueue_cold_1_0();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_0, "TRSetupConfigurationOperationUseAIDAKey");
  if (v0)
  {
    objc_storeStrong(&constantValTRSetupConfigurationOperationUseAIDAKey, *v0);
  }

  getTRSetupConfigurationOperationUseAIDAKey = TRSetupConfigurationOperationUseAIDAKeyFunction;
}

Class initTRActivationOperation()
{
  if (TouchRemoteLibrary_sOnce_0 != -1)
  {
    initTROperationQueue_cold_1_0();
  }

  result = objc_getClass("TRActivationOperation");
  classTRActivationOperation = result;
  getTRActivationOperationClass = TRActivationOperationFunction;
  return result;
}

id initValTRActivationOperationIsActivatedKey(uint64_t a1)
{
  if (softLinkOnceTRActivationOperationIsActivatedKey != -1)
  {
    initValTRActivationOperationIsActivatedKey_cold_1();
  }

  v2 = constantValTRActivationOperationIsActivatedKey;

  return v2;
}

void __initValTRActivationOperationIsActivatedKey_block_invoke()
{
  if (TouchRemoteLibrary_sOnce_0 != -1)
  {
    initTROperationQueue_cold_1_0();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_0, "TRActivationOperationIsActivatedKey");
  if (v0)
  {
    objc_storeStrong(&constantValTRActivationOperationIsActivatedKey, *v0);
  }

  getTRActivationOperationIsActivatedKey = TRActivationOperationIsActivatedKeyFunction;
}

id initValTRActivationOperationErrorKey(uint64_t a1)
{
  if (softLinkOnceTRActivationOperationErrorKey != -1)
  {
    initValTRActivationOperationErrorKey_cold_1();
  }

  v2 = constantValTRActivationOperationErrorKey;

  return v2;
}

void __initValTRActivationOperationErrorKey_block_invoke()
{
  if (TouchRemoteLibrary_sOnce_0 != -1)
  {
    initTROperationQueue_cold_1_0();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_0, "TRActivationOperationErrorKey");
  if (v0)
  {
    objc_storeStrong(&constantValTRActivationOperationErrorKey, *v0);
  }

  getTRActivationOperationErrorKey = TRActivationOperationErrorKeyFunction;
}

Class initTRAuthenticationOperation()
{
  if (TouchRemoteLibrary_sOnce_0 != -1)
  {
    initTROperationQueue_cold_1_0();
  }

  result = objc_getClass("TRAuthenticationOperation");
  classTRAuthenticationOperation = result;
  getTRAuthenticationOperationClass = TRAuthenticationOperationFunction;
  return result;
}

id initValTRAuthenticationOperationUnauthenticatedServicesKey(uint64_t a1)
{
  if (softLinkOnceTRAuthenticationOperationUnauthenticatedServicesKey != -1)
  {
    initValTRAuthenticationOperationUnauthenticatedServicesKey_cold_1();
  }

  v2 = constantValTRAuthenticationOperationUnauthenticatedServicesKey;

  return v2;
}

void __initValTRAuthenticationOperationUnauthenticatedServicesKey_block_invoke()
{
  if (TouchRemoteLibrary_sOnce_0 != -1)
  {
    initTROperationQueue_cold_1_0();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_0, "TRAuthenticationOperationUnauthenticatedServicesKey");
  if (v0)
  {
    objc_storeStrong(&constantValTRAuthenticationOperationUnauthenticatedServicesKey, *v0);
  }

  getTRAuthenticationOperationUnauthenticatedServicesKey = TRAuthenticationOperationUnauthenticatedServicesKeyFunction;
}

id initValTRAuthenticationOperationErrorKey(uint64_t a1)
{
  if (softLinkOnceTRAuthenticationOperationErrorKey != -1)
  {
    initValTRAuthenticationOperationErrorKey_cold_1();
  }

  v2 = constantValTRAuthenticationOperationErrorKey;

  return v2;
}

void __initValTRAuthenticationOperationErrorKey_block_invoke()
{
  if (TouchRemoteLibrary_sOnce_0 != -1)
  {
    initTROperationQueue_cold_1_0();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_0, "TRAuthenticationOperationErrorKey");
  if (v0)
  {
    objc_storeStrong(&constantValTRAuthenticationOperationErrorKey, *v0);
  }

  getTRAuthenticationOperationErrorKey = TRAuthenticationOperationErrorKeyFunction;
}

id initValTROperationErrorDomain(uint64_t a1)
{
  if (softLinkOnceTROperationErrorDomain != -1)
  {
    initValTROperationErrorDomain_cold_1();
  }

  v2 = constantValTROperationErrorDomain;

  return v2;
}

void __initValTROperationErrorDomain_block_invoke()
{
  if (TouchRemoteLibrary_sOnce_0 != -1)
  {
    initTROperationQueue_cold_1_0();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_0, "TROperationErrorDomain");
  if (v0)
  {
    objc_storeStrong(&constantValTROperationErrorDomain, *v0);
  }

  getTROperationErrorDomain = TROperationErrorDomainFunction;
}

uint64_t initIDSCopyLocalDeviceUniqueID()
{
  if (IDSLibrary_sOnce != -1)
  {
    initIDSCopyLocalDeviceUniqueID_cold_1();
  }

  v0 = dlsym(IDSLibrary_sLib, "IDSCopyLocalDeviceUniqueID");
  softLinkIDSCopyLocalDeviceUniqueID = v0;

  return v0();
}

void *__IDSLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/IDS.framework/IDS", 2);
  IDSLibrary_sLib = result;
  return result;
}

Class initAMSDevice()
{
  if (AppleMediaServicesLibrary_sOnce != -1)
  {
    initAMSDevice_cold_1();
  }

  result = objc_getClass("AMSDevice");
  classAMSDevice = result;
  getAMSDeviceClass = AMSDeviceFunction;
  return result;
}

void *__AppleMediaServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleMediaServices.framework/AppleMediaServices", 2);
  AppleMediaServicesLibrary_sLib = result;
  return result;
}

Class initHMHomeManager_1()
{
  if (HomeKitLibrary_sOnce_1 != -1)
  {
    initHMHomeManager_cold_1_0();
  }

  result = objc_getClass("HMHomeManager");
  classHMHomeManager_1 = result;
  getHMHomeManagerClass_1 = HMHomeManagerFunction_1;
  return result;
}

void *__HomeKitLibrary_block_invoke_1()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_1 = result;
  return result;
}

Class initAVAudioSession()
{
  if (AVFoundationLibrary_sOnce != -1)
  {
    __initValAVAudioSessionCategoryAmbient_block_invoke_cold_1();
  }

  result = objc_getClass("AVAudioSession");
  classAVAudioSession = result;
  getAVAudioSessionClass = AVAudioSessionFunction;
  return result;
}

Class initAVAudioPlayer()
{
  if (AVFoundationLibrary_sOnce != -1)
  {
    __initValAVAudioSessionCategoryAmbient_block_invoke_cold_1();
  }

  result = objc_getClass("AVAudioPlayer");
  classAVAudioPlayer = result;
  getAVAudioPlayerClass = AVAudioPlayerFunction;
  return result;
}

id HDSLocalizedStringForKey(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 mainBundle];
  v4 = [v3 localizedStringForKey:v2 value:&stru_2864DB950 table:@"Localizable"];

  return v4;
}

void HDSDispatchTimerSet(void *a1, double a2, double a3, double a4)
{
  v6 = (a2 * 1000000000.0);
  source = a1;
  v7 = dispatch_time(0x8000000000000000, v6);
  if (a4 <= -10.0)
  {
    v8 = v6 / 0xA;
  }

  else if (a4 <= -4.0)
  {
    v8 = v6 >> 2;
  }

  else
  {
    v8 = (a4 * 1000000000.0);
  }

  if (a3 < 0.0)
  {
    v9 = -1;
  }

  else
  {
    v9 = (a3 * 1000000000.0);
  }

  dispatch_source_set_timer(source, v7, v9, v8);
}

uint64_t HDSIsDevicePhone(uint64_t a1, uint64_t a2)
{
  if (HDSIsDevicePhone_onceToken != -1)
  {
    HDSIsDevicePhone_cold_1();
  }

  return HDSIsDevicePhone_isPhone;
}

uint64_t __HDSIsDevicePhone_block_invoke()
{
  result = MGGetSInt32Answer();
  HDSIsDevicePhone_isPhone = result == 1;
  return result;
}

uint64_t HDSIsGreenTeaDevice(uint64_t a1, uint64_t a2)
{
  if (HDSIsGreenTeaDevice_onceToken != -1)
  {
    HDSIsGreenTeaDevice_cold_1();
  }

  return HDSIsGreenTeaDevice_result;
}

uint64_t __HDSIsGreenTeaDevice_block_invoke()
{
  if (MGGetBoolAnswer())
  {
    result = 1;
  }

  else
  {
    result = MGGetBoolAnswer();
  }

  HDSIsGreenTeaDevice_result = result;
  return result;
}

id SVSLocalizedNameForDeviceClassCode(char a1)
{
  if ((a1 - 2) > 3u)
  {
    v1 = @"iPhone";
  }

  else
  {
    v1 = off_2797155F0[(a1 - 2)];
  }

  return SVSLocalizedStringEx(@"Localizable", v1);
}

id SVSLocalizedStringEx(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 mainBundle];
  v7 = SVSLocalizedStringEx2(v6, v5, v4);

  return v7;
}

void *SVSLocalizedStringEx2(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (HDSIsGreenTeaDevice_onceToken != -1)
  {
    HDSIsGreenTeaDevice_cold_1();
  }

  if (HDSIsGreenTeaDevice_result == 1)
  {
    v8 = [v7 stringByAppendingString:@"_GT"];
    v9 = [v5 localizedStringForKey:v8 value:@"_GT" table:v6];

    if (![v9 isEqual:@"_GT"])
    {
      goto LABEL_7;
    }
  }

  v9 = 0;
LABEL_7:
  if (![v9 length])
  {
    v10 = [v5 localizedStringForKey:v7 value:&stru_2864DB950 table:v6];

    v9 = v10;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;

  return v11;
}

void *SVSLocalizedStringV(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = SVSLocalizedStringEx(@"Localizable", v5);
  v13 = 0;
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithValidatedFormat:v7 validFormatSpecifiers:v6 arguments:a3 error:&v13];

  v9 = v13;
  v10 = v8;
  if (!v8)
  {
    SVSLocalizedStringV_cold_1(v5, v9);
    v10 = v5;
  }

  v11 = v10;

  return v10;
}

id SVSLocalizedStringF(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = SVSLocalizedStringV(a1, a2, &a9);

  return v9;
}

id SVSAddSuffixForCurrentDeviceClassAndProductName()
{
  v0 = CUAddSuffixForCurrentDeviceClass();
  v1 = [v0 stringByAppendingString:@"_HOMEPOD"];

  return v1;
}

id FrontBoardOpenURLOptions()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D0AC58];
  v3[0] = *MEMORY[0x277D0AC70];
  v3[1] = v0;
  v4[0] = MEMORY[0x277CBEC38];
  v4[1] = MEMORY[0x277CBEC38];
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];

  return v1;
}

uint64_t SFTestFlagsFromString(void *a1)
{
  strlen([a1 UTF8String]);
  v1 = 1;
  while (TextSep())
  {
    if (strnicmpx())
    {
      if (strnicmpx())
      {
        if (strnicmpx())
        {
          if (strnicmpx())
          {
            if (strnicmpx())
            {
              if (strnicmpx())
              {
                if (strnicmpx())
                {
                  if (strnicmpx())
                  {
                    if (strnicmpx())
                    {
                      if (strnicmpx())
                      {
                        if (strnicmpx())
                        {
                          if (strnicmpx())
                          {
                            if (strnicmpx())
                            {
                              if (strnicmpx())
                              {
                                if (strnicmpx())
                                {
                                  if (strnicmpx())
                                  {
                                    if (strnicmpx())
                                    {
                                      if (strnicmpx())
                                      {
                                        if (strnicmpx())
                                        {
                                          if (strnicmpx())
                                          {
                                            if (strnicmpx())
                                            {
                                              if (strnicmpx())
                                              {
                                                if (strnicmpx())
                                                {
                                                  if (strnicmpx())
                                                  {
                                                    if (strnicmp_prefix())
                                                    {
                                                      if (strnicmp_prefix())
                                                      {
                                                        if (strnicmp_prefix())
                                                        {
                                                          if (strnicmp_prefix())
                                                          {
                                                            if (strnicmp_prefix())
                                                            {
                                                              if (strnicmp_prefix())
                                                              {
                                                                if (strnicmp_prefix())
                                                                {
                                                                  if (strnicmpx())
                                                                  {
                                                                    if (strnicmpx())
                                                                    {
                                                                      if (strnicmpx())
                                                                      {
                                                                        if (strnicmpx())
                                                                        {
                                                                          if (strnicmpx())
                                                                          {
                                                                            if (!strnicmpx())
                                                                            {
                                                                              v1 |= 0x10000000000uLL;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v1 |= 0x1000000000uLL;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v1 |= 0x800000000uLL;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v1 |= 0x400000000uLL;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v1 |= 0x200000000uLL;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v1 |= 0x100000000uLL;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v1 |= 0x80000000uLL;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v1 |= 0x20000000uLL;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v1 |= 0x10000000uLL;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v1 |= 0x8000000uLL;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v1 |= 0x4000000uLL;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v1 |= 0x40000000uLL;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v1 |= 0x2000000uLL;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v1 |= 0x1000000uLL;
                                                  }
                                                }

                                                else
                                                {
                                                  v1 |= 0x800000uLL;
                                                }
                                              }

                                              else
                                              {
                                                v1 |= 0x400000uLL;
                                              }
                                            }

                                            else
                                            {
                                              v1 |= 0x200000uLL;
                                            }
                                          }

                                          else
                                          {
                                            v1 |= 0x100000uLL;
                                          }
                                        }

                                        else
                                        {
                                          v1 |= 0x80000uLL;
                                        }
                                      }

                                      else
                                      {
                                        v1 |= 0x40000uLL;
                                      }
                                    }

                                    else
                                    {
                                      v1 |= 0x20000uLL;
                                    }
                                  }

                                  else
                                  {
                                    v1 |= 0x10000uLL;
                                  }
                                }

                                else
                                {
                                  v1 |= 0x8000uLL;
                                }
                              }

                              else
                              {
                                v1 |= 0x4000uLL;
                              }
                            }

                            else
                            {
                              v1 |= 0x2000uLL;
                            }
                          }

                          else
                          {
                            v1 |= 0x1000uLL;
                          }
                        }

                        else
                        {
                          v1 |= 0x800uLL;
                        }
                      }

                      else
                      {
                        v1 |= 0x400uLL;
                      }
                    }

                    else
                    {
                      v1 |= 0x200uLL;
                    }
                  }

                  else
                  {
                    v1 |= 0x100uLL;
                  }
                }

                else
                {
                  v1 |= 0x80uLL;
                }
              }

              else
              {
                v1 |= 0x40uLL;
              }
            }

            else
            {
              v1 |= 0x20uLL;
            }
          }

          else
          {
            v1 |= 0x10uLL;
          }
        }

        else
        {
          v1 |= 8uLL;
        }
      }

      else
      {
        v1 |= 4uLL;
      }
    }

    else
    {
      v1 |= 2uLL;
    }
  }

  return v1;
}

uint64_t HDSFMLDevice.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HomeDeviceSetup12HDSFMLDevice_identifier);

  return v1;
}

uint64_t HDSFMLDevice.deviceName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HomeDeviceSetup12HDSFMLDevice_deviceName);

  return v1;
}

id HDSFMLDevice.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDSFMLDevice.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_252FD4474()
{
  v0 = sub_252FE9F04();
  __swift_allocate_value_buffer(v0, qword_27F57FA88);
  __swift_project_value_buffer(v0, qword_27F57FA88);
  return sub_252FE9EF4();
}

uint64_t sub_252FD450C()
{
  v1 = *v0;
  sub_252FEA004();
  MEMORY[0x2530B0D40](v1);
  return sub_252FEA024();
}

uint64_t sub_252FD4580(uint64_t a1)
{
  v2 = *v1;
  sub_252FEA004();
  MEMORY[0x2530B0D40](v2);
  return sub_252FEA024();
}

uint64_t sub_252FD45D4()
{
  v0 = sub_252FE9F04();
  __swift_allocate_value_buffer(v0, qword_27F57FAA0);
  v1 = __swift_project_value_buffer(v0, qword_27F57FAA0);
  if (qword_27F57FA00 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F57FA88);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_252FD469C()
{
  v1[7] = v0;
  v2 = sub_252FE9E24();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_252FE9E84();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252FD47E8, 0, 0);
}

uint64_t sub_252FD47E8()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC15HomeDeviceSetup19FindMyLocateSession_session;
  v0[18] = OBJC_IVAR____TtC15HomeDeviceSetup19FindMyLocateSession_session;
  v0[19] = *(v1 + v2);

  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_252FD48A8;
  v4 = v0[17];

  return MEMORY[0x28215FB40](v4, 1);
}

uint64_t sub_252FD48A8()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_252FD4CE0;
  }

  else
  {

    v2 = sub_252FD49C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252FD49C4()
{
  v38 = v0;
  if (qword_27F57FA08 != -1)
  {
    swift_once();
  }

  receiver = v0[8].receiver;
  super_class = v0[8].super_class;
  v3 = v0[5].super_class;
  v4 = v0[6].receiver;
  v5 = sub_252FE9F04();
  __swift_project_value_buffer(v5, qword_27F57FAA0);
  v6 = v4[2];
  v6(receiver, super_class, v3);
  v7 = sub_252FE9EE4();
  v8 = sub_252FE9F84();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8].receiver;
  v11 = v0[5].super_class;
  v12 = v0[6].receiver;
  if (v9)
  {
    v13 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v13 = 136315138;
    sub_252FD7A8C();
    v34 = sub_252FE9FB4();
    v36 = v6;
    v15 = v14;
    v16 = v11;
    v17 = v12[1];
    v17(v10, v16);
    v18 = sub_252FD74E4(v34, v15, &v37);
    v6 = v36;

    *(v13 + 4) = v18;
    _os_log_impl(&dword_252F78000, v7, v8, "Successfully got active location sharing device: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x2530B1A70](v35, -1, -1);
    MEMORY[0x2530B1A70](v13, -1, -1);
  }

  else
  {

    v19 = v11;
    v17 = v12[1];
    v17(v10, v19);
  }

  v20 = v0[8].super_class;
  v21 = v0[7].super_class;
  v22 = v0[5].super_class;
  v6(v21, v20, v22);
  v23 = type metadata accessor for HDSFMLDevice();
  v24 = objc_allocWithZone(v23);
  v25 = sub_252FE9E74();
  v26 = &v24[OBJC_IVAR____TtC15HomeDeviceSetup12HDSFMLDevice_identifier];
  *v26 = v25;
  v26[1] = v27;
  v28 = sub_252FE9E64();
  v29 = &v24[OBJC_IVAR____TtC15HomeDeviceSetup12HDSFMLDevice_deviceName];
  *v29 = v28;
  v29[1] = v30;
  v24[OBJC_IVAR____TtC15HomeDeviceSetup12HDSFMLDevice_isThisDevice] = sub_252FE9E54() & 1;
  v0[2].receiver = v24;
  v0[2].super_class = v23;
  v31 = objc_msgSendSuper2(v0 + 2, sel_init);
  v17(v21, v22);
  v17(v20, v22);

  v32 = v0->super_class;

  return v32(v31);
}

uint64_t sub_252FD4CE0()
{
  v1 = *(v0 + 168);

  *(v0 + 48) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57FA30, &qword_252FEE1B8);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 72) + 88))(*(v0 + 80), *(v0 + 64)) == *MEMORY[0x277D090B0])
    {

      if (qword_27F57FA08 != -1)
      {
        swift_once();
      }

      v3 = sub_252FE9F04();
      *(v0 + 176) = __swift_project_value_buffer(v3, qword_27F57FAA0);
      v4 = sub_252FE9EE4();
      v5 = sub_252FE9F84();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_252F78000, v4, v5, "Error getting cached location sharing device, trying not cached.", v6, 2u);
        MEMORY[0x2530B1A70](v6, -1, -1);
      }

      v7 = *(v0 + 144);
      v8 = *(v0 + 56);

      *(v0 + 184) = *(v8 + v7);

      v9 = swift_task_alloc();
      *(v0 + 192) = v9;
      *v9 = v0;
      v9[1] = sub_252FD50B0;
      v10 = *(v0 + 112);

      return MEMORY[0x28215FB40](v10, 0);
    }

    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  }

  if (qword_27F57FA08 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 168);
  v12 = sub_252FE9F04();
  __swift_project_value_buffer(v12, qword_27F57FAA0);
  v13 = v11;
  v14 = sub_252FE9EE4();
  v15 = sub_252FE9F74();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138543362;
    v18 = sub_252FE9DE4();
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&dword_252F78000, v14, v15, "Error getting active location sharing device: %{public}@", v16, 0xCu);
    sub_252FD837C(v17, &qword_27F57FA38, &qword_252FEE1C0);
    MEMORY[0x2530B1A70](v17, -1, -1);
    MEMORY[0x2530B1A70](v16, -1, -1);
  }

  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_252FD50B0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_252FD54B0;
  }

  else
  {
    v2 = sub_252FD51E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252FD51E4()
{
  v34 = v0;
  v1 = *(v0[6].receiver + 2);
  v1(v0[6].super_class, v0[7].receiver, v0[5].super_class);
  v2 = sub_252FE9EE4();
  v3 = sub_252FE9F84();
  v4 = os_log_type_enabled(v2, v3);
  receiver = v0[6].receiver;
  super_class = v0[6].super_class;
  v7 = v0[5].super_class;
  if (v4)
  {
    v32 = v1;
    v8 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v8 = 136315138;
    sub_252FD7A8C();
    v30 = sub_252FE9FB4();
    v10 = v9;
    v11 = v7;
    v12 = receiver[1];
    v12(super_class, v11);
    v13 = sub_252FD74E4(v30, v10, &v33);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_252F78000, v2, v3, "Successfully got non-cached active location sharing device: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x2530B1A70](v31, -1, -1);
    v14 = v8;
    v1 = v32;
    MEMORY[0x2530B1A70](v14, -1, -1);
  }

  else
  {

    v15 = v7;
    v12 = receiver[1];
    v12(super_class, v15);
  }

  v16 = v0[7].receiver;
  v17 = v0[7].super_class;
  v18 = v0[5].super_class;
  v1(v17, v16, v18);
  v19 = type metadata accessor for HDSFMLDevice();
  v20 = objc_allocWithZone(v19);
  v21 = sub_252FE9E74();
  v22 = &v20[OBJC_IVAR____TtC15HomeDeviceSetup12HDSFMLDevice_identifier];
  *v22 = v21;
  v22[1] = v23;
  v24 = sub_252FE9E64();
  v25 = &v20[OBJC_IVAR____TtC15HomeDeviceSetup12HDSFMLDevice_deviceName];
  *v25 = v24;
  v25[1] = v26;
  v20[OBJC_IVAR____TtC15HomeDeviceSetup12HDSFMLDevice_isThisDevice] = sub_252FE9E54() & 1;
  v0[1].receiver = v20;
  v0[1].super_class = v19;
  v27 = objc_msgSendSuper2(v0 + 1, sel_init);
  v12(v17, v18);
  v12(v16, v18);

  v28 = v0->super_class;

  return v28(v27);
}

uint64_t sub_252FD54B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_252FD5754(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_252FD57FC;

  return sub_252FD469C();
}

uint64_t sub_252FD57FC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_252FE9DE4();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_252FD599C()
{
  v1[2] = v0;
  v2 = sub_252FE9E44();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57FA48, &unk_252FEE1D0);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252FD5A94, 0, 0);
}

uint64_t sub_252FD5A94()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC15HomeDeviceSetup19FindMyLocateSession_session;
  v0[7] = OBJC_IVAR____TtC15HomeDeviceSetup19FindMyLocateSession_session;
  v0[8] = *(v1 + v2);

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_252FD5B50;
  v4 = v0[5];

  return MEMORY[0x28215FB20](v4);
}

uint64_t sub_252FD5B50()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_252FD62A0;
  }

  else
  {

    v2 = sub_252FD5C6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252FD5C6C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_252FE9E34();
  (*(v4 + 8))(v1, v3);
  v5 = sub_252FE9E84();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    sub_252FD837C(v0[6], &qword_27F57FA48, &unk_252FEE1D0);
    if (qword_27F57FA08 != -1)
    {
      swift_once();
    }

    v7 = sub_252FE9F04();
    __swift_project_value_buffer(v7, qword_27F57FAA0);
    v8 = sub_252FE9EE4();
    v9 = sub_252FE9F74();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_252F78000, v8, v9, "Me device switch failed, no this device", v10, 2u);
      MEMORY[0x2530B1A70](v10, -1, -1);
    }

    sub_252FD7B30();
    v11 = swift_allocError();
    *v12 = 0;
    swift_willThrow();
    if (qword_27F57FA08 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v7, qword_27F57FAA0);
    v13 = v11;
    v14 = sub_252FE9EE4();
    v15 = sub_252FE9F74();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v11;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_252F78000, v14, v15, "Me device switch failed, %@", v16, 0xCu);
      sub_252FD837C(v17, &qword_27F57FA38, &qword_252FEE1C0);
      MEMORY[0x2530B1A70](v17, -1, -1);
      MEMORY[0x2530B1A70](v16, -1, -1);
    }

    swift_willThrow();

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = v0[6];
    v23 = v0[7];
    v24 = v0[2];
    v25 = sub_252FE9E74();
    v27 = v26;
    v0[11] = v26;
    (*(v6 + 8))(v22, v5);
    v0[12] = *(v24 + v23);

    v28 = swift_task_alloc();
    v0[13] = v28;
    *v28 = v0;
    v28[1] = sub_252FD6050;

    return MEMORY[0x28215FB70](v25, v27);
  }
}

uint64_t sub_252FD6050()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_252FD6450;
  }

  else
  {

    v2 = sub_252FD6174;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252FD6174()
{
  if (qword_27F57FA08 != -1)
  {
    swift_once();
  }

  v1 = sub_252FE9F04();
  __swift_project_value_buffer(v1, qword_27F57FAA0);
  v2 = sub_252FE9EE4();
  v3 = sub_252FE9F84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_252F78000, v2, v3, "Successfully set activeLocationSharing device to this device", v4, 2u);
    MEMORY[0x2530B1A70](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_252FD62A0()
{

  v1 = *(v0 + 80);
  if (qword_27F57FA08 != -1)
  {
    swift_once();
  }

  v2 = sub_252FE9F04();
  __swift_project_value_buffer(v2, qword_27F57FAA0);
  v3 = v1;
  v4 = sub_252FE9EE4();
  v5 = sub_252FE9F74();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_252F78000, v4, v5, "Me device switch failed, %@", v6, 0xCu);
    sub_252FD837C(v7, &qword_27F57FA38, &qword_252FEE1C0);
    MEMORY[0x2530B1A70](v7, -1, -1);
    MEMORY[0x2530B1A70](v6, -1, -1);
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252FD6450()
{

  v1 = *(v0 + 112);
  if (qword_27F57FA08 != -1)
  {
    swift_once();
  }

  v2 = sub_252FE9F04();
  __swift_project_value_buffer(v2, qword_27F57FAA0);
  v3 = v1;
  v4 = sub_252FE9EE4();
  v5 = sub_252FE9F74();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_252F78000, v4, v5, "Me device switch failed, %@", v6, 0xCu);
    sub_252FD837C(v7, &qword_27F57FA38, &qword_252FEE1C0);
    MEMORY[0x2530B1A70](v7, -1, -1);
    MEMORY[0x2530B1A70](v6, -1, -1);
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252FD677C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_252FD6824;

  return sub_252FD599C();
}

uint64_t sub_252FD6824()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_252FE9DE4();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

id FindMyLocateSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FindMyLocateSession.init()()
{
  v1 = v0;
  v2 = sub_252FE9DF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252FE9E04();
  MEMORY[0x28223BE20]();
  v6 = OBJC_IVAR____TtC15HomeDeviceSetup19FindMyLocateSession_session;
  (*(v3 + 104))(v5, *MEMORY[0x277D09060], v2);
  sub_252FE9E14();
  sub_252FE9EC4();
  swift_allocObject();
  *&v1[v6] = sub_252FE9ED4();
  *&v1[OBJC_IVAR____TtC15HomeDeviceSetup19FindMyLocateSession_preferenceChangesTask] = 0;
  Session = type metadata accessor for FindMyLocateSession();
  v9.receiver = v1;
  v9.super_class = Session;
  return objc_msgSendSuper2(&v9, sel_init);
}

id FindMyLocateSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindMyLocateSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_252FD6D44(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_252FD86D0;

  return v6();
}

uint64_t sub_252FD6E2C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_252FD6F14;

  return v7();
}

uint64_t sub_252FD6F14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_252FD7008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57FA68, &qword_252FEE2D0);
  MEMORY[0x28223BE20]();
  v10 = v22 - v9;
  sub_252FD830C(a3, v22 - v9);
  v11 = sub_252FE9F64();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_252FD837C(v10, &qword_27F57FA68, &qword_252FEE2D0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_252FE9F54();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_252FE9F44();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_252FE9F24() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_252FD837C(a3, &qword_27F57FA68, &qword_252FEE2D0);

    return v20;
  }

LABEL_8:
  sub_252FD837C(a3, &qword_27F57FA68, &qword_252FEE2D0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_252FD72F4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_252FD73EC;

  return v6(a1);
}

uint64_t sub_252FD73EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_252FD74E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_252FD75B0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_252FD85F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_252FD75B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_252FD76BC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_252FE9FA4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_252FD76BC(uint64_t a1, unint64_t a2)
{
  v3 = sub_252FD7708(a1, a2);
  sub_252FD7838(&unk_2864DB4F8);
  return v3;
}

void *sub_252FD7708(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_252FD7924(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_252FE9FA4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_252FE9F34();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_252FD7924(v10, 0);
        result = sub_252FE9F94();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_252FD7838(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_252FD7998(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_252FD7924(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57FA70, &unk_252FEE340);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_252FD7998(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57FA70, &unk_252FEE340);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_252FD7A8C()
{
  result = qword_27F57FA40;
  if (!qword_27F57FA40)
  {
    sub_252FE9E84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57FA40);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_252FD7B30()
{
  result = qword_27F57FA50;
  if (!qword_27F57FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57FA50);
  }

  return result;
}

uint64_t dispatch thunk of FindMyLocateSession.getActiveLocationSharingDevice()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x90);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_252FD7CE0;

  return v5();
}

uint64_t sub_252FD7CE0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of FindMyLocateSession.setActiveLocationSharingDeviceToThisDevice()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x98);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_252FD6F14;

  return v5();
}

uint64_t getEnumTagSinglePayload for FMLSessionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMLSessionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252FD8078()
{
  result = qword_27F57FA60;
  if (!qword_27F57FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57FA60);
  }

  return result;
}

uint64_t sub_252FD80D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_252FD86D0;

  return sub_252FD677C(v2, v3);
}

uint64_t sub_252FD8180()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_252FD86D0;

  return sub_252FD6D44(v2, v3, v4);
}

uint64_t sub_252FD8240(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_252FD86D0;

  return sub_252FD6E2C(a1, v4, v5, v6);
}

uint64_t sub_252FD830C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57FA68, &qword_252FEE2D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252FD837C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_252FD83DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252FD8414(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252FD86D0;

  return sub_252FD72F4(a1, v4);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252FD850C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_252FD6F14;

  return sub_252FD5754(v2, v3);
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252FD85F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void SVSLocalizedStringV_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString * _Nonnull SVSLocalizedStringV(NSString * _Nonnull __strong, NSString *__strong _Nonnull, va_list)"}];
  [v4 handleFailureInFunction:v5 file:@"Utilities.m" lineNumber:109 description:{@"nil localized string for %@ key - %@", a1, a2}];
}