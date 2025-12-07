@interface BLCacheDeleteService
+ (void)registerCacheDeleteInfoCallbacks:(id)callbacks;
- (BLCacheDeletePurgeableProvider)purgeableProvider;
- (BLCacheDeleteService)initWithPurgeableProvider:(id)provider;
- (id)_periodic:(id)_periodic urgency:(int)urgency;
- (id)_purge:(id)_purge urgency:(int)urgency;
- (id)_purgeable:(id)_purgeable urgency:(int)urgency;
- (void)_cancelPurge;
@end

@implementation BLCacheDeleteService

- (BLCacheDeleteService)initWithPurgeableProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = BLCacheDeleteService;
  v5 = [(BLCacheDeleteService *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(BLCacheDelete);
    cacheDelete = v5->_cacheDelete;
    v5->_cacheDelete = v6;

    objc_storeWeak(&v5->_purgeableProvider, providerCopy);
  }

  return v5;
}

+ (void)registerCacheDeleteInfoCallbacks:(id)callbacks
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100095638;
  block[3] = &unk_10011D180;
  callbacksCopy = callbacks;
  v3 = qword_10013EC08;
  v4 = callbacksCopy;
  if (v3 != -1)
  {
    dispatch_once(&qword_10013EC08, block);
  }
}

- (id)_purgeable:(id)_purgeable urgency:(int)urgency
{
  v4 = *&urgency;
  v6 = [_purgeable objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v8 = sub_100095C60(v4, v7);
  v9 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    v19 = 1752392040;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Requested purgeable amount for volume %{mask.hash}@.", buf, 0x16u);
  }

  purgeableProvider = [(BLCacheDeleteService *)self purgeableProvider];
  v11 = [purgeableProvider purgeableForVolume:v6 urgency:v8];

  v12 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v19 = v11;
    v20 = 2160;
    v21 = 1752392040;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Able to purge %ld for volume %{mask.hash}@.", buf, 0x20u);
  }

  v13 = [NSNumber numberWithInteger:v11, @"CACHE_DELETE_VOLUME", @"CACHE_DELETE_AMOUNT", v6];
  v17[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:&v16 count:2];

  return v14;
}

- (id)_purge:(id)_purge urgency:(int)urgency
{
  v4 = *&urgency;
  _purgeCopy = _purge;
  v7 = [_purgeCopy objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v8 = [_purgeCopy objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  v10 = sub_100095C60(v4, v9);
  v11 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v27 = v8;
    v28 = 2048;
    v29 = v4;
    v30 = 2160;
    v31 = 1752392040;
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Requested to purge %@ with urgency %ld for volume %{mask.hash}@.", buf, 0x2Au);
  }

  cacheDelete = [(BLCacheDeleteService *)self cacheDelete];
  v13 = [cacheDelete purgeVolume:v7 urgency:v10 requested:v8];

  v14 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v27 = v13;
    v28 = 2160;
    v29 = 1752392040;
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Purged %ld for volume %{mask.hash}@.", buf, 0x20u);
  }

  if (v13 >= 1)
  {
    v25[0] = @"purge";
    v24[0] = BLSharedStorageUseChangedSourceKey;
    v24[1] = off_10013E318;
    v15 = [NSNumber numberWithInt:v4];
    v25[1] = v15;
    v25[2] = v7;
    v24[2] = off_10013E320;
    v24[3] = off_10013E328;
    v25[3] = v8;
    v24[4] = off_10013E330;
    v16 = [NSNumber numberWithInteger:v13];
    v25[4] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:5];

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 postNotificationName:BLSharedStorageUseChangedNotification object:v17];
  }

  v19 = [NSNumber numberWithInteger:v13, @"CACHE_DELETE_VOLUME", @"CACHE_DELETE_AMOUNT", v7];
  v23[1] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v23 forKeys:&v22 count:2];

  return v20;
}

- (id)_periodic:(id)_periodic urgency:(int)urgency
{
  v4 = *&urgency;
  _periodicCopy = _periodic;
  v7 = [_periodicCopy objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v8 = [_periodicCopy objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  v10 = sub_100095C60(v4, v9);
  v11 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v27 = v8;
    v28 = 2048;
    v29 = v4;
    v30 = 2160;
    v31 = 1752392040;
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Requested to periodic purge %@ with urgency %ld for volume %{mask.hash}@.", buf, 0x2Au);
  }

  cacheDelete = [(BLCacheDeleteService *)self cacheDelete];
  v13 = [cacheDelete periodicPurgeVolume:v7 urgency:v10 requested:v8];

  v14 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Purged %ld.", buf, 0xCu);
  }

  if (v13 >= 1)
  {
    v25[0] = @"periodic";
    v24[0] = BLSharedStorageUseChangedSourceKey;
    v24[1] = off_10013E318;
    v15 = [NSNumber numberWithInt:v4];
    v25[1] = v15;
    v25[2] = v7;
    v24[2] = off_10013E320;
    v24[3] = off_10013E328;
    v25[3] = v8;
    v24[4] = off_10013E330;
    v16 = [NSNumber numberWithInteger:v13];
    v25[4] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:5];

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 postNotificationName:BLSharedStorageUseChangedNotification object:0 userInfo:v17];
  }

  v19 = [NSNumber numberWithInteger:v13, @"CACHE_DELETE_VOLUME", @"CACHE_DELETE_AMOUNT", v7];
  v23[1] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v23 forKeys:&v22 count:2];

  return v20;
}

- (void)_cancelPurge
{
  cacheDelete = [(BLCacheDeleteService *)self cacheDelete];
  [cacheDelete cancelPurge];
}

- (BLCacheDeletePurgeableProvider)purgeableProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_purgeableProvider);

  return WeakRetained;
}

@end