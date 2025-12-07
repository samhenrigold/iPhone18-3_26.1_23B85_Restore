@interface ATXHomeScreenLayoutSelector2
- (ATXHomeScreenLayoutSelector2)init;
- (ATXHomeScreenLayoutSelector2)initWithBlendingLayerHyperParameters:(id)parameters;
- (ATXHomeScreenLayoutSelector2)initWithHomeScreenPageConfigurations:(id)configurations blendingLayerHyperParameters:(id)parameters suggestionDeduplicator:(id)deduplicator engagementRecordManager:(id)manager widgetDismissManager:(id)dismissManager stackStateTracker:(id)tracker store:(id)store defaults:(id)self0 modeFilter:(id)self1 chronoService:(id)self2 isiPad:(BOOL)self3;
- (BOOL)_hasEligiblePinnedWidgetStacksForAPPWidget:(id)widget forCandidateStack:(id)stack;
- (BOOL)_hasEligiblePinnedWidgetStacksForSuggestionsWidget:(id)widget forCandidateStack:(id)stack;
- (BOOL)_hasEligibleWidgetSuggestionsStacksForSuggestion:(id)suggestion onPages:(id)pages ignoreDuplicatesInSGWidget:(BOOL)widget ignoreDuplicatesInPanels:(BOOL)panels;
- (BOOL)_isBackgroundAppRefreshAllowedForAppBundleId:(id)id;
- (BOOL)_isStack:(id)stack eligibleToShowSuggestionViaWidgetSuggestion:(id)suggestion;
- (BOOL)_isStackEligibleForSmartRotate:(id)rotate stack:(id)stack;
- (BOOL)_isSuggestionACandidate:(id)candidate forStack:(id)stack dedupeAppSuggestionsByWidgets:(BOOL)widgets ignoreDuplicatesInSGWidget:(BOOL)widget ignoreDuplicatesInPanels:(BOOL)panels homeScreenState:(id)state;
- (BOOL)_isSuggestionStillNeededForTopOfStack:(id)stack;
- (BOOL)_shouldConsiderSuggestionForAppPredictionPanel:(id)panel;
- (BOOL)_shouldConsiderSuggestionForSuggestionsWidget:(id)widget;
- (BOOL)_shouldLimitWidgetSuggestionPowerCost;
- (BOOL)_stackHasRemainingReloadBudgetForWidgetSuggestion:(id)suggestion homeScreenState:(id)state;
- (double)_computeScoreForLayout:(id)layout;
- (double)_weightForConfidenceCategory:(int64_t)category;
- (id)_appPredictionPanelPreviewFromRankedSuggestions:(id)suggestions;
- (id)_fallbackSuggestions:(id)suggestions homeScreenState:(id)state;
- (id)_filterRankedSuggestions:(id)suggestions homeScreenState:(id)state;
- (id)_homeScreenCachedSuggestionsFromHomeScreenState:(id)state sortedFallbackSuggestions:(id)suggestions suggestionsWidgetPreviews:(id)previews appPredictionPanelPreview:(id)preview withUUID:(id)d;
- (id)_loadHomeScreenState:(id)state;
- (id)_processedSuggestionLayoutFromWidgetSuggestion:(id)suggestion stack:(id)stack blendingUpdateUUID:(id)d;
- (id)_shortcutConversionOriginalActionSuggestionIndices:(id)indices;
- (id)_sortedPagesByMostRecentUserVisit:(id)visit;
- (id)_suggestionsEligibleForSuggestedSGWidgetOnPages:(id)pages amongSuggestions:(id)suggestions;
- (id)_suggestionsWidgetPreviewsFromRankedSuggestions:(id)suggestions;
- (id)_suggestionsWidgetSuggestionsByPriorityOnPage:(id)page;
- (id)selectedLayoutForConsumerSubType:(unsigned __int8)type rankedSuggestions:(id)suggestions;
- (int64_t)_thresholdConfidenceForSuggestedSG;
- (void)_assignExistingSuggestedSGWidgetsOnPages:(id)pages withSuggestions:(id)suggestions suggestionToRankingIndex:(id)index;
- (void)_assignNewSuggestedWidgetsForPages:(id)pages rankedSuggestions:(id)suggestions suggestionToRankingIndex:(id)index homeScreenState:(id)state;
- (void)_assignPinnedAPPWidgetForPage:(id)page suggestions:(id)suggestions homeScreenState:(id)state;
- (void)_assignPinnedSuggestionsWidgetForPage:(id)page suggestions:(id)suggestions homeScreenState:(id)state;
- (void)_assignSuggestion:(id)suggestion toTopOfStack:(id)stack;
- (void)_assignSuggestionsForExistingSuggestedWidgets:(id)widgets homeScreenState:(id)state;
- (void)_assignUnfilledSGWidgetForPage:(id)page suggestions:(id)suggestions homeScreenState:(id)state;
- (void)_assignWidgetForTopOfStack:(id)stack suggestions:(id)suggestions homeScreenState:(id)state;
- (void)_fillSuggestedSGWidgetIfLayoutNotComplete:(id)complete withSuggestions:(id)suggestions updatingUsedSuggestionIndexSet:(id)set;
- (void)_logStackDetail:(id)detail;
- (void)_performSuggestionAllocationWithRankedSuggestions:(id)suggestions homeScreenState:(id)state;
- (void)_preservePreviousAppSuggestionPositionsWithHomeScreenState:(id)state;
- (void)_removeSuggestedWidgetWhereNecessaryWithHomeScreenState:(id)state;
- (void)_rotateAwayFromPreviousSystemInitiatedRotationIfNecessary:(id)necessary homeScreenState:(id)state;
- (void)_rotateStackToUpdatedSGSuggestionIfNecessary:(id)necessary suggestionToRankingIndex:(id)index;
- (void)_updateSuggestionsWidgetLayoutIfNecessaryWithRankedShortcutSuggestions:(id)suggestions suggestionToRankingIndex:(id)index homeScreenState:(id)state;
@end

@implementation ATXHomeScreenLayoutSelector2

- (ATXHomeScreenLayoutSelector2)init
{
  mEMORY[0x277D41B98] = [MEMORY[0x277D41B98] sharedInstance];
  v4 = [(ATXHomeScreenLayoutSelector2 *)self initWithBlendingLayerHyperParameters:mEMORY[0x277D41B98]];

  return v4;
}

- (ATXHomeScreenLayoutSelector2)initWithBlendingLayerHyperParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = objc_opt_new();
  mEMORY[0x277CEB500] = [MEMORY[0x277CEB500] sharedInstance];
  v7 = objc_opt_new();
  v8 = +[ATXStackStateTracker sharedInstance];
  mEMORY[0x277CEB5C8] = [MEMORY[0x277CEB5C8] sharedInstance];
  v10 = objc_alloc(MEMORY[0x277CBEBD0]);
  v11 = [v10 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v12 = +[ATXSuggestionModeFilter sharedInstance];
  v13 = objc_opt_new();
  LOBYTE(v16) = [MEMORY[0x277D42590] isiPad];
  v14 = [(ATXHomeScreenLayoutSelector2 *)self initWithHomeScreenPageConfigurations:0 blendingLayerHyperParameters:parametersCopy suggestionDeduplicator:v5 engagementRecordManager:mEMORY[0x277CEB500] widgetDismissManager:v7 stackStateTracker:v8 store:mEMORY[0x277CEB5C8] defaults:v11 modeFilter:v12 chronoService:v13 isiPad:v16];

  return v14;
}

- (ATXHomeScreenLayoutSelector2)initWithHomeScreenPageConfigurations:(id)configurations blendingLayerHyperParameters:(id)parameters suggestionDeduplicator:(id)deduplicator engagementRecordManager:(id)manager widgetDismissManager:(id)dismissManager stackStateTracker:(id)tracker store:(id)store defaults:(id)self0 modeFilter:(id)self1 chronoService:(id)self2 isiPad:(BOOL)self3
{
  configurationsCopy = configurations;
  obj = parameters;
  parametersCopy = parameters;
  deduplicatorCopy = deduplicator;
  managerCopy = manager;
  dismissManagerCopy = dismissManager;
  trackerCopy = tracker;
  storeCopy = store;
  defaultsCopy = defaults;
  filterCopy = filter;
  serviceCopy = service;
  v38.receiver = self;
  v38.super_class = ATXHomeScreenLayoutSelector2;
  v21 = [(ATXHomeScreenLayoutSelector2 *)&v38 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_homeScreenPageConfigs, configurations);
    objc_storeStrong(&v22->_hyperParameters, obj);
    objc_storeStrong(&v22->_suggestionDeduplicator, deduplicator);
    objc_storeStrong(&v22->_engagementRecordManager, manager);
    objc_storeStrong(&v22->_widgetDismissManager, dismissManager);
    objc_storeStrong(&v22->_stackStateTracker, tracker);
    objc_storeStrong(&v22->_store, store);
    objc_storeStrong(&v22->_defaults, defaults);
    objc_storeStrong(&v22->_modeFilter, filter);
    objc_storeStrong(&v22->_chronoService, service);
    v23 = [[_ATXHomeScreenTimelineRelevanceFilter alloc] initWithTimelineRelevanceStore:storeCopy];
    timelineRelevanceFilter = v22->_timelineRelevanceFilter;
    v22->_timelineRelevanceFilter = v23;

    v22->_isiPad = pad;
    mEMORY[0x277CEB998] = [MEMORY[0x277CEB998] sharedInstance];
    descriptorCache = v22->_descriptorCache;
    v22->_descriptorCache = mEMORY[0x277CEB998];
  }

  return v22;
}

- (id)selectedLayoutForConsumerSubType:(unsigned __int8)type rankedSuggestions:(id)suggestions
{
  typeCopy = type;
  suggestionsCopy = suggestions;
  v7 = __atxlog_handle_blending(suggestionsCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "----- HSLS REFRESH START -----", buf, 2u);
  }

  if (typeCopy == 34)
  {
    [(ATXStackStateTracker *)self->_stackStateTracker updateStackRotationEvents];
    v8 = [(ATXHomeScreenLayoutSelector2 *)self _loadHomeScreenState:self->_homeScreenPageConfigs];
    stackStateTracker = self->_stackStateTracker;
    sortedPagesByUserLastVisit = [v8 sortedPagesByUserLastVisit];
    [(ATXStackStateTracker *)stackStateTracker cleanupOldDataWithHomeScreenPages:sortedPagesByUserLastVisit];

    v11 = [(ATXEngagementRecordManager *)self->_engagementRecordManager engagedExecutablesOfType:8 queryOptions:0];
    dismissedSuggestionsForSuggestionsWidget = self->_dismissedSuggestionsForSuggestionsWidget;
    self->_dismissedSuggestionsForSuggestionsWidget = v11;

    v13 = [(ATXEngagementRecordManager *)self->_engagementRecordManager engagedExecutablesOfType:16 queryOptions:0];
    dismissedSuggestionsForAppPredictionPanels = self->_dismissedSuggestionsForAppPredictionPanels;
    self->_dismissedSuggestionsForAppPredictionPanels = v13;

    v15 = [(ATXHomeScreenLayoutSelector2 *)self _filterRankedSuggestions:suggestionsCopy homeScreenState:v8];
    [(ATXHomeScreenLayoutSelector2 *)self _assignSuggestionsForExistingSuggestedWidgets:v15 homeScreenState:v8];
    v16 = [(ATXHomeScreenLayoutSelector2 *)self _suggestionsWidgetPreviewsFromRankedSuggestions:v15];
    v17 = [(ATXHomeScreenLayoutSelector2 *)self _appPredictionPanelPreviewFromRankedSuggestions:v15];
    self->_thresholdConfidenceForSuggestedSG = [(ATXHomeScreenLayoutSelector2 *)self _thresholdConfidenceForSuggestedSG];
    [(ATXHomeScreenLayoutSelector2 *)self setWidgetSuggestionReloadBudgetByStackId:0];
    [(ATXHomeScreenLayoutSelector2 *)self setHasAskedChronoAboutReloadBudget:0];
    self->_shouldLimitWidgetSuggestionPowerCost = [(ATXHomeScreenLayoutSelector2 *)self _shouldLimitWidgetSuggestionPowerCost];
    self->_numSuggestedWidgetInPastDay = [(ATXInformationStore *)self->_store numberOfSuggestedWidgetsInPastDay];
    self->_numWidgetReloadForSuggestionInPastDay = [(ATXInformationStore *)self->_store numberOfWidgetReloadForSuggestionInPastDay];
    [(ATXHomeScreenLayoutSelector2 *)self _performSuggestionAllocationWithRankedSuggestions:v15 homeScreenState:v8];
    [(ATXHomeScreenLayoutSelector2 *)self _rotateAwayFromPreviousSystemInitiatedRotationIfNecessary:v15 homeScreenState:v8];
    [(ATXHomeScreenLayoutSelector2 *)self _preservePreviousAppSuggestionPositionsWithHomeScreenState:v8];
    [(ATXHomeScreenLayoutSelector2 *)self _removeSuggestedWidgetWhereNecessaryWithHomeScreenState:v8];
    v18 = [(ATXHomeScreenLayoutSelector2 *)self _fallbackSuggestions:v15 homeScreenState:v8];
    v19 = objc_opt_new();
    v20 = [(ATXHomeScreenLayoutSelector2 *)self _homeScreenCachedSuggestionsFromHomeScreenState:v8 sortedFallbackSuggestions:v18 suggestionsWidgetPreviews:v16 appPredictionPanelPreview:v17 withUUID:v19];

    v22 = __atxlog_handle_blending(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "----- HSLS REFRESH END -----", v24, 2u);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)_performSuggestionAllocationWithRankedSuggestions:(id)suggestions homeScreenState:(id)state
{
  v50 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  stateCopy = state;
  v8 = [(ATXHomeScreenLayoutSelector2 *)self _shortcutConversionOriginalActionSuggestionIndices:suggestionsCopy];
  v30 = [suggestionsCopy objectsAtIndexes:v8];
  v9 = [suggestionsCopy mutableCopy];
  v31 = v8;
  [v9 removeObjectsAtIndexes:v8];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  sortedPagesByUserLastVisit = [stateCopy sortedPagesByUserLastVisit];
  v11 = [sortedPagesByUserLastVisit countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v43;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(sortedPagesByUserLastVisit);
        }

        v15 = *(*(&v42 + 1) + 8 * i);
        [(ATXHomeScreenLayoutSelector2 *)self _assignPinnedSuggestionsWidgetForPage:v15 suggestions:v9 homeScreenState:stateCopy];
        [(ATXHomeScreenLayoutSelector2 *)self _assignWidgetForTopOfStack:v15 suggestions:v9 homeScreenState:stateCopy];
        [(ATXHomeScreenLayoutSelector2 *)self _assignPinnedAPPWidgetForPage:v15 suggestions:v9 homeScreenState:stateCopy];
        [(ATXHomeScreenLayoutSelector2 *)self _assignUnfilledSGWidgetForPage:v15 suggestions:v9 homeScreenState:stateCopy];
      }

      v12 = [sortedPagesByUserLastVisit countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v12);
  }

  v16 = objc_opt_new();
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __98__ATXHomeScreenLayoutSelector2__performSuggestionAllocationWithRankedSuggestions_homeScreenState___block_invoke;
  v40[3] = &unk_278599578;
  v29 = v16;
  v41 = v29;
  v32 = suggestionsCopy;
  [suggestionsCopy enumerateObjectsUsingBlock:v40];
  v33 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [stateCopy sortedPagesByUserLastVisit];
  v17 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v17)
  {
    v18 = v17;
    v35 = 0;
    v19 = *v37;
    v20 = *MEMORY[0x277CEBAE8];
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v36 + 1) + 8 * j);
        config = [v22 config];
        pageIndex = [config pageIndex];

        if (pageIndex == v20)
        {
          v25 = v22;

          v35 = v25;
        }

        else
        {
          [v33 addObject:v22];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v18);
  }

  else
  {
    v35 = 0;
  }

  v26 = [v9 mutableCopy];
  [(ATXHomeScreenLayoutSelector2 *)self _assignExistingSuggestedSGWidgetsOnPages:v33 withSuggestions:v9 suggestionToRankingIndex:v29];
  [(ATXHomeScreenLayoutSelector2 *)self _assignNewSuggestedWidgetsForPages:v33 rankedSuggestions:v9 suggestionToRankingIndex:v29 homeScreenState:stateCopy];
  if (v35)
  {
    v47 = v35;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
    [(ATXHomeScreenLayoutSelector2 *)self _assignExistingSuggestedSGWidgetsOnPages:v27 withSuggestions:v26 suggestionToRankingIndex:v29];

    v46 = v35;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
    [(ATXHomeScreenLayoutSelector2 *)self _assignNewSuggestedWidgetsForPages:v28 rankedSuggestions:v26 suggestionToRankingIndex:v29 homeScreenState:stateCopy];
  }

  [(ATXHomeScreenLayoutSelector2 *)self _updateSuggestionsWidgetLayoutIfNecessaryWithRankedShortcutSuggestions:v30 suggestionToRankingIndex:v29 homeScreenState:stateCopy];
}

void __98__ATXHomeScreenLayoutSelector2__performSuggestionAllocationWithRankedSuggestions_homeScreenState___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (id)_shortcutConversionOriginalActionSuggestionIndices:(id)indices
{
  indicesCopy = indices;
  v4 = [indicesCopy _pas_filteredArrayWithTest:&__block_literal_global_51];
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__ATXHomeScreenLayoutSelector2__shortcutConversionOriginalActionSuggestionIndices___block_invoke_2;
  v11[3] = &unk_2785995C0;
  v12 = v4;
  v6 = v5;
  v13 = v6;
  v7 = v4;
  [indicesCopy enumerateObjectsUsingBlock:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

uint64_t __83__ATXHomeScreenLayoutSelector2__shortcutConversionOriginalActionSuggestionIndices___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D42070];
  v3 = [a2 clientModelSpecification];
  v4 = [v3 clientModelId];
  v5 = [v2 clientModelTypeFromClientModelId:v4];

  v6 = MEMORY[0x277D42070];

  return [v6 clientModelTypeIsShortcutConversion:v5];
}

void __83__ATXHomeScreenLayoutSelector2__shortcutConversionOriginalActionSuggestionIndices___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 executableSpecification];
  v7 = [v6 executableType];

  v8 = [v5 executableSpecification];
  v9 = v8;
  if (v7 == 2)
  {
    v10 = [v8 executableObject];

    v11 = [v10 intent];
  }

  else
  {
    v12 = [v8 executableType];

    if (v12 != 10)
    {
      goto LABEL_19;
    }

    v10 = [v5 linkActionExecutableObject];
    v11 = [v10 cachedAppIntent];
  }

  v13 = v11;

  if (v13)
  {
    v24 = a1;
    v25 = a3;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = *(a1 + 32);
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v26 + 1) + 8 * i) executableSpecification];
          v20 = [v19 executableObject];

          v21 = [v20 intent];
          LODWORD(v19) = [ATXActionToWidgetConverter isWidgetIntent:v21 validConversionFromActionIntent:v13];

          if (v19)
          {
            v23 = __atxlog_handle_blending(v22);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v31 = v5;
              _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "HSLS: Temporarily filtering out action suggestion because there is a converted widget suggestion for it.\n%@", buf, 0xCu);
            }

            [*(v24 + 40) addIndex:v25];
            goto LABEL_18;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v32 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

LABEL_19:
}

- (void)_assignPinnedSuggestionsWidgetForPage:(id)page suggestions:(id)suggestions homeScreenState:(id)state
{
  v51 = *MEMORY[0x277D85DE8];
  pageCopy = page;
  suggestionsCopy = suggestions;
  stateCopy = state;
  v10 = __atxlog_handle_blending(stateCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    config = [pageCopy config];
    *buf = 134217984;
    pageIndex = [config pageIndex];
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "HSLS [assignPinnedSG]: considering pinned SG widgets on page %lu", buf, 0xCu);
  }

  v31 = pageCopy;
  [pageCopy pinnedSGWidgets];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v44 = 0u;
  v12 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  v36 = v12;
  if (v12)
  {
    v34 = *v42;
    do
    {
      v13 = 0;
      do
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v41 + 1) + 8 * v13);
        v15 = __atxlog_handle_blending(v12);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          config2 = [v14 config];
          widgets = [config2 widgets];
          firstObject = [widgets firstObject];
          widgetUniqueId = [firstObject widgetUniqueId];
          config3 = [v14 config];
          identifier = [config3 identifier];
          *buf = 138543618;
          pageIndex = widgetUniqueId;
          v48 = 2114;
          v49 = identifier;
          _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "  HSLS [assignPinnedSG]: considering pinned SG widget %{public}@ in stack %{public}@", buf, 0x16u);
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v21 = suggestionsCopy;
        v22 = [v21 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v38;
          while (2)
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v38 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v37 + 1) + 8 * i);
              v27 = [(ATXHomeScreenLayoutSelector2 *)self _isSuggestionStillNeededForTopOfStack:v14];
              if ((v27 & 1) == 0)
              {
                v30 = __atxlog_handle_blending(v27);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_DEFAULT, "    HSLS [assignPinnedSG]: pinned SG widget no longer needs suggestion", buf, 2u);
                }

                goto LABEL_27;
              }

              if ([(ATXHomeScreenLayoutSelector2 *)self _isSuggestionACandidate:v26 forStack:v14 dedupeAppSuggestionsByWidgets:1 ignoreDuplicatesInSGWidget:0 ignoreDuplicatesInPanels:1 homeScreenState:stateCopy])
              {
                v28 = [(ATXHomeScreenLayoutSelector2 *)self _hasEligiblePinnedWidgetStacksForSuggestionsWidget:v26 forCandidateStack:v14];
                if (v28)
                {
                  v29 = __atxlog_handle_blending(v28);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    pageIndex = v26;
                    _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "    HSLS [assignPinnedSG]: ASSIGNING suggestion %@", buf, 0xCu);
                  }

                  [(ATXHomeScreenLayoutSelector2 *)self _assignSuggestion:v26 toTopOfStack:v14];
                }
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

LABEL_27:

        ++v13;
      }

      while (v13 != v36);
      v12 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
      v36 = v12;
    }

    while (v12);
  }
}

- (void)_assignPinnedAPPWidgetForPage:(id)page suggestions:(id)suggestions homeScreenState:(id)state
{
  v51 = *MEMORY[0x277D85DE8];
  pageCopy = page;
  suggestionsCopy = suggestions;
  stateCopy = state;
  v10 = __atxlog_handle_blending(stateCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    config = [pageCopy config];
    *buf = 134217984;
    pageIndex = [config pageIndex];
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "HSLS [assignPinnedAPP]: considering App Prediction Panels on page %lu", buf, 0xCu);
  }

  v31 = pageCopy;
  [pageCopy pinnedAPPs];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v44 = 0u;
  v12 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  v36 = v12;
  if (v12)
  {
    v34 = *v42;
    do
    {
      v13 = 0;
      do
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v41 + 1) + 8 * v13);
        v15 = __atxlog_handle_blending(v12);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          config2 = [v14 config];
          widgets = [config2 widgets];
          firstObject = [widgets firstObject];
          widgetUniqueId = [firstObject widgetUniqueId];
          config3 = [v14 config];
          identifier = [config3 identifier];
          *buf = 138543618;
          pageIndex = widgetUniqueId;
          v48 = 2114;
          v49 = identifier;
          _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "  HSLS [assignPinnedAPP]: considering App Prediction Panel %{public}@ in stack %{public}@", buf, 0x16u);
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v21 = suggestionsCopy;
        v22 = [v21 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v38;
          while (2)
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v38 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v37 + 1) + 8 * i);
              v27 = [(ATXHomeScreenLayoutSelector2 *)self _isSuggestionStillNeededForTopOfStack:v14];
              if ((v27 & 1) == 0)
              {
                v30 = __atxlog_handle_blending(v27);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_DEFAULT, "    HSLS [assignPinnedAPP]: App Prediction Panel no longer needs suggestion", buf, 2u);
                }

                goto LABEL_27;
              }

              if ([(ATXHomeScreenLayoutSelector2 *)self _isSuggestionACandidate:v26 forStack:v14 dedupeAppSuggestionsByWidgets:0 ignoreDuplicatesInSGWidget:1 ignoreDuplicatesInPanels:0 homeScreenState:stateCopy])
              {
                v28 = [(ATXHomeScreenLayoutSelector2 *)self _hasEligiblePinnedWidgetStacksForAPPWidget:v26 forCandidateStack:v14];
                if (v28)
                {
                  v29 = __atxlog_handle_blending(v28);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    pageIndex = v26;
                    _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "    HSLS [assignPinnedAPP]: ASSIGNING suggestion %@", buf, 0xCu);
                  }

                  [(ATXHomeScreenLayoutSelector2 *)self _assignSuggestion:v26 toTopOfStack:v14];
                }
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

