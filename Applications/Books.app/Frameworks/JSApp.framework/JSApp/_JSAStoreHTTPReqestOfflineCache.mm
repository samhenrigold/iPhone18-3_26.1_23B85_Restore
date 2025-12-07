@interface _JSAStoreHTTPReqestOfflineCache
+ (id)sharedOfflineCache;
- (_JSAStoreHTTPReqestOfflineCache)init;
- (id)_loadCacheFromCandidatePaths:(id)paths;
- (id)responseForKey:(id)key;
- (void)_aq_loadPostLaunchCaches;
- (void)_aq_saveOfflineCache;
- (void)_saveOfflineCache:(id)cache;
- (void)dealloc;
- (void)enumerateKeysAndObjectsUsingBlock:(id)block;
- (void)incrementPostLaunchCacheCount;
- (void)setResponse:(id)response forKey:(id)key;
@end

@implementation _JSAStoreHTTPReqestOfflineCache

+ (id)sharedOfflineCache
{
  if (qword_CC108 != -1)
  {
    sub_811CC();
  }

  v3 = qword_CC100;

  return v3;
}

- (_JSAStoreHTTPReqestOfflineCache)init
{
  v3 = JSASignpost(self);
  v4 = os_signpost_id_generate(v3);

  v6 = JSASignpost(v5);
  v7 = v6;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v7, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Load offline cache", "", buf, 2u);
  }

  v23.receiver = self;
  v23.super_class = _JSAStoreHTTPReqestOfflineCache;
  v8 = [(_JSAStoreHTTPReqestOfflineCache *)&v23 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_18;
  }

  *(v8 + 24) = -1;
  if (+[JSAOfflineCache generateCache](JSAOfflineCache, "generateCache") || +[JSAOfflineCache runFromCache])
  {
    if (+[JSAOfflineCache generateCache])
    {
      v10 = QOS_CLASS_USER_INTERACTIVE;
    }

    else
    {
      v10 = QOS_CLASS_USER_INITIATED;
    }

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, v10, 0);
    v13 = dispatch_queue_create("JSAStoreHTTPRequest.access", v12);
    accessQueue = v9->_accessQueue;
    v9->_accessQueue = v13;
  }

  if (+[JSAOfflineCache runFromCache])
  {
    v15 = +[JSAOfflineCache cacheFileCandidatesForHTTPPreLaunch];
    v16 = [(_JSAStoreHTTPReqestOfflineCache *)v9 _loadCacheFromCandidatePaths:v15];
    cache = v9->_cache;
    v9->_cache = v16;

    if (!v9->_cache)
    {
      BUReportAssertionFailureWithMessage();
      BUCrashBreakpoint();
      result = BUIsRunningTests();
      if ((result & 1) == 0)
      {
        __break(1u);
        return result;
      }

      BUCrashFinalThrow();
    }

    goto LABEL_17;
  }

  v8 = +[JSAOfflineCache generateCache];
  if (v8)
  {
    v19 = objc_opt_new();
    v20 = v9->_cache;
    v9->_cache = v19;

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v9 selector:"_saveOfflineCache:" name:UIApplicationDidEnterBackgroundNotification object:0];
LABEL_17:
  }

LABEL_18:
  v21 = JSASignpost(v8);
  v22 = v21;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v22, OS_SIGNPOST_INTERVAL_END, v4, "Load offline cache", "", buf, 2u);
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _JSAStoreHTTPReqestOfflineCache;
  [(_JSAStoreHTTPReqestOfflineCache *)&v4 dealloc];
}

