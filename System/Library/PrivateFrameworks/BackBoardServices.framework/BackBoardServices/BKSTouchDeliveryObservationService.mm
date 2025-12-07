@interface BKSTouchDeliveryObservationService
+ (id)sharedInstance;
- (BKSTouchDeliveryObservationService)init;
- (BOOL)_queue_addObserver:(id)observer forTouchIdentifier:(unsigned int)identifier;
- (BOOL)_queue_removeObserver:(id)observer forTouchIdentifier:(unsigned int)identifier;
- (id)_queue_observersForTouchIdentifier:(unsigned int)identifier;
- (void)_connectToTouchDeliveryService;
- (void)_processTouchEventDeliveryUpdate:(id)update;
- (void)_queue_removeObserversForTouchIdentifier:(unsigned int)identifier;
- (void)addObserver:(id)observer;
- (void)addObserver:(id)observer forTouchIdentifier:(unsigned int)identifier;
- (void)dealloc;
- (void)observeTouchEventDeliveryDidOccur:(id)occur response:(id)response;
- (void)removeObserver:(id)observer;
@end

@implementation BKSTouchDeliveryObservationService

- (void)_processTouchEventDeliveryUpdate:(id)update
{
  v24 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v6 = BKLogTouchDeliveryObserver();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v23 = updateCopy;
    _os_log_debug_impl(&dword_186345000, v6, OS_LOG_TYPE_DEBUG, "update: received touch event update %{public}@", buf, 0xCu);
  }

  touchIdentifier = [updateCopy touchIdentifier];
  v8 = [updateCopy pid];
  isDetached = [updateCopy isDetached];
  contextID = [updateCopy contextID];
  type = [updateCopy type];
  if (type)
  {
    calloutQueue = self->_calloutQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71__BKSTouchDeliveryObservationService__processTouchEventDeliveryUpdate___block_invoke;
    v14[3] = &unk_1E6F47390;
    v14[4] = self;
    v16 = type;
    v17 = a2;
    v21 = isDetached;
    v18 = touchIdentifier;
    v19 = contextID;
    v20 = v8;
    v15 = updateCopy;
    dispatch_async(calloutQueue, v14);
  }

  else
  {
    v13 = BKLogTouchDeliveryObserver();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = updateCopy;
      _os_log_error_impl(&dword_186345000, v13, OS_LOG_TYPE_ERROR, "update: invalid update type %{public}@", buf, 0xCu);
    }
  }
}