LABEL_27:

        ++v13;
      }

      while (v13 != v36);
      v12 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
      v36 = v12;
    }

    while (v12);
  }
}

- (void)_assignWidgetForTopOfStack:(id)stack suggestions:(id)suggestions homeScreenState:(id)state
{
  v54 = *MEMORY[0x277D85DE8];
  stackCopy = stack;
  suggestionsCopy = suggestions;
  stateCopy = state;
  v10 = __atxlog_handle_blending(stateCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    config = [stackCopy config];
    *buf = 134217984;
    pageIndex = [config pageIndex];
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "HSLS [assignSmartRotate]: considering Smart Rotate on page %lu", buf, 0xCu);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v35 = stackCopy;
  obj = [stackCopy stacks];
  v12 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v45;
    v36 = *v45;
    do
    {
      v15 = 0;
      v38 = v13;
      do
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v44 + 1) + 8 * v15);
        config2 = [v16 config];
        allowsSmartRotate = [config2 allowsSmartRotate];

        if (allowsSmartRotate)
        {
          v20 = __atxlog_handle_blending(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            config3 = [v16 config];
            identifier = [config3 identifier];
            isStale = [v16 isStale];
            *buf = 138543618;
            v24 = @"NO";
            if (isStale)
            {
              v24 = @"YES";
            }

            pageIndex = identifier;
            v51 = 2112;
            v52 = v24;
            _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "  HSLS [assignSmartRotate]: considering Smart Rotate for stack %{public}@ (isStale == %@)", buf, 0x16u);
          }

          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v25 = suggestionsCopy;
          v26 = [v25 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v41;
            while (2)
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v41 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v40 + 1) + 8 * i);
                v31 = [(ATXHomeScreenLayoutSelector2 *)self _isSuggestionStillNeededForTopOfStack:v16];
                if ((v31 & 1) == 0)
                {
                  v34 = __atxlog_handle_blending(v31);
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_2263AA000, v34, OS_LOG_TYPE_DEFAULT, "    HSLS [assignSmartRotate]: stack no longer needs suggestion", buf, 2u);
                  }

                  goto LABEL_30;
                }

                if ([(ATXHomeScreenLayoutSelector2 *)self _isSuggestionACandidate:v30 forStack:v16 dedupeAppSuggestionsByWidgets:1 ignoreDuplicatesInSGWidget:0 ignoreDuplicatesInPanels:1 homeScreenState:stateCopy])
                {
                  v32 = [(ATXHomeScreenLayoutSelector2 *)self _isStackEligibleForSmartRotate:v30 stack:v16];
                  if (v32)
                  {
                    v33 = __atxlog_handle_blending(v32);
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      pageIndex = v30;
                      _os_log_impl(&dword_2263AA000, v33, OS_LOG_TYPE_DEFAULT, "    HSLS [assignSmartRotate]: ASSIGNING suggestion %@", buf, 0xCu);
                    }

                    [(ATXHomeScreenLayoutSelector2 *)self _assignSuggestion:v30 toTopOfStack:v16];
                  }
                }
              }

              v27 = [v25 countByEnumeratingWithState:&v40 objects:v48 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

LABEL_30:

          v14 = v36;
          v13 = v38;
        }

        ++v15;
      }

      while (v15 != v13);
      v13 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v13);
  }
}

- (void)_assignUnfilledSGWidgetForPage:(id)page suggestions:(id)suggestions homeScreenState:(id)state
{
  v55 = *MEMORY[0x277D85DE8];
  pageCopy = page;
  suggestionsCopy = suggestions;
  stateCopy = state;
  v11 = __atxlog_handle_blending(stateCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    config = [pageCopy config];
    *buf = 134217984;
    pageIndex = [config pageIndex];
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "HSLS [assignUnfilledSG]: considering user-added unfilled SG widgets on page %lu", buf, 0xCu);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [pageCopy stacks];
  v33 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v33)
  {
    v32 = *v47;
    v13 = v39;
    do
    {
      v14 = 0;
      do
      {
        if (*v47 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v14;
        v15 = *(*(&v46 + 1) + 8 * v14);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        suggestionsWidgetSuggestionsByWidgetUniqueId = [v15 suggestionsWidgetSuggestionsByWidgetUniqueId];
        allValues = [suggestionsWidgetSuggestionsByWidgetUniqueId allValues];

        v35 = allValues;
        v18 = [allValues countByEnumeratingWithState:&v42 objects:v51 count:16];
        v37 = v18;
        if (v18)
        {
          v36 = *v43;
          do
          {
            v19 = 0;
            do
            {
              if (*v43 != v36)
              {
                objc_enumerationMutation(v35);
              }

              v20 = *(*(&v42 + 1) + 8 * v19);
              v21 = __atxlog_handle_blending(v18);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                [v20 widget];
                v22 = v13;
                v23 = stateCopy;
                v24 = suggestionsCopy;
                v26 = v25 = pageCopy;
                [v26 widgetUniqueId];
                v28 = v27 = self;
                *buf = 138543362;
                pageIndex = v28;
                _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "  HSLS [assignUnfilledSG]: considering SG widget %{public}@", buf, 0xCu);

                self = v27;
                pageCopy = v25;
                suggestionsCopy = v24;
                stateCopy = v23;
                v13 = v22;
              }

              v38[0] = MEMORY[0x277D85DD0];
              v38[1] = 3221225472;
              v39[0] = __91__ATXHomeScreenLayoutSelector2__assignUnfilledSGWidgetForPage_suggestions_homeScreenState___block_invoke;
              v39[1] = &unk_2785995E8;
              v39[2] = v20;
              v39[3] = self;
              v40 = stateCopy;
              v41 = pageCopy;
              [suggestionsCopy enumerateObjectsUsingBlock:v38];
              isLayoutComplete = [v20 isLayoutComplete];
              if ((isLayoutComplete & 1) == 0)
              {
                v30 = __atxlog_handle_blending(isLayoutComplete);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  [ATXHomeScreenLayoutSelector2 _assignUnfilledSGWidgetForPage:v50 suggestions:v20 homeScreenState:?];
                }
              }

              ++v19;
            }

            while (v37 != v19);
            v18 = [v35 countByEnumeratingWithState:&v42 objects:v51 count:16];
            v37 = v18;
          }

          while (v18);
        }

        v14 = v34 + 1;
      }

      while (v34 + 1 != v33);
      v33 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v33);
  }
}

void __91__ATXHomeScreenLayoutSelector2__assignUnfilledSGWidgetForPage_suggestions_homeScreenState___block_invoke(id *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [a1[4] isLayoutComplete];
  if (!v7)
  {
    if (![a1[5] _shouldConsiderSuggestionForSuggestionsWidget:v6])
    {
      goto LABEL_34;
    }

    v14 = [v6 executableSpecification];
    v15 = [v14 executableType];

    if (v15 == 2)
    {
      v16 = [v6 atxActionExecutableObject];
      v8 = [v16 intent];

      if (v8)
      {
        v17 = [a1[6] containsWidgetForIntent:v8];
        if (v17)
        {
          v9 = __atxlog_handle_blending(v17);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v30 = 138412290;
            v31 = v6;
            _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "    HSLS [assignUnfilledSG]: action suggestion not eligible because there is already a widget showing the same intent %@", &v30, 0xCu);
          }

          goto LABEL_5;
        }
      }

      goto LABEL_26;
    }

    v18 = [v6 executableSpecification];
    v19 = [v18 executableType];

    if (v19 != 10)
    {
LABEL_27:
      v26 = [a1[7] isShowingDuplicatedContentForSuggestion:v6 considerUnderStackContents:1 dedupeAppSuggestionsByWidgets:1 ignoreDuplicatesInSGWidget:0 ignoreDuplicatesInPanels:1];
      if (!v26)
      {
        v27 = a1[4];
        v28 = [v27 mainSuggestionInLayout];
        LODWORD(v27) = [v27 addSuggestion:v6 asMainSuggestion:v28 == 0];

        if (!v27)
        {
          goto LABEL_34;
        }

        v8 = __atxlog_handle_blending(v29);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_6;
        }

        v9 = [a1[4] widget];
        v10 = [v9 widgetUniqueId];
        v30 = 138412546;
        v31 = v10;
        v32 = 2112;
        v33 = v6;
        v11 = "    HSLS [assignUnfilledSG]: ASSIGNED SW %@ with suggestion:\n%@";
        v12 = v8;
        v13 = 22;
        goto LABEL_4;
      }

      v8 = __atxlog_handle_blending(v26);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v30 = 138412290;
      v31 = v6;
      v25 = "    HSLS [assignUnfilledSG]: suggestion not eligible due to duplicates on page %@";
LABEL_30:
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, v25, &v30, 0xCu);
      goto LABEL_6;
    }

    v20 = [v6 linkActionExecutableObject];
    if (!v20)
    {
      v8 = __atxlog_handle_blending(0);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v30 = 138412290;
      v31 = v6;
      v25 = "    HSLS [assignUnfilledSG]: Link action suggestion not eligible because the action container couldn't be deserialized %@";
      goto LABEL_30;
    }

    v8 = v20;
    v21 = [v20 cachedAppIntent];
    if (v21)
    {
      v22 = [a1[6] containsWidgetForIntent:v21];
      if (!v22)
      {

LABEL_26:
        goto LABEL_27;
      }

      v23 = __atxlog_handle_blending(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138412290;
        v31 = v6;
        v24 = "    HSLS [assignUnfilledSG]: Link action suggestion not eligible because there is already a widget showing the same app intent %@";
LABEL_23:
        _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, v24, &v30, 0xCu);
      }
    }

    else
    {
      v23 = __atxlog_handle_blending(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138412290;
        v31 = v6;
        v24 = "    HSLS [assignUnfilledSG]: Link action suggestion not eligible because cached app intent is nil %@";
        goto LABEL_23;
      }
    }

    goto LABEL_6;
  }

  *a4 = 1;
  v8 = __atxlog_handle_blending(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [a1[4] widget];
    v10 = [v9 widgetUniqueId];
    v30 = 138543362;
    v31 = v10;
    v11 = "    HSLS [assignUnfilledSG]: SG widget %{public}@ is layout-complete";
    v12 = v8;
    v13 = 12;
LABEL_4:
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, v11, &v30, v13);

LABEL_5:
  }

LABEL_6:

LABEL_34:
}

- (id)_suggestionsEligibleForSuggestedSGWidgetOnPages:(id)pages amongSuggestions:(id)suggestions
{
  v43 = *MEMORY[0x277D85DE8];
  pagesCopy = pages;
  suggestionsCopy = suggestions;
  v26 = objc_opt_new();
  v25 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = suggestionsCopy;
  v7 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v36;
    *&v8 = 138412290;
    v24 = v8;
    v27 = *v36;
    do
    {
      v11 = 0;
      v29 = v9;
      do
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * v11);
        if (![(ATXHomeScreenLayoutSelector2 *)self _shouldConsiderSuggestionForSuggestionsWidget:v12, v24])
        {
          goto LABEL_27;
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v13 = pagesCopy;
        v14 = [v13 countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (!v14)
        {
          goto LABEL_20;
        }

        v15 = v14;
        v16 = *v32;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v32 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v31 + 1) + 8 * i);
            executableSpecification = [v12 executableSpecification];
            if ([executableSpecification executableType] == 1)
            {
              isSeldomVisited = [v18 isSeldomVisited];

              if (isSeldomVisited)
              {
                if ([v18 suggestionsWidgetOnPageIsShowingDuplicatedContentForSuggestion:v12])
                {
                  goto LABEL_26;
                }

                continue;
              }
            }

            else
            {
            }

            if ([v18 isShowingDuplicatedContentForSuggestion:v12 considerUnderStackContents:1 dedupeAppSuggestionsByWidgets:1 ignoreDuplicatesInSGWidget:0 ignoreDuplicatesInPanels:1])
            {
              goto LABEL_26;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v31 objects:v41 count:16];
        }

        while (v15);
LABEL_20:

        v21 = [ATXSuggestionPreprocessor bundleIdAssociatedWithSuggestion:v12];
        v13 = v21;
        if (!v21)
        {
          goto LABEL_23;
        }

        if (([v25 containsObject:v21] & 1) == 0)
        {
          v21 = [v25 addObject:v13];
LABEL_23:
          v22 = __atxlog_handle_blending(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v24;
            v40 = v12;
            _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedSG]: Found suggestion eligible for suggested SG %@", buf, 0xCu);
          }

          [v26 addObject:v12];
        }

LABEL_26:
        v10 = v27;
        v9 = v29;

LABEL_27:
        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v9);
  }

  return v26;
}

- (void)_fillSuggestedSGWidgetIfLayoutNotComplete:(id)complete withSuggestions:(id)suggestions updatingUsedSuggestionIndexSet:(id)set
{
  completeCopy = complete;
  setCopy = set;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __121__ATXHomeScreenLayoutSelector2__fillSuggestedSGWidgetIfLayoutNotComplete_withSuggestions_updatingUsedSuggestionIndexSet___block_invoke;
  v16 = &unk_2785995C0;
  v9 = completeCopy;
  v17 = v9;
  v18 = setCopy;
  v10 = setCopy;
  [suggestions enumerateObjectsUsingBlock:&v13];
  isLayoutComplete = [v9 isLayoutComplete];
  if ((isLayoutComplete & 1) == 0)
  {
    v12 = __atxlog_handle_blending(isLayoutComplete);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [ATXHomeScreenLayoutSelector2 _fillSuggestedSGWidgetIfLayoutNotComplete:v9 withSuggestions:? updatingUsedSuggestionIndexSet:?];
    }
  }
}

void __121__ATXHomeScreenLayoutSelector2__fillSuggestedSGWidgetIfLayoutNotComplete_withSuggestions_updatingUsedSuggestionIndexSet___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = (a1 + 32);
  if ([*(a1 + 32) isLayoutComplete])
  {
    *a4 = 1;
  }

  else
  {
    v9 = [*(a1 + 40) containsIndex:a3];
    if ((v9 & 1) == 0)
    {
      v10 = __atxlog_handle_blending(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*v8 widget];
        v12 = [v11 widgetUniqueId];
        v17 = 138543618;
        v18 = v12;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "HSLS [fillIncompleteSuggestedSG]: ASSIGNING new suggestion to suggested SG %{public}@ %@", &v17, 0x16u);
      }

      v13 = *v8;
      v14 = [*v8 mainSuggestionInLayout];
      LODWORD(v13) = [v13 addSuggestion:v7 asMainSuggestion:v14 == 0];

      if (v13)
      {
        [*(a1 + 40) addIndex:a3];
      }

      else
      {
        v16 = __atxlog_handle_blending(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          __121__ATXHomeScreenLayoutSelector2__fillSuggestedSGWidgetIfLayoutNotComplete_withSuggestions_updatingUsedSuggestionIndexSet___block_invoke_cold_1((a1 + 32));
        }
      }
    }
  }
}

- (void)_assignExistingSuggestedSGWidgetsOnPages:(id)pages withSuggestions:(id)suggestions suggestionToRankingIndex:(id)index
{
  v200 = *MEMORY[0x277D85DE8];
  pagesCopy = pages;
  suggestionsCopy = suggestions;
  indexCopy = index;
  v122 = objc_opt_new();
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v9 = pagesCopy;
  v10 = [v9 countByEnumeratingWithState:&v180 objects:v199 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v181;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v181 != v12)
        {
          objc_enumerationMutation(v9);
        }

        config = [*(*(&v180 + 1) + 8 * i) config];
        [v122 appendFormat:@"%lu ", objc_msgSend(config, "pageIndex")];
      }

      v11 = [v9 countByEnumeratingWithState:&v180 objects:v199 count:16];
    }

    while (v11);
  }

  v16 = __atxlog_handle_blending(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v188 = v122;
    _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedSG]: considering previously suggested SG widgets on pages %{public}@", buf, 0xCu);
  }

  [(ATXHomeScreenLayoutSelector2 *)self _suggestionsEligibleForSuggestedSGWidgetOnPages:v9 amongSuggestions:suggestionsCopy];
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  obj = v179 = 0u;
  v17 = [obj countByEnumeratingWithState:&v176 objects:v198 count:16];
  if (!v17)
  {
    goto LABEL_70;
  }

  v18 = v17;
  v142 = 0;
  v19 = *v177;
  do
  {
    v20 = 0;
    do
    {
      if (*v177 != v19)
      {
        objc_enumerationMutation(obj);
      }

      scoreSpecification = [*(*(&v176 + 1) + 8 * v20) scoreSpecification];
      suggestedConfidenceCategory = [scoreSpecification suggestedConfidenceCategory];
      thresholdConfidenceForSuggestedSG = self->_thresholdConfidenceForSuggestedSG;

      v24 = v142;
      if (suggestedConfidenceCategory >= thresholdConfidenceForSuggestedSG)
      {
        v24 = v142 + 1;
      }

      v142 = v24;
      ++v20;
    }

    while (v18 != v20);
    v17 = [obj countByEnumeratingWithState:&v176 objects:v198 count:16];
    v18 = v17;
  }

  while (v17);
  if (v142)
  {
    v25 = v9;
    v26 = [obj count];
    v130 = objc_opt_new();
    v128 = objc_opt_new();
    v172 = 0u;
    v173 = 0u;
    v174 = 0u;
    v175 = 0u;
    v116 = v25;
    v117 = v25;
    selfCopy = self;
    v119 = [v117 countByEnumeratingWithState:&v172 objects:v197 count:16];
    if (v119)
    {
      v137 = 0;
      v118 = *v173;
      v27 = *MEMORY[0x277CEBBA0];
      v135 = *MEMORY[0x277CEBBA0];
      do
      {
        v28 = 0;
        do
        {
          if (*v173 != v118)
          {
            objc_enumerationMutation(v117);
          }

          v121 = v28;
          v29 = *(*(&v172 + 1) + 8 * v28);
          isSeldomVisited = [v29 isSeldomVisited];
          if (isSeldomVisited)
          {
            stacks = __atxlog_handle_blending(isSeldomVisited);
            if (os_log_type_enabled(stacks, OS_LOG_TYPE_DEFAULT))
            {
              config2 = [v29 config];
              pageIndex = [config2 pageIndex];
              *buf = 134217984;
              v188 = pageIndex;
              _os_log_impl(&dword_2263AA000, stacks, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedSG]: skipping page %lu because it's seldom visited", buf, 0xCu);
            }
          }

          else
          {
            v170 = 0u;
            v171 = 0u;
            v168 = 0u;
            v169 = 0u;
            stacks = [v29 stacks];
            v126 = [stacks countByEnumeratingWithState:&v168 objects:v196 count:16];
            if (v126)
            {
              v34 = *v169;
              v124 = *v169;
              v125 = stacks;
              do
              {
                v35 = 0;
                do
                {
                  if (*v169 != v34)
                  {
                    objc_enumerationMutation(stacks);
                  }

                  v127 = v35;
                  v36 = *(*(&v168 + 1) + 8 * v35);
                  config3 = [v36 config];
                  allowsNewWidget = [config3 allowsNewWidget];

                  if (allowsNewWidget)
                  {
                    v39 = v142 < 1;
                  }

                  else
                  {
                    v39 = 1;
                  }

                  if (!v39)
                  {
                    v166 = 0u;
                    v167 = 0u;
                    v164 = 0u;
                    v165 = 0u;
                    previousSuggestedWidgets = [v36 previousSuggestedWidgets];
                    v41 = [previousSuggestedWidgets countByEnumeratingWithState:&v164 objects:v195 count:16];
                    if (v41)
                    {
                      v42 = v41;
                      v133 = v36;
                      v43 = *v165;
                      v132 = previousSuggestedWidgets;
                      do
                      {
                        v44 = 0;
                        v140 = v42;
                        do
                        {
                          if (*v165 != v43)
                          {
                            objc_enumerationMutation(previousSuggestedWidgets);
                          }

                          v45 = *(*(&v164 + 1) + 8 * v44);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            widgetDismissManager = self->_widgetDismissManager;
                            v47 = ATXSpecialWidgetKindSiriSuggestions();
                            LODWORD(widgetDismissManager) = [(ATXWidgetSuggestionDismissManager *)widgetDismissManager shouldBlockWidgetSuggestionBecauseOfPreviousDismiss:v27 kind:v47 intent:0];

                            if (widgetDismissManager)
                            {
                              v49 = __atxlog_handle_blending(v48);
                              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 0;
                                _os_log_impl(&dword_2263AA000, v49, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedSG]: considered existing suggestions widget but the widget has been dismissed", buf, 2u);
                              }

                              v42 = v140;
                            }

                            else
                            {
                              v49 = v45;
                              layoutType = [v49 layoutType];
                              if (layoutType == 5)
                              {
                                v51 = 1;
                              }

                              else
                              {
                                layoutType = [v49 layoutType];
                                if (layoutType == 9)
                                {
                                  v51 = 2;
                                }

                                else
                                {
                                  layoutType = [v49 layoutType];
                                  v51 = 4 * (layoutType == 11);
                                }
                              }

                              v52 = __atxlog_handle_blending(layoutType);
                              v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
                              if (v26 < v51 || v142 <= 0)
                              {
                                if (v53)
                                {
                                  widget = [v49 widget];
                                  widgetUniqueId = [widget widgetUniqueId];
                                  *buf = 138544130;
                                  v188 = widgetUniqueId;
                                  v189 = 2048;
                                  v190 = v51;
                                  v191 = 2048;
                                  v192 = v26;
                                  v193 = 2048;
                                  v194 = v142;
                                  _os_log_impl(&dword_2263AA000, v52, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedSG]: not populating previously suggested SG %{public}@: numSuggestionsNeeded %lu, remaining numSuggestions %lu, remaining numSuggestionsAboveConfidenceThreshold %lu", buf, 0x2Au);

                                  self = selfCopy;
                                }

                                v27 = v135;
                              }

                              else
                              {
                                v134 = v26 - v51;
                                if (v53)
                                {
                                  widget2 = [v49 widget];
                                  widgetUniqueId2 = [widget2 widgetUniqueId];
                                  *buf = 138544130;
                                  v188 = widgetUniqueId2;
                                  v189 = 2048;
                                  v190 = v51;
                                  v191 = 2048;
                                  v192 = v26;
                                  v193 = 2048;
                                  v194 = v142;
                                  _os_log_impl(&dword_2263AA000, v52, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedSG]: creating placeholder for previously suggested SG %{public}@: numSuggestionsNeeded %lu, remaining numSuggestions %lu, remaining numSuggestionsAboveConfidenceThreshold %lu", buf, 0x2Au);

                                  self = selfCopy;
                                }

                                v56 = [_ATXSuggestionsWidgetSuggestion alloc];
                                widget3 = [v49 widget];
                                v52 = [(_ATXSuggestionsWidgetSuggestion *)v56 initWithSuggestionsWidget:widget3 containingStack:v133 suggestionDeduplicator:self->_suggestionDeduplicator hyperParameters:self->_hyperParameters];

                                suggestionsWidgetSuggestionsByWidgetUniqueId = [v133 suggestionsWidgetSuggestionsByWidgetUniqueId];
                                widget4 = [v49 widget];
                                widgetUniqueId3 = [widget4 widgetUniqueId];
                                [suggestionsWidgetSuggestionsByWidgetUniqueId setObject:v52 forKeyedSubscript:widgetUniqueId3];

                                self = selfCopy;
                                suggestedWidgets = [v133 suggestedWidgets];
                                [suggestedWidgets addObject:v52];

                                [v130 addObject:v52];
                                [v128 addObject:v49];
                                v27 = v135;
                                v137 += v51;
                                v142 -= v51;
                                v26 = v134;
                                previousSuggestedWidgets = v132;
                              }

                              v42 = v140;
                            }
                          }

                          ++v44;
                        }

                        while (v42 != v44);
                        v42 = [previousSuggestedWidgets countByEnumeratingWithState:&v164 objects:v195 count:16];
                      }

                      while (v42);
                    }

                    v34 = v124;
                    stacks = v125;
                  }

                  v35 = v127 + 1;
                }

                while (v127 + 1 != v126);
                v126 = [stacks countByEnumeratingWithState:&v168 objects:v196 count:16];
              }

              while (v126);
            }
          }

          v28 = v121 + 1;
        }

        while (v121 + 1 != v119);
        v119 = [v117 countByEnumeratingWithState:&v172 objects:v197 count:16];
      }

      while (v119);
    }

    else
    {
      v137 = 0;
    }

    v67 = objc_opt_new();
    v159[0] = MEMORY[0x277D85DD0];
    v159[1] = 3221225472;
    v159[2] = __114__ATXHomeScreenLayoutSelector2__assignExistingSuggestedSGWidgetsOnPages_withSuggestions_suggestionToRankingIndex___block_invoke;
    v159[3] = &unk_278599638;
    v129 = v128;
    v160 = v129;
    v68 = obj;
    v161 = v68;
    v163 = v137;
    v69 = v67;
    v162 = v69;
    [v130 enumerateObjectsUsingBlock:v159];
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v70 = v130;
    v71 = [v70 countByEnumeratingWithState:&v155 objects:v186 count:16];
    v9 = v116;
    if (v71)
    {
      v72 = v71;
      v73 = *v156;
      do
      {
        for (j = 0; j != v72; ++j)
        {
          if (*v156 != v73)
          {
            objc_enumerationMutation(v70);
          }

          [(ATXHomeScreenLayoutSelector2 *)self _fillSuggestedSGWidgetIfLayoutNotComplete:*(*(&v155 + 1) + 8 * j) withSuggestions:v68 updatingUsedSuggestionIndexSet:v69];
        }

        v72 = [v70 countByEnumeratingWithState:&v155 objects:v186 count:16];
      }

      while (v72);
    }

    v131 = v68;

    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v64 = v70;
    v143 = [v64 countByEnumeratingWithState:&v151 objects:v185 count:16];
    if (v143)
    {
      v75 = *v152;
      v141 = v69;
      v136 = *v152;
      v138 = v64;
      do
      {
        for (k = 0; k != v143; ++k)
        {
          if (*v152 != v75)
          {
            objc_enumerationMutation(v64);
          }

          v77 = *(*(&v151 + 1) + 8 * k);
          if ([v77 isLayoutComplete])
          {
            stack = [v77 stack];
            config4 = [stack config];
            allowsSmartRotate = [config4 allowsSmartRotate];

            if (allowsSmartRotate)
            {
              v149 = 0u;
              v150 = 0u;
              v147 = 0u;
              v148 = 0u;
              suggestionLayout = [v77 suggestionLayout];
              allSuggestionsInLayout = [suggestionLayout allSuggestionsInLayout];

              v83 = [allSuggestionsInLayout countByEnumeratingWithState:&v147 objects:v184 count:16];
              if (v83)
              {
                v84 = v83;
                suggestedConfidenceCategory3 = 0;
                v86 = *v148;
                do
                {
                  for (m = 0; m != v84; ++m)
                  {
                    if (*v148 != v86)
                    {
                      objc_enumerationMutation(allSuggestionsInLayout);
                    }

                    v88 = *(*(&v147 + 1) + 8 * m);
                    scoreSpecification2 = [v88 scoreSpecification];
                    suggestedConfidenceCategory2 = [scoreSpecification2 suggestedConfidenceCategory];

                    if (suggestedConfidenceCategory2 > suggestedConfidenceCategory3)
                    {
                      scoreSpecification3 = [v88 scoreSpecification];
                      suggestedConfidenceCategory3 = [scoreSpecification3 suggestedConfidenceCategory];

                      v92 = [indexCopy objectForKeyedSubscript:v88];
                      [v92 unsignedIntegerValue];
                    }
                  }

                  v84 = [allSuggestionsInLayout countByEnumeratingWithState:&v147 objects:v184 count:16];
                }

                while (v84);
              }

              else
              {
                suggestedConfidenceCategory3 = 0;
              }

              if (suggestedConfidenceCategory3 < selfCopy->_thresholdConfidenceForSuggestedSG)
              {
                mainSuggestionInLayout = __atxlog_handle_blending(v93);
                v9 = v116;
                if (os_log_type_enabled(mainSuggestionInLayout, OS_LOG_TYPE_FAULT))
                {
                  widget5 = [v77 widget];
                  widgetUniqueId4 = [widget5 widgetUniqueId];
                  v110 = selfCopy->_thresholdConfidenceForSuggestedSG;
                  suggestionLayout2 = [v77 suggestionLayout];
                  *buf = 138543874;
                  v188 = widgetUniqueId4;
                  v189 = 2048;
                  v190 = v110;
                  v191 = 2112;
                  v192 = suggestionLayout2;
                  _os_log_fault_impl(&dword_2263AA000, mainSuggestionInLayout, OS_LOG_TYPE_FAULT, "HSLS [assignExistingSuggestedSG]: newly created layout for previously suggested SG %{public}@ does not have >=1 suggestion with confidence >= %ld: %@", buf, 0x20u);
                }

                v69 = v141;
                v64 = v138;
                goto LABEL_111;
              }

              stack2 = [v77 stack];
              topOfStackSuggestion = [stack2 topOfStackSuggestion];
              mainSuggestionInLayout = [topOfStackSuggestion mainSuggestionInLayout];

              v9 = v116;
              if (mainSuggestionInLayout)
              {
                v98 = [indexCopy objectForKeyedSubscript:mainSuggestionInLayout];
                unsignedIntegerValue = [v98 unsignedIntegerValue];

                v69 = v141;
                v64 = v138;
                if (unsignedIntegerValue)
                {
                  v101 = __atxlog_handle_blending(v100);
                  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                  {
                    widget6 = [v77 widget];
                    widgetUniqueId5 = [widget6 widgetUniqueId];
                    *buf = 138543618;
                    v188 = widgetUniqueId5;
                    v189 = 2112;
                    v190 = mainSuggestionInLayout;
                    v104 = v101;
                    v105 = "HSLS [assignExistingSuggestedSG]: Smart Rotate to existing suggested SG %{public}@, overriding inferior topOfStackSuggestion %@";
                    v106 = 22;
                    goto LABEL_109;
                  }

                  goto LABEL_110;
                }
              }

              else
              {
                v101 = __atxlog_handle_blending(v97);
                v69 = v141;
                v64 = v138;
                if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                {
                  widget6 = [v77 widget];
                  widgetUniqueId5 = [widget6 widgetUniqueId];
                  *buf = 138543362;
                  v188 = widgetUniqueId5;
                  v104 = v101;
                  v105 = "HSLS [assignExistingSuggestedSG]: Smart Rotate to existing suggested SG %{public}@, because there is no topOfStackSuggestion for the stack yet";
                  v106 = 12;
LABEL_109:
                  _os_log_impl(&dword_2263AA000, v104, OS_LOG_TYPE_DEFAULT, v105, buf, v106);
                }

LABEL_110:

                stack3 = [v77 stack];
                [stack3 setTopOfStackSuggestion:v77];
              }

LABEL_111:
              v75 = v136;

              continue;
            }
          }
        }

        v143 = [v64 countByEnumeratingWithState:&v151 objects:v185 count:16];
      }

      while (v143);
    }

    v112 = [v131 objectsAtIndexes:v69];
    [v69 removeAllIndexes];
    v144[0] = MEMORY[0x277D85DD0];
    v144[1] = 3221225472;
    v144[2] = __114__ATXHomeScreenLayoutSelector2__assignExistingSuggestedSGWidgetsOnPages_withSuggestions_suggestionToRankingIndex___block_invoke_51;
    v144[3] = &unk_2785995C0;
    v145 = v112;
    v146 = v69;
    v113 = v69;
    v114 = v112;
    v66 = suggestionsCopy;
    [suggestionsCopy enumerateObjectsUsingBlock:v144];
    [suggestionsCopy removeObjectsAtIndexes:v113];
  }

  else
  {
LABEL_70:
    v64 = __atxlog_handle_blending(v17);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = self->_thresholdConfidenceForSuggestedSG;
      *buf = 134217984;
      v188 = v65;
      _os_log_impl(&dword_2263AA000, v64, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedSG]: not populating any previously suggested SG because there is no suggestions above confidence threshold %ld", buf, 0xCu);
    }

    v66 = suggestionsCopy;
  }
}

