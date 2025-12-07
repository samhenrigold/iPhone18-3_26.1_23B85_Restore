@interface _ATXAppDailyDoseCurrentStore
- (BOOL)isExpiredAt:(id)at;
- (BOOL)isExpiredNow;
- (_ATXAppDailyDoseCurrentStore)initWithPath:(id)path;
- (double)currentDoseFor:(id)for;
- (id)_getCacheFromFile;
- (void)_overwrite;
- (void)_readCacheAndExpiration;
- (void)closePermanently;
- (void)dealloc;
- (void)increaseDoseFor:(id)for by:(double)by;
- (void)resetWithDurationMap:(id)map on:(id)on;
@end

@implementation _ATXAppDailyDoseCurrentStore

- (_ATXAppDailyDoseCurrentStore)initWithPath:(id)path
{
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = _ATXAppDailyDoseCurrentStore;
  v6 = [(_ATXAppDailyDoseCurrentStore *)&v14 init];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    uTF8String = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(uTF8String, v10);
    queue = v6->_queue;
    v6->_queue = v11;

    objc_storeStrong(&v6->_path, path);
    [(_ATXAppDailyDoseCurrentStore *)v6 _openFd];
  }

  return v6;
}

- (void)dealloc
{
  [(_ATXAppDailyDoseCurrentStore *)self closePermanently];
  v3.receiver = self;
  v3.super_class = _ATXAppDailyDoseCurrentStore;
  [(_ATXAppDailyDoseCurrentStore *)&v3 dealloc];
}

- (void)closePermanently
{
  p_fd = &self->_fd;
  v3 = atomic_load(&self->_fd);
  v4 = v3;
  atomic_compare_exchange_strong(p_fd, &v4, 0xFFFFFFFF);
  if (v4 == v3 && (v4 & 0x80000000) == 0)
  {
    close(v4);
  }
}

