@interface ATXHomeScreenLogWidgetAddSheetDictionaries
+ (id)rankKeysSplitBySize;
- (ATXHomeScreenLogWidgetAddSheetDictionaries)init;
- (id)_createNewWidgetAddSheetDictionaryForBundleId:(id)id kind:(id)kind;
- (id)_widgetAddSheetDictionaryForDescriptor:(id)descriptor;
- (id)_widgetAddSheetDictionaryForWidgetId:(id)id widgetKind:(id)kind;
- (id)dryRunResult;
- (void)_updateWidgetAddSheetDictionariesForDescriptor:(id)descriptor inStack:(BOOL)stack rank:(unint64_t)rank;
- (void)_updateWidgetAddSheetDictionariesForStack:(id)stack suggestedSize:(unint64_t)size;
- (void)_updateWidgetAddSheetDictionariesWithDictionary:(id)dictionary suggestedSize:(unint64_t)size inStack:(BOOL)stack rank:(unint64_t)rank;
- (void)sendToCoreAnalytics;
- (void)updateWidgetAddSheetSummaryForDefaultStack:(id)stack;
- (void)updateWidgetAddSheetSummaryForSuggestions:(id)suggestions;
@end

@implementation ATXHomeScreenLogWidgetAddSheetDictionaries

- (ATXHomeScreenLogWidgetAddSheetDictionaries)init
{
  v6.receiver = self;
  v6.super_class = ATXHomeScreenLogWidgetAddSheetDictionaries;
  v2 = [(ATXHomeScreenLogWidgetAddSheetDictionaries *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    widgetAddSheetDictionaries = v2->_widgetAddSheetDictionaries;
    v2->_widgetAddSheetDictionaries = v3;
  }

  return v2;
}

+ (id)rankKeysSplitBySize
{
  if (rankKeysSplitBySize__pasOnceToken7 != -1)
  {
    +[ATXHomeScreenLogWidgetAddSheetDictionaries rankKeysSplitBySize];
  }

  v3 = rankKeysSplitBySize__pasExprOnceResult;

  return v3;
}

void __65__ATXHomeScreenLogWidgetAddSheetDictionaries_rankKeysSplitBySize__block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v3[0] = @"RankInGallery";
  v3[1] = @"RankInStack";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v2 = rankKeysSplitBySize__pasExprOnceResult;
  rankKeysSplitBySize__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)_createNewWidgetAddSheetDictionaryForBundleId:(id)id kind:(id)kind
{
  v24 = *MEMORY[0x277D85DE8];
  idCopy = id;
  kindCopy = kind;
  v7 = objc_opt_new();
  v18 = kindCopy;
  v8 = [MEMORY[0x277CEB9B0] stringRepresentationForExtensionBundleId:idCopy kind:kindCopy];
  [v7 setObject:v8 forKeyedSubscript:@"WidgetBundleIdAndKind"];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  rankKeysSplitBySize = [objc_opt_class() rankKeysSplitBySize];
  v10 = [rankKeysSplitBySize countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(rankKeysSplitBySize);
        }

        v14 = 0;
        v15 = *(*(&v19 + 1) + 8 * i);
        do
        {
          v16 = [ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:v15 withSize:v14];
          [v7 setObject:&unk_283A56DF8 forKeyedSubscript:v16];

          ++v14;
        }

        while (v14 != 3);
      }

      v11 = [rankKeysSplitBySize countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  return v7;
}

