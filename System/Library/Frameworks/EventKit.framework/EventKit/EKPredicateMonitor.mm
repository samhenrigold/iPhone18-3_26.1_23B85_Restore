@interface EKPredicateMonitor
- (EKPredicateMonitor)initWithEventStore:(id)store predicate:(id)predicate filterChanges:(unint64_t)changes options:(unint64_t)options queue:(id)queue resultsBlock:(id)block;
- (void)_start;
- (void)_validatePredicateSupportsEfficientMonitoring;
- (void)disconnected;
- (void)generation:(int)generation completedWithError:(id)error;
- (void)receivedBatchResultsFromServer:(id)server finished:(BOOL)finished;
- (void)start;
- (void)stop;
- (void)updatePredicate:(id)predicate completion:(id)completion;
@end

@implementation EKPredicateMonitor

- (void)start
{
  os_unfair_lock_lock(&self->_lock);
  [(EKPredicateMonitor *)self _start];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_start
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_token)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Predicate monitor %p started multiple times", self}];
  }

  connection = [(EKEventStore *)self->_store connection];
  self->_token = [connection addCancellableRemoteOperation:self];
  connection2 = [(EKEventStore *)self->_store connection];
  cADOperationProxy = [connection2 CADOperationProxy];
  predicate = self->_predicate;
  v7 = [EKPredicateMonitor convertPropertyFilter:self->_propertyFilter];
  v8 = [EKPredicateMonitor convertOptions:self->_options];
  token = self->_token;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __28__EKPredicateMonitor__start__block_invoke;
  v10[3] = &unk_1E77FFD10;
  v10[4] = self;
  [cADOperationProxy CADDatabaseMonitorResultsForPredicate:predicate propertyFilter:v7 options:v8 identifier:token reply:v10];
}

- (void)_validatePredicateSupportsEfficientMonitoring
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *self;
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&dword_1A805E000, a2, OS_LOG_TYPE_FAULT, "You are using a predicate monitor with a predicate %@ that doesn't support monitoring efficiently. If you need to monitor the results of this predicate, please file a radar and request that it be supported.", &v3, 0xCu);
}

void __28__EKPredicateMonitor__start__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    v4 = +[EKLogSubsystem predicateMonitor];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __28__EKPredicateMonitor__start__block_invoke_cold_1();
    }

    v5 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __28__EKPredicateMonitor__start__block_invoke_10;
    v7[3] = &unk_1E77FD580;
    v7[4] = v5;
    v8 = v3;
    v6 = v3;
    [v5 performAsyncOnQueue:v7];
  }
}

- (EKPredicateMonitor)initWithEventStore:(id)store predicate:(id)predicate filterChanges:(unint64_t)changes options:(unint64_t)options queue:(id)queue resultsBlock:(id)block
{
  v38 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  predicateCopy = predicate;
  queueCopy = queue;
  blockCopy = block;
  [storeCopy _validateEventPredicate:predicateCopy];
  v33.receiver = self;
  v33.super_class = EKPredicateMonitor;
  v19 = [(EKPredicateMonitor *)&v33 init];
  v20 = v19;
  if (v19)
  {
    v19->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v19->_store, store);
    objc_storeStrong(&v20->_predicate, predicate);
    v20->_propertyFilter = changes;
    v20->_options = options;
    if (queueCopy)
    {
      v21 = queueCopy;
      queue = v20->_queue;
      v20->_queue = v21;
    }

    else
    {
      queue = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v23 = dispatch_queue_create("com.apple.eventkit.ekpredicatemonitor", queue);
      v24 = v20->_queue;
      v20->_queue = v23;
    }

    v25 = _Block_copy(blockCopy);
    block = v20->_block;
    v20->_block = v25;

    [(EKPredicateMonitor *)v20 _validatePredicateSupportsEfficientMonitoring];
    v27 = objc_opt_respondsToSelector();
    v28 = +[EKLogSubsystem predicateMonitor];
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (v27)
    {
      if (v29)
      {
        concisePublicDescription = [predicateCopy concisePublicDescription];
        *buf = 134218242;
        v35 = v20;
        v36 = 2114;
        v37 = concisePublicDescription;
        v31 = "%p Created with predicate: %{public}@";
LABEL_10:
        _os_log_impl(&dword_1A805E000, v28, OS_LOG_TYPE_DEFAULT, v31, buf, 0x16u);
      }
    }

    else if (v29)
    {
      concisePublicDescription = [predicateCopy predicateFormat];
      *buf = 134218242;
      v35 = v20;
      v36 = 2112;
      v37 = concisePublicDescription;
      v31 = "%p Created with predicate: %@";
      goto LABEL_10;
    }
  }

  return v20;
}

