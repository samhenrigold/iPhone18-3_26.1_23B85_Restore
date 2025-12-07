@interface ATXStackRotationSessionManager
- (ATXStackRotationSessionManager)init;
- (ATXStackRotationSessionManager)initWithCoder:(id)coder;
- (ATXStackRotationSessionManager)initWithStackIdToStackRotationSessions:(id)sessions completedSessions:(id)completedSessions recentHomeScreenCachedSuggestions:(id)suggestions nPlusOneSuggestionUUIDsWithFirstRotation:(id)rotation;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXStackRotationSessionManager:(id)manager;
- (id)removeAllAndReturnCompletedSystemSuggestSessions;
- (id)removeAndReturnCompletedSessions;
- (id)uuidsOfNPlusOneSuggestionsFromCachedSuggestions:(id)suggestions;
- (void)_tryEndStackRotationSessionWithStackId:(id)id homeScreenEvent:(id)event;
- (void)_tryPruneSessionsOverMaxLimit;
- (void)_tryStartStackRotationSessionWithStackId:(id)id homeScreenEvent:(id)event;
- (void)_tryUpdateNPlusOneStatusForSession:(id)session stackId:(id)id;
- (void)_tryUpdateStackRotationSessionWithSystemSuggestLayout:(id)layout;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithBlendingUICacheUpdate:(id)update;
- (void)updateWithUIEvent:(id)event;
@end

@implementation ATXStackRotationSessionManager

- (ATXStackRotationSessionManager)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(ATXStackRotationSessionManager *)self initWithStackIdToStackRotationSessions:v3 completedSessions:v4 recentHomeScreenCachedSuggestions:v5 nPlusOneSuggestionUUIDsWithFirstRotation:v6];

  return v7;
}

- (ATXStackRotationSessionManager)initWithStackIdToStackRotationSessions:(id)sessions completedSessions:(id)completedSessions recentHomeScreenCachedSuggestions:(id)suggestions nPlusOneSuggestionUUIDsWithFirstRotation:(id)rotation
{
  sessionsCopy = sessions;
  completedSessionsCopy = completedSessions;
  suggestionsCopy = suggestions;
  rotationCopy = rotation;
  v18.receiver = self;
  v18.super_class = ATXStackRotationSessionManager;
  v15 = [(ATXStackRotationSessionManager *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_stackIdToStackRotationSessions, sessions);
    objc_storeStrong(&v16->_completedSessions, completedSessions);
    objc_storeStrong(&v16->_recentHomeScreenCachedSuggestions, suggestions);
    objc_storeStrong(&v16->_nPlusOneSuggestionUUIDsWithFirstRotation, rotation);
  }

  return v16;
}

- (void)_tryPruneSessionsOverMaxLimit
{
  v3 = [(NSMutableDictionary *)self->_stackIdToStackRotationSessions count];
  if (v3 > kATXStackRotationSessionManagerMaxConcurrentSessions)
  {
    [(NSMutableDictionary *)self->_stackIdToStackRotationSessions removeAllObjects];
  }

  v4 = [(NSMutableSet *)self->_nPlusOneSuggestionUUIDsWithFirstRotation count];
  if (v4 > kATXStackRotationSessionManagerMaxConcurrentNPlusOneSuggestions)
  {
    nPlusOneSuggestionUUIDsWithFirstRotation = self->_nPlusOneSuggestionUUIDsWithFirstRotation;

    [(NSMutableSet *)nPlusOneSuggestionUUIDsWithFirstRotation removeAllObjects];
  }
}

- (void)_tryEndStackRotationSessionWithStackId:(id)id homeScreenEvent:(id)event
{
  v20 = *MEMORY[0x277D85DE8];
  idCopy = id;
  eventCopy = event;
  v8 = eventCopy;
  if (idCopy && eventCopy)
  {
    v9 = [(NSMutableDictionary *)self->_stackIdToStackRotationSessions objectForKey:idCopy];
    v10 = v9;
    if (v9)
    {
      [v9 finalizeWithEndingStackChangeEvent:v8];
      [(NSMutableDictionary *)self->_stackIdToStackRotationSessions removeObjectForKey:idCopy];
      v11 = __atxlog_handle_metrics([(NSMutableArray *)self->_completedSessions addObject:v10]);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [ATXStackRotationSessionManager _tryEndStackRotationSessionWithStackId:homeScreenEvent:];
      }
    }
  }

  else
  {
    v10 = __atxlog_handle_metrics(eventCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = 138412802;
      v15 = v13;
      v16 = 2112;
      v17 = idCopy;
      v18 = 2112;
      v19 = v8;
      _os_log_error_impl(&dword_2263AA000, v10, OS_LOG_TYPE_ERROR, "%@ - could not end session because of missing fields, stackId: %@, homeScreenEvent: %@", &v14, 0x20u);
    }
  }
}

