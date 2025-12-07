@interface ATXSpotlightActionsSuggestionSender
+ (id)identifierForNowPlayingSuggestionFromLayout:(id)layout;
+ (id)identifierForOngoingCallSuggestionFromLayout:(id)layout;
+ (id)identifiersForDirectionsSuggestionFromLayout:(id)layout;
+ (id)identifiersForSuggestionsFromLayout:(id)layout;
- (ATXSpotlightActionsSuggestionSender)init;
- (void)_logCAEvents:(id)events eventType:(int64_t)type toStream:(id)stream;
- (void)_processChanges:(id)changes;
- (void)_sendSpotlightSuggestionUpdateNotification:(id)notification;
- (void)blendingLayerDidUpdateSpotlightUICache:(id)cache;
@end

@implementation ATXSpotlightActionsSuggestionSender

+ (id)identifiersForSuggestionsFromLayout:(id)layout
{
  v37 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  if (layoutCopy)
  {
    v4 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = layoutCopy;
    obj = [layoutCopy collections];
    v20 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v20)
    {
      v19 = *v28;
      do
      {
        v5 = 0;
        do
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = v5;
          v6 = *(*(&v27 + 1) + 8 * v5);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          suggestions = [v6 suggestions];
          v8 = [suggestions countByEnumeratingWithState:&v23 objects:v35 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v24;
            do
            {
              v11 = 0;
              do
              {
                if (*v24 != v10)
                {
                  objc_enumerationMutation(suggestions);
                }

                v12 = *(*(&v23 + 1) + 8 * v11);
                v13 = [objc_alloc(MEMORY[0x277D42028]) initWithProactiveSuggestion:v12];
                if (v13)
                {
                  [v4 addObject:v13];
                }

                else
                {
                  v14 = __atxlog_handle_blending(0);
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                  {
                    executableSpecification = [v12 executableSpecification];
                    executableIdentifier = [executableSpecification executableIdentifier];
                    *buf = 138412546;
                    v32 = executableIdentifier;
                    v33 = 2112;
                    v34 = v12;
                    _os_log_error_impl(&dword_2263AA000, v14, OS_LOG_TYPE_ERROR, "ATXContextActionIdentifier: nil: %@, %@", buf, 0x16u);
                  }
                }

                ++v11;
              }

              while (v9 != v11);
              v9 = [suggestions countByEnumeratingWithState:&v23 objects:v35 count:16];
            }

            while (v9);
          }

          v5 = v21 + 1;
        }

        while (v21 + 1 != v20);
        v20 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v20);
    }

    layoutCopy = v17;
  }

  else
  {
    v4 = objc_opt_new();
  }

  return v4;
}

+ (id)identifiersForDirectionsSuggestionFromLayout:(id)layout
{
  v37 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  if (layoutCopy)
  {
    v4 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = layoutCopy;
    obj = [layoutCopy collections];
    v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v25)
    {
      v24 = *v32;
      do
      {
        v5 = 0;
        do
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = v5;
          v6 = *(*(&v31 + 1) + 8 * v5);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          suggestions = [v6 suggestions];
          v8 = [suggestions countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v28;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v28 != v10)
                {
                  objc_enumerationMutation(suggestions);
                }

                v12 = *(*(&v27 + 1) + 8 * i);
                atxShortcutsActionExecutableObject = [v12 atxShortcutsActionExecutableObject];
                contextualAction = [atxShortcutsActionExecutableObject contextualAction];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  contextualAction2 = [atxShortcutsActionExecutableObject contextualAction];
                  uniqueIdentifier = [contextualAction2 uniqueIdentifier];

                  uiSpecification = [v12 uiSpecification];
                  title = [uiSpecification title];

                  [v4 setObject:title forKeyedSubscript:uniqueIdentifier];
                }
              }

              v9 = [suggestions countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v9);
          }

          v5 = v26 + 1;
        }

        while (v26 + 1 != v25);
        v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v25);
    }

    v20 = [v4 copy];
    layoutCopy = v22;
  }

  else
  {
    v20 = objc_opt_new();
  }

  return v20;
}

