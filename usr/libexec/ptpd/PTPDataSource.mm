@interface PTPDataSource
- (OS_dispatch_queue)plAssetQueue;
- (PTPDataSource)initWithAssetHandle:(id)handle assetSize:(unint64_t)size andQueueName:(id)name;
- (id)dataSourcePathForDataRange:(_NSRange)range;
- (int64_t)read:(void *)read length:(unint64_t)length offset:(int64_t)offset;
- (void)boostAssetReaderLifespan;
- (void)dealloc;
@end

@implementation PTPDataSource

- (PTPDataSource)initWithAssetHandle:(id)handle assetSize:(unint64_t)size andQueueName:(id)name
{
  handleCopy = handle;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = PTPDataSource;
  v10 = [(PTPDataSource *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(PTPDataSource *)v10 setPlAssetHandle:handleCopy];
    [(PTPDataSource *)v11 setPlAssetSize:size];
    v12 = dispatch_get_global_queue(33, 0);
    [(PTPDataSource *)v11 setPlAssetQueue:v12];

    [(PTPDataSource *)v11 setPlAssetReader:0];
    [(PTPDataSource *)v11 setPlAssetTimer:0];
    [(PTPDataSource *)v11 setQueueName:nameCopy];
    [(PTPDataSource *)v11 setFd:0xFFFFFFFFLL];
  }

  return v11;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_plAssetQueue);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022910;
  block[3] = &unk_100038770;
  block[4] = self;
  dispatch_sync(WeakRetained, block);

  objc_storeWeak(&self->_plAssetQueue, 0);
  [(PTPDataSource *)self setPlAssetReader:0];
  [(PTPDataSource *)self setPlAssetHandle:0];
  [(PTPDataSource *)self setQueueName:0];
  if ([(PTPDataSource *)self fd]!= -1)
  {
    close([(PTPDataSource *)self fd]);
    [(PTPDataSource *)self setFd:0xFFFFFFFFLL];
  }

  [(PTPDataSource *)self setDataSourcePath:0];
  v4.receiver = self;
  v4.super_class = PTPDataSource;
  [(PTPDataSource *)&v4 dealloc];
}