void __114__ATXHomeScreenLayoutSelector2__assignExistingSuggestedSGWidgetsOnPages_withSuggestions_suggestionToRankingIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __114__ATXHomeScreenLayoutSelector2__assignExistingSuggestedSGWidgetsOnPages_withSuggestions_suggestionToRankingIndex___block_invoke_2;
  v11[3] = &unk_278599610;
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v15 = *(a1 + 56);
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  [v8 enumerateObjectsUsingBlock:v11];
}

void __114__ATXHomeScreenLayoutSelector2__assignExistingSuggestedSGWidgetsOnPages_withSuggestions_suggestionToRankingIndex___block_invoke_2(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (*(a1 + 56) <= a3 || (v8 = (a1 + 32), [*(a1 + 32) isLayoutComplete]))
  {
    *a4 = 1;
  }

  else if (([*(a1 + 40) containsIndex:a3] & 1) == 0)
  {
    v9 = [*(a1 + 48) containsIdenticalContentOfSuggestion:v7];
    if (v9)
    {
      v10 = __atxlog_handle_blending(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*v8 widget];
        v12 = [v11 widgetUniqueId];
        v17 = 138543618;
        v18 = v12;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedSG]: ASSIGNING previously existing suggestion to suggested SG %{public}@ %@", &v17, 0x16u);
      }

      v13 = *v8;
      v14 = [*v8 mainSuggestionInLayout];
      LODWORD(v13) = [v13 addSuggestion:v7 asMainSuggestion:v14 == 0];

      if (v13)
      {
        [*(a1 + 40) addIndex:a3];
      }

      else
      {
        v16 = __atxlog_handle_blending(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          __114__ATXHomeScreenLayoutSelector2__assignExistingSuggestedSGWidgetsOnPages_withSuggestions_suggestionToRankingIndex___block_invoke_2_cold_1((a1 + 32));
        }
      }
    }
  }
}

void __114__ATXHomeScreenLayoutSelector2__assignExistingSuggestedSGWidgetsOnPages_withSuggestions_suggestionToRankingIndex___block_invoke_51(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (*(*(&v12 + 1) + 8 * i) == v5)
        {
          v11 = __atxlog_handle_blending([*(a1 + 40) addIndex:{a3, v12}]);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v17 = v5;
            _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedSG]: removing used suggestion %@", buf, 0xCu);
          }

          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)_assignNewSuggestedWidgetsForPages:(id)pages rankedSuggestions:(id)suggestions suggestionToRankingIndex:(id)index homeScreenState:(id)state
{
  v238 = *MEMORY[0x277D85DE8];
  pagesCopy = pages;
  suggestionsCopy = suggestions;
  indexCopy = index;
  stateCopy = state;
  v12 = objc_opt_new();
  v220 = 0u;
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  v13 = pagesCopy;
  v14 = [v13 countByEnumeratingWithState:&v220 objects:v237 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v221;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v221 != v16)
        {
          objc_enumerationMutation(v13);
        }

        config = [*(*(&v220 + 1) + 8 * i) config];
        [v12 appendFormat:@"%lu ", objc_msgSend(config, "pageIndex")];
      }

      v15 = [v13 countByEnumeratingWithState:&v220 objects:v237 count:16];
    }

    while (v15);
  }

  v20 = __atxlog_handle_blending(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v228 = v12;
    _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: considering making new Widget Suggestion for pages %{public}@", buf, 0xCu);
  }

  v218[0] = MEMORY[0x277D85DD0];
  v218[1] = 3221225472;
  v218[2] = __126__ATXHomeScreenLayoutSelector2__assignNewSuggestedWidgetsForPages_rankedSuggestions_suggestionToRankingIndex_homeScreenState___block_invoke;
  v218[3] = &unk_278599660;
  v218[4] = self;
  v168 = v13;
  v219 = v168;
  v21 = [suggestionsCopy _pas_filteredArrayWithTest:v218];
  if (![v21 count])
  {
    v137 = v21;
    v138 = __atxlog_handle_blending(0);
    if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v138, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: not making any new Widget Suggestion because there isn't any eligible suggestion", buf, 2u);
    }

    goto LABEL_173;
  }

  v22 = *MEMORY[0x277CEBD38];
  buf[0] = 0;
  applicationID = *MEMORY[0x277CEBD00];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v22, *MEMORY[0x277CEBD00], buf);
  v214 = 0u;
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  v154 = v21;
  obj = v21;
  v171 = indexCopy;
  v155 = v12;
  v164 = [obj countByEnumeratingWithState:&v214 objects:v236 count:16];
  if (!v164)
  {
    goto LABEL_147;
  }

  v163 = *v215;
LABEL_13:
  v23 = 0;
LABEL_14:
  if (*v215 != v163)
  {
    objc_enumerationMutation(obj);
  }

  v24 = *(*(&v214 + 1) + 8 * v23);
  executableSpecification = [v24 executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType != 3)
  {
    v28 = 0;
    goto LABEL_22;
  }

  v27 = [MEMORY[0x277D42040] infoSuggestionFromProactiveSuggestion:v24];
  v28 = v27;
  if (!v27)
  {
LABEL_22:
    v30 = 0;
    goto LABEL_26;
  }

  widgetBundleIdentifier = [v27 widgetBundleIdentifier];
  if (CFPreferencesGetAppBooleanValue(@"widgetKitDeveloperModeEnabled", @"com.apple.duetexpertd", 0))
  {
    buf[0] = 0;
    if (CFPreferencesGetAppBooleanValue(@"ATXWidgetKitDeveloperModeSkipEntitlementCheck", applicationID, buf))
    {
      v30 = 1;
    }

    else
    {
      v30 = [MEMORY[0x277CEB3B0] isDebuggingAllowedForExtensionBundleId:widgetBundleIdentifier];
    }
  }

  else
  {
    v30 = 0;
  }