- (void)_tryStartStackRotationSessionWithStackId:(id)id homeScreenEvent:(id)event
{
  v23 = *MEMORY[0x277D85DE8];
  idCopy = id;
  eventCopy = event;
  v8 = eventCopy;
  if (idCopy && eventCopy && ([eventCopy reason], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    [(ATXStackRotationSessionManager *)self _tryPruneSessionsOverMaxLimit];
    v10 = [[ATXStackRotationSession alloc] initWithStartingStackChangeEvent:v8];
    [(ATXStackRotationSessionManager *)self _tryUpdateStackRotationSessionWithSystemSuggestLayout:v10];
    [(ATXStackRotationSessionManager *)self _tryUpdateNPlusOneStatusForSession:v10 stackId:idCopy];
    v11 = __atxlog_handle_metrics([(NSMutableDictionary *)self->_stackIdToStackRotationSessions setValue:v10 forKey:idCopy]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ATXStackRotationSessionManager _tryStartStackRotationSessionWithStackId:homeScreenEvent:];
    }
  }

  else
  {
    v10 = __atxlog_handle_metrics(eventCopy);
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      reason = [v8 reason];
      v15 = 138413058;
      v16 = v13;
      v17 = 2112;
      v18 = idCopy;
      v19 = 2112;
      v20 = reason;
      v21 = 2112;
      v22 = v8;
      _os_log_error_impl(&dword_2263AA000, &v10->super, OS_LOG_TYPE_ERROR, "%@ - could not start session because of missing fields, stackId: %@, reason: %@, homeScreenEvent: %@", &v15, 0x2Au);
    }
  }
}

