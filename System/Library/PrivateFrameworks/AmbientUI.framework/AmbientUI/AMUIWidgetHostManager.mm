@interface AMUIWidgetHostManager
- (AMUIWidgetHostManager)init;
- (AMUIWidgetHostManagerDelegate)delegate;
- (id)_containerDescriptorForWidgetIcon:(id)icon atLocation:(int64_t)location page:(unint64_t)page;
- (id)_descriptionForArray:(id)array name:(id)name;
- (id)_rateLimitPolicies;
- (void)_rebuildAndTransmitConfiguredWidgetData:(id)data;
- (void)dealloc;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserAddedWidgetIconStackSuggestion:(id)suggestion;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserDislikedSiriSuggestionOnWidgetIconStackSuggestion:(id)suggestion;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserDislikedWidgetIconStackSuggestion:(id)suggestion;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserTappedWidgetIcon:(id)icon withURL:(id)l;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconAdded:(id)added;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconRemoved:(id)removed;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconStackChangedActiveWidget:(id)widget;
- (void)homeScreenUsageAggregatorAddWidgetSheetWillPresent:(id)present;
@end

@implementation AMUIWidgetHostManager

- (AMUIWidgetHostManager)init
{
  v11.receiver = self;
  v11.super_class = AMUIWidgetHostManager;
  v2 = [(AMUIWidgetHostManager *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D661E8]);
    v4 = objc_alloc_init(AMUIInfographListLayoutProvider);
    [v3 setListLayoutProvider:v4];
    [v3 setUsageMonitoringEnabled:1];
    usageMonitor = [v3 usageMonitor];
    [usageMonitor addObserver:v2];

    iconManager = v2->_iconManager;
    v2->_iconManager = v3;
    v7 = v3;

    v8 = [objc_alloc(MEMORY[0x277CFA3D0]) initWithIdentifier:@"Ambient-Infograph"];
    widgetHost = v2->_widgetHost;
    v2->_widgetHost = v8;

    [(AMUIWidgetHostManager *)v2 _rebuildAndTransmitConfiguredWidgetData:v7];
  }

  return v2;
}

