@interface PPEventStore
- (BOOL)interactionSummaryMetricsError:(id *)error block:(id)block;
- (BOOL)iterDailyEventHighlightsWithOptions:(int)options error:(id *)error block:(id)block;
- (BOOL)iterEventHighlightsFrom:(id)from to:(id)to options:(int)options error:(id *)error block:(id)block;
- (BOOL)iterEventNameRecordsForClient:(id)client error:(id *)error block:(id)block;
- (BOOL)iterScoredEventsWithQuery:(id)query error:(id *)error block:(id)block;
- (BOOL)iterWeeklyEventHighlightsWithOptions:(int)options error:(id *)error block:(id)block;
- (BOOL)loadEventNameRecordsAndMonitorChangesWithDelegate:(id)delegate error:(id *)error;
- (BOOL)sendRTCLogsWithError:(id *)error;
- (PPEventStore)init;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)_loadEventNameRecordsWithDelegate:(id)delegate;
- (void)_sendChangesToDelegates:(id)delegates;
- (void)logEventInteractionForEventWithEventIdentifier:(id)identifier interface:(unsigned __int16)interface actionType:(unsigned __int16)type;
- (void)registerFeedback:(id)feedback completion:(id)completion;
@end

@implementation PPEventStore

- (PPEventStore)init
{
  v8.receiver = self;
  v8.super_class = PPEventStore;
  v2 = [(PPEventStore *)&v8 init];
  if (v2)
  {
    v3 = [[PPRecordMonitoringHelper alloc] initWithName:@"EventStore"];
    monitoringHelper = v2->_monitoringHelper;
    v2->_monitoringHelper = v3;

    v5 = [[PPClientFeedbackHelper alloc] initWithParentObject:v2];
    clientFeedbackHelper = v2->_clientFeedbackHelper;
    v2->_clientFeedbackHelper = v5;
  }

  return v2;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  if (objc_opt_respondsToSelector())
  {
    v4 = self->_clientFeedbackHelper;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  completionCopy = completion;
  feedbackCopy = feedback;
  if ([feedbackCopy isMapped])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPEventStore.m" lineNumber:282 description:@"You cannot send mapped feedback on events. Please use PPFeedback to create the feedback for events."];
  }

  clientIdentifier = [(PPEventStore *)self clientIdentifier];
  v10 = [clientIdentifier length];

  if (!v10)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPEventStore.m" lineNumber:283 description:{@"The clientIdentifier property must be set on the %@ in order to send feedback.", v17}];
  }

  clientIdentifier2 = [(PPEventStore *)self clientIdentifier];
  [feedbackCopy setClientIdentifier:clientIdentifier2];

  v12 = +[PPEventClient sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __44__PPEventStore_registerFeedback_completion___block_invoke;
  v18[3] = &unk_1E77F7D98;
  v18[4] = self;
  v19 = completionCopy;
  v13 = completionCopy;
  [v12 registerFeedback:feedbackCopy completion:v18];
}

void __44__PPEventStore_registerFeedback_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = pp_events_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_error_impl(&dword_1A7FD3000, v7, OS_LOG_TYPE_ERROR, "Error from registerFeedback:completion: %@", &v9, 0xCu);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }
}

- (BOOL)sendRTCLogsWithError:(id *)error
{
  v4 = +[PPEventClient sharedInstance];
  LOBYTE(error) = [v4 sendRTCLogsWithError:error];

  return error;
}

- (BOOL)interactionSummaryMetricsError:(id *)error block:(id)block
{
  blockCopy = block;
  v6 = +[PPEventClient sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__PPEventStore_interactionSummaryMetricsError_block___block_invoke;
  v9[3] = &unk_1E77F7D70;
  v10 = blockCopy;
  v7 = blockCopy;
  LOBYTE(error) = [v6 interactionSummaryMetricsWithError:error handleBatch:v9];

  return error;
}

void __53__PPEventStore_interactionSummaryMetricsError_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if ((*a3 & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(a1 + 32) + 16))(*(a1 + 32));
        if (*a3)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (void)logEventInteractionForEventWithEventIdentifier:(id)identifier interface:(unsigned __int16)interface actionType:(unsigned __int16)type
{
  typeCopy = type;
  interfaceCopy = interface;
  identifierCopy = identifier;
  v8 = +[PPEventClient sharedInstance];
  [v8 logEventInteractionForEventWithEventIdentifier:identifierCopy interface:interfaceCopy actionType:typeCopy];
}

- (BOOL)iterScoredEventsWithQuery:(id)query error:(id *)error block:(id)block
{
  blockCopy = block;
  queryCopy = query;
  v9 = +[PPEventClient sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__PPEventStore_iterScoredEventsWithQuery_error_block___block_invoke;
  v12[3] = &unk_1E77F7D70;
  v13 = blockCopy;
  v10 = blockCopy;
  LOBYTE(error) = [v9 scoredEventsWithQuery:queryCopy error:error handleBatch:v12];

  return error;
}

void __54__PPEventStore_iterScoredEventsWithQuery_error_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = pp_events_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7FD3000, v6, OS_LOG_TYPE_INFO, "Getting into callback on client", buf, 2u);
  }

  if ((*a3 & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
LABEL_6:
      v11 = 0;
      while (1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(a1 + 32) + 16))(*(a1 + 32));
        if (*a3)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
          if (v9)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }
}

