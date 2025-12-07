@interface DDSAssertionTracker
- (DDSAssertionTracker)initWithDataHandler:(id)handler;
- (NSMutableArray)trackedAssertions;
- (double)intervalForDownloadFrequency:(int64_t)frequency;
- (id)allAssertions;
- (id)assertionDueForUpdateFrom:(id)from SinceDate:(id)date;
- (id)assertionDueForUpdateSinceDate:(id)date;
- (id)assertionForQuery:(id)query;
- (id)assertionIDsForClientID:(id)d;
- (id)trackedAssetTypes;
- (int64_t)updateStatusForAssertion:(id)assertion;
- (void)addAssertionForQuery:(id)query policy:(id)policy assertionID:(id)d clientID:(id)iD;
- (void)didUpdateAssertion:(id)assertion atDate:(id)date;
- (void)modifyUpdateStatusForAssertion:(id)assertion toStatus:(int64_t)status;
- (void)removeAssertionWithID:(id)d;
- (void)resetAssertionDueDatesForAssetType:(id)type;
@end

@implementation DDSAssertionTracker

- (NSMutableArray)trackedAssertions
{
  trackedAssertions = self->_trackedAssertions;
  if (!trackedAssertions)
  {
    dataHandler = [(DDSAssertionTracker *)self dataHandler];
    loadAssertionData = [dataHandler loadAssertionData];
    v6 = [loadAssertionData mutableCopy];
    v7 = self->_trackedAssertions;
    self->_trackedAssertions = v6;

    trackedAssertions = self->_trackedAssertions;
  }

  return trackedAssertions;
}

- (DDSAssertionTracker)initWithDataHandler:(id)handler
{
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = DDSAssertionTracker;
  v6 = [(DDSAssertionTracker *)&v14 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UTILITY, 0);

    v9 = dispatch_queue_create("com.apple.DataDeliveryServices.DDSAssertionTracker", v8);
    queue = v6->_queue;
    v6->_queue = v9;

    objc_storeStrong(&v6->_dataHandler, handler);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assertionUpdateStatus = v6->_assertionUpdateStatus;
    v6->_assertionUpdateStatus = v11;
  }

  return v6;
}

