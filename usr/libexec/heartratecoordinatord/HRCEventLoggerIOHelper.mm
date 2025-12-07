@interface HRCEventLoggerIOHelper
+ (void)deleteOldFilesInLoggingDirectory:(id)directory isInternalVariant:(BOOL)variant;
- (HRCEventLoggerIOHelper)initWithRootDirectory:(id)directory withQueue:(id)queue isInternalVariant:(BOOL)variant;
- (void)_createFileForDate:(id)date;
- (void)_writeSegment;
- (void)flush;
- (void)flushAndClose;
- (void)handleEncodedData:(id)data;
- (void)startLogging;
- (void)stopLogging;
@end

@implementation HRCEventLoggerIOHelper

- (void)startLogging
{
  if (self->_fileHandle)
  {
    v2 = sub_10000132C(self);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_100005D38(v2);
    }
  }

  else
  {
    v4 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v4;

    v6 = +[NSDate now];
    [(HRCEventLoggerIOHelper *)self _createFileForDate:v6];

    v7 = [[NSMutableData alloc] initWithCapacity:0x20000];
    segment = self->_segment;
    self->_segment = v7;
  }
}

+ (void)deleteOldFilesInLoggingDirectory:(id)directory isInternalVariant:(BOOL)variant
{
  variantCopy = variant;
  directoryCopy = directory;
  v40 = directoryCopy;
  if (variantCopy)
  {
    v6 = 7;
  }

  else
  {
    v6 = 5;
  }

  v41 = v6;
  v7 = sub_10000132C(directoryCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100005BC0(v41, v7);
  }

  v42 = objc_opt_new();
  v65 = NSURLAttributeModificationDateKey;
  v39 = [NSArray arrayWithObjects:&v65 count:1];
  v8 = +[NSFileManager defaultManager];
  v9 = [v8 enumeratorAtURL:v40 includingPropertiesForKeys:v39 options:1 errorHandler:0];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v10)
  {
    v11 = *v55;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v55 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v54 + 1) + 8 * i);
        pathExtension = [v13 pathExtension];
        v15 = [pathExtension isEqualToString:@"lp5"];

        if (v15)
        {
          v53 = 0;
          [v13 getResourceValue:&v53 forKey:NSURLAttributeModificationDateKey error:0];
          v16 = v53;
          v17 = v16;
          if (v16)
          {
            v62[0] = @"url";
            v62[1] = @"modification_date";
            v63[0] = v13;
            v63[1] = v16;
            v18 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:2];
            [v42 addObject:v18];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v10);
  }

  [v42 sortUsingComparator:&stru_100040750];
  v19 = objc_opt_new();
  v44 = +[NSDate date];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v20 = v42;
  v21 = [v20 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v21)
  {
    v22 = *v50;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v50 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v49 + 1) + 8 * j);
        v25 = [v24 objectForKeyedSubscript:@"modification_date"];
        [v44 timeIntervalSinceDate:v25];
        if (v26 > (86400 * v41) || (v27 = [v20 count], (v27 - objc_msgSend(v19, "count")) >= 0x65))
        {
          v28 = [v24 objectForKeyedSubscript:@"url"];
          [v19 addObject:v28];
        }
      }

      v21 = [v20 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v21);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v29 = v19;
  v30 = [v29 countByEnumeratingWithState:&v45 objects:v60 count:16];
  if (v30)
  {
    v31 = *v46;
    do
    {
      for (k = 0; k != v30; k = k + 1)
      {
        if (*v46 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v45 + 1) + 8 * k);
        v34 = +[NSFileManager defaultManager];
        v35 = [v34 removeItemAtURL:v33 error:0];

        if (v35)
        {
          v37 = sub_10000132C(v36);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            lastPathComponent = [v33 lastPathComponent];
            *buf = 138543362;
            v59 = lastPathComponent;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "HRCEventLogger deleted old logging file: %{public}@", buf, 0xCu);
          }
        }
      }

      v30 = [v29 countByEnumeratingWithState:&v45 objects:v60 count:16];
    }

    while (v30);
  }
}

