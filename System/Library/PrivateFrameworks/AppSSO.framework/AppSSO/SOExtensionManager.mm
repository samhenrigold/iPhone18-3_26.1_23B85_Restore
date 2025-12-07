@interface SOExtensionManager
+ (BOOL)_isMatchedExtension:(id)extension forBundleIdentifier:(id)identifier;
+ (BOOL)isAppleConnectExtensionBundleIdentifier:(id)identifier;
+ (BOOL)isInternalExtensionBundleIdentifier:(id)identifier;
+ (id)sharedInstance;
+ (void)_sendNotificationsLoadedExtensions:(id)extensions new:(id)new removed:(id)removed;
- (BOOL)isLoadedExtensionWithBundleIdentifier:(id)identifier;
- (SOExtensionManager)init;
- (id)_doLoadExtensions;
- (id)loadExtensionWithBundleIdentifier:(id)identifier;
- (id)loadInternalExtension;
- (id)loadedExtensionWithBundleIdentifier:(id)identifier;
- (id)loadedInternalExtension;
- (void)_doBeginMatchingExtensions;
- (void)_doEndMatchingExtensions;
- (void)beginMatchingExtensions;
- (void)dealloc;
- (void)endMatchingExtensions;
- (void)loadExtensionWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)loadExtensions;
- (void)unloadExtensions;
@end

@implementation SOExtensionManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SOExtensionManager sharedInstance];
  }

  v3 = sharedInstance_defaultManager;

  return v3;
}

uint64_t __36__SOExtensionManager_sharedInstance__block_invoke()
{
  sharedInstance_defaultManager = objc_alloc_init(SOExtensionManager);

  return MEMORY[0x1EEE66BB8]();
}

- (SOExtensionManager)init
{
  v8.receiver = self;
  v8.super_class = SOExtensionManager;
  v2 = [(SOExtensionManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(SOExtensionFinder);
    extensionFinder = v2->_extensionFinder;
    v2->_extensionFinder = v3;

    v5 = dispatch_queue_create("com.apple.AppSSO.extension-manager-queue", 0);
    extensionManagerQueue = v2->_extensionManagerQueue;
    v2->_extensionManagerQueue = v5;
  }

  return v2;
}

- (void)dealloc
{
  [(SOExtensionManager *)self unloadExtensions];
  v3.receiver = self;
  v3.super_class = SOExtensionManager;
  [(SOExtensionManager *)&v3 dealloc];
}

- (void)loadExtensionWithBundleIdentifier:(id)identifier completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = SO_LOG_SOExtensionManager(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "[SOExtensionManager loadExtensionWithBundleIdentifier:completion:]";
    v17 = 2114;
    v18 = identifierCopy;
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s bundleIdentifier: %{public}@ on %@", buf, 0x20u);
  }

  extensionFinder = self->_extensionFinder;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__SOExtensionManager_loadExtensionWithBundleIdentifier_completion___block_invoke;
  v12[3] = &unk_1E813E8E8;
  v13 = identifierCopy;
  v14 = completionCopy;
  v12[4] = self;
  v10 = identifierCopy;
  v11 = completionCopy;
  [(SOExtensionFinder *)extensionFinder findExtensionWithBundleIdentifier:v10 completion:v12];
}

void __67__SOExtensionManager_loadExtensionWithBundleIdentifier_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(a1[6] + 16))();
  }

  else
  {
    v7 = [objc_opt_class() _isMatchedExtension:v5 forBundleIdentifier:a1[5]];
    v8 = a1[6];
    if (v7)
    {
      (*(v8 + 16))(v8, v5, 0);
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2050000000;
      v9 = getSOErrorHelperClass_softClass_2;
      v16 = getSOErrorHelperClass_softClass_2;
      if (!getSOErrorHelperClass_softClass_2)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __getSOErrorHelperClass_block_invoke_2;
        v12[3] = &unk_1E813E230;
        v12[4] = &v13;
        __getSOErrorHelperClass_block_invoke_2(v12);
        v9 = v14[3];
      }

      v10 = v9;
      _Block_object_dispose(&v13, 8);
      v11 = [v9 internalErrorWithMessage:@"No AppSSO IdP extension found (internal error)"];
      (*(v8 + 16))(v8, 0, v11);
    }
  }
}

- (id)loadExtensionWithBundleIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = SO_LOG_SOExtensionManager(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[SOExtensionManager loadExtensionWithBundleIdentifier:]";
    *&buf[12] = 2114;
    *&buf[14] = identifierCopy;
    *&buf[22] = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s bundleIdentifier: %{public}@ on %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  selfCopy = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__SOExtensionManager_loadExtensionWithBundleIdentifier___block_invoke;
  v9[3] = &unk_1E813E910;
  v11 = buf;
  v6 = identifierCopy;
  v10 = v6;
  [(SOExtensionManager *)self loadExtensionWithBundleIdentifier:v6 completion:v9];
  v7 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v7;
}

