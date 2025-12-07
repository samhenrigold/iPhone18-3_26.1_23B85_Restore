@interface _HKWheelchairUseCharacteristicCache
- (BOOL)_lock_isWheelchairUser;
- (BOOL)hasFetchedWheelchairUse;
- (BOOL)isWheelchairUser;
- (_HKWheelchairUseCharacteristicCache)initWithHealthStore:(id)store;
- (void)_alertObservers:(id)observers didUpdateToWheelchairUser:(BOOL)user;
- (void)_handleCharacteristicsDidChangeNotification;
- (void)_handleFetchError:(id)error;
- (void)_handleFetchSuccess:(id)success;
- (void)_lock_fetchWheelchairUse;
- (void)_lock_fetchWheelchairUseIfNecessary;
- (void)dealloc;
- (void)registerObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation _HKWheelchairUseCharacteristicCache

- (_HKWheelchairUseCharacteristicCache)initWithHealthStore:(id)store
{
  storeCopy = store;
  v18.receiver = self;
  v18.super_class = _HKWheelchairUseCharacteristicCache;
  v6 = [(_HKWheelchairUseCharacteristicCache *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v7->_state = 0;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = weakObjectsHashTable;

    v10 = HKCreateSerialDispatchQueue(0, @"fetchingQueue");
    queue = v7->_queue;
    v7->_queue = v10;

    v7->_lock._os_unfair_lock_opaque = 0;
    os_unfair_lock_lock(&v7->_lock);
    [(_HKWheelchairUseCharacteristicCache *)v7 _lock_fetchWheelchairUse];
    os_unfair_lock_unlock(&v7->_lock);
    objc_initWeak(&location, v7);
    v12 = MEMORY[0x1E69E96A0];
    v13 = MEMORY[0x1E69E96A0];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59___HKWheelchairUseCharacteristicCache_initWithHealthStore___block_invoke;
    v15[3] = &unk_1E7379AA8;
    objc_copyWeak(&v16, &location);
    notify_register_dispatch("com.apple.healthd.user-characteristics.did-change", &v7->_characteristicUpdateToken, v12, v15);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)dealloc
{
  notify_cancel(self->_characteristicUpdateToken);
  v3.receiver = self;
  v3.super_class = _HKWheelchairUseCharacteristicCache;
  [(_HKWheelchairUseCharacteristicCache *)&v3 dealloc];
}

- (void)_handleCharacteristicsDidChangeNotification
{
  os_unfair_lock_lock(&self->_lock);
  [(_HKWheelchairUseCharacteristicCache *)self _lock_fetchWheelchairUse];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_alertObservers:(id)observers didUpdateToWheelchairUser:(BOOL)user
{
  userCopy = user;
  v16 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [observersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(observersCopy);
        }

        [*(*(&v11 + 1) + 8 * v10++) wheelchairUseCharacteristicCache:self wheelchairUsageDidChange:userCopy];
      }

      while (v8 != v10);
      v8 = [observersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (BOOL)isWheelchairUser
{
  os_unfair_lock_lock(&self->_lock);
  _lock_isWheelchairUser = [(_HKWheelchairUseCharacteristicCache *)self _lock_isWheelchairUser];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_isWheelchairUser;
}

- (BOOL)_lock_isWheelchairUser
{
  os_unfair_lock_assert_owner(&self->_lock);
  [(_HKWheelchairUseCharacteristicCache *)self _lock_fetchWheelchairUseIfNecessary];
  return [(HKWheelchairUseObject *)self->_wheelchairUseObject wheelchairUse]== HKWheelchairUseYes;
}

- (BOOL)hasFetchedWheelchairUse
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_wheelchairUseObject != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)_lock_fetchWheelchairUseIfNecessary
{
  os_unfair_lock_assert_owner(&self->_lock);
  if ([(_HKWheelchairUseCharacteristicCache *)self _lock_needsFetch])
  {

    [(_HKWheelchairUseCharacteristicCache *)self _lock_fetchWheelchairUse];
  }
}

- (void)_lock_fetchWheelchairUse
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_state = 1;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63___HKWheelchairUseCharacteristicCache__lock_fetchWheelchairUse__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_handleFetchError:(id)error
{
  errorCopy = error;
  v6 = HKIsUnitTesting(errorCopy, v5);
  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging(v6, v7);
    v8 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      [(_HKWheelchairUseCharacteristicCache *)errorCopy _handleFetchError:v8];
    }
  }

  hk_isDatabaseAccessibilityError = [errorCopy hk_isDatabaseAccessibilityError];
  os_unfair_lock_lock(&self->_lock);
  if (hk_isDatabaseAccessibilityError)
  {
    self->_state = 0;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    queryRetries = self->_queryRetries;
    self->_queryRetries = queryRetries + 1;
    os_unfair_lock_unlock(&self->_lock);
    if (queryRetries >= 5)
    {
      queryRetries = 5;
    }

    objc_initWeak(&location, self);
    v11 = dispatch_time(0, 1000000000 * queryRetries);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57___HKWheelchairUseCharacteristicCache__handleFetchError___block_invoke;
    v12[3] = &unk_1E73782E8;
    objc_copyWeak(&v13, &location);
    dispatch_after(v11, MEMORY[0x1E69E96A0], v12);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)_handleFetchSuccess:(id)success
{
  v24 = *MEMORY[0x1E69E9840];
  successCopy = success;
  os_unfair_lock_lock(&self->_lock);
  wheelchairUseObject = self->_wheelchairUseObject;
  self->_state = 2;
  self->_queryRetries = 0;
  wheelchairUse = [(HKWheelchairUseObject *)wheelchairUseObject wheelchairUse];
  wheelchairUse2 = [successCopy wheelchairUse];
  if (wheelchairUse == wheelchairUse2)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    _HKInitializeLogging(wheelchairUse2, v9);
    v10 = HKLogDefault;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      wheelchairUse3 = [(HKWheelchairUseObject *)self->_wheelchairUseObject wheelchairUse];
      if (wheelchairUse3 > HKWheelchairUseYes)
      {
        v12 = 0;
      }

      else
      {
        v12 = off_1E7383BF8[wheelchairUse3];
      }

      wheelchairUse4 = [successCopy wheelchairUse];
      if (wheelchairUse4 > 2)
      {
        v14 = 0;
      }

      else
      {
        v14 = off_1E7383BF8[wheelchairUse4];
      }

      v18 = 138412802;
      selfCopy = self;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "%@: Wheelchair Use changed from %@ to %@, notifying observers.", &v18, 0x20u);
    }

    objc_storeStrong(&self->_wheelchairUseObject, success);
    _lock_isWheelchairUser = [(_HKWheelchairUseCharacteristicCache *)self _lock_isWheelchairUser];
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v17 = [allObjects copy];

    os_unfair_lock_unlock(&self->_lock);
    [(_HKWheelchairUseCharacteristicCache *)self _alertObservers:v17 didUpdateToWheelchairUser:_lock_isWheelchairUser];
  }
}

- (void)_handleFetchError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Error loading wheelchair use characteristic: %@", &v2, 0xCu);
}

@end