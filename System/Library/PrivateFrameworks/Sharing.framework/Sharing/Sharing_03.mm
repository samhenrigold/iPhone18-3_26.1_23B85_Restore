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

Class initTROperationQueue_2()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  result = objc_getClass("TROperationQueue");
  classTROperationQueue_2 = result;
  getTROperationQueueClass_2 = TROperationQueueFunction_2;
  return result;
}

void *__TouchRemoteLibrary_block_invoke_4()
{
  result = dlopen("/System/Library/PrivateFrameworks/TouchRemote.framework/TouchRemote", 2);
  TouchRemoteLibrary_sLib_4 = result;
  return result;
}

Class initTRNearbyDevice()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  result = objc_getClass("TRNearbyDevice");
  classTRNearbyDevice = result;
  getTRNearbyDeviceClass = TRNearbyDeviceFunction;
  return result;
}

Class initTRSession()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  result = objc_getClass("TRSession");
  classTRSession = result;
  getTRSessionClass = TRSessionFunction;
  return result;
}

Class initTRNearbyDeviceScanner()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  result = objc_getClass("TRNearbyDeviceScanner");
  classTRNearbyDeviceScanner = result;
  getTRNearbyDeviceScannerClass = TRNearbyDeviceScannerFunction;
  return result;
}

Class initTRSetupConfigurationOperation()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
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
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_4, "TRSetupConfigurationOperationNeedsNetworkKey");
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
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_4, "TRSetupConfigurationOperationUnauthenticatedServicesKey");
  if (v0)
  {
    objc_storeStrong(&constantValTRSetupConfigurationOperationUnauthenticatedServicesKey, *v0);
  }

  getTRSetupConfigurationOperationUnauthenticatedServicesKey = TRSetupConfigurationOperationUnauthenticatedServicesKeyFunction;
}

Class initTRNetworkOperation()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  result = objc_getClass("TRNetworkOperation");
  classTRNetworkOperation = result;
  getTRNetworkOperationClass = TRNetworkOperationFunction;
  return result;
}

id initValTRNetworkOperationHasNetworkKey(uint64_t a1)
{
  if (softLinkOnceTRNetworkOperationHasNetworkKey != -1)
  {
    initValTRNetworkOperationHasNetworkKey_cold_1();
  }

  v2 = constantValTRNetworkOperationHasNetworkKey;

  return v2;
}

void __initValTRNetworkOperationHasNetworkKey_block_invoke()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_4, "TRNetworkOperationHasNetworkKey");
  if (v0)
  {
    objc_storeStrong(&constantValTRNetworkOperationHasNetworkKey, *v0);
  }

  getTRNetworkOperationHasNetworkKey = TRNetworkOperationHasNetworkKeyFunction;
}

Class initTRActivationOperation()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
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
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_4, "TRActivationOperationIsActivatedKey");
  if (v0)
  {
    objc_storeStrong(&constantValTRActivationOperationIsActivatedKey, *v0);
  }

  getTRActivationOperationIsActivatedKey = TRActivationOperationIsActivatedKeyFunction;
}

Class initTRAuthenticationOperation_1()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  result = objc_getClass("TRAuthenticationOperation");
  classTRAuthenticationOperation_1 = result;
  getTRAuthenticationOperationClass_1 = TRAuthenticationOperationFunction_1;
  return result;
}

Class initAISSetupContext_0()
{
  if (AppleIDSetupLibrary_sOnce_2 != -1)
  {
    initAISSetupContext_cold_1_0();
  }

  result = objc_getClass("AISSetupContext");
  classAISSetupContext_0 = result;
  getAISSetupContextClass_0 = AISSetupContextFunction_0;
  return result;
}

void *__AppleIDSetupLibrary_block_invoke_2()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleIDSetup.framework/AppleIDSetup", 2);
  AppleIDSetupLibrary_sLib_2 = result;
  return result;
}

Class initAISSetupViewController()
{
  if (AppleIDSetupUILibrary_sOnce != -1)
  {
    initAISSetupViewController_cold_1();
  }

  result = objc_getClass("AISSetupViewController");
  classAISSetupViewController = result;
  getAISSetupViewControllerClass = AISSetupViewControllerFunction;
  return result;
}

void *__AppleIDSetupUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleIDSetupUI.framework/AppleIDSetupUI", 2);
  AppleIDSetupUILibrary_sLib = result;
  return result;
}

Class initUINavigationController()
{
  if (UIKitLibrary_sOnce != -1)
  {
    initUINavigationController_cold_1();
  }

  result = objc_getClass("UINavigationController");
  classUINavigationController = result;
  getUINavigationControllerClass = UINavigationControllerFunction;
  return result;
}

void *__UIKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib = result;
  return result;
}

Class initAISSetupController_0()
{
  if (AppleIDSetupLibrary_sOnce_2 != -1)
  {
    initAISSetupContext_cold_1_0();
  }

  result = objc_getClass("AISSetupController");
  classAISSetupController_0 = result;
  getAISSetupControllerClass_0 = AISSetupControllerFunction_0;
  return result;
}

Class initTVLAudioLatencyEstimator_0()
{
  if (TVLatencyLibrary_sOnce_2 != -1)
  {
    initTVLAudioLatencyEstimator_cold_1_0();
  }

  result = objc_getClass("TVLAudioLatencyEstimator");
  classTVLAudioLatencyEstimator_0 = result;
  getTVLAudioLatencyEstimatorClass_0 = TVLAudioLatencyEstimatorFunction_0;
  return result;
}

void *__TVLatencyLibrary_block_invoke_2()
{
  result = dlopen("/System/Library/PrivateFrameworks/TVLatency.framework/TVLatency", 2);
  TVLatencyLibrary_sLib_2 = result;
  return result;
}

Class initTRCompletionOperation()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  result = objc_getClass("TRCompletionOperation");
  classTRCompletionOperation = result;
  getTRCompletionOperationClass = TRCompletionOperationFunction;
  return result;
}

Class initVSAccountSerializationCenter()
{
  if (VideoSubscriberAccountLibrary_sOnce != -1)
  {
    initVSAccountSerializationCenter_cold_1();
  }

  result = objc_getClass("VSAccountSerializationCenter");
  classVSAccountSerializationCenter = result;
  getVSAccountSerializationCenterClass = VSAccountSerializationCenterFunction;
  return result;
}

void *__VideoSubscriberAccountLibrary_block_invoke()
{
  result = dlopen("/System/Library/PublicFrameworks/VideoSubscriberAccount.framework/VideoSubscriberAccount", 2);
  VideoSubscriberAccountLibrary_sLib = result;
  return result;
}

id initValHMAccessoryCategoryTypeHomePod_1(uint64_t a1)
{
  if (softLinkOnceHMAccessoryCategoryTypeHomePod_0 != -1)
  {
    initValHMAccessoryCategoryTypeHomePod_cold_1_1();
  }

  v2 = constantValHMAccessoryCategoryTypeHomePod_1;

  return v2;
}

void __initValHMAccessoryCategoryTypeHomePod_block_invoke_0()
{
  if (HomeKitLibrary_sOnce_5 != -1)
  {
    initHMHomeManagerConfiguration_cold_1_0();
  }

  v0 = dlsym(HomeKitLibrary_sLib_5, "HMAccessoryCategoryTypeHomePod");
  if (v0)
  {
    objc_storeStrong(&constantValHMAccessoryCategoryTypeHomePod_1, *v0);
  }

  getHMAccessoryCategoryTypeHomePod_1 = HMAccessoryCategoryTypeHomePodFunction_1;
}

id initValHMAccessoryCategoryTypeAppleTV_0(uint64_t a1)
{
  if (softLinkOnceHMAccessoryCategoryTypeAppleTV_0 != -1)
  {
    initValHMAccessoryCategoryTypeAppleTV_cold_1_0();
  }

  v2 = constantValHMAccessoryCategoryTypeAppleTV_0;

  return v2;
}

void __initValHMAccessoryCategoryTypeAppleTV_block_invoke_0()
{
  if (HomeKitLibrary_sOnce_5 != -1)
  {
    initHMHomeManagerConfiguration_cold_1_0();
  }

  v0 = dlsym(HomeKitLibrary_sLib_5, "HMAccessoryCategoryTypeAppleTV");
  if (v0)
  {
    objc_storeStrong(&constantValHMAccessoryCategoryTypeAppleTV_0, *v0);
  }

  getHMAccessoryCategoryTypeAppleTV_0 = HMAccessoryCategoryTypeAppleTVFunction_0;
}

void sub_1A97577F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v8 - 104));
  _Unwind_Resume(a1);
}

void sub_1A9758578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  objc_sync_exit(v21);
  _Unwind_Resume(a1);
}

void sub_1A975905C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__13(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_16(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 60, a4);
}

void sub_1A975D828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A975E658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A975F638(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 96));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1A97619D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1A9762E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initSKDevice()
{
  if (SetupKitLibrary_sOnce != -1)
  {
    initSKDevice_cold_1();
  }

  result = objc_getClass("SKDevice");
  classSKDevice = result;
  getSKDeviceClass = SKDeviceFunction;
  return result;
}

void *__SetupKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SetupKit.framework/SetupKit", 2);
  SetupKitLibrary_sLib = result;
  return result;
}

Class initSKSetupCaptiveNetworkJoinClient()
{
  if (SetupKitLibrary_sOnce != -1)
  {
    initSKDevice_cold_1();
  }

  result = objc_getClass("SKSetupCaptiveNetworkJoinClient");
  classSKSetupCaptiveNetworkJoinClient = result;
  getSKSetupCaptiveNetworkJoinClientClass = SKSetupCaptiveNetworkJoinClientFunction;
  return result;
}

Class initWSWebSheetViewController()
{
  if (WebSheetLibrary_sOnce != -1)
  {
    initWSWebSheetViewController_cold_1();
  }

  result = objc_getClass("WSWebSheetViewController");
  classWSWebSheetViewController = result;
  getWSWebSheetViewControllerClass = WSWebSheetViewControllerFunction;
  return result;
}

void *__WebSheetLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/WebSheet.framework/WebSheet", 2);
  WebSheetLibrary_sLib = result;
  return result;
}

Class initSKSetupCaptiveNetworkJoinServer()
{
  if (SetupKitLibrary_sOnce != -1)
  {
    initSKDevice_cold_1();
  }

  result = objc_getClass("SKSetupCaptiveNetworkJoinServer");
  classSKSetupCaptiveNetworkJoinServer = result;
  getSKSetupCaptiveNetworkJoinServerClass = SKSetupCaptiveNetworkJoinServerFunction;
  return result;
}

void sub_1A9765D80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A97660C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class initTSCellularPlanProximityTransferController()
{
  if (SIMSetupSupportLibrary_sOnce != -1)
  {
    initTSCellularPlanProximityTransferController_cold_1();
  }

  result = objc_getClass("TSCellularPlanProximityTransferController");
  classTSCellularPlanProximityTransferController = result;
  getTSCellularPlanProximityTransferControllerClass = __C;
  return result;
}

void *__SIMSetupSupportLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SIMSetupSupport.framework/SIMSetupSupport", 2);
  SIMSetupSupportLibrary_sLib = result;
  return result;
}

Class initCoreTelephonyClient()
{
  if (CoreTelephonyLibrary_sOnce != -1)
  {
    initCoreTelephonyClient_cold_1();
  }

  result = objc_getClass("CoreTelephonyClient");
  classCoreTelephonyClient = result;
  getCoreTelephonyClientClass = CoreTelephonyClientFunction;
  return result;
}

void *__CoreTelephonyLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreTelephony.framework/CoreTelephony", 2);
  CoreTelephonyLibrary_sLib = result;
  return result;
}

Class initIMOneTimeCodeAccelerator()
{
  if (IMCoreLibrary_sOnce != -1)
  {
    initIMOneTimeCodeAccelerator_cold_1();
  }

  result = objc_getClass("IMOneTimeCodeAccelerator");
  classIMOneTimeCodeAccelerator = result;
  getIMOneTimeCodeAcceleratorClass = IMOneTimeCodeAcceleratorFunction;
  return result;
}

void *__IMCoreLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/IMCore.framework/IMCore", 2);
  IMCoreLibrary_sLib = result;
  return result;
}

Class initPRXCardContentViewController()
{
  if (ProxCardKitLibrary_sOnce != -1)
  {
    initPRXCardContentViewController_cold_1();
  }

  result = objc_getClass("PRXCardContentViewController");
  classPRXCardContentViewController = result;
  getPRXCardContentViewControllerClass = PRXCardContentViewControllerFunction;
  return result;
}

void *__ProxCardKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/ProxCardKit.framework/ProxCardKit", 2);
  ProxCardKitLibrary_sLib = result;
  return result;
}

Class initPASUIGuardianViewPresenter()
{
  if (ProximityAppleIDSetupUILibrary_sOnce != -1)
  {
    initPASUIGuardianViewPresenter_cold_1();
  }

  result = objc_getClass("PASUIGuardianViewPresenter");
  classPASUIGuardianViewPresenter = result;
  getPASUIGuardianViewPresenterClass = PASUIGuardianViewPresenterFunction;
  return result;
}

void *__ProximityAppleIDSetupUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/ProximityAppleIDSetupUI.framework/ProximityAppleIDSetupUI", 2);
  ProximityAppleIDSetupUILibrary_sLib = result;
  return result;
}

Class initCDPContext_0()
{
  if (CoreCDPLibrary_sOnce_0 != -1)
  {
    initCDPContext_cold_1_0();
  }

  result = objc_getClass("CDPContext");
  classCDPContext_0 = result;
  getCDPContextClass_0 = CDPContextFunction_0;
  return result;
}

void *__CoreCDPLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreCDP.framework/CoreCDP", 2);
  CoreCDPLibrary_sLib_0 = result;
  return result;
}

Class initCDPStateController_0()
{
  if (CoreCDPLibrary_sOnce_0 != -1)
  {
    initCDPContext_cold_1_0();
  }

  result = objc_getClass("CDPStateController");
  classCDPStateController_0 = result;
  getCDPStateControllerClass_0 = CDPStateControllerFunction_0;
  return result;
}

Class initPKProximitySetupSourceClient()
{
  if (PassKitCoreLibrary_sOnce != -1)
  {
    initPKProximitySetupSourceClient_cold_1();
  }

  result = objc_getClass("PKProximitySetupSourceClient");
  classPKProximitySetupSourceClient = result;
  getPKProximitySetupSourceClientClass = PKProximitySetupSourceClientFunction;
  return result;
}

void *__PassKitCoreLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/PassKitCore.framework/PassKitCore", 2);
  PassKitCoreLibrary_sLib = result;
  return result;
}

Class initACAccountStore_5()
{
  if (AccountsLibrary_sOnce_5 != -1)
  {
    initACAccountStore_cold_1_5();
  }

  result = objc_getClass("ACAccountStore");
  classACAccountStore_5 = result;
  getACAccountStoreClass_5 = ACAccountStoreFunction_5;
  return result;
}

void *__AccountsLibrary_block_invoke_5()
{
  result = dlopen("/System/Library/Frameworks/Accounts.framework/Accounts", 2);
  AccountsLibrary_sLib_5 = result;
  return result;
}

void *__AccessibilityLibrary_block_invoke_0()
{
  result = dlopen("/usr/lib/libAccessibility.dylib", 2);
  AccessibilityLibrary_sLib_0 = result;
  return result;
}