- (BOOL)iterWeeklyEventHighlightsWithOptions:(int)options error:(id *)error block:(id)block
{
  v6 = *&options;
  v8 = MEMORY[0x1E695DEE8];
  blockCopy = block;
  currentCalendar = [v8 currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v15 = 0;
  v16 = 0.0;
  [currentCalendar rangeOfUnit:0x2000 startDate:&v15 interval:&v16 forDate:date];
  v12 = v15;
  v13 = [v12 dateByAddingTimeInterval:v16 + -1.0];
  LOBYTE(error) = [(PPEventStore *)self iterEventHighlightsFrom:date to:v13 options:v6 error:error block:blockCopy];

  return error;
}

- (BOOL)iterDailyEventHighlightsWithOptions:(int)options error:(id *)error block:(id)block
{
  v6 = *&options;
  v22 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v9 = objc_opt_new();
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v11 = [currentCalendar components:252 fromDate:v9];
  [v11 setHour:23];
  [v11 setMinute:59];
  [v11 setSecond:59];
  v12 = [currentCalendar dateFromComponents:v11];
  if (v12)
  {
    LOBYTE(error) = [(PPEventStore *)self iterEventHighlightsFrom:v9 to:v12 options:v6 error:error block:blockCopy];
  }

  else
  {
    v13 = pp_events_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v11;
      _os_log_error_impl(&dword_1A7FD3000, v13, OS_LOG_TYPE_ERROR, "failed to get endOfDay from %@", buf, 0xCu);
    }

    if (error)
    {
      v14 = MEMORY[0x1E696ABC0];
      v18 = @"PPErrorInfoKey";
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed to get endOfDay from %@", v11];
      v19 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      *error = [v14 errorWithDomain:@"PPErrorDomain" code:12 userInfo:v16];

      LOBYTE(error) = 0;
    }
  }

  return error;
}

- (BOOL)iterEventHighlightsFrom:(id)from to:(id)to options:(int)options error:(id *)error block:(id)block
{
  v9 = *&options;
  v25 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  blockCopy = block;
  v14 = pp_events_log_handle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = fromCopy;
    v23 = 2112;
    v24 = toCopy;
    _os_log_impl(&dword_1A7FD3000, v14, OS_LOG_TYPE_DEFAULT, "loadEventHighlights from: %@ to: %@", buf, 0x16u);
  }

  v15 = +[PPEventClient sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__PPEventStore_iterEventHighlightsFrom_to_options_error_block___block_invoke;
  v19[3] = &unk_1E77F7D70;
  v20 = blockCopy;
  v16 = blockCopy;
  v17 = [v15 eventHighlightsFrom:fromCopy to:toCopy options:v9 error:error handleBatch:v19];

  return v17;
}

void __63__PPEventStore_iterEventHighlightsFrom_to_options_error_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = pp_events_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7FD3000, v6, OS_LOG_TYPE_INFO, "Getting into callback on client", buf, 2u);
  }

  if ((*a3 & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
LABEL_6:
      v11 = 0;
      while (1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(a1 + 32) + 16))(*(a1 + 32));
        if (*a3)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
          if (v9)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }
}

- (BOOL)loadEventNameRecordsAndMonitorChangesWithDelegate:(id)delegate error:(id *)error
{
  delegateCopy = delegate;
  objc_initWeak(&location, self);
  monitoringHelper = self->_monitoringHelper;
  _recordGenerator = [(PPEventStore *)self _recordGenerator];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__PPEventStore_loadEventNameRecordsAndMonitorChangesWithDelegate_error___block_invoke;
  v9[3] = &unk_1E77F7970;
  objc_copyWeak(&v10, &location);
  LOBYTE(monitoringHelper) = [(PPRecordMonitoringHelper *)monitoringHelper loadRecordsAndMonitorChangesWithDelegate:delegateCopy recordGenerator:_recordGenerator notificationRegistrationBlock:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
  return monitoringHelper;
}

void __72__PPEventStore_loadEventNameRecordsAndMonitorChangesWithDelegate_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__PPEventStore_loadEventNameRecordsAndMonitorChangesWithDelegate_error___block_invoke_2;
  v3[3] = &unk_1E77F6E18;
  objc_copyWeak(&v4, (a1 + 32));
  [PPNotificationManager addEventKitObserverForLifetimeOfObject:WeakRetained block:v3];

  objc_destroyWeak(&v4);
}

