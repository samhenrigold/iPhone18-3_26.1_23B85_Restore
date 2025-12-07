@interface MFAppStateMonitor
+ (MFAppStateMonitor)sharedInstance;
- (EFObservable)appIsVisibleObservable;
- (MFAppStateMonitor)initWithBundleId:(id)id;
- (void)_monitorDidUpdate:(void *)update process:(void *)process update:;
- (void)dealloc;
@end

@implementation MFAppStateMonitor

+ (MFAppStateMonitor)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MFAppStateMonitor_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

void __35__MFAppStateMonitor_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v2 = [v1 initWithBundleId:*MEMORY[0x1E69B17F0]];
  v3 = sharedInstance_instance;
  sharedInstance_instance = v2;
}

- (MFAppStateMonitor)initWithBundleId:(id)id
{
  v30 = *MEMORY[0x1E69E9840];
  idCopy = id;
  if (!idCopy)
  {
    goto LABEL_11;
  }

  v28.receiver = self;
  v28.super_class = MFAppStateMonitor;
  self = [(MFAppStateMonitor *)&v28 init];
  if (self)
  {
    observableObserver = [MEMORY[0x1E699B830] observableObserver];
    observable = self->_observable;
    self->_observable = observableObserver;

    v7 = MEMORY[0x1E69C75D0];
    v8 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:idCopy];
    v27 = 0;
    v9 = [v7 handleForPredicate:v8 error:&v27];
    v10 = v27;

    currentState = [v9 currentState];
    endowmentNamespaces = [currentState endowmentNamespaces];
    v13 = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];
    v14 = MFLogGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      HIDWORD(buf) = v13;
      _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "[RBSProcessMonitor] Is visible: %{BOOL}d (initial)", &buf, 8u);
    }

    atomic_store(v13, &self->_isVisible);
    v15 = self->_observable;
    v16 = [MEMORY[0x1E696AD98] numberWithBool:v13];
    [(EFObserver *)v15 observerDidReceiveResult:v16];

    objc_initWeak(&buf, self);
    v17 = MEMORY[0x1E69C75F8];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __38__MFAppStateMonitor_initWithBundleId___block_invoke;
    v24[3] = &unk_1E7AA4BB0;
    v18 = idCopy;
    v25 = v18;
    objc_copyWeak(&v26, &buf);
    v19 = [v17 monitorWithConfiguration:v24];
    underlyingMonitor = self->_underlyingMonitor;
    self->_underlyingMonitor = v19;

    if (self->_underlyingMonitor)
    {
      objc_destroyWeak(&v26);

      objc_destroyWeak(&buf);
      goto LABEL_7;
    }

    v22 = MFLogGeneral();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [(MFAppStateMonitor *)v18 initWithBundleId:v10, v22];
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&buf);

LABEL_11:
    selfCopy = 0;
    goto LABEL_12;
  }

LABEL_7:
  self = self;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

void __38__MFAppStateMonitor_initWithBundleId___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E69C7630] descriptor];
  [v4 setValues:1];
  v11[0] = @"com.apple.frontboard.visibility";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v4 setEndowmentNamespaces:v5];

  [v3 setStateDescriptor:v4];
  v6 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:*(a1 + 32)];
  v10 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  [v3 setPredicates:v7];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__MFAppStateMonitor_initWithBundleId___block_invoke_2;
  v8[3] = &unk_1E7AA4B88;
  objc_copyWeak(&v9, (a1 + 40));
  [v3 setUpdateHandler:v8];
  objc_destroyWeak(&v9);
}

void __38__MFAppStateMonitor_initWithBundleId___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(MFAppStateMonitor *)WeakRetained _monitorDidUpdate:v9 process:v8 update:v7];
}

- (void)_monitorDidUpdate:(void *)update process:(void *)process update:
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  updateCopy = update;
  processCopy = process;
  v10 = processCopy;
  if (self)
  {
    state = [processCopy state];
    taskState = [state taskState];

    state2 = [v10 state];
    endowmentNamespaces = [state2 endowmentNamespaces];
    v15 = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];

    v16 = v15 ^ 1;
    atomic_compare_exchange_strong((self + 8), &v16, v15);
    if (v16 == (v15 ^ 1))
    {
      v17 = MFLogGeneral();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 67109632;
        v21 = v15;
        v22 = 1024;
        v23 = taskState;
        v24 = 1024;
        v25 = [updateCopy pid];
        _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEFAULT, "[RBSProcessMonitor] Is visible: %{BOOL}d, state: %d, pid = %d", &v20, 0x14u);
      }

      v18 = *(self + 24);
      v19 = [MEMORY[0x1E696AD98] numberWithBool:v15];
      [v18 observerDidReceiveResult:v19];
    }

    else
    {
      v18 = MFLogGeneral();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = 67109632;
        v21 = v15;
        v22 = 1024;
        v23 = taskState;
        v24 = 1024;
        v25 = [updateCopy pid];
        _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_INFO, "[RBSProcessMonitor] Is visible: %{BOOL}d, state: %d, pid = %d -- (no app visibility change)", &v20, 0x14u);
      }
    }
  }
}

- (EFObservable)appIsVisibleObservable
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    observable = self->_observable;
  }

  else
  {
    observable = 0;
  }

  v4 = observable;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFAppStateMonitor isVisible](self, "isVisible")}];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [(EFObserver *)v4 startWith:v6];

  return v7;
}

- (void)dealloc
{
  selfCopy = self;
  if (self)
  {
    self = self->_underlyingMonitor;
  }

  [(MFAppStateMonitor *)self invalidate];
  v3.receiver = selfCopy;
  v3.super_class = MFAppStateMonitor;
  [(MFAppStateMonitor *)&v3 dealloc];
}

- (void)initWithBundleId:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_1B0389000, log, OS_LOG_TYPE_FAULT, "Unable to create RBSProcessMonitor for %{public}@: %@", &v3, 0x16u);
}

@end