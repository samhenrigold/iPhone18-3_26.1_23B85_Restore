@interface ATXSpotlightClient
+ (BOOL)_isAutoShortcutEnabledForSpotlight:(id)spotlight;
+ (BOOL)_isEqualRecentTopics:(id)topics otherRecentTopics:(id)recentTopics;
+ (BOOL)_isValidSuggestion:(id)suggestion forWorldState:(id)state;
+ (BOOL)isAutoShortcutEnabledForSpotlightForBundleId:(id)id signature:(id)signature;
+ (BOOL)isAutoShortcutsEnabledForSpotlightForBundleId:(id)id;
+ (BOOL)isValidSuggestion:(id)suggestion forScope:(id)scope;
+ (BOOL)topic:(id)topic isDuplicateComparingTopics:(id)topics;
+ (id)_accessoryImageWithContextualAction:(id)action;
+ (id)_contextualActionIconFromLNImage:(id)image;
+ (id)_fetchSpotlightRecentTopics:(int64_t)topics;
+ (id)_fetchSpotlightRecentTopicsWithAlternateRanking:(int64_t)ranking limit:(int64_t)limit;
+ (id)_iconForParameterizedAutoShortcutContextualAction:(id)action provider:(id)provider;
+ (id)_imageWithContextualActionIcon:(id)icon;
+ (id)_imageWithDirectionsContextualAction:(id)action;
+ (id)_imageWithLinkImage:(id)image;
+ (id)_responseWithSpotlightLayout:(id)layout andSpotlightRecentTopics:(id)topics actionScope:(id)scope limit:(int64_t)limit;
+ (id)_responseWithUpcomingMedia;
+ (id)_resultWithATXAction:(id)action;
+ (id)_resultWithActionSuggestion:(id)suggestion;
+ (id)_resultWithAppBundleId:(id)id;
+ (id)_resultWithAppClipSuggestion:(id)suggestion;
+ (id)_resultWithContextualAction:(id)action title:(id)title subtitle:(id)subtitle;
+ (id)_resultWithIntent:(id)intent title:(id)title subtitle:(id)subtitle bundleIdForDisplay:(id)display appIcon:(id)icon;
+ (id)_resultWithLinkActionContainer:(id)container;
+ (id)_resultWithLinkActionSuggestion:(id)suggestion;
+ (id)_resultWithShortcutsActionSuggestion:(id)suggestion;
+ (id)_resultWithSuggestion:(id)suggestion;
+ (id)_suggestedResultResponseWithLimit:(int64_t)limit andSpotlightRecentTopics:(id)topics actionScope:(id)scope;
+ (id)_symbolImageForName:(id)name;
+ (id)_topicWithSuggestion:(id)suggestion layoutUUID:(id)d;
+ (id)descriptionForTopic:(id)topic;
+ (id)detailedRowCardSectionWithTitle:(id)title subtitles:(id)subtitles thumbnail:(id)thumbnail trailingImage:(id)image;
+ (id)recentUpcomingMediaActionsWithLimit:(unint64_t)limit;
+ (id)rerankRecents:(id)recents withAlternateRanking:(unint64_t)ranking;
+ (id)rerankRecents_Filter:(id)filter removingType:(int)type;
+ (id)rerankRecents_LimitCount:(id)count oneCountDays:(double)days twoCountDays:(double)countDays;
+ (id)rerankRecents_Normal:(id)normal;
+ (id)suggestedResultResponseWithLimit:(int64_t)limit;
+ (id)suggestedResultResponseWithLimit:(int64_t)limit andSpotlightRecentTopics:(id)topics;
+ (id)zkwPredictionsForRequest:(id)request error:(id *)error;
+ (void)_responseWithUpcomingMedia;
+ (void)predictionsForRequest:(id)request withCompletion:(id)completion;
@end

@implementation ATXSpotlightClient

+ (void)predictionsForRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__ATXSpotlightClient_predictionsForRequest_withCompletion___block_invoke;
  block[3] = &unk_1E80C4548;
  v13 = completionCopy;
  selfCopy = self;
  v12 = requestCopy;
  v9 = completionCopy;
  v10 = requestCopy;
  dispatch_async(v8, block);
}

void __59__ATXSpotlightClient_predictionsForRequest_withCompletion___block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  v7 = 0;
  v4 = [v2 zkwPredictionsForRequest:v3 error:&v7];
  v5 = v7;
  v6 = a1[5];
  if (v6)
  {
    (*(v6 + 16))(v6, v4, v5);
  }
}

+ (id)zkwPredictionsForRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v5 = objc_opt_class();
  limit = [requestCopy limit];
  spotlightRecentTopics = [requestCopy spotlightRecentTopics];
  scope = [requestCopy scope];

  v9 = [v5 _suggestedResultResponseWithLimit:limit andSpotlightRecentTopics:spotlightRecentTopics actionScope:scope];

  return v9;
}

+ (id)suggestedResultResponseWithLimit:(int64_t)limit
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = +[ATXSpotlightZKWTrialClientWrapper sharedInstance];
  alternateRecentsRanking = [v5 alternateRecentsRanking];
  v7 = CFPreferencesCopyAppValue(@"SuggestionsSpotlightZKWRecentsEnabled", @"com.apple.suggestions");
  if (!v7 || (v8 = v7, v9 = [v7 BOOLValue], v8, v9))
  {
    v11 = [self _fetchSpotlightRecentTopics:4];
    v12 = __atxlog_handle_ui(v11);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (!alternateRecentsRanking)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] AB match: NO", buf, 2u);
      }

      goto LABEL_32;
    }

    if (v13)
    {
      *buf = 134217984;
      v46 = alternateRecentsRanking;
      _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] AB match: YES, Test ranking %lu", buf, 0xCu);
    }

    matchesAlternateRecentsControlCodePath = [v5 matchesAlternateRecentsControlCodePath];
    matchesAlternateRecentsTreatmentCodePath = [v5 matchesAlternateRecentsTreatmentCodePath];
    v16 = matchesAlternateRecentsTreatmentCodePath;
    v17 = __atxlog_handle_ui(matchesAlternateRecentsTreatmentCodePath);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = &stru_1F3E050C8;
      v19 = @"control";
      if (!matchesAlternateRecentsControlCodePath)
      {
        v19 = &stru_1F3E050C8;
      }

      *buf = 134218498;
      v46 = alternateRecentsRanking;
      v48 = v19;
      v47 = 2112;
      if (v16)
      {
        v18 = @"treatment";
      }

      v49 = 2112;
      v50 = v18;
      _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] Test ranking %lu, %@%@", buf, 0x20u);
    }

    v21 = __atxlog_handle_metrics(v20);
    v22 = os_signpost_id_generate(v21);

    v24 = __atxlog_handle_metrics(v23);
    v25 = v24;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BF549000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v22, "ATXSpotlightClient.SpotlightRecentsAlternate", " enableTelemetry=YES ", buf, 2u);
    }

    v12 = [self _fetchSpotlightRecentTopicsWithAlternateRanking:alternateRecentsRanking limit:4];
    v26 = __atxlog_handle_metrics(v12);
    v27 = v26;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 134349056;
      v46 = alternateRecentsRanking;
      _os_signpost_emit_with_name_impl(&dword_1BF549000, v27, OS_SIGNPOST_INTERVAL_END, v22, "ATXSpotlightClient.SpotlightRecentsAlternate", "alt=%{public, signpost.telemetry:number1}ld enableTelemetry=YES ", buf, 0xCu);
    }

    v28 = [self _isEqualRecentTopics:v11 otherRecentTopics:v12];
    if ((matchesAlternateRecentsControlCodePath & v16) == 1)
    {
      v29 = __atxlog_handle_ui(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        +[ATXSpotlightClient suggestedResultResponseWithLimit:];
      }
    }

    else
    {
      if (matchesAlternateRecentsControlCodePath)
      {
        if ((v28 & 1) == 0)
        {
          codePathForAlternateRecentsControl = [v5 codePathForAlternateRecentsControl];
LABEL_33:

          v31 = [self _extractTopicsFromRecentTopics:v11];
          goto LABEL_34;
        }

LABEL_32:
        codePathForAlternateRecentsControl = 0;
        goto LABEL_33;
      }

      if (v16)
      {
        if ((v28 & 1) == 0)
        {
          codePathForAlternateRecentsControl = [v5 codePathForAlternateRecentsTreatment];
          v12 = v12;

          v11 = v12;
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v29 = __atxlog_handle_ui(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        +[ATXSpotlightClient suggestedResultResponseWithLimit:];
      }
    }

    goto LABEL_32;
  }

  v11 = __atxlog_handle_ui(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: suggestedResultResponseWithLimit: Siri setting 'Show Recents' turned off. spotlightRecentTopics = @[]", buf, 2u);
  }

  codePathForAlternateRecentsControl = 0;
  v31 = MEMORY[0x1E695E0F0];
LABEL_34:

  v33 = __atxlog_handle_metrics(v32);
  v34 = os_signpost_id_generate(v33);

  v36 = __atxlog_handle_metrics(v35);
  v37 = v36;
  if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v37, OS_SIGNPOST_INTERVAL_BEGIN, v34, "ATXSpotlightClient.SuggestedActions", " enableTelemetry=YES ", buf, 2u);
  }

  v38 = [self suggestedResultResponseWithLimit:limit andSpotlightRecentTopics:v31];
  v39 = __atxlog_handle_metrics(v38);
  v40 = v39;
  if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v40, OS_SIGNPOST_INTERVAL_END, v34, "ATXSpotlightClient.SuggestedActions", " enableTelemetry=YES ", buf, 2u);
  }

  v42 = __atxlog_handle_ui(v41);
  v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
  if (codePathForAlternateRecentsControl)
  {
    if (v43)
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v42, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] send code path trigger", buf, 2u);
    }

    [v38 addCodePathId:codePathForAlternateRecentsControl];
  }

  else
  {
    if (v43)
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v42, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] Alternate ranking did not change results", buf, 2u);
    }
  }

  return v38;
}

+ (id)suggestedResultResponseWithLimit:(int64_t)limit andSpotlightRecentTopics:(id)topics
{
  topicsCopy = topics;
  v6 = [objc_opt_class() _suggestedResultResponseWithLimit:limit andSpotlightRecentTopics:topicsCopy actionScope:0];

  return v6;
}

+ (id)_suggestedResultResponseWithLimit:(int64_t)limit andSpotlightRecentTopics:(id)topics actionScope:(id)scope
{
  v21 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  topicsCopy = topics;
  v10 = CFPreferencesCopyAppValue(@"SuggestionsSpotlightZKWEnabled", @"com.apple.suggestions");
  if (v10 && (v11 = v10, v12 = [v10 BOOLValue], v11, !v12))
  {
    v14 = __atxlog_handle_ui(v10);
    if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1BF549000, &v14->super, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: suggestedResultResponseWithLimit: Siri setting 'Show Suggestions' turned off. spotlightLayout = nil", &v19, 2u);
    }

    spotlightSuggestionLayoutFromCache = 0;
  }

  else
  {
    v13 = __atxlog_handle_ui(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134217984;
      limitCopy = limit;
      _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: suggestedResultResponseWithLimit: %ld", &v19, 0xCu);
    }

    v14 = [[ATXProactiveSuggestionClient alloc] initWithConsumerSubType:21];
    spotlightSuggestionLayoutFromCache = [(ATXProactiveSuggestionClient *)v14 spotlightSuggestionLayoutFromCache];
    v16 = __atxlog_handle_ui(spotlightSuggestionLayoutFromCache);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      limitCopy = spotlightSuggestionLayoutFromCache;
      _os_log_impl(&dword_1BF549000, v16, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Blending retrieved a spotlightLayout %@.", &v19, 0xCu);
    }
  }

  v17 = [self _responseWithSpotlightLayout:spotlightSuggestionLayoutFromCache andSpotlightRecentTopics:topicsCopy actionScope:scopeCopy limit:limit];

  return v17;
}

