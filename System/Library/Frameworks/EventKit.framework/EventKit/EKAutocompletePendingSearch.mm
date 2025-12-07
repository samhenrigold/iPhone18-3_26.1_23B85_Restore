@interface EKAutocompletePendingSearch
+ (id)_eventKitQueue;
+ (id)_queue;
- (BOOL)_shouldReturnResultForEvent:(id)event considerReadonlyEvents:(BOOL)events;
- (EKAutocompletePendingSearch)initWithEventStore:(id)store searchString:(id)string maximumResultCount:(unint64_t)count ignoreScheduledEvents:(BOOL)events initialEvent:(id)event pasteboardItemProvider:(id)provider completionHandler:(id)handler;
- (EKAutocompletePendingSearch)searchWithString:(id)string completionHandler:(id)handler;
- (id)firstNaturalLanguageResultWithSearchString:(id)string;
- (void)cancel;
@end

@implementation EKAutocompletePendingSearch

- (EKAutocompletePendingSearch)initWithEventStore:(id)store searchString:(id)string maximumResultCount:(unint64_t)count ignoreScheduledEvents:(BOOL)events initialEvent:(id)event pasteboardItemProvider:(id)provider completionHandler:(id)handler
{
  storeCopy = store;
  stringCopy = string;
  eventCopy = event;
  providerCopy = provider;
  handlerCopy = handler;
  v24.receiver = self;
  v24.super_class = EKAutocompletePendingSearch;
  v19 = [(EKAutocompletePendingSearch *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_eventStore, store);
    v20->_maximumResultCount = count;
    v20->_ignoreScheduledEvents = events;
    objc_storeStrong(&v20->_initialEvent, event);
    objc_storeStrong(&v20->_pasteboardItemProvider, provider);
    [(EKAutocompletePendingSearch *)v20 searchWithString:stringCopy completionHandler:handlerCopy];
  }

  return v20;
}

+ (id)_queue
{
  if (_queue_onceToken != -1)
  {
    +[EKAutocompletePendingSearch _queue];
  }

  v3 = _queue_queue;

  return v3;
}

uint64_t __37__EKAutocompletePendingSearch__queue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.mobilecal.autocompletesearchcontroller.internalqueue", 0);
  v1 = _queue_queue;
  _queue_queue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_eventKitQueue
{
  if (_eventKitQueue_onceToken != -1)
  {
    +[EKAutocompletePendingSearch _eventKitQueue];
  }

  v3 = _eventKitQueue_queue;

  return v3;
}

uint64_t __45__EKAutocompletePendingSearch__eventKitQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.mobilecal.autocompletesearchcontroller.eventkitqueue", 0);
  v1 = _eventKitQueue_queue;
  _eventKitQueue_queue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)firstNaturalLanguageResultWithSearchString:(id)string
{
  v4 = [(EKEventStore *)self->_eventStore predicateForNaturalLanguageSuggestedEventsWithSearchString:string];
  v5 = [(EKEventStore *)self->_eventStore eventsMatchingPredicate:v4];
  if ([v5 count])
  {
    firstObject = [v5 firstObject];
    v7 = objc_opt_new();
    uniqueID = [firstObject uniqueID];
    [v7 setIdentifier:uniqueID];

    title = [firstObject title];
    [v7 setTitle:title];

    [v7 setNaturalLanguageSuggestedEvent:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldReturnResultForEvent:(id)event considerReadonlyEvents:(BOOL)events
{
  eventCopy = event;
  v7 = eventCopy;
  if (!eventCopy)
  {
    goto LABEL_8;
  }

  if (!events)
  {
    calendar = [eventCopy calendar];
    if ([calendar allowsContentModifications])
    {
    }

    else
    {
      calendar2 = [v7 calendar];
      isNaturalLanguageSuggestedEventCalendar = [calendar2 isNaturalLanguageSuggestedEventCalendar];

      if (!isNaturalLanguageSuggestedEventCalendar)
      {
LABEL_8:
        v11 = 0;
        goto LABEL_12;
      }
    }
  }

  if ([v7 hasAttendees] && self->_ignoreScheduledEvents)
  {
    goto LABEL_8;
  }

  initialEvent = self->_initialEvent;
  if (initialEvent)
  {
    uniqueIdentifier = [(EKObject *)initialEvent uniqueIdentifier];
    uniqueIdentifier2 = [v7 uniqueIdentifier];
    v15 = [uniqueIdentifier isEqualToString:uniqueIdentifier2];

    v11 = v15 ^ 1;
  }

  else
  {
    v11 = 1;
  }

LABEL_12:

  return v11 & 1;
}

- (EKAutocompletePendingSearch)searchWithString:(id)string completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  if (self->_pendingSearch)
  {
    [EKAutocompletePendingSearch searchWithString:a2 completionHandler:self];
  }

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__3;
  v25[4] = __Block_byref_object_dispose__3;
  v26 = 0;
  _eventKitQueue = [objc_opt_class() _eventKitQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke;
  block[3] = &unk_1E77FD688;
  v24 = v25;
  block[4] = self;
  v10 = stringCopy;
  v23 = v10;
  dispatch_async(_eventKitQueue, block);

  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKAutocompletePendingSearch searchWithString:completionHandler:];
  }

  v11 = *MEMORY[0x1E6993188];
  v12 = MEMORY[0x1E6993050];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_20;
  v18[3] = &unk_1E77FDB90;
  v18[4] = self;
  v13 = v10;
  v19 = v13;
  v14 = handlerCopy;
  v20 = v14;
  v21 = v25;
  v15 = [v12 searchWithString:v13 clientBundleID:v11 completionHandler:v18];
  pendingSearch = self->_pendingSearch;
  self->_pendingSearch = v15;

  _Block_object_dispose(v25, 8);
  return result;
}

uint64_t __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) firstNaturalLanguageResultWithSearchString:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 mutableCopy];
  v7 = [objc_opt_class() _queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_2;
  v13[3] = &unk_1E77FDB68;
  v8 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v5;
  v15 = v8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v17 = v9;
  v18 = v10;
  v16 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, v13);
}

