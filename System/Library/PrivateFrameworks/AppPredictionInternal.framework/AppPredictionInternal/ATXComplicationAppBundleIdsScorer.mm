@interface ATXComplicationAppBundleIdsScorer
- (ATXComplicationAppBundleIdsScorer)init;
- (id)_scoredComplicationBundleIdsForModularSet:(id)set bundleIdToAppLaunchData:(id)data bundleIdToCompanionBundleId:(id)id bundleIdToPriors:(id)priors widgetAppBundleIdsOnHomeScreen:(id)screen complicationBundleIdCountsOnWatch:(id)watch;
- (id)_widgetAppBundleIdsOnHomeScreen;
- (id)inputDescriptionForSignal:(id)signal complicationAppBundleIds:(id)ids;
- (id)rankedComplicationAppBundleIdsGivenComplicationAppBundleIds:(id)ids bundleIdToAppLaunchData:(id)data bundleIdToCompanionBundleId:(id)id bundleIdToPriors:(id)priors widgetAppBundleIdsOnHomeScreen:(id)screen;
- (id)scoredComplicationBundleIdsForModularSet:(id)set aggregatedAppLaunchData:(id)data bundleIdToCompanionBundleId:(id)id;
@end

@implementation ATXComplicationAppBundleIdsScorer

- (ATXComplicationAppBundleIdsScorer)init
{
  v14.receiver = self;
  v14.super_class = ATXComplicationAppBundleIdsScorer;
  v2 = [(ATXComplicationAppBundleIdsScorer *)&v14 init];
  if (v2)
  {
    v3 = BiomeLibrary();
    v4 = [v3 App];
    inFocus = [v4 InFocus];
    appLaunchStream = v2->_appLaunchStream;
    v2->_appLaunchStream = inFocus;

    v7 = +[ATXComplicationSuggestionParameters sharedInstance];
    parameters = v2->_parameters;
    v2->_parameters = v7;

    v9 = objc_opt_new();
    hsCache = v2->_hsCache;
    v2->_hsCache = v9;

    mEMORY[0x277CEB988] = [MEMORY[0x277CEB988] sharedInstance];
    watchFaceConfiguration = v2->_watchFaceConfiguration;
    v2->_watchFaceConfiguration = mEMORY[0x277CEB988];
  }

  return v2;
}

- (id)inputDescriptionForSignal:(id)signal complicationAppBundleIds:(id)ids
{
  v46 = *MEMORY[0x277D85DE8];
  signalCopy = signal;
  idsCopy = ids;
  v8 = objc_opt_new();
  v9 = v8;
  if ([signalCopy isEqualToString:@"appLaunchUniqueDays"])
  {
    v34 = signalCopy;
    v10 = [objc_alloc(MEMORY[0x277CEB388]) initWithStream:self->_appLaunchStream];
    v11 = [v10 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForApps:idsCopy];

    [v8 appendString:@"Number of unique days bundleId was launched on:\n"];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v33 = idsCopy;
    obj = idsCopy;
    v12 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v41;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v41 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v40 + 1) + 8 * i);
          v17 = [v11 objectForKeyedSubscript:v16];
          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %lu\n", v16, objc_msgSend(v17, "uniqueDaysLaunched")];
          v8 = v9;
          [v9 appendString:v18];
        }

        v13 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v13);
    }

LABEL_18:

    idsCopy = v33;
    signalCopy = v34;
    goto LABEL_19;
  }

  if ([signalCopy isEqualToString:@"appLaunchTotalCount"])
  {
    v34 = signalCopy;
    v19 = [objc_alloc(MEMORY[0x277CEB388]) initWithStream:self->_appLaunchStream];
    v11 = [v19 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForApps:idsCopy];

    [v8 appendString:@"Number of bundleId launches:\n"];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v33 = idsCopy;
    obj = idsCopy;
    v20 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v37;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v37 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v36 + 1) + 8 * j);
          v25 = [v11 objectForKeyedSubscript:v24];
          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %lu\n", v24, objc_msgSend(v25, "rawLaunchCount")];
          v8 = v9;
          [v9 appendString:v26];
        }

        v21 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v21);
    }

    goto LABEL_18;
  }

  if ([signalCopy isEqualToString:@"preConfiguredWidgets"])
  {
    _widgetAppBundleIdsOnHomeScreen = [(ATXComplicationAppBundleIdsScorer *)self _widgetAppBundleIdsOnHomeScreen];
    v29 = @"Widget app bundleIds configured on HomeScreen:\n";
LABEL_26:
    [v8 appendString:v29];
    v30 = [_widgetAppBundleIdsOnHomeScreen description];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = &stru_2839A6058;
    }

    [v8 appendString:v32];

    goto LABEL_19;
  }

  if ([signalCopy isEqualToString:@"appPriors"])
  {
    _widgetAppBundleIdsOnHomeScreen = [(ATXComplicationSuggestionParameters *)self->_parameters appsToPriorsMapping];
    v29 = @"Prior values for bundleIds:\n";
    goto LABEL_26;
  }

  [v8 appendString:@"Unrecognized Signal"];
LABEL_19:

  return v8;
}

