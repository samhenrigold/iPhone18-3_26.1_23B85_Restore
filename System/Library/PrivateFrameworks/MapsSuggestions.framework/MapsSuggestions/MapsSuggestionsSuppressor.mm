@interface MapsSuggestionsSuppressor
- (BOOL)_loadSuppressedEntries;
- (BOOL)isSuppressedEntry:(id)entry;
- (BOOL)loadSuppressedEntries;
- (BOOL)saveSuppressedEntries;
- (BOOL)suppressEntry:(id)entry forTime:(double)time;
- (MapsSuggestionsSuppressor)init;
- (MapsSuggestionsSuppressor)initWithFilePath:(id)path;
- (NSString)uniqueName;
- (id)test_dateUntilSuppressedEntry:(id)entry;
- (uint64_t)_loadSuppressedEntries;
- (uint64_t)_saveSuppressedEntries;
- (void)_loadSuppressedEntries;
- (void)_saveSuppressedEntries;
- (void)awaitQueue;
- (void)purge;
- (void)test_deleteSuppressedEntriesFile;
@end

@implementation MapsSuggestionsSuppressor

- (MapsSuggestionsSuppressor)init
{
  v3 = MapsSuggestionsPathForSuppressedEntries(self);
  v4 = [(MapsSuggestionsSuppressor *)self initWithFilePath:v3];

  return v4;
}

- (BOOL)_loadSuppressedEntries
{
  v27 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v2 = (self + 16);
  if (!*(self + 16))
  {
    [MapsSuggestionsSuppressor _loadSuppressedEntries];
    return 0;
  }

  innerQueue = [*(self + 24) innerQueue];
  dispatch_assert_queue_V2(innerQueue);

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:*(self + 16)];

  if (v5)
  {
    v6 = *v2;
    v22 = 0;
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v6 options:0 error:&v22];
    v8 = v22;
    if (v8)
    {
      [MapsSuggestionsSuppressor _loadSuppressedEntries];
      v9 = 0;
    }

    else if (v7)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v11 = objc_alloc(MEMORY[0x1E695DFD8]);
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = [v11 initWithObjects:{v12, v13, objc_opt_class(), 0}];
      v21 = 0;
      v15 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v14 fromData:v7 error:&v21];
      v16 = v21;
      v17 = selfCopy[1];
      selfCopy[1] = v15;

      v9 = v16 == 0;
      if (v16)
      {
        v18 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v24 = "[MapsSuggestionsSuppressor _loadSuppressedEntries]";
          v25 = 2112;
          v26 = v16;
          _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, "%s failed with error: %@", buf, 0x16u);
        }

        [selfCopy[1] removeAllObjects];
      }

      else
      {
        v19 = GEOFindOrCreateLog();
        [(MapsSuggestionsSuppressor *)v19 _loadSuppressedEntries];
      }

      objc_sync_exit(selfCopy);
    }

    else
    {
      [(MapsSuggestionsSuppressor *)self _loadSuppressedEntries];
      v9 = 1;
    }
  }

  else
  {
    [(MapsSuggestionsSuppressor *)self _loadSuppressedEntries];
    return 1;
  }

  return v9;
}

- (void)_loadSuppressedEntries
{
  v0 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_6();
    _os_log_impl(v1, v2, v3, v4, v5, 0x26u);
  }
}

- (BOOL)loadSuppressedEntries
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__MapsSuggestionsSuppressor_loadSuppressedEntries__block_invoke;
  v4[3] = &unk_1E81F82A0;
  v4[4] = self;
  return [(MapsSuggestionsQueue *)queue syncBOOLReturningBlock:v4];
}

