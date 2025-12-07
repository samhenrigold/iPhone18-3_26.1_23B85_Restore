@interface CXCallDirectoryNSExtensionManager
+ (NSDictionary)baseExtensionMatchingAttributes;
- (CXCallDirectoryNSExtensionManager)init;
- (CXCallDirectoryNSExtensionManagerDelegate)delegate;
- (void)_beginMatchingExtensionsIfNecessary;
- (void)_extensionForIdentifier:(id)identifier containingAppBundleURL:(id)l completion:(id)completion;
- (void)beginMatchingExtensions;
- (void)dealloc;
- (void)extensionWithIdentifier:(id)identifier inContainingAppWithProcessIdentifier:(int)processIdentifier completion:(id)completion;
- (void)extensionsWithCompletionHandler:(id)handler;
- (void)pluginsDidInstall:(id)install;
- (void)setDelegate:(id)delegate queue:(id)queue;
@end

@implementation CXCallDirectoryNSExtensionManager

- (CXCallDirectoryNSExtensionManager)init
{
  v7.receiver = self;
  v7.super_class = CXCallDirectoryNSExtensionManager;
  v2 = [(CXCallDirectoryNSExtensionManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.callkit.calldirectorynsextensionmanager", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  [defaultWorkspace addObserver:v2];

  return v2;
}

- (void)dealloc
{
  extensionMatchingContext = [(CXCallDirectoryNSExtensionManager *)self extensionMatchingContext];

  if (extensionMatchingContext)
  {
    v4 = MEMORY[0x1E696ABD0];
    extensionMatchingContext2 = [(CXCallDirectoryNSExtensionManager *)self extensionMatchingContext];
    [v4 endMatchingExtensions:extensionMatchingContext2];
  }

  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  v7.receiver = self;
  v7.super_class = CXCallDirectoryNSExtensionManager;
  [(CXCallDirectoryNSExtensionManager *)&v7 dealloc];
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  queue = [(CXCallDirectoryNSExtensionManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CXCallDirectoryNSExtensionManager_setDelegate_queue___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v12 = delegateCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = delegateCopy;
  dispatch_async(queue, block);
}

uint64_t __55__CXCallDirectoryNSExtensionManager_setDelegate_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  if (*(a1 + 48))
  {
    v2 = *(a1 + 48);
  }

  else
  {
    v2 = MEMORY[0x1E69E96A0];
  }

  v3 = *(a1 + 32);

  return [v3 setDelegateQueue:v2];
}

- (void)beginMatchingExtensions
{
  queue = [(CXCallDirectoryNSExtensionManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CXCallDirectoryNSExtensionManager_beginMatchingExtensions__block_invoke;
  block[3] = &unk_1E7C06CA8;
  block[4] = self;
  dispatch_async(queue, block);
}

+ (NSDictionary)baseExtensionMatchingAttributes
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v11[0] = @"com.apple.callkit.call-directory";
    v11[1] = @"com.apple.live-lookup";
    v2 = MEMORY[0x1E695DEC8];
    v3 = v11;
    v4 = 2;
  }

  else
  {
    v10 = @"com.apple.callkit.call-directory";
    v2 = MEMORY[0x1E695DEC8];
    v3 = &v10;
    v4 = 1;
  }

  v5 = [v2 arrayWithObjects:v3 count:v4];
  v8 = *MEMORY[0x1E696A2F8];
  v9 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  return v6;
}

- (void)_beginMatchingExtensionsIfNecessary
{
  extensionMatchingContext = [(CXCallDirectoryNSExtensionManager *)self extensionMatchingContext];

  if (!extensionMatchingContext)
  {
    baseExtensionMatchingAttributes = [objc_opt_class() baseExtensionMatchingAttributes];
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E696ABD0];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __72__CXCallDirectoryNSExtensionManager__beginMatchingExtensionsIfNecessary__block_invoke;
    v11 = &unk_1E7C07048;
    objc_copyWeak(&v14, &location);
    selfCopy = self;
    v6 = baseExtensionMatchingAttributes;
    v13 = v6;
    v7 = [v5 beginMatchingExtensionsWithAttributes:v6 completion:&v8];
    [(CXCallDirectoryNSExtensionManager *)self setExtensionMatchingContext:v7, v8, v9, v10, v11, selfCopy];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __72__CXCallDirectoryNSExtensionManager__beginMatchingExtensionsIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = CXDefaultLog(WeakRetained);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __72__CXCallDirectoryNSExtensionManager__beginMatchingExtensionsIfNecessary__block_invoke_cold_1();
      }
    }

    else
    {
      v10 = [WeakRetained queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __72__CXCallDirectoryNSExtensionManager__beginMatchingExtensionsIfNecessary__block_invoke_2;
      block[3] = &unk_1E7C06C80;
      v11 = v5;
      v12 = *(a1 + 32);
      v14 = v11;
      v15 = v12;
      v16 = v8;
      dispatch_async(v10, block);

      v9 = v14;
    }
  }
}

void __72__CXCallDirectoryNSExtensionManager__beginMatchingExtensionsIfNecessary__block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "matchingExtensions=%@", buf, 0xCu);
  }

  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 identifier];
        [v4 setObject:v10 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [*(a1 + 40) setExtensions:v4];
  v12 = [*(a1 + 40) delegateQueue];

  if (v12)
  {
    v13 = [*(a1 + 40) delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__CXCallDirectoryNSExtensionManager__beginMatchingExtensionsIfNecessary__block_invoke_14;
    block[3] = &unk_1E7C06C80;
    v15 = *(a1 + 40);
    v16 = *(a1 + 32);
    dispatch_async(v13, block);
  }
}

void __72__CXCallDirectoryNSExtensionManager__beginMatchingExtensionsIfNecessary__block_invoke_14(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryNSExtensionManager:*(a1 + 40) extensionsChanged:*(a1 + 48)];
}

