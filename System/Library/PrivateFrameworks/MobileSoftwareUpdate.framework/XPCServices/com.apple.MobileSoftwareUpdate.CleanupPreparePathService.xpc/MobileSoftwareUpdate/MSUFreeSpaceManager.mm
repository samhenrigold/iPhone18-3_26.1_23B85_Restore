@interface MSUFreeSpaceManager
+ (id)sharedInstance;
- (BOOL)requestFreeSpace:(unint64_t)space allowSpecialCaseUrgency:(id)urgency disableMobileAssetPurge:(id)purge disableSpecialCaseUrgency:(id)caseUrgency disableAPFSReserve:(id)reserve error:(id *)error;
- (MSUFreeSpaceManager)initWithMountedDataVolume:(id)volume;
- (NSString)dataMountPoint;
- (id)description;
- (id)metricInfo:(BOOL)info;
- (id)preallocatedSpaceMetricInfo;
- (unint64_t)availableSpace:(id *)space;
- (unsigned)getAPFSFreeBlocksThreshold:(id *)threshold;
- (void)dealloc;
- (void)discardOldCacheDeletePaths;
- (void)setDataMountPoint:(id)point;
@end

@implementation MSUFreeSpaceManager

+ (id)sharedInstance
{
  if (sharedInstance_pred != -1)
  {
    +[MSUFreeSpaceManager sharedInstance];
  }

  return sharedInstance___instance;
}

void __37__MSUFreeSpaceManager_sharedInstance__block_invoke(id a1)
{
  v1 = objc_autoreleasePoolPush();
  sharedInstance___instance = [[MSUFreeSpaceManager alloc] initWithMountedDataVolume:@"/private/var"];

  objc_autoreleasePoolPop(v1);
}

- (MSUFreeSpaceManager)initWithMountedDataVolume:(id)volume
{
  v7.receiver = self;
  v7.super_class = MSUFreeSpaceManager;
  v4 = [(MSUFreeSpaceManager *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(MSUFreeSpaceManager *)v4 setDataMountPoint:volume];
    *&v5->_purgeableRequested = 0u;
    *&v5->_manuallyPurged = 0u;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MSUFreeSpaceManager;
  [(MSUFreeSpaceManager *)&v3 dealloc];
}

- (BOOL)requestFreeSpace:(unint64_t)space allowSpecialCaseUrgency:(id)urgency disableMobileAssetPurge:(id)purge disableSpecialCaseUrgency:(id)caseUrgency disableAPFSReserve:(id)reserve error:(id *)error
{
  objc_sync_enter(self);
  objc_sync_exit(self);
  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (void)discardOldCacheDeletePaths
{
  objc_sync_enter(self);
  v2 = +[NSFileManager defaultManager];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [&off_100058870 countByEnumeratingWithState:&v18 objects:v27 count:16];
  v5 = 0;
  v6 = v3;
  if (v3)
  {
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(&off_100058870);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        memset(&v26, 0, sizeof(v26));
        if (!lstat([v9 UTF8String], &v26))
        {
          v17 = 0;
          v10 = size_directory([v9 UTF8String]);
          if ([v9 hasSuffix:@"/"] & 1) == 0 && (v11 = -[NSFileManager removeItemAtPath:error:](v2, "removeItemAtPath:error:", v9, &v17), (v11) || (v11 = objc_msgSend(v9, "hasSuffix:", @"/"), v11) && (v11 = -[NSFileManager removeItemsUnderPath:error:](v2, "removeItemsUnderPath:error:", v9, &v17), v11))
          {
            v13 = msuSharedLogger(v11, v12);
            v5 += v10;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v23 = v9;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Successfully removed old CacheDelete path %@", buf, 0xCu);
            }
          }

          else
          {
            v14 = msuSharedLogger(v11, v12);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v23 = v9;
              v24 = 2112;
              v25 = v17;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to remove old CacheDelete path %@: %@", buf, 0x16u);
            }
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v3 = [&off_100058870 countByEnumeratingWithState:&v18 objects:v27 count:16];
      v6 = v3;
    }

    while (v3);
  }

  v15 = msuSharedLogger(v3, v4);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v26.st_dev = 134218240;
    *&v26.st_mode = v5;
    WORD2(v26.st_ino) = 2048;
    *(&v26.st_ino + 6) = v5 / 0x100000;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Manually purged %lld bytes (%lld MB) from old CacheDelete paths.", &v26, 0x16u);
  }

  self->_manuallyPurged += v5;
  objc_sync_exit(self);
}

