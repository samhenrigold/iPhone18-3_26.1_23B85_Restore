@interface BMComputeSubscriptionSubstreamManager
- (BMComputeSubscriptionSubstreamManager)initWithQueue:(id)queue;
- (BOOL)supportsStream:(id)stream;
- (double)timestamp;
- (id)_initWithDomain:(unint64_t)domain queue:(id)queue library:(id)library;
- (id)_loadSubscriptionsFromSubscriptionsSubstreams;
- (id)_subscriptionSourceForStream:(id)stream;
- (void)_checkinTimeout;
- (void)_removeSubscriptionsPassingTest:(id)test;
- (void)addSubscription:(id)subscription;
- (void)initialCheckinsComplete;
- (void)removeSubscription:(id)subscription;
@end

@implementation BMComputeSubscriptionSubstreamManager

- (BMComputeSubscriptionSubstreamManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = BiomeLibraryAndInternalLibraryNode();
  v6 = [(BMComputeSubscriptionSubstreamManager *)self _initWithDomain:0 queue:queueCopy library:v5];

  return v6;
}

- (id)_initWithDomain:(unint64_t)domain queue:(id)queue library:(id)library
{
  queueCopy = queue;
  libraryCopy = library;
  dispatch_assert_queue_V2(queueCopy);
  v17.receiver = self;
  v17.super_class = BMComputeSubscriptionSubstreamManager;
  v10 = [(BMComputeSubscriptionSubstreamManager *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queue, queue);
    objc_storeStrong(&v11->_library, library);
    v12 = objc_opt_new();
    checkins = v11->_checkins;
    v11->_checkins = v12;

    _loadSubscriptionsFromSubscriptionsSubstreams = [(BMComputeSubscriptionSubstreamManager *)v11 _loadSubscriptionsFromSubscriptionsSubstreams];
    subscriptions = v11->_subscriptions;
    v11->_subscriptions = _loadSubscriptionsFromSubscriptionsSubstreams;
  }

  return v11;
}

- (id)_loadSubscriptionsFromSubscriptionsSubstreams
{
  v29 = *MEMORY[0x1E69E9840];
  v20 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(BMLibraryNode *)self->_library allStreams];
  v3 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    v6 = *MEMORY[0x1E698E948];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        configuration = [v8 configuration];
        enableSubscriptionSubstream = [configuration enableSubscriptionSubstream];

        if (enableSubscriptionSubstream)
        {
          v11 = objc_opt_new();
          v12 = [v8 subscriptionPublisherWithUseCase:v6 options:v11];
          v13 = [BMPairedEventSession sessionPublisherWithStreamPublisher:v12 startingBlock:&__block_literal_global_12 sessionKeyBlock:&__block_literal_global_7 options:0];
          v14 = objc_opt_new();
          identifier = [v8 identifier];
          [v20 setObject:v14 forKeyedSubscript:identifier];

          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __86__BMComputeSubscriptionSubstreamManager__loadSubscriptionsFromSubscriptionsSubstreams__block_invoke_3;
          v22[3] = &unk_1E6E537B8;
          v23 = v14;
          v16 = v14;
          v17 = [v13 sinkWithBookmark:0 completion:v22 receiveInput:&__block_literal_global_13];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v4);
  }

  v18 = [v20 copy];

  return v18;
}

uint64_t __86__BMComputeSubscriptionSubstreamManager__loadSubscriptionsFromSubscriptionsSubstreams__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 starting];

  return v3;
}

id __86__BMComputeSubscriptionSubstreamManager__loadSubscriptionsFromSubscriptionsSubstreams__block_invoke_2(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 eventBody];
  v4 = [v3 client];
  v9[0] = v4;
  v5 = [v2 eventBody];

  v6 = [v5 identifier];
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];

  return v7;
}

