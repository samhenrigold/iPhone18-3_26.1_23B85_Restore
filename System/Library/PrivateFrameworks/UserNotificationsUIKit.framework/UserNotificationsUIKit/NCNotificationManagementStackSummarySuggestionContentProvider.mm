@interface NCNotificationManagementStackSummarySuggestionContentProvider
- (NCNotificationManagementStackSummarySuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate summarizationSuggestionManager:(id)manager;
- (id)auxiliaryOptionActions;
- (void)handleContinueAction:(id)action;
- (void)handleOffAction:(id)action;
@end

@implementation NCNotificationManagementStackSummarySuggestionContentProvider

- (NCNotificationManagementStackSummarySuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate summarizationSuggestionManager:(id)manager
{
  requestCopy = request;
  nameCopy = name;
  managerCopy = manager;
  v24.receiver = self;
  v24.super_class = NCNotificationManagementStackSummarySuggestionContentProvider;
  v16 = [(NCNotificationManagementSuggestionContentProvider *)&v24 initWithNotificationRequest:requestCopy bundleDisplayName:nameCopy managementDelegate:delegate suggestionDelegate:suggestionDelegate];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_summarizationSuggestionManager, manager);
    objc_storeStrong(&v17->_notificationRequest, request);
    v18 = MEMORY[0x277CCACA8];
    v20 = NCUserNotificationsUIKitFrameworkBundle(v19);
    v21 = [v20 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_STACK_SUMMARY_SUGGESTION" value:&stru_282FE84F8 table:0];
    nameCopy = [v18 stringWithFormat:v21, nameCopy];
    [(NCNotificationManagementSuggestionContentProvider *)v17 setAuxiliaryOptionsSummaryText:nameCopy];
  }

  return v17;
}

- (id)auxiliaryOptionActions
{
  v22[2] = *MEMORY[0x277D85DE8];
  inited = objc_initWeak(&location, self);
  v3 = MEMORY[0x277D750C8];
  v4 = NCUserNotificationsUIKitFrameworkBundle(inited);
  v5 = [v4 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_SUGGESTION_CONTINUE" value:&stru_282FE84F8 table:0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __87__NCNotificationManagementStackSummarySuggestionContentProvider_auxiliaryOptionActions__block_invoke;
  v19[3] = &unk_27836F428;
  objc_copyWeak(&v20, &location);
  v6 = [v3 actionWithTitle:v5 image:0 identifier:@"notification-stack-summary-continue " handler:v19];

  v7 = MEMORY[0x277D750C8];
  v9 = NCUserNotificationsUIKitFrameworkBundle(v8);
  v10 = [v9 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_SUGGESTION_TURN_OFF" value:&stru_282FE84F8 table:0];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __87__NCNotificationManagementStackSummarySuggestionContentProvider_auxiliaryOptionActions__block_invoke_2;
  v17 = &unk_27836F428;
  objc_copyWeak(&v18, &location);
  v11 = [v7 actionWithTitle:v10 image:0 identifier:@"notification-stack-summary-turnoff" handler:&v14];

  v22[0] = v11;
  v22[1] = v6;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:{2, v14, v15, v16, v17}];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v12;
}

void __87__NCNotificationManagementStackSummarySuggestionContentProvider_auxiliaryOptionActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = *(WeakRetained + 6);
  v5 = [*(WeakRetained + 7) sectionIdentifier];
  [v4 recordEvent:4 bundleId:v5];

  v6 = [v3 sender];

  [WeakRetained handleContinueAction:v6];
}

void __87__NCNotificationManagementStackSummarySuggestionContentProvider_auxiliaryOptionActions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = *(WeakRetained + 6);
  v5 = [*(WeakRetained + 7) sectionIdentifier];
  [v4 recordEvent:5 bundleId:v5];

  v6 = [v3 sender];

  [WeakRetained handleOffAction:v6];
}

- (void)handleContinueAction:(id)action
{
  suggestionDelegate = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  notificationRequest = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [suggestionDelegate notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:notificationRequest];
}

- (void)handleOffAction:(id)action
{
  suggestionDelegate = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  currentNotificationSettingsCenter = [MEMORY[0x277D77F68] currentNotificationSettingsCenter];
  notificationRequest = [(NCNotificationManagementContentProvider *)self notificationRequest];
  sectionIdentifier = [notificationRequest sectionIdentifier];
  v7 = [currentNotificationSettingsCenter sourceWithIdentifier:sectionIdentifier];

  sourceSettings = [v7 sourceSettings];
  notificationSettings = [sourceSettings notificationSettings];
  v10 = [notificationSettings mutableCopy];

  [v10 setSummarizationSetting:1];
  notificationRequest2 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  sectionIdentifier2 = [notificationRequest2 sectionIdentifier];
  [currentNotificationSettingsCenter replaceNotificationSettings:v10 forNotificationSourceIdentifier:sectionIdentifier2];

  notificationRequest3 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [suggestionDelegate notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:notificationRequest3];
}

@end