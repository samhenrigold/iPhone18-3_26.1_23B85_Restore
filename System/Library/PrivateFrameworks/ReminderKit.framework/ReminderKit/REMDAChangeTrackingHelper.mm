@interface REMDAChangeTrackingHelper
+ (BOOL)shouldIgnoreChangeOfModelClassProperties:(Class)properties withChangeObject:(id)object;
- (BOOL)compareCurrentChangeTokenToLastConsumedWithResult:(int64_t *)result error:(id *)error;
- (REMDAChangeTrackingHelper)initWithREMDAAccount:(id)account clientName:(id)name withREMStore:(id)store entityNames:(id)names;
- (id)_cachedModeObjectResultsForModelClass:(Class)class changeType:(int64_t)type;
- (id)_changedModelObjectsOfClass:(Class)class ofChangeTypes:(int64_t)types shouldOutputFetchedModels:(BOOL)models;
- (id)_debug_currentChangeTokenWithError:(id *)error;
- (id)_fetchModelObjectOfClass:(Class)class withObjectID:(id)d includeConcealedObjects:(BOOL)objects;
- (id)_fetchModelObjectsOfClass:(Class)class withObjectIDs:(id)ds;
- (id)_rem_accountObjectID;
- (id)_rem_changeTracking:(id)tracking;
- (id)changedIdentifiersOfModelClass:(Class)class ofChangeType:(int64_t)type;
- (id)changedModelObjectsOfModelClass:(Class)class ofChangeType:(int64_t)type;
- (id)currentChangeTokenWithError:(id *)error;
- (id)fetchAndInitializeChangeTrackingStateIfNeeded;
- (id)fetchChangesSinceLastConsumed;
- (int64_t)_changeTypeMaskFromChangeType:(int64_t)type;
- (void)_debug_resetCaches;
- (void)_handleIsConcealedUpdatesInChange:(id)change ofModelClass:(Class)class forClientID:(id)d concealedHandler:(id)handler unconcealedHandler:(id)unconcealedHandler;
- (void)_setCachedModeObjectResults:(id)results forModelClass:(Class)class changeType:(int64_t)type;
- (void)clearCachedModelObjectResultsForModelClass:(Class)class;
- (void)fetchAndInitializeChangeTrackingStateIfNeeded;
- (void)fetchChangesSinceLastConsumed;
- (void)markChangesConsumed:(BOOL)consumed;
@end

@implementation REMDAChangeTrackingHelper

- (REMDAChangeTrackingHelper)initWithREMDAAccount:(id)account clientName:(id)name withREMStore:(id)store entityNames:(id)names
{
  accountCopy = account;
  nameCopy = name;
  storeCopy = store;
  namesCopy = names;
  if (!accountCopy)
  {
    v19 = +[REMLog changeTracking];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [REMDAChangeTrackingHelper initWithREMDAAccount:v19 clientName:? withREMStore:? entityNames:?];
    }

    goto LABEL_12;
  }

  if (!storeCopy)
  {
    v19 = +[REMLog changeTracking];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [REMDAChangeTrackingHelper initWithREMDAAccount:? clientName:? withREMStore:? entityNames:?];
    }

    goto LABEL_12;
  }

  v21.receiver = self;
  v21.super_class = REMDAChangeTrackingHelper;
  v15 = [(REMDAChangeTrackingHelper *)&v21 init];
  self = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_account, account);
    objc_storeStrong(&self->_remStore, store);
    objc_storeStrong(&self->_clientName, name);
    objc_storeStrong(&self->_entityNames, names);
    v16 = [(REMDAChangeTrackingHelper *)self _rem_changeTracking:nameCopy];
    changeTracking = self->_changeTracking;
    self->_changeTracking = v16;

    [(REMChangeTracking *)self->_changeTracking setEntityNames:namesCopy];
    if (!self->_changeTracking)
    {
      v19 = +[REMLog changeTracking];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [REMDAChangeTrackingHelper initWithREMDAAccount:? clientName:? withREMStore:? entityNames:?];
      }

LABEL_12:

      selfCopy = 0;
      goto LABEL_13;
    }
  }

  self = self;
  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (id)currentChangeTokenWithError:(id *)error
{
  cached_currentChangeToken = [(REMDAChangeTrackingHelper *)self cached_currentChangeToken];
  if (cached_currentChangeToken)
  {
    v6 = cached_currentChangeToken;
    v7 = 0;
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  changeTracking = [(REMDAChangeTrackingHelper *)self changeTracking];
  v11 = 0;
  v6 = [changeTracking currentChangeTokenWithError:&v11];
  v7 = v11;

  [(REMDAChangeTrackingHelper *)self setCached_currentChangeToken:v6];
  if (error)
  {
LABEL_3:
    v8 = v7;
    *error = v7;
  }

LABEL_4:

  return v6;
}

- (id)fetchAndInitializeChangeTrackingStateIfNeeded
{
  v27 = *MEMORY[0x1E69E9840];
  changeTracking = [(REMDAChangeTrackingHelper *)self changeTracking];
  changeTrackingClientID = [changeTracking changeTrackingClientID];

  cached_currentTrackingState = [(REMDAChangeTrackingHelper *)self cached_currentTrackingState];
  if (cached_currentTrackingState)
  {
LABEL_2:
    v6 = +[REMLog changeTracking];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      lastConsumedChangeToken = [(REMChangeTrackingState *)cached_currentTrackingState lastConsumedChangeToken];
      lastConsumedDate = [(REMChangeTrackingState *)cached_currentTrackingState lastConsumedDate];
      *buf = 138543874;
      v22 = changeTrackingClientID;
      v23 = 2114;
      v24 = lastConsumedChangeToken;
      v25 = 2114;
      v26 = lastConsumedDate;
      _os_log_impl(&dword_19A0DB000, v6, OS_LOG_TYPE_DEFAULT, "REMDAChangeTrackingHelper: Found and fetched change tracking state for {clientID: %{public}@, lastSyncToken: %{public}@, lastSyncDate: %{public}@}", buf, 0x20u);
    }

    goto LABEL_4;
  }

  changeTracking2 = [(REMDAChangeTrackingHelper *)self changeTracking];
  v20 = 0;
  cached_currentTrackingState = [changeTracking2 getTrackingStateWithError:&v20];
  v11 = v20;

  if (v11)
  {
    v6 = +[REMLog changeTracking];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [REMDAChangeTrackingHelper fetchAndInitializeChangeTrackingStateIfNeeded];
    }

    goto LABEL_11;
  }

  if (cached_currentTrackingState)
  {
    goto LABEL_2;
  }

  cached_currentTrackingState = objc_alloc_init(REMChangeTrackingState);
  v19 = 0;
  v6 = [(REMDAChangeTrackingHelper *)self currentChangeTokenWithError:&v19];
  v13 = v19;
  v11 = v13;
  if (!v6 || v13)
  {
    v17 = +[REMLog changeTracking];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [REMDAChangeTrackingHelper fetchAndInitializeChangeTrackingStateIfNeeded];
    }

    goto LABEL_26;
  }

  [(REMChangeTrackingState *)cached_currentTrackingState setLastConsumedChangeToken:v6];
  v14 = +[REMLog changeTracking];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    lastConsumedChangeToken2 = [(REMChangeTrackingState *)cached_currentTrackingState lastConsumedChangeToken];
    *buf = 138543618;
    v22 = changeTrackingClientID;
    v23 = 2114;
    v24 = lastConsumedChangeToken2;
    _os_log_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_DEFAULT, "REMDAChangeTrackingHelper: Initializing a change tracking state for {clientID: %{public}@, nowToken: %{public}@}", buf, 0x16u);
  }

  changeTracking3 = [(REMDAChangeTrackingHelper *)self changeTracking];
  v18 = 0;
  [changeTracking3 saveTrackingState:cached_currentTrackingState error:&v18];
  v11 = v18;

  if (v11)
  {
    v17 = +[REMLog changeTracking];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [REMDAChangeTrackingHelper fetchAndInitializeChangeTrackingStateIfNeeded];
    }

