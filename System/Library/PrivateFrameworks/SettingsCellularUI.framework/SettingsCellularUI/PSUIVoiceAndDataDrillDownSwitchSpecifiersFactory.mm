@interface PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory
+ (BOOL)isVoLTESwitchTurnedOnByDefaultAndHidden:(id)hidden;
+ (BOOL)shouldShow2GSwitchForSubscriptionContext:(id)context;
+ (BOOL)shouldShow5GSASwitchForSubscriptionContext:(id)context RATMode:(int)mode;
+ (BOOL)shouldShowAnyVoiceAndDataSwitchSpecifierForContext:(id)context RATMode:(int)mode;
+ (BOOL)shouldShowVoLTESwitchForSubscriptionContext:(id)context RATMode:(int)mode;
+ (BOOL)shouldShowVoNRSwitchForSubscriptionContext:(id)context RATMode:(int)mode;
+ (id)getLoggerForSlot:(int64_t)slot;
- (BOOL)shouldEnable2GSwitchForSubscriptionContext:(id)context;
- (id)create2GSwitchSpecifierWithHostController:(id)controller parentSpecifier:(id)specifier;
- (id)create5GSASwitchSpecifierWithHostController:(id)controller parentSpecifier:(id)specifier;
- (id)createVoLTESwitchSpecifierWithHostController:(id)controller parentSpecifier:(id)specifier;
- (id)createVoNRSwitchSpecifierWithHostController:(id)controller parentSpecifier:(id)specifier;
@end

@implementation PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory

+ (BOOL)shouldShowVoLTESwitchForSubscriptionContext:(id)context RATMode:(int)mode
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = +[PSUICoreTelephonyCapabilitiesCache sharedInstance];
  v7 = [v6 canSetCapabilityVoLTE:contextCopy];

  if (mode > 2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  slotID = [contextCopy slotID];

  v10 = [PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory getLoggerForSlot:slotID];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "No";
    if (v8)
    {
      v12 = "Yes";
    }

    else
    {
      v12 = "No";
    }

    if (v7)
    {
      v13 = "Yes";
    }

    else
    {
      v13 = "No";
    }

    v15 = 136315650;
    v16 = v12;
    v17 = 2080;
    v18 = v13;
    if (mode > 2)
    {
      v11 = "Yes";
    }

    v19 = 2080;
    v20 = v11;
    _os_log_impl(&dword_2658DE000, v10, OS_LOG_TYPE_DEFAULT, "Should show VoLTE switch: %s, can set VoLTE: %s, is RAT mode LTE or above: %s", &v15, 0x20u);
  }

  return v8;
}

+ (BOOL)isVoLTESwitchTurnedOnByDefaultAndHidden:(id)hidden
{
  v22 = *MEMORY[0x277D85DE8];
  hiddenCopy = hidden;
  v4 = +[PSUICoreTelephonyCapabilitiesCache sharedInstance];
  v5 = [v4 capabilityEnabledVoLTE:hiddenCopy];

  v6 = +[PSUICoreTelephonyCapabilitiesCache sharedInstance];
  v7 = [v6 canSetCapabilityVoLTE:hiddenCopy];
  v8 = v7;
  v9 = v7 ^ 1;

  slotID = [hiddenCopy slotID];
  v11 = [PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory getLoggerForSlot:slotID];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "No";
    if ((v5 & v9) != 0)
    {
      v13 = "Yes";
    }

    else
    {
      v13 = "No";
    }

    if (v5)
    {
      v14 = "Yes";
    }

    else
    {
      v14 = "No";
    }

    v16 = 136315650;
    v17 = v13;
    v18 = 2080;
    v19 = v14;
    if ((v8 & 1) == 0)
    {
      v12 = "Yes";
    }

    v20 = 2080;
    v21 = v12;
    _os_log_impl(&dword_2658DE000, v11, OS_LOG_TYPE_DEFAULT, "Is VoLTE Switch turned on by default and hidden: %s, is switch on by default: %s, is switch hidden: %s", &v16, 0x20u);
  }

  return v5 & v9;
}

