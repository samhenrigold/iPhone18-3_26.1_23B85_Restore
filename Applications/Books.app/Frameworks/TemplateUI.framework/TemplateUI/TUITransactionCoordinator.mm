@interface TUITransactionCoordinator
- (BOOL)_lq_applyTransaction:(id)transaction group:(id)group transactions:(id)transactions categories:(id)categories;
- (BOOL)finalizeSyncTransaction:(id)transaction;
- (TUITransactionCoordinator)initWithFeedId:(id)id layoutQueueContext:(id)context delegate:(id)delegate;
- (TUITransactionCoordinatorDelegate)delegate;
- (id)_aq_instanceForTransaction:(id)transaction;
- (id)_instanceForTransaction:(id)transaction;
- (id)lq_nextTransactionGroup;
- (void)_addTransactionAndProcess:(id)process;
- (void)_appendTransactions:(id)transactions forPredecessorsFromMap:(id)map forTransaction:(id)transaction;
- (void)_applyQueuedTransactionGroupsCheckForSync:(BOOL)sync;
- (void)_lq_processPendingTransactions;
- (void)_queueTransactionGroup:(id)group;
- (void)_removeInstanceForTransaction:(id)transaction;
- (void)performUpdateForTransactionGroup:(id)group;
- (void)resumeUpdates;
- (void)scheduleLayoutUpdateWithTransaction:(id)transaction block:(id)block;
- (void)scheduleSyncTransaction:(id)transaction;
- (void)updatePerformanceIdentifier:(id)identifier;
- (void)waitForSyncTransaction:(id)transaction completion:(id)completion;
@end

@implementation TUITransactionCoordinator

- (TUITransactionCoordinator)initWithFeedId:(id)id layoutQueueContext:(id)context delegate:(id)delegate
{
  contextCopy = context;
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = TUITransactionCoordinator;
  v11 = [(TUITransactionCoordinator *)&v24 init];
  v12 = v11;
  if (v11)
  {
    v11->_feedId.uniqueIdentifier = id.var0;
    objc_storeWeak(&v11->_delegate, delegateCopy);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("TUITransactionCoordinator.accessQueue", v13);
    accessQueue = v12->_accessQueue;
    v12->_accessQueue = v14;

    objc_storeStrong(&v12->_queueContext, context);
    v16 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:0];
    transactionInstances = v12->_transactionInstances;
    v12->_transactionInstances = v16;

    v18 = [NSHashTable hashTableWithOptions:512];
    pendingTransactions = v12->_pendingTransactions;
    v12->_pendingTransactions = v18;

    v20 = objc_opt_new();
    queuedTransactions = v12->_queuedTransactions;
    v12->_queuedTransactions = v20;

    v22 = +[NSUserDefaults standardUserDefaults];
    v12->_catchUncommittedTransactions = [v22 BOOLForKey:@"TUICatchUncommitTransactions"];
  }

  return v12;
}