LABEL_26:

LABEL_11:
LABEL_12:
    cached_currentTrackingState = objc_alloc_init(REMChangeTrackingState);
    goto LABEL_13;
  }

LABEL_4:

  cached_currentTrackingState2 = [(REMDAChangeTrackingHelper *)self cached_currentTrackingState];

  if (cached_currentTrackingState2 != cached_currentTrackingState)
  {
    [(REMDAChangeTrackingHelper *)self setCached_currentTrackingState:cached_currentTrackingState];
  }

  if (!cached_currentTrackingState)
  {
    goto LABEL_12;
  }

LABEL_13:

  return cached_currentTrackingState;
}

- (BOOL)compareCurrentChangeTokenToLastConsumedWithResult:(int64_t *)result error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  changeTracking = [(REMDAChangeTrackingHelper *)self changeTracking];
  changeTrackingClientID = [changeTracking changeTrackingClientID];

  upToToken = [(REMDAChangeTrackingHelper *)self upToToken];
  if (upToToken)
  {
    lastConsumedChangeToken = upToToken;
LABEL_4:
    v22 = 0;
    v12 = [(REMDAChangeTrackingHelper *)self currentChangeTokenWithError:&v22];
    v13 = v22;
    v14 = v13;
    if (!v12 || v13)
    {
      v17 = +[REMLog changeTracking];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [REMDAChangeTrackingHelper compareCurrentChangeTokenToLastConsumedWithResult:error:];
      }

      v15 = 0;
    }

    else
    {
      v21 = 0;
      v15 = [v12 compareToken:lastConsumedChangeToken error:&v21];
      v14 = v21;
      v16 = +[REMLog changeTracking];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        v24 = changeTrackingClientID;
        v25 = 2114;
        v26 = v12;
        v27 = 2114;
        v28 = lastConsumedChangeToken;
        _os_log_impl(&dword_19A0DB000, v16, OS_LOG_TYPE_INFO, "REMDAChangeTrackingHelper: compareCurrentChangeTokenToLastConsumedWithError: comparing current token vs last consumed: {clientID: %{public}@, current: %{public}@, lastConsumed: %{public}@}", buf, 0x20u);
      }

      if (v15 && !v14)
      {
        goto LABEL_16;
      }

      v17 = +[REMLog changeTracking];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [REMDAChangeTrackingHelper compareCurrentChangeTokenToLastConsumedWithResult:error:];
      }
    }

LABEL_16:
    goto LABEL_17;
  }

  fetchAndInitializeChangeTrackingStateIfNeeded = [(REMDAChangeTrackingHelper *)self fetchAndInitializeChangeTrackingStateIfNeeded];
  lastConsumedChangeToken = [fetchAndInitializeChangeTrackingStateIfNeeded lastConsumedChangeToken];

  if (lastConsumedChangeToken)
  {
    goto LABEL_4;
  }

  v20 = +[REMLog changeTracking];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [REMDAChangeTrackingHelper compareCurrentChangeTokenToLastConsumedWithResult:error:];
  }

  v14 = [REMError internalErrorWithDebugDescription:@"REMDAChangeTrackingHelper: Cannot get last consumed token when trying to peekHasChangesSinceLastConsumed"];
  v15 = 0;
LABEL_17:

  if (result)
  {
    *result = v15;
  }

  if (error)
  {
    v18 = v14;
    *error = v14;
  }

  return v14 == 0;
}

