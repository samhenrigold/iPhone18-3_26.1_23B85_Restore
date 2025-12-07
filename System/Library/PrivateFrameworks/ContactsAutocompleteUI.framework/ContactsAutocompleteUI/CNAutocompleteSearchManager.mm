@interface CNAutocompleteSearchManager
- (CNAutocompleteSearchManager)initWithAutocompleteSearchType:(unint64_t)type;
- (CNAutocompleteSearchManager)initWithAutocompleteStore:(id)store searchType:(unint64_t)type;
- (CNAutocompleteUIFetchDelegate)fetchDelegate;
- (id)searchForCorecipientsWithAutocompleteFetchContext:(id)context consumer:(id)consumer;
- (id)searchForText:(id)text withAutocompleteFetchContext:(id)context consumer:(id)consumer;
- (void)_handleContactsAutocompleteSearch:(id)search returnedResults:(id)results taskID:(id)d;
- (void)_handleContactsAutocompleteSearchFinished:(id)finished taskID:(id)d;
- (void)_handleTaskFinished:(id)finished context:(id)context;
- (void)cancelTaskWithID:(id)d;
- (void)dealloc;
- (void)didSelectRecipient:(id)recipient atIndex:(unint64_t)index;
- (void)removeRecipientResult:(id)result;
- (void)setShouldIncludeGroupResults:(BOOL)results;
@end

@implementation CNAutocompleteSearchManager

- (CNAutocompleteSearchManager)initWithAutocompleteSearchType:(unint64_t)type
{
  v5 = objc_alloc_init(MEMORY[0x1E6996378]);
  v6 = [(CNAutocompleteSearchManager *)self initWithAutocompleteStore:v5 searchType:type];

  return v6;
}

- (CNAutocompleteSearchManager)initWithAutocompleteStore:(id)store searchType:(unint64_t)type
{
  storeCopy = store;
  v19.receiver = self;
  v19.super_class = CNAutocompleteSearchManager;
  v8 = [(CNAutocompleteSearchManager *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_shouldUnifyResults = 1;
    v8->_searchTypes = 31;
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v12 = [bundleIdentifier copy];
    recentsBundleIdentifier = v9->_recentsBundleIdentifier;
    v9->_recentsBundleIdentifier = v12;

    v9->_autocompleteSearchType = type;
    objc_storeStrong(&v9->_autocompleteStore, store);
    if (!v9->_queue)
    {
      v14 = objc_alloc_init(MEMORY[0x1E696ADC8]);
      queue = v9->_queue;
      v9->_queue = v14;

      [(NSOperationQueue *)v9->_queue setMaxConcurrentOperationCount:1];
      [(NSOperationQueue *)v9->_queue setQualityOfService:25];
    }

    if (!v9->_taskContextsByTaskID)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      taskContextsByTaskID = v9->_taskContextsByTaskID;
      v9->_taskContextsByTaskID = v16;
    }
  }

  return v9;
}

- (void)setShouldIncludeGroupResults:(BOOL)results
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:results];
  shouldIncludeGroupResultsImpl = self->_shouldIncludeGroupResultsImpl;
  self->_shouldIncludeGroupResultsImpl = v4;

  MEMORY[0x1EEE66BB8](v4, shouldIncludeGroupResultsImpl);
}

- (void)didSelectRecipient:(id)recipient atIndex:(unint64_t)index
{
  autocompleteStore = self->_autocompleteStore;
  autocompleteResult = [recipient autocompleteResult];
  [(CNAutocompleteStore *)autocompleteStore userSelectedResult:autocompleteResult atSortedIndex:index];
}

- (void)removeRecipientResult:(id)result
{
  resultCopy = result;
  if ([resultCopy isRemovableFromSearchResults])
  {
    autocompleteResult = [resultCopy autocompleteResult];
    if (autocompleteResult)
    {
      autocompleteStore = self->_autocompleteStore;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __53__CNAutocompleteSearchManager_removeRecipientResult___block_invoke;
      v7[3] = &unk_1E7CD2930;
      v8 = resultCopy;
      [(CNAutocompleteStore *)autocompleteStore ignoreResult:autocompleteResult completionHandler:v7];
    }
  }
}