uint64_t init_AXSCopySettingsDataBlobForBuddy(uint64_t a1)
{
  if (AccessibilityLibrary_sOnce_0 != -1)
  {
    [SFDeviceSetupSessioniOS _sendPreAuthInfo];
  }

  v1 = dlsym(AccessibilityLibrary_sLib_0, "_AXSCopySettingsDataBlobForBuddy");
  softLink_AXSCopySettingsDataBlobForBuddy = v1;

  return v1();
}

Class initBYDeviceSetupSourceSession()
{
  if (SetupAssistantLibrary_sOnce != -1)
  {
    initBYDeviceSetupSourceSession_cold_1();
  }

  result = objc_getClass("BYDeviceSetupSourceSession");
  classBYDeviceSetupSourceSession = result;
  getBYDeviceSetupSourceSessionClass = BYDeviceSetupSourceSessionFunction;
  return result;
}

void *__SetupAssistantLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SetupAssistant.framework/SetupAssistant", 2);
  SetupAssistantLibrary_sLib = result;
  return result;
}

void OUTLINED_FUNCTION_1_17(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

Class initTVLAudioLatencyEstimator_1()
{
  if (TVLatencyLibrary_sOnce_3 != -1)
  {
    initTVLAudioLatencyEstimator_cold_1_1();
  }

  result = objc_getClass("TVLAudioLatencyEstimator");
  classTVLAudioLatencyEstimator_1 = result;
  getTVLAudioLatencyEstimatorClass_1 = TVLAudioLatencyEstimatorFunction_1;
  return result;
}

void *__TVLatencyLibrary_block_invoke_3()
{
  result = dlopen("/System/Library/PrivateFrameworks/TVLatency.framework/TVLatency", 2);
  TVLatencyLibrary_sLib_3 = result;
  return result;
}

Class initTVLAudioLatencyEstimator_2()
{
  if (TVLatencyLibrary_sOnce_4 != -1)
  {
    initTVLAudioLatencyEstimator_cold_1_2();
  }

  result = objc_getClass("TVLAudioLatencyEstimator");
  classTVLAudioLatencyEstimator_2 = result;
  getTVLAudioLatencyEstimatorClass_2 = TVLAudioLatencyEstimatorFunction_2;
  return result;
}

void *__TVLatencyLibrary_block_invoke_4()
{
  result = dlopen("/System/Library/PrivateFrameworks/TVLatency.framework/TVLatency", 2);
  TVLatencyLibrary_sLib_4 = result;
  return result;
}

Class initHMDeviceSetupOperationHandler_2()
{
  if (HomeKitLibrary_sOnce_6 != -1)
  {
    initHMDeviceSetupOperationHandler_cold_1_2();
  }

  result = objc_getClass("HMDeviceSetupOperationHandler");
  classHMDeviceSetupOperationHandler_2 = result;
  getHMDeviceSetupOperationHandlerClass_2 = HMDeviceSetupOperationHandlerFunction_2;
  return result;
}

void *__HomeKitLibrary_block_invoke_6()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_6 = result;
  return result;
}

Class initCDPStateController_1()
{
  if (CoreCDPLibrary_sOnce_1 != -1)
  {
    initCDPStateController_cold_1();
  }

  result = objc_getClass("CDPStateController");
  classCDPStateController_1 = result;
  getCDPStateControllerClass_1 = CDPStateControllerFunction_1;
  return result;
}

void *__CoreCDPLibrary_block_invoke_1()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreCDP.framework/CoreCDP", 2);
  CoreCDPLibrary_sLib_1 = result;
  return result;
}

void sub_1A976F5FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class initTROperationQueue_3()
{
  if (TouchRemoteLibrary_sOnce_5 != -1)
  {
    initTROperationQueue_cold_1_3();
  }

  result = objc_getClass("TROperationQueue");
  classTROperationQueue_3 = result;
  getTROperationQueueClass_3 = TROperationQueueFunction_3;
  return result;
}

void *__TouchRemoteLibrary_block_invoke_5()
{
  result = dlopen("/System/Library/PrivateFrameworks/TouchRemote.framework/TouchRemote", 2);
  TouchRemoteLibrary_sLib_5 = result;
  return result;
}

Class initTRSetupConfigurationOperation_0()
{
  if (TouchRemoteLibrary_sOnce_5 != -1)
  {
    initTROperationQueue_cold_1_3();
  }

  result = objc_getClass("TRSetupConfigurationOperation");
  classTRSetupConfigurationOperation_0 = result;
  getTRSetupConfigurationOperationClass_0 = TRSetupConfigurationOperationFunction_0;
  return result;
}

id initValTRSetupConfigurationOperationUnauthenticatedServicesKey_0(uint64_t a1)
{
  if (softLinkOnceTRSetupConfigurationOperationUnauthenticatedServicesKey_0 != -1)
  {
    initValTRSetupConfigurationOperationUnauthenticatedServicesKey_cold_1_0();
  }

  v2 = constantValTRSetupConfigurationOperationUnauthenticatedServicesKey_0;

  return v2;
}

void __initValTRSetupConfigurationOperationUnauthenticatedServicesKey_block_invoke_0()
{
  if (TouchRemoteLibrary_sOnce_5 != -1)
  {
    initTROperationQueue_cold_1_3();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_5, "TRSetupConfigurationOperationUnauthenticatedServicesKey");
  if (v0)
  {
    objc_storeStrong(&constantValTRSetupConfigurationOperationUnauthenticatedServicesKey_0, *v0);
  }

  getTRSetupConfigurationOperationUnauthenticatedServicesKey_0 = TRSetupConfigurationOperationUnauthenticatedServicesKeyFunction_0;
}

Class initTRAuthenticationOperation_2()
{
  if (TouchRemoteLibrary_sOnce_5 != -1)
  {
    initTROperationQueue_cold_1_3();
  }

  result = objc_getClass("TRAuthenticationOperation");
  classTRAuthenticationOperation_2 = result;
  getTRAuthenticationOperationClass_2 = TRAuthenticationOperationFunction_2;
  return result;
}

id getCKShareClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKShareClass_softClass_0;
  v7 = getCKShareClass_softClass_0;
  if (!getCKShareClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCKShareClass_block_invoke_0;
    v3[3] = &unk_1E788A938;
    v3[4] = &v4;
    __getCKShareClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A97726A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCKShareClass_block_invoke_0(uint64_t a1)
{
  CloudKitLibrary_1();
  result = objc_getClass("CKShare");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKShareClass_block_invoke_cold_1_0();
  }

  getCKShareClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CloudKitLibrary_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!CloudKitLibraryCore_frameworkLibrary_1)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __CloudKitLibraryCore_block_invoke_1;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E78901D8;
    v2 = 0;
    CloudKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!CloudKitLibraryCore_frameworkLibrary_1)
  {
    CloudKitLibrary_cold_1_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __CloudKitLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  CloudKitLibraryCore_frameworkLibrary_1 = result;
  return result;
}

uint64_t __SharedWithYouCoreLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  SharedWithYouCoreLibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getCKContainerSetupInfoClass_block_invoke_1(uint64_t a1)
{
  CloudKitLibrary_1();
  result = objc_getClass("CKContainerSetupInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKContainerSetupInfoClass_block_invoke_cold_1_1();
  }

  getCKContainerSetupInfoClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A9776734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t _clientPairSetupPromptForPIN(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFPINPairSession, "OSStatus _clientPairSetupPromptForPIN(PairingFlags, int32_t, void *)", 30, "PairSetup prompt for PIN (0x%X, %d throttle seconds)\n", a1, a2);
  }

  v5[64] = 1;
  v6 = *(v5 + 18);
  if (v6)
  {
    (*(v6 + 16))(v6, a1, a2);
  }

  return 0;
}

uint64_t _handleServerPairSetupHidePIN(uint64_t a1)
{
  result = *(a1 + 160);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t _SFApplicationExtensionIsSafePredicateForObjectWithSubquerySubstitutions(void *a1, void *a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = [v7 subpredicates];
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if (!_SFApplicationExtensionIsSafePredicateForObjectWithSubquerySubstitutions(*(*(&v30 + 1) + 8 * v15), v8, v9, v10))
          {
            IsSafeExpressionForObjectWithSubquerySubstitutions = 0;
            goto LABEL_23;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    IsSafeExpressionForObjectWithSubquerySubstitutions = 1;
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v7;
    v17 = v8;
    v18 = v9;
    v19 = v10;
    v20 = [v11 predicateOperatorType];
    v21 = v19;
    v22 = v21;
    if (v20 > 98)
    {
      if ((v20 - 99) < 2 || (v20 - 1100) < 2 || v20 == 1000)
      {
LABEL_14:

        v23 = [v11 leftExpression];
        if (_SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v23, v17, v18, v22))
        {
          [v11 rightExpression];
          v29 = v11;
          v24 = v18;
          v26 = v25 = v17;
          IsSafeExpressionForObjectWithSubquerySubstitutions = _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v26, v25, v24, v22);

          v17 = v25;
          v18 = v24;
          v11 = v29;
        }

        else
        {
          IsSafeExpressionForObjectWithSubquerySubstitutions = 0;
        }

LABEL_22:
LABEL_23:

        goto LABEL_24;
      }
    }

    else if (v20 < 0xB)
    {
      goto LABEL_14;
    }

    v28 = share_sheet_log(v21);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v36 = "_SFApplicationExtensionIsSafePredicateOperatorTypeForObjectWithSubquerySubstitutions";
      v37 = 2112;
      v38 = v22;
      v39 = 2048;
      v40 = v20;
      _os_log_impl(&dword_1A9662000, v28, OS_LOG_TYPE_DEFAULT, "%s [%@]: NSPredicateOperator considered unsafe: %ld", buf, 0x20u);
    }

    IsSafeExpressionForObjectWithSubquerySubstitutions = 0;
    goto LABEL_22;
  }

  NSClassFromString(&cfstr_Nstruepredicat.isa);
  if (objc_opt_isKindOfClass())
  {
    IsSafeExpressionForObjectWithSubquerySubstitutions = 1;
  }

  else
  {
    NSClassFromString(&cfstr_Nsfalsepredica.isa);
    IsSafeExpressionForObjectWithSubquerySubstitutions = objc_opt_isKindOfClass();
  }

LABEL_24:

  return IsSafeExpressionForObjectWithSubquerySubstitutions & 1;
}

uint64_t _SFApplicationExtensionIsSafeKeyPathForObject(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = [v3 rangeOfString:@"."];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v5;
    v9 = v6;
    v10 = [v3 substringToIndex:v5];
    v11 = [v3 substringFromIndex:v8 + v9];
    if ([v10 isEqualToString:@"@count"])
    {
      if (_SFApplicationExtensionIsOfSafeCollectionClassForPredicates(v4) & 1) != 0 || (_NSIsNSDictionary())
      {

LABEL_8:
        IsSafeKeyPathForObject = 1;
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    if (([v10 isEqualToString:@"@avg"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"@max") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"@min") & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"@sum"))
    {
      if (_SFApplicationExtensionIsOfSafeCollectionClassForPredicates(v4))
      {
        v12 = &__block_literal_global_62;
LABEL_15:
        IsSafeKeyPathForObjectsInCollection = _SFApplicationExtensionIsSafeKeyPathForObjectsInCollection(v11, v4, v12);
LABEL_16:
        IsSafeKeyPathForObject = IsSafeKeyPathForObjectsInCollection;
LABEL_28:

        goto LABEL_29;
      }
    }

    else if (([v10 isEqualToString:@"@distinctUnionOfObjects"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"@unionOfObjects"))
    {
      if (_SFApplicationExtensionIsOfSafeCollectionClassForPredicates(v4))
      {
        v12 = &__block_literal_global_147;
        goto LABEL_15;
      }
    }

    else
    {
      if (([v10 isEqualToString:@"@distinctUnionOfArrays"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"@unionOfArrays") || objc_msgSend(v10, "isEqualToString:", @"@distinctUnionOfSets"))
      {
        v14 = objc_opt_class();
        IsSafeKeyPathForObjectsInCollection = _SFApplicationExtensionIsSafeKeyPathForSubcollectionsOfClassOfCollection(v11, v14, v4);
        goto LABEL_16;
      }

      if (_SFApplicationExtensionIsSafeKeyForObject(v10, v4))
      {
        v15 = [v4 valueForKey:v10];
        IsSafeKeyPathForObject = _SFApplicationExtensionIsSafeKeyPathForObject(v11, v15);

        goto LABEL_28;
      }
    }

LABEL_27:
    IsSafeKeyPathForObject = 0;
    goto LABEL_28;
  }

  IsSafeKeyPathForObject = _SFApplicationExtensionIsSafeKeyForObject(v3, v4);
LABEL_29:

  return IsSafeKeyPathForObject;
}

uint64_t _SFApplicationExtensionIsSafeKeyForObject(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length])
  {
    if (!v4)
    {
      v6 = 1;
      goto LABEL_14;
    }

    if ([v3 characterAtIndex:0] != 64)
    {
      if (!_NSIsNSString())
      {
        v7 = _NSIsNSDictionary();
        goto LABEL_13;
      }

      v5 = @"length";
LABEL_11:
      v7 = [v3 isEqualToString:v5];
LABEL_13:
      v6 = v7;
      goto LABEL_14;
    }

    if ((_SFApplicationExtensionIsOfSafeCollectionClassForPredicates(v4) & 1) != 0 || _NSIsNSDictionary())
    {
      v5 = @"@count";
      goto LABEL_11;
    }
  }

  v6 = 0;
LABEL_14:

  return v6;
}

uint64_t _SFApplicationExtensionIsOfSafeCollectionClassForPredicates(void *a1)
{
  v1 = a1;
  if (_NSIsNSArray() & 1) != 0 || (_NSIsNSSet())
  {
    v2 = 1;
  }

  else
  {
    v2 = _NSIsNSOrderedSet();
  }

  return v2;
}

uint64_t _SFApplicationExtensionIsSafeKeyPathForObjectsInCollection(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if (_SFApplicationExtensionIsSafeKeyPathForObject(v5, v13))
        {
          v14 = [v13 valueForKeyPath:{v5, v18}];
          v15 = v7[2](v7, v14);

          if (v15)
          {
            continue;
          }
        }

        v16 = 0;
        goto LABEL_13;
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v16 = 1;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 1;
  }

LABEL_13:

  return v16;
}