+ (id)descriptionForTopic:(id)topic
{
  topicCopy = topic;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = topicCopy;
      v15 = [v13 alloc];
      query = [v14 query];
      date = [v14 date];

      v17 = [v15 initWithFormat:@"SFFlightTopic: %@, %@", query, date];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v26 = MEMORY[0x1E696AEC0];
        if (isKindOfClass)
        {
          v27 = topicCopy;
          v28 = [v26 alloc];
          query = [v27 query];
          queryType = [v27 queryType];
          identifier = [v27 identifier];

          v17 = [v28 initWithFormat:@"SFQueryTopic: %@, type: %d, id: %@", query, queryType, identifier];
        }

        else
        {
          v34 = objc_alloc(MEMORY[0x1E696AEC0]);
          v35 = objc_opt_class();
          query = NSStringFromClass(v35);
          v17 = [v34 initWithFormat:@"unhandled of type %@", query];
        }

        goto LABEL_19;
      }

      v18 = MEMORY[0x1E696AEC0];
      v19 = topicCopy;
      v20 = [v18 alloc];
      query = [v19 query];
      date = [v19 location];
      [date lat];
      v22 = v21;
      location = [v19 location];

      [location lng];
      v17 = [v20 initWithFormat:@"SFWeatherTopic: %@, lat %f, lng %f", query, v22, v24];
    }

    goto LABEL_19;
  }

  query = topicCopy;
  result = [query result];
  title = [result title];
  text = [title text];

  if (!text)
  {
    result2 = [query result];
    inlineCard = [result2 inlineCard];
    cardSections = [inlineCard cardSections];
    firstObject = [cardSections firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      title2 = [firstObject title];
      text = [title2 text];
    }

    else
    {
      text = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      suggestionText = [firstObject suggestionText];
      text2 = [suggestionText text];

      text = text2;
    }

    if (!text)
    {
      text = [query identifier];
    }
  }

  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SFLocalTopic %@, %@", text, query];

LABEL_19:

  return v17;
}

+ (BOOL)_isValidSuggestion:(id)suggestion forWorldState:(id)state
{
  v24 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  stateCopy = state;
  atxActionCriteria = [suggestionCopy atxActionCriteria];
  v8 = [atxActionCriteria isRelevant:stateCopy];

  if ((v8 & 1) == 0)
  {
    v14 = __atxlog_handle_ui(v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      uiSpecification = [suggestionCopy uiSpecification];
      title = [uiSpecification title];
      executableSpecification = [suggestionCopy executableSpecification];
      executableClassString = [executableSpecification executableClassString];
      v20 = 138412546;
      v21 = title;
      v22 = 2112;
      v23 = executableClassString;
      _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Not valid for device state, hiding: %@, type %@", &v20, 0x16u);
    }

    goto LABEL_8;
  }

  uiSpecification2 = [suggestionCopy uiSpecification];
  predictionReasons = [uiSpecification2 predictionReasons];

  if ((predictionReasons & 0x1000000) != 0)
  {
    v14 = __atxlog_handle_ui(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[ATXSpotlightClient _isValidSuggestion:forWorldState:];
    }

LABEL_8:

    v13 = 0;
    goto LABEL_9;
  }

  v13 = 1;
LABEL_9:

  return v13;
}

