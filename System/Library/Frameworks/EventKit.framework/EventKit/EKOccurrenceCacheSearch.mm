@interface EKOccurrenceCacheSearch
+ (id)searchWithCalendars:(id)calendars searchTerm:(id)term store:(id)store callback:(id)callback;
- (EKOccurrenceCacheSearch)initWithCalendars:(id)calendars searchTerm:(id)term store:(id)store callback:(id)callback;
- (id)searchTerm;
- (int)performSearchOperation:(unsigned int)operation inCalendars:(id)calendars withEventStore:(id)store andSearchTerm:(id)term;
- (void)cancel;
- (void)receivedBatchResultsFromServer:(id)server finished:(BOOL)finished;
- (void)run;
@end

@implementation EKOccurrenceCacheSearch

+ (id)searchWithCalendars:(id)calendars searchTerm:(id)term store:(id)store callback:(id)callback
{
  callbackCopy = callback;
  storeCopy = store;
  termCopy = term;
  calendarsCopy = calendars;
  v14 = [[self alloc] initWithCalendars:calendarsCopy searchTerm:termCopy store:storeCopy callback:callbackCopy];

  return v14;
}

- (EKOccurrenceCacheSearch)initWithCalendars:(id)calendars searchTerm:(id)term store:(id)store callback:(id)callback
{
  calendarsCopy = calendars;
  termCopy = term;
  storeCopy = store;
  callbackCopy = callback;
  v27.receiver = self;
  v27.super_class = EKOccurrenceCacheSearch;
  v15 = [(EKOccurrenceCacheSearch *)&v27 init];
  if (v15)
  {
    if (calendarsCopy)
    {
      if (termCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v15 file:@"EKOccurrenceCacheSearch.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"calendars != nil"}];

      if (termCopy)
      {
LABEL_4:
        if (storeCopy)
        {
          goto LABEL_5;
        }

        goto LABEL_10;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:v15 file:@"EKOccurrenceCacheSearch.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"searchTerm != nil"}];

    if (storeCopy)
    {
LABEL_5:
      if (callbackCopy)
      {
LABEL_6:
        v16 = [calendarsCopy copy];
        calendars = v15->_calendars;
        v15->_calendars = v16;

        v18 = [termCopy copy];
        searchTerm = v15->_searchTerm;
        v15->_searchTerm = v18;

        objc_storeStrong(&v15->_store, store);
        v20 = [callbackCopy copy];
        callback = v15->_callback;
        v15->_callback = v20;

        goto LABEL_7;
      }

LABEL_11:
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:v15 file:@"EKOccurrenceCacheSearch.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"callback != nil"}];

      goto LABEL_6;
    }

LABEL_10:
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:v15 file:@"EKOccurrenceCacheSearch.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"store != nil"}];

    if (callbackCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_7:

  return v15;
}

- (int)performSearchOperation:(unsigned int)operation inCalendars:(id)calendars withEventStore:(id)store andSearchTerm:(id)term
{
  v8 = *&operation;
  calendarsCopy = calendars;
  storeCopy = store;
  termCopy = term;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1007;
  connection = [storeCopy connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__EKOccurrenceCacheSearch_performSearchOperation_inCalendars_withEventStore_andSearchTerm___block_invoke;
  v15[3] = &unk_1E77FD310;
  v15[4] = &v16;
  [cADOperationProxySync CADOccurrenceCacheSearchWithTerm:termCopy inCalendars:calendarsCopy responseToken:v8 reply:v15];

  LODWORD(v8) = *(v17 + 6);
  _Block_object_dispose(&v16, 8);

  return v8;
}

- (void)run
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  selfCopy = self;
  v5 = [v3 errorWithCADResult:a2];
  v6 = 138412290;
  v7 = v5;
  _os_log_error_impl(&dword_1A805E000, selfCopy, OS_LOG_TYPE_ERROR, "Call to calendar daemon failed: %@", &v6, 0xCu);
}

- (void)cancel
{
  self->_canceled = 1;
  if (self->_replyID)
  {
    connection = [(EKEventStore *)self->_store connection];
    cADOperationProxy = [connection CADOperationProxy];
    [cADOperationProxy CADOccurrenceCacheCancelSearchWithReplyID:{-[NSNumber unsignedIntValue](self->_replyID, "unsignedIntValue")}];
  }
}

- (void)receivedBatchResultsFromServer:(id)server finished:(BOOL)finished
{
  finishedCopy = finished;
  v42 = *MEMORY[0x1E69E9840];
  serverCopy = server;
  v7 = [serverCopy count];
  v8 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    searchTerm = self->_searchTerm;
    v10 = MEMORY[0x1E696AD98];
    v11 = v8;
    v12 = [v10 numberWithUnsignedInteger:v7];
    v13 = [MEMORY[0x1E696AD98] numberWithBool:finishedCopy];
    replyID = self->_replyID;
    *buf = 138413058;
    v35 = searchTerm;
    v36 = 2114;
    v37 = v12;
    v38 = 2114;
    v39 = v13;
    v40 = 2114;
    v41 = replyID;
    _os_log_impl(&dword_1A805E000, v11, OS_LOG_TYPE_DEFAULT, "Received batch results from server for search term = %@, results = %{public}@/2, finished = %{public}@, reply ID = %{public}@", buf, 0x2Au);
  }

  selfCopy = self;
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7 >> 1];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = serverCopy;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v28;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v27 + 1) + 8 * i);
        if (v19)
        {
          v31[0] = @"occurrenceDate";
          v31[1] = @"objectID";
          v32[0] = v22;
          v23 = v22;
          v24 = [EKObjectID objectIDWithCADObjectID:v19];
          v32[1] = v24;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];

          [v15 addObject:v25];
          v19 = 0;
        }

        else
        {
          v19 = v22;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  (*(selfCopy->_callback + 2))();
}

- (id)searchTerm
{
  v2 = [(NSString *)self->_searchTerm copy];

  return v2;
}

@end