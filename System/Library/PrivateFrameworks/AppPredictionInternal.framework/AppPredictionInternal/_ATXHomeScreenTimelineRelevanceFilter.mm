@interface _ATXHomeScreenTimelineRelevanceFilter
- (BOOL)_isCurrentTimelineRelevanceScoreZeroForSuggestion:(id)suggestion family:(int64_t)family intentIndexingHash:(int64_t)hash;
- (BOOL)_widgetExistsOnScreen:(id)screen homeScreenState:(id)state;
- (_ATXHomeScreenTimelineRelevanceFilter)initWithTimelineRelevanceStore:(id)store;
- (id)_nextRefreshDateForSuggestion:(id)suggestion familyMask:(unint64_t)mask;
- (id)_nextTimelineRelevanceChangeDateRelatedToSuggestions:(id)suggestions;
- (id)removeSuggestionsByTimelineRelevanceIfNecessary:(id)necessary homeScreenState:(id)state;
- (void)_scheduleBlendingRefreshAtDate:(id)date reason:(id)reason;
- (void)scheduleBlendingRefreshAtNextTimelineRelevanceChangeRelatedToSuggestions:(id)suggestions;
@end

@implementation _ATXHomeScreenTimelineRelevanceFilter

- (_ATXHomeScreenTimelineRelevanceFilter)initWithTimelineRelevanceStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = _ATXHomeScreenTimelineRelevanceFilter;
  v6 = [(_ATXHomeScreenTimelineRelevanceFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_timelineRelevanceStore, store);
  }

  return v7;
}

- (void)scheduleBlendingRefreshAtNextTimelineRelevanceChangeRelatedToSuggestions:(id)suggestions
{
  v4 = [(_ATXHomeScreenTimelineRelevanceFilter *)self _nextTimelineRelevanceChangeDateRelatedToSuggestions:suggestions];
  v5 = v4;
  if (v4)
  {
    [(_ATXHomeScreenTimelineRelevanceFilter *)self _scheduleBlendingRefreshAtDate:v4 reason:@"Timeline relevance change"];
  }

  else
  {
    [(_ATXHomeScreenTimelineRelevanceFilter *)self _cancelAnyExistingScheduledRefresh];
  }
}

- (id)removeSuggestionsByTimelineRelevanceIfNecessary:(id)necessary homeScreenState:(id)state
{
  v64 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  stateCopy = state;
  selfCopy = self;
  v51 = stateCopy;
  v9 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v10 = necessaryCopy;
  v11 = [v10 countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v54;
    *&v12 = 134218498;
    v47 = v12;
    v49 = v10;
    v50 = v9;
    selfCopy2 = self;
    v52 = *v54;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v54 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v53 + 1) + 8 * i);
        executableSpecification = [v16 executableSpecification];
        executableType = [executableSpecification executableType];

        if (executableType != 3)
        {
          [v9 addObject:v16];
          continue;
        }

        v19 = [MEMORY[0x277D42040] infoSuggestionFromProactiveSuggestion:v16];
        if (v19)
        {
          if (![(_ATXHomeScreenTimelineRelevanceFilter *)selfCopy _widgetExistsOnScreen:v19 homeScreenState:v51])
          {
            timelineRelevanceStore = selfCopy->_timelineRelevanceStore;
            widgetBundleIdentifier = [v19 widgetBundleIdentifier];
            widgetKind = [v19 widgetKind];
            intent = [v19 intent];
            v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1800.0];
            LODWORD(timelineRelevanceStore) = [(ATXInformationStore *)timelineRelevanceStore didMostRecentReloadFailForExtension:widgetBundleIdentifier kind:widgetKind intent:intent cutoffDate:v27];

            if (!timelineRelevanceStore)
            {
              v9 = v50;
              [v50 addObject:v16];
LABEL_38:
              v10 = v49;
              v14 = v52;
              goto LABEL_39;
            }

            v29 = __atxlog_handle_blending(v28);
            v10 = v49;
            v9 = v50;
            v14 = v52;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v58 = v16;
              v30 = v29;
              v31 = "HSLS [preprocess]: Removing suggestion due to recent reload failure:\n%@";
              goto LABEL_29;
            }

