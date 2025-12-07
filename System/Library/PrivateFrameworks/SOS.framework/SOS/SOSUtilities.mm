@interface SOSUtilities
+ (BOOL)BOOLOverrideForDefaultsKey:(id)key defaultValue:(BOOL)value;
+ (BOOL)_hasAccessibilityConflict;
+ (BOOL)_isCarryDevice;
+ (BOOL)_potentialForAccessibilityConflict;
+ (BOOL)activeDeviceHasMandrake;
+ (BOOL)activeDeviceSupportsMandrake;
+ (BOOL)activeDeviceSupportsNewton;
+ (BOOL)activeDeviceSupportsNewtonWorkoutsOnly;
+ (BOOL)canTriggerSOSWithSideButton;
+ (BOOL)deviceHasDynamicIsland;
+ (BOOL)deviceHasHomeButton;
+ (BOOL)hasActiveSIMForClient:(id)client;
+ (BOOL)hasEmergencyContacts;
+ (BOOL)hasMultiPressResetLogicRun;
+ (BOOL)hasNewtonTriggersEmergencySOSWorkoutsSetting;
+ (BOOL)isActivePairedDeviceTinker;
+ (BOOL)isAllowedToMessageSOSContacts;
+ (BOOL)isAutomaticCallCountdownEnabled;
+ (BOOL)isCallWithSideButtonPressesEnabled;
+ (BOOL)isCallWithVolumeLockHoldEnabled;
+ (BOOL)isDeviceD2xOrNewer;
+ (BOOL)isIndiaSKU;
+ (BOOL)isKappaDetectionSupportedOnActiveWatch;
+ (BOOL)isKappaDetectionSupportedOnCurrentDevice;
+ (BOOL)isMessagesAppInstalled;
+ (BOOL)isMessagesHandlingSMS;
+ (BOOL)isMountStateTrackingEnabled;
+ (BOOL)isSOSMessagesUrgentAlertingEnabled;
+ (BOOL)isSmallScreen;
+ (BOOL)kappaTriggersEmergencySOS;
+ (BOOL)kappaTriggersEmergencySOSTinker;
+ (BOOL)longPressTriggersEmergencySOS;
+ (BOOL)longPressTriggersMandrake;
+ (BOOL)newtonTriggersEmergencySOS;
+ (BOOL)newtonTriggersEmergencySOSWorkouts;
+ (BOOL)setShouldPlayAudioDuringCountdown:(BOOL)countdown;
+ (BOOL)shouldAllowSOSStatusReset;
+ (BOOL)shouldBlockNonEmergencyCalls;
+ (BOOL)shouldForceDisableAutoCallForClient:(id)client;
+ (BOOL)shouldPlayAudioDuringCountdown;
+ (BOOL)shouldShowCrashDetectionThirdPartySettingsForPairedDevice:(BOOL)device;
+ (BOOL)shouldSilenceSOSFlow;
+ (BOOL)shouldSkipNewtonCall;
+ (BOOL)sosMessagesUrgentAlertingBypassesMute;
+ (NSNumber)newtonTriggersEmergencySOSNumber;
+ (NSString)accidentalCallFeedbackAssistantLegalText;
+ (NSString)accidentalCallNotificationBody;
+ (NSString)accidentalCallNotificationTitle;
+ (NSString)autoCallFooterDescription;
+ (NSString)autoCallTitleDescription;
+ (NSString)automaticDialingSectionDescription;
+ (NSString)callWithHoldFooterDescription;
+ (NSString)callWithHoldTitleDescription;
+ (NSString)callWithPressesFooterDescription;
+ (NSString)callWithPressesTitleDescription;
+ (NSString)callWithSideButtonFooterDescription;
+ (NSString)callWithSideButtonTitleDescription;
+ (NSString)countdownSoundFooterDescription;
+ (NSString)countdownSoundTitleDescription;
+ (NSString)crashDetectionFooterLinkDescription;
+ (NSString)crashDetectionPhoneFooterDesription;
+ (NSString)crashDetectionPhoneWatchFooterDescription;
+ (NSString)crashDetectionSwitchDescription;
+ (NSString)crashDetectionThirdPartyAlertTitle;
+ (NSString)crashDetectionThirdPartyAppWithAccessDescription;
+ (NSString)crashDetectionThirdPartyCellTitle;
+ (NSString)crashDetectionThirdPartyDescription;
+ (NSString)crashDetectionThirdPartyFooterDescriptionPhone;
+ (NSString)crashDetectionThirdPartyFooterDescriptionWatch;
+ (NSString)crashDetectionThirdPartyNavigationTitle;
+ (NSString)crashDetectionThirdPartyShareDisableDescription;
+ (NSString)crashDetectionTitleDescription;
+ (NSString)crashDetectionWatchFooterDescription;
+ (NSString)emergencyContactsEditDescription;
+ (NSString)emergencyContactsFooterDescription;
+ (NSString)emergencyContactsFooterLinkTitle;
+ (NSString)emergencyContactsSectionDescription;
+ (NSString)fallDetectionAlwaysOnTitleDescription;
+ (NSString)fallDetectionFooterDescription;
+ (NSString)fallDetectionOnlyDuringWorkoutsTitleDescription;
+ (NSString)fallDetectionTitleDescription;
+ (NSString)fivePressesSelectionTitleDescription;
+ (NSString)getKappaThirdPartyDisplayNameForApp;
+ (NSString)holdSideButtonFooterDescription;
+ (NSString)holdSideButtonTitleDescription;
+ (NSString)phoneTriggerAnimationFooterDescription;
+ (NSString)pressSelectionGroupTitleDescription;
+ (NSString)settingsResetFollowUpBody;
+ (NSString)settingsResetFollowUpClearActionTitle;
+ (NSString)settingsResetFollowUpRedirectActionTitle;
+ (NSString)settingsResetFollowUpTitle;
+ (NSString)sosLocationSharingLiveActivityAlertBody;
+ (NSString)sosLocationSharingLiveActivityAlertTitle;
+ (NSString)sosLocationSharingLiveActivityDetail;
+ (NSString)stewieDemoButtonTitle;
+ (NSString)stewieDemoCellText;
+ (NSString)stewieFooterDescription;
+ (NSString)stewieFooterLinkTitle;
+ (NSString)stewieGroupTitle;
+ (NSString)threePressesSelectionTitleDescription;
+ (NSString)watchTriggerAnimationFooterDescription;
+ (SABundleManagerApp)getKappaThirdPartyApp;
+ (SOSStatus)mostRecentSOSStatus;
+ (UIImage)stewieGroupAsset;
+ (__CFBundle)getKappaThirdPartyActiveAppBundle;
+ (double)clawReleaseToCallSupport;
+ (double)getShortSOSNotificationDisplayTimestamp;
+ (double)mountProbabilityThreshold;
+ (id)_SOSDomainAccessor;
+ (id)_overrideForDefaultsKey:(id)key expectedClass:(Class)class defaultValue:(id)value;
+ (id)_sosPrefsValueForKey:(id)key;
+ (id)_userFriendsDomainAccessor;
+ (id)_userSOSDefaults;
+ (id)activeDevice;
+ (id)crashDetectionThirdPartyBundleId;
+ (id)crashDetectionThirdPartyStopSharingDescriptionPhoneWithAppName:(id)name;
+ (id)crashDetectionThirdPartyStopSharingDescriptionWatchWithAppName:(id)name;
+ (id)fetchSOSStatusWithKey:(id)key;
+ (id)getAssetViewForWatchWithCrownOrientationOnRightSide:(BOOL)side layoutLeftToRight:(BOOL)right tintColor:(id)color;
+ (id)numberOverrideForDefaultsKey:(id)key defaultValue:(id)value;
+ (id)phoneAssetName;
+ (id)sosLocationBundle;
+ (id)stringOverrideForDefaultsKey:(id)key defaultValue:(id)value;
+ (id)thirdPartySettingsSpecifiersWithTarget:(id)target displayName:(id)name forPairedDevice:(BOOL)device disableAction:(SEL)action;
+ (id)thirdPartySettingsSpecifiersWithTarget:(id)target forApp:(id)app disableAction:(SEL)action;
+ (id)watchAssetNameWithCrownOrientationOnRightSide:(BOOL)side layoutLeftToRight:(BOOL)right;
+ (int64_t)SOSFlowStateForString:(id)string;
+ (int64_t)SOSProgressionForString:(id)string;
+ (int64_t)SOSResolutionForString:(id)string;
+ (int64_t)SOSSelectableTriggerMechanismCapability;
+ (int64_t)SOSTriggerClickCount;
+ (int64_t)SOSTriggerMechanismForClickCount:(int64_t)count;
+ (int64_t)SOSTriggerMechanismForString:(id)string;
+ (int64_t)currentSOSTriggerMechanism;
+ (int64_t)defaultSOSTriggerMechanism;
+ (int64_t)getSettingsResetFollowUpState;
+ (int64_t)mostRecentlyUsedSOSTriggerMechanism;
+ (void)_setKappaTriggersEmergencySOS:(BOOL)s;
+ (void)_setKappaTriggersEmergencySOSTinker:(BOOL)tinker;
+ (void)getAssetViewForPhoneWithCompletion:(id)completion;
+ (void)openEmergencyContactsFooterLinkOnViewController:(id)controller;
+ (void)presentConfirmationOnViewController:(id)controller title:(id)title message:(id)message cancelTitle:(id)cancelTitle cancelHandler:(id)handler confirmTitle:(id)confirmTitle confirmHandler:(id)confirmHandler;
+ (void)presentStewieDemoUnavailableAlertOnViewController:(id)controller reason:(int64_t)reason;
+ (void)presentStewieLearnMoreLinkOnViewController:(id)controller;
+ (void)setAllowedToMessageSOSContacts:(BOOL)contacts;
+ (void)setAutomaticCallCountdownEnabled:(BOOL)enabled;
+ (void)setCallWithSideButtonPresses:(BOOL)presses presentErrorAlertOnViewController:(id)controller completion:(id)completion;
+ (void)setCallWithSideButtonPressesEnabled:(BOOL)enabled;
+ (void)setCallWithVolumeLockHoldEnabled:(BOOL)enabled;
+ (void)setCurrentSOSTriggerMechanism:(int64_t)mechanism;
+ (void)setHasMultiPressResetLogicRun:(BOOL)run;
+ (void)setKappaThirdPartyActive:(BOOL)active forApp:(id)app forPairedDevice:(BOOL)device presentConfirmationOnViewController:(id)controller completion:(id)completion;
+ (void)setKappaThirdPartyActiveApp:(BOOL)app presentConfirmationOnViewController:(id)controller completion:(id)completion;
+ (void)setKappaTriggersEmergencySOS:(BOOL)s confirmationDelegate:(id)delegate completion:(id)completion;
+ (void)setKappaTriggersEmergencySOS:(BOOL)s isWristDetectionEnabled:(BOOL)enabled confirmationDelegate:(id)delegate completion:(id)completion;
+ (void)setLongPressTriggersEmergencySOS:(BOOL)s;
+ (void)setLongPressTriggersMandrake:(BOOL)mandrake;
+ (void)setNewtonTriggersEmergencySOS:(BOOL)s;
+ (void)setNewtonTriggersEmergencySOS:(BOOL)s isWristDetectionEnabled:(BOOL)enabled doesNewtonRequireConfirmation:(BOOL)confirmation presentConfirmationOnViewController:(id)controller completion:(id)completion;
+ (void)setNewtonTriggersEmergencySOS:(BOOL)s isWristDetectionEnabled:(BOOL)enabled newtonEligibility:(unint64_t)eligibility confirmationDelegate:(id)delegate completion:(id)completion;
+ (void)setNewtonTriggersEmergencySOS:(BOOL)s newtonTriggersEmergencySOSWorkoutsOnly:(BOOL)only;
+ (void)setNewtonTriggersEmergencySOSNumber:(id)number;
+ (void)setNewtonTriggersEmergencySOSWorkouts:(BOOL)workouts;
+ (void)setNewtonTriggersEmergencySOSWorkoutsOnly:(BOOL)only isWristDetectionEnabled:(BOOL)enabled newtonEligibility:(unint64_t)eligibility confirmationDelegate:(id)delegate completion:(id)completion;
+ (void)setNumberOfSideButtonPresses:(int64_t)presses;
+ (void)setPlayAudioDuringCountdown:(BOOL)countdown;
+ (void)setSOSMessagesUrgentAlertingBypassesMute:(BOOL)mute;
+ (void)setSOSMessagesUrgentAlertingEnabled:(BOOL)enabled;
+ (void)setSOSStatus:(id)status withKey:(id)key;
+ (void)setSettingsResetFollowUpState:(int64_t)state;
+ (void)setShortSOSNotificationDisplayTimestamp;
+ (void)thirdPartySettingsSpecifiersForRemoteDeviceWithTarget:(id)target forApp:(id)app disableAction:(SEL)action withCompletion:(id)completion;
@end

@implementation SOSUtilities

+ (BOOL)kappaTriggersEmergencySOS
{
  v2 = [self _sosPrefsValueForKey:@"SOSKappaTriggersEmergencySOSKey"];
  v3 = v2;
  if (!v2)
  {
    v2 = MEMORY[0x277CBEC38];
  }

  if ([v2 BOOLValue])
  {
    v4 = _os_feature_enabled_impl();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_userSOSDefaults
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.SOS"];

  if (v4)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  else
  {
    standardUserDefaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.SOS"];
  }

  return standardUserDefaults;
}

+ (NSString)getKappaThirdPartyDisplayNameForApp
{
  getKappaThirdPartyApp = [self getKappaThirdPartyApp];
  getLocalizedName = [getKappaThirdPartyApp getLocalizedName];

  return getLocalizedName;
}

+ (SABundleManagerApp)getKappaThirdPartyApp
{
  crashDetectionManager = [getSABundleManagerClass() crashDetectionManager];
  approvedApps = [crashDetectionManager approvedApps];
  firstObject = [approvedApps firstObject];

  return firstObject;
}

+ (BOOL)shouldBlockNonEmergencyCalls
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[SOSUtilities mostRecentSOSStatus];
  v3 = v2;
  if (v2 && (v4 = [v2 shouldBlockNonEmergencyCalls], v4))
  {
    v5 = sos_default_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSUtilities,should block non-emergency calls due to %@", &v8, 0xCu);
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (SOSStatus)mostRecentSOSStatus
{
  v2 = +[SOSUtilities currentDeviceSOSStatus];
  v3 = +[SOSUtilities pairedDeviceSOSStatus];
  v4 = v3;
  if (v2)
  {
    timeOfDetection = [v2 timeOfDetection];

    v4 = v3;
    if (timeOfDetection)
    {
      v4 = v2;
      if (v3)
      {
        timeOfDetection2 = [v3 timeOfDetection];

        v4 = v2;
        if (timeOfDetection2)
        {
          timeOfDetection3 = [v2 timeOfDetection];
          [timeOfDetection3 timeIntervalSince1970];
          v9 = v8;
          timeOfDetection4 = [v3 timeOfDetection];
          [timeOfDetection4 timeIntervalSince1970];
          v12 = v11;

          if (v9 >= v12)
          {
            v4 = v2;
          }

          else
          {
            v4 = v3;
          }
        }
      }
    }
  }

  v13 = v4;

  return v13;
}

+ (id)_SOSDomainAccessor
{
  v3 = objc_alloc(MEMORY[0x277D2BA58]);
  activeDevice = [self activeDevice];
  v5 = [v3 initWithDomain:@"com.apple.SOS" pdrDevice:activeDevice];

  return v5;
}

+ (id)_userFriendsDomainAccessor
{
  v3 = objc_alloc(MEMORY[0x277D2BA58]);
  activeDevice = [self activeDevice];
  v5 = [v3 initWithDomain:@"com.apple.mobilephone" pdrDevice:activeDevice];

  return v5;
}

+ (id)_sosPrefsValueForKey:(id)key
{
  v3 = CFPreferencesCopyValue(key, @"com.apple.SOS", @"mobile", *MEMORY[0x277CBF030]);

  return v3;
}

+ (NSString)automaticDialingSectionDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"WATCH_AUTO_DIAL_HEADER" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)holdSideButtonTitleDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"WATCH_LONG_PRESS_TRIGGERS_SOS_LABEL" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)holdSideButtonFooterDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"WATCH_PRESS_AND_HOLD_FOOTER" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (BOOL)longPressTriggersEmergencySOS
{
  _userFriendsDomainAccessor = [self _userFriendsDomainAccessor];
  v3 = [_userFriendsDomainAccessor objectForKey:@"SOSLongPressTriggersEmergencySOSKey"];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEC38];
  }

  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (void)setLongPressTriggersEmergencySOS:(BOOL)s
{
  sCopy = s;
  [SOSCoreAnalyticsReporter reportSOSLongPressTriggersEmergencySOS:?];
  _userFriendsDomainAccessor = [self _userFriendsDomainAccessor];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:sCopy];
  [_userFriendsDomainAccessor setObject:v6 forKey:@"SOSLongPressTriggersEmergencySOSKey"];

  v7 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SOSUtilities_setLongPressTriggersEmergencySOS___block_invoke;
  block[3] = &unk_279B532A0;
  v10 = _userFriendsDomainAccessor;
  v8 = _userFriendsDomainAccessor;
  dispatch_async(v7, block);
}

