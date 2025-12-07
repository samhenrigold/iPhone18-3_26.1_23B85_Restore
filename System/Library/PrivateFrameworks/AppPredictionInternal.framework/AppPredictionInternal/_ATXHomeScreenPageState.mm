@interface _ATXHomeScreenPageState
- (BOOL)_isShowingApp:(id)app allowFolder:(BOOL)folder;
- (BOOL)containsSGWidget;
- (BOOL)containsSuggestedWidgetForApp:(id)app;
- (BOOL)containsWidgetForIntent:(id)intent;
- (BOOL)isSeldomVisited;
- (BOOL)isShowingDuplicatedContentForSuggestion:(id)suggestion considerUnderStackContents:(BOOL)contents dedupeAppSuggestionsByWidgets:(BOOL)widgets ignoreDuplicatesInSGWidget:(BOOL)widget ignoreDuplicatesInPanels:(BOOL)panels;
- (BOOL)suggestionsWidgetOnPageIsShowingDuplicatedContentForSuggestion:(id)suggestion;
- (_ATXHomeScreenPageState)initWithHomeScreenState:(id)state pageConfig:(id)config stackStateTracker:(id)tracker suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters;
- (_ATXHomeScreenState)homeScreen;
@end

@implementation _ATXHomeScreenPageState

