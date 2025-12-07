@interface SOSSettingsController
+ (NSString)tipSpecifierKey;
- (BOOL)_canLaunchDemoFlow;
- (PSSpecifier)tipKitEntrySpecifier;
- (SOSSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)callWithHold:(id)hold;
- (id)callWithPresses:(id)presses;
- (id)emergencySOSSoundEnabled:(id)enabled;
- (id)getCrashDetectionEnabledForSpecifier:(id)specifier;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)addStewieGroupIfSupportedAnimated:(BOOL)animated;
- (void)applicationWillEnterForeground;
- (void)dealloc;
- (void)emitNavigationEvent;
- (void)feedbackController:(id)controller didCompleteWithFeedbackID:(id)d;
- (void)feedbackController:(id)controller didFailToAttachURL:(id)l error:(id)error;
- (void)feedbackController:(id)controller didFailToStartWithError:(id)error;
- (void)feedbackController:(id)controller didFailToSubmitFeedback:(id)feedback;
- (void)feedbackControllerDidCancel:(id)cancel;
- (void)handleSendingLocationChanged;
- (void)handleSosContactsChanged;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)initSharingLocationSpecifiers;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)openHealthApp:(id)app;
- (void)openMessages:(id)messages;
- (void)openTrialDialog;
- (void)presentStewieTryOutModeIfPossible;
- (void)refreshStewieAssetSpecifier:(BOOL)specifier;
- (void)refreshTipSpecifier:(BOOL)specifier;
- (void)reloadAlarmSoundAnimated:(BOOL)animated;
- (void)reloadEmergencyContactsAnimated:(BOOL)animated;
- (void)reloadHealthButtonLabelWithContacts:(BOOL)contacts;
- (void)reloadKappaSpecifier;
- (void)reloadPrivacyFooterWithContacts:(BOOL)contacts;
- (void)reloadStopSharingGroupAnimated:(BOOL)animated;
- (void)setCallWithHold:(id)hold forSpecifier:(id)specifier;
- (void)setCallWithPresses:(id)presses forSpecifier:(id)specifier;
- (void)setCrashDetectionEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setEmergencySOSSoundEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)showCrashDetectionFeedbackAssistantWithUUID:(id)d;
- (void)showFeedbackAssistant;
- (void)showStopSharingConfirmation:(id)confirmation;
- (void)simStatusDidChange:(id)change status:(id)status;
- (void)stateChanged:(id)changed;
- (void)stopSharingLocation:(id)location;
- (void)submitSOSNotificationSettingsChangedMetric:(id)metric withValue:(id)value;
- (void)submitSOSNotificationTapMetric;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tipKitMakeTipSpecifier;
- (void)tipKitStartObservation;
- (void)tipKitStopObservation;
- (void)updateAutoCallSpecifierEnabled:(BOOL)enabled;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SOSSettingsController

- (void)refreshTipSpecifier:(BOOL)specifier
{
  specifierCopy = specifier;
  tipEntrySpecifier = [(SOSSettingsController *)self tipEntrySpecifier];
  v5 = +[SOSSettingsController tipSpecifierKey];
  v6 = [tipEntrySpecifier objectForKeyedSubscript:v5];

  v7 = self->_stewieSupported & [(SOSSettingsController *)self _canLaunchDemoFlow];
  if ((v7 & 1) != 0 && v6 && (-[SOSSettingsController specifiers](self, "specifiers"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsObject:tipEntrySpecifier], v8, (v9 & 1) == 0))
  {
    [(SOSSettingsController *)self insertSpecifier:tipEntrySpecifier atIndex:0 animated:specifierCopy];
  }

  else
  {
    specifiers = [(SOSSettingsController *)self specifiers];
    if ([specifiers containsObject:tipEntrySpecifier])
    {

      if (((v6 != 0) & v7) == 0)
      {
        [(SOSSettingsController *)self removeSpecifier:tipEntrySpecifier animated:specifierCopy];
      }
    }

    else
    {
    }
  }
}

- (SOSSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  v25.receiver = self;
  v25.super_class = SOSSettingsController;
  v4 = [(SOSSettingsController *)&v25 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_alloc_init(SOSContactsManager);
    contactsManager = v4->_contactsManager;
    v4->_contactsManager = v5;

    v7 = objc_alloc_init(NSMutableArray);
    sosContactsNumbers = v4->_sosContactsNumbers;
    v4->_sosContactsNumbers = v7;

    v9 = [[CoreTelephonyClient alloc] initWithQueue:&_dispatch_main_q];
    coreTelephonyClient = v4->_coreTelephonyClient;
    v4->_coreTelephonyClient = v9;

    [(CoreTelephonyClient *)v4->_coreTelephonyClient setDelegate:v4];
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v4 selector:"handleSendingLocationChanged" name:@"SOSSendingLocationUpdateChangedNotification" object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v4 selector:"handleSosContactsChanged" name:@"SOSContactsChangedNotification" object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v4 selector:"applicationWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, sub_3F20, SOSKappaStateChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v15 = +[SOSUtilities _userSOSDefaults];
    sosDefaults = v4->_sosDefaults;
    v4->_sosDefaults = v15;

    [(NSUserDefaults *)v4->_sosDefaults addObserver:v4 forKeyPath:@"SOSTriggerMechanismKey" options:0 context:0];
    [(NSUserDefaults *)v4->_sosDefaults addObserver:v4 forKeyPath:SOSCallWithSideButtonPressesKey options:0 context:0];
    [(NSUserDefaults *)v4->_sosDefaults addObserver:v4 forKeyPath:SOSCallWithVolumeLockHoldKey options:0 context:0];
    [(NSUserDefaults *)v4->_sosDefaults addObserver:v4 forKeyPath:SOSPlayAudioDuringCountdownKey options:0 context:0];
    v4->_stewieSupported = 0;
    v17 = [[CTStewieStateMonitor alloc] initWithDelegate:v4 queue:&_dispatch_main_q];
    stewieStateMonitor = v4->_stewieStateMonitor;
    v4->_stewieStateMonitor = v17;

    v20 = sub_8EF4(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v4->_stewieStateMonitor;
      *buf = 138412290;
      v27 = v21;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Created Stewie state monitor: %@", buf, 0xCu);
    }

    v22 = sub_8EF4([(CTStewieStateMonitor *)v4->_stewieStateMonitor start]);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v4->_stewieStateMonitor;
      *buf = 138412290;
      v27 = v23;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Stewie state monitor has been started: %@", buf, 0xCu);
    }
  }

  return v4;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SOSSettingsController;
  [(SOSSettingsController *)&v4 viewDidAppear:appear];
  [(SOSSettingsController *)self emitNavigationEvent];
}