- (id)fetchChangesSinceLastConsumed
{
  v43 = *MEMORY[0x1E69E9840];
  changeSet = [(REMDAChangeTrackingHelper *)self changeSet];

  if (!changeSet)
  {
    changeTracking = [(REMDAChangeTrackingHelper *)self changeTracking];

    if (!changeTracking)
    {
      changeTrackingClientID = +[REMLog changeTracking];
      if (os_log_type_enabled(changeTrackingClientID, OS_LOG_TYPE_ERROR))
      {
        [(REMDAChangeTrackingHelper *)self fetchChangesSinceLastConsumed];
      }

      goto LABEL_23;
    }

    changeTracking2 = [(REMDAChangeTrackingHelper *)self changeTracking];
    changeTrackingClientID = [changeTracking2 changeTrackingClientID];

    fetchAndInitializeChangeTrackingStateIfNeeded = [(REMDAChangeTrackingHelper *)self fetchAndInitializeChangeTrackingStateIfNeeded];
    lastConsumedChangeToken = [fetchAndInitializeChangeTrackingStateIfNeeded lastConsumedChangeToken];
    _debug_mockChangeSet = [(REMDAChangeTrackingHelper *)self _debug_mockChangeSet];
    if (_debug_mockChangeSet)
    {
      v10 = _debug_mockChangeSet;
      v11 = 0;
    }

    else
    {
      changeTracking3 = [(REMDAChangeTrackingHelper *)self changeTracking];
      v34 = 0;
      v10 = [changeTracking3 fetchHistoryAfterToken:lastConsumedChangeToken error:&v34];
      v11 = v34;
    }

    v13 = +[REMLog changeTracking];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      lastConsumedChangeToken2 = [fetchAndInitializeChangeTrackingStateIfNeeded lastConsumedChangeToken];
      lastConsumedDate = [fetchAndInitializeChangeTrackingStateIfNeeded lastConsumedDate];
      *buf = 138544130;
      v36 = changeTrackingClientID;
      v37 = 2114;
      v38 = lastConsumedChangeToken2;
      v39 = 2114;
      v40 = lastConsumedDate;
      v41 = 2114;
      v42 = v10;
      _os_log_impl(&dword_19A0DB000, v13, OS_LOG_TYPE_DEFAULT, "REMDAChangeTrackingHelper: fetched history since {clientID: %{public}@, lastSyncToken: %{public}@, lastSyncDate: %{public}@, changeSet: %{public}@}", buf, 0x2Au);
    }

    [(REMDAChangeTrackingHelper *)self setChangeSet:v10];
    [(REMDAChangeTrackingHelper *)self setSinceToken:lastConsumedChangeToken];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(REMDAChangeTrackingHelper *)self setCached_insertedModelObjectResultsByModelClassName:dictionary];

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [(REMDAChangeTrackingHelper *)self setCached_updatedModelObjectResultsByModelClassName:dictionary2];

    error = [v10 error];
    if (error)
    {
    }

    else if (([v10 isTruncated] & 1) == 0)
    {
      account = [(REMDAChangeTrackingHelper *)self account];
      rem_accountObjectID = [account rem_accountObjectID];
      v28 = [v10 lastChangeTokenForAccountID:rem_accountObjectID];
      [(REMDAChangeTrackingHelper *)self setUpToToken:v28];

      v20 = +[REMLog changeTracking];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        upToToken = [(REMDAChangeTrackingHelper *)self upToToken];
        *buf = 138543874;
        v36 = changeTrackingClientID;
        v37 = 2114;
        v38 = lastConsumedChangeToken;
        v39 = 2114;
        v40 = upToToken;
        _os_log_impl(&dword_19A0DB000, v20, OS_LOG_TYPE_DEFAULT, "REMDAChangeTrackingHelper: fetchChangesSinceLastConsumed done {clientID: %{public}@, lastSyncToken: %{public}@, upToToken: %{public}@}", buf, 0x20u);
      }

      goto LABEL_18;
    }

    v19 = +[REMLog changeTracking];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "isTruncated")}];
      error2 = [v10 error];
      localizedDescription = [error2 localizedDescription];
      *buf = 138544130;
      v36 = changeTrackingClientID;
      v37 = 2114;
      v38 = lastConsumedChangeToken;
      v39 = 2114;
      v40 = v30;
      v41 = 2112;
      v42 = localizedDescription;
      _os_log_error_impl(&dword_19A0DB000, v19, OS_LOG_TYPE_ERROR, "REMDAChangeTrackingHelper: ERROR: Fetched truncated or error change history {clientID: %{public}@, lastSyncToken: %{public}@, isTruncated: %{public}@, changeSet.error: %@}", buf, 0x2Au);
    }

    v33 = v11;
    v20 = [(REMDAChangeTrackingHelper *)self currentChangeTokenWithError:&v33];
    v21 = v33;

    v22 = +[REMLog changeTracking];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v36 = changeTrackingClientID;
      v37 = 2114;
      v38 = v20;
      _os_log_impl(&dword_19A0DB000, v22, OS_LOG_TYPE_DEFAULT, "REMDAChangeTrackingHelper: Will try to reset tracking state to current token because we had a truncated or error change-set {clientID: %{public}@, nowToken: %{public}@}", buf, 0x16u);
    }

    [(REMDAChangeTrackingHelper *)self setUpToToken:v20];
    v11 = v21;
LABEL_18:

    [(REMDAChangeTrackingHelper *)self setCached_currentChangeToken:0];
    if (v11)
    {
      v23 = +[REMLog changeTracking];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(REMDAChangeTrackingHelper *)self fetchChangesSinceLastConsumed];
      }
    }

LABEL_23:
  }

  changeSet2 = [(REMDAChangeTrackingHelper *)self changeSet];

  return changeSet2;
}

- (void)markChangesConsumed:(BOOL)consumed
{
  consumedCopy = consumed;
  v49 = *MEMORY[0x1E69E9840];
  changeTracking = [(REMDAChangeTrackingHelper *)self changeTracking];

  if (changeTracking)
  {
    changeTracking2 = [(REMDAChangeTrackingHelper *)self changeTracking];
    changeTrackingClientID = [changeTracking2 changeTrackingClientID];

    changeSet = [(REMDAChangeTrackingHelper *)self changeSet];
    if (changeSet)
    {
      changeSet2 = [(REMDAChangeTrackingHelper *)self changeSet];
      isTruncated = [changeSet2 isTruncated];
    }

    else
    {
      isTruncated = 0;
    }

    if (consumedCopy || isTruncated)
    {
      changeTracking3 = [(REMDAChangeTrackingHelper *)self changeTracking];
      v38 = 0;
      v18 = [changeTracking3 currentChangeTokenWithError:&v38];
      sinceToken2 = v38;

      if (sinceToken2)
      {
        v20 = +[REMLog changeTracking];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          account = [(REMDAChangeTrackingHelper *)self account];
          loggingDescription = [account loggingDescription];
          *buf = 138543874;
          v40 = changeTrackingClientID;
          v41 = 2114;
          v42 = loggingDescription;
          v43 = 2112;
          v44 = sinceToken2;
          _os_log_error_impl(&dword_19A0DB000, v20, OS_LOG_TYPE_ERROR, "REMDAChangeTrackingHelper: ERROR: Cannot get current token to mark to {clientID: %{public}@, account: %{public}@, error: %@}", buf, 0x20u);
        }
      }

      [(REMDAChangeTrackingHelper *)self setUpToToken:v18];
LABEL_25:

      if (!v18)
      {
LABEL_34:
        [(REMDAChangeTrackingHelper *)self setChangeSet:0];
        [(REMDAChangeTrackingHelper *)self setCached_insertedModelObjectResultsByModelClassName:0];
        [(REMDAChangeTrackingHelper *)self setCached_updatedModelObjectResultsByModelClassName:0];
        [(REMDAChangeTrackingHelper *)self setCached_currentChangeToken:0];
        [(REMDAChangeTrackingHelper *)self setCached_currentTrackingState:0];

        return;
      }

      v26 = objc_alloc_init(REMChangeTrackingState);
      [(REMChangeTrackingState *)v26 setLastConsumedChangeToken:v18];
      changeTracking4 = [(REMDAChangeTrackingHelper *)self changeTracking];
      v36 = 0;
      [changeTracking4 saveTrackingState:v26 error:&v36];
      v28 = v36;

      v29 = +[REMLog changeTracking];
      v30 = v29;
      if (v28)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v28 localizedDescription];
          account2 = [(REMDAChangeTrackingHelper *)self account];
          loggingDescription2 = [account2 loggingDescription];
          *buf = 138544386;
          v40 = v18;
          v41 = 2114;
          v42 = changeTrackingClientID;
          v43 = 2112;
          v44 = localizedDescription;
          v45 = 2114;
          v46 = loggingDescription2;
          v47 = 1024;
          v48 = consumedCopy;
          _os_log_error_impl(&dword_19A0DB000, v30, OS_LOG_TYPE_ERROR, "REMDAChangeTrackingHelper: ERROR: Failed to save tracking state with error {tokenToSave: %{public}@, clientID: %{public}@, error: %@, account: %{public}@, forcedToCurrent: %d}", buf, 0x30u);

LABEL_31:
        }
      }

      else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        localizedDescription = [(REMDAChangeTrackingHelper *)self account];
        account2 = [localizedDescription loggingDescription];
        *buf = 138544130;
        v40 = v18;
        v41 = 2114;
        v42 = changeTrackingClientID;
        v43 = 2114;
        v44 = account2;
        v45 = 1024;
        LODWORD(v46) = consumedCopy;
        _os_log_impl(&dword_19A0DB000, v30, OS_LOG_TYPE_DEFAULT, "REMDAChangeTrackingHelper: markChangesConsumed done {tokenToSave: %{public}@, clientID: %{public}@, account: %{public}@, forcedToCurrent: %d}", buf, 0x26u);
        goto LABEL_31;
      }

