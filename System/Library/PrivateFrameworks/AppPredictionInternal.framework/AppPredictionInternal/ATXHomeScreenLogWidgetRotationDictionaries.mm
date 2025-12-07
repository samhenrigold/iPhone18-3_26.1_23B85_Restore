@interface ATXHomeScreenLogWidgetRotationDictionaries
+ (id)_sourceKeyForWidgetRotationForRotationSession:(id)session;
+ (id)_sourceKeyOfNonProactiveWidgetRotationForReason:(id)reason;
+ (id)_suggestionReasonToWidgetRotationDictionariesSourceKey:(int)key;
+ (id)widgetRotationDictionaryAccumulatorKeys;
- (ATXHomeScreenLogWidgetRotationDictionaries)init;
- (id)_createNewWidgetRotationDictionaryForBundleId:(id)id kind:(id)kind size:(unint64_t)size source:(id)source location:(id)location isNPlusOne:(BOOL)one isFirstRotationToNPlusOne:(BOOL)plusOne;
- (id)_widgetRotationDictionaryForWidgetBundleId:(id)id kind:(id)kind size:(unint64_t)size source:(id)source location:(id)location isNPlusOne:(BOOL)one isFirstRotationToNPlusOne:(BOOL)plusOne;
- (id)_widgetRotationDictionaryKeyWithWidgetId:(id)id widgetKind:(id)kind widgetSize:(unint64_t)size source:(id)source location:(id)location isNPlusOne:(BOOL)one isFirstRotationToNPlusOne:(BOOL)plusOne;
- (id)dryRunResult;
- (void)sendToCoreAnalytics;
- (void)updateWithRotationSession:(id)session;
@end

@implementation ATXHomeScreenLogWidgetRotationDictionaries

- (ATXHomeScreenLogWidgetRotationDictionaries)init
{
  v6.receiver = self;
  v6.super_class = ATXHomeScreenLogWidgetRotationDictionaries;
  v2 = [(ATXHomeScreenLogWidgetRotationDictionaries *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    widgetRotationDictionaries = v2->_widgetRotationDictionaries;
    v2->_widgetRotationDictionaries = v3;
  }

  return v2;
}

+ (id)widgetRotationDictionaryAccumulatorKeys
{
  if (widgetRotationDictionaryAccumulatorKeys_onceToken != -1)
  {
    +[ATXHomeScreenLogWidgetRotationDictionaries widgetRotationDictionaryAccumulatorKeys];
  }

  v3 = widgetRotationDictionaryAccumulatorKeys_array;

  return v3;
}

void __85__ATXHomeScreenLogWidgetRotationDictionaries_widgetRotationDictionaryAccumulatorKeys__block_invoke()
{
  v2[16] = *MEMORY[0x277D85DE8];
  v2[0] = @"taps";
  v2[1] = @"pseudotaps";
  v2[2] = @"rotations";
  v2[3] = @"views";
  v2[4] = @"pseudoDismisses";
  v2[5] = @"timesAddedToStack";
  v2[6] = @"dismissOnces";
  v2[7] = @"neverShows";
  v2[8] = @"viewedRotations";
  v2[9] = @"pseudoTappedRotations";
  v2[10] = @"tappedRotations";
  v2[11] = @"numFinalOutcomeNotSeen";
  v2[12] = @"numFinalOutcomePseudoDismiss";
  v2[13] = @"numFinalOutcomePseudoTap";
  v2[14] = @"numFinalOutcomeSeen";
  v2[15] = @"numFinalOutcomeTap";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:16];
  v1 = widgetRotationDictionaryAccumulatorKeys_array;
  widgetRotationDictionaryAccumulatorKeys_array = v0;
}

- (void)updateWithRotationSession:(id)session
{
  sessionCopy = session;
  startingStackChangeEvent = [sessionCopy startingStackChangeEvent];
  v6 = [objc_opt_class() _sourceKeyForWidgetRotationForRotationSession:sessionCopy];
  widgetBundleId = [startingStackChangeEvent widgetBundleId];
  widgetKind = [startingStackChangeEvent widgetKind];
  widgetSize = [startingStackChangeEvent widgetSize];
  [startingStackChangeEvent stackLocation];
  v10 = ATXCAStringForStackLocation();
  isNPlusOneRotation = [sessionCopy isNPlusOneRotation];
  LOBYTE(v17) = [sessionCopy isFirstNPlusOneRotation];
  v12 = [(ATXHomeScreenLogWidgetRotationDictionaries *)self _widgetRotationDictionaryForWidgetBundleId:widgetBundleId kind:widgetKind size:widgetSize source:v6 location:v10 isNPlusOne:isNPlusOneRotation isFirstRotationToNPlusOne:v17];

  [ATXHomeScreenLogUploaderUtilities incrementDictionary:v12 forKey:@"rotations"];
  v13 = +[ATXHomeScreenLogEngagementKeyTracker keyTrackerForStackEngagementStatus:](ATXHomeScreenLogEngagementKeyTracker, "keyTrackerForStackEngagementStatus:", [sessionCopy engagementStatus]);
  rotationFinalOutcomeKey = [v13 rotationFinalOutcomeKey];
  [ATXHomeScreenLogUploaderUtilities incrementDictionary:v12 forKey:rotationFinalOutcomeKey];

  v15 = [ATXHomeScreenLogUploaderUtilities countsForRotationEngagementStatusHistory:sessionCopy];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__ATXHomeScreenLogWidgetRotationDictionaries_updateWithRotationSession___block_invoke;
  v18[3] = &unk_278596838;
  v19 = v12;
  v16 = v12;
  [v15 enumerateKeysAndObjectsUsingBlock:v18];
}

