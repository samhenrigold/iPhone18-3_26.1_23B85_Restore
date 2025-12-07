@interface WBSBannerTracker
+ (id)sharedTracker;
- (WBSBannerTracker)init;
- (id)_filePath;
- (void)_saveOnInteralQueue;
- (void)blockBannerForIdentifier:(id)identifier;
- (void)clear;
- (void)isBannerBlockedForIdentifier:(id)identifier completion:(id)completion;
- (void)load;
- (void)unblockBannerForIdentifier:(id)identifier;
@end

@implementation WBSBannerTracker

- (WBSBannerTracker)init
{
  v11.receiver = self;
  v11.super_class = WBSBannerTracker;
  v2 = [(WBSBannerTracker *)&v11 init];
  if (v2)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"com.apple.%@", v5];
    v7 = dispatch_queue_create([v6 UTF8String], 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v7;

    v9 = v2;
  }

  return v2;
}

- (void)load
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__WBSBannerTracker_load__block_invoke;
  block[3] = &unk_1E7FB6D90;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __24__WBSBannerTracker_load__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[1])
  {
    v3 = MEMORY[0x1E695DEF0];
    v4 = MEMORY[0x1E695DFF8];
    v5 = [v2 _filePath];
    v6 = [v4 fileURLWithPath:v5 isDirectory:0];
    v7 = [v3 dataWithContentsOfURL:v6 options:8 error:0];

    if (v7)
    {
      v18 = 0;
      v19 = 200;
      v8 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:1 format:&v19 error:&v18];
      v9 = v18;
      v10 = *(a1 + 32);
      v11 = *(v10 + 8);
      *(v10 + 8) = v8;
    }

    else
    {
      v9 = 0;
    }

    if (!*(*(a1 + 32) + 8))
    {
      v12 = [MEMORY[0x1E695DF90] dictionary];
      v13 = *(a1 + 32);
      v14 = *(v13 + 8);
      *(v13 + 8) = v12;

      if (v9)
      {
        v17 = WBS_LOG_CHANNEL_PREFIXBanners(v15, v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __24__WBSBannerTracker_load__block_invoke_cold_1(v17, v9);
        }
      }
    }
  }
}

void __29__WBSBannerTracker__filePath__block_invoke(uint64_t a1)
{
  v11 = [MEMORY[0x1E696AC08] defaultManager];
  v2 = [v11 safari_mobileSafariContainerDirectoryURL];
  v3 = [v2 path];
  v4 = [v3 stringByAppendingPathComponent:@"Library"];

  v5 = [v4 stringByAppendingPathComponent:@"WebKit"];
  [v11 _web_createDirectoryAtPathWithIntermediateDirectories:v5 attributes:0];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [*(a1 + 32) categoryName];
  v8 = [v6 stringWithFormat:@"%@.plist", v7];
  v9 = [v5 stringByAppendingPathComponent:v8];
  v10 = _filePath_path;
  _filePath_path = v9;
}

- (id)_filePath
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__WBSBannerTracker__filePath__block_invoke;
  block[3] = &unk_1E7FB6D90;
  block[4] = self;
  if (_filePath_once != -1)
  {
    dispatch_once(&_filePath_once, block);
  }

  return _filePath_path;
}

+ (id)sharedTracker
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__WBSBannerTracker_sharedTracker__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedTracker_once != -1)
  {
    dispatch_once(&sharedTracker_once, block);
  }

  v2 = sharedTracker_sharedTracker;

  return v2;
}

void __33__WBSBannerTracker_sharedTracker__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(objc_opt_class());
  v2 = sharedTracker_sharedTracker;
  sharedTracker_sharedTracker = v1;
}

- (void)clear
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__WBSBannerTracker_clear__block_invoke;
  block[3] = &unk_1E7FB6D90;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __25__WBSBannerTracker_clear__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXBanners(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEFAULT, "Clearing banner tracker plist which will reset all dismissed banners", v8, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [*(a1 + 32) _filePath];
  [v6 _web_removeFileOnlyAtPath:v7];
}

