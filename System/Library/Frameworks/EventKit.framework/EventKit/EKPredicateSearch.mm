@interface EKPredicateSearch
+ (id)searchWithEntityClass:(Class)class predicate:(id)predicate store:(id)store;
+ (id)signpostHandle;
- (EKPredicateSearch)initWithEntityClass:(Class)class predicate:(id)predicate store:(id)store;
- (id)_createOSActivity;
- (id)fetchObjectIDs;
- (id)runSynchronously;
- (id)startWithCompletion:(id)completion queue:(id)queue;
- (void)_createOSActivity;
- (void)_startActivityWithCompletion:(id)completion synchronous:(BOOL)synchronous queue:(id)queue;
- (void)_startActualWithCompletion:(id)completion synchronous:(BOOL)synchronous queue:(id)queue;
- (void)_startFetchObjectIDsActivityWithCompletion:(id)completion synchronous:(BOOL)synchronous queue:(id)queue;
- (void)_startProcessingWithCompletion:(id)completion synchronous:(BOOL)synchronous processor:(id)processor queue:(id)queue;
- (void)cancel;
- (void)filterSkippedReminders:(id)reminders;
- (void)signpostEndWithError:(int)error count:(unint64_t)count;
- (void)signpostStart;
@end

@implementation EKPredicateSearch

- (id)runSynchronously
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__12;
  v9 = __Block_byref_object_dispose__12;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__EKPredicateSearch_runSynchronously__block_invoke;
  v4[3] = &unk_1E77FE7A0;
  v4[4] = &v5;
  [(EKPredicateSearch *)self _startActivityWithCompletion:v4 synchronous:1 queue:0];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)_createOSActivity
{
  p_predicate = &self->_predicate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = "CADEventPredicate";
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = "CADNotifiableEventsPredicate";
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = "CADEventsForAssistantSearchPredicate";
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = "CADNotificationCenterVisibleEventsPredicate";
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v3 = "CADUnacknowledgedEventsPredicate";
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v3 = "CADUnalertedEventsPredicate";
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v3 = "CADRespondedEventsPredicate";
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v3 = "CADUpcomingEventsPredicate";
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v3 = "EKMasterEventsPredicate";
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v3 = "EKScheduleAgentClientEventsPredicate";
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v3 = "CADTravelEventsPredicate";
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v3 = "CADUpNextEventsPredicate";
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v3 = "CADContactEventsPredicate";
                          }

                          else
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v3 = "CADEventCreatedFromSuggestionPredicate";
                            }

                            else
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v3 = "CADCalendarItemsWithExternalIdentifierPredicate";
                              }

                              else
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v3 = "CADPropertySearchPredicate";
                                }

                                else
                                {
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v3 = "CADEventTimeWindowPredicate";
                                  }

                                  else
                                  {
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v3 = "CADNaturalLanguageSuggestedEventsSearchPredicate";
                                    }

                                    else
                                    {
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v3 = "CADEventsForConferenceURLPredicate";
                                      }

                                      else
                                      {
                                        v4 = EKLogHandle;
                                        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
                                        {
                                          [(EKPredicateSearch *)p_predicate _createOSActivity];
                                        }

                                        v3 = "Unknown Predicate Search";
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v5 = _os_activity_create(&dword_1A805E000, v3, MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v5;
}

- (void)signpostStart
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = +[EKPredicateSearch signpostHandle];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  v5 = objc_opt_respondsToSelector();
  predicate = self->_predicate;
  if (v5)
  {
    v11 = +[EKPredicateSearch signpostHandle];
    [NSPredicate beginSignpostWithHandle:"beginSignpostWithHandle:signpostID:" signpostID:?];
  }

  else
  {
    predicateFormat = [(NSPredicate *)self->_predicate predicateFormat];
    v8 = +[EKPredicateSearch signpostHandle];
    v9 = v8;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 138412546;
      v13 = objc_opt_class();
      v14 = 2112;
      v15 = predicateFormat;
      v10 = v13;
      _os_signpost_emit_with_name_impl(&dword_1A805E000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v4, "EKPredicateSearch", "predicateClass=%@; predicateFormat=%@", buf, 0x16u);
    }
  }
}

+ (id)signpostHandle
{
  if (signpostHandle_onceToken != -1)
  {
    +[EKPredicateSearch signpostHandle];
  }

  v3 = signpostHandle_signpostHandle;

  return v3;
}

