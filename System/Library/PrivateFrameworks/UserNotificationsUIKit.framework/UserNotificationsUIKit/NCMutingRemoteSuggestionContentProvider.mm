@interface NCMutingRemoteSuggestionContentProvider
- (NCMutingRemoteSuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate uuid:(id)uuid scope:(unint64_t)scope;
- (id)auxiliaryOptionActions;
- (void)handleAcceptAction:(id)action;
- (void)handleRejectAction:(id)action;
- (void)logSuggestionEvent:(int64_t)event;
@end

@implementation NCMutingRemoteSuggestionContentProvider

- (NCMutingRemoteSuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate uuid:(id)uuid scope:(unint64_t)scope
{
  nameCopy = name;
  v26.receiver = self;
  v26.super_class = NCMutingRemoteSuggestionContentProvider;
  v15 = [(NCRemoteSuggestionContentProvider *)&v26 initWithNotificationRequest:request bundleDisplayName:nameCopy managementDelegate:delegate suggestionDelegate:suggestionDelegate uuid:uuid];
  v16 = v15;
  if (v15)
  {
    v15->_scope = scope;
    if (scope)
    {
      if (scope != 1)
      {
        v17 = @"NOTIFICATION_REMOTE_MANAGEMENT_MUTING_SUGGESTION_EXPLANATION";
        nameCopy = &stru_282FE84F8;
        goto LABEL_10;
      }

      v17 = [@"NOTIFICATION_REMOTE_MANAGEMENT_MUTING_SUGGESTION_EXPLANATION" stringByAppendingString:@"_THREAD"];
      v18 = NCUserNotificationsUIKitFrameworkBundle(v17);
      nameCopy = [v18 localizedStringForKey:v17 value:&stru_282FE84F8 table:0];
    }

    else
    {
      v17 = [@"NOTIFICATION_REMOTE_MANAGEMENT_MUTING_SUGGESTION_EXPLANATION" stringByAppendingString:@"_APP"];
      v20 = MEMORY[0x277CCACA8];
      v21 = NCUserNotificationsUIKitFrameworkBundle(v17);
      v22 = [v21 localizedStringForKey:v17 value:&stru_282FE84F8 table:0];
      v25 = 0;
      nameCopy = [v20 stringWithValidatedFormat:v22 validFormatSpecifiers:@"%@" error:&v25, nameCopy];
      v18 = v25;

      if (v18)
      {
        v23 = *MEMORY[0x277D77DD8];
        if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_FAULT))
        {
          [NCModeConfigurationRemoteSuggestionContentProvider(Testing) _localizedSummaryStringForSuggestionType:nameCopy configurationType:v23 scope:v18 semanticType:? modeName:? bundleDisplayName:? preferredSenderSummary:? localizedStringForKeyBlock:?];
        }
      }
    }

LABEL_10:
    [(NCNotificationManagementSuggestionContentProvider *)v16 setAuxiliaryOptionsSummaryText:nameCopy];
  }

  return v16;
}

- (id)auxiliaryOptionActions
{
  v22[2] = *MEMORY[0x277D85DE8];
  inited = objc_initWeak(&location, self);
  v3 = MEMORY[0x277D750C8];
  v4 = NCUserNotificationsUIKitFrameworkBundle(inited);
  v5 = [v4 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_MUTING_SUGGESTION_NOT_NOW" value:&stru_282FE84F8 table:0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__NCMutingRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke;
  v19[3] = &unk_27836F428;
  objc_copyWeak(&v20, &location);
  v6 = [v3 actionWithTitle:v5 image:0 identifier:@"notification-management-remote-muting-suggestion-reject" handler:v19];

  v7 = MEMORY[0x277D750C8];
  v9 = NCUserNotificationsUIKitFrameworkBundle(v8);
  v10 = [v9 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_MUTING_SUGGESTION_MUTE" value:&stru_282FE84F8 table:0];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __65__NCMutingRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2;
  v17 = &unk_27836F428;
  objc_copyWeak(&v18, &location);
  v11 = [v7 actionWithTitle:v10 image:0 identifier:@"notification-management-remote-muting-suggestion-accept" handler:&v14];

  v22[0] = v6;
  v22[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:{2, v14, v15, v16, v17}];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v12;
}

void __65__NCMutingRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleRejectAction:v4];
}

void __65__NCMutingRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleAcceptAction:v4];
}

- (void)handleRejectAction:(id)action
{
  mEMORY[0x277CEB1B8] = [MEMORY[0x277CEB1B8] sharedInstance];
  uuid = [(NCRemoteSuggestionContentProvider *)self uuid];
  v6 = [MEMORY[0x277CBEAA8] now];
  [mEMORY[0x277CEB1B8] logSuggestionEvent:1 suggestionType:4 suggestionIdentifier:uuid timestamp:v6];

  suggestionDelegate = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  notificationRequest = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [suggestionDelegate notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:notificationRequest];
}

- (void)handleAcceptAction:(id)action
{
  actionCopy = action;
  managementDelegate = [(NCNotificationManagementContentProvider *)self managementDelegate];
  scope = self->_scope;
  if (scope)
  {
    if (scope != 1)
    {
      goto LABEL_6;
    }

    v6 = 7;
  }

  else
  {
    v6 = 6;
  }

  notificationRequest = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [managementDelegate notificationManagementContentProvider:self requestsPresentingNotificationManagementViewType:v6 forNotificationRequest:notificationRequest withPresentingView:actionCopy];

LABEL_6:
}

- (void)logSuggestionEvent:(int64_t)event
{
  mEMORY[0x277CEB1B8] = [MEMORY[0x277CEB1B8] sharedInstance];
  uuid = [(NCRemoteSuggestionContentProvider *)self uuid];
  v6 = [MEMORY[0x277CBEAA8] now];
  [mEMORY[0x277CEB1B8] logSuggestionEvent:event suggestionType:4 suggestionIdentifier:uuid timestamp:v6];
}

@end