@interface MBProgressModel
- (MBProgressModel)init;
- (NSString)description;
- (void)_addBytesRemaining:(unint64_t)remaining;
- (void)_subBytesRemaining:(unint64_t)remaining;
- (void)abortedTransferringItem:(id)item;
- (void)abortedTransferringItemWithSize:(int64_t)size;
- (void)beginStageWithMinProgress:(double)progress maxProgress:(double)maxProgress;
- (void)endStage;
- (void)ended;
- (void)failedToTransferItem:(id)item;
- (void)finishedItem:(id)item;
- (void)finishedItem:(id)item size:(unint64_t)size;
- (void)finishedScanningDomain;
- (void)finishedTransferringItem:(id)item size:(int64_t)size;
- (void)record:(id)record madeProgress:(double)progress previousProgress:(double)previousProgress assetSize:(int64_t)size recordSize:(int64_t)recordSize;
- (void)retrying;
- (void)updatingProgress:(double)progress forItem:(id)item;
- (void)updatingProgress:(double)progress previousProgress:(double)previousProgress size:(int64_t)size;
- (void)willScanDomains:(unint64_t)domains;
- (void)willTransferItemsWithSize:(int64_t)size count:(unint64_t)count;
@end

@implementation MBProgressModel

- (MBProgressModel)init
{
  v16.receiver = self;
  v16.super_class = MBProgressModel;
  v2 = [(MBProgressModel *)&v16 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_minProgress = xmmword_1002B9E20;
    v2->_maxBytesProgress = 0.95;
    objc_initWeak(&location, v2);
    v4 = [MBWatchdog alloc];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(MBWatchdog *)v4 initWithName:v6];
    watchdog = v3->_watchdog;
    v3->_watchdog = v7;

    [(MBWatchdog *)v3->_watchdog setTimeout:30.0];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000EED78;
    v13 = &unk_1003BE6A0;
    objc_copyWeak(&v14, &location);
    [(MBWatchdog *)v3->_watchdog setTimeoutBlock:&v10];
    [(MBWatchdog *)v3->_watchdog resume:v10];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)_addBytesRemaining:(unint64_t)remaining
{
  obj = self;
  objc_sync_enter(obj);
  obj->_bytesRemaining += remaining;
  sub_1000EEF54(obj);
  objc_sync_exit(obj);
}

- (void)_subBytesRemaining:(unint64_t)remaining
{
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  if (obj->_combinedProgress < 1.0)
  {
    bytesRemaining = obj->_bytesRemaining;
    if (bytesRemaining < remaining)
    {
      if (obj->_verify)
      {
        objc_exception_throw([[MBException alloc] initWithCode:1 format:{@"Bytes remaining underflow (%llu bytes)", remaining - obj->_bytesRemaining}]);
      }

      v6 = MBGetDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = remaining - obj->_bytesRemaining;
        *buf = 134217984;
        v17 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Progress model bytes remaining underflow (%{bytes}llu)", buf, 0xCu);
        _MBLog(@"Db", "Progress model bytes remaining underflow (%{bytes}llu)", remaining - obj->_bytesRemaining);
      }

      v4 = obj;
      bytesRemaining = obj->_bytesRemaining;
      remaining = bytesRemaining;
    }

    maxBytesProgress = v4->_maxBytesProgress;
    if (bytesRemaining >= 1)
    {
      maxBytesProgress = v4->_bytesProgress + (maxBytesProgress - v4->_bytesProgress) * (remaining / bytesRemaining);
    }

    v4->_bytesProgress = maxBytesProgress;
    itemCount = v4->_itemCount;
    if (itemCount)
    {
      v10 = v4->_itemsCompleted / itemCount;
      v4->_itemProgress = v10;
      p_itemProgress = &v4->_itemProgress;
      if (v10 <= 1.0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      p_itemProgress = &v4->_itemProgress;
    }

    p_itemProgress->super.isa = 0x3FF0000000000000;
    v10 = 1.0;
LABEL_17:
    obj->_combinedProgress = obj->_minProgress + (maxBytesProgress + v10) * 0.5 * (obj->_maxProgress - obj->_minProgress);
    block = [(MBProgressModel *)obj block];
    v13 = block;
    if (block)
    {
      (*(block + 16))(block, obj->_combinedProgress);
    }

    obj->_bytesRemaining -= remaining;
    sub_1000EEF54(obj);
    v14 = obj->_watchdog;

    objc_sync_exit(obj);
    [(MBWatchdog *)v14 resume];

    return;
  }

  objc_sync_exit(obj);
}