void __49__SOSUtilities_setLongPressTriggersEmergencySOS___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) synchronize];
  v3 = objc_opt_new();
  v2 = [MEMORY[0x277CBEB98] setWithObject:@"SOSLongPressTriggersEmergencySOSKey"];
  [v3 synchronizeNanoDomain:@"com.apple.mobilephone" keys:v2];
}

+ (NSString)fallDetectionTitleDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_FALL_DETECTION_TITLE" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)fallDetectionAlwaysOnTitleDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_NEWTON_MODE_ALWAYS_ON" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)fallDetectionOnlyDuringWorkoutsTitleDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_NEWTON_MODE_WORKOUTS_ONLY" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)fallDetectionFooterDescription
{
  if ([self activeDeviceSupportsNewtonWorkoutsOnly])
  {
    if (+[SOSUtilities newtonTriggersEmergencySOS])
    {
      if (+[SOSUtilities newtonTriggersEmergencySOSWorkouts])
      {
        v2 = @"SOS_NEWTON_FOOTER_ENABLED_WORKOUTS_ONLY";
      }

      else
      {
        v2 = @"SOS_NEWTON_FOOTER_ENABLED_ALWAYS";
      }
    }

    else
    {
      v2 = @"SOS_NEWTON_FOOTER_DISABLED";
    }
  }

  else
  {
    v2 = @"SOS_NEWTON_FOOTER";
  }

  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_2875C9CD8 table:0];

  return v4;
}

+ (NSNumber)newtonTriggersEmergencySOSNumber
{
  _SOSDomainAccessor = [self _SOSDomainAccessor];
  v3 = [_SOSDomainAccessor objectForKey:@"SOSNewtonTriggersEmergencySOSKey"];

  return v3;
}

+ (void)setNewtonTriggersEmergencySOSNumber:(id)number
{
  v13 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v5 = sos_default_log(numberCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    bOOLValue = [numberCopy BOOLValue];
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "newton status change: %d", buf, 8u);
  }

  _SOSDomainAccessor = [self _SOSDomainAccessor];
  v7 = [_SOSDomainAccessor objectForKey:@"SOSNewtonTriggersEmergencySOSKey"];
  if (([v7 isEqual:numberCopy] & 1) == 0)
  {
    +[SOSCoreAnalyticsReporter reportSOSAutomaticNewtonEnabled:](SOSCoreAnalyticsReporter, "reportSOSAutomaticNewtonEnabled:", [numberCopy BOOLValue]);
    [_SOSDomainAccessor setObject:numberCopy forKey:@"SOSNewtonTriggersEmergencySOSKey"];
    v8 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SOSUtilities_setNewtonTriggersEmergencySOSNumber___block_invoke;
    block[3] = &unk_279B532A0;
    v10 = _SOSDomainAccessor;
    dispatch_async(v8, block);
  }
}

void __52__SOSUtilities_setNewtonTriggersEmergencySOSNumber___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) synchronize];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CBEB98] setWithObject:@"SOSNewtonTriggersEmergencySOSKey"];
  [v2 synchronizeNanoDomain:@"com.apple.SOS" keys:v3];

  v4 = MEMORY[0x277D85CD0];

  dispatch_async(v4, &__block_literal_global_1);
}

void __52__SOSUtilities_setNewtonTriggersEmergencySOSNumber___block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SOSNewtonStateChangedNotification", 0, 0, 1u);
}

+ (BOOL)shouldSkipNewtonCall
{
  v2 = +[SOSUtilities _userSOSDefaults];
  v3 = [v2 BOOLForKey:@"SkipNewtonCall"];

  return v3;
}

+ (BOOL)shouldAllowSOSStatusReset
{
  v2 = [SOSUtilities _sosPrefsValueForKey:@"AllowSOSStatusReset"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (int64_t)SOSTriggerMechanismForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"SOSTriggerMechanismNone"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"SOSTriggerMechanismThreeClicks"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"SOSTriggerMechanismFiveClicks"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"SOSTriggerMechanismVolumeLockHold"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"SOSTriggerMechanismButtonTrigger"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"SOSTriggerMechanismNewton"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"SOSTriggerMechanismCinnamon"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"SOSTriggerMechanismKappa"])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:@"SOSTriggerMechanismMandrake"])
  {
    v4 = 8;
  }

  else if ([stringCopy isEqualToString:@"SOSTriggerMechanismUnknown"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)SOSProgressionForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"SOSProgressionUnknown"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"SOSProgressionSOSTriggered"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"SOSProgressionThirdParty"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"SOSProgressionFlowStateUpdate"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)SOSResolutionForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"SOSResolutionNone"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"SOSResolutionSystemCompleted"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"SOSResolutionUserCompleted"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"SOSResolutionUserDismissed"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"SOSResolutionUserDisabled"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)SOSFlowStateForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"SOSFlowStateNone"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateUserCheckIn"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateCallCountdown"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateCallUserInitiated"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateCallAutoInitiated"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateContactCountdown"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateCancelled"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateDone"])
  {
    v4 = 10;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateVoiceLoopTester"])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateMedicalID"])
  {
    v4 = 8;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateUnresponsiveResting"])
  {
    v4 = 9;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateStewieResting"])
  {
    v4 = 11;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateMotionCancelled"])
  {
    v4 = 12;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateSliderView"])
  {
    v4 = 13;
  }

  else if ([stringCopy isEqualToString:@"SOSFlowStateTriggered"])
  {
    v4 = 14;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)newtonTriggersEmergencySOSWorkouts
{
  _SOSDomainAccessor = [self _SOSDomainAccessor];
  v3 = [_SOSDomainAccessor objectForKey:@"SOSNewtonWorkoutTriggersEmergencySOSKey"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)hasNewtonTriggersEmergencySOSWorkoutsSetting
{
  _SOSDomainAccessor = [self _SOSDomainAccessor];
  v3 = [_SOSDomainAccessor objectForKey:@"SOSNewtonWorkoutTriggersEmergencySOSKey"];
  v4 = v3 != 0;

  return v4;
}

+ (void)setNewtonTriggersEmergencySOSWorkouts:(BOOL)workouts
{
  workoutsCopy = workouts;
  v14 = *MEMORY[0x277D85DE8];
  v5 = sos_default_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = workoutsCopy;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "newton workouts status change: %d", buf, 8u);
  }

  _SOSDomainAccessor = [self _SOSDomainAccessor];
  v7 = [_SOSDomainAccessor objectForKey:@"SOSNewtonWorkoutTriggersEmergencySOSKey"];
  if ([v7 BOOLValue] != workoutsCopy)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:workoutsCopy];
    [_SOSDomainAccessor setObject:v8 forKey:@"SOSNewtonWorkoutTriggersEmergencySOSKey"];

    v9 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__SOSUtilities_setNewtonTriggersEmergencySOSWorkouts___block_invoke;
    block[3] = &unk_279B532A0;
    v11 = _SOSDomainAccessor;
    dispatch_async(v9, block);
  }
}

void __54__SOSUtilities_setNewtonTriggersEmergencySOSWorkouts___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) synchronize];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CBEB98] setWithObject:@"SOSNewtonWorkoutTriggersEmergencySOSKey"];
  [v2 synchronizeNanoDomain:@"com.apple.SOS" keys:v3];

  v4 = MEMORY[0x277D85CD0];

  dispatch_async(v4, &__block_literal_global_583);
}

void __54__SOSUtilities_setNewtonTriggersEmergencySOSWorkouts___block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SOSNewtonStateChangedNotification", 0, 0, 1u);
}

+ (BOOL)newtonTriggersEmergencySOS
{
  newtonTriggersEmergencySOSNumber = [self newtonTriggersEmergencySOSNumber];
  v3 = newtonTriggersEmergencySOSNumber;
  v4 = MEMORY[0x277CBEC28];
  if (newtonTriggersEmergencySOSNumber)
  {
    v4 = newtonTriggersEmergencySOSNumber;
  }

  v5 = v4;

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

+ (void)setNewtonTriggersEmergencySOS:(BOOL)s
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:s];
  [self setNewtonTriggersEmergencySOSNumber:v4];
}

+ (void)setNewtonTriggersEmergencySOS:(BOOL)s isWristDetectionEnabled:(BOOL)enabled doesNewtonRequireConfirmation:(BOOL)confirmation presentConfirmationOnViewController:(id)controller completion:(id)completion
{
  confirmationCopy = confirmation;
  sCopy = s;
  controllerCopy = controller;
  completionCopy = completion;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __147__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_doesNewtonRequireConfirmation_presentConfirmationOnViewController_completion___block_invoke;
  v40[3] = &unk_279B532F0;
  v44 = sCopy;
  enabledCopy = enabled;
  selfCopy = self;
  v14 = completionCopy;
  v42 = v14;
  v15 = controllerCopy;
  v41 = v15;
  v16 = MEMORY[0x266735F90](v40);
  v17 = v16;
  if (sCopy && confirmationCopy)
  {
    UIAlertControllerClass = getUIAlertControllerClass();
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"SOS_MODE_NEWTON_CONFIRM_TITLE" value:&stru_2875C9CD8 table:0];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"SOS_MODE_NEWTON_CONFIRM_DETAIL" value:&stru_2875C9CD8 table:0];
    v23 = [UIAlertControllerClass alertControllerWithTitle:v20 message:v22 preferredStyle:1];

    UIAlertActionClass = getUIAlertActionClass();
    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"SOS_MODE_NEWTON_CONFIRM_CANCEL" value:&stru_2875C9CD8 table:0];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __147__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_doesNewtonRequireConfirmation_presentConfirmationOnViewController_completion___block_invoke_3;
    v37[3] = &unk_279B53318;
    selfCopy2 = self;
    v38 = v14;
    v27 = [UIAlertActionClass actionWithTitle:v26 style:1 handler:v37];
    [v23 addAction:v27];

    v28 = getUIAlertActionClass();
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"SOS_MODE_NEWTON_CONFIRM_OK" value:&stru_2875C9CD8 table:0];
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __147__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_doesNewtonRequireConfirmation_presentConfirmationOnViewController_completion___block_invoke_4;
    v35 = &unk_279B53340;
    v36 = v17;
    v31 = [v28 actionWithTitle:v30 style:0 handler:&v32];
    [v23 addAction:{v31, v32, v33, v34, v35}];

    [v15 presentViewController:v23 animated:1 completion:0];
  }

  else
  {
    (*(v16 + 16))(v16);
  }
}

void __147__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_doesNewtonRequireConfirmation_presentConfirmationOnViewController_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1 && (*(a1 + 57) & 1) == 0)
  {
    UIAlertControllerClass = getUIAlertControllerClass();
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"SOS_WRIST_DETECTION_OFF_TITLE" value:&stru_2875C9CD8 table:0];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"SOS_WRIST_DETECTION_OFF_DETAIL" value:&stru_2875C9CD8 table:0];
    v8 = [UIAlertControllerClass alertControllerWithTitle:v5 message:v7 preferredStyle:1];

    UIAlertActionClass = getUIAlertActionClass();
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"SOS_WRIST_DETECTION_OK" value:&stru_2875C9CD8 table:0];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __147__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_doesNewtonRequireConfirmation_presentConfirmationOnViewController_completion___block_invoke_2;
    v15[3] = &unk_279B532C8;
    v17 = *(a1 + 56);
    v14 = *(a1 + 40);
    v12 = v14;
    v16 = v14;
    v13 = [UIAlertActionClass actionWithTitle:v11 style:0 handler:v15];
    [v8 addAction:v13];

    [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    [*(a1 + 48) setNewtonTriggersEmergencySOS:?];
    v2 = *(*(a1 + 40) + 16);

    v2();
  }
}

uint64_t __147__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_doesNewtonRequireConfirmation_presentConfirmationOnViewController_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 40) setNewtonTriggersEmergencySOS:*(a1 + 48)];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t __147__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_doesNewtonRequireConfirmation_presentConfirmationOnViewController_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 40) setNewtonTriggersEmergencySOS:0];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

+ (void)presentConfirmationOnViewController:(id)controller title:(id)title message:(id)message cancelTitle:(id)cancelTitle cancelHandler:(id)handler confirmTitle:(id)confirmTitle confirmHandler:(id)confirmHandler
{
  v36 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  titleCopy = title;
  cancelTitleCopy = cancelTitle;
  handlerCopy = handler;
  confirmTitleCopy = confirmTitle;
  confirmHandlerCopy = confirmHandler;
  messageCopy = message;
  v21 = sos_default_log(messageCopy);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = titleCopy;
    _os_log_impl(&dword_264323000, v21, OS_LOG_TYPE_DEFAULT, "Presenting confirmation with title: %@", buf, 0xCu);
  }

  v22 = [getUIAlertControllerClass() alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];

  if ([cancelTitleCopy length])
  {
    UIAlertActionClass = getUIAlertActionClass();
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __120__SOSUtilities_presentConfirmationOnViewController_title_message_cancelTitle_cancelHandler_confirmTitle_confirmHandler___block_invoke;
    v32[3] = &unk_279B53340;
    v33 = handlerCopy;
    v24 = [UIAlertActionClass actionWithTitle:cancelTitleCopy style:1 handler:v32];
    [v22 addAction:v24];
  }

  if ([confirmTitleCopy length])
  {
    v25 = getUIAlertActionClass();
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __120__SOSUtilities_presentConfirmationOnViewController_title_message_cancelTitle_cancelHandler_confirmTitle_confirmHandler___block_invoke_2;
    v30 = &unk_279B53340;
    v31 = confirmHandlerCopy;
    v26 = [v25 actionWithTitle:confirmTitleCopy style:0 handler:&v27];
    [v22 addAction:{v26, v27, v28, v29, v30}];
  }

  [controllerCopy presentViewController:v22 animated:1 completion:0];
}

uint64_t __120__SOSUtilities_presentConfirmationOnViewController_title_message_cancelTitle_cancelHandler_confirmTitle_confirmHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __120__SOSUtilities_presentConfirmationOnViewController_title_message_cancelTitle_cancelHandler_confirmTitle_confirmHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)setNewtonTriggersEmergencySOS:(BOOL)s newtonTriggersEmergencySOSWorkoutsOnly:(BOOL)only
{
  onlyCopy = only;
  sCopy = s;
  v11 = *MEMORY[0x277D85DE8];
  v7 = sos_default_log(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109376;
    v8[1] = sCopy;
    v9 = 1024;
    v10 = onlyCopy;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "setNewtonTriggersEmergencySOS:%d newtonTriggersEmergencySOSWorkoutsOnly:%d", v8, 0xEu);
  }

  [self setNewtonTriggersEmergencySOS:sCopy];
  if (sCopy && onlyCopy)
  {
    [self setNewtonTriggersEmergencySOSWorkouts:1];
  }
}

