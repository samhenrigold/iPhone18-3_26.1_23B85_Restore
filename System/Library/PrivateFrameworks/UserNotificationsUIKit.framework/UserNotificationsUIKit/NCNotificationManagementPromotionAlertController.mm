@interface NCNotificationManagementPromotionAlertController
- (void)_configureView;
@end

@implementation NCNotificationManagementPromotionAlertController

- (void)_configureView
{
  request = [(NCNotificationManagementAlertController *)self request];
  topLevelSectionIdentifier = [request topLevelSectionIdentifier];

  v5 = MEMORY[0x277D750F8];
  v7 = NCUserNotificationsUIKitFrameworkBundle(v6);
  v8 = [v7 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_DELIVER_IMMEDIATELY" value:&stru_282FE84F8 table:0];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __66__NCNotificationManagementPromotionAlertController__configureView__block_invoke;
  v28[3] = &unk_2783728A8;
  v28[4] = self;
  v9 = topLevelSectionIdentifier;
  v29 = v9;
  v10 = [v5 _actionWithTitle:v8 image:0 style:0 handler:0 shouldDismissHandler:v28];

  [(NCNotificationManagementPromotionAlertController *)self addAction:v10];
  settingsDelegate = [(NCNotificationManagementAlertController *)self settingsDelegate];
  v12 = [settingsDelegate notificationManagementControllerRequestsSystemSettings:self];

  isScheduledDeliveryEnabled = [v12 isScheduledDeliveryEnabled];
  if (isScheduledDeliveryEnabled)
  {
    v14 = MEMORY[0x277D750F8];
    v15 = NCUserNotificationsUIKitFrameworkBundle(isScheduledDeliveryEnabled);
    v16 = [v15 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_DELIVER_IN_SUMMARY" value:&stru_282FE84F8 table:0];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __66__NCNotificationManagementPromotionAlertController__configureView__block_invoke_2;
    v25 = &unk_2783728A8;
    selfCopy = self;
    v27 = v9;
    v17 = [v14 _actionWithTitle:v16 image:0 style:0 handler:0 shouldDismissHandler:&v22];

    [(NCNotificationManagementPromotionAlertController *)self addAction:v17, v22, v23, v24, v25, selfCopy];
  }

  v18 = MEMORY[0x277D750F8];
  v19 = NCUserNotificationsUIKitFrameworkBundle(isScheduledDeliveryEnabled);
  v20 = [v19 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_CANCEL" value:&stru_282FE84F8 table:0];
  v21 = [v18 actionWithTitle:v20 style:1 handler:0];
  [(NCNotificationManagementPromotionAlertController *)self addAction:v21];
}

uint64_t __66__NCNotificationManagementPromotionAlertController__configureView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) settingsDelegate];
  v3 = *(a1 + 32);
  v4 = [v3 request];
  [v2 notificationManagementController:v3 setScheduledDelivery:0 forNotificationRequest:v4 withSectionIdentifier:*(a1 + 40)];

  return 1;
}

uint64_t __66__NCNotificationManagementPromotionAlertController__configureView__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) settingsDelegate];
  v3 = *(a1 + 32);
  v4 = [v3 request];
  [v2 notificationManagementController:v3 setScheduledDelivery:1 forNotificationRequest:v4 withSectionIdentifier:*(a1 + 40)];

  return 1;
}

@end