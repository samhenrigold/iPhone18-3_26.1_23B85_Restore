@interface VUIAppScriptDownloadManager
+ (id)sharedInstance;
- (id)_init;
- (void)fetchAppJavascript:(id)javascript cachePolicy:(unint64_t)policy completionHandler:(id)handler;
@end

@implementation VUIAppScriptDownloadManager

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[VUIAppScriptDownloadManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_3;

  return v3;
}

void __45__VUIAppScriptDownloadManager_sharedInstance__block_invoke()
{
  v0 = [[VUIAppScriptDownloadManager alloc] _init];
  v1 = sharedInstance___sharedInstance_3;
  sharedInstance___sharedInstance_3 = v0;
}

- (id)_init
{
  v19 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VUIAppScriptDownloadManager;
  v2 = [(VUIAppScriptDownloadManager *)&v14 init];
  if (v2)
  {
    defaultSessionConfiguration = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
    v4 = [objc_alloc(MEMORY[0x1E696AF18]) initWithMemoryCapacity:0x100000 diskCapacity:52428800 diskPath:0];
    v5 = VUIDefaultLogObject(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      memoryCapacity = [v4 memoryCapacity];
      diskCapacity = [v4 diskCapacity];
      *buf = 134218240;
      v16 = memoryCapacity;
      v17 = 2048;
      v18 = diskCapacity;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "Applicaiton script download manager uses custom URL cache: mem capacity %lu disk capacity %lu", buf, 0x16u);
    }

    [defaultSessionConfiguration setURLCache:v4];
    v8 = [MEMORY[0x1E696AF78] sessionWithConfiguration:defaultSessionConfiguration];
    session = v2->_session;
    v2->_session = v8;

    [(VUIAppScriptDownloadManager *)v2 setCurrentURL:0];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(VUIAppScriptDownloadManager *)v2 setAppScriptDict:v10];

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    completionBlocksDict = v2->_completionBlocksDict;
    v2->_completionBlocksDict = v11;
  }

  return v2;
}

- (void)fetchAppJavascript:(id)javascript cachePolicy:(unint64_t)policy completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  javascriptCopy = javascript;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v10 = VUIDefaultLogObject(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      absoluteString = [javascriptCopy absoluteString];
      *buf = 138412290;
      v23 = absoluteString;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_INFO, "Prefetch application script from: %@.", buf, 0xCu);
    }
  }

  v12 = kVUIBagTVAppJetpackURL;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v14 = [_TtC8VideosUI20VUIJetPackController controllerWithBagKey:v12 defaults:standardUserDefaults urlOverrideDefaultKey:@"boot-url" withCachePolicy:policy];

  objc_initWeak(buf, self);
  getJetPackSource = [v14 getJetPackSource];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __80__VUIAppScriptDownloadManager_fetchAppJavascript_cachePolicy_completionHandler___block_invoke;
  v18[3] = &unk_1E87335D8;
  objc_copyWeak(&v21, buf);
  v16 = handlerCopy;
  v20 = v16;
  v18[4] = self;
  v17 = javascriptCopy;
  v19 = v17;
  [getJetPackSource addFinishBlock:v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

void __80__VUIAppScriptDownloadManager_fetchAppJavascript_cachePolicy_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (v5 && !v6)
  {
    v9 = [v5 source];
    v10 = VUIDefaultLogObject(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v5 url];
      v12 = [v11 absoluteString];
      *buf = 138412290;
      v31 = v12;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_INFO, "Successfully downloaded script from: %@.", buf, 0xCu);
    }

    v13 = *(a1 + 48);
    if (!v13)
    {
      if (v9)
      {
        v14 = *(a1 + 32);
        objc_sync_enter(v14);
        v15 = [v8 appScriptDict];
        [v15 setObject:v9 forKey:*(a1 + 40)];

        objc_sync_exit(v14);
      }

      goto LABEL_12;
    }

LABEL_11:
    (*(v13 + 16))(v13, v9, v6, 200);
    goto LABEL_12;
  }

  v16 = VUIDefaultLogObject(WeakRetained);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v5 url];
    v18 = [v17 absoluteString];
    v19 = [v6 description];
    *buf = 138412546;
    v31 = v18;
    v32 = 2112;
    v33 = v19;
    _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_INFO, "Failed to download application script from: %@. -- %@", buf, 0x16u);
  }

  v9 = 0;
  v13 = *(a1 + 48);
  if (v13)
  {
    goto LABEL_11;
  }

LABEL_12:
  os_unfair_lock_lock(&__completionBlocksLock);
  [v8[2] objectForKey:*(a1 + 40)];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v20 = v26 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v21)
  {
    v22 = *v26;
    do
    {
      v23 = 0;
      do
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v20);
        }

        (*(*(*(&v25 + 1) + 8 * v23) + 16))(*(*(&v25 + 1) + 8 * v23));
        ++v23;
      }

      while (v21 != v23);
      v21 = [v20 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v21);
  }

  [v20 removeAllObjects];
  os_unfair_lock_unlock(&__completionBlocksLock);
  v24 = *(a1 + 32);
  objc_sync_enter(v24);
  [v8 setCurrentURL:0];
  objc_sync_exit(v24);
}

@end