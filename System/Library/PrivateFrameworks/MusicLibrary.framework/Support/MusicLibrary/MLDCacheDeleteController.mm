@interface MLDCacheDeleteController
+ (unint64_t)_cacheDeleteUrgencyToMusicLibraryUrgency:(int)urgency;
- ($06626BA963112C91E7E52BBD3AECAE4D)_calculateUsageAnalytics;
- (BOOL)_isMediaVolume:(id)volume;
- (MLDCacheDeleteController)initWithLibraries:(id)libraries;
- (__CFDictionary)_handlePurgeRequestWithUrgency:(int)urgency info:(__CFDictionary *)info;
- (__CFDictionary)_handlePurgeableRequestWithUrgency:(int)urgency info:(__CFDictionary *)info;
- (void)_addOptimizeStorageAnalyticsToPayload:(id)payload;
- (void)_addPurgeAnalytics:(id *)analytics toPayload:(id)payload;
- (void)_addPurgeableAnalytics:(id *)analytics toPayload:(id)payload;
- (void)_addUsageAnalytics:(id *)analytics toPayload:(id)payload;
- (void)_handleCacheDeleteNotification:(__CFDictionary *)notification;
- (void)_reconcileAllOriginalArtworkForLibrary:(id)library withCompletion:(id)completion;
- (void)_reconcileOrginalArtworkWitRelativePaths:(id)paths forLibrary:(id)library withCompletion:(id)completion;
- (void)_reconcilePurgeNotification;
- (void)_registerCacheDeleteHandler;
- (void)_reportCacheDeletePurgeEventWithUrgency:(int)urgency amountRequested:(unint64_t)requested amountPurged:(unint64_t)purged duration:(double)duration;
- (void)_reportCacheDeletePurgeableRequestWithUrgency:(int)urgency purgeableAmount:(unint64_t)amount duration:(double)duration;
- (void)_updatePurgedOriginalWithRelativePath:(id)path forLibrary:(id)library usingConnection:(id)connection;
@end

@implementation MLDCacheDeleteController

- (void)_addPurgeableAnalytics:(id *)analytics toPayload:(id)payload
{
  var0 = analytics->var0;
  payloadCopy = payload;
  v7 = [NSNumber numberWithDouble:var0];
  [payloadCopy setObject:v7 forKeyedSubscript:@"Duration"];

  v8 = [NSNumber numberWithUnsignedLongLong:analytics->var1];
  [payloadCopy setObject:v8 forKeyedSubscript:@"Urgency"];

  v9 = [NSNumber numberWithUnsignedLongLong:analytics->var2 >> 20];
  [payloadCopy setObject:v9 forKeyedSubscript:@"MBPurgeableReported"];
}

- (void)_addPurgeAnalytics:(id *)analytics toPayload:(id)payload
{
  var0 = analytics->var0;
  payloadCopy = payload;
  v7 = [NSNumber numberWithDouble:var0];
  [payloadCopy setObject:v7 forKeyedSubscript:@"Duration"];

  v8 = [NSNumber numberWithUnsignedLongLong:analytics->var1];
  [payloadCopy setObject:v8 forKeyedSubscript:@"Urgency"];

  v9 = [NSNumber numberWithUnsignedLongLong:analytics->var2 >> 20];
  [payloadCopy setObject:v9 forKeyedSubscript:@"MBRequested"];

  v10 = [NSNumber numberWithUnsignedLongLong:analytics->var3 >> 20];
  [payloadCopy setObject:v10 forKeyedSubscript:@"MBPurged"];

  v11 = [NSNumber numberWithUnsignedLongLong:(analytics->var4 + analytics->var3) >> 20];
  [payloadCopy setObject:v11 forKeyedSubscript:@"MBPurgeableBefore"];

  v12 = [NSNumber numberWithUnsignedLongLong:analytics->var4 >> 20];
  [payloadCopy setObject:v12 forKeyedSubscript:@"MBPurgeableAfter"];
}

