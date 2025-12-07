@interface NCMessagesInDigestRemoteSuggestionContentProvider
- (NCMessagesInDigestRemoteSuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate uuid:(id)uuid;
- (id)auxiliaryOptionActions;
- (void)handleLeaveOnButtonAction:(id)action;
- (void)handleTurnOffMenuButtonAction:(id)action;
@end

@implementation NCMessagesInDigestRemoteSuggestionContentProvider

- (NCMessagesInDigestRemoteSuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate uuid:(id)uuid
{
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = NCMessagesInDigestRemoteSuggestionContentProvider;
  v13 = [(NCRemoteSuggestionContentProvider *)&v20 initWithNotificationRequest:request bundleDisplayName:nameCopy managementDelegate:delegate suggestionDelegate:suggestionDelegate uuid:uuid];
  v14 = v13;
  if (v13)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = NCUserNotificationsUIKitFrameworkBundle(v13);
    v17 = [v16 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_MESSAGES_IN_DIGEST_SUGGESTION" value:&stru_282FE84F8 table:0];
    nameCopy = [v15 stringWithFormat:v17, nameCopy];
    [(NCNotificationManagementSuggestionContentProvider *)v14 setAuxiliaryOptionsSummaryText:nameCopy];
  }

  return v14;
}

- (id)auxiliaryOptionActions
{
  v22[2] = *MEMORY[0x277D85DE8];
  inited = objc_initWeak(&location, self);
  v3 = MEMORY[0x277D750C8];
  v4 = NCUserNotificationsUIKitFrameworkBundle(inited);
  v5 = [v4 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_SUGGESTION_OFF" value:&stru_282FE84F8 table:0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __75__NCMessagesInDigestRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke;
  v19[3] = &unk_27836F428;
  objc_copyWeak(&v20, &location);
  v6 = [v3 actionWithTitle:v5 image:0 identifier:@"notification-management-remote-suggestion-in-digest-turn-off" handler:v19];

  v7 = MEMORY[0x277D750C8];
  v9 = NCUserNotificationsUIKitFrameworkBundle(v8);
  v10 = [v9 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_SUGGESTION_LEAVE_ON" value:&stru_282FE84F8 table:0];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __75__NCMessagesInDigestRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2;
  v17 = &unk_27836F428;
  objc_copyWeak(&v18, &location);
  v11 = [v7 actionWithTitle:v10 image:0 identifier:@"notification-management-remote-in-digest-leave-on" handler:&v14];

  v22[0] = v6;
  v22[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:{2, v14, v15, v16, v17}];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v12;
}

void __75__NCMessagesInDigestRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleTurnOffMenuButtonAction:v4];
}

void __75__NCMessagesInDigestRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleLeaveOnButtonAction:v4];
}

- (void)handleTurnOffMenuButtonAction:(id)action
{
  suggestionDelegate = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  notificationRequest = [(NCNotificationManagementContentProvider *)self notificationRequest];
  sectionIdentifier = [notificationRequest sectionIdentifier];
  [suggestionDelegate notificationManagementContentProvider:self setAllowsDirectMessages:0 forSectionIdentifier:sectionIdentifier];

  mEMORY[0x277CEB1B8] = [MEMORY[0x277CEB1B8] sharedInstance];
  uuid = [(NCRemoteSuggestionContentProvider *)self uuid];
  v8 = [MEMORY[0x277CBEAA8] now];
  [mEMORY[0x277CEB1B8] logSuggestionEvent:2 suggestionType:8 suggestionIdentifier:uuid timestamp:v8];

  notificationRequest2 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [suggestionDelegate notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:notificationRequest2];
}

- (void)handleLeaveOnButtonAction:(id)action
{
  suggestionDelegate = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  notificationRequest = [(NCNotificationManagementContentProvider *)self notificationRequest];
  sectionIdentifier = [notificationRequest sectionIdentifier];
  [suggestionDelegate notificationManagementContentProvider:self setAllowsDirectMessages:1 forSectionIdentifier:sectionIdentifier];

  mEMORY[0x277CEB1B8] = [MEMORY[0x277CEB1B8] sharedInstance];
  uuid = [(NCRemoteSuggestionContentProvider *)self uuid];
  v8 = [MEMORY[0x277CBEAA8] now];
  [mEMORY[0x277CEB1B8] logSuggestionEvent:1 suggestionType:8 suggestionIdentifier:uuid timestamp:v8];

  notificationRequest2 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [suggestionDelegate notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:notificationRequest2];
}

@end