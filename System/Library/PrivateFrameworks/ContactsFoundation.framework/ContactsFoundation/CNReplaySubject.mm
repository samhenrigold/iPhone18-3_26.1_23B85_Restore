@interface CNReplaySubject
- (CNReplaySubject)init;
- (CNReplaySubject)initWithCapacity:(unint64_t)capacity schedulerProvider:(id)provider;
- (CNReplaySubject)initWithQueue:(id)queue schedulerProvider:(id)provider;
- (CNReplaySubject)initWithSchedulerProvider:(id)provider;
- (id)resourceLock_removeAllObservers;
- (id)resourceLock_upToDateObserverFromObserver:(id)observer;
- (id)resultWithResourceLock:(id)lock;
- (id)subscribe:(id)subscribe;
- (void)_removeObserver:(id)observer;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)error;
- (void)observerDidReceiveResult:(id)result;
- (void)performWithResourceLock:(id)lock;
- (void)resourceLock_scheduleReplayToObserver:(id)observer;
- (void)resourceLock_swapBufferingStrategiesGivenNewTerminatingEvent:(id)event;
@end

@implementation CNReplaySubject

- (CNReplaySubject)init
{
  v3 = +[CNSchedulerProvider defaultProvider];
  v4 = [(CNReplaySubject *)self initWithSchedulerProvider:v3];

  return v4;
}

- (CNReplaySubject)initWithSchedulerProvider:(id)provider
{
  providerCopy = provider;
  v5 = objc_alloc_init(CNQueue);
  v6 = [(CNReplaySubject *)self initWithQueue:v5 schedulerProvider:providerCopy];

  return v6;
}

- (CNReplaySubject)initWithCapacity:(unint64_t)capacity schedulerProvider:(id)provider
{
  providerCopy = provider;
  v7 = [CNQueue boundedQueueWithCapacity:capacity];
  v8 = [(CNReplaySubject *)self initWithQueue:v7 schedulerProvider:providerCopy];

  return v8;
}

- (CNReplaySubject)initWithQueue:(id)queue schedulerProvider:(id)provider
{
  queueCopy = queue;
  providerCopy = provider;
  v19.receiver = self;
  v19.super_class = CNReplaySubject;
  v8 = [(CNReplaySubject *)&v19 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    observers = v8->_observers;
    v8->_observers = v9;

    v11 = [_CNObservableEventBufferingStrategy strategyWithQueue:queueCopy];
    recentEventStrategy = v8->_recentEventStrategy;
    v8->_recentEventStrategy = v11;

    objc_storeStrong(&v8->_schedulerProvider, provider);
    v13 = objc_alloc_init(CNUnfairLock);
    resourceLock = v8->_resourceLock;
    v8->_resourceLock = v13;

    v15 = objc_alloc_init(CNObservableContractEnforcement);
    enforcement = v8->_enforcement;
    v8->_enforcement = v15;

    v17 = v8;
  }

  return v8;
}

- (id)resultWithResourceLock:(id)lock
{
  lockCopy = lock;
  resourceLock = [(CNReplaySubject *)self resourceLock];
  v6 = CNResultWithLock(resourceLock, lockCopy);

  return v6;
}

- (void)performWithResourceLock:(id)lock
{
  lockCopy = lock;
  resourceLock = [(CNReplaySubject *)self resourceLock];
  CNRunWithLock(resourceLock, lockCopy);
}

- (id)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__CNReplaySubject_subscribe___block_invoke;
  v8[3] = &unk_1E6ED5190;
  v8[4] = self;
  v9 = subscribeCopy;
  v5 = subscribeCopy;
  v6 = [(CNReplaySubject *)self resultWithResourceLock:v8];

  return v6;
}

CNCancelationToken *__29__CNReplaySubject_subscribe___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resourceLock_upToDateObserverFromObserver:*(a1 + 40)];
  v3 = [*(a1 + 32) recentEventStrategy];
  v4 = [v3 isSequenceTerminated];

  if (v4)
  {
    v5 = objc_alloc_init(CNCancelationToken);
  }

  else
  {
    v6 = [*(a1 + 32) observers];
    [v6 addObject:v2];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __29__CNReplaySubject_subscribe___block_invoke_2;
    v8[3] = &unk_1E6ED5168;
    v8[4] = *(a1 + 32);
    v9 = v2;
    v5 = [CNCancelationToken tokenWithCancelationBlock:v8];
  }

  return v5;
}

- (id)resourceLock_upToDateObserverFromObserver:(id)observer
{
  observerCopy = observer;
  schedulerProvider = [(CNReplaySubject *)self schedulerProvider];
  v6 = [_CNBufferedObserver bufferObserver:observerCopy schedulerProvider:schedulerProvider];

  [(CNReplaySubject *)self resourceLock_scheduleReplayToObserver:v6];
  [v6 resume];

  return v6;
}