+ (void)setNewtonTriggersEmergencySOS:(BOOL)s isWristDetectionEnabled:(BOOL)enabled newtonEligibility:(unint64_t)eligibility confirmationDelegate:(id)delegate completion:(id)completion
{
  enabledCopy = enabled;
  sCopy = s;
  v52 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  completionCopy = completion;
  v14 = sos_default_log(completionCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    *v48 = sCopy;
    *&v48[4] = 1024;
    *&v48[6] = enabledCopy;
    *v49 = 2048;
    *&v49[2] = eligibility;
    v50 = 2112;
    v51 = delegateCopy;
    _os_log_impl(&dword_264323000, v14, OS_LOG_TYPE_DEFAULT, "setNewtonTriggersEmergencySOS:%d isWristDetectionEnabled:%d newtonEligibility:%zd confirmationDelegate:%@", buf, 0x22u);
  }

  newtonTriggersEmergencySOSWorkouts = [self newtonTriggersEmergencySOSWorkouts];
  v16 = newtonTriggersEmergencySOSWorkouts;
  v17 = sos_default_log(newtonTriggersEmergencySOSWorkouts);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v48 = "+[SOSUtilities setNewtonTriggersEmergencySOS:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]";
    *&v48[8] = 1024;
    *v49 = v16;
    _os_log_impl(&dword_264323000, v17, OS_LOG_TYPE_DEFAULT, "%s - newtonTriggersEmergencySOSWorkoutsOnly:%d", buf, 0x12u);
  }

  if (([self hasNewtonTriggersEmergencySOSWorkoutsSetting] & 1) == 0 && objc_msgSend(self, "activeDeviceSupportsNewtonWorkoutsOnly"))
  {
    v18 = [self defaultToWorkoutsOnlyForEligibility:eligibility];
    v16 = v18;
    v19 = sos_default_log(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *v48 = "+[SOSUtilities setNewtonTriggersEmergencySOS:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]";
      *&v48[8] = 1024;
      *v49 = v16;
      _os_log_impl(&dword_264323000, v19, OS_LOG_TYPE_DEFAULT, "%s - !hasNewtonTriggersEmergencySOSWorkoutsSetting, set default newtonTriggersEmergencySOSWorkoutsOnly:%d", buf, 0x12u);
    }
  }

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __120__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke;
  v40[3] = &unk_279B53390;
  v44 = sCopy;
  v45 = enabledCopy;
  v20 = delegateCopy;
  v41 = v20;
  selfCopy = self;
  v46 = v16;
  v21 = completionCopy;
  v42 = v21;
  v22 = MEMORY[0x266735F90](v40);
  v23 = v22;
  if (sCopy && (v16 & 1) == 0 && (v22 = [self newtonAlwaysOnRequiresConfirmationForEligibility:eligibility], v22))
  {
    v24 = sos_default_log(v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v48 = "+[SOSUtilities setNewtonTriggersEmergencySOS:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]";
      _os_log_impl(&dword_264323000, v24, OS_LOG_TYPE_DEFAULT, "%s - presenting eligibility-related confirmation", buf, 0xCu);
    }

    v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = [v33 localizedStringForKey:@"SOS_MODE_NEWTON_CONFIRM_TITLE" value:&stru_2875C9CD8 table:0];
    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"SOS_MODE_NEWTON_CONFIRM_DETAIL" value:&stru_2875C9CD8 table:0];
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"SOS_MODE_NEWTON_CONFIRM_CANCEL" value:&stru_2875C9CD8 table:0];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __120__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke_607;
    v36[3] = &unk_279B533B8;
    selfCopy2 = self;
    v39 = 0;
    v37 = v21;
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"SOS_MODE_NEWTON_CONFIRM_OK" value:&stru_2875C9CD8 table:0];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __120__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke_608;
    v34[3] = &unk_279B533E0;
    v35 = v23;
    [v20 presentConfirmationWithTitle:v32 message:v26 cancelTitle:v28 cancelHandler:v36 confirmTitle:v30 confirmHandler:v34];
  }

  else
  {
    v31 = sos_default_log(v22);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v48 = "+[SOSUtilities setNewtonTriggersEmergencySOS:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]";
      _os_log_impl(&dword_264323000, v31, OS_LOG_TYPE_DEFAULT, "%s - no eligibility confirmation needed", buf, 0xCu);
    }

    v23[2](v23);
  }
}

void __120__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1 && (*(a1 + 57) & 1) == 0)
  {
    v3 = sos_default_log(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "+[SOSUtilities setNewtonTriggersEmergencySOS:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]_block_invoke";
      _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s - presenting wrist detection notification", buf, 0xCu);
    }

    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"SOS_WRIST_DETECTION_OFF_TITLE" value:&stru_2875C9CD8 table:0];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"SOS_WRIST_DETECTION_OFF_DETAIL" value:&stru_2875C9CD8 table:0];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"SOS_WRIST_DETECTION_OK" value:&stru_2875C9CD8 table:0];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __120__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke_606;
    v13[3] = &unk_279B53368;
    v15 = *(a1 + 56);
    v16 = *(a1 + 58);
    v12 = *(a1 + 40);
    v11 = v12;
    v14 = v12;
    [v4 presentConfirmationWithTitle:v6 message:v8 cancelTitle:0 cancelHandler:0 confirmTitle:v10 confirmHandler:v13];
  }

  else
  {
    v2 = sos_default_log(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "+[SOSUtilities setNewtonTriggersEmergencySOS:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]_block_invoke";
      _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "%s - no wrist detection notification needed", buf, 0xCu);
    }

    [*(a1 + 48) setNewtonTriggersEmergencySOS:*(a1 + 56) newtonTriggersEmergencySOSWorkoutsOnly:*(a1 + 58)];
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __120__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke_606(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[SOSUtilities setNewtonTriggersEmergencySOS:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]_block_invoke";
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "%s - ack'd", &v4, 0xCu);
  }

  [*(a1 + 40) setNewtonTriggersEmergencySOS:*(a1 + 48) newtonTriggersEmergencySOSWorkoutsOnly:*(a1 + 49)];
  return (*(*(a1 + 32) + 16))();
}

uint64_t __120__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke_607(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[SOSUtilities setNewtonTriggersEmergencySOS:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]_block_invoke";
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "%s - canceled", &v4, 0xCu);
  }

  [*(a1 + 40) setNewtonTriggersEmergencySOS:0 newtonTriggersEmergencySOSWorkoutsOnly:*(a1 + 48)];
  return (*(*(a1 + 32) + 16))();
}

uint64_t __120__SOSUtilities_setNewtonTriggersEmergencySOS_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke_608(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[SOSUtilities setNewtonTriggersEmergencySOS:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]_block_invoke";
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "%s - confirmed", &v4, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

+ (void)setNewtonTriggersEmergencySOSWorkoutsOnly:(BOOL)only isWristDetectionEnabled:(BOOL)enabled newtonEligibility:(unint64_t)eligibility confirmationDelegate:(id)delegate completion:(id)completion
{
  enabledCopy = enabled;
  onlyCopy = only;
  v38 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  completionCopy = completion;
  v14 = sos_default_log(completionCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    *v33 = onlyCopy;
    *&v33[4] = 1024;
    *&v33[6] = enabledCopy;
    v34 = 2048;
    eligibilityCopy = eligibility;
    v36 = 2112;
    v37 = delegateCopy;
    _os_log_impl(&dword_264323000, v14, OS_LOG_TYPE_DEFAULT, "setNewtonTriggersEmergencySOSWorkoutsOnly:%d isWristDetectionEnabled:%d newtonEligibility:%zd confirmationDelegate:%@", buf, 0x22u);
  }

  if (onlyCopy || (v15 = [self newtonAlwaysOnRequiresConfirmationForEligibility:eligibility], !v15))
  {
    v21 = sos_default_log(v15);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v33 = "+[SOSUtilities setNewtonTriggersEmergencySOSWorkoutsOnly:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]";
      _os_log_impl(&dword_264323000, v21, OS_LOG_TYPE_DEFAULT, "%s - no eligibility confirmation needed", buf, 0xCu);
    }

    [self setNewtonTriggersEmergencySOSWorkouts:onlyCopy];
    completionCopy[2](completionCopy, 1);
  }

  else
  {
    v16 = sos_default_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v33 = "+[SOSUtilities setNewtonTriggersEmergencySOSWorkoutsOnly:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]";
      _os_log_impl(&dword_264323000, v16, OS_LOG_TYPE_DEFAULT, "%s - presenting eligibility-related confirmation", buf, 0xCu);
    }

    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v25 localizedStringForKey:@"SOS_MODE_NEWTON_CONFIRM_TITLE" value:&stru_2875C9CD8 table:0];
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v24 localizedStringForKey:@"SOS_MODE_NEWTON_CONFIRM_DETAIL" value:&stru_2875C9CD8 table:0];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"SOS_MODE_NEWTON_CONFIRM_CANCEL" value:&stru_2875C9CD8 table:0];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __132__SOSUtilities_setNewtonTriggersEmergencySOSWorkoutsOnly_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke;
    v30[3] = &unk_279B533E0;
    v31 = completionCopy;
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"SOS_MODE_NEWTON_CONFIRM_OK" value:&stru_2875C9CD8 table:0];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __132__SOSUtilities_setNewtonTriggersEmergencySOSWorkoutsOnly_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke_609;
    v26[3] = &unk_279B533B8;
    selfCopy = self;
    v29 = onlyCopy;
    v27 = v31;
    [delegateCopy presentConfirmationWithTitle:v23 message:v22 cancelTitle:v18 cancelHandler:v30 confirmTitle:v20 confirmHandler:v26];
  }
}

uint64_t __132__SOSUtilities_setNewtonTriggersEmergencySOSWorkoutsOnly_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[SOSUtilities setNewtonTriggersEmergencySOSWorkoutsOnly:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]_block_invoke";
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "%s - canceled", &v4, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __132__SOSUtilities_setNewtonTriggersEmergencySOSWorkoutsOnly_isWristDetectionEnabled_newtonEligibility_confirmationDelegate_completion___block_invoke_609(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[SOSUtilities setNewtonTriggersEmergencySOSWorkoutsOnly:isWristDetectionEnabled:newtonEligibility:confirmationDelegate:completion:]_block_invoke";
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "%s - confirmed", &v4, 0xCu);
  }

  [*(a1 + 40) setNewtonTriggersEmergencySOSWorkouts:*(a1 + 48)];
  return (*(*(a1 + 32) + 16))();
}

+ (BOOL)isSmallScreen
{
  if (isSmallScreen_onceToken != -1)
  {
    +[SOSUtilities isSmallScreen];
  }

  return isSmallScreen_isSmallScreen;
}

void __29__SOSUtilities_isSmallScreen__block_invoke()
{
  v6 = [getUIScreenClass() mainScreen];
  [v6 nativeBounds];
  v1 = v0;
  [v6 scale];
  v3 = v2;
  v4 = [v6 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (!v5 && v1 / v3 == 568.0)
  {
    isSmallScreen_isSmallScreen = 1;
  }
}

+ (id)phoneAssetName
{
  v3 = +[SOSUtilities canTriggerSOSWithVolumeLockHold];
  v4 = MEMORY[0x277CCACA8];
  if (v3)
  {
    mainScreen = [getUIScreenClass() mainScreen];
    [mainScreen scale];
    v7 = [v4 stringWithFormat:@"home_hold@%dx", v6];

    if (+[SOSUtilities deviceHasHomeButton])
    {
      goto LABEL_12;
    }

    v8 = MEMORY[0x277CCACA8];
    if ([self deviceHasDynamicIsland])
    {
      v9 = @"slot_";
    }

    else
    {
      v9 = &stru_2875C9CD8;
    }

    mainScreen2 = [getUIScreenClass() mainScreen];
    [mainScreen2 scale];
    v12 = [v8 stringWithFormat:@"%@homeless_hold@%dx", v9, v11];

    v7 = v12;
  }

  else
  {
    if ([self isSmallScreen])
    {
      v13 = @"top_";
    }

    else
    {
      v13 = &stru_2875C9CD8;
    }

    sOSTriggerClickCount = [self SOSTriggerClickCount];
    mainScreen2 = [getUIScreenClass() mainScreen];
    [mainScreen2 scale];
    v7 = [v4 stringWithFormat:@"home_%@%ld@%dx", v13, sOSTriggerClickCount, v15];
  }

LABEL_12:

  return v7;
}

+ (void)getAssetViewForPhoneWithCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  phoneAssetName = [self phoneAssetName];
  v6 = sos_default_log(phoneAssetName);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = phoneAssetName;
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "Loading SOSTriggerAnimation asset %@", &buf, 0xCu);
  }

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 URLForResource:phoneAssetName withExtension:@"caar"];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v9 = get_UICAPackageViewClass_softClass;
  v20 = get_UICAPackageViewClass_softClass;
  if (!get_UICAPackageViewClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v22 = __get_UICAPackageViewClass_block_invoke;
    v23 = &unk_279B53140;
    v24 = &v17;
    __get_UICAPackageViewClass_block_invoke(&buf);
    v9 = v18[3];
  }

  v10 = v9;
  _Block_object_dispose(&v17, 8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__SOSUtilities_getAssetViewForPhoneWithCompletion___block_invoke;
  v13[3] = &unk_279B53408;
  v15 = completionCopy;
  selfCopy = self;
  v14 = phoneAssetName;
  v11 = completionCopy;
  v12 = phoneAssetName;
  [v9 loadPackageViewWithContentsOfURL:v8 publishedObjectViewClassMap:0 completion:v13];
}

void __51__SOSUtilities_getAssetViewForPhoneWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    UIImageClass = getUIImageClass();
    v9 = a1[4];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [UIImageClass imageNamed:v9 inBundle:v10 withConfiguration:0];
    v12 = [v11 imageWithRenderingMode:2];

    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v13 = getUIImageViewClass_softClass;
    v24 = getUIImageViewClass_softClass;
    if (!getUIImageViewClass_softClass)
    {
      *&v19.a = MEMORY[0x277D85DD0];
      *&v19.b = 3221225472;
      *&v19.c = __getUIImageViewClass_block_invoke;
      *&v19.d = &unk_279B53140;
      *&v19.tx = &v21;
      __getUIImageViewClass_block_invoke(&v19);
      v13 = v22[3];
    }

    v14 = v13;
    _Block_object_dispose(&v21, 8);
    v7 = [[v13 alloc] initWithImage:v12];
  }

  v15 = [getUIScreenClass() mainScreen];
  [v15 scale];
  v17 = 1.0 / v16;

  v18 = *(MEMORY[0x277CBF2C0] + 16);
  *&v19.a = *MEMORY[0x277CBF2C0];
  *&v19.c = v18;
  *&v19.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformScale(&v20, &v19, v17, v17);
  v19 = v20;
  [v7 setTransform:&v19];
  (*(a1[5] + 16))();
}

+ (NSString)phoneTriggerAnimationFooterDescription
{
  if ([self canTriggerSOSWithVolumeLockHold])
  {
    autoCallRequiresSIM = [self autoCallRequiresSIM];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (autoCallRequiresSIM)
    {
      v5 = @"PHONE_TRIGGER_ANIMATION_VOLUME_LOCK_HOLD_FOOTER_REQUIRE_SIM";
    }

    else
    {
      v5 = @"PHONE_TRIGGER_ANIMATION_VOLUME_LOCK_HOLD_FOOTER";
    }
  }

  else
  {
    v6 = +[SOSUtilities SOSSelectableTriggerMechanismCapability];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v6 == 2)
    {
      v5 = @"PHONE_TRIGGER_ANIMATION_INDIA_CLICKS_FOOTER";
    }

    else
    {
      v5 = @"PHONE_TRIGGER_ANIMATION_FIVE_CLICKS_FOOTER";
    }
  }

  v7 = [v4 localizedStringForKey:v5 value:&stru_2875C9CD8 table:0];

  return v7;
}