uint64_t _SFApplicationExtensionIsSafeKeyPathForSubcollectionsOfClassOfCollection(void *a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a3;
  if (_SFApplicationExtensionIsOfSafeCollectionClassForPredicates(v5))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v12 = 0;
            goto LABEL_13;
          }

          _SFApplicationExtensionIsSafeKeyPathForObjectsInCollection(v4, v11, &__block_literal_global_189);
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = 1;
LABEL_13:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(void *a1, void *a2, void *a3, void *a4)
{
  v79 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [v7 expressionType];
  v12 = 1;
  if (v11 <= 9)
  {
    if (v11 < 3)
    {
      goto LABEL_75;
    }

    if ((v11 - 5) < 3)
    {
      if ((_NSIsNSSet() & 1) == 0)
      {
        v11 = _NSIsNSOrderedSet();
        if (!v11)
        {
          goto LABEL_72;
        }
      }

      v13 = [v7 leftExpression];
      if (_SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v13, v8, v9, v10))
      {
        v14 = [v7 rightExpression];
        IsSafeExpressionForObjectWithSubquerySubstitutions = _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v14, v8, v9, v10);

        if (IsSafeExpressionForObjectWithSubquerySubstitutions)
        {
          goto LABEL_80;
        }

        goto LABEL_72;
      }

      goto LABEL_38;
    }

    if ((v11 - 3) < 2)
    {
      v25 = [v7 function];
      if (([v25 isEqualToString:@"valueForKey:"] & 1) != 0 || objc_msgSend(v25, "isEqualToString:", @"valueForKeyPath:"))
      {
        v26 = [v7 arguments];
        v27 = [v26 count];
        if (v27 == 1)
        {
          v28 = [v26 firstObject];
          v29 = _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v28, v8, v9, v10);
          if (!v29)
          {
            v47 = share_sheet_log(v29);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_6();
            }

            goto LABEL_72;
          }

          v30 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v9];
          v31 = [v28 expressionValueWithObject:v8 context:v30];

          v32 = _NSIsNSString();
          if (!v32)
          {
            v48 = share_sheet_log(v32);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              v49 = objc_opt_class();
              _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_7(v31, v49, v71, v48);
            }

            goto LABEL_72;
          }

          v33 = [v7 operand];
          v34 = v33;
          if (v33)
          {
            v35 = _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v33, v8, v9, v10);
            if (v35)
            {
              v36 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v9];
              v59 = [v34 expressionValueWithObject:v8 context:v36];

              if ([v25 isEqualToString:@"valueForKeyPath:"])
              {
                IsSafeKeyPathForObject = _SFApplicationExtensionIsSafeKeyPathForObject(v31, v59);
              }

              else
              {
                IsSafeKeyPathForObject = _SFApplicationExtensionIsSafeKeyForObject(v31, v59);
              }

              if ((IsSafeKeyPathForObject & 1) == 0)
              {
                v54 = share_sheet_log(IsSafeKeyPathForObject);
                if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                {
                  v55 = [v25 isEqualToString:@"valueForKeyPath:"];
                  v56 = &stru_1F1D30528;
                  *v71 = 136315906;
                  v72 = "_SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions";
                  v73 = 2112;
                  if (v55)
                  {
                    v56 = @"path";
                  }

                  v74 = v56;
                  v75 = 2112;
                  v76 = v31;
                  v77 = 2112;
                  v78 = v59;
                  _os_log_debug_impl(&dword_1A9662000, v54, OS_LOG_TYPE_DEBUG, "%s: Key%@ %@ not safe to evaluate with %@", v71, 0x2Au);
                }

                goto LABEL_72;
              }

              goto LABEL_79;
            }

            v51 = share_sheet_log(v35);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_8();
            }
          }

          else
          {
            v51 = share_sheet_log(0);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_9(v51);
            }
          }

          goto LABEL_72;
        }

        v38 = share_sheet_log(v27);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
LABEL_40:
          _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_2(v26);
        }
      }

      else
      {
        if (([v25 isEqualToString:@"from:subtract:"] & 1) == 0)
        {
          v39 = [v25 isEqualToString:@"add:to:"];
          if (!v39)
          {
            v50 = share_sheet_log(v39);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_1();
            }

            goto LABEL_72;
          }
        }

        v26 = [v7 arguments];
        v40 = [v26 count];
        if (v40 != 2)
        {
          v38 = share_sheet_log(v40);
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

        v41 = [v26 objectAtIndexedSubscript:0];
        v42 = _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v41, v8, v9, v10);

        if (v42)
        {
          v44 = [v26 objectAtIndexedSubscript:1];
          v45 = _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v44, v8, v9, v10);

          if (v45)
          {
LABEL_79:

            goto LABEL_80;
          }

          v38 = share_sheet_log(v46);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_4(v26);
          }
        }

        else
        {
          v38 = share_sheet_log(v43);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_3(v26);
          }
        }
      }

LABEL_41:

      goto LABEL_72;
    }

    goto LABEL_36;
  }

  if (v11 > 0x14)
  {
LABEL_36:
    v13 = share_sheet_log(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_10();
    }

    goto LABEL_38;
  }

  if (((1 << v11) & 0x18D800) == 0)
  {
    if (v11 == 10)
    {
      goto LABEL_75;
    }

    if (v11 == 13)
    {
      v58 = [v7 collection];
      v13 = v58;
      if (_SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v58, v8, v9, v10))
      {
        v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v9];
        v17 = [v58 expressionValueWithObject:v8 context:v16];

        if (v17)
        {
          if (_SFApplicationExtensionIsOfSafeCollectionClassForPredicates(v17))
          {
            v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v9];
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            obj = v17;
            v19 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
            if (v19)
            {
              v20 = *v61;
              while (2)
              {
                for (i = 0; i != v19; ++i)
                {
                  if (*v61 != v20)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v22 = *(*(&v60 + 1) + 8 * i);
                  v23 = [v7 variable];
                  [v18 setObject:v22 forKey:v23];

                  v24 = [v7 predicate];
                  LOBYTE(v22) = _SFApplicationExtensionIsSafePredicateForObjectWithSubquerySubstitutions(v24, v8, v18, v10);

                  if ((v22 & 1) == 0)
                  {

                    goto LABEL_72;
                  }
                }

                v19 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
                if (v19)
                {
                  continue;
                }

                break;
              }
            }

            goto LABEL_80;
          }

          goto LABEL_72;
        }

LABEL_80:
        v12 = 1;
        goto LABEL_75;
      }

LABEL_38:

      goto LABEL_72;
    }

    goto LABEL_36;
  }

LABEL_72:
  v52 = share_sheet_log(v11);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v65 = "_SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions";
    v66 = 2112;
    v67 = v10;
    v68 = 2112;
    v69 = v7;
    _os_log_impl(&dword_1A9662000, v52, OS_LOG_TYPE_DEFAULT, "%s [%@]: Expression considered unsafe: %@", buf, 0x20u);
  }

  v12 = 0;
LABEL_75:

  return v12;
}

void sub_1A977C2D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(exception_object);
    v13 = share_sheet_log(v15);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *(v12 - 160) = 136315906;
      v14 = v12 - 160;
      *(v14 + 4) = "_SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions";
      *(v12 - 148) = 2112;
      *(v14 + 14) = v10;
      *(v12 - 138) = 2112;
      *(v12 - 136) = v11;
      *(v12 - 128) = 2112;
      *(v14 + 34) = v15;
      _os_log_fault_impl(&dword_1A9662000, v13, OS_LOG_TYPE_FAULT, "%s [%@]: Exception occurred when trying to evaluate operand expression %@ : %@", (v12 - 160), 0x2Au);
    }

    objc_end_catch();
    JUMPOUT(0x1A977C100);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A977E784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A977EAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A977EDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A977F088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A977F3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_4_7(void *a1, const char *a2)
{
  v4 = *(*(v2 + 32) + 80);

  return [a1 timeIntervalSinceDate:v4];
}

Class initRTIInputSystemDataPayload_0()
{
  if (RemoteTextInputLibrary_sOnce_1 != -1)
  {
    initRTIInputSystemDataPayload_cold_1_0();
  }

  result = objc_getClass("RTIInputSystemDataPayload");
  classRTIInputSystemDataPayload_0 = result;
  getRTIInputSystemDataPayloadClass_0 = RTIInputSystemDataPayloadFunction_0;
  return result;
}

void *__RemoteTextInputLibrary_block_invoke_1()
{
  result = dlopen("/System/Library/PrivateFrameworks/RemoteTextInput.framework/RemoteTextInput", 2);
  RemoteTextInputLibrary_sLib_1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_6()
{

  return objc_opt_class();
}

const char *SFDeviceActionTypeToString(unsigned int a1)
{
  if (a1 > 0x66)
  {
    return "?";
  }

  else
  {
    return off_1E78905E0[a1];
  }
}

uint64_t SFServiceIdentifierToType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.sharing.ApplePay"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"com.apple.sharing.AppleTVSetup"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"com.apple.sharing.AudioTuning"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"com.apple.sharing.AutoUnlock"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"com.apple.sharing.CompanionLinkProx"])
  {
    v2 = 15;
  }

  else
  {
    if ([v1 isEqualToString:@"com.apple.sharing.Configurator"])
    {
      goto LABEL_12;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.ContinuityRemote"])
    {
      v2 = 1;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.DeviceDiagnostics"])
    {
      v2 = 12;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.Debug"])
    {
      v2 = 127;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.iOSSetup"])
    {
      v2 = 2;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.dovePeace"])
    {
      v2 = 23;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.PasswordGranting"])
    {
      v2 = 6;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.PasswordSharing"])
    {
      v2 = 7;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.ProxHandoff"])
    {
      v2 = 20;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.RemoteAutoFill"])
    {
      v2 = 13;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.RemoteAutoFillPong"])
    {
      v2 = 17;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.RemoteDisplay"])
    {
      v2 = 18;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.RemoteManagement"])
    {
LABEL_12:
      v2 = 16;
    }

    else if ([v1 isEqualToString:@"com.apple.sharing.Repair"])
    {
      v2 = 3;
    }

    else if ([v1 isEqualToString:@"com.apple.sharing.Setup2"])
    {
      v2 = 4;
    }

    else if ([v1 isEqualToString:@"com.apple.sharing.ShareAudio"])
    {
      v2 = 21;
    }

    else if ([v1 isEqualToString:@"com.apple.sharing.System"])
    {
      v2 = 8;
    }

    else if ([v1 isEqualToString:@"com.apple.sharing.WHASetup"])
    {
      v2 = 10;
    }

    else if ([v1 isEqualToString:@"com.apple.sharing.AuthenticateAccounts"])
    {
      v2 = 22;
    }

    else if ([v1 isEqualToString:@"com.apple.sharing.HasInvitations"])
    {
      v2 = 24;
    }

    else if ([v1 isEqualToString:@"com.apple.sharing.AcceptedInvitation"])
    {
      v2 = 25;
    }

    else
    {
      v2 = 0;
    }
  }

LABEL_35:

  return v2;
}

id SFServiceTypeToUUID(int a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = xmmword_1A9990211;
    LOBYTE(v3) = a1;
    v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v3];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id SFServiceIdentifierToUUID(void *a1, int *a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v8[0] = 0;
  v8[1] = 0;
  if ([v3 isEqualToString:@"com.apple.sharing.AirPlay"])
  {
    v4 = &unk_1A9990189;
  }

  else if ([v3 isEqualToString:@"com.apple.sharing.ApplePayLegacy"])
  {
    v4 = &unk_1A999019A;
  }

  else if ([v3 isEqualToString:@"com.apple.sharing.AutoUnlock"])
  {
    v4 = &unk_1A99901AB;
  }

  else if ([v3 isEqualToString:@"com.apple.sharing.Control"])
  {
    v4 = &unk_1A99901BC;
  }

  else if ([v3 isEqualToString:@"com.apple.sharing.InternetRelay"])
  {
    v4 = &unk_1A99901CD;
  }

  else if ([v3 isEqualToString:@"com.apple.sharing.PINPair"])
  {
    v4 = &unk_1A99901DE;
  }

  else if ([v3 isEqualToString:@"com.apple.sharing.RemoteApp"])
  {
    v4 = &unk_1A99901EF;
  }

  else if ([v3 isEqualToString:@"com.apple.sharing.Setup"])
  {
    v4 = &unk_1A9990200;
  }

  else
  {
    [v3 UTF8String];
    v4 = v8;
    if (StringToUUIDEx())
    {
      v5 = 0;
      v6 = -6742;
      goto LABEL_22;
    }
  }

  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v4];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -6700;
  }

LABEL_22:
  if (a2)
  {
    *a2 = v6;
  }

  return v5;
}

const char *SFNearbyBLEFrameTypeToString(unsigned int a1)
{
  if (a1 > 0x41)
  {
    return "?";
  }

  else
  {
    return off_1E7890918[a1];
  }
}

void sub_1A978CFE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v16 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A978D5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A978D830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A978DBB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

const char *SFNearbyBLEFrameTypeToString_0(unsigned int a1)
{
  if (a1 > 0x41)
  {
    return "?";
  }

  else
  {
    return off_1E7890E60[a1];
  }
}

void sub_1A97987E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  (*(v34 + 16))(v34, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getCNContactFormatterClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ContactsLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E78911B8;
    v5 = 0;
    ContactsLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!ContactsLibraryCore_frameworkLibrary_0)
  {
    __getCNContactFormatterClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CNContactFormatter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNContactFormatterClass_block_invoke_cold_1();
  }

  getCNContactFormatterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_1A979B360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A979B8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initSVXClientServiceManager()
{
  if (SiriVOXLibrary_sOnce != -1)
  {
    initSVXClientServiceManager_cold_1();
  }

  result = objc_getClass("SVXClientServiceManager");
  classSVXClientServiceManager = result;
  getSVXClientServiceManagerClass = SVXClientServiceManagerFunction;
  return result;
}

void *__SiriVOXLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SiriVOX.framework/SiriVOX", 2);
  SiriVOXLibrary_sLib = result;
  return result;
}

Class initSVXSystemEvent()
{
  if (SiriVOXLibrary_sOnce != -1)
  {
    initSVXClientServiceManager_cold_1();
  }

  result = objc_getClass("SVXSystemEvent");
  classSVXSystemEvent = result;
  getSVXSystemEventClass = SVXSystemEventFunction;
  return result;
}

Class initSiriTTSDaemonSession()
{
  if (SiriTTSServiceLibrary_sOnce != -1)
  {
    initSiriTTSDaemonSession_cold_1();
  }

  result = objc_getClass("SiriTTSDaemonSession");
  classSiriTTSDaemonSession = result;
  getSiriTTSDaemonSessionClass = SiriTTSDaemonSessionFunction;
  return result;
}

void *__SiriTTSServiceLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SiriTTSService.framework/SiriTTSService", 2);
  SiriTTSServiceLibrary_sLib = result;
  return result;
}

uint64_t initVSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences()
{
  if (VoiceServicesLibrary_sOnce != -1)
  {
    initVSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences_cold_1();
  }

  v0 = dlsym(VoiceServicesLibrary_sLib, "VSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences");
  softLinkVSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences = v0;

  return v0();
}

void *__VoiceServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/VoiceServices.framework/VoiceServices", 2);
  VoiceServicesLibrary_sLib = result;
  return result;
}

Class initSiriTTSSynthesisVoice()
{
  if (SiriTTSServiceLibrary_sOnce != -1)
  {
    initSiriTTSDaemonSession_cold_1();
  }

  result = objc_getClass("SiriTTSSynthesisVoice");
  classSiriTTSSynthesisVoice = result;
  getSiriTTSSynthesisVoiceClass = SiriTTSSynthesisVoiceFunction;
  return result;
}

Class initSiriTTSSynthesisRequest()
{
  if (SiriTTSServiceLibrary_sOnce != -1)
  {
    initSiriTTSDaemonSession_cold_1();
  }

  result = objc_getClass("SiriTTSSynthesisRequest");
  classSiriTTSSynthesisRequest = result;
  getSiriTTSSynthesisRequestClass = SiriTTSSynthesisRequestFunction;
  return result;
}

Class initSiriTTSSpeechRequest()
{
  if (SiriTTSServiceLibrary_sOnce != -1)
  {
    initSiriTTSDaemonSession_cold_1();
  }

  result = objc_getClass("SiriTTSSpeechRequest");
  classSiriTTSSpeechRequest = result;
  getSiriTTSSpeechRequestClass = SiriTTSSpeechRequestFunction;
  return result;
}

Class initSVXDeviceSetupContext()
{
  if (SiriVOXLibrary_sOnce != -1)
  {
    initSVXClientServiceManager_cold_1();
  }

  result = objc_getClass("SVXDeviceSetupContext");
  classSVXDeviceSetupContext = result;
  getSVXDeviceSetupContextClass = SVXDeviceSetupContextFunction;
  return result;
}

Class initSVXDeviceSetupFlowSceneBuilder()
{
  if (SiriVOXLibrary_sOnce != -1)
  {
    initSVXClientServiceManager_cold_1();
  }

  result = objc_getClass("SVXDeviceSetupFlowSceneBuilder");
  classSVXDeviceSetupFlowSceneBuilder = result;
  getSVXDeviceSetupFlowSceneBuilderClass = SVXDeviceSetupFlowSceneBuilderFunction;
  return result;
}

Class initTRAnisetteDataHandler()
{
  if (TouchRemoteLibrary_sOnce_6 != -1)
  {
    initTRAnisetteDataHandler_cold_1();
  }

  result = objc_getClass("TRAnisetteDataHandler");
  classTRAnisetteDataHandler = result;
  getTRAnisetteDataHandlerClass = TRAnisetteDataHandlerFunction;
  return result;
}

void *__TouchRemoteLibrary_block_invoke_6()
{
  result = dlopen("/System/Library/PrivateFrameworks/TouchRemote.framework/TouchRemote", 2);
  TouchRemoteLibrary_sLib_6 = result;
  return result;
}

Class initTREventMessage()
{
  if (TouchRemoteLibrary_sOnce_6 != -1)
  {
    initTRAnisetteDataHandler_cold_1();
  }

  result = objc_getClass("TREventMessage");
  classTREventMessage = result;
  getTREventMessageClass = TREventMessageFunction;
  return result;
}

Class initTRRequestMessage()
{
  if (TouchRemoteLibrary_sOnce_6 != -1)
  {
    initTRAnisetteDataHandler_cold_1();
  }

  result = objc_getClass("TRRequestMessage");
  classTRRequestMessage = result;
  getTRRequestMessageClass = TRRequestMessageFunction;
  return result;
}

Class initTRResponseMessage()
{
  if (TouchRemoteLibrary_sOnce_6 != -1)
  {
    initTRAnisetteDataHandler_cold_1();
  }

  result = objc_getClass("TRResponseMessage");
  classTRResponseMessage = result;
  getTRResponseMessageClass = TRResponseMessageFunction;
  return result;
}

void _wifiDeviceAttached(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = v3[14];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___wifiDeviceAttached_block_invoke;
  block[3] = &unk_1E788B198;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void _wifiServerRestarted(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2[14];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___wifiServerRestarted_block_invoke;
  block[3] = &unk_1E788B198;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

void _wifiAutoJoinNotification(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = v4[14];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___wifiAutoJoinNotification_block_invoke;
  v9[3] = &unk_1E788A658;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, v9);
}

void _wifiDeviceDetached(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2[14];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___wifiDeviceDetached_block_invoke;
  block[3] = &unk_1E788B198;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

_BYTE *___wifiAutoJoinNotification_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[8] & 1) == 0)
  {
    return [result _wifiAutoJoinNotification:*(a1 + 40)];
  }

  return result;
}

void *___wifiDeviceAttached_block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  if ((*(result[4] + 8) & 1) == 0)
  {
    v4 = result;
    if (gLogCategory_SFWiFiHealthMonitor <= 30)
    {
      if (gLogCategory_SFWiFiHealthMonitor != -1 || (result = _LogCategory_Initialize(), result))
      {
        ___wifiDeviceAttached_block_invoke_cold_1(result, a2, a3);
      }
    }

    v5 = v4[4];

    return [v5 _update];
  }

  return result;
}

void *___wifiDeviceDetached_block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  if ((*(result[4] + 8) & 1) == 0)
  {
    v4 = result;
    if (gLogCategory_SFWiFiHealthMonitor <= 30)
    {
      if (gLogCategory_SFWiFiHealthMonitor != -1 || (result = _LogCategory_Initialize(), result))
      {
        ___wifiDeviceDetached_block_invoke_cold_1(result, a2, a3);
      }
    }

    *(v4[4] + 32) = 0;
    *(v4[4] + 24) = 0;
    v5 = v4[4];

    return [v5 _update];
  }

  return result;
}

void *___wifiServerRestarted_block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  if ((*(result[4] + 8) & 1) == 0)
  {
    v9 = v3;
    v7 = result;
    if (gLogCategory_SFWiFiHealthMonitor <= 60)
    {
      if (gLogCategory_SFWiFiHealthMonitor != -1 || (result = _LogCategory_Initialize(), result))
      {
        ___wifiServerRestarted_block_invoke_cold_1(result, a2, a3);
      }
    }

    [v7[4] _wifiEnsureStopped];
    v8 = v7[4];

    return [v8 _wifiEnsureStarted];
  }

  return result;
}

uint64_t sub_1A97A4444()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B0AB8);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B0AB8);
  if (qword_1EB3B0B18 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3B3638);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SFUserDefault.keyString.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t SFUserDefault.__allocating_init(userDefaults:key:featureFlagsDomain:defaultValue:prefsChangedLibNotifyName:override:processesToKill:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = a4;
  v19 = swift_allocObject();
  SFUserDefault.init(userDefaults:key:featureFlagsDomain:defaultValue:prefsChangedLibNotifyName:override:processesToKill:)(a1, a2, a3, v15, a5, a6, a7 & 0x1FF, a8, a9, a10, a11, a12);
  return v19;
}

void *SFUserDefault.init(userDefaults:key:featureFlagsDomain:defaultValue:prefsChangedLibNotifyName:override:processesToKill:)(void *a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v54 = a8;
  v50 = a5;
  v51 = a6;
  LODWORD(v53) = a4;
  v18 = *v12;
  v19 = *(v18 + 80);
  v20 = sub_1A99770A0();
  v52 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - v21;
  v48 = a1;
  v58 = a1;
  v56 = v19;
  v23 = *(v18 + 88);
  v57 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0B98, &unk_1A9990570);
  v25 = type metadata accessor for SFUserDefault.SendableUserDefaultsBox(0, v19, v23, v24);
  sub_1A97A4AD0(sub_1A97A4AA0, v55, MEMORY[0x1E69E73E0], v25, v26, &v59);
  v49 = a12;
  v27 = v59;
  v13[2] = a2;
  v13[3] = a3;
  v47 = a3;
  LOBYTE(a1) = v53;
  *(v13 + 32) = v53;
  v29 = v50;
  v28 = v51;
  v13[7] = v27;
  v13[8] = v29;
  v13[9] = v28;
  *(v13 + 80) = a7;
  *(v13 + 81) = HIBYTE(a7) & 1;
  v30 = *(v19 - 8);
  (*(v30 + 16))(v13 + *(*v13 + 128), v54, v19);
  v31 = (v13 + *(*v13 + 144));
  *v31 = a9;
  v31[1] = a10;
  sub_1A9976550();
  v32 = v52;
  (*(v52 + 16))(v22, a11, v20);
  *(v13 + *(*v13 + 136)) = sub_1A9976560();
  v33 = *(*v13 + 152);
  *(v13 + v33) = v49;
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      v34 = sub_1A99768B0();
      v36 = v35;

      (*(v32 + 8))(a11, v20);
      (*(v30 + 8))(v54, v19);
LABEL_10:
      v13[5] = v34;
      v13[6] = v36;
      return v13;
    }

    __break(1u);
    goto LABEL_12;
  }

  v33 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a2 & 0xFFFFF800) != 0xD800)
  {
    v33 = a2 >> 16;
    if (a2 >> 16 <= 0x10)
    {
      v53 = a11;
      if (a2 <= 0x7F)
      {
        v37 = a2 + 1;
LABEL_9:
        v38 = v54;
        v39 = v48;
        v59 = (v37 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v37) >> 3))));
        v34 = sub_1A99768B0();
        v36 = v40;

        (*(v32 + 8))(v53, v20);
        (*(v30 + 8))(v38, v19);
        goto LABEL_10;
      }

