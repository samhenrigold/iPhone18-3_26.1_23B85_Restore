@interface _TUIResourceLoaderOfflineCache
+ (id)sharedOfflineCache;
- (NSURLCache)urlCache;
- (_TUIResourceLoaderOfflineCache)init;
- (id)_loadCacheFromCandidatePaths:(id)paths;
- (id)valueForKey:(id)key;
- (void)_aq_loadPostLaunchCaches;
- (void)_aq_saveOfflineCache;
- (void)_saveOfflineCache:(id)cache;
- (void)dealloc;
- (void)enumerateKeysAndObjectsUsingBlock:(id)block;
- (void)incrementPostLaunchCacheCount;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation _TUIResourceLoaderOfflineCache

+ (id)sharedOfflineCache
{
  if (qword_2E6330 != -1)
  {
    sub_19A2B4();
  }

  v3 = qword_2E6328;

  return v3;
}

- (_TUIResourceLoaderOfflineCache)init
{
  v30.receiver = self;
  v30.super_class = _TUIResourceLoaderOfflineCache;
  v2 = [(_TUIResourceLoaderOfflineCache *)&v30 init];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  v4 = TUISignpostDefault(v2);
  v5 = os_signpost_id_make_with_pointer(v4, v3);

  v7 = TUISignpostDefault(v6);
  v8 = v7;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Load offline cache", "", buf, 2u);
  }

  v3->_postLaunchCacheCount = -1;
  v9 = +[TUIOfflineCache provider];
  v3->_generateOfflineCache = [v9 generateCache];
  runFromCache = [v9 runFromCache];
  v3->_runFromOfflineCache = runFromCache;
  if ((v3->_generateOfflineCache || runFromCache) && (v14 = dispatch_queue_create("TUIResourceLoader.access", 0), accessQueue = v3->_accessQueue, v3->_accessQueue = v14, accessQueue, v3->_runFromOfflineCache))
  {
    cacheFileCandidatesForPreLaunch = [v9 cacheFileCandidatesForPreLaunch];
    v16 = [(_TUIResourceLoaderOfflineCache *)v3 _loadCacheFromCandidatePaths:cacheFileCandidatesForPreLaunch];
    cache = v3->_cache;
    v3->_cache = v16;

    if (v3->_cache)
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [NSString stringWithFormat:@"%@-OfflineCache", v19];

      v21 = [[NSURLCache alloc] initWithMemoryCapacity:79155201 diskCapacity:0 diskPath:v20];
      urlCache = v3->_urlCache;
      v3->_urlCache = v21;

      [(NSURLCache *)v3->_urlCache removeAllCachedResponses];
      v23 = v3->_cache;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_900B0;
      v27[3] = &unk_2607F0;
      v28 = v3;
      [(NSMutableDictionary *)v23 enumerateKeysAndObjectsUsingBlock:v27];
    }
  }

  else
  {
    if (!v3->_generateOfflineCache)
    {
      goto LABEL_13;
    }

    v11 = objc_opt_new();
    v12 = v3->_cache;
    v3->_cache = v11;

    cacheFileCandidatesForPreLaunch = +[NSNotificationCenter defaultCenter];
    [cacheFileCandidatesForPreLaunch addObserver:v3 selector:"_saveOfflineCache:" name:UIApplicationDidEnterBackgroundNotification object:0];
  }

LABEL_13:
  v24 = TUISignpostDefault(runFromCache);
  v25 = v24;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v25, OS_SIGNPOST_INTERVAL_END, v5, "Load offline cache", "", buf, 2u);
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _TUIResourceLoaderOfflineCache;
  [(_TUIResourceLoaderOfflineCache *)&v4 dealloc];
}

- (NSURLCache)urlCache
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_902A0;
  v10 = sub_902B0;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_902B8;
  v5[3] = &unk_25EFF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_loadCacheFromCandidatePaths:(id)paths
{
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = paths;
  v3 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v34;
    v6 = &_AXSApplicationAccessibilityEnabled_ptr;
    while (2)
    {
      v7 = 0;
      v29 = v4;
      do
      {
        if (*v34 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * v7);
        defaultManager = [v6[449] defaultManager];
        v10 = [defaultManager fileExistsAtPath:v8];

        if (v10)
        {
          v32 = 0;
          v11 = [NSData dataWithContentsOfFile:v8 options:0 error:&v32];
          v12 = v32;
          v13 = v12;
          if (v11)
          {
            v14 = v5;
            v15 = objc_opt_class();
            v16 = objc_opt_class();
            v17 = objc_opt_class();
            v18 = objc_opt_class();
            v19 = [NSSet setWithObjects:v15, v16, v17, v18, objc_opt_class(), 0];
            v20 = objc_opt_class();
            v31 = v13;
            v21 = v11;
            v22 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v19 fromData:v11 error:&v31];
            v23 = v31;

            v24 = TUIDynamicCast(v20, v22);

            v26 = TUIInstallBundleLog(v25);
            v27 = v26;
            if (v24)
            {
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v38 = v8;
                _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Using offline cache for TUI from %{public}@", buf, 0xCu);
              }

              goto LABEL_22;
            }

            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v38 = v8;
              v39 = 2114;
              v40 = v23;
              _os_log_error_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "Could not unarchive cache at %@ (error): %{public}@", buf, 0x16u);
            }

            v5 = v14;
            v6 = &_AXSApplicationAccessibilityEnabled_ptr;
            v4 = v29;
            v11 = v21;
          }

          else
          {
            v19 = TUIInstallBundleLog(v12);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v38 = v8;
              _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "Could not read cache file from disk: %{public}@", buf, 0xCu);
            }

            v23 = v13;
          }
        }

        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v24 = 0;
