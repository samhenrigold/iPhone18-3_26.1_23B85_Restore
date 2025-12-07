@interface NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider
- (NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate;
- (id)auxiliaryOptionActions;
- (void)handleLeaveOnAction:(id)action;
- (void)handleOffAction:(id)action;
@end

@implementation NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider

- (NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate
{
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider;
  v11 = [(NCNotificationManagementSuggestionContentProvider *)&v18 initWithNotificationRequest:request bundleDisplayName:nameCopy managementDelegate:delegate suggestionDelegate:suggestionDelegate];
  v12 = v11;
  if (v11)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = NCUserNotificationsUIKitFrameworkBundle(v11);
    v15 = [v14 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_MESSAGES_IN_DIGEST_SUGGESTION" value:&stru_282FE84F8 table:0];
    nameCopy = [v13 stringWithFormat:v15, nameCopy, nameCopy];
    [(NCNotificationManagementSuggestionContentProvider *)v12 setAuxiliaryOptionsSummaryText:nameCopy];
  }

  return v12;
}

- (id)auxiliaryOptionActions
{
  v22[2] = *MEMORY[0x277D85DE8];
  inited = objc_initWeak(&location, self);
  v3 = MEMORY[0x277D750C8];
  v4 = NCUserNotificationsUIKitFrameworkBundle(inited);
  v5 = [v4 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_SUGGESTION_TURN_OFF" value:&stru_282FE84F8 table:0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __97__NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider_auxiliaryOptionActions__block_invoke;
  v19[3] = &unk_27836F428;
  objc_copyWeak(&v20, &location);
  v6 = [v3 actionWithTitle:v5 image:0 identifier:@"notification-management-direct-message-in-digest-turn-off" handler:v19];

  v7 = MEMORY[0x277D750C8];
  v9 = NCUserNotificationsUIKitFrameworkBundle(v8);
  v10 = [v9 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_SUGGESTION_LEAVE_ON" value:&stru_282FE84F8 table:0];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __97__NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2;
  v17 = &unk_27836F428;
  objc_copyWeak(&v18, &location);
  v11 = [v7 actionWithTitle:v10 image:0 identifier:@"notification-management-suggestion-direct-message-in-digest-leave-on" handler:&v14];

  v22[0] = v6;
  v22[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:{2, v14, v15, v16, v17}];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v12;
}

void __97__NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider_auxiliaryOptionActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleOffAction:v4];
}

void __97__NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleLeaveOnAction:v4];
}

- (void)handleOffAction:(id)action
{
  suggestionDelegate = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  notificationRequest = [(NCNotificationManagementContentProvider *)self notificationRequest];
  sectionIdentifier = [notificationRequest sectionIdentifier];
  [suggestionDelegate notificationManagementContentProvider:self setAllowsDirectMessages:0 forSectionIdentifier:sectionIdentifier];

  notificationRequest2 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [suggestionDelegate notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:notificationRequest2];
}

- (void)handleLeaveOnAction:(id)action
{
  suggestionDelegate = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  notificationRequest = [(NCNotificationManagementContentProvider *)self notificationRequest];
  sectionIdentifier = [notificationRequest sectionIdentifier];
  [suggestionDelegate notificationManagementContentProvider:self setAllowsDirectMessages:1 forSectionIdentifier:sectionIdentifier];

  notificationRequest2 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [suggestionDelegate notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:notificationRequest2];
}

@end