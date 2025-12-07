@interface CNPublishingSubject
- (CNPublishingSubject)initWithObservable:(id)observable;
- (id)_allObservers;
- (id)subscribe:(id)subscribe;
- (void)_addObserver:(id)observer;
- (void)_removeObserver:(id)observer;
- (void)_subscribeToObservableIfNecessary;
- (void)cleanUpAfterTermination;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)error;
- (void)observerDidReceiveResult:(id)result;
@end

@implementation CNPublishingSubject

- (CNPublishingSubject)initWithObservable:(id)observable
{
  observableCopy = observable;
  v14.receiver = self;
  v14.super_class = CNPublishingSubject;
  v6 = [(CNPublishingSubject *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observable, observable);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    observers = v7->_observers;
    v7->_observers = v8;

    v10 = objc_alloc_init(CNObservableContractEnforcement);
    enforcement = v7->_enforcement;
    v7->_enforcement = v10;

    v12 = v7;
  }

  return v7;
}

- (id)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  [(CNPublishingSubject *)self _addObserver:subscribeCopy];
  [(CNPublishingSubject *)self _subscribeToObservableIfNecessary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__CNPublishingSubject_subscribe___block_invoke;
  v8[3] = &unk_1E6ED5168;
  v8[4] = self;
  v9 = subscribeCopy;
  v5 = subscribeCopy;
  v6 = [CNCancelationToken tokenWithCancelationBlock:v8];

  return v6;
}

- (void)_addObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_observers addObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)_removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_observers removeObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (id)_allObservers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [MEMORY[0x1E695DEC8] arrayWithArray:selfCopy->_observers];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_subscribeToObservableIfNecessary
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  upstreamToken = selfCopy->_upstreamToken;
  objc_sync_exit(selfCopy);

  if (!upstreamToken)
  {
    v4 = [(CNObservable *)selfCopy->_observable subscribe:selfCopy];
    v5 = selfCopy->_upstreamToken;
    selfCopy->_upstreamToken = v4;

    MEMORY[0x1EEE66BB8](v4, v5);
  }
}

- (void)observerDidReceiveResult:(id)result
{
  v19 = *MEMORY[0x1E69E9840];
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

  enforcement = [(CNPublishingSubject *)self enforcement];
  [enforcement observerDidReceiveResult:resultCopy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  _allObservers = [(CNPublishingSubject *)self _allObservers];
  v10 = [_allObservers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(_allObservers);
        }

        [*(*(&v14 + 1) + 8 * v13++) observerDidReceiveResult:resultCopy];
      }

      while (v11 != v13);
      v11 = [_allObservers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)observerDidComplete
{
  v14 = *MEMORY[0x1E69E9840];
  enforcement = [(CNPublishingSubject *)self enforcement];
  [enforcement observerDidComplete];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  _allObservers = [(CNPublishingSubject *)self _allObservers];
  v5 = [_allObservers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(_allObservers);
        }

        [*(*(&v9 + 1) + 8 * v8++) observerDidComplete];
      }

      while (v6 != v8);
      v6 = [_allObservers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(CNPublishingSubject *)self cleanUpAfterTermination];
}

- (void)observerDidFailWithError:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  enforcement = [(CNPublishingSubject *)self enforcement];
  [enforcement observerDidFailWithError:errorCopy];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  _allObservers = [(CNPublishingSubject *)self _allObservers];
  v7 = [_allObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(_allObservers);
        }

        [*(*(&v11 + 1) + 8 * v10++) observerDidFailWithError:errorCopy];
      }

      while (v8 != v10);
      v8 = [_allObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(CNPublishingSubject *)self cleanUpAfterTermination];
}

- (void)cleanUpAfterTermination
{
  [(CNCancelable *)self->_upstreamToken cancel];
  upstreamToken = self->_upstreamToken;
  self->_upstreamToken = 0;
}

@end