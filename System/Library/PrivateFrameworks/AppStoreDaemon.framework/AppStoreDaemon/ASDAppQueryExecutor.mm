@interface ASDAppQueryExecutor
+ (void)_executeQueryWithPredicate:(char)predicate isForUpdates:(char)updates reloadingFromServer:(void *)server onPairedDevice:(void *)device remoteDeviceID:(void *)d usingServiceBroker:(void *)broker withResultHandler:;
- (ASDAppQueryExecutor)initWithServiceBroker:(id)broker;
- (void)executeQueryWithPredicate:(id)predicate onPairedDevice:(id)device remoteDeviceID:(id)d withResultHandler:(id)handler;
- (void)executeUpdatesQueryWithPredicateReloadingFromServer:(BOOL)server onPairedDevice:(id)device remoteDeviceID:(id)d withResultHandler:(id)handler;
@end

@implementation ASDAppQueryExecutor

- (ASDAppQueryExecutor)initWithServiceBroker:(id)broker
{
  brokerCopy = broker;
  v13.receiver = self;
  v13.super_class = ASDAppQueryExecutor;
  v6 = [(ASDAppQueryExecutor *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceBroker, broker);
    v8 = [[ASDDispatchQueue alloc] initWithName:@"com.apple.AppStoreDaemon.ASDAppQuery.executor"];
    dispatchQueue = v7->_dispatchQueue;
    v7->_dispatchQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queryPromises = v7->_queryPromises;
    v7->_queryPromises = v10;
  }

  return v7;
}

- (void)executeQueryWithPredicate:(id)predicate onPairedDevice:(id)device remoteDeviceID:(id)d withResultHandler:(id)handler
{
  predicateCopy = predicate;
  deviceCopy = device;
  dCopy = d;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __97__ASDAppQueryExecutor_executeQueryWithPredicate_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke;
  v19[3] = &unk_1E7CDCA90;
  v20 = predicateCopy;
  v21 = deviceCopy;
  v22 = dCopy;
  selfCopy = self;
  v24 = handlerCopy;
  v15 = handlerCopy;
  v16 = dCopy;
  v17 = deviceCopy;
  v18 = predicateCopy;
  [(ASDDispatchQueue *)dispatchQueue syncUsingBlock:v19];
}

void __97__ASDAppQueryExecutor_executeQueryWithPredicate_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = MEMORY[0x1E696AEC0];
  v5 = *(a1 + 40);
  v6 = v3;
  v7 = [v2 predicateFormat];
  v8 = [v5 pairingID];

  v9 = [v8 UUIDString];
  v10 = v9;
  v11 = @"LOCAL";
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = @"LOCAL";
  }

  if (v6)
  {
    v11 = v6;
  }

  v13 = [v4 stringWithFormat:@"<%@>-<%@>-<%@>", v7, v12, v11];

  v14 = [*(*(a1 + 56) + 16) objectForKeyedSubscript:v13];
  v15 = ASDLogHandleForCategory(13);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if (v14)
  {
    if (v16)
    {
      *buf = 138412290;
      v36 = v13;
      _os_log_debug_impl(&dword_1B8220000, v15, OS_LOG_TYPE_DEBUG, "(AppQueryExecutor) Joining request: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v16)
    {
      *buf = 138412290;
      v36 = v13;
      _os_log_debug_impl(&dword_1B8220000, v15, OS_LOG_TYPE_DEBUG, "(AppQueryExecutor) Starting request: %@", buf, 0xCu);
    }

    v14 = objc_alloc_init(ASDPromise);
    [*(*(a1 + 56) + 16) setObject:v14 forKeyedSubscript:v13];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __97__ASDAppQueryExecutor_executeQueryWithPredicate_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_3;
    v32[3] = &unk_1E7CDBA48;
    v17 = v13;
    v18 = *(a1 + 56);
    v33 = v17;
    v34 = v18;
    [(ASDPromise *)v14 alwaysPerform:v32 onScheduler:*(v18 + 8)];
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    v22 = *(*(a1 + 56) + 24);
    v23 = [(ASDPromise *)v14 completionHandlerAdapter];
    [ASDAppQueryExecutor _executeQueryWithPredicate:v19 isForUpdates:0 reloadingFromServer:0 onPairedDevice:v20 remoteDeviceID:v21 usingServiceBroker:v22 withResultHandler:v23];

    v15 = v33;
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __97__ASDAppQueryExecutor_executeQueryWithPredicate_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_6;
  v29[3] = &unk_1E7CDCA68;
  v30 = v13;
  v31 = *(a1 + 64);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __97__ASDAppQueryExecutor_executeQueryWithPredicate_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_8;
  v26[3] = &unk_1E7CDBAB8;
  v27 = v30;
  v28 = *(a1 + 64);
  v24 = v30;
  v25 = +[ASDDispatchQueue defaultQueue];
  [(ASDPromise *)v14 thenPerform:v29 orCatchError:v26 onScheduler:v25];
}

uint64_t __97__ASDAppQueryExecutor_executeQueryWithPredicate_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_debug_impl(&dword_1B8220000, v2, OS_LOG_TYPE_DEBUG, "(AppQueryExecutor) Completing request: %@", &v5, 0xCu);
  }

  return [*(*(a1 + 40) + 16) setObject:0 forKeyedSubscript:*(a1 + 32)];
}

