@interface LACManagedConfiguration
+ (LACManagedConfiguration)sharedInstance;
- (LACManagedConfiguration)init;
- (int64_t)passcodeType;
- (void)_startObservingConnection;
- (void)_stopObservingConnection;
- (void)_synchronizedObservers:(id)observers;
- (void)addObserver:(id)observer;
- (void)profileConnectionDidReceivePasscodeChangedNotification:(id)notification userInfo:(id)info;
- (void)removeObserver:(id)observer;
@end

@implementation LACManagedConfiguration

+ (LACManagedConfiguration)sharedInstance
{
  if (sharedInstance_onceToken_19 != -1)
  {
    +[LACManagedConfiguration sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_17;

  return v3;
}

- (LACManagedConfiguration)init
{
  v8.receiver = self;
  v8.super_class = LACManagedConfiguration;
  v2 = [(LACManagedConfiguration *)&v8 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v2->_observersLock._os_unfair_lock_opaque = 0;
    MCProfileConnectionClass = getMCProfileConnectionClass();
    if (MCProfileConnectionClass)
    {
      MCProfileConnectionClass = [getMCProfileConnectionClass() sharedConnection];
    }

    connection = v2->_connection;
    v2->_connection = MCProfileConnectionClass;
  }

  return v2;
}

uint64_t __41__LACManagedConfiguration_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(LACManagedConfiguration);
  v1 = sharedInstance_sharedInstance_17;
  sharedInstance_sharedInstance_17 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (int64_t)passcodeType
{
  v4 = -1;
  result = self->_connection;
  if (result)
  {
    v3 = [result unlockScreenTypeWithOutSimplePasscodeType:&v4];
    if (v3 == 2)
    {
      return 4;
    }

    if (v3 == 1)
    {
      return 3;
    }

    if (v3)
    {
      return 4;
    }

    if ((v4 + 1) < 3)
    {
      return (v4 + 1);
    }

    else
    {
      return 4;
    }
  }

  return result;
}

- (void)addObserver:(id)observer
{
  v15 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__LACManagedConfiguration_addObserver___block_invoke;
  v7[3] = &unk_1E7A97720;
  v5 = observerCopy;
  v8 = v5;
  objc_copyWeak(&v9, &location);
  v6 = LACLogPasscode([(LACManagedConfiguration *)self _synchronizedObservers:v7]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%@ did register observer %@", buf, 0x16u);
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __39__LACManagedConfiguration_addObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 count];
  [v3 addObject:*(a1 + 32)];

  if (!v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _startObservingConnection];
  }
}

- (void)removeObserver:(id)observer
{
  v15 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__LACManagedConfiguration_removeObserver___block_invoke;
  v7[3] = &unk_1E7A97720;
  v5 = observerCopy;
  v8 = v5;
  objc_copyWeak(&v9, &location);
  v6 = LACLogPasscode([(LACManagedConfiguration *)self _synchronizedObservers:v7]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%@ did remove observer %@", buf, 0x16u);
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __42__LACManagedConfiguration_removeObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 removeObject:v3];
  v5 = [v4 count];

  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _stopObservingConnection];
  }
}

- (void)profileConnectionDidReceivePasscodeChangedNotification:(id)notification userInfo:(id)info
{
  v15 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  infoCopy = info;
  v8 = LACLogPasscode(infoCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "%@ did receive passcode changed notification", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91__LACManagedConfiguration_profileConnectionDidReceivePasscodeChangedNotification_userInfo___block_invoke;
  v10[3] = &unk_1E7A97748;
  objc_copyWeak(&v12, buf);
  v9 = infoCopy;
  v11 = v9;
  [(LACManagedConfiguration *)self _synchronizedObservers:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __91__LACManagedConfiguration_profileConnectionDidReceivePasscodeChangedNotification_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 configurationDidReceivePasscodeChangedNotification:WeakRetained userInfo:{*(a1 + 32), v11}];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)_synchronizedObservers:(id)observers
{
  observersCopy = observers;
  os_unfair_lock_lock(&self->_observersLock);
  observersCopy[2](observersCopy, self->_observers);

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)_startObservingConnection
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = LACLogPasscode(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "%@ did register for passcode observation", &v4, 0xCu);
  }

  [(MCProfileConnection *)self->_connection registerObserver:self];
}

- (void)_stopObservingConnection
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = LACLogPasscode([(MCProfileConnection *)self->_connection unregisterObserver:self]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "%@ did unregister from passcode observation", &v4, 0xCu);
  }
}

@end