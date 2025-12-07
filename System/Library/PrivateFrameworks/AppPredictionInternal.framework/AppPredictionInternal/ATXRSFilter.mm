@interface ATXRSFilter
- (ATXRSFilter)init;
- (ATXRSFilter)initWithAppLaunchHistogramManager:(id)manager;
- (ATXRSFilter)initWithAppLaunchHistogramManager:(id)manager appLaunches:(id)launches;
- (id)_candidatesByUsingAppLaunchHistogramsToFilterCandidates:(id)candidates;
- (id)filterCandidatesBySuggestionRequirements:(id)requirements;
@end

@implementation ATXRSFilter

- (ATXRSFilter)init
{
  v3 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v4 = [(ATXRSFilter *)self initWithAppLaunchHistogramManager:v3];

  return v4;
}

- (ATXRSFilter)initWithAppLaunchHistogramManager:(id)manager
{
  managerCopy = manager;
  v5 = objc_opt_new();
  v6 = [(ATXRSFilter *)self initWithAppLaunchHistogramManager:managerCopy appLaunches:v5];

  return v6;
}

- (ATXRSFilter)initWithAppLaunchHistogramManager:(id)manager appLaunches:(id)launches
{
  managerCopy = manager;
  launchesCopy = launches;
  v12.receiver = self;
  v12.super_class = ATXRSFilter;
  v9 = [(ATXRSFilter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appLaunchHistogramManager, manager);
    objc_storeStrong(&v10->_appLaunches, launches);
  }

  return v10;
}

- (id)filterCandidatesBySuggestionRequirements:(id)requirements
{
  v37 = *MEMORY[0x277D85DE8];
  requirementsCopy = requirements;
  v28 = objc_opt_new();
  v4 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = requirementsCopy;
  v5 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    v8 = *MEMORY[0x277CEBD00];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        widgetDescriptor = [v10 widgetDescriptor];
        extensionBundleIdentifier = [widgetDescriptor extensionBundleIdentifier];

        v13 = extensionBundleIdentifier;
        v14 = v13;
        v15 = v4;
        if (CFPreferencesGetAppBooleanValue(@"widgetKitDeveloperModeEnabled", @"com.apple.duetexpertd", 0))
        {
          keyExistsAndHasValidFormat[0] = 0;
          if (CFPreferencesGetAppBooleanValue(@"ATXWidgetKitDeveloperModeSkipEntitlementCheck", v8, keyExistsAndHasValidFormat))
          {
          }

          else
          {
            v17 = [MEMORY[0x277CEB3B0] isDebuggingAllowedForExtensionBundleId:v13];

            v15 = v4;
            if (!v17)
            {
              goto LABEL_14;
            }
          }

          v14 = __atxlog_handle_relevant_shortcut(v16);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            widgetDescriptor2 = [v10 widgetDescriptor];
            *keyExistsAndHasValidFormat = 138412290;
            v35 = widgetDescriptor2;
            _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "ATXRSFilter: WidgetKit Developer Mode enabled. Bypassing filtering for debug allowed widget: %@", keyExistsAndHasValidFormat, 0xCu);
          }

          v15 = v28;
        }

LABEL_14:
        [v15 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v6);
  }

  v20 = __atxlog_handle_relevant_shortcut(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *keyExistsAndHasValidFormat = 0;
    _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "ATXRSFilter: Filtering candidates...", keyExistsAndHasValidFormat, 2u);
  }

  v21 = [v4 copy];
  v22 = [(ATXRSFilter *)self _candidatesByUsingAppLaunchHistogramsToFilterCandidates:v21];

  v23 = [v28 arrayByAddingObjectsFromArray:v22];
  v24 = __atxlog_handle_relevant_shortcut(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v23 count];
    *keyExistsAndHasValidFormat = 134217984;
    v35 = v25;
    _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "ATXRSFilter: %lu candidates passed suggestion filters", keyExistsAndHasValidFormat, 0xCu);
  }

  return v23;
}