- (void)emitNavigationEvent
{
  v8 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.SOS"];
  v3 = [_NSLocalizedStringResource alloc];
  v4 = +[NSLocale currentLocale];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v5 bundleURL];
  v7 = [v3 initWithKey:@"Emergency SOS" table:0 locale:v4 bundleURL:bundleURL];

  [(SOSSettingsController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.emergency-sos" title:v7 localizedNavigationComponents:&__NSArray0__struct deepLink:v8];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(NSUserDefaults *)self->_sosDefaults removeObserver:self forKeyPath:@"SOSTriggerMechanismKey"];
  [(NSUserDefaults *)self->_sosDefaults removeObserver:self forKeyPath:SOSCallWithSideButtonPressesKey];
  [(NSUserDefaults *)self->_sosDefaults removeObserver:self forKeyPath:SOSCallWithVolumeLockHoldKey];
  [(NSUserDefaults *)self->_sosDefaults removeObserver:self forKeyPath:SOSPlayAudioDuringCountdownKey];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, SOSKappaStateChangedNotification, 0);
  v5.receiver = self;
  v5.super_class = SOSSettingsController;
  [(SOSSettingsController *)&v5 dealloc];
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  v7 = SOSSettingsURLSourceKey;
  completionCopy = completion;
  v9 = [lCopy valueForKey:v7];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 isEqualToString:SOSSettingsURLSourceAccCallNotification];
    if (v11)
    {
      self->_openedViaAccCallNotification = 1;
      v12 = sub_8EF4(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,opened via notification", buf, 2u);
      }

      [(SOSSettingsController *)self submitSOSNotificationTapMetric];
      [(SOSSettingsController *)self showFeedbackAssistant];
      goto LABEL_19;
    }

    v13 = [v10 isEqualToString:SOSSettingsURLSourceCrashDetectionFeedbackRequestNotification];
    if (v13)
    {
      v14 = sub_8EF4(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,opened via settings - CrashDetection", buf, 2u);
      }

      v15 = [lCopy valueForKey:SOSSettingsURLSourceCrashDetectionUUIDKey];
      v16 = sub_8EF4(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v15;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,FeedbackAssistant,%@", buf, 0xCu);
      }

      [(SOSSettingsController *)self showCrashDetectionFeedbackAssistantWithUUID:v15];
LABEL_18:

      goto LABEL_19;
    }
  }

  v17 = [v10 isEqualToString:SOSSettingsURLSourceSettingsResetFollowUp];
  if (!v17)
  {
    self->_openedViaAccCallNotification = 0;
    v15 = sub_8EF4(v17);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,not opened via notification", buf, 2u);
    }

    goto LABEL_18;
  }

  v18 = sub_8EF4(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,opened via settings reset FollowUp", buf, 2u);
  }

  [SOSUtilities setSettingsResetFollowUpState:3];
LABEL_19:
  v19.receiver = self;
  v19.super_class = SOSSettingsController;
  [(SOSSettingsController *)&v19 handleURL:lCopy withCompletion:completionCopy];
}

- (void)showCrashDetectionFeedbackAssistantWithUUID:(id)d
{
  dCopy = d;
  v5 = +[OSASystemConfiguration sharedInstance];
  targetAudience = [v5 targetAudience];

  v8 = sub_8EF4(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = targetAudience;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,showCrashDetectionFeedbackAssistant,BuildType:%@", buf, 0xCu);
  }

  if ([targetAudience isEqualToString:@"Internal"] & 1) != 0 || (v9 = objc_msgSend(targetAudience, "isEqualToString:", @"Seed"), (v9))
  {
    v10 = [[_TtC11SOSSettings35SOSCrashDetectionFeedbackController alloc] initWithDelegate:self legalText:0 uuid:dCopy];
    feedbackController = self->_feedbackController;
    self->_feedbackController = &v10->super;

    v12 = [_TtC11SOSSettings23SOSKappaFeedbackConsent alloc];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_4730;
    v20 = &unk_20EE8;
    v21 = dCopy;
    selfCopy = self;
    v13 = [(SOSKappaFeedbackConsent *)v12 initWithCallback:&v17];
    kappaConsentUI = self->_kappaConsentUI;
    self->_kappaConsentUI = v13;

    v15 = [(SOSKappaFeedbackConsent *)self->_kappaConsentUI getViewController:v17];
    [(SOSSettingsController *)self presentViewController:v15 animated:1 completion:0];

    v16 = v21;
  }

  else
  {
    v16 = sub_8EF4(v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,showCrashDetectionFeedbackAssistant,not internal or seed user so don't show FA", buf, 2u);
    }
  }
}

- (void)showFeedbackAssistant
{
  v3 = +[OSASystemConfiguration sharedInstance];
  targetAudience = [v3 targetAudience];

  v6 = sub_8F7C(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = targetAudience;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,showFeedbackAssistant,BuildType:%@", &v13, 0xCu);
  }

  if (([targetAudience isEqualToString:@"Internal"] & 1) == 0)
  {
    v7 = [targetAudience isEqualToString:@"Seed"];
    if ((v7 & 1) == 0)
    {
      getFeedbackViewController = sub_8F7C(v7);
      if (os_log_type_enabled(getFeedbackViewController, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_0, getFeedbackViewController, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,showFeedbackAssistant,not internal or seed user so don't show FA", &v13, 2u);
      }

      goto LABEL_9;
    }
  }

  if (objc_opt_class())
  {
    v8 = [_TtC11SOSSettings21SOSFeedbackController alloc];
    v9 = +[SOSUtilities accidentalCallFeedbackAssistantLegalText];
    v10 = [(SOSFeedbackController *)v8 initWithDelegate:self legalText:v9];
    feedbackController = self->_feedbackController;
    self->_feedbackController = v10;

    getFeedbackViewController = [(SOSFeedbackController *)self->_feedbackController getFeedbackViewController];
    [(SOSSettingsController *)self presentViewController:getFeedbackViewController animated:1 completion:&stru_20F08];
LABEL_9:
  }
}

- (void)feedbackController:(id)controller didCompleteWithFeedbackID:(id)d
{
  dCopy = d;
  v5 = sub_8EF4(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = dCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,feedbackController,completed with feedback ID,%@", &v6, 0xCu);
  }
}

- (void)feedbackController:(id)controller didFailToStartWithError:(id)error
{
  errorCopy = error;
  v5 = sub_8EF4(errorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = errorCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,feedbackController,failed to start with error,%@", &v6, 0xCu);
  }
}

- (void)feedbackControllerDidCancel:(id)cancel
{
  v3 = sub_8EF4(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,feedbackController,user cancelled", v4, 2u);
  }
}

- (void)feedbackController:(id)controller didFailToAttachURL:(id)l error:(id)error
{
  lCopy = l;
  errorCopy = error;
  v8 = sub_8EF4(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = lCopy;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,feedbackController,failed to attach URL,%@,error,%@", &v9, 0x16u);
  }
}

- (void)feedbackController:(id)controller didFailToSubmitFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v5 = sub_8EF4(feedbackCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = feedbackCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,feedbackController,failed to submit with error,%@", &v6, 0xCu);
  }
}