void __72__ATXHomeScreenLogWidgetRotationDictionaries_updateWithRotationSession___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 unsignedIntValue];
  v7 = [v5 unsignedIntValue];

  v8 = [ATXHomeScreenLogEngagementKeyTracker keyTrackerForStackEngagementStatus:v6];
  if (v7)
  {
    v9 = *(a1 + 32);
    v13 = v8;
    v10 = [v8 rotationBooleanKey];
    [ATXHomeScreenLogUploaderUtilities incrementDictionary:v9 forKey:v10];

    v11 = *(a1 + 32);
    v12 = [v13 rotationAggregationKey];
    [ATXHomeScreenLogUploaderUtilities add:v7 toDictionary:v11 forKey:v12];

    v8 = v13;
  }
}

- (id)_widgetRotationDictionaryForWidgetBundleId:(id)id kind:(id)kind size:(unint64_t)size source:(id)source location:(id)location isNPlusOne:(BOOL)one isFirstRotationToNPlusOne:(BOOL)plusOne
{
  oneCopy = one;
  idCopy = id;
  kindCopy = kind;
  sourceCopy = source;
  locationCopy = location;
  v19 = [idCopy length];
  if (v19 && (v19 = [kindCopy length]) != 0)
  {
    LOBYTE(v26) = plusOne;
    v20 = [(ATXHomeScreenLogWidgetRotationDictionaries *)self _widgetRotationDictionaryKeyWithWidgetId:idCopy widgetKind:kindCopy widgetSize:size source:sourceCopy location:locationCopy isNPlusOne:oneCopy isFirstRotationToNPlusOne:v26];
    v21 = [(NSMutableDictionary *)self->_widgetRotationDictionaries objectForKeyedSubscript:v20];

    if (!v21)
    {
      LOBYTE(v27) = plusOne;
      v22 = [(ATXHomeScreenLogWidgetRotationDictionaries *)self _createNewWidgetRotationDictionaryForBundleId:idCopy kind:kindCopy size:size source:sourceCopy location:locationCopy isNPlusOne:oneCopy isFirstRotationToNPlusOne:v27];
      [(NSMutableDictionary *)self->_widgetRotationDictionaries setObject:v22 forKeyedSubscript:v20];
    }

    v23 = [(NSMutableDictionary *)self->_widgetRotationDictionaries objectForKeyedSubscript:v20];
  }

  else
  {
    v24 = __atxlog_handle_home_screen(v19);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [ATXHomeScreenLogWidgetRotationDictionaries _widgetRotationDictionaryForWidgetBundleId:idCopy kind:kindCopy size:v24 source:? location:? isNPlusOne:? isFirstRotationToNPlusOne:?];
    }

    v23 = 0;
  }

  return v23;
}

- (id)_widgetRotationDictionaryKeyWithWidgetId:(id)id widgetKind:(id)kind widgetSize:(unint64_t)size source:(id)source location:(id)location isNPlusOne:(BOOL)one isFirstRotationToNPlusOne:(BOOL)plusOne
{
  oneCopy = one;
  v14 = MEMORY[0x277CCACA8];
  locationCopy = location;
  sourceCopy = source;
  kindCopy = kind;
  idCopy = id;
  plusOne = [[v14 alloc] initWithFormat:@"%@:%@:%lu:%@:%@:%d:%d", idCopy, kindCopy, size, sourceCopy, locationCopy, oneCopy, plusOne];

  return plusOne;
}