- (void)willTransferItemsWithSize:(int64_t)size count:(unint64_t)count
{
  v5 = size + (count << 13);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MBProgressModel *)selfCopy _addBytesRemaining:v5];
  selfCopy->_itemCount += count;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v9 = v5;
    v10 = 2048;
    countCopy = count;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "willTransfer: size:%llu, count:%ld", buf, 0x16u);
    _MBLog(@"Db", "willTransfer: size:%llu, count:%ld", v5, count);
  }

  objc_sync_exit(selfCopy);
}

- (void)willScanDomains:(unint64_t)domains
{
  v4 = domains << 13;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MBProgressModel *)selfCopy _addBytesRemaining:v4];
  selfCopy->_itemCount += domains;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v8 = v4;
    v9 = 2048;
    domainsCopy = domains;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "willScanDomains: size:%llu domainsToScan:%llu", buf, 0x16u);
    _MBLog(@"Db", "willScanDomains: size:%llu domainsToScan:%llu", v4, domains);
  }

  objc_sync_exit(selfCopy);
}

- (void)finishedScanningDomain
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ++selfCopy->_itemsCompleted;
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    bytesRemaining = selfCopy->_bytesRemaining;
    itemsCompleted = selfCopy->_itemsCompleted;
    itemCount = selfCopy->_itemCount;
    *buf = 134218752;
    v8 = 0x2000;
    v9 = 2048;
    v10 = bytesRemaining;
    v11 = 2048;
    v12 = itemsCompleted;
    v13 = 2048;
    v14 = itemCount;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "finishedScanningDomain, size:%llu, remaining:%lld, completed:%lld/%lld", buf, 0x2Au);
    _MBLog(@"Db", "finishedScanningDomain, size:%llu, remaining:%lld, completed:%lld/%lld", 0x2000, selfCopy->_bytesRemaining, selfCopy->_itemsCompleted, selfCopy->_itemCount);
  }

  [(MBProgressModel *)selfCopy _subBytesRemaining:0x2000];
  objc_sync_exit(selfCopy);
}

- (void)finishedTransferringItem:(id)item size:(int64_t)size
{
  itemCopy = item;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      itemID = [itemCopy itemID];
      bytesRemaining = selfCopy->_bytesRemaining;
      itemsCompleted = selfCopy->_itemsCompleted;
      itemCount = selfCopy->_itemCount;
      *buf = 138413314;
      v16 = itemID;
      v17 = 2048;
      sizeCopy = size;
      v19 = 2048;
      v20 = bytesRemaining;
      v21 = 2048;
      v22 = itemsCompleted;
      v23 = 2048;
      v24 = itemCount;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "finishedTransferringItem, fileID:%@, size:%llu, remaining:%lld, completed:%lld/%lld", buf, 0x34u);
    }

    itemID2 = [itemCopy itemID];
    _MBLog(@"Db", "finishedTransferringItem, fileID:%@, size:%llu, remaining:%lld, completed:%lld/%lld", itemID2, size, selfCopy->_bytesRemaining, selfCopy->_itemsCompleted, selfCopy->_itemCount);
  }

  [(MBProgressModel *)selfCopy _subBytesRemaining:size];
  objc_sync_exit(selfCopy);
}

- (void)finishedItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ++selfCopy->_itemsCompleted;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      itemID = [itemCopy itemID];
      bytesRemaining = selfCopy->_bytesRemaining;
      itemsCompleted = selfCopy->_itemsCompleted;
      itemCount = selfCopy->_itemCount;
      *buf = 138413314;
      v14 = itemID;
      v15 = 2048;
      v16 = 0x2000;
      v17 = 2048;
      v18 = bytesRemaining;
      v19 = 2048;
      v20 = itemsCompleted;
      v21 = 2048;
      v22 = itemCount;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "finishedItem, itemID:%@, size:%llu, remaining:%lld, completed:%lld/%lld", buf, 0x34u);
    }

    itemID2 = [itemCopy itemID];
    _MBLog(@"Db", "finishedItem, itemID:%@, size:%llu, remaining:%lld, completed:%lld/%lld", itemID2, 0x2000, selfCopy->_bytesRemaining, selfCopy->_itemsCompleted, selfCopy->_itemCount);
  }

  [(MBProgressModel *)selfCopy _subBytesRemaining:0x2000];
  objc_sync_exit(selfCopy);
}

