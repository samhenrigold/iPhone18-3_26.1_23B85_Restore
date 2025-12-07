@interface NCNotificationManagementCuratedContactMatchSuggestionContentProvider
- (NCNotificationManagementCuratedContactMatchSuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate contactName:(id)contactName;
- (id)auxiliaryOptionActions;
- (void)handleConfirmAction:(id)action;
- (void)handleRejectAction:(id)action;
@end

@implementation NCNotificationManagementCuratedContactMatchSuggestionContentProvider

- (NCNotificationManagementCuratedContactMatchSuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate contactName:(id)contactName
{
  nameCopy = name;
  contactNameCopy = contactName;
  v21.receiver = self;
  v21.super_class = NCNotificationManagementCuratedContactMatchSuggestionContentProvider;
  v14 = [(NCNotificationManagementSuggestionContentProvider *)&v21 initWithNotificationRequest:request bundleDisplayName:nameCopy managementDelegate:delegate suggestionDelegate:suggestionDelegate];
  v15 = v14;
  if (v14)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = NCUserNotificationsUIKitFrameworkBundle(v14);
    v18 = [v17 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_CONTACT_SUGGESTION" value:&stru_282FE84F8 table:0];
    nameCopy = [v16 stringWithFormat:v18, contactNameCopy, nameCopy];

    [(NCNotificationManagementSuggestionContentProvider *)v15 setAuxiliaryOptionsSummaryText:nameCopy];
  }

  return v15;
}

- (id)auxiliaryOptionActions
{
  v22[2] = *MEMORY[0x277D85DE8];
  inited = objc_initWeak(&location, self);
  v3 = MEMORY[0x277D750C8];
  v4 = NCUserNotificationsUIKitFrameworkBundle(inited);
  v5 = [v4 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_CONTACT_UPDATE" value:&stru_282FE84F8 table:0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __94__NCNotificationManagementCuratedContactMatchSuggestionContentProvider_auxiliaryOptionActions__block_invoke;
  v19[3] = &unk_27836F428;
  objc_copyWeak(&v20, &location);
  v6 = [v3 actionWithTitle:v5 image:0 identifier:@"notification-management-contact-match-suggestion-confirm" handler:v19];

  v7 = MEMORY[0x277D750C8];
  v9 = NCUserNotificationsUIKitFrameworkBundle(v8);
  v10 = [v9 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_CONTACT_NOT_NOW" value:&stru_282FE84F8 table:0];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __94__NCNotificationManagementCuratedContactMatchSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2;
  v17 = &unk_27836F428;
  objc_copyWeak(&v18, &location);
  v11 = [v7 actionWithTitle:v10 image:0 identifier:@"notification-management-contact-match-suggestion-reject" handler:&v14];

  v22[0] = v6;
  v22[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:{2, v14, v15, v16, v17}];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v12;
}

void __94__NCNotificationManagementCuratedContactMatchSuggestionContentProvider_auxiliaryOptionActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleConfirmAction:v4];
}

void __94__NCNotificationManagementCuratedContactMatchSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleRejectAction:v4];
}

- (void)handleConfirmAction:(id)action
{
  suggestionDelegate = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  notificationRequest = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [suggestionDelegate notificationManagementContentProvider:self setCuratedContactSuggestionConfirmed:1 request:notificationRequest];

  notificationRequest2 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [suggestionDelegate notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:notificationRequest2];
}

- (void)handleRejectAction:(id)action
{
  suggestionDelegate = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  notificationRequest = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [suggestionDelegate notificationManagementContentProvider:self setCuratedContactSuggestionConfirmed:0 request:notificationRequest];

  notificationRequest2 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [suggestionDelegate notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:notificationRequest2];
}

@end