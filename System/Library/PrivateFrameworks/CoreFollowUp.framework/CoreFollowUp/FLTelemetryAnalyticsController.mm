@interface FLTelemetryAnalyticsController
- (void)_captureItem:(id)item event:(id)event source:(id)source;
- (void)captureActionForItem:(id)item withEvent:(unint64_t)event source:(unint64_t)source;
- (void)captureCurrentState:(id)state;
@end

@implementation FLTelemetryAnalyticsController

- (void)captureActionForItem:(id)item withEvent:(unint64_t)event source:(unint64_t)source
{
  itemCopy = item;
  clientIdentifier = [itemCopy clientIdentifier];
  v9 = [clientIdentifier isEqualToString:@"com.apple.followup.tests"];

  if ((v9 & 1) == 0)
  {
    v10 = @"other";
    v11 = @"other";
    if (source - 1 <= 3)
    {
      v11 = off_278852C70[source - 1];
    }

    if (event == 2)
    {
      v10 = @"userActivate";
    }

    if (event == 1)
    {
      v12 = @"userClear";
    }

    else
    {
      v12 = v10;
    }

    [(FLTelemetryAnalyticsController *)self _captureItem:itemCopy event:v12 source:v11];
  }
}

- (void)captureCurrentState:(id)state
{
  v28[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v4 = objc_alloc(MEMORY[0x277CCA940]);
  v5 = [stateCopy fl_map:&__block_literal_global_6];
  v6 = [v4 initWithArray:v5];

  v27 = @"all";
  v19 = stateCopy;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(stateCopy, "count")}];
  v28[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v9 = [v8 mutableCopy];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [v15 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "countForObject:", v15)}];
        [v9 setObject:v17 forKeyedSubscript:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __54__FLTelemetryAnalyticsController_captureCurrentState___block_invoke_2;
  v20[3] = &unk_278852C28;
  v21 = v9;
  v18 = v9;
  [FLTelemetryAnalyticsSender sendAnalyticsForEvent:@"com.apple.followup.groupCounts" builder:v20];
}

- (void)_captureItem:(id)item event:(id)event source:(id)source
{
  itemCopy = item;
  eventCopy = event;
  sourceCopy = source;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__FLTelemetryAnalyticsController__captureItem_event_source___block_invoke;
  v13[3] = &unk_278852C50;
  v14 = itemCopy;
  v15 = eventCopy;
  v16 = sourceCopy;
  v10 = sourceCopy;
  v11 = eventCopy;
  v12 = itemCopy;
  [FLTelemetryAnalyticsSender sendAnalyticsForEvent:@"com.apple.followup.items" builder:v13];
}

id __60__FLTelemetryAnalyticsController__captureItem_event_source___block_invoke(uint64_t a1)
{
  v14[5] = *MEMORY[0x277D85DE8];
  v13[0] = @"identifier";
  v2 = [*(a1 + 32) uniqueIdentifier];
  v14[0] = v2;
  v13[1] = @"client";
  v3 = [*(a1 + 32) clientIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"none";
  }

  v14[1] = v5;
  v13[2] = @"group";
  v6 = [*(a1 + 32) groupIdentifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"none";
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v14[2] = v8;
  v14[3] = v9;
  v13[3] = @"type";
  v13[4] = @"source";
  v14[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:5];

  return v11;
}

@end