- (id)_candidatesByUsingAppLaunchHistogramsToFilterCandidates:(id)candidates
{
  v89 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  v5 = objc_opt_new();
  selfCopy = self;
  v67 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:2];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = candidatesCopy;
  v61 = [obj countByEnumeratingWithState:&v74 objects:v88 count:16];
  if (v61)
  {
    v60 = *v75;
    *&v6 = 138412802;
    v56 = v6;
    v7 = @"ATXDateRelevantContext";
    v8 = 0x277CBE000uLL;
    v57 = v5;
    do
    {
      v9 = 0;
      do
      {
        if (*v75 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v62 = v9;
        v10 = *(*(&v74 + 1) + 8 * v9);
        donationBundleIdentifier = [v10 donationBundleIdentifier];
        v12 = [ATXRSWidgetSuggestionProducer replacementContainerBundleIdForDonationBundleId:donationBundleIdentifier];
        v13 = v12;
        if (v12)
        {
          donationBundleIdentifier2 = v12;
        }

        else
        {
          donationBundleIdentifier2 = [v10 donationBundleIdentifier];
        }

        v15 = donationBundleIdentifier2;

        v16 = v15;
        if (([v16 isEqualToString:@"com.apple.Health.Sleep"] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"com.apple.PeopleViewService"))
        {

LABEL_12:
          v17 = v5;
          v18 = v10;
          goto LABEL_13;
        }

        v19 = [v16 isEqualToString:@"com.apple.gamecenter.widgets"];

        if (v19)
        {
          goto LABEL_12;
        }

        v20 = [(ATXAppLaunches *)selfCopy->_appLaunches timesAppHasBeenLaunchedOverLast28Days:v16];
        if (v21 >= 10.0)
        {
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v64 = v10;
          relevantContexts = [v10 relevantContexts];
          v69 = [relevantContexts countByEnumeratingWithState:&v70 objects:v87 count:16];
          if (!v69)
          {

LABEL_41:
            v17 = v5;
            v18 = v64;
LABEL_13:
            [v17 addObject:v18];
            goto LABEL_14;
          }

          v68 = *v71;
          v33 = 1;
          v63 = v16;
          v66 = relevantContexts;
          do
          {
            for (i = 0; i != v69; ++i)
            {
              if (*v71 != v68)
              {
                objc_enumerationMutation(relevantContexts);
              }

              v35 = *(*(&v70 + 1) + 8 * i);
              v36 = NSClassFromString(&v7->isa);
              v37 = v35;
              if (v36)
              {
                if (objc_opt_isKindOfClass())
                {
                  v38 = v37;
                }

                else
                {
                  v38 = 0;
                }
              }

              else
              {
                v38 = 0;
              }

              v39 = v38;

              if (v39)
              {
                v86 = v16;
                v40 = [*(v8 + 2656) arrayWithObjects:&v86 count:1];
                startDate = [v39 startDate];
                LODWORD(v42) = 1.0;
                [v67 totalLaunchesForBundleIds:v40 forDate:startDate distanceScale:v42];
                v44 = v43;

                if (v44 < 4.0)
                {
                  v46 = __atxlog_handle_relevant_shortcut(v45);
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                  {
                    widgetDescriptor = [v64 widgetDescriptor];
                    extensionBundleIdentifier = [widgetDescriptor extensionBundleIdentifier];
                    widgetDescriptor2 = [v64 widgetDescriptor];
                    kind = [widgetDescriptor2 kind];
                    intent = [v64 intent];
                    [intent intentDescription];
                    v52 = v51 = v7;
                    startDate2 = [v39 startDate];
                    *buf = 138413058;
                    v79 = extensionBundleIdentifier;
                    v80 = 2112;
                    v81 = kind;
                    v82 = 2112;
                    v83 = v52;
                    v84 = 2112;
                    v85 = startDate2;
                    _os_log_impl(&dword_2263AA000, v46, OS_LOG_TYPE_DEFAULT, "ATXRSFilter: Candidate (%@ - %@ - %@) failed dayOfWeek filter for start date: %@", buf, 0x2Au);

                    v7 = v51;
                    v16 = v63;

                    v8 = 0x277CBE000;
                  }

                  v33 = 0;
                  relevantContexts = v66;
                }
              }
            }

            v69 = [relevantContexts countByEnumeratingWithState:&v70 objects:v87 count:16];
          }

          while (v69);

          v5 = v57;
          if (v33)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v22 = __atxlog_handle_relevant_shortcut(v20);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            widgetDescriptor3 = [v10 widgetDescriptor];
            extensionBundleIdentifier2 = [widgetDescriptor3 extensionBundleIdentifier];
            widgetDescriptor4 = [v10 widgetDescriptor];
            kind2 = [widgetDescriptor4 kind];
            v27 = v10;
            v28 = kind2;
            intent2 = [v27 intent];
            [intent2 intentDescription];
            v31 = v30 = v16;
            *buf = v56;
            v79 = extensionBundleIdentifier2;
            v80 = 2112;
            v81 = v28;
            v82 = 2112;
            v83 = v31;
            _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "ATXRSFilter: Candidate (%@ - %@ - %@) failed minimum app launch count over last 28 days filter", buf, 0x20u);

            v16 = v30;
            v5 = v57;
          }
        }

LABEL_14:

        v9 = v62 + 1;
      }

      while (v62 + 1 != v61);
      v54 = [obj countByEnumeratingWithState:&v74 objects:v88 count:16];
      v61 = v54;
    }

    while (v54);
  }

  return v5;
}

@end