+ (void)_executeQueryWithPredicate:(char)predicate isForUpdates:(char)updates reloadingFromServer:(void *)server onPairedDevice:(void *)device remoteDeviceID:(void *)d usingServiceBroker:(void *)broker withResultHandler:
{
  v14 = a2;
  serverCopy = server;
  deviceCopy = device;
  dCopy = d;
  brokerCopy = broker;
  v19 = objc_opt_self();
  if (dCopy)
  {
    v20 = v19;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v33 = 1;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke;
    v22[3] = &unk_1E7CDCB58;
    v23 = v14;
    v28 = v32;
    v29 = v20;
    predicateCopy = predicate;
    updatesCopy = updates;
    v24 = serverCopy;
    v25 = deviceCopy;
    v26 = dCopy;
    v27 = brokerCopy;
    [v26 getLibraryServiceWithCompletionHandler:v22];

    _Block_object_dispose(v32, 8);
  }

  else
  {
    v21 = __ErrorWithUnderlyingErrorAndPredicate(0, v14);
    (*(brokerCopy + 2))(brokerCopy, 0, v21);
  }
}

void __97__ASDAppQueryExecutor_executeQueryWithPredicate_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [v3 count];
    v6 = *(a1 + 32);
    v7 = 134218242;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_debug_impl(&dword_1B8220000, v4, OS_LOG_TYPE_DEBUG, "(AppQueryExecutor) Dispatching %lu results: %@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void __97__ASDAppQueryExecutor_executeQueryWithPredicate_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_8(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_debug_impl(&dword_1B8220000, v4, OS_LOG_TYPE_DEBUG, "(AppQueryExecutor) Dispatching error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)executeUpdatesQueryWithPredicateReloadingFromServer:(BOOL)server onPairedDevice:(id)device remoteDeviceID:(id)d withResultHandler:(id)handler
{
  deviceCopy = device;
  dCopy = d;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __123__ASDAppQueryExecutor_executeUpdatesQueryWithPredicateReloadingFromServer_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke;
  v17[3] = &unk_1E7CDCAE0;
  serverCopy = server;
  v17[4] = self;
  v18 = deviceCopy;
  v19 = dCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = dCopy;
  v16 = deviceCopy;
  [(ASDDispatchQueue *)dispatchQueue syncUsingBlock:v17];
}