- (void)handleSendingLocationChanged
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4E80;
  block[3] = &unk_20E08;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)handleSosContactsChanged
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4F00;
  block[3] = &unk_20E08;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)applicationWillEnterForeground
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4F80;
  block[3] = &unk_20E08;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)reloadKappaSpecifier
{
  v3 = [(SOSSettingsController *)self getCrashDetectionEnabledForSpecifier:self->_kappaSpecifier];
  v4 = v3 != 0;

  kappaSpecifier = self->_kappaSpecifier;
  v6 = [NSNumber numberWithBool:v4];
  [(PSSpecifier *)kappaSpecifier setProperty:v6 forKey:PSValueKey];

  v7 = self->_kappaSpecifier;

  [(SOSSettingsController *)self reloadSpecifier:v7 animated:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SOSSettingsController;
  [(SOSSettingsController *)&v5 viewWillAppear:appear];
  v4 = +[SOSUtilities getKappaThirdPartyDisplayNameForApp];

  if (!v4)
  {
    if ([(SOSSettingsController *)self containsSpecifier:self->_kappaThirdPartySpecifier])
    {
      [(SOSSettingsController *)self removeSpecifier:self->_kappaThirdPartySpecifier];
    }

    if ([(SOSSettingsController *)self containsSpecifier:self->_kappaThirdPartyGroupSpecifier])
    {
      [(SOSSettingsController *)self removeSpecifier:self->_kappaThirdPartyGroupSpecifier];
    }

    [(SOSSettingsController *)self reload];
  }

  [(SOSSettingsController *)self tipKitStartObservation];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SOSSettingsController;
  [(SOSSettingsController *)&v4 viewWillDisappear:disappear];
  [(SOSSettingsController *)self tipKitStopObservation];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(SOSSettingsController *)self loadSpecifiersFromPlistName:@"SOSSettings" target:self];
    v6 = [v5 specifierForID:@"CALL_WITH_HOLD_GROUP"];
    callWithHoldGroupSpecifier = self->_callWithHoldGroupSpecifier;
    self->_callWithHoldGroupSpecifier = v6;

    v8 = [v5 specifierForID:@"CALL_WITH_HOLD"];
    callWithHoldSpecifier = self->_callWithHoldSpecifier;
    self->_callWithHoldSpecifier = v8;

    v10 = [v5 specifierForID:@"CALL_WITH_PRESSES_GROUP"];
    callWithPressesGroupSpecifier = self->_callWithPressesGroupSpecifier;
    self->_callWithPressesGroupSpecifier = v10;

    v12 = [v5 specifierForID:@"CALL_WITH_PRESSES"];
    callWithPressesSpecifier = self->_callWithPressesSpecifier;
    self->_callWithPressesSpecifier = v12;

    v14 = [v5 specifierForID:@"THREE_CLICKS"];
    threeClicksSpecifier = self->_threeClicksSpecifier;
    p_threeClicksSpecifier = &self->_threeClicksSpecifier;
    self->_threeClicksSpecifier = v14;

    v16 = [v5 specifierForID:@"FIVE_CLICKS"];
    fiveClicksSpecifier = self->_fiveClicksSpecifier;
    p_fiveClicksSpecifier = &self->_fiveClicksSpecifier;
    self->_fiveClicksSpecifier = v16;

    v18 = [v5 specifierForID:@"NUMBER_OF_CLICKS_GROUP"];
    clicksRadioGroup = self->_clicksRadioGroup;
    self->_clicksRadioGroup = v18;

    v20 = [v5 specifierForID:@"TRIGGER_ANIMATION_GROUP"];
    triggerAnimationGroup = self->_triggerAnimationGroup;
    self->_triggerAnimationGroup = v20;

    v22 = [v5 specifierForID:@"TRIGGER_ANIMATION"];
    triggerAnimationViewCell = self->_triggerAnimationViewCell;
    self->_triggerAnimationViewCell = v22;

    v24 = [v5 specifierForID:@"ALARM_SOUND_GROUP"];
    alarmSoundGroup = self->_alarmSoundGroup;
    self->_alarmSoundGroup = v24;

    if (!self->_alarmSoundGroup)
    {
      sub_14060();
    }

    v26 = [v5 specifierForID:@"ALARM_SOUND_SWITCH"];
    alarmSoundSwitch = self->_alarmSoundSwitch;
    self->_alarmSoundSwitch = v26;

    if (!self->_alarmSoundSwitch)
    {
      sub_14034();
    }

    v28 = [v5 specifierForID:@"EMERGENCY_CONTACTS"];
    emergencyContactsGroup = self->_emergencyContactsGroup;
    self->_emergencyContactsGroup = v28;

    if (!self->_emergencyContactsGroup)
    {
      sub_14008();
    }

    v30 = [v5 specifierForID:@"OPEN_HEALTH"];
    openHealthButton = self->_openHealthButton;
    self->_openHealthButton = v30;

    if (!self->_openHealthButton)
    {
      sub_13FDC();
    }

    v97 = v3;
    if (+[SOSUtilities isStewieVisible])
    {
      v32 = [PSSpecifier groupSpecifierWithID:@"STEWIE_ANIMATION_GROUP"];
      stewieAnimationGroup = self->_stewieAnimationGroup;
      self->_stewieAnimationGroup = v32;

      v34 = self->_stewieAnimationGroup;
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      [(PSSpecifier *)v34 setProperty:v36 forKey:PSFooterCellClassGroupKey];

      v37 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
      stewieAnimationViewCell = self->_stewieAnimationViewCell;
      self->_stewieAnimationViewCell = v37;

      v39 = self->_stewieAnimationViewCell;
      v111[0] = self->_stewieAnimationGroup;
      v111[1] = v39;
      v40 = [NSArray arrayWithObjects:v111 count:2];
      [v5 ps_insertObjectsFromArray:v40 afterObject:self->_openHealthButton];

      [(SOSSettingsController *)self makeTipSpecifier];
    }

    if (+[SOSUtilities isKappaDetectionSupportedOnPhone](SOSUtilities, "isKappaDetectionSupportedOnPhone") && +[SOSUtilities isKappaVisible])
    {
      v41 = [PSSpecifier groupSpecifierWithID:@"SOS_KAPPA_TITLE"];
      kappaGroupSpecifier = self->_kappaGroupSpecifier;
      self->_kappaGroupSpecifier = v41;

      v43 = +[SOSUtilities crashDetectionTitleDescription];
      [(PSSpecifier *)self->_kappaGroupSpecifier setName:v43];

      v44 = +[SOSUtilities isKappaDetectionSupportedOnActiveWatch];
      v45 = self->_kappaGroupSpecifier;
      if (v44)
      {
        +[SOSUtilities crashDetectionPhoneWatchFooterDescription];
      }

      else
      {
        +[SOSUtilities crashDetectionPhoneFooterDesription];
      }
      v46 = ;
      [(PSSpecifier *)v45 setProperty:v46 forKey:PSFooterTextGroupKey];

      v47 = +[SOSUtilities crashDetectionSwitchDescription];
      v48 = [PSSpecifier preferenceSpecifierNamed:v47 target:self set:"setCrashDetectionEnabled:forSpecifier:" get:"getCrashDetectionEnabledForSpecifier:" detail:0 cell:6 edit:0];
      kappaSpecifier = self->_kappaSpecifier;
      self->_kappaSpecifier = v48;

      [(PSSpecifier *)self->_kappaSpecifier setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
      v50 = self->_kappaSpecifier;
      v110[0] = self->_kappaGroupSpecifier;
      v110[1] = v50;
      v51 = [NSArray arrayWithObjects:v110 count:2];
      [v5 ps_insertObjectsFromArray:v51 afterObject:self->_alarmSoundSwitch];
    }

    v52 = +[SOSUtilities getKappaThirdPartyApp];

    if (v52)
    {
      v53 = [PSSpecifier groupSpecifierWithID:@"SOS_KAPPA_THIRD_PARTY_TITLE"];
      kappaThirdPartyGroupSpecifier = self->_kappaThirdPartyGroupSpecifier;
      self->_kappaThirdPartyGroupSpecifier = v53;

      v55 = self->_kappaThirdPartyGroupSpecifier;
      v56 = +[SOSUtilities crashDetectionThirdPartyFooterDescription];
      v57 = PSFooterTextGroupKey;
      [(PSSpecifier *)v55 setProperty:v56 forKey:PSFooterTextGroupKey];

      v58 = +[SOSUtilities crashDetectionThirdPartyCellTitle];
      v59 = [PSSpecifier preferenceSpecifierNamed:v58 target:self set:0 get:"getKappaThirdPartyAppNameForSpecifier:" detail:objc_opt_class() cell:2 edit:0];
      kappaThirdPartySpecifier = self->_kappaThirdPartySpecifier;
      self->_kappaThirdPartySpecifier = v59;

      v61 = PSAllowMultilineTitleKey;
      [(PSSpecifier *)self->_kappaThirdPartySpecifier setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
      v62 = v57;
      v63 = self->_kappaThirdPartySpecifier;
      v109[0] = self->_kappaThirdPartyGroupSpecifier;
      v109[1] = v63;
      v64 = [NSArray arrayWithObjects:v109 count:2];
      [v5 ps_insertObjectsFromArray:v64 afterObject:self->_kappaSpecifier];
    }

    else
    {
      v61 = PSAllowMultilineTitleKey;
      v62 = PSFooterTextGroupKey;
    }

    [(PSSpecifier *)self->_triggerAnimationViewCell setProperty:objc_opt_class() forKey:PSCellClassKey];
    [(PSSpecifier *)self->_triggerAnimationViewCell setProperty:&off_21DA8 forKey:PSTableCellHeightKey];
    [(SOSSettingsController *)self initSharingLocationSpecifiers];
    v106[0] = _NSConcreteStackBlock;
    v106[1] = 3221225472;
    v106[2] = sub_5D08;
    v106[3] = &unk_20F30;
    v65 = v5;
    v107 = v65;
    selfCopy = self;
    v95 = objc_retainBlock(v106);
    v103[0] = _NSConcreteStackBlock;
    v103[1] = 3221225472;
    v103[2] = sub_5E1C;
    v103[3] = &unk_20F30;
    v66 = v65;
    v104 = v66;
    selfCopy2 = self;
    v94 = objc_retainBlock(v103);
    v67 = self->_callWithHoldSpecifier;
    v68 = +[SOSUtilities callWithHoldTitleDescription];
    [(PSSpecifier *)v67 setName:v68];

    [(PSSpecifier *)self->_callWithHoldSpecifier setProperty:&__kCFBooleanTrue forKey:v61];
    v98 = +[SOSUtilities callWithHoldFooterDescription];
    [PSSpecifier setProperty:"setProperty:forKey:" forKey:?];
    v69 = self->_callWithPressesSpecifier;
    +[SOSUtilities callWithPressesTitleDescription];
    v71 = v70 = v62;
    [(PSSpecifier *)v69 setName:v71];

    [(PSSpecifier *)self->_callWithPressesSpecifier setProperty:&__kCFBooleanTrue forKey:v61];
    v99 = +[SOSUtilities callWithPressesFooterDescription];
    [PSSpecifier setProperty:"setProperty:forKey:" forKey:?];
    v96 = +[SOSUtilities phoneTriggerAnimationFooterDescription];
    [PSSpecifier setProperty:"setProperty:forKey:" forKey:?];
    v72 = self->_clicksRadioGroup;
    v73 = +[SOSUtilities pressSelectionGroupTitleDescription];
    [(PSSpecifier *)v72 setName:v73];

    v74 = *p_threeClicksSpecifier;
    v75 = +[SOSUtilities threePressesSelectionTitleDescription];
    [v74 setName:v75];

    [*p_threeClicksSpecifier setProperty:&__kCFBooleanTrue forKey:v61];
    v76 = *p_fiveClicksSpecifier;
    v77 = +[SOSUtilities fivePressesSelectionTitleDescription];
    [v76 setName:v77];

    [*p_fiveClicksSpecifier setProperty:&__kCFBooleanTrue forKey:v61];
    if (+[SOSUtilities supportsSOSWithSideButtonSelectableNumberOfClicks])
    {
      if (+[SOSUtilities currentSOSTriggerMechanism]== &dword_0 + 1)
      {
        v78 = &self->_threeClicksSpecifier;
      }

      else
      {
        v78 = &self->_fiveClicksSpecifier;
      }

      v79 = *v78;
      v80 = v95;
      if (+[SOSUtilities SOSSelectableTriggerMechanismCapability]== &dword_0 + 2)
      {
        v81 = v94;
      }

      else
      {
        v81 = v95;
      }

      (v81[2])();
      v82 = v94;
      [(PSSpecifier *)self->_clicksRadioGroup setProperty:v79 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    else
    {
      v82 = v94;
      (v94[2])(v94);
      v80 = v95;
      (v95[2])(v95);
    }

    sosContacts = self->_sosContacts;
    self->_sosContacts = 0;

    v84 = *&self->PSListController_opaque[v97];
    *&self->PSListController_opaque[v97] = v66;
    v85 = v66;

    [(SOSSettingsController *)self reload];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_5F10;
    block[3] = &unk_20E08;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v86 = self->_alarmSoundSwitch;
    v87 = +[SOSUtilities countdownSoundTitleDescription];
    [(PSSpecifier *)v86 setName:v87];

    v88 = self->_alarmSoundGroup;
    v89 = +[SOSUtilities countdownSoundFooterDescription];
    [(PSSpecifier *)v88 setProperty:v89 forKey:v70];

    [(SOSSettingsController *)self reloadAlarmSoundAnimated:0];
    v90 = self->_openHealthButton;
    v91 = +[SOSUtilities emergencyContactsEditDescription];
    [(PSSpecifier *)v90 setName:v91];

    [(SOSSettingsController *)self reloadEmergencyContactsAnimated:0];
    coreTelephonyClient = [(SOSSettingsController *)self coreTelephonyClient];
    [(SOSSettingsController *)self updateAutoCallSpecifierEnabled:[SOSUtilities shouldForceDisableAutoCallForClient:coreTelephonyClient]^ 1];

    [(SOSSettingsController *)self addStewieGroupIfSupportedAnimated:0];
    v4 = *&self->PSListController_opaque[v97];
  }

  return v4;
}

- (void)initSharingLocationSpecifiers
{
  v3 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
  stopSharingGroup = self->_stopSharingGroup;
  self->_stopSharingGroup = v3;

  v5 = PSSpecifierIsSearchableKey;
  [(PSSpecifier *)self->_stopSharingGroup setProperty:&off_21DC0 forKey:PSSpecifierIsSearchableKey];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"STOP_SHARING_EMERGENCY_LOCATION" value:&stru_216E8 table:@"SOSSettings"];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:13 edit:0];
  stopSharingButton = self->_stopSharingButton;
  self->_stopSharingButton = v8;

  v10 = self->_stopSharingButton;
  v27[0] = v5;
  v27[1] = PSAlignmentKey;
  v28[0] = &off_21DC0;
  v28[1] = &off_21DD8;
  v11 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
  [(PSSpecifier *)v10 setProperties:v11];

  [(PSSpecifier *)self->_stopSharingButton setButtonAction:"showStopSharingConfirmation:"];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"LAST_LOCATION_SENT" value:&stru_216E8 table:@"SOSSettings"];
  v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:0 edit:0];
  lastLocationSentGroup = self->_lastLocationSentGroup;
  self->_lastLocationSentGroup = v14;

  v16 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  mapViewCell = self->_mapViewCell;
  self->_mapViewCell = v16;

  v18 = self->_mapViewCell;
  v25[0] = PSCellClassKey;
  v19 = objc_opt_class();
  v25[1] = PSTableCellHeightKey;
  v26[0] = v19;
  v26[1] = &off_21DF0;
  v20 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  [(PSSpecifier *)v18 setProperties:v20];

  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"OPEN_MESSAGES" value:&stru_216E8 table:@"SOSSettings"];
  v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:0 get:0 detail:0 cell:13 edit:0, v25[0]];
  openMessagesButton = self->_openMessagesButton;
  self->_openMessagesButton = v23;

  [(PSSpecifier *)self->_openMessagesButton setButtonAction:"openMessages:"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"SOSTriggerMechanismKey"] && +[SOSUtilities SOSSelectableTriggerMechanismCapability](SOSUtilities, "SOSSelectableTriggerMechanismCapability") == &dword_0 + 2)
  {
    v7 = +[SOSUtilities currentSOSTriggerMechanism];
    v8 = &OBJC_IVAR___SOSSettingsController__fiveClicksSpecifier;
    if (v7 == &dword_0 + 1)
    {
      v8 = &OBJC_IVAR___SOSSettingsController__threeClicksSpecifier;
    }

    v9 = *&self->PSListController_opaque[*v8];
    [(PSSpecifier *)self->_clicksRadioGroup setProperty:v9 forKey:PSRadioGroupCheckedSpecifierKey];
    [(SOSSettingsController *)self reloadSpecifier:self->_clicksRadioGroup animated:0];
    callWithPressesSpecifier = self->_callWithPressesSpecifier;
    v11 = +[SOSUtilities callWithPressesTitleDescription];
    [(PSSpecifier *)callWithPressesSpecifier setName:v11];

    [(SOSSettingsController *)self reloadSpecifier:self->_callWithPressesSpecifier animated:0];
    v12 = +[SOSUtilities callWithPressesFooterDescription];
    [(PSSpecifier *)self->_callWithPressesGroupSpecifier setProperty:v12 forKey:PSFooterTextGroupKey];
    [(SOSSettingsController *)self reloadSpecifier:self->_callWithPressesGroupSpecifier animated:0];

    goto LABEL_11;
  }

  if ([pathCopy isEqualToString:SOSCallWithSideButtonPressesKey])
  {
    v13 = 200;
    callWithHoldSpecifier = self->_callWithPressesSpecifier;
    v15 = [(SOSSettingsController *)self callWithPresses:callWithHoldSpecifier];
LABEL_10:
    v16 = v15;
    [(PSSpecifier *)callWithHoldSpecifier setProperty:v15 forKey:PSValueKey];

    [(SOSSettingsController *)self reloadSpecifier:*&self->PSListController_opaque[v13] animated:0];
    [(SOSSettingsController *)self reloadAlarmSoundAnimated:0];
    goto LABEL_11;
  }

  if ([pathCopy isEqualToString:SOSCallWithVolumeLockHoldKey])
  {
    v13 = 184;
    callWithHoldSpecifier = self->_callWithHoldSpecifier;
    v15 = [(SOSSettingsController *)self callWithHold:callWithHoldSpecifier];
    goto LABEL_10;
  }

  if ([pathCopy isEqualToString:SOSPlayAudioDuringCountdownKey])
  {
    alarmSoundSwitch = self->_alarmSoundSwitch;
    v18 = [(SOSSettingsController *)self emergencySOSSoundEnabled:alarmSoundSwitch];
    [(PSSpecifier *)alarmSoundSwitch setProperty:v18 forKey:PSValueKey];

    [(SOSSettingsController *)self reloadSpecifier:self->_alarmSoundSwitch animated:0];
  }