LABEL_26:
  if (AppBooleanValue || (v30 & 1) != 0 || self->_numSuggestedWidgetInPastDay < 0x14)
  {
    v31 = __atxlog_handle_blending(v27);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v228 = v24;
      _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: considering making new Widget Suggestion with suggestion %@", buf, 0xCu);
    }

    executableSpecification2 = [v24 executableSpecification];
    executableType2 = [executableSpecification2 executableType];

    v34 = executableType2 != 3 || v28 == 0;
    v172 = v24;
    if (v34)
    {
      v186 = 0;
      goto LABEL_57;
    }

    v169 = v23;
    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v35 = v168;
    v36 = [v35 countByEnumeratingWithState:&v210 objects:v235 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v211;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v211 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v210 + 1) + 8 * j);
          v41 = v28;
          appBundleIdentifier = [v28 appBundleIdentifier];
          v43 = [v40 containsSuggestedWidgetForApp:appBundleIdentifier];

          if (v43)
          {
            v48 = __atxlog_handle_blending(v44);
            v28 = v41;
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              appBundleIdentifier2 = [v41 appBundleIdentifier];
              config2 = [v40 config];
              pageIndex = [config2 pageIndex];
              *buf = 138412546;
              v228 = appBundleIdentifier2;
              v229 = 2048;
              v230 = pageIndex;
              _os_log_impl(&dword_2263AA000, v48, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: Found existing suggested widget under the same bundleId %@ on page %lu, so skipping this suggestion", buf, 0x16u);
            }

            v23 = v169;
            goto LABEL_131;
          }

          v28 = v41;
        }

        v37 = [v35 countByEnumeratingWithState:&v210 objects:v235 count:16];
      }

      while (v37);
    }

    widgetBundleIdentifier2 = [v28 widgetBundleIdentifier];
    v46 = ATXBundleIdIsSpecialWidgetExtensionBundleId() | v30;

    if (v46)
    {
      v186 = 0;
      v23 = v169;
LABEL_56:
      v24 = v172;
      goto LABEL_57;
    }

    v23 = v169;
    if (self->_shouldLimitWidgetSuggestionPowerCost)
    {
      v35 = __atxlog_handle_blending(v47);
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_131;
      }

      widgetBundleIdentifier3 = [v28 widgetBundleIdentifier];
      *buf = 138412290;
      v228 = widgetBundleIdentifier3;
      v53 = v35;
      v54 = "HSLS [assignNewWidgetSuggestion]: Not considering making new Widget Suggestion for %@ to save power in the first week after Sky upgrade.";
    }

    else
    {
      if (AppBooleanValue)
      {
        v186 = 1;
        goto LABEL_56;
      }

      v24 = v172;
      if (self->_numWidgetReloadForSuggestionInPastDay < 0x14)
      {
        v186 = 1;
LABEL_57:
        v55 = [v171 objectForKeyedSubscript:v24];
        unsignedIntegerValue = [v55 unsignedIntegerValue];

        v182 = [(ATXHomeScreenLayoutSelector2 *)self _shouldConsiderSuggestionForSuggestionsWidget:v24];
        v206 = 0u;
        v207 = 0u;
        v208 = 0u;
        v209 = 0u;
        v56 = v168;
        v57 = [v56 countByEnumeratingWithState:&v206 objects:v234 count:16];
        if (!v57)
        {

          v179 = 0;
          goto LABEL_127;
        }

        v58 = v57;
        v179 = 0;
        v175 = 0;
        v59 = *v207;
        v161 = v56;
        v170 = v23;
        v165 = v28;
        v158 = *v207;
LABEL_59:
        v60 = 0;
        v159 = v58;
        while (1)
        {
          if (*v207 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v61 = *(*(&v206 + 1) + 8 * v60);
          if (v182 && (v62 = [*(*(&v206 + 1) + 8 * v60) containsSGWidget], v62))
          {
            stacks = __atxlog_handle_blending(v62);
            if (os_log_type_enabled(stacks, OS_LOG_TYPE_DEFAULT))
            {
              config3 = [v61 config];
              pageIndex2 = [config3 pageIndex];
              *buf = 134218242;
              v228 = pageIndex2;
              v229 = 2112;
              v230 = v24;
              _os_log_impl(&dword_2263AA000, stacks, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: page %lu is not eligible to surface SG widget suggestion as Widget Suggestion because it already contains a pinned or suggested SG widget: %@", buf, 0x16u);
            }
          }

          else
          {
            v162 = v60;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v184 = v61;
            stacks = [v61 stacks];
            v66 = [stacks countByEnumeratingWithState:&v202 objects:v233 count:16];
            if (v66)
            {
              v67 = v66;
              v188 = *v203;
              v68 = v171;
              v177 = stacks;
              while (2)
              {
                v69 = 0;
LABEL_69:
                if (*v203 != v188)
                {
                  objc_enumerationMutation(stacks);
                }

                v35 = *(*(&v202 + 1) + 8 * v69);
                v70 = [(ATXHomeScreenLayoutSelector2 *)self _isStack:v35 eligibleToShowSuggestionViaWidgetSuggestion:v24];
                if ((v70 & 1) == 0)
                {
                  topOfStackSuggestion2 = __atxlog_handle_blending(v70);
                  if (!os_log_type_enabled(topOfStackSuggestion2, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_103;
                  }

                  config4 = [v35 config];
                  identifier = [config4 identifier];
                  config5 = [v184 config];
                  pageIndex3 = [config5 pageIndex];
                  *buf = 138543874;
                  v228 = identifier;
                  v229 = 2048;
                  v230 = pageIndex3;
                  v231 = 2112;
                  v232 = v24;
                  v81 = topOfStackSuggestion2;
                  v82 = "HSLS [assignNewWidgetSuggestion]: stack %{public}@ on page %lu is not eligible to surface suggestion as Widget Suggestion: %@";
                  goto LABEL_79;
                }

                if (v186)
                {
                  config6 = [v35 config];
                  identifier2 = [config6 identifier];
                  v73 = [(ATXHomeScreenLayoutSelector2 *)self _stackHasRemainingReloadBudgetForWidgetSuggestion:identifier2 homeScreenState:stateCopy];

                  if (!v73)
                  {
                    topOfStackSuggestion2 = __atxlog_handle_blending(v74);
                    if (!os_log_type_enabled(topOfStackSuggestion2, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_103;
                    }

                    config4 = [v35 config];
                    identifier = [config4 identifier];
                    config5 = [v184 config];
                    pageIndex4 = [config5 pageIndex];
                    *buf = 138543874;
                    v228 = identifier;
                    v229 = 2048;
                    v230 = pageIndex4;
                    v231 = 2112;
                    v232 = v24;
                    v81 = topOfStackSuggestion2;
                    v82 = "HSLS [assignNewWidgetSuggestion]: stack %{public}@ on page %lu is not eligible to surface Widget Suggestion because it has depleted reload budget: %@";
LABEL_79:
                    _os_log_impl(&dword_2263AA000, v81, OS_LOG_TYPE_DEFAULT, v82, buf, 0x20u);

LABEL_102:
                    goto LABEL_103;
                  }
                }

                topOfStackSuggestion = [v35 topOfStackSuggestion];

                if (topOfStackSuggestion)
                {
                  topOfStackSuggestion2 = [v35 topOfStackSuggestion];
                  if (!topOfStackSuggestion2)
                  {
                    goto LABEL_113;
                  }
                }

                else
                {
                  suggestedWidgets = [v35 suggestedWidgets];
                  v84 = [suggestedWidgets count];

                  if (!v84 || (-[NSObject suggestedWidgets](v35, "suggestedWidgets"), v85 = objc_claimAutoreleasedReturnValue(), [v85 firstObject], topOfStackSuggestion2 = objc_claimAutoreleasedReturnValue(), v85, !topOfStackSuggestion2))
                  {
LABEL_113:
                    v115 = v35;

                    v86 = __atxlog_handle_blending(v116);
                    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                    {
                      config7 = [v115 config];
                      identifier3 = [config7 identifier];
                      config8 = [v184 config];
                      pageIndex5 = [config8 pageIndex];
                      *buf = 138543618;
                      v228 = identifier3;
                      v229 = 2048;
                      v230 = pageIndex5;
                      _os_log_impl(&dword_2263AA000, v86, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: found target stack %{public}@ on page %lu -- stack does not yet have an existingSuggestion", buf, 0x16u);

                      stacks = v177;
                    }

                    v114 = 1;
                    goto LABEL_116;
                  }
                }

                if (!v182 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
LABEL_92:
                  mainSuggestionInLayout = [topOfStackSuggestion2 mainSuggestionInLayout];
                  v95 = [v68 objectForKeyedSubscript:mainSuggestionInLayout];
                  unsignedIntegerValue2 = [v95 unsignedIntegerValue];

                  if (unsignedIntegerValue2 >= unsignedIntegerValue)
                  {
                    if (v175)
                    {
                      mainSuggestionInLayout2 = [v179 mainSuggestionInLayout];
                      v104 = [v68 objectForKeyedSubscript:mainSuggestionInLayout2];
                      unsignedIntegerValue3 = [v104 unsignedIntegerValue];

                      if (unsignedIntegerValue2 <= unsignedIntegerValue3)
                      {
                        v24 = v172;
                        stacks = v177;
                        goto LABEL_103;
                      }

                      v107 = __atxlog_handle_blending(v106);
                      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                      {
                        config9 = [v35 config];
                        identifier4 = [config9 identifier];
                        config10 = [v184 config];
                        pageIndex6 = [config10 pageIndex];
                        suggestionLayout = [topOfStackSuggestion2 suggestionLayout];
                        *buf = 138543874;
                        v228 = identifier4;
                        v229 = 2048;
                        v230 = pageIndex6;
                        v68 = v171;
                        v231 = 2112;
                        v232 = suggestionLayout;
                        _os_log_impl(&dword_2263AA000, v107, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: found a better target stack %{public}@ on page %lu with inferior existingSuggestion %@", buf, 0x20u);
                      }

                      v112 = v35;
                      config4 = v179;
                      v179 = topOfStackSuggestion2;
                      v175 = v112;
                      v24 = v172;
                    }

                    else
                    {
                      v175 = v35;
                      config4 = v179;
                      v179 = topOfStackSuggestion2;
                    }
                  }

                  else
                  {
                    config4 = __atxlog_handle_blending(v97);
                    if (os_log_type_enabled(config4, OS_LOG_TYPE_DEFAULT))
                    {
                      config11 = [v35 config];
                      identifier5 = [config11 identifier];
                      config12 = [v184 config];
                      pageIndex7 = [config12 pageIndex];
                      suggestionLayout2 = [topOfStackSuggestion2 suggestionLayout];
                      *buf = 138543874;
                      v228 = identifier5;
                      v229 = 2048;
                      v230 = pageIndex7;
                      v68 = v171;
                      v231 = 2112;
                      v232 = suggestionLayout2;
                      _os_log_impl(&dword_2263AA000, config4, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: can't assign to stack %{public}@ on page %lu -- superior existingSuggestion %@", buf, 0x20u);

                      v24 = v172;
                    }
                  }

                  stacks = v177;
                  goto LABEL_102;
                }

                v86 = topOfStackSuggestion2;
                isLayoutComplete = [v86 isLayoutComplete];
                if (isLayoutComplete)
                {
                  v88 = __atxlog_handle_blending(isLayoutComplete);
                  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                  {
                    config13 = [v35 config];
                    identifier6 = [config13 identifier];
                    config14 = [v184 config];
                    pageIndex8 = [config14 pageIndex];
                    *buf = 138543618;
                    v228 = identifier6;
                    v229 = 2048;
                    v230 = pageIndex8;
                    _os_log_impl(&dword_2263AA000, v88, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: stack %{public}@ on page %lu is not eligible to surface suggestion because it already contains an existing suggested SG widget with a complete layout.", buf, 0x16u);

                    stacks = v177;
                  }

                  topOfStackSuggestion2 = v86;
LABEL_103:

                  if (v67 == ++v69)
                  {
                    v113 = [stacks countByEnumeratingWithState:&v202 objects:v233 count:16];
                    v67 = v113;
                    if (!v113)
                    {
                      v28 = v165;
                      v56 = v161;
                      v59 = v158;
                      v58 = v159;
                      goto LABEL_109;
                    }

                    continue;
                  }

                  goto LABEL_69;
                }

                break;
              }

              if (![v86 canAddSuggestion:v24])
              {

                goto LABEL_92;
              }

              v129 = v35;

              v131 = __atxlog_handle_blending(v130);
              if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
              {
                config15 = [v129 config];
                identifier7 = [config15 identifier];
                config16 = [v184 config];
                pageIndex9 = [config16 pageIndex];
                *buf = 138543618;
                v228 = identifier7;
                v229 = 2048;
                v230 = pageIndex9;
                _os_log_impl(&dword_2263AA000, v131, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: found target stack %{public}@ on page %lu -- existingSuggestion is SG widget with empty slot", buf, 0x16u);

                stacks = v177;
              }

              v114 = 0;
              v179 = v86;
LABEL_116:
              v28 = v165;

LABEL_117:
              if (v35)
              {
                v122 = __atxlog_handle_blending(v121);
                if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
                {
                  config17 = [v35 config];
                  identifier8 = [config17 identifier];
                  page = [v35 page];
                  config18 = [page config];
                  pageIndex10 = [config18 pageIndex];
                  *buf = 138543874;
                  v228 = identifier8;
                  v229 = 2048;
                  v230 = pageIndex10;
                  v231 = 2112;
                  v232 = v24;
                  _os_log_impl(&dword_2263AA000, v122, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: ASSIGNING suggestion to target stack %{public}@ on page %lu as new Widget Suggestion: %@", buf, 0x20u);
                }

                [(ATXHomeScreenLayoutSelector2 *)self _assignSuggestion:v24 toTopOfStack:v35];
                if (v114)
                {
                  ++self->_numSuggestedWidgetInPastDay;
                }

                if (v186)
                {
                  ++self->_numWidgetReloadForSuggestionInPastDay;
                }

                v23 = v170;
                goto LABEL_130;
              }

              v23 = v170;
LABEL_127:
              v128 = __atxlog_handle_blending(v121);
              if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v228 = v24;
                _os_log_impl(&dword_2263AA000, v128, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: Unable to find suitable target stack for suggestion %@", buf, 0xCu);
              }

              v35 = 0;
LABEL_130:

LABEL_131:
              if (++v23 == v164)
              {
                v136 = [obj countByEnumeratingWithState:&v214 objects:v236 count:16];
                v164 = v136;
                if (!v136)
                {
                  goto LABEL_147;
                }

                goto LABEL_13;
              }

              goto LABEL_14;
            }

            v28 = v165;
LABEL_109:
            v60 = v162;
          }

          if (++v60 == v58)
          {
            v58 = [v56 countByEnumeratingWithState:&v206 objects:v234 count:16];
            if (!v58)
            {
              v114 = 1;
              v35 = v175;
              goto LABEL_117;
            }

            goto LABEL_59;
          }
        }
      }

      v35 = __atxlog_handle_blending(v47);
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_131;
      }

      widgetBundleIdentifier3 = [v28 widgetBundleIdentifier];
      *buf = 138412290;
      v228 = widgetBundleIdentifier3;
      v53 = v35;
      v54 = "HSLS [assignNewWidgetSuggestion]: Not considering making new Widget Suggestion for %@, because we have reached our reload budget.";
    }

    _os_log_impl(&dword_2263AA000, v53, OS_LOG_TYPE_DEFAULT, v54, buf, 0xCu);

    goto LABEL_131;
  }

  v139 = __atxlog_handle_blending(v27);
  if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v139, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: Not considering making new Widget Suggestion, because we have reached our budget.", buf, 2u);
  }

LABEL_147:
  v138 = [(ATXHomeScreenLayoutSelector2 *)self _suggestionsEligibleForSuggestedSGWidgetOnPages:v168 amongSuggestions:suggestionsCopy];
  v140 = objc_opt_new();
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v176 = v168;
  v180 = [v176 countByEnumeratingWithState:&v198 objects:v226 count:16];
  if (v180)
  {
    v178 = *v199;
    do
    {
      v141 = 0;
      do
      {
        if (*v199 != v178)
        {
          objc_enumerationMutation(v176);
        }

        v181 = v141;
        v142 = *(*(&v198 + 1) + 8 * v141);
        v194 = 0u;
        v195 = 0u;
        v196 = 0u;
        v197 = 0u;
        stacks2 = [v142 stacks];
        v187 = [stacks2 countByEnumeratingWithState:&v194 objects:v225 count:16];
        if (v187)
        {
          v185 = *v195;
          do
          {
            v143 = 0;
            do
            {
              if (*v195 != v185)
              {
                objc_enumerationMutation(stacks2);
              }

              v189 = v143;
              v144 = *(*(&v194 + 1) + 8 * v143);
              v190 = 0u;
              v191 = 0u;
              v192 = 0u;
              v193 = 0u;
              suggestionsWidgetSuggestionsByWidgetUniqueId = [v144 suggestionsWidgetSuggestionsByWidgetUniqueId];
              allValues = [suggestionsWidgetSuggestionsByWidgetUniqueId allValues];

              v147 = [allValues countByEnumeratingWithState:&v190 objects:v224 count:16];
              if (v147)
              {
                v148 = v147;
                v149 = *v191;
                do
                {
                  for (k = 0; k != v148; ++k)
                  {
                    if (*v191 != v149)
                    {
                      objc_enumerationMutation(allValues);
                    }

                    v151 = *(*(&v190 + 1) + 8 * k);
                    widget = [v151 widget];
                    if ([widget isSuggestedWidget])
                    {
                      isLayoutComplete2 = [v151 isLayoutComplete];

                      if ((isLayoutComplete2 & 1) == 0)
                      {
                        [(ATXHomeScreenLayoutSelector2 *)self _fillSuggestedSGWidgetIfLayoutNotComplete:v151 withSuggestions:v138 updatingUsedSuggestionIndexSet:v140];
                      }
                    }

                    else
                    {
                    }
                  }

                  v148 = [allValues countByEnumeratingWithState:&v190 objects:v224 count:16];
                }

                while (v148);
              }

              v143 = v189 + 1;
            }

            while (v189 + 1 != v187);
            v187 = [stacks2 countByEnumeratingWithState:&v194 objects:v225 count:16];
          }

          while (v187);
        }

        v141 = v181 + 1;
      }

      while (v181 + 1 != v180);
      v180 = [v176 countByEnumeratingWithState:&v198 objects:v226 count:16];
    }

    while (v180);
  }

  indexCopy = v171;
  v137 = v154;
  v12 = v155;
LABEL_173:
}

uint64_t __126__ATXHomeScreenLayoutSelector2__assignNewSuggestedWidgetsForPages_rankedSuggestions_suggestionToRankingIndex_homeScreenState___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _hasEligibleWidgetSuggestionsStacksForSuggestion:v3 onPages:*(a1 + 40) ignoreDuplicatesInSGWidget:0 ignoreDuplicatesInPanels:1];
  v5 = v4;
  if (v4)
  {
    v6 = __atxlog_handle_blending(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: Found suggestion eligible for making new Widget Suggestion %@", &v8, 0xCu);
    }
  }

  return v5;
}

- (BOOL)_stackHasRemainingReloadBudgetForWidgetSuggestion:(id)suggestion homeScreenState:(id)state
{
  v52 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  stateCopy = state;
  if (!suggestionCopy)
  {
    goto LABEL_31;
  }

  if (CFPreferencesGetAppBooleanValue(@"widgetKitDeveloperModeEnabled", @"com.apple.duetexpertd", 0))
  {
    v8 = 1;
    goto LABEL_34;
  }

  widgetSuggestionReloadBudgetByStackId = [(ATXHomeScreenLayoutSelector2 *)self widgetSuggestionReloadBudgetByStackId];

  if (widgetSuggestionReloadBudgetByStackId)
  {
    goto LABEL_5;
  }

  if ([(ATXHomeScreenLayoutSelector2 *)self hasAskedChronoAboutReloadBudget])
  {
    goto LABEL_31;
  }

  selfCopy = self;
  v35 = suggestionCopy;
  v12 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v34 = stateCopy;
  obj = [stateCopy sortedPagesByUserLastVisit];
  v38 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (!v38)
  {
    goto LABEL_26;
  }

  v37 = *v47;
  do
  {
    v13 = 0;
    do
    {
      if (*v47 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v39 = v13;
      v14 = *(*(&v46 + 1) + 8 * v13);
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      stacks = [v14 stacks];
      v16 = [stacks countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v43;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v43 != v18)
            {
              objc_enumerationMutation(stacks);
            }

            v20 = *(*(&v42 + 1) + 8 * i);
            config = [v20 config];
            if ([config allowsNewWidget])
            {
              config2 = [v20 config];
              widgets = [config2 widgets];
              v24 = [widgets count];

              if (v24 < 2)
              {
                continue;
              }

              config = [v20 config];
              identifier = [config identifier];
              [v12 addObject:identifier];
            }
          }

          v17 = [stacks countByEnumeratingWithState:&v42 objects:v50 count:16];
        }

        while (v17);
      }

      v13 = v39 + 1;
    }

    while (v39 + 1 != v38);
    v38 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  }

  while (v38);
LABEL_26:

  v26 = dispatch_semaphore_create(0);
  self = selfCopy;
  chronoService = selfCopy->_chronoService;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __98__ATXHomeScreenLayoutSelector2__stackHasRemainingReloadBudgetForWidgetSuggestion_homeScreenState___block_invoke;
  v40[3] = &unk_278599688;
  v40[4] = selfCopy;
  v28 = v26;
  v41 = v28;
  [(CHSProactiveService *)chronoService suggestionBudgetsForStackIdentifiers:v12 completion:v40];
  v29 = [MEMORY[0x277D425A0] waitForSemaphore:v28 timeoutSeconds:2.0];
  if (v29 == 1)
  {
    v30 = __atxlog_handle_blending(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [ATXHomeScreenLayoutSelector2 _stackHasRemainingReloadBudgetForWidgetSuggestion:homeScreenState:];
    }
  }

  [(ATXHomeScreenLayoutSelector2 *)selfCopy setHasAskedChronoAboutReloadBudget:1];
  widgetSuggestionReloadBudgetByStackId2 = [(ATXHomeScreenLayoutSelector2 *)selfCopy widgetSuggestionReloadBudgetByStackId];

  stateCopy = v34;
  suggestionCopy = v35;
  if (!widgetSuggestionReloadBudgetByStackId2)
  {
LABEL_31:
    v8 = 0;
    goto LABEL_34;
  }

LABEL_5:
  widgetSuggestionReloadBudgetByStackId3 = [(ATXHomeScreenLayoutSelector2 *)self widgetSuggestionReloadBudgetByStackId];
  v11 = [widgetSuggestionReloadBudgetByStackId3 objectForKeyedSubscript:suggestionCopy];

  if (v11)
  {
    v8 = [v11 integerValue] > 0;
  }

  else
  {
    v8 = 1;
  }

LABEL_34:
  return v8;
}

void __98__ATXHomeScreenLayoutSelector2__stackHasRemainingReloadBudgetForWidgetSuggestion_homeScreenState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = __atxlog_handle_blending(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __98__ATXHomeScreenLayoutSelector2__stackHasRemainingReloadBudgetForWidgetSuggestion_homeScreenState___block_invoke_cold_1();
    }
  }

  v9 = __atxlog_handle_blending(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v5;
  }

  [*(a1 + 32) setWidgetSuggestionReloadBudgetByStackId:v5];
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_updateSuggestionsWidgetLayoutIfNecessaryWithRankedShortcutSuggestions:(id)suggestions suggestionToRankingIndex:(id)index homeScreenState:(id)state
{
  v114 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  stateCopy = state;
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = __144__ATXHomeScreenLayoutSelector2__updateSuggestionsWidgetLayoutIfNecessaryWithRankedShortcutSuggestions_suggestionToRankingIndex_homeScreenState___block_invoke;
  v103[3] = &unk_2785996B0;
  v9 = stateCopy;
  v104 = v9;
  v69 = [suggestions _pas_filteredArrayWithTest:v103];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v64 = v9;
  obj = [v9 sortedPagesByUserLastVisit];
  v67 = [obj countByEnumeratingWithState:&v99 objects:v113 count:16];
  if (v67)
  {
    v66 = *v100;
    selfCopy = self;
    do
    {
      v10 = 0;
      do
      {
        if (*v100 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v68 = v10;
        v11 = *(*(&v99 + 1) + 8 * v10);
        v12 = [(ATXHomeScreenLayoutSelector2 *)self _suggestionsWidgetSuggestionsByPriorityOnPage:v11];
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v71 = v12;
        v72 = [v12 countByEnumeratingWithState:&v95 objects:v112 count:16];
        if (v72)
        {
          v13 = *v96;
          v75 = v11;
          v70 = *v96;
          do
          {
            v14 = 0;
            do
            {
              if (*v96 != v13)
              {
                objc_enumerationMutation(v71);
              }

              v73 = v14;
              v15 = *(*(&v95 + 1) + 8 * v14);
              widget = [v15 widget];
              isSuggestedWidget = [widget isSuggestedWidget];

              if ((isSuggestedWidget & 1) == 0)
              {
                stack = [v15 stack];
                v91 = 0u;
                v92 = 0u;
                v93 = 0u;
                v94 = 0u;
                v18 = v69;
                v19 = [v18 countByEnumeratingWithState:&v91 objects:v111 count:16];
                if (v19)
                {
                  v20 = v19;
                  v21 = *v92;
                  v76 = *v92;
                  v77 = v18;
                  while (2)
                  {
                    v22 = 0;
                    v78 = v20;
                    do
                    {
                      if (*v92 != v21)
                      {
                        objc_enumerationMutation(v18);
                      }

                      v23 = *(*(&v91 + 1) + 8 * v22);
                      if (-[ATXHomeScreenLayoutSelector2 _shouldConsiderSuggestionForSuggestionsWidget:](self, "_shouldConsiderSuggestionForSuggestionsWidget:", v23) && ([v11 isShowingDuplicatedContentForSuggestion:v23 considerUnderStackContents:1 dedupeAppSuggestionsByWidgets:1 ignoreDuplicatesInSGWidget:0 ignoreDuplicatesInPanels:1] & 1) == 0)
                      {
                        v81 = v23;
                        isLayoutComplete = [v15 isLayoutComplete];
                        if (isLayoutComplete)
                        {
                          v80 = v22;
                          v25 = v15;
                          suggestionLayout = [v15 suggestionLayout];
                          allSuggestionsInLayout = [suggestionLayout allSuggestionsInLayout];

                          firstObject = [allSuggestionsInLayout firstObject];
                          v29 = [indexCopy objectForKeyedSubscript:firstObject];
                          unsignedIntegerValue = [v29 unsignedIntegerValue];

                          v89 = 0u;
                          v90 = 0u;
                          v87 = 0u;
                          v88 = 0u;
                          v31 = allSuggestionsInLayout;
                          v32 = [v31 countByEnumeratingWithState:&v87 objects:v106 count:16];
                          if (v32)
                          {
                            v33 = v32;
                            v34 = *v88;
                            do
                            {
                              for (i = 0; i != v33; ++i)
                              {
                                if (*v88 != v34)
                                {
                                  objc_enumerationMutation(v31);
                                }

                                v36 = *(*(&v87 + 1) + 8 * i);
                                v37 = [indexCopy objectForKeyedSubscript:v36];
                                unsignedIntegerValue2 = [v37 unsignedIntegerValue];

                                if (unsignedIntegerValue < unsignedIntegerValue2)
                                {
                                  v39 = v36;

                                  unsignedIntegerValue = unsignedIntegerValue2;
                                  firstObject = v39;
                                }
                              }

                              v33 = [v31 countByEnumeratingWithState:&v87 objects:v106 count:16];
                            }

                            while (v33);
                          }

                          v40 = [indexCopy objectForKeyedSubscript:v81];
                          unsignedIntegerValue3 = [v40 unsignedIntegerValue];

                          self = selfCopy;
                          if (unsignedIntegerValue >= unsignedIntegerValue3)
                          {
                            v43 = __atxlog_handle_blending(v42);
                            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                            {
                              widget2 = [v25 widget];
                              widgetUniqueId = [widget2 widgetUniqueId];
                              *buf = 138543618;
                              v108 = widgetUniqueId;
                              v109 = 2112;
                              v110 = v81;
                              _os_log_impl(&dword_2263AA000, v43, OS_LOG_TYPE_DEFAULT, "HSLS [updateSGLayoutWithUnusedConvertableShortcut]: updating SG %{public}@ layout, because we have a better unused convertable shortcut suggestion %@", buf, 0x16u);
                            }

                            v46 = [_ATXSuggestionsWidgetSuggestion alloc];
                            widget3 = [v25 widget];
                            v48 = [(_ATXSuggestionsWidgetSuggestion *)v46 initWithSuggestionsWidget:widget3 containingStack:stack suggestionDeduplicator:selfCopy->_suggestionDeduplicator hyperParameters:selfCopy->_hyperParameters];

                            v85 = 0u;
                            v86 = 0u;
                            v83 = 0u;
                            v84 = 0u;
                            v49 = v31;
                            v50 = [v49 countByEnumeratingWithState:&v83 objects:v105 count:16];
                            if (v50)
                            {
                              v51 = v50;
                              v52 = *v84;
                              do
                              {
                                for (j = 0; j != v51; ++j)
                                {
                                  if (*v84 != v52)
                                  {
                                    objc_enumerationMutation(v49);
                                  }

                                  v54 = *(*(&v83 + 1) + 8 * j);
                                  mainSuggestionInLayout = [v25 mainSuggestionInLayout];
                                  if (v54 == firstObject)
                                  {
                                    v56 = v81;
                                  }

                                  else
                                  {
                                    v56 = v54;
                                  }

                                  [(_ATXCompositeLayoutWidgetSuggestionBase *)v48 addSuggestion:v56 asMainSuggestion:mainSuggestionInLayout == 0];
                                }

                                v51 = [v49 countByEnumeratingWithState:&v83 objects:v105 count:16];
                              }

                              while (v51);
                            }

                            if ([(_ATXCompositeLayoutWidgetSuggestionBase *)v48 isLayoutComplete])
                            {
                              suggestionsWidgetSuggestionsByWidgetUniqueId = [stack suggestionsWidgetSuggestionsByWidgetUniqueId];
                              widget4 = [v25 widget];
                              widgetUniqueId2 = [widget4 widgetUniqueId];
                              [suggestionsWidgetSuggestionsByWidgetUniqueId setObject:v48 forKeyedSubscript:widgetUniqueId2];

                              self = selfCopy;
                              [(ATXHomeScreenLayoutSelector2 *)selfCopy _rotateStackToUpdatedSGSuggestionIfNecessary:v48 suggestionToRankingIndex:indexCopy];

                              v11 = v75;
                              v18 = v77;
                              goto LABEL_53;
                            }

                            self = selfCopy;
                          }

                          v18 = v77;
                          v20 = v78;
                          v15 = v25;
                          v11 = v75;
                          v21 = v76;
                          v22 = v80;
                        }

                        else
                        {
                          v57 = __atxlog_handle_blending(isLayoutComplete);
                          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                          {
                            widget5 = [v15 widget];
                            widgetUniqueId3 = [widget5 widgetUniqueId];
                            *buf = 138543618;
                            v108 = widgetUniqueId3;
                            v109 = 2112;
                            v110 = v81;
                            _os_log_impl(&dword_2263AA000, v57, OS_LOG_TYPE_DEFAULT, "HSLS [updateSGLayoutWithUnusedConvertableShortcut]: ASSIGNING suggestion to unfilled SG %{public}@: %@", buf, 0x16u);
                          }

                          mainSuggestionInLayout2 = [v15 mainSuggestionInLayout];
                          [v15 addSuggestion:v81 asMainSuggestion:mainSuggestionInLayout2 == 0];

                          if ([v15 isLayoutComplete])
                          {
                            [(ATXHomeScreenLayoutSelector2 *)self _rotateStackToUpdatedSGSuggestionIfNecessary:v15 suggestionToRankingIndex:indexCopy];
                            goto LABEL_53;
                          }
                        }
                      }

                      ++v22;
                    }

                    while (v22 != v20);
                    v20 = [v18 countByEnumeratingWithState:&v91 objects:v111 count:16];
                    if (v20)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_53:

                v13 = v70;
              }

              v14 = v73 + 1;
            }

            while (v73 + 1 != v72);
            v72 = [v71 countByEnumeratingWithState:&v95 objects:v112 count:16];
          }

          while (v72);
        }

        v10 = v68 + 1;
      }

      while (v68 + 1 != v67);
      v67 = [obj countByEnumeratingWithState:&v99 objects:v113 count:16];
    }

    while (v67);
  }
}

uint64_t __144__ATXHomeScreenLayoutSelector2__updateSuggestionsWidgetLayoutIfNecessaryWithRankedShortcutSuggestions_suggestionToRankingIndex_homeScreenState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 executableSpecification];
  v5 = [v4 executableType];

  if (v5 == 2)
  {
    v6 = [v3 atxActionExecutableObject];
    v7 = [v6 intent];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 executableSpecification];
  v9 = [v8 executableType];

  if (v9 == 10)
  {
    v10 = [v3 linkActionExecutableObject];
    v11 = [v10 cachedAppIntent];

    v7 = v11;
  }

  if (v7)
  {
    v12 = [*(a1 + 32) containsWidgetForIntent:v7] ^ 1;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)_rotateStackToUpdatedSGSuggestionIfNecessary:(id)necessary suggestionToRankingIndex:(id)index
{
  v49 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  indexCopy = index;
  if ([necessaryCopy isLayoutComplete])
  {
    stack = [necessaryCopy stack];
    config = [stack config];
    allowsSmartRotate = [config allowsSmartRotate];

    if (allowsSmartRotate)
    {
      v36 = stack;
      v37 = necessaryCopy;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      suggestionLayout = [necessaryCopy suggestionLayout];
      allSuggestionsInLayout = [suggestionLayout allSuggestionsInLayout];

      v12 = [allSuggestionsInLayout countByEnumeratingWithState:&v38 objects:v48 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = *v39;
        v16 = -1;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v39 != v15)
            {
              objc_enumerationMutation(allSuggestionsInLayout);
            }

            v18 = *(*(&v38 + 1) + 8 * i);
            v19 = [indexCopy objectForKeyedSubscript:v18];
            unsignedIntegerValue = [v19 unsignedIntegerValue];

            if (unsignedIntegerValue < v16)
            {
              v21 = v18;

              v16 = unsignedIntegerValue;
              v14 = v21;
            }
          }

          v13 = [allSuggestionsInLayout countByEnumeratingWithState:&v38 objects:v48 count:16];
        }

        while (v13);
      }

      else
      {
        v14 = 0;
        v16 = -1;
      }

      scoreSpecification = [v14 scoreSpecification];
      suggestedConfidenceCategory = [scoreSpecification suggestedConfidenceCategory];

      stack = v36;
      necessaryCopy = v37;
      if (suggestedConfidenceCategory >= 3)
      {
        topOfStackSuggestion = [v36 topOfStackSuggestion];

        if (topOfStackSuggestion)
        {
          topOfStackSuggestion2 = [v36 topOfStackSuggestion];
          mainSuggestionInLayout = [topOfStackSuggestion2 mainSuggestionInLayout];

          v28 = [indexCopy objectForKeyedSubscript:mainSuggestionInLayout];
          unsignedIntegerValue2 = [v28 unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue2 = -1;
        }

        if (v16 < unsignedIntegerValue2)
        {
          v30 = __atxlog_handle_default(v25);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            config2 = [v36 config];
            identifier = [config2 identifier];
            widget = [v37 widget];
            widgetUniqueId = [widget widgetUniqueId];
            topOfStackSuggestion3 = [v36 topOfStackSuggestion];
            *buf = 138543874;
            v43 = identifier;
            v44 = 2114;
            v45 = widgetUniqueId;
            v46 = 2112;
            v47 = topOfStackSuggestion3;
            _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_DEFAULT, "HSLS [updateSGLayoutWithUnusedConvertableShortcut]: rotating stack %{public}@ to SG widget %{public}@, because old topOfStackSuggestion is inferior: %@", buf, 0x20u);
          }

          [v36 setTopOfStackSuggestion:v37];
        }
      }
    }
  }
}