+ (id)watchAssetNameWithCrownOrientationOnRightSide:(BOOL)side layoutLeftToRight:(BOOL)right
{
  v4 = @"crownLeft";
  if (side)
  {
    v4 = @"crownRight";
  }

  v5 = @"RTL";
  if (right)
  {
    v5 = @"LTR";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%@", @"watch", v4, v5];
}

+ (id)getAssetViewForWatchWithCrownOrientationOnRightSide:(BOOL)side layoutLeftToRight:(BOOL)right tintColor:(id)color
{
  rightCopy = right;
  sideCopy = side;
  colorCopy = color;
  v9 = [self watchAssetNameWithCrownOrientationOnRightSide:sideCopy layoutLeftToRight:rightCopy];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [getUIImageClass() imageNamed:v9 inBundle:v10 withConfiguration:0];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v12 = getSOSUIAnimatingSpriteImageViewClass_softClass;
  v25 = getSOSUIAnimatingSpriteImageViewClass_softClass;
  if (!getSOSUIAnimatingSpriteImageViewClass_softClass)
  {
    *&v20.a = MEMORY[0x277D85DD0];
    *&v20.b = 3221225472;
    *&v20.c = __getSOSUIAnimatingSpriteImageViewClass_block_invoke;
    *&v20.d = &unk_279B53140;
    *&v20.tx = &v22;
    __getSOSUIAnimatingSpriteImageViewClass_block_invoke(&v20);
    v12 = v23[3];
  }

  v13 = v12;
  _Block_object_dispose(&v22, 8);
  v14 = [[v12 alloc] initWithFrame:{0.0, 0.0, 320.0, 320.0}];
  mainScreen = [getUIScreenClass() mainScreen];
  [mainScreen scale];
  v17 = 1.0 / v16;

  v18 = *(MEMORY[0x277CBF2C0] + 16);
  *&v20.a = *MEMORY[0x277CBF2C0];
  *&v20.c = v18;
  *&v20.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformScale(&v21, &v20, v17, v17);
  v20 = v21;
  [v14 setTransform:&v20];
  [v14 setTintColor:colorCopy];
  [v14 setSpriteFrameCount:350];
  [v14 setSpriteColumnCount:18];
  [v14 setSpriteImage:v11];
  [v14 startAnimating];

  return v14;
}

+ (NSString)watchTriggerAnimationFooterDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"WATCH_TRIGGER_ANIMATION_FOOTER" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (int64_t)mostRecentlyUsedSOSTriggerMechanism
{
  v2 = +[SOSUtilities mostRecentSOSStatus];
  v3 = v2;
  if (v2)
  {
    trigger = [v2 trigger];
  }

  else
  {
    trigger = 0;
  }

  return trigger;
}

+ (BOOL)isIndiaSKU
{
  v2 = MGCopyAnswer();
  v3 = [v2 isEqualToString:@"HN"];

  return v3;
}

+ (BOOL)canTriggerSOSWithSideButton
{
  currentSOSTriggerMechanism = [self currentSOSTriggerMechanism];
  if (currentSOSTriggerMechanism != 1)
  {
    LOBYTE(currentSOSTriggerMechanism) = [self currentSOSTriggerMechanism] == 2;
  }

  return currentSOSTriggerMechanism;
}

+ (int64_t)SOSTriggerClickCount
{
  currentSOSTriggerMechanism = [self currentSOSTriggerMechanism];
  v3 = 5;
  if (currentSOSTriggerMechanism != 2)
  {
    v3 = 0;
  }

  if (currentSOSTriggerMechanism == 1)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

+ (NSString)callWithSideButtonTitleDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CALL_WITH_SIDE_BUTTON" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)callWithSideButtonFooterDescription
{
  if ([self SOSSelectableTriggerMechanismCapability] == 4)
  {
    v3 = @"ALSO_WORKS_THREE_CLICKS_FOOTER";
LABEL_5:
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_2875C9CD8 table:0];

    goto LABEL_7;
  }

  if ([self SOSSelectableTriggerMechanismCapability] == 3)
  {
    v3 = @"ALSO_WORKS_FIVE_CLICKS_FOOTER";
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (BOOL)_potentialForAccessibilityConflict
{
  if ([self deviceHasHomeButton])
  {
    return 0;
  }

  return [self mustAllowThreeClickTrigger];
}

+ (BOOL)_hasAccessibilityConflict
{
  v2 = _AXSTripleClickCopyOptions();
  v3 = [v2 count] != 0;

  return v3;
}

+ (void)setCallWithSideButtonPresses:(BOOL)presses presentErrorAlertOnViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  if (!presses)
  {
    [self setCallWithSideButtonPressesEnabled:0];
    if ([self _potentialForAccessibilityConflict])
    {
      selfCopy2 = self;
      v26 = 3;
LABEL_9:
      [selfCopy2 setCurrentSOSTriggerMechanism:v26];
    }

LABEL_10:
    completionCopy[2](completionCopy, 1);
    goto LABEL_11;
  }

  if (![self _potentialForAccessibilityConflict] || !objc_msgSend(self, "_hasAccessibilityConflict"))
  {
    [self setCallWithSideButtonPressesEnabled:1];
    if ([self _potentialForAccessibilityConflict])
    {
      selfCopy2 = self;
      v26 = 1;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  UIAlertControllerClass = getUIAlertControllerClass();
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"TURN_OFF_ACCESSIBILITY_TITLE" value:&stru_2875C9CD8 table:0];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"TURN_OFF_ACCESSIBILITY_MESSAGE" value:&stru_2875C9CD8 table:0];
  v15 = [UIAlertControllerClass alertControllerWithTitle:v12 message:v14 preferredStyle:1];

  UIAlertActionClass = getUIAlertActionClass();
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"TURN_OFF_ACCESSIBILITY_CANCEL" value:&stru_2875C9CD8 table:0];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __90__SOSUtilities_setCallWithSideButtonPresses_presentErrorAlertOnViewController_completion___block_invoke;
  v34[3] = &unk_279B53340;
  v19 = completionCopy;
  v35 = v19;
  v20 = [UIAlertActionClass actionWithTitle:v18 style:1 handler:v34];
  [v15 addAction:v20];

  v21 = getUIAlertActionClass();
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"TURN_OFF_ACCESSIBILITY_CONTINUE" value:&stru_2875C9CD8 table:0];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __90__SOSUtilities_setCallWithSideButtonPresses_presentErrorAlertOnViewController_completion___block_invoke_2;
  v30 = &unk_279B532C8;
  selfCopy3 = self;
  pressesCopy = presses;
  v31 = v19;
  v24 = [v21 actionWithTitle:v23 style:0 handler:&v27];
  [v15 addAction:{v24, v27, v28, v29, v30}];

  [controllerCopy presentViewController:v15 animated:1 completion:0];
LABEL_11:
}

uint64_t __90__SOSUtilities_setCallWithSideButtonPresses_presentErrorAlertOnViewController_completion___block_invoke_2(uint64_t a1)
{
  _AXSSetTripleClickOptions();
  [*(a1 + 40) setCallWithSideButtonPressesEnabled:*(a1 + 48)];
  [*(a1 + 40) setCurrentSOSTriggerMechanism:1];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

+ (void)setNumberOfSideButtonPresses:(int64_t)presses
{
  mustAllowThreeClickTrigger = [self mustAllowThreeClickTrigger];
  if (mustAllowThreeClickTrigger && (mustAllowThreeClickTrigger = [self isDeviceD2xOrNewer], !mustAllowThreeClickTrigger))
  {
    if ((presses - 3) > 0xFFFFFFFFFFFFFFFDLL)
    {

      [self setCurrentSOSTriggerMechanism:presses];
    }

    else
    {
      v7 = sos_default_log(mustAllowThreeClickTrigger);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[SOSUtilities setNumberOfSideButtonPresses:];
      }
    }
  }

  else
  {
    v6 = sos_default_log(mustAllowThreeClickTrigger);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[SOSUtilities setNumberOfSideButtonPresses:];
    }
  }
}

+ (int64_t)currentSOSTriggerMechanism
{
  v3 = [self _sosPrefsValueForKey:@"SOSTriggerMechanismKey"];
  integerValue = [v3 integerValue];

  if (integerValue > 1)
  {
    if (integerValue == 2)
    {
      if (![self mustAllowThreeClickTrigger])
      {
        return 2;
      }

      isDeviceD2xOrNewer = [self isDeviceD2xOrNewer];
    }

    else
    {
      if (integerValue != 3)
      {
        return integerValue;
      }

      if (([self isDeviceD2xOrNewer] & 1) == 0)
      {
LABEL_11:
        if ([self mustAllowThreeClickTrigger])
        {
          keyExistsAndHasValidFormat = 0;
          AppIntegerValue = CFPreferencesGetAppIntegerValue(@"SBNumberOfPressesToTriggerSOS", @"com.apple.springboard", &keyExistsAndHasValidFormat);
          if (keyExistsAndHasValidFormat)
          {
            defaultSOSTriggerMechanism = [self SOSTriggerMechanismForClickCount:AppIntegerValue];
            if ([self isDeviceD2xOrNewer])
            {
              v7 = [self _sosPrefsValueForKey:@"SOSTriggerMechanismD2xKey"];
              integerValue2 = [v7 integerValue];

              if (!integerValue2)
              {
                [self _setSOSPrefsValue:&unk_2875D2938 forKey:@"SOSTriggerMechanismD2xKey"];
                if ([self mustAllowThreeClickTrigger])
                {
                  if (defaultSOSTriggerMechanism == 2)
                  {
                    defaultSOSTriggerMechanism = 1;
                    goto LABEL_25;
                  }
                }
              }
            }

            if (defaultSOSTriggerMechanism)
            {
              goto LABEL_25;
            }
          }
        }

        defaultSOSTriggerMechanism = [self defaultSOSTriggerMechanism];
        goto LABEL_25;
      }

      if ([self _potentialForAccessibilityConflict])
      {
        return 3;
      }

      isDeviceD2xOrNewer = [self mustAllowThreeClickTrigger];
    }

    if (isDeviceD2xOrNewer)
    {
      defaultSOSTriggerMechanism = 1;
    }

    else
    {
      defaultSOSTriggerMechanism = 2;
    }

LABEL_25:
    if (integerValue == defaultSOSTriggerMechanism)
    {
      return integerValue;
    }

    goto LABEL_26;
  }

  if (!integerValue)
  {
    goto LABEL_11;
  }

  if (integerValue == 1)
  {
    if ([self mustAllowThreeClickTrigger])
    {
      return 1;
    }

    defaultSOSTriggerMechanism = 2;
LABEL_26:
    [self setCurrentSOSTriggerMechanism:defaultSOSTriggerMechanism];
    return defaultSOSTriggerMechanism;
  }

  return integerValue;
}

+ (void)setCurrentSOSTriggerMechanism:(int64_t)mechanism
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:mechanism];
  [self _setSOSPrefsValue:v4 forKey:@"SOSTriggerMechanismKey"];

  +[SOSManager notifySOSTriggerMechanismChanged];
}

+ (int64_t)SOSTriggerMechanismForClickCount:(int64_t)count
{
  if (count == 3)
  {
    return 1;
  }

  else
  {
    return 2 * (count == 5);
  }
}

+ (int64_t)defaultSOSTriggerMechanism
{
  if ([self mustAllowThreeClickTrigger])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (BOOL)deviceHasDynamicIsland
{
  if (deviceHasDynamicIsland_onceToken != -1)
  {
    +[SOSUtilities deviceHasDynamicIsland];
  }

  return deviceHasDynamicIsland___supportsDynamicIsland;
}

uint64_t __38__SOSUtilities_deviceHasDynamicIsland__block_invoke(uint64_t a1, uint64_t a2)
{
  result = MGGetBoolAnswer();
  deviceHasDynamicIsland___supportsDynamicIsland = result;
  return result;
}

+ (BOOL)isDeviceD2xOrNewer
{
  v16 = *MEMORY[0x277D85DE8];
  v15 = 414393924;
  v14 = xmmword_2643605F0;
  v13 = -996295886;
  v12 = xmmword_264360604;
  v11 = 897736383;
  v10 = xmmword_264360618;
  v9 = -453987047;
  v8 = xmmword_26436062C;
  v7 = -121925081;
  v6 = xmmword_264360640;
  v5 = -1431778695;
  v4 = xmmword_264360654;
  if (MGIsDeviceOneOfType())
  {
    return 1;
  }

  else
  {
    return [self deviceHasHomeButton] ^ 1;
  }
}

+ (BOOL)deviceHasHomeButton
{
  if (deviceHasHomeButton_onceToken != -1)
  {
    +[SOSUtilities deviceHasHomeButton];
  }

  return deviceHasHomeButton_deviceHasHomeButton;
}

uint64_t __35__SOSUtilities_deviceHasHomeButton__block_invoke()
{
  result = MGGetSInt32Answer();
  deviceHasHomeButton_deviceHasHomeButton = result != 2;
  return result;
}

+ (int64_t)SOSSelectableTriggerMechanismCapability
{
  mustAllowThreeClickTrigger = [self mustAllowThreeClickTrigger];
  isDeviceD2xOrNewer = [self isDeviceD2xOrNewer];
  v5 = 1;
  if (mustAllowThreeClickTrigger)
  {
    v5 = 2;
  }

  v6 = 3;
  if (mustAllowThreeClickTrigger)
  {
    v6 = 4;
  }

  if (isDeviceD2xOrNewer)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

+ (BOOL)shouldForceDisableAutoCallForClient:(id)client
{
  clientCopy = client;
  v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.InCallService"];
  v6 = [v5 BOOLForKey:@"shouldDisableSOSAutoCall"];

  if (v6)
  {
    LOBYTE(v7) = 1;
  }

  else if ([self autoCallRequiresSIM])
  {
    v7 = [self hasActiveSIMForClient:clientCopy] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (BOOL)hasActiveSIMForClient:(id)client
{
  v45 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v39 = 0;
  v4 = [clientCopy getSubscriptionInfoWithError:&v39];
  v5 = v39;
  subscriptions = v5;
  if (v4)
  {

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    subscriptions = [v4 subscriptions];
    v7 = [subscriptions countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (!v7)
    {
      v27 = 0;
      goto LABEL_38;
    }

    v8 = v7;
    v30 = v4;
    v9 = 0;
    v10 = *v36;
    v32 = *MEMORY[0x277CC3ED8];
    v31 = clientCopy;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(subscriptions);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v34 = v9;
        v13 = [clientCopy getSIMStatus:v12 error:&v34];
        v14 = v34;

        if (v14)
        {
          v16 = sos_default_log(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v41 = v12;
            _os_log_error_impl(&dword_264323000, v16, OS_LOG_TYPE_ERROR, "Error retrieving SIM status for context: %@", buf, 0xCu);
          }

          v9 = v14;
        }

        else
        {
          v17 = [v32 isEqualToString:v13];
          if (v17)
          {
            v16 = sos_default_log(v17);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v41 = v12;
              _os_log_impl(&dword_264323000, v16, OS_LOG_TYPE_DEFAULT, "kCTSIMSupportSIMStatusNotInserted for context: %@", buf, 0xCu);
            }

            v9 = 0;
          }

          else
          {
            v33 = 0;
            v16 = [clientCopy getSimLabel:v12 error:&v33];
            v18 = v33;
            v9 = v18;
            if (v16)
            {
              v19 = v18 == 0;
            }

            else
            {
              v19 = 0;
            }

            if (v19)
            {
              v21 = subscriptions;
              unique_id = [v16 unique_id];
              v23 = [unique_id isEqualToString:@"00000000-0000-0000-0000-000000000000"];

              v20 = sos_default_log(v24);
              v25 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
              if ((v23 & 1) == 0)
              {
                if (v25)
                {
                  unique_id2 = [v16 unique_id];
                  *buf = 138412546;
                  v41 = unique_id2;
                  v42 = 2112;
                  v43 = v12;
                  _os_log_impl(&dword_264323000, v20, OS_LOG_TYPE_DEFAULT, "Successfully retrieved SIM label %@ for context: %@", buf, 0x16u);
                }

                v27 = 1;
                v4 = v30;
                subscriptions = v21;
                clientCopy = v31;
                goto LABEL_36;
              }

              if (v25)
              {
                unique_id3 = [v16 unique_id];
                *buf = 138412546;
                v41 = unique_id3;
                v42 = 2112;
                v43 = v12;
                _os_log_impl(&dword_264323000, v20, OS_LOG_TYPE_DEFAULT, "retrieved SIM label %@ for context: %@", buf, 0x16u);
              }

              subscriptions = v21;
              clientCopy = v31;
            }

            else
            {
              v20 = sos_default_log(v18);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v41 = v12;
                _os_log_error_impl(&dword_264323000, v20, OS_LOG_TYPE_ERROR, "Error retrieving SIM label for context: %@", buf, 0xCu);
              }
            }
          }
        }
      }

      v8 = [subscriptions countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v27 = 0;
    v13 = v9;
    v4 = v30;
  }

  else
  {
    if (!v5)
    {
      v27 = 0;
      goto LABEL_39;
    }

    v13 = sos_default_log(v5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[SOSUtilities hasActiveSIMForClient:];
    }

    v27 = 0;
  }

LABEL_36:

LABEL_38:
LABEL_39:

  return v27;
}

+ (BOOL)hasEmergencyContacts
{
  v2 = objc_alloc_init(SOSContactsManager);
  sOSContactsExist = [(SOSContactsManager *)v2 SOSContactsExist];

  return sOSContactsExist;
}

+ (NSString)emergencyContactsSectionDescription
{
  if ([self hasEmergencyContacts])
  {
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"EMERGENCY_CONTACTS" value:&stru_2875C9CD8 table:0];
  }

  else
  {
    v3 = &stru_2875C9CD8;
  }

  return v3;
}

+ (NSString)emergencyContactsEditDescription
{
  hasEmergencyContacts = [self hasEmergencyContacts];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (hasEmergencyContacts)
  {
    v5 = @"OPEN_HEALTH_HAS_EMERGENCY_CONTACTS";
  }

  else
  {
    v5 = @"OPEN_HEALTH_NO_EMERGENCY_CONTACTS";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:0];

  return v6;
}

+ (NSString)emergencyContactsFooterDescription
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SOS_PRIVACY_EMERGENCY_CONTACTS" value:&stru_2875C9CD8 table:0];

  v5 = MEMORY[0x277CCACA8];
  emergencyContactsFooterLinkTitle = [self emergencyContactsFooterLinkTitle];
  v7 = [v5 stringWithFormat:v4, emergencyContactsFooterLinkTitle];

  return v7;
}

+ (NSString)emergencyContactsFooterLinkTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_PRIVACY_LINK" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (void)openEmergencyContactsFooterLinkOnViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [getOBPrivacyPresenterClass() presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.emergencysos"];
  [v4 setPresentingViewController:controllerCopy];

  [v4 present];
}