- (void)extensionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  baseExtensionMatchingAttributes = [objc_opt_class() baseExtensionMatchingAttributes];
  [MEMORY[0x1E696ABD0] extensionsWithMatchingAttributes:baseExtensionMatchingAttributes completion:handlerCopy];
}

- (void)extensionWithIdentifier:(id)identifier inContainingAppWithProcessIdentifier:(int)processIdentifier completion:(id)completion
{
  v6 = *&processIdentifier;
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = objc_alloc_init(MEMORY[0x1E698D028]);
  v11 = [v10 bundleInfoValueForKey:*MEMORY[0x1E695E4F0] PID:v6];
  invalidate = [v10 invalidate];
  if (v11)
  {
    v13 = [MEMORY[0x1E69635F8] cx_applicationRecordForBundleIdentifier:v11];
    v14 = [v13 URL];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __109__CXCallDirectoryNSExtensionManager_extensionWithIdentifier_inContainingAppWithProcessIdentifier_completion___block_invoke;
    v17[3] = &unk_1E7C07070;
    v18 = identifierCopy;
    v19 = v14;
    v20 = completionCopy;
    v15 = v14;
    [(CXCallDirectoryNSExtensionManager *)self _extensionForIdentifier:v18 containingAppBundleURL:v15 completion:v17];
  }

  else
  {
    v16 = CXDefaultLog(invalidate);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CXCallDirectoryNSExtensionManager extensionWithIdentifier:v6 inContainingAppWithProcessIdentifier:v16 completion:?];
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __109__CXCallDirectoryNSExtensionManager_extensionWithIdentifier_inContainingAppWithProcessIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = CXDefaultLog(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __109__CXCallDirectoryNSExtensionManager_extensionWithIdentifier_inContainingAppWithProcessIdentifier_completion___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_extensionForIdentifier:(id)identifier containingAppBundleURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  identifierCopy = identifier;
  baseExtensionMatchingAttributes = [objc_opt_class() baseExtensionMatchingAttributes];
  v11 = [baseExtensionMatchingAttributes mutableCopy];

  [v11 setObject:identifierCopy forKeyedSubscript:*MEMORY[0x1E696A2E0]];
  path = [lCopy path];

  [v11 setObject:path forKeyedSubscript:*MEMORY[0x1E696A2B0]];
  v13 = MEMORY[0x1E696ABD0];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __95__CXCallDirectoryNSExtensionManager__extensionForIdentifier_containingAppBundleURL_completion___block_invoke;
  v16[3] = &unk_1E7C07098;
  v17 = v11;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = v11;
  [v13 extensionsWithMatchingAttributes:v15 completion:v16];
}

void __95__CXCallDirectoryNSExtensionManager__extensionForIdentifier_containingAppBundleURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = [a2 firstObject];
  }

  else
  {
    v8 = CXDefaultLog(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __95__CXCallDirectoryNSExtensionManager__extensionForIdentifier_containingAppBundleURL_completion___block_invoke_cold_1();
    }

    v7 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)pluginsDidInstall:(id)install
{
  installCopy = install;
  queue = [(CXCallDirectoryNSExtensionManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__CXCallDirectoryNSExtensionManager_pluginsDidInstall___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v7[4] = self;
  v8 = installCopy;
  v6 = installCopy;
  dispatch_async(queue, v7);
}

void __55__CXCallDirectoryNSExtensionManager_pluginsDidInstall___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegateQueue];

  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = CXDefaultLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "pluginKitProxies=%@", buf, 0xCu);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = *(a1 + 40);
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * v10);
          v12 = [*(a1 + 32) extensions];
          v13 = [v11 pluginIdentifier];
          v14 = [v12 objectForKeyedSubscript:v13];

          if (v14)
          {
            [v3 addObject:v14];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v16 = CXDefaultLog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v3;
      _os_log_impl(&dword_1B47F3000, v16, OS_LOG_TYPE_DEFAULT, "installedPlugins=%@", buf, 0xCu);
    }

    if ([v3 count])
    {
      v17 = [*(a1 + 32) delegateQueue];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __55__CXCallDirectoryNSExtensionManager_pluginsDidInstall___block_invoke_20;
      v18[3] = &unk_1E7C06BE0;
      v18[4] = *(a1 + 32);
      v19 = v3;
      dispatch_async(v17, v18);
    }
  }
}

void __55__CXCallDirectoryNSExtensionManager_pluginsDidInstall___block_invoke_20(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryNSExtensionManager:*(a1 + 32) extensionsChanged:*(a1 + 40)];
}

- (CXCallDirectoryNSExtensionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)extensionWithIdentifier:(int)a1 inContainingAppWithProcessIdentifier:(NSObject *)a2 completion:.cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "No containing app bundle ID found for containingAppPID %d", v2, 8u);
}

void __109__CXCallDirectoryNSExtensionManager_extensionWithIdentifier_inContainingAppWithProcessIdentifier_completion___block_invoke_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  v3 = v0;
  _os_log_error_impl(&dword_1B47F3000, v1, OS_LOG_TYPE_ERROR, "No NSExtension found for identifier %@ containingAppBundleURL %@", v2, 0x16u);
}

@end