- (uint64_t)_saveSuppressedEntries
{
  selfCopy = self;
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = self[2] == 0;
    v3 = *MEMORY[0x1E69A1B08];
    v4 = GEOFindOrCreateLog();
    v5 = v4;
    if (v2)
    {
      [(MapsSuggestionsSuppressor *)v4 _saveSuppressedEntries];
      v10 = *buf;
      selfCopy = v15;
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = *(selfCopy + 8);
        *buf = 138412290;
        *&buf[4] = v6;
        _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_INFO, "Suppressed Entries writing to file are %@", buf, 0xCu);
      }

      v7 = selfCopy;
      objc_sync_enter(v7);
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = v7[1];
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_INFO, "Suppressed Entries writing to file are %@", buf, 0xCu);
      }

      v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7[1] requiringSecureCoding:1 error:0];
      objc_sync_exit(v7);

      v11 = *(selfCopy + 16);
      v14 = 0;
      selfCopy = [v10 writeToFile:v11 options:0 error:&v14];
      v12 = v14;
      if ((selfCopy & 1) == 0)
      {
        [(MapsSuggestionsSuppressor *)v3 _saveSuppressedEntries];
      }
    }
  }

  return selfCopy;
}

- (void)purge
{
  [(MapsSuggestionsSuppressor *)self loadSuppressedEntries];
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__MapsSuggestionsSuppressor_purge__block_invoke;
  v4[3] = &unk_1E81F6168;
  v4[4] = self;
  [(MapsSuggestionsQueue *)queue syncBlock:v4];
  [(MapsSuggestionsSuppressor *)self saveSuppressedEntries];
}

void __34__MapsSuggestionsSuppressor_purge__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(*(a1 + 32) + 8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __34__MapsSuggestionsSuppressor_purge__block_invoke_19;
    v13[3] = &unk_1E81F8278;
    v4 = v2;
    v14 = v4;
    [v3 enumerateKeysAndObjectsUsingBlock:v13];
    v5 = [v4 mutableCopy];
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    *(v6 + 8) = v5;

    v8 = v14;
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = *(*(a1 + 32) + 8);
      *buf = 134217984;
      v16 = v10;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_FAULT, "_suppressionEntries is not a NSDictionary:<%p>", buf, 0xCu);
    }

    v11 = [v2 mutableCopy];
    v12 = *(a1 + 32);
    v8 = *(v12 + 8);
    *(v12 + 8) = v11;
  }
}

- (BOOL)saveSuppressedEntries
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__MapsSuggestionsSuppressor_saveSuppressedEntries__block_invoke;
  v4[3] = &unk_1E81F82A0;
  v4[4] = self;
  return [(MapsSuggestionsQueue *)queue syncBOOLReturningBlock:v4];
}

- (MapsSuggestionsSuppressor)initWithFilePath:(id)path
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = MapsSuggestionsSuppressor;
  v5 = [(MapsSuggestionsSuppressor *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    suppressionEntries = v5->_suppressionEntries;
    v5->_suppressionEntries = v6;

    v8 = [pathCopy copy];
    suppressionEntriesFilePath = v5->_suppressionEntriesFilePath;
    v5->_suppressionEntriesFilePath = v8;

    v10 = [[MapsSuggestionsQueue alloc] initSerialQueueWithName:@"MapsSuggestionsSuppressorQueue"];
    queue = v5->_queue;
    v5->_queue = v10;

    [(MapsSuggestionsSuppressor *)v5 loadSuppressedEntries];
  }

  return v5;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (BOOL)isSuppressedEntry:(id)entry
{
  entryCopy = entry;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__MapsSuggestionsSuppressor_isSuppressedEntry___block_invoke;
  v8[3] = &unk_1E81F8250;
  v8[4] = self;
  v9 = entryCopy;
  v6 = entryCopy;
  LOBYTE(queue) = [(MapsSuggestionsQueue *)queue syncBOOLReturningBlock:v8];

  return queue;
}

BOOL __47__MapsSuggestionsSuppressor_isSuppressedEntry___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) uniqueIdentifier];
  v3 = [v1 objectForKeyedSubscript:v2];

  if (v3)
  {
    v4 = MapsSuggestionsIsInTheFuture(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)suppressEntry:(id)entry forTime:(double)time
{
  entryCopy = entry;
  v7 = MapsSuggestionsNowWithOffset(time);
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__MapsSuggestionsSuppressor_suppressEntry_forTime___block_invoke;
  v16[3] = &unk_1E81F5D00;
  v16[4] = self;
  v9 = v7;
  v17 = v9;
  v10 = entryCopy;
  v18 = v10;
  [(MapsSuggestionsQueue *)queue syncBlock:v16];
  objc_initWeak(&location, self);
  v11 = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__MapsSuggestionsSuppressor_suppressEntry_forTime___block_invoke_17;
  v13[3] = &unk_1E81F53E8;
  objc_copyWeak(&v14, &location);
  [(MapsSuggestionsQueue *)v11 asyncBlock:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return 1;
}

void __51__MapsSuggestionsSuppressor_suppressEntry_forTime___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = [*(a1 + 48) uniqueIdentifier];
  [v3 setObject:v2 forKey:v4];

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_INFO, "Suppressed Entries about to write to file are : %@", &v7, 0xCu);
  }
}