void __71__BKSTouchDeliveryObservationService__processTouchEventDeliveryUpdate___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__9945;
  v39 = __Block_byref_object_dispose__9946;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__9945;
  v33 = __Block_byref_object_dispose__9946;
  v34 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__BKSTouchDeliveryObservationService__processTouchEventDeliveryUpdate___block_invoke_84;
  block[3] = &unk_1E6F47368;
  v28 = *(a1 + 64);
  block[4] = v2;
  block[5] = &v35;
  block[6] = &v29;
  dispatch_sync(v3, block);
  v4 = [v36[5] objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
  if (v5)
  {
    v6 = MEMORY[0];
    do
    {
      v7 = 0;
      do
      {
        if (MEMORY[0] != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(a1 + 48);
        if (v8)
        {
          v9 = *(8 * v7);
          if (v8 == 1)
          {
            if (objc_opt_respondsToSelector())
            {
              v11 = BKLogTouchDeliveryObserver();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
              {
                v13 = *(a1 + 64);
                *buf = 67109378;
                *v42 = v13;
                *&v42[4] = 2114;
                *&v42[6] = v9;
                _os_log_debug_impl(&dword_186345000, v11, OS_LOG_TYPE_DEBUG, "update: up for %X to pid:%{public}@", buf, 0x12u);
              }

              [v9 touchUpOccuredForIdentifier:? detached:? context:? pid:?];
            }
          }

          else if (v8 == 2 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            v10 = BKLogTouchDeliveryObserver();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              v14 = *(a1 + 64);
              *buf = 67109378;
              *v42 = v14;
              *&v42[4] = 2114;
              *&v42[6] = v9;
              _os_log_debug_impl(&dword_186345000, v10, OS_LOG_TYPE_DEBUG, "update: detach for %X to %{public}@", buf, 0x12u);
            }

            [v9 touchDetachedForIdentifier:? context:? pid:?];
          }
        }

        else
        {
          v12 = [MEMORY[0x1E696AAA8] currentHandler];
          [v12 handleFailureInMethod:@"NO" object:? file:? lineNumber:? description:?];
        }

        v7 = (v7 + 1);
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v5);
  }

  if ([v30[5] count])
  {
    v26 = *(a1 + 40);
    if (*(a1 + 64))
    {
      v15 = [*(a1 + 40) copy];

      [v15 setTouchIdentifier:?];
      v26 = v15;
    }

    v16 = [v30[5] objectEnumerator];
    v17 = [v16 countByEnumeratingWithState:? objects:? count:?];
    if (v17)
    {
      v18 = MEMORY[0];
      do
      {
        v19 = 0;
        do
        {
          if (MEMORY[0] != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(8 * v19);
          if (([v36[5] containsObject:?] & 1) == 0)
          {
            v21 = *(a1 + 48);
            if (v21)
            {
              if (v21 == 1)
              {
                if (objc_opt_respondsToSelector())
                {
                  v23 = BKLogTouchDeliveryObserver();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543362;
                    *v42 = v20;
                    _os_log_debug_impl(&dword_186345000, v23, OS_LOG_TYPE_DEBUG, "update: up to %{public}@", buf, 0xCu);
                  }

                  [v20 touchUpOccuredForIdentifier:? detached:? context:? pid:?];
                }
              }

              else if (v21 == 2 && (objc_opt_respondsToSelector() & 1) != 0)
              {
                v22 = BKLogTouchDeliveryObserver();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  *v42 = v20;
                  _os_log_debug_impl(&dword_186345000, v22, OS_LOG_TYPE_DEBUG, "update: detach to %{public}@", buf, 0xCu);
                }

                [v20 touchDetachedForIdentifier:? context:? pid:?];
              }
            }

            else
            {
              v24 = [MEMORY[0x1E696AAA8] currentHandler];
              [v24 handleFailureInMethod:@"NO" object:? file:? lineNumber:? description:?];
            }
          }

          v19 = (v19 + 1);
        }

        while (v17 != v19);
        v25 = [v16 countByEnumeratingWithState:? objects:? count:?];
        v17 = v25;
      }

      while (v25);
    }
  }

  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
}

uint64_t __71__BKSTouchDeliveryObservationService__processTouchEventDeliveryUpdate___block_invoke_84(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = [*(a1 + 32) _queue_observersForTouchIdentifier:?];
    v3 = [v2 copy];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1 + 32) _queue_removeObserversForTouchIdentifier:?];
  }

  v6 = [*(*(a1 + 32) + 56) copy];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return MEMORY[0x1EEE66BB8](v6, v8);
}

- (void)observeTouchEventDeliveryDidOccur:(id)occur response:(id)response
{
  occurCopy = occur;
  responseCopy = response;
  v8 = [occurCopy countByEnumeratingWithState:0 objects:? count:?];
  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0];
    do
    {
      for (i = 0; i != v9; i = (i + 1))
      {
        if (MEMORY[0] != v10)
        {
          objc_enumerationMutation(occurCopy);
        }

        [(BKSTouchDeliveryObservationService *)self _processTouchEventDeliveryUpdate:?];
      }

      v9 = [occurCopy countByEnumeratingWithState:? objects:? count:?];
    }

    while (v9);
  }

  responseCopy[2](responseCopy, 0);
}