LABEL_14:
      v42 = (a2 & 0x3F) << 8;
      v43 = (a2 >> 6) + v42 + 33217;
      v44 = (v42 | (a2 >> 6) & 0x3F) << 8;
      v45 = (a2 >> 18) + ((v44 | (a2 >> 12) & 0x3F) << 8) - 2122219023;
      v46 = (a2 >> 12) + v44 + 8487393;
      if (v33)
      {
        v37 = v45;
      }

      else
      {
        v37 = v46;
      }

      if (a2 < 0x800)
      {
        v37 = v43;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __break(1u);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

id sub_1A97A4AA0@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

uint64_t sub_1A97A4AD0@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
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

uint64_t SFUserDefault.runtimeOverride.setter(uint64_t a1)
{
  sub_1A97AF6E4(a1);
  v2 = sub_1A99770A0();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*SFUserDefault.runtimeOverride.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1A99770A0();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_1A9976530();
  return sub_1A97A5014;
}

void sub_1A97A5014(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1A97AF6E4(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1A97AF6E4(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

BOOL SFUserDefault.hasRuntimeOverride.getter()
{
  v1 = *(*v0 + 80);
  v2 = sub_1A99770A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  sub_1A9976530();
  v6 = (*(*(v1 - 8) + 48))(v5, 1, v1) != 1;
  (*(v3 + 8))(v5, v2);
  return v6;
}

Swift::Void __swiftcall SFUserDefault.clearRuntimeOverride()()
{
  v1 = *(*v0 + 80);
  v2 = sub_1A99770A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v6 - v4;
  (*(*(v1 - 8) + 56))(&v6 - v4, 1, 1, v1);
  sub_1A97AF6E4(v5);
  (*(v3 + 8))(v5, v2);
}

uint64_t SFUserDefault.hasValueOnDisk.getter()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_1A99767E0();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1A99771B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_8;
  }

  v5 = 1;
LABEL_9:
  sub_1A97B06FC(&v9, &qword_1EB3B0BA0, &unk_1A99923D0);
  return v5;
}

Swift::Void __swiftcall SFUserDefault.clearValueOnDisk()()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1A99767E0();
    [v2 removeObjectForKey_];
  }
}

uint64_t SFUserDefault.hasFeatureFlag.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (v4[81])
  {
    v5 = 0;
  }

  else
  {
    type metadata accessor for SFUserDefault.FFKey(0, *(*v4 + 80), *(*v4 + 88), a4);
    v5 = sub_1A97A553C();
  }

  return v5 & 1;
}

id sub_1A97A553C()
{
  result = objc_opt_self();
  if (!*v0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((*(v0 + 40) | *(v0 + 16)))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*(v0 + 24))
  {
    return [result featureEnabledForDomain_feature_];
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t SFUserDefault.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = *v1;
  v4 = *(v75 + 80);
  v5 = sub_1A99770A0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v72 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v74 = &v66 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v66 - v12;
  v14 = *(v4 - 8);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v71 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v73 = &v66 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v66 - v19;
  sub_1A9976530();
  v21 = v14;
  v22 = *(v14 + 48);
  if (v22(v13, 1, v4) != 1)
  {
    v33 = *(v21 + 32);
    v33(v20, v13, v4);
    v35 = a1;
    v36 = v20;
    return (v33)(v35, v36, v4);
  }

  v70 = a1;
  v25 = *(v6 + 8);
  v23 = v6 + 8;
  v24 = v25;
  v25(v13, v5);
  v27 = *(v2 + 7);
  if (!v27)
  {
    goto LABEL_9;
  }

  v67 = v24;
  v68 = v23;
  v69 = v21;
  v28 = v27;
  v29 = sub_1A99767E0();
  v30 = [v28 objectForKey_];

  if (!v30)
  {

    v21 = v69;
LABEL_9:
    if ((v2[81] & 1) != 0 || v4 != MEMORY[0x1E69E6370])
    {
      return (*(v21 + 16))(v70, &v2[*(*v2 + 128)], v4);
    }

    v38 = v2[80];
    v39 = v2[32];
    v40 = *(v75 + 88);
    v77 = *(v2 + 4);
    v78 = v38;
    v79 = *(v2 + 1);
    v80 = v39;
    type metadata accessor for SFUserDefault.FFKey(0, MEMORY[0x1E69E6370], v40, v26);
    LOBYTE(v76[0]) = sub_1A97A553C() & 1;
    return swift_dynamicCast();
  }

  sub_1A99771B0();
  swift_unknownObjectRelease();
  sub_1A97AF7EC(&v77, v76);
  v31 = v74;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v77);

    v32 = v69;
    (*(v69 + 56))(v31, 0, 1, v4);
    v33 = *(v32 + 32);
    v34 = v73;
    v33(v73, v31, v4);
    v35 = v70;
    v36 = v34;
    return (v33)(v35, v36, v4);
  }

  (*(v69 + 56))(v31, 1, 1, v4);
  v67(v31, v5);
  v41 = sub_1A99767E0();
  v42 = [v28 stringForKey_];

  if (!v42)
  {
    if (qword_1EB3B0AB0 != -1)
    {
      swift_once();
    }

    v58 = sub_1A99764A0();
    __swift_project_value_buffer(v58, qword_1EB3B0AB8);

    v48 = sub_1A9976480();
    v49 = sub_1A9976F70();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v76[0] = v51;
      *v50 = 136315138;
      v59 = v4;
      v60 = sub_1A99772C0();
      v62 = v61;

      v63 = sub_1A97AF148(v60, v62, v76);

      *(v50 + 4) = v63;
      v4 = v59;
      v57 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
      goto LABEL_23;
    }

LABEL_24:

    goto LABEL_25;
  }

  v43 = sub_1A9976820();
  v45 = v44;

  v46 = v72;
  (*(*(v75 + 88) + 16))(v43, v45, v4);
  if (v22(v46, 1, v4) == 1)
  {
    v67(v46, v5);
    if (qword_1EB3B0AB0 != -1)
    {
      swift_once();
    }

    v47 = sub_1A99764A0();
    __swift_project_value_buffer(v47, qword_1EB3B0AB8);

    v48 = sub_1A9976480();
    v49 = sub_1A9976F70();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v76[0] = v51;
      *v50 = 136315138;
      v52 = v4;
      v53 = sub_1A99772C0();
      v55 = v54;

      v56 = sub_1A97AF148(v53, v55, v76);

      *(v50 + 4) = v56;
      v4 = v52;
      v57 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
LABEL_23:
      _os_log_impl(&dword_1A9662000, v48, v49, v57, v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x1AC58D2C0](v51, -1, -1);
      MEMORY[0x1AC58D2C0](v50, -1, -1);

LABEL_25:
      __swift_destroy_boxed_opaque_existential_0Tm(&v77);
      return (*(v69 + 16))(v70, &v2[*(*v2 + 128)], v4);
    }

    goto LABEL_24;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v77);

  v64 = *(v69 + 32);
  v65 = v71;
  v64(v71, v46, v4);
  return (v64)(v70, v65, v4);
}

uint64_t sub_1A97A5DD0(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = &v5 - v1;
  (*(v3 + 16))(&v5 - v1);
  return SFUserDefault.value.setter(v2);
}