- (id)_aq_instanceForTransaction:(id)transaction
{
  transactionCopy = transaction;
  dispatch_assert_queue_V2(self->_accessQueue);
  v5 = [(NSMapTable *)self->_transactionInstances objectForKey:transactionCopy];
  if (!v5)
  {
    v5 = [[_TUITransactionInstance alloc] initWithTransaction:transactionCopy];
    [(NSMapTable *)self->_transactionInstances setObject:v5 forKey:transactionCopy];
    objc_initWeak(&location, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_42FDC;
    v16[3] = &unk_25DF18;
    objc_copyWeak(&v18, &location);
    v6 = transactionCopy;
    v17 = v6;
    v7 = [v6 isCommittedAndIfNotNotifyWithBlock:v16];
    if ((v7 & 1) == 0 && self->_catchUncommittedTransactions && _TUIDeviceHasInternalInstall(v7, v8))
    {
      v9 = +[NSThread callStackSymbols];
      v10 = dispatch_time(0, 200000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_4302C;
      block[3] = &unk_25DCA0;
      v14 = v6;
      v15 = v9;
      v11 = v9;
      dispatch_after(v10, &_dispatch_main_q, block);
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)_addTransactionAndProcess:(id)process
{
  processCopy = process;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_43254;
  block[3] = &unk_25ED40;
  v11 = &v12;
  block[4] = self;
  v6 = processCopy;
  v10 = v6;
  dispatch_sync(accessQueue, block);
  if (*(v13 + 24) == 1)
  {
    activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_432BC;
    v8[3] = &unk_25DE30;
    v8[4] = self;
    dispatch_async(activeQueue, v8);
  }

  _Block_object_dispose(&v12, 8);
}

- (id)_instanceForTransaction:(id)transaction
{
  transactionCopy = transaction;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_433D4;
  v16 = sub_433E4;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_433EC;
  block[3] = &unk_25ED40;
  v10 = transactionCopy;
  v11 = &v12;
  block[4] = self;
  v6 = transactionCopy;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)_removeInstanceForTransaction:(id)transaction
{
  transactionCopy = transaction;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_434D4;
  v7[3] = &unk_25DCA0;
  v7[4] = self;
  v8 = transactionCopy;
  v6 = transactionCopy;
  dispatch_sync(accessQueue, v7);
}

- (void)scheduleSyncTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = [transactionCopy tx];
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [v5 setFlags:{objc_msgSend(v5, "flags") | 1}];
  [(TUIWorkQueueContext *)self->_queueContext setSynchronousTransactionInProgress:1];
  if (transactionCopy)
  {
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_436F0;
    block[3] = &unk_25E7C0;
    block[4] = self;
    v15 = v5;
    v7 = transactionCopy;
    v16 = v7;
    dispatch_sync(accessQueue, block);
    v9 = TUITransactionLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = self->_feedId.uniqueIdentifier;
      *buf = 134218242;
      v18 = uniqueIdentifier;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[fid:%lu] TUITransactionCoordinator: scheduling _lq_processPendingTransactions from scheduleSyncTransaction for %@", buf, 0x16u);
    }

    syncWorkQueue = [(TUIWorkQueueContext *)self->_queueContext syncWorkQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_43900;
    v13[3] = &unk_25DE30;
    v13[4] = self;
    v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, v13);
    dispatch_async(syncWorkQueue, v12);
  }
}

- (void)waitForSyncTransaction:(id)transaction completion:(id)completion
{
  completionCopy = completion;
  v7 = [transaction tx];
  syncWorkQueue = [(TUIWorkQueueContext *)self->_queueContext syncWorkQueue];
  v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, &stru_25EE38);
  dispatch_async(syncWorkQueue, v9);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_43A28;
  v13[3] = &unk_25DE58;
  v14 = completionCopy;
  queueContext = self->_queueContext;
  v11 = completionCopy;
  activeCallbackQueue = [(TUIWorkQueueContext *)queueContext activeCallbackQueue];
  [v7 addSubTransactionCompletion:v13 queue:activeCallbackQueue];
}

- (BOOL)finalizeSyncTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = [transactionCopy tx];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_433D4;
  v44 = sub_433E4;
  v45 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_43F58;
  block[3] = &unk_25DC78;
  block[4] = self;
  v7 = v5;
  v38 = v7;
  v39 = &v40;
  dispatch_sync(accessQueue, block);
  cancelSynchronousAndSuspendUpdatesUnlessFinalized = [v41[5] cancelSynchronousAndSuspendUpdatesUnlessFinalized];
  v9 = cancelSynchronousAndSuspendUpdatesUnlessFinalized;
  if (cancelSynchronousAndSuspendUpdatesUnlessFinalized)
  {
    v10 = TUITransactionLog(cancelSynchronousAndSuspendUpdatesUnlessFinalized);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      uniqueIdentifier = self->_feedId.uniqueIdentifier;
      *buf = 134218242;
      v47 = uniqueIdentifier;
      v48 = 2114;
      v49 = v7;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "[fid:%lu] sync transaction cancelled %{public}@", buf, 0x16u);
    }

    options = [v7 options];
    flags = [options flags];

    if ((flags & 2) != 0)
    {
      options2 = [v7 options];
      v15 = [options2 mutableCopy];

      objc_msgSend_duration(v15);
      [v15 setDuration:{fmin(v16, 0.1)}];
      v17 = [[TUITransactionGroup alloc] initWithFeedId:self->_feedId.uniqueIdentifier transactions:0 options:v15 flags:1];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained transactionCoordinator:self timeoutForSynchronousTransactionGroup:v17];

      v19 = self->_accessQueue;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_4405C;
      v34[3] = &unk_25EE60;
      v35 = v17;
      v36 = &v40;
      v34[4] = self;
      v20 = v17;
      dispatch_sync(v19, v34);
    }

    [v41[5] resumeSuspendedUpdates];
  }

  else if (v41[5])
  {
    v21 = TUITransactionLog(cancelSynchronousAndSuspendUpdatesUnlessFinalized);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = self->_feedId.uniqueIdentifier;
      v23 = v41[5];
      *buf = 134218498;
      v47 = v22;
      v48 = 2114;
      v49 = v7;
      v50 = 2114;
      v51 = v23;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "[fid:%lu] waiting for sync transaction group (for tx = %{public}@) to finilize: %{public}@", buf, 0x20u);
    }

    [v41[5] waitForFinalizing];
  }

  else
  {
    v24 = TUITransactionLog(cancelSynchronousAndSuspendUpdatesUnlessFinalized);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = self->_feedId.uniqueIdentifier;
      *buf = 134218242;
      v47 = v25;
      v48 = 2114;
      v49 = v7;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "[fid:%lu] sync transaction group (for tx = %{public}@) already cleared (and queued)", buf, 0x16u);
    }
  }

  [(TUITransactionCoordinator *)self _applyQueuedTransactionGroupsCheckForSync:1];
  v26 = self->_accessQueue;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_440D8;
  v33[3] = &unk_25DE30;
  v33[4] = self;
  dispatch_sync(v26, v33);
  v28 = TUITransactionLog(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = self->_feedId.uniqueIdentifier;
    *buf = 134218242;
    v47 = v29;
    v48 = 2112;
    v49 = transactionCopy;
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "[fid:%lu] TUITransactionCoordinator: scheduling _lq_processPendingTransactions from finalizeSyncTransaction for %@", buf, 0x16u);
  }

  activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_44108;
  v32[3] = &unk_25DE30;
  v32[4] = self;
  dispatch_async(activeQueue, v32);

  _Block_object_dispose(&v40, 8);
  return v9 ^ 1;
}