void __56__SOExtensionManager_loadExtensionWithBundleIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = SO_LOG_SOExtensionManager(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __56__SOExtensionManager_loadExtensionWithBundleIdentifier___block_invoke_cold_1(a1, v8, v9);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (id)loadInternalExtension
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOExtensionManager(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SOExtensionManager loadInternalExtension]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  internalExtensionBundleIdentifier = [objc_opt_class() internalExtensionBundleIdentifier];
  v5 = [(SOExtensionManager *)self loadExtensionWithBundleIdentifier:internalExtensionBundleIdentifier];

  return v5;
}

- (void)beginMatchingExtensions
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOExtensionManager(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[SOExtensionManager beginMatchingExtensions]";
    v6 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v4, 0x16u);
  }

  [(SOExtensionManager *)self _doBeginMatchingExtensions];
}

- (void)endMatchingExtensions
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOExtensionManager(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[SOExtensionManager endMatchingExtensions]";
    v6 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v4, 0x16u);
  }

  [(SOExtensionManager *)self _doEndMatchingExtensions];
}

- (void)loadExtensions
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOExtensionManager(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SOExtensionManager loadExtensions]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  _doLoadExtensions = [(SOExtensionManager *)selfCopy2 _doLoadExtensions];
  loadedExtensions = selfCopy2->_loadedExtensions;
  selfCopy2->_loadedExtensions = _doLoadExtensions;

  objc_sync_exit(selfCopy2);
}

- (id)_doLoadExtensions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  extensionFinder = self->_extensionFinder;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__SOExtensionManager__doLoadExtensions__block_invoke;
  v5[3] = &unk_1E813E938;
  v5[4] = &v6;
  [(SOExtensionFinder *)extensionFinder findExtensionsWithCompletion:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__SOExtensionManager__doLoadExtensions__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (!a3)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v6 = v7;
  }
}

- (void)unloadExtensions
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOExtensionManager(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[SOExtensionManager unloadExtensions]";
    v17 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = selfCopy2->_loadedExtensions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v8++) unload];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  loadedExtensions = selfCopy2->_loadedExtensions;
  selfCopy2->_loadedExtensions = 0;

  objc_sync_exit(selfCopy2);
}

- (id)loadedExtensionWithBundleIdentifier:(id)identifier
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = SO_LOG_SOExtensionManager(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOExtensionManager loadedExtensionWithBundleIdentifier:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = selfCopy->_loadedExtensions;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v27 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([objc_opt_class() _isMatchedExtension:v11 forBundleIdentifier:{identifierCopy, v15}])
        {
          v8 = v11;
          goto LABEL_13;
        }
      }

      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  objc_sync_exit(selfCopy);
  v13 = SO_LOG_SOExtensionManager(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v20 = "[SOExtensionManager loadedExtensionWithBundleIdentifier:]";
    v21 = 2114;
    v22 = identifierCopy;
    v23 = 2114;
    v24 = v8;
    v25 = 2112;
    v26 = selfCopy;
    _os_log_impl(&dword_1C1317000, v13, OS_LOG_TYPE_DEFAULT, "%s %{public}@ => %{public}@ on %@", buf, 0x2Au);
  }

  return v8;
}

- (id)loadedInternalExtension
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOExtensionManager(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SOExtensionManager loadedInternalExtension]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  internalExtensionBundleIdentifier = [objc_opt_class() internalExtensionBundleIdentifier];
  v5 = [(SOExtensionManager *)self loadedExtensionWithBundleIdentifier:internalExtensionBundleIdentifier];

  return v5;
}

- (BOOL)isLoadedExtensionWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = SO_LOG_SOExtensionManager(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOExtensionManager isLoadedExtensionWithBundleIdentifier:];
  }

  v6 = [(SOExtensionManager *)self loadedExtensionWithBundleIdentifier:identifierCopy];
  v7 = v6 != 0;

  return v7;
}

- (void)_doBeginMatchingExtensions
{
  extensionFinder = self->_extensionFinder;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__SOExtensionManager__doBeginMatchingExtensions__block_invoke;
  v3[3] = &unk_1E813E960;
  v3[4] = self;
  [(SOExtensionFinder *)extensionFinder beginMatchingExtensionsWithCompletion:v3];
}