- (id)allAssertions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  queue = [(DDSAssertionTracker *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__DDSAssertionTracker_allAssertions__block_invoke;
  v6[3] = &unk_1E86C6530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __36__DDSAssertionTracker_allAssertions__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) trackedAssertions];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)assertionDueForUpdateSinceDate:(id)date
{
  dateCopy = date;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  queue = [(DDSAssertionTracker *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__DDSAssertionTracker_assertionDueForUpdateSinceDate___block_invoke;
  block[3] = &unk_1E86C6558;
  v10 = dateCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dateCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __54__DDSAssertionTracker_assertionDueForUpdateSinceDate___block_invoke(void *a1)
{
  v2 = a1[4];
  v6 = [v2 trackedAssertions];
  v3 = [v2 assertionDueForUpdateFrom:v6 SinceDate:a1[5]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)assertionDueForUpdateFrom:(id)from SinceDate:(id)date
{
  v30 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  dateCopy = date;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = fromCopy;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        policy = [v14 policy];
        preferredDownloadFrequency = [policy preferredDownloadFrequency];

        [(DDSAssertionTracker *)self intervalForDownloadFrequency:preferredDownloadFrequency];
        v18 = v17;
        lastUpdated = [v14 lastUpdated];
        if (lastUpdated)
        {
          v20 = lastUpdated;
          lastUpdated2 = [v14 lastUpdated];
          [dateCopy timeIntervalSinceDate:lastUpdated2];
          v23 = v22;

          if (v23 <= v18)
          {
            continue;
          }
        }

        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  return v8;
}

- (void)resetAssertionDueDatesForAssetType:(id)type
{
  typeCopy = type;
  queue = [(DDSAssertionTracker *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__DDSAssertionTracker_resetAssertionDueDatesForAssetType___block_invoke;
  v7[3] = &unk_1E86C5C70;
  v7[4] = self;
  v8 = typeCopy;
  v6 = typeCopy;
  dispatch_sync(queue, v7);
}

void __58__DDSAssertionTracker_resetAssertionDueDatesForAssetType___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) trackedAssertions];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 query];
        v9 = [v8 assetType];
        v10 = [v9 isEqualToString:*(a1 + 40)];

        if (v10)
        {
          [v7 setLastUpdated:0];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v11 = [*(a1 + 32) dataHandler];
  v12 = [*(a1 + 32) trackedAssertions];
  [v11 saveAssertionData:v12];
}

- (void)addAssertionForQuery:(id)query policy:(id)policy assertionID:(id)d clientID:(id)iD
{
  queryCopy = query;
  policyCopy = policy;
  dCopy = d;
  iDCopy = iD;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__3;
  v48 = __Block_byref_object_dispose__3;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__3;
  v38 = __Block_byref_object_dispose__3;
  v39 = 0;
  queue = [(DDSAssertionTracker *)self queue];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __72__DDSAssertionTracker_addAssertionForQuery_policy_assertionID_clientID___block_invoke;
  v25 = &unk_1E86C6580;
  selfCopy = self;
  v15 = queryCopy;
  v27 = v15;
  v31 = &v34;
  v16 = dCopy;
  v28 = v16;
  v17 = iDCopy;
  v29 = v17;
  v18 = policyCopy;
  v30 = v18;
  v32 = &v40;
  v33 = &v44;
  dispatch_sync(queue, &v22);

  if ((v41[3] & 1) == 0)
  {
    v19 = [(DDSAssertionTracker *)self delegate:v22];
    v20 = [MEMORY[0x1E695DFD8] setWithObject:v45[5]];
    [v19 handleNewAssertions:v20];
  }

  if (v35[5])
  {
    delegate = [(DDSAssertionTracker *)self delegate];
    [delegate handleAddedNewDescriptor:v35[5] forAssertion:v45[5]];
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
}

void __72__DDSAssertionTracker_addAssertionForQuery_policy_assertionID_clientID___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = [*(a1 + 32) trackedAssertions];
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v28;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v8 = [v7 query];
        v9 = [v8 isEqualToAssetQuery:*(a1 + 40)];

        if (v9)
        {
          v10 = [v7 addDescriptorWithAssertionID:*(a1 + 48) clientID:*(a1 + 56) policy:*(a1 + 64)];
          v11 = *(*(a1 + 72) + 8);
          v12 = *(v11 + 40);
          *(v11 + 40) = v10;

          *(*(*(a1 + 80) + 8) + 24) = 1;
          objc_storeStrong((*(*(a1 + 88) + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v27 objects:v37 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
  {
    v14 = [[DDSAssertion alloc] initWithQuery:*(a1 + 40)];
    v15 = *(*(a1 + 88) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = [*(*(*(a1 + 88) + 8) + 40) addDescriptorWithAssertionID:*(a1 + 48) clientID:*(a1 + 56) policy:*(a1 + 64)];
    v18 = *(*(a1 + 72) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v20 = [*(a1 + 32) trackedAssertions];
    [v20 addObject:*(*(*(a1 + 88) + 8) + 40)];
  }

  v21 = DefaultLog(v13);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(*(*(a1 + 88) + 8) + 40);
    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    *buf = 138543874;
    v32 = v22;
    v33 = 2114;
    v34 = v23;
    v35 = 2114;
    v36 = v24;
    _os_log_impl(&dword_1DF7C6000, v21, OS_LOG_TYPE_DEFAULT, "Add assertion (%{public}@) with id (%{public}@) for client (%{public}@)", buf, 0x20u);
  }

  v25 = [*(a1 + 32) dataHandler];
  v26 = [*(a1 + 32) trackedAssertions];
  [v25 saveAssertionData:v26];
}

- (void)removeAssertionWithID:(id)d
{
  dCopy = d;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy__3;
  v16[3] = __Block_byref_object_dispose__3;
  v17 = 0;
  queue = [(DDSAssertionTracker *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__DDSAssertionTracker_removeAssertionWithID___block_invoke;
  block[3] = &unk_1E86C65A8;
  v6 = dCopy;
  v12 = v6;
  selfCopy = self;
  v14 = &v15;
  dispatch_sync(queue, block);

  v8 = DefaultLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(DDSAssertionTracker *)v16 removeAssertionWithID:v8];
  }

  if (*(v16[0] + 40))
  {
    delegate = [(DDSAssertionTracker *)self delegate];
    v10 = [MEMORY[0x1E695DFD8] setWithObject:*(v16[0] + 40)];
    [delegate handleRemovedAssertions:v10];
  }

  _Block_object_dispose(&v15, 8);
}

void __45__DDSAssertionTracker_removeAssertionWithID___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = DefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v33 = v3;
    _os_log_impl(&dword_1DF7C6000, v2, OS_LOG_TYPE_DEFAULT, "Remove assertion with id: %{public}@", buf, 0xCu);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [*(a1 + 40) trackedAssertions];
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v26;
    *&v6 = 138543362;
    v24 = v6;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 assertionIdentifiers];
        v12 = [v11 containsObject:*(a1 + 32)];

        if (v12)
        {
          v13 = DefaultLog([v10 removeDescriptorWithAssertionID:*(a1 + 32)]);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v18 = *(a1 + 32);
            *buf = v24;
            v33 = v18;
            _os_log_debug_impl(&dword_1DF7C6000, v13, OS_LOG_TYPE_DEBUG, "Removed descriptor id: %{public}@", buf, 0xCu);
          }
        }

        v14 = [v10 descriptors];
        v15 = [v14 count];

        if (!v15)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v10);
          v20 = DefaultLog(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            __45__DDSAssertionTracker_removeAssertionWithID___block_invoke_cold_2(a1 + 48, v20);
          }

          goto LABEL_21;
        }

        v17 = DefaultLog(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          __45__DDSAssertionTracker_removeAssertionWithID___block_invoke_cold_1(v29, v10, &v30, v17);
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v21 = [*(a1 + 40) trackedAssertions];
    [v21 removeObject:*(*(*(a1 + 48) + 8) + 40)];
  }

  v22 = [*(a1 + 40) dataHandler];
  v23 = [*(a1 + 40) trackedAssertions];
  [v22 saveAssertionData:v23];
}

- (void)didUpdateAssertion:(id)assertion atDate:(id)date
{
  assertionCopy = assertion;
  dateCopy = date;
  queue = [(DDSAssertionTracker *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__DDSAssertionTracker_didUpdateAssertion_atDate___block_invoke;
  block[3] = &unk_1E86C65D0;
  v12 = assertionCopy;
  v13 = dateCopy;
  selfCopy = self;
  v9 = dateCopy;
  v10 = assertionCopy;
  dispatch_sync(queue, block);
}

void __49__DDSAssertionTracker_didUpdateAssertion_atDate___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = DefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1DF7C6000, v2, OS_LOG_TYPE_DEFAULT, "Setting last updated for assertion (%{public}@) set to (%{public}@)", &v7, 0x16u);
  }

  [*(a1 + 32) setLastUpdated:*(a1 + 40)];
  v5 = [*(a1 + 48) dataHandler];
  v6 = [*(a1 + 48) trackedAssertions];
  [v5 saveAssertionData:v6];
}

- (id)assertionForQuery:(id)query
{
  queryCopy = query;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  queue = [(DDSAssertionTracker *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__DDSAssertionTracker_assertionForQuery___block_invoke;
  block[3] = &unk_1E86C65A8;
  block[4] = self;
  v10 = queryCopy;
  v11 = &v12;
  v6 = queryCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __41__DDSAssertionTracker_assertionForQuery___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) trackedAssertions];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 query];
        v9 = [v8 isEqualToAssetQuery:*(a1 + 40)];

        if (v9)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (double)intervalForDownloadFrequency:(int64_t)frequency
{
  result = 86400.0;
  if (frequency != 1)
  {
    result = 0.0;
  }

  if (frequency == 2)
  {
    return 604800.0;
  }

  return result;
}

- (id)trackedAssetTypes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  queue = [(DDSAssertionTracker *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__DDSAssertionTracker_trackedAssetTypes__block_invoke;
  v9[3] = &unk_1E86C5C70;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(queue, v9);

  v6 = v10;
  v7 = v5;

  return v5;
}

void __40__DDSAssertionTracker_trackedAssetTypes__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) trackedAssertions];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v10 + 1) + 8 * v6) query];
        v9 = [v8 assetType];
        [v7 addObject:v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (id)assertionIDsForClientID:(id)d
{
  dCopy = d;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  queue = [(DDSAssertionTracker *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__DDSAssertionTracker_assertionIDsForClientID___block_invoke;
  block[3] = &unk_1E86C65D0;
  block[4] = self;
  v7 = v5;
  v13 = v7;
  v14 = dCopy;
  v8 = dCopy;
  dispatch_sync(queue, block);

  v9 = v14;
  v10 = v7;

  return v7;
}

void __47__DDSAssertionTracker_assertionIDsForClientID___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) trackedAssertions];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v9 + 1) + 8 * v6) assertionIDsForClientID:*(a1 + 48)];
        [v7 unionSet:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)modifyUpdateStatusForAssertion:(id)assertion toStatus:(int64_t)status
{
  assertionCopy = assertion;
  queue = [(DDSAssertionTracker *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__DDSAssertionTracker_modifyUpdateStatusForAssertion_toStatus___block_invoke;
  block[3] = &unk_1E86C65F8;
  v10 = assertionCopy;
  statusCopy = status;
  block[4] = self;
  v8 = assertionCopy;
  dispatch_async(queue, block);
}

void __63__DDSAssertionTracker_modifyUpdateStatusForAssertion_toStatus___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) assertionUpdateStatus];
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:*(a1 + 48)];
  v3 = objc_alloc(MEMORY[0x1E696AD98]);
  v4 = [*(a1 + 40) query];
  v5 = [v3 initWithUnsignedInteger:{objc_msgSend(v4, "hash")}];
  [v6 setObject:v2 forKey:v5];
}

