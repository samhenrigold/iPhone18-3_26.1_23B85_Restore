@interface MSComposeAnalytics
+ (EFScheduler)scheduler;
+ (void)sendAnalyticsSignal:(int64_t)signal threadIdentifier:(id)identifier isDraft:(BOOL)draft;
@end

@implementation MSComposeAnalytics

+ (EFScheduler)scheduler
{
  if (scheduler_onceToken != -1)
  {
    +[MSComposeAnalytics scheduler];
  }

  v3 = scheduler_scheduler;

  return v3;
}

void __31__MSComposeAnalytics_scheduler__block_invoke()
{
  v0 = [MEMORY[0x277D071B8] serialDispatchQueueSchedulerWithName:@"com.apple.mobilemail.compose-analytics" qualityOfService:-1];
  v1 = scheduler_scheduler;
  scheduler_scheduler = v0;
}

+ (void)sendAnalyticsSignal:(int64_t)signal threadIdentifier:(id)identifier isDraft:(BOOL)draft
{
  draftCopy = draft;
  v20[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v8 = 0;
  v9 = @"Unknown";
  if (signal > 1)
  {
    if (signal == 2)
    {
      v11 = MEMORY[0x277D1BE48];
    }

    else
    {
      if (signal != 3)
      {
LABEL_10:
        v12 = +[MSComposeAnalytics scheduler];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __67__MSComposeAnalytics_sendAnalyticsSignal_threadIdentifier_isDraft___block_invoke;
        v15[3] = &unk_27985B430;
        v13 = v9;
        v16 = v13;
        v17 = identifierCopy;
        v18 = v8;
        v14 = v8;
        [v12 performBlock:v15];

        goto LABEL_11;
      }

      v11 = MEMORY[0x277D1BE40];
    }

    v9 = *v11;
    v8 = 0;
    goto LABEL_10;
  }

  if (signal)
  {
    if (signal == 1)
    {
      v9 = *MEMORY[0x277D1BE50];
      v19 = *MEMORY[0x277D1B548];
      v10 = [MEMORY[0x277CCABB0] numberWithBool:draftCopy];
      v20[0] = v10;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    }

    goto LABEL_10;
  }

LABEL_11:
}

@end