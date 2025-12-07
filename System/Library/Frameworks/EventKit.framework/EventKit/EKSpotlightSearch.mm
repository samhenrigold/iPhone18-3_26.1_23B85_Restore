@interface EKSpotlightSearch
+ (id)queryStringForSearchTerm:(id)term matchingTypes:(unint64_t)types fromStartDate:(id)date toEndDate:(id)endDate;
+ (id)searchWithCSQuery:(id)query inStore:(id)store inCalendars:(id)calendars resultHandler:(id)handler completionHandler:(id)completionHandler;
- (EKEventStore)eventStore;
- (EKSpotlightSearch)initWithSearchWithCSQuery:(id)query inStore:(id)store inCalendars:(id)calendars resultHandler:(id)handler completionHandler:(id)completionHandler;
- (void)setCachedNextOccurrenceDateOnRepeatingRemindersInEvents:(id)events withDateMap:(id)map;
@end

@implementation EKSpotlightSearch

+ (id)searchWithCSQuery:(id)query inStore:(id)store inCalendars:(id)calendars resultHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  calendarsCopy = calendars;
  storeCopy = store;
  queryCopy = query;
  v16 = [[EKSpotlightSearch alloc] initWithSearchWithCSQuery:queryCopy inStore:storeCopy inCalendars:calendarsCopy resultHandler:handlerCopy completionHandler:completionHandlerCopy];

  return v16;
}

- (EKSpotlightSearch)initWithSearchWithCSQuery:(id)query inStore:(id)store inCalendars:(id)calendars resultHandler:(id)handler completionHandler:(id)completionHandler
{
  v35[1] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  storeCopy = store;
  calendarsCopy = calendars;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v33.receiver = self;
  v33.super_class = EKSpotlightSearch;
  v17 = [(EKSpotlightSearch *)&v33 init];
  if (v17)
  {
    objc_initWeak(&location, v17);
    objc_storeWeak(&v17->_eventStore, storeCopy);
    v18 = EKWeakLinkClass();
    EKWeakLinkClass();
    v19 = objc_opt_new();
    v35[0] = *MEMORY[0x1E6964B30];
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    [v19 setFetchAttributes:v20];

    v34 = *MEMORY[0x1E6993188];
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    [v19 setBundleIDs:v21];

    v22 = [[v18 alloc] initWithQueryString:queryCopy context:v19];
    csQuery = v17->csQuery;
    v17->csQuery = v22;

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __99__EKSpotlightSearch_initWithSearchWithCSQuery_inStore_inCalendars_resultHandler_completionHandler___block_invoke;
    v28[3] = &unk_1E77FFDE0;
    objc_copyWeak(&v31, &location);
    v29 = calendarsCopy;
    v30 = handlerCopy;
    [(CSSearchQuery *)v17->csQuery setFoundItemsHandler:v28];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __99__EKSpotlightSearch_initWithSearchWithCSQuery_inStore_inCalendars_resultHandler_completionHandler___block_invoke_2;
    v25[3] = &unk_1E77FFE08;
    v26 = completionHandlerCopy;
    objc_copyWeak(&v27, &location);
    [(CSSearchQuery *)v17->csQuery setCompletionHandler:v25];
    objc_destroyWeak(&v27);

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v17;
}

void __99__EKSpotlightSearch_initWithSearchWithCSQuery_inStore_inCalendars_resultHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v34 + 1) + 8 * i);
        v9 = [v8 attributeSet];
        v10 = [v9 startDate];
        if (v10)
        {
          v11 = [v8 uniqueIdentifier];
          v12 = [v11 componentsSeparatedByString:@"."];
          v13 = [v12 firstObject];

          v14 = [v3 objectForKeyedSubscript:v13];

          if (!v14)
          {
            v15 = [MEMORY[0x1E695DF70] array];
            [v3 setObject:v15 forKeyedSubscript:v13];
          }

          v16 = [v3 objectForKeyedSubscript:v13];
          [v16 addObject:v10];
        }

        else
        {
          v17 = EKLogHandle;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
          {
            __99__EKSpotlightSearch_initWithSearchWithCSQuery_inStore_inCalendars_resultHandler_completionHandler___block_invoke_cold_1(v38, v17, v8, &v39);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v5);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v19 = [WeakRetained eventStore];
  v20 = [v19 eventsWithUUIDToOccurrenceDateMap:v3 inCalendars:*(a1 + 32)];

  v21 = objc_loadWeakRetained((a1 + 48));
  v22 = [v21 eventStore];
  v23 = [v22 blockList];

  if ([v20 count])
  {
    v24 = objc_loadWeakRetained((a1 + 48));
    [v24 setCachedNextOccurrenceDateOnRepeatingRemindersInEvents:v20 withDateMap:v3];

    v25 = MEMORY[0x1E696AE18];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __99__EKSpotlightSearch_initWithSearchWithCSQuery_inStore_inCalendars_resultHandler_completionHandler___block_invoke_14;
    v32[3] = &unk_1E77FFDB8;
    v33 = v23;
    v26 = [v25 predicateWithBlock:v32];
    v27 = [v20 filteredArrayUsingPredicate:v26];

    if ([v27 count])
    {
      v28 = *(a1 + 40);
      v29 = objc_loadWeakRetained((a1 + 48));
      (*(v28 + 16))(v28, v29, v27);
    }
  }

  else
  {
    v27 = v20;
  }
}