- (void)_overwrite
{
  v26[3] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_autoreleasePoolPush();
  v26[0] = &unk_283A55EF8;
  v25[0] = @"version";
  v25[1] = @"expires";
  v4 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_expires timeIntervalSinceReferenceDate];
  v5 = [v4 numberWithDouble:?];
  v25[2] = @"doses";
  cache = self->_cache;
  v26[1] = v5;
  v26[2] = cache;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];

  v22 = 0;
  v8 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v7 options:0 error:&v22];
  v9 = v22;
  v10 = v9;
  if (!v8)
  {
    v15 = __atxlog_handle_default(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24[0] = v10;
      v19 = "Could not serialize daily dose: %@";
      v20 = v15;
      v21 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  p_fd = &self->_fd;
  v12 = atomic_load(p_fd);
  ftruncate(v12, 0);
  LODWORD(p_fd) = atomic_load(p_fd);
  v13 = pwrite(p_fd, [v8 bytes], objc_msgSend(v8, "length"), 0);
  v14 = [v8 length];
  if (v13 != v14)
  {
    v15 = __atxlog_handle_default(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *__error();
      v17 = __error();
      v18 = strerror(*v17);
      *buf = 67109378;
      LODWORD(v24[0]) = v16;
      WORD2(v24[0]) = 2080;
      *(v24 + 6) = v18;
      v19 = "Could not write daily dose (errno=%i): %s";
      v20 = v15;
      v21 = 18;
LABEL_7:
      _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:

  objc_autoreleasePoolPop(v3);
}

- (void)_readCacheAndExpiration
{
  v33 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_autoreleasePoolPush();
  cache = self->_cache;
  self->_cache = 0;

  expires = self->_expires;
  self->_expires = 0;

  v7 = atomic_load(&self->_fd);
  if ((v7 & 0x80000000) != 0 || (v8 = atomic_load(&self->_fd), readWholeFile(v8, 0), (v6 = objc_claimAutoreleasedReturnValue()) == 0) && (v9 = atomic_load(&self->_fd), close(v9), [(_ATXAppDailyDoseCurrentStore *)self _openFd], v10 = atomic_load(&self->_fd), readWholeFile(v10, 1), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14 = __atxlog_handle_default(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *__error();
      *buf = 67109120;
      LODWORD(v32) = v23;
      _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "Could not read daily dose (errno=%i)", buf, 8u);
    }

    v11 = 0;
    goto LABEL_17;
  }

  v11 = v6;
  if ([v6 length])
  {
    v30 = 0;
    v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v11 options:1 error:&v30];
    v13 = v30;
    v14 = v13;
    if (v12)
    {
      v15 = [v12 objectForKeyedSubscript:@"version"];
      integerValue = [v15 integerValue];

      if (integerValue != 1)
      {
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      v17 = [v12 objectForKeyedSubscript:@"doses"];
      v18 = self->_cache;
      self->_cache = v17;

      v19 = [v12 objectForKeyedSubscript:@"expires"];
      p_super = &v19->super;
      if (v19)
      {
        v21 = MEMORY[0x277CBEAA8];
        [(NSDate *)v19 doubleValue];
        v19 = [v21 dateWithTimeIntervalSinceReferenceDate:?];
      }

      v22 = self->_expires;
      self->_expires = v19;
    }

    else
    {
      p_super = __atxlog_handle_default(v13);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v14;
        _os_log_impl(&dword_2263AA000, p_super, OS_LOG_TYPE_DEFAULT, "Could not parse daily dose: %@", buf, 0xCu);
      }
    }

    goto LABEL_16;
  }

LABEL_18:
  if (!self->_cache || (v24 = self->_expires) == 0 || ([(NSDate *)v24 timeIntervalSinceNow], v25 < 0.0))
  {
    v26 = objc_opt_new();
    v27 = self->_cache;
    self->_cache = v26;

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v29 = self->_expires;
    self->_expires = distantPast;
  }

  objc_autoreleasePoolPop(v3);
}

- (id)_getCacheFromFile
{
  dispatch_assert_queue_V2(self->_queue);
  cache = self->_cache;
  if (!cache)
  {
    [(_ATXAppDailyDoseCurrentStore *)self _readCacheAndExpiration];
    cache = self->_cache;
  }

  return cache;
}

- (BOOL)isExpiredAt:(id)at
{
  atCopy = at;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44___ATXAppDailyDoseCurrentStore_isExpiredAt___block_invoke;
  block[3] = &unk_27859B1C0;
  v9 = atCopy;
  v10 = &v11;
  block[4] = self;
  v6 = atCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (BOOL)isExpiredNow
{
  v3 = objc_opt_new();
  LOBYTE(self) = [(_ATXAppDailyDoseCurrentStore *)self isExpiredAt:v3];

  return self;
}

- (void)resetWithDurationMap:(id)map on:(id)on
{
  mapCopy = map;
  onCopy = on;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56___ATXAppDailyDoseCurrentStore_resetWithDurationMap_on___block_invoke;
  block[3] = &unk_278597828;
  block[4] = self;
  v12 = mapCopy;
  v13 = onCopy;
  v9 = onCopy;
  v10 = mapCopy;
  dispatch_sync(queue, block);
}

- (double)currentDoseFor:(id)for
{
  forCopy = for;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47___ATXAppDailyDoseCurrentStore_currentDoseFor___block_invoke;
  block[3] = &unk_27859A8B0;
  v10 = forCopy;
  v11 = &v12;
  block[4] = self;
  v6 = forCopy;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)increaseDoseFor:(id)for by:(double)by
{
  forCopy = for;
  sel_getName(a2);
  v8 = os_transaction_create();
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51___ATXAppDailyDoseCurrentStore_increaseDoseFor_by___block_invoke;
  v12[3] = &unk_278599FF0;
  v12[4] = self;
  v13 = forCopy;
  byCopy = by;
  v14 = v8;
  v10 = v8;
  v11 = forCopy;
  dispatch_sync(queue, v12);
}

@end