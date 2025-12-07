@interface ATXProactiveSuggestionShadowLoggerXPCScheduler
- (id)shadowLoggingURLPathWithFileName:(id)name;
- (void)shadowLogWithXPCActivity:(id)activity;
@end

@implementation ATXProactiveSuggestionShadowLoggerXPCScheduler

- (id)shadowLoggingURLPathWithFileName:(id)name
{
  v3 = MEMORY[0x277CEBCB0];
  nameCopy = name;
  feedbackRootDirectory = [v3 feedbackRootDirectory];
  v6 = [feedbackRootDirectory stringByAppendingPathComponent:@"shadowLogging"];

  v7 = [v6 stringByAppendingPathComponent:nameCopy];

  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];

  return v8;
}

- (void)shadowLogWithXPCActivity:(id)activity
{
  v51[8] = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v36 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  v35 = [MEMORY[0x277CBEAA8] now];
  v50[0] = &unk_283A57308;
  v50[1] = &unk_283A57338;
  v51[0] = &unk_283A58A18;
  v51[1] = &unk_283A58A30;
  v50[2] = &unk_283A57320;
  v50[3] = &unk_283A57368;
  v51[2] = &unk_283A58A48;
  v51[3] = &unk_283A58A60;
  v50[4] = &unk_283A57380;
  v50[5] = &unk_283A57398;
  v51[4] = &unk_283A58A78;
  v51[5] = &unk_283A58A90;
  v50[6] = &unk_283A573B0;
  v50[7] = &unk_283A573C8;
  v51[6] = &unk_283A58AA8;
  v51[7] = &unk_283A58AC0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:8];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  allKeys = [v4 allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    v9 = 0x277D42000uLL;
    v34 = activityCopy;
    v32 = allKeys;
    v33 = v4;
    v29 = *v43;
    do
    {
      v10 = 0;
      v30 = v7;
      do
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v42 + 1) + 8 * v10);
        integerValue = [v11 integerValue];
        if ((integerValue - 50) < 0xFFFFFFFFFFFFFFCFLL)
        {
          goto LABEL_24;
        }

        v13 = integerValue;
        v31 = v10;
        v37 = [*(v9 + 112) clientModelIdFromClientModelType:integerValue];
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v14 = [v4 objectForKeyedSubscript:v11];
        v15 = [v14 countByEnumeratingWithState:&v38 objects:v48 count:16];
        if (!v15)
        {
          goto LABEL_23;
        }

        v16 = v15;
        v17 = *v39;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v39 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v38 + 1) + 8 * i);
            if ([activityCopy didDefer])
            {

              allKeys = v32;
              v4 = v33;
              goto LABEL_28;
            }

            integerValue2 = [v19 integerValue];
            if ((integerValue2 - 11) >= 0xFFFFFFFFFFFFFFF6)
            {
              v21 = integerValue2;
              if (integerValue2 == 1)
              {
                v22 = off_2785933B8;
              }

              else
              {
                if (integerValue2 != 2)
                {
                  continue;
                }

                v22 = off_2785933B0;
              }

              v23 = v13;
              v24 = [objc_alloc(*v22) initWithClientModelType:v13];
              v25 = [objc_alloc(MEMORY[0x277D420B0]) initWithDataSource:v24];
              v26 = [v25 computeResultFromStartDate:v36 toEndDate:v35];
              v27 = [v26 asCoreAnalyticsMessageWithModelId:v37 executableType:v21];
              v28 = __atxlog_handle_metrics(v27);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v47 = v27;
                _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "Sending shadow metrics event to CoreAnalytics %@", buf, 0xCu);
              }

              AnalyticsSendEvent();
              v13 = v23;
              activityCopy = v34;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v38 objects:v48 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

LABEL_23:

        allKeys = v32;
        v4 = v33;
        v8 = v29;
        v7 = v30;
        v9 = 0x277D42000;
        v10 = v31;
LABEL_24:
        ++v10;
      }

      while (v10 != v7);
      v7 = [allKeys countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v7);
  }

LABEL_28:
}

@end