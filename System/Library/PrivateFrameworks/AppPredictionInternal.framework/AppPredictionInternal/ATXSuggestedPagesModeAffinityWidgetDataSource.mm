@interface ATXSuggestedPagesModeAffinityWidgetDataSource
- (double)_fetchScoreThresholdForWidgetModeAffinityModel;
- (id)_widgetIdentifierWithoutIntentForCHSWidget:(id)widget;
- (id)_widgetIdentifierWithoutIntentForWidget:(id)widget;
- (id)fetchWidgetsPassingThresholdForMode:(unint64_t)mode forSize:(unint64_t)size;
- (id)provideWidgetsForPageType:(int64_t)type environment:(id)environment;
@end

@implementation ATXSuggestedPagesModeAffinityWidgetDataSource

- (id)provideWidgetsForPageType:(int64_t)type environment:(id)environment
{
  environment = [ATXSuggestedPagesUtils modeForSuggestedPageType:type, environment];
  v7 = MEMORY[0x277CBEB98];
  v8 = allModesForTraining();
  v9 = [v7 setWithArray:v8];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:environment];
  v11 = [v9 containsObject:v10];

  if (v11)
  {
    v13 = objc_opt_new();
    isiPad = [MEMORY[0x277D42590] isiPad];
    v15 = MEMORY[0x277CBEBF8];
    if (isiPad)
    {
      v16 = [(ATXSuggestedPagesModeAffinityWidgetDataSource *)self fetchWidgetsPassingThresholdForMode:environment forSize:2];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v15;
      }

      [v13 addObjectsFromArray:v18];
    }

    v19 = [(ATXSuggestedPagesModeAffinityWidgetDataSource *)self fetchWidgetsPassingThresholdForMode:environment forSize:1];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v15;
    }

    [v13 addObjectsFromArray:v21];

    v22 = [(ATXSuggestedPagesModeAffinityWidgetDataSource *)self fetchWidgetsPassingThresholdForMode:environment forSize:0];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v15;
    }

    [v13 addObjectsFromArray:v24];
  }

  else
  {
    v25 = __atxlog_handle_modes(v12);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [ATXSuggestedPagesModeAffinityWidgetDataSource provideWidgetsForPageType:type environment:v25];
    }

    v13 = 0;
  }

  return v13;
}