- (void)scheduleLayoutUpdateWithTransaction:(id)transaction block:(id)block
{
  transactionCopy = transaction;
  blockCopy = block;
  v8 = [transactionCopy tx];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4435C;
  block[3] = &unk_25EE88;
  block[4] = self;
  v10 = v8;
  v19 = v10;
  v11 = blockCopy;
  v21 = v11;
  v22 = &v23;
  v12 = transactionCopy;
  v20 = v12;
  dispatch_sync(accessQueue, block);
  if (*(v24 + 24) == 1)
  {
    v14 = TUITransactionLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = self->_feedId.uniqueIdentifier;
      *buf = 134218242;
      v28 = uniqueIdentifier;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[fid:%lu] TUITransactionCoordinator: scheduling _lq_processPendingTransactions from scheduleLayoutUpdateWithTransaction for %@", buf, 0x16u);
    }

    activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_444D8;
    v17[3] = &unk_25DE30;
    v17[4] = self;
    dispatch_async(activeQueue, v17);
  }

  _Block_object_dispose(&v23, 8);
}

- (id)lq_nextTransactionGroup
{
  workQueue = [(TUIWorkQueueContext *)self->_queueContext workQueue];
  dispatch_assert_queue_V2(workQueue);

  v134 = 0;
  v135 = &v134;
  v136 = 0x3032000000;
  v137 = sub_433D4;
  v138 = sub_433E4;
  v139 = 0;
  v128 = 0;
  v129 = &v128;
  v130 = 0x3032000000;
  v131 = sub_433D4;
  v132 = sub_433E4;
  v133 = 0;
  v124 = 0;
  v125 = &v124;
  v126 = 0x2020000000;
  v127 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_45250;
  block[3] = &unk_25EEB0;
  block[5] = &v134;
  block[4] = self;
  block[6] = &v128;
  block[7] = &v124;
  dispatch_sync(accessQueue, block);
  if (v129[5])
  {
    v4 = dispatch_semaphore_create(0);
    v5 = v129[5];
    v121[0] = _NSConcreteStackBlock;
    v121[1] = 3221225472;
    v121[2] = sub_45388;
    v121[3] = &unk_25DE30;
    v6 = v4;
    v122 = v6;
    v7 = [v5 isCommittedAndIfNotNotifyWithBlock:v121];
    if ((v7 & 1) == 0)
    {
      v8 = TUITransactionLog(v7);
      v9 = os_signpost_id_generate(v8);

      v11 = TUITransactionLog(v10);
      v12 = v11;
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "WaitForSyncTransactionToCommit", "", buf, 2u);
      }

      v13 = dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
      v14 = TUITransactionLog(v13);
      v15 = v14;
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v15, OS_SIGNPOST_INTERVAL_END, v9, "WaitForSyncTransactionToCommit", "", buf, 2u);
      }
    }

    v16 = TUITransactionLog(v7);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_199A9C();
    }
  }

  v90 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:0];
  v91 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:0];
  v17 = [v135[5] copy];
  v81 = [v135[5] copy];
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = v135[5];
  v86 = [obj countByEnumeratingWithState:&v117 objects:v151 count:16];
  if (v86)
  {
    v84 = *v118;
    do
    {
      for (i = 0; i != v86; i = i + 1)
      {
        if (*v118 != v84)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v117 + 1) + 8 * i);
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        predecessors = [v18 predecessors];
        v20 = [predecessors countByEnumeratingWithState:&v113 objects:v150 count:16];
        if (v20)
        {
          v21 = 0;
          v22 = *v114;
          do
          {
            for (j = 0; j != v20; j = j + 1)
            {
              if (*v114 != v22)
              {
                objc_enumerationMutation(predecessors);
              }

              v24 = *(*(&v113 + 1) + 8 * j);
              if ([v17 containsObject:v24])
              {
                if (!v21)
                {
                  v21 = [NSHashTable hashTableWithOptions:512];
                }

                [v21 addObject:v24];
                v25 = [v91 objectForKey:v24];
                if (!v25)
                {
                  v25 = [NSHashTable hashTableWithOptions:512];
                  [v91 setObject:v25 forKey:v24];
                }

                [v25 addObject:v18];
              }
            }

            v20 = [predecessors countByEnumeratingWithState:&v113 objects:v150 count:16];
          }

          while (v20);

          if (v21)
          {
            [v81 removeObject:v18];
            [v90 setObject:v21 forKey:v18];
          }
        }

        else
        {

          v21 = 0;
        }
      }

      v86 = [obj countByEnumeratingWithState:&v117 objects:v151 count:16];
    }

    while (v86);
  }

  v85 = objc_opt_new();
  v26 = v129;
  if (*(v125 + 24) == 1 && v129[5])
  {
    [(TUITransactionCoordinator *)self _appendTransactions:v85 forPredecessorsFromMap:v90 forTransaction:?];
    obja = [v129[5] options];
    v26 = v129;
  }

  else
  {
    obja = 0;
  }

  if (v26[5])
  {
    v27 = 1;
    goto LABEL_89;
  }

  allObjects = [v81 allObjects];
  v29 = [allObjects sortedArrayUsingSelector:"compareIdentifier:"];

  if (*(v125 + 24) == 1)
  {
    v30 = [v29 indexesOfObjectsPassingTest:&stru_25EEF0];
    v31 = [v29 objectsAtIndexes:v30];

    v32 = v31;
  }

  else
  {
    v32 = v29;
  }

  v79 = v32;
  firstObject = [v32 firstObject];
  v87 = objc_opt_new();
  if (firstObject)
  {
    [v87 addObject:firstObject];
    options = [firstObject options];

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v34 = v79;
    v35 = [v34 countByEnumeratingWithState:&v109 objects:v149 count:16];
    if (!v35)
    {
      goto LABEL_59;
    }

    v36 = *v110;
    while (1)
    {
      for (k = 0; k != v35; k = k + 1)
      {
        if (*v110 != v36)
        {
          objc_enumerationMutation(v34);
        }

        v38 = *(*(&v109 + 1) + 8 * k);
        if (v38 != firstObject)
        {
          options2 = [*(*(&v109 + 1) + 8 * k) options];
          v40 = options2;
          if (options == options2)
          {

LABEL_56:
            [v87 addObject:v38];
            continue;
          }

          options3 = [v38 options];
          v42 = [options isCompatibleWithOptions:options3];

          if (v42)
          {
            goto LABEL_56;
          }
        }
      }

      v35 = [v34 countByEnumeratingWithState:&v109 objects:v149 count:16];
      if (!v35)
      {
LABEL_59:

        goto LABEL_73;
      }
    }
  }

  options = obja;
