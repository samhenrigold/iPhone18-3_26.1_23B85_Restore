@interface SFSettingsAnalytics
+ (void)trackingAppAccessTransparencyVisited:(id)visited;
+ (void)trackingControlValueChanged:(id)changed sender:(id)sender;
+ (void)trackingPerformSelector:(id)selector targetString:(id)string;
+ (void)trackingSettingsOpenByURL:(BOOL)l url:(id)url;
+ (void)trackingSettingsSearchUsed:(BOOL)used isUser65AgeOrOlder:(BOOL)older numberOfSectionsInResults:(unint64_t)results numberOfTotalResults:(unint64_t)totalResults searchFromSpotlight:(BOOL)spotlight methodForEndingSearch:(unint64_t)search searchResultURL:(id)l searchActivityID:(id)self0;
+ (void)trackingStateOfRequestForSpecificApp:(unint64_t)app view:(id)view;
+ (void)trackingViewControllersVisitedInRootController:(id)controller;
@end

@implementation SFSettingsAnalytics

+ (void)trackingStateOfRequestForSpecificApp:(unint64_t)app view:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  if (viewCopy)
  {
    v14 = viewCopy;
    AnalyticsSendEventLazy();
    v6 = v14;
  }

  else
  {
    v6 = SFLogForCategory(4uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SFSettingsAnalytics *)v6 trackingStateOfRequestForSpecificApp:v7 view:v8, v9, v10, v11, v12, v13];
    }
  }
}

id __65__SFSettingsAnalytics_trackingStateOfRequestForSpecificApp_view___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"result";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  v5[1] = @"view";
  v6[0] = v2;
  v6[1] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

id __42__SFSettingsAnalytics_trackingViewVisited__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = @"result";
  v3[0] = &unk_28774C978;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __68__SFSettingsAnalytics_trackingStateOfRequest_askAppsToStopTracking___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"result";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v6[1] = @"askAppsToStopTracking";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 33)];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (void)trackingAppAccessTransparencyVisited:(id)visited
{
  visitedCopy = visited;
  v4 = visitedCopy;
  if (visitedCopy)
  {
    v13 = visitedCopy;
    AnalyticsSendEventLazy();
    v5 = v13;
  }

  else
  {
    v5 = SFLogForCategory(4uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SFSettingsAnalytics *)v5 trackingAppAccessTransparencyVisited:v6, v7, v8, v9, v10, v11, v12];
    }
  }
}

id __60__SFSettingsAnalytics_trackingAppAccessTransparencyVisited___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"result";
  v4[1] = @"app";
  v1 = *(a1 + 32);
  v5[0] = &unk_28774C978;
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

id __55__SFSettingsAnalytics_trackingRecordAppActivityVisited__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = @"result";
  v3[0] = MEMORY[0x277CBEC38];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id __47__SFSettingsAnalytics_trackingAppActivitySaved__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = @"result";
  v3[0] = &unk_28774C978;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

+ (void)trackingPerformSelector:(id)selector targetString:(id)string
{
  selectorCopy = selector;
  stringCopy = string;
  v7 = stringCopy;
  if (selectorCopy && stringCopy)
  {
    v16 = selectorCopy;
    v17 = v7;
    AnalyticsSendEventLazy();

    v8 = v16;
  }

  else
  {
    v8 = SFLogForCategory(4uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SFSettingsAnalytics *)v8 trackingPerformSelector:v9 targetString:v10, v11, v12, v13, v14, v15];
    }
  }
}

id __60__SFSettingsAnalytics_trackingPerformSelector_targetString___block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v6[0] = @"selector";
  v6[1] = @"target";
  v1 = *(a1 + 40);
  v7[0] = *(a1 + 32);
  v7[1] = v1;
  v6[2] = @"bundleID";
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v7[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

+ (void)trackingViewControllersVisitedInRootController:(id)controller
{
  controllerCopy = controller;
  v4 = controllerCopy;
  if (controllerCopy)
  {
    v13 = controllerCopy;
    AnalyticsSendEventLazy();
    v5 = v13;
  }

  else
  {
    v5 = SFLogForCategory(4uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SFSettingsAnalytics *)v5 trackingViewControllersVisitedInRootController:v6, v7, v8, v9, v10, v11, v12];
    }
  }
}