- (id)createVoLTESwitchSpecifierWithHostController:(id)controller parentSpecifier:(id)specifier
{
  specifierCopy = specifier;
  controllerCopy = controller;
  v7 = [[PSUIVoLTESwitchSpecifier alloc] initWithHostController:controllerCopy parentSpecifier:specifierCopy];

  return v7;
}

+ (BOOL)shouldShow5GSASwitchForSubscriptionContext:(id)context RATMode:(int)mode
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = +[PSUI5GStandaloneCache sharedInstance];
  v7 = [v6 is5GSASupportedForContext:contextCopy];

  if (mode > 3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  slotID = [contextCopy slotID];

  v10 = [PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory getLoggerForSlot:slotID];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "No";
    if (v8)
    {
      v12 = "Yes";
    }

    else
    {
      v12 = "No";
    }

    if (v7)
    {
      v13 = "Yes";
    }

    else
    {
      v13 = "No";
    }

    v15 = 136315650;
    v16 = v12;
    v17 = 2080;
    v18 = v13;
    if (mode > 3)
    {
      v11 = "Yes";
    }

    v19 = 2080;
    v20 = v11;
    _os_log_impl(&dword_2658DE000, v10, OS_LOG_TYPE_DEFAULT, "Should show 5G SA Switch: %s, is 5G SA supported: %s, is RAT mode above LTE: %s", &v15, 0x20u);
  }

  return v8;
}

- (id)create5GSASwitchSpecifierWithHostController:(id)controller parentSpecifier:(id)specifier
{
  specifierCopy = specifier;
  controllerCopy = controller;
  v7 = [PSUI5GSASwitchSpecifier alloc];
  v8 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
  v9 = [(PSUI5GSASwitchSpecifier *)v7 initWithHostController:controllerCopy parentSpecifier:specifierCopy carrierBundleCache:v8];

  return v9;
}

+ (BOOL)shouldShowVoNRSwitchForSubscriptionContext:(id)context RATMode:(int)mode
{
  v34 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = +[PSUI5GStandaloneCache sharedInstance];
  v7 = [v6 is5GSAEnabledForContext:contextCopy];

  v8 = +[PSUI5GStandaloneCache sharedInstance];
  v9 = [v8 is5GSASupportedForContext:contextCopy];

  v10 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
  v11 = [v10 is5GSAEnabledByDefault:contextCopy];

  v12 = +[PSUICoreTelephonyCapabilitiesCache sharedInstance];
  v13 = [v12 canSetCapabilityVoNR:contextCopy];

  if (v9)
  {
    v14 = v7;
  }

  else
  {
    v14 = v11;
  }

  if (v13)
  {
    v15 = (mode > 3) & v14;
  }

  else
  {
    v15 = 0;
  }

  slotID = [contextCopy slotID];

  v17 = [PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory getLoggerForSlot:slotID];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if (v15)
    {
      v18 = "Yes";
    }

    else
    {
      v18 = "No";
    }

    if (v13)
    {
      v19 = "Yes";
    }

    else
    {
      v19 = "No";
    }

    v24 = 136316162;
    v25 = v18;
    if (mode <= 3)
    {
      v20 = "No";
    }

    else
    {
      v20 = "Yes";
    }

    v26 = 2080;
    v27 = v19;
    if ((v9 & v7) != 0)
    {
      v21 = "Yes";
    }

    else
    {
      v21 = "No";
    }

    v28 = 2080;
    v29 = v20;
    v30 = 2080;
    v31 = v21;
    if (((v9 ^ 1) & v11) != 0)
    {
      v22 = "Yes";
    }

    else
    {
      v22 = "No";
    }

    v32 = 2080;
    v33 = v22;
    _os_log_impl(&dword_2658DE000, v17, OS_LOG_TYPE_DEFAULT, "Should show VoNR switch: %s, can set VoNR: %s, rat mode is above LTE: %s, 5G SA supported and enabled: %s, 5G SA not supported and enabled by default: %s", &v24, 0x34u);
  }

  return v15;
}