+ (NSString)callWithHoldTitleDescription
{
  [self clawReleaseToCallSupport];
  v3 = v2;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3 <= 1.0)
  {
    v6 = @"CALL_WITH_HOLD";
  }

  else
  {
    v6 = @"CALL_WITH_HOLD_AND_RELEASE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_2875C9CD8 table:0];

  return v7;
}

+ (NSString)callWithHoldFooterDescription
{
  [self clawReleaseToCallSupport];
  v3 = v2;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3 <= 1.0)
  {
    v6 = @"CALL_WITH_HOLD_FOOTER";
  }

  else
  {
    v6 = @"CALL_WITH_HOLD_AND_RELESE_FOOTER";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_2875C9CD8 table:0];

  return v7;
}

+ (BOOL)isCallWithVolumeLockHoldEnabled
{
  v3 = [self _sosPrefsValueForKey:@"SOSCallWithVolumeLockHoldKey"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else if ([self isDeviceD2xOrNewer])
  {
    v6 = [self _sosPrefsValueForKey:@"SOSAutomaticCallCountdownEnabledKey"];
    if (v6)
    {
      v7 = [self _sosPrefsValueForKey:@"SOSAutoCallD2xKey"];
      integerValue = [v7 integerValue];

      if (integerValue || ([self _setSOSPrefsValue:&unk_2875D2938 forKey:@"SOSAutoCallD2xKey"], (objc_msgSend(self, "mustAllowThreeClickTrigger") & 1) != 0) || (objc_msgSend(v6, "BOOLValue") & 1) != 0)
      {
        bOOLValue = [v6 BOOLValue];
      }

      else
      {
        bOOLValue = 1;
        [self setCallWithVolumeLockHoldEnabled:1];
      }
    }

    else
    {
      bOOLValue = 1;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (void)setCallWithVolumeLockHoldEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [SOSCoreAnalyticsReporter reportSOSAutomaticCallCountdownEnabled:?];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  [self _setSOSPrefsValue:v5 forKey:@"SOSCallWithVolumeLockHoldKey"];
}

+ (double)clawReleaseToCallSupport
{
  v2 = [self _sosPrefsValueForKey:@"SOSClawReleaseToCallSupportKey"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 2.0;
  }

  return v5;
}

+ (NSString)pressSelectionGroupTitleDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"NUMBER_OF_CLICKS" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)threePressesSelectionTitleDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"THREE_CLICKS" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)fivePressesSelectionTitleDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"FIVE_CLICKS" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)callWithPressesTitleDescription
{
  if ([self currentSOSTriggerMechanism] == 1 || objc_msgSend(self, "mustAllowThreeClickTrigger") && (objc_msgSend(self, "isDeviceD2xOrNewer") & 1) != 0)
  {
    v3 = @"CALL_WITH_THREE_PRESSES";
  }

  else
  {
    v3 = @"CALL_WITH_FIVE_PRESSES";
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:&stru_2875C9CD8 table:0];

  return v5;
}

+ (NSString)callWithPressesFooterDescription
{
  if ([self currentSOSTriggerMechanism] == 1 || objc_msgSend(self, "mustAllowThreeClickTrigger") && (objc_msgSend(self, "isDeviceD2xOrNewer") & 1) != 0)
  {
    v3 = @"CALL_WITH_THREE_PRESSES_FOOTER";
  }

  else
  {
    v3 = @"CALL_WITH_FIVE_PRESSES_FOOTER";
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:&stru_2875C9CD8 table:0];

  return v5;
}

+ (BOOL)isCallWithSideButtonPressesEnabled
{
  mustAllowThreeClickTrigger = [self mustAllowThreeClickTrigger];
  v4 = [self _sosPrefsValueForKey:@"SOSCallWithSideButtonPressesKey"];
  v5 = [self _sosPrefsValueForKey:@"SOSAutomaticCallCountdownEnabledKey"];
  if (![self _potentialForAccessibilityConflict] || !objc_msgSend(self, "_hasAccessibilityConflict"))
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      if (!v5)
      {
        goto LABEL_9;
      }

      v6 = v5;
    }

    mustAllowThreeClickTrigger = [v6 BOOLValue];
    goto LABEL_9;
  }

  [self setCallWithSideButtonPressesEnabled:0];
  mustAllowThreeClickTrigger = 0;
LABEL_9:
  if ([self isDeviceD2xOrNewer] && (objc_msgSend(self, "mustAllowThreeClickTrigger") & 1) == 0 && (objc_msgSend(self, "hasMultiPressResetLogicRun") & 1) == 0)
  {
    [self setHasMultiPressResetLogicRun:1];
    if (mustAllowThreeClickTrigger)
    {
      [self setCallWithSideButtonPressesEnabled:0];
      v7 = 1;
    }

    else
    {
      v7 = 4;
    }

    [self setSettingsResetFollowUpState:v7];
    LOBYTE(mustAllowThreeClickTrigger) = 0;
  }

  return mustAllowThreeClickTrigger;
}

+ (void)setCallWithSideButtonPressesEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:enabled];
  [self _setSOSPrefsValue:v4 forKey:@"SOSCallWithSideButtonPressesKey"];
}

+ (NSString)autoCallTitleDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"AUTO_CALL" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)autoCallFooterDescription
{
  autoCallRequiresSIM = [self autoCallRequiresSIM];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (autoCallRequiresSIM)
  {
    v5 = @"AUTO_CALL_FOOTER_REQUIRE_SIM";
  }

  else
  {
    v5 = @"AUTO_CALL_FOOTER";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:0];

  return v6;
}

+ (BOOL)isAutomaticCallCountdownEnabled
{
  if ([self isDeviceD2xOrNewer])
  {

    return [self isCallWithVolumeLockHoldEnabled];
  }

  else
  {

    return [self isCallWithSideButtonPressesEnabled];
  }
}

+ (void)setAutomaticCallCountdownEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([self isDeviceD2xOrNewer])
  {
    [self setCallWithVolumeLockHoldEnabled:enabledCopy];
  }

  else
  {
    [self setCallWithSideButtonPressesEnabled:enabledCopy];
  }

  v5 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  [self _setSOSPrefsValue:v5 forKey:@"SOSAutomaticCallCountdownEnabledKey"];
}

+ (NSString)countdownSoundTitleDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ALARM_SOUND" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)countdownSoundFooterDescription
{
  [self clawReleaseToCallSupport];
  if (v3 == 0.0)
  {
    v4 = @"ALARM_SOUND_FOOTER";
  }

  else if ([self currentSOSTriggerMechanism] == 1 || objc_msgSend(self, "mustAllowThreeClickTrigger") && (objc_msgSend(self, "isDeviceD2xOrNewer") & 1) != 0)
  {
    v4 = @"ALARM_SOUND_RELEASE_TO_CALL_THREE_PRESSES_FOOTER";
  }

  else
  {
    v4 = @"ALARM_SOUND_RELEASE_TO_CALL_FIVE_PRESSES_FOOTER";
  }

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:&stru_2875C9CD8 table:0];

  return v6;
}

+ (BOOL)shouldPlayAudioDuringCountdown
{
  shouldSilenceSOSFlow = [self shouldSilenceSOSFlow];
  if (shouldSilenceSOSFlow)
  {
    v4 = sos_default_log(shouldSilenceSOSFlow);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSUtilities,SOS flow is silenced so audio during countdown is off", v9, 2u);
    }

    return 0;
  }

  else
  {
    v6 = [self _sosPrefsValueForKey:@"SOSPlayAudioDuringCountdownKey"];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = MEMORY[0x277CBEC38];
    }

    bOOLValue = [v7 BOOLValue];

    return bOOLValue;
  }
}

+ (BOOL)setShouldPlayAudioDuringCountdown:(BOOL)countdown
{
  countdownCopy = countdown;
  shouldSilenceSOSFlow = [self shouldSilenceSOSFlow];
  v6 = shouldSilenceSOSFlow;
  if (shouldSilenceSOSFlow)
  {
    v7 = sos_default_log(shouldSilenceSOSFlow);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[SOSUtilities setShouldPlayAudioDuringCountdown:];
    }
  }

  else
  {
    [self setPlayAudioDuringCountdown:countdownCopy];
  }

  return v6 ^ 1;
}

+ (void)setPlayAudioDuringCountdown:(BOOL)countdown
{
  countdownCopy = countdown;
  [SOSCoreAnalyticsReporter reportSOSShouldPlayAudioDuringCountdown:?];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:countdownCopy];
  [self _setSOSPrefsValue:v5 forKey:@"SOSPlayAudioDuringCountdownKey"];
}

+ (NSString)accidentalCallNotificationTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ACCIDENTAL_SOS_NOTIF_TITLE" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)accidentalCallNotificationBody
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateStyle:0];
  [v4 setTimeStyle:1];
  v5 = [v4 stringFromDate:date];
  v6 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v6 setLocalizedDateFormatFromTemplate:@"j"];
  v7 = [v6 stringFromDate:date];
  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  invertedSet = [decimalDigitCharacterSet invertedSet];

  v28 = v7;
  v10 = [v7 componentsSeparatedByCharactersInSet:invertedSet];
  v11 = [v10 componentsJoinedByString:&stru_2875C9CD8];

  v12 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v13 = [v12 numberFromString:v11];

  mostRecentlyUsedSOSTriggerMechanism = [self mostRecentlyUsedSOSTriggerMechanism];
  intValue = [v13 intValue];
  v29 = invertedSet;
  if (mostRecentlyUsedSOSTriggerMechanism == 1)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (intValue == 1)
    {
      v18 = @"ACCIDENTAL_SOS_NOTIF_BODY_THREE_PRESSES_WITH_TIME_%@_SINGULAR";
    }

    else
    {
      v18 = @"ACCIDENTAL_SOS_NOTIF_BODY_THREE_PRESSES_WITH_TIME_%@_PLURAL";
    }
  }

  else
  {
    if (mostRecentlyUsedSOSTriggerMechanism != 2)
    {
      +[SOSUtilities clawReleaseToCallSupport];
      v20 = v19;
      v27 = MEMORY[0x277CCACA8];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = v21;
      if (intValue == 1)
      {
        v22 = v28;
        if (v20 == 0.0)
        {
          v23 = @"ACCIDENTAL_SOS_NOTIF_BODY_CLAW_WITH_TIME_%@_SINGULAR";
        }

        else
        {
          v23 = @"ACCIDENTAL_SOS_NOTIF_BODY_CLAW_RELEASE_WITH_TIME_%@_SINGULAR";
        }
      }

      else
      {
        v22 = v28;
        if (v20 == 0.0)
        {
          v23 = @"ACCIDENTAL_SOS_NOTIF_BODY_CLAW_WITH_TIME_%@_PLURAL";
        }

        else
        {
          v23 = @"ACCIDENTAL_SOS_NOTIF_BODY_CLAW_RELEASE_WITH_TIME_%@_PLURAL";
        }
      }

      v24 = [v21 localizedStringForKey:v23 value:&stru_2875C9CD8 table:0];
      v25 = [v27 stringWithFormat:v24, v5];
      goto LABEL_18;
    }

    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (intValue == 1)
    {
      v18 = @"ACCIDENTAL_SOS_NOTIF_BODY_FIVE_PRESSES_WITH_TIME_%@_SINGULAR";
    }

    else
    {
      v18 = @"ACCIDENTAL_SOS_NOTIF_BODY_FIVE_PRESSES_WITH_TIME_%@_PLURAL";
    }
  }

  v24 = [v17 localizedStringForKey:v18 value:&stru_2875C9CD8 table:0];
  v25 = [v16 stringWithFormat:v24, v5];
  v22 = v28;
LABEL_18:

  return v25;
}

+ (void)setShortSOSNotificationDisplayTimestamp
{
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
  [self _setSOSPrefsValue:v3 forKey:@"SOSNotificationDisplayedTimestampKey"];
}

+ (double)getShortSOSNotificationDisplayTimestamp
{
  v2 = [self _sosPrefsValueForKey:@"SOSNotificationDisplayedTimestampKey"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

+ (NSString)accidentalCallFeedbackAssistantLegalText
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ACCIDENTAL_SOS_FEEDBACK_ASSISTANT_LEGAL_TEXT" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (BOOL)hasMultiPressResetLogicRun
{
  v3 = [self _sosPrefsValueForKey:@"SOSMultiPressResetKey"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    [self setHasMultiPressResetLogicRun:0];
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (void)setHasMultiPressResetLogicRun:(BOOL)run
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:run];
  [self _setSOSPrefsValue:v4 forKey:@"SOSMultiPressResetKey"];
}

+ (int64_t)getSettingsResetFollowUpState
{
  v3 = [self _sosPrefsValueForKey:@"SOSSettingsResetFollowUpStateKey"];
  v4 = v3;
  if (v3)
  {
    intValue = [v3 intValue];
  }

  else if ([self hasMultiPressResetLogicRun])
  {
    intValue = 4;
    [self setSettingsResetFollowUpState:4];
  }

  else
  {
    [self setSettingsResetFollowUpState:0];
    intValue = 0;
  }

  return intValue;
}

+ (void)setSettingsResetFollowUpState:(int64_t)state
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = sos_default_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    stateCopy = state;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSUtilities,setting FollowUp state to %ld", &v8, 0xCu);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  [self _setSOSPrefsValue:v6 forKey:@"SOSSettingsResetFollowUpStateKey"];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SOSSettingsResetFollowUpStateChangedNotification", 0, 0, 1u);
}

+ (NSString)settingsResetFollowUpTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_SETTINGS_RESET_FOLLOW_UP_TITLE" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)settingsResetFollowUpBody
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_SETTINGS_RESET_FOLLOW_UP_BODY" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)settingsResetFollowUpRedirectActionTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_SETTINGS_RESET_FOLLOW_UP_REDIRECT_ACTION_TITLE" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)settingsResetFollowUpClearActionTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_SETTINGS_RESET_FOLLOW_UP_CLEAR_TITLE" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (BOOL)isAllowedToMessageSOSContacts
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [self _sosPrefsValueForKey:@"SOSAllowedToMessageSOSContactsKey"];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEC28];
  }

  isActivePairedDeviceTinker = [self isActivePairedDeviceTinker];
  if (isActivePairedDeviceTinker)
  {
    v6 = sos_default_log(isActivePairedDeviceTinker);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "This is Tinker config, allowing to message SOS contacts", v11, 2u);
    }

    v4 = MEMORY[0x277CBEC38];
  }

  v7 = sos_default_log(isActivePairedDeviceTinker);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [v4 BOOLValue];
    v11[0] = 67109120;
    v11[1] = bOOLValue;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "isAllowedToMessageSOSContacts: %d", v11, 8u);
  }

  bOOLValue2 = [v4 BOOLValue];
  return bOOLValue2;
}

+ (void)setAllowedToMessageSOSContacts:(BOOL)contacts
{
  contactsCopy = contacts;
  v11 = *MEMORY[0x277D85DE8];
  v5 = sos_default_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = contactsCopy;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "setAllowedToMessageSOSContacts: %d", v10, 8u);
  }

  isActivePairedDeviceTinker = [self isActivePairedDeviceTinker];
  if (isActivePairedDeviceTinker)
  {
    v7 = sos_default_log(isActivePairedDeviceTinker);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "Tinker config, ignoring setAllowedToMessageSOSContacts", v10, 2u);
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:contactsCopy];
    [self _setSOSPrefsValue:v8 forKey:@"SOSAllowedToMessageSOSContactsKey"];

    [self _synchronizeSOSPrefs];
    v7 = objc_opt_new();
    v9 = [MEMORY[0x277CBEB98] setWithObject:@"SOSAllowedToMessageSOSContactsKey"];
    [v7 synchronizeUserDefaultsDomain:@"com.apple.SOS" keys:v9];
  }
}

