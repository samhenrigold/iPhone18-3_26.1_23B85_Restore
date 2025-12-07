@interface HKActiveDataCollectionObserver
+ (id)clientInterface;
+ (id)serverInterface;
- (HKActiveDataCollectionObserver)initWithHealthStore:(id)store;
- (HKActiveDataCollectionObserverDelegate)delegate;
- (NSArray)activelyCollectedTypes;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)_restartTaskServerIfNeeded;
- (void)client_didChangeAllowCollectionPause:(BOOL)pause;
- (void)client_updatedCollectedTypes:(id)types;
- (void)setDelegate:(id)delegate;
- (void)subscribeForQuantityTypes:(id)types;
- (void)unsubscribeForQuantityTypes:(id)types;
@end

@implementation HKActiveDataCollectionObserver

- (HKActiveDataCollectionObserver)initWithHealthStore:(id)store
{
  storeCopy = store;
  v15.receiver = self;
  v15.super_class = HKActiveDataCollectionObserver;
  v5 = [(HKActiveDataCollectionObserver *)&v15 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v6->_identifier;
    v6->_identifier = uUID;

    v9 = [[HKTaskServerProxyProvider alloc] initWithHealthStore:storeCopy taskIdentifier:@"HKActiveDataCollectionObserverTaskServerIdentifier" exportedObject:v6 taskUUID:v6->_identifier];
    proxyProvider = v6->_proxyProvider;
    v6->_proxyProvider = v9;

    objc_initWeak(&location, v6);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__HKActiveDataCollectionObserver_initWithHealthStore___block_invoke;
    v12[3] = &unk_1E737A688;
    objc_copyWeak(&v13, &location);
    [(HKProxyProvider *)v6->_proxyProvider setAutomaticProxyReconnectionHandler:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __54__HKActiveDataCollectionObserver_initWithHealthStore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HKActiveDataCollectionObserver *)WeakRetained _restartTaskServerIfNeeded];
}

- (NSArray)activelyCollectedTypes
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSArray *)self->_activelyCollectedTypes copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)subscribeForQuantityTypes:(id)types
{
  v17 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  _HKInitializeLogging(typesCopy, v5);
  v6 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v15 = 2112;
    v16 = typesCopy;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Subscribing to active collection of types %@", buf, 0x16u);
  }

  proxyProvider = self->_proxyProvider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__HKActiveDataCollectionObserver_subscribeForQuantityTypes___block_invoke;
  v10[3] = &unk_1E737A6B0;
  v11 = typesCopy;
  selfCopy2 = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__HKActiveDataCollectionObserver_subscribeForQuantityTypes___block_invoke_2;
  v9[3] = &unk_1E7376898;
  v9[4] = self;
  v8 = typesCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v10 errorHandler:v9];
}

void __60__HKActiveDataCollectionObserver_subscribeForQuantityTypes___block_invoke(uint64_t a1, void *a2)
{
  [a2 remote_subscribeForQuantityTypes:*(a1 + 32)];
  os_unfair_lock_lock((*(a1 + 40) + 24));
  v3 = *(*(a1 + 40) + 32);
  if (v3)
  {
    [v3 addObjectsFromArray:*(a1 + 32)];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFA8] setWithArray:*(a1 + 32)];
    v5 = *(a1 + 40);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;
  }

  v7 = (*(a1 + 40) + 24);

  os_unfair_lock_unlock(v7);
}

void __60__HKActiveDataCollectionObserver_subscribeForQuantityTypes___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging(v2, v3);
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __60__HKActiveDataCollectionObserver_subscribeForQuantityTypes___block_invoke_2_cold_1();
  }
}

