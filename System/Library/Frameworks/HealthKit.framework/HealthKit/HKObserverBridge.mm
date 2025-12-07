@interface HKObserverBridge
- (BOOL)notifyObserversOfChangeForKey:(id)key newValue:(id)value;
- (HKObserverBridge)init;
- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle;
- (void)dealloc;
- (void)registerObserver:(id)observer forKey:(id)key newValueHandler:(id)handler;
- (void)unregisterBridgedObserver:(id)observer forKey:(id)key;
- (void)unregisterObserver:(id)observer forKey:(id)key;
@end

@implementation HKObserverBridge

- (HKObserverBridge)init
{
  v8.receiver = self;
  v8.super_class = HKObserverBridge;
  v2 = [(HKObserverBridge *)&v8 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    observerBlocksByKeyByObserver = v2->_observerBlocksByKeyByObserver;
    v2->_observerBlocksByKeyByObserver = weakToStrongObjectsMapTable;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    observersByKey = v2->_observersByKey;
    v2->_observersByKey = dictionary;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_observersByKey;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_observersByKey objectForKeyedSubscript:v8];
        bridgedObserver = [v9 bridgedObserver];
        [(HKObserverBridge *)self unregisterBridgedObserver:bridgedObserver forKey:v8];
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11.receiver = self;
  v11.super_class = HKObserverBridge;
  [(HKObserverBridge *)&v11 dealloc];
}

- (void)registerObserver:(id)observer forKey:(id)key newValueHandler:(id)handler
{
  v51 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  keyCopy = key;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v11 = [(NSMutableDictionary *)self->_observersByKey objectForKeyedSubscript:keyCopy];

  if (!v11)
  {
    _HKInitializeLogging(v12, v13);
    v16 = HKLogInfrastructure(v14, v15);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);

    if (v17)
    {
      v20 = HKLogInfrastructure(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v48 = objc_opt_class();
        v49 = 2114;
        v50 = keyCopy;
        v21 = v48;
        _os_log_impl(&dword_19197B000, v20, OS_LOG_TYPE_INFO, "[%{public}@] Beginning observation for key %{public}@", buf, 0x16u);
      }
    }

    v22 = [[HKObserverBridgeHandle alloc] initWithBridge:self];
    v23 = objc_alloc_init(_HKBridgedObserverSet);
    v24 = [(HKObserverBridge *)self makeAndRegisterBridgedObserverForKey:keyCopy handle:v22];
    [(_HKBridgedObserverSet *)v23 setBridgedObserver:v24];

    keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", objc_opt_class(), keyCopy];
    v26 = [HKObserverSet alloc];
    v28 = HKLogInfrastructure(v26, v27);
    v29 = [(HKObserverSet *)v26 initWithName:keyCopy loggingCategory:v28];
    [(_HKBridgedObserverSet *)v23 setObservers:v29];

    [(NSMutableDictionary *)self->_observersByKey setObject:v23 forKeyedSubscript:keyCopy];
  }

  v30 = objc_alloc_init(_HKObservationBlock);
  objc_initWeak(buf, observerCopy);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __60__HKObserverBridge_registerObserver_forKey_newValueHandler___block_invoke;
  v44[3] = &unk_1E737F880;
  objc_copyWeak(&v46, buf);
  v31 = handlerCopy;
  v45 = v31;
  [(_HKObservationBlock *)v30 setNewValueHandler:v44];
  v32 = [(NSMutableDictionary *)self->_observersByKey objectForKeyedSubscript:keyCopy];
  observers = [v32 observers];
  [observers registerObserver:v30];

  v34 = [(NSMapTable *)self->_observerBlocksByKeyByObserver objectForKey:observerCopy];
  LODWORD(v32) = v34 == 0;

  if (v32)
  {
    observerBlocksByKeyByObserver = self->_observerBlocksByKeyByObserver;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(NSMapTable *)observerBlocksByKeyByObserver setObject:dictionary forKey:observerCopy];
  }

  v37 = [(NSMapTable *)self->_observerBlocksByKeyByObserver objectForKey:observerCopy];
  v38 = [v37 objectForKeyedSubscript:keyCopy];
  v39 = v38 == 0;

  if (v39)
  {
    array = [MEMORY[0x1E695DF70] array];
    v41 = [(NSMapTable *)self->_observerBlocksByKeyByObserver objectForKey:observerCopy];
    [v41 setObject:array forKeyedSubscript:keyCopy];
  }

  v42 = [(NSMapTable *)self->_observerBlocksByKeyByObserver objectForKey:observerCopy];
  v43 = [v42 objectForKeyedSubscript:keyCopy];
  [v43 addObject:v30];

  os_unfair_lock_unlock(&self->_lock);
  objc_destroyWeak(&v46);
  objc_destroyWeak(buf);
}