- (int64_t)updateStatusForAssertion:(id)assertion
{
  assertionCopy = assertion;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = [(DDSAssertionTracker *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__DDSAssertionTracker_updateStatusForAssertion___block_invoke;
  block[3] = &unk_1E86C6558;
  v10 = assertionCopy;
  v11 = &v12;
  block[4] = self;
  v6 = assertionCopy;
  dispatch_sync(queue, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

void __48__DDSAssertionTracker_updateStatusForAssertion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) assertionUpdateStatus];
  v3 = objc_alloc(MEMORY[0x1E696AD98]);
  v4 = [*(a1 + 40) query];
  v5 = [v3 initWithUnsignedInteger:{objc_msgSend(v4, "hash")}];
  v6 = [v2 objectForKey:v5];
  *(*(*(a1 + 48) + 8) + 24) = [v6 intValue];

  v8 = DefaultLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 40) assertionIdentifiers];
    v10 = *(*(*(a1 + 48) + 8) + 24);
    v11 = 138543618;
    v12 = v9;
    v13 = 2048;
    v14 = v10;
    _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "Asset Download UI updateStatusForAssertion for Assertion: (%{public}@), status: (%ld)", &v11, 0x16u);
  }
}

- (void)removeAssertionWithID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_DEBUG, "Calling delegate to remove assertion: %{public}@", &v3, 0xCu);
}

void __45__DDSAssertionTracker_removeAssertionWithID___block_invoke_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 descriptors];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_debug_impl(&dword_1DF7C6000, a4, OS_LOG_TYPE_DEBUG, "Descriptors: %{public}@", a1, 0xCu);
}

void __45__DDSAssertionTracker_removeAssertionWithID___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*(*a1 + 8) + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_DEBUG, "Removing assertion: %{public}@", &v3, 0xCu);
}

@end