- (id)fetchObjectIDs
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__12;
  v9 = __Block_byref_object_dispose__12;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__EKPredicateSearch_fetchObjectIDs__block_invoke;
  v4[3] = &unk_1E77FE7A0;
  v4[4] = &v5;
  [(EKPredicateSearch *)self _startFetchObjectIDsActivityWithCompletion:v4 synchronous:1 queue:0];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

+ (id)searchWithEntityClass:(Class)class predicate:(id)predicate store:(id)store
{
  storeCopy = store;
  predicateCopy = predicate;
  v10 = [[self alloc] initWithEntityClass:class predicate:predicateCopy store:storeCopy];

  return v10;
}

uint64_t __35__EKPredicateSearch_signpostHandle__block_invoke()
{
  v0 = os_log_create(ekSubSystem, "EKPredicateSearch");
  v1 = signpostHandle_signpostHandle;
  signpostHandle_signpostHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (EKPredicateSearch)initWithEntityClass:(Class)class predicate:(id)predicate store:(id)store
{
  predicateCopy = predicate;
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = EKPredicateSearch;
  v11 = [(EKPredicateSearch *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_entityClass = class;
    objc_storeStrong(&v11->_predicate, predicate);
    objc_storeStrong(&v12->_store, store);
  }

  return v12;
}

- (void)signpostEndWithError:(int)error count:(unint64_t)count
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = +[EKPredicateSearch signpostHandle];
  v8 = os_signpost_id_make_with_pointer(v7, self);

  v9 = +[EKPredicateSearch signpostHandle];
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v11[0] = 67109376;
    v11[1] = error;
    v12 = 2048;
    countCopy = count;
    _os_signpost_emit_with_name_impl(&dword_1A805E000, v10, OS_SIGNPOST_INTERVAL_END, v8, "EKPredicateSearch", "error=%i; foundItems=%lu", v11, 0x12u);
  }
}

- (void)_startActivityWithCompletion:(id)completion synchronous:(BOOL)synchronous queue:(id)queue
{
  completionCopy = completion;
  queueCopy = queue;
  _createOSActivity = [(EKPredicateSearch *)self _createOSActivity];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__EKPredicateSearch__startActivityWithCompletion_synchronous_queue___block_invoke;
  v13[3] = &unk_1E77FE6C0;
  v14 = queueCopy;
  v15 = completionCopy;
  synchronousCopy = synchronous;
  v13[4] = self;
  v11 = queueCopy;
  v12 = completionCopy;
  os_activity_apply(_createOSActivity, v13);
}

uint64_t __68__EKPredicateSearch__startActivityWithCompletion_synchronous_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) signpostStart];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);

  return [v5 _startActualWithCompletion:v2 synchronous:v4 queue:v3];
}

- (void)_startFetchObjectIDsActivityWithCompletion:(id)completion synchronous:(BOOL)synchronous queue:(id)queue
{
  completionCopy = completion;
  queueCopy = queue;
  _createOSActivity = [(EKPredicateSearch *)self _createOSActivity];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__EKPredicateSearch__startFetchObjectIDsActivityWithCompletion_synchronous_queue___block_invoke;
  v13[3] = &unk_1E77FE6C0;
  v14 = queueCopy;
  v15 = completionCopy;
  synchronousCopy = synchronous;
  v13[4] = self;
  v11 = queueCopy;
  v12 = completionCopy;
  os_activity_apply(_createOSActivity, v13);
}

uint64_t __82__EKPredicateSearch__startFetchObjectIDsActivityWithCompletion_synchronous_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) signpostStart];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);

  return [v5 _fetchObjectIDsActualWithCompletion:v2 synchronous:v4 queue:v3];
}