uint64_t SFUserDefault.value.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1A99762C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A9976230();
  v55 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SFUserDefaultsRepresentation(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2[7];
  if (v15)
  {
    v51 = v9;
    v52 = v8;
    v53 = v6;
    v54 = v5;
    v16 = a1;
    v18 = *(v4 + 80);
    v17 = *(v4 + 88);
    v19 = *(v17 + 8);
    v56 = v15;
    v57 = v18;
    v20 = v16;
    v19(v18, v17);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          v46 = *v14;
          v47 = sub_1A99767E0();
          v23 = v56;
          [v56 setDouble:v47 forKey:v46];

          goto LABEL_20;
        }

        v31 = sub_1A9977A30();
        v32 = sub_1A99767E0();
        v33 = v56;
        [v56 setObject:v31 forKey:v32];
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          v22 = *v14;
          v23 = sub_1A99767E0();
          v24 = v56;
          [v56 setBool:v22 forKey:v23];

LABEL_20:
          return (*(*(v57 - 8) + 8))(v20);
        }

        v40 = *v14;
        v32 = sub_1A99767E0();
        v33 = v56;
        [v56 setInteger:*&v40 forKey:v32];
      }

      return (*(*(v57 - 8) + 8))(v20);
    }

    if (EnumCaseMultiPayload > 5)
    {
      v27 = v16;
      if (EnumCaseMultiPayload == 6)
      {
        v35 = v52;
        v34 = v53;
        v36 = v54;
        (*(v53 + 32))(v52, v14, v54);
        _s7Sharing9SFAirDropO18TransferIdentifierV11stringValueSSvg_0();
        v37 = sub_1A99767E0();

        v38 = sub_1A99767E0();
        v39 = v56;
        [v56 setObject:v37 forKey:v38];

        (*(*(v57 - 8) + 8))(v27);
        return (*(v34 + 8))(v35, v36);
      }

      v48 = sub_1A99767E0();
      v49 = v56;
      [v56 removeObjectForKey_];
    }

    else
    {
      v27 = v16;
      if (EnumCaseMultiPayload != 4)
      {
        v41 = v55;
        v42 = v51;
        (*(v55 + 32))(v11, v14, v51);
        v43 = sub_1A99760F0();
        v44 = sub_1A99767E0();
        v45 = v56;
        [v56 setObject:v43 forKey:v44];

        (*(*(v57 - 8) + 8))(v27);
        return (*(v41 + 8))(v11, v42);
      }

      v28 = sub_1A99767E0();

      v29 = sub_1A99767E0();
      v30 = v56;
      [v56 setObject:v28 forKey:v29];
    }

    return (*(*(v57 - 8) + 8))(v27);
  }

  else
  {
    v25 = *(*(*(v4 + 80) - 8) + 8);

    return v25(a1);
  }
}

void (*SFUserDefault.value.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  SFUserDefault.value.getter(v9);
  return sub_1A97A6560;
}

void sub_1A97A6560(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    SFUserDefault.value.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    SFUserDefault.value.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t SFUserDefault.values.getter()
{
  v0 = sub_1A9976C30();
  MEMORY[0x1EEE9AC00](v0);
  *(&v4 - v1) = 1;
  (*(v2 + 104))(&v4 - v1, *MEMORY[0x1E69E8640]);
  return sub_1A9976C90();
}

uint64_t sub_1A97A6720(uint64_t a1, uint64_t *a2)
{
  v43 = *a2;
  v4 = *(v43 + 80);
  v5 = sub_1A9976C60();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  v13 = sub_1A9976C00();
  v14 = *(v13 - 8);
  v39 = *(v14 + 56);
  v40 = v13;
  v38 = v14 + 56;
  v39(v12, 1, 1);
  v15 = *(v6 + 16);
  v44 = a1;
  v37 = v15;
  v15(v9, a1, v5);
  v16 = *(v6 + 80);
  v42 = v7;
  v17 = swift_allocObject();
  v18 = v43;
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  v43 = v4;
  *(v17 + 4) = v4;
  v19 = *(v18 + 88);
  *(v17 + 5) = v19;
  *(v17 + 6) = a2;
  v20 = *(v6 + 32);
  v41 = v9;
  v36 = v20;
  v20(&v17[(v16 + 56) & ~v16], v9, v5);

  v21 = v12;
  v22 = sub_1A97B4F40(0, 0, v12, &unk_1A9991A10, v17);
  v23 = (a2 + *(*a2 + 144));
  v24 = v23[1];
  if (v24)
  {
    v25 = v19;
    v34 = *v23;
    v35 = v21;
    (v39)(v21, 1, 1, v40);
    v26 = v41;
    v37(v41, v44, v5);
    v27 = (v16 + 72) & ~v16;
    v28 = swift_allocObject();
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    v29 = v43;
    *(v28 + 4) = v43;
    *(v28 + 5) = v25;
    *(v28 + 6) = v34;
    *(v28 + 7) = v24;
    *(v28 + 8) = a2;
    v36(&v28[v27], v26, v5);

    v30 = sub_1A97B4F40(0, 0, v35, &unk_1A9991A20, v28);
  }

  else
  {
    v30 = 0;
    v29 = v43;
    v25 = v19;
  }

  v31 = swift_allocObject();
  v31[2] = v29;
  v31[3] = v25;
  v31[4] = v22;
  v31[5] = v30;

  sub_1A9976C20();
}

uint64_t sub_1A97A6AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = *(*a4 + 80);
  v5[5] = v6;
  v7 = sub_1A9976C10();
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = sub_1A99770A0();
  v8 = sub_1A99770A0();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = sub_1A9976550();
  v5[17] = swift_getWitnessTable();
  v9 = sub_1A9976500();
  v5[18] = v9;
  v5[19] = *(v9 - 8);
  v5[20] = swift_task_alloc();
  v10 = sub_1A99764F0();
  v5[21] = v10;
  v5[22] = *(v10 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A97A6DA8, 0, 0);
}

uint64_t sub_1A97A6DA8()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v0[2] = *(v0[3] + *(*v0[3] + 136));
  MEMORY[0x1AC589270](v5, v3);
  sub_1A99764D0();
  (*(v2 + 8))(v1, v4);
  v6 = swift_task_alloc();
  v0[24] = v6;
  WitnessTable = swift_getWitnessTable();
  *v6 = v0;
  v6[1] = sub_1A97A6EE8;
  v8 = v0[21];
  v9 = v0[15];

  return MEMORY[0x1EEE6D8E0](v9, 0, 0, v8, WitnessTable);
}

uint64_t sub_1A97A6EE8()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A97A6FF8, 0, 0);
  }

  return result;
}

uint64_t sub_1A97A6FF8()
{
  v1 = v0[15];
  if ((*(*(v0[12] - 8) + 48))(v1, 1) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[14];
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[8];
    v8 = v0[9];
    v9 = v0[7];
    v15 = v0[6];
    v16 = v0[13];
    v10 = v0[5];
    SFUserDefault.value.getter(v5);
    (*(v8 + 16))(v6, v5, v10);
    sub_1A9976C60();
    sub_1A9976C40();
    (*(v9 + 8))(v7, v15);
    (*(v8 + 8))(v5, v10);
    (*(v4 + 8))(v1, v16);
    v11 = swift_task_alloc();
    v0[24] = v11;
    WitnessTable = swift_getWitnessTable();
    *v11 = v0;
    v11[1] = sub_1A97A6EE8;
    v13 = v0[21];
    v14 = v0[15];

    return MEMORY[0x1EEE6D8E0](v14, 0, 0, v13, WitnessTable);
  }
}

uint64_t sub_1A97A7268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = *(*a6 + 80);
  v7[6] = v8;
  v9 = sub_1A9976C10();
  v7[7] = v9;
  v7[8] = *(v9 - 8);
  v7[9] = swift_task_alloc();
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1220, &qword_1A9991A28);
  v7[13] = v10;
  v7[14] = *(v10 - 8);
  v7[15] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1228, &qword_1A9991A30);
  v7[16] = v11;
  v7[17] = *(v11 - 8);
  v7[18] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1230, &qword_1A9991A38);
  v7[19] = v12;
  v7[20] = *(v12 - 8);
  v7[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A97A74DC, 0, 0);
}

uint64_t sub_1A97A74DC()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  v8 = v0[2];
  v7 = v0[3];
  *v4 = 1;
  (*(v6 + 104))(v4, *MEMORY[0x1E69E8640], v5);
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  sub_1A9976C90();

  sub_1A9976C70();
  (*(v2 + 8))(v1, v3);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_1A97A7648;
  v11 = v0[19];

  return MEMORY[0x1EEE6D9C8](v0 + 23, 0, 0, v11);
}

uint64_t sub_1A97A7648()
{

  return MEMORY[0x1EEE6DFA0](sub_1A97A7744, 0, 0);
}

uint64_t sub_1A97A7744()
{
  if (*(v0 + 188) == 1)
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    v9 = *(v0 + 48);
    SFUserDefault.value.getter(v3);
    (*(v6 + 16))(v4, v3, v9);
    sub_1A9976C60();
    sub_1A9976C40();
    (*(v8 + 8))(v5, v7);
    (*(v6 + 8))(v3, v9);
    v10 = swift_task_alloc();
    *(v0 + 176) = v10;
    *v10 = v0;
    v10[1] = sub_1A97A7648;
    v11 = *(v0 + 152);

    return MEMORY[0x1EEE6D9C8](v0 + 184, 0, 0, v11);
  }
}

uint64_t sub_1A97A793C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A9976CB0();
  if (a3)
  {

    return sub_1A9976CB0();
  }

  return result;
}

char *SFUserDefault.description.getter(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v28 - v4;
  if (SFUserDefault.hasRuntimeOverride.getter())
  {
    v6 = sub_1A97AE618(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_1A97AE618((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = 0x4F656D69746E7572;
    *(v9 + 5) = 0xEF65646972726576;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  isUniquelyReferenced_nonNull_native = SFUserDefault.hasValueOnDisk.getter();
  if (isUniquelyReferenced_nonNull_native)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1A97AE618(0, *(v6 + 2) + 1, 1, v6);
      v6 = isUniquelyReferenced_nonNull_native;
    }

    v15 = *(v6 + 2);
    v14 = *(v6 + 3);
    if (v15 >= v14 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1A97AE618((v14 > 1), v15 + 1, 1, v6);
      v6 = isUniquelyReferenced_nonNull_native;
    }

    *(v6 + 2) = v15 + 1;
    v16 = &v6[16 * v15];
    *(v16 + 4) = 0x446E4F65756C6176;
    *(v16 + 5) = 0xEB000000006B7369;
  }

  if (SFUserDefault.hasFeatureFlag.getter(isUniquelyReferenced_nonNull_native, v11, v12, v13))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1A97AE618(0, *(v6 + 2) + 1, 1, v6);
    }

    v18 = *(v6 + 2);
    v17 = *(v6 + 3);
    if (v18 >= v17 >> 1)
    {
      v6 = sub_1A97AE618((v17 > 1), v18 + 1, 1, v6);
    }

    *(v6 + 2) = v18 + 1;
    v19 = &v6[16 * v18];
    *(v19 + 4) = 0x4665727574616566;
    *(v19 + 5) = 0xEB0000000067616CLL;
  }

  else if (!*(v6 + 2))
  {

    v28 = 0;
    v29 = 0xE000000000000000;
    v27 = sub_1A99772C0();
    MEMORY[0x1AC5895B0](v27);

    v24 = 8250;
    v25 = 0xE200000000000000;
    goto LABEL_20;
  }

  v28 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  sub_1A97AF974(&qword_1EB3AB6D0, &unk_1EB3B2AC0, &qword_1A9990580, MEMORY[0x1E69E6310]);
  v20 = sub_1A9976760();
  v22 = v21;

  v28 = 0;
  v29 = 0xE000000000000000;
  v23 = sub_1A99772C0();
  MEMORY[0x1AC5895B0](v23);

  MEMORY[0x1AC5895B0](15392, 0xE200000000000000);
  MEMORY[0x1AC5895B0](v20, v22);

  v24 = 2112062;
  v25 = 0xE300000000000000;
LABEL_20:
  MEMORY[0x1AC5895B0](v24, v25);
  SFUserDefault.value.getter(v5);
  sub_1A99777B0();
  (*(v3 + 8))(v5, v2);
  return v28;
}

uint64_t SFUserDefault.userDefaultDescription.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v20 - v6;
  v8 = v4 == MEMORY[0x1E69E6370];
  v10 = v2[5];
  v9 = v2[6];
  v20 = 0;
  v21 = 0xE000000000000000;

  SFUserDefault.value.getter(v7);
  sub_1A99777B0();
  (*(v5 + 8))(v7, v4);
  v11 = v20;
  v12 = v21;
  LOBYTE(v4) = SFUserDefault.hasRuntimeOverride.getter();
  v13 = SFUserDefault.hasValueOnDisk.getter();
  LOBYTE(v7) = v13;
  v17 = SFUserDefault.hasFeatureFlag.getter(v13, v14, v15, v16);
  v18 = *(v2 + *(*v2 + 152));
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v4 & 1;
  *(a2 + 33) = v7 & 1;
  *(a2 + 34) = v17 & 1;
  *(a2 + 35) = 0;
  *(a2 + 36) = v8;
  *(a2 + 40) = v18;
}

id *SFUserDefault.deinit()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 16));

  return v0;
}

uint64_t SFUserDefault.__deallocating_deinit()
{
  SFUserDefault.deinit();

  return swift_deallocClassInstance();
}

uint64_t SFAnyUserDefault.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1A97A805C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[6];
  *a2 = a1[5];
  a2[1] = v2;
  a2[3] = sub_1A97B22CC;
  a2[4] = a1;
  a2[7] = j___s7Sharing13SFUserDefaultC04userC11DescriptionAA0bcE0Vvg;
  a2[8] = a1;
  a2[5] = sub_1A97B22EC;
  a2[6] = a1;
  a2[2] = *(a1 + *(*a1 + 152));
  swift_retain_n();
}

uint64_t sub_1A97A80FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v7 = *a3;
  v8 = *(*a3 + 80);
  v9 = sub_1A99770A0();
  v34 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v28 = *(v8 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v27 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v29 = a3;
  v17 = *(v7 + 88);
  v18 = *(v17 + 16);

  v18(a1, a2, v8, v17);
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000042, 0x80000001A99E29D0);
  MEMORY[0x1AC5895B0](a1, a2);
  MEMORY[0x1AC5895B0](0x203A65756C617620, 0xE800000000000000);
  v19 = sub_1A9977B00();
  MEMORY[0x1AC5895B0](v19);

  MEMORY[0x1AC5895B0](125, 0xE100000000000000);
  v20 = v31;
  Optional.tryUnwrap(_:file:line:)(v32, v33, 0xD00000000000004CLL, 0x80000001A99E2A20, 235, v9, v16);
  (*(v34 + 8))(v12, v9);
  if (v20)
  {
  }

  v22 = v27;
  v23 = v28;
  (*(v28 + 16))(v27, v16, v8);
  SFUserDefault.value.setter(v22);
  v24 = v30;
  *(v30 + 24) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
  return (*(v23 + 32))(boxed_opaque_existential_0, v16, v8);
}

uint64_t sub_1A97A84A4()
{
  type metadata accessor for SFUserDefaultsRegistry();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1180, &qword_1A99919C8);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1188, &qword_1A99919D0);
  swift_allocObject();
  result = sub_1A9977AE0();
  qword_1EB3EAF78 = result;
  return result;
}

uint64_t sub_1A97A8548(uint64_t a1)
{

  sub_1A97A805C(v2, v6);
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3 + 4);
  sub_1A97B2280(v4);
  os_unfair_lock_unlock(v3 + 4);
  return sub_1A97B229C(v6);
}

uint64_t sub_1A97A85B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1A97AE724(0, *(v5 + 2) + 1, 1, v5);
    *(a2 + 16) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1A97AE724((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[72 * v8];
  *(v9 + 2) = *a3;
  v10 = *(a3 + 16);
  v11 = *(a3 + 32);
  v12 = *(a3 + 48);
  *(v9 + 12) = *(a3 + 64);
  *(v9 + 4) = v11;
  *(v9 + 5) = v12;
  *(v9 + 3) = v10;
  *(a2 + 16) = v5;
  swift_endAccess();
  return sub_1A97B2248(a3, v14);
}

uint64_t sub_1A97A86B4@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 16);
}