- (id)_suggestionsWidgetSuggestionsByPriorityOnPage:(id)page
{
  v41 = *MEMORY[0x277D85DE8];
  pageCopy = page;
  v4 = objc_opt_new();
  v29 = objc_opt_new();
  v5 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v26 = pageCopy;
  obj = [pageCopy stacks];
  v6 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    v27 = *v36;
    do
    {
      v9 = 0;
      v28 = v7;
      do
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v35 + 1) + 8 * v9);
        topOfStackSuggestion = [v10 topOfStackSuggestion];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          config = [v10 config];
          isPinnedSuggestionsWidget = [config isPinnedSuggestionsWidget];

          topOfStackSuggestion2 = [v10 topOfStackSuggestion];
          if (isPinnedSuggestionsWidget)
          {
            v16 = v4;
          }

          else
          {
            v16 = v29;
          }

          [v16 addObject:topOfStackSuggestion2];
        }

        else
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          suggestionsWidgetSuggestionsByWidgetUniqueId = [v10 suggestionsWidgetSuggestionsByWidgetUniqueId];
          topOfStackSuggestion2 = [suggestionsWidgetSuggestionsByWidgetUniqueId allValues];

          v18 = [topOfStackSuggestion2 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = v4;
            v21 = *v32;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v32 != v21)
                {
                  objc_enumerationMutation(topOfStackSuggestion2);
                }

                v23 = *(*(&v31 + 1) + 8 * i);
                topOfStackSuggestion3 = [v10 topOfStackSuggestion];

                if (v23 != topOfStackSuggestion3)
                {
                  [v5 addObject:v23];
                }
              }

              v19 = [topOfStackSuggestion2 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v19);
            v4 = v20;
            v8 = v27;
            v7 = v28;
          }
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v7);
  }

  [v4 addObjectsFromArray:v29];
  [v4 addObjectsFromArray:v5];

  return v4;
}

- (id)_filterRankedSuggestions:(id)suggestions homeScreenState:(id)state
{
  v110 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  stateCopy = state;
  v63 = objc_opt_new();
  v65 = objc_opt_new();
  v7 = 5;
  do
  {
    --v7;
    v8 = objc_opt_new();
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
    [v63 setObject:v8 forKeyedSubscript:v9];

    v10 = objc_opt_new();
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
    [v65 setObject:v10 forKeyedSubscript:v11];
  }

  while (v7 > 1);
  v62 = [(ATXEngagementRecordManager *)self->_engagementRecordManager engagedExecutablesOfType:4 queryOptions:0];
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = suggestionsCopy;
  v12 = [obj countByEnumeratingWithState:&v93 objects:v109 count:16];
  if (!v12)
  {
    goto LABEL_39;
  }

  v67 = *v94;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v94 != v67)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v93 + 1) + 8 * i);
      v15 = objc_autoreleasePoolPush();
      if (([(ATXBlendingLayerHyperParameters *)self->_hyperParameters uiSupportsSuggestion:v14 consumerSubType:34]& 1) != 0 || ([(ATXBlendingLayerHyperParameters *)self->_hyperParameters uiSupportsSuggestion:v14 consumerSubType:37]& 1) != 0 || [(ATXBlendingLayerHyperParameters *)self->_hyperParameters uiSupportsSuggestion:v14 consumerSubType:36])
      {
        executableSpecification = [v14 executableSpecification];
        v17 = [executableSpecification executableType] == 2;

        if (v17)
        {
          atxActionExecutableObject = [v14 atxActionExecutableObject];
          scoreSpecification2 = atxActionExecutableObject;
          if (!atxActionExecutableObject)
          {
            scoreSpecification2 = __atxlog_handle_blending(0);
            if (os_log_type_enabled(scoreSpecification2, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v98 = v14;
              _os_log_error_impl(&dword_2263AA000, scoreSpecification2, OS_LOG_TYPE_ERROR, "HSLS [preprocess]: Removing action suggestion, couldn't get ATXAction: %@", buf, 0xCu);
            }

            goto LABEL_36;
          }

          intent = [atxActionExecutableObject intent];
          if (intent)
          {
            v21 = [stateCopy containsWidgetForIntent:intent];
            if (v21)
            {
              v22 = __atxlog_handle_blending(v21);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v98 = v14;
                v23 = v22;
                v24 = "HSLS [preprocess]: Removing action suggestion due to intent duplication with widget on screen \n%@";
                goto LABEL_27;
              }

              goto LABEL_28;
            }

            v33 = [(ATXWidgetSuggestionDismissManager *)self->_widgetDismissManager shouldBlockSuggestionWithIntent:intent];
            if (v33)
            {
              v22 = __atxlog_handle_blending(v33);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v98 = v14;
                v23 = v22;
                v24 = "HSLS [preprocess]: Removing action suggestion due to previous suggested widget dismiss with same underlying intent \n%@";
LABEL_27:
                _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
              }

LABEL_28:

LABEL_36:
              goto LABEL_37;
            }
          }

LABEL_30:
        }

        else
        {
          executableSpecification2 = [v14 executableSpecification];
          v26 = [executableSpecification2 executableType] == 3;

          if (v26)
          {
            v27 = [MEMORY[0x277D42040] infoSuggestionFromProactiveSuggestion:v14];
            scoreSpecification2 = v27;
            if (v27 && (widgetDismissManager = self->_widgetDismissManager, [v27 widgetBundleIdentifier], v29 = objc_claimAutoreleasedReturnValue(), [scoreSpecification2 widgetKind], v30 = objc_claimAutoreleasedReturnValue(), [scoreSpecification2 intent], v31 = objc_claimAutoreleasedReturnValue(), LODWORD(widgetDismissManager) = [(ATXWidgetSuggestionDismissManager *)widgetDismissManager shouldBlockWidgetSuggestionBecauseOfPreviousDismiss:v29 kind:v30 intent:v31], v31, v30, v29, !widgetDismissManager))
            {
              if (![v62 count] || (-[ATXEngagementRecordManager hasEngagedWithSuggestion:engagedExecutables:](self->_engagementRecordManager, "hasEngagedWithSuggestion:engagedExecutables:", v14, v62) & 1) != 0)
              {
                goto LABEL_30;
              }

              v37 = MEMORY[0x277CCABB0];
              scoreSpecification = [v14 scoreSpecification];
              v38 = [v37 numberWithInteger:{-[NSObject suggestedConfidenceCategory](scoreSpecification, "suggestedConfidenceCategory")}];
              v39 = [v63 objectForKeyedSubscript:v38];
              [v39 addObject:v14];
            }

            else
            {
              scoreSpecification = __atxlog_handle_blending(v27);
              if (os_log_type_enabled(scoreSpecification, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v98 = v14;
                _os_log_impl(&dword_2263AA000, scoreSpecification, OS_LOG_TYPE_DEFAULT, "HSLS [preprocess]: Removing widget suggestion due to previous dismiss \n%@", buf, 0xCu);
              }
            }

            goto LABEL_36;
          }
        }

        v34 = MEMORY[0x277CCABB0];
        scoreSpecification2 = [v14 scoreSpecification];
        v35 = [v34 numberWithInteger:{-[NSObject suggestedConfidenceCategory](scoreSpecification2, "suggestedConfidenceCategory")}];
        v36 = [v65 objectForKeyedSubscript:v35];
        [v36 addObject:v14];

        goto LABEL_36;
      }

LABEL_37:
      objc_autoreleasePoolPop(v15);
    }

    v12 = [obj countByEnumeratingWithState:&v93 objects:v109 count:16];
  }

  while (v12);
LABEL_39:

  v40 = objc_opt_new();
  v41 = 4;
  do
  {
    v42 = objc_autoreleasePoolPush();
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v43 = [MEMORY[0x277CCABB0] numberWithInteger:v41];
    v44 = [v63 objectForKeyedSubscript:v43];

    v45 = [v44 countByEnumeratingWithState:&v89 objects:v108 count:16];
    if (v45)
    {
      v46 = *v90;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v90 != v46)
          {
            objc_enumerationMutation(v44);
          }

          [v40 addObject:{*(*(&v89 + 1) + 8 * j), v62}];
        }

        v45 = [v44 countByEnumeratingWithState:&v89 objects:v108 count:16];
      }

      while (v45);
    }

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v48 = [MEMORY[0x277CCABB0] numberWithInteger:v41];
    v49 = [v65 objectForKeyedSubscript:v48];

    v50 = [v49 countByEnumeratingWithState:&v85 objects:v107 count:16];
    if (v50)
    {
      v51 = *v86;
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v86 != v51)
          {
            objc_enumerationMutation(v49);
          }

          [v40 addObject:{*(*(&v85 + 1) + 8 * k), v62}];
        }

        v50 = [v49 countByEnumeratingWithState:&v85 objects:v107 count:16];
      }

      while (v50);
    }

    objc_autoreleasePoolPop(v42);
  }

  while (v41-- > 1);
  [(_ATXHomeScreenTimelineRelevanceFilter *)self->_timelineRelevanceFilter scheduleBlendingRefreshAtNextTimelineRelevanceChangeRelatedToSuggestions:v40];
  v54 = [(_ATXHomeScreenTimelineRelevanceFilter *)self->_timelineRelevanceFilter removeSuggestionsByTimelineRelevanceIfNecessary:v40 homeScreenState:stateCopy];

  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __73__ATXHomeScreenLayoutSelector2__filterRankedSuggestions_homeScreenState___block_invoke;
  v68[3] = &unk_2785996D8;
  v68[4] = &v81;
  v68[5] = &v73;
  v68[6] = &v77;
  v68[7] = &v69;
  v55 = __atxlog_handle_blending([v54 enumerateObjectsUsingBlock:v68]);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = [v54 count];
    v57 = v82[3];
    v58 = v74[3];
    v59 = v78[3];
    v60 = v70[3];
    *buf = 134219008;
    v98 = v56;
    v99 = 2048;
    v100 = v57;
    v101 = 2048;
    v102 = v58;
    v103 = 2048;
    v104 = v59;
    v105 = 2048;
    v106 = v60;
    _os_log_impl(&dword_2263AA000, v55, OS_LOG_TYPE_DEFAULT, "HSLS [preprocess]: filterRankedSuggestions result count = %lu (%ld widget, %ld action, %ld apps, %ld Link actions)", buf, 0x34u);
  }

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v81, 8);

  return v54;
}

void __73__ATXHomeScreenLayoutSelector2__filterRankedSuggestions_homeScreenState___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 executableSpecification];
  v7 = [v6 executableType];

  if (v7 == 3)
  {
    if (*(*(a1[4] + 8) + 24) < 3uLL || ([v5 scoreSpecification], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "suggestedConfidenceCategory"), v9, v10 >= 3))
    {
      v11 = __atxlog_handle_blending(v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 134218242;
        v36 = a3;
        v37 = 2112;
        v38 = v5;
        _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "HSLS [preprocess]: Widget Suggestion at index %lu:\n%@", &v35, 0x16u);
      }
    }

    v12 = a1[4];
LABEL_29:
    ++*(*(v12 + 8) + 24);
    goto LABEL_30;
  }

  v13 = [v5 executableSpecification];
  v14 = [v13 executableType];

  if (v14 == 2)
  {
    if (*(*(a1[5] + 8) + 24) < 3uLL || ([v5 scoreSpecification], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "suggestedConfidenceCategory"), v16, v17 >= 3))
    {
      v18 = __atxlog_handle_blending(v15);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 134218242;
        v36 = a3;
        v37 = 2112;
        v38 = v5;
        _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "HSLS [preprocess]: Action Suggestion at index %lu:\n%@", &v35, 0x16u);
      }
    }

    v12 = a1[5];
    goto LABEL_29;
  }

  v19 = [v5 executableSpecification];
  v20 = [v19 executableType];

  if (v20 == 1)
  {
    if (*(*(a1[6] + 8) + 24) < 3uLL || ([v5 scoreSpecification], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "suggestedConfidenceCategory"), v22, v23 >= 3))
    {
      v24 = __atxlog_handle_blending(v21);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 134218242;
        v36 = a3;
        v37 = 2112;
        v38 = v5;
        _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "HSLS [preprocess]: App suggestion at index %lu:\n%@", &v35, 0x16u);
      }
    }

    v12 = a1[6];
    goto LABEL_29;
  }

  v25 = [v5 executableSpecification];
  v26 = [v25 executableType];

  if (v26 == 10)
  {
    if (*(*(a1[7] + 8) + 24) < 3uLL || ([v5 scoreSpecification], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "suggestedConfidenceCategory"), v28, v29 >= 3))
    {
      v30 = __atxlog_handle_blending(v27);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 134218242;
        v36 = a3;
        v37 = 2112;
        v38 = v5;
        _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_DEFAULT, "HSLS [preprocess]: Link action Suggestion at index %lu:\n%@", &v35, 0x16u);
      }
    }

    v12 = a1[7];
    goto LABEL_29;
  }

  v31 = [v5 scoreSpecification];
  v32 = [v31 suggestedConfidenceCategory];

  if (v32 >= 3)
  {
    v34 = __atxlog_handle_blending(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 134218242;
      v36 = a3;
      v37 = 2112;
      v38 = v5;
      _os_log_impl(&dword_2263AA000, v34, OS_LOG_TYPE_DEFAULT, "HSLS [preprocess]: Suggestion at index %lu:\n%@", &v35, 0x16u);
    }
  }

LABEL_30:
}

- (void)_assignSuggestionsForExistingSuggestedWidgets:(id)widgets homeScreenState:(id)state
{
  v53 = *MEMORY[0x277D85DE8];
  widgetsCopy = widgets;
  stateCopy = state;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [stateCopy sortedPagesByUserLastVisit];
  v25 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v25)
  {
    v24 = *v47;
    do
    {
      v6 = 0;
      do
      {
        if (*v47 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v6;
        v7 = *(*(&v46 + 1) + 8 * v6);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        stacks = [v7 stacks];
        v8 = [stacks countByEnumeratingWithState:&v42 objects:v51 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v43;
          v27 = *v43;
          do
          {
            v11 = 0;
            v28 = v9;
            do
            {
              if (*v43 != v10)
              {
                objc_enumerationMutation(stacks);
              }

              v12 = *(*(&v42 + 1) + 8 * v11);
              config = [v12 config];
              allowsNewWidget = [config allowsNewWidget];

              if (allowsNewWidget)
              {
                v30 = v11;
                v40 = 0u;
                v41 = 0u;
                v38 = 0u;
                v39 = 0u;
                previousSuggestedWidgets = [v12 previousSuggestedWidgets];
                v16 = [previousSuggestedWidgets countByEnumeratingWithState:&v38 objects:v50 count:16];
                if (v16)
                {
                  v17 = v16;
                  v18 = *v39;
                  do
                  {
                    for (i = 0; i != v17; ++i)
                    {
                      if (*v39 != v18)
                      {
                        objc_enumerationMutation(previousSuggestedWidgets);
                      }

                      v20 = *(*(&v38 + 1) + 8 * i);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v21 = v20;
                        v33[0] = MEMORY[0x277D85DD0];
                        v33[1] = 3221225472;
                        v33[2] = __94__ATXHomeScreenLayoutSelector2__assignSuggestionsForExistingSuggestedWidgets_homeScreenState___block_invoke;
                        v33[3] = &unk_278599700;
                        v33[4] = self;
                        v33[5] = v12;
                        v34 = v21;
                        v35 = v7;
                        v36 = stateCopy;
                        v37 = v21;
                        v22 = v21;
                        [widgetsCopy enumerateObjectsUsingBlock:v33];
                      }
                    }

                    v17 = [previousSuggestedWidgets countByEnumeratingWithState:&v38 objects:v50 count:16];
                  }

                  while (v17);
                }

                v10 = v27;
                v9 = v28;
                v11 = v30;
              }

              ++v11;
            }

            while (v11 != v9);
            v9 = [stacks countByEnumeratingWithState:&v42 objects:v51 count:16];
          }

          while (v9);
        }

        v6 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v25);
  }
}

void __94__ATXHomeScreenLayoutSelector2__assignSuggestionsForExistingSuggestedWidgets_homeScreenState___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 executableSpecification];
  if (-[_ATXSimpleWidgetSuggestion executableType](v7, "executableType") != 3 || ![*(*(a1 + 32) + 72) currentModeConfigurationAllowsSuggestion:v6] || !objc_msgSend(*(a1 + 40), "sizeIsCompatibleWithWidgetSuggestion:", v6))
  {
LABEL_19:

    goto LABEL_20;
  }

  v8 = [*(a1 + 48) containsIdenticalContentOfSuggestion:v6];

  if (v8)
  {
    v9 = [*(a1 + 56) config];
    v10 = [v9 pageIndex];
    v11 = *MEMORY[0x277CEBAE8];

    if (v10 == v11)
    {
      if ([*(a1 + 56) isShowingDuplicatedContentForSuggestion:v6 considerUnderStackContents:1 dedupeAppSuggestionsByWidgets:1 ignoreDuplicatesInSGWidget:0 ignoreDuplicatesInPanels:0])
      {
        goto LABEL_20;
      }

LABEL_9:
      v12 = [v6 scoreSpecification];
      v13 = [v12 suggestedConfidenceCategory];

      if (v13 <= 2)
      {
        v14 = *(*(a1 + 32) + 56);
        v15 = [*(a1 + 72) widget];
        v16 = [v15 widgetUniqueId];
        v7 = [v14 firstAppearDateOfSuggestedWidgetWithUniqueId:v16];

        if (!v7 || (v17 = [(_ATXSimpleWidgetSuggestion *)v7 timeIntervalSinceNow], v18 < -10800.0))
        {
          v19 = __atxlog_handle_blending(v17);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [*(a1 + 72) widget];
            v21 = [v20 compactDescription];
            v22 = [*(a1 + 72) widget];
            v23 = [v22 widgetUniqueId];
            v24 = [*(a1 + 40) config];
            v25 = [v24 identifier];
            v37 = 138412802;
            v38 = v21;
            v39 = 2114;
            v40 = v23;
            v41 = 2114;
            v42 = v25;
            _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedWidgets]: Not assigning low conf suggestion for exisiting suggested widget %@ (uniqueID %{public}@) for stack %{public}@ because it first appeared more than 3 hrs ago.", &v37, 0x20u);
          }

          goto LABEL_19;
        }
      }

      v26 = [_ATXSimpleWidgetSuggestion alloc];
      v27 = [*(a1 + 48) widget];
      v7 = [(_ATXSimpleWidgetSuggestion *)v26 initWithWidget:v27 suggestion:v6 stack:*(a1 + 40) suggestionDeduplicator:*(*(a1 + 32) + 24)];

      v28 = [*(a1 + 40) suggestedWidgets];
      [v28 addObject:v7];

      v30 = __atxlog_handle_blending(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [(_ATXSimpleWidgetSuggestion *)v7 widget];
        v32 = [v31 compactDescription];
        v33 = [(_ATXSimpleWidgetSuggestion *)v7 widget];
        v34 = [v33 widgetUniqueId];
        v35 = [*(a1 + 40) config];
        v36 = [v35 identifier];
        v37 = 138413058;
        v38 = v32;
        v39 = 2114;
        v40 = v34;
        v41 = 2114;
        v42 = v36;
        v43 = 2112;
        v44 = v6;
        _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedWidgets]: Kept existing suggested widget %@ (uniqueID %{public}@) for stack %{public}@ by suggestion:\n%@", &v37, 0x2Au);
      }

      *a4 = 1;
      goto LABEL_19;
    }

    if (([*(a1 + 64) isShowingDuplicatedContentForSuggestion:v6 considerUnderStackContents:1 dedupeAppSuggestionsByWidgets:1 ignoreDuplicatesInSGWidget:0 ignoreDuplicatesInPanels:0 ignoreTodayPage:1] & 1) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_20:
}

- (void)_rotateAwayFromPreviousSystemInitiatedRotationIfNecessary:(id)necessary homeScreenState:(id)state
{
  v75 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = [state sortedPagesByUserLastVisit];
  v42 = [obj countByEnumeratingWithState:&v63 objects:v74 count:16];
  if (v42)
  {
    v41 = *v64;
    selfCopy = self;
    v45 = necessaryCopy;
    do
    {
      v7 = 0;
      do
      {
        if (*v64 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v7;
        v8 = *(*(&v63 + 1) + 8 * v7);
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v50 = v8;
        stacks = [v8 stacks];
        v10 = [stacks countByEnumeratingWithState:&v59 objects:v73 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v60;
          v46 = *v60;
          v47 = stacks;
          do
          {
            v13 = 0;
            v48 = v11;
            do
            {
              if (*v60 != v12)
              {
                objc_enumerationMutation(stacks);
              }

              v14 = *(*(&v59 + 1) + 8 * v13);
              config = [v14 config];
              if (![config allowsSmartRotate])
              {
                goto LABEL_14;
              }

              topOfStackSuggestion = [v14 topOfStackSuggestion];
              if (topOfStackSuggestion)
              {
                goto LABEL_13;
              }

              mostRecentRotationOfStackIsSystemInitiated = [v14 mostRecentRotationOfStackIsSystemInitiated];

              if (mostRecentRotationOfStackIsSystemInitiated)
              {
                config = [v14 previousTopWidget];
                if (config)
                {
                  v57 = 0u;
                  v58 = 0u;
                  v55 = 0u;
                  v56 = 0u;
                  v18 = necessaryCopy;
                  v19 = [v18 countByEnumeratingWithState:&v55 objects:v72 count:16];
                  v49 = v18;
                  if (v19)
                  {
                    v20 = v19;
                    v21 = *v56;
LABEL_21:
                    v22 = 0;
                    while (1)
                    {
                      if (*v56 != v21)
                      {
                        objc_enumerationMutation(v49);
                      }

                      if (([(ATXSuggestionDeduplicatorProtocol *)self->_suggestionDeduplicator isWidget:config showingIdenticalContentOfSuggestion:*(*(&v55 + 1) + 8 * v22)]& 1) != 0)
                      {
                        break;
                      }

                      if (v20 == ++v22)
                      {
                        v18 = v49;
                        v20 = [v49 countByEnumeratingWithState:&v55 objects:v72 count:16];
                        if (v20)
                        {
                          goto LABEL_21;
                        }

                        goto LABEL_27;
                      }
                    }
                  }

                  else
                  {
LABEL_27:

                    v24 = __atxlog_handle_blending(v23);
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                    {
                      config2 = [v14 config];
                      identifier = [config2 identifier];
                      *buf = 138412546;
                      v69 = config;
                      v70 = 2114;
                      v71 = identifier;
                      _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "HSLS [rotateAwayFromIrrelevantWidget]: Previous system rotation to widget %@ in stack %{public}@ is no longer relevant, attempting to make a fresh rotation...", buf, 0x16u);

                      v18 = v49;
                    }

                    v53 = 0u;
                    v54 = 0u;
                    v51 = 0u;
                    v52 = 0u;
                    v27 = v18;
                    v28 = [v27 countByEnumeratingWithState:&v51 objects:v67 count:16];
                    if (v28)
                    {
                      v29 = v28;
                      v30 = *v52;
                      while (2)
                      {
                        for (i = 0; i != v29; ++i)
                        {
                          if (*v52 != v30)
                          {
                            objc_enumerationMutation(v27);
                          }

                          v32 = *(*(&v51 + 1) + 8 * i);
                          executableSpecification = [v32 executableSpecification];
                          if ([executableSpecification executableType] == 3 && !objc_msgSend(v50, "isShowingDuplicatedContentForSuggestion:considerUnderStackContents:dedupeAppSuggestionsByWidgets:ignoreDuplicatesInSGWidget:ignoreDuplicatesInPanels:", v32, 0, 1, 0, 0))
                          {
                            v34 = [v14 widgetForSuggestion:v32 considerSuggestedWidgets:1];

                            if (v34)
                            {
                              v36 = __atxlog_handle_blending(v35);
                              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                              {
                                config3 = [v14 config];
                                identifier2 = [config3 identifier];
                                *buf = 138543618;
                                v69 = identifier2;
                                v70 = 2112;
                                v71 = v32;
                                _os_log_impl(&dword_2263AA000, v36, OS_LOG_TYPE_DEFAULT, "HSLS [rotateAwayFromIrrelevantWidget]: ASSIGNING a new top widget for stack %{public}@ by suggestion: \n%@", buf, 0x16u);
                              }

                              self = selfCopy;
                              [(ATXHomeScreenLayoutSelector2 *)selfCopy _assignSuggestion:v32 toTopOfStack:v14];
                              necessaryCopy = v45;
                              goto LABEL_44;
                            }
                          }

                          else
                          {
                          }
                        }

                        v29 = [v27 countByEnumeratingWithState:&v51 objects:v67 count:16];
                        if (v29)
                        {
                          continue;
                        }

                        break;
                      }

                      self = selfCopy;
                      necessaryCopy = v45;
LABEL_44:
                      v12 = v46;
                      stacks = v47;
                    }
                  }

                  v11 = v48;
                  topOfStackSuggestion = v49;
LABEL_13:
                }

LABEL_14:
              }

              ++v13;
            }

            while (v13 != v11);
            v39 = [stacks countByEnumeratingWithState:&v59 objects:v73 count:16];
            v11 = v39;
          }

          while (v39);
        }

        v7 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v63 objects:v74 count:16];
    }

    while (v42);
  }
}