LABEL_30:

            goto LABEL_39;
          }

          intent2 = [v19 intent];
          atx_indexingHash = [intent2 atx_indexingHash];

          if (([v19 layouts] & 8) != 0)
          {
            if ([(_ATXHomeScreenTimelineRelevanceFilter *)selfCopy _isCurrentTimelineRelevanceScoreZeroForSuggestion:v19 family:1 intentIndexingHash:atx_indexingHash])
            {
              v22 = 0;
            }

            else
            {
              v22 = 8;
            }
          }

          else
          {
            v22 = 0;
          }

          v14 = v52;
          if (([v19 layouts] & 0x10) != 0 && !-[_ATXHomeScreenTimelineRelevanceFilter _isCurrentTimelineRelevanceScoreZeroForSuggestion:family:intentIndexingHash:](selfCopy, "_isCurrentTimelineRelevanceScoreZeroForSuggestion:family:intentIndexingHash:", v19, 2, atx_indexingHash))
          {
            v22 |= 0x10uLL;
          }

          if (([v19 layouts] & 0x40) != 0 && !-[_ATXHomeScreenTimelineRelevanceFilter _isCurrentTimelineRelevanceScoreZeroForSuggestion:family:intentIndexingHash:](selfCopy, "_isCurrentTimelineRelevanceScoreZeroForSuggestion:family:intentIndexingHash:", v19, 3, atx_indexingHash))
          {
            v22 |= 0x40uLL;
          }

          layouts = [v19 layouts];
          if ((layouts & 0x80) != 0 && (layouts = [(_ATXHomeScreenTimelineRelevanceFilter *)selfCopy _isCurrentTimelineRelevanceScoreZeroForSuggestion:v19 family:4 intentIndexingHash:atx_indexingHash], !layouts))
          {
            v22 |= 0x80uLL;
          }

          else if (!v22)
          {
            v29 = __atxlog_handle_blending(layouts);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v58 = v16;
              v30 = v29;
              v31 = "HSLS [preprocess]: Removing suggestion due to zero timeline relevance score:\n%@";
LABEL_29:
              _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 0xCu);
            }

            goto LABEL_30;
          }

          layouts2 = [v19 layouts];
          if (v22 != layouts2)
          {
            v34 = __atxlog_handle_blending(layouts2);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              layouts3 = [v19 layouts];
              *buf = v47;
              v58 = layouts3;
              v59 = 2048;
              v60 = v22;
              v61 = 2112;
              v62 = v16;
              _os_log_impl(&dword_2263AA000, v34, OS_LOG_TYPE_DEFAULT, "HSLS [preprocess]: Upating suggestion eligibleLayoutOptions (old %lu, new %lu) due to zero timeline relevance score:\n%@", buf, 0x20u);
            }

            [v19 setLayouts:v22];
            v36 = MEMORY[0x277D42040];
            clientModelSpecification = [v16 clientModelSpecification];
            clientModelId = [clientModelSpecification clientModelId];
            clientModelSpecification2 = [v16 clientModelSpecification];
            clientModelVersion = [clientModelSpecification2 clientModelVersion];
            scoreSpecification = [v16 scoreSpecification];
            [scoreSpecification rawScore];
            v43 = v42;
            scoreSpecification2 = [v16 scoreSpecification];
            v45 = [v36 proactiveSuggestionForInfoSuggestion:v19 withClientModelId:clientModelId clientModelVersion:clientModelVersion rawScore:objc_msgSend(scoreSpecification2 confidenceCategory:{"suggestedConfidenceCategory"), v43}];

            v9 = v50;
            [v50 addObject:v45];

            selfCopy = selfCopy2;
            goto LABEL_38;
          }

          [v9 addObject:v16];
        }

LABEL_39:
      }

      v13 = [v10 countByEnumeratingWithState:&v53 objects:v63 count:16];
    }

    while (v13);
  }

  return v9;
}