- (id)dataSourcePathForDataRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100022B04;
  v21 = sub_100022B14;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100022B04;
  v15 = sub_100022B14;
  v16 = 0;
  plAssetQueue = [(PTPDataSource *)self plAssetQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022B1C;
  block[3] = &unk_100038A98;
  block[4] = self;
  block[5] = &v11;
  block[7] = location;
  block[8] = length;
  block[6] = &v17;
  dispatch_sync(plAssetQueue, block);

  if (v18[5])
  {
    v7 = 0;
  }

  else
  {
    v7 = v12[5];
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

- (int64_t)read:(void *)read length:(unint64_t)length offset:(int64_t)offset
{
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = _gPTPDeviceDataBufferSize;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v9 = [(PTPDataSource *)self dataSourcePathForDataRange:offset];
  dataSourcePath = [(PTPDataSource *)self dataSourcePath];
  v11 = [dataSourcePath isEqualToString:v9];

  if ((v11 & 1) == 0)
  {
    if ([(PTPDataSource *)self fd]!= -1)
    {
      close([(PTPDataSource *)self fd]);
      [(PTPDataSource *)self setFd:0xFFFFFFFFLL];
    }

    [(PTPDataSource *)self setDataSourcePath:v9];
    __ICOSLogCreate();
    if ([@"PTPDataSource" length] < 0x15)
    {
      v13 = @"PTPDataSource";
    }

    else
    {
      v12 = [@"PTPDataSource" substringWithRange:{0, 18}];
      v13 = [v12 stringByAppendingString:@".."];
    }

    dataSourcePath2 = [(PTPDataSource *)self dataSourcePath];
    v15 = dataSourcePath2;
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"  >>> Setting[%s]:[%10lu]", [dataSourcePath2 UTF8String], -[PTPDataSource plAssetSize](self, "plAssetSize"));

    v17 = _gICOSLog;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v13;
      uTF8String = [(__CFString *)v13 UTF8String];
      *buf = 136446466;
      v65 = uTF8String;
      v66 = 2114;
      v67 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  dataSourcePath3 = [(PTPDataSource *)self dataSourcePath];

  if (dataSourcePath3)
  {
    plAssetQueue = [(PTPDataSource *)self plAssetQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100023408;
    block[3] = &unk_100038AE8;
    block[4] = self;
    block[5] = &v60;
    block[8] = read;
    block[9] = length;
    block[10] = offset;
    block[6] = &v52;
    block[7] = &v56;
    dispatch_sync(plAssetQueue, block);
  }

  __ICOSLogCreate();
  if ([&stru_100038B48 length] < 0x15)
  {
    v23 = &stru_100038B48;
  }

  else
  {
    v22 = [&stru_100038B48 substringWithRange:{0, 18}];
    v23 = [v22 stringByAppendingString:@".."];
  }

  v24 = [NSString stringWithFormat:@"  *** Request:[%10lu] @ Offset:[%10llu] >> Read:[%10llu]", length, offset, v61[3]];
  v25 = _gICOSLog;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v23;
    uTF8String2 = [(__CFString *)v23 UTF8String];
    *buf = 136446466;
    v65 = uTF8String2;
    v66 = 2114;
    v67 = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  if (v57[3])
  {
    __ICOSLogCreate();
    if ([&stru_100038B48 length] < 0x15)
    {
      v29 = &stru_100038B48;
    }

    else
    {
      v28 = [&stru_100038B48 substringWithRange:{0, 18}];
      v29 = [v28 stringByAppendingString:@".."];
    }

    v30 = [NSString stringWithFormat:@"   "];
    v31 = _gICOSLog;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v29;
      uTF8String3 = [(__CFString *)v29 UTF8String];
      *buf = 136446466;
      v65 = uTF8String3;
      v66 = 2114;
      v67 = v30;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    __ICOSLogCreate();
    if ([&stru_100038B48 length] < 0x15)
    {
      v35 = &stru_100038B48;
    }

    else
    {
      v34 = [&stru_100038B48 substringWithRange:{0, 18}];
      v35 = [v34 stringByAppendingString:@".."];
    }

    v36 = [NSString stringWithFormat:@"  >>> Advised:[%10llu] @ Offset:[%10llu]", v57[3], v53[3]];
    v37 = _gICOSLog;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v35;
      uTF8String4 = [(__CFString *)v35 UTF8String];
      *buf = 136446466;
      v65 = uTF8String4;
      v66 = 2114;
      v67 = v36;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  v40 = v61[3];
  if (v40 + offset == [(PTPDataSource *)self plAssetSize]&& [(PTPDataSource *)self fd]!= -1)
  {
    __ICOSLogCreate();
    if ([&stru_100038B48 length] < 0x15)
    {
      v42 = &stru_100038B48;
    }

    else
    {
      v41 = [&stru_100038B48 substringWithRange:{0, 18}];
      v42 = [v41 stringByAppendingString:@".."];
    }

    dataSourcePath4 = [(PTPDataSource *)self dataSourcePath];
    v44 = dataSourcePath4;
    v45 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"  --- Closing[%s]:[%10lu]", [dataSourcePath4 UTF8String], -[PTPDataSource plAssetSize](self, "plAssetSize"));

    v46 = _gICOSLog;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v42;
      uTF8String5 = [(__CFString *)v42 UTF8String];
      *buf = 136446466;
      v65 = uTF8String5;
      v66 = 2114;
      v67 = v45;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    close([(PTPDataSource *)self fd]);
    [(PTPDataSource *)self setFd:0xFFFFFFFFLL];
  }

  v49 = v61[3];

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  return v49;
}

- (void)boostAssetReaderLifespan
{
  plAssetTimer = [(PTPDataSource *)self plAssetTimer];

  __ICOSLogCreate();
  v4 = __ICLogTypeEnabled();
  if (plAssetTimer)
  {
    if (v4)
    {
      v5 = @"PTPDataSource";
      if ([@"PTPDataSource" length] >= 0x15)
      {
        v6 = [@"PTPDataSource" substringWithRange:{0, 18}];
        v5 = [v6 stringByAppendingString:@".."];
      }

      queueName = [(PTPDataSource *)self queueName];
      v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Boosted [%s]", [queueName UTF8String]);

      v9 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v5;
        v11 = v9;
        *buf = 136446466;
        uTF8String = [(__CFString *)v5 UTF8String];
        v32 = 2114;
        v33 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }

    plAssetTimer2 = [(PTPDataSource *)self plAssetTimer];
    v13 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(plAssetTimer2, v13, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  }

  else
  {
    if (v4)
    {
      v14 = @"PTPDataSource";
      if ([@"PTPDataSource" length] >= 0x15)
      {
        v15 = [@"PTPDataSource" substringWithRange:{0, 18}];
        v14 = [v15 stringByAppendingString:@".."];
      }

      queueName2 = [(PTPDataSource *)self queueName];
      v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Created [%s]", [queueName2 UTF8String]);

      v18 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v14;
        v20 = v18;
        *buf = 136446466;
        uTF8String = [(__CFString *)v14 UTF8String];
        v32 = 2114;
        v33 = v17;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }

    plAssetQueue = [(PTPDataSource *)self plAssetQueue];
    v22 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, plAssetQueue);
    plAssetTimer = self->_plAssetTimer;
    self->_plAssetTimer = v22;

    plAssetTimer3 = [(PTPDataSource *)self plAssetTimer];
    v25 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(plAssetTimer3, v25, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);

    objc_initWeak(buf, self);
    plAssetTimer4 = [(PTPDataSource *)self plAssetTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100023E1C;
    handler[3] = &unk_100038A20;
    objc_copyWeak(&v29, buf);
    handler[4] = self;
    dispatch_source_set_event_handler(plAssetTimer4, handler);

    plAssetTimer5 = [(PTPDataSource *)self plAssetTimer];
    dispatch_resume(plAssetTimer5);

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }
}

- (OS_dispatch_queue)plAssetQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_plAssetQueue);

  return WeakRetained;
}

@end