LABEL_73:
  while (1)
  {
    firstObject2 = [v87 firstObject];

    if (!firstObject2)
    {
      break;
    }

    [v85 addObject:firstObject2];
    [v87 removeObjectAtIndex:0];
    v43 = [v91 objectForKey:firstObject2];
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v44 = v43;
    v45 = [v44 countByEnumeratingWithState:&v105 objects:v148 count:16];
    if (v45)
    {
      v46 = *v106;
      do
      {
        for (m = 0; m != v45; m = m + 1)
        {
          if (*v106 != v46)
          {
            objc_enumerationMutation(v44);
          }

          v48 = *(*(&v105 + 1) + 8 * m);
          v49 = [v90 objectForKey:v48];
          if ([v49 containsObject:firstObject2])
          {
            options4 = [v48 options];
            v51 = [options isCompatibleWithOptions:options4];

            if (v51)
            {
              [v49 removeObject:firstObject2];
              if (![v49 count])
              {
                [v87 addObject:v48];
              }
            }
          }
        }

        v45 = [v44 countByEnumeratingWithState:&v105 objects:v148 count:16];
      }

      while (v45);
    }

    firstObject = firstObject2;
  }

  v53 = v129[5];
  v27 = v53 != 0;
  if (v53)
  {
    v27 = 1;
  }

  else
  {
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v54 = v85;
    v55 = [v54 countByEnumeratingWithState:&v101 objects:v147 count:16];
    if (v55)
    {
      v56 = *v102;
      while (2)
      {
        for (n = 0; n != v55; n = n + 1)
        {
          if (*v102 != v56)
          {
            objc_enumerationMutation(v54);
          }

          if ([*(*(&v101 + 1) + 8 * n) flags])
          {
            v27 = 1;
            goto LABEL_87;
          }
        }

        v55 = [v54 countByEnumeratingWithState:&v101 objects:v147 count:16];
        if (v55)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v27 = 0;
    }

LABEL_87:
  }

  obja = options;
LABEL_89:
  v58 = [v85 count];
  if (v58)
  {
    v58 = [[TUITransactionGroup alloc] initWithFeedId:self->_feedId.uniqueIdentifier transactions:v85 options:obja flags:v27];
    v59 = v58;
    if (v58)
    {
      v60 = TUITransactionLog(v58);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        sub_199B14();
      }

LABEL_104:

      goto LABEL_106;
    }
  }

  v61 = TUITransactionLog(v58);
  v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG);

  if (v62)
  {
    v60 = objc_opt_new();
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v63 = v135[5];
    v64 = [v63 countByEnumeratingWithState:&v97 objects:v146 count:16];
    if (v64)
    {
      v65 = *v98;
      do
      {
        for (ii = 0; ii != v64; ii = ii + 1)
        {
          if (*v98 != v65)
          {
            objc_enumerationMutation(v63);
          }

          v67 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"id=%lu", [*(*(&v97 + 1) + 8 * ii) identifier]);
          [v60 addObject:v67];
        }

        v64 = [v63 countByEnumeratingWithState:&v97 objects:v146 count:16];
      }

      while (v64);
    }

    v69 = TUITransactionLog(v68);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      uniqueIdentifier = self->_feedId.uniqueIdentifier;
      v77 = v129[5];
      v78 = [v60 componentsJoinedByString:@", "];
      *buf = 134218498;
      v141 = uniqueIdentifier;
      v142 = 2114;
      v143 = v77;
      v144 = 2114;
      v145 = v78;
      _os_log_debug_impl(&dword_0, v69, OS_LOG_TYPE_DEBUG, "[fid:%lu] couldn't establish next transaction group; syncTx = %{public}@, pendingTransaction = [%{public}@]", buf, 0x20u);
    }

    v59 = 0;
    goto LABEL_104;
  }

  v59 = 0;