void __123__ASDAppQueryExecutor_executeUpdatesQueryWithPredicateReloadingFromServer_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:@"Updates"];
  v3 = ASDLogHandleForCategory(13);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1B8220000, v3, OS_LOG_TYPE_DEBUG, "(AppQueryExecutor) Joining updates request", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1B8220000, v3, OS_LOG_TYPE_DEBUG, "(AppQueryExecutor) Starting updates request", buf, 2u);
    }

    v2 = objc_alloc_init(ASDPromise);
    [*(*(a1 + 32) + 16) setObject:v2 forKeyedSubscript:@"Updates"];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __123__ASDAppQueryExecutor_executeUpdatesQueryWithPredicateReloadingFromServer_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_14;
    v15[3] = &unk_1E7CDBA48;
    v16 = *(a1 + 32);
    v17 = @"Updates";
    [(ASDPromise *)v2 alwaysPerform:v15 onScheduler:*(v16 + 8)];
    v5 = *(a1 + 64);
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = *(*(a1 + 32) + 24);
    v9 = [(ASDPromise *)v2 completionHandlerAdapter];
    [ASDAppQueryExecutor _executeQueryWithPredicate:1 isForUpdates:v5 reloadingFromServer:v7 onPairedDevice:v6 remoteDeviceID:v8 usingServiceBroker:v9 withResultHandler:?];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __123__ASDAppQueryExecutor_executeUpdatesQueryWithPredicateReloadingFromServer_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_15;
  v13[3] = &unk_1E7CDCAB8;
  v14 = *(a1 + 56);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __123__ASDAppQueryExecutor_executeUpdatesQueryWithPredicateReloadingFromServer_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_16;
  v11[3] = &unk_1E7CDB730;
  v12 = *(a1 + 56);
  v10 = [ASDDispatchQueue defaultQueue:v11[0]];
  [(ASDPromise *)v2 thenPerform:v13 orCatchError:v11 onScheduler:v10];
}

uint64_t __123__ASDAppQueryExecutor_executeUpdatesQueryWithPredicateReloadingFromServer_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_14(uint64_t a1)
{
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_1B8220000, v2, OS_LOG_TYPE_DEBUG, "(AppQueryExecutor) Completing updates request", v4, 2u);
  }

  return [*(*(a1 + 32) + 16) setObject:0 forKeyedSubscript:*(a1 + 40)];
}

void __123__ASDAppQueryExecutor_executeUpdatesQueryWithPredicateReloadingFromServer_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_15(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134217984;
    v6 = [v3 count];
    _os_log_debug_impl(&dword_1B8220000, v4, OS_LOG_TYPE_DEBUG, "(AppQueryExecutor) Dispatching %lu results for updates", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __123__ASDAppQueryExecutor_executeUpdatesQueryWithPredicateReloadingFromServer_onPairedDevice_remoteDeviceID_withResultHandler___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_1B8220000, v4, OS_LOG_TYPE_DEBUG, "(AppQueryExecutor) Dispatching error for updates", v5, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_2;
    v48[3] = &unk_1E7CDCB30;
    v7 = *(a1 + 32);
    v52 = *(a1 + 72);
    v53 = *(a1 + 88);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    *&v12 = v7;
    *(&v12 + 1) = v8;
    v49 = v12;
    v50 = v11;
    v51 = *(a1 + 64);
    v13 = [a2 remoteObjectProxyWithErrorHandler:v48];
    v14 = *(a1 + 48);
    if (v14)
    {
      v15 = *(a1 + 32);
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_17;
      v46[3] = &unk_1E7CDB7A8;
      v16 = &v47;
      v47 = *(a1 + 64);
      [v13 executeQueryWithPredicate:v15 onRemoteDevice:v14 withReplyHandler:v46];
    }

    else
    {
      v25 = *(a1 + 40);
      if (v25)
      {
        if (!*(a1 + 88))
        {
          v28 = *(a1 + 32);
          v29 = [v25 pairingID];
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_5;
          v38[3] = &unk_1E7CDB7A8;
          v16 = &v39;
          v39 = *(a1 + 64);
          [v13 executeQueryWithPredicate:v28 onPairedDevice:v29 withReplyHandler:v38];

          goto LABEL_16;
        }

        v26 = *(a1 + 89);
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_4;
        v40[3] = &unk_1E7CDB7A8;
        v16 = &v41;
        v41 = *(a1 + 64);
        v27 = v40;
      }

      else
      {
        if (!*(a1 + 88))
        {
          v30 = *(a1 + 32);
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_3_19;
          v42[3] = &unk_1E7CDB7A8;
          v16 = &v43;
          v43 = *(a1 + 64);
          [v13 executeQueryWithPredicate:v30 withReplyHandler:v42];
          goto LABEL_16;
        }

        v26 = *(a1 + 89);
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_2_18;
        v44[3] = &unk_1E7CDB7A8;
        v16 = &v45;
        v45 = *(a1 + 64);
        v27 = v44;
      }

      [v13 executeQueryForUpdatesReloadingFromServer:v26 withReplyHandler:v27];
    }

LABEL_16:

    v17 = v49;
    goto LABEL_17;
  }

  v17 = __ErrorWithUnderlyingErrorAndPredicate(v5, *(a1 + 32));
  if (*(*(*(a1 + 72) + 8) + 24) == 1 && ASDErrorIsEqual(v6, *MEMORY[0x1E696A250], 0x1001))
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    v18 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_6;
    block[3] = &unk_1E7CDCB08;
    v36 = *(a1 + 80);
    v17 = v17;
    v32 = v17;
    v19 = *(a1 + 32);
    v37 = *(a1 + 88);
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    *&v23 = v21;
    *(&v23 + 1) = v22;
    *&v24 = v19;
    *(&v24 + 1) = v20;
    v33 = v24;
    v34 = v23;
    v35 = *(a1 + 64);
    dispatch_async(v18, block);
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }

