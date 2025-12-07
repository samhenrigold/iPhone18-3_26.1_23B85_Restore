@interface HDNotificationManager(Medications)
- (void)removeDeliveredNotificationsForScheduleItemIdentifiers:()Medications;
@end

@implementation HDNotificationManager(Medications)

- (void)removeDeliveredNotificationsForScheduleItemIdentifiers:()Medications
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogMedication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_25181C000, v5, OS_LOG_TYPE_DEFAULT, "[%public@] Removing delivered notifications for scheduleItems: %@", buf, 0x16u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __93__HDNotificationManager_Medications__removeDeliveredNotificationsForScheduleItemIdentifiers___block_invoke;
  v7[3] = &unk_2796CE828;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [self getDeliveredNotificationsWithCompletionHandler:v7];
}

@end