- (void)_startProcessingWithCompletion:(id)completion synchronous:(BOOL)synchronous processor:(id)processor queue:(id)queue
{
  synchronousCopy = synchronous;
  completionCopy = completion;
  processorCopy = processor;
  queueCopy = queue;
  unsignedIntValue = [self->_cancellationToken unsignedIntValue];
  entityClass = self->_entityClass;
  if (entityClass == objc_opt_class())
  {
    v17 = 2;
  }

  else
  {
    v15 = self->_entityClass;
    if (v15 == objc_opt_class())
    {
      v17 = 3;
    }

    else
    {
      v16 = self->_entityClass;
      if (v16 == objc_opt_class())
      {
        v17 = 101;
      }

      else
      {
        [MEMORY[0x1E695DF30] raise:@"Unknown entity type" format:{@"Didn't recognize entity class %@", self->_entityClass}];
        v17 = 0xFFFFFFFFLL;
      }
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__EKPredicateSearch__startProcessingWithCompletion_synchronous_processor_queue___block_invoke;
  aBlock[3] = &unk_1E77FE710;
  aBlock[4] = self;
  v18 = completionCopy;
  v27 = v18;
  v30 = synchronousCopy;
  v19 = processorCopy;
  v28 = v19;
  v20 = queueCopy;
  v26 = v20;
  v29 = unsignedIntValue;
  v21 = _Block_copy(aBlock);
  connection = [(EKEventStore *)self->_store connection];
  v23 = connection;
  if (synchronousCopy)
  {
    [connection CADOperationProxySync];
  }

  else
  {
    [connection CADOperationProxy];
  }
  v24 = ;

  [v24 CADDatabaseFetchCalendarItemsWithPredicate:self->_predicate entityType:v17 fetchIdentifier:unsignedIntValue synchronous:synchronousCopy reply:v21];
}

void __80__EKPredicateSearch__startProcessingWithCompletion_synchronous_processor_queue___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __80__EKPredicateSearch__startProcessingWithCompletion_synchronous_processor_queue___block_invoke_cold_1(a1, a2, v6);
    }

    v7 = *(a1 + 32);
    objc_sync_enter(v7);
    v8 = *(a1 + 32);
    v9 = *(v8 + 52);
    *(v8 + 52) = v9 + 1;
    objc_sync_exit(v7);

    if (v9 < 2)
    {
      [*(a1 + 32) _startProcessingWithCompletion:*(a1 + 48) synchronous:*(a1 + 68) processor:*(a1 + 56) queue:*(a1 + 40)];
      goto LABEL_12;
    }

    v10 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __80__EKPredicateSearch__startProcessingWithCompletion_synchronous_processor_queue___block_invoke_cold_2(v10);
    }
  }

  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__EKPredicateSearch__startProcessingWithCompletion_synchronous_processor_queue___block_invoke_60;
  v17[3] = &unk_1E77FE6E8;
  v12 = v5;
  v13 = *(a1 + 32);
  v18 = v12;
  v19 = v13;
  v21 = *(a1 + 56);
  v14 = v11;
  v20 = v14;
  v23 = a2;
  v22 = *(a1 + 48);
  v24 = *(a1 + 64);
  v15 = _Block_copy(v17);
  v16 = v15;
  if (*(a1 + 68) == 1)
  {
    v15[2](v15);
  }

  else
  {
    dispatch_async(*(a1 + 40), v15);
  }

LABEL_12:
}

void __80__EKPredicateSearch__startProcessingWithCompletion_synchronous_processor_queue___block_invoke_60(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v18 != v5)
      {
        objc_enumerationMutation(v2);
      }

      if (*(*(a1 + 40) + 49))
      {
        break;
      }

      (*(*(a1 + 56) + 16))(*(a1 + 56));
      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v7 = [*(*(a1 + 40) + 32) eventAccessLevel];
  v8 = [MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E60901FFFFFFFFLL];
  v9 = v7 != 2 || v8 == 0;
  if (!v9 && [*(*(a1 + 40) + 24) conformsToProtocol:&unk_1F1B9F2B8])
  {
    v10 = *(a1 + 40);
    v11 = *(v10 + 32);
    v12 = *(v10 + 24);
    v13 = [v11 objectsPendingCommit];
    v14 = [*(*(a1 + 40) + 32) deletedObjectIDsPendingCommit];
    [v12 expandWithObjectsPendingCommit:v13 deletedObjectIDs:v14 andResultArray:*(a1 + 48)];
  }

  [*(a1 + 40) filterSkippedReminders:*(a1 + 48)];
  [*(a1 + 40) signpostEndWithError:*(a1 + 72) count:{objc_msgSend(*(a1 + 48), "count")}];
  v15 = *(a1 + 40);
  if ((*(v15 + 49) & 1) == 0)
  {
    (*(*(a1 + 64) + 16))();
    v15 = *(a1 + 40);
  }

  v16 = [*(v15 + 32) connection];
  [v16 removeCancellableRemoteOperation:*(a1 + 76)];
}

- (void)filterSkippedReminders:(id)reminders
{
  remindersCopy = reminders;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(NSPredicate *)self->_predicate excludeSkippedReminders]&& [(EKEventStore *)self->_store showsIntegrations])
  {
    v4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_72];
    [remindersCopy filterUsingPredicate:v4];
  }
}

BOOL __44__EKPredicateSearch_filterSkippedReminders___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ![v2 isReminderIntegrationEvent] || objc_msgSend(v2, "reminderOccurrenceType") != 1;

  return v3;
}