LABEL_33:
      goto LABEL_34;
    }

    sinceToken = [(REMDAChangeTrackingHelper *)self sinceToken];
    if (!sinceToken || (v12 = sinceToken, [(REMDAChangeTrackingHelper *)self upToToken], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, !v13))
    {
      v18 = +[REMLog changeTracking];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        account3 = [(REMDAChangeTrackingHelper *)self account];
        loggingDescription3 = [account3 loggingDescription];
        *buf = 138543618;
        v40 = changeTrackingClientID;
        v41 = 2114;
        v42 = loggingDescription3;
        _os_log_impl(&dword_19A0DB000, v18, OS_LOG_TYPE_DEFAULT, "REMDAChangeTrackingHelper: No newer change token in this history {clientID: %{public}@, account: %{public}@}", buf, 0x16u);
      }

      goto LABEL_33;
    }

    sinceToken2 = [(REMDAChangeTrackingHelper *)self sinceToken];
    upToToken = [(REMDAChangeTrackingHelper *)self upToToken];
    v37 = 0;
    v16 = [upToToken compareToken:sinceToken2 error:&v37];
    v17 = v37;
    if (v16 == 3)
    {
      v23 = +[REMLog changeTracking];
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      account4 = [(REMDAChangeTrackingHelper *)self account];
      loggingDescription4 = [account4 loggingDescription];
      *buf = 138543874;
      v40 = upToToken;
      v41 = 2114;
      v42 = changeTrackingClientID;
      v43 = 2114;
      v44 = loggingDescription4;
      _os_log_impl(&dword_19A0DB000, v23, OS_LOG_TYPE_DEFAULT, "REMDAChangeTrackingHelper: No newer change token in this history {token: %{public}@, clientID: %{public}@, account: %{public}@}", buf, 0x20u);
    }

    else
    {
      if (v16 == 4)
      {
        v18 = upToToken;
LABEL_24:

        goto LABEL_25;
      }

      v23 = +[REMLog changeTracking];
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
LABEL_23:

        v18 = 0;
        goto LABEL_24;
      }

      account4 = [(REMDAChangeTrackingHelper *)self account];
      loggingDescription4 = [account4 loggingDescription];
      *buf = 138544130;
      v40 = upToToken;
      v41 = 2114;
      v42 = changeTrackingClientID;
      v43 = 2114;
      v44 = loggingDescription4;
      v45 = 2112;
      v46 = v17;
      _os_log_error_impl(&dword_19A0DB000, v23, OS_LOG_TYPE_ERROR, "REMDAChangeTrackingHelper: ERROR: Unexpected change token {token: %{public}@, clientID: %{public}@, account: %{public}@, error: %@}", buf, 0x2Au);
    }

    goto LABEL_23;
  }
}

- (id)changedModelObjectsOfModelClass:(Class)class ofChangeType:(int64_t)type
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![(objc_class *)class performSelector:sel_isChangeTrackableFetchableModel])
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D930];
    v9 = NSStringFromClass(class);
    [v7 raise:v8 format:{@"The given model class is not a known trackable-fetchable type for this API, you shouldn't call this with {modelClass: %@}.", v9}];
  }

  v10 = [(REMDAChangeTrackingHelper *)self _cachedModeObjectResultsForModelClass:class changeType:type];
  if (!v10)
  {
    v10 = [(REMDAChangeTrackingHelper *)self _changedModelObjectsOfClass:class ofChangeTypes:[(REMDAChangeTrackingHelper *)self _changeTypeMaskFromChangeType:type] shouldOutputFetchedModels:1];
    [(REMDAChangeTrackingHelper *)self _setCachedModeObjectResults:v10 forModelClass:class changeType:type];
  }

  return v10;
}

- (id)changedIdentifiersOfModelClass:(Class)class ofChangeType:(int64_t)type
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![(objc_class *)class performSelector:sel_isChangeTrackableModel])
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D930];
    v9 = NSStringFromClass(class);
    [v7 raise:v8 format:{@"The given model class is not a known trackable type for this API, you shouldn't call this with {modelClass: %@}.", v9}];
  }

  v10 = [(REMDAChangeTrackingHelper *)self _changeTypeMaskFromChangeType:type];

  return [(REMDAChangeTrackingHelper *)self _changedModelObjectsOfClass:class ofChangeTypes:v10 shouldOutputFetchedModels:0];
}

- (id)_changedModelObjectsOfClass:(Class)class ofChangeTypes:(int64_t)types shouldOutputFetchedModels:(BOOL)models
{
  modelsCopy = models;
  v93 = *MEMORY[0x1E69E9840];
  changeTracking = [(REMDAChangeTrackingHelper *)self changeTracking];

  if (changeTracking)
  {
    changeTracking2 = [(REMDAChangeTrackingHelper *)self changeTracking];
    changeTrackingClientID = [changeTracking2 changeTrackingClientID];

    if (!changeTrackingClientID)
    {
      _rem_accountObjectID = +[REMLog changeTracking];
      if (os_log_type_enabled(_rem_accountObjectID, OS_LOG_TYPE_ERROR))
      {
        [REMDAChangeTrackingHelper _changedModelObjectsOfClass:_rem_accountObjectID ofChangeTypes:? shouldOutputFetchedModels:?];
      }

      v16 = 0;
      goto LABEL_23;
    }

    _rem_accountObjectID = [(REMDAChangeTrackingHelper *)self _rem_accountObjectID];
    if (!_rem_accountObjectID)
    {
      v17 = +[REMLog changeTracking];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [REMDAChangeTrackingHelper _changedModelObjectsOfClass:changeTrackingClientID ofChangeTypes:? shouldOutputFetchedModels:?];
      }

      v16 = 0;
      goto LABEL_22;
    }

    array = [MEMORY[0x1E695DF70] array];
    changeSet = [(REMDAChangeTrackingHelper *)self changeSet];

    if (!changeSet)
    {
      v18 = +[REMLog changeTracking];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v83 = changeTrackingClientID;
        _os_log_impl(&dword_19A0DB000, v18, OS_LOG_TYPE_DEFAULT, "REMDAChangeTrackingHelper: Change set is nil and we have nothing to enumerate for %{public}@.", buf, 0xCu);
      }

      goto LABEL_21;
    }

    changeSet2 = [(REMDAChangeTrackingHelper *)self changeSet];
    if ([changeSet2 isTruncated])
    {

      goto LABEL_19;
    }

    changeSet3 = [(REMDAChangeTrackingHelper *)self changeSet];
    error = [changeSet3 error];

    if (error)
    {
LABEL_19:
      v18 = +[REMLog changeTracking];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v21 = MEMORY[0x1E696AD98];
        changeSet4 = [(REMDAChangeTrackingHelper *)self changeSet];
        v23 = [v21 numberWithBool:{objc_msgSend(changeSet4, "isTruncated")}];
        changeSet5 = [(REMDAChangeTrackingHelper *)self changeSet];
        error2 = [changeSet5 error];
        *buf = 138543874;
        v83 = changeTrackingClientID;
        v84 = 2114;
        typesCopy2 = v23;
        v86 = 2112;
        typesCopy3 = error2;
        _os_log_impl(&dword_19A0DB000, v18, OS_LOG_TYPE_DEFAULT, "REMDAChangeTrackingHelper: Change set was truncated or had error and we are not going to enumerate it for %{public}@ {isTruncated: %{public}@, changeSet.error: %@}.", buf, 0x20u);
      }