- (void)unsubscribeForQuantityTypes:(id)types
{
  v17 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  _HKInitializeLogging(typesCopy, v5);
  v6 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v15 = 2112;
    v16 = typesCopy;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Unsubscribing to active collection of types %@", buf, 0x16u);
  }

  proxyProvider = self->_proxyProvider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__HKActiveDataCollectionObserver_unsubscribeForQuantityTypes___block_invoke;
  v10[3] = &unk_1E737A6B0;
  v11 = typesCopy;
  selfCopy2 = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__HKActiveDataCollectionObserver_unsubscribeForQuantityTypes___block_invoke_2;
  v9[3] = &unk_1E7376898;
  v9[4] = self;
  v8 = typesCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v10 errorHandler:v9];
}

void __62__HKActiveDataCollectionObserver_unsubscribeForQuantityTypes___block_invoke(uint64_t a1, void *a2)
{
  [a2 remote_unsubscribeForQuantityTypes:*(a1 + 32)];
  os_unfair_lock_lock((*(a1 + 40) + 24));
  v3 = *(*(a1 + 40) + 32);
  v4 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 32)];
  [v3 minusSet:v4];

  v5 = (*(a1 + 40) + 24);

  os_unfair_lock_unlock(v5);
}

void __62__HKActiveDataCollectionObserver_unsubscribeForQuantityTypes___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging(v2, v3);
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __60__HKActiveDataCollectionObserver_subscribeForQuantityTypes___block_invoke_2_cold_1();
  }
}

+ (id)clientInterface
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F6F38];
  v3 = MEMORY[0x1E695DFD8];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [v3 setWithArray:v4];

  [v2 setClasses:v5 forSelector:sel_client_updatedCollectedTypes_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)serverInterface
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F6F98];
  v3 = MEMORY[0x1E695DFD8];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [v3 setWithArray:v4];

  [v2 setClasses:v5 forSelector:sel_remote_subscribeForQuantityTypes_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v5 forSelector:sel_remote_unsubscribeForQuantityTypes_ argumentIndex:0 ofReply:0];

  return v2;
}

- (id)exportedInterface
{
  v2 = objc_opt_class();

  return [v2 clientInterface];
}

- (id)remoteInterface
{
  v2 = objc_opt_class();

  return [v2 serverInterface];
}

- (void)client_updatedCollectedTypes:(id)types
{
  v16 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  _HKInitializeLogging(typesCopy, v5);
  v6 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    selfCopy = self;
    v14 = 2112;
    v15 = typesCopy;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Updated actively collected types: %@", &v12, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  v7 = [typesCopy copy];
  activelyCollectedTypes = self->_activelyCollectedTypes;
  self->_activelyCollectedTypes = v7;

  objc_copyWeak(&v12, &self->_delegate);
  os_unfair_lock_unlock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&v12);
  v10 = WeakRetained == 0;

  if (!v10)
  {
    v11 = objc_loadWeakRetained(&v12);
    [v11 activeDataCollectionObserver:self updatedCollectedTypes:typesCopy];
  }

  objc_destroyWeak(&v12);
}

- (void)client_didChangeAllowCollectionPause:(BOOL)pause
{
  pauseCopy = pause;
  v15 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging(self, a2);
  v5 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (pauseCopy)
    {
      v6 = @"YES";
    }

    v11 = 138543618;
    selfCopy = self;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Did change allow collection pause %@", &v11, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  self->_allowCollectionPause = pauseCopy;
  objc_copyWeak(&v11, &self->_delegate);
  os_unfair_lock_unlock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&v11);
  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&v11);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&v11);
      [v10 activeDataCollectionObserver:self didChangeAllowCollectionPause:pauseCopy];
    }
  }

  objc_destroyWeak(&v11);
}

- (HKActiveDataCollectionObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_restartTaskServerIfNeeded
{
  if (self)
  {
    os_unfair_lock_lock((self + 24));
    allObjects = [*(self + 32) allObjects];
    os_unfair_lock_unlock((self + 24));
    if ([allObjects count])
    {
      [self subscribeForQuantityTypes:allObjects];
    }
  }
}

@end