- (id)_loadCacheFromCandidatePaths:(id)paths
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = paths;
  v3 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v37;
    v6 = &swift_once_ptr;
    v7 = &swift_once_ptr;
    v30 = *v37;
    while (2)
    {
      v8 = 0;
      v31 = v4;
      do
      {
        if (*v37 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v36 + 1) + 8 * v8);
        defaultManager = [v6[127] defaultManager];
        v11 = [defaultManager fileExistsAtPath:v9];

        if (v11)
        {
          v12 = v7[166];
          v35 = 0;
          v13 = [v12 dataWithContentsOfFile:v9 options:0 error:&v35];
          v14 = v35;
          v15 = v14;
          if (v13)
          {
            v33 = objc_opt_class();
            v16 = objc_opt_class();
            v17 = objc_opt_class();
            v18 = objc_opt_class();
            v19 = objc_opt_class();
            v20 = objc_opt_class();
            v29 = objc_opt_class();
            v21 = [NSSet setWithObjects:v33, v16, v17, v18, v19, v20, v29, objc_opt_class(), 0];
            objc_opt_class();
            v34 = v15;
            v22 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v21 fromData:v13 error:&v34];
            v23 = v34;

            v24 = BUDynamicCast();

            v26 = JSALog(v25);
            v27 = v26;
            if (v24)
            {
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v41 = v9;
                _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Using offline cache from %{public}@", buf, 0xCu);
              }

              goto LABEL_22;
            }

            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v41 = v9;
              v42 = 2114;
              v43 = v23;
              _os_log_error_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "Could not unarchive cache at %@ (error): %{public}@", buf, 0x16u);
            }

            v5 = v30;
            v6 = &swift_once_ptr;
            v7 = &swift_once_ptr;
          }

          else
          {
            v21 = JSALog(v14);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v41 = v9;
              _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Could not read cache file from disk: %{public}@", buf, 0xCu);
            }

            v23 = v15;
          }

          v4 = v31;
        }

        v8 = v8 + 1;
      }

      while (v4 != v8);
      v4 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
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
  block[2] = sub_11AB8;
  block[3] = &unk_B20D8;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)_aq_loadPostLaunchCaches
{
  v3 = +[NSFileManager defaultManager];
  v4 = +[JSAOfflineCache cacheDirCandidatesForHTTPPostLaunch];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_11DF4;
  v30[3] = &unk_B2AD0;
  v5 = v3;
  v31 = v5;
  v6 = [v4 indexOfObjectPassingTest:v30];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v4 objectAtIndexedSubscript:v6];
    if (v7)
    {
      v8 = v7;
      v29 = 0;
      v9 = [v5 contentsOfDirectoryAtPath:v7 error:&v29];
      v22 = v29;
      v10 = [v9 sortedArrayUsingSelector:"compare:"];

      if (!v10)
      {
        v12 = JSALog(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_811E0();
        }
      }

      v23 = v5;
      v24 = v4;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v13 = v10;
      v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v26;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v25 + 1) + 8 * i);
            if ([v18 hasSuffix:@".plist"])
            {
              v19 = [v8 stringByAppendingPathComponent:v18];
              v32 = v19;
              v20 = [NSArray arrayWithObjects:&v32 count:1];
              v21 = [(_JSAStoreHTTPReqestOfflineCache *)self _loadCacheFromCandidatePaths:v20];

              if (v21)
              {
                [(NSMutableDictionary *)self->_cache addEntriesFromDictionary:v21];
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v15);
      }

      v5 = v23;
      v4 = v24;
    }
  }
}

- (void)setResponse:(id)response forKey:(id)key
{
  responseCopy = response;
  keyCopy = key;
  if (+[JSAOfflineCache generateCache])
  {
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_11F00;
    block[3] = &unk_B2638;
    block[4] = self;
    v10 = keyCopy;
    v11 = responseCopy;
    dispatch_sync(accessQueue, block);
  }
}