- (id)_createNewWidgetRotationDictionaryForBundleId:(id)id kind:(id)kind size:(unint64_t)size source:(id)source location:(id)location isNPlusOne:(BOOL)one isFirstRotationToNPlusOne:(BOOL)plusOne
{
  oneCopy = one;
  v33 = *MEMORY[0x277D85DE8];
  idCopy = id;
  kindCopy = kind;
  sourceCopy = source;
  locationCopy = location;
  v17 = objc_opt_new();
  v18 = [MEMORY[0x277CEB9B0] stringRepresentationForExtensionBundleId:idCopy kind:kindCopy];
  [v17 setObject:v18 forKeyedSubscript:@"WidgetBundleIdAndKind"];

  v19 = ATXStringForStackLayoutSize();
  [v17 setObject:v19 forKeyedSubscript:@"widgetSize"];

  [v17 setObject:sourceCopy forKeyedSubscript:@"source"];
  [v17 setObject:locationCopy forKeyedSubscript:@"location"];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:oneCopy];
  [v17 setObject:v20 forKeyedSubscript:@"isNPlusOne"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:plusOne];
  [v17 setObject:v21 forKeyedSubscript:@"IsFirstRotationToNPlusOne"];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  widgetRotationDictionaryAccumulatorKeys = [objc_opt_class() widgetRotationDictionaryAccumulatorKeys];
  v23 = [widgetRotationDictionaryAccumulatorKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v29;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(widgetRotationDictionaryAccumulatorKeys);
        }

        [v17 setObject:&unk_283A54950 forKeyedSubscript:*(*(&v28 + 1) + 8 * i)];
      }

      v24 = [widgetRotationDictionaryAccumulatorKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v24);
  }

  return v17;
}

+ (id)_sourceKeyForWidgetRotationForRotationSession:(id)session
{
  sessionCopy = session;
  if ([ATXHomeScreenLogUploaderUtilities isRotationSessionDueToProactive:sessionCopy])
  {
    v4 = objc_opt_class();
    systemSuggestSuggestionLayout = [sessionCopy systemSuggestSuggestionLayout];
    [v4 _suggestionReasonToWidgetRotationDictionariesSourceKey:{+[ATXHomeScreenLogUploaderUtilities suggestionReasonForSuggestionLayout:](ATXHomeScreenLogUploaderUtilities, "suggestionReasonForSuggestionLayout:", systemSuggestSuggestionLayout)}];
  }

  else
  {
    startingStackChangeEvent = [sessionCopy startingStackChangeEvent];
    systemSuggestSuggestionLayout = [startingStackChangeEvent reason];

    [objc_opt_class() _sourceKeyOfNonProactiveWidgetRotationForReason:systemSuggestSuggestionLayout];
  }
  v7 = ;

  return v7;
}

+ (id)_sourceKeyOfNonProactiveWidgetRotationForReason:(id)reason
{
  reasonCopy = reason;
  v4 = NSStringForATXHomeScreenStackChangeReason();
  v5 = [reasonCopy isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    v7 = NSStringForATXHomeScreenStackChangeReason();
    v8 = [reasonCopy isEqualToString:v7];

    if (v8)
    {
      v6 = @"NonProactiveSystemFallback";
      goto LABEL_12;
    }

    v9 = NSStringForATXHomeScreenStackChangeReason();
    if (([reasonCopy isEqualToString:v9] & 1) == 0)
    {
      v10 = NSStringForATXHomeScreenStackChangeReason();
      if (([reasonCopy isEqualToString:v10] & 1) == 0)
      {
        v11 = NSStringForATXHomeScreenStackChangeReason();
        if (![reasonCopy isEqualToString:v11])
        {
          v13 = NSStringForATXHomeScreenStackChangeReason();
          v14 = [reasonCopy isEqualToString:v13];

          if ((v14 & 1) == 0)
          {
            v6 = @"NonProactiveOther";
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }
    }

LABEL_11:
    v6 = @"NonProactiveNonProactiveStackEdited";
    goto LABEL_12;
  }

  v6 = @"NonProactiveUserScroll";
LABEL_12:

  return v6;
}

+ (id)_suggestionReasonToWidgetRotationDictionariesSourceKey:(int)key
{
  if ((key - 1) > 7)
  {
    return @"ProactiveStalenessRotation";
  }

  else
  {
    return off_278596858[key - 1];
  }
}

- (void)sendToCoreAnalytics
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_widgetRotationDictionaries;
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
        v10 = [(NSMutableDictionary *)self->_widgetRotationDictionaries objectForKeyedSubscript:v9, v12, v13];
        v11 = __atxlog_handle_home_screen(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = v12;
          v18 = v9;
          v19 = 2112;
          v20 = v10;
          _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_INFO, "ATXHomeScreenLogUploader: Widget rotation dictionary for %@: %@", buf, 0x16u);
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
  v4 = self->_widgetRotationDictionaries;
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
        v10 = [(NSMutableDictionary *)self->_widgetRotationDictionaries objectForKeyedSubscript:v9];
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Widget Rotation Dictionary For %@", v9];
        [v3 setObject:v10 forKeyedSubscript:v11];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_widgetRotationDictionaryForWidgetBundleId:(os_log_t)log kind:size:source:location:isNPlusOne:isFirstRotationToNPlusOne:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXHomeScreenLogUploader: unable to get widget rotation dictionary because missing widgetId (%@) or kind (%@)", &v3, 0x16u);
}

@end