LABEL_11:
}

- (void)reloadEmergencyContactsAnimated:(BOOL)animated
{
  contactsManager = self->_contactsManager;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_65A4;
  v4[3] = &unk_20F80;
  v4[4] = self;
  animatedCopy = animated;
  [(SOSContactsManager *)contactsManager SOSContactsWithTimeout:v4 andCompletion:5.0];
}

- (void)reloadStopSharingGroupAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = +[SOSManager sharedInstance];
  isSendingLocationUpdate = [v5 isSendingLocationUpdate];

  identifier = [(PSSpecifier *)self->_stopSharingGroup identifier];
  v8 = [(SOSSettingsController *)self specifierForID:identifier];

  if (((isSendingLocationUpdate ^ (v8 == 0)) & 1) == 0)
  {
    stopSharingButton = self->_stopSharingButton;
    if (isSendingLocationUpdate)
    {
      v37[0] = self->_stopSharingGroup;
      v37[1] = stopSharingButton;
      v10 = [NSArray arrayWithObjects:v37 count:2];
      [(SOSSettingsController *)self insertContiguousSpecifiers:v10 atIndex:0 animated:animatedCopy];

      mapViewCell = self->_mapViewCell;
      v36[0] = self->_lastLocationSentGroup;
      v36[1] = mapViewCell;
      v36[2] = self->_openMessagesButton;
      v12 = [NSArray arrayWithObjects:v36 count:3];
      [(SOSSettingsController *)self insertContiguousSpecifiers:v12 atIndex:2 animated:animatedCopy];
    }

    else
    {
      v39[0] = self->_stopSharingGroup;
      v39[1] = stopSharingButton;
      v13 = [NSArray arrayWithObjects:v39 count:2];
      [(SOSSettingsController *)self removeContiguousSpecifiers:v13 animated:animatedCopy];

      v14 = self->_mapViewCell;
      v38[0] = self->_lastLocationSentGroup;
      v38[1] = v14;
      v38[2] = self->_openMessagesButton;
      v12 = [NSArray arrayWithObjects:v38 count:3];
      [(SOSSettingsController *)self removeContiguousSpecifiers:v12 animated:animatedCopy];
    }
  }

  v30 = [NSNumber numberWithInt:isSendingLocationUpdate ^ 1];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  specifiers = [(SOSSettingsController *)self specifiers];
  v16 = [specifiers countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    v19 = &selRef_mapView_didAddOverlayViews_;
    v20 = &selRef_mapView_didAddOverlayViews_;
    v21 = &selRef_mapView_didAddOverlayViews_;
    v29 = PSEnabledKey;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(specifiers);
        }

        v23 = *(*(&v31 + 1) + 8 * i);
        if (v23 != self->_stopSharingGroup && v23 != *&self->PSListController_opaque[*(v19 + 68)] && v23 != *&self->PSListController_opaque[*(v20 + 69)] && v23 != *&self->PSListController_opaque[*(v21 + 70)] && v23 != self->_openMessagesButton)
        {
          if (v23 != self->_callWithHoldSpecifier && v23 != self->_callWithPressesSpecifier)
          {
            v24 = 0;
            goto LABEL_22;
          }

          coreTelephonyClient = [(SOSSettingsController *)self coreTelephonyClient];
          v28 = coreTelephonyClient;
          if ([SOSUtilities shouldForceDisableAutoCallForClient:coreTelephonyClient])
          {
          }

          else
          {
            v24 = 1;
LABEL_22:
            v26 = [(PSSpecifier *)v23 propertyForKey:v29];
            v27 = [v26 isEqual:v30];

            if (v24)
            {
            }

            v20 = &selRef_mapView_didAddOverlayViews_;
            if ((v27 & 1) == 0)
            {
              [(PSSpecifier *)v23 setProperty:v30 forKey:v29];
              [(SOSSettingsController *)self reloadSpecifier:v23];
            }

            v19 = &selRef_mapView_didAddOverlayViews_;
          }

          v21 = &selRef_mapView_didAddOverlayViews_;
          continue;
        }
      }

      v17 = [specifiers countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v17);
  }
}

