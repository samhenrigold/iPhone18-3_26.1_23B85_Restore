@interface ATXLockscreenMetricsCollector
- (id)_configurationMetricFromPosterConfiguration:(id)configuration lockscreenId:(id)id modeClient:(id)client;
- (id)_dailyMetricsDescriptionGivenConfigurationMetrics:(id)metrics widgetMetrics:(id)widgetMetrics summaryMetric:(id)metric;
- (id)_dailyMetricsDescription_shouldPost:(BOOL)post;
- (id)_weeklyRollingIdFromLockscreenId:(id)id;
- (id)_widgetMetricFromComplication:(id)complication lockscreenId:(id)id isLandscape:(BOOL)landscape;
- (void)_fillSummaryMetric:(id)metric configurations:(id)configurations;
- (void)_postConfigurationMetrics:(id)metrics widgetMetrics:(id)widgetMetrics summaryMetric:(id)metric;
- (void)postEditMetricWithEvent:(id)event;
- (void)postSwitchMetricWithEvent:(id)event;
@end

@implementation ATXLockscreenMetricsCollector

- (void)postSwitchMetricWithEvent:(id)event
{
  eventCopy = event;
  v10 = objc_opt_new();
  lockscreenId = [eventCopy lockscreenId];
  v6 = [(ATXLockscreenMetricsCollector *)self _weeklyRollingIdFromLockscreenId:lockscreenId];
  [v10 setLockscreenId:v6];

  switchMechanism = [eventCopy switchMechanism];
  [v10 setSwitchMechanism:switchMechanism];

  outcome = [eventCopy outcome];
  [v10 setOutcome:outcome];

  duration = [eventCopy duration];
  [v10 setDuration:duration];
  [v10 logToCoreAnalytics];
}

- (void)postEditMetricWithEvent:(id)event
{
  eventCopy = event;
  v10 = objc_opt_new();
  lockscreenId = [eventCopy lockscreenId];
  v6 = [(ATXLockscreenMetricsCollector *)self _weeklyRollingIdFromLockscreenId:lockscreenId];
  [v10 setLockscreenId:v6];

  entryPoint = [eventCopy entryPoint];
  [v10 setEntryPoint:entryPoint];

  [v10 setIsNew:{objc_msgSend(eventCopy, "isNewlyCreated")}];
  [v10 setSecondsSinceLastEdit:{objc_msgSend(eventCopy, "secondsSinceLastEdit")}];
  outcome = [eventCopy outcome];
  [v10 setOutcome:outcome];

  [v10 setDuration:{objc_msgSend(eventCopy, "duration")}];
  [v10 setUserChangedColor:{objc_msgSend(eventCopy, "userChangedColor")}];
  [v10 setUserChangedFont:{objc_msgSend(eventCopy, "userChangedFont")}];
  [v10 setUserChangedNumberingSystem:{objc_msgSend(eventCopy, "userChangedNumberingSystem")}];
  [v10 setUserChangedPosterContent:{objc_msgSend(eventCopy, "userChangedPosterContent")}];
  [v10 setUserChangedWidgets:{objc_msgSend(eventCopy, "userChangedWidgets")}];
  didLockscreenHaveWidgetsBeforeEdit = [eventCopy didLockscreenHaveWidgetsBeforeEdit];

  [v10 setDidLockscreenHaveWidgetsBeforeEdit:didLockscreenHaveWidgetsBeforeEdit];
  [v10 logToCoreAnalytics];
}