- (void)dealloc
{
  [(CHSWidgetHost *)self->_widgetHost deactivate];
  [(CHSWidgetHost *)self->_widgetHost invalidate];
  v3.receiver = self;
  v3.super_class = AMUIWidgetHostManager;
  [(AMUIWidgetHostManager *)&v3 dealloc];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconAdded:(id)added
{
  v13 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  aggregatorCopy = aggregator;
  v8 = AMUILogWidgets(aggregatorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    widgets = [addedCopy widgets];
    v11 = 138412290;
    v12 = widgets;
    _os_log_impl(&dword_23F38B000, v8, OS_LOG_TYPE_DEFAULT, "Widget icon added: %@", &v11, 0xCu);
  }

  iconManager = [aggregatorCopy iconManager];

  [(AMUIWidgetHostManager *)self _rebuildAndTransmitConfiguredWidgetData:iconManager];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconRemoved:(id)removed
{
  v13 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  aggregatorCopy = aggregator;
  v8 = AMUILogWidgets(aggregatorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    widgets = [removedCopy widgets];
    v11 = 138412290;
    v12 = widgets;
    _os_log_impl(&dword_23F38B000, v8, OS_LOG_TYPE_DEFAULT, "Widget icon removed: %@", &v11, 0xCu);
  }

  iconManager = [aggregatorCopy iconManager];

  [(AMUIWidgetHostManager *)self _rebuildAndTransmitConfiguredWidgetData:iconManager];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconStackChangedActiveWidget:(id)widget
{
  v17 = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  aggregatorCopy = aggregator;
  v8 = AMUILogWidgets(aggregatorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    activeDataSource = [widgetCopy activeDataSource];
    widgets = [widgetCopy widgets];
    v13 = 138412546;
    v14 = activeDataSource;
    v15 = 2112;
    v16 = widgets;
    _os_log_impl(&dword_23F38B000, v8, OS_LOG_TYPE_DEFAULT, "Widget icon stack changed active widget: %@ all widgets: %@", &v13, 0x16u);
  }

  iconManager = [aggregatorCopy iconManager];

  [(AMUIWidgetHostManager *)self _rebuildAndTransmitConfiguredWidgetData:iconManager];
  delegate = [(AMUIWidgetHostManager *)self delegate];
  [delegate widgetHostManager:self didNoteStackChangedActiveWidget:widgetCopy];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserAddedWidgetIconStackSuggestion:(id)suggestion
{
  v9 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v5 = AMUILogWidgets(suggestionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    widgets = [suggestionCopy widgets];
    v7 = 138412290;
    v8 = widgets;
    _os_log_impl(&dword_23F38B000, v5, OS_LOG_TYPE_DEFAULT, "Widget icon stack noted user added suggestion: %@", &v7, 0xCu);
  }
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserDislikedWidgetIconStackSuggestion:(id)suggestion
{
  v9 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v5 = AMUILogWidgets(suggestionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    widgets = [suggestionCopy widgets];
    v7 = 138412290;
    v8 = widgets;
    _os_log_impl(&dword_23F38B000, v5, OS_LOG_TYPE_DEFAULT, "Widget icon stack noted user dislike of suggestion: %@", &v7, 0xCu);
  }
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserDislikedSiriSuggestionOnWidgetIconStackSuggestion:(id)suggestion
{
  v9 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v5 = AMUILogWidgets(suggestionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    widgets = [suggestionCopy widgets];
    v7 = 138412290;
    v8 = widgets;
    _os_log_impl(&dword_23F38B000, v5, OS_LOG_TYPE_DEFAULT, "Widget icon stack noted dislike of Siri Suggestion on suggestion: %@", &v7, 0xCu);
  }
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserTappedWidgetIcon:(id)icon withURL:(id)l
{
  v10 = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  v6 = AMUILogWidgets(iconCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    widgets = [iconCopy widgets];
    v8 = 138412290;
    v9 = widgets;
    _os_log_impl(&dword_23F38B000, v6, OS_LOG_TYPE_DEFAULT, "Widget icon tapped: %@", &v8, 0xCu);
  }
}

- (void)homeScreenUsageAggregatorAddWidgetSheetWillPresent:(id)present
{
  v4 = AMUILogWidgets(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_23F38B000, v4, OS_LOG_TYPE_DEFAULT, "Add Widget sheet will present", v8, 2u);
  }

  v5 = objc_alloc_init(MEMORY[0x277CFA280]);
  widgetHost = [(AMUIWidgetHostManager *)self widgetHost];
  identifier = [widgetHost identifier];
  [v5 userEnteredAddGalleryForHost:identifier];
}

- (void)_rebuildAndTransmitConfiguredWidgetData:(id)data
{
  dataCopy = data;
  v5 = [(AMUIWidgetHostManager *)self widgetDataGeneration]+ 1;
  [(AMUIWidgetHostManager *)self setWidgetDataGeneration:v5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__AMUIWidgetHostManager__rebuildAndTransmitConfiguredWidgetData___block_invoke;
  v7[3] = &unk_278C76270;
  v8 = dataCopy;
  v9 = v5;
  v7[4] = self;
  v6 = dataCopy;
  [v6 performAfterCachingWidgetIntentsUsingBlock:v7];
}

void __65__AMUIWidgetHostManager__rebuildAndTransmitConfiguredWidgetData___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2 == [*(a1 + 32) widgetDataGeneration])
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v4 = [*(a1 + 40) rootFolder];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__AMUIWidgetHostManager__rebuildAndTransmitConfiguredWidgetData___block_invoke_2;
    v15[3] = &unk_278C76248;
    v5 = v4;
    v6 = *(a1 + 32);
    v16 = v5;
    v17 = v6;
    v7 = v3;
    v18 = v7;
    v8 = AMUILogWidgets([v5 enumerateAllIconsWithOptions:2 usingBlock:v15]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) _descriptionForArray:v7 name:@"containers"];
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&dword_23F38B000, v8, OS_LOG_TYPE_DEFAULT, "Configured widgets changed: %@", buf, 0xCu);
    }

    v10 = [*(a1 + 32) iconManager];
    v11 = [v10 widgetMetricsProvider];

    if (objc_opt_respondsToSelector())
    {
      [v11 systemDefaultMetricsSpecificationForFamilies:2];
    }

    else
    {
      [v11 systemDefaultMetricsSpecification];
    }
    v12 = ;
    v13 = [objc_alloc(MEMORY[0x277CFA2B0]) initWithContainerDescriptors:v7 metricsSpecification:v12];
    v14 = [*(a1 + 32) _rateLimitPolicies];
    [v13 setRateLimitPolicies:v14];

    [*(*(a1 + 32) + 16) setConfiguration:v13];
  }
}

void __65__AMUIWidgetHostManager__rebuildAndTransmitConfiguredWidgetData___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_class();
  v11 = v5;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v11;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [a1[5] _containerDescriptorForWidgetIcon:v9 atLocation:5 page:{objc_msgSend(a1[4], "visibleIndexForIndex:", objc_msgSend(v6, "indexAtPosition:", 0))}];
    if (v10)
    {
      [a1[6] addObject:v10];
    }
  }
}

