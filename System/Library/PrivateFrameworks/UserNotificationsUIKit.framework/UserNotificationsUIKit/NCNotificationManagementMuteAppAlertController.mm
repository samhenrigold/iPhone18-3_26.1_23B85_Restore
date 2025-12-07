@interface NCNotificationManagementMuteAppAlertController
- (void)_configureView;
@end

@implementation NCNotificationManagementMuteAppAlertController

- (void)_configureView
{
  request = [(NCNotificationManagementAlertController *)self request];
  topLevelSectionIdentifier = [request topLevelSectionIdentifier];

  settingsDelegate = [(NCNotificationManagementAlertController *)self settingsDelegate];
  v6 = [settingsDelegate notificationManagementController:self sectionSettingsForSectionIdentifier:topLevelSectionIdentifier];

  v7 = MEMORY[0x277CCACA8];
  v9 = NCUserNotificationsUIKitFrameworkBundle(v8);
  v10 = [v9 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_MENU_APP_TITLE" value:&stru_282FE84F8 table:0];
  displayName = [v6 displayName];
  v12 = [v7 stringWithFormat:v10, displayName];
  [(NCNotificationManagementMuteAppAlertController *)self setTitle:v12];

  v13 = MEMORY[0x277D750F8];
  v15 = NCUserNotificationsUIKitFrameworkBundle(v14);
  v16 = [v15 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_MUTING_SUGGESTION_ONE_HOUR" value:&stru_282FE84F8 table:0];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __64__NCNotificationManagementMuteAppAlertController__configureView__block_invoke;
  v29[3] = &unk_278372948;
  v29[4] = self;
  v17 = [v13 _actionWithTitle:v16 image:0 style:0 handler:0 shouldDismissHandler:v29];

  v18 = [(NCNotificationManagementMuteAppAlertController *)self addAction:v17];
  v19 = MEMORY[0x277D750F8];
  v20 = NCUserNotificationsUIKitFrameworkBundle(v18);
  v21 = [v20 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_MUTING_SUGGESTION_TODAY" value:&stru_282FE84F8 table:0];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __64__NCNotificationManagementMuteAppAlertController__configureView__block_invoke_2;
  v28[3] = &unk_278372948;
  v28[4] = self;
  v22 = [v19 _actionWithTitle:v21 image:0 style:0 handler:0 shouldDismissHandler:v28];

  v23 = [(NCNotificationManagementMuteAppAlertController *)self addAction:v22];
  v24 = MEMORY[0x277D750F8];
  v25 = NCUserNotificationsUIKitFrameworkBundle(v23);
  v26 = [v25 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_CANCEL" value:&stru_282FE84F8 table:0];
  v27 = [v24 actionWithTitle:v26 style:1 handler:0];
  [(NCNotificationManagementMuteAppAlertController *)self addAction:v27];
}

uint64_t __64__NCNotificationManagementMuteAppAlertController__configureView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) settingsDelegate];
  v3 = *(a1 + 32);
  v4 = _dateOneHourFromNow();
  v5 = [*(a1 + 32) request];
  v6 = [*(a1 + 32) request];
  v7 = [v6 topLevelSectionIdentifier];
  [v2 notificationManagementController:v3 setMuted:1 untilDate:v4 forNotificationRequest:v5 withSectionIdentifier:v7 threadIdentifier:0];

  return 1;
}

uint64_t __64__NCNotificationManagementMuteAppAlertController__configureView__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) settingsDelegate];
  v3 = *(a1 + 32);
  v4 = _dateUntilEndOfToday();
  v5 = [*(a1 + 32) request];
  v6 = [*(a1 + 32) request];
  v7 = [v6 topLevelSectionIdentifier];
  [v2 notificationManagementController:v3 setMuted:1 untilDate:v4 forNotificationRequest:v5 withSectionIdentifier:v7 threadIdentifier:0];

  return 1;
}

@end