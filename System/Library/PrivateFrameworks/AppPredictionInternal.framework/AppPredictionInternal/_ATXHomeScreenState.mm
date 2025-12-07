@interface _ATXHomeScreenState
- (BOOL)containsSuggestedWidgetForApp:(id)app;
- (BOOL)containsWidgetForIntent:(id)intent;
- (BOOL)isShowingDuplicatedContentForSuggestion:(id)suggestion considerUnderStackContents:(BOOL)contents dedupeAppSuggestionsByWidgets:(BOOL)widgets ignoreDuplicatesInSGWidget:(BOOL)widget ignoreDuplicatesInPanels:(BOOL)panels ignoreTodayPage:(BOOL)page;
- (_ATXHomeScreenState)initWithSortedHomeScreenPagesByUserLastVisit:(id)visit appsOnDock:(id)dock stackStateTracker:(id)tracker suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters;
@end

@implementation _ATXHomeScreenState

- (_ATXHomeScreenState)initWithSortedHomeScreenPagesByUserLastVisit:(id)visit appsOnDock:(id)dock stackStateTracker:(id)tracker suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters
{
  v37 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  dockCopy = dock;
  trackerCopy = tracker;
  deduplicatorCopy = deduplicator;
  parametersCopy = parameters;
  v35.receiver = self;
  v35.super_class = _ATXHomeScreenState;
  v17 = [(_ATXHomeScreenState *)&v35 init];
  if (v17)
  {
    dockCopy2 = dock;
    v28 = dockCopy;
    v18 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v29 = visitCopy;
    obj = visitCopy;
    v19 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        v22 = 0;
        do
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(obj);
          }

          dockCopy2 = [[_ATXHomeScreenPageState alloc] initWithHomeScreenState:v17 pageConfig:*(*(&v31 + 1) + 8 * v22) stackStateTracker:trackerCopy suggestionDeduplicator:deduplicatorCopy hyperParameters:parametersCopy, dockCopy2];
          [(NSArray *)v18 addObject:dockCopy2];

          ++v22;
        }

        while (v20 != v22);
        v20 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v20);
    }

    sortedPagesByUserLastVisit = v17->_sortedPagesByUserLastVisit;
    v17->_sortedPagesByUserLastVisit = v18;
    v25 = v18;

    objc_storeStrong(&v17->_appsOnDock, dockCopy2);
    dockCopy = v28;
    visitCopy = v29;
  }

  return v17;
}

- (BOOL)isShowingDuplicatedContentForSuggestion:(id)suggestion considerUnderStackContents:(BOOL)contents dedupeAppSuggestionsByWidgets:(BOOL)widgets ignoreDuplicatesInSGWidget:(BOOL)widget ignoreDuplicatesInPanels:(BOOL)panels ignoreTodayPage:(BOOL)page
{
  pageCopy = page;
  panelsCopy = panels;
  widgetCopy = widget;
  widgetsCopy = widgets;
  contentsCopy = contents;
  v31 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_sortedPagesByUserLastVisit;
  v13 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    v22 = *MEMORY[0x277CEBAE8];
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        if (pageCopy)
        {
          config = [*(*(&v26 + 1) + 8 * i) config];
          pageIndex = [config pageIndex];

          if (pageIndex == v22)
          {
            continue;
          }
        }

        if ([v17 isShowingDuplicatedContentForSuggestion:suggestionCopy considerUnderStackContents:contentsCopy dedupeAppSuggestionsByWidgets:widgetsCopy ignoreDuplicatesInSGWidget:widgetCopy ignoreDuplicatesInPanels:{panelsCopy, v22}])
        {
          v20 = 1;
          goto LABEL_13;
        }
      }

      v14 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_13:

  return v20;
}

- (BOOL)containsWidgetForIntent:(id)intent
{
  v15 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_sortedPagesByUserLastVisit;
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
  v5 = self->_sortedPagesByUserLastVisit;
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

@end