+ (id)identifierForNowPlayingSuggestionFromLayout:(id)layout
{
  v32 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v4 = layoutCopy;
  if (layoutCopy)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    collections = [layoutCopy collections];
    v21 = [collections countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v21)
    {
      v6 = *v27;
      v20 = *v27;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v27 != v6)
          {
            objc_enumerationMutation(collections);
          }

          v8 = *(*(&v26 + 1) + 8 * i);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          suggestions = [v8 suggestions];
          v10 = [suggestions countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v23;
            while (2)
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v23 != v12)
                {
                  objc_enumerationMutation(suggestions);
                }

                v14 = *(*(&v22 + 1) + 8 * j);
                uiSpecification = [v14 uiSpecification];
                predictionReasons = [uiSpecification predictionReasons];

                if ((predictionReasons & 0x40000) != 0)
                {
                  executableSpecification = [v14 executableSpecification];
                  executableIdentifier = [executableSpecification executableIdentifier];

                  goto LABEL_21;
                }
              }

              v11 = [suggestions countByEnumeratingWithState:&v22 objects:v30 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

          v6 = v20;
        }

        executableIdentifier = 0;
        v21 = [collections countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v21);
    }

    else
    {
      executableIdentifier = 0;
    }

LABEL_21:
  }

  else
  {
    executableIdentifier = 0;
  }

  return executableIdentifier;
}

+ (id)identifierForOngoingCallSuggestionFromLayout:(id)layout
{
  v32 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v4 = layoutCopy;
  if (layoutCopy)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    collections = [layoutCopy collections];
    v21 = [collections countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v21)
    {
      v6 = *v27;
      v20 = *v27;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v27 != v6)
          {
            objc_enumerationMutation(collections);
          }

          v8 = *(*(&v26 + 1) + 8 * i);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          suggestions = [v8 suggestions];
          v10 = [suggestions countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v23;
            while (2)
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v23 != v12)
                {
                  objc_enumerationMutation(suggestions);
                }

                v14 = *(*(&v22 + 1) + 8 * j);
                uiSpecification = [v14 uiSpecification];
                predictionReasons = [uiSpecification predictionReasons];

                if ((predictionReasons & 0x80000) != 0)
                {
                  executableSpecification = [v14 executableSpecification];
                  executableIdentifier = [executableSpecification executableIdentifier];

                  goto LABEL_21;
                }
              }

              v11 = [suggestions countByEnumeratingWithState:&v22 objects:v30 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

          v6 = v20;
        }

        executableIdentifier = 0;
        v21 = [collections countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v21);
    }

    else
    {
      executableIdentifier = 0;
    }

LABEL_21:
  }

  else
  {
    executableIdentifier = 0;
  }

  return executableIdentifier;
}

- (ATXSpotlightActionsSuggestionSender)init
{
  v8.receiver = self;
  v8.super_class = ATXSpotlightActionsSuggestionSender;
  v2 = [(ATXSpotlightActionsSuggestionSender *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    previousDirectionsIdentifiers = v2->_previousDirectionsIdentifiers;
    v2->_previousDirectionsIdentifiers = dictionary;

    v5 = objc_opt_new();
    previousIdentifiers = v2->_previousIdentifiers;
    v2->_previousIdentifiers = v5;
  }

  return v2;
}

- (void)blendingLayerDidUpdateSpotlightUICache:(id)cache
{
  v10 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  v5 = __atxlog_handle_blending(cacheCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - received new ui cache", &v8, 0xCu);
  }

  [(ATXSpotlightActionsSuggestionSender *)self _processChanges:cacheCopy];
  [(ATXSpotlightActionsSuggestionSender *)self _sendSpotlightSuggestionUpdateNotification:cacheCopy];
}

- (void)_processChanges:(id)changes
{
  if (changes)
  {
    changesCopy = changes;
    v5 = [objc_opt_class() identifiersForSuggestionsFromLayout:changesCopy];

    v6 = [(NSSet *)v5 mutableCopy];
    [v6 minusSet:self->_previousIdentifiers];
    v7 = [(NSSet *)self->_previousIdentifiers mutableCopy];
    [v7 minusSet:v5];
    v8 = objc_alloc_init(MEMORY[0x277D420C8]);
    previousIdentifiers = self->_previousIdentifiers;
    self->_previousIdentifiers = v5;

    v11 = __atxlog_handle_metrics(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ATXSpotlightActionsSuggestionSender _processChanges:v7];
    }

    v12 = __atxlog_handle_metrics([(ATXSpotlightActionsSuggestionSender *)self _logCAEvents:v7 eventType:2 toStream:v8]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ATXSpotlightActionsSuggestionSender _processChanges:v6];
    }

    [(ATXSpotlightActionsSuggestionSender *)self _logCAEvents:v6 eventType:1 toStream:v8];
  }
}