- (void)_connectToTouchDeliveryService
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = +[BKSHIDServiceConnectionFactory sharedInstance];
  v4 = [v3 clientConnectionForServiceWithName:?];

  if (v4)
  {
    objc_storeStrong(&self->_connection, v4);
    [(BSServiceInitiatingConnection *)self->_connection configure:?];
    v5 = BKLogTouchDeliveryObserver();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_186345000, v5, OS_LOG_TYPE_DEBUG, "activating connection to server", buf, 2u);
    }

    [v4 activate];
    v6 = BKLogTouchDeliveryObserver();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      remoteTarget = [v4 remoteTarget];
      *buf = 138543362;
      v12 = remoteTarget;
      _os_log_debug_impl(&dword_186345000, v6, OS_LOG_TYPE_DEBUG, "server remote target %{public}@", buf, 0xCu);
    }

    remoteTarget2 = [v4 remoteTarget];

    if (!remoteTarget2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }
  }

  else
  {
    v9 = BKLogTouchDeliveryObserver();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_186345000, v9, OS_LOG_TYPE_ERROR, "cannot get connection for service", buf, 2u);
    }
  }
}

void __68__BKSTouchDeliveryObservationService__connectToTouchDeliveryService__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BKLogTouchDeliveryObserver();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_186345000, v4, OS_LOG_TYPE_DEBUG, "configured client service", buf, 2u);
  }

  v5 = [MEMORY[0x1E698E710] protocolForProtocol:?];
  v6 = [MEMORY[0x1E698E710] protocolForProtocol:?];
  v7 = [MEMORY[0x1E698F470] interfaceWithIdentifier:?];
  [v7 setServer:?];
  [v7 setClient:?];
  [v3 setInterface:?];
  [v3 setInterfaceTarget:?];
  [v3 setQueue:?];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __68__BKSTouchDeliveryObservationService__connectToTouchDeliveryService__block_invoke_71;
  v11 = &unk_1E6F474B0;
  v12 = *(a1 + 32);
  [v3 setInterruptionHandler:?];
  [v3 setInvalidationHandler:?];
}

void __68__BKSTouchDeliveryObservationService__connectToTouchDeliveryService__block_invoke_71(uint64_t a1)
{
  v2 = BKLogTouchDeliveryObserver();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_186345000, v2, OS_LOG_TYPE_ERROR, "service interruption -- attempting to reconnect", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__BKSTouchDeliveryObservationService__connectToTouchDeliveryService__block_invoke_72;
  block[3] = &unk_1E6F477B8;
  block[4] = v3;
  dispatch_async(v4, block);
}

void __68__BKSTouchDeliveryObservationService__connectToTouchDeliveryService__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BKLogTouchDeliveryObserver();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_186345000, v3, OS_LOG_TYPE_ERROR, "backboardd must be going down, exiting", v4, 2u);
  }

  exit(0);
}

void __68__BKSTouchDeliveryObservationService__connectToTouchDeliveryService__block_invoke_72(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __68__BKSTouchDeliveryObservationService__connectToTouchDeliveryService__block_invoke_2;
  v8 = &unk_1E6F47340;
  v9 = v2;
  [v3 enumerateKeysWithBlock:?];
  if ([*(*(a1 + 32) + 56) count])
  {
    v4 = [*(*(a1 + 32) + 32) remoteTarget];
    [v4 setObservesAllTouches:?];
  }
}

void __68__BKSTouchDeliveryObservationService__connectToTouchDeliveryService__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 32) remoteTarget];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  [v3 setObservesTouch:? withIdentifier:?];
}