- (id)_rateLimitPolicies
{
  v2 = [objc_alloc(MEMORY[0x277CFA400]) initWithMaximumRefreshes:1 perWindow:600.0];
  v3 = objc_alloc(MEMORY[0x277CFA408]);
  v4 = [MEMORY[0x277CBEB98] setWithObject:v2];
  v5 = [v3 initWithIdentifier:@"AMUIActiveWidgetRateLimitPolicyIdentifier" rateLimits:v4];

  v6 = [objc_alloc(MEMORY[0x277CFA400]) initWithMaximumRefreshes:1 perWindow:1200.0];
  v7 = objc_alloc(MEMORY[0x277CFA408]);
  v8 = [MEMORY[0x277CBEB98] setWithObject:v6];
  v9 = [v7 initWithIdentifier:@"AMUIInactiveWidgetRateLimitPolicyIdentifier" rateLimits:v8];

  v10 = [MEMORY[0x277CBEB98] setWithObjects:{v5, v9, 0}];

  return v10;
}

- (id)_containerDescriptorForWidgetIcon:(id)icon atLocation:(int64_t)location page:(unint64_t)page
{
  v52 = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  array = [MEMORY[0x277CBEB18] array];
  gridSizeClass = [iconCopy gridSizeClass];
  v41 = CHSWidgetFamilyForSBHIconGridSizeClass();
  widgets = [iconCopy widgets];
  activeWidget = [iconCopy activeWidget];
  uniqueIdentifier = [activeWidget uniqueIdentifier];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = widgets;
  v43 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v43)
  {
    v39 = *v45;
    v40 = iconCopy;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v45 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v44 + 1) + 8 * i);
        iconManager = [(AMUIWidgetHostManager *)self iconManager];
        v12 = [iconManager intentForWidget:v10 ofIcon:iconCopy];

        v13 = objc_alloc(MEMORY[0x277CFA358]);
        extensionBundleIdentifier = [v10 extensionBundleIdentifier];
        containerBundleIdentifier = [v10 containerBundleIdentifier];
        kind = [v10 kind];
        v17 = [v13 initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier kind:kind family:v41 intent:v12];

        iconManager2 = [(AMUIWidgetHostManager *)self iconManager];
        widgetMetricsProvider = [iconManager2 widgetMetricsProvider];
        v20 = [widgetMetricsProvider systemMetricsForWidget:v17];

        v21 = objc_alloc(MEMORY[0x277CFA288]);
        uniqueIdentifier2 = [v10 uniqueIdentifier];
        v23 = [v21 initWithUniqueIdentifier:uniqueIdentifier2 widget:v17 metrics:v20];

        [v23 setSuggestion:{objc_msgSend(v10, "suggestionSource") == 1}];
        [v23 setSystemConfigured:{objc_msgSend(v10, "suggestionSource") == 2}];
        [v23 setSupportedColorSchemes:2];
        v24 = [objc_alloc(MEMORY[0x277CFA430]) initWithRenderingMode:1 backgroundViewPolicy:1];
        v25 = [objc_alloc(MEMORY[0x277CFA430]) initWithRenderingMode:0 backgroundViewPolicy:1];
        v50[0] = v24;
        v50[1] = v25;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
        [v23 setSupportedRenderSchemes:v26];

        uniqueIdentifier3 = [v10 uniqueIdentifier];
        LODWORD(v10) = [uniqueIdentifier3 isEqualToString:uniqueIdentifier];

        if (v10)
        {
          v28 = @"AMUIActiveWidgetRateLimitPolicyIdentifier";
        }

        else
        {
          v28 = @"AMUIInactiveWidgetRateLimitPolicyIdentifier";
        }

        v29 = [(AMUIWidgetHostManager *)self _refreshStrategyForIdentifier:v28];
        [v23 setRefreshStrategy:v29];
        if (v23)
        {
          v30 = AMUILogWidgets([array addObject:v23]);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v49 = v23;
            _os_log_impl(&dword_23F38B000, v30, OS_LOG_TYPE_DEFAULT, "Found configured widget: %@", buf, 0xCu);
          }
        }

        iconCopy = v40;
      }

      v43 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v43);
  }

  if ([array count])
  {
    v31 = objc_alloc(MEMORY[0x277CFA1E0]);
    uniqueIdentifier4 = [iconCopy uniqueIdentifier];
    v33 = uniqueIdentifier;
    v34 = [v31 initWithUniqueIdentifier:uniqueIdentifier4 location:uniqueIdentifier canAppearInSecureEnvironment:? page:? family:? widgets:? activeWidget:?];
  }

  else
  {
    v34 = 0;
    v33 = uniqueIdentifier;
  }

  return v34;
}

- (id)_descriptionForArray:(id)array name:(id)name
{
  v5 = MEMORY[0x277CF0C00];
  nameCopy = name;
  arrayCopy = array;
  v8 = [v5 builderWithObject:0];
  [v8 appendArraySection:arrayCopy withName:nameCopy skipIfEmpty:0];

  build = [v8 build];

  return build;
}

- (AMUIWidgetHostManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end