+ (BOOL)isValidSuggestion:(id)suggestion forScope:(id)scope
{
  suggestionCopy = suggestion;
  scopeCopy = scope;
  v7 = scopeCopy;
  if (scopeCopy)
  {
    appIdentifier = [scopeCopy appIdentifier];
    appEntityKeyValueMapping = [v7 appEntityKeyValueMapping];
    actionType = [v7 actionType];
    intentClassName = [v7 intentClassName];
    atxActionExecutableObject = [suggestionCopy atxActionExecutableObject];
    bundleId = [atxActionExecutableObject bundleId];
    v14 = bundleId;
    if (atxActionExecutableObject)
    {
      if (!appIdentifier || bundleId && ([appIdentifier bundleIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToString:", v15), v15, v16))
      {
        v30 = appEntityKeyValueMapping;
        if (intentClassName && ([atxActionExecutableObject intent], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "_className"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", intentClassName), v18, v17, !v19) || (objc_msgSend(suggestionCopy, "atxActionExecutableObject"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "actionType"), v20, actionType != 8) && v21 != actionType)
        {
          v22 = 0;
          appEntityKeyValueMapping = v30;
LABEL_18:

          goto LABEL_19;
        }

        appEntityKeyValueMapping = v30;
        if (!v30 || v21 || ([atxActionExecutableObject intent], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "atx_nonNilParametersByName"), v24 = objc_claimAutoreleasedReturnValue(), v23, v34 = 0, v35 = &v34, v36 = 0x2020000000, v37 = 0, v31[0] = MEMORY[0x1E69E9820], v31[1] = 3221225472, v31[2] = __49__ATXSpotlightClient_isValidSuggestion_forScope___block_invoke, v31[3] = &unk_1E80C6228, v25 = v24, v32 = v25, v33 = &v34, objc_msgSend(v30, "enumerateKeysAndObjectsUsingBlock:", v31), v26 = objc_msgSend(v30, "count"), v27 = v35[3], v32, _Block_object_dispose(&v34, 8), v25, v28 = v26 == v27, appEntityKeyValueMapping = v30, v28))
        {
          v22 = 1;
          goto LABEL_18;
        }
      }
    }

    v22 = 0;
    goto LABEL_18;
  }

  v22 = 1;
LABEL_19:

  return v22;
}

void __49__ATXSpotlightClient_isValidSuggestion_forScope___block_invoke(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v10 = [v7 objectForKeyedSubscript:a2];
  LODWORD(a2) = [v10 isEqual:v8];

  if (a2)
  {
    v9 = 0;
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v9 = 1;
  }

  *a4 = v9;
}

+ (BOOL)topic:(id)topic isDuplicateComparingTopics:(id)topics
{
  v26 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  topicsCopy = topics;
  v7 = [topicsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = *v22;
    v20 = topicsCopy;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(topicsCopy);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        if ([MEMORY[0x1E69D3DF0] topic:topicCopy isSameAsTopic:v10])
        {
          LOBYTE(v7) = 1;
          goto LABEL_19;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = topicCopy;
            v12 = v10;
            identifier = [v11 identifier];
            if ([identifier length])
            {
              identifier2 = [v12 identifier];
              v15 = [identifier2 length];

              if (v15)
              {
                identifier3 = [v11 identifier];
                identifier4 = [v12 identifier];
                v18 = [identifier3 isEqualToString:identifier4];

                if (v18)
                {

                  LOBYTE(v7) = 1;
                  topicsCopy = v20;
                  goto LABEL_19;
                }
              }
            }

            else
            {
            }

            topicsCopy = v20;
          }
        }
      }

      v7 = [topicsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  return v7;
}

+ (id)_responseWithSpotlightLayout:(id)layout andSpotlightRecentTopics:(id)topics actionScope:(id)scope limit:(int64_t)limit
{
  v116 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  topicsCopy = topics;
  scopeCopy = scope;
  if ([self _shouldDisplayUpcomingMediaForTesting])
  {
    _responseWithUpcomingMedia = [self _responseWithUpcomingMedia];
    goto LABEL_67;
  }

  v73 = topicsCopy;
  uuid = [layoutCopy uuid];
  v86 = layoutCopy;
  collections = [layoutCopy collections];
  v84 = objc_opt_new();
  v83 = objc_opt_new();
  v75 = objc_opt_new();
  v89 = objc_opt_new();
  v13 = __atxlog_handle_ui(v89);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Response: create sections and topics ", buf, 2u);
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = collections;
  v77 = [obj countByEnumeratingWithState:&v102 objects:v115 count:16];
  if (v77)
  {
    v14 = 0;
    v76 = *v103;
    do
    {
      v15 = 0;
      do
      {
        if (*v103 != v76)
        {
          objc_enumerationMutation(obj);
        }

        v79 = v15;
        v16 = *(*(&v102 + 1) + 8 * v15);
        suggestions = [v16 suggestions];
        firstObject = [suggestions firstObject];
        uiSpecification = [firstObject uiSpecification];
        predictionReasons = [uiSpecification predictionReasons];

        v22 = __atxlog_handle_ui(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          contextTitle = [v16 contextTitle];
          v24 = [contextTitle hash];
          suggestions2 = [v16 suggestions];
          v26 = [suggestions2 count];
          *buf = 134218496;
          v110 = v24;
          v111 = 2048;
          v112 = predictionReasons;
          v113 = 2048;
          v114 = v26;
          _os_log_impl(&dword_1BF549000, v22, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Section.hash: %lu, type: %llu, count: %lu", buf, 0x20u);
        }

        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v78 = v16;
        suggestions3 = [v16 suggestions];
        v28 = [suggestions3 countByEnumeratingWithState:&v98 objects:v108 count:16];
        if (v28)
        {
          v29 = v28;
          v88 = 0;
          v30 = *v99;
          v31 = scopeCopy;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v99 != v30)
              {
                objc_enumerationMutation(suggestions3);
              }

              v33 = *(*(&v98 + 1) + 8 * i);
              v34 = [objc_opt_class() isValidSuggestion:v33 forScope:v31];
              if (v34)
              {
                if ([objc_opt_class() _isValidSuggestion:v33 forWorldState:v89])
                {
                  v35 = [self _topicWithSuggestion:v33 layoutUUID:uuid];
                  scores = [v86 scores];
                  v37 = [scores objectAtIndexedSubscript:v14];

                  v39 = __atxlog_handle_ui(v38);
                  v40 = v39;
                  if (v35)
                  {
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                    {
                      v41 = [self descriptionForTopic:v35];
                      *buf = 138740227;
                      v110 = v41;
                      v111 = 2112;
                      v112 = v37;
                      _os_log_impl(&dword_1BF549000, v40, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Topic: %{sensitive}@ Score: %@, ", buf, 0x16u);
                    }

                    ++v88;
                    [v84 addObject:v35];
                    [v83 addObject:v37];
                  }

                  else
                  {
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                    {
                      uiSpecification2 = [v33 uiSpecification];
                      title = [uiSpecification2 title];
                      executableSpecification = [v33 executableSpecification];
                      executableClassString = [executableSpecification executableClassString];
                      *buf = 138412546;
                      v110 = title;
                      v111 = 2112;
                      v112 = executableClassString;
                      _os_log_error_impl(&dword_1BF549000, v40, OS_LOG_TYPE_ERROR, "ATXSpotlightClient: Topic: nil: %@, type %@", buf, 0x16u);
                    }
                  }

                  v31 = scopeCopy;
                }

                ++v14;
              }

              else
              {
                v42 = __atxlog_handle_ui(v34);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v110 = v33;
                  v111 = 2112;
                  v112 = v31;
                  _os_log_impl(&dword_1BF549000, v42, OS_LOG_TYPE_INFO, "Filtering %@ as it doesn't meet the scope: %@", buf, 0x16u);
                }
              }
            }

            v29 = [suggestions3 countByEnumeratingWithState:&v98 objects:v108 count:16];
          }

          while (v29);
        }

        else
        {
          v88 = 0;
        }

        contextTitle2 = [v78 contextTitle];
        v45 = objc_opt_new();
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        suggestions4 = [v78 suggestions];
        v47 = [suggestions4 countByEnumeratingWithState:&v94 objects:v107 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v95;
          while (2)
          {
            for (j = 0; j != v48; ++j)
            {
              if (*v95 != v49)
              {
                objc_enumerationMutation(suggestions4);
              }

              v51 = [v45 contextTitleWithSuggestion:*(*(&v94 + 1) + 8 * j) eventTitle:contextTitle2];
              if ([v51 length])
              {

                goto LABEL_45;
              }
            }

            v48 = [suggestions4 countByEnumeratingWithState:&v94 objects:v107 count:16];
            if (v48)
            {
              continue;
            }

            break;
          }
        }

        v51 = contextTitle2;
LABEL_45:

        sectionIdentifier = __atxlog_handle_ui(v52);
        v54 = os_log_type_enabled(sectionIdentifier, OS_LOG_TYPE_DEFAULT);
        if (v88)
        {
          if (v54)
          {
            contextTitle3 = [v78 contextTitle];
            v56 = [contextTitle3 hash];
            *buf = 134218240;
            v110 = v56;
            v111 = 2048;
            v112 = v88;
            _os_log_impl(&dword_1BF549000, sectionIdentifier, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Creating Section [%lu] with suggestions count %lu", buf, 0x16u);
          }

          sectionIdentifier = [v78 sectionIdentifier];
          contextTitle4 = [ATXSpotlightClientResponse createSectionWithTitle:v51 sectionBundleIdentifier:sectionIdentifier resultCount:v88];
          [v75 addObject:contextTitle4];
        }

        else
        {
          if (!v54)
          {
            goto LABEL_52;
          }

          contextTitle4 = [v78 contextTitle];
          v58 = [contextTitle4 hash];
          *buf = 134217984;
          v110 = v58;
          _os_log_impl(&dword_1BF549000, sectionIdentifier, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Skipping Section [%lu] no longer has valid suggestions", buf, 0xCu);
        }

LABEL_52:
        v15 = v79 + 1;
      }

      while (v79 + 1 != v77);
      v77 = [obj countByEnumeratingWithState:&v102 objects:v115 count:16];
    }

    while (v77);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  topicsCopy = v73;
  v59 = v73;
  v60 = [v59 countByEnumeratingWithState:&v90 objects:v106 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = 0;
    v63 = *v91;
    v64 = 10.0;
LABEL_56:
    v65 = 0;
    if (v62 <= 3)
    {
      v66 = 3 - v62;
    }

    else
    {
      v66 = 0;
    }

    while (1)
    {
      v67 = v62;
      if (*v91 != v63)
      {
        objc_enumerationMutation(v59);
      }

      [v84 addObject:*(*(&v90 + 1) + 8 * v65)];
      v68 = [MEMORY[0x1E696AD98] numberWithDouble:v64];
      [v83 addObject:v68];

      if (v66 == v65)
      {
        break;
      }

      v64 = v64 + -1.0;
      ++v65;
      v62 = v67 + 1;
      if (v61 == v65)
      {
        v61 = [v59 countByEnumeratingWithState:&v90 objects:v106 count:16];
        if (v61)
        {
          goto LABEL_56;
        }

        break;
      }
    }

    v59 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v69 = [v59 localizedStringForKey:@"SPOTLIGHT_SECTION_RECENTS" value:&stru_1F3E050C8 table:0];
    v70 = [ATXSpotlightClientResponse createSectionWithTitle:v69 sectionBundleIdentifier:@"com.apple.spotlight.dec.zkw.recents" resultCount:v67 + 1];
    v71 = v75;
    [v75 addObject:v70];

    topicsCopy = v73;
  }

  else
  {
    v71 = v75;
  }

  _responseWithUpcomingMedia = [[ATXSpotlightClientResponse alloc] initWithTopics:v84 scores:v83 sections:v71];
  layoutCopy = v86;
LABEL_67:

  return _responseWithUpcomingMedia;
}

+ (id)_topicWithSuggestion:(id)suggestion layoutUUID:(id)d
{
  suggestionCopy = suggestion;
  dCopy = d;
  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType == 8)
  {
    atxSpotlightActionExecutableObject = [suggestionCopy atxSpotlightActionExecutableObject];
    topic = [atxSpotlightActionExecutableObject topic];
LABEL_9:
    v21 = topic;
    goto LABEL_10;
  }

  v12 = [self _resultWithSuggestion:suggestionCopy];
  atxSpotlightActionExecutableObject = v12;
  if (v12)
  {
    identifier = [v12 identifier];
    v14 = [identifier length];

    if (!v14)
    {
      v16 = __atxlog_handle_ui(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        +[ATXSpotlightClient _topicWithSuggestion:layoutUUID:];
      }

      v17 = objc_opt_new();
      uUIDString = [v17 UUIDString];
      [atxSpotlightActionExecutableObject setIdentifier:uUIDString];
    }

    v19 = [suggestionCopy copy];
    [atxSpotlightActionExecutableObject setProactiveSuggestion:v19];

    v20 = [dCopy copy];
    [atxSpotlightActionExecutableObject setBlendingModelUICacheUpdateUUID:v20];

    topic = [MEMORY[0x1E69D3DE8] proactiveTopicWithResult:atxSpotlightActionExecutableObject];
    goto LABEL_9;
  }

  v21 = 0;
LABEL_10:

  return v21;
}

+ (id)_fetchSpotlightRecentTopics:(int64_t)topics
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = __atxlog_handle_metrics(self);
  v5 = os_signpost_id_generate(v4);

  v7 = __atxlog_handle_ui(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 134217984;
    topicsCopy = topics;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "spotlight recents request: %ld", &v22, 0xCu);
  }

  v9 = __atxlog_handle_metrics(v8);
  v10 = v9;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v5, "ATXSpotlightClient.SpotlightRecents", " enableTelemetry=YES ", &v22, 2u);
  }

  v11 = MEMORY[0x1E69D3DF0];
  v26 = *MEMORY[0x1E69D3DF8];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:topics];
  v27[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v14 = [v11 recentResultsWithOptions:v13];

  v16 = __atxlog_handle_metrics(v15);
  v17 = v16;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v17, OS_SIGNPOST_INTERVAL_END, v5, "ATXSpotlightClient.SpotlightRecents", " enableTelemetry=YES ", &v22, 2u);
  }

  v19 = __atxlog_handle_ui(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v14 count];
    v22 = 134218243;
    topicsCopy = v20;
    v24 = 2117;
    v25 = v14;
    _os_log_impl(&dword_1BF549000, v19, OS_LOG_TYPE_DEFAULT, "spotlight recents results: %ld %{sensitive}@", &v22, 0x16u);
  }

  return v14;
}

id __53__ATXSpotlightClient__extractTopicsFromRecentTopics___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 topic];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = __atxlog_handle_ui(v5);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v11 = objc_opt_class();
    v7 = NSStringFromClass(v11);
    v9 = [v2 topic];
    v14 = 138412547;
    v15 = v7;
    v16 = 2117;
    v17 = v9;
    _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "spotlight recent %@: %{sensitive}@", &v14, 0x16u);
    goto LABEL_6;
  }

  v6 = [v2 topic];
  v7 = __atxlog_handle_ui(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v6 query];
    v14 = 138412803;
    v15 = v9;
    v16 = 2117;
    v17 = v10;
    v18 = 1024;
    v19 = [v6 queryType];
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "spotlight recent %@: %{sensitive}@, %d", &v14, 0x1Cu);

LABEL_6:
  }

LABEL_8:
  v12 = [v2 topic];

  return v12;
}

+ (id)_fetchSpotlightRecentTopicsWithAlternateRanking:(int64_t)ranking limit:(int64_t)limit
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69D3DF0];
  v12 = *MEMORY[0x1E69D3DF8];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:limit];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__ATXSpotlightClient__fetchSpotlightRecentTopicsWithAlternateRanking_limit___block_invoke;
  v11[3] = &__block_descriptor_48_e26___NSArray_16__0__NSArray_8l;
  v11[4] = self;
  v11[5] = ranking;
  v9 = [v6 recentResultsWithOptions:v8 rankAndDeduplicate:v11];

  return v9;
}

id __76__ATXSpotlightClient__fetchSpotlightRecentTopicsWithAlternateRanking_limit___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) rerankRecents:a2 withAlternateRanking:*(a1 + 40)];
  v3 = [v2 count];
  if (v3 >= 0xA)
  {
    v4 = 10;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 subarrayWithRange:{0, v4}];

  return v5;
}

+ (id)rerankRecents:(id)recents withAlternateRanking:(unint64_t)ranking
{
  recentsCopy = recents;
  v7 = __atxlog_handle_ui(recentsCopy);
  v8 = v7;
  if (ranking > 1)
  {
    if (ranking == 2)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] rerankRecentsLimitCount 2.5, 7.5", v16, 2u);
      }

      v10 = 2.5;
      v11 = 7.5;
    }

    else
    {
      if (ranking != 3)
      {
        goto LABEL_12;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] rerankRecentsLimitCount 7.5, 14.5", v15, 2u);
      }

      v10 = 7.5;
      v11 = 14.5;
    }

    v9 = [self rerankRecents_LimitCount:recentsCopy oneCountDays:v10 twoCountDays:v11];
    goto LABEL_21;
  }

  if (!ranking)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] rerankRecents_Normal", v18, 2u);
    }

    goto LABEL_16;
  }

  if (ranking != 1)
  {
LABEL_12:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      +[ATXSpotlightClient rerankRecents:withAlternateRanking:];
    }

LABEL_16:

    v9 = [self rerankRecents_Normal:recentsCopy];
    goto LABEL_21;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] rerankRecents_Filter UserTyped", buf, 2u);
  }

  v9 = [self rerankRecents_Filter:recentsCopy removingType:30];
LABEL_21:
  v12 = v9;
  v13 = __atxlog_handle_ui(v9);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ATXSpotlightClient rerankRecents:v12 withAlternateRanking:?];
  }

  return v12;
}

+ (id)rerankRecents_Normal:(id)normal
{
  v49 = *MEMORY[0x1E69E9840];
  normalCopy = normal;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v6 = [v5 dateByAddingTimeInterval:-604800.0];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = normalCopy;
  v8 = [v7 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = v8;
  v10 = *v45;
  v35 = v5;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v45 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v44 + 1) + 8 * i);
      v13 = [v4 count];
      if (v13 >= 0xA)
      {
        v32 = __atxlog_handle_ui(v13);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v33 = "[Recents]: V0 only considers first 10";
LABEL_26:
          _os_log_impl(&dword_1BF549000, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 2u);
        }