- (id)_dailyMetricsDescription_shouldPost:(BOOL)post
{
  postCopy = post;
  v51 = *MEMORY[0x277D85DE8];
  v4 = +[ATXPosterConfigurationCache sharedInstance];
  configurations = [v4 configurations];

  v32 = objc_opt_new();
  v6 = objc_opt_new();
  v27 = objc_opt_new();
  [ATXLockscreenMetricsCollector _fillSummaryMetric:"_fillSummaryMetric:configurations:" configurations:?];
  mEMORY[0x277CEB440] = [MEMORY[0x277CEB440] sharedInstance];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = configurations;
  v33 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v33)
  {
    v30 = *v45;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v45 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v44 + 1) + 8 * i);
        posterUUID = [v8 posterUUID];
        v10 = [(ATXLockscreenMetricsCollector *)self _weeklyRollingIdFromLockscreenId:posterUUID];

        v35 = [(ATXLockscreenMetricsCollector *)self _configurationMetricFromPosterConfiguration:v8 lockscreenId:v10 modeClient:mEMORY[0x277CEB440]];
        [v32 addObject:?];
        inlineComplication = [v8 inlineComplication];
        v12 = [(ATXLockscreenMetricsCollector *)self _widgetMetricFromComplication:inlineComplication lockscreenId:v10 isLandscape:0];

        if (v12)
        {
          [v6 addObject:v12];
        }

        v34 = v12;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        complications = [v8 complications];
        v14 = [complications countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v41;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v41 != v16)
              {
                objc_enumerationMutation(complications);
              }

              v18 = [(ATXLockscreenMetricsCollector *)self _widgetMetricFromComplication:*(*(&v40 + 1) + 8 * j) lockscreenId:v10 isLandscape:0];
              if (v18)
              {
                [v6 addObject:v18];
              }
            }

            v15 = [complications countByEnumeratingWithState:&v40 objects:v49 count:16];
          }

          while (v15);
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        landscapeComplications = [v8 landscapeComplications];
        v20 = [landscapeComplications countByEnumeratingWithState:&v36 objects:v48 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v37;
          do
          {
            for (k = 0; k != v21; ++k)
            {
              if (*v37 != v22)
              {
                objc_enumerationMutation(landscapeComplications);
              }

              v24 = [(ATXLockscreenMetricsCollector *)self _widgetMetricFromComplication:*(*(&v36 + 1) + 8 * k) lockscreenId:v10 isLandscape:1];
              if (v24)
              {
                [v6 addObject:v24];
              }
            }

            v21 = [landscapeComplications countByEnumeratingWithState:&v36 objects:v48 count:16];
          }

          while (v21);
        }
      }

      v33 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v33);
  }

  if (postCopy)
  {
    [(ATXLockscreenMetricsCollector *)self _postConfigurationMetrics:v32 widgetMetrics:v6 summaryMetric:v27];
  }

  v25 = [(ATXLockscreenMetricsCollector *)self _dailyMetricsDescriptionGivenConfigurationMetrics:v32 widgetMetrics:v6 summaryMetric:v27];

  return v25;
}

- (id)_configurationMetricFromPosterConfiguration:(id)configuration lockscreenId:(id)id modeClient:(id)client
{
  configurationCopy = configuration;
  clientCopy = client;
  idCopy = id;
  v10 = objc_opt_new();
  [v10 setLockscreenId:idCopy];

  font = [configurationCopy font];
  [v10 setFont:font];

  color = [configurationCopy color];
  [v10 setColor:color];

  numberingSystem = [configurationCopy numberingSystem];
  [v10 setNumberingSystem:numberingSystem];

  complications = [configurationCopy complications];
  v15 = [complications count];

  if (v15)
  {
    complications2 = [configurationCopy complications];
    [v10 setNumWidgets:{objc_msgSend(complications2, "count")}];
  }

  landscapeComplications = [configurationCopy landscapeComplications];
  v18 = [landscapeComplications count];

  if (v18)
  {
    landscapeComplications2 = [configurationCopy landscapeComplications];
    [v10 setNumLandscapeWidgets:{objc_msgSend(landscapeComplications2, "count")}];
  }

  [v10 setHasCustomInlineComplication:0];
  inlineComplication = [configurationCopy inlineComplication];

  if (inlineComplication)
  {
    [v10 setHasCustomInlineComplication:1];
  }

  galleryItem = [configurationCopy galleryItem];
  [v10 setSource:{objc_msgSend(galleryItem, "source")}];

  extensionBundleIdentifier = [configurationCopy extensionBundleIdentifier];
  [v10 setExtensionBundleId:extensionBundleIdentifier];

  if ([configurationCopy isActive])
  {
    [v10 setIsSelected:1];
  }

  else
  {
    v23 = objc_alloc(MEMORY[0x277CBEBD0]);
    v24 = [v23 initWithSuiteName:*MEMORY[0x277CEBD00]];
    v25 = [v24 dictionaryForKey:*MEMORY[0x277CEBDD0]];
    posterUUID = [configurationCopy posterUUID];
    v27 = [v25 objectForKeyedSubscript:posterUUID];

    if (v27)
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v29 = objc_opt_new();
      v30 = [currentCalendar dateByAddingUnit:16 value:-7 toDate:v29 options:0];

      if ([v30 compare:v27] == -1)
      {
        [v10 setIsSelected:1];
      }
    }
  }

  modeUUID = [configurationCopy modeUUID];
  if (modeUUID)
  {
    v32 = [clientCopy modeConfigurationForDNDModeWithUUID:modeUUID];
    v33 = v32;
    if (v32)
    {
      mode = [v32 mode];

      if (mode)
      {
        mode2 = [v33 mode];
        [mode2 semanticType];
        v36 = DNDModeSemanticTypeToString();
        [v10 setRelatedFocus:v36];
      }
    }
  }

  return v10;
}

- (id)_widgetMetricFromComplication:(id)complication lockscreenId:(id)id isLandscape:(BOOL)landscape
{
  complicationCopy = complication;
  if (complication)
  {
    landscapeCopy = landscape;
    idCopy = id;
    v8 = complicationCopy;
    complicationCopy = objc_opt_new();
    [complicationCopy setLockscreenId:idCopy];

    extensionBundleIdentifier = [v8 extensionBundleIdentifier];
    [complicationCopy setExtensionBundleId:extensionBundleIdentifier];

    kind = [v8 kind];
    [complicationCopy setKind:kind];

    [complicationCopy setFamily:{objc_msgSend(v8, "widgetFamily")}];
    LODWORD(kind) = [v8 source];

    [complicationCopy setSource:kind];
    [complicationCopy setIsLandscape:landscapeCopy];
  }

  return complicationCopy;
}

