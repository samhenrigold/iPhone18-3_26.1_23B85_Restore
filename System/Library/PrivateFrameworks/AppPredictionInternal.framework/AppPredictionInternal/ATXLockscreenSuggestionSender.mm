@interface ATXLockscreenSuggestionSender
- (ATXLockscreenSuggestionSender)init;
- (ATXLockscreenSuggestionSender)initWithLockscreenBlacklist:(id)blacklist actionNotificationServer:(id)server userDefaults:(id)defaults;
- (void)_updateCachedExecutableIdentifierWithSuggestion:(id)suggestion;
- (void)blendingLayerDidUpdateLockscreenUICache:(id)cache;
@end

@implementation ATXLockscreenSuggestionSender

- (ATXLockscreenSuggestionSender)init
{
  v3 = +[ATXLockscreenBlacklist sharedInstance];
  v4 = +[ATXActionNotificationServer sharedInstance];
  v5 = objc_alloc(MEMORY[0x277CBEBD0]);
  v6 = [v5 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v7 = [(ATXLockscreenSuggestionSender *)self initWithLockscreenBlacklist:v3 actionNotificationServer:v4 userDefaults:v6];

  return v7;
}

- (ATXLockscreenSuggestionSender)initWithLockscreenBlacklist:(id)blacklist actionNotificationServer:(id)server userDefaults:(id)defaults
{
  blacklistCopy = blacklist;
  serverCopy = server;
  defaultsCopy = defaults;
  v15.receiver = self;
  v15.super_class = ATXLockscreenSuggestionSender;
  v12 = [(ATXLockscreenSuggestionSender *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_lockscreenBlacklist, blacklist);
    objc_storeStrong(&v13->_actionNotificationServer, server);
    objc_storeStrong(&v13->_userDefaults, defaults);
  }

  return v13;
}

- (void)blendingLayerDidUpdateLockscreenUICache:(id)cache
{
  v43 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  v5 = __atxlog_handle_blending(cacheCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v39 = 138412546;
    v40 = v7;
    v41 = 2112;
    v42 = cacheCopy;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - received new ui cache: %@", &v39, 0x16u);
  }

  allSuggestionsInLayout = [cacheCopy allSuggestionsInLayout];
  firstObject = [allSuggestionsInLayout firstObject];
  executableSpecification = [firstObject executableSpecification];
  executableIdentifier = [executableSpecification executableIdentifier];

  _cachedExecutableIdentifier = [(ATXLockscreenSuggestionSender *)self _cachedExecutableIdentifier];
  [(ATXLockscreenSuggestionSender *)self _updateCachedExecutableIdentifierWithSuggestion:firstObject];
  isPredictionGloballyDisabled = [(ATXLockscreenBlacklist *)self->_lockscreenBlacklist isPredictionGloballyDisabled];
  if (!isPredictionGloballyDisabled)
  {
    LOBYTE(v39) = 0;
    v17 = *MEMORY[0x277CEBD00];
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"displayDonationsOnLockscreen", *MEMORY[0x277CEBD00], &v39);
    if (AppBooleanValue || (LOBYTE(v39) = 0, AppBooleanValue = CFPreferencesGetAppBooleanValue(@"displayLastDonationOnCoverSheet", v17, &v39), AppBooleanValue))
    {
      uuid = __atxlog_handle_blending(AppBooleanValue);
      if (os_log_type_enabled(uuid, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v39 = 138412290;
        v40 = v21;
        _os_log_impl(&dword_2263AA000, uuid, OS_LOG_TYPE_DEFAULT, "%@ - not forwarding predictions to lockscreen because demo or developer switch was on", &v39, 0xCu);
      }

LABEL_11:

      goto LABEL_12;
    }

    if (_cachedExecutableIdentifier)
    {
      v22 = executableIdentifier;
      v23 = v22;
      if (v22)
      {
        v24 = [_cachedExecutableIdentifier isEqualToString:v22];

        if (v24)
        {
          v25 = _cachedExecutableIdentifier;
          goto LABEL_20;
        }
      }

      v26 = __atxlog_handle_blending(v22);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v39 = 138412290;
        v40 = v28;
        _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_INFO, "%@ - revoke needed for old lock screen predictions", &v39, 0xCu);
      }

      [(ATXActionNotificationServer *)self->_actionNotificationServer removeAllActionPredictionNotificationsAndTrackEvent:1 recordFeedback:1];
      v29 = _cachedExecutableIdentifier;
      if (v23)
      {
LABEL_20:
        v30 = [v23 isEqualToString:_cachedExecutableIdentifier];

        if (v30)
        {
          goto LABEL_12;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v32 = __atxlog_handle_blending(AppBooleanValue);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v39 = 138412290;
        v40 = v34;
        _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_INFO, "%@ - revoking, although no old lock screen predictions detected", &v39, 0xCu);
      }

      v31 = [(ATXActionNotificationServer *)self->_actionNotificationServer removeAllActionPredictionNotificationsAndTrackEvent:0 recordFeedback:0];
      if (executableIdentifier)
      {
LABEL_25:
        v35 = __atxlog_handle_blending(v31);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          v39 = 138412290;
          v40 = v37;
          _os_log_impl(&dword_2263AA000, v35, OS_LOG_TYPE_INFO, "%@ - post needed for new lock screen predictions", &v39, 0xCu);
        }

        actionNotificationServer = self->_actionNotificationServer;
        uuid = [cacheCopy uuid];
        [(ATXActionNotificationServer *)actionNotificationServer postNotificationForProactiveSuggestion:firstObject blendingCacheUpdateUUID:uuid];
        goto LABEL_11;
      }
    }

    goto LABEL_12;
  }

  v14 = __atxlog_handle_blending(isPredictionGloballyDisabled);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v39 = 138412290;
    v40 = v16;
    _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "%@ - not forwarding predictions to lockscreen because predictions are globally disabled", &v39, 0xCu);
  }

  [(ATXActionNotificationServer *)self->_actionNotificationServer removeAllActionPredictionNotificationsAndTrackEvent:0 recordFeedback:0];
LABEL_12:
}

- (void)_updateCachedExecutableIdentifierWithSuggestion:(id)suggestion
{
  userDefaults = self->_userDefaults;
  executableSpecification = [suggestion executableSpecification];
  executableIdentifier = [executableSpecification executableIdentifier];
  [(NSUserDefaults *)userDefaults setObject:executableIdentifier forKey:@"lockscreen_prediction"];
}

@end