LABEL_27:
        v5 = v35;

        goto LABEL_28;
      }

      engagementTime = [v12 engagementTime];
      [engagementTime timeIntervalSinceReferenceDate];
      v16 = v15;
      [v6 timeIntervalSinceReferenceDate];
      v18 = v17;

      if (v16 < v18)
      {
        v32 = __atxlog_handle_ui(v19);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v33 = "[Recents]: V0 no need to consider more past max date";
          goto LABEL_26;
        }

        goto LABEL_27;
      }

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __43__ATXSpotlightClient_rerankRecents_Normal___block_invoke;
      v42[3] = &unk_1E80C6290;
      v42[4] = v12;
      v20 = [v4 indexOfObjectPassingTest:v42];
      v21 = __atxlog_handle_ui(v20);
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v22)
        {
          [(ATXSpotlightClient *)&v40 rerankRecents_Normal:v41];
        }

        [v4 addObject:v12];
      }

      else
      {
        if (v22)
        {
          [(ATXSpotlightClient *)&v38 rerankRecents_Normal:v39];
        }

        v23 = [v4 objectAtIndexedSubscript:v20];
        engagementTime2 = [v23 engagementTime];
        [engagementTime2 timeIntervalSinceReferenceDate];
        v26 = v25;
        engagementTime3 = [v12 engagementTime];
        [engagementTime3 timeIntervalSinceReferenceDate];
        v29 = v28;

        if (v26 < v29)
        {
          v31 = __atxlog_handle_ui(v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
          {
            [(ATXSpotlightClient *)&v36 rerankRecents_Normal:v37];
          }
        }
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v44 objects:v48 count:16];
    v5 = v35;
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_28:

  return v4;
}

uint64_t __43__ATXSpotlightClient_rerankRecents_Normal___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) title];
  v5 = [v3 title];
  if ([v4 isEqualToString:v5])
  {
    v6 = [*(a1 + 32) encodedNormalizedTopic];
    v7 = [v3 encodedNormalizedTopic];
    v8 = [v6 isEqualToData:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)rerankRecents_Filter:(id)filter removingType:(int)type
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__ATXSpotlightClient_rerankRecents_Filter_removingType___block_invoke;
  v8[3] = &__block_descriptor_36_e27_B16__0___SFEngagedResult__8l;
  typeCopy = type;
  v5 = [filter _pas_filteredArrayWithTest:v8];
  v6 = [self rerankRecents_Normal:v5];

  return v6;
}

BOOL __56__ATXSpotlightClient_rerankRecents_Filter_removingType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 type];
  v4 = v3;
  v7 = *(a1 + 32);
  v5 = (a1 + 32);
  v6 = v7;
  if (v3 == v7)
  {
    v8 = __atxlog_handle_ui(v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __56__ATXSpotlightClient_rerankRecents_Filter_removingType___block_invoke_cold_1(v5, v8);
    }
  }

  return v4 != v6;
}

+ (id)rerankRecents_LimitCount:(id)count oneCountDays:(double)days twoCountDays:(double)countDays
{
  v58 = *MEMORY[0x1E69E9840];
  countCopy = count;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v39 = [v10 dateByAddingTimeInterval:days * -86400.0];
  v40 = v10;
  v38 = [v10 dateByAddingTimeInterval:countDays * -86400.0];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = countCopy;
  v11 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v54;
    do
    {
      v14 = 0;
      do
      {
        if (*v54 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v53 + 1) + 8 * v14);
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __73__ATXSpotlightClient_rerankRecents_LimitCount_oneCountDays_twoCountDays___block_invoke;
        v52[3] = &unk_1E80C6290;
        v52[4] = v15;
        v16 = [v8 indexOfObjectPassingTest:v52];
        v17 = __atxlog_handle_ui(v16);
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v18)
          {
            [(ATXSpotlightClient *)&v50 rerankRecents_Normal:v51];
          }

          [v8 addObject:v15];
          [v9 addObject:&unk_1F3E60600];
        }

        else
        {
          if (v18)
          {
            [ATXSpotlightClient rerankRecents_LimitCount:v49 oneCountDays:? twoCountDays:?];
          }

          v19 = [v9 objectAtIndexedSubscript:v16];
          v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v19, "integerValue") + 1}];
          [v9 replaceObjectAtIndex:v16 withObject:v20];

          v21 = [v8 objectAtIndexedSubscript:v16];
          engagementTime = [v21 engagementTime];
          [engagementTime timeIntervalSinceReferenceDate];
          v24 = v23;
          engagementTime2 = [v15 engagementTime];
          [engagementTime2 timeIntervalSinceReferenceDate];
          v27 = v26;

          if (v24 < v27)
          {
            v29 = __atxlog_handle_ui(v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
            {
              [(ATXSpotlightClient *)&v46 rerankRecents_Normal:v47];
            }
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v12);
  }

  v31 = __atxlog_handle_ui(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    [ATXSpotlightClient rerankRecents_LimitCount:v8 oneCountDays:? twoCountDays:?];
  }

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __73__ATXSpotlightClient_rerankRecents_LimitCount_oneCountDays_twoCountDays___block_invoke_339;
  v42[3] = &unk_1E80C62D8;
  v43 = v9;
  v44 = v39;
  v45 = v38;
  v32 = v38;
  v33 = v39;
  v34 = v9;
  v35 = [v8 _pas_filteredArrayWithIndexedTest:v42];
  v36 = __atxlog_handle_ui(v35);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    [ATXSpotlightClient rerankRecents_LimitCount:v35 oneCountDays:? twoCountDays:?];
  }

  return v35;
}

