@interface PHThumperSetupController
+ (BOOL)_userHasAlreadyBeenPrompted;
+ (void)_removeHasShownPromptDefaultIfNecessary;
+ (void)showThumperAvailableDialogIfNecessary;
@end

@implementation PHThumperSetupController

+ (void)showThumperAvailableDialogIfNecessary
{
  if ((+[TUCallCapabilities supportsPrimaryCalling]& 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000175AC;
    block[3] = &unk_10010AF00;
    block[4] = self;
    if (qword_100126940 != -1)
    {
      dispatch_once(&qword_100126940, block);
    }

    if (!+[TUCallCapabilities supportsThumperCalling](TUCallCapabilities, "supportsThumperCalling") || (+[TUCallCapabilities isThumperCallingEnabled](TUCallCapabilities, "isThumperCallingEnabled") & 1) != 0 || (v3 = [self _userHasAlreadyBeenPrompted], (v3 & 1) != 0))
    {
      [self _removeHasShownPromptDefaultIfNecessary];
    }

    else
    {
      v4 = sub_100003B9C(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Showing upgrade-to-Thumper prompt because Thumper can be enabled but is not enabled already, and we haven't shown a prompt to the user already.", buf, 2u);
      }

      v5 = +[NSBundle mainBundle];
      v6 = TUStringKeyForNetworkAndProduct();
      v7 = [v5 localizedStringForKey:v6 value:&stru_10010E930 table:@"General"];
      v8 = [v5 localizedStringForKey:@"THUMPER_UPGRADE_MESSAGE" value:&stru_10010E930 table:@"General"];
      v9 = [v5 localizedStringForKey:@"NOT_NOW" value:&stru_10010E930 table:@"General"];
      v10 = [v5 localizedStringForKey:@"TURN_ON" value:&stru_10010E930 table:@"General"];
      v11 = [IMUserNotification userNotificationWithIdentifier:@"ThumperServiceAvailableNotification" title:v7 message:v8 defaultButton:v10 alternateButton:v9 otherButton:0];
      v12 = v11;
      if (v11)
      {
        [v11 setUsesNotificationCenter:0];
        bundleIdentifier = [v5 bundleIdentifier];
        [v12 setRepresentedApplicationBundle:bundleIdentifier];

        v14 = +[IMUserNotificationCenter sharedInstance];
        [v14 addUserNotification:v12 listener:0 completionHandler:&stru_10010AF40];
      }

      v15 = sub_100003B9C(v11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = @"HasOfferedTHMPUpgrade";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Setting %@ default because we are prompting the user", buf, 0xCu);
      }

      PHPreferencesSetValue();
    }
  }
}

+ (BOOL)_userHasAlreadyBeenPrompted
{
  v2 = PHPreferencesGetValue();
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (void)_removeHasShownPromptDefaultIfNecessary
{
  if (+[TUCallCapabilities isThumperCallingEnabled])
  {
    _userHasAlreadyBeenPrompted = [self _userHasAlreadyBeenPrompted];
    if (_userHasAlreadyBeenPrompted)
    {
      v4 = sub_100003B9C(_userHasAlreadyBeenPrompted);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 138412290;
        v6 = @"HasOfferedTHMPUpgrade";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing %@ default because Thumper is now enabled", &v5, 0xCu);
      }

      PHPreferencesSetValue();
    }
  }
}

@end