- (void)reloadAlarmSoundAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ((+[SOSUtilities isCallWithVolumeLockHoldEnabled](SOSUtilities, "isCallWithVolumeLockHoldEnabled") & 1) != 0 || +[SOSUtilities isCallWithSideButtonPressesEnabled])
  {
    coreTelephonyClient = [(SOSSettingsController *)self coreTelephonyClient];
    v6 = [SOSUtilities shouldForceDisableAutoCallForClient:coreTelephonyClient]^ 1;
  }

  else
  {
    v6 = 0;
  }

  identifier = [(PSSpecifier *)self->_alarmSoundSwitch identifier];
  v8 = [(SOSSettingsController *)self specifierForID:identifier];

  if (((v6 ^ (v8 == 0)) & 1) == 0)
  {
    alarmSoundSwitch = self->_alarmSoundSwitch;
    if (v6)
    {
      v12[0] = self->_alarmSoundGroup;
      v12[1] = alarmSoundSwitch;
      v10 = [NSArray arrayWithObjects:v12 count:2];
      [(SOSSettingsController *)self addSpecifiersFromArray:v10 animated:animatedCopy];
    }

    else
    {
      v11[0] = self->_alarmSoundGroup;
      v11[1] = alarmSoundSwitch;
      v10 = [NSArray arrayWithObjects:v11 count:2];
      [(SOSSettingsController *)self removeContiguousSpecifiers:v10 animated:animatedCopy];
    }
  }
}

