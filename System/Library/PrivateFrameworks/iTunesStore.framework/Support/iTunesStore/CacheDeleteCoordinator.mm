@interface CacheDeleteCoordinator
+ (id)sharedInstance;
- (BOOL)_isStale;
- (CacheDeleteCoordinator)init;
- (id)_periodic:(id)_periodic urgency:(int)urgency;
- (id)_purchaseHistoryCache;
- (id)_purge:(id)_purge urgency:(int)urgency;
- (id)_purgeable:(id)_purgeable urgency:(int)urgency;
- (int64_t)_targetVolumeFromString:(id)string;
- (unint64_t)_currentPurgeable;
- (void)_cancelPurge;
- (void)_pushUpdatedAvailableStorage;
- (void)_refreshPurgeableStorage;
- (void)dealloc;
- (void)registerCacheDeleteInfoCallbacks;
- (void)updatePurgeableStorage;
@end

@implementation CacheDeleteCoordinator

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D0700;
  block[3] = &unk_100327170;
  block[4] = self;
  if (qword_100383E70 != -1)
  {
    dispatch_once(&qword_100383E70, block);
  }

  v2 = qword_100383E68;

  return v2;
}

- (CacheDeleteCoordinator)init
{
  v7.receiver = self;
  v7.super_class = CacheDeleteCoordinator;
  v2 = [(CacheDeleteCoordinator *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.itunesstored.CacheDeleteCoordinator.dispatch", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    [(CacheDeleteCoordinator *)v2 registerCacheDeleteInfoCallbacks];
  }

  return v2;
}

- (void)dealloc
{
  scheduledTimer = [(CacheDeleteCoordinator *)self scheduledTimer];

  if (scheduledTimer)
  {
    scheduledTimer2 = [(CacheDeleteCoordinator *)self scheduledTimer];
    dispatch_source_cancel(scheduledTimer2);
  }

  v5.receiver = self;
  v5.super_class = CacheDeleteCoordinator;
  [(CacheDeleteCoordinator *)&v5 dealloc];
}

- (void)registerCacheDeleteInfoCallbacks
{
  objc_initWeak(&location, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000D0BF8;
  v21[3] = &unk_1003281F0;
  objc_copyWeak(&v22, &location);
  v14 = objc_retainBlock(v21);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000D0C64;
  v19[3] = &unk_1003281F0;
  objc_copyWeak(&v20, &location);
  v2 = objc_retainBlock(v19);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000D0CD0;
  v17[3] = &unk_100328150;
  objc_copyWeak(&v18, &location);
  v3 = objc_retainBlock(v17);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D0D10;
  v15[3] = &unk_1003281F0;
  objc_copyWeak(&v16, &location);
  v4 = objc_retainBlock(v15);
  v5 = CacheDeleteRegisterInfoCallbacks();
  v6 = +[SSLogConfig sharedConfig];
  LODWORD(v7) = [v6 shouldLog];
  shouldLogToDisk = [v6 shouldLogToDisk];
  oSLogObject = [v6 OSLogObject];
  v10 = oSLogObject;
  if (shouldLogToDisk)
  {
    LODWORD(v7) = v7 | 2;
  }

  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  v11 = objc_opt_class();
  v24 = 138412802;
  v25 = v11;
  v26 = 2112;
  v27 = off_100382AC0;
  v28 = 1024;
  v29 = v5;
  v12 = v11;
  v13 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v10, 0, "[%@]: Registered cache delete callbacks for clienID: %@ with osResult: %d", &v24, 28);

  if (v13)
  {
    v10 = [NSString stringWithCString:v13 encoding:4];
    free(v13);
    SSFileLog();
LABEL_9:
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)updatePurgeableStorage
{
  scheduledTimer = [(CacheDeleteCoordinator *)self scheduledTimer];

  if (!scheduledTimer)
  {
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    [(CacheDeleteCoordinator *)self setScheduledTimer:v4];

    scheduledTimer2 = [(CacheDeleteCoordinator *)self scheduledTimer];
    v6 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(scheduledTimer2, v6, 0xFFFFFFFFFFFFFFFFLL, 0);

    scheduledTimer3 = [(CacheDeleteCoordinator *)self scheduledTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000D0E9C;
    handler[3] = &unk_100327110;
    handler[4] = self;
    dispatch_source_set_event_handler(scheduledTimer3, handler);

    scheduledTimer4 = [(CacheDeleteCoordinator *)self scheduledTimer];
    dispatch_resume(scheduledTimer4);
  }
}

- (void)_cancelPurge
{
  v2 = +[SSLogConfig sharedConfig];
  shouldLog = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = shouldLog | 2;
  }

  else
  {
    LODWORD(v4) = shouldLog;
  }

  oSLogObject = [v2 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  v8 = 138412290;
  v9 = objc_opt_class();
  v6 = v9;
  v7 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "[%@]: Requested cancel purge for service", &v8, 12);

  if (v7)
  {
    oSLogObject = [NSString stringWithCString:v7 encoding:4];
    free(v7);
    SSFileLog();
LABEL_10:
  }
}

- (unint64_t)_currentPurgeable
{
  v2 = objc_alloc_init(SSAppPurchaseHistoryCache);
  purgeableSpace = [v2 purgeableSpace];
  if (+[ISURLOperation sharedCFURLCache])
  {
    +[ISURLOperation sharedCFURLCache];
    purgeableSpace += CFURLCacheCurrentDiskUsage();
  }

  return purgeableSpace;
}

- (BOOL)_isStale
{
  Current = CFAbsoluteTimeGetCurrent();
  lastUpdate = self->_lastUpdate;
  return Current - lastUpdate > 3600.0 || lastUpdate == 0.0;
}

- (id)_periodic:(id)_periodic urgency:(int)urgency
{
  _periodicCopy = _periodic;
  v6 = [_periodicCopy objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v7 = [_periodicCopy objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  v8 = +[SSLogConfig sharedConfig];
  shouldLog = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    LODWORD(v10) = shouldLog | 2;
  }

  else
  {
    LODWORD(v10) = shouldLog;
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v10;
  }

  else
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v19 = 138412802;
    v20 = objc_opt_class();
    v21 = 2112;
    v22 = v7;
    v23 = 2048;
    urgencyCopy = urgency;
    v12 = v20;
    v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "[%@]: Requested to periodic purge %@ with urgency %ld", &v19, 32);

    if (!v13)
    {
      goto LABEL_11;
    }

    oSLogObject = [NSString stringWithCString:v13 encoding:4];
    free(v13);
    SSFileLog();
  }

LABEL_11:
  v17[1] = @"CACHE_DELETE_AMOUNT";
  v18[0] = v6;
  v17[0] = @"CACHE_DELETE_VOLUME";
  v14 = [NSNumber numberWithInteger:0];
  v18[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

  return v15;
}

- (id)_purchaseHistoryCache
{
  purchaseHistoryCache = self->__purchaseHistoryCache;
  if (!purchaseHistoryCache)
  {
    v4 = objc_alloc_init(SSAppPurchaseHistoryCache);
    v5 = self->__purchaseHistoryCache;
    self->__purchaseHistoryCache = v4;

    purchaseHistoryCache = self->__purchaseHistoryCache;
  }

  return purchaseHistoryCache;
}

- (id)_purge:(id)_purge urgency:(int)urgency
{
  _purgeCopy = _purge;
  v7 = [_purgeCopy objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v8 = [_purgeCopy objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  if ([(CacheDeleteCoordinator *)self _targetVolumeFromString:v7]== 2)
  {
    unsignedLongLongValue = [v8 unsignedLongLongValue];
    _currentPurgeable = [(CacheDeleteCoordinator *)self _currentPurgeable];
    _purchaseHistoryCache = [(CacheDeleteCoordinator *)self _purchaseHistoryCache];
    [_purchaseHistoryCache purge:unsignedLongLongValue];

    if (+[ISURLOperation sharedCFURLCache])
    {
      +[ISURLOperation sharedCFURLCache];
      CFURLCacheRemoveAllCachedResponses();
    }

    v12 = _currentPurgeable - [(CacheDeleteCoordinator *)self _currentPurgeable];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    selfCopy->_lastUpdate = 0.0;
    combinedSpaceByUrgency = selfCopy->_combinedSpaceByUrgency;
    selfCopy->_combinedSpaceByUrgency = 0;

    objc_sync_exit(selfCopy);
    v15 = +[SSLogConfig sharedConfig];
    shouldLog = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      LODWORD(v17) = shouldLog | 2;
    }

    else
    {
      LODWORD(v17) = shouldLog;
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v17;
    }

    else
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v27 = 138413058;
      v28 = objc_opt_class();
      v29 = 2112;
      v30 = v8;
      v31 = 2048;
      v32 = v12;
      v33 = 2048;
      urgencyCopy = urgency;
      v19 = v28;
      v20 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "[%@]: Purge requested: %@ actual purge: %lld with urgency: %ld", &v27, 42);

      if (!v20)
      {
LABEL_14:

        goto LABEL_16;
      }

      oSLogObject = [NSString stringWithCString:v20 encoding:4];
      free(v20);
      v24 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_14;
  }

  v12 = 0;
LABEL_16:
  v25[1] = @"CACHE_DELETE_AMOUNT";
  v26[0] = v7;
  v25[0] = @"CACHE_DELETE_VOLUME";
  v21 = [NSNumber numberWithUnsignedLongLong:v12, v24];
  v26[1] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];

  return v22;
}

- (id)_purgeable:(id)_purgeable urgency:(int)urgency
{
  v4 = *&urgency;
  _purgeableCopy = _purgeable;
  v7 = [_purgeableCopy objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  if ([(CacheDeleteCoordinator *)self _targetVolumeFromString:v7]!= 2)
  {
    unsignedLongLongValue = 0;
    goto LABEL_30;
  }

  v8 = +[SSLogConfig sharedConfig];
  shouldLog = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    LODWORD(v10) = shouldLog | 2;
  }

  else
  {
    LODWORD(v10) = shouldLog;
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v10;
  }

  else
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v34 = 138412546;
    v35 = objc_opt_class();
    v36 = 2048;
    v37 = v4;
    v12 = v35;
    v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "[%@]: Requested purgeable with urgency: %ld", &v34, 22);

    if (v13)
    {
      v14 = [NSString stringWithCString:v13 encoding:4];
      free(v13);
      v30 = v14;
      SSFileLog();
    }
  }

  else
  {
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_combinedSpaceByUrgency || [(CacheDeleteCoordinator *)selfCopy _isStale])
  {
    [(CacheDeleteCoordinator *)selfCopy _refreshPurgeableStorage];
  }

  combinedSpaceByUrgency = selfCopy->_combinedSpaceByUrgency;
  v18 = [NSNumber numberWithInt:v4, v30];
  v19 = [(NSDictionary *)combinedSpaceByUrgency objectForKey:v18];

  if (v19)
  {
    unsignedLongLongValue = [v19 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  objc_sync_exit(selfCopy);
  v20 = +[SSLogConfig sharedConfig];
  shouldLog2 = [v20 shouldLog];
  if ([v20 shouldLogToDisk])
  {
    LODWORD(v22) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v22) = shouldLog2;
  }

  oSLogObject2 = [v20 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v22;
  }

  else
  {
    v22 &= 2u;
  }

  if (!v22)
  {
    goto LABEL_28;
  }

  v24 = objc_opt_class();
  v34 = 138412802;
  v35 = v24;
  v36 = 2048;
  v37 = unsignedLongLongValue;
  v38 = 2048;
  v39 = v4;
  v25 = v24;
  LODWORD(v31) = 32;
  v26 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "[%@]: Total purgeable is %lld bytes for urgency: %ld", &v34, v31);

  if (v26)
  {
    oSLogObject2 = [NSString stringWithCString:v26 encoding:4];
    free(v26);
    v30 = oSLogObject2;
    SSFileLog();
LABEL_28:
  }