LABEL_21:

      v17 = array;
      v16 = v17;
LABEL_22:

LABEL_23:
      goto LABEL_24;
    }

    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    array4 = [MEMORY[0x1E695DF70] array];
    v29 = 2 * (types & 1);
    if ((types & 4) != 0)
    {
      v29 = 2;
    }

    v68 = v29;
    changeSet6 = [(REMDAChangeTrackingHelper *)self changeSet];
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __97__REMDAChangeTrackingHelper__changedModelObjectsOfClass_ofChangeTypes_shouldOutputFetchedModels___block_invoke;
    v76[3] = &unk_1E7508E90;
    v76[4] = self;
    classCopy = class;
    v67 = changeTrackingClientID;
    v77 = v67;
    v31 = array2;
    v78 = v31;
    v64 = array4;
    v79 = v64;
    v65 = array3;
    v80 = v65;
    [changeSet6 enumerateChanges:v68 | types forModelsOfClass:class withBlock:v76];

    switch(types)
    {
      case 1:
        if (!modelsCopy || (v38 = [(objc_class *)class rem_DA_supportsFetching], v36 = v31, (v38 & 1) == 0))
        {
          v58 = v31;

          array = v58;
          goto LABEL_58;
        }

        break;
      case 2:
        if (!modelsCopy || (v35 = [(objc_class *)class rem_DA_supportsFetching], v36 = v65, (v35 & 1) == 0))
        {
          v34 = v65;
          v37 = v65;

          array = v37;
          v32 = v64;
          goto LABEL_59;
        }

        break;
      case 4:
        v32 = v64;
        v33 = v64;

        array = v33;
        v34 = v65;
LABEL_59:
        v17 = array;

        v16 = v17;
        goto LABEL_22;
      default:
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Mixed change types is not supported."];
LABEL_58:
        v32 = v64;
        v34 = v65;
        goto LABEL_59;
    }

    v39 = v36;
    if (v39)
    {
      v40 = v39;
      v41 = [(REMDAChangeTrackingHelper *)self _fetchModelObjectsOfClass:class withObjectIDs:v39];
      v63 = v41;
      if (v41)
      {
        v61 = v31;
        v62 = v40;
        allValues = [v41 allValues];
        array5 = [MEMORY[0x1E695DF70] array];

        array6 = [MEMORY[0x1E695DF70] array];
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v43 = allValues;
        v44 = [v43 countByEnumeratingWithState:&v72 objects:v92 count:16];
        log = v43;
        if (v44)
        {
          v45 = v44;
          v46 = *v73;
          do
          {
            for (i = 0; i != v45; ++i)
            {
              if (*v73 != v46)
              {
                objc_enumerationMutation(v43);
              }

              v48 = *(*(&v72 + 1) + 8 * i);
              accountID = [v48 accountID];
              v50 = [accountID isEqual:_rem_accountObjectID];

              if (v50)
              {
                [array5 addObject:v48];
                objectID = [v48 objectID];
                [array6 addObject:objectID];
              }

              else
              {
                objectID = +[REMLog changeTracking];
                if (os_log_type_enabled(objectID, OS_LOG_TYPE_DEFAULT))
                {
                  objectID2 = [v48 objectID];
                  accountID2 = [v48 accountID];
                  v54 = [v67 description];
                  *buf = 138544386;
                  v83 = objectID2;
                  v84 = 2114;
                  typesCopy2 = accountID2;
                  v86 = 2114;
                  typesCopy3 = _rem_accountObjectID;
                  v88 = 2114;
                  v89 = v54;
                  v90 = 2048;
                  typesCopy = types;
                  _os_log_impl(&dword_19A0DB000, objectID, OS_LOG_TYPE_DEFAULT, "REMDAChangeTrackingHelper: Unexpectedly got a changed model object from a different account {modelObject: %{public}@, modelObject.account: %{public}@, daREMAccount: %{public}@, clientID: %{public}@, changeType: %lu}", buf, 0x34u);

                  v43 = log;
                }
              }
            }

            v45 = [v43 countByEnumeratingWithState:&v72 objects:v92 count:16];
          }

          while (v45);
        }

        v55 = [MEMORY[0x1E695DF70] arrayWithArray:v62];
        [v55 removeObjectsInArray:array6];
        v32 = v64;
        v34 = v65;
        array = array5;
        if ([v55 count])
        {
          v56 = +[REMLog changeTracking];
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v57 = [v67 description];
            *buf = 138543874;
            v83 = v57;
            v84 = 2048;
            typesCopy2 = types;
            v86 = 2114;
            typesCopy3 = v55;
            _os_log_impl(&dword_19A0DB000, v56, OS_LOG_TYPE_DEFAULT, "REMDAChangeTrackingHelper: Could not find changed model object(s) in the ReminderKit with {clientID: %{public}@, changeType: %lu, missingIDs: %{public}@}", buf, 0x20u);
          }
        }

        v31 = v61;
        v40 = v62;
      }

      else
      {
        log = +[REMLog changeTracking];
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          [v67 description];
          v60 = v59 = v40;
          *buf = 138543874;
          v83 = _rem_accountObjectID;
          v84 = 2114;
          typesCopy2 = v60;
          v86 = 2048;
          typesCopy3 = types;
          _os_log_error_impl(&dword_19A0DB000, log, OS_LOG_TYPE_ERROR, "REMDAChangeTrackingHelper: ERROR: Failed to fetch changed model objects for account: {remAccount: %{public}@, clientID: %{public}@, changeType: %lu}", buf, 0x20u);

          v40 = v59;
        }

        v32 = v64;
        v34 = v65;
      }

      goto LABEL_59;
    }

    goto LABEL_58;
  }

  changeTrackingClientID = +[REMLog changeTracking];
  if (os_log_type_enabled(changeTrackingClientID, OS_LOG_TYPE_ERROR))
  {
    [REMDAChangeTrackingHelper _changedModelObjectsOfClass:changeTrackingClientID ofChangeTypes:? shouldOutputFetchedModels:?];
  }

  v16 = 0;