LABEL_17:
}

void __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __ErrorWithUnderlyingErrorAndPredicate(v3, *(a1 + 32));
  if (*(*(*(a1 + 72) + 8) + 24) == 1 && ASDErrorIsEqual(v3, *MEMORY[0x1E696A250], 0x1001))
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    v5 = dispatch_get_global_queue(21, 0);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_3;
    v12[3] = &unk_1E7CDCB08;
    v17 = *(a1 + 80);
    v13 = v4;
    v6 = *(a1 + 32);
    v18 = *(a1 + 88);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    *&v11 = v6;
    *(&v11 + 1) = v7;
    v14 = v11;
    v15 = v10;
    v16 = *(a1 + 64);
    dispatch_async(v5, v12);
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 32);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    v5 = v3;
    _os_log_error_impl(&dword_1B8220000, v2, OS_LOG_TYPE_ERROR, "[%{public}@]: Making second attempt to execute query after error: %{public}@", &v6, 0x16u);
  }

  [(ASDAppQueryExecutor *)*(a1 + 80) _executeQueryWithPredicate:*(a1 + 88) isForUpdates:*(a1 + 89) reloadingFromServer:*(a1 + 48) onPairedDevice:*(a1 + 56) remoteDeviceID:*(a1 + 64) usingServiceBroker:*(a1 + 72) withResultHandler:?];
}

void __150__ASDAppQueryExecutor__executeQueryWithPredicate_isForUpdates_reloadingFromServer_onPairedDevice_remoteDeviceID_usingServiceBroker_withResultHandler___block_invoke_6(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 32);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    v5 = v3;
    _os_log_error_impl(&dword_1B8220000, v2, OS_LOG_TYPE_ERROR, "[%{public}@]: Making second attempt to request service after error: %{public}@", &v6, 0x16u);
  }

  [(ASDAppQueryExecutor *)*(a1 + 80) _executeQueryWithPredicate:*(a1 + 88) isForUpdates:*(a1 + 89) reloadingFromServer:*(a1 + 48) onPairedDevice:*(a1 + 56) remoteDeviceID:*(a1 + 64) usingServiceBroker:*(a1 + 72) withResultHandler:?];
}

@end