- (void)_saveOnInteralQueue
{
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = safari_privacyPreservingDescription;
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to serialize banner tracker plist: %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

- (void)isBannerBlockedForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([identifierCopy length])
  {
    [(WBSBannerTracker *)self load];
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__WBSBannerTracker_isBannerBlockedForIdentifier_completion___block_invoke;
    block[3] = &unk_1E7FB6E08;
    block[4] = self;
    v10 = identifierCopy;
    v11 = completionCopy;
    dispatch_async(internalQueue, block);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __60__WBSBannerTracker_isBannerBlockedForIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) basis];
  if (v2 == 1)
  {
    v6 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
    v7 = [v6 intValue];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__WBSBannerTracker_isBannerBlockedForIdentifier_completion___block_invoke_3;
    v11[3] = &unk_1E7FB6DE0;
    v5 = v13;
    v8 = *(a1 + 48);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v13[0] = v8;
    v11[4] = v9;
    v12 = v10;
    v13[1] = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }

  else
  {
    if (v2)
    {
      return;
    }

    v3 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
    v4 = v3 != 0;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__WBSBannerTracker_isBannerBlockedForIdentifier_completion___block_invoke_2;
    block[3] = &unk_1E7FB6DB8;
    v5 = &v15;
    v15 = *(a1 + 48);
    v16 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __60__WBSBannerTracker_isBannerBlockedForIdentifier_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) shouldBlockForIdentifier:*(a1 + 40) withDismissCount:*(a1 + 56)];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)blockBannerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    [(WBSBannerTracker *)self load];
    internalQueue = self->_internalQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__WBSBannerTracker_blockBannerForIdentifier___block_invoke;
    v6[3] = &unk_1E7FB6E30;
    v6[4] = self;
    v7 = identifierCopy;
    dispatch_async(internalQueue, v6);
  }
}

uint64_t __45__WBSBannerTracker_blockBannerForIdentifier___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) basis];
  if (v2 == 1)
  {
    v12 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
    v13 = ([v12 intValue] + 1);

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
    [*(*(a1 + 32) + 8) setObject:v14 forKeyedSubscript:*(a1 + 40)];

    v17 = WBS_LOG_CHANNEL_PREFIXBanners(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 40);
      *v20 = 138478083;
      *&v20[4] = v18;
      *&v20[12] = 2048;
      *&v20[14] = v13;
      v8 = "User has closed Banner for identifier '%{private}@' %lu time(s)";
      v9 = v17;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 22;
      goto LABEL_7;
    }
  }

  else if (!v2)
  {
    v3 = [MEMORY[0x1E695DF00] now];
    [*(*(a1 + 32) + 8) setObject:v3 forKeyedSubscript:*(a1 + 40)];

    v6 = WBS_LOG_CHANNEL_PREFIXBanners(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      *v20 = 138543362;
      *&v20[4] = v7;
      v8 = "Identifier <%{public}@> is blocked from showing banner.";
      v9 = v6;
      v10 = OS_LOG_TYPE_INFO;
      v11 = 12;
LABEL_7:
      _os_log_impl(&dword_1BB6F3000, v9, v10, v8, v20, v11);
    }
  }

  return [*(a1 + 32) _saveOnInteralQueue];
}

- (void)unblockBannerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(WBSBannerTracker *)self load];
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__WBSBannerTracker_unblockBannerForIdentifier___block_invoke;
  v7[3] = &unk_1E7FB6E30;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(internalQueue, v7);
}

void __47__WBSBannerTracker_unblockBannerForIdentifier___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];

  if (v2)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXBanners(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Identifier <%{public}@> is unblocked from showing banner.", &v7, 0xCu);
    }

    [*(*(a1 + 32) + 8) setObject:0 forKeyedSubscript:*(a1 + 40)];
    [*(a1 + 32) _saveOnInteralQueue];
  }
}

void __24__WBSBannerTracker_load__block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = v4;
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to read banner tracker plist: %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

@end