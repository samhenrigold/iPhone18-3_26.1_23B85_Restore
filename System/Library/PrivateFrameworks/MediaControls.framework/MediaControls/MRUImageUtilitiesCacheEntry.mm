@interface MRUImageUtilitiesCacheEntry
- (CGSize)fittingSize;
- (void)cancelEvictionTimer;
- (void)dealloc;
- (void)startEvictionTimer;
@end

@implementation MRUImageUtilitiesCacheEntry

- (void)startEvictionTimer
{
  v15 = *MEMORY[0x1E69E9840];
  currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
  verboseImageLoadingLogging = [currentSettings verboseImageLoadingLogging];

  if (verboseImageLoadingLogging)
  {
    v6 = MCLogCategoryDefault(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(MRUImageUtilitiesCacheEntry *)self identifier];
      *buf = 138412290;
      v14 = identifier;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] Start eviction timer for entry with id: %@", buf, 0xCu);
    }
  }

  objc_initWeak(buf, self);
  v8 = MEMORY[0x1E69B14D8];
  v9 = MEMORY[0x1E69E96A0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__MRUImageUtilitiesCacheEntry_startEvictionTimer__block_invoke;
  v11[3] = &unk_1E7663AE8;
  objc_copyWeak(&v12, buf);
  v10 = [v8 timerWithInterval:0 repeats:MEMORY[0x1E69E96A0] queue:v11 block:300.0];
  [(MRUImageUtilitiesCacheEntry *)self setEvictionTimer:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __49__MRUImageUtilitiesCacheEntry_startEvictionTimer__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[MRUImageLoaderCoordinator sharedCoordinator];
    v3 = [v2 registeredLoaderArtworkIdentifiers];
    v4 = [WeakRetained identifier];
    v5 = [v3 containsObject:v4];

    if ((v5 & 1) == 0)
    {
      v6 = [MEMORY[0x1E69B0B08] currentSettings];
      v7 = [v6 verboseImageLoadingLogging];

      if (v7)
      {
        v9 = MCLogCategoryDefault(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [WeakRetained identifier];
          v13 = 138412290;
          v14 = v10;
          _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] Evicting entry with id: %@", &v13, 0xCu);
        }
      }

      v11 = +[MRUImageUtilities cache];
      v12 = [WeakRetained identifier];
      [v11 removeObjectForKey:v12];
    }
  }
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
  verboseImageLoadingLogging = [currentSettings verboseImageLoadingLogging];

  if (verboseImageLoadingLogging)
  {
    v6 = MCLogCategoryDefault(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(MRUImageUtilitiesCacheEntry *)self identifier];
      *buf = 138412290;
      v10 = identifier;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] Dealloc entry with id: %@", buf, 0xCu);
    }
  }

  v8.receiver = self;
  v8.super_class = MRUImageUtilitiesCacheEntry;
  [(MRUImageUtilitiesCacheEntry *)&v8 dealloc];
}

- (void)cancelEvictionTimer
{
  v12 = *MEMORY[0x1E69E9840];
  evictionTimer = [(MRUImageUtilitiesCacheEntry *)self evictionTimer];

  if (evictionTimer)
  {
    currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
    verboseImageLoadingLogging = [currentSettings verboseImageLoadingLogging];

    if (verboseImageLoadingLogging)
    {
      v7 = MCLogCategoryDefault(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [(MRUImageUtilitiesCacheEntry *)self identifier];
        v10 = 138412290;
        v11 = identifier;
        _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] Cancel eviction timer for entry with id: %@", &v10, 0xCu);
      }
    }

    evictionTimer2 = [(MRUImageUtilitiesCacheEntry *)self evictionTimer];
    [evictionTimer2 invalidate];

    [(MRUImageUtilitiesCacheEntry *)self setEvictionTimer:0];
  }
}

- (CGSize)fittingSize
{
  width = self->_fittingSize.width;
  height = self->_fittingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end