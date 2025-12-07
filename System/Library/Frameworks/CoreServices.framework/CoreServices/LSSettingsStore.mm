@interface LSSettingsStore
+ (id)sharedInstance;
- (BOOL)resetUserElectionsWithError:(id *)error;
- (BOOL)setUserElection:(unsigned __int8)election forExtensionKey:(id)key error:(id *)error;
- (id)_init;
- (id)addChangeObserver:(id)observer;
- (id)settingsStoreConfigurationForProcessWithAuditToken:(id *)token;
- (unsigned)userElectionForExtensionKey:(id)key;
- (void)removeChangeObserver:(id)observer;
@end

@implementation LSSettingsStore

+ (id)sharedInstance
{
  if (+[LSSettingsStore sharedInstance]::onceToken != -1)
  {
    +[LSSettingsStore sharedInstance];
  }

  v3 = +[LSSettingsStore sharedInstance]::store;

  return v3;
}

void __33__LSSettingsStore_sharedInstance__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [__LSDefaultsGetSharedInstance(a1 a2)];
  v3 = off_1E6A18360;
  if (!v2)
  {
    v3 = off_1E6A18300;
  }

  v4 = objc_alloc_init(*v3);
  v5 = +[LSSettingsStore sharedInstance]::store;
  +[LSSettingsStore sharedInstance]::store = v4;
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = LSSettingsStore;
  v2 = [(LSSettingsStore *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.launchservices._LSSettingsInProcessStore.notification", v3);
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = v4;

    v6 = objc_opt_new();
    observerSet = v2->_observerSet;
    v2->_observerSet = v6;
  }

  return v2;
}

- (BOOL)setUserElection:(unsigned __int8)election forExtensionKey:(id)key error:(id *)error
{
  if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[LSSettingsStore setUserElection:forExtensionKey:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/SettingsStore/LSSettingsStore.mm", 204);
  }

  return 0;
}

- (BOOL)resetUserElectionsWithError:(id *)error
{
  if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[LSSettingsStore resetUserElectionsWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/SettingsStore/LSSettingsStore.mm", 211);
  }

  return 0;
}

- (id)addChangeObserver:(id)observer
{
  observerCopy = observer;
  v5 = objc_opt_new();
  v6 = MEMORY[0x1865D71B0](observerCopy);
  v7 = v5[1];
  v5[1] = v6;

  SharedInstance = __LSDefaultsGetSharedInstance(v8, v9);
  v11 = [SharedInstance settingsUpdateNotificationNameForUserID:geteuid()];
  observerQueue = self->_observerQueue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __37__LSSettingsStore_addChangeObserver___block_invoke;
  v20[3] = &unk_1E6A1ABE8;
  v13 = v11;
  v21 = v13;
  v14 = v5;
  v22 = v14;
  LaunchServices::notifyd::NotifyToken::RegisterDispatch(v13, observerQueue, v20, &v23);
  LaunchServices::notifyd::NotifyToken::operator=(v14 + 4, &v23);
  LaunchServices::notifyd::NotifyToken::~NotifyToken(&v23);
  v15 = self->_observerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__LSSettingsStore_addChangeObserver___block_invoke_41;
  block[3] = &unk_1E6A1ABE8;
  block[4] = self;
  v16 = v14;
  v19 = v16;
  dispatch_sync(v15, block);

  return v16;
}

uint64_t __37__LSSettingsStore_addChangeObserver___block_invoke(uint64_t a1)
{
  v2 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __37__LSSettingsStore_addChangeObserver___block_invoke_cold_1();
  }

  return (*(*(*(a1 + 40) + 8) + 16))();
}

- (void)removeChangeObserver:(id)observer
{
  observerCopy = observer;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSSettingsStore.mm" lineNumber:238 description:{@"Unexpected class %@", v10}];
  }

  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__LSSettingsStore_removeChangeObserver___block_invoke;
  block[3] = &unk_1E6A1A830;
  v12 = observerCopy;
  v7 = observerCopy;
  dispatch_sync(observerQueue, block);
}

uint64_t __40__LSSettingsStore_removeChangeObserver___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = (*(a1 + 32) + 16);

  return LaunchServices::notifyd::NotifyToken::cancel(v4);
}

- (unsigned)userElectionForExtensionKey:(id)key
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)settingsStoreConfigurationForProcessWithAuditToken:(id *)token
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

void __37__LSSettingsStore_addChangeObserver___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12_0(*MEMORY[0x1E69E9840]);
  LODWORD(v7) = 138543362;
  *(&v7 + 4) = v0;
  OUTLINED_FUNCTION_1(&dword_18162D000, v1, v2, "NotifyToken::Received(%{public}@)", v3, v4, v5, v6, v7, DWORD2(v7));
}

@end