- (void)_addUsageAnalytics:(id *)analytics toPayload:(id)payload
{
  payloadCopy = payload;
  v5 = [NSNumber numberWithUnsignedLongLong:analytics->var0 >> 20];
  [payloadCopy setObject:v5 forKeyedSubscript:@"MBTotalRedownloadablePinned"];

  v6 = [NSNumber numberWithUnsignedLongLong:analytics->var1 >> 20];
  [payloadCopy setObject:v6 forKeyedSubscript:@"MBNonRedownloadable"];

  v7 = [NSNumber numberWithUnsignedLongLong:analytics->var2 >> 20];
  [payloadCopy setObject:v7 forKeyedSubscript:@"MBArtwork"];

  var3 = analytics->var3;
  if (var3)
  {
    [NSNumber numberWithUnsignedLongLong:var3 >> 20];
  }

  else
  {
    +[NSNull null];
  }
  v9 = ;
  [payloadCopy setObject:v9 forKeyedSubscript:@"MBTotal"];

  var4 = analytics->var4;
  if (var4)
  {
    [NSNumber numberWithUnsignedLongLong:var4 >> 20];
  }

  else
  {
    +[NSNull null];
  }
  v11 = ;
  [payloadCopy setObject:v11 forKeyedSubscript:@"MBFree"];
}

- (void)_addOptimizeStorageAnalyticsToPayload:(id)payload
{
  payloadCopy = payload;
  v3 = +[ML3MusicLibrary shouldOptimizeStorage];
  v4 = [NSNumber numberWithBool:v3];
  [payloadCopy setObject:v4 forKeyedSubscript:@"OptimizeStorageEnabled"];

  if (v3)
  {
    v5 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", +[ML3MusicLibrary minimumPurgeableStorage]);
    [payloadCopy setObject:v5 forKeyedSubscript:@"OptimizeStorageSetting"];
  }
}

- (void)_reportCacheDeletePurgeableRequestWithUrgency:(int)urgency purgeableAmount:(unint64_t)amount duration:(double)duration
{
  v9 = os_transaction_create();
  eventReportingQueue = self->_eventReportingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000093D8;
  block[3] = &unk_100031318;
  v14 = fabs(duration);
  urgencyCopy = urgency;
  amountCopy = amount;
  block[4] = self;
  v13 = v9;
  v11 = v9;
  dispatch_async(eventReportingQueue, block);
}

- (void)_reportCacheDeletePurgeEventWithUrgency:(int)urgency amountRequested:(unint64_t)requested amountPurged:(unint64_t)purged duration:(double)duration
{
  v11 = os_transaction_create();
  eventReportingQueue = self->_eventReportingQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000096E8;
  v14[3] = &unk_1000312C8;
  durationCopy = duration;
  urgencyCopy = urgency;
  requestedCopy = requested;
  purgedCopy = purged;
  v14[4] = self;
  v15 = v11;
  v13 = v11;
  dispatch_async(eventReportingQueue, v14);
}

- (BOOL)_isMediaVolume:(id)volume
{
  volumeCopy = volume;
  bzero(&v12, 0x878uLL);
  v4 = +[ML3MusicLibrary mediaFolderPath];
  v5 = statfs([v4 UTF8String], &v12);

  if (v5)
  {
    v6 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = +[ML3MusicLibrary mediaFolderPath];
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to fetch mount stats for path %{public}@", &v10, 0xCu);
    }

    LOBYTE(v8) = 0;
  }

  else
  {
    v6 = [NSString stringWithUTF8String:v12.f_mntonname];
    v8 = [volumeCopy isEqualToString:v6];
  }

  return v8;
}

- ($06626BA963112C91E7E52BBD3AECAE4D)_calculateUsageAnalytics
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x4810000000;
  v20 = &unk_10002B6DD;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  libraries = self->_libraries;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100009EAC;
  v16[3] = &unk_100031278;
  v16[4] = &v17;
  [(NSArray *)libraries enumerateObjectsUsingBlock:v16];
  v5 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v6 = +[NSFileManager defaultManager];
  lastObject = [v5 lastObject];
  v8 = [v6 attributesOfFileSystemForPath:lastObject error:0];

  if (v8)
  {
    v9 = [v8 objectForKey:NSFileSystemSize];
    longLongValue = [v9 longLongValue];
    v18[7] = longLongValue;

    v11 = [v8 objectForKey:NSFileSystemFreeSize];
    longLongValue2 = [v11 longLongValue];
    v18[8] = longLongValue2;
  }

  v13 = v18;
  v14 = *(v18 + 3);
  *&retstr->var0 = *(v18 + 2);
  *&retstr->var2 = v14;
  retstr->var4 = v13[8];

  _Block_object_dispose(&v17, 8);
  return result;
}