+ (BOOL)shouldSilenceSOSFlow
{
  if (![objc_opt_class() _isInternalDevice])
  {
    return 0;
  }

  v3 = [self _sosPrefsValueForKey:@"SOSSilenceSOSFlowKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)isActivePairedDeviceTinker
{
  activeDevice = [self activeDevice];
  v3 = [activeDevice valueForProperty:*MEMORY[0x277D37BB0]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)activeDeviceSupportsNewton
{
  activeDevice = [self activeDevice];
  v3 = [activeDevice supportsCapability:2528173432];

  return v3;
}

+ (BOOL)activeDeviceSupportsNewtonWorkoutsOnly
{
  activeDeviceSupportsNewton = [self activeDeviceSupportsNewton];
  if (activeDeviceSupportsNewton)
  {
    activeDevice = [self activeDevice];
    v5 = [activeDevice supportsCapability:2554371099];

    LOBYTE(activeDeviceSupportsNewton) = v5;
  }

  return activeDeviceSupportsNewton;
}

+ (id)activeDevice
{
  mEMORY[0x277D37B50] = [MEMORY[0x277D37B50] sharedInstance];
  getActivePairedDeviceIncludingAltAccount = [mEMORY[0x277D37B50] getActivePairedDeviceIncludingAltAccount];

  v4 = [getActivePairedDeviceIncludingAltAccount valueForProperty:*MEMORY[0x277D2BB30]];
  if ([v4 BOOLValue])
  {
    v5 = 0;
  }

  else
  {
    v5 = getActivePairedDeviceIncludingAltAccount;
  }

  v6 = v5;

  return v5;
}

+ (NSString)stewieGroupTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"STEWIE_ANIMATION_GROUP" value:&stru_2875C9CD8 table:@"Localizable-stewie"];

  return v3;
}

+ (UIImage)stewieGroupAsset
{
  UIImageClass = getUIImageClass();
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [UIImageClass imageNamed:@"stewie-diagram" inBundle:v3 withConfiguration:0];

  return v4;
}

+ (NSString)stewieDemoCellText
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"STEWIE_DEMO_CELL_TEXT" value:&stru_2875C9CD8 table:@"Localizable-stewie"];

  return v3;
}

+ (NSString)stewieDemoButtonTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"STEWIE_DEMO_BUTTON_TITLE" value:&stru_2875C9CD8 table:@"Localizable-stewie"];

  return v3;
}

+ (NSString)stewieFooterDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"STEWIE_FOOTNOTE_DESCRIPTION_%@" value:&stru_2875C9CD8 table:@"Localizable-stewie"];
  stewieFooterLinkTitle = [self stewieFooterLinkTitle];
  v7 = [v3 localizedStringWithFormat:v5, stewieFooterLinkTitle];

  return v7;
}

+ (NSString)stewieFooterLinkTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"STEWIE_FOOTNOTE_LINK" value:&stru_2875C9CD8 table:@"Localizable-stewie"];

  return v3;
}

+ (void)presentStewieDemoUnavailableAlertOnViewController:(id)controller reason:(int64_t)reason
{
  v5 = MEMORY[0x277CCA8D8];
  controllerCopy = controller;
  v7 = [v5 bundleForClass:objc_opt_class()];
  v16 = [v7 localizedStringForKey:@"STEWIE_DEMO_ERROR_ALERT_TITLE" value:&stru_2875C9CD8 table:@"Localizable-stewie"];

  if (reason > 0xB)
  {
    v10 = 0;
  }

  else
  {
    v8 = *(&off_279B536E8 + reason);
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:v8 value:&stru_2875C9CD8 table:@"Localizable-stewie"];
  }

  v11 = [getUIAlertControllerClass() alertControllerWithTitle:v16 message:v10 preferredStyle:1];
  UIAlertActionClass = getUIAlertActionClass();
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"STEWIE_DEMO_ERROR_ALERT_OK" value:&stru_2875C9CD8 table:@"Localizable-stewie"];
  v15 = [UIAlertActionClass actionWithTitle:v14 style:1 handler:&__block_literal_global_880];
  [v11 addAction:v15];

  [controllerCopy presentViewController:v11 animated:1 completion:0];
}

+ (void)presentStewieLearnMoreLinkOnViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [getOBPrivacyPresenterClass() presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.safetyFeatures"];
  [v4 setPresentingViewController:controllerCopy];

  [v4 present];
}

+ (BOOL)kappaTriggersEmergencySOSTinker
{
  _SOSDomainAccessor = [self _SOSDomainAccessor];
  v3 = [_SOSDomainAccessor objectForKey:@"SOSKappaTriggersEmergencySOSKeyTinker"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEC38];
  }

  if ([v4 BOOLValue])
  {
    v5 = _os_feature_enabled_impl();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)_setKappaTriggersEmergencySOS:(BOOL)s
{
  sCopy = s;
  v14 = *MEMORY[0x277D85DE8];
  kappaTriggersEmergencySOS = [self kappaTriggersEmergencySOS];
  v6 = kappaTriggersEmergencySOS;
  v7 = sos_default_log(kappaTriggersEmergencySOS);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = v6;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "kappa status change: %d", buf, 8u);
  }

  if (v6 == sCopy)
  {
    v10 = sos_default_log(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "new kappa status same as the current store kappa status: returning", buf, 2u);
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:sCopy];
    [self _setSOSPrefsValue:v9 forKey:@"SOSKappaTriggersEmergencySOSKey"];

    v10 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__SOSUtilities__setKappaTriggersEmergencySOS___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    dispatch_async(v10, block);
  }
}

void __46__SOSUtilities__setKappaTriggersEmergencySOS___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _synchronizeSOSPrefs];
  v1 = objc_opt_new();
  v2 = [MEMORY[0x277CBEB98] setWithObject:@"SOSKappaTriggersEmergencySOSKey"];
  [v1 synchronizeUserDefaultsDomain:@"com.apple.SOS" keys:v2];

  v3 = MEMORY[0x277D85CD0];

  dispatch_async(v3, &__block_literal_global_887);
}

void __46__SOSUtilities__setKappaTriggersEmergencySOS___block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SOSKappaStateChangedNotification", 0, 0, 1u);
}

+ (void)_setKappaTriggersEmergencySOSTinker:(BOOL)tinker
{
  tinkerCopy = tinker;
  v15 = *MEMORY[0x277D85DE8];
  kappaTriggersEmergencySOSTinker = [self kappaTriggersEmergencySOSTinker];
  v6 = kappaTriggersEmergencySOSTinker;
  v7 = sos_default_log(kappaTriggersEmergencySOSTinker);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v14 = v6;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "kappa status change: %d", buf, 8u);
  }

  if (v6 == tinkerCopy)
  {
    v11 = sos_default_log(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v11, OS_LOG_TYPE_DEFAULT, "new kappa status same as the current store kappa status: returning", buf, 2u);
    }
  }

  else
  {
    _SOSDomainAccessor = [self _SOSDomainAccessor];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:tinkerCopy];
    [_SOSDomainAccessor setObject:v10 forKey:@"SOSKappaTriggersEmergencySOSKeyTinker"];

    v11 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SOSUtilities__setKappaTriggersEmergencySOSTinker___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    dispatch_async(v11, block);
  }
}

void __52__SOSUtilities__setKappaTriggersEmergencySOSTinker___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _SOSDomainAccessor];
  v2 = [v1 synchronize];

  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CBEB98] setWithObject:@"SOSKappaTriggersEmergencySOSKeyTinker"];
  [v3 synchronizeNanoDomain:@"com.apple.SOS" keys:v4];

  v5 = MEMORY[0x277D85CD0];

  dispatch_async(v5, &__block_literal_global_889);
}

void __52__SOSUtilities__setKappaTriggersEmergencySOSTinker___block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SOSKappaStateChangedNotification", 0, 0, 1u);
}

+ (void)setKappaTriggersEmergencySOS:(BOOL)s isWristDetectionEnabled:(BOOL)enabled confirmationDelegate:(id)delegate completion:(id)completion
{
  enabledCopy = enabled;
  sCopy = s;
  v37 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  completionCopy = completion;
  v12 = sos_default_log(completionCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v34 = sCopy;
    *&v34[4] = 1024;
    *&v34[6] = enabledCopy;
    v35 = 2112;
    v36 = delegateCopy;
    _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "setKappaTriggersEmergencySOS:%d isWristDetectionEnabled:%d confirmationDelegate:%@", buf, 0x18u);
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __101__SOSUtilities_setKappaTriggersEmergencySOS_isWristDetectionEnabled_confirmationDelegate_completion___block_invoke;
  v32[3] = &__block_descriptor_40_e8_v12__0B8l;
  v32[4] = self;
  v13 = MEMORY[0x266735F90](v32);
  v14 = sos_default_log(v13);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (sCopy)
  {
    if (v15)
    {
      *buf = 136315138;
      *v34 = "+[SOSUtilities setKappaTriggersEmergencySOS:isWristDetectionEnabled:confirmationDelegate:completion:]";
      _os_log_impl(&dword_264323000, v14, OS_LOG_TYPE_DEFAULT, "%s - no confirmation needed", buf, 0xCu);
    }

    v13[2](v13, 1);
    completionCopy[2](completionCopy, 1);
  }

  else
  {
    v24 = completionCopy;
    if (v15)
    {
      *buf = 136315138;
      *v34 = "+[SOSUtilities setKappaTriggersEmergencySOS:isWristDetectionEnabled:confirmationDelegate:completion:]";
      _os_log_impl(&dword_264323000, v14, OS_LOG_TYPE_DEFAULT, "%s - presenting 'are you sure?' confirmation", buf, 0xCu);
    }

    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v16 localizedStringForKey:@"SOS_KAPPA_CONFIRM_TITLE" value:&stru_2875C9CD8 table:@"Localizable-kappa"];

    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v17 localizedStringForKey:@"SOS_KAPPA_CONFIRM_DETAIL_WATCH" value:&stru_2875C9CD8 table:@"Localizable-kappa"];

    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"SOS_KAPPA_CONFIRM_CANCEL" value:&stru_2875C9CD8 table:@"Localizable-kappa"];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __101__SOSUtilities_setKappaTriggersEmergencySOS_isWristDetectionEnabled_confirmationDelegate_completion___block_invoke_904;
    v29[3] = &unk_279B53470;
    v30 = v13;
    v31 = completionCopy;
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"SOS_KAPPA_CONFIRM_OK" value:&stru_2875C9CD8 table:@"Localizable-kappa"];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __101__SOSUtilities_setKappaTriggersEmergencySOS_isWristDetectionEnabled_confirmationDelegate_completion___block_invoke_908;
    v25[3] = &unk_279B53498;
    v26 = v30;
    v28 = 0;
    v27 = v31;
    [delegateCopy presentConfirmationWithTitle:v23 message:v22 cancelTitle:v19 cancelHandler:v29 confirmTitle:v21 confirmHandler:v25];

    completionCopy = v24;
  }
}

uint64_t __101__SOSUtilities_setKappaTriggersEmergencySOS_isWristDetectionEnabled_confirmationDelegate_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) isActivePairedDeviceTinker];
  v5 = *(a1 + 32);
  if (v4)
  {

    return [v5 _setKappaTriggersEmergencySOSTinker:a2];
  }

  else
  {

    return [v5 _setKappaTriggersEmergencySOS:a2];
  }
}

uint64_t __101__SOSUtilities_setKappaTriggersEmergencySOS_isWristDetectionEnabled_confirmationDelegate_completion___block_invoke_904(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[SOSUtilities setKappaTriggersEmergencySOS:isWristDetectionEnabled:confirmationDelegate:completion:]_block_invoke";
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "%s - canceled", &v4, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  return (*(*(a1 + 40) + 16))();
}

uint64_t __101__SOSUtilities_setKappaTriggersEmergencySOS_isWristDetectionEnabled_confirmationDelegate_completion___block_invoke_908(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[SOSUtilities setKappaTriggersEmergencySOS:isWristDetectionEnabled:confirmationDelegate:completion:]_block_invoke";
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "%s - confirmed", &v4, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  return (*(*(a1 + 40) + 16))();
}

+ (void)setKappaTriggersEmergencySOS:(BOOL)s confirmationDelegate:(id)delegate completion:(id)completion
{
  sCopy = s;
  v29 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  completionCopy = completion;
  v10 = sos_default_log(completionCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!sCopy)
  {
    if (v11)
    {
      *buf = 136315138;
      v28 = "+[SOSUtilities setKappaTriggersEmergencySOS:confirmationDelegate:completion:]";
      _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "%s - presenting 'are you sure?' confirmation", buf, 0xCu);
    }

    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v12 localizedStringForKey:@"SOS_KAPPA_CONFIRM_TITLE" value:&stru_2875C9CD8 table:@"Localizable-kappa"];

    if ([self isKappaDetectionSupportedOnPhone] && (objc_msgSend(self, "isKappaDetectionSupportedOnActiveWatch") & 1) != 0)
    {
      v13 = @"SOS_KAPPA_CONFIRM_DETAIL_BOTH";
    }

    else if ([self isKappaDetectionSupportedOnPhone])
    {
      v13 = @"SOS_KAPPA_CONFIRM_DETAIL_PHONE";
    }

    else
    {
      if (![self isKappaDetectionSupportedOnActiveWatch])
      {
        v15 = &stru_2875C9CD8;
        goto LABEL_15;
      }

      v13 = @"SOS_KAPPA_CONFIRM_DETAIL_WATCH";
    }

    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:v13 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

LABEL_15:
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"SOS_KAPPA_CONFIRM_CANCEL" value:&stru_2875C9CD8 table:@"Localizable-kappa"];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __77__SOSUtilities_setKappaTriggersEmergencySOS_confirmationDelegate_completion___block_invoke;
    v24[3] = &unk_279B534C0;
    selfCopy = self;
    v25 = completionCopy;
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"SOS_KAPPA_CONFIRM_OK" value:&stru_2875C9CD8 table:@"Localizable-kappa"];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __77__SOSUtilities_setKappaTriggersEmergencySOS_confirmationDelegate_completion___block_invoke_915;
    v21[3] = &unk_279B534C0;
    selfCopy2 = self;
    v22 = v25;
    [delegateCopy presentConfirmationWithTitle:v20 message:v15 cancelTitle:v17 cancelHandler:v24 confirmTitle:v19 confirmHandler:v21];

    goto LABEL_16;
  }

  if (v11)
  {
    *buf = 136315138;
    v28 = "+[SOSUtilities setKappaTriggersEmergencySOS:confirmationDelegate:completion:]";
    _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "%s - no confirmation needed", buf, 0xCu);
  }

  [self _setKappaTriggersEmergencySOS:1];
  (*(completionCopy + 2))(completionCopy, 1);
LABEL_16:
}

uint64_t __77__SOSUtilities_setKappaTriggersEmergencySOS_confirmationDelegate_completion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[SOSUtilities setKappaTriggersEmergencySOS:confirmationDelegate:completion:]_block_invoke";
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "%s - canceled", &v4, 0xCu);
  }

  [*(a1 + 40) _setKappaTriggersEmergencySOS:1];
  return (*(*(a1 + 32) + 16))();
}

uint64_t __77__SOSUtilities_setKappaTriggersEmergencySOS_confirmationDelegate_completion___block_invoke_915(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[SOSUtilities setKappaTriggersEmergencySOS:confirmationDelegate:completion:]_block_invoke";
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "%s - confirmed", &v4, 0xCu);
  }

  [*(a1 + 40) _setKappaTriggersEmergencySOS:0];
  return (*(*(a1 + 32) + 16))();
}

+ (BOOL)isKappaDetectionSupportedOnCurrentDevice
{
  if (isKappaDetectionSupportedOnCurrentDevice_onceToken != -1)
  {
    +[SOSUtilities isKappaDetectionSupportedOnCurrentDevice];
  }

  return isKappaDetectionSupportedOnCurrentDevice___kappaDetectionAvailable;
}

void __56__SOSUtilities_isKappaDetectionSupportedOnCurrentDevice__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((MGGetBoolAnswer() & 1) != 0 || (v2 = _os_feature_enabled_impl(), v2))
  {
    v2 = +[SOSUtilities isKappaVisible];
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  isKappaDetectionSupportedOnCurrentDevice___kappaDetectionAvailable = v2;
  v4 = sos_default_log(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109632;
    v5[1] = v3;
    v6 = 1024;
    v7 = +[SOSUtilities isKappaVisible];
    v8 = 1024;
    v9 = isKappaDetectionSupportedOnCurrentDevice___kappaDetectionAvailable;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "_kappaDetectionAvailableOnCurrentDevice: deviceSupportsKappa:%{BOOL}d / isKappaVisible:%{BOOL}d => kappaDetectionAvailable:%{BOOL}d", v5, 0x14u);
  }
}