- (id)fetchWidgetsPassingThresholdForMode:(unint64_t)mode forSize:(unint64_t)size
{
  v101 = *MEMORY[0x277D85DE8];
  [(ATXSuggestedPagesModeAffinityWidgetDataSource *)self _fetchScoreThresholdForWidgetModeAffinityModel];
  v8 = v7;
  v9 = +[ATXModeEntityScorerServer sharedInstance];
  v10 = [v9 rankedWidgetsForMode:mode];

  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __93__ATXSuggestedPagesModeAffinityWidgetDataSource_fetchWidgetsPassingThresholdForMode_forSize___block_invoke;
  v93[3] = &unk_2785A1728;
  selfCopy = self;
  v93[4] = self;
  v86 = [v10 _pas_mappedArrayWithTransform:v93];
  v11 = objc_opt_new();
  v88 = objc_opt_new();
  v79 = objc_opt_new();
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v10;
  v85 = [obj countByEnumeratingWithState:&v89 objects:v100 count:16];
  if (!v85)
  {
    goto LABEL_38;
  }

  v84 = *v90;
  *&v12 = 138412802;
  v77 = v12;
  sizeCopy = size;
  v81 = v11;
  while (2)
  {
    for (i = 0; i != v85; ++i)
    {
      if (*v90 != v84)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v89 + 1) + 8 * i);
      v15 = objc_autoreleasePoolPush();
      v16 = [v11 count];
      if ([v88 count] + v16 == 4)
      {
        objc_autoreleasePoolPop(v15);
        goto LABEL_38;
      }

      v17 = objc_alloc_init(MEMORY[0x277CEB5B0]);
      widget = [v14 widget];
      kind = [widget kind];
      [v17 setWidgetKind:kind];

      widget2 = [v14 widget];
      extensionIdentity = [widget2 extensionIdentity];
      extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
      [v17 setExtensionBundleId:extensionBundleIdentifier];

      widget3 = [v14 widget];
      extensionIdentity2 = [widget3 extensionIdentity];
      containerBundleIdentifier = [extensionIdentity2 containerBundleIdentifier];
      [v17 setAppBundleId:containerBundleIdentifier];

      [v17 setSize:size];
      scoreMetadata = [v14 scoreMetadata];
      [scoreMetadata score];
      [v17 setScore:?];

      [v17 setPredictionSource:@"Mode Entity"];
      [v17 setRequiresAppLaunch:1];
      v27 = [(ATXSuggestedPagesModeAffinityWidgetDataSource *)selfCopy _widgetIdentifierWithoutIntentForWidget:v17];
      LOBYTE(extensionIdentity2) = [v86 containsObject:v27];

      if (extensionIdentity2)
      {
        scoreMetadata2 = [v14 scoreMetadata];
        featureVector = [scoreMetadata2 featureVector];

        v31 = [featureVector objectForKeyedSubscript:@"correlationEntitySpecificFeatures"];
        v32 = [v31 objectForKeyedSubscript:@"parentAppGlobalPrior"];

        v82 = [featureVector objectForKeyedSubscript:@"correlationNumLocalOccurrences"];
        v33 = [featureVector objectForKeyedSubscript:@"correlationEntitySpecificFeatures"];
        v87 = [v33 objectForKeyedSubscript:@"widgetGlobalPrior"];

        widget4 = [v14 widget];
        extensionIdentity3 = [widget4 extensionIdentity];
        containerBundleIdentifier2 = [extensionIdentity3 containerBundleIdentifier];

        if (containerBundleIdentifier2)
        {
          v37 = [v88 objectForKeyedSubscript:containerBundleIdentifier2];
          if (v37)
          {
            v38 = v37;
            [v87 doubleValue];
            v40 = v39;
            v41 = [v79 objectForKeyedSubscript:containerBundleIdentifier2];
            [v41 doubleValue];
            v43 = v42;

            if (v40 > v43)
            {
              v45 = __atxlog_handle_modes(v44);
              v11 = v81;
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v95 = containerBundleIdentifier2;
                _os_log_impl(&dword_2263AA000, v45, OS_LOG_TYPE_INFO, "ATXSuggestedPagesModeAffinityWidgetDataSource: replacing widget prediction since this widget from the app (%@) has higher global popularity", buf, 0xCu);
              }

              [v79 setObject:v87 forKeyedSubscript:containerBundleIdentifier2];
              v46 = [v88 objectForKeyedSubscript:containerBundleIdentifier2];
              [v46 score];
              [v17 setScore:?];

              v47 = [v88 objectForKeyedSubscript:containerBundleIdentifier2];
              predictionSource = [v47 predictionSource];
              [v17 setPredictionSource:predictionSource];

              [v88 setObject:v17 forKeyedSubscript:containerBundleIdentifier2];
              size = sizeCopy;
              v49 = v82;
              goto LABEL_33;
            }
          }
        }

        [v32 doubleValue];
        v11 = v81;
        v49 = v82;
        if (v52 <= 8.0 || (v53 = [v82 integerValue], v53 < 1))
        {
          [v32 doubleValue];
          if (v59 <= 5.0 || (v60 = [v87 doubleValue], v61 < 0.0005))
          {
            scoreMetadata3 = [v14 scoreMetadata];
            [scoreMetadata3 score];
            v64 = v63;

            size = sizeCopy;
            if (v64 <= v8)
            {
LABEL_33:

              goto LABEL_34;
            }

            v66 = __atxlog_handle_modes(v65);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
            {
              identifier = [v14 identifier];
              scoreMetadata4 = [v14 scoreMetadata];
              [scoreMetadata4 score];
              *buf = 138412546;
              v95 = identifier;
              v96 = 2048;
              v97 = v69;
              _os_log_impl(&dword_2263AA000, v66, OS_LOG_TYPE_INFO, "ATXSuggestedPagesModeAffinityWidgetDataSource: %@ passes widget mode affinity threshold with score: %f", buf, 0x16u);

              size = sizeCopy;
            }

            if (containerBundleIdentifier2)
            {
              goto LABEL_32;
            }

LABEL_27:
            v11 = v81;
            [v81 addObject:v17];
            goto LABEL_33;
          }

          v70 = __atxlog_handle_modes(v60);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
          {
            identifier2 = [v14 identifier];
            [v87 doubleValue];
            v73 = v72;
            [v32 doubleValue];
            *buf = v77;
            v95 = identifier2;
            v96 = 2048;
            v97 = v73;
            v98 = 2048;
            v99 = v74;
            _os_log_impl(&dword_2263AA000, v70, OS_LOG_TYPE_INFO, "ATXSuggestedPagesModeAffinityWidgetDataSource: %@ has widget popularity: %f and passes parent app global prior threshold with score: %f", buf, 0x20u);
          }

          [v32 doubleValue];
          [v17 setScore:?];
          v57 = v17;
          v58 = @"Widget Popularity";
        }

        else
        {
          v54 = __atxlog_handle_modes(v53);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            identifier3 = [v14 identifier];
            [v32 doubleValue];
            *buf = 138412546;
            v95 = identifier3;
            v96 = 2048;
            v97 = v56;
            _os_log_impl(&dword_2263AA000, v54, OS_LOG_TYPE_INFO, "ATXSuggestedPagesModeAffinityWidgetDataSource: %@ has local engagement and passes parent app global prior threshold with score: %f", buf, 0x16u);
          }

          [v32 doubleValue];
          [v17 setScore:?];
          v57 = v17;
          v58 = @"Global Mode Entity";
        }

        [v57 setPredictionSource:v58];
        size = sizeCopy;
        if (containerBundleIdentifier2)
        {
LABEL_32:
          [v79 setObject:v87 forKeyedSubscript:containerBundleIdentifier2];
          [v88 setObject:v17 forKeyedSubscript:containerBundleIdentifier2];
          v11 = v81;
          goto LABEL_33;
        }

        goto LABEL_27;
      }

      featureVector = __atxlog_handle_modes(v28);
      if (os_log_type_enabled(featureVector, OS_LOG_TYPE_INFO))
      {
        identifier4 = [v14 identifier];
        CHSWidgetFamilyFromATXStackLayoutSize();
        v51 = NSStringFromWidgetFamily();
        *buf = 138543618;
        v95 = identifier4;
        v96 = 2114;
        v97 = v51;
        _os_log_impl(&dword_2263AA000, featureVector, OS_LOG_TYPE_INFO, "ATXSuggestedPagesModeAffinityWidgetDataSource: %{public}@ widget does not exist in the preferred size: %{public}@ for this suggested page type", buf, 0x16u);
      }