LABEL_22:

  return v24;
}

- (void)incrementPostLaunchCacheCount
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_906CC;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)_aq_loadPostLaunchCaches
{
  v3 = +[NSFileManager defaultManager];
  v4 = +[TUIOfflineCache provider];
  cacheDirCandidatesForPostLaunch = [v4 cacheDirCandidatesForPostLaunch];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_90A78;
  v33[3] = &unk_260818;
  v6 = v3;
  v34 = v6;
  v7 = [cacheDirCandidatesForPostLaunch indexOfObjectPassingTest:v33];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [cacheDirCandidatesForPostLaunch objectAtIndexedSubscript:v7];
    if (v8)
    {
      v9 = v8;
      v32 = 0;
      v10 = [v6 contentsOfDirectoryAtPath:v8 error:&v32];
      v24 = v32;
      v11 = [v10 sortedArrayUsingSelector:"compare:"];

      if (!v11)
      {
        v13 = TUIInstallBundleLog(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_19A2C8();
        }
      }

      v25 = v6;
      v26 = cacheDirCandidatesForPostLaunch;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v14 = v11;
      v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v29;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v28 + 1) + 8 * i);
            if ([v19 hasSuffix:@".plist"])
            {
              v20 = v9;
              v21 = [v9 stringByAppendingPathComponent:v19];
              v35 = v21;
              v22 = [NSArray arrayWithObjects:&v35 count:1];
              v23 = [(_TUIResourceLoaderOfflineCache *)self _loadCacheFromCandidatePaths:v22];

              if (v23)
              {
                [(NSMutableDictionary *)self->_cache addEntriesFromDictionary:v23];
                v27[0] = _NSConcreteStackBlock;
                v27[1] = 3221225472;
                v27[2] = sub_90AB0;
                v27[3] = &unk_2607F0;
                v27[4] = self;
                [v23 enumerateKeysAndObjectsUsingBlock:v27];
              }

              v9 = v20;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v16);
      }

      v6 = v25;
      cacheDirCandidatesForPostLaunch = v26;
    }
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (self->_generateOfflineCache)
  {
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_90C1C;
    block[3] = &unk_25E7C0;
    block[4] = self;
    v10 = objectCopy;
    v11 = keyCopy;
    dispatch_async(accessQueue, block);
  }
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  v6 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_902A0;
  v17 = sub_902B0;
  v18 = 0;
  if (self->_runFromOfflineCache)
  {
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_90D5C;
    block[3] = &unk_25ED40;
    v12 = &v13;
    block[4] = self;
    v11 = keyCopy;
    dispatch_sync(accessQueue, block);

    v6 = v14[5];
  }

  v8 = v6;
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)block
{
  blockCopy = block;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_90E44;
  v7[3] = &unk_25EA78;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(accessQueue, v7);
}

- (void)_saveOfflineCache:(id)cache
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_90EC4;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)_aq_saveOfflineCache
{
  v3 = +[TUIOfflineCache provider];
  if ([(NSMutableDictionary *)self->_cache count])
  {
    cache = self->_cache;
    v18 = 0;
    v5 = [NSKeyedArchiver archivedDataWithRootObject:cache requiringSecureCoding:1 error:&v18];
    v6 = v18;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (self->_postLaunchCacheCount < 0)
  {
    cacheFileCandidatesForPreLaunch = [v3 cacheFileCandidatesForPreLaunch];
    v11 = [cacheFileCandidatesForPreLaunch objectAtIndexedSubscript:0];
  }

  else
  {
    cacheDirCandidatesForPostLaunch = [v3 cacheDirCandidatesForPostLaunch];
    cacheFileCandidatesForPreLaunch = [cacheDirCandidatesForPostLaunch objectAtIndexedSubscript:0];

    if (cacheFileCandidatesForPreLaunch)
    {
      v9 = +[NSFileManager defaultManager];
      [v9 createDirectoryAtPath:cacheFileCandidatesForPreLaunch withIntermediateDirectories:1 attributes:0 error:0];

      v10 = [NSString stringWithFormat:@"%02ld.plist", self->_postLaunchCacheCount];
      v11 = [cacheFileCandidatesForPreLaunch stringByAppendingPathComponent:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  if (!v5 || !v11)
  {
    v16 = TUIInstallBundleLog(v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_19A330();
    }

    v14 = v6;
    goto LABEL_17;
  }

  v17 = v6;
  v13 = [v5 writeToFile:v11 options:1 error:&v17];
  v14 = v17;

  if ((v13 & 1) == 0)
  {
    v16 = TUIInstallBundleLog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_19A398();
    }

LABEL_17:
  }
}

@end