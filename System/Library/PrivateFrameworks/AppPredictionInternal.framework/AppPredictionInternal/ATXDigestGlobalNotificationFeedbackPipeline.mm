@interface ATXDigestGlobalNotificationFeedbackPipeline
- (ATXDigestGlobalNotificationFeedbackPipeline)init;
- (ATXDigestGlobalNotificationFeedbackPipeline)initWithFeedbackStore:(id)store notificationQuantityProvider:(id)provider lastRunTimestampKey:(id)key constants:(id)constants;
- (void)logGlobalNotificationStatisticsToDigestFeedbackWithXPCActivity:(id)activity;
@end

@implementation ATXDigestGlobalNotificationFeedbackPipeline

- (ATXDigestGlobalNotificationFeedbackPipeline)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [v4 updateDatabase];
  v5 = objc_opt_new();
  v6 = [(ATXDigestGlobalNotificationFeedbackPipeline *)self initWithFeedbackStore:v3 notificationQuantityProvider:v4 lastRunTimestampKey:@"digestGlobalNotficationFeedbackPipelineLastRunTime" constants:v5];

  return v6;
}

- (ATXDigestGlobalNotificationFeedbackPipeline)initWithFeedbackStore:(id)store notificationQuantityProvider:(id)provider lastRunTimestampKey:(id)key constants:(id)constants
{
  storeCopy = store;
  providerCopy = provider;
  keyCopy = key;
  constantsCopy = constants;
  v18.receiver = self;
  v18.super_class = ATXDigestGlobalNotificationFeedbackPipeline;
  v15 = [(ATXDigestGlobalNotificationFeedbackPipeline *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_feedbackStore, store);
    objc_storeStrong(&v16->_notificationQuantityProvider, provider);
    objc_storeStrong(&v16->_lastRunTimestampUserDefaultsKey, key);
    objc_storeStrong(&v16->_c, constants);
  }

  return v16;
}

- (void)logGlobalNotificationStatisticsToDigestFeedbackWithXPCActivity:(id)activity
{
  v66 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v5 = __atxlog_handle_notification_management(activityCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412290;
    v65 = v7;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "[%@] Starting pipeline", buf, 0xCu);
  }

  feedbackStore = self->_feedbackStore;
  [(ATXNotificationDigestRankingConstants *)self->_c dailyDecayFactor];
  v9 = __atxlog_handle_notification_management([(ATXNotificationDigestFeedbackProtocol *)feedbackStore decayFeedbackByFactor:?]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138412290;
    v65 = v11;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "[%@] Decayed digest feedback", buf, 0xCu);
  }

  v12 = objc_alloc(MEMORY[0x277CBEBD0]);
  v13 = [v12 initWithSuiteName:*MEMORY[0x277CEBD00]];
  Current = CFAbsoluteTimeGetCurrent();
  v15 = [v13 objectForKey:self->_lastRunTimestampUserDefaultsKey];

  if (v15)
  {
    [v13 doubleForKey:self->_lastRunTimestampUserDefaultsKey];
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  didDefer = [activityCopy didDefer];
  if (didDefer)
  {
    v19 = __atxlog_handle_notification_management(didDefer);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138412290;
      v65 = v21;
      _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_INFO, "[%@] XPC Activity deferred.", buf, 0xCu);
    }
  }

  else
  {
    v19 = [(ATXNotificationQuantityProviderProtocol *)self->_notificationQuantityProvider totalNotificationsPerAppFromStartTime:v17 toEndTime:Current];
    didDefer2 = [activityCopy didDefer];
    if (didDefer2)
    {
      v23 = __atxlog_handle_notification_management(didDefer2);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138412290;
        v65 = v25;
        _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_INFO, "[%@] XPC Activity deferred.", buf, 0xCu);
      }
    }

    else
    {
      v23 = [(ATXNotificationQuantityProviderProtocol *)self->_notificationQuantityProvider messageNotificationsPerAppFromStartTime:v17 toEndTime:Current];
      didDefer3 = [activityCopy didDefer];
      if (didDefer3)
      {
        v27 = __atxlog_handle_notification_management(didDefer3);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          *buf = 138412290;
          v65 = v29;
          _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_INFO, "[%@] XPC Activity deferred.", buf, 0xCu);
        }
      }

      else
      {
        v27 = [(ATXNotificationQuantityProviderProtocol *)self->_notificationQuantityProvider timeSensitiveNonmessageNotificationsPerAppFromStartTime:v17 toEndTime:Current];
        didDefer4 = [activityCopy didDefer];
        if (didDefer4)
        {
          v31 = __atxlog_handle_notification_management(didDefer4);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = objc_opt_class();
            v33 = NSStringFromClass(v32);
            *buf = 138412290;
            v65 = v33;
            _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_INFO, "[%@] XPC Activity deferred.", buf, 0xCu);
          }
        }

        else
        {
          v56 = v27;
          v57 = v23;
          selfCopy = self;
          v53 = v13;
          v54 = activityCopy;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v52 = v19;
          v34 = v19;
          v35 = [v34 countByEnumeratingWithState:&v59 objects:v63 count:16];
          if (v35)
          {
            v36 = v35;
            v55 = *v60;
            do
            {
              for (i = 0; i != v36; ++i)
              {
                if (*v60 != v55)
                {
                  objc_enumerationMutation(v34);
                }

                v38 = *(*(&v59 + 1) + 8 * i);
                v39 = [v34 objectForKeyedSubscript:v38];
                v40 = [v57 objectForKeyedSubscript:v38];
                v41 = v40;
                if (v40)
                {
                  v42 = v40;
                }

                else
                {
                  v42 = &unk_283A56FD8;
                }

                v43 = v42;

                v44 = [v56 objectForKeyedSubscript:v38];
                v45 = v44;
                if (v44)
                {
                  v46 = v44;
                }

                else
                {
                  v46 = &unk_283A56FD8;
                }

                v47 = v46;

                -[ATXNotificationDigestFeedbackProtocol logBasicNotificationsSentForBundleId:numNotifications:](selfCopy->_feedbackStore, "logBasicNotificationsSentForBundleId:numNotifications:", v38, [v39 unsignedIntegerValue] - (objc_msgSend(v43, "unsignedIntegerValue") + objc_msgSend(v47, "unsignedIntegerValue")));
                v48 = selfCopy->_feedbackStore;
                unsignedIntegerValue = [v47 unsignedIntegerValue];

                [(ATXNotificationDigestFeedbackProtocol *)v48 logTimeSensitiveNotificationsSentForBundleId:v38 numNotifications:unsignedIntegerValue];
              }

              v36 = [v34 countByEnumeratingWithState:&v59 objects:v63 count:16];
            }

            while (v36);
          }

          v13 = v53;
          v31 = __atxlog_handle_notification_management([v53 setDouble:selfCopy->_lastRunTimestampUserDefaultsKey forKey:Current]);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v50 = objc_opt_class();
            v51 = NSStringFromClass(v50);
            *buf = 138412290;
            v65 = v51;
            _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_INFO, "[%@] Finished logging global notifications sent", buf, 0xCu);
          }

          activityCopy = v54;
          v19 = v52;
          v27 = v56;
          v23 = v57;
        }
      }
    }
  }
}

@end