uint64_t SFUserDefaultsRegistry.deinit()
{

  return v0;
}

uint64_t SFUserDefaultsRegistry.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SFUserDefaultDescription.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SFUserDefaultDescription.resolvedValueDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SFUserDefaultDescription.description.getter()
{
  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v0 + 33);
  v5 = *(v0 + 34);
  v6 = *(v0 + 35);
  if (*(v0 + 32) != 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (!*(v0 + 33))
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v7 = sub_1A97AE618(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1A97AE618((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[16 * v9];
  *(v10 + 4) = 0x4F656D69746E7572;
  *(v10 + 5) = 0xEF65646972726576;
  if (v4)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1A97AE618(0, *(v7 + 2) + 1, 1, v7);
    }

    v12 = *(v7 + 2);
    v11 = *(v7 + 3);
    if (v12 >= v11 >> 1)
    {
      v7 = sub_1A97AE618((v11 > 1), v12 + 1, 1, v7);
    }

    *(v7 + 2) = v12 + 1;
    v13 = &v7[16 * v12];
    *(v13 + 4) = 0x446E4F65756C6176;
    *(v13 + 5) = 0xEB000000006B7369;
  }

LABEL_12:
  if (v5)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1A97AE618(0, *(v7 + 2) + 1, 1, v7);
    }

    v18 = *(v7 + 2);
    v17 = *(v7 + 3);
    if (v18 >= v17 >> 1)
    {
      v7 = sub_1A97AE618((v17 > 1), v18 + 1, 1, v7);
    }

    *(v7 + 2) = v18 + 1;
    v19 = &v7[16 * v18];
    *(v19 + 4) = 0x4665727574616566;
    *(v19 + 5) = 0xEB0000000067616CLL;
    if (v6)
    {
      goto LABEL_14;
    }
  }

  else if (v6)
  {
LABEL_14:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1A97AE618(0, *(v7 + 2) + 1, 1, v7);
    }

    v15 = *(v7 + 2);
    v14 = *(v7 + 3);
    if (v15 >= v14 >> 1)
    {
      v7 = sub_1A97AE618((v14 > 1), v15 + 1, 1, v7);
    }

    *(v7 + 2) = v15 + 1;
    v16 = &v7[16 * v15];
    *(v16 + 4) = 0x656B636172746E75;
    *(v16 + 5) = 0xE900000000000064;
    goto LABEL_25;
  }

  if (!*(v7 + 2))
  {

    v26 = v1;

    v23 = 8250;
    v24 = 0xE200000000000000;
    goto LABEL_26;
  }

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  sub_1A97AF974(&qword_1EB3AB6D0, &unk_1EB3B2AC0, &qword_1A9990580, MEMORY[0x1E69E6310]);
  v20 = sub_1A9976760();
  v22 = v21;

  v26 = v1;

  MEMORY[0x1AC5895B0](15392, 0xE200000000000000);
  MEMORY[0x1AC5895B0](v20, v22);

  v23 = 2112062;
  v24 = 0xE300000000000000;
LABEL_26:
  MEMORY[0x1AC5895B0](v23, v24);
  MEMORY[0x1AC5895B0](v3, v2);
  return v26;
}

uint64_t SFUserDefaultDescription.oneLineValueDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v7[0] = 10;
  v7[1] = 0xE100000000000000;
  v6[2] = v7;

  v7[0] = sub_1A97ADE50(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A97AF91C, v6, v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0BA8, &qword_1A9990588);
  sub_1A97AF974(&qword_1EB3B0BB0, &qword_1EB3B0BA8, &qword_1A9990588, MEMORY[0x1E69E6328]);
  sub_1A97AF9BC();
  v4 = sub_1A9976A30();

  return v4;
}