- (_ATXHomeScreenPageState)initWithHomeScreenState:(id)state pageConfig:(id)config stackStateTracker:(id)tracker suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters
{
  v49 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  configCopy = config;
  trackerCopy = tracker;
  deduplicatorCopy = deduplicator;
  parametersCopy = parameters;
  v46.receiver = self;
  v46.super_class = _ATXHomeScreenPageState;
  v17 = [(_ATXHomeScreenPageState *)&v46 init];
  if (v17)
  {
    configCopy2 = config;
    trackerCopy2 = tracker;
    obj = stateCopy;
    v18 = objc_opt_new();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v37 = configCopy;
    stacks = [configCopy stacks];
    v20 = [stacks countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v43;
      do
      {
        v23 = 0;
        do
        {
          if (*v43 != v22)
          {
            objc_enumerationMutation(stacks);
          }

          trackerCopy2 = [[_ATXHomeScreenStackState alloc] initWithPageState:v17 stackConfig:*(*(&v42 + 1) + 8 * v23) stackStateTracker:trackerCopy suggestionDeduplicator:deduplicatorCopy hyperParameters:parametersCopy, configCopy2, trackerCopy2];
          [(NSArray *)v18 addObject:trackerCopy2];

          ++v23;
        }

        while (v21 != v23);
        v21 = [stacks countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v21);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    panels = [v37 panels];
    v26 = [panels countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v39;
      do
      {
        v29 = 0;
        do
        {
          if (*v39 != v28)
          {
            objc_enumerationMutation(panels);
          }

          v30 = [[_ATXHomeScreenStackState alloc] initWithPageState:v17 stackConfig:*(*(&v38 + 1) + 8 * v29) stackStateTracker:trackerCopy suggestionDeduplicator:deduplicatorCopy hyperParameters:parametersCopy];
          [(NSArray *)v18 addObject:v30];

          ++v29;
        }

        while (v27 != v29);
        v27 = [panels countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v27);
    }

    stateCopy = obj;
    objc_storeWeak(&v17->_homeScreen, obj);
    objc_storeStrong(&v17->_config, configCopy2);
    stacks = v17->_stacks;
    v17->_stacks = v18;
    v32 = v18;

    objc_storeStrong(&v17->_stackStateTracker, trackerCopy2);
    configCopy = v37;
  }

  return v17;
}

- (BOOL)isShowingDuplicatedContentForSuggestion:(id)suggestion considerUnderStackContents:(BOOL)contents dedupeAppSuggestionsByWidgets:(BOOL)widgets ignoreDuplicatesInSGWidget:(BOOL)widget ignoreDuplicatesInPanels:(BOOL)panels
{
  panelsCopy = panels;
  widgetCopy = widget;
  widgetsCopy = widgets;
  contentsCopy = contents;
  v66 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType != 1)
  {
    goto LABEL_18;
  }

  executableSpecification2 = [suggestionCopy executableSpecification];
  executableObject = [executableSpecification2 executableObject];

  if (![(NSArray *)executableObject length])
  {
    v18 = __atxlog_handle_blending(0);
    if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_FAULT))
    {
      [_ATXHomeScreenPageState isShowingDuplicatedContentForSuggestion:? considerUnderStackContents:? dedupeAppSuggestionsByWidgets:? ignoreDuplicatesInSGWidget:? ignoreDuplicatesInPanels:?];
    }

LABEL_16:

    goto LABEL_17;
  }

  pageIndex = [(ATXHomeScreenPage *)self->_config pageIndex];
  if (pageIndex != *MEMORY[0x277CEBAE8])
  {
    selfCopy = self;
    WeakRetained = objc_loadWeakRetained(&self->_homeScreen);
    appsOnDock = [WeakRetained appsOnDock];
    v34 = [appsOnDock containsObject:executableObject];

    p_super = __atxlog_handle_blending(v35);
    v37 = os_log_type_enabled(p_super, OS_LOG_TYPE_INFO);
    if (v34)
    {
      if (v37)
      {
        v38 = objc_loadWeakRetained(&selfCopy->_homeScreen);
        appsOnDock2 = [v38 appsOnDock];
        *buf = 138412546;
        v60 = executableObject;
        v61 = 2112;
        v62 = appsOnDock2;
        _os_log_impl(&dword_2263AA000, p_super, OS_LOG_TYPE_INFO, "[HSLS] Bundle id %@ is duplicate in dock: %@", buf, 0x16u);
      }
    }

    else
    {
      if (v37)
      {
        v40 = objc_loadWeakRetained(&selfCopy->_homeScreen);
        appsOnDock3 = [v40 appsOnDock];
        *buf = 138412546;
        v60 = executableObject;
        v61 = 2112;
        v62 = appsOnDock3;
        _os_log_impl(&dword_2263AA000, p_super, OS_LOG_TYPE_INFO, "[HSLS] Bundle id %@ is not duplicate in dock: %@", buf, 0x16u);
      }

      self = selfCopy;
      v42 = [(_ATXHomeScreenPageState *)selfCopy _isShowingApp:executableObject allowFolder:0];
      if (!v42)
      {
        goto LABEL_4;
      }

      p_super = __atxlog_handle_blending(v42);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
      {
        pageIndex2 = [(ATXHomeScreenPage *)selfCopy->_config pageIndex];
        *buf = 138412546;
        v60 = executableObject;
        v61 = 2048;
        v62 = pageIndex2;
        _os_log_impl(&dword_2263AA000, p_super, OS_LOG_TYPE_INFO, "[HSLS] Bundle id %@ is duplicate on page %ld", buf, 0x16u);
      }
    }

LABEL_41:

LABEL_42:
    v30 = 1;
    goto LABEL_43;
  }

LABEL_4:
  if (widgetsCopy)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v18 = self->_stacks;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v54 objects:v65 count:16];
    if (v19)
    {
      v20 = v19;
      selfCopy2 = self;
      v21 = *v55;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v55 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v54 + 1) + 8 * i);
          v24 = [v23 containsWidgetForApp:executableObject];
          if (v24)
          {
            v44 = __atxlog_handle_blending(v24);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
            {
              pageIndex3 = [(ATXHomeScreenPage *)selfCopy2->_config pageIndex];
              config = [v23 config];
              identifier = [config identifier];
              *buf = 138412802;
              v60 = executableObject;
              v61 = 2048;
              v62 = pageIndex3;
              v63 = 2112;
              v64 = identifier;
              _os_log_impl(&dword_2263AA000, v44, OS_LOG_TYPE_INFO, "[HSLS] Bundle id %@ is duplicate on page %ld due to widget in stack %@", buf, 0x20u);
            }

            p_super = &v18->super;
            goto LABEL_41;
          }
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v54 objects:v65 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

      self = selfCopy2;
    }

    goto LABEL_16;
  }

