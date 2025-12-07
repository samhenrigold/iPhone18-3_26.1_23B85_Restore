@interface ATXAppProtectionMonitor
@end

@implementation ATXAppProtectionMonitor

void __42___ATXAppProtectionMonitor_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_43;
  sharedInstance__pasExprOnceResult_43 = v1;

  objc_autoreleasePoolPop(v0);
}

void __73___ATXAppProtectionMonitor_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) appProtectionSubjectMonitorSubscription];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = [*(a1 + 48) _pas_mappedArrayWithTransform:&__block_literal_global_25_7];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v37;
      *&v6 = 138412290;
      v35 = v6;
      do
      {
        v9 = 0;
        do
        {
          if (*v37 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v36 + 1) + 8 * v9);
          if (([v10 isHidden] & 1) != 0 || objc_msgSend(v10, "isLocked"))
          {
            v11 = objc_opt_new();
            v12 = objc_opt_new();
            v13 = [v10 isLocked];
            if (v13)
            {
              v14 = __atxlog_handle_default(v13);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                v15 = [v10 bundleIdentifier];
                *buf = v35;
                v41 = v15;
                _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "_ATXAppProtectionMonitor: %@ is locked", buf, 0xCu);
              }

              v16 = [v10 bundleIdentifier];
              [v11 addObject:v16];
            }

            v17 = [v10 isHidden];
            if (v17)
            {
              v18 = __atxlog_handle_default(v17);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = [v10 bundleIdentifier];
                *buf = v35;
                v41 = v19;
                _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "_ATXAppProtectionMonitor: %@ is hidden", buf, 0xCu);
              }

              v20 = [v10 bundleIdentifier];
              [v12 addObject:v20];
            }

            v21 = [[ATXAppProtectionLockedOrHidden alloc] initWithLockedApps:v11 hiddenApps:v12];
            v22 = __atxlog_handle_default(v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [v10 bundleIdentifier];
              *buf = v35;
              v41 = v23;
              _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "_ATXAppProtectionMonitor: Sending internal notification for locked/hidden app: %@", buf, 0xCu);
            }

            [ATXInternalLockedOrHiddenAppNotification postNotificationWithLockedOrHiddenApps:v21];
LABEL_20:

            goto LABEL_21;
          }

          if (![v10 isHidden] || (objc_msgSend(v10, "isLocked") & 1) == 0)
          {
            v11 = objc_opt_new();
            v12 = objc_opt_new();
            v24 = [v10 isLocked];
            if ((v24 & 1) == 0)
            {
              v25 = __atxlog_handle_default(v24);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                v26 = [v10 bundleIdentifier];
                *buf = v35;
                v41 = v26;
                _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "_ATXAppProtectionMonitor: %@ is no longer locked", buf, 0xCu);
              }

              v27 = [v10 bundleIdentifier];
              [v11 addObject:v27];
            }

            v28 = [v10 isHidden];
            if ((v28 & 1) == 0)
            {
              v29 = __atxlog_handle_default(v28);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = [v10 bundleIdentifier];
                *buf = v35;
                v41 = v30;
                _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "_ATXAppProtectionMonitor: %@ is no longer hidden", buf, 0xCu);
              }

              v31 = [v10 bundleIdentifier];
              [v12 addObject:v31];
            }

            v32 = __atxlog_handle_default(v28);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = [v10 bundleIdentifier];
              *buf = v35;
              v41 = v33;
              _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_DEFAULT, "_ATXAppProtectionMonitor: Sending internal notification for unlocked/unhidden app: %@", buf, 0xCu);
            }

            v21 = [[ATXAppProtectionUnLockedOrUnHidden alloc] initWithUnLockedApps:v11 unHiddenApps:v12];
            [ATXInternalUnLockedOrUnHiddenAppNotification postNotificationWithUnLockedOrUnHiddenApps:v21];
            goto LABEL_20;
          }

LABEL_21:
          ++v9;
        }

        while (v7 != v9);
        v5 = [v4 countByEnumeratingWithState:&v36 objects:v42 count:16];
        v7 = v5;
      }

      while (v5);
    }

    v34 = __atxlog_handle_default(v5);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v4;
      _os_log_impl(&dword_2263AA000, v34, OS_LOG_TYPE_DEFAULT, "_ATXAppProtectionMonitor: Received App Protection change:  %@. Refreshing blending layer suggestions immediately", buf, 0xCu);
    }

    ATXUpdatePredictionsImmediatelyWithReason(21);
  }
}

Class __73___ATXAppProtectionMonitor_appProtectionSubjectsChanged_forSubscription___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = NSClassFromString(&cfstr_Apapplication.isa);
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

@end