- (void)finishedItem:(id)item size:(unint64_t)size
{
  itemCopy = item;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ++selfCopy->_itemsCompleted;
  v8 = MBGetDefaultLog();
  v9 = size + 0x2000;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = v8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      itemID = [itemCopy itemID];
      bytesRemaining = selfCopy->_bytesRemaining;
      itemsCompleted = selfCopy->_itemsCompleted;
      itemCount = selfCopy->_itemCount;
      *buf = 138413314;
      v17 = itemID;
      v18 = 2048;
      v19 = v9;
      v20 = 2048;
      v21 = bytesRemaining;
      v22 = 2048;
      v23 = itemsCompleted;
      v24 = 2048;
      v25 = itemCount;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "finishedItem, itemID:%@, size:%llu, remaining:%lld, completed:%lld/%lld", buf, 0x34u);
    }

    itemID2 = [itemCopy itemID];
    _MBLog(@"Db", "finishedItem, itemID:%@, size:%llu, remaining:%lld, completed:%lld/%lld", itemID2, v9, selfCopy->_bytesRemaining, selfCopy->_itemsCompleted, selfCopy->_itemCount);
  }

  [(MBProgressModel *)selfCopy _subBytesRemaining:v9];
  objc_sync_exit(selfCopy);
}

- (void)updatingProgress:(double)progress forItem:(id)item
{
  itemCopy = item;
  v7 = [itemCopy size];
  resourcesSize = [itemCopy resourcesSize];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [itemCopy progress];
  if (v10 != progress)
  {
    if (progress >= 0.0)
    {
      if (progress == 1.0)
      {
        ++selfCopy->_itemsCompleted;
      }

      [itemCopy progress];
      [(MBProgressModel *)selfCopy _subBytesRemaining:((progress - v12) * (resourcesSize + v7 + 0x2000))];
    }

    else
    {
      if (selfCopy->_verify)
      {
        objc_exception_throw([[MBException alloc] initWithCode:1 format:{@"Negative progress update (%0.3f)", *&progress}]);
      }

      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        progressCopy = progress;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Negative progress update (%0.3f)", buf, 0xCu);
        _MBLog(@"Df", "Negative progress update (%0.3f)", progress);
      }
    }

    [itemCopy setProgress:progress];
  }

  objc_sync_exit(selfCopy);
}

- (void)updatingProgress:(double)progress previousProgress:(double)previousProgress size:(int64_t)size
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (progress != previousProgress)
  {
    if (progress >= 0.0)
    {
      if (progress == 1.0)
      {
        ++selfCopy->_itemsCompleted;
      }

      [(MBProgressModel *)selfCopy _subBytesRemaining:((progress - previousProgress) * (size + 0x2000))];
    }

    else
    {
      if (selfCopy->_verify)
      {
        objc_exception_throw([[MBException alloc] initWithCode:1 format:{@"Negative progress update (%0.3f)", *&progress}]);
      }

      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        progressCopy = progress;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Negative progress update (%0.3f)", buf, 0xCu);
        _MBLog(@"Df", "Negative progress update (%0.3f)", progress);
      }
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)failedToTransferItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [itemCopy progress];
  -[MBProgressModel _addBytesRemaining:](selfCopy, "_addBytesRemaining:", (v5 * [itemCopy size]));
  objc_sync_exit(selfCopy);
}

- (void)abortedTransferringItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  -[MBProgressModel abortedTransferringItemWithSize:](selfCopy, "abortedTransferringItemWithSize:", [itemCopy size]);
  objc_sync_exit(selfCopy);
}

- (void)abortedTransferringItemWithSize:(int64_t)size
{
  obj = self;
  objc_sync_enter(obj);
  [(MBProgressModel *)obj _subBytesRemaining:size + 0x2000];
  objc_sync_exit(obj);
}

- (void)retrying
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_bytesRemaining = 0;
  selfCopy->_maxBytesProgress = selfCopy->_bytesProgress + (1.0 - selfCopy->_bytesProgress) * 0.5;
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    bytesProgress = selfCopy->_bytesProgress;
    maxBytesProgress = selfCopy->_maxBytesProgress;
    *buf = 134218240;
    v7 = bytesProgress;
    v8 = 2048;
    v9 = maxBytesProgress;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Bytes Progress is %lf. Max Bytes Progress is now %lf", buf, 0x16u);
    _MBLog(@"I ", "Bytes Progress is %lf. Max Bytes Progress is now %lf", selfCopy->_bytesProgress, selfCopy->_maxBytesProgress);
  }

  sub_1000EEF54(selfCopy);
  objc_sync_exit(selfCopy);
}