+ (BOOL)isKappaDetectionSupportedOnActiveWatch
{
  activeDevice = [self activeDevice];
  v3 = [activeDevice supportsCapability:2300382856];

  return v3;
}

+ (NSString)crashDetectionPhoneFooterDesription
{
  isKappaUnmasked = [self isKappaUnmasked];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isKappaUnmasked)
  {
    v5 = @"SOS_KAPPA_FOOTER_PHONE";
  }

  else
  {
    v5 = @"SOS_KAPPA_FOOTER_PHONE_MASKED";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v6;
}

+ (NSString)crashDetectionPhoneWatchFooterDescription
{
  isKappaUnmasked = [self isKappaUnmasked];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isKappaUnmasked)
  {
    v5 = @"SOS_KAPPA_FOOTER_BOTH";
  }

  else
  {
    v5 = @"SOS_KAPPA_FOOTER_BOTH_MASKED";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v6;
}

+ (NSString)crashDetectionTitleDescription
{
  if ([self isKappaUnmasked])
  {
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"SOS_KAPPA_TITLE" value:&stru_2875C9CD8 table:@"Localizable-kappa"];
  }

  else
  {
    v3 = @"Kappa";
  }

  return v3;
}

+ (NSString)crashDetectionSwitchDescription
{
  isKappaUnmasked = [self isKappaUnmasked];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isKappaUnmasked)
  {
    v5 = @"SOS_KAPPA_CELL_TITLE";
  }

  else
  {
    v5 = @"SOS_KAPPA_CELL_TITLE_MASKED";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v6;
}

+ (NSString)crashDetectionWatchFooterDescription
{
  isKappaUnmasked = [self isKappaUnmasked];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isKappaUnmasked)
  {
    v5 = @"SOS_KAPPA_FOOTER_WATCH";
  }

  else
  {
    v5 = @"SOS_KAPPA_FOOTER_WATCH_MASKED";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v6;
}

+ (NSString)crashDetectionFooterLinkDescription
{
  isKappaUnmasked = [self isKappaUnmasked];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isKappaUnmasked)
  {
    v5 = @"SOS_KAPPA_FOOTER_LINK";
  }

  else
  {
    v5 = @"SOS_KAPPA_FOOTER_LINK_MASKED";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v6;
}

+ (NSString)crashDetectionThirdPartyDescription
{
  isKappaUnmasked = [self isKappaUnmasked];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isKappaUnmasked)
  {
    v5 = @"SOS_KAPPA_THIRD_PARTY_CELL_TITLE";
  }

  else
  {
    v5 = @"SOS_KAPPA_THIRD_PARTY_CELL_TITLE_MASKED";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v6;
}

+ (NSString)crashDetectionThirdPartyCellTitle
{
  isKappaUnmasked = [self isKappaUnmasked];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isKappaUnmasked)
  {
    v5 = @"SOS_KAPPA_THIRD_PARTY_CELL_TITLE";
  }

  else
  {
    v5 = @"SOS_KAPPA_THIRD_PARTY_CELL_TITLE_MASKED";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v6;
}

+ (NSString)crashDetectionThirdPartyNavigationTitle
{
  isKappaUnmasked = [self isKappaUnmasked];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isKappaUnmasked)
  {
    v5 = @"SOS_KAPPA_THIRD_PARTY_NAVIGATION_TITLE";
  }

  else
  {
    v5 = @"SOS_KAPPA_THIRD_PARTY_CELL_TITLE_MASKED";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v6;
}

+ (NSString)crashDetectionThirdPartyAlertTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_KAPPA_THIRD_PARTY_ALERT_TITLE" value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v3;
}

+ (NSString)crashDetectionThirdPartyFooterDescriptionPhone
{
  isKappaUnmasked = [self isKappaUnmasked];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isKappaUnmasked)
  {
    v5 = @"SOS_KAPPA_THIRD_PARTY_FOOTER_PHONE";
  }

  else
  {
    v5 = @"SOS_KAPPA_THIRD_PARTY_FOOTER_PHONE_MASKED";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v6;
}

+ (NSString)crashDetectionThirdPartyFooterDescriptionWatch
{
  isKappaUnmasked = [self isKappaUnmasked];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isKappaUnmasked)
  {
    v5 = @"SOS_KAPPA_THIRD_PARTY_FOOTER_WATCH";
  }

  else
  {
    v5 = @"SOS_KAPPA_THIRD_PARTY_FOOTER_WATCH_MASKED";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v6;
}

+ (NSString)crashDetectionThirdPartyShareDisableDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_KAPPA_THIRD_PARTY_SHARE_DISABLE" value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v3;
}

+ (NSString)crashDetectionThirdPartyAppWithAccessDescription
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_KAPPA_THIRD_PARTY_APP_WITH_ACCESS" value:&stru_2875C9CD8 table:@"Localizable-kappa"];

  return v3;
}

+ (id)crashDetectionThirdPartyStopSharingDescriptionPhoneWithAppName:(id)name
{
  nameCopy = name;
  isKappaUnmasked = [self isKappaUnmasked];
  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = v7;
  if (isKappaUnmasked)
  {
    v9 = @"KAPPA_THIRD_PARTY_STOP_SHARING_TITLE_PHONE";
  }

  else
  {
    v9 = @"KAPPA_THIRD_PARTY_STOP_SHARING_TITLE_PHONE_MASKED";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_2875C9CD8 table:@"Localizable-kappa"];
  nameCopy = [v6 stringWithFormat:v10, nameCopy];

  return nameCopy;
}

+ (id)crashDetectionThirdPartyStopSharingDescriptionWatchWithAppName:(id)name
{
  nameCopy = name;
  isKappaUnmasked = [self isKappaUnmasked];
  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = v7;
  if (isKappaUnmasked)
  {
    v9 = @"KAPPA_THIRD_PARTY_STOP_SHARING_TITLE_WATCH";
  }

  else
  {
    v9 = @"KAPPA_THIRD_PARTY_STOP_SHARING_TITLE_WATCH_MASKED";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_2875C9CD8 table:@"Localizable-kappa"];
  nameCopy = [v6 stringWithFormat:v10, nameCopy];

  return nameCopy;
}

+ (id)crashDetectionThirdPartyBundleId
{
  crashDetectionManager = [getSABundleManagerClass() crashDetectionManager];
  approvedApps = [crashDetectionManager approvedApps];
  firstObject = [approvedApps firstObject];
  bundleId = [firstObject bundleId];

  return bundleId;
}

+ (BOOL)shouldShowCrashDetectionThirdPartySettingsForPairedDevice:(BOOL)device
{
  if (![self isDeviceWatchUsePairedDevice:device])
  {
    getKappaThirdPartyApp = [self getKappaThirdPartyApp];
    crashDetectionThirdPartyBundleId = getKappaThirdPartyApp;
    if (getKappaThirdPartyApp)
    {
      v12 = [getKappaThirdPartyApp deviceType] == 0;
      goto LABEL_12;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  crashDetectionThirdPartyBundleId = [self crashDetectionThirdPartyBundleId];
  if (!crashDetectionThirdPartyBundleId)
  {
    goto LABEL_11;
  }

  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

  sharedDeviceConnection = [getACXDeviceConnectionClass() sharedDeviceConnection];
  v15 = 0;
  v8 = [sharedDeviceConnection getApplicationIsInstalled:0 withBundleID:crashDetectionThirdPartyBundleId onPairedDevice:getActivePairedDevice error:&v15];
  v9 = v15;

  if (v9)
  {
    v11 = sos_default_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[SOSUtilities shouldShowCrashDetectionThirdPartySettingsForPairedDevice:];
    }
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_11;
  }

  v12 = 1;
LABEL_12:

  return v12;
}

+ (void)thirdPartySettingsSpecifiersForRemoteDeviceWithTarget:(id)target forApp:(id)app disableAction:(SEL)action withCompletion:(id)completion
{
  targetCopy = target;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __106__SOSUtilities_thirdPartySettingsSpecifiersForRemoteDeviceWithTarget_forApp_disableAction_withCompletion___block_invoke;
  v14[3] = &unk_279B534E8;
  v15 = targetCopy;
  v16 = completionCopy;
  selfCopy = self;
  actionCopy = action;
  v12 = targetCopy;
  v13 = completionCopy;
  [app getLocalizedNameForPairedDeviceWithCompletion:v14];
}

void __106__SOSUtilities_thirdPartySettingsSpecifiersForRemoteDeviceWithTarget_forApp_disableAction_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) thirdPartySettingsSpecifiersWithTarget:*(a1 + 32) displayName:a2 forPairedDevice:1 disableAction:*(a1 + 56)];
  (*(v2 + 16))(v2, v3);
}

+ (id)thirdPartySettingsSpecifiersWithTarget:(id)target forApp:(id)app disableAction:(SEL)action
{
  targetCopy = target;
  getLocalizedName = [app getLocalizedName];
  v10 = [self thirdPartySettingsSpecifiersWithTarget:targetCopy displayName:getLocalizedName forPairedDevice:0 disableAction:action];

  return v10;
}

+ (id)thirdPartySettingsSpecifiersWithTarget:(id)target displayName:(id)name forPairedDevice:(BOOL)device disableAction:(SEL)action
{
  deviceCopy = device;
  targetCopy = target;
  nameCopy = name;
  v11 = objc_opt_new();
  v12 = [getPSSpecifierClass() groupSpecifierWithID:@"SHARE_CRASH_EVENT_GROUP"];
  if ([self isDeviceWatchUsePairedDevice:deviceCopy])
  {
    +[SOSUtilities crashDetectionThirdPartyFooterDescriptionWatch];
  }

  else
  {
    +[SOSUtilities crashDetectionThirdPartyFooterDescriptionPhone];
  }
  v13 = ;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v14 = getPSFooterTextGroupKeySymbolLoc_ptr;
  v35 = getPSFooterTextGroupKeySymbolLoc_ptr;
  if (!getPSFooterTextGroupKeySymbolLoc_ptr)
  {
    v15 = PreferencesLibrary();
    v33[3] = dlsym(v15, "PSFooterTextGroupKey");
    getPSFooterTextGroupKeySymbolLoc_ptr = v33[3];
    v14 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v14)
  {
    +[SOSUtilities thirdPartySettingsSpecifiersWithTarget:displayName:forPairedDevice:disableAction:];
LABEL_17:
    +[SOSUtilities thirdPartySettingsSpecifiersWithTarget:displayName:forPairedDevice:disableAction:];
    goto LABEL_18;
  }

  [v12 setProperty:v13 forKey:*v14];

  [v11 addObject:v12];
  PSSpecifierClass = getPSSpecifierClass();
  v17 = +[SOSUtilities crashDetectionThirdPartyAppWithAccessDescription];
  v18 = [PSSpecifierClass groupSpecifierWithID:@"SHARE_CRASH_APP_WITH_ACCESS_GROUP" name:v17];

  [v11 addObject:v18];
  v19 = [getPSSpecifierClass() preferenceSpecifierNamed:nameCopy target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v11 ps_addSpecifier:v19 toGroup:v18];
  v20 = [getPSSpecifierClass() groupSpecifierWithID:@"SOS_KAPPA_THIRD_PARTY_APP_DISABLE_GROUP"];
  [v11 ps_addGroup:v20 afterGroup:v18];
  v21 = getPSSpecifierClass();
  v22 = +[SOSUtilities crashDetectionThirdPartyShareDisableDescription];
  v23 = [v21 deleteButtonSpecifierWithName:v22 target:targetCopy action:action];

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v24 = getPSAllowMultilineTitleKeySymbolLoc_ptr;
  v35 = getPSAllowMultilineTitleKeySymbolLoc_ptr;
  if (!getPSAllowMultilineTitleKeySymbolLoc_ptr)
  {
    v25 = PreferencesLibrary();
    v33[3] = dlsym(v25, "PSAllowMultilineTitleKey");
    getPSAllowMultilineTitleKeySymbolLoc_ptr = v33[3];
    v24 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v24)
  {
    goto LABEL_17;
  }

  [v23 setProperty:MEMORY[0x277CBEC38] forKey:*v24];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v26 = getPSAlignmentKeySymbolLoc_ptr;
  v35 = getPSAlignmentKeySymbolLoc_ptr;
  if (!getPSAlignmentKeySymbolLoc_ptr)
  {
    v27 = PreferencesLibrary();
    v33[3] = dlsym(v27, "PSAlignmentKey");
    getPSAlignmentKeySymbolLoc_ptr = v33[3];
    v26 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v26)
  {
LABEL_18:
    +[SOSUtilities thirdPartySettingsSpecifiersWithTarget:displayName:forPairedDevice:disableAction:];
    v30 = v29;
    _Block_object_dispose(&v32, 8);
    _Unwind_Resume(v30);
  }

  [v23 setProperty:&unk_2875D2938 forKey:*v26];
  [v11 ps_addSpecifier:v23 toGroup:v20];

  return v11;
}

+ (__CFBundle)getKappaThirdPartyActiveAppBundle
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = TCCAccessCopyInformation();
  if (v2)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v21;
      v8 = MEMORY[0x277D6C0C8];
      v9 = MEMORY[0x277D6C0D0];
      *&v5 = 138412546;
      v19 = v5;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v12 = [v11 objectForKeyedSubscript:{*v8, v19, v20}];

        v13 = CFBundleGetIdentifier(v12);
        v14 = [v11 objectForKeyedSubscript:*v9];
        bOOLValue = [v14 BOOLValue];

        v17 = sos_default_log(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v19;
          v25 = v13;
          v26 = 1024;
          v27 = bOOLValue;
          _os_log_impl(&dword_264323000, v17, OS_LOG_TYPE_DEFAULT, "KappaThirdParty,getKappaThirdPartyActiveAppBundle, bundleID:%@, grant status: %d", buf, 0x12u);
        }

        if (((v12 != 0) & bOOLValue) != 0)
        {
          break;
        }

        if (v6 == ++v10)
        {
          v6 = [v3 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v12 = 0;
    }
  }

  else
  {
    v3 = sos_default_log(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "KappaThirdParty,getKappaThirdPartyActiveAppBundle, No element registered for the service. Return nil app name", buf, 2u);
    }

    v12 = 0;
  }

  return v12;
}

+ (void)setKappaThirdPartyActiveApp:(BOOL)app presentConfirmationOnViewController:(id)controller completion:(id)completion
{
  appCopy = app;
  completionCopy = completion;
  controllerCopy = controller;
  getKappaThirdPartyApp = [self getKappaThirdPartyApp];
  [self setKappaThirdPartyActive:appCopy forApp:getKappaThirdPartyApp forPairedDevice:0 presentConfirmationOnViewController:controllerCopy completion:completionCopy];
}

+ (void)setKappaThirdPartyActive:(BOOL)active forApp:(id)app forPairedDevice:(BOOL)device presentConfirmationOnViewController:(id)controller completion:(id)completion
{
  deviceCopy = device;
  activeCopy = active;
  appCopy = app;
  controllerCopy = controller;
  completionCopy = completion;
  v15 = completionCopy;
  if (activeCopy)
  {
    v16 = sos_default_log(completionCopy);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v16, OS_LOG_TYPE_DEFAULT, "KappaThirdParty,setKappaThirdPartyActiveApp,the request is invalid", buf, 2u);
    }

    v15[2](v15, 0);
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __111__SOSUtilities_setKappaThirdPartyActive_forApp_forPairedDevice_presentConfirmationOnViewController_completion___block_invoke;
    v20[3] = &unk_279B53538;
    selfCopy = self;
    v25 = deviceCopy;
    v21 = controllerCopy;
    v23 = v15;
    v17 = appCopy;
    v22 = v17;
    v18 = MEMORY[0x266735F90](v20);
    if (deviceCopy)
    {
      [v17 getLocalizedNameForPairedDeviceWithCompletion:v18];
    }

    else
    {
      getLocalizedName = [v17 getLocalizedName];
      (v18)[2](v18, getLocalizedName);
    }
  }
}