id __70__SFSettingsAnalytics_trackingViewControllersVisitedInRootController___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v6[0] = @"target";
  v6[1] = @"bundleID";
  v7[0] = v1;
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (void)trackingControlValueChanged:(id)changed sender:(id)sender
{
  changedCopy = changed;
  senderCopy = sender;
  v7 = senderCopy;
  if (changedCopy && senderCopy)
  {
    v16 = changedCopy;
    v17 = v7;
    AnalyticsSendEventLazy();

    v8 = v16;
  }

  else
  {
    v8 = SFLogForCategory(4uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SFSettingsAnalytics *)v8 trackingControlValueChanged:v9 sender:v10, v11, v12, v13, v14, v15];
    }
  }
}

id __58__SFSettingsAnalytics_trackingControlValueChanged_sender___block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v6[0] = @"target";
  v6[1] = @"sender";
  v1 = *(a1 + 40);
  v7[0] = *(a1 + 32);
  v7[1] = v1;
  v6[2] = @"bundleID";
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v7[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

+ (void)trackingSettingsOpenByURL:(BOOL)l url:(id)url
{
  urlCopy = url;
  v4 = urlCopy;
  AnalyticsSendEventLazy();
}

id __53__SFSettingsAnalytics_trackingSettingsOpenByURL_url___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"fromSearch";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v3 = *(a1 + 32);
  v9[0] = v2;
  v9[1] = v3;
  v8[1] = @"url";
  v8[2] = @"bundleID";
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 bundleIdentifier];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

+ (void)trackingSettingsSearchUsed:(BOOL)used isUser65AgeOrOlder:(BOOL)older numberOfSectionsInResults:(unint64_t)results numberOfTotalResults:(unint64_t)totalResults searchFromSpotlight:(BOOL)spotlight methodForEndingSearch:(unint64_t)search searchResultURL:(id)l searchActivityID:(id)self0
{
  lCopy = l;
  dCopy = d;
  v11 = dCopy;
  v12 = lCopy;
  AnalyticsSendEventLazy();
}

id __191__SFSettingsAnalytics_trackingSettingsSearchUsed_isUser65AgeOrOlder_numberOfSectionsInResults_numberOfTotalResults_searchFromSpotlight_methodForEndingSearch_searchResultURL_searchActivityID___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (*(a1 + 72) == 1)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v2 setObject:v3 forKeyedSubscript:@"keyboardDisplayed"];
  }

  if (*(a1 + 73) == 1)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v2 setObject:v4 forKeyedSubscript:@"isUser65AgeOrOlder"];
  }

  if (*(a1 + 48))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v2 setObject:v5 forKeyedSubscript:@"numberOfSectionsInResults"];
  }

  if (*(a1 + 56))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v2 setObject:v6 forKeyedSubscript:@"numberOfTotalResults"];
  }

  if (*(a1 + 74) == 1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v2 setObject:v7 forKeyedSubscript:@"searchFromSpotlight"];
  }

  if (*(a1 + 64))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v2 setObject:v8 forKeyedSubscript:@"methodForEndingSearch"];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    [v2 setObject:v9 forKeyedSubscript:@"searchResultURL"];
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    [v2 setObject:v10 forKeyedSubscript:@"searchActivityID"];
  }

  return v2;
}

+ (void)trackingStateOfRequestForSpecificApp:(uint64_t)a3 view:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "+[SFSettingsAnalytics trackingStateOfRequestForSpecificApp:view:]";
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{Public}s: view is nil", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)trackingAppAccessTransparencyVisited:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "+[SFSettingsAnalytics trackingAppAccessTransparencyVisited:]";
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{Public}s: appName is nil", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)trackingPerformSelector:(uint64_t)a3 targetString:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "+[SFSettingsAnalytics trackingPerformSelector:targetString:]";
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{Public}s: selectorString or targetString is nil", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)trackingViewControllersVisitedInRootController:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "+[SFSettingsAnalytics trackingViewControllersVisitedInRootController:]";
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{Public}s: targetString is nil", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)trackingControlValueChanged:(uint64_t)a3 sender:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "+[SFSettingsAnalytics trackingControlValueChanged:sender:]";
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{Public}s: targetClass or sender is nil", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end