- (void)resourceLock_scheduleReplayToObserver:(id)observer
{
  v16 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  recentEventStrategy = [(CNReplaySubject *)self recentEventStrategy];
  allEvents = [recentEventStrategy allEvents];

  v7 = [allEvents countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(allEvents);
        }

        [*(*(&v11 + 1) + 8 * v10++) dematerializeWithObserver:observerCopy];
      }

      while (v8 != v10);
      v8 = [allEvents countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_removeObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__CNReplaySubject__removeObserver___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = observerCopy;
  v5 = observerCopy;
  [(CNReplaySubject *)self performWithResourceLock:v6];
}

void __35__CNReplaySubject__removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

- (id)resourceLock_removeAllObservers
{
  observers = [(CNReplaySubject *)self observers];
  v4 = [observers copy];

  observers2 = [(CNReplaySubject *)self observers];
  [observers2 removeAllObjects];

  return v4;
}

- (void)observerDidReceiveResult:(id)result
{
  v22 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v5 = +[CNObservableContractEnforcement shouldSwizzleNilResults];
  if (!resultCopy && v5)
  {
    v6 = +[CNObservable os_log_protocol];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CNBehaviorSubject observerDidReceiveResult:v6];
    }

    v7 = +[CNObservable os_log_protocol];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CNBehaviorSubject observerDidReceiveResult:v7];
    }

    resultCopy = [MEMORY[0x1E695DFB0] null];
  }

  enforcement = [(CNReplaySubject *)self enforcement];
  [enforcement observerDidReceiveResult:resultCopy];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __44__CNReplaySubject_observerDidReceiveResult___block_invoke;
  v19[3] = &unk_1E6ED5190;
  v19[4] = self;
  v9 = resultCopy;
  v20 = v9;
  v10 = [(CNReplaySubject *)self resultWithResourceLock:v19];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) observerDidReceiveResult:v9];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v12);
  }
}

id __44__CNReplaySubject_observerDidReceiveResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recentEventStrategy];
  v3 = [CNObservableEvent eventWithResult:*(a1 + 40)];
  [v2 addEvent:v3];

  v4 = [*(a1 + 32) observers];
  v5 = [v4 copy];

  return v5;
}

- (void)observerDidComplete
{
  v15 = *MEMORY[0x1E69E9840];
  enforcement = [(CNReplaySubject *)self enforcement];
  [enforcement observerDidComplete];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __38__CNReplaySubject_observerDidComplete__block_invoke;
  v13[3] = &unk_1E6ED51B8;
  v13[4] = self;
  v4 = [(CNReplaySubject *)self resultWithResourceLock:v13];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) observerDidComplete];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

id __38__CNReplaySubject_observerDidComplete__block_invoke(uint64_t a1)
{
  v2 = +[CNObservableEvent completionEvent];
  v3 = [*(a1 + 32) resourceLock_removeAllObservers];
  [*(a1 + 32) resourceLock_swapBufferingStrategiesGivenNewTerminatingEvent:v2];

  return v3;
}

- (void)observerDidFailWithError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  enforcement = [(CNReplaySubject *)self enforcement];
  [enforcement observerDidFailWithError:errorCopy];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__CNReplaySubject_observerDidFailWithError___block_invoke;
  v16[3] = &unk_1E6ED5190;
  v6 = errorCopy;
  v17 = v6;
  selfCopy = self;
  v7 = [(CNReplaySubject *)self resultWithResourceLock:v16];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) observerDidFailWithError:v6];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v19 count:16];
    }

    while (v9);
  }
}

id __44__CNReplaySubject_observerDidFailWithError___block_invoke(uint64_t a1)
{
  v2 = [CNObservableEvent failureEventWithError:*(a1 + 32)];
  v3 = [*(a1 + 40) resourceLock_removeAllObservers];
  [*(a1 + 40) resourceLock_swapBufferingStrategiesGivenNewTerminatingEvent:v2];

  return v3;
}

- (void)resourceLock_swapBufferingStrategiesGivenNewTerminatingEvent:(id)event
{
  eventCopy = event;
  recentEventStrategy = [(CNReplaySubject *)self recentEventStrategy];
  allEvents = [recentEventStrategy allEvents];

  v8 = [allEvents arrayByAddingObject:eventCopy];

  v7 = [_CNObservableEventBufferingStrategy strategyWithEvents:v8];
  [(CNReplaySubject *)self setRecentEventStrategy:v7];
}

@end