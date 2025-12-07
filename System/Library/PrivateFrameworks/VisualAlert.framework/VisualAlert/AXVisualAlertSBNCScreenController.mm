@interface AXVisualAlertSBNCScreenController
- (void)turnOnScreenForNotificationRequest:(id)request;
@end

@implementation AXVisualAlertSBNCScreenController

- (void)turnOnScreenForNotificationRequest:(id)request
{
  v17 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v13 = requestCopy;
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v16 = v11;
        _os_log_impl(&dword_27102A000, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  [requestCopy _accessibilitySetBoolValue:1 forKey:{@"AXTurnedOnScreen", v13}];
  v12 = +[AXVisualAlertManager sharedVisualAlertManager];
  [v12 addBulletin:requestCopy];

  v14.receiver = self;
  v14.super_class = AXVisualAlertSBNCScreenController;
  [(AXVisualAlertSBNCScreenController *)&v14 turnOnScreenForNotificationRequest:requestCopy];
}

@end