- (HRCEventLoggerIOHelper)initWithRootDirectory:(id)directory withQueue:(id)queue isInternalVariant:(BOOL)variant
{
  directoryCopy = directory;
  queueCopy = queue;
  v47.receiver = self;
  v47.super_class = HRCEventLoggerIOHelper;
  v10 = [(HRCEventLoggerIOHelper *)&v47 init];
  v11 = [directoryCopy URLByAppendingPathComponent:@"EventLogger"];
  v13 = (v10 + 64);
  v12 = *(v10 + 8);
  *(v10 + 8) = v11;

  objc_storeStrong(v10 + 4, queue);
  v14 = +[NSFileManager defaultManager];
  v15 = *(v10 + 1);
  *(v10 + 1) = v14;

  v17 = sub_10000132C(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *v13;
    *buf = 138543362;
    v51 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "HRCEventLoggerIOHelper directory path : %{public}@", buf, 0xCu);
  }

  v19 = *(v10 + 1);
  path = [*(v10 + 8) path];
  if ([v19 fileExistsAtPath:path])
  {

    v21 = 0;
LABEL_7:
    v48 = NSURLIsExcludedFromBackupKey;
    v49 = &__kCFBooleanTrue;
    v27 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v28 = *v13;
    v45 = v21;
    v29 = [v28 setResourceValues:v27 error:&v45];
    v25 = v45;

    if ((v29 & 1) == 0)
    {
      v31 = sub_10000132C(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_100005CAC(v10 + 8, v25, v31);
      }
    }

    v32 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v10 + 4));
    v33 = *(v10 + 3);
    *(v10 + 3) = v32;

    dispatch_source_set_timer(*(v10 + 3), 0, 0xD18C2E2800uLL, 0xDF8475800uLL);
    objc_initWeak(buf, v10);
    v34 = *(v10 + 3);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100004F10;
    handler[3] = &unk_100040778;
    objc_copyWeak(&v43, buf);
    variantCopy = variant;
    dispatch_source_set_event_handler(v34, handler);
    dispatch_activate(*(v10 + 3));
    v35 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, *(v10 + 4));
    v36 = *(v10 + 5);
    *(v10 + 5) = v35;

    v37 = *(v10 + 5);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100004FA8;
    v40[3] = &unk_1000407A0;
    objc_copyWeak(&v41, buf);
    dispatch_source_set_event_handler(v37, v40);
    dispatch_activate(*(v10 + 5));
    v38 = v10;
    objc_destroyWeak(&v41);
    objc_destroyWeak(&v43);
    objc_destroyWeak(buf);
    goto LABEL_15;
  }

  v22 = *(v10 + 1);
  v23 = *(v10 + 8);
  v46 = 0;
  v24 = [v22 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:&v46];
  v25 = v46;

  if (v24)
  {
    v21 = v25;
    goto LABEL_7;
  }

  v27 = sub_10000132C(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
  {
    sub_100005C38();
  }

  v38 = 0;
LABEL_15:

  return v38;
}

- (void)stopLogging
{
  if (self->_fileHandle)
  {
    objc_initWeak(&location, self);
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_loggingQueue);
    v4 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000051D4;
    handler[3] = &unk_1000406E8;
    objc_copyWeak(&v9, &location);
    v8 = v3;
    v5 = v3;
    dispatch_source_set_event_handler(v5, handler);
    dispatch_activate(v5);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = sub_10000132C(self);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100005D7C(v6);
    }
  }
}

- (void)handleEncodedData:(id)data
{
  dataCopy = data;
  dispatch_assert_queue_V2(self->_loggingQueue);
  os_transaction_needs_more_time();
  if ([dataCopy length])
  {
    v5 = [(NSMutableData *)self->_segment length];
    if ([dataCopy length] + v5 > 0x20000)
    {
      [(HRCEventLoggerIOHelper *)self _writeSegment];
    }

    [(NSMutableData *)self->_segment appendData:dataCopy];
  }

  else
  {
    v6 = sub_10000132C(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100005DC0(v6);
    }
  }
}

- (void)flush
{
  dispatch_assert_queue_V2(self->_loggingQueue);
  os_transaction_needs_more_time();

  [(HRCEventLoggerIOHelper *)self _writeSegment];
}

- (void)flushAndClose
{
  dispatch_assert_queue_V2(self->_loggingQueue);
  os_transaction_needs_more_time();
  [(HRCEventLoggerIOHelper *)self _writeSegment];
  v3 = +[NSDate now];
  [(HRCEventLoggerIOHelper *)self _createFileForDate:?];
}