- (unsigned)getAPFSFreeBlocksThreshold:(id *)threshold
{
  objc_sync_enter(self);
  v16 = 0;
  v15 = 4;
  v5 = sysctlbyname("vfs.generic.apfs.proc_free_blocks_threshold", &v16, &v15, 0, 0);
  if (v5)
  {
    v7 = *__error();
    v19 = NSDebugDescriptionErrorKey;
    v8 = __error();
    v20 = [NSString stringWithFormat:@"sysctlbyname(%s) failed: %s", "vfs.generic.apfs.proc_free_blocks_threshold", strerror(*v8)];
    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:[NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1]];
    v17[0] = NSDebugDescriptionErrorKey;
    v17[1] = NSUnderlyingErrorKey;
    v18[0] = @"failed to get APFS free blocks threshold";
    v18[1] = v9;
    v10 = [NSError errorWithDomain:@"MobileSoftwareUpdateErrorDomain" code:71 userInfo:[NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2]];
  }

  else
  {
    v11 = v16;
    blockSize = self->_blockSize;
    v13 = msuSharedLogger(v5, v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v22 = v16;
      v23 = 2048;
      v24 = (blockSize * v11) >> 20;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Successfully got APFS free blocks threshold: %d blocks (%lld MB)", buf, 0x12u);
    }

    v10 = 0;
  }

  objc_sync_exit(self);
  if (threshold)
  {
    *threshold = v10;
  }

  return 0;
}

- (unint64_t)availableSpace:(id *)space
{
  objc_sync_enter(self);
  v5 = [(NSString *)self->_dataMountPoint copy];
  objc_sync_exit(self);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"/private/var";
  }

  bzero(&v15, 0x878uLL);
  uTF8String = [(__CFString *)v6 UTF8String];
  if (!statfs(uTF8String, &v15))
  {
    v10 = 0;
    v11 = v15.f_bavail * v15.f_bsize;
    if (!space)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = *__error();
  v13 = NSDebugDescriptionErrorKey;
  v9 = __error();
  nSDebugDescriptionErrorKey = [NSString stringWithFormat:@"statfs(%s) failed : %s", uTF8String, strerror(*v9), NSDebugDescriptionErrorKey];
  v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v8 userInfo:[NSDictionary dictionaryWithObjects:&nSDebugDescriptionErrorKey forKeys:&v13 count:1]];
  v11 = 0;
  if (space)
  {
LABEL_6:
    *space = v10;
  }

LABEL_7:

  return v11;
}

- (id)preallocatedSpaceMetricInfo
{
  v2 = +[NSMutableDictionary dictionary];

  return [NSDictionary dictionaryWithDictionary:v2];
}

- (id)metricInfo:(BOOL)info
{
  infoCopy = info;
  v5 = +[NSMutableDictionary dictionary];
  manuallyPurged = self->_manuallyPurged;
  if (manuallyPurged)
  {
    [v5 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", manuallyPurged >> 20), @"purgedManually"}];
  }

  purgeableRequested = self->_purgeableRequested;
  if (purgeableRequested)
  {
    [v5 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", purgeableRequested >> 20), @"purgeableRequested"}];
    [v5 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", self->_purgeableReceived >> 20), @"purgeableReceived"}];
    [v5 setObject:+[NSNumber numberWithLongLong:](NSNumber forKeyedSubscript:{"numberWithLongLong:", self->_netPurgedBytes / 0x100000), @"purgedMeasured"}];
  }

  if (infoCopy)
  {
    *&self->_manuallyPurged = 0u;
    *&self->_purgeableRequested = 0u;
  }

  return [NSDictionary dictionaryWithDictionary:v5];
}

- (NSString)dataMountPoint
{
  objc_sync_enter(self);
  dataMountPoint = self->_dataMountPoint;
  objc_sync_exit(self);
  return dataMountPoint;
}

- (void)setDataMountPoint:(id)point
{
  objc_sync_enter(self);
  self->_dataMountPoint = [point copy];
  bzero(&v13, 0x878uLL);
  uTF8String = [point UTF8String];
  v6 = statfs(uTF8String, &v13);
  if (v6)
  {
    v8 = msuSharedLogger(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = __error();
      v10 = strerror(*v9);
      [(MSUFreeSpaceManager *)v10 setDataMountPoint:v12, uTF8String, v8];
    }

    f_bsize = 4096;
  }

  else
  {
    f_bsize = v13.f_bsize;
  }

  self->_blockSize = f_bsize;
  objc_sync_exit(self);
}

- (id)description
{
  objc_sync_enter(self);
  v3 = objc_opt_class();
  v4 = [NSString stringWithFormat:@"\n<%@>\n\tdataMountPoint = %@\n\t_blockSize=%llu\n\tmetrics = %@", NSStringFromClass(v3), self->_dataMountPoint, self->_blockSize, [(MSUFreeSpaceManager *)self metricInfo:0]];
  objc_sync_exit(self);
  if (!v4)
  {
    v6.receiver = self;
    v6.super_class = MSUFreeSpaceManager;
    return [(MSUFreeSpaceManager *)&v6 description];
  }

  return v4;
}

- (void)setDataMountPoint:(uint64_t)a3 .cold.1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = a3;
  *(buf + 6) = 2080;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Assuming default 4K block size because statfs(%s) failed : %s", buf, 0x16u);
}

@end