- (void)updatePredicate:(id)predicate completion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  completionCopy = completion;
  [(EKEventStore *)self->_store _validateEventPredicate:predicateCopy];
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_predicate, predicate);
  v9 = (self->_predicateGeneration + 1);
  self->_predicateGeneration = v9;
  v10 = objc_opt_respondsToSelector();
  v11 = +[EKLogSubsystem predicateMonitor];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (!v12)
    {
      goto LABEL_7;
    }

    concisePublicDescription = [predicateCopy concisePublicDescription];
    *buf = 134218498;
    selfCopy2 = self;
    v36 = 1024;
    v37 = v9;
    v38 = 2114;
    v39 = concisePublicDescription;
    v14 = "%p Updating predicate generation %i: %{public}@";
  }

  else
  {
    if (!v12)
    {
      goto LABEL_7;
    }

    concisePublicDescription = [predicateCopy predicateFormat];
    *buf = 134218498;
    selfCopy2 = self;
    v36 = 1024;
    v37 = v9;
    v38 = 2112;
    v39 = concisePublicDescription;
    v14 = "%p Updating predicate generation %i: %@";
  }

  _os_log_impl(&dword_1A805E000, v11, OS_LOG_TYPE_DEFAULT, v14, buf, 0x1Cu);

LABEL_7:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__EKPredicateMonitor_updatePredicate_completion___block_invoke;
  aBlock[3] = &unk_1E7800598;
  selfCopy3 = self;
  v33 = v9;
  v15 = completionCopy;
  v31 = v15;
  v16 = _Block_copy(aBlock);
  if (!self->_predicateUpdateCompletionCallbackBlocks)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    predicateUpdateCompletionCallbackBlocks = self->_predicateUpdateCompletionCallbackBlocks;
    self->_predicateUpdateCompletionCallbackBlocks = v17;
  }

  v19 = _Block_copy(v16);
  v20 = self->_predicateUpdateCompletionCallbackBlocks;
  v21 = [MEMORY[0x1E696AD98] numberWithInt:v9];
  [(NSMutableDictionary *)v20 setObject:v19 forKeyedSubscript:v21];

  connection = [(EKEventStore *)self->_store connection];
  cADOperationProxy = [connection CADOperationProxy];
  predicate = self->_predicate;
  v25 = [EKPredicateMonitor convertPropertyFilter:self->_propertyFilter];
  v26 = [EKPredicateMonitor convertOptions:self->_options];
  token = self->_token;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __49__EKPredicateMonitor_updatePredicate_completion___block_invoke_16;
  v28[3] = &unk_1E78005C0;
  v28[4] = self;
  v29 = v9;
  [cADOperationProxy CADDatabaseMonitorUpdatePredicate:predicate propertyFilter:v25 options:v26 identifier:token generation:v9 reply:v28];

  [(EKPredicateMonitor *)self _validatePredicateSupportsEfficientMonitoring];
  os_unfair_lock_unlock(&self->_lock);
}

void __49__EKPredicateMonitor_updatePredicate_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EKLogSubsystem predicateMonitor];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = 134218240;
    v9 = v5;
    v10 = 1024;
    v11 = v6;
    _os_log_impl(&dword_1A805E000, v4, OS_LOG_TYPE_DEFAULT, "%p Generation %i complete", &v8, 0x12u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void __49__EKPredicateMonitor_updatePredicate_completion___block_invoke_16(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    v4 = +[EKLogSubsystem predicateMonitor];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49__EKPredicateMonitor_updatePredicate_completion___block_invoke_16_cold_1();
    }

    [*(a1 + 32) generation:*(a1 + 40) completedWithError:v3];
  }
}

- (void)stop
{
  os_unfair_lock_lock(&self->_lock);
  token = self->_token;
  self->_token = 0;
  os_unfair_lock_unlock(&self->_lock);
  connection = [(EKEventStore *)self->_store connection];
  cADOperationProxy = [connection CADOperationProxy];
  [cADOperationProxy CADDatabaseStopMonitoringPredicate:token];

  [connection removeCancellableRemoteOperation:token];
}

