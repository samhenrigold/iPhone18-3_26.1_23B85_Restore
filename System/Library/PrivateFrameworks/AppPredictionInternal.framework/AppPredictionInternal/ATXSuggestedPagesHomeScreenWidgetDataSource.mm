@interface ATXSuggestedPagesHomeScreenWidgetDataSource
- (id)provideWidgetsForPageType:(int64_t)type environment:(id)environment;
@end

@implementation ATXSuggestedPagesHomeScreenWidgetDataSource

- (id)provideWidgetsForPageType:(int64_t)type environment:(id)environment
{
  v60 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v5 = objc_alloc_init(MEMORY[0x277CEB568]);
  v6 = [v5 loadHomeScreenPageConfigurationsIncludingHidden:0 error:0];
  if ([v6 count])
  {
    v34 = v5;
    v43 = objc_opt_new();
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v33 = v6;
    obj = v6;
    v37 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v37)
    {
      v36 = *v54;
      do
      {
        v7 = 0;
        do
        {
          if (*v54 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v38 = v7;
          v8 = *(*(&v53 + 1) + 8 * v7);
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          stacks = [v8 stacks];
          v41 = [stacks countByEnumeratingWithState:&v49 objects:v58 count:16];
          if (v41)
          {
            v40 = *v50;
            do
            {
              v9 = 0;
              do
              {
                if (*v50 != v40)
                {
                  objc_enumerationMutation(stacks);
                }

                v42 = v9;
                v10 = *(*(&v49 + 1) + 8 * v9);
                v45 = 0u;
                v46 = 0u;
                v47 = 0u;
                v48 = 0u;
                widgets = [v10 widgets];
                v11 = [widgets countByEnumeratingWithState:&v45 objects:v57 count:16];
                if (v11)
                {
                  v12 = v11;
                  v13 = *v46;
                  do
                  {
                    for (i = 0; i != v12; ++i)
                    {
                      if (*v46 != v13)
                      {
                        objc_enumerationMutation(widgets);
                      }

                      v15 = *(*(&v45 + 1) + 8 * i);
                      appBundleId = [v15 appBundleId];
                      v17 = [appBundleId length];

                      if (v17)
                      {
                        appBundleId2 = [v15 appBundleId];
                        v19 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:appBundleId2];
                        suggestedApps = [environmentCopy suggestedApps];
                        v21 = [suggestedApps containsObject:v19];

                        if (v21)
                        {
                          appLaunchCounts = [environmentCopy appLaunchCounts];
                          v23 = [appLaunchCounts objectForKeyedSubscript:appBundleId2];
                          v24 = environmentCopy;
                          rawLaunchCount = [v23 rawLaunchCount];

                          v26 = rawLaunchCount >= 0xA;
                          environmentCopy = v24;
                          if (v26)
                          {
                            v27 = objc_alloc_init(MEMORY[0x277CEB5B0]);
                            intent = [v15 intent];
                            [v27 setIntent:intent];

                            [v27 setSize:{objc_msgSend(v15, "size")}];
                            widgetKind = [v15 widgetKind];
                            [v27 setWidgetKind:widgetKind];

                            extensionBundleId = [v15 extensionBundleId];
                            [v27 setExtensionBundleId:extensionBundleId];

                            environmentCopy = v24;
                            appBundleId3 = [v15 appBundleId];
                            [v27 setAppBundleId:appBundleId3];

                            [v27 setScore:0.25];
                            [v27 setPredictionSource:@"Home Screen"];
                            [v43 addObject:v27];
                          }
                        }
                      }
                    }

                    v12 = [widgets countByEnumeratingWithState:&v45 objects:v57 count:16];
                  }

                  while (v12);
                }

                v9 = v42 + 1;
              }

              while (v42 + 1 != v41);
              v41 = [stacks countByEnumeratingWithState:&v49 objects:v58 count:16];
            }

            while (v41);
          }

          v7 = v38 + 1;
        }

        while (v38 + 1 != v37);
        v37 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v37);
    }

    v6 = v33;
    v5 = v34;
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

@end