- (id)createVoNRSwitchSpecifierWithHostController:(id)controller parentSpecifier:(id)specifier
{
  specifierCopy = specifier;
  controllerCopy = controller;
  v7 = [[PSUIVoNRSwitchSpecifier alloc] initWithHostController:controllerCopy parentSpecifier:specifierCopy];

  return v7;
}

+ (BOOL)shouldShowAnyVoiceAndDataSwitchSpecifierForContext:(id)context RATMode:(int)mode
{
  v4 = *&mode;
  v25 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = +[PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory getLoggerForSlot:](PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory, "getLoggerForSlot:", [contextCopy slotID]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "Should we show any voice and data switch?", &v17, 2u);
  }

  v7 = [PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory shouldShowVoLTESwitchForSubscriptionContext:contextCopy RATMode:v4];
  v8 = [PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory shouldShow5GSASwitchForSubscriptionContext:contextCopy RATMode:v4];
  v9 = [PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory shouldShowVoNRSwitchForSubscriptionContext:contextCopy RATMode:v4];
  slotID = [contextCopy slotID];

  v11 = [PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory getLoggerForSlot:slotID];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "not";
    if (v7 || v8 || v9)
    {
      v12 = "";
    }

    if (v7)
    {
      v13 = "Yes";
    }

    else
    {
      v13 = "No";
    }

    v17 = 136315906;
    v18 = v12;
    if (v8)
    {
      v14 = "Yes";
    }

    else
    {
      v14 = "No";
    }

    v19 = 2080;
    v20 = v13;
    v21 = 2080;
    v22 = v14;
    if (v9)
    {
      v15 = "Yes";
    }

    else
    {
      v15 = "No";
    }

    v23 = 2080;
    v24 = v15;
    _os_log_impl(&dword_2658DE000, v11, OS_LOG_TYPE_DEFAULT, "We should %s show any voice and data switch: VoLTE: %s, 5GSA: %s, VoNR: %s", &v17, 0x2Au);
  }

  return v7 || v8 || v9;
}

+ (BOOL)shouldShow2GSwitchForSubscriptionContext:(id)context
{
  contextCopy = context;
  v4 = +[PSUICoreTelephonyRegistrationCache sharedInstance];
  v5 = [v4 is2GSwitchSupportedForContext:contextCopy];

  return v5;
}

- (BOOL)shouldEnable2GSwitchForSubscriptionContext:(id)context
{
  contextCopy = context;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = _MergedGlobals_63;
  v14 = _MergedGlobals_63;
  if (!_MergedGlobals_63)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getLockdownModeManagerClass_block_invoke;
    v10[3] = &unk_279BA9F68;
    v10[4] = &v11;
    __getLockdownModeManagerClass_block_invoke(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  shared = [v4 shared];
  enabled = [shared enabled];

  if (enabled)
  {
    v8 = +[PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory getLoggerForSlot:](PSUIVoiceAndDataDrillDownSwitchSpecifiersFactory, "getLoggerForSlot:", [contextCopy slotID]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "Lockdown Mode is enabled. 2G switch disabled", v10, 2u);
    }
  }

  return enabled ^ 1;
}

- (id)create2GSwitchSpecifierWithHostController:(id)controller parentSpecifier:(id)specifier
{
  specifierCopy = specifier;
  controllerCopy = controller;
  v8 = [[PSUI2GSwitchSpecifier alloc] initWithHostController:controllerCopy parentSpecifier:specifierCopy switchFactory:self];

  return v8;
}

+ (id)getLoggerForSlot:(int64_t)slot
{
  if (slot == 1)
  {
    v5 = @"1";
LABEL_5:
    v6 = [MEMORY[0x277D4D830] loggerWithCategory:@"VnDSwitchSpecifierFactory" instance:{v5, v3}];

    return v6;
  }

  if (slot == 2)
  {
    v5 = @"2";
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

@end