- (void)_scheduleBlendingRefreshAtDate:(id)date reason:(id)reason
{
  reasonCopy = reason;
  dateCopy = date;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = *MEMORY[0x277D86250];
  [dateCopy timeIntervalSinceNow];
  v10 = v9;

  xpc_dictionary_set_int64(v7, v8, v10);
  xpc_dictionary_set_int64(v7, *MEMORY[0x277D86270], 300);
  xpc_dictionary_set_BOOL(v7, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_BOOL(v7, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v7, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_string(v7, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79___ATXHomeScreenTimelineRelevanceFilter__scheduleBlendingRefreshAtDate_reason___block_invoke;
  v12[3] = &unk_278596790;
  v13 = reasonCopy;
  v11 = reasonCopy;
  atxRegisterCTSJobHandler("com.apple.duetexpertd.HomeScreenTimelineRelevance", v7, v12);
}

- (id)_nextTimelineRelevanceChangeDateRelatedToSuggestions:(id)suggestions
{
  v43 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = suggestionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v6)
  {
    v31 = 0;
    v7 = *v35;
    v8 = distantFuture;
    do
    {
      v9 = 0;
      v33 = v6;
      do
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v34 + 1) + 8 * v9);
        executableSpecification = [v10 executableSpecification];
        executableType = [executableSpecification executableType];

        if (executableType == 3)
        {
          v13 = v5;
          v14 = MEMORY[0x277D42040];
          v15 = distantFuture;
          v16 = distantFuture;
          v17 = [v14 infoSuggestionFromProactiveSuggestion:v10];
          v18 = -[_ATXHomeScreenTimelineRelevanceFilter _nextRefreshDateForSuggestion:familyMask:](self, "_nextRefreshDateForSuggestion:familyMask:", v17, ([v17 layouts] >> 2) & 4 | (objc_msgSend(v17, "layouts") >> 2) & 2 | (objc_msgSend(v17, "layouts") >> 3) & 8 | (objc_msgSend(v17, "layouts") >> 3) & 0x10);
          v19 = v18;
          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = v16;
          }

          v21 = v20;

          v22 = [v16 earlierDate:v21];

          v23 = [v8 earlierDate:v22];

          if (v22 == v23)
          {
            v24 = v22;

            v25 = v10;
            v31 = v25;
            v8 = v24;
          }

          distantFuture = v15;
          v5 = v13;
          v6 = v33;
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [v5 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v6);

    if (v8 != distantFuture)
    {
      v27 = __atxlog_handle_blending(v26);
      v6 = v31;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v39 = v8;
        v40 = 2112;
        v41 = v31;
        _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "HSLS [preprocess]: Scheduling Blending refresh at %{public}@ due to future zero timeline relevance score of suggestion:\n%@", buf, 0x16u);
      }

      v8 = v8;
      v28 = v8;
      goto LABEL_24;
    }

    v6 = v31;
  }

  else
  {

    v8 = distantFuture;
  }

  v29 = __atxlog_handle_blending(v26);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "HSLS [preprocess]: No future zero timeline relevance score found related to suggestions.", buf, 2u);
  }

  v28 = 0;
LABEL_24:

  return v28;
}

- (id)_nextRefreshDateForSuggestion:(id)suggestion familyMask:(unint64_t)mask
{
  timelineRelevanceStore = self->_timelineRelevanceStore;
  suggestionCopy = suggestion;
  widgetBundleIdentifier = [suggestionCopy widgetBundleIdentifier];
  widgetKind = [suggestionCopy widgetKind];
  intent = [suggestionCopy intent];

  v10 = [(ATXInformationStore *)timelineRelevanceStore upcomingDateThatTimelineScoreChangesToOrFromZeroForWidget:widgetBundleIdentifier kind:widgetKind familyMask:mask intent:intent];

  return v10;
}