void __86__BMComputeSubscriptionSubstreamManager__loadSubscriptionsFromSubscriptionsSubstreams__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 error];
  if (v6)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __86__BMComputeSubscriptionSubstreamManager__loadSubscriptionsFromSubscriptionsSubstreams__block_invoke_3_cold_1(v6, v7);
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [BMPairedEventSession openSessionsFromBookmark:v5, 0];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) startEvent];
          v13 = [v12 eventBody];

          v14 = *(a1 + 32);
          v15 = [v13 uniqueIdentifier];
          [v14 setObject:v13 forKeyedSubscript:v15];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }
}

- (BOOL)supportsStream:(id)stream
{
  v3 = [(NSDictionary *)self->_subscriptions objectForKeyedSubscript:stream];
  v4 = v3 != 0;

  return v4;
}

- (double)timestamp
{
  dateOverride = self->_dateOverride;
  if (!dateOverride)
  {
    return CFAbsoluteTimeGetCurrent();
  }

  [(NSDate *)dateOverride timeIntervalSinceReferenceDate];
  return result;
}

- (void)addSubscription:(id)subscription
{
  v37 = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  dispatch_assert_queue_V2(self->_queue);
  checkins = self->_checkins;
  uniqueIdentifier = [subscriptionCopy uniqueIdentifier];
  [(NSMutableDictionary *)checkins setObject:subscriptionCopy forKeyedSubscript:uniqueIdentifier];

  LOBYTE(uniqueIdentifier) = self->_initialCheckinsComplete;
  startEvent = __biome_log_for_category();
  v8 = os_log_type_enabled(startEvent, OS_LOG_TYPE_DEFAULT);
  if (uniqueIdentifier)
  {
    if (v8)
    {
      uniqueIdentifier2 = [subscriptionCopy uniqueIdentifier];
      *buf = 138412290;
      v36 = uniqueIdentifier2;
      _os_log_impl(&dword_1848EE000, startEvent, OS_LOG_TYPE_DEFAULT, "addSubscription: %@", buf, 0xCu);
    }

    startEvent = [(BMComputeSubscription *)subscriptionCopy startEvent];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [subscriptionCopy streamIdentifiers];
    v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        v14 = 0;
        v28 = v12;
        do
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v30 + 1) + 8 * v14);
          if ([(BMComputeSubscriptionSubstreamManager *)self supportsStream:v15, v28])
          {
            v16 = [(NSDictionary *)self->_subscriptions objectForKeyedSubscript:v15];
            v17 = subscriptionCopy;
            uniqueIdentifier3 = [subscriptionCopy uniqueIdentifier];
            v19 = [v16 objectForKeyedSubscript:uniqueIdentifier3];

            v20 = v19;
            v21 = startEvent;
            serialize = [startEvent serialize];
            serialize2 = [v20 serialize];

            v24 = [serialize isEqual:serialize2];
            if ((v24 & 1) == 0)
            {
              v25 = [(BMComputeSubscriptionSubstreamManager *)self _subscriptionSourceForStream:v15];
              [(BMComputeSubscriptionSubstreamManager *)self timestamp];
              [v25 sendEvent:v21 timestamp:?];
              v26 = [(NSDictionary *)self->_subscriptions objectForKeyedSubscript:v15];
              uniqueIdentifier4 = [v17 uniqueIdentifier];
              [v26 setObject:v21 forKeyedSubscript:uniqueIdentifier4];
            }

            subscriptionCopy = v17;
            startEvent = v21;
            v12 = v28;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v12);
    }
  }

  else if (v8)
  {
    uniqueIdentifier5 = [subscriptionCopy uniqueIdentifier];
    *buf = 138412290;
    v36 = uniqueIdentifier5;
    _os_log_impl(&dword_1848EE000, startEvent, OS_LOG_TYPE_DEFAULT, "addSubscription: %@ pending barrier", buf, 0xCu);
  }
}