LABEL_24:

  return v16;
}

void __97__REMDAChangeTrackingHelper__changedModelObjectsOfClass_ofChangeTypes_shouldOutputFetchedModels___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 changedObjectID];
  v7 = v6;
  if (v6)
  {
    switch(a3)
    {
      case 2:
        v15 = [v5 tombstone];
        v16 = [*(a1 + 72) rem_DA_deletedKeyFromTombstoneBlock];
        v17 = (v16)[2](v16, v15);

        if (v17)
        {
          [*(a1 + 56) addObject:v17];
        }

        else
        {
          v18 = +[REMLog changeTracking];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [*(a1 + 40) description];
            *buf = 138543618;
            *&buf[4] = v7;
            *&buf[12] = 2114;
            *&buf[14] = v19;
            _os_log_impl(&dword_19A0DB000, v18, OS_LOG_TYPE_DEFAULT, "REMDAChangeTrackingHelper: (NOTICE)(May be legit) Had a (real-)deleted model object without a deletion key (e.g. external id) {objectID: %{public}@, clientID: %{public}@}", buf, 0x16u);
          }
        }

        break;
      case 1:
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v35 = 0;
        v12 = *(a1 + 72);
        v14 = *(a1 + 32);
        v13 = *(a1 + 40);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __97__REMDAChangeTrackingHelper__changedModelObjectsOfClass_ofChangeTypes_shouldOutputFetchedModels___block_invoke_2_21;
        v26[3] = &unk_1E7508E40;
        v27 = *(a1 + 56);
        v28 = buf;
        v20 = MEMORY[0x1E69E9820];
        v21 = 3221225472;
        v22 = __97__REMDAChangeTrackingHelper__changedModelObjectsOfClass_ofChangeTypes_shouldOutputFetchedModels___block_invoke_3;
        v23 = &unk_1E7508E68;
        v24 = *(a1 + 48);
        v25 = buf;
        [v14 _handleIsConcealedUpdatesInChange:v5 ofModelClass:v12 forClientID:v13 concealedHandler:v26 unconcealedHandler:&v20];
        if ((*(*&buf[8] + 24) & 1) == 0 && ([objc_opt_class() shouldIgnoreChangeOfModelClassProperties:*(a1 + 72) withChangeObject:{v5, v20, v21, v22, v23}] & 1) == 0)
        {
          [*(a1 + 64) addObject:v7];
        }

        goto LABEL_12;
      case 0:
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v35 = 0;
        v8 = *(a1 + 72);
        v10 = *(a1 + 32);
        v9 = *(a1 + 40);
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __97__REMDAChangeTrackingHelper__changedModelObjectsOfClass_ofChangeTypes_shouldOutputFetchedModels___block_invoke_2;
        v30[3] = &unk_1E7508DF0;
        v11 = v6;
        v31 = v11;
        v32 = *(a1 + 40);
        v33 = buf;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __97__REMDAChangeTrackingHelper__changedModelObjectsOfClass_ofChangeTypes_shouldOutputFetchedModels___block_invoke_19;
        v29[3] = &unk_1E7508E18;
        v29[4] = buf;
        [v10 _handleIsConcealedUpdatesInChange:v5 ofModelClass:v8 forClientID:v9 concealedHandler:v30 unconcealedHandler:v29];
        if ((*(*&buf[8] + 24) & 1) == 0)
        {
          [*(a1 + 48) addObject:v11];
        }

LABEL_12:
        _Block_object_dispose(buf, 8);
        break;
    }
  }
}

void __97__REMDAChangeTrackingHelper__changedModelObjectsOfClass_ofChangeTypes_shouldOutputFetchedModels___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[REMLog changeTracking];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __97__REMDAChangeTrackingHelper__changedModelObjectsOfClass_ofChangeTypes_shouldOutputFetchedModels___block_invoke_2_cold_1(a1);
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

uint64_t __97__REMDAChangeTrackingHelper__changedModelObjectsOfClass_ofChangeTypes_shouldOutputFetchedModels___block_invoke_2_21(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;

  return MEMORY[0x1EEE66BB8]();
}

void *__97__REMDAChangeTrackingHelper__changedModelObjectsOfClass_ofChangeTypes_shouldOutputFetchedModels___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) addObject:a2];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

- (void)_handleIsConcealedUpdatesInChange:(id)change ofModelClass:(Class)class forClientID:(id)d concealedHandler:(id)handler unconcealedHandler:(id)unconcealedHandler
{
  v45 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  dCopy = d;
  handlerCopy = handler;
  unconcealedHandlerCopy = unconcealedHandler;
  if ([(objc_class *)class rem_DA_supportsConcealedObjects])
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    rem_DA_propertiesAffectingIsConcealed = [(objc_class *)class rem_DA_propertiesAffectingIsConcealed];
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __124__REMDAChangeTrackingHelper__handleIsConcealedUpdatesInChange_ofModelClass_forClientID_concealedHandler_unconcealedHandler___block_invoke;
    v32 = &unk_1E7508EB8;
    v17 = changeCopy;
    v33 = v17;
    v34 = &v35;
    [rem_DA_propertiesAffectingIsConcealed enumerateObjectsUsingBlock:&v29];

    if ((v36[3] & 1) == 0)
    {

LABEL_18:
      _Block_object_dispose(&v35, 8);
      goto LABEL_19;
    }

    changedObjectID = [v17 changedObjectID];
    if (!changedObjectID)
    {
      v19 = +[REMLog changeTracking];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromClass(class);
        v21 = [dCopy description];
        changeID = [v17 changeID];
        *buf = 138543874;
        v40 = v20;
        v41 = 2114;
        v42 = v21;
        v43 = 2048;
        v44 = changeID;
        _os_log_error_impl(&dword_19A0DB000, v19, OS_LOG_TYPE_ERROR, "REMDAChangeTrackingHelper: Cannot handleIsConcealedUpdatesInChange as given change has nil changedObjectID {modelClass: %{public}@, clientID: %{public}@, changeID: %lld}", buf, 0x20u);
      }

      goto LABEL_17;
    }

    v19 = [(REMDAChangeTrackingHelper *)self _fetchModelObjectOfClass:class withObjectID:changedObjectID includeConcealedObjects:0];
    if (v19)
    {
      unconcealedHandlerCopy[2](unconcealedHandlerCopy, changedObjectID);
LABEL_17:

      goto LABEL_18;
    }

    v23 = [(REMDAChangeTrackingHelper *)self _fetchModelObjectOfClass:class withObjectID:changedObjectID includeConcealedObjects:1];
    if (v23)
    {
      rem_DA_deletedKeyFromConcealedModelObjectBlock = [(objc_class *)class rem_DA_deletedKeyFromConcealedModelObjectBlock];
      v25 = (rem_DA_deletedKeyFromConcealedModelObjectBlock)[2](rem_DA_deletedKeyFromConcealedModelObjectBlock, v23);

      if (v25)
      {
LABEL_16:
        handlerCopy[2](handlerCopy, v25);

        goto LABEL_17;
      }

      v26 = +[REMLog changeTracking];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [dCopy description];
        *buf = 138543874;
        v40 = changedObjectID;
        v41 = 2114;
        v42 = v23;
        v43 = 2114;
        v44 = v27;
        _os_log_impl(&dword_19A0DB000, v26, OS_LOG_TYPE_DEFAULT, "REMDAChangeTrackingHelper: (NOTICE)(Can be legit) Had a concealed (e.g. lazy deleted) model object without a deletion key (e.g. externalIdentifier) {objectID: %{public}@, modelObject: %{public}@, clientID: %{public}@}", buf, 0x20u);
      }
    }

    else
    {
      v26 = +[REMLog changeTracking];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v28 = [dCopy description];
        [REMDAChangeTrackingHelper _handleIsConcealedUpdatesInChange:changedObjectID ofModelClass:v28 forClientID:buf concealedHandler:v26 unconcealedHandler:?];
      }
    }

    v25 = 0;
    goto LABEL_16;
  }