- (void)reloadHealthButtonLabelWithContacts:(BOOL)contacts
{
  contactsCopy = contacts;
  v6 = [(SOSSettingsController *)self specifierForID:@"OPEN_HEALTH"];
  v5 = +[SOSUtilities emergencyContactsEditDescription];
  [v6 setName:v5];

  [(SOSSettingsController *)self reloadSpecifier:v6 animated:contactsCopy];
}

- (void)reloadPrivacyFooterWithContacts:(BOOL)contacts
{
  contactsCopy = contacts;
  v5 = [(SOSSettingsController *)self specifierForID:@"EMERGENCY_CONTACTS"];
  if (v5)
  {
    v14 = v5;
    v6 = +[SOSUtilities emergencyContactsFooterLinkTitle];
    v7 = +[SOSUtilities emergencyContactsFooterDescription];
    v8 = [v7 rangeOfString:v6 options:5];
    v10 = v9;
    [v14 setProperty:v7 forKey:PSFooterHyperlinkViewTitleKey];
    v16.location = v8;
    v16.length = v10;
    v11 = NSStringFromRange(v16);
    [v14 setProperty:v11 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v12 = [NSValue valueWithNonretainedObject:self];
    [v14 setProperty:v12 forKey:PSFooterHyperlinkViewTargetKey];

    v13 = NSStringFromSelector("openPrivacy");
    [v14 setProperty:v13 forKey:PSFooterHyperlinkViewActionKey];

    [(SOSSettingsController *)self reloadSpecifier:v14 animated:contactsCopy];
    v5 = v14;
  }
}

- (id)emergencySOSSoundEnabled:(id)enabled
{
  v3 = +[SOSUtilities shouldPlayAudioDuringCountdown]^ 1;

  return [NSNumber numberWithInt:v3];
}

- (void)setEmergencySOSSoundEnabled:(id)enabled forSpecifier:(id)specifier
{
  enabledCopy = enabled;
  if (+[SOSUtilities setShouldPlayAudioDuringCountdown:](SOSUtilities, "setShouldPlayAudioDuringCountdown:", [enabledCopy BOOLValue] ^ 1))
  {
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [enabledCopy BOOLValue] ^ 1);
    [(SOSSettingsController *)self submitSOSNotificationSettingsChangedMetric:@"countdownSound" withValue:v5];
  }

  else
  {
    v5 = self->_alarmSoundSwitch;
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", +[SOSUtilities shouldPlayAudioDuringCountdown]^ 1);
    [(PSSpecifier *)v5 setProperty:v6 forKey:PSValueKey];

    [(SOSSettingsController *)self reloadSpecifier:v5 animated:1];
  }
}