- (BOOL)_queue_removeObserver:(id)observer forTouchIdentifier:(unsigned int)identifier
{
  observerCopy = observer;
  dispatch_assert_queue_V2(self->_touchClientQueue);
  v6 = [(BSMutableIntegerMap *)self->_touchIdentifierToObserverLists objectForKey:?];
  v7 = v6;
  if (v6 && [v6 containsObject:?])
  {
    [v7 removeObject:?];
    v8 = [v7 count];
    v9 = v8 == 0;
    if (!v8)
    {
      [(BSMutableIntegerMap *)self->_touchIdentifierToObserverLists removeObjectForKey:?];
    }

    v10 = [(NSMapTable *)self->_observersToTouchIdentifiers objectForKey:?];
    v11 = v10;
    if (v10)
    {
      [v10 removeValue:?];
      if (![v11 count])
      {
        [(NSMapTable *)self->_observersToTouchIdentifiers removeObjectForKey:?];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_queue_addObserver:(id)observer forTouchIdentifier:(unsigned int)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  dispatch_assert_queue_V2(self->_touchClientQueue);
  v6 = [(BSMutableIntegerMap *)self->_touchIdentifierToObserverLists objectForKey:?];
  if (!v6)
  {
    v6 = [MEMORY[0x1E696AC70] hashTableWithOptions:?];
    [BSMutableIntegerMap setObject:"setObject:forKey:" forKey:?];
  }

  if (([v6 containsObject:?] & 1) == 0)
  {
    [v6 addObject:?];
    v7 = [(NSMapTable *)self->_observersToTouchIdentifiers objectForKey:?];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x1E698E6E8]);
      [NSMapTable setObject:"setObject:forKey:" forKey:?];
    }

    [v7 addValue:?];
  }

  v8 = BKLogTouchDeliveryObserver();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138543362;
    v12 = v6;
    _os_log_debug_impl(&dword_186345000, v8, OS_LOG_TYPE_DEBUG, "addObserver:forTouchIdentifier: table:%{public}@", &v11, 0xCu);
  }

  v9 = [v6 count] == 1;
  return v9;
}

- (void)_queue_removeObserversForTouchIdentifier:(unsigned int)identifier
{
  dispatch_assert_queue_V2(self->_touchClientQueue);
  v4 = [(BKSTouchDeliveryObservationService *)self _queue_observersForTouchIdentifier:?];
  v5 = [v4 copy];

  if (v5)
  {
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:0 objects:? count:?];
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0];
      do
      {
        for (i = 0; i != v8; i = (i + 1))
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(NSMapTable *)self->_observersToTouchIdentifiers objectForKey:?];
          [v11 removeValue:?];
        }

        v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v8);
    }

    [(BSMutableIntegerMap *)self->_touchIdentifierToObserverLists removeObjectForKey:?];
  }
}

- (id)_queue_observersForTouchIdentifier:(unsigned int)identifier
{
  dispatch_assert_queue_V2(self->_touchClientQueue);
  touchIdentifierToObserverLists = self->_touchIdentifierToObserverLists;

  return [(BSMutableIntegerMap *)touchIdentifierToObserverLists objectForKey:?];
}

- (void)removeObserver:(id)observer
{
  v14 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v5 = BKLogTouchDeliveryObserver();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v8 = v13;
    _os_log_debug_impl(&dword_186345000, v5, OS_LOG_TYPE_DEBUG, "add observer:%{public}@", buf, 0xCu);
  }

  touchClientQueue = self->_touchClientQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__BKSTouchDeliveryObservationService_removeObserver___block_invoke;
  v9[3] = &unk_1E6F47C78;
  v10 = observerCopy;
  selfCopy = self;
  v7 = observerCopy;
  dispatch_sync(touchClientQueue, v9);
}

void __53__BKSTouchDeliveryObservationService_removeObserver___block_invoke(int8x16_t *a1)
{
  if (a1[2].i64[0])
  {
    [*(a1[2].i64[1] + 56) removeObject:?];
    if (![*(a1[2].i64[1] + 56) count])
    {
      v2 = [*(a1[2].i64[1] + 32) remoteTarget];
      [v2 setObservesAllTouches:?];
    }

    v3 = [*(a1[2].i64[1] + 48) objectForKey:?];
    v4 = [v3 copy];

    if (v4)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = __53__BKSTouchDeliveryObservationService_removeObserver___block_invoke_2;
      v10 = &unk_1E6F47318;
      v6 = a1[2];
      v5 = v6.i64[0];
      v11 = vextq_s8(v6, v6, 8uLL);
      [v4 enumerateWithBlock:?];
    }
  }
}