- (id)responseForKey:(id)key
{
  keyCopy = key;
  if (+[JSAOfflineCache runFromCache])
  {
    v40 = +[NSDate now];
    v5 = +[NSDate now];
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = sub_12514;
    v54 = sub_12524;
    v55 = 0;
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1252C;
    block[3] = &unk_B2818;
    v49 = &v50;
    block[4] = self;
    v7 = keyCopy;
    v48 = v7;
    dispatch_sync(accessQueue, block);
    objc_opt_class();
    v8 = BUDynamicCast();
    v9 = v8;
    if (!v51[5] || v8)
    {
LABEL_22:
      v27 = +[NSDate now];
      if (v9)
      {
        v16 = [(JSAStoreHTTPResponse *)v9 copy];

        v56[0] = @"requestStartTime";
        [v40 timeIntervalSince1970];
        v29 = [NSNumber numberWithDouble:v28 * 1000.0];
        v57[0] = v29;
        v56[1] = @"responseStartTime";
        [v5 timeIntervalSince1970];
        v31 = [NSNumber numberWithDouble:v30 * 1000.0];
        v57[1] = v31;
        v56[2] = @"responseEndTime";
        [v27 timeIntervalSince1970];
        v33 = [NSNumber numberWithDouble:v32 * 1000.0];
        v56[3] = @"responseCached";
        v57[2] = v33;
        v57[3] = &__kCFBooleanTrue;
        v34 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:4];
        [v16 setPerformanceMetrics:v34];
      }

      else
      {
        v16 = 0;
      }

      _Block_object_dispose(&v50, 8);
      goto LABEL_26;
    }

    objc_opt_class();
    v10 = BUDynamicCast();
    v11 = v10;
    if (v10)
    {
      bu_gzipInflate = [v10 bu_gzipInflate];

      objc_opt_class();
      v46 = 0;
      v13 = [NSJSONSerialization JSONObjectWithData:bu_gzipInflate options:0 error:&v46];
      v39 = v46;
      v14 = BUDynamicCast();

      if (v14)
      {
        v15 = 0;
LABEL_11:

        goto LABEL_12;
      }

      v38 = objc_opt_class();
      v37 = objc_opt_class();
      v36 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = objc_opt_class();
      v19 = objc_opt_class();
      v20 = [NSSet setWithObjects:v38, v37, v36, v17, v18, v19, objc_opt_class(), 0];
      objc_opt_class();
      v45 = 0;
      v21 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v20 fromData:bu_gzipInflate error:&v45];
      v15 = v45;
      v14 = BUDynamicCast();

      if (v14)
      {
        goto LABEL_11;
      }

      v25 = JSALog(v22);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_81250();
      }

      v24 = v39;
    }

    else
    {
      objc_opt_class();
      v14 = BUDynamicCast();
      if (v14)
      {
        bu_gzipInflate = 0;
LABEL_12:
        v23 = [[JSAStoreHTTPResponse alloc] initWithDictionary:v14];
LABEL_21:
        v26 = self->_accessQueue;
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_1257C;
        v41[3] = &unk_B2638;
        v9 = v23;
        v42 = v9;
        selfCopy = self;
        v44 = v7;
        dispatch_sync(v26, v41);

        goto LABEL_22;
      }

      v24 = JSALog(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_812C0();
      }

      bu_gzipInflate = 0;
    }

    v14 = 0;
    v23 = 0;
    goto LABEL_21;
  }

  v16 = 0;
LABEL_26:

  return v16;
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)block
{
  blockCopy = block;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_12634;
  v7[3] = &unk_B2728;
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
  block[2] = sub_127DC;
  block[3] = &unk_B20D8;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)_aq_saveOfflineCache
{
  v3 = +[NSFileManager defaultManager];
  v4 = +[JSAOfflineCache cachePath];
  [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];

  v5 = 0;
  v6 = 0;
  if ([(NSMutableDictionary *)self->_cache count])
  {
    v17 = sub_80900(&self->super.isa);
    v19 = 0;
    v5 = [NSKeyedArchiver archivedDataWithRootObject:v17 requiringSecureCoding:1 error:&v19];
    v6 = v19;
  }

  if (self->_postLaunchCacheCount < 0)
  {
    v8 = +[JSAOfflineCache cacheFileCandidatesForHTTPPreLaunch];
    v11 = [v8 objectAtIndexedSubscript:0];
  }

  else
  {
    v7 = +[JSAOfflineCache cacheDirCandidatesForHTTPPostLaunch];
    v8 = [v7 objectAtIndexedSubscript:0];

    if (v8)
    {
      v9 = +[NSFileManager defaultManager];
      [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];

      v10 = [NSString stringWithFormat:@"%02ld.plist", self->_postLaunchCacheCount];
      v11 = [v8 stringByAppendingPathComponent:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  if (!v5 || !v11)
  {
    v16 = JSALog(v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_81370();
    }

    v14 = v6;
    goto LABEL_16;
  }

  v18 = v6;
  v13 = [v5 writeToFile:v11 options:1 error:&v18];
  v14 = v18;

  if ((v13 & 1) == 0)
  {
    v16 = JSALog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_813E0();
    }

LABEL_16:
  }
}

@end