LABEL_106:
  v70 = self->_accessQueue;
  v92[0] = _NSConcreteStackBlock;
  v92[1] = 3221225472;
  v92[2] = sub_453B8;
  v92[3] = &unk_25EF18;
  v93 = v85;
  selfCopy = self;
  v96 = v27;
  v71 = v59;
  v95 = v71;
  v72 = v85;
  dispatch_sync(v70, v92);
  v73 = v95;
  v74 = v71;

  _Block_object_dispose(&v124, 8);
  _Block_object_dispose(&v128, 8);

  _Block_object_dispose(&v134, 8);

  return v74;
}

- (void)_appendTransactions:(id)transactions forPredecessorsFromMap:(id)map forTransaction:(id)transaction
{
  transactionsCopy = transactions;
  mapCopy = map;
  transactionCopy = transaction;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [mapCopy objectForKey:{transactionCopy, 0}];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(TUITransactionCoordinator *)self _appendTransactions:transactionsCopy forPredecessorsFromMap:mapCopy forTransaction:*(*(&v16 + 1) + 8 * v15)];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }

  [transactionsCopy addObject:transactionCopy];
}

- (void)_lq_processPendingTransactions
{
  workQueue = [(TUIWorkQueueContext *)self->_queueContext workQueue];
  dispatch_assert_queue_V2(workQueue);

  while ([(NSHashTable *)self->_pendingTransactions count])
  {
    performanceIdentifier = self->_performanceIdentifier;
    if (performanceIdentifier)
    {
      [(NSNumber *)performanceIdentifier unsignedIntegerValue];
      kdebug_trace();
    }

    lq_nextTransactionGroup = [(TUITransactionCoordinator *)self lq_nextTransactionGroup];
    v6 = self->_performanceIdentifier;
    if (v6)
    {
      [(NSNumber *)v6 unsignedIntegerValue];
      kdebug_trace();
    }

    if (!lq_nextTransactionGroup)
    {
      break;
    }

    v7 = self->_performanceIdentifier;
    if (v7)
    {
      [(NSNumber *)v7 unsignedIntegerValue];
      kdebug_trace();
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 transactionCoordinator:self performUpdateForTransactionGroup:lq_nextTransactionGroup];
    }

    else
    {
      [(TUITransactionCoordinator *)self performUpdateForTransactionGroup:lq_nextTransactionGroup];
    }

    v11 = self->_performanceIdentifier;
    if (v11)
    {
      [(NSNumber *)v11 unsignedIntegerValue];
      kdebug_trace();
    }
  }
}