void __72__PPEventStore_loadEventNameRecordsAndMonitorChangesWithDelegate_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 1);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__PPEventStore_loadEventNameRecordsAndMonitorChangesWithDelegate_error___block_invoke_3;
    v7[3] = &unk_1E77F6EB0;
    v8 = v3;
    v9 = v5;
    [v6 handleChangeNotificationWithName:@"Events" afterDelaySeconds:v7 handler:1.0];
  }
}

uint64_t __72__PPEventStore_loadEventNameRecordsAndMonitorChangesWithDelegate_error___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = pp_events_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1A7FD3000, v2, OS_LOG_TYPE_DEFAULT, "_sendChangesToDelegates Events observation block being called with %tu changes", &v5, 0xCu);
  }

  return [*(a1 + 40) _sendChangesToDelegates:*(a1 + 32)];
}

- (void)_loadEventNameRecordsWithDelegate:(id)delegate
{
  monitoringHelper = self->_monitoringHelper;
  delegateCopy = delegate;
  _recordGenerator = [(PPEventStore *)self _recordGenerator];
  [(PPRecordMonitoringHelper *)monitoringHelper loadRecordsWithDelegate:delegateCopy recordGenerator:_recordGenerator];
}

- (void)_sendChangesToDelegates:(id)delegates
{
  delegatesCopy = delegates;
  monitoringHelper = self->_monitoringHelper;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__PPEventStore__sendChangesToDelegates___block_invoke;
  v8[3] = &unk_1E77F6DF0;
  v9 = delegatesCopy;
  v6 = delegatesCopy;
  _recordGenerator = [(PPEventStore *)self _recordGenerator];
  [(PPRecordMonitoringHelper *)monitoringHelper sendChangesToDelegatesWithChangeGenerator:v8 recordGenerator:_recordGenerator];
}

id __40__PPEventStore__sendChangesToDelegates___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([*(a1 + 32) count])
  {
    v6 = objc_opt_new();
    v7 = [*(a1 + 32) _pas_mappedArrayWithTransform:&__block_literal_global_18];
    v8 = +[PPEventClient sharedInstance];
    v9 = [v5 name];
    v16 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __40__PPEventStore__sendChangesToDelegates___block_invoke_3;
    v14[3] = &unk_1E77F6DC8;
    v10 = v6;
    v15 = v10;
    [v8 resolveEventNameRecordChanges:v7 client:v9 error:&v16 handleBatch:v14];
    v11 = v16;

    if (v11)
    {
      v12 = pp_events_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_error_impl(&dword_1A7FD3000, v12, OS_LOG_TYPE_ERROR, "resolveEventNameRecordChanges returned error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (a3)
    {
      *a3 = 1;
    }

    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

id __32__PPEventStore__recordGenerator__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4492;
  v15 = __Block_byref_object_dispose__4493;
  v16 = objc_opt_new();
  v3 = +[PPEventClient sharedInstance];
  v4 = [v2 name];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __32__PPEventStore__recordGenerator__block_invoke_15;
  v9[3] = &unk_1E77F6D80;
  v9[4] = &v11;
  v10 = 0;
  [v3 eventNameRecordsForClient:v4 error:&v10 handleBatch:v9];
  v5 = v10;

  if (v5)
  {
    v6 = pp_events_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = v2;
      v19 = 2112;
      v20 = v5;
      _os_log_error_impl(&dword_1A7FD3000, v6, OS_LOG_TYPE_ERROR, "error during eventNameRecordsForClient for delegate %@: %@", buf, 0x16u);
    }
  }

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

void *__32__PPEventStore__recordGenerator__block_invoke_15(void *result, uint64_t a2, _BYTE *a3)
{
  if ((*a3 & 1) == 0)
  {
    return [*(*(result[4] + 8) + 40) addObjectsFromArray:a2];
  }

  return result;
}

- (BOOL)iterEventNameRecordsForClient:(id)client error:(id *)error block:(id)block
{
  blockCopy = block;
  clientCopy = client;
  v9 = +[PPEventClient sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__PPEventStore_iterEventNameRecordsForClient_error_block___block_invoke;
  v12[3] = &unk_1E77F7D70;
  v13 = blockCopy;
  v10 = blockCopy;
  LOBYTE(error) = [v9 eventNameRecordsForClient:clientCopy error:error handleBatch:v12];

  return error;
}

void __58__PPEventStore_iterEventNameRecordsForClient_error_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if ((*a3 & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(a1 + 32) + 16))(*(a1 + 32));
        if (*a3)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

@end