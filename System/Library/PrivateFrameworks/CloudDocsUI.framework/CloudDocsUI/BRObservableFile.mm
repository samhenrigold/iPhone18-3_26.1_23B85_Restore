@interface BRObservableFile
+ (id)observerForKey:(id)key onFileURL:(id)l;
+ (void)_applicationDidBecomeActive:(id)active;
+ (void)_applicationWillResignActive:(id)active;
+ (void)_deregisterInstance:(id)instance;
+ (void)_registerForApplicationLifecycleNotifications;
+ (void)_registerInstance:(id)instance;
- (BRObservableFile)initWithKey:(id)key fileURL:(id)l;
- (id)addObserverBlock:(id)block;
- (void)_presenterDidChange;
- (void)dealloc;
@end

@implementation BRObservableFile

+ (void)_registerForApplicationLifecycleNotifications
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__BRObservableFile__registerForApplicationLifecycleNotifications__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_registerForApplicationLifecycleNotifications_onceToken != -1)
  {
    dispatch_once(&_registerForApplicationLifecycleNotifications_onceToken, block);
  }
}

void __65__BRObservableFile__registerForApplicationLifecycleNotifications__block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:*(a1 + 32) selector:sel__applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];
  [v6 addObserver:*(a1 + 32) selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];
  v2 = objc_alloc(MEMORY[0x277CCAA50]);
  v3 = [MEMORY[0x277CCAC20] pointerFunctionsWithOptions:5];
  v4 = [v2 initWithPointerFunctions:v3 capacity:0];
  v5 = _BRObservableFileInstances;
  _BRObservableFileInstances = v4;
}

+ (void)_registerInstance:(id)instance
{
  instanceCopy = instance;
  v3 = _BRObservableFileInstances;
  objc_sync_enter(v3);
  [_BRObservableFileInstances addObject:instanceCopy];
  objc_sync_exit(v3);
}

+ (void)_deregisterInstance:(id)instance
{
  instanceCopy = instance;
  v3 = _BRObservableFileInstances;
  objc_sync_enter(v3);
  [_BRObservableFileInstances removeObject:instanceCopy];
  objc_sync_exit(v3);
}

+ (void)_applicationWillResignActive:(id)active
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [processInfo performExpiringActivityWithReason:@"Deregister file presenters" usingBlock:&__block_literal_global_5];
}

void __49__BRObservableFile__applicationWillResignActive___block_invoke(uint64_t a1, char a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = cdui_default_log(a1);
    v3 = v2;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __49__BRObservableFile__applicationWillResignActive___block_invoke_cold_1(v2);
      v3 = v2;
    }
  }

  else
  {
    v16 = _BRObservableFileInstances;
    objc_sync_enter(v16);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = _BRObservableFileInstances;
    v4 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
    v5 = v4;
    if (v4)
    {
      v6 = *v19;
      do
      {
        v7 = 0;
        do
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v18 + 1) + 8 * v7);
          v9 = cdui_default_log(v4);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v10 = objc_opt_class();
            v11 = [v8 presenter];
            v12 = [v11 presentedItemURL];
            v13 = [v12 path];
            *buf = 138412802;
            v23 = v10;
            v24 = 2048;
            v25 = v8;
            v26 = 2112;
            v27 = v13;
            _os_log_impl(&dword_243823000, v9, OS_LOG_TYPE_INFO, "[INFO] Removing (<%@: %p>, %@) as file presenter due to application deactivation", buf, 0x20u);
          }

          v14 = MEMORY[0x277CCA9E8];
          v15 = [v8 presenter];
          [v14 removeFilePresenter:v15];

          ++v7;
        }

        while (v5 != v7);
        v4 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
        v5 = v4;
      }

      while (v4);
    }

    v3 = v16;
    objc_sync_exit(v16);
  }
}

+ (void)_applicationDidBecomeActive:(id)active
{
  v29 = *MEMORY[0x277D85DE8];
  activeCopy = active;
  v16 = _BRObservableFileInstances;
  objc_sync_enter(v16);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = _BRObservableFileInstances;
  v3 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
  v4 = v3;
  if (v3)
  {
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v8 = cdui_default_log(v3);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = objc_opt_class();
          presenter = [v7 presenter];
          presentedItemURL = [presenter presentedItemURL];
          path = [presentedItemURL path];
          *buf = 138412802;
          v23 = v9;
          v24 = 2048;
          v25 = v7;
          v26 = 2112;
          v27 = path;
          _os_log_impl(&dword_243823000, v8, OS_LOG_TYPE_INFO, "[INFO] Re-adding (<%@: %p>, %@) as file presenter due to application activation", buf, 0x20u);
        }

        v13 = MEMORY[0x277CCA9E8];
        presenter2 = [v7 presenter];
        [v13 addFilePresenter:presenter2];

        ++v6;
      }

      while (v4 != v6);
      v3 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
      v4 = v3;
    }

    while (v3);
  }

  objc_sync_exit(v16);
}