- (void)_logCAEvents:(id)events eventType:(int64_t)type toStream:(id)stream
{
  v25 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  streamCopy = stream;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = eventsCopy;
  v9 = [eventsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        v14 = objc_alloc(MEMORY[0x277D420D0]);
        uniqueIdentifier = [v13 uniqueIdentifier];
        subtype = [v13 subtype];
        context = [v13 context];
        v18 = [v14 initWithType:type suggestionUniqueId:uniqueIdentifier suggestionType:@"action" suggestionSubtype:subtype suggestionContext:context];

        [streamCopy sendEvent:v18];
        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }
}

- (void)_sendSpotlightSuggestionUpdateNotification:(id)notification
{
  notificationCopy = notification;
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"zkwTriggerUIRefresh", *MEMORY[0x277CEBD00], &keyExistsAndHasValidFormat) && (v5 = [MEMORY[0x277D42590] isInternalBuild], v5))
  {
    v6 = __atxlog_handle_blending(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v18[0] = 0;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Internal: trigger for all changes", v18, 2u);
    }

    notify_post([*MEMORY[0x277CEB298] UTF8String]);
  }

  else
  {
    v7 = [objc_opt_class() identifierForNowPlayingSuggestionFromLayout:notificationCopy];
    v8 = v7;
    v9 = v7 == self->_previousNowPlayingIdentifier || [(NSString *)v7 isEqualToString:?];
    objc_storeStrong(&self->_previousNowPlayingIdentifier, v8);
    v10 = [objc_opt_class() identifierForOngoingCallSuggestionFromLayout:notificationCopy];
    v11 = v10;
    v12 = v10 == self->_previousOngoingCallIdentifier || [(NSString *)v10 isEqualToString:?];
    previousOngoingCallIdentifier = self->_previousOngoingCallIdentifier;
    self->_previousOngoingCallIdentifier = v11;
    v14 = v11;

    v15 = [objc_opt_class() identifiersForDirectionsSuggestionFromLayout:notificationCopy];
    v16 = [(NSDictionary *)v15 isEqualToDictionary:self->_previousDirectionsIdentifiers];
    previousDirectionsIdentifiers = self->_previousDirectionsIdentifiers;
    self->_previousDirectionsIdentifiers = v15;

    if ((v9 & v12) != 1 || !v16)
    {
      notify_post([*MEMORY[0x277CEB298] UTF8String]);
    }
  }
}

- (void)_processChanges:(void *)a1 .cold.1(void *a1)
{
  LODWORD(v7) = 134217984;
  *(&v7 + 4) = [a1 count];
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v1, v2, "Removed %lu events - ATXSpotlightUIEvent", v3, v4, v5, v6, v7, DWORD2(v7));
}

- (void)_processChanges:(void *)a1 .cold.2(void *a1)
{
  LODWORD(v7) = 134217984;
  *(&v7 + 4) = [a1 count];
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v1, v2, "Added %lu events - ATXSpotlightUIEvent", v3, v4, v5, v6, v7, DWORD2(v7));
}

@end