- (void)ended
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bytesRemaining = selfCopy->_bytesRemaining;
  if (bytesRemaining)
  {
    if (selfCopy->_verify)
    {
      objc_exception_throw([[MBException alloc] initWithCode:1 format:{@"Progress model ended with %llu bytes remaining", selfCopy->_bytesRemaining}]);
    }

    if (bytesRemaining < 1025)
    {
      v4 = MBGetDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = selfCopy->_bytesRemaining;
        *buf = 134217984;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Progress model ended with %{bytes}llu remaining", buf, 0xCu);
        _MBLog(@"I ", "Progress model ended with %{bytes}llu remaining", selfCopy->_bytesRemaining);
      }
    }

    else
    {
      v4 = MBGetDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = selfCopy->_bytesRemaining;
        *buf = 134217984;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Progress model ended with %{bytes}llu remaining", buf, 0xCu);
        _MBLog(@"Df", "Progress model ended with %{bytes}llu remaining", selfCopy->_bytesRemaining);
      }
    }
  }

  selfCopy->_bytesProgress = 1.0;
  selfCopy->_bytesRemaining = 0;
  selfCopy->_itemProgress = 1.0;
  selfCopy->_combinedProgress = 1.0;
  block = [(MBProgressModel *)selfCopy block];
  [(MBProgressModel *)selfCopy setBlock:0];
  if (block)
  {
    block[2](block, selfCopy->_combinedProgress);
  }

  watchdog = selfCopy->_watchdog;
  selfCopy->_watchdog = 0;
  v9 = watchdog;

  objc_sync_exit(selfCopy);
  [(MBWatchdog *)v9 suspend];
}

- (void)beginStageWithMinProgress:(double)progress maxProgress:(double)maxProgress
{
  obj = self;
  objc_sync_enter(obj);
  obj->_minProgress = progress;
  obj->_maxProgress = maxProgress;
  obj->_bytesRemaining = 0;
  obj->_maxBytesProgress = 0.95;
  obj->_itemsCompleted = 0;
  obj->_itemCount = 0;
  obj->_bytesProgress = progress;
  obj->_itemProgress = progress;
  obj->_combinedProgress = progress;
  block = [(MBProgressModel *)obj block];
  v7 = block;
  if (block)
  {
    (*(block + 16))(block, obj->_combinedProgress);
  }

  objc_sync_exit(obj);
}

- (void)endStage
{
  obj = self;
  objc_sync_enter(obj);
  obj->_bytesRemaining = 0;
  maxProgress = obj->_maxProgress;
  obj->_bytesProgress = maxProgress;
  obj->_itemProgress = maxProgress;
  obj->_combinedProgress = maxProgress;
  block = [(MBProgressModel *)obj block];
  v4 = block;
  if (block)
  {
    (*(block + 16))(block, obj->_combinedProgress);
  }

  objc_sync_exit(obj);
}

- (NSString)description
{
  v2 = [[NSString alloc] initWithFormat:@"<%@: combinedProgress=%0.3f, byteProgress=%0.3f, itemProgress=%0.2f, bytesRemaining=%llu, completed:%lld/%lld>", objc_opt_class(), *&self->_combinedProgress, *&self->_bytesProgress, *&self->_itemProgress, self->_bytesRemaining, self->_itemsCompleted, self->_itemCount];

  return v2;
}

- (void)record:(id)record madeProgress:(double)progress previousProgress:(double)previousProgress assetSize:(int64_t)size recordSize:(int64_t)recordSize
{
  recordCopy = record;
  if (size >= 20000001)
  {
    v13 = [NSByteCountFormatter stringFromByteCount:size countStyle:0];
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      recordID = [recordCopy recordID];
      recordName = [recordID recordName];
      *buf = 134219010;
      previousProgressCopy = previousProgress;
      v21 = 2048;
      progressCopy = progress;
      v23 = 2112;
      v24 = recordName;
      v25 = 2112;
      v26 = v13;
      v27 = 2048;
      recordSizeCopy = recordSize;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "=upload assets= Received progress update from %.2f to %.2f for %@ with assetSize %@ recordSize %llu", buf, 0x34u);

      recordID2 = [recordCopy recordID];
      recordName2 = [recordID2 recordName];
      _MBLog(@"I ", "=upload assets= Received progress update from %.2f to %.2f for %@ with assetSize %@ recordSize %llu", *&previousProgress, *&progress, recordName2, v13, recordSize);
    }
  }

  [(MBProgressModel *)self updatingProgress:size previousProgress:progress size:previousProgress];
}

@end