uint64_t __73__ATXSpotlightClient_rerankRecents_LimitCount_oneCountDays_twoCountDays___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) title];
  v5 = [v3 title];
  if ([v4 isEqualToString:v5])
  {
    v6 = [*(a1 + 32) encodedNormalizedTopic];
    v7 = [v3 encodedNormalizedTopic];
    v8 = [v6 isEqualToData:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __73__ATXSpotlightClient_rerankRecents_LimitCount_oneCountDays_twoCountDays___block_invoke_339(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [a1[4] objectAtIndexedSubscript:a3];
  v7 = [v6 unsignedIntegerValue];

  if (v7 == 2)
  {
    v15 = [v5 engagementTime];
    [v15 timeIntervalSinceReferenceDate];
    v17 = v16;
    [a1[6] timeIntervalSinceReferenceDate];
    v19 = v18;

    if (v17 < v19)
    {
      v14 = __atxlog_handle_ui(v20);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __73__ATXSpotlightClient_rerankRecents_LimitCount_oneCountDays_twoCountDays___block_invoke_339_cold_1(v5);
      }

      goto LABEL_9;
    }

LABEL_10:
    v21 = 1;
    goto LABEL_11;
  }

  if (v7 != 1)
  {
    goto LABEL_10;
  }

  v8 = [v5 engagementTime];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;
  [a1[5] timeIntervalSinceReferenceDate];
  v12 = v11;

  if (v10 >= v12)
  {
    goto LABEL_10;
  }

  v14 = __atxlog_handle_ui(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __73__ATXSpotlightClient_rerankRecents_LimitCount_oneCountDays_twoCountDays___block_invoke_339_cold_2(v5);
  }

LABEL_9:

  v21 = 0;
LABEL_11:

  return v21;
}

+ (BOOL)_isEqualRecentTopics:(id)topics otherRecentTopics:(id)recentTopics
{
  topicsCopy = topics;
  recentTopicsCopy = recentTopics;
  v7 = [topicsCopy count];
  if (v7 != [recentTopicsCopy count])
  {
LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  if ([topicsCopy count])
  {
    v8 = 0;
    while (1)
    {
      v9 = [topicsCopy objectAtIndexedSubscript:v8];
      v10 = [recentTopicsCopy objectAtIndexedSubscript:v8];
      engagementDate = [v9 engagementDate];
      engagementDate2 = [v10 engagementDate];
      v13 = [engagementDate isEqualToDate:engagementDate2];

      if (!v13)
      {
        break;
      }

      topic = [v9 topic];
      identifier = [topic identifier];
      topic2 = [v10 topic];
      identifier2 = [topic2 identifier];
      v18 = [identifier isEqualToString:identifier2];

      if ((v18 & 1) != 0 && [topicsCopy count] > ++v8)
      {
        continue;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v18 = 1;
LABEL_11:

  return v18;
}

+ (id)_resultWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType == 2)
  {
    v8 = __atxlog_handle_ui(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithSuggestion is ATXSuggestionExecutableTypeAction", buf, 2u);
    }

    v9 = [self _resultWithActionSuggestion:suggestionCopy];
LABEL_17:
    v23 = v9;
    goto LABEL_18;
  }

  executableSpecification2 = [suggestionCopy executableSpecification];
  executableType2 = [executableSpecification2 executableType];

  if (executableType2 == 5)
  {
    v13 = __atxlog_handle_ui(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithSuggestion is ATXSuggestionExecutableTypeAppClip", v27, 2u);
    }

    v9 = [self _resultWithAppClipSuggestion:suggestionCopy];
    goto LABEL_17;
  }

  executableSpecification3 = [suggestionCopy executableSpecification];
  executableType3 = [executableSpecification3 executableType];

  if (executableType3 == 9)
  {
    v17 = __atxlog_handle_ui(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithSuggestion is ATXSuggestionExecutableTypeShortcutsAction", v26, 2u);
    }

    v9 = [self _resultWithShortcutsActionSuggestion:suggestionCopy];
    goto LABEL_17;
  }

  executableSpecification4 = [suggestionCopy executableSpecification];
  executableType4 = [executableSpecification4 executableType];

  v21 = __atxlog_handle_ui(v20);
  v22 = v21;
  if (executableType4 == 10)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_1BF549000, v22, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithSuggestion is ATXSuggestionExecutableTypeLinkAction", v25, 2u);
    }

    v9 = [self _resultWithLinkActionSuggestion:suggestionCopy];
    goto LABEL_17;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [ATXSpotlightClient _resultWithSuggestion:suggestionCopy];
  }

  v23 = 0;
LABEL_18:

  return v23;
}

+ (id)_resultWithLinkActionSuggestion:(id)suggestion
{
  v13 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  v5 = __atxlog_handle_ui(suggestionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uiSpecification = [suggestionCopy uiSpecification];
    title = [uiSpecification title];
    v11 = 138412290;
    v12 = title;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithLinkActionSuggestion %@", &v11, 0xCu);
  }

  linkActionExecutableObject = [suggestionCopy linkActionExecutableObject];
  if (linkActionExecutableObject)
  {
    v9 = [self _resultWithLinkActionContainer:linkActionExecutableObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_resultWithLinkActionContainer:(id)container
{
  v34[1] = *MEMORY[0x1E69E9840];
  containerCopy = container;
  image = [containerCopy image];

  if (image)
  {
    image2 = [containerCopy image];
    v7 = [self _imageWithLinkImage:image2];
  }

  else
  {
    v7 = objc_opt_new();
    image2 = [containerCopy bundleId];
    [v7 setBundleIdentifier:image2];
  }

  v8 = objc_alloc(MEMORY[0x1E69E0BC0]);
  action = [containerCopy action];
  bundleId = [containerCopy bundleId];
  v11 = [v8 initWithAction:action appBundleIdentifier:bundleId extensionBundleIdentifier:0 authenticationPolicy:0];

  v32 = 0;
  v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v32];
  v13 = v32;
  v14 = v13;
  if (v13)
  {
    v15 = __atxlog_handle_ui(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[ATXSpotlightClient _resultWithLinkActionContainer:];
    }

    v16 = 0;
  }

  else
  {
    subtitle = [v11 subtitle];
    if (subtitle)
    {
      subtitle2 = [v11 subtitle];
      v34[0] = subtitle2;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    }

    else
    {
      v15 = MEMORY[0x1E695E0F0];
    }

    title = [v11 title];
    v20 = [self _accessoryImageWithContextualAction:v11];
    v21 = [self detailedRowCardSectionWithTitle:title subtitles:v15 thumbnail:v7 trailingImage:v20];

    v22 = objc_opt_new();
    [v22 setIsRunnableWorkflow:1];
    [v22 setIntentMessageData:v12];
    identifier = [v11 identifier];
    [v22 setIntentMessageName:identifier];

    [v21 setCommand:v22];
    identifier2 = [v11 identifier];
    [v21 setCommandDetail:identifier2];

    v16 = objc_opt_new();
    [v11 uniqueIdentifier];
    v25 = v31 = v7;
    [v16 setIdentifier:v25];

    associatedAppBundleIdentifier = [v11 associatedAppBundleIdentifier];
    [v16 setApplicationBundleIdentifier:associatedAppBundleIdentifier];

    applicationBundleIdentifier = [v16 applicationBundleIdentifier];
    [v16 setResultBundleId:applicationBundleIdentifier];

    v28 = objc_opt_new();
    v33 = v21;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    [v28 setCardSections:v29];

    [v16 setInlineCard:v28];
    v7 = v31;
  }

  return v16;
}

+ (id)_resultWithShortcutsActionSuggestion:(id)suggestion
{
  v19 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  v5 = __atxlog_handle_ui(suggestionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uiSpecification = [suggestionCopy uiSpecification];
    title = [uiSpecification title];
    v17 = 138412290;
    v18 = title;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithShortcutsActionSuggestion %@", &v17, 0xCu);
  }

  atxShortcutsActionExecutableObject = [suggestionCopy atxShortcutsActionExecutableObject];
  v9 = atxShortcutsActionExecutableObject;
  if (atxShortcutsActionExecutableObject)
  {
    contextualAction = [atxShortcutsActionExecutableObject contextualAction];
    uiSpecification2 = [suggestionCopy uiSpecification];
    subtitle = [uiSpecification2 subtitle];

    uiSpecification3 = [suggestionCopy uiSpecification];
    title2 = [uiSpecification3 title];
    v15 = [self _resultWithContextualAction:contextualAction title:title2 subtitle:subtitle];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)_resultWithContextualAction:(id)action title:(id)title subtitle:(id)subtitle
{
  v66[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  titleCopy = title;
  subtitleCopy = subtitle;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = actionCopy;
    v12 = objc_alloc_init(MEMORY[0x1E69ACDC8]);
    if (![self _isAutoShortcutEnabledForSpotlight:v11])
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!subtitleCopy)
    {
LABEL_9:
      v21 = 0;
      goto LABEL_33;
    }

    v61 = v12;
    integerValue = [subtitleCopy integerValue];
    v14 = [MEMORY[0x1E695DF00] now];
    [v14 timeIntervalSinceReferenceDate];
    v16 = integerValue - v15;

    v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    alarmName = [actionCopy alarmName];
    v19 = alarmName;
    if (v16 <= 3600.0)
    {
      v22 = objc_opt_new();
      [v22 setUnitsStyle:2];
      [v22 setAllowedUnits:64];
      v23 = 60.0;
      if (v16 > 60.0)
      {
        v23 = v16;
      }

      v24 = [v22 stringFromTimeInterval:v23];
      v25 = MEMORY[0x1E696AEC0];
      [v17 localizedStringForKey:@"SPOTLIGHT_TIME_TO_ALARM" value:&stru_1F3E050C8 table:0];
      v59 = v17;
      v26 = v11;
      v28 = v27 = titleCopy;
      v20 = [v25 localizedStringWithFormat:v28, v19, v24];

      titleCopy = v27;
      v11 = v26;
      v17 = v59;

      subtitleCopy = v22;
    }

    else
    {
      v20 = alarmName;
    }

    subtitleCopy = v20;
    v12 = v61;
  }

  v29 = objc_autoreleasePoolPush();
  v64 = 0;
  v30 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:actionCopy requiringSecureCoding:1 error:&v64];
  v31 = v64;
  v32 = v29;
  v33 = v31;
  objc_autoreleasePoolPop(v32);
  if (v33)
  {
    v35 = v30;
    v36 = __atxlog_handle_ui(v34);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      +[ATXSpotlightClient _resultWithContextualAction:title:subtitle:];
    }

    v21 = 0;
  }

  else
  {
    icon = [actionCopy icon];

    if (icon)
    {
      icon2 = [actionCopy icon];
      v36 = [self _imageWithContextualActionIcon:icon2];
    }

    else
    {
      icon2 = __atxlog_handle_ui(v38);
      if (os_log_type_enabled(icon2, OS_LOG_TYPE_FAULT))
      {
        +[ATXSpotlightClient _resultWithContextualAction:title:subtitle:];
      }

      v36 = 0;
    }

    v40 = [self _iconForParameterizedAutoShortcutContextualAction:v11 provider:v12];
    v41 = v40;
    v62 = v12;
    if (v40)
    {
      v42 = __atxlog_handle_ui(v40);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BF549000, v42, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: using icon from parameterized app shortcut", buf, 2u);
      }

      v43 = [self _imageWithContextualActionIcon:v41];
    }

    else
    {
      v43 = [self _accessoryImageWithContextualAction:actionCopy];
    }

    v60 = titleCopy;
    v57 = v43;
    v58 = v41;
    if (subtitleCopy)
    {
      v66[0] = subtitleCopy;
      v44 = v43;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
      v46 = [self detailedRowCardSectionWithTitle:titleCopy subtitles:v45 thumbnail:v36 trailingImage:v44];
    }

    else
    {
      v46 = [self detailedRowCardSectionWithTitle:titleCopy subtitles:MEMORY[0x1E695E0F0] thumbnail:v36 trailingImage:v43];
    }

    v47 = objc_opt_new();
    [v47 setIsRunnableWorkflow:1];
    [v47 setIntentMessageData:v30];
    identifier = [actionCopy identifier];
    [v47 setIntentMessageName:identifier];

    settingBiomeStreamIdentifier = [actionCopy settingBiomeStreamIdentifier];
    [v47 setBiomeStreamIdentifier:settingBiomeStreamIdentifier];

    [v46 setCommand:v47];
    identifier2 = [actionCopy identifier];
    [v46 setCommandDetail:identifier2];

    v35 = v30;
    v21 = objc_opt_new();
    uniqueIdentifier = [actionCopy uniqueIdentifier];
    [v21 setIdentifier:uniqueIdentifier];

    associatedAppBundleIdentifier = [actionCopy associatedAppBundleIdentifier];
    [v21 setApplicationBundleIdentifier:associatedAppBundleIdentifier];

    applicationBundleIdentifier = [v21 applicationBundleIdentifier];
    [v21 setResultBundleId:applicationBundleIdentifier];

    v54 = objc_opt_new();
    v65 = v46;
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
    [v54 setCardSections:v55];

    [v21 setInlineCard:v54];
    titleCopy = v60;
    v12 = v62;
    v33 = 0;
  }

LABEL_33:

  return v21;
}

+ (id)_accessoryImageWithContextualAction:(id)action
{
  actionCopy = action;
  accessoryIcon = [actionCopy accessoryIcon];
  if (accessoryIcon)
  {
    v6 = [self _imageWithContextualActionIcon:accessoryIcon];
LABEL_5:
    v7 = v6;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [self _imageWithDirectionsContextualAction:actionCopy];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

+ (id)_imageWithLinkImage:(id)image
{
  imageCopy = image;
  v4 = objc_alloc(getINUISearchFoundationImageAdapterClass());
  inImage = [imageCopy inImage];

  v6 = [v4 initWithIntentsImage:inImage];

  return v6;
}

+ (id)_imageWithContextualActionIcon:(id)icon
{
  v22 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  applicationBundleIdentifier = [iconCopy applicationBundleIdentifier];
  v6 = applicationBundleIdentifier;
  if (applicationBundleIdentifier)
  {
    v7 = __atxlog_handle_ui(applicationBundleIdentifier);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v6;
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: using contextualAction.icon.applicationBundleIdentifier %@", &v20, 0xCu);
    }

    v8 = objc_opt_new();
    if ([v6 isEqualToString:@"com.apple.mobilesafari"])
    {
      [v8 setIconType:1];
    }

    else
    {
      [v8 setBundleIdentifier:v6];
    }
  }

  else
  {
    imageData = [iconCopy imageData];

    if (imageData)
    {
      v11 = __atxlog_handle_ui(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: using icon.imageData ", &v20, 2u);
      }

      v8 = objc_alloc_init(MEMORY[0x1E69CA138]);
      imageData2 = [iconCopy imageData];
      [v8 setImageData:imageData2];

      [iconCopy imageScale];
      [v8 setScale:?];
    }

    else
    {
      systemName = [iconCopy systemName];

      v15 = __atxlog_handle_ui(v14);
      v16 = v15;
      if (systemName)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          systemName2 = [iconCopy systemName];
          v20 = 138412290;
          v21 = systemName2;
          _os_log_impl(&dword_1BF549000, v16, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: using icon.systemName %@", &v20, 0xCu);
        }

        v8 = objc_alloc_init(MEMORY[0x1E69CA4C8]);
        systemName3 = [iconCopy systemName];
        [v8 setSymbolName:systemName3];

        [v8 setIsTemplate:1];
      }

      else
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          +[ATXSpotlightClient _imageWithContextualActionIcon:];
        }

        v8 = 0;
      }
    }
  }

  [v8 setCornerRoundingStyle:{objc_msgSend(self, "_imageCornerRoundingStyleForIconDisplayStyle:", objc_msgSend(iconCopy, "displayStyle"))}];

  return v8;
}

+ (id)_imageWithDirectionsContextualAction:(id)action
{
  navigationType = [action navigationType];
  if (navigationType > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&off_1E80C6328 + navigationType);
  }

  v5 = objc_alloc_init(MEMORY[0x1E69CA4C8]);
  [v5 setSymbolName:v4];
  [v5 setIsTemplate:1];

  return v5;
}