void __60__HKObserverBridge_registerObserver_forKey_newValueHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)unregisterObserver:(id)observer forKey:(id)key
{
  v31 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMapTable *)self->_observerBlocksByKeyByObserver objectForKey:observerCopy];
  v9 = [v8 objectForKeyedSubscript:keyCopy];

  v10 = [(NSMutableDictionary *)self->_observersByKey objectForKeyedSubscript:keyCopy];
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v21 = observerCopy;
    v13 = [(NSMapTable *)self->_observerBlocksByKeyByObserver objectForKey:observerCopy];
    [v13 removeObjectForKey:keyCopy];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v20 = v9;
    obj = v9;
    v14 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        v17 = 0;
        do
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v26 + 1) + 8 * v17);
          observers = [v11 observers];
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __46__HKObserverBridge_unregisterObserver_forKey___block_invoke;
          v23[3] = &unk_1E7376640;
          v23[4] = self;
          v24 = keyCopy;
          v25 = v11;
          [observers unregisterObserver:v18 runIfLastObserver:v23];

          ++v17;
        }

        while (v15 != v17);
        v15 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }

    v9 = v20;
    observerCopy = v21;
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __46__HKObserverBridge_unregisterObserver_forKey___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging(a1, a2);
  v5 = HKLogInfrastructure(v3, v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v9 = HKLogInfrastructure(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      *v15 = 138543618;
      *&v15[4] = v10;
      *&v15[12] = 2114;
      *&v15[14] = v11;
      v12 = v10;
      _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_INFO, "[%{public}@] Ending observation for key %{public}@", v15, 0x16u);
    }
  }

  [*(*(a1 + 32) + 16) removeObjectForKey:{*(a1 + 40), *v15, *&v15[8], v16}];
  v13 = *(a1 + 32);
  v14 = [*(a1 + 48) bridgedObserver];
  [v13 unregisterBridgedObserver:v14 forKey:*(a1 + 40)];
}

- (BOOL)notifyObserversOfChangeForKey:(id)key newValue:(id)value
{
  v42 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueCopy = value;
  _HKInitializeLogging(valueCopy, v8);
  v11 = HKLogInfrastructure(v9, v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);

  if (v12)
  {
    v15 = HKLogInfrastructure(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v37 = objc_opt_class();
      v38 = 2114;
      v39 = keyCopy;
      v16 = v37;
      _os_log_impl(&dword_19197B000, v15, OS_LOG_TYPE_INFO, "[%{public}@] Observed change to %{public}@", buf, 0x16u);
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v17 = [(NSMutableDictionary *)self->_observersByKey objectForKeyedSubscript:keyCopy];
  observers = [v17 observers];

  os_unfair_lock_unlock(&self->_lock);
  _HKInitializeLogging(v19, v20);
  v23 = HKLogInfrastructure(v21, v22);
  v24 = v23;
  if (observers)
  {
    v25 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);

    if (v25)
    {
      v28 = HKLogInfrastructure(v26, v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = objc_opt_class();
        v30 = MEMORY[0x1E696AD98];
        v31 = v29;
        v32 = [v30 numberWithUnsignedInteger:{objc_msgSend(observers, "count")}];
        *buf = 138543874;
        v37 = v29;
        v38 = 2114;
        v39 = v32;
        v40 = 2114;
        v41 = keyCopy;
        _os_log_impl(&dword_19197B000, v28, OS_LOG_TYPE_INFO, "[%{public}@] Notifying %{public}@ observers of key %{public}@", buf, 0x20u);
      }
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __59__HKObserverBridge_notifyObserversOfChangeForKey_newValue___block_invoke;
    v34[3] = &unk_1E737F8A8;
    v35 = valueCopy;
    [observers notifyObservers:v34];
    v24 = v35;
  }

  else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [(HKObserverBridge *)self notifyObserversOfChangeForKey:keyCopy newValue:v24];
  }

  return observers != 0;
}

void __59__HKObserverBridge_notifyObserversOfChangeForKey_newValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 newValueHandler];
  v3[2](v3, *(a1 + 32));
}

- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)unregisterBridgedObserver:(id)observer forKey:(id)key
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)notifyObserversOfChangeForKey:(NSObject *)a3 newValue:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2114;
  v9 = a2;
  v5 = v7;
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Found no observer set for key %{public}@", &v6, 0x16u);
}

@end