- (void)removeSubscription:(id)subscription
{
  v29 = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  dispatch_assert_queue_V2(self->_queue);
  uniqueIdentifier = [subscriptionCopy uniqueIdentifier];
  [(NSMutableDictionary *)self->_checkins setObject:0 forKeyedSubscript:uniqueIdentifier];
  initialCheckinsComplete = self->_initialCheckinsComplete;
  v7 = __biome_log_for_category();
  v8 = os_log_type_enabled(&v7->super, OS_LOG_TYPE_DEFAULT);
  if (initialCheckinsComplete)
  {
    if (v8)
    {
      uniqueIdentifier2 = [subscriptionCopy uniqueIdentifier];
      *buf = 138412290;
      v28 = uniqueIdentifier2;
      _os_log_impl(&dword_1848EE000, &v7->super, OS_LOG_TYPE_DEFAULT, "removeSubscription: %@", buf, 0xCu);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = self->_subscriptions;
    v10 = [(NSDictionary *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v21 = subscriptionCopy;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [(NSDictionary *)self->_subscriptions objectForKeyedSubscript:v14];
          v16 = [v15 objectForKeyedSubscript:uniqueIdentifier];

          if (v16)
          {
            endEvent = [(BMSubscriptionEvent *)v16 endEvent];
            v18 = [(BMComputeSubscriptionSubstreamManager *)self _subscriptionSourceForStream:v14];
            [(BMComputeSubscriptionSubstreamManager *)self timestamp];
            [v18 sendEvent:endEvent timestamp:?];
            v19 = [(NSDictionary *)self->_subscriptions objectForKeyedSubscript:v14];
            [v19 setObject:0 forKeyedSubscript:uniqueIdentifier];
          }
        }

        v11 = [(NSDictionary *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
      subscriptionCopy = v21;
    }
  }

  else if (v8)
  {
    uniqueIdentifier3 = [subscriptionCopy uniqueIdentifier];
    *buf = 138412290;
    v28 = uniqueIdentifier3;
    _os_log_impl(&dword_1848EE000, &v7->super, OS_LOG_TYPE_DEFAULT, "removeSubscription: %@ before barrier", buf, 0xCu);
  }
}

- (void)initialCheckinsComplete
{
  v25 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_initialCheckinsComplete || ([(BMComputeSubscriptionSubstreamManager *)a2 initialCheckinsComplete]& 1) == 0)
  {
    self->_initialCheckinsComplete = 1;
    date = [MEMORY[0x1E695DF00] date];
    dateOverride = self->_dateOverride;
    self->_dateOverride = date;

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __64__BMComputeSubscriptionSubstreamManager_initialCheckinsComplete__block_invoke;
    v23[3] = &unk_1E6E537E0;
    v23[4] = self;
    [(BMComputeSubscriptionSubstreamManager *)self _removeSubscriptionsPassingTest:v23];
    v6 = self->_checkins;
    checkins = self->_checkins;
    self->_checkins = 0;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    allValues = [(NSMutableDictionary *)v6 allValues];
    v9 = [allValues countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(allValues);
          }

          [(BMComputeSubscriptionSubstreamManager *)self addSubscription:*(*(&v19 + 1) + 8 * i)];
        }

        v10 = [allValues countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }

    v13 = self->_checkins;
    self->_checkins = v6;
    v14 = v6;

    v15 = self->_dateOverride;
    self->_dateOverride = 0;

    v16 = dispatch_time(0, 15000000000);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__BMComputeSubscriptionSubstreamManager_initialCheckinsComplete__block_invoke_22;
    block[3] = &unk_1E6E52D50;
    block[4] = self;
    dispatch_after(v16, queue, block);
  }
}

uint64_t __64__BMComputeSubscriptionSubstreamManager_initialCheckinsComplete__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  v5 = [v3 uniqueIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];
  if (v6)
  {

LABEL_4:
    v10 = 0;
    goto LABEL_5;
  }

  v7 = [v3 bootUUID];
  v8 = [MEMORY[0x1E696AFB0] bm_bootSessionUUID];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    goto LABEL_4;
  }

  v12 = __biome_log_for_category();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v3 uniqueIdentifier];
    v14 = 138412290;
    v15 = v13;
    _os_log_impl(&dword_1848EE000, v12, OS_LOG_TYPE_DEFAULT, "Removing subscription from previous boot %@", &v14, 0xCu);
  }

  v10 = 1;