- (void)stopSharingLocation:(id)location
{
  v3 = +[SOSManager sharedInstance];
  [v3 stopSendingLocationUpdate];
}

- (id)callWithHold:(id)hold
{
  if ((+[SOSUtilities isCallWithVolumeLockHoldEnabled]& 1) != 0)
  {
    coreTelephonyClient = [(SOSSettingsController *)self coreTelephonyClient];
    v5 = [NSNumber numberWithInt:[SOSUtilities shouldForceDisableAutoCallForClient:coreTelephonyClient]^ 1];
  }

  else
  {
    v5 = [NSNumber numberWithInt:0];
  }

  return v5;
}

- (void)setCallWithHold:(id)hold forSpecifier:(id)specifier
{
  holdCopy = hold;
  +[SOSUtilities setCallWithVolumeLockHoldEnabled:](SOSUtilities, "setCallWithVolumeLockHoldEnabled:", [holdCopy BOOLValue]);
  [(SOSSettingsController *)self reloadAlarmSoundAnimated:1];
  [(SOSSettingsController *)self submitSOSNotificationSettingsChangedMetric:@"volumeLockHold" withValue:holdCopy];
}

- (id)callWithPresses:(id)presses
{
  if ((+[SOSUtilities isCallWithSideButtonPressesEnabled]& 1) != 0)
  {
    coreTelephonyClient = [(SOSSettingsController *)self coreTelephonyClient];
    v5 = [NSNumber numberWithInt:[SOSUtilities shouldForceDisableAutoCallForClient:coreTelephonyClient]^ 1];
  }

  else
  {
    v5 = [NSNumber numberWithInt:0];
  }

  return v5;
}

- (void)setCallWithPresses:(id)presses forSpecifier:(id)specifier
{
  pressesCopy = presses;
  bOOLValue = [pressesCopy BOOLValue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_7624;
  v8[3] = &unk_20EE8;
  v8[4] = self;
  v9 = pressesCopy;
  v7 = pressesCopy;
  [SOSUtilities setCallWithSideButtonPresses:bOOLValue presentErrorAlertOnViewController:self completion:v8];
}

- (void)showStopSharingConfirmation:(id)confirmation
{
  v4 = [PSConfirmationSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  v12[0] = PSConfirmationTitleKey;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"STOP_SHARING_TITLE" value:&stru_216E8 table:@"SOSSettings"];
  v13[0] = v6;
  v12[1] = PSConfirmationCancelKey;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"STOP_SHARING_CANCEL" value:&stru_216E8 table:@"SOSSettings"];
  v13[1] = v8;
  v12[2] = PSConfirmationOKKey;
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"STOP_SHARING_OK" value:&stru_216E8 table:@"SOSSettings"];
  v13[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  [v4 setupWithDictionary:v11];

  [v4 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  [v4 setTarget:self];
  [v4 setConfirmationAction:"stopSharingLocation:"];
  [(SOSSettingsController *)self showConfirmationViewForSpecifier:v4 useAlert:0];
}

- (void)updateAutoCallSpecifierEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = sub_8EF4(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = enabledCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Setting SOS auto call specifiers to enabled: %d", v11, 8u);
  }

  callWithHoldSpecifier = self->_callWithHoldSpecifier;
  v7 = [NSNumber numberWithBool:enabledCopy];
  v8 = PSEnabledKey;
  [(PSSpecifier *)callWithHoldSpecifier setProperty:v7 forKey:PSEnabledKey];

  [(SOSSettingsController *)self reloadSpecifier:self->_callWithHoldSpecifier animated:1];
  callWithPressesSpecifier = self->_callWithPressesSpecifier;
  v10 = [NSNumber numberWithBool:enabledCopy];
  [(PSSpecifier *)callWithPressesSpecifier setProperty:v10 forKey:v8];

  [(SOSSettingsController *)self reloadSpecifier:self->_callWithPressesSpecifier animated:1];
  [(SOSSettingsController *)self reloadAlarmSoundAnimated:1];
}

- (void)openMessages:(id)messages
{
  v4 = objc_alloc_init(NSURLComponents);
  [v4 setScheme:@"sms"];
  firstObject = [(NSMutableArray *)self->_sosContactsNumbers firstObject];

  if (firstObject)
  {
    [v4 setPath:@"open"];
    v6 = [NSURLQueryItem alloc];
    firstObject2 = [(NSMutableArray *)self->_sosContactsNumbers firstObject];
    v8 = [v6 initWithName:@"addresses" value:firstObject2];

    v12 = v8;
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    [v4 setQueryItems:v9];
  }

  v10 = UIApp;
  v11 = [v4 URL];
  [v10 openURL:v11 withCompletionHandler:0];
}

- (void)openHealthApp:(id)app
{
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.Health/MEDICAL_ID_ITEM"];
  [v4 openSensitiveURL:v3 withOptions:0];
}