LABEL_17:

LABEL_18:
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  executableObject = self->_stacks;
  v25 = [(NSArray *)executableObject countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v51;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v51 != v27)
        {
          objc_enumerationMutation(executableObject);
        }

        v29 = *(*(&v50 + 1) + 8 * j);
        if (contentsCopy)
        {
          if ([v29 containsIdenticalContentOfSuggestion:suggestionCopy ignoreDuplicatesInSGWidget:widgetCopy ignoreDuplicatesInPanels:panelsCopy])
          {
            goto LABEL_42;
          }
        }

        else if ([v29 topWidgetIsShowingIdenticalContentOfSuggestion:suggestionCopy ignoreDuplicatesInSGWidget:widgetCopy ignoreDuplicatesInPanels:panelsCopy])
        {
          goto LABEL_42;
        }
      }

      v26 = [(NSArray *)executableObject countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v26);
  }

  v30 = 0;
LABEL_43:

  return v30;
}

- (BOOL)containsWidgetForIntent:(id)intent
{
  v15 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_stacks;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) containsWidgetForIntent:{intentCopy, v10}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)containsSuggestedWidgetForApp:(id)app
{
  v15 = *MEMORY[0x277D85DE8];
  appCopy = app;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_stacks;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) containsSuggestedWidgetForApp:{appCopy, v10}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)containsSGWidget
{
  v29 = *MEMORY[0x277D85DE8];
  config = [(_ATXHomeScreenPageState *)self config];
  containsSuggestionsWidget = [config containsSuggestionsWidget];

  if (containsSuggestionsWidget)
  {
    return 1;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_stacks;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        suggestedWidgets = [v11 suggestedWidgets];
        v13 = [suggestedWidgets countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v20;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v20 != v15)
              {
                objc_enumerationMutation(suggestedWidgets);
              }

              v17 = *(*(&v19 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && ([v17 isLayoutComplete])
              {

                v5 = 1;
                goto LABEL_22;
              }
            }

            v14 = [suggestedWidgets countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      v5 = 0;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

LABEL_22:

  return v5;
}

- (BOOL)suggestionsWidgetOnPageIsShowingDuplicatedContentForSuggestion:(id)suggestion
{
  v29 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_stacks;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        suggestionsWidgetSuggestionsByWidgetUniqueId = [v10 suggestionsWidgetSuggestionsByWidgetUniqueId];
        allValues = [suggestionsWidgetSuggestionsByWidgetUniqueId allValues];

        v13 = [allValues countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v20;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v20 != v15)
              {
                objc_enumerationMutation(allValues);
              }

              if ([*(*(&v19 + 1) + 8 * j) containsIdenticalContentOfSuggestion:suggestionCopy])
              {

                v17 = 1;
                goto LABEL_19;
              }
            }

            v14 = [allValues countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      v17 = 0;
    }

    while (v7);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (BOOL)isSeldomVisited
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [(ATXStackStateTracker *)self->_stackStateTracker lastThreeUserVisitDatesOfPage:[(ATXHomeScreenPage *)self->_config pageIndex]];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v11 + 1) + 8 * i) timeIntervalSinceNow];
        if (v8 > -86400.0)
        {
          ++v5;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
    v9 = v5 < 3;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)_isShowingApp:(id)app allowFolder:(BOOL)folder
{
  folderCopy = folder;
  appCopy = app;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  config = self->_config;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53___ATXHomeScreenPageState__isShowingApp_allowFolder___block_invoke;
  v10[3] = &unk_27859EFD0;
  v8 = appCopy;
  v11 = v8;
  v12 = &v13;
  [(ATXHomeScreenPage *)config enumerateAppsConsideringFolders:folderCopy block:v10];
  LOBYTE(folderCopy) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return folderCopy;
}

- (_ATXHomeScreenState)homeScreen
{
  WeakRetained = objc_loadWeakRetained(&self->_homeScreen);

  return WeakRetained;
}

@end