LABEL_5:

  return v10;
}

- (void)_checkinTimeout
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_initialCheckinsComplete || ([(BMComputeSubscriptionSubstreamManager *)a2 _checkinTimeout]& 1) != 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__BMComputeSubscriptionSubstreamManager__checkinTimeout__block_invoke;
    v5[3] = &unk_1E6E537E0;
    v5[4] = self;
    [(BMComputeSubscriptionSubstreamManager *)self _removeSubscriptionsPassingTest:v5];
    checkins = self->_checkins;
    self->_checkins = 0;
  }
}

BOOL __56__BMComputeSubscriptionSubstreamManager__checkinTimeout__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  v5 = [v3 uniqueIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 uniqueIdentifier];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_1848EE000, v7, OS_LOG_TYPE_DEFAULT, "Removing subscription that missed checkin %@", &v10, 0xCu);
    }
  }

  return v6 == 0;
}

- (void)_removeSubscriptionsPassingTest:(id)test
{
  v35 = *MEMORY[0x1E69E9840];
  testCopy = test;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  selfCopy = self;
  obj = self->_subscriptions;
  v21 = [(NSDictionary *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v21)
  {
    v20 = *v30;
    do
    {
      v5 = 0;
      do
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v29 + 1) + 8 * v5);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v22 = v5;
        v23 = v6;
        v7 = [(NSDictionary *)selfCopy->_subscriptions objectForKeyedSubscript:?];
        allValues = [v7 allValues];

        v9 = [allValues countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          v12 = *v26;
          do
          {
            v13 = 0;
            do
            {
              if (*v26 != v12)
              {
                objc_enumerationMutation(allValues);
              }

              v14 = *(*(&v25 + 1) + 8 * v13);
              if (testCopy[2](testCopy, v14))
              {
                if (!v11)
                {
                  v11 = [(BMComputeSubscriptionSubstreamManager *)selfCopy _subscriptionSourceForStream:v23];
                }

                endEvent = [(BMSubscriptionEvent *)v14 endEvent];
                [(BMComputeSubscriptionSubstreamManager *)selfCopy timestamp];
                [v11 sendEvent:endEvent timestamp:?];
                v16 = [(NSDictionary *)selfCopy->_subscriptions objectForKeyedSubscript:v23];
                uniqueIdentifier = [v14 uniqueIdentifier];
                [v16 setObject:0 forKeyedSubscript:uniqueIdentifier];
              }

              ++v13;
            }

            while (v10 != v13);
            v18 = [allValues countByEnumeratingWithState:&v25 objects:v33 count:16];
            v10 = v18;
          }

          while (v18);
        }

        else
        {
          v11 = 0;
        }

        v5 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [(NSDictionary *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v21);
  }
}

- (id)_subscriptionSourceForStream:(id)stream
{
  streamCopy = stream;
  dispatch_assert_queue_V2(self->_queue);
  if ([(BMComputeSubscriptionSubstreamManager *)self supportsStream:streamCopy])
  {
    library = self->_library;
    v11 = 0;
    v6 = [(BMLibraryNode *)library streamWithIdentifier:streamCopy error:&v11];
    v7 = v11;
    if (v7)
    {
      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(BMComputeSubscriptionSubstreamManager *)streamCopy _subscriptionSourceForStream:v7, v8];
      }

      subscriptionSource = 0;
    }

    else
    {
      subscriptionSource = [v6 subscriptionSource];
    }
  }

  else
  {
    subscriptionSource = 0;
  }

  return subscriptionSource;
}

@end