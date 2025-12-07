@interface ATXHomeScreenLogWidgetSetupDictionaries
- (ATXHomeScreenLogWidgetSetupDictionaries)init;
- (id)dryRunResult;
- (void)_copyAllowedWidgetBundleIds;
- (void)_createNewWidgetSetupDictionaryForWidget:(id)widget stackKind:(unint64_t)kind stackLocation:(unint64_t)location rowCoordinate:(int64_t)coordinate columnCoordinate:(int64_t)columnCoordinate;
- (void)_createStackConfigStatisticsForWidget:(id)widget stackKind:(unint64_t)kind;
- (void)_finalizeWidgetSetupDictionaries;
- (void)_persistStackConfigStatistics;
- (void)_removeAuxiliaryFieldsFromWidgetSetupDictionaries;
- (void)sendToCoreAnalytics;
- (void)updateTotalUnlockSessions:(unint64_t)sessions;
- (void)updateWidgetLevelParentAppLaunches:(id)launches;
- (void)updateWidgetSetupSummaryForHomeScreenPages:(id)pages;
@end

@implementation ATXHomeScreenLogWidgetSetupDictionaries

- (ATXHomeScreenLogWidgetSetupDictionaries)init
{
  v10.receiver = self;
  v10.super_class = ATXHomeScreenLogWidgetSetupDictionaries;
  v2 = [(ATXHomeScreenLogWidgetSetupDictionaries *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    widgetSetupDictionaries = v2->_widgetSetupDictionaries;
    v2->_widgetSetupDictionaries = v3;

    v5 = objc_opt_new();
    stackConfigDictionary = v2->_stackConfigDictionary;
    v2->_stackConfigDictionary = v5;

    mEMORY[0x277CEB5C8] = [MEMORY[0x277CEB5C8] sharedInstance];
    informationStore = v2->_informationStore;
    v2->_informationStore = mEMORY[0x277CEB5C8];
  }

  return v2;
}

- (void)updateWidgetSetupSummaryForHomeScreenPages:(id)pages
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__ATXHomeScreenLogWidgetSetupDictionaries_updateWidgetSetupSummaryForHomeScreenPages___block_invoke;
  v4[3] = &unk_27859F538;
  v4[4] = self;
  [pages enumerateObjectsUsingBlock:v4];
  [(ATXHomeScreenLogWidgetSetupDictionaries *)self _persistStackConfigStatistics];
}

void __86__ATXHomeScreenLogWidgetSetupDictionaries_updateWidgetSetupSummaryForHomeScreenPages___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v21 = ATXStackLocationForPageAndIndex();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [v3 stacks];
  v16 = v3;
  v5 = [v3 panels];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

  obj = v6;
  v19 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v19)
  {
    v18 = *v27;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v7;
        v8 = *(*(&v26 + 1) + 8 * v7);
        v9 = ATXStackKindForStack();
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = [v8 widgets];
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
              [*(a1 + 32) _createNewWidgetSetupDictionaryForWidget:v15 stackKind:v9 stackLocation:v21 rowCoordinate:objc_msgSend(v8 columnCoordinate:{"coordinateRow"), objc_msgSend(v8, "coordinateColumn")}];
              [*(a1 + 32) _createStackConfigStatisticsForWidget:v15 stackKind:v9];
            }

            v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v12);
        }

        ++v7;
      }

      while (v20 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v19);
  }
}

