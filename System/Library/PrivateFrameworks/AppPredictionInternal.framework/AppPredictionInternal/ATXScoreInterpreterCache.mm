@interface ATXScoreInterpreterCache
+ (id)sharedInstance;
- (ATXScoreInterpreterCache)init;
- (id)_assetNamesToSkipCaching;
- (id)scoreInterpreterForConsumerSubType:(unsigned __int8)type;
- (void)dealloc;
- (void)handleMemoryPressureOfType:(unint64_t)type;
- (void)resetCache;
@end

@implementation ATXScoreInterpreterCache

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_40 != -1)
  {
    +[ATXScoreInterpreterCache sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_48;

  return v3;
}

void __42__ATXScoreInterpreterCache_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(ATXScoreInterpreterCache);
  v2 = sharedInstance__pasExprOnceResult_48;
  sharedInstance__pasExprOnceResult_48 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXScoreInterpreterCache)init
{
  v8.receiver = self;
  v8.super_class = ATXScoreInterpreterCache;
  v2 = [(ATXScoreInterpreterCache *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cachedInterpreters = v2->_cachedInterpreters;
    v2->_cachedInterpreters = v3;

    v2->_memoryPressureAllowsCaching = 1;
    mEMORY[0x277CEBC88] = [MEMORY[0x277CEBC88] sharedInstance];
    memoryPressureMonitor = v2->_memoryPressureMonitor;
    v2->_memoryPressureMonitor = mEMORY[0x277CEBC88];

    [(ATXMemoryPressureMonitor *)v2->_memoryPressureMonitor registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(ATXMemoryPressureMonitor *)self->_memoryPressureMonitor unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = ATXScoreInterpreterCache;
  [(ATXScoreInterpreterCache *)&v3 dealloc];
}

- (id)_assetNamesToSkipCaching
{
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_283A58BE0];

  return v2;
}

- (id)scoreInterpreterForConsumerSubType:(unsigned __int8)type
{
  typeCopy = type;
  v24 = *MEMORY[0x277D85DE8];
  v5 = self->_cachedInterpreters;
  objc_sync_enter(v5);
  v6 = [ATXScoreInterpreterFromAssetBuilder assetFilenameForSubType:typeCopy];
  v7 = [(NSMutableDictionary *)self->_cachedInterpreters objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = __atxlog_handle_default(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v20 = 138412546;
      v21 = v11;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "%@ - using cached score interpreter with filename: %@", &v20, 0x16u);
    }
  }

  else
  {
    v8 = [ATXScoreInterpreterFromAssetBuilder interpreterFromAssetFilename:v6];
    _assetNamesToSkipCaching = [(ATXScoreInterpreterCache *)self _assetNamesToSkipCaching];
    v13 = [_assetNamesToSkipCaching containsObject:v6];

    if ((v13 & 1) != 0 || !self->_memoryPressureAllowsCaching)
    {
      v9 = __atxlog_handle_default(v14);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v20 = 138412546;
        v21 = v18;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "%@ - skipping caching of score interpreter with filename: %@", &v20, 0x16u);
      }
    }

    else
    {
      v9 = __atxlog_handle_default([(NSMutableDictionary *)self->_cachedInterpreters setObject:v8 forKeyedSubscript:v6]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v20 = 138412546;
        v21 = v16;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "%@ - caching new score interpreter with filename: %@", &v20, 0x16u);
      }
    }
  }

  objc_sync_exit(v5);

  return v8;
}

- (void)handleMemoryPressureOfType:(unint64_t)type
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = self->_cachedInterpreters;
  v6 = objc_sync_enter(v5);
  if (type)
  {
    v7 = __atxlog_handle_default(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = ATXMemoryPressureTypeToString();
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%@ - received memory pressure notification of type %@, forbidding caching and evicting caches", &v15, 0x16u);
    }

    self->_memoryPressureAllowsCaching = 0;
    [(ATXScoreInterpreterCache *)self resetCache];
  }

  else
  {
    v11 = __atxlog_handle_default(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = ATXMemoryPressureTypeToString();
      v15 = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "%@ - received memory pressure notification of type %@, allowing caching", &v15, 0x16u);
    }

    self->_memoryPressureAllowsCaching = 1;
  }

  objc_sync_exit(v5);
}

- (void)resetCache
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = self->_cachedInterpreters;
  objc_sync_enter(v3);
  v4 = __atxlog_handle_default([(NSMutableDictionary *)self->_cachedInterpreters removeAllObjects]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%@ - removed all cached interpreters", &v7, 0xCu);
  }

  objc_sync_exit(v3);
}

@end