LABEL_19:
}

void __124__REMDAChangeTrackingHelper__handleIsConcealedUpdatesInChange_ofModelClass_forClientID_concealedHandler_unconcealedHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 updatedProperties];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

+ (BOOL)shouldIgnoreChangeOfModelClassProperties:(Class)properties withChangeObject:(id)object
{
  v4 = shouldIgnoreChangeOfModelClassProperties_withChangeObject__onceToken;
  objectCopy = object;
  if (v4 != -1)
  {
    +[REMDAChangeTrackingHelper shouldIgnoreChangeOfModelClassProperties:withChangeObject:];
  }

  updatedProperties = [objectCopy updatedProperties];

  v7 = [updatedProperties mutableCopy];
  [v7 minusSet:shouldIgnoreChangeOfModelClassProperties_withChangeObject__propertiesToAvoid];
  LOBYTE(updatedProperties) = [v7 count] == 0;

  return updatedProperties;
}

uint64_t __87__REMDAChangeTrackingHelper_shouldIgnoreChangeOfModelClassProperties_withChangeObject___block_invoke()
{
  shouldIgnoreChangeOfModelClassProperties_withChangeObject__propertiesToAvoid = [MEMORY[0x1E695DFD8] setWithObjects:{@"externalIdentifier", @"externalModificationTag", @"daSyncToken", @"daPushKey", @"lastModifiedDate", @"resolutionTokenMap", @"resolutionTokenMap_v2_JSON", @"resolutionTokenMap_v3_JSONData", 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_fetchModelObjectOfClass:(Class)class withObjectID:(id)d includeConcealedObjects:(BOOL)objects
{
  objectsCopy = objects;
  dCopy = d;
  if (([(objc_class *)class rem_DA_supportsFetching]& 1) == 0)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D930];
    v11 = NSStringFromClass(class);
    [v9 raise:v10 format:{@"The given model class does not support fetching, shouldn't enter this function call {%@}.", v11}];
  }

  if (objectsCopy && ([(objc_class *)class rem_DA_supportsConcealedObjects]& 1) == 0)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v14 = NSStringFromClass(class);
    [v12 raise:v13 format:{@"The given model class does not support concealed objects, shouldn't enter this function call with includeConcealedObjects=YES {%@}.", v14}];
  }

  changeTracking = [(REMDAChangeTrackingHelper *)self changeTracking];
  changeTrackingClientID = [changeTracking changeTrackingClientID];

  if (dCopy)
  {
    remStore = [(REMDAChangeTrackingHelper *)self remStore];
    if (!remStore)
    {
      [REMDAChangeTrackingHelper _fetchModelObjectOfClass:withObjectID:includeConcealedObjects:];
    }

    rem_DA_fetchByObjectIDBlock = [(objc_class *)class rem_DA_fetchByObjectIDBlock];
    v23 = 0;
    v19 = (rem_DA_fetchByObjectIDBlock)[2](rem_DA_fetchByObjectIDBlock, dCopy, objectsCopy, remStore, &v23);
    v20 = v23;

    if (v20 && [v20 code] != -3000)
    {
      v21 = +[REMLog changeTracking];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [REMDAChangeTrackingHelper _fetchModelObjectOfClass:withObjectID:includeConcealedObjects:];
      }
    }
  }

  else
  {
    remStore = +[REMLog changeTracking];
    if (os_log_type_enabled(remStore, OS_LOG_TYPE_ERROR))
    {
      [REMDAChangeTrackingHelper _fetchModelObjectOfClass:withObjectID:includeConcealedObjects:];
    }

    v19 = 0;
  }

  return v19;
}

- (id)_fetchModelObjectsOfClass:(Class)class withObjectIDs:(id)ds
{
  dsCopy = ds;
  if (([(objc_class *)class rem_DA_supportsFetching]& 1) == 0)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D930];
    v9 = NSStringFromClass(class);
    [v7 raise:v8 format:{@"The given model class does not support fetching, shouldn't enter this function call {%@}.", v9}];
  }

  changeTracking = [(REMDAChangeTrackingHelper *)self changeTracking];
  changeTrackingClientID = [changeTracking changeTrackingClientID];

  remStore = [(REMDAChangeTrackingHelper *)self remStore];
  if (!remStore)
  {
    [REMDAChangeTrackingHelper _fetchModelObjectsOfClass:withObjectIDs:];
  }

  rem_DA_fetchByObjectIDsBlock = [(objc_class *)class rem_DA_fetchByObjectIDsBlock];
  v14 = (rem_DA_fetchByObjectIDsBlock)[2](rem_DA_fetchByObjectIDsBlock, dsCopy, remStore, 0);

  return v14;
}

- (int64_t)_changeTypeMaskFromChangeType:(int64_t)type
{
  if (type > 2)
  {
    return 0;
  }

  else
  {
    return qword_19A231180[type];
  }
}