void __53__CNAutocompleteSearchManager_removeRecipientResult___block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = contactsSearchManagerLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1B8106000, v7, OS_LOG_TYPE_INFO, "removal of autocomplete recent %@ failed: %@", &v9, 0x16u);
    }
  }
}

- (id)searchForText:(id)text withAutocompleteFetchContext:(id)context consumer:(id)consumer
{
  v34 = *MEMORY[0x1E69E9840];
  textCopy = text;
  contextCopy = context;
  consumerCopy = consumer;
  _nextTaskID = [(CNAutocompleteSearchManager *)self _nextTaskID];
  v12 = [CNContactsAutocompleteSearchOperation operationWithOwner:self text:textCopy taskID:_nextTaskID autocompleteStore:self->_autocompleteStore];

  if (v12)
  {
    v14 = contactsSearchManagerLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      taskID = [v12 taskID];
      *buf = 138478083;
      v31 = textCopy;
      v32 = 2114;
      v33 = taskID;
      _os_log_impl(&dword_1B8106000, v14, OS_LOG_TYPE_DEFAULT, "Beginning CNContactsAutocompleteSearchOperation for %{private}@ (task %{public}@)", buf, 0x16u);
    }

    v17 = contactsSearchManagerLog(v16);
    taskID2 = [v12 taskID];
    unsignedIntegerValue = [taskID2 unsignedIntegerValue];

    if (unsignedIntegerValue - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B8106000, v17, OS_SIGNPOST_INTERVAL_BEGIN, unsignedIntegerValue, "autocompleteTextSearch", "autocompleteSearch started", buf, 2u);
    }

    [v12 setShouldUnifyResults:{-[CNAutocompleteSearchManager shouldUnifyResults](self, "shouldUnifyResults")}];
    [v12 setShouldIncludeGroupResults:self->_shouldIncludeGroupResultsImpl];
    searchControllerOptions = self->_searchControllerOptions;
    if (searchControllerOptions)
    {
      [v12 setAddressableGroupResultStyle:{-[CNAutocompleteSearchControllerOptions addressableGroupResultStyle](searchControllerOptions, "addressableGroupResultStyle")}];
    }

    [v12 configureForSearchTypes:self->_searchTypes];
    [v12 setFetchContext:contextCopy];
    [v12 setSimulateResults:{-[CNAutocompleteSearchManager isSimulatedResultsEnabled](self, "isSimulatedResultsEnabled")}];
    queue = self->_queue;
    v29 = v12;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    [(NSOperationQueue *)queue addOperations:v22 waitUntilFinished:0];

    v23 = [MEMORY[0x1E695DFA8] setWithObject:v12];
    v24 = [CNAutocompleteContactsSearchTaskContext contextWithConsumer:consumerCopy text:textCopy operations:v23 searchQueries:0];

    if (v24)
    {
      taskContextsByTaskID = self->_taskContextsByTaskID;
      taskID3 = [v12 taskID];
      [(NSMutableDictionary *)taskContextsByTaskID setObject:v24 forKey:taskID3];
    }
  }

  taskID4 = [v12 taskID];

  return taskID4;
}