- (void)generation:(int)generation completedWithError:(id)error
{
  v4 = *&generation;
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  predicateUpdateCompletionCallbackBlocks = self->_predicateUpdateCompletionCallbackBlocks;
  v8 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  v9 = [(NSMutableDictionary *)predicateUpdateCompletionCallbackBlocks objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = self->_predicateUpdateCompletionCallbackBlocks;
    v11 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    [(NSMutableDictionary *)v10 setObject:0 forKeyedSubscript:v11];

    os_unfair_lock_unlock(&self->_lock);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__EKPredicateMonitor_generation_completedWithError___block_invoke;
    v12[3] = &unk_1E77FD108;
    v14 = v9;
    v13 = errorCopy;
    [(EKPredicateMonitor *)self performAsyncOnQueue:v12];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)disconnected
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_token)
  {
    if (self->_options)
    {
      allValues = [(NSMutableDictionary *)self->_predicateUpdateCompletionCallbackBlocks allValues];
      [(NSMutableDictionary *)self->_predicateUpdateCompletionCallbackBlocks removeAllObjects];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __34__EKPredicateMonitor_disconnected__block_invoke;
      v5[3] = &unk_1E77FD580;
      v5[4] = self;
      v6 = allValues;
      v4 = allValues;
      [(EKPredicateMonitor *)self performAsyncOnQueue:v5];
    }

    else
    {
      self->_token = 0;
      [(EKPredicateMonitor *)self _start];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __34__EKPredicateMonitor_disconnected__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  (*(*(*(a1 + 32) + 16) + 16))();
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * v6) + 16))(*(*(&v7 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)receivedBatchResultsFromServer:(id)server finished:(BOOL)finished
{
  v96 = *MEMORY[0x1E69E9840];
  serverCopy = server;
  v6 = [serverCopy objectForKeyedSubscript:@"reset"];
  bOOLValue = [v6 BOOLValue];

  v8 = [serverCopy objectForKeyedSubscript:@"new"];
  v58 = [serverCopy objectForKeyedSubscript:@"removed"];
  v9 = [serverCopy objectForKeyedSubscript:@"removalsByDB"];
  v10 = [serverCopy objectForKeyedSubscript:@"generation"];
  intValue = [v10 intValue];

  os_unfair_lock_lock(&self->_lock);
  v12 = self->_predicate;
  os_unfair_lock_unlock(&self->_lock);
  defaultPropertiesToLoad = [(NSPredicate *)v12 defaultPropertiesToLoad];
  v63 = v9;
  v55 = serverCopy;
  v56 = v12;
  v54 = __PAIR64__(bOOLValue, intValue);
  if (v8)
  {
    v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
    if ([(EKEventStore *)self->_store showsIntegrations]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      excludeSkippedReminders = [(NSPredicate *)v12 excludeSkippedReminders];
    }

    else
    {
      excludeSkippedReminders = 0;
    }
  }

  else
  {
    excludeSkippedReminders = 0;
    v57 = 0;
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v8;
  v13 = [obj countByEnumeratingWithState:&v81 objects:v95 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v82;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v82 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v81 + 1) + 8 * i);
        loadedValues = [v17 loadedValues];
        objectID = [v17 objectID];
        v20 = [EKObjectID objectIDWithCADObjectID:objectID];

        v21 = [(EKEventStore *)self->_store registerFetchedObjectWithID:v20 withDefaultLoadedPropertyKeys:defaultPropertiesToLoad values:loadedValues];
        if (v21)
        {
          occurrenceDate = [v17 occurrenceDate];
          v23 = [[EKEvent alloc] initWithPersistentObject:v21 occurrenceDate:occurrenceDate];
          if (v23)
          {
            nextReminderOccurrenceDate = [v17 nextReminderOccurrenceDate];
            if (nextReminderOccurrenceDate)
            {
              [(EKEvent *)v23 _setNextCachedReminderOccurrenceDate:nextReminderOccurrenceDate];
            }

            if (!excludeSkippedReminders || ![(EKEvent *)v23 isReminderIntegrationEvent]|| [(EKEvent *)v23 reminderOccurrenceType]!= 1)
            {
              [v57 addObject:v23];
            }
          }
        }

        else
        {
          occurrenceDate = +[EKLogSubsystem predicateMonitor];
          if (os_log_type_enabled(occurrenceDate, OS_LOG_TYPE_ERROR))
          {
            v25 = objc_opt_class();
            *buf = 138412546;
            selfCopy3 = v25;
            v87 = 2112;
            v88 = v20;
            v26 = v25;
            _os_log_error_impl(&dword_1A805E000, occurrenceDate, OS_LOG_TYPE_ERROR, "%@: failed to register result object with objectID: %@", buf, 0x16u);
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v81 objects:v95 count:16];
    }

    while (v14);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v65 = v63;
  v64 = [v65 countByEnumeratingWithState:&v77 objects:v94 count:16];
  v27 = 0;
  v28 = 0;
  if (v64)
  {
    v60 = *v78;
    selfCopy = self;
    do
    {
      v29 = 0;
      do
      {
        if (*v78 != v60)
        {
          objc_enumerationMutation(v65);
        }

        v67 = v29;
        v30 = *(*(&v77 + 1) + 8 * v29);
        intValue2 = [v30 intValue];
        if (!v28)
        {
          v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v58, "count")}];
        }

        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v32 = [v65 objectForKeyedSubscript:v30];
        v33 = [v32 countByEnumeratingWithState:&v73 objects:v93 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v74;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v74 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v73 + 1) + 8 * j);
              rowID = [v37 rowID];
              removedDates = [v37 removedDates];
              v27 += [removedDates count];
              v40 = [EKObjectID objectIDWithEntityType:2 rowID:rowID databaseID:intValue2];
              v41 = [[EKEventOccurrences alloc] initWithObjectID:v40 dates:removedDates];
              [v28 addObject:v41];
            }

            v34 = [v32 countByEnumeratingWithState:&v73 objects:v93 count:16];
          }

          while (v34);
        }

        v29 = v67 + 1;
        self = selfCopy;
      }

      while (v67 + 1 != v64);
      v64 = [v65 countByEnumeratingWithState:&v77 objects:v94 count:16];
    }

    while (v64);
  }

  v42 = +[EKLogSubsystem predicateMonitor];
  v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
  if (HIDWORD(v54))
  {
    v44 = v55;
    v45 = v56;
    if (v43)
    {
      v46 = [v57 count];
      *buf = 134218240;
      selfCopy3 = self;
      v87 = 2048;
      v88 = v46;
      v47 = "%p Received reset with %lu new events";
      v48 = v42;
      v49 = 22;
LABEL_47:
      _os_log_impl(&dword_1A805E000, v48, OS_LOG_TYPE_DEFAULT, v47, buf, v49);
    }
  }

  else
  {
    v44 = v55;
    v45 = v56;
    if (v43)
    {
      v50 = [v57 count];
      v51 = [v28 count];
      *buf = 134218752;
      selfCopy3 = self;
      v87 = 2048;
      v88 = v50;
      v89 = 2048;
      v90 = v27;
      v91 = 2048;
      v92 = v51;
      v47 = "%p Received update with %lu new events and %lu removed occurrences of %lu events";
      v48 = v42;
      v49 = 42;
      goto LABEL_47;
    }
  }

  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __62__EKPredicateMonitor_receivedBatchResultsFromServer_finished___block_invoke;
  v68[3] = &unk_1E78005E8;
  v72 = BYTE4(v54);
  v68[4] = self;
  v69 = v57;
  v70 = v28;
  v71 = v54;
  v52 = v28;
  v53 = v57;
  [(EKPredicateMonitor *)self performAsyncOnQueue:v68];
}