- (void)updateWithUIEvent:(id)event
{
  homeScreenEvent = [event homeScreenEvent];
  v5 = homeScreenEvent;
  if (homeScreenEvent)
  {
    eventTypeString = [homeScreenEvent eventTypeString];
    if ([eventTypeString isEqualToString:@"Unknown"])
    {
      v7 = 0;
    }

    else if ([eventTypeString isEqualToString:@"HomeScreenPageShown"])
    {
      v7 = 1;
    }

    else if ([eventTypeString isEqualToString:@"HomeScreenDisappeared"])
    {
      v7 = 2;
    }

    else if ([eventTypeString isEqualToString:@"StackChanged"])
    {
      v7 = 3;
    }

    else if ([eventTypeString isEqualToString:@"WidgetTapped"])
    {
      v7 = 4;
    }

    else if ([eventTypeString isEqualToString:@"WidgetLongLook"])
    {
      v7 = 5;
    }

    else if ([eventTypeString isEqualToString:@"WidgetUserFeedback"])
    {
      v7 = 6;
    }

    else if ([eventTypeString isEqualToString:@"UserStackConfigChanged"])
    {
      v7 = 7;
    }

    else if ([eventTypeString isEqualToString:@"DeviceLocked"])
    {
      v7 = 8;
    }

    else if ([eventTypeString isEqualToString:@"DeviceUnlocked"])
    {
      v7 = 9;
    }

    else if ([eventTypeString isEqualToString:@"PinnedWidgetAdded"])
    {
      v7 = 10;
    }

    else if ([eventTypeString isEqualToString:@"PinnedWidgetDeleted"])
    {
      v7 = 11;
    }

    else if ([eventTypeString isEqualToString:@"SpecialPageAppeared"])
    {
      v7 = 12;
    }

    else if ([eventTypeString isEqualToString:@"SpecialPageDisappeared"])
    {
      v7 = 13;
    }

    else if ([eventTypeString isEqualToString:@"StackShown"])
    {
      v7 = 14;
    }

    else if ([eventTypeString isEqualToString:@"StackDisappeared"])
    {
      v7 = 15;
    }

    else if ([eventTypeString isEqualToString:@"StackCreated"])
    {
      v7 = 16;
    }

    else if ([eventTypeString isEqualToString:@"StackDeleted"])
    {
      v7 = 17;
    }

    else if ([eventTypeString isEqualToString:@"WidgetAddedToStack"])
    {
      v7 = 18;
    }

    else if ([eventTypeString isEqualToString:@"WidgetRemovedFromStack"])
    {
      v7 = 19;
    }

    else if ([eventTypeString isEqualToString:@"StackVisibilityChanged"])
    {
      v7 = 20;
    }

    else if ([eventTypeString isEqualToString:@"AppAdded"])
    {
      v7 = 21;
    }

    else if ([eventTypeString isEqualToString:@"AppRemoved"])
    {
      v7 = 22;
    }

    else
    {
      v7 = 0;
    }

    stackId = [v5 stackId];
    if (!stackId)
    {
      goto LABEL_87;
    }

    if (v7 > 13)
    {
      switch(v7)
      {
        case 14:
          reason = [(NSMutableDictionary *)self->_stackIdToStackRotationSessions objectForKey:stackId];
          if (!reason)
          {
            goto LABEL_86;
          }

          widgetUniqueId = [v5 widgetUniqueId];
          widgetUniqueId2 = [reason widgetUniqueId];
          v17 = [widgetUniqueId isEqualToString:widgetUniqueId2];

          if (!v17)
          {
            goto LABEL_86;
          }

          date = [v5 date];
          [reason markStackShownAtDate:date];

          v11 = __atxlog_handle_metrics(v19);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [ATXStackRotationSessionManager updateWithUIEvent:];
          }

          goto LABEL_85;
        case 15:
          reason = [(NSMutableDictionary *)self->_stackIdToStackRotationSessions objectForKey:stackId];
          if (!reason)
          {
            goto LABEL_86;
          }

          widgetUniqueId3 = [v5 widgetUniqueId];
          widgetUniqueId4 = [reason widgetUniqueId];
          v25 = [widgetUniqueId3 isEqualToString:widgetUniqueId4];

          if (!v25)
          {
            goto LABEL_86;
          }

          date2 = [v5 date];
          [reason markStackHiddenAtDate:date2];

          v11 = __atxlog_handle_metrics(v27);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [ATXStackRotationSessionManager updateWithUIEvent:];
          }

          goto LABEL_85;
        case 17:
          reason = [(NSMutableDictionary *)self->_stackIdToStackRotationSessions objectForKey:stackId];
          if (!reason)
          {
LABEL_86:

            break;
          }

          v11 = __atxlog_handle_metrics([(ATXStackRotationSessionManager *)self _tryEndStackRotationSessionWithStackId:stackId homeScreenEvent:v5]);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [ATXStackRotationSessionManager updateWithUIEvent:];
          }

          goto LABEL_85;
      }
    }

    else
    {
      switch(v7)
      {
        case 3:
          [(ATXStackRotationSessionManager *)self _tryEndStackRotationSessionWithStackId:stackId homeScreenEvent:v5];
          [(ATXStackRotationSessionManager *)self _tryStartStackRotationSessionWithStackId:stackId homeScreenEvent:v5];
          break;
        case 4:
          reason = [(NSMutableDictionary *)self->_stackIdToStackRotationSessions objectForKey:stackId];
          if (!reason)
          {
            goto LABEL_86;
          }

          widgetUniqueId5 = [v5 widgetUniqueId];
          widgetUniqueId6 = [reason widgetUniqueId];
          v22 = [widgetUniqueId5 isEqualToString:widgetUniqueId6];

          if (!v22)
          {
            goto LABEL_86;
          }

          v11 = __atxlog_handle_metrics([reason markStackTapped]);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [ATXStackRotationSessionManager updateWithUIEvent:];
          }

          goto LABEL_85;
        case 6:
          reason = [v5 reason];
          v10 = [(NSMutableDictionary *)self->_stackIdToStackRotationSessions objectForKey:stackId];
          v11 = v10;
          if (!reason || !v10)
          {
            goto LABEL_85;
          }

          v12 = NSStringForATXHomeScreenWidgetExplicitFeedback();
          v13 = [reason isEqualToString:v12];

          if (v13)
          {
            v14 = __atxlog_handle_metrics([v11 markAddedToStack]);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              [ATXStackRotationSessionManager updateWithUIEvent:];
            }

LABEL_84:

            goto LABEL_85;
          }

          v28 = NSStringForATXHomeScreenWidgetExplicitFeedback();
          v29 = [reason isEqualToString:v28];

          if (v29)
          {
            v14 = __atxlog_handle_metrics([v11 markRejectedRotationDismissOnce]);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              [ATXStackRotationSessionManager updateWithUIEvent:];
            }

            goto LABEL_84;
          }

          v30 = NSStringForATXHomeScreenWidgetExplicitFeedback();
          v31 = [reason isEqualToString:v30];

          if (v31)
          {
            v14 = __atxlog_handle_metrics([v11 markRejectedRotationNeverShowAgain]);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              [ATXStackRotationSessionManager updateWithUIEvent:];
            }

            goto LABEL_84;
          }