void __51__MapsSuggestionsSuppressor_suppressEntry_forTime___block_invoke_17(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsSuppressor *)WeakRetained _saveSuppressedEntries];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsSuppressor.m";
      v6 = 1026;
      v7 = 80;
      v8 = 2082;
      v9 = "[MapsSuggestionsSuppressor suppressEntry:forTime:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void __34__MapsSuggestionsSuppressor_purge__block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (MapsSuggestionsIsInTheFuture(v5))
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

- (void)test_deleteSuppressedEntriesFile
{
  queue = self->_queue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__MapsSuggestionsSuppressor_test_deleteSuppressedEntriesFile__block_invoke;
  v3[3] = &unk_1E81F6168;
  v3[4] = self;
  [(MapsSuggestionsQueue *)queue syncBlock:v3];
}

void __61__MapsSuggestionsSuppressor_test_deleteSuppressedEntriesFile__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = *(*(a1 + 32) + 16);
  v5 = 0;
  [v2 removeItemAtPath:v3 error:&v5];
  v4 = v5;

  if ([*(*(a1 + 32) + 8) count])
  {
    [*(*(a1 + 32) + 8) removeAllObjects];
  }
}

- (id)test_dateUntilSuppressedEntry:(id)entry
{
  v20 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v5 = entryCopy;
  if (entryCopy)
  {
    queue = self->_queue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__MapsSuggestionsSuppressor_test_dateUntilSuppressedEntry___block_invoke;
    v10[3] = &unk_1E81F82C8;
    v10[4] = self;
    v11 = entryCopy;
    v7 = [(MapsSuggestionsQueue *)queue syncReturningBlock:v10];
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSuppressor.m";
      v14 = 1024;
      v15 = 204;
      v16 = 2082;
      v17 = "[MapsSuggestionsSuppressor test_dateUntilSuppressedEntry:]";
      v18 = 2082;
      v19 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", buf, 0x26u);
    }

    v7 = 0;
  }

  return v7;
}

id __59__MapsSuggestionsSuppressor_test_dateUntilSuppressedEntry___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) uniqueIdentifier];
  v3 = [v1 objectForKeyedSubscript:v2];

  return v3;
}

- (void)awaitQueue
{
  innerQueue = [(MapsSuggestionsQueue *)self->_queue innerQueue];
  dispatch_barrier_sync(innerQueue, &__block_literal_global_37);
}

- (void)_saveSuppressedEntries
{
  v14 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(self, OS_LOG_TYPE_ERROR))
  {
    v6 = 136446978;
    v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSuppressor.m";
    v8 = 1024;
    v9 = 153;
    v10 = 2082;
    v11 = "[MapsSuggestionsSuppressor _saveSuppressedEntries]";
    v12 = 2082;
    v13 = "nil == (_suppressionEntriesFilePath)";
    _os_log_impl(&dword_1C5126000, self, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires file path to be set", &v6, 0x26u);
  }

  *a3 = 0;
  *a2 = self;
}

- (uint64_t)_loadSuppressedEntries
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a2;
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Suppressed entries file '%{public}@' does not exist. Nothing to load", &v7, 0xCu);
  }

  return [*(self + 8) removeAllObjects];
}

@end