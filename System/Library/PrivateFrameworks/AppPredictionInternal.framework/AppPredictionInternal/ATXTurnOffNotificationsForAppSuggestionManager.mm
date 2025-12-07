@interface ATXTurnOffNotificationsForAppSuggestionManager
- (ATXTurnOffNotificationsForAppSuggestionManager)init;
- (ATXTurnOffNotificationsForAppSuggestionManager)initWithDataStore:(id)store;
- (id)activeSuggestions;
- (void)activeSuggestions;
@end

@implementation ATXTurnOffNotificationsForAppSuggestionManager

- (ATXTurnOffNotificationsForAppSuggestionManager)init
{
  v3 = objc_opt_new();
  v4 = [(ATXTurnOffNotificationsForAppSuggestionManager *)self initWithDataStore:v3];

  return v4;
}

- (ATXTurnOffNotificationsForAppSuggestionManager)initWithDataStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = ATXTurnOffNotificationsForAppSuggestionManager;
  v6 = [(ATXTurnOffNotificationsForAppSuggestionManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataStore, store);
  }

  return v7;
}

- (id)activeSuggestions
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v4 doubleForKey:*MEMORY[0x277CEBD40]];
  v6 = v5;
  v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v5];
  v8 = [(ATXNotificationAndSuggestionDatastore *)self->_dataStore allNotificationsFromBundleId:@"com.apple.tips" sinceTimestamp:v6];
  v9 = [v8 count];
  if (v9 > 3)
  {
    v10 = [v8 objectAtIndexedSubscript:3];
    second = [v10 second];
    v13 = [second isEqual:&unk_283A55EB0];

    if (v13)
    {
      v15 = __atxlog_handle_notification_management(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v26 = "[ATXTurnOffNotificationsForAppSuggestionManager activeSuggestions]";
        v27 = 2048;
        v28 = 4;
        v29 = 2112;
        v30 = @"com.apple.tips";
        _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "%s: The %ldth notification from %@ is not active so not sending a suggestion", buf, 0x20u);
      }
    }

    else
    {
      second2 = [v10 second];
      v17 = [second2 isEqual:&unk_283A55EC8];

      if (v17)
      {
        v19 = objc_alloc(MEMORY[0x277CEB6F0]);
        v20 = objc_opt_new();
        v21 = [MEMORY[0x277CBEAA8] now];
        first = [v10 first];
        v15 = [v19 initTurnOffNotificationsForAppSuggestionWithUUID:v20 bundleID:@"com.apple.tips" timestamp:v21 triggerNotificationUUID:first];

        v24 = v15;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
LABEL_13:

        goto LABEL_14;
      }

      v15 = __atxlog_handle_notification_management(v18);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [(ATXTurnOffNotificationsForAppSuggestionManager *)v10 activeSuggestions];
      }
    }

    v11 = MEMORY[0x277CBEBF8];
    goto LABEL_13;
  }

  v10 = __atxlog_handle_notification_management(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v26 = "[ATXTurnOffNotificationsForAppSuggestionManager activeSuggestions]";
    v27 = 2048;
    v28 = [v8 count];
    v29 = 2112;
    v30 = @"com.apple.tips";
    v31 = 2112;
    v32 = v7;
    v33 = 2048;
    v34 = 4;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "%s: There were only %ld notifications from %@ since the last upgrade on %@. We only send the suggestion on the %ldth notification, so not sending one.", buf, 0x34u);
  }

  v11 = MEMORY[0x277CBEBF8];
LABEL_14:

  return v11;
}

- (void)activeSuggestions
{
  v8 = *MEMORY[0x277D85DE8];
  second = [self second];
  v4 = 136315394;
  v5 = "[ATXTurnOffNotificationsForAppSuggestionManager activeSuggestions]";
  v6 = 2112;
  v7 = second;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "%s: Unexpected value for isActive. Expecting either 0 (NO) or 1 (YES). Instead got %@", &v4, 0x16u);
}

@end