- (void)performUpdateForTransactionGroup:(id)group
{
  groupCopy = group;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained transactionCoordinator:self willBeginUpdateWithTransactionGroup:groupCopy];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  sortedTransactions = [groupCopy sortedTransactions];
  v9 = [sortedTransactions countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v37;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(sortedTransactions);
        }

        v11 |= [(TUITransactionCoordinator *)self _lq_applyTransaction:*(*(&v36 + 1) + 8 * i) group:groupCopy transactions:v5 categories:v6];
      }

      v10 = [sortedTransactions countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v10);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  [groupCopy setCategories:v6];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_45B28;
  v34[3] = &unk_25DE30;
  v14 = v5;
  v35 = v14;
  v15 = objc_retainBlock(v34);
  if (v11)
  {
    [groupCopy addCompletion:v15];
    v16 = objc_loadWeakRetained(&self->_delegate);
    [v16 transactionCoordinator:self updateWithTransactionGroup:groupCopy];

    [(TUITransactionCoordinator *)self _queueTransactionGroup:groupCopy];
  }

  else
  {
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_45C14;
    block[3] = &unk_25DCA0;
    v18 = groupCopy;
    v32 = v18;
    selfCopy = self;
    dispatch_sync(accessQueue, block);
    [v18 computeFinalUpdatesWithBlock:&stru_25EF38];
    [v18 addCompletion:v15];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_45C34;
    v29[3] = &unk_25DE30;
    v30 = v18;
    TUIDispatchAsyncViaRunLoop(v29);
  }

  v19 = objc_loadWeakRetained(&self->_delegate);
  [v19 transactionCoordinator:self didEndUpdateWithTransactionGroup:groupCopy];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = v14;
  v21 = [v20 countByEnumeratingWithState:&v25 objects:v40 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v25 + 1) + 8 * j) removeSubTransactionCompletionDeferral];
      }

      v22 = [v20 countByEnumeratingWithState:&v25 objects:v40 count:16];
    }

    while (v22);
  }
}

- (void)_queueTransactionGroup:(id)group
{
  groupCopy = group;
  v5 = TUITransactionLog(groupCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    *buf = 134218242;
    *&buf[4] = uniqueIdentifier;
    *&buf[12] = 2114;
    *&buf[14] = groupCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[fid:%lu] enqueue group %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v24 = 0;
  flags = [groupCopy flags];
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_45ED0;
  block[3] = &unk_25EE60;
  block[4] = self;
  v18 = buf;
  v9 = groupCopy;
  v17 = v9;
  dispatch_sync(accessQueue, block);
  if (*(*&buf[8] + 24) == 1)
  {
    v11 = TUITransactionLog(v10);
    v12 = flags & 1;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = self->_feedId.uniqueIdentifier;
      *v19 = 134218240;
      v20 = v13;
      v21 = 2048;
      v22 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "[fid:%lu] scheduling applyQueueTransactions checkSync:%lu", v19, 0x16u);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_45F60;
    v14[3] = &unk_25EF60;
    v14[4] = self;
    v15 = v12;
    TUIDispatchAsyncViaRunLoop(v14);
  }

  _Block_object_dispose(buf, 8);
}