- (id)scoredComplicationBundleIdsForModularSet:(id)set aggregatedAppLaunchData:(id)data bundleIdToCompanionBundleId:(id)id
{
  v30 = *MEMORY[0x277D85DE8];
  setCopy = set;
  dataCopy = data;
  idCopy = id;
  _widgetAppBundleIdsOnHomeScreen = [(ATXComplicationAppBundleIdsScorer *)self _widgetAppBundleIdsOnHomeScreen];
  appsToPriorsMapping = [(ATXComplicationSuggestionParameters *)self->_parameters appsToPriorsMapping];
  watchFaces = [(ATXWatchFaceConfigurationCollector *)self->_watchFaceConfiguration watchFaces];
  v11 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = watchFaces;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      v16 = 0;
      v17 = v11;
      do
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        complications = [*(*(&v25 + 1) + 8 * v16) complications];
        v11 = [v17 arrayByAddingObjectsFromArray:complications];

        ++v16;
        v17 = v11;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  v19 = [objc_alloc(MEMORY[0x277CCA940]) initWithArray:v11];
  v20 = [(ATXComplicationAppBundleIdsScorer *)self _scoredComplicationBundleIdsForModularSet:setCopy bundleIdToAppLaunchData:dataCopy bundleIdToCompanionBundleId:idCopy bundleIdToPriors:appsToPriorsMapping widgetAppBundleIdsOnHomeScreen:_widgetAppBundleIdsOnHomeScreen complicationBundleIdCountsOnWatch:v19];

  return v20;
}

- (id)rankedComplicationAppBundleIdsGivenComplicationAppBundleIds:(id)ids bundleIdToAppLaunchData:(id)data bundleIdToCompanionBundleId:(id)id bundleIdToPriors:(id)priors widgetAppBundleIdsOnHomeScreen:(id)screen
{
  screenCopy = screen;
  priorsCopy = priors;
  idCopy = id;
  dataCopy = data;
  idsCopy = ids;
  v17 = objc_opt_new();
  v18 = [(ATXComplicationAppBundleIdsScorer *)self _scoredComplicationBundleIdsForModularSet:idsCopy bundleIdToAppLaunchData:dataCopy bundleIdToCompanionBundleId:idCopy bundleIdToPriors:priorsCopy widgetAppBundleIdsOnHomeScreen:screenCopy complicationBundleIdCountsOnWatch:v17];

  v19 = [v18 keysSortedByValueUsingComparator:&__block_literal_global_156];

  return v19;
}

- (id)_scoredComplicationBundleIdsForModularSet:(id)set bundleIdToAppLaunchData:(id)data bundleIdToCompanionBundleId:(id)id bundleIdToPriors:(id)priors widgetAppBundleIdsOnHomeScreen:(id)screen complicationBundleIdCountsOnWatch:(id)watch
{
  v44 = *MEMORY[0x277D85DE8];
  setCopy = set;
  dataCopy = data;
  idCopy = id;
  priorsCopy = priors;
  screenCopy = screen;
  watchCopy = watch;
  v35 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = setCopy;
  v15 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v40;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v39 + 1) + 8 * i);
        v20 = [dataCopy objectForKeyedSubscript:v19];
        v21 = [priorsCopy objectForKeyedSubscript:v19];
        v22 = [screenCopy containsObject:v19];
        v23 = [idCopy objectForKeyedSubscript:v19];
        v24 = [watchCopy countForObject:v19];
        if (v23)
        {
          v24 = v24 + [watchCopy countForObject:v23];
        }

        v25 = MEMORY[0x277CCABB0];
        uniqueDaysLaunched = [v20 uniqueDaysLaunched];
        v27 = [v20 rawLaunchCount] / 5.0 + uniqueDaysLaunched;
        [v21 doubleValue];
        v29 = v28 / 100.0 + v27;
        if (v22)
        {
          v30 = 3.0;
        }

        else
        {
          v30 = 0.0;
        }

        v31 = [v25 numberWithDouble:v30 + v29 + v24 * 2.0];
        [v35 setObject:v31 forKeyedSubscript:v19];
      }

      v16 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v16);
  }

  return v35;
}

- (id)_widgetAppBundleIdsOnHomeScreen
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [(ATXHomeScreenConfigCache *)self->_hsCache loadHomeScreenPageConfigurationsWithError:0];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v40 = 0u;
  v25 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v25)
  {
    v24 = *v38;
    do
    {
      v4 = 0;
      do
      {
        if (*v38 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v4;
        v5 = *(*(&v37 + 1) + 8 * v4);
        context = objc_autoreleasePoolPush();
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        stacks = [v5 stacks];
        panels = [v5 panels];
        v8 = [stacks arrayByAddingObjectsFromArray:panels];

        v28 = v8;
        v9 = [v8 countByEnumeratingWithState:&v33 objects:v42 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v34;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v34 != v11)
              {
                objc_enumerationMutation(v28);
              }

              v13 = *(*(&v33 + 1) + 8 * i);
              v29 = 0u;
              v30 = 0u;
              v31 = 0u;
              v32 = 0u;
              widgets = [v13 widgets];
              v15 = [widgets countByEnumeratingWithState:&v29 objects:v41 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v30;
                do
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v30 != v17)
                    {
                      objc_enumerationMutation(widgets);
                    }

                    v19 = *(*(&v29 + 1) + 8 * j);
                    appBundleId = [v19 appBundleId];

                    if (appBundleId)
                    {
                      appBundleId2 = [v19 appBundleId];
                      [v3 addObject:appBundleId2];
                    }
                  }

                  v16 = [widgets countByEnumeratingWithState:&v29 objects:v41 count:16];
                }

                while (v16);
              }
            }

            v10 = [v28 countByEnumeratingWithState:&v33 objects:v42 count:16];
          }

          while (v10);
        }

        objc_autoreleasePoolPop(context);
        v4 = v27 + 1;
      }

      while (v27 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v25);
  }

  return v3;
}

@end