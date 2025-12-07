@interface NCNotificationManagementMuteThreadAlertController
- (BOOL)_isMessagingThread;
- (id)_threadName;
- (void)_configureView;
@end

@implementation NCNotificationManagementMuteThreadAlertController

- (void)_configureView
{
  request = [(NCNotificationManagementAlertController *)self request];
  topLevelSectionIdentifier = [request topLevelSectionIdentifier];

  settingsDelegate = [(NCNotificationManagementAlertController *)self settingsDelegate];
  v6 = [settingsDelegate notificationManagementController:self sectionSettingsForSectionIdentifier:topLevelSectionIdentifier];

  v7 = MEMORY[0x277CCACA8];
  v9 = NCUserNotificationsUIKitFrameworkBundle(v8);
  v10 = [v9 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_MUTING_MENU_THREAD_TITLE" value:&stru_282FE84F8 table:0];
  displayName = [v6 displayName];
  _threadName = [(NCNotificationManagementMuteThreadAlertController *)self _threadName];
  v13 = [v7 stringWithFormat:v10, displayName, _threadName];
  [(NCNotificationManagementMuteThreadAlertController *)self setTitle:v13];

  v14 = MEMORY[0x277D750F8];
  v16 = NCUserNotificationsUIKitFrameworkBundle(v15);
  v17 = [v16 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_MUTING_SUGGESTION_ONE_HOUR" value:&stru_282FE84F8 table:0];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __67__NCNotificationManagementMuteThreadAlertController__configureView__block_invoke;
  v30[3] = &unk_278372948;
  v30[4] = self;
  v18 = [v14 _actionWithTitle:v17 image:0 style:0 handler:0 shouldDismissHandler:v30];

  v19 = [(NCNotificationManagementMuteThreadAlertController *)self addAction:v18];
  v20 = MEMORY[0x277D750F8];
  v21 = NCUserNotificationsUIKitFrameworkBundle(v19);
  v22 = [v21 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_MUTING_SUGGESTION_TODAY" value:&stru_282FE84F8 table:0];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __67__NCNotificationManagementMuteThreadAlertController__configureView__block_invoke_2;
  v29[3] = &unk_278372948;
  v29[4] = self;
  v23 = [v20 _actionWithTitle:v22 image:0 style:0 handler:0 shouldDismissHandler:v29];

  v24 = [(NCNotificationManagementMuteThreadAlertController *)self addAction:v23];
  v25 = MEMORY[0x277D750F8];
  v26 = NCUserNotificationsUIKitFrameworkBundle(v24);
  v27 = [v26 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_CANCEL" value:&stru_282FE84F8 table:0];
  v28 = [v25 actionWithTitle:v27 style:1 handler:0];
  [(NCNotificationManagementMuteThreadAlertController *)self addAction:v28];
}

uint64_t __67__NCNotificationManagementMuteThreadAlertController__configureView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) settingsDelegate];
  v3 = *(a1 + 32);
  v4 = _dateOneHourFromNow();
  v5 = [*(a1 + 32) request];
  v6 = [*(a1 + 32) request];
  v7 = [v6 topLevelSectionIdentifier];
  v8 = [*(a1 + 32) request];
  v9 = [v8 threadIdentifier];
  [v2 notificationManagementController:v3 setMuted:1 untilDate:v4 forNotificationRequest:v5 withSectionIdentifier:v7 threadIdentifier:v9];

  return 1;
}

uint64_t __67__NCNotificationManagementMuteThreadAlertController__configureView__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) settingsDelegate];
  v3 = *(a1 + 32);
  v4 = _dateUntilEndOfToday();
  v5 = [*(a1 + 32) request];
  v6 = [*(a1 + 32) request];
  v7 = [v6 topLevelSectionIdentifier];
  v8 = [*(a1 + 32) request];
  v9 = [v8 threadIdentifier];
  [v2 notificationManagementController:v3 setMuted:1 untilDate:v4 forNotificationRequest:v5 withSectionIdentifier:v7 threadIdentifier:v9];

  return 1;
}

- (id)_threadName
{
  if ([(NCNotificationManagementMuteThreadAlertController *)self _isMessagingThread])
  {
    request = [(NCNotificationManagementAlertController *)self request];
    content = [request content];
    communicationContext = [content communicationContext];
    preferredDescription = [communicationContext preferredDescription];
  }

  else
  {
    preferredDescription = 0;
  }

  return preferredDescription;
}

- (BOOL)_isMessagingThread
{
  request = [(NCNotificationManagementAlertController *)self request];
  content = [request content];
  isMessagingType = [content isMessagingType];

  return isMessagingType;
}

@end