+ (id)_resultWithActionSuggestion:(id)suggestion
{
  v18 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableClassString = [executableSpecification executableClassString];

  v8 = __atxlog_handle_ui(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = executableClassString;
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithActionSuggestion executableClassString:%@", &v16, 0xCu);
  }

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [executableClassString isEqualToString:v10];

  if (v11)
  {
    atxActionExecutableObject = [suggestionCopy atxActionExecutableObject];
    if (atxActionExecutableObject)
    {
      v14 = [self _resultWithATXAction:atxActionExecutableObject];
      goto LABEL_9;
    }
  }

  else
  {
    atxActionExecutableObject = __atxlog_handle_ui(v12);
    if (os_log_type_enabled(atxActionExecutableObject, OS_LOG_TYPE_ERROR))
    {
      +[ATXSpotlightClient _resultWithActionSuggestion:];
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

+ (id)_resultWithIntent:(id)intent title:(id)title subtitle:(id)subtitle bundleIdForDisplay:(id)display appIcon:(id)icon
{
  v62 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  titleCopy = title;
  subtitleCopy = subtitle;
  displayCopy = display;
  iconCopy = icon;
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  LODWORD(subtitle) = [processName isEqualToString:@"duetexpertd"];

  if (subtitle)
  {
    [ATXSpotlightClient _resultWithIntent:a2 title:self subtitle:? bundleIdForDisplay:? appIcon:?];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    isKindOfClass = [iconCopy setBundleIdentifier:@"com.apple.mobilephone"];
  }

  v20 = __atxlog_handle_ui(isKindOfClass);
  v21 = displayCopy;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v59 = titleCopy;
    v60 = 2112;
    v61 = intentCopy;
    _os_log_impl(&dword_1BF549000, v20, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithIntent [%@] intent:%@", buf, 0x16u);
  }

  INUISearchFoundationImageAdapterClass = getINUISearchFoundationImageAdapterClass();
  if (intentCopy && (v23 = INUISearchFoundationImageAdapterClass, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {

    v24 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:intentCopy response:0];
    _keyImage = [v24 _keyImage];
    v26 = __atxlog_handle_ui(_keyImage);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      _identifier = [_keyImage _identifier];
      *buf = 138412290;
      v59 = _identifier;
      _os_log_impl(&dword_1BF549000, v26, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithIntent intentsImage._identifier:%@", buf, 0xCu);
    }

    if (_keyImage)
    {
      subtitleCopy = [[v23 alloc] initWithIntentsImage:_keyImage];
      [subtitleCopy setSize:{32.0, 32.0}];
    }

    else
    {
      subtitleCopy = 0;
    }

    v51 = 0;
    v28 = MEMORY[0x1E695E0F0];
    v21 = displayCopy;
  }

  else if (subtitleCopy)
  {
    v51 = subtitleCopy;
    v57 = subtitleCopy;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
    subtitleCopy = 0;
  }

  else
  {
    v51 = 0;
    v28 = MEMORY[0x1E695E0F0];
  }

  v52 = iconCopy;
  v53 = titleCopy;
  v29 = [self detailedRowCardSectionWithTitle:titleCopy subtitles:v28 thumbnail:iconCopy trailingImage:subtitleCopy];
  v30 = objc_opt_new();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    backingStore = [intentCopy backingStore];
    data = [backingStore data];
    [v30 setIntentMessageData:data];

LABEL_25:
    _intentInstanceDescription = [intentCopy _intentInstanceDescription];
    type = [_intentInstanceDescription type];
    [v30 setIntentMessageName:type];

    [v30 setApplicationBundleIdentifier:v21];
    [v29 setCommand:v30];
    v44 = objc_opt_new();
    v45 = objc_opt_new();
    uUIDString = [v45 UUIDString];
    [v44 setIdentifier:uUIDString];

    [v44 setApplicationBundleIdentifier:v21];
    applicationBundleIdentifier = [v44 applicationBundleIdentifier];
    [v44 setResultBundleId:applicationBundleIdentifier];

    v48 = objc_opt_new();
    v56 = v29;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
    [v48 setCardSections:v49];

    [v44 setInlineCard:v48];
    goto LABEL_26;
  }

  v31 = intentCopy;
  v32 = objc_alloc(MEMORY[0x1E69E0BC0]);
  linkAction = [v31 linkAction];
  v34 = [v32 initWithAction:linkAction appBundleIdentifier:v21 extensionBundleIdentifier:0 authenticationPolicy:0];

  v55 = 0;
  v35 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v34 requiringSecureCoding:1 error:&v55];
  v36 = v55;
  v37 = v36;
  if (v35)
  {
    [v30 setIsRunnableWorkflow:1];
    [v30 setIntentMessageData:v35];
    identifier = [v34 identifier];
    [v30 setIntentMessageName:identifier];

    identifier2 = [v34 identifier];
    [v29 setCommandDetail:identifier2];
  }

  else
  {
    identifier2 = __atxlog_handle_ui(v36);
    if (os_log_type_enabled(identifier2, OS_LOG_TYPE_ERROR))
    {
      +[ATXSpotlightClient _resultWithLinkActionContainer:];
    }
  }

  v21 = displayCopy;
  if (v35)
  {
    goto LABEL_25;
  }

  v44 = 0;
LABEL_26:

  return v44;
}

+ (id)_resultWithAppBundleId:(id)id
{
  v15[1] = *MEMORY[0x1E69E9840];
  idCopy = id;
  v4 = [ATXApplicationRecord localizedNameForBundle:idCopy];
  if (![v4 length])
  {
    v5 = __atxlog_handle_ui(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      +[ATXSpotlightClient _resultWithAppBundleId:];
    }
  }

  v6 = objc_opt_new();
  [v6 setBundleIdentifier:idCopy];
  v7 = objc_alloc_init(MEMORY[0x1E69CA1A0]);
  [v7 setApplicationBundleIdentifier:idCopy];
  v8 = objc_opt_new();
  [v8 setShouldUseCompactDisplay:1];
  [v8 setThumbnail:v6];
  v9 = [MEMORY[0x1E69CA3A0] textWithString:v4];
  [v8 setTitle:v9];

  [v8 setCommand:v7];
  v10 = objc_alloc_init(ATXSuggestionSearchResult);
  [(ATXSuggestionSearchResult *)v10 setIdentifier:idCopy];
  [(ATXSuggestionSearchResult *)v10 setApplicationBundleIdentifier:idCopy];
  applicationBundleIdentifier = [(ATXSuggestionSearchResult *)v10 applicationBundleIdentifier];
  [(ATXSuggestionSearchResult *)v10 setResultBundleId:applicationBundleIdentifier];

  v12 = objc_alloc_init(MEMORY[0x1E69C9F00]);
  v15[0] = v8;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v12 setCardSections:v13];

  [(ATXSuggestionSearchResult *)v10 setInlineCard:v12];

  return v10;
}

+ (id)_resultWithATXAction:(id)action
{
  v66 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  actionTitle = [actionCopy actionTitle];
  _bundleIdForDisplay = [actionCopy _bundleIdForDisplay];
  actionSubtitle = [actionCopy actionSubtitle];
  v8 = +[ATXSpotlightZKWTrialClientWrapper sharedInstance];
  keyExistsAndHasValidFormat[0] = 0;
  if (CFPreferencesGetAppBooleanValue(@"zkwShowNSUAApp", *MEMORY[0x1E698B030], keyExistsAndHasValidFormat) || [v8 showNSUASuggestionsAsAppLaunches])
  {
    v9 = [self _resultWithAppBundleId:_bundleIdForDisplay];
    goto LABEL_4;
  }

  v11 = objc_opt_new();
  if ([_bundleIdForDisplay isEqualToString:@"com.apple.mobilesafari"])
  {
    v12 = [v11 setIconType:1];
  }

  else
  {
    userActivity = [actionCopy userActivity];
    webpageURL = [userActivity webpageURL];
    v15 = ATXBundleIdReplacementForBundleIdWithWebpageURLHint();

    v12 = [v11 setBundleIdentifier:v15];
    _bundleIdForDisplay = v15;
  }

  v16 = __atxlog_handle_ui(v12);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    bundleId = [actionCopy bundleId];
    *keyExistsAndHasValidFormat = 138412546;
    v63 = actionTitle;
    v64 = 2112;
    v65 = bundleId;
    _os_log_impl(&dword_1BF549000, v16, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithATXAction [%@] action.bundleId=%@", keyExistsAndHasValidFormat, 0x16u);
  }

  intent = [actionCopy intent];

  if (!intent)
  {
    userActivity2 = [actionCopy userActivity];
    webpageURL2 = [userActivity2 webpageURL];

    if (webpageURL2)
    {
      userActivity3 = [actionCopy userActivity];
      webpageURL3 = [userActivity3 webpageURL];

      host = [webpageURL3 host];
      v25 = [host isEqualToString:@"trackingshipment.apple.com"];

      if (v25)
      {
        v27 = 0;
      }

      else
      {
        absoluteString = [webpageURL3 absoluteString];

        if (absoluteString)
        {
          schemelessAbsoluteString = [webpageURL3 schemelessAbsoluteString];

          actionSubtitle = schemelessAbsoluteString;
        }

        v26 = [self _symbolImageForName:@"link"];
        v27 = v26;
      }

      v30 = __atxlog_handle_ui(v26);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *keyExistsAndHasValidFormat = 138412546;
        v63 = actionTitle;
        v64 = 2112;
        v65 = webpageURL3;
        _os_log_impl(&dword_1BF549000, v30, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithATXAction [%@] userActivity webpageURL:%@", keyExistsAndHasValidFormat, 0x16u);
      }
    }

    else
    {
      v27 = 0;
    }

    if (actionSubtitle)
    {
      v61 = actionSubtitle;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
    }

    else
    {
      v31 = MEMORY[0x1E695E0F0];
    }

    v58 = v31;
    v59 = v11;
    v57 = v27;
    v32 = [self detailedRowCardSectionWithTitle:actionTitle subtitles:v31 thumbnail:v11 trailingImage:v27];
    userActivity4 = [actionCopy userActivity];
    webpageURL4 = [userActivity4 webpageURL];

    if (webpageURL4)
    {
      v35 = objc_opt_new();
      v36 = MEMORY[0x1E69CA320];
      userActivity5 = [actionCopy userActivity];
      webpageURL5 = [userActivity5 webpageURL];
      v39 = [v36 punchoutWithURL:webpageURL5];
      [v35 setPunchout:v39];

      [v32 setCommand:v35];
      v40 = v32;
    }

    else
    {
      userActivity6 = [actionCopy userActivity];

      if (userActivity6)
      {
        v35 = objc_alloc_init(MEMORY[0x1E69CA158]);
        userActivityString = [actionCopy userActivityString];
        [v35 setUserActivityRequiredString:userActivityString];

        [v35 setApplicationBundleIdentifier:_bundleIdForDisplay];
        v40 = v32;
        v43 = v32;
      }

      else
      {
        if ([actionCopy actionType] == 6)
        {
          v35 = objc_opt_new();
          menuItemPath = [actionCopy menuItemPath];
          lastObject = [menuItemPath lastObject];
          [v35 setMenuItemIdentifier:lastObject];

          [v35 setApplicationBundleIdentifier:_bundleIdForDisplay];
          v46 = [self _symbolImageForName:@"filemenu.and.selection"];
          [v46 setSize:{36.0, 36.0}];
          [v46 setBadgingImage:v59];
          v40 = v32;
          [v32 setThumbnail:v46];
          [v32 setCommand:v35];

          goto LABEL_40;
        }

        actionType = [actionCopy actionType];
        if (actionType != 7)
        {
          v35 = __atxlog_handle_ui(actionType);
          v40 = v32;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
          {
            +[ATXSpotlightClient _resultWithATXAction:];
          }

          goto LABEL_40;
        }

        v35 = objc_opt_new();
        parameterKeysForToolInvocation = [actionCopy parameterKeysForToolInvocation];
        v49 = [parameterKeysForToolInvocation count];

        v40 = v32;
        if (v49)
        {
          encodedToolInvocation = [actionCopy encodedToolInvocation];
          [v35 setToolInvocationData:encodedToolInvocation];
        }

        toolInvocationID = [actionCopy toolInvocationID];
        [v35 setToolIdentifier:toolInvocationID];

        v43 = v32;
      }

      [v43 setCommand:v35];
    }

LABEL_40:
    intent2 = v57;

    v9 = objc_opt_new();
    v52 = objc_opt_new();
    uUIDString = [v52 UUIDString];
    [v9 setIdentifier:uUIDString];

    [v9 setApplicationBundleIdentifier:_bundleIdForDisplay];
    applicationBundleIdentifier = [v9 applicationBundleIdentifier];
    [v9 setResultBundleId:applicationBundleIdentifier];

    v55 = objc_opt_new();
    v60 = v40;
    v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
    [v55 setCardSections:v56];

    [v9 setInlineCard:v55];
    v11 = v59;
    goto LABEL_41;
  }

  intent2 = [actionCopy intent];
  v9 = [self _resultWithIntent:intent2 title:actionTitle subtitle:actionSubtitle bundleIdForDisplay:_bundleIdForDisplay appIcon:v11];
LABEL_41:

LABEL_4:

  return v9;
}

+ (id)_symbolImageForName:(id)name
{
  nameCopy = name;
  v4 = objc_opt_new();
  [v4 setSymbolName:nameCopy];

  [v4 setIsTemplate:1];

  return v4;
}

+ (id)_resultWithAppClipSuggestion:(id)suggestion
{
  v54[1] = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  appClipHeroAppPredictionExecutableObject = [suggestionCopy appClipHeroAppPredictionExecutableObject];
  v6 = appClipHeroAppPredictionExecutableObject;
  if (!appClipHeroAppPredictionExecutableObject)
  {
    v21 = 0;
    goto LABEL_26;
  }

  clipMetadata = [appClipHeroAppPredictionExecutableObject clipMetadata];
  if (clipMetadata)
  {
    uiSpecification = [suggestionCopy uiSpecification];
    subtitle = [uiSpecification subtitle];

    localizedSubtitleForClipSuggestion = [clipMetadata localizedSubtitleForClipSuggestion];
    if ([localizedSubtitleForClipSuggestion isEqualToString:subtitle])
    {
      uiSpecification2 = [suggestionCopy uiSpecification];
      title = [uiSpecification2 title];

      uiSpecification3 = [suggestionCopy uiSpecification];
      subtitle2 = [uiSpecification3 subtitle];

      localizedSubtitleForClipSuggestion = subtitle2;
      subtitle = title;
    }

    fullAppCachedIconFilePath = [clipMetadata fullAppCachedIconFilePath];

    if (fullAppCachedIconFilePath)
    {
      v16 = objc_alloc(MEMORY[0x1E69CA548]);
      v17 = MEMORY[0x1E695DFF8];
      fullAppCachedIconFilePath2 = [clipMetadata fullAppCachedIconFilePath];
      v19 = [v17 fileURLWithPath:fullAppCachedIconFilePath2];
      fullAppIconURL = [v16 initWithURL:v19];
    }

    else
    {
      clipBusinessIconURL = [clipMetadata clipBusinessIconURL];

      if (clipBusinessIconURL)
      {
        v23 = objc_alloc(MEMORY[0x1E69CA548]);
        clipBusinessIconURL2 = [clipMetadata clipBusinessIconURL];
      }

      else
      {
        fullAppIconURL = [clipMetadata fullAppIconURL];

        if (!fullAppIconURL)
        {
LABEL_15:
          [fullAppIconURL setCornerRoundingStyle:3];
          v50 = fullAppIconURL;
          if (localizedSubtitleForClipSuggestion)
          {
            v54[0] = localizedSubtitleForClipSuggestion;
            v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
            v26 = [self detailedRowCardSectionWithTitle:subtitle subtitles:v25 thumbnail:fullAppIconURL trailingImage:0];
          }

          else
          {
            v26 = [self detailedRowCardSectionWithTitle:subtitle subtitles:MEMORY[0x1E695E0F0] thumbnail:fullAppIconURL trailingImage:0];
          }

          v48 = subtitle;
          v49 = localizedSubtitleForClipSuggestion;
          v27 = objc_alloc_init(MEMORY[0x1E69CA320]);
          clipMetadata2 = [v6 clipMetadata];
          clipURL = [clipMetadata2 clipURL];
          if (clipURL)
          {
            clipMetadata3 = [v6 clipMetadata];
            clipURL2 = [clipMetadata3 clipURL];
            v53 = clipURL2;
            v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
            [v27 setUrls:v32];
          }

          else
          {
            [v27 setUrls:MEMORY[0x1E695E0F0]];
          }

          [v27 setHasClip:1];
          v52 = v27;
          v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
          [v26 setPunchoutOptions:v33];

          [v26 setThumbnail:v50];
          v34 = objc_alloc_init(MEMORY[0x1E69C9E68]);
          [v26 setAction:v34];

          clipOpenButtonTitle = [clipMetadata clipOpenButtonTitle];
          uppercaseString = [clipOpenButtonTitle uppercaseString];
          action = [v26 action];
          [action setLabel:uppercaseString];

          v21 = objc_opt_new();
          [v21 setType:23];
          [v21 setApplicationBundleIdentifier:@"com.apple.application"];
          applicationBundleIdentifier = [v21 applicationBundleIdentifier];
          [v21 setResultBundleId:applicationBundleIdentifier];

          v39 = MEMORY[0x1E696AEC0];
          clipMetadata4 = [v6 clipMetadata];
          webClipID = [clipMetadata4 webClipID];
          v42 = webClipID;
          if (webClipID)
          {
            v43 = webClipID;
          }

          else
          {
            v43 = &stru_1F3E050C8;
          }

          v44 = [v39 stringWithFormat:@"com.apple.appclip-%@", v43];
          [v21 setIdentifier:v44];

          [v21 setNearbyBusinessesString:&stru_1F3E050C8];
          v45 = objc_opt_new();
          v51 = v26;
          v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
          [v45 setCardSections:v46];

          [v21 setInlineCard:v45];
          goto LABEL_25;
        }

        v23 = objc_alloc(MEMORY[0x1E69CA548]);
        clipBusinessIconURL2 = [clipMetadata fullAppIconURL];
      }

      fullAppCachedIconFilePath2 = clipBusinessIconURL2;
      fullAppIconURL = [v23 initWithURL:clipBusinessIconURL2];
    }

    goto LABEL_15;
  }

  v21 = 0;
LABEL_25:

LABEL_26:

  return v21;
}

+ (id)detailedRowCardSectionWithTitle:(id)title subtitles:(id)subtitles thumbnail:(id)thumbnail trailingImage:(id)image
{
  v29 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  subtitlesCopy = subtitles;
  thumbnailCopy = thumbnail;
  imageCopy = image;
  v13 = objc_opt_new();
  [v13 setShouldUseCompactDisplay:1];
  [v13 setThumbnail:thumbnailCopy];
  [v13 setTrailingThumbnail:imageCopy];
  v23 = titleCopy;
  v14 = [MEMORY[0x1E69CA3A0] textWithString:titleCopy];
  [v13 setTitle:v14];

  v15 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = subtitlesCopy;
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [MEMORY[0x1E69CA3A0] textWithString:*(*(&v24 + 1) + 8 * i)];
        [v15 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }

  [v13 setDescriptions:v15];

  return v13;
}

+ (BOOL)_isAutoShortcutEnabledForSpotlight:(id)spotlight
{
  v27 = *MEMORY[0x1E69E9840];
  spotlightCopy = spotlight;
  bundleIdentifier = [spotlightCopy bundleIdentifier];
  v6 = [self isAutoShortcutsEnabledForSpotlightForBundleId:bundleIdentifier];

  if ((v6 & 1) == 0)
  {
    v13 = __atxlog_handle_zkw_hide(v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier2 = [spotlightCopy bundleIdentifier];
      v23 = 138412290;
      v24 = bundleIdentifier2;
      _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "ATXSFL: All auto shortcuts are disabled for app: %@", &v23, 0xCu);
LABEL_10:
    }

LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  bundleIdentifier3 = [spotlightCopy bundleIdentifier];
  phrase = [spotlightCopy phrase];
  signature = [phrase signature];
  v11 = [self isAutoShortcutEnabledForSpotlightForBundleId:bundleIdentifier3 signature:signature];

  v13 = __atxlog_handle_zkw_hide(v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if ((v11 & 1) == 0)
  {
    if (v14)
    {
      bundleIdentifier2 = [spotlightCopy phrase];
      signature2 = [bundleIdentifier2 signature];
      bundleIdentifier4 = [spotlightCopy bundleIdentifier];
      v23 = 138412546;
      v24 = signature2;
      v25 = 2112;
      v26 = bundleIdentifier4;
      _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "ATXSFL: Auto shortcut is hidden for shortcut with signature: %@ from app: %@", &v23, 0x16u);

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v14)
  {
    bundleIdentifier5 = [spotlightCopy bundleIdentifier];
    phrase2 = [spotlightCopy phrase];
    signature3 = [phrase2 signature];
    v23 = 138412546;
    v24 = bundleIdentifier5;
    v25 = 2112;
    v26 = signature3;
    _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "ATXSFL: Can display auto shortcut for app: %@ with shortcut signature: %@", &v23, 0x16u);
  }

  v18 = 1;
LABEL_12:

  return v18;
}

+ (BOOL)isAutoShortcutsEnabledForSpotlightForBundleId:(id)id
{
  idCopy = id;
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = CFPreferencesCopyValue(@"SBSearchDisabledBundles", @"com.apple.spotlightui", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v6 = v5;
  if (v5)
  {
    array = v5;
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  v8 = array;

  v9 = [MEMORY[0x1E695DF70] arrayWithArray:v8];
  [v9 removeObject:@"com.apple.CloudDocs.MobileDocumentsFileProvider"];
  [v9 removeObject:@"com.apple.CloudDocs.iCloudDriveFileProvider"];
  [v9 removeObject:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];
  if (objc_msgSend_containsObject_(v8))
  {
    [v9 addObject:@"com.apple.CloudDocs.MobileDocumentsFileProvider"];
    [v9 addObject:@"com.apple.CloudDocs.iCloudDriveFileProvider"];
    [v9 addObject:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];
    [v9 addObject:@"com.apple.FileProvider.LocalStorage"];
  }

  v10 = [MEMORY[0x1E695DFA8] setWithArray:v9];

  v11 = [v4 initWithSet:v10];
  if (objc_msgSend_containsObject_(v11))
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v13 = objc_opt_new();
    v12 = [v13 autoShortcutHasBeenHiddenForIdentifier:idCopy] ^ 1;
  }

  return v12;
}

+ (BOOL)isAutoShortcutEnabledForSpotlightForBundleId:(id)id signature:(id)signature
{
  signatureCopy = signature;
  idCopy = id;
  v7 = objc_opt_new();
  v8 = [idCopy stringByAppendingString:signatureCopy];

  LOBYTE(idCopy) = [v7 autoShortcutHasBeenHiddenForIdentifier:v8];
  return idCopy ^ 1;
}

+ (id)_iconForParameterizedAutoShortcutContextualAction:(id)action provider:(id)provider
{
  v33 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  providerCopy = provider;
  v8 = providerCopy;
  if (actionCopy)
  {
    phrase = [actionCopy phrase];
    parameterIdentifier = [phrase parameterIdentifier];

    if (!parameterIdentifier)
    {
      v14 = __atxlog_handle_blending(v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier = [actionCopy bundleIdentifier];
        actionIdentifier = [actionCopy actionIdentifier];
        *buf = 138412546;
        v30 = bundleIdentifier;
        v31 = 2112;
        v32 = actionIdentifier;
        _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [AutoShortcut] not a phrase with parameters, use contextualAction icon %@, %@", buf, 0x16u);
      }

      v17 = 0;
      goto LABEL_23;
    }

    v28 = parameterIdentifier;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    v27 = 0;
    v13 = [v8 propertiesForIdentifiers:v12 error:&v27];
    v14 = v27;

    if (v14)
    {
      v16 = __atxlog_handle_blending(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [ATXSpotlightClient _iconForParameterizedAutoShortcutContextualAction:actionCopy provider:?];
      }
    }

    else
    {
      if (v13)
      {
        v22 = [v13 objectForKeyedSubscript:parameterIdentifier];
        v16 = v22;
        if (v22)
        {
          value = [v22 value];
          displayRepresentation = [value displayRepresentation];

          image = [displayRepresentation image];
          v17 = [self _contextualActionIconFromLNImage:image];
        }

        else
        {
          displayRepresentation = __atxlog_handle_blending(0);
          if (os_log_type_enabled(displayRepresentation, OS_LOG_TYPE_ERROR))
          {
            [ATXSpotlightClient _iconForParameterizedAutoShortcutContextualAction:actionCopy provider:?];
          }

          v17 = 0;
        }

        goto LABEL_22;
      }

      v16 = __atxlog_handle_blending(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [ATXSpotlightClient _iconForParameterizedAutoShortcutContextualAction:actionCopy provider:?];
      }
    }

    v17 = 0;
LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  parameterIdentifier = __atxlog_handle_blending(providerCopy);
  if (os_log_type_enabled(parameterIdentifier, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier2 = [0 bundleIdentifier];
    actionIdentifier2 = [0 actionIdentifier];
    *buf = 138412546;
    v30 = bundleIdentifier2;
    v31 = 2112;
    v32 = actionIdentifier2;
    _os_log_impl(&dword_1BF549000, parameterIdentifier, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [AutoShortcut] is not an Auto Shortcut, use contextualAction icon %@, %@", buf, 0x16u);
  }

  v17 = 0;
LABEL_24:

  return v17;
}

+ (id)_contextualActionIconFromLNImage:(id)image
{
  v30 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  lowercaseString = [processName lowercaseString];
  v7 = [lowercaseString isEqualToString:@"duetexpertd"];

  if (!v7)
  {
    v22 = 0;
    if (!WorkflowKitLibraryCore_frameworkLibrary)
    {
      *buf = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __WorkflowKitLibraryCore_block_invoke;
      v26 = &__block_descriptor_40_e5_v8__0l;
      v27 = &v22;
      v28 = xmmword_1E80C6310;
      v29 = 0;
      WorkflowKitLibraryCore_frameworkLibrary = _sl_dlopen();
    }

    if (!WorkflowKitLibraryCore_frameworkLibrary)
    {
      [ATXSpotlightClient _contextualActionIconFromLNImage:?];
    }

    if (v22)
    {
      free(v22);
    }

    wf_image = [imageCopy wf_image];
    v9 = wf_image;
    if (wf_image)
    {
      v12 = [wf_image URL];

      if (v12)
      {
        v13 = MEMORY[0x1E69E0A40];
        data2 = [v9 URL];
        [imageCopy displayStyle];
        v15 = [v13 iconWithImageURL:data2 displayStyle:WFContextualActionIconDisplayStyleForLNImageDisplayStyle()];
LABEL_20:
        v10 = v15;
        goto LABEL_21;
      }

      data = [v9 data];

      if (data)
      {
        v17 = MEMORY[0x1E69E0A40];
        data2 = [v9 data];
        [imageCopy displayStyle];
        v15 = [v17 iconWithImageData:data2 scale:WFContextualActionIconDisplayStyleForLNImageDisplayStyle() displayStyle:0.0];
        goto LABEL_20;
      }

      symbolName = [v9 symbolName];

      if (symbolName)
      {
        v20 = MEMORY[0x1E69E0A40];
        data2 = [v9 symbolName];
        v15 = [v20 iconWithSystemName:data2];
        goto LABEL_20;
      }

      data2 = __atxlog_handle_ui(v19);
      if (os_log_type_enabled(data2, OS_LOG_TYPE_FAULT))
      {
        +[ATXSpotlightClient _contextualActionIconFromLNImage:];
      }
    }

    else
    {
      data2 = __atxlog_handle_blending(0);
      if (os_log_type_enabled(data2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BF549000, data2, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [AutoShortcut] wfimage nil", buf, 2u);
      }
    }

    v10 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v9 = __atxlog_handle_ui(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    +[ATXSpotlightClient _contextualActionIconFromLNImage:];
  }

  v10 = 0;
LABEL_22:

  return v10;
}

+ (id)_responseWithUpcomingMedia
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v28 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [self recentUpcomingMediaActionsWithLimit:4];
  v6 = +[ATXSpotlightClientResponse createSectionWithTitle:sectionBundleIdentifier:resultCount:](ATXSpotlightClientResponse, "createSectionWithTitle:sectionBundleIdentifier:resultCount:", 0, &stru_1F3E050C8, [v5 count]);
  v26 = v4;
  [v4 addObject:v6];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    v11 = 0x1E69D3000uLL;
    do
    {
      v12 = 0;
      v27 = v9;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v29 + 1) + 8 * v12);
        v14 = [self _resultWithATXAction:v13];
        v15 = v14;
        if (v14 && ([*(v11 + 3560) proactiveTopicWithResult:v14], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v16 = v14;
          v17 = __atxlog_handle_ui(v14);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            [self descriptionForTopic:v16];
            v18 = v10;
            selfCopy = self;
            v20 = v7;
            v21 = v11;
            v23 = v22 = v3;
            *buf = 138412290;
            v36 = v23;
            _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Topic: %@", buf, 0xCu);

            v3 = v22;
            v11 = v21;
            v7 = v20;
            self = selfCopy;
            v10 = v18;
            v9 = v27;
          }

          [v3 addObject:v16];
          [v28 addObject:&unk_1F3E60618];
        }

        else
        {
          v16 = __atxlog_handle_ui(v14);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [(ATXSpotlightClient *)v33 _responseWithUpcomingMedia:v13];
          }
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v9);
  }

  v24 = [[ATXSpotlightClientResponse alloc] initWithTopics:v3 scores:v28 sections:v26];

  return v24;
}

+ (id)recentUpcomingMediaActionsWithLimit:(unint64_t)limit
{
  v44 = *MEMORY[0x1E69E9840];
  v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:limit];
  v30 = +[ATXUpcomingMediaQuery getAllUpcomingMedia];
  sortedUpcomingMedia = [v30 sortedUpcomingMedia];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:limit];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = sortedUpcomingMedia;
  v7 = [v6 countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v6);
        }

        first = [*(*(&v36 + 1) + 8 * i) first];
        [v5 addObject:first];
      }

      v8 = [v6 countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v8);
  }

  v12 = [v5 count];
  if (v12 >= limit)
  {
    limitCopy = limit;
  }

  else
  {
    limitCopy = v12;
  }

  v14 = [v5 subarrayWithRange:{0, limitCopy}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v33;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v32 + 1) + 8 * j);
        launchId = [v19 launchId];

        if (launchId)
        {
          v21 = [ATXAction alloc];
          v22 = objc_opt_new();
          launchId2 = [v19 launchId];
          LOBYTE(v29) = 0;
          v24 = [(ATXAction *)v21 initWithIntent:v19 actionUUID:v22 bundleId:launchId2 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v29 title:0 subtitle:0];

          if (v24)
          {
            v26 = __atxlog_handle_context_heuristic(v25);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v41 = v24;
              _os_log_impl(&dword_1BF549000, v26, OS_LOG_TYPE_DEFAULT, "recentUpcomingMediaActionsWithLimit action:%@", buf, 0xCu);
            }

            [v31 addObject:v24];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v16);
  }

  v27 = [v31 copy];

  return v27;
}

