@interface ATXHomeScreenLogWidgetEventDictionaries
+ (id)widgetEventDictionaryAccumulatorSplitByLocationKeys;
- (ATXHomeScreenLogWidgetEventDictionaries)init;
- (id)_createNewWidgetEventDictionaryForBundleId:(id)id kind:(id)kind size:(unint64_t)size;
- (id)_widgetEventDictionaryForATXHomeScreenWidgetIdentifiable:(id)identifiable;
- (id)_widgetEventDictionaryForHomeScreenEvent:(id)event;
- (id)_widgetEventDictionaryForWidgetId:(id)id widgetKind:(id)kind widgetSize:(unint64_t)size;
- (id)_widgetEventDictionaryKeyWithWidgetId:(id)id widgetKind:(id)kind widgetSize:(unint64_t)size;
- (id)dryRunResult;
- (void)sendToCoreAnalytics;
- (void)updateUnlockSessionsWithWidgetDwell:(id)dwell;
- (void)updateWidgetLevelSummaryForHomeScreenEvent:(id)event lastStackEvent:(id)stackEvent;
- (void)updateWidgetLevelSummaryForWidgetPseudoTapWithStackShownEvent:(id)event;
@end

@implementation ATXHomeScreenLogWidgetEventDictionaries

- (ATXHomeScreenLogWidgetEventDictionaries)init
{
  v6.receiver = self;
  v6.super_class = ATXHomeScreenLogWidgetEventDictionaries;
  v2 = [(ATXHomeScreenLogWidgetEventDictionaries *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    widgetEventDictionaries = v2->_widgetEventDictionaries;
    v2->_widgetEventDictionaries = v3;
  }

  return v2;
}

+ (id)widgetEventDictionaryAccumulatorSplitByLocationKeys
{
  if (widgetEventDictionaryAccumulatorSplitByLocationKeys_onceToken != -1)
  {
    +[ATXHomeScreenLogWidgetEventDictionaries widgetEventDictionaryAccumulatorSplitByLocationKeys];
  }

  v3 = widgetEventDictionaryAccumulatorSplitByLocationKeys_array;

  return v3;
}

void __94__ATXHomeScreenLogWidgetEventDictionaries_widgetEventDictionaryAccumulatorSplitByLocationKeys__block_invoke()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = @"NumberOfPinnedWidgetViewsOn";
  v2[1] = @"NumberOfPinnedWidgetPseudoTapsOn";
  v2[2] = @"NumberOfPinnedWidgetTapsOn";
  v2[3] = @"NumberOfLockUnlockSessionsWithWidgetDwellOn";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:4];
  v1 = widgetEventDictionaryAccumulatorSplitByLocationKeys_array;
  widgetEventDictionaryAccumulatorSplitByLocationKeys_array = v0;
}

- (id)_widgetEventDictionaryKeyWithWidgetId:(id)id widgetKind:(id)kind widgetSize:(unint64_t)size
{
  v6 = [MEMORY[0x277CEB9B0] stringRepresentationForExtensionBundleId:id kind:kind];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:%lu", v6, size];

  return v7;
}