- (void)simStatusDidChange:(id)change status:(id)status
{
  v5 = [(SOSSettingsController *)self coreTelephonyClient:change];
  [(SOSSettingsController *)self updateAutoCallSpecifierEnabled:[SOSUtilities shouldForceDisableAutoCallForClient:v5]^ 1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v14.receiver = self;
  v14.super_class = SOSSettingsController;
  pathCopy = path;
  v7 = [(SOSSettingsController *)&v14 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(SOSSettingsController *)self specifierAtIndexPath:pathCopy, v14.receiver, v14.super_class];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v8 == self->_stopSharingButton)
  {
    v9 = v7;
    if ([v9 type] == &dword_C + 1)
    {
      v10 = +[UIColor redColor];
      textLabel = [v9 textLabel];
      [textLabel setTextColor:v10];

      goto LABEL_7;
    }
  }

  v12 = v7;
LABEL_7:

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(SOSSettingsController *)self indexForIndexPath:pathCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  }

  v10 = [(SOSSettingsController *)self getGroupSpecifierForSpecifier:v9];
  v11 = [(PSSpecifier *)v10 propertyForKey:PSIsRadioGroupKey];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue)
  {
    if (v10 == self->_clicksRadioGroup)
    {
      v14 = [v9 propertyForKey:PSValueKey];
      +[SOSUtilities setNumberOfSideButtonPresses:](SOSUtilities, "setNumberOfSideButtonPresses:", [v14 intValue]);

      callWithPressesSpecifier = self->_callWithPressesSpecifier;
      v16 = +[SOSUtilities callWithPressesTitleDescription];
      [(PSSpecifier *)callWithPressesSpecifier setName:v16];

      v13 = +[SOSUtilities callWithPressesFooterDescription];
      [(PSSpecifier *)self->_callWithPressesGroupSpecifier setProperty:v13 forKey:PSFooterTextGroupKey];
      [(SOSSettingsController *)self reloadSpecifier:self->_callWithPressesSpecifier];
      [(SOSSettingsController *)self reloadSpecifier:self->_callWithPressesGroupSpecifier];
    }

    else
    {
      v13 = [v9 propertyForKey:PSValueKey];
      [(SOSSettingsController *)self setPreferenceValue:v13 specifier:v10];
    }
  }

  v17.receiver = self;
  v17.super_class = SOSSettingsController;
  [(SOSSettingsController *)&v17 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (void)addStewieGroupIfSupportedAnimated:(BOOL)animated
{
  coreTelephonyClient = self->_coreTelephonyClient;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_8064;
  v4[3] = &unk_20FD0;
  v4[4] = self;
  animatedCopy = animated;
  [(CoreTelephonyClient *)coreTelephonyClient getStewieSupportWithCompletion:v4];
}

- (void)refreshStewieAssetSpecifier:(BOOL)specifier
{
  specifierCopy = specifier;
  stewieAnimationViewCell = self->_stewieAnimationViewCell;
  v6 = [NSValue valueWithNonretainedObject:self];
  [(PSSpecifier *)stewieAnimationViewCell setProperty:v6 forKey:@"StewieSectionDemoDelegate"];

  v7 = self->_stewieAnimationViewCell;

  [(SOSSettingsController *)self reloadSpecifier:v7 animated:specifierCopy];
}

- (void)presentStewieTryOutModeIfPossible
{
  if ([(SOSSettingsController *)self _canLaunchDemoFlow])
  {

    [(SOSSettingsController *)self openTrialDialog];
  }

  else
  {
    stewieStateMonitor = [(SOSSettingsController *)self stewieStateMonitor];
    getState = [stewieStateMonitor getState];

    v5 = [getState statusReasonForService:2];
    self->_stewieSupported = 0;
    [(SOSSettingsController *)self refreshTipSpecifier:0];
    [(SOSSettingsController *)self removeSpecifier:self->_stewieAnimationGroup];
    v6 = sub_8EF4([(SOSSettingsController *)self removeSpecifier:self->_stewieAnimationViewCell]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = CTStewieServiceStatusReasonAsString();
      v9 = 2112;
      v10 = getState;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,presentStewieTryOutModeIfPossible,Demo is not currently available. Reason: %s, state: %@", &v7, 0x16u);
    }

    [SOSUtilities presentStewieDemoUnavailableAlertOnViewController:self reason:v5];
  }
}

- (void)openTrialDialog
{
  if ([(SOSSettingsController *)self _canLaunchDemoFlow])
  {
    v4 = objc_alloc_init(CTStewieRequestContext);
    [v4 setReason:5];
    coreTelephonyClient = [(SOSSettingsController *)self coreTelephonyClient];
    [coreTelephonyClient requestStewieWithContext:v4 completion:&stru_21010];
  }
}

- (BOOL)_canLaunchDemoFlow
{
  stewieStateMonitor = [(SOSSettingsController *)self stewieStateMonitor];
  getState = [stewieStateMonitor getState];

  LOBYTE(stewieStateMonitor) = [getState isDemoAllowedForService:1];
  return stewieStateMonitor;
}

- (void)stateChanged:(id)changed
{
  [(SOSSettingsController *)self refreshTipSpecifier:1];

  [(SOSSettingsController *)self refreshStewieAssetSpecifier:1];
}

- (id)getCrashDetectionEnabledForSpecifier:(id)specifier
{
  v3 = +[SOSUtilities kappaTriggersEmergencySOS];

  return [NSNumber numberWithBool:v3];
}

- (void)setCrashDetectionEnabled:(id)enabled forSpecifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = sub_8EF4(enabledCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    bOOLValue = [enabledCopy BOOLValue];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,setCrashDetectionEnabled,Attempting to set crash detection settings as: %d", buf, 8u);
  }

  bOOLValue2 = [enabledCopy BOOLValue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_889C;
  v9[3] = &unk_20EE8;
  v10 = enabledCopy;
  selfCopy = self;
  v8 = enabledCopy;
  [SOSUtilities setKappaTriggersEmergencySOS:bOOLValue2 confirmationDelegate:self completion:v9];
}

- (void)submitSOSNotificationSettingsChangedMetric:(id)metric withValue:(id)value
{
  valueCopy = value;
  metricCopy = metric;
  v9 = objc_alloc_init(NSMutableDictionary);
  [v9 setValue:metricCopy forKey:@"field"];

  [v9 setValue:valueCopy forKey:@"value"];
  v8 = [NSNumber numberWithBool:self->_openedViaAccCallNotification];
  [v9 setValue:v8 forKey:@"dueToNotification"];

  AnalyticsSendEvent();
}

- (void)submitSOSNotificationTapMetric
{
  +[SOSUtilities getShortSOSNotificationDisplayTimestamp];
  v3 = v2;
  v7 = objc_alloc_init(NSMutableDictionary);
  if (v3 > 0.0)
  {
    v4 = (CFAbsoluteTimeGetCurrent() - v3);
    if (v4 < 0)
    {
      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v5 = v4;
    }

    v6 = [NSNumber numberWithInt:v5];
    [v7 setValue:v6 forKey:@"timeTillTap"];
  }

  AnalyticsSendEvent();
}

- (void)tipKitStartObservation
{
  sub_141C4();
  selfCopy = self;
  sub_141B4();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_141D4();
}

- (void)tipKitStopObservation
{
  sub_141C4();
  sub_141B4();
  sub_141D4();
}

- (PSSpecifier)tipKitEntrySpecifier
{
  if (qword_271C0 != -1)
  {
    swift_once();
  }

  v2 = *(qword_271C8 + 16);

  return v2;
}

+ (NSString)tipSpecifierKey
{
  v2 = sub_146C4();

  return v2;
}

- (void)tipKitMakeTipSpecifier
{
  selfCopy = self;
  sub_BC7C();
}

@end