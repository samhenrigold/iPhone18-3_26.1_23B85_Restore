@interface FMFNoNetworkAlert
+ (BOOL)isAirplaneModeEnabled;
+ (BOOL)isGlobalCellularEnabled;
+ (id)alertInfoForInternetUnavailableReason:(unint64_t)reason;
+ (id)newAlertController;
+ (unint64_t)reasonForNoInternet;
@end

@implementation FMFNoNetworkAlert

+ (id)newAlertController
{
  reasonForNoInternet = [objc_opt_class() reasonForNoInternet];
  v3 = [objc_opt_class() alertInfoForInternetUnavailableReason:reasonForNoInternet];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277D75110];
    title = [v3 title];
    message = [v4 message];
    v8 = [v5 alertControllerWithTitle:title message:message preferredStyle:1];

    actionURL = [v4 actionURL];

    if (actionURL)
    {
      v10 = MEMORY[0x277D750F8];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"ALERT_NO_NETWORK_ACTION_BUTTON_SETTINGS" value:&stru_285D99658 table:@"LocalizableUI"];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __39__FMFNoNetworkAlert_newAlertController__block_invoke;
      v19[3] = &unk_278FE2968;
      v20 = v4;
      v13 = [v10 actionWithTitle:v12 style:0 handler:v19];

      [v8 addAction:v13];
    }

    v14 = MEMORY[0x277D750F8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"OK_BUTTON" value:&stru_285D99658 table:@"LocalizableUI"];
    v17 = [v14 actionWithTitle:v16 style:0 handler:&__block_literal_global];

    [v8 addAction:v17];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __39__FMFNoNetworkAlert_newAlertController__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [*(a1 + 32) actionURL];
  [v3 openSensitiveURL:v2 withOptions:0];
}

+ (unint64_t)reasonForNoInternet
{
  if ([self isAirplaneModeEnabled])
  {
    return 1;
  }

  if (([self isGlobalCellularEnabled] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F9B0], "deviceSupportsCellularData") & 1) == 0)
  {
    return 3;
  }

  return 2;
}

+ (id)alertInfoForInternetUnavailableReason:(unint64_t)reason
{
  v4 = objc_opt_new();
  v5 = v4;
  if (reason > 1)
  {
    if (reason == 2)
    {
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"ALERT_NO_NETWORK_TITLE_CELLULAR_DISABLED" value:&stru_285D99658 table:@"LocalizableUI"];
      fm_wifiToWLAN = [v17 fm_wifiToWLAN];
      [v5 setTitle:fm_wifiToWLAN];

      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"ALERT_NO_NETWORK_MESSAGE_CELLULAR_DISABLED" value:&stru_285D99658 table:@"LocalizableUI"];
      fm_wifiToWLAN2 = [v20 fm_wifiToWLAN];
      [v5 setMessage:fm_wifiToWLAN2];

      v9 = MEMORY[0x277CBEBC0];
      v10 = @"prefs:root=MOBILE_DATA_SETTINGS_ID";
      goto LABEL_12;
    }

    if (reason == 3)
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"ALERT_NO_NETWORK_TITLE_NO_INTERNET" value:&stru_285D99658 table:@"LocalizableUI"];
      fm_wifiToWLAN3 = [v12 fm_wifiToWLAN];
      [v5 setTitle:fm_wifiToWLAN3];

LABEL_13:
    }

LABEL_14:
    v15 = v5;
    goto LABEL_15;
  }

  if (reason)
  {
    if (reason == 1)
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"ALERT_NO_NETWORK_TITLE_AIRPLANE_MODE" value:&stru_285D99658 table:@"LocalizableUI"];
      fm_wifiToWLAN4 = [v7 fm_wifiToWLAN];
      [v5 setTitle:fm_wifiToWLAN4];

      v9 = MEMORY[0x277CBEBC0];
      v10 = @"prefs:root=ROOT#AIRPLANE_MODE";
LABEL_12:
      v11 = [v9 URLWithString:v10];
      [v5 setActionURL:v11];
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v14 = LogCategory_Daemon(v4);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [FMFNoNetworkAlert alertInfoForInternetUnavailableReason:v14];
  }

  v15 = 0;
LABEL_15:

  return v15;
}

+ (BOOL)isGlobalCellularEnabled
{
  v2 = _CTServerConnectionCreateOnTargetQueue();
  if (v2)
  {
    _CTServerConnectionCopyCellularUsagePolicy();
    CFRelease(v2);
    LOBYTE(v2) = 0;
  }

  isEnabled = [MEMORY[0x277D3F9B0] isEnabled];
  if (isEnabled)
  {
    LOBYTE(isEnabled) = [MEMORY[0x277D3F9B0] deviceSupportsCellularData];
  }

  return v2 & isEnabled;
}

+ (BOOL)isAirplaneModeEnabled
{
  v2 = objc_alloc_init(MEMORY[0x277CEC5D0]);
  [v2 refresh];
  airplaneMode = [v2 airplaneMode];

  return airplaneMode;
}

@end