- (void)_preservePreviousAppSuggestionPositionsWithHomeScreenState:(id)state
{
  v44 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [state sortedPagesByUserLastVisit];
  v26 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (v26)
  {
    v25 = *v33;
    do
    {
      v3 = 0;
      do
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v3;
        v4 = *(*(&v32 + 1) + 8 * v3);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        stacks = [v4 stacks];
        v6 = [stacks countByEnumeratingWithState:&v28 objects:v42 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v29;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v29 != v8)
              {
                objc_enumerationMutation(stacks);
              }

              v10 = *(*(&v28 + 1) + 8 * i);
              config = [v10 config];
              isAppPredictionPanel = [config isAppPredictionPanel];

              if (isAppPredictionPanel)
              {
                previousTopOfStackSuggestion = [v10 previousTopOfStackSuggestion];
                suggestionLayout = [previousTopOfStackSuggestion suggestionLayout];
                oneByOneSuggestions = [suggestionLayout oneByOneSuggestions];

                topOfStackSuggestion = [v10 topOfStackSuggestion];
                suggestionLayout2 = [topOfStackSuggestion suggestionLayout];
                oneByOneSuggestions2 = [suggestionLayout2 oneByOneSuggestions];

                if (oneByOneSuggestions)
                {
                  v20 = oneByOneSuggestions2 == 0;
                }

                else
                {
                  v20 = 1;
                }

                if (!v20)
                {
                  v21 = +[ATXStaticSuggestionsManager preservePreviousAppPositionsForPreviousSuggestions:newSuggestions:uiLimit:](ATXStaticSuggestionsManager, "preservePreviousAppPositionsForPreviousSuggestions:newSuggestions:uiLimit:", oneByOneSuggestions, oneByOneSuggestions2, [oneByOneSuggestions2 count]);
                  topOfStackSuggestion2 = [v10 topOfStackSuggestion];
                  suggestionLayout3 = [topOfStackSuggestion2 suggestionLayout];
                  [suggestionLayout3 setOneByOneSuggestions:v21];
                  goto LABEL_19;
                }

                v21 = __atxlog_handle_blending(v19);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  topOfStackSuggestion2 = [v10 config];
                  suggestionLayout3 = [topOfStackSuggestion2 identifier];
                  *buf = 138543874;
                  v37 = suggestionLayout3;
                  v38 = 2112;
                  v39 = oneByOneSuggestions;
                  v40 = 2112;
                  v41 = oneByOneSuggestions2;
                  _os_log_error_impl(&dword_2263AA000, v21, OS_LOG_TYPE_ERROR, "HSLS [APPStablization]: Can't preserve App suggestion positions for panel in stack %{public}@ - previousSuggestions %@, newSuggestions %@", buf, 0x20u);
LABEL_19:
                }

                continue;
              }
            }

            v7 = [stacks countByEnumeratingWithState:&v28 objects:v42 count:16];
          }

          while (v7);
        }

        v3 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
    }

    while (v26);
  }
}

- (id)_fallbackSuggestions:(id)suggestions homeScreenState:(id)state
{
  v35 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  stateCopy = state;
  v27 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = suggestionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    v12 = 0;
    v13 = *v29;
    *&v9 = 138412290;
    v26 = v9;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v29 != v13)
      {
        objc_enumerationMutation(v7);
      }

      v15 = *(*(&v28 + 1) + 8 * v14);
      executableSpecification = [v15 executableSpecification];
      executableType = [executableSpecification executableType];

      if (executableType <= 0xA && ((1 << executableType) & 0x406) != 0)
      {
        v19 = [stateCopy isShowingDuplicatedContentForSuggestion:v15 considerUnderStackContents:1 dedupeAppSuggestionsByWidgets:1 ignoreDuplicatesInSGWidget:0 ignoreDuplicatesInPanels:0 ignoreTodayPage:0];
        if ((v19 & 1) == 0)
        {
          if (executableType != 1 || v12 > 2)
          {
            if ((executableType & 3) == 2 && v11 <= 2)
            {
              v22 = __atxlog_handle_blending(v19);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v26;
                v33 = v15;
                _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "HSLS [fallbackGeneration]: Adding fallback action suggestion:\n%@", buf, 0xCu);
              }

              [v27 addObject:v15];
              ++v11;
            }
          }

          else
          {
            v23 = __atxlog_handle_blending(v19);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v26;
              v33 = v15;
              _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "HSLS [fallbackGeneration]: Adding fallback app suggestion:\n%@", buf, 0xCu);
            }

            [v27 addObject:v15];
            ++v12;
          }

          if (v12 == 3 && v11 == 3)
          {
            break;
          }
        }
      }

      if (v10 == ++v14)
      {
        v10 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v27;
}

- (void)_removeSuggestedWidgetWhereNecessaryWithHomeScreenState:(id)state
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [state sortedPagesByUserLastVisit];
  v20 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v20)
  {
    v19 = *v29;
    do
    {
      v4 = 0;
      do
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v4;
        v5 = *(*(&v28 + 1) + 8 * v4);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        stacks = [v5 stacks];
        v7 = [stacks countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v25;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v25 != v9)
              {
                objc_enumerationMutation(stacks);
              }

              v11 = *(*(&v24 + 1) + 8 * i);
              suggestedWidgets = [v11 suggestedWidgets];
              v13 = [suggestedWidgets count];

              if (v13)
              {
                v14 = objc_opt_new();
                suggestedWidgets2 = [v11 suggestedWidgets];
                v22[0] = MEMORY[0x277D85DD0];
                v22[1] = 3221225472;
                v22[2] = __88__ATXHomeScreenLayoutSelector2__removeSuggestedWidgetWhereNecessaryWithHomeScreenState___block_invoke;
                v22[3] = &unk_278599728;
                v22[4] = v11;
                v22[5] = self;
                v23 = v14;
                v16 = v14;
                [suggestedWidgets2 enumerateObjectsUsingBlock:v22];

                suggestedWidgets3 = [v11 suggestedWidgets];
                [suggestedWidgets3 removeObjectsAtIndexes:v16];
              }
            }

            v8 = [stacks countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v8);
        }

        v4 = v21 + 1;
      }

      while (v21 + 1 != v20);
      v20 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v20);
  }
}

void __88__ATXHomeScreenLayoutSelector2__removeSuggestedWidgetWhereNecessaryWithHomeScreenState___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v81 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) topOfStackSuggestion];

  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v7 topOfStackSuggestion];
    v9 = [v8 widget];
    v10 = [v9 widgetUniqueId];
    v11 = [v5 widget];
    v12 = [v11 widgetUniqueId];
    v13 = [v10 isEqualToString:v12];

    if (v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = [v7 previousTopWidget];

    if (v14)
    {
      v15 = [*(a1 + 32) previousTopWidget];
      v16 = [v15 widgetUniqueId];
      v17 = [v5 widget];
      v18 = [v17 widgetUniqueId];
      v19 = [v16 isEqualToString:v18];

      if (v19)
      {
        goto LABEL_7;
      }
    }
  }

  v20 = *(*(a1 + 40) + 56);
  v21 = [v5 widget];
  v22 = [v20 mostRecentEngagementOfWidget:v21 ofType:3];

  if (!v22)
  {
    v43 = __atxlog_handle_blending(v23);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [v5 widget];
      v45 = [v44 widgetUniqueId];
      v46 = [v5 stack];
      v47 = [v46 config];
      v48 = [v47 identifier];
      *buf = 138543618;
      v75 = v45;
      v76 = 2114;
      v77 = v48;
      _os_log_impl(&dword_2263AA000, v43, OS_LOG_TYPE_DEFAULT, "HSLS [suggestedWidgetRemoval]: Removing suggested widget %{public}@ from stack %{public}@, since it hasn't been seen by the user.", buf, 0x16u);
    }

    v49 = [*(a1 + 32) topOfStackSuggestion];
    v50 = [v49 widget];
    v51 = [v50 widgetUniqueId];
    v52 = [v5 widget];
    v53 = [v52 widgetUniqueId];
    v54 = [v51 isEqualToString:v53];

    if (v54)
    {
      [*(a1 + 32) setTopOfStackSuggestion:0];
    }

    [*(a1 + 48) addIndex:a3];
    goto LABEL_32;
  }

LABEL_7:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v5;
    v25 = [v24 isLayoutComplete];
    if (v25)
    {
      v69 = a3;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v26 = [v24 suggestionLayout];
      v27 = [v26 allSuggestionsInLayout];

      v28 = [v27 countByEnumeratingWithState:&v70 objects:v80 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v71;
        while (2)
        {
          v31 = 0;
          do
          {
            if (*v71 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = [*(*(&v70 + 1) + 8 * v31) scoreSpecification];
            v33 = [v32 suggestedConfidenceCategory];
            v34 = *(*(a1 + 40) + 136);

            if (v33 >= v34)
            {

              goto LABEL_31;
            }

            ++v31;
          }

          while (v29 != v31);
          v29 = [v27 countByEnumeratingWithState:&v70 objects:v80 count:16];
          if (v29)
          {
            continue;
          }

          break;
        }
      }

      v36 = __atxlog_handle_blending(v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v24 widget];
        v38 = [v37 widgetUniqueId];
        v39 = [v24 stack];
        v40 = [v39 config];
        v41 = [v40 identifier];
        v42 = *(*(a1 + 40) + 136);
        *buf = 138543874;
        v75 = v38;
        v76 = 2114;
        v77 = v41;
        v78 = 2048;
        v79 = v42;
        _os_log_impl(&dword_2263AA000, v36, OS_LOG_TYPE_DEFAULT, "HSLS [suggestedWidgetRemoval]: Removing suggested SW %{public}@ from stack %{public}@, because it does not have at least 1 suggestion with confidence >= %ld", buf, 0x20u);
      }

      a3 = v69;
    }

    else
    {
      v36 = __atxlog_handle_blending(v25);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v55 = [v24 widget];
        v56 = [v55 widgetUniqueId];
        v57 = [v24 stack];
        v58 = [v57 config];
        v59 = [v58 identifier];
        *buf = 138543618;
        v75 = v56;
        v76 = 2114;
        v77 = v59;
        _os_log_impl(&dword_2263AA000, v36, OS_LOG_TYPE_DEFAULT, "HSLS [suggestedWidgetRemoval]: Removing suggested SG %{public}@ from stack %{public}@, because it does not have a complete layout", buf, 0x16u);
      }
    }

    v60 = [*(a1 + 32) topOfStackSuggestion];
    v61 = [v60 widget];
    v62 = [v61 widgetUniqueId];
    v63 = [v24 widget];
    v64 = [v63 widgetUniqueId];
    v65 = [v62 isEqualToString:v64];

    if (v65)
    {
      [*(a1 + 32) setTopOfStackSuggestion:0];
    }

    v66 = [*(a1 + 32) suggestionsWidgetSuggestionsByWidgetUniqueId];
    v67 = [v24 widget];
    v68 = [v67 widgetUniqueId];
    [v66 removeObjectForKey:v68];

    [*(a1 + 48) addIndex:a3];
LABEL_31:
  }

LABEL_32:
}

- (BOOL)_isSuggestionStillNeededForTopOfStack:(id)stack
{
  stackCopy = stack;
  config = [stackCopy config];
  if ([config allowsSmartRotate])
  {
    goto LABEL_6;
  }

  config2 = [stackCopy config];
  if ([config2 allowsNewWidget])
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  config3 = [stackCopy config];
  if ([config3 isPinnedSuggestionsWidget])
  {

    goto LABEL_5;
  }

  config4 = [stackCopy config];
  isAppPredictionPanel = [config4 isAppPredictionPanel];

  if ((isAppPredictionPanel & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  topOfStackSuggestion = [stackCopy topOfStackSuggestion];

  if (!topOfStackSuggestion)
  {
    LOBYTE(v11) = 1;
    goto LABEL_13;
  }

  topOfStackSuggestion2 = [stackCopy topOfStackSuggestion];
  v9 = [topOfStackSuggestion2 conformsToProtocol:&unk_283A72DB0];

  if (!v9)
  {
LABEL_12:
    LOBYTE(v11) = 0;
    goto LABEL_13;
  }

  topOfStackSuggestion3 = [stackCopy topOfStackSuggestion];
  v11 = [topOfStackSuggestion3 isLayoutComplete] ^ 1;

LABEL_13:
  return v11;
}

- (void)_assignSuggestion:(id)suggestion toTopOfStack:(id)stack
{
  v52 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  stackCopy = stack;
  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType == 3)
  {
    topOfStackSuggestion2 = [[_ATXSimpleWidgetSuggestion alloc] initWithSuggestion:suggestionCopy stack:stackCopy suggestionDeduplicator:self->_suggestionDeduplicator];
    if (topOfStackSuggestion2)
    {
      [stackCopy setTopOfStackSuggestion:topOfStackSuggestion2];
    }

    goto LABEL_6;
  }

  topOfStackSuggestion = [stackCopy topOfStackSuggestion];
  v12 = [topOfStackSuggestion conformsToProtocol:&unk_283A72DB0];

  if (v12)
  {
    topOfStackSuggestion2 = [stackCopy topOfStackSuggestion];
    mainSuggestionInLayout = [(_ATXSimpleWidgetSuggestion *)topOfStackSuggestion2 mainSuggestionInLayout];
    [(_ATXSimpleWidgetSuggestion *)topOfStackSuggestion2 addSuggestion:suggestionCopy asMainSuggestion:mainSuggestionInLayout == 0];

LABEL_6:
    goto LABEL_28;
  }

  config = [stackCopy config];
  isAppPredictionPanel = [config isAppPredictionPanel];

  if (isAppPredictionPanel)
  {
    v16 = [_ATXAppPredictionPanelSuggestion alloc];
    config2 = [stackCopy config];
    widgets = [config2 widgets];
    firstObject = [widgets firstObject];
    v20 = [(_ATXAppPredictionPanelSuggestion *)v16 initWithAppPredictionPanel:firstObject containingStack:stackCopy suggestionDeduplicator:self->_suggestionDeduplicator hyperParameters:self->_hyperParameters];
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    suggestionsWidgetSuggestionsByWidgetUniqueId = [stackCopy suggestionsWidgetSuggestionsByWidgetUniqueId];
    allValues = [suggestionsWidgetSuggestionsByWidgetUniqueId allValues];

    v23 = [allValues countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v44;
LABEL_11:
      v26 = 0;
      while (1)
      {
        if (*v44 != v25)
        {
          objc_enumerationMutation(allValues);
        }

        v27 = *(*(&v43 + 1) + 8 * v26);
        if ([v27 canAddSuggestion:suggestionCopy])
        {
          break;
        }

        if (v24 == ++v26)
        {
          v24 = [allValues countByEnumeratingWithState:&v43 objects:v51 count:16];
          if (v24)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }

      v20 = v27;
      v28 = __atxlog_handle_blending(v20);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        widget = [(_ATXCompositeLayoutWidgetSuggestionBase *)v20 widget];
        compactDescription = [widget compactDescription];
        widget2 = [(_ATXCompositeLayoutWidgetSuggestionBase *)v20 widget];
        widgetUniqueId = [widget2 widgetUniqueId];
        *buf = 138412546;
        v48 = compactDescription;
        v49 = 2114;
        v50 = widgetUniqueId;
        _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "HSLS [topOfStackAssignment]: Setting topOfStackSuggestion to existing SuggestionsWidgetSuggestion (widget %@, uniqueID %{public}@) and add suggestion", buf, 0x16u);
      }

      if (v20)
      {
        goto LABEL_25;
      }
    }

    else
    {
LABEL_17:
    }

    config2 = objc_opt_new();
    v33 = *MEMORY[0x277CEBBA0];
    [config2 setAppBundleId:*MEMORY[0x277CEBBA0]];
    [config2 setExtensionBundleId:v33];
    v34 = ATXSpecialWidgetKindSiriSuggestions();
    [config2 setWidgetKind:v34];

    config3 = [stackCopy config];
    [config2 setSize:{objc_msgSend(config3, "stackLayoutSize")}];

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [config2 setWidgetUniqueId:uUIDString];

    [config2 setSuggestedWidget:1];
    v20 = [[_ATXSuggestionsWidgetSuggestion alloc] initWithSuggestionsWidget:config2 containingStack:stackCopy suggestionDeduplicator:self->_suggestionDeduplicator hyperParameters:self->_hyperParameters];
    v38 = __atxlog_handle_blending(v20);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      widget3 = [(_ATXCompositeLayoutWidgetSuggestionBase *)v20 widget];
      compactDescription2 = [widget3 compactDescription];
      widget4 = [(_ATXCompositeLayoutWidgetSuggestionBase *)v20 widget];
      widgetUniqueId2 = [widget4 widgetUniqueId];
      *buf = 138412546;
      v48 = compactDescription2;
      v49 = 2114;
      v50 = widgetUniqueId2;
      _os_log_impl(&dword_2263AA000, v38, OS_LOG_TYPE_DEFAULT, "HSLS [topOfStackAssignment]: Setting topOfStackSuggestion to new SuggestionsWidgetSuggestion (widget %@, uniqueID %{public}@) and add suggestion", buf, 0x16u);
    }
  }

LABEL_25:
  if ([(_ATXCompositeLayoutWidgetSuggestionBase *)v20 addSuggestion:suggestionCopy asMainSuggestion:1])
  {
    [stackCopy setTopOfStackSuggestion:v20];
  }

LABEL_28:
}

- (id)_suggestionsWidgetPreviewsFromRankedSuggestions:(id)suggestions
{
  v27 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v3 = objc_opt_new();
  for (i = 0; i != 3; ++i)
  {
    v5 = [[_ATXSuggestionsWidgetSuggestion alloc] initForPreviewOfSize:i hyperParameters:self->_hyperParameters];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = suggestionsCopy;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        executableSpecification = [v11 executableSpecification];
        executableType = [executableSpecification executableType];

        if ((executableType & 0xFFFFFFFFFFFFFFF7) == 2)
        {
          mainSuggestionInLayout = [v5 mainSuggestionInLayout];
          v15 = [v5 addSuggestion:v11 asMainSuggestion:mainSuggestionInLayout == 0];

          if (v15)
          {
            if ([v5 isLayoutComplete])
            {
              break;
            }
          }
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    isLayoutComplete = [v5 isLayoutComplete];
    if ((isLayoutComplete & 1) == 0)
    {
      v17 = __atxlog_handle_blending(isLayoutComplete);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(ATXHomeScreenLayoutSelector2 *)v25 _suggestionsWidgetPreviewsFromRankedSuggestions:v5];
      }
    }

    [v3 addObject:{v5, suggestionsCopy}];
  }

  return v3;
}

- (id)_appPredictionPanelPreviewFromRankedSuggestions:(id)suggestions
{
  v24 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v5 = [[_ATXAppPredictionPanelSuggestion alloc] initForPreviewWithHyperParameters:self->_hyperParameters];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = suggestionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v19 + 1) + 8 * v10);
      executableSpecification = [v11 executableSpecification];
      executableType = [executableSpecification executableType];

      if (executableType == 1)
      {
        mainSuggestionInLayout = [v5 mainSuggestionInLayout];
        v15 = [v5 addSuggestion:v11 asMainSuggestion:mainSuggestionInLayout == 0];

        if (v15)
        {
          if ([v5 isLayoutComplete])
          {
            break;
          }
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  isLayoutComplete = [v5 isLayoutComplete];
  if ((isLayoutComplete & 1) == 0)
  {
    v17 = __atxlog_handle_blending(isLayoutComplete);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(ATXHomeScreenLayoutSelector2 *)v5 _appPredictionPanelPreviewFromRankedSuggestions:v17];
    }
  }

  return v5;
}