- (void)updateWidgetAddSheetSummaryForSuggestions:(id)suggestions
{
  v19 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [suggestionsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(suggestionsCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        ++v7;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          _widgetAddSheetDictionaryForStack = [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self _widgetAddSheetDictionaryForStack];
          suggestedSize = [v11 suggestedSize];

          [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self _updateWidgetAddSheetDictionariesWithDictionary:_widgetAddSheetDictionaryForStack suggestedSize:suggestedSize inStack:0 rank:v7];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self _updateWidgetAddSheetDictionariesForDescriptor:v10 inStack:0 rank:v7];
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [suggestionsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)updateWidgetAddSheetSummaryForDefaultStack:(id)stack
{
  stackCopy = stack;
  smallDefaultStack = [stackCopy smallDefaultStack];
  [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self _updateWidgetAddSheetDictionariesForStack:smallDefaultStack suggestedSize:0];

  mediumDefaultStack = [stackCopy mediumDefaultStack];
  [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self _updateWidgetAddSheetDictionariesForStack:mediumDefaultStack suggestedSize:1];

  largeDefaultStack = [stackCopy largeDefaultStack];

  [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self _updateWidgetAddSheetDictionariesForStack:largeDefaultStack suggestedSize:2];
}

- (void)_updateWidgetAddSheetDictionariesForStack:(id)stack suggestedSize:(unint64_t)size
{
  v16 = *MEMORY[0x277D85DE8];
  stackCopy = stack;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [stackCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(stackCopy);
        }

        [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self _updateWidgetAddSheetDictionariesForDescriptor:*(*(&v11 + 1) + 8 * v10++) inStack:1 rank:++v8];
      }

      while (v7 != v10);
      v7 = [stackCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_updateWidgetAddSheetDictionariesForDescriptor:(id)descriptor inStack:(BOOL)stack rank:(unint64_t)rank
{
  stackCopy = stack;
  descriptorCopy = descriptor;
  v10 = [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self _widgetAddSheetDictionaryForDescriptor:descriptorCopy];
  suggestedSize = [descriptorCopy suggestedSize];

  [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self _updateWidgetAddSheetDictionariesWithDictionary:v10 suggestedSize:suggestedSize inStack:stackCopy rank:rank];
}

- (void)_updateWidgetAddSheetDictionariesWithDictionary:(id)dictionary suggestedSize:(unint64_t)size inStack:(BOOL)stack rank:(unint64_t)rank
{
  stackCopy = stack;
  v24 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v10 = __atxlog_handle_home_screen(dictionaryCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"WidgetBundleIdAndKind"];
    v12 = ATXCAStringForStackLayoutSize();
    v16 = 138413058;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    v20 = 2048;
    rankCopy = rank;
    v22 = 1024;
    v23 = stackCopy;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenLogUploader: suggested: %@ of size %{public}@ in pos %lu in stack? %d", &v16, 0x26u);
  }

  if (dictionaryCopy)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:rank];
    if (stackCopy)
    {
      v14 = @"RankInStack";
    }

    else
    {
      v14 = @"RankInGallery";
    }

    v15 = [ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:v14 withSize:size];
    [dictionaryCopy setObject:v13 forKeyedSubscript:v15];
  }
}

- (id)_widgetAddSheetDictionaryForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  extensionBundleIdForMetrics = [descriptorCopy extensionBundleIdForMetrics];
  widgetKind = [descriptorCopy widgetKind];

  v7 = [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self _widgetAddSheetDictionaryForWidgetId:extensionBundleIdForMetrics widgetKind:widgetKind];

  return v7;
}

- (id)_widgetAddSheetDictionaryForWidgetId:(id)id widgetKind:(id)kind
{
  idCopy = id;
  kindCopy = kind;
  v8 = [idCopy length];
  if (v8 && (v8 = [kindCopy length]) != 0)
  {
    v9 = [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self widgetAddSheetDictionaryKeyWithWidgetId:idCopy widgetKind:kindCopy];
    v10 = [(NSMutableDictionary *)self->_widgetAddSheetDictionaries objectForKeyedSubscript:v9];

    if (!v10)
    {
      v11 = [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self _createNewWidgetAddSheetDictionaryForBundleId:idCopy kind:kindCopy];
      [(NSMutableDictionary *)self->_widgetAddSheetDictionaries setObject:v11 forKeyedSubscript:v9];
    }

    v12 = [(NSMutableDictionary *)self->_widgetAddSheetDictionaries objectForKeyedSubscript:v9];
  }

  else
  {
    v13 = __atxlog_handle_home_screen(v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ATXHomeScreenLogWidgetAddSheetDictionaries *)idCopy _widgetAddSheetDictionaryForWidgetId:kindCopy widgetKind:v13];
    }

    v12 = 0;
  }

  return v12;
}

- (id)dryRunResult
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_widgetAddSheetDictionaries;
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
        v10 = [(NSMutableDictionary *)self->_widgetAddSheetDictionaries objectForKeyedSubscript:v9];
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Widget Add Sheet Dictionary For %@", v9];
        [v3 setObject:v10 forKeyedSubscript:v11];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)sendToCoreAnalytics
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_widgetAddSheetDictionaries;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_widgetAddSheetDictionaries objectForKeyedSubscript:*(*(&v9 + 1) + 8 * v7), v9];
        AnalyticsSendEvent();

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_widgetAddSheetDictionaryForWidgetId:(os_log_t)log widgetKind:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXHomeScreenLogUploader: unable to get widget add sheet dictionary because missing widgetId (%@) or kind (%@)", &v3, 0x16u);
}

@end