@interface AXVisualAlertSBScheduledAlarmObserver
- (void)_updateAlarmFiringChangedWithAlarm:(id)alarm;
@end

@implementation AXVisualAlertSBScheduledAlarmObserver

- (void)_updateAlarmFiringChangedWithAlarm:(id)alarm
{
  v19 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
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
      alarmID = [alarmCopy alarmID];
      isFiring = [alarmCopy isFiring];
      isSnoozed = [alarmCopy isSnoozed];
      v13 = alarmID;
      v12 = _AXStringForArgs();

      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v18 = v12;
        _os_log_impl(&dword_27102A000, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  if ([alarmCopy isFiring])
  {
    [_VisualAlertManager _handleBeginVisualAlertForAlarmWithSound:1];
  }

  else
  {
    [_VisualAlertManager _handleEndVisualAlertForAlarm];
  }

  v16.receiver = self;
  v16.super_class = AXVisualAlertSBScheduledAlarmObserver;
  [(AXVisualAlertSBScheduledAlarmObserver *)&v16 _updateAlarmFiringChangedWithAlarm:alarmCopy];
}

@end