void __111__SOSUtilities_setKappaThirdPartyActive_forApp_forPairedDevice_presentConfirmationOnViewController_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = a2;
  if ([v3 isDeviceWatchUsePairedDevice:v4])
  {
    [SOSUtilities crashDetectionThirdPartyStopSharingDescriptionWatchWithAppName:v5];
  }

  else
  {
    [SOSUtilities crashDetectionThirdPartyStopSharingDescriptionPhoneWithAppName:v5];
  }
  v6 = ;

  v7 = *(a1 + 32);
  v8 = +[SOSUtilities crashDetectionThirdPartyAlertTitle];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"KAPPA_THIRD_PARTY_STOP_SHARING_CANCEL" value:&stru_2875C9CD8 table:@"Localizable-kappa"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __111__SOSUtilities_setKappaThirdPartyActive_forApp_forPairedDevice_presentConfirmationOnViewController_completion___block_invoke_2;
  v16[3] = &unk_279B533E0;
  v17 = *(a1 + 48);
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"KAPPA_THIRD_PARTY_STOP_SHARING_CONTINUE" value:&stru_2875C9CD8 table:@"Localizable-kappa"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __111__SOSUtilities_setKappaThirdPartyActive_forApp_forPairedDevice_presentConfirmationOnViewController_completion___block_invoke_1018;
  v13[3] = &unk_279B53510;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  [SOSUtilities presentConfirmationOnViewController:v7 title:v8 message:v6 cancelTitle:v10 cancelHandler:v16 confirmTitle:v12 confirmHandler:v13];
}

uint64_t __111__SOSUtilities_setKappaThirdPartyActive_forApp_forPairedDevice_presentConfirmationOnViewController_completion___block_invoke_2(uint64_t a1)
{
  v2 = sos_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "KappaThirdParty,setKappaThirdPartyActiveApp,No Selected on confirmation alert", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __111__SOSUtilities_setKappaThirdPartyActive_forApp_forPairedDevice_presentConfirmationOnViewController_completion___block_invoke_1018(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v2 = NSSelectorFromString(&cfstr_SetaccessForbu.isa);
  getSAAuthorizationClass();
  if (objc_opt_respondsToSelector())
  {
    v3 = MEMORY[0x277CBEAE8];
    v4 = [getSAAuthorizationClass() methodSignatureForSelector:v2];
    v5 = [v3 invocationWithMethodSignature:v4];

    [v5 setSelector:v2];
    [v5 setTarget:getSAAuthorizationClass()];
    v10 = 0;
    *buf = [*(a1 + 32) bundleId];
    [v5 setArgument:&v10 atIndex:2];
    [v5 setArgument:buf atIndex:3];
    [v5 invoke];
    [v5 getReturnValue:&v11];
  }

  else
  {
    v7 = [*(a1 + 32) bundleId];
    v11 = TCCAccessSetForBundleId() != 0;
  }

  v8 = sos_default_log(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v11;
    _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "KappaThirdParty,setKappaThirdPartyActiveApp,revoking the right to receive kappa data completed with status:%d", buf, 8u);
  }

  return (*(*(a1 + 40) + 16))();
}

+ (BOOL)activeDeviceSupportsMandrake
{
  activeDevice = [self activeDevice];
  v3 = [activeDevice supportsCapability:1262879885];

  return v3;
}

+ (BOOL)activeDeviceHasMandrake
{
  v17 = *MEMORY[0x277D85DE8];
  activeDeviceSupportsMandrake = [self activeDeviceSupportsMandrake];
  if (activeDeviceSupportsMandrake)
  {
    buf[0] = 0;
    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    getActivePairedDeviceExcludingAltAccount = [mEMORY[0x277D2BCF8] getActivePairedDeviceExcludingAltAccount];

    sharedDeviceConnection = [getACXDeviceConnectionClass() sharedDeviceConnection];
    v14 = 0;
    v6 = [sharedDeviceConnection getApplicationIsInstalled:buf withBundleID:@"com.apple.Mandrake" onPairedDevice:getActivePairedDeviceExcludingAltAccount error:&v14];
    v7 = v14;

    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v11 = buf[0];
    }

    else
    {
      v10 = sos_default_log(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[SOSUtilities activeDeviceHasMandrake];
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = sos_mandrake_log(activeDeviceSupportsMandrake);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v11 & 1;
    _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "activeDeviceHasMandrake:%{BOOL}d", buf, 8u);
  }

  return v11 & 1;
}

+ (BOOL)longPressTriggersMandrake
{
  _SOSDomainAccessor = [self _SOSDomainAccessor];
  v3 = [_SOSDomainAccessor objectForKey:@"SOSLongPressTriggersMandrakeKey"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (void)setLongPressTriggersMandrake:(BOOL)mandrake
{
  mandrakeCopy = mandrake;
  _SOSDomainAccessor = [self _SOSDomainAccessor];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:mandrakeCopy];
  [_SOSDomainAccessor setObject:v5 forKey:@"SOSLongPressTriggersMandrakeKey"];

  v6 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SOSUtilities_setLongPressTriggersMandrake___block_invoke;
  block[3] = &unk_279B532A0;
  v9 = _SOSDomainAccessor;
  v7 = _SOSDomainAccessor;
  dispatch_async(v6, block);
}

void __45__SOSUtilities_setLongPressTriggersMandrake___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) synchronize];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CBEB98] setWithObject:@"SOSLongPressTriggersMandrakeKey"];
  [v2 synchronizeNanoDomain:@"com.apple.SOS" keys:v3];

  v4 = MEMORY[0x277D85CD0];

  dispatch_async(v4, &__block_literal_global_1027);
}

void __45__SOSUtilities_setLongPressTriggersMandrake___block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SOSMandrakeStateChangedNotification", 0, 0, 1u);
}

+ (BOOL)isSOSMessagesUrgentAlertingEnabled
{
  if (![self isSOSMessagesUrgentAlertingAvailable])
  {
    return 0;
  }

  v3 = [self _sosPrefsValueForKey:@"SOSMessagesUrgentAlertingEnabledKey"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (void)setSOSMessagesUrgentAlertingEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:enabled];
  [self _setSOSPrefsValue:v4 forKey:@"SOSMessagesUrgentAlertingEnabledKey"];

  v5 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SOSUtilities_setSOSMessagesUrgentAlertingEnabled___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_async(v5, block);
}

void __52__SOSUtilities_setSOSMessagesUrgentAlertingEnabled___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _synchronizeSOSPrefs];
  v1 = objc_opt_new();
  v2 = [MEMORY[0x277CBEB98] setWithObject:@"SOSMessagesUrgentAlertingEnabledKey"];
  [v1 synchronizeUserDefaultsDomain:@"com.apple.SOS" keys:v2];

  v3 = MEMORY[0x277D85CD0];

  dispatch_async(v3, &__block_literal_global_1029);
}

void __52__SOSUtilities_setSOSMessagesUrgentAlertingEnabled___block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SOSMessagesUrgentAlertingStateChangedNotification", 0, 0, 1u);
}

+ (BOOL)sosMessagesUrgentAlertingBypassesMute
{
  if (![self isSOSMessagesUrgentAlertingAvailable])
  {
    return 0;
  }

  v3 = [self _sosPrefsValueForKey:@"SOSMessagesUrgentAlertingBypassesMuteKey"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (void)setSOSMessagesUrgentAlertingBypassesMute:(BOOL)mute
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:mute];
  [self _setSOSPrefsValue:v4 forKey:@"SOSMessagesUrgentAlertingBypassesMuteKey"];

  v5 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SOSUtilities_setSOSMessagesUrgentAlertingBypassesMute___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_async(v5, block);
}

void __57__SOSUtilities_setSOSMessagesUrgentAlertingBypassesMute___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _synchronizeSOSPrefs];
  v1 = objc_opt_new();
  v2 = [MEMORY[0x277CBEB98] setWithObject:@"SOSMessagesUrgentAlertingBypassesMuteKey"];
  [v1 synchronizeUserDefaultsDomain:@"com.apple.SOS" keys:v2];

  v3 = MEMORY[0x277D85CD0];

  dispatch_async(v3, &__block_literal_global_1031);
}

void __57__SOSUtilities_setSOSMessagesUrgentAlertingBypassesMute___block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SOSMessagesUrgentAlertingStateChangedNotification", 0, 0, 1u);
}

+ (NSString)sosLocationSharingLiveActivityAlertTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_LOCATION_SHARING_LIVE_ACTIVITY_ALERT_TITLE" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)sosLocationSharingLiveActivityAlertBody
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_LOCATION_SHARING_LIVE_ACTIVITY_ALERT_BODY" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (NSString)sosLocationSharingLiveActivityDetail
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_LOCATION_SHARING_LIVE_ACTIVITY_DETAIL" value:&stru_2875C9CD8 table:0];

  return v3;
}

+ (id)sosLocationBundle
{
  if (sosLocationBundle_onceToken != -1)
  {
    +[SOSUtilities sosLocationBundle];
  }

  v3 = sosLocationBundle___bundle;

  return v3;
}

void __33__SOSUtilities_sosLocationBundle__block_invoke()
{
  v17 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [v0 URLsForDirectory:5 inDomains:8];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = [*(*(&v12 + 1) + 8 * v6) URLByAppendingPathComponent:{@"LocationBundles", v12}];
      v8 = [v7 URLByAppendingPathComponent:@"Emergency SOS.bundle"];
      v9 = [MEMORY[0x277CCA8D8] bundleWithURL:v8];
      v10 = sosLocationBundle___bundle;
      sosLocationBundle___bundle = v9;

      v11 = sosLocationBundle___bundle;
      if (v11)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

+ (id)fetchSOSStatusWithKey:(id)key
{
  v20[3] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = [self _sosPrefsValueForKey:keyCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CCAAC8];
    v7 = objc_alloc(MEMORY[0x277CBEB98]);
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
    v9 = [v7 initWithArray:v8];
    v19 = 0;
    v10 = [v6 unarchivedObjectOfClasses:v9 fromData:v5 error:&v19];
    v11 = v19;

    if (v10)
    {
      isValid = [v10 isValid];
      v14 = isValid;
      v15 = sos_default_log(isValid);
      v16 = v15;
      if ((v14 & 1) == 0)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          +[SOSUtilities fetchSOSStatusWithKey:];
        }

        [self _setSOSPrefsValue:0 forKey:keyCopy];
        v17 = 0;
        goto LABEL_15;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        +[SOSUtilities fetchSOSStatusWithKey:];
      }
    }

    else
    {
      v16 = sos_default_log(v12);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[SOSUtilities fetchSOSStatusWithKey:];
      }
    }

    v17 = v10;
LABEL_15:

    goto LABEL_16;
  }

  v11 = sos_default_log(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SOSUtilities fetchSOSStatusWithKey:v11];
  }

  v17 = 0;
LABEL_16:

  return v17;
}

+ (void)setSOSStatus:(id)status withKey:(id)key
{
  statusCopy = status;
  keyCopy = key;
  v14 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:statusCopy requiringSecureCoding:1 error:&v14];
  v9 = v14;
  v10 = sos_default_log(v9);
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[SOSUtilities setSOSStatus:withKey:];
    }

    [self _setSOSPrefsValue:v8 forKey:keyCopy];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[SOSUtilities setSOSStatus:withKey:];
    }
  }

  v12 = dispatch_get_global_queue(2, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __37__SOSUtilities_setSOSStatus_withKey___block_invoke;
  v13[3] = &__block_descriptor_40_e5_v8__0l;
  v13[4] = self;
  dispatch_async(v12, v13);
}

+ (BOOL)isMessagesAppInstalled
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [defaultWorkspace applicationIsInstalled:@"com.apple.MobileSMS"];

  return v3;
}

+ (BOOL)isMessagesHandlingSMS
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v4 = defaultWorkspace;
    if (defaultWorkspace)
    {
      v5 = [defaultWorkspace canChangeDefaultAppForCategory:10];
      if (v5)
      {
        v17 = 0;
        v6 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.MobileSMS" allowPlaceholder:0 error:&v17];
        v7 = v17;
        v8 = v7;
        if (v6)
        {
          defaultWorkspace2 = [MEMORY[0x277CC1E80] defaultWorkspace];
          v16 = v8;
          v10 = [defaultWorkspace2 defaultApplicationForCategory:10 error:&v16];
          v11 = v16;

          v12 = [v10 isEqual:v6];
          v13 = sos_default_log(v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v19 = "+[SOSUtilities isMessagesHandlingSMS]";
            v20 = 1024;
            LODWORD(v21) = v12;
            _os_log_impl(&dword_264323000, v13, OS_LOG_TYPE_DEFAULT, "%s - %d", buf, 0x12u);
          }

          v8 = v11;
        }

        else
        {
          v10 = sos_default_log(v7);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v19 = "+[SOSUtilities isMessagesHandlingSMS]";
            v20 = 2112;
            v21 = v8;
            _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "%s - Can't find application record for Messages, error %@", buf, 0x16u);
          }

          LOBYTE(v12) = 0;
        }

        goto LABEL_21;
      }

      v8 = sos_default_log(v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v19 = "+[SOSUtilities isMessagesHandlingSMS]";
        v14 = "%s - Can't change default app so behaving as if Messages is the default";
        goto LABEL_15;
      }
    }

    else
    {
      v8 = sos_default_log(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v19 = "+[SOSUtilities isMessagesHandlingSMS]";
        v14 = "%s - assuming YES";
LABEL_15:
        _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
      }
    }

    LOBYTE(v12) = 1;
LABEL_21:

    goto LABEL_22;
  }

  v4 = sos_default_log(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "+[SOSUtilities isMessagesHandlingSMS]";
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "%s - FF is off", buf, 0xCu);
  }

  LOBYTE(v12) = 1;
LABEL_22:

  return v12;
}

+ (BOOL)_isCarryDevice
{
  v2 = CFPreferencesCopyAppValue(@"ExperimentGroup", @"com.apple.da");
  v3 = [v2 isEqualToString:@"walkabout"];

  return v3;
}

+ (id)_overrideForDefaultsKey:(id)key expectedClass:(Class)class defaultValue:(id)value
{
  v20 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  if (![self _isInternalDevice])
  {
    goto LABEL_9;
  }

  v9 = [SOSUtilities _sosPrefsValueForKey:keyCopy];
  v10 = sos_config_log(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138543874;
    v15 = keyCopy;
    v16 = 2114;
    v17 = valueCopy;
    v18 = 2114;
    v19 = v9;
    _os_log_debug_impl(&dword_264323000, v10, OS_LOG_TYPE_DEBUG, "#debugOverride - _overrideForDefaultsKey:%{public}@ (default %{public}@, testing %{public}@)", &v14, 0x20u);
  }

  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {

LABEL_9:
    v9 = valueCopy;
    goto LABEL_10;
  }

  v12 = sos_config_log(isKindOfClass);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543874;
    v15 = keyCopy;
    v16 = 2114;
    v17 = valueCopy;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "#debugOverride - _overrideForDefaultsKey:%{public}@ (%{public}@ => %{public}@)", &v14, 0x20u);
  }

LABEL_10:

  return v9;
}

+ (id)numberOverrideForDefaultsKey:(id)key defaultValue:(id)value
{
  valueCopy = value;
  keyCopy = key;
  v8 = [self _overrideForDefaultsKey:keyCopy expectedClass:objc_opt_class() defaultValue:valueCopy];

  return v8;
}

+ (BOOL)BOOLOverrideForDefaultsKey:(id)key defaultValue:(BOOL)value
{
  valueCopy = value;
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithBool:valueCopy];
  v9 = [self numberOverrideForDefaultsKey:keyCopy defaultValue:v8];

  LOBYTE(v6) = [v9 BOOLValue];
  return v6;
}

+ (id)stringOverrideForDefaultsKey:(id)key defaultValue:(id)value
{
  valueCopy = value;
  keyCopy = key;
  v8 = [self _overrideForDefaultsKey:keyCopy expectedClass:objc_opt_class() defaultValue:valueCopy];

  return v8;
}

+ (BOOL)isMountStateTrackingEnabled
{
  v2 = [self _sosPrefsValueForKey:@"SOSMountStateTrackingKey"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (double)mountProbabilityThreshold
{
  v2 = [self _sosPrefsValueForKey:@"SOSMountProbabilityThresholdKey"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.75;
  }

  return v5;
}

+ (void)thirdPartySettingsSpecifiersWithTarget:displayName:forPairedDevice:disableAction:.cold.1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  +[SOSUtilities activeDeviceHasMandrake];
}

+ (void)fetchSOSStatusWithKey:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)fetchSOSStatusWithKey:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_264323000, v0, OS_LOG_TYPE_DEBUG, "%s - loaded SOS status, sosStatus: %@", v1, 0x16u);
}

+ (void)fetchSOSStatusWithKey:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)fetchSOSStatusWithKey:(os_log_t)log .cold.4(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "+[SOSUtilities fetchSOSStatusWithKey:]";
  _os_log_debug_impl(&dword_264323000, log, OS_LOG_TYPE_DEBUG, "%s - no SOS status found", &v1, 0xCu);
}

+ (void)setSOSStatus:withKey:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_264323000, v0, OS_LOG_TYPE_DEBUG, "%s - saving SOS status, sosStatus: %@", v1, 0x16u);
}

+ (void)setSOSStatus:withKey:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

@end