LABEL_30:
  v32[0] = @"CACHE_DELETE_VOLUME";
  v32[1] = @"CACHE_DELETE_AMOUNT";
  v33[0] = v7;
  v27 = [NSNumber numberWithLongLong:unsignedLongLongValue, v30];
  v33[1] = v27;
  v28 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];

  return v28;
}

- (void)_pushUpdatedAvailableStorage
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(CacheDeleteCoordinator *)self _refreshPurgeableStorage];
  scheduledTimer = [(CacheDeleteCoordinator *)self scheduledTimer];

  if (scheduledTimer)
  {
    scheduledTimer2 = [(CacheDeleteCoordinator *)self scheduledTimer];
    dispatch_source_cancel(scheduledTimer2);

    [(CacheDeleteCoordinator *)self setScheduledTimer:0];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  combinedSpaceByUrgency = selfCopy->_combinedSpaceByUrgency;
  if (combinedSpaceByUrgency)
  {
    v7 = [(NSDictionary *)combinedSpaceByUrgency copy];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(selfCopy);

  if (v7)
  {
    v21[0] = @"CACHE_DELETE_ID";
    v21[1] = @"CACHE_DELETE_VOLUME";
    v22[0] = off_100382AC0;
    v22[1] = @"/private/var/mobile";
    v21[2] = @"CACHE_DELETE_AMOUNT";
    v22[2] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
    CacheDeleteUpdatePurgeable();
    v9 = +[SSLogConfig sharedConfig];
    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v15 = 138412802;
      v16 = objc_opt_class();
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = @"/private/var/mobile";
      v13 = v16;
      v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "[%@]: Pushed combined purgeable amounts: %@ volume: %@", &v15, 32);

      if (!v14)
      {
LABEL_17:

        goto LABEL_18;
      }

      oSLogObject = [NSString stringWithCString:v14 encoding:4];
      free(v14);
      SSFileLog();
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (void)_refreshPurgeableStorage
{
  v3 = +[SSLogConfig sharedConfig];
  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v19 = 138412290;
    v20 = objc_opt_class();
    v7 = v20;
    v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "[%@]: Refreshing purgeable storage", &v19, 12);

    if (v8)
    {
      v9 = [NSString stringWithCString:v8 encoding:4];
      free(v8);
      v18 = v9;
      SSFileLog();
    }
  }

  else
  {
  }

  _currentPurgeable = [(CacheDeleteCoordinator *)self _currentPurgeable];
  v11 = objc_opt_new();
  v12 = 1;
  do
  {
    v13 = [NSNumber numberWithLongLong:_currentPurgeable, v18];
    v14 = [NSNumber numberWithInt:v12];
    [v11 setObject:v13 forKey:v14];

    v12 = (v12 + 1);
  }

  while (v12 != 5);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = [v11 copy];
  combinedSpaceByUrgency = selfCopy->_combinedSpaceByUrgency;
  selfCopy->_combinedSpaceByUrgency = v16;

  selfCopy->_lastUpdate = CFAbsoluteTimeGetCurrent();
  objc_sync_exit(selfCopy);
}

- (int64_t)_targetVolumeFromString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy && ([stringCopy isEqualToString:@"/private/var"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"/private/var/mobile"])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

@end