- (void)_postConfigurationMetrics:(id)metrics widgetMetrics:(id)widgetMetrics summaryMetric:(id)metric
{
  v29 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  widgetMetricsCopy = widgetMetrics;
  metricCopy = metric;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [metricsCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(metricsCopy);
        }

        [*(*(&v23 + 1) + 8 * v13++) logToCoreAnalytics];
      }

      while (v11 != v13);
      v11 = [metricsCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v11);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = widgetMetricsCopy;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v19 + 1) + 8 * v18++) logToCoreAnalytics];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }

  [metricCopy logToCoreAnalytics];
}

- (id)_dailyMetricsDescriptionGivenConfigurationMetrics:(id)metrics widgetMetrics:(id)widgetMetrics summaryMetric:(id)metric
{
  v43 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  widgetMetricsCopy = widgetMetrics;
  metricCopy = metric;
  v10 = objc_opt_new();
  if ([metricsCopy count])
  {
    [v10 appendString:@"\n------------------------------------------------------\n"];
    v11 = [metricsCopy objectAtIndexedSubscript:0];
    metricName = [v11 metricName];
    [v10 appendString:metricName];

    [v10 appendString:@"\n"];
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = metricsCopy;
  v14 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v38;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(v13);
        }

        coreAnalyticsDictionary = [*(*(&v37 + 1) + 8 * i) coreAnalyticsDictionary];
        v19 = [coreAnalyticsDictionary description];
        [v10 appendString:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v15);
  }

  if ([widgetMetricsCopy count])
  {
    [v10 appendString:@"\n------------------------------------------------------\n"];
    v20 = [widgetMetricsCopy objectAtIndexedSubscript:0];
    metricName2 = [v20 metricName];
    [v10 appendString:metricName2];

    [v10 appendString:@"\n"];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v22 = widgetMetricsCopy;
  v23 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v34;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(v22);
        }

        coreAnalyticsDictionary2 = [*(*(&v33 + 1) + 8 * j) coreAnalyticsDictionary];
        v28 = [coreAnalyticsDictionary2 description];
        [v10 appendString:v28];
      }

      v24 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v24);
  }

  [v10 appendString:@"\n------------------------------------------------------\n"];
  metricName3 = [metricCopy metricName];
  [v10 appendString:metricName3];

  [v10 appendString:@"\n"];
  coreAnalyticsDictionary3 = [metricCopy coreAnalyticsDictionary];
  v31 = [coreAnalyticsDictionary3 description];
  [v10 appendString:v31];

  return v10;
}

- (void)_fillSummaryMetric:(id)metric configurations:(id)configurations
{
  metricCopy = metric;
  configurationsCopy = configurations;
  v6 = objc_alloc(MEMORY[0x277CBEBD0]);
  v7 = [v6 initWithSuiteName:*MEMORY[0x277CEBD00]];
  if (([v7 BOOLForKey:*MEMORY[0x277CEBDB0]] & 1) == 0)
  {
    v10 = metricCopy;
    v11 = 0;
LABEL_8:
    [v10 setEditingUiExperienced:v11];
    goto LABEL_9;
  }

  [metricCopy setEditingUiExperienced:2];
  if (![configurationsCopy count])
  {
    v10 = metricCopy;
    v11 = 1;
    goto LABEL_8;
  }

  if ([configurationsCopy count] != 1)
  {
    goto LABEL_9;
  }

  v8 = [configurationsCopy objectAtIndexedSubscript:0];
  extensionBundleIdentifier = [v8 extensionBundleIdentifier];
  if ([extensionBundleIdentifier isEqualToString:@"com.apple.PaperBoard.LegacyPoster"])
  {

    goto LABEL_13;
  }

  extensionBundleIdentifier2 = [v8 extensionBundleIdentifier];
  v13 = [extensionBundleIdentifier2 isEqualToString:@"com.apple.WallpaperKit.CollectionsPoster"];

  if (v13)
  {
LABEL_13:
    complications = [v8 complications];
    if ([complications count])
    {
    }

    else
    {
      inlineComplication = [v8 inlineComplication];

      if (!inlineComplication)
      {
        [metricCopy setEditingUiExperienced:1];
      }
    }
  }

LABEL_9:
}

- (id)_weeklyRollingIdFromLockscreenId:(id)id
{
  v3 = MEMORY[0x277CBEA80];
  idCopy = id;
  currentCalendar = [v3 currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v12 = 0;
  [currentCalendar rangeOfUnit:0x2000 startDate:&v12 interval:0 forDate:date];
  v7 = v12;
  v8 = [idCopy hash];

  v9 = [v7 hash];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v9 - v8 + 32 * v8];

  return v10;
}

@end