- (BOOL)_isSuggestionACandidate:(id)candidate forStack:(id)stack dedupeAppSuggestionsByWidgets:(BOOL)widgets ignoreDuplicatesInSGWidget:(BOOL)widget ignoreDuplicatesInPanels:(BOOL)panels homeScreenState:(id)state
{
  panelsCopy = panels;
  widgetCopy = widget;
  widgetsCopy = widgets;
  v97 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  stackCopy = stack;
  stateCopy = state;
  executableSpecification = [candidateCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType == 2)
  {
    atxActionExecutableObject = [candidateCopy atxActionExecutableObject];
    intent = [atxActionExecutableObject intent];

    if (intent)
    {
      v20 = [stateCopy containsWidgetForIntent:intent];
      if (v20)
      {
        page2 = __atxlog_handle_blending(v20);
        if (os_log_type_enabled(page2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          pageIndex = candidateCopy;
          _os_log_impl(&dword_2263AA000, page2, OS_LOG_TYPE_DEFAULT, "    HSLS: suggestion not eligible - home screen contains widget for action; suggestion %@", buf, 0xCu);
        }

        goto LABEL_20;
      }
    }
  }

  executableSpecification2 = [candidateCopy executableSpecification];
  executableType2 = [executableSpecification2 executableType];

  if (executableType2 == 10)
  {
    intent = [candidateCopy linkActionExecutableObject];
    cachedAppIntent = [intent cachedAppIntent];
    if (!cachedAppIntent)
    {
      v26 = __atxlog_handle_blending(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        pageIndex = candidateCopy;
        v27 = "    HSLS: suggestion not eligible - link action doesn't contain cached app intent; suggestion %@";
        goto LABEL_14;
      }

LABEL_15:

      goto LABEL_21;
    }

    v25 = [stateCopy containsWidgetForIntent:cachedAppIntent];
    if (v25)
    {
      v26 = __atxlog_handle_blending(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        pageIndex = candidateCopy;
        v27 = "    HSLS: suggestion not eligible - home screen contains widget for link action app intent; suggestion %@";
LABEL_14:
        _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  page = [stackCopy page];
  v29 = [page isShowingDuplicatedContentForSuggestion:candidateCopy considerUnderStackContents:0 dedupeAppSuggestionsByWidgets:widgetsCopy ignoreDuplicatesInSGWidget:widgetCopy ignoreDuplicatesInPanels:panelsCopy];

  if (v29)
  {
    intent = __atxlog_handle_blending(v30);
    if (os_log_type_enabled(intent, OS_LOG_TYPE_DEFAULT))
    {
      page2 = [stackCopy page];
      config = [page2 config];
      *buf = 134218242;
      pageIndex = [config pageIndex];
      v92 = 2112;
      v93 = candidateCopy;
      _os_log_impl(&dword_2263AA000, intent, OS_LOG_TYPE_DEFAULT, "    HSLS: suggestion not eligible for page %lu - duplicated content on page; suggestion %@", buf, 0x16u);

LABEL_20:
    }

LABEL_21:
    v32 = 0;
    goto LABEL_68;
  }

  v76 = stateCopy;
  v80 = candidateCopy;
  v75 = objc_opt_new();
  v78 = objc_opt_new();
  v33 = objc_opt_new();
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v77 = stackCopy;
  page3 = [stackCopy page];
  stacks = [page3 stacks];

  v36 = [stacks countByEnumeratingWithState:&v85 objects:v96 count:16];
  v79 = v33;
  if (!v36)
  {
    goto LABEL_50;
  }

  v37 = v36;
  v38 = *v86;
  while (2)
  {
    v39 = 0;
    do
    {
      if (*v86 != v38)
      {
        objc_enumerationMutation(stacks);
      }

      v40 = *(*(&v85 + 1) + 8 * v39);
      topOfStackSuggestion = [v40 topOfStackSuggestion];
      if (topOfStackSuggestion || ([v40 previousTopWidget], (topOfStackSuggestion = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v53 = [v40 containsIdenticalContentOfSuggestion:candidateCopy ignoreDuplicatesInSGWidget:0 ignoreDuplicatesInPanels:0];
        if (v53)
        {
          v65 = __atxlog_handle_blending(v53);
          v66 = os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT);
          stackCopy = v77;
          if (v66)
          {
            page4 = [v77 page];
            config2 = [page4 config];
            pageIndex2 = [config2 pageIndex];
            config3 = [v40 config];
            identifier = [config3 identifier];
            *buf = 134218498;
            pageIndex = pageIndex2;
            v92 = 2114;
            v93 = identifier;
            v94 = 2112;
            v95 = candidateCopy;
            _os_log_impl(&dword_2263AA000, v65, OS_LOG_TYPE_DEFAULT, "    HSLS: suggestion not eligible for page %lu - contained in a stack %{public}@ whose topWidget is unknown; suggestion %@", buf, 0x20u);
          }

          intent = v75;
          stateCopy = v76;
          goto LABEL_66;
        }
      }

      executableSpecification3 = [candidateCopy executableSpecification];
      if ([executableSpecification3 executableType] != 3)
      {

LABEL_36:
        topOfStackSuggestion2 = [v40 topOfStackSuggestion];
        if (topOfStackSuggestion2)
        {

LABEL_42:
          [v33 addObject:v40];
          goto LABEL_43;
        }

        if (![v40 previousTopWidgetWasShowingIdenticalContentOfSuggestion:candidateCopy])
        {
          goto LABEL_42;
        }

        previousTopOfStackSuggestion = [v40 previousTopOfStackSuggestion];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          previousTopOfStackSuggestion2 = [v40 previousTopOfStackSuggestion];
          widget = [previousTopOfStackSuggestion2 widget];
          isSuggestedWidget = [widget isSuggestedWidget];

          if (isSuggestedWidget)
          {
            v33 = v79;
            goto LABEL_42;
          }
        }

        else
        {
        }

        [v78 addObject:v40];
        v33 = v79;
        goto LABEL_43;
      }

      v43 = [v40 sizeIsCompatibleWithWidgetSuggestion:candidateCopy];

      if (v43)
      {
        goto LABEL_36;
      }

      v45 = __atxlog_handle_blending(v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        config4 = [v40 config];
        identifier2 = [config4 identifier];
        *buf = 138543618;
        pageIndex = identifier2;
        v92 = 2112;
        v93 = candidateCopy;
        _os_log_impl(&dword_2263AA000, v45, OS_LOG_TYPE_DEFAULT, "    HSLS: suggestion not eligible for stack %{public}@ - widget suggestion size not compatible; suggestion %@", buf, 0x16u);
      }

LABEL_43:
      ++v39;
    }

    while (v37 != v39);
    v54 = [stacks countByEnumeratingWithState:&v85 objects:v96 count:16];
    v37 = v54;
    if (v54)
    {
      continue;
    }

    break;
  }

LABEL_50:

  v55 = v33;
  if ([v78 count])
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v55 = v78;
    v56 = [v55 countByEnumeratingWithState:&v81 objects:v89 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v82;
      do
      {
        v59 = 0;
        do
        {
          if (*v82 != v58)
          {
            objc_enumerationMutation(v55);
          }

          v60 = *(*(&v81 + 1) + 8 * v59);
          v61 = __atxlog_handle_blending(v56);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            config5 = [v60 config];
            identifier3 = [config5 identifier];
            *buf = 138543618;
            pageIndex = identifier3;
            v92 = 2112;
            v93 = v80;
            _os_log_impl(&dword_2263AA000, v61, OS_LOG_TYPE_DEFAULT, "    HSLS: stack %{public}@ was previously showing suggestion and it's still not assigned yet; suggestion %@", buf, 0x16u);
          }

          ++v59;
        }

        while (v57 != v59);
        v56 = [v55 countByEnumeratingWithState:&v81 objects:v89 count:16];
        v57 = v56;
      }

      while (v56);
    }

    candidateCopy = v80;
  }

  intent = v75;
  [v75 addObjectsFromArray:v55];
  stackCopy = v77;
  v64 = [v75 containsObject:v77];
  if (v64)
  {
    v32 = 1;
    stateCopy = v76;
  }

  else
  {
    stacks = __atxlog_handle_blending(v64);
    stateCopy = v76;
    if (os_log_type_enabled(stacks, OS_LOG_TYPE_DEFAULT))
    {
      config6 = [v77 config];
      identifier4 = [config6 identifier];
      *buf = 138543618;
      pageIndex = identifier4;
      v92 = 2112;
      v93 = candidateCopy;
      _os_log_impl(&dword_2263AA000, stacks, OS_LOG_TYPE_DEFAULT, "    HSLS: suggestion not eligible for stack %{public}@ - not in the list of candidate stacks; suggestion %@", buf, 0x16u);
    }

LABEL_66:

    v32 = 0;
  }

LABEL_68:
  return v32;
}

- (BOOL)_hasEligiblePinnedWidgetStacksForSuggestionsWidget:(id)widget forCandidateStack:(id)stack
{
  widgetCopy = widget;
  stackCopy = stack;
  v14 = 0;
  if ([(ATXHomeScreenLayoutSelector2 *)self _shouldConsiderSuggestionForSuggestionsWidget:widgetCopy])
  {
    config = [stackCopy config];
    isPinnedSuggestionsWidget = [config isPinnedSuggestionsWidget];

    if (isPinnedSuggestionsWidget)
    {
      topOfStackSuggestion = [stackCopy topOfStackSuggestion];
      if (!topOfStackSuggestion || (v11 = topOfStackSuggestion, [stackCopy topOfStackSuggestion], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "canAddSuggestion:", widgetCopy), v12, v11, (v13 & 1) != 0))
      {
        v14 = 1;
      }
    }
  }

  return v14;
}

- (BOOL)_hasEligiblePinnedWidgetStacksForAPPWidget:(id)widget forCandidateStack:(id)stack
{
  widgetCopy = widget;
  stackCopy = stack;
  v14 = 0;
  if ([(ATXHomeScreenLayoutSelector2 *)self _shouldConsiderSuggestionForAppPredictionPanel:widgetCopy])
  {
    config = [stackCopy config];
    isAppPredictionPanel = [config isAppPredictionPanel];

    if (isAppPredictionPanel)
    {
      topOfStackSuggestion = [stackCopy topOfStackSuggestion];
      if (!topOfStackSuggestion || (v11 = topOfStackSuggestion, [stackCopy topOfStackSuggestion], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "canAddSuggestion:", widgetCopy), v12, v11, (v13 & 1) != 0))
      {
        v14 = 1;
      }
    }
  }

  return v14;
}

- (BOOL)_isStackEligibleForSmartRotate:(id)rotate stack:(id)stack
{
  v46 = *MEMORY[0x277D85DE8];
  rotateCopy = rotate;
  stackCopy = stack;
  config = [stackCopy config];
  allowsSmartRotate = [config allowsSmartRotate];

  if (allowsSmartRotate)
  {
    v11 = [(ATXHomeScreenLayoutSelector2 *)self _isSuggestionStillNeededForTopOfStack:stackCopy];
    if ((v11 & 1) == 0)
    {
      v17 = __atxlog_handle_blending(v11);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        config2 = [stackCopy config];
        identifier = [config2 identifier];
        v42 = 138543618;
        v43 = identifier;
        v44 = 2112;
        v45 = rotateCopy;
        v20 = "    HSLS [assignSmartRotate]: Suggestion cannot smart rotate stack %{public}@ - stack no longer needs top of stack suggestion; %@";
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    topOfStackSuggestion = [stackCopy topOfStackSuggestion];
    if (topOfStackSuggestion)
    {
      v13 = topOfStackSuggestion;
      executableSpecification = [rotateCopy executableSpecification];
      executableType = [executableSpecification executableType];

      if (executableType == 3)
      {
        v17 = __atxlog_handle_blending(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          config2 = [stackCopy config];
          identifier = [config2 identifier];
          v42 = 138543618;
          v43 = identifier;
          v44 = 2112;
          v45 = rotateCopy;
          v20 = "    HSLS [assignSmartRotate]: Suggestion cannot smart rotate stack %{public}@ - cannot assign widget suggestion to composite layout; %@";
LABEL_11:
          _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, v20, &v42, 0x16u);
LABEL_12:

LABEL_13:
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    scoreSpecification = [rotateCopy scoreSpecification];
    suggestedConfidenceCategory = [scoreSpecification suggestedConfidenceCategory];

    if (suggestedConfidenceCategory <= 2)
    {
      v25 = [(ATXHomeScreenLayoutSelector2 *)self _isStackStale:stackCopy];
      if ((v25 & 1) == 0)
      {
        v17 = __atxlog_handle_blending(v25);
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        config2 = [stackCopy config];
        identifier = [config2 identifier];
        v42 = 138543618;
        v43 = identifier;
        v44 = 2112;
        v45 = rotateCopy;
        v20 = "    HSLS [assignSmartRotate]: Suggestion cannot smart rotate stack %{public}@ - low conf suggestion and stack is not stale; %@";
        goto LABEL_11;
      }

      executableSpecification2 = [rotateCopy executableSpecification];
      executableType2 = [executableSpecification2 executableType];

      if (executableType2 != 3)
      {
        v17 = __atxlog_handle_blending(v28);
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        config2 = [stackCopy config];
        identifier = [config2 identifier];
        v42 = 138543618;
        v43 = identifier;
        v44 = 2112;
        v45 = rotateCopy;
        v20 = "    HSLS [assignSmartRotate]: Suggestion cannot smart rotate stack %{public}@ - low conf and type is not widget; %@";
        goto LABEL_11;
      }

      v29 = [stackCopy previousTopWidgetWasShowingIdenticalContentOfSuggestion:rotateCopy];
      if (v29)
      {
        v17 = __atxlog_handle_blending(v29);
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        config2 = [stackCopy config];
        identifier = [config2 identifier];
        v42 = 138543618;
        v43 = identifier;
        v44 = 2112;
        v45 = rotateCopy;
        v20 = "    HSLS [assignSmartRotate]: Suggestion cannot smart rotate stack %{public}@ - low conf and same as existing top widget; %@";
        goto LABEL_11;
      }
    }

    config3 = [stackCopy config];
    v17 = [stackCopy widgetForSuggestion:rotateCopy considerSuggestedWidgets:{objc_msgSend(config3, "allowsNewWidget")}];

    if (v17)
    {
      extensionBundleId = [v17 extensionBundleId];
      v33 = [extensionBundleId isEqualToString:*MEMORY[0x277CEBBA0]];

      if (!v33)
      {
LABEL_27:
        v21 = 1;
        goto LABEL_15;
      }

      v34 = [(ATXHomeScreenLayoutSelector2 *)self _shouldConsiderSuggestionForSuggestionsWidget:rotateCopy];
      if (v34)
      {
        topOfStackSuggestion2 = [stackCopy topOfStackSuggestion];
        if (!topOfStackSuggestion2)
        {
          goto LABEL_27;
        }

        v36 = topOfStackSuggestion2;
        topOfStackSuggestion3 = [stackCopy topOfStackSuggestion];
        v38 = [topOfStackSuggestion3 canAddSuggestion:rotateCopy];

        if (v38)
        {
          goto LABEL_27;
        }

        config2 = __atxlog_handle_blending(v39);
        if (!os_log_type_enabled(config2, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        identifier = [stackCopy config];
        v19Identifier = [identifier identifier];
        v42 = 138543618;
        v43 = v19Identifier;
        v44 = 2112;
        v45 = rotateCopy;
        v41 = "    HSLS [assignSmartRotate]: Suggestion cannot smart rotate stack %{public}@ - cannot add to existing layout; %@";
      }

      else
      {
        config2 = __atxlog_handle_blending(v34);
        if (!os_log_type_enabled(config2, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        identifier = [stackCopy config];
        v19Identifier = [identifier identifier];
        v42 = 138543618;
        v43 = v19Identifier;
        v44 = 2112;
        v45 = rotateCopy;
        v41 = "    HSLS [assignSmartRotate]: Suggestion cannot smart rotate stack %{public}@ - can't be surfaced in SG widget; %@";
      }
    }

    else
    {
      config2 = __atxlog_handle_blending(v31);
      if (!os_log_type_enabled(config2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      identifier = [stackCopy config];
      v19Identifier = [identifier identifier];
      v42 = 138543618;
      v43 = v19Identifier;
      v44 = 2112;
      v45 = rotateCopy;
      v41 = "    HSLS [assignSmartRotate]: Suggestion cannot smart rotate stack %{public}@ - widget not found in stack; %@";
    }

    _os_log_impl(&dword_2263AA000, config2, OS_LOG_TYPE_DEFAULT, v41, &v42, 0x16u);

    goto LABEL_12;
  }

  v17 = __atxlog_handle_blending(v10);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    config2 = [stackCopy config];
    identifier = [config2 identifier];
    v42 = 138543618;
    v43 = identifier;
    v44 = 2112;
    v45 = rotateCopy;
    v20 = "    HSLS [assignSmartRotate]: Suggestion cannot smart rotate stack %{public}@ - smart rotate off; %@";
    goto LABEL_11;
  }

LABEL_14:
  v21 = 0;
LABEL_15:

  return v21;
}

- (BOOL)_hasEligibleWidgetSuggestionsStacksForSuggestion:(id)suggestion onPages:(id)pages ignoreDuplicatesInSGWidget:(BOOL)widget ignoreDuplicatesInPanels:(BOOL)panels
{
  panelsCopy = panels;
  widgetCopy = widget;
  v95 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  pagesCopy = pages;
  if (![(ATXSuggestionModeFilter *)self->_modeFilter currentModeConfigurationAllowsSuggestion:suggestionCopy])
  {
    goto LABEL_27;
  }

  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  scoreSpecification = [suggestionCopy scoreSpecification];
  suggestedConfidenceCategory = [scoreSpecification suggestedConfidenceCategory];
  if (executableType != 3)
  {
    thresholdConfidenceForSuggestedSG = self->_thresholdConfidenceForSuggestedSG;

    if (suggestedConfidenceCategory >= thresholdConfidenceForSuggestedSG && [(ATXHomeScreenLayoutSelector2 *)self _shouldConsiderSuggestionForSuggestionsWidget:suggestionCopy])
    {
      widgetDismissManager = self->_widgetDismissManager;
      v40 = *MEMORY[0x277CEBBA0];
      v41 = ATXSpecialWidgetKindSiriSuggestions();
      LODWORD(widgetDismissManager) = [(ATXWidgetSuggestionDismissManager *)widgetDismissManager shouldBlockWidgetSuggestionBecauseOfPreviousDismiss:v40 kind:v41 intent:0];

      if (widgetDismissManager)
      {
        v20 = __atxlog_handle_blending(v42);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "HSLS: considered suggestion for suggestions widget but the widget has been dismissed", buf, 2u);
        }

        goto LABEL_77;
      }

LABEL_42:
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v70 = pagesCopy;
      v20 = pagesCopy;
      v53 = [v20 countByEnumeratingWithState:&v81 objects:v91 count:16];
      if (!v53)
      {
LABEL_55:

        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v20 = v20;
        v60 = [v20 countByEnumeratingWithState:&v77 objects:v90 count:16];
        if (v60)
        {
          v61 = v60;
          v62 = *v78;
          do
          {
            for (i = 0; i != v61; ++i)
            {
              if (*v78 != v62)
              {
                objc_enumerationMutation(v20);
              }

              v64 = *(*(&v77 + 1) + 8 * i);
              v73 = 0u;
              v74 = 0u;
              v75 = 0u;
              v76 = 0u;
              stacks = [v64 stacks];
              v66 = [stacks countByEnumeratingWithState:&v73 objects:v89 count:16];
              if (v66)
              {
                v67 = v66;
                v68 = *v74;
                while (2)
                {
                  for (j = 0; j != v67; ++j)
                  {
                    if (*v74 != v68)
                    {
                      objc_enumerationMutation(stacks);
                    }

                    if ([(ATXHomeScreenLayoutSelector2 *)self _isStack:*(*(&v73 + 1) + 8 * j) eligibleToShowSuggestionViaWidgetSuggestion:suggestionCopy])
                    {

                      v19 = 1;
                      goto LABEL_31;
                    }
                  }

                  v67 = [stacks countByEnumeratingWithState:&v73 objects:v89 count:16];
                  if (v67)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            v61 = [v20 countByEnumeratingWithState:&v77 objects:v90 count:16];
          }

          while (v61);
        }

LABEL_30:
        v19 = 0;
LABEL_31:
        pagesCopy = v70;
        goto LABEL_78;
      }

      v54 = v53;
      v55 = *v82;
LABEL_44:
      v56 = 0;
      while (1)
      {
        if (*v82 != v55)
        {
          objc_enumerationMutation(v20);
        }

        v57 = *(*(&v81 + 1) + 8 * v56);
        executableSpecification2 = [suggestionCopy executableSpecification];
        if ([executableSpecification2 executableType] != 1)
        {
          break;
        }

        isSeldomVisited = [v57 isSeldomVisited];

        if (!isSeldomVisited)
        {
          goto LABEL_52;
        }

        if ([v57 suggestionsWidgetOnPageIsShowingDuplicatedContentForSuggestion:suggestionCopy])
        {
          goto LABEL_30;
        }

LABEL_53:
        if (v54 == ++v56)
        {
          v54 = [v20 countByEnumeratingWithState:&v81 objects:v91 count:16];
          if (!v54)
          {
            goto LABEL_55;
          }

          goto LABEL_44;
        }
      }

LABEL_52:
      if ([v57 isShowingDuplicatedContentForSuggestion:suggestionCopy considerUnderStackContents:1 dedupeAppSuggestionsByWidgets:1 ignoreDuplicatesInSGWidget:widgetCopy ignoreDuplicatesInPanels:panelsCopy])
      {
        goto LABEL_30;
      }

      goto LABEL_53;
    }

    goto LABEL_27;
  }

  if (suggestedConfidenceCategory < 3)
  {
LABEL_27:
    v19 = 0;
    goto LABEL_28;
  }

  v15 = MEMORY[0x277D42070];
  clientModelSpecification = [suggestionCopy clientModelSpecification];
  clientModelId = [clientModelSpecification clientModelId];
  v18 = [v15 clientModelTypeFromClientModelId:clientModelId];

  v19 = 0;
  if (v18 <= 0x2F && ((1 << v18) & 0x800000141114) != 0)
  {
    v20 = [MEMORY[0x277D42040] infoSuggestionFromProactiveSuggestion:suggestionCopy];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v70 = pagesCopy;
    v21 = pagesCopy;
    v22 = [v21 countByEnumeratingWithState:&v85 objects:v94 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v86;
LABEL_8:
      v25 = 0;
      while (1)
      {
        if (*v86 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v85 + 1) + 8 * v25);
        appBundleIdentifier = [v20 appBundleIdentifier];
        LOBYTE(v26) = [v26 containsSuggestedWidgetForApp:appBundleIdentifier];

        if (v26)
        {
          break;
        }

        if (v23 == ++v25)
        {
          v23 = [v21 countByEnumeratingWithState:&v85 objects:v94 count:16];
          if (!v23)
          {
            goto LABEL_14;
          }

          goto LABEL_8;
        }
      }

      goto LABEL_30;
    }

LABEL_14:

    v28 = objc_alloc(MEMORY[0x277CFC808]);
    widgetBundleIdentifier = [v20 widgetBundleIdentifier];
    appBundleIdentifier2 = [v20 appBundleIdentifier];
    v31 = [v28 initWithExtensionBundleIdentifier:widgetBundleIdentifier containerBundleIdentifier:appBundleIdentifier2];

    if ([v31 widgetWantsLocation])
    {
      isContainerAuthorizedForWidgetUpdates = [v31 isContainerAuthorizedForWidgetUpdates];
      if ((isContainerAuthorizedForWidgetUpdates & 1) == 0)
      {
        v36 = __atxlog_handle_blending(isContainerAuthorizedForWidgetUpdates);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v93 = v20;
          v37 = "HSLS: The widget wants location but its container is not authorized for widget updates: %@";
          goto LABEL_38;
        }

LABEL_39:
        pagesCopy = v70;

LABEL_76:
LABEL_77:
        v19 = 0;
LABEL_78:

        goto LABEL_28;
      }
    }

    if (!self->_widgetSuggestionDenyList)
    {
      v33 = objc_opt_new();
      widgetSuggestionDenyList = self->_widgetSuggestionDenyList;
      self->_widgetSuggestionDenyList = v33;
    }

    if (v20)
    {
      v35 = [(ATXWidgetSuggestionsDenyList *)self->_widgetSuggestionDenyList containsInfoSuggestion:v20];
      if (v35)
      {
        v36 = __atxlog_handle_blending(v35);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v93 = v20;
          v37 = "HSLS: The info suggestion is on the Widget Suggestions deny list: %@";
LABEL_38:
          _os_log_impl(&dword_2263AA000, v36, OS_LOG_TYPE_DEFAULT, v37, buf, 0xCu);
          goto LABEL_39;
        }

        goto LABEL_39;
      }
    }

    appBundleIdentifier3 = [v20 appBundleIdentifier];
    pagesCopy = v71;
    if ([appBundleIdentifier3 length])
    {
      v45 = *MEMORY[0x277CBF040];
      v46 = *MEMORY[0x277CBF010];
      v47 = appBundleIdentifier3;
      v48 = CFPreferencesCopyValue(@"SBSearchDisabledShortcuts", @"com.apple.spotlightui", v45, v46);
      LODWORD(v45) = [v48 containsObject:v47];

      if (v45)
      {
        v50 = __atxlog_handle_blending(v49);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v93 = v47;
          v51 = "HSLS: 'Show on Home Screen' is off for %@";
LABEL_74:
          _os_log_impl(&dword_2263AA000, v50, OS_LOG_TYPE_DEFAULT, v51, buf, 0xCu);
          goto LABEL_75;
        }

        goto LABEL_75;
      }

      v52 = [(ATXHomeScreenLayoutSelector2 *)self _isBackgroundAppRefreshAllowedForAppBundleId:v47];
      if ((v52 & 1) == 0)
      {
        v50 = __atxlog_handle_blending(v52);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v93 = v47;
          v51 = "HSLS: background app refresh is off for %@";
          goto LABEL_74;
        }

LABEL_75:

        goto LABEL_76;
      }
    }

    goto LABEL_42;
  }

LABEL_28:

  return v19;
}

- (BOOL)_isStack:(id)stack eligibleToShowSuggestionViaWidgetSuggestion:(id)suggestion
{
  v32 = *MEMORY[0x277D85DE8];
  stackCopy = stack;
  suggestionCopy = suggestion;
  config = [stackCopy config];
  allowsNewWidget = [config allowsNewWidget];

  if (!allowsNewWidget)
  {
    goto LABEL_3;
  }

  page = [stackCopy page];
  isSeldomVisited = [page isSeldomVisited];

  if (isSeldomVisited)
  {
    goto LABEL_3;
  }

  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType == 3)
  {
    if ([stackCopy sizeIsCompatibleWithWidgetSuggestion:suggestionCopy])
    {
      atxInfoSuggestionExecutableObject = [suggestionCopy atxInfoSuggestionExecutableObject];
      if (!atxInfoSuggestionExecutableObject)
      {
        v17 = __atxlog_handle_blending(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 138412546;
          v29 = stackCopy;
          v30 = 2112;
          v31 = suggestionCopy;
          _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "HSLS: stack ineligible to show widget suggestion, no info suggestion: stack: %@, suggestion: %@", &v28, 0x16u);
        }

        goto LABEL_20;
      }

      v17 = atxInfoSuggestionExecutableObject;
      descriptorCache = self->_descriptorCache;
      widgetBundleIdentifier = [atxInfoSuggestionExecutableObject widgetBundleIdentifier];
      widgetKind = [v17 widgetKind];
      v21 = [(ATXWidgetDescriptorCache *)descriptorCache homeScreenDescriptorForExtensionBundleId:widgetBundleIdentifier kind:widgetKind];

      if (!v21)
      {
        v21 = __atxlog_handle_blending(v22);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 138412546;
          v29 = stackCopy;
          v30 = 2112;
          v31 = suggestionCopy;
          _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "HSLS: stack ineligible to show widget suggestion, descriptor not found: stack: %@, suggestion: %@", &v28, 0x16u);
        }

        goto LABEL_19;
      }

      config2 = [stackCopy config];
      [config2 stackLayoutSize];
      CHSWidgetFamilyFromATXStackLayoutSize();

      [v21 disfavoredFamiliesForLocation:0];
      v24 = CHSWidgetFamilyMaskContainsFamily();
      if (v24)
      {
        v25 = __atxlog_handle_blending(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 138412546;
          v29 = stackCopy;
          v30 = 2112;
          v31 = suggestionCopy;
          _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "HSLS: stack ineligible to show widget suggestion, stack family is disfavored by widget: stack: %@, suggestion: %@", &v28, 0x16u);
        }

LABEL_19:
LABEL_20:

        goto LABEL_3;
      }

LABEL_14:
      v12 = 1;
      goto LABEL_4;
    }
  }

  else
  {
    config3 = [stackCopy config];
    stackLayoutSize = [config3 stackLayoutSize];

    if (stackLayoutSize != 4)
    {
      goto LABEL_14;
    }
  }

LABEL_3:
  v12 = 0;
LABEL_4:

  return v12;
}

