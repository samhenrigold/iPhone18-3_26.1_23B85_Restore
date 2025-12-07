@interface NCNotificationManagementLongLookContentProvider
- (id)auxiliaryOptionActions;
@end

@implementation NCNotificationManagementLongLookContentProvider

- (id)auxiliaryOptionActions
{
  v15[1] = *MEMORY[0x277D85DE8];
  inited = objc_initWeak(&location, self);
  v3 = MEMORY[0x277D750C8];
  v4 = NCUserNotificationsUIKitFrameworkBundle(inited);
  v5 = [v4 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_SUGGESTION_MANAGE" value:&stru_282FE84F8 table:0];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __73__NCNotificationManagementLongLookContentProvider_auxiliaryOptionActions__block_invoke;
  v12 = &unk_27836F428;
  objc_copyWeak(&v13, &location);
  v6 = [v3 actionWithTitle:v5 image:0 identifier:@"notification-management-quieting-suggestion-manage" handler:&v9];

  v15[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:{1, v9, v10, v11, v12}];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v7;
}

void __73__NCNotificationManagementLongLookContentProvider_auxiliaryOptionActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleManageAction:v4];
}

@end