void __62__EKPredicateMonitor_receivedBatchResultsFromServer_finished___block_invoke(uint64_t a1)
{
  (*(*(*(a1 + 32) + 16) + 16))();
  v2 = *(a1 + 32);
  v5 = *(v2 + 40);
  v3 = (v2 + 40);
  v4 = v5;
  if (*(a1 + 56) > v5)
  {
    do
    {
      *v3 = v4 + 1;
      os_unfair_lock_lock((*(a1 + 32) + 56));
      v6 = *(a1 + 32);
      v7 = *(v6 + 48);
      v8 = [MEMORY[0x1E696AD98] numberWithInt:*(v6 + 40)];
      v9 = [v7 objectForKeyedSubscript:v8];

      v10 = *(a1 + 32);
      if (v9)
      {
        v11 = *(v10 + 48);
        v12 = [MEMORY[0x1E696AD98] numberWithInt:*(v10 + 40)];
        [v11 setObject:0 forKeyedSubscript:v12];

        os_unfair_lock_unlock((*(a1 + 32) + 56));
        v9[2](v9, 0);
      }

      else
      {
        os_unfair_lock_unlock((v10 + 56));
      }

      v13 = *(a1 + 32);
      v14 = *(v13 + 40);
      v3 = (v13 + 40);
      v4 = v14;
    }

    while (*(a1 + 56) > v14);
  }
}

@end