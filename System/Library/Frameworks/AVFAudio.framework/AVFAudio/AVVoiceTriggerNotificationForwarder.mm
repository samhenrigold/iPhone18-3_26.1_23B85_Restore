@interface AVVoiceTriggerNotificationForwarder
- (VoiceTriggerNotificationInterface)target;
- (void)portStateChangedNotification:(id)notification;
- (void)siriClientRecordStateChangedNotification:(BOOL)notification recordingCount:(unint64_t)count;
- (void)speakerMuteStateChangedNotification:(BOOL)notification;
- (void)speakerStateChangedNotification:(id)notification;
- (void)voiceTriggerNotification:(id)notification;
@end

@implementation AVVoiceTriggerNotificationForwarder

- (VoiceTriggerNotificationInterface)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (void)siriClientRecordStateChangedNotification:(BOOL)notification recordingCount:(unint64_t)count
{
  notificationCopy = notification;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained siriClientRecordStateChangedNotification:notificationCopy recordingCount:count];
}

- (void)speakerMuteStateChangedNotification:(BOOL)notification
{
  notificationCopy = notification;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained speakerMuteStateChangedNotification:notificationCopy];
}

- (void)portStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained portStateChangedNotification:notificationCopy];
}

- (void)speakerStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained speakerStateChangedNotification:notificationCopy];
}

- (void)voiceTriggerNotification:(id)notification
{
  notificationCopy = notification;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained voiceTriggerNotification:notificationCopy];
}

@end