LABEL_85:

          goto LABEL_86;
      }
    }

LABEL_87:
  }
}

- (void)updateWithBlendingUICacheUpdate:(id)update
{
  v25 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  uiCache = [updateCopy uiCache];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_20;
  }

  uiCache2 = [updateCopy uiCache];
  cachedTopOfStackLayouts = [uiCache2 cachedTopOfStackLayouts];
  if ([cachedTopOfStackLayouts count])
  {

LABEL_5:
    [(NSMutableArray *)self->_recentHomeScreenCachedSuggestions addObject:uiCache2];
    goto LABEL_6;
  }

  cachedSuggestedWidgetsLayouts = [uiCache2 cachedSuggestedWidgetsLayouts];
  v10 = [cachedSuggestedWidgetsLayouts count];

  if (v10)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ([(NSMutableArray *)self->_recentHomeScreenCachedSuggestions count]>= 3)
  {
    do
    {
      [(NSMutableArray *)self->_recentHomeScreenCachedSuggestions removeObjectAtIndex:0];
    }

    while ([(NSMutableArray *)self->_recentHomeScreenCachedSuggestions count]> 2);
  }

  v11 = [(ATXStackRotationSessionManager *)self uuidsOfNPlusOneSuggestionsFromCachedSuggestions:uiCache2];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [(NSMutableSet *)self->_nPlusOneSuggestionUUIDsWithFirstRotation copy];
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        if (([v11 containsObject:v17] & 1) == 0)
        {
          [(NSMutableSet *)self->_nPlusOneSuggestionUUIDsWithFirstRotation removeObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v19 = __atxlog_handle_metrics(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [ATXStackRotationSessionManager updateWithBlendingUICacheUpdate:];
  }

LABEL_20:
}

- (id)removeAndReturnCompletedSessions
{
  if ([(NSMutableArray *)self->_completedSessions count])
  {
    v3 = [(NSMutableArray *)self->_completedSessions copy];
    [(NSMutableArray *)self->_completedSessions removeAllObjects];
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (id)removeAllAndReturnCompletedSystemSuggestSessions
{
  removeAndReturnCompletedSessions = [(ATXStackRotationSessionManager *)self removeAndReturnCompletedSessions];
  v3 = [removeAndReturnCompletedSessions _pas_filteredArrayWithTest:&__block_literal_global_167];

  return v3;
}

uint64_t __82__ATXStackRotationSessionManager_removeAllAndReturnCompletedSystemSuggestSessions__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 rotationReason];
  v3 = NSStringForATXHomeScreenStackChangeReason();
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (void)_tryUpdateNPlusOneStatusForSession:(id)session stackId:(id)id
{
  v34 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  idCopy = id;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->_recentHomeScreenCachedSuggestions reverseObjectEnumerator];
  v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v33 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        cachedSuggestedWidgetsLayouts = [*(*(&v19 + 1) + 8 * v10) cachedSuggestedWidgetsLayouts];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __77__ATXStackRotationSessionManager__tryUpdateNPlusOneStatusForSession_stackId___block_invoke;
        v13[3] = &unk_27859F360;
        v14 = sessionCopy;
        selfCopy = self;
        v16 = &v29;
        v17 = &v25;
        v18 = v23;
        [cachedSuggestedWidgetsLayouts enumerateKeysAndObjectsUsingBlock:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v33 count:16];
    }

    while (v8);
  }

  [sessionCopy updateIsNPlusOneRotation:*(v30 + 24) isFirstNPlusOneRotation:*(v26 + 24)];
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
}