void __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_2(uint64_t a1)
{
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_2_cold_1();
  }

  if (*(*(a1 + 32) + 48))
  {
    if (*(a1 + 40))
    {
      v2 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_2_cold_2(a1, (a1 + 40), v2);
      }

      v3 = *(a1 + 32);
      v4 = *(v3 + 48);
      *(v3 + 48) = 0;

      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v5 = [objc_opt_class() _eventKitQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_21;
      block[3] = &unk_1E77FDB40;
      v15 = *(a1 + 72);
      *&v6 = *(a1 + 56);
      *(&v6 + 1) = *(a1 + 32);
      v10 = v6;
      v7 = *(a1 + 48);
      v14 = *(a1 + 64);
      v8 = *(a1 + 40);
      *&v9 = v7;
      *(&v9 + 1) = v8;
      v12 = v10;
      v13 = v9;
      dispatch_async(v5, block);
    }
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_2_cold_3();
  }
}

void __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_21(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_21_cold_1();
  }

  v38 = objc_opt_new();
  v42 = objc_opt_new();
  v41 = [MEMORY[0x1E695DF00] date];
  v2 = *(*(*(a1 + 72) + 8) + 40);
  if (v2)
  {
    [*(a1 + 32) insertObject:v2 atIndex:0];
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v3)
  {
    v4 = 0;
    v40 = *v57;
LABEL_7:
    v5 = 0;
    while (1)
    {
      if (*v57 != v40)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v56 + 1) + 8 * v5);
      v52 = 0;
      v53 = &v52;
      v54 = 0x2020000000;
      v55 = 0;
      v7 = [objc_opt_class() _queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_25;
      block[3] = &unk_1E77FD530;
      block[4] = *(a1 + 40);
      block[5] = &v52;
      dispatch_sync(v7, block);

      if (*(v53 + 24) == 1)
      {
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
        {
          __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_21_cold_3();
        }

        _Block_object_dispose(&v52, 8);

        goto LABEL_56;
      }

      v8 = [MEMORY[0x1E695DF00] date];
      [v8 timeIntervalSinceDate:v41];
      if (v9 >= 0.5)
      {
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
        {
          __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_21_cold_2();
        }

        _Block_object_dispose(&v52, 8);
        goto LABEL_37;
      }

      v10 = [v6 title];
      v11 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v12 = [v10 stringByTrimmingCharactersInSet:v11];
      v13 = [v12 lowercaseString];

      v14 = [v42 objectForKey:v13];
      if (!v4 || v14 != 0)
      {
        break;
      }

      v4 = 1;
LABEL_28:

      _Block_object_dispose(&v52, 8);
      if (v3 == ++v5)
      {
        v3 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
        if (v3)
        {
          goto LABEL_7;
        }

        goto LABEL_37;
      }
    }

    v15 = *(*(a1 + 40) + 8);
    v16 = [v6 identifier];
    v17 = [v15 eventWithUniqueId:v16];

    if (([*(a1 + 40) _shouldReturnResultForEvent:v17 considerReadonlyEvents:0] & 1) == 0)
    {
LABEL_27:

      goto LABEL_28;
    }

    if (v14)
    {
      if ([(EKAutocompleteSearchResult *)v14 source]== 2)
      {
LABEL_24:
        if (*(*(a1 + 40) + 16))
        {
          v4 = [v38 count] >= *(*(a1 + 40) + 16);
        }

        else
        {
          v4 = 0;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v18 = [v6 isNaturalLanguageSuggestedEvent];
      v19 = [EKAutocompleteSearchResult alloc];
      if (v18)
      {
        v20 = 2;
      }

      else
      {
        v20 = 0;
      }

      v14 = [(EKAutocompleteSearchResult *)v19 initWithSource:v20, v38];
      [v42 setObject:v14 forKey:v13];
      [v38 addObject:v14];
      -[EKAutocompleteSearchResult setAllDay:](v14, "setAllDay:", [v17 isAllDay]);
    }

    [(EKAutocompleteSearchResult *)v14 updateSelfFromEvent:v17, v38];
    goto LABEL_24;
  }

LABEL_37:

  v21 = *(*(a1 + 40) + 40);
  if (v21)
  {
    v22 = [v21 eventsFromPasteboard];
    v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v22, "count")}];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v24 = v22;
    v25 = 0;
    v26 = [v24 countByEnumeratingWithState:&v47 objects:v60 count:16];
    if (v26)
    {
      v27 = *v48;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v48 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v47 + 1) + 8 * i);
          if ([*(a1 + 40) _shouldReturnResultForEvent:v29 considerReadonlyEvents:{1, v38}])
          {
            if ([*(a1 + 48) length])
            {
              v30 = [v29 title];
              v31 = [v30 containsCaseAndDiacriticInsensitive:*(a1 + 48)];

              v25 |= v31;
            }

            else
            {
              v25 = 1;
            }

            v32 = [[EKAutocompleteSearchResult alloc] initWithSource:3];
            -[EKAutocompleteSearchResult setAllDay:](v32, "setAllDay:", [v29 isAllDay]);
            [v29 travelTime];
            [(EKAutocompleteSearchResult *)v32 setTravelTime:?];
            v33 = [v29 travelStartLocation];
            [(EKAutocompleteSearchResult *)v32 setTravelStartLocation:v33];

            [(EKAutocompleteSearchResult *)v32 updateSelfFromEvent:v29];
            -[EKAutocompleteSearchResult setCalendarColor:](v32, "setCalendarColor:", [*(*(a1 + 40) + 40) colorOfCalendarToPasteTo]);
            [v23 addObject:v32];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v47 objects:v60 count:16];
      }

      while (v26);
    }

    if ((([v23 count] != 0) & v25) == 1)
    {
      v34 = [[EKAutocompleteSearchResult alloc] initWithSource:4];
      [(EKAutocompleteSearchResult *)v34 setPasteboardResults:v23];
      v35 = [v38 firstObject];
      v36 = [v35 source] == 2;

      [v38 insertObject:v34 atIndex:v36];
    }
  }

  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_21_cold_4();
  }

  v37 = [objc_opt_class() _queue];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_28;
  v43[3] = &unk_1E77FDB18;
  v43[4] = *(a1 + 40);
  v46 = *(a1 + 64);
  v44 = v38;
  v45 = *(a1 + 56);
  dispatch_async(v37, v43);

LABEL_56:
}

void __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_28(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v3)
    {
      __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_28_cold_1();
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;

    (*(*(a1 + 56) + 16))();
  }

  else if (v3)
  {
    __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_28_cold_2();
  }
}

- (void)cancel
{
  _queue = [objc_opt_class() _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EKAutocompletePendingSearch_cancel__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(_queue, block);
}

void __37__EKAutocompletePendingSearch_cancel__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    [v2 cancel];
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    *(v3 + 48) = 0;
  }
}

- (void)searchWithString:(uint64_t)a1 completionHandler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"EKAutocompleteSearch.m" lineNumber:129 description:@"searchWithString:completionHandler: called multiple times"];
}

void __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_2_cold_2(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v4 = *a2;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "Spotlight query controller returned an error when searching for string (%@), error: %@", &v5, 0x16u);
}

@end