void __53__BKSTouchDeliveryObservationService_removeObserver___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) _queue_removeObserver:? forTouchIdentifier:?])
  {
    v4 = [*(*(a1 + 32) + 32) remoteTarget];
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [v4 setObservesTouch:? withIdentifier:?];
  }
}

- (void)addObserver:(id)observer forTouchIdentifier:(unsigned int)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v7 = BKLogTouchDeliveryObserver();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v16 = objc_opt_class();
    v17 = 1024;
    identifierCopy = identifier;
    v10 = v16;
    _os_log_debug_impl(&dword_186345000, v7, OS_LOG_TYPE_DEBUG, "add observer:%{public}@ for touch:%X", buf, 0x12u);
  }

  touchClientQueue = self->_touchClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__BKSTouchDeliveryObservationService_addObserver_forTouchIdentifier___block_invoke;
  block[3] = &unk_1E6F472F0;
  v12 = observerCopy;
  selfCopy = self;
  identifierCopy2 = identifier;
  v9 = observerCopy;
  dispatch_sync(touchClientQueue, block);
}

void __69__BKSTouchDeliveryObservationService_addObserver_forTouchIdentifier___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) && [*(a1 + 40) _queue_addObserver:? forTouchIdentifier:?])
  {
    v3 = [*(*(a1 + 40) + 32) remoteTarget];
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [v3 setObservesTouch:? withIdentifier:?];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = BKLogTouchDeliveryObserver();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_186345000, v5, OS_LOG_TYPE_DEBUG, "add observer", buf, 2u);
  }

  touchClientQueue = self->_touchClientQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__BKSTouchDeliveryObservationService_addObserver___block_invoke;
  v8[3] = &unk_1E6F47C78;
  v8[4] = self;
  v9 = observerCopy;
  v7 = observerCopy;
  dispatch_sync(touchClientQueue, v8);
}

void __50__BKSTouchDeliveryObservationService_addObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) addObject:?];
  if ([*(*(a1 + 32) + 56) count] == 1)
  {
    v2 = [*(*(a1 + 32) + 32) remoteTarget];
    [v2 setObservesAllTouches:?];
  }
}

- (void)dealloc
{
  [(BSServiceInitiatingConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = BKSTouchDeliveryObservationService;
  [(BKSTouchDeliveryObservationService *)&v3 dealloc];
}

- (BKSTouchDeliveryObservationService)init
{
  v16.receiver = self;
  v16.super_class = BKSTouchDeliveryObservationService;
  v2 = [(BKSTouchDeliveryObservationService *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E698E6E0]);
    touchIdentifierToObserverLists = v2->_touchIdentifierToObserverLists;
    v2->_touchIdentifierToObserverLists = v3;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    observersToTouchIdentifiers = v2->_observersToTouchIdentifiers;
    v2->_observersToTouchIdentifiers = weakToStrongObjectsMapTable;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    generalObservers = v2->_generalObservers;
    v2->_generalObservers = weakObjectsHashTable;

    Serial = BSDispatchQueueCreateSerial();
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = Serial;

    v11 = [MEMORY[0x1E698F4D0] queueWithName:?];
    bsServiceDispatchQueue = v2->_bsServiceDispatchQueue;
    v2->_bsServiceDispatchQueue = v11;

    queue = [(BSServiceDispatchQueue *)v2->_bsServiceDispatchQueue queue];
    touchClientQueue = v2->_touchClientQueue;
    v2->_touchClientQueue = queue;

    [(BKSTouchDeliveryObservationService *)v2 _connectToTouchDeliveryService];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_10006 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_10006, &__block_literal_global_10007);
  }

  v3 = sharedInstance___shared;

  return v3;
}

uint64_t __52__BKSTouchDeliveryObservationService_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(BKSTouchDeliveryObservationService);
  v1 = sharedInstance___shared;
  sharedInstance___shared = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end