void __77__ATXStackRotationSessionManager__tryUpdateNPlusOneStatusForSession_stackId___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = v7;
  v9 = *v23;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v22 + 1) + 8 * i);
      v12 = [v11 widgetUniqueId];
      v13 = [*(a1 + 32) widgetUniqueId];
      v14 = [v12 isEqualToString:v13];

      if (v14)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
        v15 = [v11 allSuggestionsInLayout];
        v16 = [v15 firstObject];

        if (v16)
        {
          v18 = *(*(a1 + 40) + 32);
          v19 = [v16 uuid];
          LOBYTE(v18) = [v18 containsObject:v19];

          if (v18)
          {
LABEL_16:
            *(*(*(a1 + 64) + 8) + 24) = 1;

            goto LABEL_17;
          }

          *(*(*(a1 + 56) + 8) + 24) = 1;
          v20 = *(*(a1 + 40) + 32);
          v21 = [v16 uuid];
          [v20 addObject:v21];
        }

        else
        {
          v21 = __atxlog_handle_metrics(v17);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            __77__ATXStackRotationSessionManager__tryUpdateNPlusOneStatusForSession_stackId___block_invoke_cold_1();
          }
        }

        goto LABEL_16;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_17:

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

- (void)_tryUpdateStackRotationSessionWithSystemSuggestLayout:(id)layout
{
  v21 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  rotationReason = [layoutCopy rotationReason];
  v6 = NSStringForATXHomeScreenStackChangeReason();
  v7 = [rotationReason isEqualToString:v6];

  if (v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    reverseObjectEnumerator = [(NSMutableArray *)self->_recentHomeScreenCachedSuggestions reverseObjectEnumerator];
    v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          cachedTopOfStackLayouts = [*(*(&v16 + 1) + 8 * v12) cachedTopOfStackLayouts];
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __88__ATXStackRotationSessionManager__tryUpdateStackRotationSessionWithSystemSuggestLayout___block_invoke;
          v14[3] = &unk_27859EA98;
          v15 = layoutCopy;
          [cachedTopOfStackLayouts enumerateKeysAndObjectsUsingBlock:v14];

          ++v12;
        }

        while (v10 != v12);
        v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }
}

void __88__ATXStackRotationSessionManager__tryUpdateStackRotationSessionWithSystemSuggestLayout___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 widgetUniqueId];
  v5 = [*(a1 + 32) widgetUniqueId];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    [*(a1 + 32) updateWithSystemSuggestSuggestionLayout:v7];
  }
}