unint64_t sub_1A97A8C94()
{
  v1 = *v0;
  v2 = 7955819;
  v3 = 0x6C6F6F427369;
  if (v1 != 6)
  {
    v3 = 0x65737365636F7270;
  }

  v4 = 0x7574616546736168;
  if (v1 != 4)
  {
    v4 = 0x656B636172746E75;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x65756C6156736168;
  if (v1 == 2)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A97A8DB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A97B075C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A97A8DE4(uint64_t a1)
{
  v2 = sub_1A97AFA54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97A8E20(uint64_t a1)
{
  v2 = sub_1A97AFA54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFUserDefaultDescription.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0BC0, &qword_1A9990590);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - v5;
  v7 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = v7;
  LODWORD(v7) = *(v1 + 32);
  v15[6] = *(v1 + 33);
  v15[7] = v7;
  LODWORD(v7) = *(v1 + 34);
  v15[4] = *(v1 + 35);
  v15[5] = v7;
  v15[3] = *(v1 + 36);
  v8 = *(v1 + 40);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_1A97AFA54();
  sub_1A9977AA0();
  LOBYTE(v20) = 0;
  v13 = v18;
  sub_1A9977690();
  if (!v13)
  {
    LOBYTE(v20) = 1;
    sub_1A9977690();
    LOBYTE(v20) = 2;
    sub_1A99776A0();
    LOBYTE(v20) = 3;
    sub_1A99776A0();
    LOBYTE(v20) = 4;
    sub_1A99776A0();
    LOBYTE(v20) = 5;
    sub_1A99776A0();
    LOBYTE(v20) = 6;
    sub_1A99776A0();
    v20 = v8;
    v19 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
    sub_1A97AFAF4(&qword_1EB3AB6F0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1A99776E0();
  }

  return (*(v4 + 8))(v6, v12);
}

uint64_t SFUserDefaultDescription.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0BD8, &qword_1A9990598);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97AFA54();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_1A99775A0();
  v11 = v10;
  v29 = a2;
  v12 = v9;
  LOBYTE(v32[0]) = 1;
  *&v28 = sub_1A99775A0();
  *(&v28 + 1) = v13;
  LOBYTE(v32[0]) = 2;
  v27 = sub_1A99775B0();
  LOBYTE(v32[0]) = 3;
  v14 = sub_1A99775B0();
  LOBYTE(v32[0]) = 4;
  LODWORD(v26) = sub_1A99775B0();
  LOBYTE(v32[0]) = 5;
  v25 = sub_1A99775B0();
  LOBYTE(v32[0]) = 6;
  v24 = sub_1A99775B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  v39[0] = 7;
  sub_1A97AFAF4(&unk_1EB3AB6C0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1A99775F0();
  v27 &= 1u;
  LOBYTE(v14) = v14 & 1;
  v23 = v26 & 1;
  v15 = v25 & 1;
  v25 = v24 & 1;
  (*(v6 + 8))(v8, v5);
  v26 = v40;
  *&v30[0] = v12;
  *(&v30[0] + 1) = v11;
  v16 = *(&v28 + 1);
  v30[1] = v28;
  LOBYTE(v31) = v27;
  BYTE1(v31) = v14;
  v17 = v23;
  BYTE2(v31) = v23;
  BYTE3(v31) = v15;
  v18 = v25;
  BYTE4(v31) = v25;
  *(&v31 + 1) = v40;
  v19 = v28;
  v20 = v29;
  *v29 = v30[0];
  v20[1] = v19;
  v20[2] = v31;
  sub_1A97AFB60(v30, v32);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v32[0] = v12;
  v32[1] = v11;
  v32[2] = v28;
  v32[3] = v16;
  v33 = v27;
  v34 = v14;
  v35 = v17;
  v36 = v15;
  v37 = v18;
  v38 = v26;
  return sub_1A97AFB98(v32);
}

uint64_t sub_1A97A95C0(uint64_t a1)
{
  v2 = sub_1A97AFF14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97A95FC(uint64_t a1)
{
  v2 = sub_1A97AFF14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s7Sharing18OSLogDateFormatterV5StyleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t sub_1A97A9680(uint64_t a1)
{
  v2 = *v1;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v2);
  return sub_1A99779B0();
}

uint64_t sub_1A97A96C4()
{
  v1 = *v0;
  v2 = 1819242338;
  v3 = 1684632949;
  if (v1 != 6)
  {
    v3 = 1701736302;
  }

  v4 = 0x676E69727473;
  if (v1 != 4)
  {
    v4 = 1702125924;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x3233746E6975;
  if (v1 != 2)
  {
    v5 = 0x656C62756F64;
  }

  if (*v0)
  {
    v2 = 7630441;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A97A978C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A97B0A18(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A97A97B4(uint64_t a1)
{
  v2 = sub_1A97AFBC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97A97F0(uint64_t a1)
{
  v2 = sub_1A97AFBC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97A982C(uint64_t a1)
{
  v2 = sub_1A97AFD28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97A9868(uint64_t a1)
{
  v2 = sub_1A97AFD28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97A98A4(uint64_t a1)
{
  v2 = sub_1A97AFE18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97A98E0(uint64_t a1)
{
  v2 = sub_1A97AFE18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97A991C(uint64_t a1)
{
  v2 = sub_1A97AFEC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97A9958(uint64_t a1)
{
  v2 = sub_1A97AFEC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97A99A0(uint64_t a1)
{
  v2 = sub_1A97AFC80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97A99DC(uint64_t a1)
{
  v2 = sub_1A97AFC80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97A9A18(uint64_t a1)
{
  v2 = sub_1A97AFDC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97A9A54(uint64_t a1)
{
  v2 = sub_1A97AFDC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97A9A90(uint64_t a1)
{
  v2 = sub_1A97AFE6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97A9ACC(uint64_t a1)
{
  v2 = sub_1A97AFE6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97A9B08()
{
  sub_1A9977980();
  MEMORY[0x1AC58A630](0);
  return sub_1A99779B0();
}

uint64_t sub_1A97A9B4C(uint64_t a1)
{
  sub_1A9977980();
  MEMORY[0x1AC58A630](0);
  return sub_1A99779B0();
}

uint64_t sub_1A97A9B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A97A9C0C(uint64_t a1)
{
  v2 = sub_1A97AFCD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97A9C48(uint64_t a1)
{
  v2 = sub_1A97AFCD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFUserDefaultsRepresentation.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0BE8, &qword_1A99905A0);
  v67 = *(v2 - 8);
  v68 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0BF0, &qword_1A99905A8);
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v46 - v5;
  v6 = sub_1A99762C0();
  v70 = *(v6 - 8);
  v71 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0BF8, &qword_1A99905B0);
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v46 - v9;
  v10 = sub_1A9976230();
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0C00, &qword_1A99905B8);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v46 - v12;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0C08, &qword_1A99905C0);
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v46 - v13;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0C10, &qword_1A99905C8);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v46 - v14;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0C18, &qword_1A99905D0);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v16 = &v46 - v15;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0C20, &qword_1A99905D8);
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v18 = &v46 - v17;
  v19 = type metadata accessor for SFUserDefaultsRepresentation(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0C28, &qword_1A99905E0);
  v23 = *(v22 - 8);
  v75 = v22;
  v76 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v46 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97AFBC8();
  v26 = v25;
  sub_1A9977AA0();
  sub_1A97AFC1C(v74, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v84 = 7;
        sub_1A97AFC80();
        v44 = v65;
        v45 = v75;
        sub_1A9977640();
        (*(v67 + 8))(v44, v68);
        return (*(v76 + 8))(v25, v45);
      }

      v37 = v70;
      v36 = v71;
      v38 = v66;
      (*(v70 + 32))(v66, v21, v71);
      v83 = 6;
      sub_1A97AFCD4();
      v39 = v69;
      v31 = v75;
      sub_1A9977640();
      sub_1A97AFD7C(&unk_1EB3ACFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
      v40 = v73;
      sub_1A99776E0();
      v41 = v72;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v81 = 4;
        sub_1A97AFDC4();
        v30 = v56;
        v31 = v75;
        sub_1A9977640();
        v32 = v58;
        sub_1A9977690();

        (*(v57 + 8))(v30, v32);
        return (*(v76 + 8))(v26, v31);
      }

      v37 = v61;
      v36 = v62;
      v38 = v59;
      (*(v61 + 32))(v59, v21, v62);
      v82 = 5;
      sub_1A97AFD28();
      v39 = v60;
      v31 = v75;
      sub_1A9977640();
      sub_1A97AFD7C(&qword_1EB3B0C58, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
      v40 = v64;
      sub_1A99776E0();
      v41 = v63;
    }

    (*(v41 + 8))(v39, v40);
    (*(v37 + 8))(v38, v36);
    return (*(v76 + 8))(v26, v31);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v79 = 2;
      sub_1A97AFE6C();
      v33 = v50;
      v28 = v75;
      sub_1A9977640();
      v34 = v52;
      sub_1A9977700();
      v35 = &v85;
    }

    else
    {
      v80 = 3;
      sub_1A97AFE18();
      v33 = v53;
      v28 = v75;
      sub_1A9977640();
      v34 = v55;
      sub_1A99776B0();
      v35 = &v86;
    }

    (*(*(v35 - 32) + 8))(v33, v34);
  }

  else if (EnumCaseMultiPayload)
  {
    v78 = 1;
    sub_1A97AFEC0();
    v28 = v75;
    sub_1A9977640();
    v42 = v49;
    sub_1A99776C0();
    (*(v48 + 8))(v16, v42);
  }

  else
  {
    v77 = 0;
    sub_1A97AFF14();
    v28 = v75;
    sub_1A9977640();
    v29 = v47;
    sub_1A99776A0();
    (*(v46 + 8))(v18, v29);
  }

  return (*(v76 + 8))(v26, v28);
}

uint64_t SFUserDefaultsRepresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0C88, &qword_1A99905E8);
  v107 = *(v3 - 8);
  v108 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v117 = &v89 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0C90, &qword_1A99905F0);
  v6 = *(v5 - 8);
  v109 = v5;
  v110 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v123 = &v89 - v7;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0C98, &qword_1A99905F8);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v116 = &v89 - v8;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0CA0, &qword_1A9990600);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v115 = &v89 - v9;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0CA8, &qword_1A9990608);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v114 = &v89 - v10;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0CB0, &qword_1A9990610);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v122 = &v89 - v11;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0CB8, &qword_1A9990618);
  v98 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v121 = &v89 - v12;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0CC0, &qword_1A9990620);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v113 = &v89 - v13;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0CC8, &qword_1A9990628);
  v124 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v15 = &v89 - v14;
  v119 = type metadata accessor for SFUserDefaultsRepresentation(0);
  v16 = MEMORY[0x1EEE9AC00](v119);
  v112 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v111 = &v89 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v94 = (&v89 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v89 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v89 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v89 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v89 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v89 - v34;
  v36 = a1[3];
  v126 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_1A97AFBC8();
  v37 = v125;
  sub_1A9977A70();
  if (!v37)
  {
    v89 = v33;
    v90 = v30;
    v91 = v27;
    v92 = v24;
    v39 = v121;
    v38 = v122;
    v40 = v123;
    v93 = v35;
    v125 = 0;
    v41 = v120;
    v42 = sub_1A9977620();
    if (*(v42 + 16) != 1 || (v43 = *(v42 + 32), v43 == 8))
    {
      v46 = sub_1A9977300();
      swift_allocError();
      v48 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
      *v48 = v119;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v46 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v46);
      swift_willThrow();
      (*(v124 + 8))(v15, v41);
      goto LABEL_10;
    }

    if (*(v42 + 32) <= 3u)
    {
      if (*(v42 + 32) <= 1u)
      {
        if (!*(v42 + 32))
        {
          v127 = 0;
          sub_1A97AFF14();
          v44 = v113;
          v45 = v125;
          sub_1A9977530();
          if (v45)
          {
LABEL_8:
            (*(v124 + 8))(v15, v41);
LABEL_10:
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_0Tm(v126);
          }

          v73 = v96;
          v74 = sub_1A99775B0();
          (*(v95 + 8))(v44, v73);
          (*(v124 + 8))(v15, v41);
          swift_unknownObjectRelease();
          v75 = v74 & 1;
          v84 = v89;
          *v89 = v75;
          goto LABEL_34;
        }

        v128 = 1;
        sub_1A97AFEC0();
        v66 = v125;
        sub_1A9977530();
        if (v66)
        {
          goto LABEL_8;
        }

        v76 = v97;
        v77 = sub_1A99775D0();
        v78 = v124;
        v88 = v77;
        (*(v98 + 8))(v39, v76);
        (*(v78 + 8))(v15, v41);
        swift_unknownObjectRelease();
        v81 = v90;
        *v90 = v88;
LABEL_35:
        swift_storeEnumTagMultiPayload();
        v85 = v81;
        goto LABEL_36;
      }

      v52 = v124;
      if (v43 == 2)
      {
        v129 = 2;
        sub_1A97AFE6C();
        v50 = v15;
        v58 = v125;
        sub_1A9977530();
        if (!v58)
        {
          v59 = v100;
          v60 = sub_1A9977610();
          v61 = v38;
          v83 = v60;
          (*(v99 + 8))(v61, v59);
          (*(v52 + 8))(v15, v41);
          swift_unknownObjectRelease();
          v81 = v91;
          *v91 = v83;
          goto LABEL_35;
        }
      }

      else
      {
        v130 = 3;
        sub_1A97AFE18();
        v69 = v114;
        v50 = v15;
        v70 = v125;
        sub_1A9977530();
        if (!v70)
        {
          v71 = v102;
          sub_1A99775C0();
          v87 = v86;
          (*(v101 + 8))(v69, v71);
          (*(v52 + 8))(v15, v41);
          swift_unknownObjectRelease();
          v81 = v92;
          *v92 = v87;
          goto LABEL_35;
        }
      }

      goto LABEL_28;
    }

    v50 = v15;
    if (*(v42 + 32) <= 5u)
    {
      v52 = v124;
      v51 = v125;
      if (v43 == 4)
      {
        v131 = 4;
        sub_1A97AFDC4();
        v53 = v115;
        sub_1A9977530();
        if (!v51)
        {
          v54 = v53;
          v55 = v104;
          v56 = sub_1A99775A0();
          v125 = v57;
          v80 = v56;
          (*(v103 + 8))(v54, v55);
          (*(v52 + 8))(v15, v41);
          swift_unknownObjectRelease();
          v81 = v94;
          v82 = v125;
          *v94 = v80;
          v81[1] = v82;
          goto LABEL_35;
        }

LABEL_28:
        (*(v52 + 8))(v50, v41);
        goto LABEL_10;
      }

      v132 = 5;
      sub_1A97AFD28();
      v67 = v116;
      sub_1A9977530();
      if (v51)
      {
        goto LABEL_28;
      }

      sub_1A9976230();
      sub_1A97AFD7C(&qword_1EB3B0CE0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
      v68 = v106;
      sub_1A99775F0();
      (*(v105 + 8))(v67, v68);
      (*(v52 + 8))(v15, v41);
      swift_unknownObjectRelease();
      v84 = v111;
LABEL_34:
      swift_storeEnumTagMultiPayload();
      v85 = v84;
LABEL_36:
      v79 = v93;
      sub_1A97AFF68(v85, v93);
      v62 = v118;
      goto LABEL_37;
    }

    v62 = v118;
    v64 = v124;
    v63 = v125;
    if (v43 == 6)
    {
      v133 = 6;
      sub_1A97AFCD4();
      sub_1A9977530();
      if (!v63)
      {
        sub_1A99762C0();
        sub_1A97AFD7C(&qword_1EB3AD060, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
        v65 = v109;
        sub_1A99775F0();
        (*(v110 + 8))(v40, v65);
        (*(v64 + 8))(v15, v41);
        swift_unknownObjectRelease();
        v84 = v112;
        goto LABEL_34;
      }
    }

    else
    {
      v134 = 7;
      sub_1A97AFC80();
      v72 = v117;
      sub_1A9977530();
      if (!v63)
      {
        (*(v107 + 8))(v72, v108);
        (*(v64 + 8))(v15, v41);
        swift_unknownObjectRelease();
        v79 = v93;
        swift_storeEnumTagMultiPayload();
LABEL_37:
        sub_1A97AFF68(v79, v62);
        return __swift_destroy_boxed_opaque_existential_0Tm(v126);
      }
    }

    (*(v64 + 8))(v15, v41);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v126);
}

uint64_t sub_1A97AB7CC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 22;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1A97AB800()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1A97AB82C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A97AB860()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A97AB894()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 15;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A97AB8C8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 14;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A97AB8FC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A97AB930()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A97AB964()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A97AB998()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A97AB9CC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Optional<A>.userDefaultsRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v12);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    type metadata accessor for SFUserDefaultsRepresentation(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v5 + 32))(v8, v10, v4);
    (*(a2 + 8))(v4, a2);
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t Optional<A>.init(userDefaultsString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a5;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A99770A0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  (*(a4 + 16))(a1, a2, a3, a4);
  if ((*(v9 + 48))(v16, 1, a3) == 1)
  {
    (*(v13 + 8))(v16, v12);
    v19 = 1;
  }

  else
  {
    v20 = *(v9 + 32);
    v20(v11, v16, a3);
    v20(v18, v11, a3);
    v19 = 0;
  }

  (*(v9 + 56))(v18, v19, 1, a3);
  v21 = v24;
  (*(v13 + 32))(v24, v18, v12);
  return (*(v13 + 56))(v21, 0, 1, v12);
}

uint64_t String.userDefaultsRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for SFUserDefaultsRepresentation(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A97ABEE0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for SFUserDefaultsRepresentation(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A97ABF34@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Bool.userDefaultsRepresentation.getter@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for SFUserDefaultsRepresentation(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A97ABF88@<X0>(_BYTE *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for SFUserDefaultsRepresentation(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A97ABFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = _sSb7SharingE18userDefaultsStringSbSgSS_tcfC_0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t Int.userDefaultsRepresentation.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for SFUserDefaultsRepresentation(0);

  return swift_storeEnumTagMultiPayload();
}

Swift::Int_optional __swiftcall Int.init(userDefaultsString:)(Swift::String userDefaultsString)
{
  v1 = sub_1A97B03FC(userDefaultsString._countAndFlagsBits, userDefaultsString._object);
  v3 = v2 & 1;
  result.value = v1;
  result.is_nil = v3;
  return result;
}

uint64_t sub_1A97AC060@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for SFUserDefaultsRepresentation(0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1A97AC0AC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1A97B03FC(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t UInt32.userDefaultsRepresentation.getter@<X0>(int a1@<W0>, _DWORD *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for SFUserDefaultsRepresentation(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A97AC150@<X0>(_DWORD *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for SFUserDefaultsRepresentation(0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1A97AC19C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1A97B0120(a1, a2);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t Double.userDefaultsRepresentation.getter@<X0>(double *a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  type metadata accessor for SFUserDefaultsRepresentation(0);

  return swift_storeEnumTagMultiPayload();
}

Swift::Double_optional __swiftcall Double.init(userDefaultsString:)(Swift::String userDefaultsString)
{
  v4 = 0;
  v1 = sub_1A97AD5A4(userDefaultsString._countAndFlagsBits, userDefaultsString._object, &v4);

  v3 = v1 && v4;
  result.value = v2;
  result.is_nil = v3;
  return result;
}

uint64_t sub_1A97AC274@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for SFUserDefaultsRepresentation(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A97AC2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v4 = sub_1A97AD5A4(a1, a2, &v7);

  v6 = v7;
  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  *(a3 + 8) = !v4;
  return result;
}

uint64_t Date.init(userDefaultsString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A99760E0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1A9976230();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[2] = a1;
  v13[3] = a2;

  MEMORY[0x1AC588B40](v11);
  sub_1A97AFD7C(&qword_1EB3B0CE8, MEMORY[0x1E69693A0], MEMORY[0x1E6969398]);
  sub_1A9976240();

  (*(v8 + 32))(a3, v10, v7);
  return (*(v8 + 56))(a3, 0, 1, v7);
}

uint64_t sub_1A97AC6E4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 16))(a3, v3, v5);
  type metadata accessor for SFUserDefaultsRepresentation(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t UUID.init(userDefaultsString:)@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1A9976250();

  v7 = sub_1A99762C0();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1A97B06FC(v6, &unk_1EB3B29B0, &qword_1A9990640);
    v9 = 1;
  }

  else
  {
    (*(v8 + 32))(a3, v6, v7);
    v9 = 0;
  }

  return (*(v8 + 56))(a3, v9, 1, v7);
}

uint64_t sub_1A97AC8D4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  (*(*(a1 - 8) + 16))(a3, v3, a1);
  type metadata accessor for SFUserDefaultsRepresentation(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A97AC950@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  sub_1A9976250();

  v9 = *(a3 - 8);
  if ((*(v9 + 48))(v8, 1, a3) == 1)
  {
    sub_1A97B06FC(v8, &unk_1EB3B29B0, &qword_1A9990640);
    v10 = 1;
  }

  else
  {
    (*(v9 + 32))(a4, v8, a3);
    v10 = 0;
  }

  return (*(v9 + 56))(a4, v10, 1, a3);
}

uint64_t RawRepresentable<>.userDefaultsRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v9 - v6;
  sub_1A9976A40();
  (*(a3 + 8))(AssociatedTypeWitness, a3);
  return (*(v5 + 8))(v7, AssociatedTypeWitness);
}

uint64_t RawRepresentable<>.init(userDefaultsString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a2;
  v37 = a6;
  v10 = sub_1A99770A0();
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v31 - v11;
  v34 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1A99770A0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v31 - v22;
  (*(a5 + 16))(a1, v36, AssociatedTypeWitness, a5);
  if ((*(v18 + 48))(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v14 + 8))(v17, v13);
    v24 = *(a3 - 8);
  }

  else
  {
    (*(v18 + 32))(v23, v17, AssociatedTypeWitness);
    (*(v18 + 16))(v21, v23, AssociatedTypeWitness);
    v25 = v35;
    sub_1A9976A50();
    (*(v18 + 8))(v23, AssociatedTypeWitness);
    v24 = *(a3 - 8);
    v26 = v24;
    if (!(*(v24 + 48))(v25, 1, a3))
    {
      v30 = v37;
      (*(v24 + 32))(v37, v25, a3);
      v28 = v30;
      v27 = 0;
      return (*(v26 + 56))(v28, v27, 1, a3);
    }

    (*(v32 + 8))(v25, v33);
  }

  v26 = v24;
  v27 = 1;
  v28 = v37;
  return (*(v26 + 56))(v28, v27, 1, a3);
}

char *SFUserDefaultObserver.__allocating_init(key:storage:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_defaultChangedHandler];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v11[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_key];
  *v13 = a1;
  *(v13 + 1) = a2;
  *&v11[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_storage] = a3;
  *v12 = a4;
  *(v12 + 1) = a5;
  v21.receiver = v11;
  v21.super_class = v5;

  v14 = a3;
  v15 = objc_msgSendSuper2(&v21, sel_init);
  v16 = v15;
  if (a3)
  {
    v17 = *&v15[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_storage];
    if (v17)
    {
      v18 = v15;
      v19 = sub_1A99767E0();
      [v17 addObserver:v18 forKeyPath:v19 options:0 context:{0, v21.receiver, v21.super_class}];
    }
  }

  return v16;
}

char *SFUserDefaultObserver.init(key:storage:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_defaultChangedHandler];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v5[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_key];
  *v13 = a1;
  *(v13 + 1) = a2;
  *&v5[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_storage] = a3;
  *v12 = a4;
  *(v12 + 1) = a5;
  v21.receiver = v5;
  v21.super_class = ObjectType;

  v14 = a3;
  v15 = objc_msgSendSuper2(&v21, sel_init);
  v16 = v15;
  if (a3)
  {
    v17 = *&v15[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_storage];
    if (v17)
    {
      v18 = v15;
      v19 = sub_1A99767E0();
      [v17 addObserver:v18 forKeyPath:v19 options:0 context:{0, v21.receiver, v21.super_class}];
    }
  }

  return v16;
}

id SFUserDefaultObserver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_storage];
  if (v2)
  {
    v3 = v2;

    v4 = sub_1A99767E0();

    [v3 removeObserver:v0 forKeyPath:v4 context:0];
  }

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

id SFUserDefaultObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

BOOL sub_1A97AD5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1A99772A0();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_1A97AD69C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = 0xE700000000000000;
  v5 = 0x6E776F6E6B6E75;
  v6 = 0xEB00000000746E65;
  v7 = 0x6D79615072656570;
  v8 = 0xE400000000000000;
  if (v3 != 5)
  {
    v7 = 1230324804;
    v6 = 0xE400000000000000;
  }

  v9 = 1952802157;
  if (v3 != 3)
  {
    v9 = 0x6572616873;
    v8 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0x636972656E6567;
  if (v3 != 1)
  {
    v10 = 0x706F7244726961;
  }

  if (*v1)
  {
    v5 = v10;
    v4 = 0xE700000000000000;
  }

  if (*v1 <= 2u)
  {
    v11 = v5;
  }

  else
  {
    v11 = v7;
  }

  if (*v1 > 2u)
  {
    v4 = v6;
  }

  *a1 = v11;
  a1[1] = v4;
  type metadata accessor for SFUserDefaultsRepresentation(0);

  return swift_storeEnumTagMultiPayload();
}

void *sub_1A97AD7AC@<X0>(_BYTE *a1@<X8>)
{
  result = SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.init(rawValue:)(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1A97AD7EC(uint64_t a1, id *a2)
{
  result = sub_1A9976800();
  *a2 = 0;
  return result;
}

uint64_t sub_1A97AD864(uint64_t a1, id *a2)
{
  v3 = sub_1A9976810();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1A97AD8E4@<X0>(uint64_t *a2@<X8>)
{
  sub_1A9976820();
  v3 = sub_1A99767E0();

  *a2 = v3;
  return result;
}

uint64_t sub_1A97AD928(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1A9976320();
}

uint64_t sub_1A97AD9AC(uint64_t a1)
{
  v2 = sub_1A97AFD7C(&qword_1EB3B1160, type metadata accessor for NSKeyValueChangeKey, &unk_1A9991BEC);
  v3 = sub_1A97AFD7C(&unk_1EB3B1280, type metadata accessor for NSKeyValueChangeKey, "){PE");
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A97ADA68@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1A99767E0();

  *a2 = v3;
  return result;
}

uint64_t sub_1A97ADAB0(uint64_t a1)
{
  v2 = sub_1A97AFD7C(&qword_1EB3B10E0, type metadata accessor for NSExceptionName, &unk_1A999150C);
  v3 = sub_1A97AFD7C(&qword_1EB3B10E8, type metadata accessor for NSExceptionName, &unk_1A99914AC);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A97ADC10(uint64_t a1, uint64_t a2)
{
  sub_1A9977980();
  swift_getWitnessTable();
  sub_1A9976330();
  return sub_1A99779B0();
}

uint64_t sub_1A97ADC78()
{
  v0 = sub_1A9976820();
  v1 = MEMORY[0x1AC589630](v0);

  return v1;
}

uint64_t sub_1A97ADCB4(uint64_t a1)
{
  sub_1A9976820();
  sub_1A99768D0();
}

uint64_t sub_1A97ADD08(uint64_t a1)
{
  sub_1A9976820();
  sub_1A9977980();
  sub_1A99768D0();
  v1 = sub_1A99779B0();

  return v1;
}

uint64_t sub_1A97ADD7C(void *a1, uint64_t *a2)
{
  v2 = sub_1A9976820();
  v4 = v3;
  if (v2 == sub_1A9976820() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1A99777E0();
  }

  return v7 & 1;
}

uint64_t sub_1A97ADE04(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_1A97ADE50@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1A99769D0();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1A97AE84C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1A97AE84C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1A99769B0();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1A99768F0();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1A99768F0();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1A99769D0();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1A97AE84C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1A99769D0();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1A97AE84C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1A97AE84C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1A99768F0();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_1A97AE210@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a9@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v17 = v10;
  v13 = a6;
  v18 = a5 >> 14;
  v14 = a6 >> 14;
  if (a1 && v18 != v14)
  {
    v9 = a4;
    v16 = MEMORY[0x1E69E7CC0];
    v11 = a5;
    do
    {
      v19 = v11 >> 14;
      if (v11 >> 14 == v14)
      {
        break;
      }

      v41 = a1;
      v48 = v17;
      v43 = v16;
      v16 = a7;
      while (1)
      {
        while (1)
        {
          v47[0] = sub_1A9977140();
          v47[1] = v20;
          v21 = v48;
          v22 = a3(v47);
          v48 = v21;
          if (v21)
          {

            return v16;
          }

          v23 = v22;

          if (v23)
          {
            break;
          }

          v16 = a7;
          v19 = sub_1A9977120() >> 14;
          if (v19 == v14)
          {
            v16 = v43;
            goto LABEL_28;
          }
        }

        result = v11;
        if (v11 >> 14 != v19 || (a2 & 1) == 0)
        {
          break;
        }

        v16 = a7;
        v11 = sub_1A9977120();
        v19 = v11 >> 14;
        if (v11 >> 14 == v14)
        {
          v16 = v43;
          goto LABEL_28;
        }
      }

      if (v19 < v11 >> 14)
      {
        __break(1u);
        return result;
      }

      v44 = sub_1A9977150();
      v39 = v26;
      v40 = v25;
      v38 = v27;
      v16 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1A97AE84C(0, *(v43 + 2) + 1, 1, v43);
      }

      v29 = *(v16 + 2);
      v28 = *(v16 + 3);
      if (v29 >= v28 >> 1)
      {
        v16 = sub_1A97AE84C((v28 > 1), v29 + 1, 1, v16);
      }

      *(v16 + 2) = v29 + 1;
      v30 = &v16[32 * v29];
      *(v30 + 4) = v44;
      *(v30 + 5) = v40;
      *(v30 + 6) = v39;
      *(v30 + 7) = v38;
      v11 = sub_1A9977120();
      a1 = v41;
      v17 = v48;
    }

    while (*(v16 + 2) != v41);
LABEL_28:
    if (v11 >> 14 == v14 && (a2 & 1) != 0)
    {

      return v16;
    }

    if (v14 >= v11 >> 14)
    {
      v9 = sub_1A9977150();
      v11 = v34;
      v13 = v35;
      v14 = v36;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
LABEL_34:
      v12 = v15 + 1;
      if (v15 < a9 >> 1)
      {
LABEL_35:
        *(v16 + 2) = v12;
        v37 = &v16[32 * v15];
        *(v37 + 4) = v9;
        *(v37 + 5) = v11;
        *(v37 + 6) = v13;
        *(v37 + 7) = v14;
        return v16;
      }

LABEL_38:
      v16 = sub_1A97AE84C((a9 > 1), v12, 1, v16);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v16 = sub_1A97AE84C(0, *(v16 + 2) + 1, 1, v16);
    goto LABEL_33;
  }

  if (v18 != v14 || (a2 & 1) == 0)
  {
    if (v14 >= v18)
    {
      v9 = sub_1A9977150();
      v11 = v31;
      v13 = v32;
      v14 = v33;

      v16 = sub_1A97AE84C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return MEMORY[0x1E69E7CC0];
}

char *sub_1A97AE618(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1210, &qword_1A99919F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A97AE724(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1170, &qword_1A99919B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A97AE84C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1158, &qword_1A99919A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A97AE980(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B10F0, &qword_1A99919A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1A97AEAAC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1A97AEC88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2B10, &qword_1A99919E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1A97AED8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1190, &qword_1A99919D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A97AEE98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1178, &qword_1A99919C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A97AEFB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1168, &qword_1A99919B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A97AF0EC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1A97AF148(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1A97AF148(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1A97AF214(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1A97AF7EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_1A97AF214(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1A97AF320(a5, a6);
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
    result = sub_1A9977340();
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

void *sub_1A97AF320(uint64_t a1, unint64_t a2)
{
  v3 = sub_1A97AF36C(a1, a2);
  sub_1A97AF49C(&unk_1F1D26670);
  return v3;
}

void *sub_1A97AF36C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1A9937658(v5, 0);
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

  result = sub_1A9977340();
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
        v10 = sub_1A9976930();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1A9937658(v10, 0);
        result = sub_1A9977290();
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

uint64_t sub_1A97AF49C(uint64_t result)
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

  result = sub_1A97AF588(result, v11, 1, v3);
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

char *sub_1A97AF588(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1238, &unk_1A9991A40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

_BYTE **sub_1A97AF67C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1A97AF68C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A99777E0() & 1;
  }
}

uint64_t sub_1A97AF6E4(uint64_t a1)
{
  v2 = sub_1A99770A0();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - v3, a1);
  return sub_1A9976540();
}

uint64_t sub_1A97AF7EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for SFUserDefaultsRepresentation(uint64_t a1)
{
  result = qword_1EB3B0D20;
  if (!qword_1EB3B0D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A97AF91C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A99777E0() & 1;
  }
}

uint64_t sub_1A97AF974(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A97AF9BC()
{
  result = qword_1EB3B0BB8;
  if (!qword_1EB3B0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0BB8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1A97AFA54()
{
  result = qword_1EB3B0BC8;
  if (!qword_1EB3B0BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0BC8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

uint64_t sub_1A97AFAF4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B2AC0, &qword_1A9990580);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A97AFBC8()
{
  result = qword_1EB3B0C30;
  if (!qword_1EB3B0C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0C30);
  }

  return result;
}

uint64_t sub_1A97AFC1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFUserDefaultsRepresentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A97AFC80()
{
  result = qword_1EB3B0C38;
  if (!qword_1EB3B0C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0C38);
  }

  return result;
}

unint64_t sub_1A97AFCD4()
{
  result = qword_1EB3B0C40;
  if (!qword_1EB3B0C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0C40);
  }

  return result;
}

unint64_t sub_1A97AFD28()
{
  result = qword_1EB3B0C50;
  if (!qword_1EB3B0C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0C50);
  }

  return result;
}

uint64_t sub_1A97AFD7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A97AFDC4()
{
  result = qword_1EB3B0C60;
  if (!qword_1EB3B0C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0C60);
  }

  return result;
}

unint64_t sub_1A97AFE18()
{
  result = qword_1EB3B0C68;
  if (!qword_1EB3B0C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0C68);
  }

  return result;
}

unint64_t sub_1A97AFE6C()
{
  result = qword_1EB3B0C70;
  if (!qword_1EB3B0C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0C70);
  }

  return result;
}

unint64_t sub_1A97AFEC0()
{
  result = qword_1EB3B0C78;
  if (!qword_1EB3B0C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0C78);
  }

  return result;
}

unint64_t sub_1A97AFF14()
{
  result = qword_1EB3B0C80;
  if (!qword_1EB3B0C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0C80);
  }

  return result;
}

uint64_t sub_1A97AFF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFUserDefaultsRepresentation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _sSb7SharingE18userDefaultsStringSbSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v13 = sub_1A9976870();
  v14 = v2;
  v12 = &v13;
  v3 = sub_1A9824824(sub_1A97B2400, v11, &unk_1F1D26590);

  if (v3)
  {

    swift_arrayDestroy();
    return v3 & 1;
  }

  v4 = sub_1A9976870();
  v6 = v5;

  v13 = v4;
  v14 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v10[2] = &v13;
  v8 = sub_1A9824824(sub_1A97B298C, v10, &unk_1F1D26600);
  swift_arrayDestroy();

  if (v8)
  {
    return v3 & 1;
  }

  return 2;
}

unint64_t sub_1A97B0120(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_1A9937C68(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1A9977340();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__CFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

unint64_t sub_1A97B03FC(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1A9977340();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1A99376CC(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1A97B06FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A97B075C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A99E2990 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A99E29B0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65756C6156736168 && a2 == 0xEE006B7369446E4FLL || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7574616546736168 && a2 == 0xEE0067616C466572 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656B636172746E75 && a2 == 0xE900000000000064 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6F6F427369 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65737365636F7270 && a2 == 0xEF6C6C694B6F5473)
  {

    return 7;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1A97B0A18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242338 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7630441 && a2 == 0xE300000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x3233746E6975 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t _s7Sharing21SFUserDefaultObserverC12observeValue10forKeyPath2of6change7contextySSSg_ypSgSDySo05NSKeyf6ChangeH0aypGSgSvSgtF_0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    result = *(v2 + OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_key);
    v4 = result == v3 && *(v2 + OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_key + 8) == a2;
    if (v4 || (result = sub_1A99777E0(), (result & 1) != 0))
    {
      v5 = *(v2 + OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_defaultChangedHandler);
      if (v5)
      {
        v6 = *(v2 + OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_defaultChangedHandler + 8);

        v5(v7);

        return sub_1A967C46C(v5, v6);
      }
    }
  }

  return result;
}

uint64_t sub_1A97B0D3C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A97B0EA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A97B0EF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1A97B0FB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A97B0FFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A97B10D4(uint64_t a1)
{
  result = sub_1A9976230();
  if (v2 <= 0x3F)
  {
    result = sub_1A99762C0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SF_os_activity.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SF_os_activity.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A97B129C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A97B12BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SFAirDrop(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SFAirDrop(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SFString(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SFString(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A97B15E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A97B163C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A97B165C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

uint64_t sub_1A97B1694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1A97B16D4()
{
  result = qword_1EB3B0FD0;
  if (!qword_1EB3B0FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0FD0);
  }

  return result;
}

unint64_t sub_1A97B172C()
{
  result = qword_1EB3B0FD8;
  if (!qword_1EB3B0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0FD8);
  }

  return result;
}

unint64_t sub_1A97B1784()
{
  result = qword_1EB3B0FE0;
  if (!qword_1EB3B0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0FE0);
  }

  return result;
}

unint64_t sub_1A97B17DC()
{
  result = qword_1EB3B0FE8;
  if (!qword_1EB3B0FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0FE8);
  }

  return result;
}

unint64_t sub_1A97B1834()
{
  result = qword_1EB3B0FF0;
  if (!qword_1EB3B0FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0FF0);
  }

  return result;
}

unint64_t sub_1A97B188C()
{
  result = qword_1EB3B0FF8;
  if (!qword_1EB3B0FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0FF8);
  }

  return result;
}

unint64_t sub_1A97B18E4()
{
  result = qword_1EB3B1000;
  if (!qword_1EB3B1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1000);
  }

  return result;
}

unint64_t sub_1A97B193C()
{
  result = qword_1EB3B1008;
  if (!qword_1EB3B1008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1008);
  }

  return result;
}

unint64_t sub_1A97B1994()
{
  result = qword_1EB3B1010;
  if (!qword_1EB3B1010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1010);
  }

  return result;
}

unint64_t sub_1A97B1B54()
{
  result = qword_1EB3B1040;
  if (!qword_1EB3B1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1040);
  }

  return result;
}

unint64_t sub_1A97B1BAC()
{
  result = qword_1EB3B1048;
  if (!qword_1EB3B1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1048);
  }

  return result;
}

unint64_t sub_1A97B1C04()
{
  result = qword_1EB3B1050;
  if (!qword_1EB3B1050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1050);
  }

  return result;
}

unint64_t sub_1A97B1C5C()
{
  result = qword_1EB3B1058;
  if (!qword_1EB3B1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1058);
  }

  return result;
}

unint64_t sub_1A97B1CB4()
{
  result = qword_1EB3B1060;
  if (!qword_1EB3B1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1060);
  }

  return result;
}

unint64_t sub_1A97B1D0C()
{
  result = qword_1EB3B1068;
  if (!qword_1EB3B1068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1068);
  }

  return result;
}

unint64_t sub_1A97B1D64()
{
  result = qword_1EB3B1070;
  if (!qword_1EB3B1070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1070);
  }

  return result;
}

unint64_t sub_1A97B1DBC()
{
  result = qword_1EB3B1078;
  if (!qword_1EB3B1078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1078);
  }

  return result;
}