- (void)updateWidgetLevelSummaryForHomeScreenEvent:(id)event lastStackEvent:(id)stackEvent
{
  eventCopy = event;
  v5 = [(ATXHomeScreenLogWidgetEventDictionaries *)self _widgetEventDictionaryForHomeScreenEvent:?];
  if (!v5)
  {
    goto LABEL_47;
  }

  eventTypeString = [eventCopy eventTypeString];
  if ([eventTypeString isEqualToString:@"Unknown"])
  {
    v7 = 0;
  }

  else if ([eventTypeString isEqualToString:@"HomeScreenPageShown"])
  {
    v7 = 1;
  }

  else if ([eventTypeString isEqualToString:@"HomeScreenDisappeared"])
  {
    v7 = 2;
  }

  else if ([eventTypeString isEqualToString:@"StackChanged"])
  {
    v7 = 3;
  }

  else if ([eventTypeString isEqualToString:@"WidgetTapped"])
  {
    v7 = 4;
  }

  else if ([eventTypeString isEqualToString:@"WidgetLongLook"])
  {
    v7 = 5;
  }

  else if ([eventTypeString isEqualToString:@"WidgetUserFeedback"])
  {
    v7 = 6;
  }

  else if ([eventTypeString isEqualToString:@"UserStackConfigChanged"])
  {
    v7 = 7;
  }

  else if ([eventTypeString isEqualToString:@"DeviceLocked"])
  {
    v7 = 8;
  }

  else if ([eventTypeString isEqualToString:@"DeviceUnlocked"])
  {
    v7 = 9;
  }

  else if ([eventTypeString isEqualToString:@"PinnedWidgetAdded"])
  {
    v7 = 10;
  }

  else if ([eventTypeString isEqualToString:@"PinnedWidgetDeleted"])
  {
    v7 = 11;
  }

  else if ([eventTypeString isEqualToString:@"SpecialPageAppeared"])
  {
    v7 = 12;
  }

  else if ([eventTypeString isEqualToString:@"SpecialPageDisappeared"])
  {
    v7 = 13;
  }

  else if ([eventTypeString isEqualToString:@"StackShown"])
  {
    v7 = 14;
  }

  else if ([eventTypeString isEqualToString:@"StackDisappeared"])
  {
    v7 = 15;
  }

  else if ([eventTypeString isEqualToString:@"StackCreated"])
  {
    v7 = 16;
  }

  else if ([eventTypeString isEqualToString:@"StackDeleted"])
  {
    v7 = 17;
  }

  else if ([eventTypeString isEqualToString:@"WidgetAddedToStack"])
  {
    v7 = 18;
  }

  else
  {
    if ([eventTypeString isEqualToString:@"WidgetRemovedFromStack"])
    {

      [ATXHomeScreenLogUploaderUtilities incrementDictionary:v5 forKey:@"NumberOfInstancesRemovedFromStack"];
      v7 = 19;
      goto LABEL_41;
    }

    if ([eventTypeString isEqualToString:@"StackVisibilityChanged"])
    {
      v7 = 20;
    }

    else if ([eventTypeString isEqualToString:@"AppAdded"])
    {
      v7 = 21;
    }

    else if ([eventTypeString isEqualToString:@"AppRemoved"])
    {
      v7 = 22;
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_41:
  if ([eventCopy stackKind] != 1)
  {
    goto LABEL_47;
  }

  if (v7 == 4)
  {
    v8 = @"NumberOfPinnedWidgetTapsOn";
  }

  else
  {
    if (v7 != 14)
    {
      goto LABEL_47;
    }

    v8 = @"NumberOfPinnedWidgetViewsOn";
  }

  v9 = +[ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:withLocation:](ATXHomeScreenLogUploaderUtilities, "keyByConcatenatingAccumulatorKey:withLocation:", v8, [eventCopy stackLocation]);
  [ATXHomeScreenLogUploaderUtilities incrementDictionary:v5 forKey:v9];

LABEL_47:
}

- (id)_widgetEventDictionaryForATXHomeScreenWidgetIdentifiable:(id)identifiable
{
  identifiableCopy = identifiable;
  extensionBundleId = [identifiableCopy extensionBundleId];
  widgetKind = [identifiableCopy widgetKind];
  v7 = [identifiableCopy size];

  v8 = [(ATXHomeScreenLogWidgetEventDictionaries *)self _widgetEventDictionaryForWidgetId:extensionBundleId widgetKind:widgetKind widgetSize:v7];

  return v8;
}

- (id)_widgetEventDictionaryForHomeScreenEvent:(id)event
{
  eventCopy = event;
  widgetBundleId = [eventCopy widgetBundleId];
  widgetKind = [eventCopy widgetKind];
  widgetSize = [eventCopy widgetSize];

  v8 = [(ATXHomeScreenLogWidgetEventDictionaries *)self _widgetEventDictionaryForWidgetId:widgetBundleId widgetKind:widgetKind widgetSize:widgetSize];

  return v8;
}

- (id)_widgetEventDictionaryForWidgetId:(id)id widgetKind:(id)kind widgetSize:(unint64_t)size
{
  idCopy = id;
  kindCopy = kind;
  v10 = [idCopy length];
  if (v10 && (v10 = [kindCopy length]) != 0)
  {
    v11 = [(ATXHomeScreenLogWidgetEventDictionaries *)self _widgetEventDictionaryKeyWithWidgetId:idCopy widgetKind:kindCopy widgetSize:size];
    v12 = [(NSMutableDictionary *)self->_widgetEventDictionaries objectForKeyedSubscript:v11];

    if (!v12)
    {
      v13 = [(ATXHomeScreenLogWidgetEventDictionaries *)self _createNewWidgetEventDictionaryForBundleId:idCopy kind:kindCopy size:size];
      [(NSMutableDictionary *)self->_widgetEventDictionaries setObject:v13 forKeyedSubscript:v11];
    }

    v14 = [(NSMutableDictionary *)self->_widgetEventDictionaries objectForKeyedSubscript:v11];
  }

  else
  {
    v15 = __atxlog_handle_home_screen(v10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ATXHomeScreenLogWidgetEventDictionaries _widgetEventDictionaryForWidgetId:idCopy widgetKind:kindCopy widgetSize:v15];
    }

    v14 = 0;
  }

  return v14;
}

- (id)_createNewWidgetEventDictionaryForBundleId:(id)id kind:(id)kind size:(unint64_t)size
{
  v26 = *MEMORY[0x277D85DE8];
  idCopy = id;
  kindCopy = kind;
  v8 = objc_opt_new();
  v20 = kindCopy;
  v9 = [MEMORY[0x277CEB9B0] stringRepresentationForExtensionBundleId:idCopy kind:kindCopy];
  [v8 setObject:v9 forKeyedSubscript:@"WidgetBundleIdAndKind"];

  v10 = ATXStringForStackLayoutSize();
  [v8 setObject:v10 forKeyedSubscript:@"widgetSize"];

  [v8 setObject:&unk_283A577D0 forKeyedSubscript:@"NumberOfInstancesRemovedFromStack"];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  widgetEventDictionaryAccumulatorSplitByLocationKeys = [objc_opt_class() widgetEventDictionaryAccumulatorSplitByLocationKeys];
  v12 = [widgetEventDictionaryAccumulatorSplitByLocationKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(widgetEventDictionaryAccumulatorSplitByLocationKeys);
        }

        v16 = 0;
        v17 = *(*(&v21 + 1) + 8 * i);
        do
        {
          v18 = [ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:v17 withLocation:v16];
          [v8 setObject:&unk_283A577D0 forKeyedSubscript:v18];

          ++v16;
        }

        while (v16 != 6);
      }

      v13 = [widgetEventDictionaryAccumulatorSplitByLocationKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  return v8;
}

- (void)updateWidgetLevelSummaryForWidgetPseudoTapWithStackShownEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy stackKind] == 1)
  {
    v4 = [(ATXHomeScreenLogWidgetEventDictionaries *)self _widgetEventDictionaryForHomeScreenEvent:eventCopy];
    if (v4)
    {
      v5 = +[ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:withLocation:](ATXHomeScreenLogUploaderUtilities, "keyByConcatenatingAccumulatorKey:withLocation:", @"NumberOfPinnedWidgetPseudoTapsOn", [eventCopy stackLocation]);
      [ATXHomeScreenLogUploaderUtilities incrementDictionary:v4 forKey:v5];
    }
  }
}