- (BOOL)_shouldConsiderSuggestionForSuggestionsWidget:(id)widget
{
  widgetCopy = widget;
  if ([(ATXBlendingLayerHyperParameters *)self->_hyperParameters isSuggestionEligibleForSuggestionsWidget:widgetCopy])
  {
    v5 = [(ATXEngagementRecordManager *)self->_engagementRecordManager hasEngagedWithSuggestion:widgetCopy engagedExecutables:self->_dismissedSuggestionsForSuggestionsWidget]^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_shouldConsiderSuggestionForAppPredictionPanel:(id)panel
{
  panelCopy = panel;
  if ([(ATXBlendingLayerHyperParameters *)self->_hyperParameters isSuggestionEligibleForAppPredictionPanel:panelCopy])
  {
    v5 = [(ATXEngagementRecordManager *)self->_engagementRecordManager hasEngagedWithSuggestion:panelCopy engagedExecutables:self->_dismissedSuggestionsForAppPredictionPanels]^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_isBackgroundAppRefreshAllowedForAppBundleId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    v4 = dispatch_semaphore_create(0);
    mEMORY[0x277D06A28] = [MEMORY[0x277D06A28] sharedScheduler];
    v18 = 0;
    v19[0] = &v18;
    v19[1] = 0x2020000000;
    v20 = 1;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __77__ATXHomeScreenLayoutSelector2__isBackgroundAppRefreshAllowedForAppBundleId___block_invoke;
    v15[3] = &unk_278599750;
    v17 = &v18;
    v6 = v4;
    v16 = v6;
    [mEMORY[0x277D06A28] backgroundAppRefreshEnabledForApp:idCopy withHandler:v15];
    v7 = v6;
    v8 = dispatch_time(0, 100000000);
    v9 = dispatch_semaphore_wait(v7, v8);

    if (v9)
    {
      v11 = __atxlog_handle_blending(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ATXHomeScreenLayoutSelector2 _isBackgroundAppRefreshAllowedForAppBundleId:];
      }

      v12 = 1;
    }

    else
    {
      v13 = __atxlog_handle_blending(v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(ATXHomeScreenLayoutSelector2 *)v19 _isBackgroundAppRefreshAllowedForAppBundleId:idCopy, v13];
      }

      v12 = *(v19[0] + 24);
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v7 = __atxlog_handle_blending(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXHomeScreenLayoutSelector2 _isBackgroundAppRefreshAllowedForAppBundleId:v7];
    }

    v12 = 1;
  }

  return v12 & 1;
}

- (int64_t)_thresholdConfidenceForSuggestedSG
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(NSUserDefaults *)self->_defaults integerForKey:*MEMORY[0x277CEBD60]]< 10 || (v3 = [(NSUserDefaults *)self->_defaults integerForKey:*MEMORY[0x277CEBD68]]) != 0)
  {
    v3 = [(ATXWidgetSuggestionDismissManager *)self->_widgetDismissManager userDismissCountForWidgetSuggestionWithBundleId:*MEMORY[0x277CEBBA0]];
    if (v3 <= 1)
    {
      v4 = 3;
    }

    else
    {
      v4 = 4;
    }
  }

  else
  {
    v4 = 4;
  }

  v5 = __atxlog_handle_blending(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "HSLS: threshold confidence for suggested SG = %ld", &v7, 0xCu);
  }

  return v4;
}

- (BOOL)_shouldLimitWidgetSuggestionPowerCost
{
  if (self->_isiPad || ([MEMORY[0x277D42590] isInternalBuild] & 1) != 0)
  {
    return 0;
  }

  v4 = [(NSUserDefaults *)self->_defaults objectForKey:*MEMORY[0x277CEBD78]];
  if (v4)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v6 = v5;
    [v4 timeIntervalSinceReferenceDate];
    v3 = v6 - v7 < 604800.0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_loadHomeScreenState:(id)state
{
  v54 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = objc_opt_new();
  v6 = stateCopy;
  v35 = v6;
  if (!v6)
  {
    v50 = 0;
    v6 = [v5 loadHomeScreenAndTodayPageConfigurationsWithError:&v50];
    v7 = v50;
    v8 = v7;
    if (v7)
    {
      v9 = __atxlog_handle_blending(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ATXHomeScreenLayoutSelector2 _loadHomeScreenState:];
      }
    }

    if (!v6)
    {
      v10 = __atxlog_handle_blending(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ATXHomeScreenLayoutSelector2 _loadHomeScreenState:];
      }

      v6 = MEMORY[0x277CBEBF8];
    }
  }

  v36 = v5;
  v11 = [(ATXHomeScreenLayoutSelector2 *)self _sortedPagesByMostRecentUserVisit:v6];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v47;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v47 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v46 + 1) + 8 * i);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        stacks = [v17 stacks];
        v19 = [stacks countByEnumeratingWithState:&v42 objects:v52 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v43;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v43 != v21)
              {
                objc_enumerationMutation(stacks);
              }

              [(ATXHomeScreenLayoutSelector2 *)self _logStackDetail:*(*(&v42 + 1) + 8 * j)];
            }

            v20 = [stacks countByEnumeratingWithState:&v42 objects:v52 count:16];
          }

          while (v20);
        }

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        panels = [v17 panels];
        v24 = [panels countByEnumeratingWithState:&v38 objects:v51 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v39;
          do
          {
            for (k = 0; k != v25; ++k)
            {
              if (*v39 != v26)
              {
                objc_enumerationMutation(panels);
              }

              [(ATXHomeScreenLayoutSelector2 *)self _logStackDetail:*(*(&v38 + 1) + 8 * k)];
            }

            v25 = [panels countByEnumeratingWithState:&v38 objects:v51 count:16];
          }

          while (v25);
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v14);
  }

  v37 = 0;
  v28 = [v36 loadDockAppListWithError:&v37];
  v29 = v37;
  v30 = v29;
  if (v29)
  {
    v31 = __atxlog_handle_blending(v29);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [ATXHomeScreenLayoutSelector2 _loadHomeScreenState:];
    }
  }

  if (!v28)
  {
    v32 = __atxlog_handle_blending(v29);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [ATXHomeScreenLayoutSelector2 _loadHomeScreenState:];
    }

    v28 = objc_opt_new();
  }

  v33 = [[_ATXHomeScreenState alloc] initWithSortedHomeScreenPagesByUserLastVisit:v12 appsOnDock:v28 stackStateTracker:self->_stackStateTracker suggestionDeduplicator:self->_suggestionDeduplicator hyperParameters:self->_hyperParameters];

  return v33;
}

- (void)_logStackDetail:(id)detail
{
  *(&v30[2] + 6) = *MEMORY[0x277D85DE8];
  detailCopy = detail;
  v4 = __atxlog_handle_blending(detailCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [detailCopy identifier];
    page = [detailCopy page];
    *buf = 138544386;
    v25 = identifier;
    v26 = 2048;
    pageIndex = [page pageIndex];
    v28 = 1024;
    *v29 = [detailCopy allowsSmartRotate];
    *&v29[4] = 1024;
    *&v29[6] = [detailCopy allowsNewWidget];
    LOWORD(v30[0]) = 2048;
    *(v30 + 2) = [detailCopy stackLayoutSize];
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "HSLS [loadHSState]: stack %{public}@ page=%lu rotatation=%d N+1=%d size=%lu widgets:", buf, 0x2Cu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = detailCopy;
  widgets = [detailCopy widgets];
  v8 = [widgets countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(widgets);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = __atxlog_handle_blending(v8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          widgetUniqueId = [v12 widgetUniqueId];
          extensionBundleId = [v12 extensionBundleId];
          widgetKind = [v12 widgetKind];
          intent = [v12 intent];
          *buf = 138413058;
          v25 = widgetUniqueId;
          v26 = 2112;
          pageIndex = extensionBundleId;
          v28 = 2112;
          *v29 = widgetKind;
          *&v29[8] = 2112;
          v30[0] = intent;
          _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "  HSLS [loadHSState]: %@ : %@ : %@ : %@", buf, 0x2Au);
        }

        ++v11;
      }

      while (v9 != v11);
      v8 = [widgets countByEnumeratingWithState:&v19 objects:v23 count:16];
      v9 = v8;
    }

    while (v8);
  }
}

- (id)_sortedPagesByMostRecentUserVisit:(id)visit
{
  v28 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  v5 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = visitCopy;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = -[ATXStackStateTracker lastThreeUserVisitDatesOfPage:](self->_stackStateTracker, "lastThreeUserVisitDatesOfPage:", [v10 pageIndex]);
        firstObject = [v11 firstObject];
        v13 = firstObject;
        if (firstObject)
        {
          distantPast = firstObject;
        }

        else
        {
          distantPast = [MEMORY[0x277CBEAA8] distantPast];
        }

        v15 = distantPast;

        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "pageIndex")}];
        [v5 setObject:v15 forKeyedSubscript:v16];
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__ATXHomeScreenLayoutSelector2__sortedPagesByMostRecentUserVisit___block_invoke;
  v21[3] = &unk_278599778;
  v22 = v5;
  v17 = v5;
  v18 = [obj sortedArrayUsingComparator:v21];

  return v18;
}

uint64_t __66__ATXHomeScreenLayoutSelector2__sortedPagesByMostRecentUserVisit___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(a2, "pageIndex")}];
  v9 = [v5 objectForKeyedSubscript:v8];

  v10 = *(a1 + 32);
  v11 = MEMORY[0x277CCABB0];
  v12 = [v7 pageIndex];

  v13 = [v11 numberWithUnsignedInteger:v12];
  v14 = [v10 objectForKeyedSubscript:v13];

  v15 = [v14 compare:v9];
  return v15;
}

- (id)_homeScreenCachedSuggestionsFromHomeScreenState:(id)state sortedFallbackSuggestions:(id)suggestions suggestionsWidgetPreviews:(id)previews appPredictionPanelPreview:(id)preview withUUID:(id)d
{
  v98 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  suggestionsCopy = suggestions;
  previewsCopy = previews;
  previewCopy = preview;
  dCopy = d;
  v72 = objc_opt_new();
  v66 = objc_opt_new();
  v65 = objc_opt_new();
  v67 = objc_opt_new();
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v59 = stateCopy;
  obj = [stateCopy sortedPagesByUserLastVisit];
  v62 = [obj countByEnumeratingWithState:&v89 objects:v97 count:16];
  if (v62)
  {
    v61 = *v90;
    do
    {
      v14 = 0;
      do
      {
        if (*v90 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v63 = v14;
        v15 = *(*(&v89 + 1) + 8 * v14);
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        stacks = [v15 stacks];
        v69 = [stacks countByEnumeratingWithState:&v85 objects:v96 count:16];
        if (v69)
        {
          v68 = *v86;
          do
          {
            v16 = 0;
            do
            {
              if (*v86 != v68)
              {
                objc_enumerationMutation(stacks);
              }

              v71 = v16;
              v17 = *(*(&v85 + 1) + 8 * v16);
              topOfStackSuggestion = [v17 topOfStackSuggestion];
              v19 = [(ATXHomeScreenLayoutSelector2 *)self _processedSuggestionLayoutFromWidgetSuggestion:topOfStackSuggestion stack:v17 blendingUpdateUUID:dCopy];

              if (v19)
              {
                config = [v17 config];
                isAppPredictionPanel = [config isAppPredictionPanel];

                config2 = [v17 config];
                identifier = [config2 identifier];
                if (isAppPredictionPanel)
                {
                  v24 = v66;
                }

                else
                {
                  v24 = v65;
                }

                [v24 setObject:v19 forKeyedSubscript:identifier];
              }

              v70 = v19;
              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              suggestionsWidgetSuggestionsByWidgetUniqueId = [v17 suggestionsWidgetSuggestionsByWidgetUniqueId];
              allValues = [suggestionsWidgetSuggestionsByWidgetUniqueId allValues];

              v27 = [allValues countByEnumeratingWithState:&v81 objects:v95 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v82;
                do
                {
                  for (i = 0; i != v28; ++i)
                  {
                    if (*v82 != v29)
                    {
                      objc_enumerationMutation(allValues);
                    }

                    v31 = *(*(&v81 + 1) + 8 * i);
                    v32 = [(ATXHomeScreenLayoutSelector2 *)self _processedSuggestionLayoutFromWidgetSuggestion:v31 stack:v17 blendingUpdateUUID:dCopy];
                    if (v32)
                    {
                      widget = [v31 widget];
                      widgetUniqueId = [widget widgetUniqueId];
                      [v72 setObject:v32 forKeyedSubscript:widgetUniqueId];
                    }
                  }

                  v28 = [allValues countByEnumeratingWithState:&v81 objects:v95 count:16];
                }

                while (v28);
              }

              v35 = objc_opt_new();
              v77 = 0u;
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              suggestedWidgets = [v17 suggestedWidgets];
              v37 = [suggestedWidgets countByEnumeratingWithState:&v77 objects:v94 count:16];
              if (v37)
              {
                v38 = v37;
                v39 = *v78;
                do
                {
                  for (j = 0; j != v38; ++j)
                  {
                    if (*v78 != v39)
                    {
                      objc_enumerationMutation(suggestedWidgets);
                    }

                    v41 = [(ATXHomeScreenLayoutSelector2 *)self _processedSuggestionLayoutFromWidgetSuggestion:*(*(&v77 + 1) + 8 * j) stack:v17 blendingUpdateUUID:dCopy];
                    if (v41)
                    {
                      [v35 addObject:v41];
                    }
                  }

                  v38 = [suggestedWidgets countByEnumeratingWithState:&v77 objects:v94 count:16];
                }

                while (v38);
              }

              config3 = [v17 config];
              identifier2 = [config3 identifier];
              [v67 setObject:v35 forKeyedSubscript:identifier2];

              v16 = v71 + 1;
            }

            while (v71 + 1 != v69);
            v69 = [stacks countByEnumeratingWithState:&v85 objects:v96 count:16];
          }

          while (v69);
        }

        v14 = v63 + 1;
      }

      while (v63 + 1 != v62);
      v62 = [obj countByEnumeratingWithState:&v89 objects:v97 count:16];
    }

    while (v62);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v44 = previewsCopy;
  v45 = [v44 countByEnumeratingWithState:&v73 objects:v93 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v74;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v74 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v73 + 1) + 8 * k);
        v50 = [(ATXHomeScreenLayoutSelector2 *)self _processedSuggestionLayoutFromWidgetSuggestion:v49 stack:0 blendingUpdateUUID:dCopy];
        if (v50)
        {
          widget2 = [v49 widget];
          widgetUniqueId2 = [widget2 widgetUniqueId];
          [v72 setObject:v50 forKeyedSubscript:widgetUniqueId2];
        }
      }

      v46 = [v44 countByEnumeratingWithState:&v73 objects:v93 count:16];
    }

    while (v46);
  }

  v53 = [(ATXHomeScreenLayoutSelector2 *)self _processedSuggestionLayoutFromWidgetSuggestion:previewCopy stack:0 blendingUpdateUUID:dCopy];
  if (v53)
  {
    [v66 setObject:v53 forKeyedSubscript:*MEMORY[0x277CEBB40]];
  }

  v54 = [objc_alloc(MEMORY[0x277D42038]) initWithUUID:dCopy suggestionWidgetLayouts:v72 appPredictionPanelLayouts:v66 topOfStackLayouts:v65 suggestedWidgetLayouts:v67 fallbackSuggestions:suggestionsCopy];

  return v54;
}

- (id)_processedSuggestionLayoutFromWidgetSuggestion:(id)suggestion stack:(id)stack blendingUpdateUUID:(id)d
{
  suggestionCopy = suggestion;
  stackCopy = stack;
  dCopy = d;
  suggestionLayout = [suggestionCopy suggestionLayout];

  if (suggestionLayout)
  {
    suggestionLayout = [suggestionCopy suggestionLayout];
    widget = [suggestionCopy widget];
    mainSuggestionInLayout = [suggestionCopy mainSuggestionInLayout];
    scoreSpecification = [mainSuggestionInLayout scoreSpecification];
    suggestedConfidenceCategory = [scoreSpecification suggestedConfidenceCategory];

    [suggestionLayout setUuid:dCopy];
    mainSuggestionInLayout2 = [suggestionCopy mainSuggestionInLayout];
    uuid = [mainSuggestionInLayout2 uuid];
    [suggestionLayout setUuidOfHighestConfidenceSuggestion:uuid];

    extensionBundleId = [widget extensionBundleId];
    if ([extensionBundleId isEqualToString:*MEMORY[0x277CEBBA0]])
    {
      [suggestionLayout setIsValidForSuggestionsWidget:1];
    }

    else
    {
      extensionBundleId2 = [widget extensionBundleId];
      [suggestionLayout setIsValidForSuggestionsWidget:{objc_msgSend(extensionBundleId2, "isEqualToString:", *MEMORY[0x277CEB1C0])}];
    }

    widgetUniqueId = [widget widgetUniqueId];
    [suggestionLayout setWidgetUniqueId:widgetUniqueId];

    [suggestionLayout setIsLowConfidenceStackRotationForStaleStack:suggestedConfidenceCategory < 3];
    config = [stackCopy config];
    widgets = [config widgets];
    [suggestionLayout setNumWidgetsInStack:{objc_msgSend(widgets, "count")}];

    [(ATXHomeScreenLayoutSelector2 *)self _computeScoreForLayout:suggestionLayout];
    [suggestionLayout setLayoutScore:?];
    suggestedWidgets = [stackCopy suggestedWidgets];
    [suggestionLayout setIsNPlusOne:{objc_msgSend(suggestedWidgets, "containsObject:", suggestionCopy)}];
  }

  return suggestionLayout;
}

- (double)_computeScoreForLayout:(id)layout
{
  layoutCopy = layout;
  v5 = [MEMORY[0x277D420E8] minSuggestionLayoutTypesForUILayoutType:{objc_msgSend(layoutCopy, "layoutType")}];
  v6 = [v5 objectForKeyedSubscript:&unk_283A557A8];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    v8 = 0;
    v9 = 0.0;
    do
    {
      oneByOneSuggestions = [layoutCopy oneByOneSuggestions];
      v11 = [oneByOneSuggestions objectAtIndexedSubscript:v8];

      scoreSpecification = [v11 scoreSpecification];
      -[ATXHomeScreenLayoutSelector2 _weightForConfidenceCategory:](self, "_weightForConfidenceCategory:", [scoreSpecification suggestedConfidenceCategory]);
      v9 = v9 + v13;

      ++v8;
      v14 = [v5 objectForKeyedSubscript:&unk_283A557A8];
      unsignedIntegerValue2 = [v14 unsignedIntegerValue];
    }

    while (v8 < unsignedIntegerValue2);
  }

  else
  {
    v9 = 0.0;
  }

  v16 = [v5 objectForKeyedSubscript:&unk_283A557C0];
  unsignedIntegerValue3 = [v16 unsignedIntegerValue];

  if (unsignedIntegerValue3)
  {
    v18 = 0;
    do
    {
      oneByTwoSuggestions = [layoutCopy oneByTwoSuggestions];
      v20 = [oneByTwoSuggestions objectAtIndexedSubscript:v18];

      scoreSpecification2 = [v20 scoreSpecification];
      -[ATXHomeScreenLayoutSelector2 _weightForConfidenceCategory:](self, "_weightForConfidenceCategory:", [scoreSpecification2 suggestedConfidenceCategory]);
      v9 = v9 + v22;

      ++v18;
      v23 = [v5 objectForKeyedSubscript:&unk_283A557C0];
      unsignedIntegerValue4 = [v23 unsignedIntegerValue];
    }

    while (v18 < unsignedIntegerValue4);
  }

  v25 = [v5 objectForKeyedSubscript:&unk_283A557D8];
  unsignedIntegerValue5 = [v25 unsignedIntegerValue];

  if (unsignedIntegerValue5)
  {
    v27 = 0;
    do
    {
      twoByTwoSuggestions = [layoutCopy twoByTwoSuggestions];
      v29 = [twoByTwoSuggestions objectAtIndexedSubscript:v27];

      scoreSpecification3 = [v29 scoreSpecification];
      -[ATXHomeScreenLayoutSelector2 _weightForConfidenceCategory:](self, "_weightForConfidenceCategory:", [scoreSpecification3 suggestedConfidenceCategory]);
      v9 = v9 + v31;

      ++v27;
      v32 = [v5 objectForKeyedSubscript:&unk_283A557D8];
      unsignedIntegerValue6 = [v32 unsignedIntegerValue];
    }

    while (v27 < unsignedIntegerValue6);
  }

  v34 = [v5 objectForKeyedSubscript:&unk_283A557F0];
  unsignedIntegerValue7 = [v34 unsignedIntegerValue];

  if (unsignedIntegerValue7)
  {
    v36 = 0;
    do
    {
      oneByFourSuggestions = [layoutCopy oneByFourSuggestions];
      v38 = [oneByFourSuggestions objectAtIndexedSubscript:v36];

      scoreSpecification4 = [v38 scoreSpecification];
      -[ATXHomeScreenLayoutSelector2 _weightForConfidenceCategory:](self, "_weightForConfidenceCategory:", [scoreSpecification4 suggestedConfidenceCategory]);
      v9 = v9 + v40;

      ++v36;
      v41 = [v5 objectForKeyedSubscript:&unk_283A557F0];
      unsignedIntegerValue8 = [v41 unsignedIntegerValue];
    }

    while (v36 < unsignedIntegerValue8);
  }

  v43 = [v5 objectForKeyedSubscript:&unk_283A55808];
  unsignedIntegerValue9 = [v43 unsignedIntegerValue];

  if (unsignedIntegerValue9)
  {
    v45 = 0;
    do
    {
      twoByFourSuggestions = [layoutCopy twoByFourSuggestions];
      v47 = [twoByFourSuggestions objectAtIndexedSubscript:v45];

      scoreSpecification5 = [v47 scoreSpecification];
      -[ATXHomeScreenLayoutSelector2 _weightForConfidenceCategory:](self, "_weightForConfidenceCategory:", [scoreSpecification5 suggestedConfidenceCategory]);
      v9 = v9 + v49;

      ++v45;
      v50 = [v5 objectForKeyedSubscript:&unk_283A55808];
      unsignedIntegerValue10 = [v50 unsignedIntegerValue];
    }

    while (v45 < unsignedIntegerValue10);
  }

  return v9;
}

- (double)_weightForConfidenceCategory:(int64_t)category
{
  if (category > 3)
  {
    return 100.0;
  }

  else
  {
    return dbl_2268721B8[category];
  }
}

- (void)_assignUnfilledSGWidgetForPage:(uint64_t)a1 suggestions:(uint64_t)a2 homeScreenState:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_3_0(a1 a2)];
  v5 = [v4 widgetUniqueId];
  *v3 = 138412290;
  *v2 = v5;
  OUTLINED_FUNCTION_4_1(&dword_2263AA000, v6, v7, "  HSLS [assignUnfilledSG]: Not enough suggestions to fill layouts of SW %@");
}

- (void)_fillSuggestedSGWidgetIfLayoutNotComplete:(void *)a1 withSuggestions:updatingUsedSuggestionIndexSet:.cold.1(void *a1)
{
  v1 = [a1 widget];
  v2 = [v1 widgetUniqueId];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __121__ATXHomeScreenLayoutSelector2__fillSuggestedSGWidgetIfLayoutNotComplete_withSuggestions_updatingUsedSuggestionIndexSet___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 widget];
  v2 = [v1 widgetUniqueId];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __114__ATXHomeScreenLayoutSelector2__assignExistingSuggestedSGWidgetsOnPages_withSuggestions_suggestionToRankingIndex___block_invoke_2_cold_1(id *a1)
{
  v1 = [*a1 widget];
  v2 = [v1 widgetUniqueId];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __98__ATXHomeScreenLayoutSelector2__stackHasRemainingReloadBudgetForWidgetSuggestion_homeScreenState___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_suggestionsWidgetPreviewsFromRankedSuggestions:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_3_0(a1 a2)];
  v5 = [v4 widgetUniqueId];
  *v3 = 138412290;
  *v2 = v5;
  OUTLINED_FUNCTION_4_1(&dword_2263AA000, v6, v7, "HSLS [SWPreviewGeneration]: Not enough suggestion to generate preview %@");
}

- (void)_appPredictionPanelPreviewFromRankedSuggestions:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 widget];
  v4 = [v3 widgetUniqueId];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "HSLS [APPPreviewGeneration]: Not enough suggestion to generate preview %@", v5, 0xCu);
}

- (void)_isBackgroundAppRefreshAllowedForAppBundleId:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_isBackgroundAppRefreshAllowedForAppBundleId:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 24);
  v4[0] = 67109378;
  v4[1] = v3;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "HSLS: Background app refresh is allowed %{BOOL}d for %@", v4, 0x12u);
}

- (void)_isBackgroundAppRefreshAllowedForAppBundleId:(os_log_t)log .cold.3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = 0;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "HSLS: Attempting to consider suggestion with no app bundle identifier: %@", &v1, 0xCu);
}

- (void)_loadHomeScreenState:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_loadHomeScreenState:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end