- (void)_handleCacheDeleteNotification:(__CFDictionary *)notification
{
  v5 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    notificationCopy = notification;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received CacheDelete notification: %{public}@", buf, 0xCu);
  }

  v6 = [(__CFDictionary *)notification objectForKey:@"CACHE_DELETE_CACHE_ENABLED"];
  bOOLValue = [v6 BOOLValue];

  v8 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
  v9 = os_log_type_enabled(&v8->super, OS_LOG_TYPE_DEFAULT);
  if (bOOLValue)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &v8->super, OS_LOG_TYPE_DEFAULT, "CacheDelete has re-enabled caching - issue a change notification", buf, 2u);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = self->_libraries;
    v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * i) notifyContentsDidChange];
        }

        v11 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }

  else if (v9)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &v8->super, OS_LOG_TYPE_DEFAULT, "CacheDelete has disabled caching", buf, 2u);
  }
}

- (__CFDictionary)_handlePurgeRequestWithUrgency:(int)urgency info:(__CFDictionary *)info
{
  v44 = [objc_opt_class() _cacheDeleteUrgencyToMusicLibraryUrgency:*&urgency];
  v7 = [(__CFDictionary *)info objectForKey:@"CACHE_DELETE_AMOUNT"];
  longLongValue = [v7 longLongValue];

  v9 = [(__CFDictionary *)info objectForKey:@"CACHE_DELETE_VOLUME"];
  LODWORD(info) = [(MLDCacheDeleteController *)self _isMediaVolume:v9];
  v10 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (info)
  {
    if (v11)
    {
      *buf = 67109378;
      *v56 = urgency;
      *&v56[4] = 2114;
      *&v56[6] = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received purge request with urgency %u for volume '%{public}@'", buf, 0x12u);
    }

    urgencyCopy = urgency;
    v43 = v9;

    +[ML3MusicLibrary clearCloudAssetSharedCache];
    v40 = +[NSDate date];
    selfCopy = self;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = self->_libraries;
    v12 = [(NSArray *)obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (!v12)
    {
      v14 = 0;
      goto LABEL_27;
    }

    v13 = v12;
    v14 = 0;
    v15 = "com.apple.amp.medialibraryd";
    v16 = "CacheManagement";
    v17 = *v49;
    while (1)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(obj);
        }

        if (v14 < longLongValue)
        {
          v19 = *(*(&v48 + 1) + 8 * i);
          databasePath = [v19 databasePath];
          if (databasePath && (v21 = databasePath, +[NSFileManager defaultManager](NSFileManager, "defaultManager"), v22 = objc_claimAutoreleasedReturnValue(), [v19 databasePath], v47 = v19, v23 = v17, v24 = v14, v25 = v13, v26 = v16, v27 = longLongValue, v28 = v15, v29 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v22, "fileExistsAtPath:", v29), v29, v15 = v28, longLongValue = v27, v16 = v26, v13 = v25, v14 = v24, v17 = v23, v19 = v47, v22, v21, v46))
          {
            v30 = os_log_create(v15, v16);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              databasePath2 = [v47 databasePath];
              *buf = 138543362;
              *v56 = databasePath2;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Begin purge for library %{public}@", buf, 0xCu);

              v19 = v47;
            }

            v14 += [v19 clearPurgeableStorageAmount:longLongValue withUrgency:v44];
            v32 = os_log_create(v15, v16);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              databasePath3 = [v19 databasePath];
              *buf = 138543362;
              *v56 = databasePath3;
              v34 = v32;
              v35 = OS_LOG_TYPE_DEFAULT;
              v36 = "End purge for library %{public}@";
              goto LABEL_18;
            }
          }

          else
          {
            v32 = os_log_create(v15, v16);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              databasePath3 = [v19 databasePath];
              *buf = 138543362;
              *v56 = databasePath3;
              v34 = v32;
              v35 = OS_LOG_TYPE_ERROR;
              v36 = "Skipping purge for library with missing database at path=%{public}@.";
LABEL_18:
              _os_log_impl(&_mh_execute_header, v34, v35, v36, buf, 0xCu);
            }
          }

          continue;
        }
      }

      v13 = [(NSArray *)obj countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (!v13)
      {
LABEL_27:

        v10 = v40;
        [v40 timeIntervalSinceNow];
        [(MLDCacheDeleteController *)selfCopy _reportCacheDeletePurgeEventWithUrgency:urgencyCopy amountRequested:longLongValue amountPurged:v14 duration:?];
        v9 = v43;
        goto LABEL_28;
      }
    }
  }

  if (v11)
  {
    *buf = 67109378;
    *v56 = urgency;
    *&v56[4] = 2114;
    *&v56[6] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Ignoring purge request with urgency %u for volume '%{public}@'", buf, 0x12u);
  }

  v14 = 0;