- (void)_createFileForDate:(id)date
{
  dateCopy = date;
  dispatch_assert_queue_V2(self->_loggingQueue);
  [dateCopy timeIntervalSinceReferenceDate];
  v5 = [NSString stringWithFormat:@"%.8f.lp5", v4];
  v6 = [(NSURL *)self->_loggingDirectory URLByAppendingPathComponent:v5 isDirectory:0];
  path = [v6 path];
  v8 = sub_10000132C(path);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = path;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "file path created : %{public}@", buf, 0xCu);
  }

  v9 = path;
  v10 = open_dprotected_np([path UTF8String], 1793, 2, 0, 420);
  v11 = v10;
  if ((v10 & 0x80000000) != 0)
  {
    v12 = sub_10000132C(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v23 = __error();
      sub_100005ED4(v6, v23, buf, v12);
    }

    goto LABEL_16;
  }

  v12 = [[NSFileHandle alloc] initWithFileDescriptor:v10 closeOnDealloc:1];
  if (v12)
  {
    v13 = objc_opt_new();
    v28 = 5;
    [v13 appendBytes:&v28 length:2];
    v30 = 1310925;
    mach_timebase_info(&info);
    *buf = mach_continuous_time();
    *&buf[8] = 1000000000 * info.denom / info.numer;
    +[NSDate timeIntervalSinceReferenceDate];
    v32 = v14;
    v15 = [[NSMutableData alloc] initWithCapacity:24];
    [v15 appendBytes:&v30 length:4];
    [v15 appendBytes:buf length:20];
    [v13 appendData:v15];

    v16 = +[NSTimeZone localTimeZone];
    name = [v16 name];
    v18 = [name dataUsingEncoding:4];
    v19 = [v18 mutableCopy];

    *buf = 212;
    *&buf[2] = [v19 length];
    v20 = objc_opt_new();
    [v20 appendBytes:buf length:4];
    [v20 appendData:v19];

    [v13 appendData:v20];
    v27 = 0;
    LOBYTE(v18) = [v12 writeData:v13 error:&v27];
    v21 = v27;

    if (v18)
    {
      objc_storeStrong(&self->_fileHandle, v12);
    }

    else
    {
      v25 = sub_10000132C(v22);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100005E04();
      }

      v12 = 0;
      [(NSFileManager *)self->_fileManager removeItemAtURL:v6 error:0];
    }

LABEL_16:
    goto LABEL_17;
  }

  v24 = sub_10000132C(0);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_100005E6C();
  }

  close(v11);
  [(NSFileManager *)self->_fileManager removeItemAtURL:v6 error:0];
LABEL_17:
}

- (void)_writeSegment
{
  dispatch_assert_queue_V2(self->_loggingQueue);
  if (self->_fileHandle)
  {
    v3 = [(NSMutableData *)self->_segment length];
    offsetInFile = [(NSFileHandle *)self->_fileHandle offsetInFile];
    if (offsetInFile + v3 > 0x500000)
    {
      v5 = sub_10000132C(offsetInFile);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "HRCEventLogger file size limit reached: closing the current file", buf, 2u);
      }

      fileHandle = self->_fileHandle;
      self->_fileHandle = 0;
    }

    v7 = self->_fileHandle;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  v8 = +[NSDate now];
  [(HRCEventLoggerIOHelper *)self _createFileForDate:v8];

  v7 = self->_fileHandle;
  if (v7)
  {
LABEL_8:
    segment = self->_segment;
    v20 = 0;
    v10 = [(NSFileHandle *)v7 writeData:segment error:&v20];
    v11 = v20;
    v12 = v11;
    if (v10)
    {
      v13 = self->_fileHandle;
      v19 = 0;
      v14 = [(NSFileHandle *)v13 synchronizeAndReturnError:&v19];
      v15 = v19;

      if (v14)
      {
LABEL_17:

        goto LABEL_18;
      }

      p_super = sub_10000132C(v16);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
      {
        sub_100005F98();
      }

      v12 = v15;
    }

    else
    {
      v18 = sub_10000132C(v11);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100005F30();
      }

      p_super = &self->_fileHandle->super;
      self->_fileHandle = 0;
    }

    v15 = v12;
    goto LABEL_17;
  }

LABEL_18:
  [(NSMutableData *)self->_segment setLength:0];
}

@end