- (id)searchForCorecipientsWithAutocompleteFetchContext:(id)context consumer:(id)consumer
{
  contextCopy = context;
  consumerCopy = consumer;
  _nextTaskID = [(CNAutocompleteSearchManager *)self _nextTaskID];
  v9 = [CNContactsAutocompleteSearchOperation operationWithOwner:self text:0 taskID:_nextTaskID autocompleteStore:self->_autocompleteStore];
  v10 = contactsSearchManagerLog(v9);
  taskID = [v9 taskID];
  unsignedIntegerValue = [taskID unsignedIntegerValue];

  if (unsignedIntegerValue - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v22 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8106000, v10, OS_SIGNPOST_INTERVAL_BEGIN, unsignedIntegerValue, "autocompleteCorecipientsSearch", "autocompleteSearch (corecipients) started", v22, 2u);
  }

  [v9 setShouldIncludeGroupResults:self->_shouldIncludeGroupResultsImpl];
  [v9 configureForSearchTypes:self->_searchTypes];
  [v9 setFetchContext:contextCopy];
  [v9 setSimulateResults:{-[CNAutocompleteSearchManager isSimulatedResultsEnabled](self, "isSimulatedResultsEnabled")}];
  searchControllerOptions = self->_searchControllerOptions;
  if (searchControllerOptions)
  {
    [v9 setAddressableGroupResultStyle:{-[CNAutocompleteSearchControllerOptions addressableGroupResultStyle](searchControllerOptions, "addressableGroupResultStyle")}];
  }

  corecipientSearchTaskIDs = self->_corecipientSearchTaskIDs;
  if (!corecipientSearchTaskIDs)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = self->_corecipientSearchTaskIDs;
    self->_corecipientSearchTaskIDs = v15;

    corecipientSearchTaskIDs = self->_corecipientSearchTaskIDs;
  }

  [(NSMutableArray *)corecipientSearchTaskIDs addObject:_nextTaskID];
  [(NSOperationQueue *)self->_queue addOperation:v9];
  v17 = [MEMORY[0x1E695DFA8] setWithObject:v9];
  otherAddressesAlreadyChosen = [contextCopy otherAddressesAlreadyChosen];
  v19 = [otherAddressesAlreadyChosen componentsJoinedByString:{@", "}];
  v20 = [CNAutocompleteContactsSearchTaskContext contextWithConsumer:consumerCopy text:v19 operations:v17 searchQueries:0];

  if (v20)
  {
    [(NSMutableDictionary *)self->_taskContextsByTaskID setObject:v20 forKey:_nextTaskID];
  }

  return _nextTaskID;
}

- (void)_handleTaskFinished:(id)finished context:(id)context
{
  v14 = *MEMORY[0x1E69E9840];
  finishedCopy = finished;
  contextCopy = context;
  v8 = contactsSearchManagerLog(contextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = finishedCopy;
    _os_log_impl(&dword_1B8106000, v8, OS_LOG_TYPE_DEFAULT, "task %{public}@ finished", &v12, 0xCu);
  }

  consumer = [contextCopy consumer];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    consumer2 = [contextCopy consumer];
    [consumer2 finishedTaskWithID:finishedCopy];
  }

  [(NSMutableDictionary *)self->_taskContextsByTaskID removeObjectForKey:finishedCopy];
}

- (void)_handleContactsAutocompleteSearchFinished:(id)finished taskID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  finishedCopy = finished;
  v8 = contactsSearchManagerLog(finishedCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543362;
    v19 = dCopy;
    _os_log_impl(&dword_1B8106000, v8, OS_LOG_TYPE_DEFAULT, "task %{public}@ finished", &v18, 0xCu);
  }

  v9 = [(NSMutableDictionary *)self->_taskContextsByTaskID objectForKey:dCopy];
  v10 = [(NSMutableArray *)self->_corecipientSearchTaskIDs containsObject:dCopy];
  v11 = v10;
  v12 = contactsSearchManagerLog(v10);
  unsignedIntegerValue = [dCopy unsignedIntegerValue];
  v14 = unsignedIntegerValue;
  if (v11)
  {
    if ((unsignedIntegerValue - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LOWORD(v18) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B8106000, v12, OS_SIGNPOST_INTERVAL_END, v14, "autocompleteCorecipientsSearch", "autocompleteSearchFinished (corecipients)", &v18, 2u);
    }

    if ([v9 consumerRespondsToCallbacks])
    {
      consumer = [v9 consumer];
      [consumer finishedSearchingForCorecipients];
    }

    [(NSMutableArray *)self->_corecipientSearchTaskIDs removeObject:dCopy];
  }

  else
  {
    if ((unsignedIntegerValue - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LOWORD(v18) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B8106000, v12, OS_SIGNPOST_INTERVAL_END, v14, "autocompleteTextSearch", "autocompleteSearchFinished", &v18, 2u);
    }

    if ([v9 consumerRespondsToCallbacks])
    {
      consumer2 = [v9 consumer];
      [consumer2 finishedSearchingForAutocompleteResults];
    }
  }

  operations = [v9 operations];
  [operations removeObject:finishedCopy];

  if ([v9 done])
  {
    [(CNAutocompleteSearchManager *)self _handleTaskFinished:dCopy context:v9];
  }
}

