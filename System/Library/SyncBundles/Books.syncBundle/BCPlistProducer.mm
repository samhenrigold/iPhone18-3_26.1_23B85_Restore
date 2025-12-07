@interface BCPlistProducer
- (BCPlistProducer)initWithPath:(id)path;
- (BOOL)shouldRetry;
- (BOOL)write;
- (void)dealloc;
@end

@implementation BCPlistProducer

- (BCPlistProducer)initWithPath:(id)path
{
  if (![path length])
  {
    sub_1325C(a2, self, path);
  }

  v6 = [(BCPlistProducer *)self init];
  if (v6)
  {
    v6->_path = [path copy];
    v6->_attemptCount = 0;
    v6->_dataUnchanged = 0;
    v6->_lockout = objc_alloc_init(BCLockout);
    v9 = @"com.apple.sync.books.began";
    [(BCLockout *)v6->_lockout setStartNotifications:[NSArray arrayWithObjects:&v9 count:1]];
    v8[0] = @"com.apple.sync.books.finished";
    v8[1] = @"com.apple.books.plist.changed";
    [(BCLockout *)v6->_lockout setEndNotifications:[NSArray arrayWithObjects:v8 count:2]];
    -[BCLockout setPath:](v6->_lockout, "setPath:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/.%@.lock", [path stringByDeletingLastPathComponent], objc_msgSend(path, "lastPathComponent")));
  }

  return v6;
}

- (void)dealloc
{
  self->_path = 0;
  [(BCLockout *)self->_lockout unlock];

  self->_lockout = 0;
  v3.receiver = self;
  v3.super_class = BCPlistProducer;
  [(BCPlistProducer *)&v3 dealloc];
}

- (BOOL)write
{
  v4 = 0;
  v5 = 1;
  *&v2 = 138412802;
  v29 = v2;
  while ([(BCPlistProducer *)self shouldRetry])
  {
    v6 = objc_autoreleasePoolPush();
    [(BCLockout *)self->_lockout lock:1];
    v7 = [+[NSFileManager defaultManager](NSFileManager attributesOfItemAtPath:"attributesOfItemAtPath:error:" error:self->_path, 0];
    produceData = [(BCPlistProducer *)self produceData];
    if (self->_dataUnchanged)
    {
      v10 = BCDefaultLog(produceData, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        path = self->_path;
        *buf = 138412546;
        v31 = path;
        v32 = 2112;
        selfCopy5 = self;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Plist modification resulted in no changes -- skipping rewrite %@ -- %@", buf, 0x16u);
      }
    }

    else
    {
      v12 = produceData;
      v13 = [+[NSFileManager defaultManager](NSFileManager attributesOfItemAtPath:"attributesOfItemAtPath:error:" error:self->_path, 0];
      v15 = v13;
      if (v7 | v13)
      {
        if (!v7 || !v13 || (v16 = [v7 fileSize], v13 = objc_msgSend(v15, "fileSize"), v16 != v13) || (v13 = objc_msgSend(objc_msgSend(v7, "fileModificationDate"), "isEqualToDate:", objc_msgSend(v15, "fileModificationDate")), (v13 & 1) == 0))
        {
          v22 = BCDefaultLog(v13, v14);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v26 = self->_path;
            *buf = v29;
            v31 = v26;
            v32 = 2112;
            selfCopy5 = self;
            v34 = 1024;
            v35 = v5;
            _os_log_error_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "--- --- ---modification time changed during processing--- --- ---%@ -- %@ -- Attempt # %d", buf, 0x1Cu);
          }

          [(BCPlistProducer *)self fileWasModifiedDuringDataProduction];
          v21 = 0;
          goto LABEL_23;
        }
      }

      if (v12)
      {
        v17 = [v12 writeToFile:self->_path atomically:1];
        if (v17)
        {
          v19 = BCDefaultLog(v17, v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = self->_path;
            *buf = v29;
            v31 = v20;
            v32 = 2112;
            selfCopy5 = self;
            v34 = 1024;
            v35 = v5;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Successfully rewrote plist %@ -- %@ -- Attempt # %d", buf, 0x1Cu);
          }

          v21 = 1;
          v4 = 1;
        }

        else
        {
          v25 = BCDefaultLog(v17, v18);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v27 = self->_path;
            *buf = v29;
            v31 = v27;
            v32 = 2112;
            selfCopy5 = self;
            v34 = 1024;
            v35 = v5;
            _os_log_error_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "Failed to write plist %@ -- %@ -- Attempt # %d", buf, 0x1Cu);
          }

          v4 = 0;
          [(BCPlistProducer *)self fileWriteFailed];
          v21 = 1;
        }

        goto LABEL_23;
      }

      v23 = BCDefaultLog(v13, v14);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = self->_path;
        *buf = v29;
        v31 = v24;
        v32 = 2112;
        selfCopy5 = self;
        v34 = 1024;
        v35 = v5;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Deleting plist %@ -- %@ -- Attempt # %d", buf, 0x1Cu);
      }

      v4 = 1;
      [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:self->_path, 0];
    }

    v21 = 1;
LABEL_23:
    [(BCLockout *)self->_lockout unlock];
    objc_autoreleasePoolPop(v6);
    ++v5;
    if (v21)
    {
      return v4;
    }
  }

  return v4;
}

- (BOOL)shouldRetry
{
  attemptCount = self->_attemptCount;
  self->_attemptCount = attemptCount + 1;
  return attemptCount < 4;
}

@end