- (void)_persistStackConfigStatistics
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [(NSMutableDictionary *)self->_stackConfigDictionary allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = objc_alloc(MEMORY[0x277D420D8]);
        v10 = [(NSMutableDictionary *)self->_stackConfigDictionary objectForKeyedSubscript:v8];
        v11 = [v9 initWithBuilder:v10];

        v12 = [(ATXInformationStore *)self->_informationStore addStackConfigStatistics:v11];
        if ((v12 & 1) == 0)
        {
          v13 = __atxlog_handle_timeline(v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v19 = v8;
            _os_log_error_impl(&dword_2263AA000, v13, OS_LOG_TYPE_ERROR, "ATXHomeScreenLogWidgetSetupDictionaries: unable to persist stack config statistics for timeline (%@)", buf, 0xCu);
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }
}

- (void)_createStackConfigStatisticsForWidget:(id)widget stackKind:(unint64_t)kind
{
  widgetCopy = widget;
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  extensionBundleId = [widgetCopy extensionBundleId];
  widgetKind = [widgetCopy widgetKind];
  [widgetCopy size];
  v9 = ATXStringForStackLayoutSize();
  appBundleId = [widgetCopy appBundleId];
  v11 = [v6 initWithFormat:@"%@:%@:%@:%@", extensionBundleId, widgetKind, v9, appBundleId];

  v12 = [(NSMutableDictionary *)self->_stackConfigDictionary objectForKeyedSubscript:v11];

  if (!v12)
  {
    v13 = objc_alloc(MEMORY[0x277D420E0]);
    extensionBundleId2 = [widgetCopy extensionBundleId];
    widgetKind2 = [widgetCopy widgetKind];
    appBundleId2 = [widgetCopy appBundleId];
    [widgetCopy size];
    v17 = [v13 initWithWidgetBundleId:extensionBundleId2 widgetKind:widgetKind2 containerBundleIdentifier:appBundleId2 widgetFamily:CHSWidgetFamilyFromATXStackLayoutSize()];

    [(NSMutableDictionary *)self->_stackConfigDictionary setObject:v17 forKeyedSubscript:v11];
  }

  if (kind <= 7)
  {
    if (((1 << kind) & 0x54) != 0)
    {
      v18 = [(NSMutableDictionary *)self->_stackConfigDictionary objectForKeyedSubscript:v11];
      [v18 setCountOfSmartStacksWithWidget:{objc_msgSend(v18, "countOfSmartStacksWithWidget") + 1}];
      goto LABEL_12;
    }

    if (((1 << kind) & 0xA8) != 0)
    {
      v18 = [(NSMutableDictionary *)self->_stackConfigDictionary objectForKeyedSubscript:v11];
      [v18 setCountOfNonSmartStacksWithWidget:{objc_msgSend(v18, "countOfNonSmartStacksWithWidget") + 1}];
      goto LABEL_12;
    }

    if (kind == 1)
    {
      v18 = [(NSMutableDictionary *)self->_stackConfigDictionary objectForKeyedSubscript:v11];
      [v18 setCountOfStandaloneWidgets:{objc_msgSend(v18, "countOfStandaloneWidgets") + 1}];
      goto LABEL_12;
    }
  }

  if (kind)
  {
    goto LABEL_13;
  }

  v18 = [(NSMutableDictionary *)self->_stackConfigDictionary objectForKeyedSubscript:v11];
  [v18 setCountOfWidgetsWithUnknownStackKind:{objc_msgSend(v18, "countOfWidgetsWithUnknownStackKind") + 1}];
LABEL_12:

LABEL_13:
}

- (void)_createNewWidgetSetupDictionaryForWidget:(id)widget stackKind:(unint64_t)kind stackLocation:(unint64_t)location rowCoordinate:(int64_t)coordinate columnCoordinate:(int64_t)columnCoordinate
{
  widgetCopy = widget;
  extensionBundleId = [widgetCopy extensionBundleId];
  widgetKind = [widgetCopy widgetKind];
  v13 = [extensionBundleId length];
  if (v13 && (v13 = [widgetKind length]) != 0)
  {
    columnCoordinateCopy = columnCoordinate;
    v14 = objc_opt_new();
    v15 = MEMORY[0x277CEB9B0];
    [widgetCopy extensionBundleId];
    v16 = v36 = self;
    widgetKind2 = [widgetCopy widgetKind];
    v18 = [v15 stringRepresentationForExtensionBundleId:v16 kind:widgetKind2];
    [v14 setObject:v18 forKeyedSubscript:@"WidgetBundleIdAndKind"];

    v19 = MEMORY[0x277CCABB0];
    extensionBundleId2 = [widgetCopy extensionBundleId];
    v21 = [v19 numberWithBool:{+[ATXHomeScreenLogUploaderUtilities isFirstPartyApp:](ATXHomeScreenLogUploaderUtilities, "isFirstPartyApp:", extensionBundleId2)}];
    [v14 setObject:v21 forKeyedSubscript:@"widgetIsFirstParty"];

    [widgetCopy size];
    v22 = ATXStringForStackLayoutSize();
    [v14 setObject:v22 forKeyedSubscript:@"widgetSize"];

    v23 = ATXStringForStackKind();
    [v14 setObject:v23 forKeyedSubscript:@"stackKind"];

    v24 = ATXStringForStackLocation();
    [v14 setObject:v24 forKeyedSubscript:@"stackLocation"];

    v25 = [MEMORY[0x277CCABB0] numberWithInteger:coordinate];
    [v14 setObject:v25 forKeyedSubscript:@"stackLocationRowCoordinate"];

    v26 = [MEMORY[0x277CCABB0] numberWithInteger:columnCoordinateCopy];
    [v14 setObject:v26 forKeyedSubscript:@"stackLocationColumnCoordinate"];

    appBundleId = [widgetCopy appBundleId];
    [v14 setObject:appBundleId forKeyedSubscript:@"ParentAppBundleId"];

    [v14 setObject:&unk_283A56F90 forKeyedSubscript:@"NumberOfLaunchesOfParentApp"];
    v28 = +[ATXHomeScreenLogUploaderUtilities abGroup];
    [v14 setObject:v28 forKeyedSubscript:@"abGroup"];

    v29 = MEMORY[0x277CCABB0];
    intent = [widgetCopy intent];
    v31 = [v29 numberWithInt:intent != 0];
    [v14 setObject:v31 forKeyedSubscript:@"AcceptsIntent"];

    v32 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(widgetCopy, "isOnboardingWidget")}];
    [v14 setObject:v32 forKeyedSubscript:@"isOnboarding"];

    v33 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(widgetCopy, "isSuggestedWidget")}];
    [v14 setObject:v33 forKeyedSubscript:@"isSuggestedWidget"];

    [(NSMutableArray *)v36->_widgetSetupDictionaries addObject:v14];
  }

  else
  {
    v34 = __atxlog_handle_home_screen(v13);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [ATXHomeScreenLogWidgetSetupDictionaries _createNewWidgetSetupDictionaryForWidget:extensionBundleId stackKind:widgetKind stackLocation:v34 rowCoordinate:? columnCoordinate:?];
    }
  }
}