- (BOOL)_isCurrentTimelineRelevanceScoreZeroForSuggestion:(id)suggestion family:(int64_t)family intentIndexingHash:(int64_t)hash
{
  suggestionCopy = suggestion;
  timelineRelevanceStore = self->_timelineRelevanceStore;
  widgetBundleIdentifier = [suggestionCopy widgetBundleIdentifier];
  widgetKind = [suggestionCopy widgetKind];
  v12 = [(ATXInformationStore *)timelineRelevanceStore mostRecentTimelineEntryWithScoreForWidget:widgetBundleIdentifier kind:widgetKind family:family intentIndexingHash:hash];

  relevance = [v12 relevance];

  if (relevance)
  {
    relevance2 = [v12 relevance];
    [relevance2 duration];
    v16 = v15;

    if (v16 >= 0.0)
    {
      relevance3 = [v12 relevance];
      [relevance3 duration];
      v22 = v21;

      if (v22 == 0.0)
      {
        relevance4 = [v12 relevance];
        [relevance4 score];
        v19 = v24 <= 0.0;
      }

      else
      {
        date = [v12 date];
        relevance5 = [v12 relevance];
        [relevance5 duration];
        relevance4 = [date dateByAddingTimeInterval:?];

        [relevance4 timeIntervalSinceNow];
        if (v27 <= 0.0)
        {
          v19 = 0;
        }

        else
        {
          relevance6 = [v12 relevance];
          [relevance6 score];
          v19 = v29 <= 0.0;
        }
      }
    }

    else
    {
      v18 = __atxlog_handle_blending(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [_ATXHomeScreenTimelineRelevanceFilter _isCurrentTimelineRelevanceScoreZeroForSuggestion:suggestionCopy family:v18 intentIndexingHash:?];
      }

      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)_widgetExistsOnScreen:(id)screen homeScreenState:(id)state
{
  v62 = *MEMORY[0x277D85DE8];
  screenCopy = screen;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  sortedPagesByUserLastVisit = [state sortedPagesByUserLastVisit];
  v7 = [sortedPagesByUserLastVisit countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v7)
  {
    v8 = *v56;
    v44 = sortedPagesByUserLastVisit;
    v39 = *v56;
    do
    {
      v9 = 0;
      v38 = v7;
      do
      {
        if (*v56 != v8)
        {
          objc_enumerationMutation(sortedPagesByUserLastVisit);
        }

        v10 = *(*(&v55 + 1) + 8 * v9);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        stacks = [v10 stacks];
        v42 = [stacks countByEnumeratingWithState:&v51 objects:v60 count:16];
        if (v42)
        {
          v12 = *v52;
          v40 = *v52;
          v41 = v9;
          v45 = stacks;
          do
          {
            v13 = 0;
            do
            {
              if (*v52 != v12)
              {
                objc_enumerationMutation(stacks);
              }

              v43 = v13;
              v14 = *(*(&v51 + 1) + 8 * v13);
              v47 = 0u;
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              config = [v14 config];
              widgets = [config widgets];

              obj = widgets;
              v17 = [widgets countByEnumeratingWithState:&v47 objects:v59 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v48;
                do
                {
                  v20 = 0;
                  do
                  {
                    if (*v48 != v19)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v21 = *(*(&v47 + 1) + 8 * v20);
                    extensionBundleId = [v21 extensionBundleId];
                    widgetBundleIdentifier = [screenCopy widgetBundleIdentifier];
                    if ([extensionBundleId isEqualToString:widgetBundleIdentifier])
                    {
                      widgetKind = [v21 widgetKind];
                      widgetKind2 = [screenCopy widgetKind];
                      v26 = [widgetKind isEqualToString:widgetKind2];

                      if (v26)
                      {
                        intent = [v21 intent];
                        if (intent)
                        {
                        }

                        else
                        {
                          intent2 = [screenCopy intent];

                          if (!intent2)
                          {
                            goto LABEL_34;
                          }
                        }

                        intent3 = [v21 intent];
                        if (intent3)
                        {
                          v30 = intent3;
                          intent4 = [screenCopy intent];

                          if (intent4)
                          {
                            intent5 = [v21 intent];
                            intent6 = [screenCopy intent];
                            v34 = [intent5 atx_isEqualToIntent:intent6];

                            if (v34)
                            {
LABEL_34:

                              v36 = 1;
                              sortedPagesByUserLastVisit = v44;
                              goto LABEL_36;
                            }
                          }
                        }
                      }
                    }

                    else
                    {
                    }

                    ++v20;
                  }

                  while (v18 != v20);
                  v35 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
                  v18 = v35;
                }

                while (v35);
              }

              v13 = v43 + 1;
              sortedPagesByUserLastVisit = v44;
              stacks = v45;
              v12 = v40;
              v9 = v41;
            }

            while (v43 + 1 != v42);
            v42 = [v45 countByEnumeratingWithState:&v51 objects:v60 count:16];
          }

          while (v42);
        }

        ++v9;
        v8 = v39;
      }

      while (v9 != v38);
      v7 = [sortedPagesByUserLastVisit countByEnumeratingWithState:&v55 objects:v61 count:16];
      v8 = v39;
      v36 = 0;
    }

    while (v7);
  }

  else
  {
    v36 = 0;
  }

LABEL_36:

  return v36;
}

- (void)_isCurrentTimelineRelevanceScoreZeroForSuggestion:(uint64_t)a1 family:(NSObject *)a2 intentIndexingHash:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "_ATXHomeScreenTimelineRelevanceFilter: Unexpectedly found TimelineEntry with negative duration for suggestion %@", &v2, 0xCu);
}

@end