unint64_t sub_1A97B1E14()
{
  result = qword_1EB3B1080;
  if (!qword_1EB3B1080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1080);
  }

  return result;
}

unint64_t sub_1A97B1E6C()
{
  result = qword_1EB3B1088;
  if (!qword_1EB3B1088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1088);
  }

  return result;
}

unint64_t sub_1A97B1EC4()
{
  result = qword_1EB3B1090;
  if (!qword_1EB3B1090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1090);
  }

  return result;
}

unint64_t sub_1A97B1F1C()
{
  result = qword_1EB3B1098;
  if (!qword_1EB3B1098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1098);
  }

  return result;
}

unint64_t sub_1A97B1F74()
{
  result = qword_1EB3B10A0;
  if (!qword_1EB3B10A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B10A0);
  }

  return result;
}

unint64_t sub_1A97B1FCC()
{
  result = qword_1EB3B10A8;
  if (!qword_1EB3B10A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B10A8);
  }

  return result;
}

unint64_t sub_1A97B2024()
{
  result = qword_1EB3B10B0;
  if (!qword_1EB3B10B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B10B0);
  }

  return result;
}

unint64_t sub_1A97B207C()
{
  result = qword_1EB3B10B8;
  if (!qword_1EB3B10B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B10B8);
  }

  return result;
}

unint64_t sub_1A97B20D4()
{
  result = qword_1EB3B10C0;
  if (!qword_1EB3B10C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B10C0);
  }

  return result;
}

unint64_t sub_1A97B212C()
{
  result = qword_1EB3B10C8;
  if (!qword_1EB3B10C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B10C8);
  }

  return result;
}

unint64_t sub_1A97B2184()
{
  result = qword_1EB3B10D0;
  if (!qword_1EB3B10D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B10D0);
  }

  return result;
}

unint64_t sub_1A97B21DC()
{
  result = qword_1EB3B10D8;
  if (!qword_1EB3B10D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B10D8);
  }

  return result;
}

uint64_t sub_1A97B22EC()
{
  v0 = SFUserDefault.hasValueOnDisk.getter();
  if (v0)
  {
    SFUserDefault.clearValueOnDisk()();
  }

  return v0 & 1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_BYTE *sub_1A97B2380@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1A97B2420(uint64_t a1)
{
  v4 = *(sub_1A9976C60() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2988;

  return sub_1A97A6AE8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1A97B2528(uint64_t a1)
{
  v4 = *(sub_1A9976C60() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1A97B2638;

  return sub_1A97A7268(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1A97B2638()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
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

void sub_1A97B2818(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t SFAirDrop.ContactInfo.Handle.description.getter()
{
  v1 = *v0;
  sub_1A97B2A2C(*v0, v0[1]);
  return v1;
}

uint64_t sub_1A97B2A38()
{
  if (*v0)
  {
    return 0x6C69616D65;
  }

  else
  {
    return 0x656E6F6870;
  }
}

uint64_t sub_1A97B2A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656E6F6870 && a2 == 0xE500000000000000;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}