- (void)updateTotalUnlockSessions:(unint64_t)sessions
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_widgetSetupDictionaries;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{sessions, v11}];
        [v9 setObject:v10 forKeyedSubscript:@"NumberOfLockUnlockSessions"];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)updateWidgetLevelParentAppLaunches:(id)launches
{
  v19 = *MEMORY[0x277D85DE8];
  launchesCopy = launches;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_widgetSetupDictionaries;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{@"ParentAppBundleId", v14}];
        if ([v11 length])
        {
          v12 = [launchesCopy objectForKeyedSubscript:v11];

          if (v12)
          {
            v13 = [launchesCopy objectForKeyedSubscript:v11];
            [v10 setObject:v13 forKeyedSubscript:@"NumberOfLaunchesOfParentApp"];
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)sendToCoreAnalytics
{
  v20 = *MEMORY[0x277D85DE8];
  [(ATXHomeScreenLogWidgetSetupDictionaries *)self _finalizeWidgetSetupDictionaries];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_widgetSetupDictionaries;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = __atxlog_handle_home_screen(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v8 objectForKeyedSubscript:@"WidgetBundleIdAndKind"];
          *buf = 138412546;
          v16 = v10;
          v17 = 2112;
          v18 = v8;
          _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "ATXHomeScreenLogUploader: Widget Setup dictionary for %@: %@", buf, 0x16u);
        }

        v4 = AnalyticsSendEvent();
        ++v7;
      }

      while (v5 != v7);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
      v5 = v4;
    }

    while (v4);
  }
}

- (void)_finalizeWidgetSetupDictionaries
{
  [(ATXHomeScreenLogWidgetSetupDictionaries *)self _removeAuxiliaryFieldsFromWidgetSetupDictionaries];

  [(ATXHomeScreenLogWidgetSetupDictionaries *)self _copyAllowedWidgetBundleIds];
}

- (void)_copyAllowedWidgetBundleIds
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_widgetSetupDictionaries;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = MEMORY[0x277CEB9B0];
        v11 = [v9 objectForKeyedSubscript:{@"WidgetBundleIdAndKind", v14}];
        v12 = [v10 widgetBundleIdForWidgetPersonalityStringRepresentation:v11];

        if ([v3 logUploadAllowedForWidgetBundleId:v12])
        {
          v13 = [v9 objectForKeyedSubscript:@"WidgetBundleIdAndKind"];
          [v9 setObject:v13 forKeyedSubscript:@"AllowedWidgetBundleIdAndKind"];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)_removeAuxiliaryFieldsFromWidgetSetupDictionaries
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_widgetSetupDictionaries;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) removeObjectForKey:{@"ParentAppBundleId", v7}];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)dryRunResult
{
  [(ATXHomeScreenLogWidgetSetupDictionaries *)self _finalizeWidgetSetupDictionaries];
  v3 = objc_opt_new();
  widgetSetupDictionaries = self->_widgetSetupDictionaries;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__ATXHomeScreenLogWidgetSetupDictionaries_dryRunResult__block_invoke;
  v7[3] = &unk_27859F560;
  v5 = v3;
  v8 = v5;
  [(NSMutableArray *)widgetSetupDictionaries enumerateObjectsUsingBlock:v7];

  return v5;
}

void __55__ATXHomeScreenLogWidgetSetupDictionaries_dryRunResult__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v7 = [v5 alloc];
  v10 = [v6 objectForKeyedSubscript:@"WidgetBundleIdAndKind"];
  v8 = [v6 objectForKeyedSubscript:@"stackLocation"];
  v9 = [v7 initWithFormat:@"Widget Setup Dictionary (%lu) for %@, location:%@", a3, v10, v8];
  [v4 setObject:v6 forKeyedSubscript:v9];
}

- (void)_createNewWidgetSetupDictionaryForWidget:(os_log_t)log stackKind:stackLocation:rowCoordinate:columnCoordinate:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXHomeScreenLogUploader: unable to get widget setup dictionary because missing widgetId (%@) or kind (%@)", &v3, 0x16u);
}

@end