void __75__EKPredicateSearch__fetchObjectIDsActualWithCompletion_synchronous_queue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectID];
  v6 = [EKObjectID objectIDWithCADObjectID:v5];

  [v4 addObject:v6];
}

- (void)_startActualWithCompletion:(id)completion synchronous:(BOOL)synchronous queue:(id)queue
{
  synchronousCopy = synchronous;
  predicate = self->_predicate;
  queueCopy = queue;
  completionCopy = completion;
  defaultPropertiesToLoad = [(NSPredicate *)predicate defaultPropertiesToLoad];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__EKPredicateSearch__startActualWithCompletion_synchronous_queue___block_invoke;
  v13[3] = &unk_1E77FE778;
  v13[4] = self;
  v14 = defaultPropertiesToLoad;
  v12 = defaultPropertiesToLoad;
  [(EKPredicateSearch *)self _startProcessingWithCompletion:completionCopy synchronous:synchronousCopy processor:v13 queue:queueCopy];
}

void __66__EKPredicateSearch__startActualWithCompletion_synchronous_queue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 loadedValues];
  v8 = [v5 objectID];
  v9 = [EKObjectID objectIDWithCADObjectID:v8];

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = a1 + 32;
  v13 = [*(v11 + 32) registerFetchedObjectWithID:v9 withDefaultLoadedPropertyKeys:v10 values:v7];
  if (v13)
  {
    if ([v9 entityType] == 2)
    {
      v14 = v5;
      v15 = [(EKReminder *)v14 occurrenceDate];
      v16 = [[EKEvent alloc] initWithPersistentObject:v13 occurrenceDate:v15];
      if (v16)
      {
        v17 = [(EKReminder *)v14 nextReminderOccurrenceDate];
        if (v17)
        {
          [(EKEvent *)v16 _setNextCachedReminderOccurrenceDate:v17];
        }

        [v6 addObject:v16];
      }

LABEL_13:
      goto LABEL_14;
    }

    if ([v9 entityType] == 3)
    {
      v14 = [[EKReminder alloc] initWithPersistentObject:v13];
      if (v14)
      {
        [v6 addObject:v14];
      }

      goto LABEL_13;
    }
  }

  else
  {
    v18 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __66__EKPredicateSearch__startActualWithCompletion_synchronous_queue___block_invoke_cold_1(v12, v18, v9);
    }
  }

LABEL_14:
}

- (id)startWithCompletion:(id)completion queue:(id)queue
{
  if (self->_isCancelled)
  {
    v5 = 0;
  }

  else
  {
    store = self->_store;
    queueCopy = queue;
    completionCopy = completion;
    connection = [(EKEventStore *)store connection];
    v13 = [connection addCancellableRemoteOperation:self];

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v13];
    cancellationToken = self->_cancellationToken;
    self->_cancellationToken = v14;

    self->_retryCount = 0;
    [(EKPredicateSearch *)self _startActivityWithCompletion:completionCopy synchronous:0 queue:queueCopy];

    v5 = [[EKEventFetchRequestToken alloc] initWithEventStore:self->_store token:v13];
  }

  return v5;
}

- (void)cancel
{
  self->_isCancelled = 1;
  connection = [(EKEventStore *)self->_store connection];
  cADOperationProxy = [connection CADOperationProxy];
  [cADOperationProxy CADDatabaseCancelFetchRequestWithIdentifier:{objc_msgSend(self->_cancellationToken, "unsignedIntValue")}];

  cancellationToken = self->_cancellationToken;
  self->_cancellationToken = 0;
}

- (void)_createOSActivity
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v4 = 138412290;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&dword_1A805E000, v2, OS_LOG_TYPE_ERROR, "Unexpected predicate class: %@", &v4, 0xCu);
}

void __80__EKPredicateSearch__startProcessingWithCompletion_synchronous_processor_queue___block_invoke_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 52) + 1;
  v4[0] = 67109632;
  v4[1] = a2;
  v5 = 1024;
  v6 = v3;
  v7 = 1024;
  v8 = 3;
  _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "Error (%d) in reply block for CADDatabaseFetchCalendarItemsWithPredicate attempt %d/%d", v4, 0x14u);
}

void __66__EKPredicateSearch__startActualWithCompletion_synchronous_queue___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v6 = 138412546;
  v7 = objc_opt_class();
  v8 = 2112;
  v9 = a3;
  v5 = v7;
  _os_log_error_impl(&dword_1A805E000, v4, OS_LOG_TYPE_ERROR, "%@: failed to register result object with objectID: %@", &v6, 0x16u);
}

@end