- (void)_handleContactsAutocompleteSearch:(id)search returnedResults:(id)results taskID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  dCopy = d;
  v9 = contactsSearchManagerLog(dCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543618;
    v20 = dCopy;
    v21 = 2048;
    v22 = [resultsCopy count];
    _os_log_impl(&dword_1B8106000, v9, OS_LOG_TYPE_DEFAULT, "task %{public}@ found %ld autocomplete results", &v19, 0x16u);
  }

  v11 = contactsSearchManagerLog(v10);
  unsignedIntegerValue = [dCopy unsignedIntegerValue];
  if ((unsignedIntegerValue - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = unsignedIntegerValue;
    if (os_signpost_enabled(v11))
    {
      v14 = [resultsCopy count];
      v19 = 134217984;
      v20 = v14;
      _os_signpost_emit_with_name_impl(&dword_1B8106000, v11, OS_SIGNPOST_EVENT, v13, "autocompleteSearchReturnedResults", "found %ld autocomplete results", &v19, 0xCu);
    }
  }

  v15 = [(NSMutableDictionary *)self->_taskContextsByTaskID objectForKey:dCopy];
  v16 = [(NSMutableArray *)self->_corecipientSearchTaskIDs containsObject:dCopy];
  consumerRespondsToCallbacks = [v15 consumerRespondsToCallbacks];
  if (v16)
  {
    if (consumerRespondsToCallbacks)
    {
      consumer = [v15 consumer];
      [consumer consumeCorecipientSearchResults:resultsCopy taskID:dCopy];
LABEL_11:
    }
  }

  else if (consumerRespondsToCallbacks)
  {
    consumer = [v15 consumer];
    [consumer consumeAutocompleteSearchResults:resultsCopy taskID:dCopy];
    goto LABEL_11;
  }
}

- (void)cancelTaskWithID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = contactsSearchManagerLog(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = dCopy;
    _os_log_impl(&dword_1B8106000, v5, OS_LOG_TYPE_DEFAULT, "task %{public}@ cancelled", &v15, 0xCu);
  }

  v6 = [(NSMutableArray *)self->_corecipientSearchTaskIDs containsObject:dCopy];
  v7 = v6;
  v8 = contactsSearchManagerLog(v6);
  unsignedIntegerValue = [dCopy unsignedIntegerValue];
  v10 = unsignedIntegerValue;
  if (v7)
  {
    if ((unsignedIntegerValue - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      LOWORD(v15) = 0;
      v11 = "autocompleteCorecipientsSearch";
      v12 = "autocompleteSearch (corecipients) was cancelled";
LABEL_10:
      _os_signpost_emit_with_name_impl(&dword_1B8106000, v8, OS_SIGNPOST_INTERVAL_END, v10, v11, v12, &v15, 2u);
    }
  }

  else if ((unsignedIntegerValue - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v15) = 0;
    v11 = "autocompleteTextSearch";
    v12 = "autocompleteSearch was cancelled";
    goto LABEL_10;
  }

  v13 = [(NSMutableDictionary *)self->_taskContextsByTaskID objectForKey:dCopy];
  operations = [v13 operations];
  [operations makeObjectsPerformSelector:sel_cancel];

  [(NSMutableDictionary *)self->_taskContextsByTaskID removeObjectForKey:dCopy];
}

- (void)dealloc
{
  contactSearchAccountChangedToken = self->_contactSearchAccountChangedToken;
  if (contactSearchAccountChangedToken)
  {
    notify_cancel(contactSearchAccountChangedToken);
  }

  v4.receiver = self;
  v4.super_class = CNAutocompleteSearchManager;
  [(CNAutocompleteSearchManager *)&v4 dealloc];
}

- (CNAutocompleteUIFetchDelegate)fetchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_fetchDelegate);

  return WeakRetained;
}

@end