+ (void)rerankRecents:(void *)a1 withAlternateRanking:.cold.2(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_23();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __56__ATXSpotlightClient_rerankRecents_Filter_removingType___block_invoke_cold_1(int *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_1BF549000, a2, OS_LOG_TYPE_DEBUG, "[Recents]: Removing result with type %d", v3, 8u);
}

+ (void)rerankRecents_LimitCount:(void *)a1 oneCountDays:twoCountDays:.cold.4(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_23();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)rerankRecents_LimitCount:(void *)a1 oneCountDays:twoCountDays:.cold.5(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_23();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __73__ATXSpotlightClient_rerankRecents_LimitCount_oneCountDays_twoCountDays___block_invoke_339_cold_1(void *a1)
{
  v1 = [a1 engagementTime];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_23();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __73__ATXSpotlightClient_rerankRecents_LimitCount_oneCountDays_twoCountDays___block_invoke_339_cold_2(void *a1)
{
  v1 = [a1 engagementTime];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_23();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)_resultWithSuggestion:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 executableSpecification];
  v2 = [v1 executableClassString];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0xCu);
}

+ (void)_resultWithIntent:(uint64_t)a1 title:(uint64_t)a2 subtitle:bundleIdForDisplay:appIcon:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXSpotlightClient.m" lineNumber:1384 description:@"We should not be pulling in UIKit in duetexpertd"];
}

+ (void)_iconForParameterizedAutoShortcutContextualAction:(void *)a1 provider:.cold.1(void *a1)
{
  v2 = [a1 bundleIdentifier];
  v3 = [a1 actionIdentifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x20u);
}

+ (void)_iconForParameterizedAutoShortcutContextualAction:(void *)a1 provider:.cold.2(void *a1)
{
  v2 = [a1 bundleIdentifier];
  v3 = [a1 actionIdentifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);
}

+ (void)_iconForParameterizedAutoShortcutContextualAction:(void *)a1 provider:.cold.3(void *a1)
{
  v2 = [a1 bundleIdentifier];
  v3 = [a1 actionIdentifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);
}

+ (void)_contextualActionIconFromLNImage:(void *)a1 .cold.2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WorkflowKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXSpotlightClient.m" lineNumber:55 description:{@"%s", *a1}];

  __break(1u);
}

+ (void)_responseWithUpcomingMedia
{
  actionTitle = [a2 actionTitle];
  *self = 138412290;
  *a3 = actionTitle;
  _os_log_error_impl(&dword_1BF549000, a4, OS_LOG_TYPE_ERROR, "ATXSpotlightClient: Topic: nil: %@", self, 0xCu);
}

@end