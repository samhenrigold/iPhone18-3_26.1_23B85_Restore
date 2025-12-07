@interface ATXUserNotificationDigest
@end

@implementation ATXUserNotificationDigest

uint64_t __75__ATXUserNotificationDigest_EngagementTracking__computeNumDigestExpansions__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  if (!v3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v8 = __atxlog_handle_notification_management(isKindOfClass);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __75__ATXUserNotificationDigest_EngagementTracking__computeNumDigestExpansions__block_invoke_cold_1(v3, v8);
    }

    v9 = MEMORY[0x277CBEAD8];
    v10 = *MEMORY[0x277CBE658];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v9 raise:v10 format:{@"Encountered unknown event, expected ATXNotificationGroupEvent. Received: %@", v12}];

    goto LABEL_8;
  }

  if ([v3 eventType] != 10)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v5 = [v3 uuid];
  v6 = [*(a1 + 32) uuid];
  v7 = [v5 isEqual:v6];

LABEL_9:
  return v7;
}

void __75__ATXUserNotificationDigest_EngagementTracking__computeNumDigestExpansions__block_invoke_32(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v6 = __atxlog_handle_notification_management(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) uuid];
      v8 = [v3 error];
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Could not compute digest expansions for: %{public}@: %@", &v9, 0x16u);
    }
  }
}

void __75__ATXUserNotificationDigest_EngagementTracking__computeNumDigestExpansions__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Encountered unknown event, expected ATXNotificationGroupEvent. Received: %@", &v5, 0xCu);
}

@end