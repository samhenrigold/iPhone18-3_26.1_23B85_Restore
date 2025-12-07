@interface BKRecentBookOpenResultTracker
+ (id)_cachePath;
+ (void)removeCache;
- (BKRecentBookOpenResultTracker)init;
- (BOOL)shouldAutoOpenAsset:(id)asset;
- (id)_loadCache;
- (id)_mutableResultsForAsset:(id)asset;
- (void)_addEvent:(id)event forAsset:(id)asset;
- (void)openDidFinishForAsset:(id)asset;
- (void)openDidStartForAsset:(id)asset;
- (void)save;
@end

@implementation BKRecentBookOpenResultTracker

- (BKRecentBookOpenResultTracker)init
{
  v7.receiver = self;
  v7.super_class = BKRecentBookOpenResultTracker;
  v2 = [(BKRecentBookOpenResultTracker *)&v7 init];
  v3 = v2;
  if (v2)
  {
    _loadCache = [(BKRecentBookOpenResultTracker *)v2 _loadCache];
    cache = v3->_cache;
    v3->_cache = _loadCache;
  }

  return v3;
}

- (id)_loadCache
{
  v2 = +[BKRecentBookOpenResultTracker _cachePath];
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:v2 isDirectory:0];

  v6 = 0;
  if (!v4)
  {
    goto LABEL_15;
  }

  v7 = [NSURL fileURLWithPath:v2];
  if (v7)
  {
    v18 = 0;
    v8 = [NSData dataWithContentsOfURL:v7 options:0 error:&v18];
    v6 = v18;
    if (v8)
    {
      v9 = [_TtC5Books10BKLRUCache unarchiveFrom:v8];
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v11 = off_100ACD348;
        v19 = NSLocalizedDescriptionKey;
        v20 = @"Failed to unarchive cache";
        v12 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        v13 = [NSError errorWithDomain:v11 code:30 userInfo:v12];

        v10 = 0;
        v6 = v13;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v6 = [NSError errorWithDomain:off_100ACD348 code:20 userInfo:0];
    v10 = 0;
  }

  if (v6)
  {
    v14 = sub_100026E38(v5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10078CD14();
    }
  }

  if (!v10)
  {
LABEL_15:
    v15 = sub_100026E38(v5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Creating new cache", v17, 2u);
    }

    v10 = [[_TtC5Books10BKLRUCache alloc] initWithCapacity:10];
  }

  return v10;
}

+ (id)_cachePath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];
  v4 = [lastObject stringByAppendingPathComponent:@"BKRecentOpenResultsCache_v20250815"];

  return v4;
}

- (id)_mutableResultsForAsset:(id)asset
{
  v3 = [(BKRecentBookOpenResultTracker *)self resultsForAsset:asset];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mutableCopy];
  }

  else
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:3];
  }

  v6 = v5;

  return v6;
}

- (void)openDidStartForAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy length])
  {
    v5 = +[BKUserActivityManager sharedInstance];
    isInBackground = [v5 isInBackground];

    if (!isInBackground)
    {
      v13 = [BKRecentBookOpenTrackingEvent eventForStart:1];
      [(BKRecentBookOpenResultTracker *)self _addEvent:v13 forAsset:assetCopy];

      goto LABEL_10;
    }

    v8 = sub_100026E38(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 0;
      v9 = "Ignoring asset open start in background";
      v10 = &v14;
      v11 = v8;
      v12 = OS_LOG_TYPE_INFO;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v11, v12, v9, v10, 2u);
    }
  }

  else
  {
    v8 = sub_100026E38(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Asset has no ID.";
      v10 = buf;
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_7;
    }
  }

LABEL_10:
}

- (void)openDidFinishForAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy length])
  {
    v5 = [BKRecentBookOpenTrackingEvent eventForStart:0];
    [(BKRecentBookOpenResultTracker *)self _addEvent:v5 forAsset:assetCopy];
  }

  else
  {
    v6 = sub_100026E38(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Asset has no ID.", v7, 2u);
    }
  }
}

- (BOOL)shouldAutoOpenAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy length])
  {
    v5 = [(BKRecentBookOpenResultTracker *)self resultsForAsset:assetCopy];
    lastObject = [v5 lastObject];
    v7 = lastObject;
    v8 = lastObject == 0;
    if (!lastObject)
    {
      v20 = sub_100026E38(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28[0]) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Asset has no recent open events.", v28, 2u);
      }

      goto LABEL_20;
    }

    if ([lastObject isStart])
    {
      timestamp = [v7 timestamp];
      [timestamp timeIntervalSinceNow];
      v11 = fabs(v10);

      if (v11 <= 300.0)
      {
        v20 = sub_100026E38(v12);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10078CC94(v20, v21, v22);
        }

        goto LABEL_20;
      }

      v13 = [v5 count];
      v14 = 0;
      v15 = (v13 - 1);
      v16 = &v13[-((v13 - 1) & ((v13 - 1) >> 63))];
      while (v15-- >= 1)
      {
        v18 = [v5 objectAtIndexedSubscript:v15];
        isStart = [v18 isStart];

        ++v14;
        if ((isStart & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v14 = v16;
LABEL_17:
      if (v14 >= 3)
      {
        v20 = sub_100026E38(v13);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10078CCD4(v20, v23, v24);
        }

LABEL_20:

LABEL_22:
        goto LABEL_23;
      }
    }

    v8 = 1;
    goto LABEL_22;
  }

  v5 = sub_100026E38(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v28[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asset has no ID.", v28, 2u);
  }

  v8 = 0;
LABEL_23:

  v26 = sub_100026E38(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v28[0] = 67240192;
    v28[1] = v8;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Recommending auto-open? %{public}d", v28, 8u);
  }

  return v8;
}

- (void)_addEvent:(id)event forAsset:(id)asset
{
  eventCopy = event;
  assetCopy = asset;
  v7 = [(BKRecentBookOpenResultTracker *)self _mutableResultsForAsset:assetCopy];
  if ([v7 count] >= 3)
  {
    [v7 removeObjectAtIndex:0];
  }

  [v7 addObject:eventCopy];
  [(BKLRUCache *)self->_cache setObject:v7 forKey:assetCopy];

  [(BKRecentBookOpenResultTracker *)self save];
}

- (void)save
{
  v3 = +[BKRecentBookOpenResultTracker _cachePath];
  cache = self->_cache;
  v9 = 0;
  v5 = [NSKeyedArchiver archivedDataWithRootObject:cache requiringSecureCoding:1 error:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = v6;
    v8 = sub_100026E38(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10078CD84();
    }

LABEL_7:

    goto LABEL_8;
  }

  if (([v5 writeToFile:v3 atomically:1] & 1) == 0)
  {
    v7 = [NSError errorWithDomain:off_100ACD348 code:30 userInfo:0];
    v8 = sub_100026E38(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10078CDF4();
    }

    goto LABEL_7;
  }

LABEL_8:
}

+ (void)removeCache
{
  v2 = +[BKRecentBookOpenResultTracker _cachePath];
  v3 = +[NSFileManager defaultManager];
  if ([v3 fileExistsAtPath:v2 isDirectory:0])
  {
    v4 = +[NSFileManager defaultManager];
    v8 = 0;
    [v4 removeItemAtPath:v2 error:&v8];
    v5 = v8;

    if (v5)
    {
      v7 = sub_100026E38(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10078CE64();
      }
    }
  }
}

@end