LABEL_28:

  v53[0] = v9;
  v52[0] = @"CACHE_DELETE_VOLUME";
  v52[1] = @"CACHE_DELETE_AMOUNT";
  v37 = [NSNumber numberWithUnsignedLongLong:v14];
  v52[2] = @"CACHE_DELETE_PURGE_TIMEOUT";
  v53[1] = v37;
  v53[2] = &off_100033128;
  v38 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:3];

  return v38;
}

- (__CFDictionary)_handlePurgeableRequestWithUrgency:(int)urgency info:(__CFDictionary *)info
{
  v5 = *&urgency;
  v7 = +[NSDate date];
  v36 = [objc_opt_class() _cacheDeleteUrgencyToMusicLibraryUrgency:v5];
  v8 = [(__CFDictionary *)info objectForKey:@"CACHE_DELETE_VOLUME"];
  v9 = [(MLDCacheDeleteController *)self _isMediaVolume:v8];
  v10 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 67109378;
      *v47 = v5;
      *&v47[4] = 2114;
      *&v47[6] = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received purgeable request with urgency %u for volume '%{public}@'", buf, 0x12u);
    }

    v34 = v5;
    v35 = v8;

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    selfCopy = self;
    obj = self->_libraries;
    v12 = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (!v12)
    {
      v38 = 0;
      goto LABEL_25;
    }

    v13 = v12;
    v38 = 0;
    v14 = *v40;
    while (1)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v39 + 1) + 8 * i);
        databasePath = [v16 databasePath];
        if (!databasePath || (v18 = databasePath, +[NSFileManager defaultManager](NSFileManager, "defaultManager"), v19 = objc_claimAutoreleasedReturnValue(), [v16 databasePath], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "fileExistsAtPath:", v20), v20, v19, v18, !v21))
        {
          v24 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }

          databasePath2 = [v16 databasePath];
          *buf = 138543362;
          *v47 = databasePath2;
          v26 = v24;
          v27 = OS_LOG_TYPE_ERROR;
          v28 = "Skipping purgeable amount for library with missing database at path=%{public}@";
          goto LABEL_17;
        }

        v22 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          databasePath3 = [v16 databasePath];
          *buf = 138543362;
          *v47 = databasePath3;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Begin gathering purgeable amount for library %{public}@", buf, 0xCu);
        }

        v38 += [v16 purgeableStorageSizeWithUrgency:v36];
        v24 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          databasePath2 = [v16 databasePath];
          *buf = 138543362;
          *v47 = databasePath2;
          v26 = v24;
          v27 = OS_LOG_TYPE_DEFAULT;
          v28 = "End gathering purgeable amount for library %{public}@";
LABEL_17:
          _os_log_impl(&_mh_execute_header, v26, v27, v28, buf, 0xCu);
        }

LABEL_18:
      }

      v13 = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (!v13)
      {
LABEL_25:

        [v7 timeIntervalSinceNow];
        v29 = v38;
        [(MLDCacheDeleteController *)selfCopy _reportCacheDeletePurgeableRequestWithUrgency:v34 purgeableAmount:v38 duration:?];
        v8 = v35;
        goto LABEL_26;
      }
    }
  }

  if (v11)
  {
    *buf = 67109378;
    *v47 = v5;
    *&v47[4] = 2114;
    *&v47[6] = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Ignoring purgeable request with urgency %u for volume '%{public}@'", buf, 0x12u);
  }

  v29 = 0;
LABEL_26:
  v44[0] = v8;
  v43[0] = @"CACHE_DELETE_VOLUME";
  v43[1] = @"CACHE_DELETE_AMOUNT";
  v30 = [NSNumber numberWithUnsignedLongLong:v29];
  v43[2] = @"CACHE_DELETE_PURGE_TIMEOUT";
  v44[1] = v30;
  v44[2] = &off_100033128;
  v31 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:3];

  return v31;
}

- (void)_reconcilePurgeNotification
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_libraries;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v25 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    *&v4 = 138543618;
    v14 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = +[NSMutableSet set];
        originalArtworkDirectory = [v8 originalArtworkDirectory];
        v11 = [@"/private" stringByAppendingString:originalArtworkDirectory];

        v12 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v14;
          selfCopy = self;
          v23 = 2114;
          v24 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Checking path %{public}@ for purged artwork", buf, 0x16u);
        }

        v20 = v11;
        [NSArray arrayWithObjects:&v20 count:1];
        v13 = v9;
        CacheDeleteEnumerateRemovedFilesInDirectories();
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v25 count:16];
    }

    while (v5);
  }
}

