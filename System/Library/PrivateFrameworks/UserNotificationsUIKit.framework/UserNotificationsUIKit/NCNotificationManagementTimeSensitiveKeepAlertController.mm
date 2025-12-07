@interface NCNotificationManagementTimeSensitiveKeepAlertController
- (void)_configureView;
@end

@implementation NCNotificationManagementTimeSensitiveKeepAlertController

- (void)_configureView
{
  v3 = NCUserNotificationsUIKitFrameworkBundle(self);
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_TIME_SENSITIVE_SUGGESTION_EXPLANATION" value:&stru_282FE84F8 table:0];
  [(NCNotificationManagementTimeSensitiveKeepAlertController *)self setTitle:v4];

  v5 = MEMORY[0x277D750F8];
  v7 = NCUserNotificationsUIKitFrameworkBundle(v6);
  v8 = [v7 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_TIME_SENSITIVE_SUGGESTION_KEEP_ON" value:&stru_282FE84F8 table:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__NCNotificationManagementTimeSensitiveKeepAlertController__configureView__block_invoke;
  v15[3] = &unk_278372948;
  v15[4] = self;
  v9 = [v5 _actionWithTitle:v8 image:0 style:0 handler:0 shouldDismissHandler:v15];

  v10 = [(NCNotificationManagementTimeSensitiveKeepAlertController *)self addAction:v9];
  v11 = MEMORY[0x277D750F8];
  v12 = NCUserNotificationsUIKitFrameworkBundle(v10);
  v13 = [v12 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_CANCEL" value:&stru_282FE84F8 table:0];
  v14 = [v11 actionWithTitle:v13 style:1 handler:0];
  [(NCNotificationManagementTimeSensitiveKeepAlertController *)self addAction:v14];
}

uint64_t __74__NCNotificationManagementTimeSensitiveKeepAlertController__configureView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) settingsDelegate];
  v3 = *(a1 + 32);
  v4 = [v3 request];
  v5 = [*(a1 + 32) request];
  v6 = [v5 topLevelSectionIdentifier];
  [v2 notificationManagementController:v3 setAllowsTimeSensitive:1 forNotificationRequest:v4 withSectionIdentifier:v6];

  return 1;
}

@end