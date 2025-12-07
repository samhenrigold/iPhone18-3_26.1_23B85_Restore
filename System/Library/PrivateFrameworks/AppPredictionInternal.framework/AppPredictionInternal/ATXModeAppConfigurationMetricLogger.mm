@interface ATXModeAppConfigurationMetricLogger
- (void)logMetricsWithXPCActivity:(id)activity;
@end

@implementation ATXModeAppConfigurationMetricLogger

- (void)logMetricsWithXPCActivity:(id)activity
{
  v52 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  mEMORY[0x277CEB440] = [MEMORY[0x277CEB440] sharedInstance];
  [mEMORY[0x277CEB440] configuredModes];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v27 = v43 = 0u;
  obj = [v27 allValues];
  v4 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v41;
    v29 = *v41;
    v30 = mEMORY[0x277CEB440];
    do
    {
      v7 = 0;
      v31 = v5;
      do
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v40 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        modeIdentifier = [v8 modeIdentifier];
        v39 = 0;
        v11 = [mEMORY[0x277CEB440] appConfigurationsForModeIdentifier:modeIdentifier error:&v39];
        v12 = v39;

        v34 = v11;
        if (v12)
        {
          allKeys = __atxlog_handle_metrics(v13);
          if (!os_log_type_enabled(allKeys, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }

          v15 = objc_opt_class();
          NSStringFromClass(v15);
          v16 = v33 = v9;
          localizedDescription = [v12 localizedDescription];
          [v8 semanticType];
          v18 = DNDModeSemanticTypeToString();
          *buf = 138412802;
          v46 = v16;
          v47 = 2112;
          v48 = localizedDescription;
          v49 = 2112;
          v50 = v18;
          _os_log_error_impl(&dword_2263AA000, allKeys, OS_LOG_TYPE_ERROR, "%@: Got error: %@, when getting AppConfigturation for %@", buf, 0x20u);

          v5 = v31;
        }

        else
        {
          v33 = v9;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          allKeys = [v11 allKeys];
          v19 = [allKeys countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v36;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v36 != v21)
                {
                  objc_enumerationMutation(allKeys);
                }

                v23 = *(*(&v35 + 1) + 8 * i);
                v24 = objc_opt_new();
                bundleID = [v23 bundleID];
                [v24 setBundleId:bundleID];

                [v8 semanticType];
                v26 = DNDModeSemanticTypeToString();
                [v24 setModeSemanticType:v26];

                [v24 logToCoreAnalytics];
              }

              v20 = [allKeys countByEnumeratingWithState:&v35 objects:v44 count:16];
            }

            while (v20);
            v6 = v29;
            mEMORY[0x277CEB440] = v30;
            v5 = v31;
          }
        }

        v9 = v33;
LABEL_18:

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v5);
  }
}

@end