- (void)_reconcileOrginalArtworkWitRelativePaths:(id)paths forLibrary:(id)library withCompletion:(id)completion
{
  pathsCopy = paths;
  libraryCopy = library;
  completionCopy = completion;
  artworkOperationQueue = self->_artworkOperationQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000B258;
  v15[3] = &unk_100031440;
  v16 = libraryCopy;
  selfCopy = self;
  v18 = pathsCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = pathsCopy;
  v14 = libraryCopy;
  [(NSOperationQueue *)artworkOperationQueue addOperationWithBlock:v15];
}

- (void)_reconcileAllOriginalArtworkForLibrary:(id)library withCompletion:(id)completion
{
  libraryCopy = library;
  completionCopy = completion;
  artworkOperationQueue = self->_artworkOperationQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000B604;
  v11[3] = &unk_100031A08;
  v12 = libraryCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = libraryCopy;
  [(NSOperationQueue *)artworkOperationQueue addOperationWithBlock:v11];
}

- (void)_updatePurgedOriginalWithRelativePath:(id)path forLibrary:(id)library usingConnection:(id)connection
{
  pathCopy = path;
  libraryCopy = library;
  connectionCopy = connection;
  v26 = pathCopy;
  v11 = [NSArray arrayWithObjects:&v26 count:1];
  v12 = [connectionCopy executeUpdate:@"UPDATE artwork SET relative_path = '' WHERE relative_path = ?" withParameters:v11 error:0];

  if (v12)
  {
    v21 = pathCopy;
    v13 = [NSArray arrayWithObjects:&v21 count:1];
    v14 = [connectionCopy executeQuery:@"SELECT entity_pid withParameters:{entity_type, artwork_token.artwork_type FROM artwork JOIN artwork_token USING(artwork_token) WHERE relative_path = ?", v13}];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000BB70;
    v16[3] = &unk_1000311B0;
    v17 = libraryCopy;
    v18 = connectionCopy;
    selfCopy = self;
    v20 = pathCopy;
    [v14 enumerateRowsWithBlock:v16];

    v15 = v17;
  }

  else
  {
    v15 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v24 = 2114;
      v25 = pathCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@ Error clearing artwork.relative_path for artwork relativePath=%{public}@.", buf, 0x16u);
    }
  }
}

- (void)_registerCacheDeleteHandler
{
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000BF98;
  v12[3] = &unk_100031160;
  objc_copyWeak(&v13, &location);
  v12[4] = self;
  v3 = objc_retainBlock(v12);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000C080;
  v10[3] = &unk_100031160;
  objc_copyWeak(&v11, &location);
  v10[4] = self;
  v4 = objc_retainBlock(v10);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000C168;
  v8[3] = &unk_100031188;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  v5 = objc_retainBlock(v8);
  CacheDeleteRegister();
  CacheDeleteInitPurgeMarker();
  objc_copyWeak(&v7, &location);
  CacheDeleteRegisterPurgeNotification();
  v6 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Registered CacheDelete handlers.", buf, 0xCu);
  }

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (MLDCacheDeleteController)initWithLibraries:(id)libraries
{
  librariesCopy = libraries;
  v17.receiver = self;
  v17.super_class = MLDCacheDeleteController;
  v6 = [(MLDCacheDeleteController *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_libraries, libraries);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create("com.apple.medialibraryd.CacheDeleteController.accessQueue", v8);
    accessQueue = v7->_accessQueue;
    v7->_accessQueue = v9;

    v11 = objc_alloc_init(NSOperationQueue);
    artworkOperationQueue = v7->_artworkOperationQueue;
    v7->_artworkOperationQueue = v11;

    [(NSOperationQueue *)v7->_artworkOperationQueue setMaxConcurrentOperationCount:1];
    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v14 = dispatch_queue_create("com.apple.amp.medialibrary.CacheDeletePurge.Reporting", v13);
    eventReportingQueue = v7->_eventReportingQueue;
    v7->_eventReportingQueue = v14;

    [(MLDCacheDeleteController *)v7 _registerCacheDeleteHandler];
  }

  return v7;
}

+ (unint64_t)_cacheDeleteUrgencyToMusicLibraryUrgency:(int)urgency
{
  v3 = (urgency - 2);
  if (v3 < 3)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

@end