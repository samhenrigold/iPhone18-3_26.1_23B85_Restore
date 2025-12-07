@interface VTUISiriOptinViewController
+ (BOOL)controllerNeedsToRun;
+ (BOOL)wantsUnifiedFYI;
- (VTUISiriOptinViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)detailTitleString;
- (id)imageResource;
- (id)learnMoreButtonTitle;
- (id)okayButtonTitle;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)applyConfirmedOptin:(BOOL)optin;
- (void)learnMoreButtonPressed:(id)pressed;
- (void)okayButtonPressed:(id)pressed;
- (void)suggestedButtonPressed:(id)pressed;
@end

@implementation VTUISiriOptinViewController

+ (BOOL)wantsUnifiedFYI
{
  v2 = [sub_121C(self a2)];
  assistantIsEnabled = [v2 assistantIsEnabled];

  return assistantIsEnabled & shouldShowSiriOptInPage();
}

+ (BOOL)controllerNeedsToRun
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v2 = off_CBB8;
  v13 = off_CBB8;
  if (!off_CBB8)
  {
    v3 = sub_1ED0();
    v11[3] = dlsym(v3, "AFAssistantRestricted");
    off_CBB8 = v11[3];
    v2 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v2)
  {
    sub_4398();
  }

  v4 = v2();
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v7 = [sub_121C(v4 v5)];
    assistantIsEnabled = [v7 assistantIsEnabled];

    v6 = assistantIsEnabled ^ shouldShowSiriOptInPage();
  }

  return v6 & 1;
}

- (VTUISiriOptinViewController)init
{
  v13.receiver = self;
  v13.super_class = VTUISiriOptinViewController;
  v2 = [(VTUISiriOptinViewController *)&v13 init];
  v4 = v2;
  if (v2)
  {
    v5 = [sub_121C(v2 v3)];
    assistantIsEnabled = [v5 assistantIsEnabled];

    v7 = BPSShouldOfferSiriForDeviceLanguage();
    v4->_languageSupported = v7;
    if (!assistantIsEnabled || (v7 & 1) != 0)
    {
      if (!v7)
      {
        sub_43BC(v7);
      }

      [(VTUISiriOptinViewController *)v4 setStyle:90];
      v8 = pbb_bridge_log();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      languageSupported = v4->_languageSupported;
      *buf = 67109120;
      v15 = languageSupported;
      v10 = "Siri disabled on Phone; Setting FYI: NO, and _languageSupported: (%d); ";
    }

    else
    {
      [(VTUISiriOptinViewController *)v4 setStyle:96];
      v8 = pbb_bridge_log();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:

        return v4;
      }

      v9 = v4->_languageSupported;
      *buf = 67109120;
      v15 = v9;
      v10 = "Siri enabled on Phone; Setting FYI: (YES), and _languageSupported: (%d); ";
    }

    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, v10, buf, 8u);
    goto LABEL_10;
  }

  return v4;
}

- (id)titleString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SIRI_TITLE" value:&stru_84A0 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  languageSupported = self->_languageSupported;
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (languageSupported)
  {
    v5 = @"SIRI_DETAIL";
  }

  else
  {
    v5 = @"SIRI_FYI_NOT_SUPPORTED_BODY";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_84A0 table:@"Localizable"];

  return v6;
}

- (id)imageResource
{
  v2 = +[BPSBridgeAppContext shared];
  activeDevice = [v2 activeDevice];
  v4 = VTUISiriScreenStringForDevice(activeDevice);

  return v4;
}

- (void)suggestedButtonPressed:(id)pressed
{
  v4 = +[BPSBridgeAppContext shared];
  activeDevice = [v4 activeDevice];
  v6 = [[NSUUID alloc] initWithUUIDString:@"F06861AE-125A-424B-AF25-C1DAA8F7AEBC"];
  v7 = [activeDevice supportsCapability:v6];

  if (v7)
  {

    [(VTUISiriOptinViewController *)self applyConfirmedOptin:1];
  }

  else
  {

    [(VTUISiriOptinViewController *)self showOptinConfirmationAlert:@"SIRI" optinChoice:1];
  }
}

- (void)okayButtonPressed:(id)pressed
{
  delegate = [(VTUISiriOptinViewController *)self delegate];
  [delegate buddyControllerDone:self];
}

- (void)learnMoreButtonPressed:(id)pressed
{
  v4 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:OBPrivacyAskSiriIdentifier];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (void)applyConfirmedOptin:(BOOL)optin
{
  if (optin)
  {
    delegate = [(VTUISiriOptinViewController *)self delegate];
    [delegate buddyControllerDone:self nextControllerClass:objc_opt_class()];
  }

  else
  {
    VTUISetSiriEnabled(0);
    delegate = [(VTUISiriOptinViewController *)self delegate];
    [delegate buddyControllerDone:self];
  }
}

- (id)suggestedButtonTitle
{
  if (self->_languageSupported)
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"SIRI_ACCEPT" value:&stru_84A0 table:@"Localizable"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)okayButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"OK" value:&stru_84A0 table:@"Localizable"];

  return v3;
}

- (id)alternateButtonTitle
{
  if (self->_languageSupported)
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"SIRI_DECLINE" value:&stru_84A0 table:@"Localizable"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)learnMoreButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ABOUT_SIRI" value:&stru_84A0 table:@"Localizable"];

  return v3;
}

- (id)detailTitleString
{
  languageSupported = self->_languageSupported;
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (languageSupported)
  {
    v5 = @"WHAT_IS_SIRI";
  }

  else
  {
    v5 = @"SIRI_FYI_NOT_SUPPORTED_TITLE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_84A0 table:@"Localizable"];

  return v6;
}

@end