- (id)uuidsOfNPlusOneSuggestionsFromCachedSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v4 = objc_opt_new();
  cachedSuggestedWidgetsLayouts = [suggestionsCopy cachedSuggestedWidgetsLayouts];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__ATXStackRotationSessionManager_uuidsOfNPlusOneSuggestionsFromCachedSuggestions___block_invoke;
  v9[3] = &unk_278599A48;
  v10 = v4;
  v6 = v4;
  [cachedSuggestedWidgetsLayouts enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

void __82__ATXStackRotationSessionManager_uuidsOfNPlusOneSuggestionsFromCachedSuggestions___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) allSuggestionsInLayout];
        v10 = [v9 firstObject];

        if (v10)
        {
          v11 = *(a1 + 32);
          v12 = [v10 uuid];
          [v11 addObject:v12];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXStackRotationSessionManager *)self isEqualToATXStackRotationSessionManager:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXStackRotationSessionManager:(id)manager
{
  managerCopy = manager;
  v5 = self->_stackIdToStackRotationSessions;
  v6 = v5;
  if (v5 == managerCopy[1])
  {
  }

  else
  {
    v7 = [(NSMutableDictionary *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_completedSessions;
  v10 = v9;
  if (v9 == managerCopy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSMutableArray *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  stackIdToStackRotationSessions = self->_stackIdToStackRotationSessions;
  coderCopy = coder;
  [coderCopy encodeObject:stackIdToStackRotationSessions forKey:@"mapping"];
  [coderCopy encodeObject:self->_completedSessions forKey:@"completedSessions"];
  [coderCopy encodeObject:self->_recentHomeScreenCachedSuggestions forKey:@"recentHomeScreenCachedSuggestions"];
  [coderCopy encodeObject:self->_nPlusOneSuggestionUUIDsWithFirstRotation forKey:@"nPlusOneRotationStatus"];
}

- (ATXStackRotationSessionManager)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v10 = MEMORY[0x277D42620];
  v12 = __atxlog_handle_metrics(v11);
  v13 = [v10 robustDecodeObjectOfClasses:v9 forKey:@"mapping" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXStackRotationSessionManager" errorCode:-1 logHandle:v12];

  if (v13 && ([coderCopy error], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
  {
    v16 = MEMORY[0x277D42620];
    v17 = objc_autoreleasePoolPush();
    v18 = objc_alloc(MEMORY[0x277CBEB98]);
    v19 = objc_opt_class();
    v20 = [v18 initWithObjects:{v19, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v17);
    v22 = __atxlog_handle_metrics(v21);
    v23 = [v16 robustDecodeObjectOfClasses:v20 forKey:@"completedSessions" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXStackRotationSessionManager" errorCode:-1 logHandle:v22];

    if (v23 && ([coderCopy error], v24 = objc_claimAutoreleasedReturnValue(), v24, !v24))
    {
      v25 = objc_autoreleasePoolPush();
      v45 = objc_alloc(MEMORY[0x277CBEB98]);
      v26 = objc_opt_class();
      v27 = objc_opt_class();
      v28 = objc_opt_class();
      v29 = [v45 initWithObjects:{v26, v27, v28, objc_opt_class(), 0}];
      objc_autoreleasePoolPop(v25);

      v30 = MEMORY[0x277D42620];
      v32 = __atxlog_handle_metrics(v31);
      v33 = [v30 robustDecodeObjectOfClasses:v29 forKey:@"recentHomeScreenCachedSuggestions" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXStackRotationSessionManager" errorCode:-1 logHandle:v32];

      if (v33 && ([coderCopy error], v34 = objc_claimAutoreleasedReturnValue(), v34, !v34))
      {
        v35 = objc_autoreleasePoolPush();
        v36 = objc_alloc(MEMORY[0x277CBEB98]);
        v37 = objc_opt_class();
        v38 = [v36 initWithObjects:{v37, objc_opt_class(), 0}];
        objc_autoreleasePoolPop(v35);

        v39 = MEMORY[0x277D42620];
        v41 = __atxlog_handle_metrics(v40);
        v42 = [v39 robustDecodeObjectOfClasses:v38 forKey:@"nPlusOneRotationStatus" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXStackRotationSessionManager" errorCode:-1 logHandle:v41];

        if (v42 && ([coderCopy error], v43 = objc_claimAutoreleasedReturnValue(), v43, !v43))
        {
          self = [(ATXStackRotationSessionManager *)self initWithStackIdToStackRotationSessions:v13 completedSessions:v23 recentHomeScreenCachedSuggestions:v33 nPlusOneSuggestionUUIDsWithFirstRotation:v42];
          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
        }

        v29 = v38;
      }

      else
      {
        selfCopy = 0;
      }

      v9 = v29;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_tryEndStackRotationSessionWithStackId:homeScreenEvent:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - marked stack rotation status as completed: %@", v4, v5, v6, v7);
}

- (void)_tryStartStackRotationSessionWithStackId:homeScreenEvent:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - starting stack rotation session: %@", v4, v5, v6, v7);
}

- (void)updateWithUIEvent:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - handled stack delete for session %@", v4, v5, v6, v7);
}

- (void)updateWithUIEvent:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - handled N+1 rotation never show again for session %@", v4, v5, v6, v7);
}

- (void)updateWithUIEvent:.cold.3()
{
  OUTLINED_FUNCTION_2_1();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - handled N+1 rotation dismissed once for session %@", v4, v5, v6, v7);
}

- (void)updateWithUIEvent:.cold.4()
{
  OUTLINED_FUNCTION_2_1();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - handled N+1 added to stack for session %@", v4, v5, v6, v7);
}

- (void)updateWithUIEvent:.cold.5()
{
  OUTLINED_FUNCTION_2_1();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - handled tap for session %@", v4, v5, v6, v7);
}

- (void)updateWithUIEvent:.cold.6()
{
  OUTLINED_FUNCTION_2_1();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - updated dwell end date for session %@", v4, v5, v6, v7);
}

- (void)updateWithUIEvent:.cold.7()
{
  OUTLINED_FUNCTION_2_1();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - updated dwell start date for session %@", v4, v5, v6, v7);
}

- (void)updateWithBlendingUICacheUpdate:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  *v9 = 138412546;
  *&v9[4] = v2;
  *&v9[12] = 2112;
  *&v9[14] = *v0;
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v3, v4, "%@ N+1: _nPlusOneSuggestionUUIDsWithFirstRotation: %@", v5, v6, v7, v8, *v9, *&v9[8], *&v9[16]);
}

void __77__ATXStackRotationSessionManager__tryUpdateNPlusOneStatusForSession_stackId___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v4 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_0_14();
  _os_log_fault_impl(&dword_2263AA000, v0, OS_LOG_TYPE_FAULT, "%@ N+1 - could not find suggestion in stack rotation layout: %@", v3, 0x16u);
}

@end