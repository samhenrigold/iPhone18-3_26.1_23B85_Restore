@interface HDSPContextStoreManager
+ (id)healthAppForegroundPredicate;
+ (id)sleepAppForegroundPredicate;
- (HDSPContextStoreManager)initWithEnvironment:(id)environment;
- (HDSPContextStoreManager)initWithEnvironment:(id)environment context:(id)context;
- (HDSPEnvironment)environment;
- (_CDLocalContext)context;
- (id)registerPredicate:(id)predicate identifier:(id)identifier callback:(id)callback;
- (void)_withLock:(id)lock;
- (void)_writeSleepInfoToContextStore:(id)store;
- (void)environmentWillBecomeReady:(id)ready;
- (void)sleepEventIsDue:(id)due;
- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason;
- (void)sleepScheduleModelManager:(id)manager didUpdateSleepScheduleModel:(id)model;
- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state reason:(unint64_t)reason;
- (void)unregister:(id)unregister;
- (void)updateForScheduleModelModifiedOnDate:(id)date;
@end

@implementation HDSPContextStoreManager

- (HDSPContextStoreManager)initWithEnvironment:(id)environment
{
  v4 = MEMORY[0x277CFE318];
  environmentCopy = environment;
  userContext = [v4 userContext];
  v7 = [(HDSPContextStoreManager *)self initWithEnvironment:environmentCopy context:userContext];

  return v7;
}

- (HDSPContextStoreManager)initWithEnvironment:(id)environment context:(id)context
{
  environmentCopy = environment;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = HDSPContextStoreManager;
  v8 = [(HDSPContextStoreManager *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_environment, environmentCopy);
    objc_storeStrong(&v9->_context, context);
    v9->_contextLock._os_unfair_lock_opaque = 0;
    v10 = v9;
  }

  return v9;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_contextLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_contextLock);
}

- (id)registerPredicate:(id)predicate identifier:(id)identifier callback:(id)callback
{
  v28 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  identifierCopy = identifier;
  callbackCopy = callback;
  v11 = objc_opt_class();
  v12 = HKSPLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v23 = v11;
    v24 = 2114;
    v25 = predicateCopy;
    v26 = 2114;
    v27 = identifierCopy;
    _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] registering predicate %{public}@ for identifier %{public}@", buf, 0x20u);
  }

  v13 = MEMORY[0x277CFE350];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__HDSPContextStoreManager_registerPredicate_identifier_callback___block_invoke;
  v18[3] = &unk_279C7B6F0;
  v20 = callbackCopy;
  v21 = v11;
  v19 = identifierCopy;
  v14 = callbackCopy;
  v15 = identifierCopy;
  v16 = [v13 localWakingRegistrationWithIdentifier:v15 contextualPredicate:predicateCopy clientIdentifier:@"com.apple.sleepd.contextstore-registration" callback:v18];
  [(_CDLocalContext *)self->_context registerCallback:v16];

  return v16;
}

void __65__HDSPContextStoreManager_registerPredicate_identifier_callback___block_invoke(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([a2 isEqualToString:a1[4]])
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[6];
      v8 = a1[4];
      v14 = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] processing callback with identifier %{public}@", &v14, 0x16u);
    }

    v9 = [v5 objectForKeyedSubscript:*MEMORY[0x277CFE3C0]];
    v10 = [v5 objectForKeyedSubscript:*MEMORY[0x277CFE3C8]];
    v11 = a1[5];
    v12 = [v9 value];
    v13 = [v10 value];
    (*(v11 + 16))(v11, v12, v13);
  }
}

- (void)unregister:(id)unregister
{
  v11 = *MEMORY[0x277D85DE8];
  unregisterCopy = unregister;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = unregisterCopy;
    v6 = v8;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] unregistering %{public}@", &v7, 0x16u);
  }

  [(_CDLocalContext *)self->_context deregisterCallback:unregisterCopy];
}

+ (id)healthAppForegroundPredicate
{
  v2 = MEMORY[0x277CFE360];
  keyPathForDefaultPairedDeviceForegroundApp = [MEMORY[0x277CFE338] keyPathForDefaultPairedDeviceForegroundApp];
  v4 = [v2 predicateForKeyPath:keyPathForDefaultPairedDeviceForegroundApp equalToValue:*MEMORY[0x277CCE3A8]];

  return v4;
}

+ (id)sleepAppForegroundPredicate
{
  v2 = MEMORY[0x277CFE360];
  keyPathForForegroundApp = [MEMORY[0x277CFE338] keyPathForForegroundApp];
  v4 = [v2 predicateForKeyPath:keyPathForForegroundApp equalToValue:*MEMORY[0x277D62090]];

  return v4;
}

- (void)environmentWillBecomeReady:(id)ready
{
  readyCopy = ready;
  sleepCoordinator = [readyCopy sleepCoordinator];
  [sleepCoordinator addObserver:self];

  sleepScheduleModelManager = [readyCopy sleepScheduleModelManager];
  [sleepScheduleModelManager addObserver:self];

  sleepModeManager = [readyCopy sleepModeManager];
  [sleepModeManager addObserver:self];

  sleepScheduler = [readyCopy sleepScheduler];

  [sleepScheduler addEventHandler:self];
}

- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state reason:(unint64_t)reason
{
  v28 = *MEMORY[0x277D85DE8];
  if (state != change)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = NSStringFromHKSPSleepScheduleState();
      v11 = NSStringFromHKSPSleepScheduleState();
      v12 = NSStringFromHKSPSleepScheduleStateChangeReason();
      *buf = 138544130;
      v21 = v8;
      v22 = 2114;
      v23 = v10;
      v24 = 2114;
      v25 = v11;
      v26 = 2114;
      v27 = v12;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep state changed from %{public}@ to %{public}@ (%{public}@)", buf, 0x2Au);
    }

    if (change == 1 && (HKSPSleepScheduleStateChangeReasonIsExpected() & 1) == 0)
    {
      sleepScheduleState = HKSPLogForCategory();
      if (os_log_type_enabled(sleepScheduleState, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        *buf = 138543362;
        v21 = v16;
        v17 = v16;
        _os_log_impl(&dword_269B11000, sleepScheduleState, OS_LOG_TYPE_DEFAULT, "[%{public}@] ignoring wake up state as it was not due to normal reason", buf, 0xCu);
      }
    }

    else
    {
      sleepScheduleState = [MEMORY[0x277CFE338] sleepScheduleState];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{change, sleepScheduleState}];
      v19 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      [(HDSPContextStoreManager *)self _writeSleepInfoToContextStore:v15];
    }
  }
}

- (void)sleepScheduleModelManager:(id)manager didUpdateSleepScheduleModel:(id)model
{
  v14 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  lastModifiedDate = [modelCopy lastModifiedDate];

  if (lastModifiedDate)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2114;
      v13 = modelCopy;
      v8 = v11;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] didUpdateSleepScheduleModel: %{public}@", &v10, 0x16u);
    }

    lastModifiedDate2 = [modelCopy lastModifiedDate];
    [(HDSPContextStoreManager *)self updateForScheduleModelModifiedOnDate:lastModifiedDate2];
  }
}

- (void)updateForScheduleModelModifiedOnDate:(id)date
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CFE338];
  dateCopy = date;
  sleepScheduleModelDateModified = [v4 sleepScheduleModelDateModified];
  v8 = sleepScheduleModelDateModified;
  v9[0] = dateCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [(HDSPContextStoreManager *)self _writeSleepInfoToContextStore:v7];
}

- (void)sleepEventIsDue:(id)due
{
  v18 = *MEMORY[0x277D85DE8];
  dueCopy = due;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    identifier = [dueCopy identifier];
    *buf = 138543618;
    v15 = v6;
    v16 = 2114;
    v17 = identifier;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep event due %{public}@", buf, 0x16u);
  }

  sleepEvent = [MEMORY[0x277CFE338] sleepEvent];
  identifier2 = [dueCopy identifier];
  v13 = identifier2;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [(HDSPContextStoreManager *)self _writeSleepInfoToContextStore:v11];
}

- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason
{
  v29 = *MEMORY[0x277D85DE8];
  if (change != mode)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = NSStringFromHKSPSleepMode();
      v11 = NSStringFromHKSPSleepMode();
      v12 = NSStringFromHKSPSleepModeChangeReason();
      *buf = 138544130;
      v22 = v8;
      v23 = 2114;
      v24 = v10;
      v25 = 2114;
      v26 = v11;
      v27 = 2114;
      v28 = v12;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode changed from %{public}@ to %{public}@ (%{public}@)", buf, 0x2Au);
    }

    v13 = change != 0;
    sleepModeState = [MEMORY[0x277CFE338] sleepModeState];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{change, sleepModeState}];
    v20[0] = v15;
    sleepModeOn = [MEMORY[0x277CFE338] sleepModeOn];
    v19[1] = sleepModeOn;
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v13];
    v20[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [(HDSPContextStoreManager *)self _writeSleepInfoToContextStore:v18];
  }
}

- (void)_writeSleepInfoToContextStore:(id)store
{
  v14 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = storeCopy;
    v6 = v11;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] adding %{public}@ to context", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HDSPContextStoreManager__writeSleepInfoToContextStore___block_invoke;
  v8[3] = &unk_279C7B2D0;
  v8[4] = self;
  v9 = storeCopy;
  v7 = storeCopy;
  [(HDSPContextStoreManager *)self _withLock:v8];
}

void __57__HDSPContextStoreManager__writeSleepInfoToContextStore___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() contextualKeyPath];
  v3 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v2];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 138543618;
    *&v15[4] = objc_opt_class();
    *&v15[12] = 2114;
    *&v15[14] = v3;
    v5 = *&v15[4];
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] previous context is %{public}@", v15, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v3 mutableCopy];
  }

  else
  {
    if (v3)
    {
      v7 = HKSPLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = v12;
        v14 = objc_opt_class();
        *v15 = 138543618;
        *&v15[4] = v12;
        *&v15[12] = 2114;
        *&v15[14] = v14;
        _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] previous context is of unexpected class %{public}@", v15, 0x16u);
      }
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v8 = v6;
  [v6 addEntriesFromDictionary:{*(a1 + 40), *v15, *&v15[8], v16}];
  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    *v15 = 138543618;
    *&v15[4] = v10;
    *&v15[12] = 2114;
    *&v15[14] = v8;
    v11 = v10;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] new context is %{public}@", v15, 0x16u);
  }

  [*(*(a1 + 32) + 24) setObject:v8 forKeyedSubscript:v2];
}

- (_CDLocalContext)context
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__HDSPContextStoreManager_context__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPContextStoreManager *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end