uint64_t __99__EKSpotlightSearch_initWithSearchWithCSQuery_inStore_inCalendars_resultHandler_completionHandler___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isReminderIntegrationEvent] && objc_msgSend(v3, "reminderOccurrenceType") == 1)
  {
    v4 = 0;
  }

  else if ([v3 isSelfOrganizedInvitation])
  {
    v4 = 1;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [v3 sendersEmail];
    if ([v5 isBlockedWithEmail:v6])
    {
      v4 = 0;
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = [v3 sendersPhoneNumber];
      v4 = [v7 isBlockedWithPhoneNumber:v8] ^ 1;
    }
  }

  return v4;
}

void __99__EKSpotlightSearch_initWithSearchWithCSQuery_inStore_inCalendars_resultHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v3 + 16))(v3, WeakRetained, v4);
}

- (void)setCachedNextOccurrenceDateOnRepeatingRemindersInEvents:(id)events withDateMap:(id)map
{
  v26 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  mapCopy = map;
  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = eventsCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        if ([v11 hasRecurrenceRules] && objc_msgSend(v11, "isReminderIntegrationEvent"))
        {
          calendarItemIdentifier = [v11 calendarItemIdentifier];
          v13 = [v20 objectForKeyedSubscript:calendarItemIdentifier];
          if (!v13)
          {
            v13 = [mapCopy objectForKeyedSubscript:calendarItemIdentifier];
            [v20 setObject:v13 forKeyedSubscript:calendarItemIdentifier];
            [v13 sortUsingSelector:sel_compare_];
          }

          v14 = [v13 count];
          startDate = [v11 startDate];
          v16 = [v13 indexOfObject:startDate inSortedRange:0 options:v14 usingComparator:{0, &__block_literal_global_64}];

          if (v16 != 0x7FFFFFFFFFFFFFFFLL && v16 + 1 < v14)
          {
            v18 = [v13 objectAtIndexedSubscript:?];
            [v11 _setNextCachedReminderOccurrenceDate:v18];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }
}

+ (id)queryStringForSearchTerm:(id)term matchingTypes:(unint64_t)types fromStartDate:(id)date toEndDate:(id)endDate
{
  termCopy = term;
  dateCopy = date;
  endDateCopy = endDate;
  v13 = MEMORY[0x1E696AD60];
  identifier = [*MEMORY[0x1E6982D30] identifier];
  v15 = objc_msgSend(v13, "stringWithFormat:", @"contentType == %@ && ("), identifier;

  if (!types)
  {
    [v15 appendFormat:@"title == %@*cdwt || comment == %@*cdwt || namedLocation == %@*cdwt || ", termCopy, termCopy, termCopy];
    v16 = [self _queryStringForPeopleMatchingSearchTerm:termCopy];
    [v15 appendString:v16];

    goto LABEL_12;
  }

  if ((types & 1) == 0)
  {
    if ((types & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    [v15 appendFormat:@"namedLocation == %@*cdwt || ", termCopy];
    if ((types & 4) == 0)
    {
LABEL_5:
      if ((types & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  [v15 appendFormat:@"title == %@*cdwt || ", termCopy];
  if ((types & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((types & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_10:
  v17 = [self _queryStringForPeopleMatchingSearchTerm:termCopy];
  [v15 appendString:v17];

  if ((types & 8) != 0)
  {
LABEL_11:
    [v15 appendFormat:@"comment == %@*cdwt || ", termCopy];
  }

LABEL_12:
  v18 = [@" || " length];
  [v15 replaceCharactersInRange:objc_msgSend(v15 withString:{"length") - v18, v18, @""}]);
  if (dateCopy && endDateCopy)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    v20 = v19;
    [endDateCopy timeIntervalSinceReferenceDate];
    [v15 appendFormat:@"&& startDate <= $time.absolute(%f) && endDate >= $time.absolute(%f)", v21, v20];
  }

  else if (dateCopy)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    [v15 appendFormat:@"&& endDate > $time.absolute(%f)", v22, v25];
  }

  else if (endDateCopy)
  {
    [endDateCopy timeIntervalSinceReferenceDate];
    [v15 appendFormat:@"&& startDate < $time.absolute(%f)", v23, v25];
  }

  return v15;
}

- (EKEventStore)eventStore
{
  WeakRetained = objc_loadWeakRetained(&self->_eventStore);

  return WeakRetained;
}

void __99__EKSpotlightSearch_initWithSearchWithCSQuery_inStore_inCalendars_resultHandler_completionHandler___block_invoke_cold_1(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 uniqueIdentifier];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_error_impl(&dword_1A805E000, v7, OS_LOG_TYPE_ERROR, "Fetched search item had nil start date, skipping showing search result: %@", a1, 0xCu);
}

@end