- (id)_cachedModeObjectResultsForModelClass:(Class)class changeType:(int64_t)type
{
  if (type == 1)
  {
    cached_updatedModelObjectResultsByModelClassName = [(REMDAChangeTrackingHelper *)self cached_updatedModelObjectResultsByModelClassName];
    goto LABEL_5;
  }

  if (!type)
  {
    cached_updatedModelObjectResultsByModelClassName = [(REMDAChangeTrackingHelper *)self cached_insertedModelObjectResultsByModelClassName];
LABEL_5:
    v6 = cached_updatedModelObjectResultsByModelClassName;
    v7 = NSStringFromClass(class);
    v8 = [v6 valueForKey:v7];

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (void)_setCachedModeObjectResults:(id)results forModelClass:(Class)class changeType:(int64_t)type
{
  resultsCopy = results;
  if (type == 1)
  {
    cached_updatedModelObjectResultsByModelClassName = [(REMDAChangeTrackingHelper *)self cached_updatedModelObjectResultsByModelClassName];
  }

  else
  {
    if (type)
    {
      goto LABEL_6;
    }

    cached_updatedModelObjectResultsByModelClassName = [(REMDAChangeTrackingHelper *)self cached_insertedModelObjectResultsByModelClassName];
  }

  v9 = cached_updatedModelObjectResultsByModelClassName;
  v10 = NSStringFromClass(class);
  [v9 setObject:resultsCopy forKey:v10];

LABEL_6:
}

- (void)clearCachedModelObjectResultsForModelClass:(Class)class
{
  cached_insertedModelObjectResultsByModelClassName = [(REMDAChangeTrackingHelper *)self cached_insertedModelObjectResultsByModelClassName];
  v6 = NSStringFromClass(class);
  [cached_insertedModelObjectResultsByModelClassName removeObjectForKey:v6];

  cached_updatedModelObjectResultsByModelClassName = [(REMDAChangeTrackingHelper *)self cached_updatedModelObjectResultsByModelClassName];
  v7 = NSStringFromClass(class);
  [cached_updatedModelObjectResultsByModelClassName removeObjectForKey:v7];
}

- (id)_rem_changeTracking:(id)tracking
{
  trackingCopy = tracking;
  account = [(REMDAChangeTrackingHelper *)self account];
  rem_accountObjectID = [account rem_accountObjectID];

  if (rem_accountObjectID)
  {
    remStore = [(REMDAChangeTrackingHelper *)self remStore];
    v8 = [remStore provideChangeTrackingForAccountID:rem_accountObjectID clientName:trackingCopy];
  }

  else
  {
    v9 = +[REMLog changeTracking];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [REMDAChangeTrackingHelper _rem_changeTracking:?];
    }

    v8 = 0;
  }

  return v8;
}

- (id)_rem_accountObjectID
{
  cached_remAccountObjectID = [(REMDAChangeTrackingHelper *)self cached_remAccountObjectID];

  if (!cached_remAccountObjectID)
  {
    account = [(REMDAChangeTrackingHelper *)self account];
    rem_accountObjectID = [account rem_accountObjectID];
    [(REMDAChangeTrackingHelper *)self setCached_remAccountObjectID:rem_accountObjectID];
  }

  return [(REMDAChangeTrackingHelper *)self cached_remAccountObjectID];
}

- (void)_debug_resetCaches
{
  [(REMDAChangeTrackingHelper *)self setChangeSet:0];
  [(REMDAChangeTrackingHelper *)self setCached_insertedModelObjectResultsByModelClassName:0];
  [(REMDAChangeTrackingHelper *)self setCached_updatedModelObjectResultsByModelClassName:0];
  [(REMDAChangeTrackingHelper *)self setCached_currentChangeToken:0];
  [(REMDAChangeTrackingHelper *)self setCached_currentTrackingState:0];

  [(REMDAChangeTrackingHelper *)self setCached_remAccountObjectID:0];
}

- (id)_debug_currentChangeTokenWithError:(id *)error
{
  changeTracking = [(REMDAChangeTrackingHelper *)self changeTracking];
  v5 = [changeTracking currentChangeTokenWithError:error];

  return v5;
}

- (void)initWithREMDAAccount:(void *)a1 clientName:withREMStore:entityNames:.cold.1(void *a1)
{
  v1 = [a1 account];
  v2 = [v1 loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)initWithREMDAAccount:(void *)a1 clientName:withREMStore:entityNames:.cold.2(void *a1)
{
  v1 = [a1 account];
  v2 = [v1 loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)fetchAndInitializeChangeTrackingStateIfNeeded
{
  OUTLINED_FUNCTION_5_0();
  v2 = [OUTLINED_FUNCTION_4_3(v0 v1)];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)fetchChangesSinceLastConsumed
{
  clientName = [self clientName];
  account = [self account];
  accountID = [account accountID];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)_changedModelObjectsOfClass:(uint64_t)a1 ofChangeTypes:(uint64_t)a2 shouldOutputFetchedModels:.cold.1(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_changedModelObjectsOfClass:(uint64_t)a1 ofChangeTypes:(uint64_t)a2 shouldOutputFetchedModels:.cold.2(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)_changedModelObjectsOfClass:(uint64_t)a1 ofChangeTypes:(uint64_t)a2 shouldOutputFetchedModels:.cold.3(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __97__REMDAChangeTrackingHelper__changedModelObjectsOfClass_ofChangeTypes_shouldOutputFetchedModels___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) description];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)_handleIsConcealedUpdatesInChange:(uint8_t *)buf ofModelClass:(os_log_t)log forClientID:concealedHandler:unconcealedHandler:.cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543874;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = 0;
  *(buf + 11) = 2114;
  *(buf + 3) = a2;
  _os_log_error_impl(&dword_19A0DB000, log, OS_LOG_TYPE_ERROR, "REMDAChangeTrackingHelper: (Can be legit) Couldn't even fetch the concealed object with includeConcealedObjects=YES and we can only return nil deletion key {objectID: %{public}@, modelObject: %{public}@, clientID: %{public}@}", buf, 0x20u);
}

- (void)_fetchModelObjectOfClass:withObjectID:includeConcealedObjects:.cold.1()
{
  v1 = +[REMLog changeTracking];
  if (OUTLINED_FUNCTION_7_0(v1))
  {
    OUTLINED_FUNCTION_0_2();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)_fetchModelObjectOfClass:withObjectID:includeConcealedObjects:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v2 = [OUTLINED_FUNCTION_4_3(v0 v1)];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_fetchModelObjectOfClass:withObjectID:includeConcealedObjects:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v2 = OUTLINED_FUNCTION_4_3(v0, v1);
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_fetchModelObjectsOfClass:withObjectIDs:.cold.1()
{
  v1 = +[REMLog changeTracking];
  if (OUTLINED_FUNCTION_7_0(v1))
  {
    OUTLINED_FUNCTION_0_2();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)_rem_changeTracking:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 account];
  v2 = [v1 loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

@end