+ (id)observerForKey:(id)key onFileURL:(id)l
{
  lCopy = l;
  keyCopy = key;
  v8 = [[self alloc] initWithKey:keyCopy fileURL:lCopy];

  return v8;
}

- (BRObservableFile)initWithKey:(id)key fileURL:(id)l
{
  v31 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  lCopy = l;
  v24.receiver = self;
  v24.super_class = BRObservableFile;
  v8 = [(BRObservableFile *)&v24 init];
  if (v8)
  {
    [objc_opt_class() _registerForApplicationLifecycleNotifications];
    [(BRObservableFile *)v8 setKey:keyCopy];
    v9 = objc_opt_new();
    [(BRObservableFile *)v8 setPresenter:v9];

    presenter = [(BRObservableFile *)v8 presenter];
    [presenter setPresentedItemURL:lCopy];

    v11 = objc_opt_new();
    presenter2 = [(BRObservableFile *)v8 presenter];
    [presenter2 setPresentedItemOperationQueue:v11];

    presenter3 = [(BRObservableFile *)v8 presenter];
    [presenter3 setParent:v8];

    [objc_opt_class() _registerInstance:v8];
    v14 = MEMORY[0x277CCA9E8];
    presenter4 = [(BRObservableFile *)v8 presenter];
    [v14 addFilePresenter:presenter4];

    v17 = cdui_default_log(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v19 = v18;
      presenter5 = [(BRObservableFile *)v8 presenter];
      presentedItemURL = [presenter5 presentedItemURL];
      path = [presentedItemURL path];
      *buf = 138412802;
      v26 = v18;
      v27 = 2048;
      v28 = v8;
      v29 = 2112;
      v30 = path;
      _os_log_impl(&dword_243823000, v17, OS_LOG_TYPE_INFO, "[INFO] Adding (<%@: %p>, %@) as file presenter", buf, 0x20u);
    }

    [(BRObservableFile *)v8 _presenterDidChange];
  }

  return v8;
}

- (id)addObserverBlock:(id)block
{
  v6.receiver = self;
  v6.super_class = BRObservableFile;
  v4 = [(BRObservableFile *)&v6 addObserverBlock:block];
  [(BRObservableFile *)self _presenterDidChange];

  return v4;
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_class() _deregisterInstance:self];
  v4 = cdui_default_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = v5;
    presenter = [(BRObservableFile *)self presenter];
    presentedItemURL = [presenter presentedItemURL];
    path = [presentedItemURL path];
    *buf = 138412802;
    v14 = v5;
    v15 = 2048;
    selfCopy = self;
    v17 = 2112;
    v18 = path;
    _os_log_impl(&dword_243823000, v4, OS_LOG_TYPE_INFO, "[INFO] Removing (<%@: %p>, %@) as file presenter due to dealloc", buf, 0x20u);
  }

  v10 = MEMORY[0x277CCA9E8];
  presenter2 = [(BRObservableFile *)self presenter];
  [v10 removeFilePresenter:presenter2];

  v12.receiver = self;
  v12.super_class = BRObservableFile;
  [(BRObservableFile *)&v12 dealloc];
}

- (void)_presenterDidChange
{
  key = self->_key;
  presenter = [(BRObservableFile *)self presenter];
  presentedItemURL = [presenter presentedItemURL];
  if (key)
  {
    v5 = [(BRObservableFile *)self key];
    [presentedItemURL removeCachedResourceValueForKey:v5];

    presenter2 = [(BRObservableFile *)self presenter];
    presentedItemURL2 = [presenter2 presentedItemURL];
    v14 = 0;
    v8 = [(BRObservableFile *)self key];
    v13 = 0;
    v9 = [presentedItemURL2 getPromisedItemResourceValue:&v14 forKey:v8 error:&v13];
    v10 = v14;
    v11 = v13;

    if (v9)
    {
      [(BRObservableFile *)self receiveObservedValue:v10];
    }

    else
    {
      [(BRObservableFile *)self receiveObservedError:v11];
    }
  }

  else
  {
    [(BRObservableFile *)self receiveObservedValue:presentedItemURL];
  }
}

@end