- (void)updateUnlockSessionsWithWidgetDwell:(id)dwell
{
  v17 = *MEMORY[0x277D85DE8];
  dwellCopy = dwell;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [dwellCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(dwellCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(ATXHomeScreenLogWidgetEventDictionaries *)self _widgetEventDictionaryForHomeScreenEvent:v9];
        if (v10)
        {
          v11 = +[ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:withLocation:](ATXHomeScreenLogUploaderUtilities, "keyByConcatenatingAccumulatorKey:withLocation:", @"NumberOfLockUnlockSessionsWithWidgetDwellOn", [v9 stackLocation]);
          [ATXHomeScreenLogUploaderUtilities incrementDictionary:v10 forKey:v11];
        }
      }

      v6 = [dwellCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)sendToCoreAnalytics
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_widgetEventDictionaries;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v14;
    *&v5 = 138412546;
    v12 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_widgetEventDictionaries objectForKeyedSubscript:v9, v12, v13];
        v11 = __atxlog_handle_home_screen(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = v12;
          v18 = v9;
          v19 = 2112;
          v20 = v10;
          _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_INFO, "ATXHomeScreenLogUploader: Widget level dictionary for %@: %@", buf, 0x16u);
        }

        AnalyticsSendEvent();
      }

      v6 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v6);
  }
}

- (id)dryRunResult
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_widgetEventDictionaries;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_widgetEventDictionaries objectForKeyedSubscript:v9];
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Widget Level Dictionary For %@", v9];
        [v3 setObject:v10 forKeyedSubscript:v11];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_widgetEventDictionaryForWidgetId:(uint64_t)a1 widgetKind:(uint64_t)a2 widgetSize:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXHomeScreenLogUploader: unable to get widget event dictionary because missing widgetId (%@) or kind (%@)", &v3, 0x16u);
}

@end