LABEL_34:

      objc_autoreleasePoolPop(v15);
    }

    v85 = [obj countByEnumeratingWithState:&v89 objects:v100 count:16];
    if (v85)
    {
      continue;
    }

    break;
  }

LABEL_38:

  allValues = [v88 allValues];
  [v11 addObjectsFromArray:allValues];

  return v11;
}

id __93__ATXSuggestedPagesModeAffinityWidgetDataSource_fetchWidgetsPassingThresholdForMode_forSize___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 widget];
  v4 = [v2 _widgetIdentifierWithoutIntentForCHSWidget:v3];

  return v4;
}

- (double)_fetchScoreThresholdForWidgetModeAffinityModel
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v4 = *MEMORY[0x277CEBB80];
  v5 = [v3 objectForKey:*MEMORY[0x277CEBB80]];

  if (v5)
  {
    [v3 doubleForKey:v4];
    v7 = v6;
  }

  else
  {
    v7 = 0.3;
  }

  return v7;
}

- (id)_widgetIdentifierWithoutIntentForCHSWidget:(id)widget
{
  v3 = MEMORY[0x277CCACA8];
  widgetCopy = widget;
  v5 = [v3 alloc];
  extensionIdentity = [widgetCopy extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
  extensionIdentity2 = [widgetCopy extensionIdentity];
  containerBundleIdentifier = [extensionIdentity2 containerBundleIdentifier];
  kind = [widgetCopy kind];
  [widgetCopy family];

  v11 = NSStringFromWidgetFamily();
  v12 = [v5 initWithFormat:@"%@:%@:%@:%@", extensionBundleIdentifier, containerBundleIdentifier, kind, v11];

  return v12;
}

- (id)_widgetIdentifierWithoutIntentForWidget:(id)widget
{
  v3 = MEMORY[0x277CCACA8];
  widgetCopy = widget;
  v5 = [v3 alloc];
  extensionBundleId = [widgetCopy extensionBundleId];
  appBundleId = [widgetCopy appBundleId];
  widgetKind = [widgetCopy widgetKind];
  [widgetCopy size];

  CHSWidgetFamilyFromATXStackLayoutSize();
  v9 = NSStringFromWidgetFamily();
  v10 = [v5 initWithFormat:@"%@:%@:%@:%@", extensionBundleId, appBundleId, widgetKind, v9];

  return v10;
}

- (void)provideWidgetsForPageType:(uint64_t)a1 environment:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromATXSuggestedPageType();
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXSuggestedPagesModeAffinityWidgetDataSource: No mode affinity model found for suggested page type: %{public}@", &v4, 0xCu);
}

@end