void __48__SOExtensionManager__doBeginMatchingExtensions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SOExtensionManager__doBeginMatchingExtensions__block_invoke_2;
  block[3] = &unk_1E813E340;
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __48__SOExtensionManager__doBeginMatchingExtensions__block_invoke_2(id *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    [v2 endMatchingExtensions];
    v4 = dispatch_time(0, 1000000000);
    v5 = *(a1[5] + 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__SOExtensionManager__doBeginMatchingExtensions__block_invoke_3;
    block[3] = &unk_1E813E390;
    v6 = a1[4];
    v7 = a1[5];
    v24 = v6;
    v25 = v7;
    dispatch_after(v4, v5, block);
    v8 = v24;
  }

  else
  {
    v9 = [v2 loadedExtensions];
    v10 = [v9 mutableCopy];

    v11 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = a1[6];
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v19 + 1) + 8 * i);
          if ([v10 containsObject:{v17, v19}])
          {
            [v10 removeObject:v17];
          }

          else
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v26 count:16];
      }

      while (v14);
    }

    v18 = a1[5];
    v8 = v10;
    objc_sync_enter(v18);
    objc_storeStrong(a1[5] + 3, a1[6]);
    objc_sync_exit(v18);

    [objc_opt_class() _sendNotificationsLoadedExtensions:a1[6] new:v11 removed:v8];
  }
}

uint64_t __48__SOExtensionManager__doBeginMatchingExtensions__block_invoke_3(uint64_t a1)
{
  v2 = SO_LOG_SOExtensionManager(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __48__SOExtensionManager__doBeginMatchingExtensions__block_invoke_3_cold_1(a1, v2);
  }

  return [*(a1 + 40) beginMatchingExtensions];
}

- (void)_doEndMatchingExtensions
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOExtensionManager(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[SOExtensionManager _doEndMatchingExtensions]";
    v6 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v4, 0x16u);
  }

  [(SOExtensionFinder *)self->_extensionFinder endMatchingExtensions];
}

+ (void)_sendNotificationsLoadedExtensions:(id)extensions new:(id)new removed:(id)removed
{
  v33 = *MEMORY[0x1E69E9840];
  extensionsCopy = extensions;
  newCopy = new;
  removedCopy = removed;
  v11 = SO_LOG_SOExtensionManager(removedCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v24 = "+[SOExtensionManager _sendNotificationsLoadedExtensions:new:removed:]";
    v25 = 2114;
    v26 = extensionsCopy;
    v27 = 2114;
    v28 = newCopy;
    v29 = 2114;
    v30 = removedCopy;
    v31 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v11, OS_LOG_TYPE_DEFAULT, "%s extensions: %{public}@, new: %{public}@, removed: %{public}@ on %@", buf, 0x34u);
  }

  if (extensionsCopy)
  {
    v12 = extensionsCopy;
  }

  else
  {
    v12 = MEMORY[0x1E695E0F8];
  }

  v17 = @"extensions";
  v18 = @"new";
  if (newCopy)
  {
    v13 = newCopy;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F8];
  }

  v20 = v12;
  v21 = v13;
  v19 = @"removed";
  if (removedCopy)
  {
    v14 = removedCopy;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F8];
  }

  v22 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v17 count:3];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.AppSSO.SOExtensionManager.ExtensionsChanged" object:self userInfo:v15];
}

+ (BOOL)_isMatchedExtension:(id)extension forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  extensionBundleIdentifier = [extension extensionBundleIdentifier];
  v7 = [extensionBundleIdentifier isEqualToString:identifierCopy];

  return v7;
}

+ (BOOL)isInternalExtensionBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  internalExtensionsBundleIdentifiers = [self internalExtensionsBundleIdentifiers];
  v6 = [internalExtensionsBundleIdentifiers containsObject:identifierCopy];

  return v6;
}

+ (BOOL)isAppleConnectExtensionBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.ist.ds.appleconnect2.AppSSOExtension"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.ist.AppleConnect.App-SSO"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [identifierCopy isEqualToString:@"com.apple.ist.AppleConnect.mini.App-SSO"];
  }

  return v4;
}

void __56__SOExtensionManager_loadExtensionWithBundleIdentifier___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1C1317000, log, OS_LOG_TYPE_ERROR, "extension not found: %{public}@, error: %{public}@", &v4, 0x16u);
}

- (void)loadedExtensionWithBundleIdentifier:.cold.1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C1317000, v0, v1, "%s bundleIdentifier=%{public}@ on %@", v2);
}

- (void)isLoadedExtensionWithBundleIdentifier:.cold.1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C1317000, v0, v1, "%s bundleIdentifier=%{public}@ on %@", v2);
}

void __48__SOExtensionManager__doBeginMatchingExtensions__block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1C1317000, a2, OS_LOG_TYPE_ERROR, "restarting matching extensions because of error: %{public}@", &v3, 0xCu);
}

@end