- (void)_applyQueuedTransactionGroupsCheckForSync:(BOOL)sync
{
  syncCopy = sync;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (self->_pauseUpdateCount)
  {
    v6 = !syncCopy;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v17 = TUITransactionLog(v5);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      uniqueIdentifier = self->_feedId.uniqueIdentifier;
      pauseUpdateCount = self->_pauseUpdateCount;
      *v31 = 134218240;
      *&v31[4] = uniqueIdentifier;
      *&v31[12] = 2048;
      *&v31[14] = pauseUpdateCount;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "[fid:%lu] deferring dequeue (paused = %lu)", v31, 0x16u);
    }
  }

  else
  {
    *v31 = 0;
    *&v31[8] = v31;
    *&v31[16] = 0x3032000000;
    v32 = sub_433D4;
    v33 = sub_433E4;
    v34 = objc_opt_new();
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_46298;
    block[3] = &unk_25EFC8;
    v25 = syncCopy;
    block[4] = self;
    block[5] = v31;
    dispatch_sync(accessQueue, block);
    if (![*(*&v31[8] + 40) count])
    {
      v8 = TUITransactionLog(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = self->_feedId.uniqueIdentifier;
        v10 = self->_pauseUpdateCount;
        *buf = 134218240;
        v28 = v9;
        v29 = 2048;
        v30 = v10;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "[fid:%lu] nothing to dequeue (paused = %lu)", buf, 0x16u);
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = *(*&v31[8] + 40);
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v14)
    {
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v13);
          }

          if (v12)
          {
            [WeakRetained transactionCoordinator:self applyUpdatesFromTransactionGroup:*(*(&v20 + 1) + 8 * i)];
          }

          else
          {
            [*(*(&v20 + 1) + 8 * i) applyUpdates];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v14);
    }

    _Block_object_dispose(v31, 8);
  }
}

- (BOOL)_lq_applyTransaction:(id)transaction group:(id)group transactions:(id)transactions categories:(id)categories
{
  transactionCopy = transaction;
  groupCopy = group;
  transactionsCopy = transactions;
  categoriesCopy = categories;
  allCategories = [transactionCopy allCategories];
  [categoriesCopy addObjectsFromArray:allCategories];

  [transactionCopy addCompletionDeferral];
  [transactionsCopy addObject:transactionCopy];
  v15 = [(TUITransactionCoordinator *)self _instanceForTransaction:transactionCopy];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_433D4;
  v39 = sub_433E4;
  v40 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_46790;
  block[3] = &unk_25EFF0;
  v34 = &v35;
  v17 = v15;
  v33 = v17;
  dispatch_sync(accessQueue, block);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v36[5];
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v41 count:16];
  v27 = v17;
  selfCopy = self;
  v21 = categoriesCopy;
  v22 = transactionsCopy;
  v23 = 0;
  if (v19)
  {
    v24 = *v29;
    do
    {
      v25 = 0;
      do
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v18);
        }

        v23 |= (*(*(*(&v28 + 1) + 8 * v25) + 16))();
        v25 = v25 + 1;
      }

      while (v19 != v25);
      v19 = [v18 countByEnumeratingWithState:&v28 objects:v41 count:16];
    }

    while (v19);
  }

  [(TUITransactionCoordinator *)selfCopy _removeInstanceForTransaction:transactionCopy];
  _Block_object_dispose(&v35, 8);

  return v23 & 1;
}

- (void)resumeUpdates
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  pauseUpdateCount = self->_pauseUpdateCount;
  if (pauseUpdateCount)
  {
    v4 = pauseUpdateCount - 1;
    self->_pauseUpdateCount = v4;
    if (!v4)
    {

      [(TUITransactionCoordinator *)self _applyQueuedTransactionGroups];
    }
  }
}

- (void)updatePerformanceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_46928;
  v7[3] = &unk_25DCA0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(activeQueue, v7);
}

- (TUITransactionCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end