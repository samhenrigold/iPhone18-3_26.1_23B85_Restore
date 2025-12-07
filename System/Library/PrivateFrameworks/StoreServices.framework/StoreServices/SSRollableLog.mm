@interface SSRollableLog
- (SSLogFileOptions)logOptions;
- (SSRollableLog)initWithLogOptions:(id)options;
- (id)_logFilePathWithIndex:(int64_t)index;
- (void)_checkLogFileSize;
- (void)_closeLogFile;
- (void)_openLogFile;
- (void)_rollLogFiles;
- (void)dealloc;
- (void)writeString:(id)string;
@end

@implementation SSRollableLog

- (SSRollableLog)initWithLogOptions:(id)options
{
  v6.receiver = self;
  v6.super_class = SSRollableLog;
  v4 = [(SSRollableLog *)&v6 init];
  if (v4)
  {
    v4->_dispatchQueue = dispatch_queue_create("com.apple.StoreServices.SSRollableLog", 0);
    v4->_lastFileStatTime = -1.79769313e308;
    v4->_options = [options copy];
    [(SSRollableLog *)v4 _openLogFile];
  }

  return v4;
}

- (void)dealloc
{
  fileObserverSource = self->_fileObserverSource;
  if (fileObserverSource)
  {
    dispatch_source_cancel(fileObserverSource);
    dispatch_release(self->_fileObserverSource);
  }

  dispatch_release(self->_dispatchQueue);

  v4.receiver = self;
  v4.super_class = SSRollableLog;
  [(SSRollableLog *)&v4 dealloc];
}

- (SSLogFileOptions)logOptions
{
  v2 = [(SSLogFileOptions *)self->_options copy];

  return v2;
}

- (void)writeString:(id)string
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__SSRollableLog_writeString___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = string;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __29__SSRollableLog_writeString___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[3])
  {
    [v2 _openLogFile];
    v2 = *(a1 + 32);
  }

  [v2 _checkLogFileSize];
  return [*(*(a1 + 32) + 24) writeData:{objc_msgSend(*(a1 + 40), "dataUsingEncoding:", 4)}];
}

- (void)_checkLogFileSize
{
  maxLogFileSize = [(SSLogFileOptions *)self->_options maxLogFileSize];
  if (maxLogFileSize)
  {
    v4 = maxLogFileSize;
    if ([(SSLogFileOptions *)self->_options maxNumberOfLogFiles]>= 2 && CFAbsoluteTimeGetCurrent() - self->_lastFileStatTime >= 60.0)
    {
      memset(&v5.st_size, 0, 48);
      if (!stat([-[SSRollableLog _activeLogFilePath](self _activeLogFilePath], &v5) && v5.st_size >= v4)
      {
        [(SSRollableLog *)self _rollLogFiles];
      }
    }
  }
}

- (void)_closeLogFile
{
  fileObserverSource = self->_fileObserverSource;
  if (fileObserverSource)
  {
    dispatch_source_cancel(fileObserverSource);
    dispatch_release(self->_fileObserverSource);
    self->_fileObserverSource = 0;
  }

  self->_fileHandle = 0;
}

- (id)_logFilePathWithIndex:(int64_t)index
{
  logFileBaseName = [(SSLogFileOptions *)self->_options logFileBaseName];
  pathExtension = [(NSString *)logFileBaseName pathExtension];
  if ([(__CFString *)pathExtension length])
  {
    if (index < 1)
    {
      goto LABEL_8;
    }

    stringByDeletingPathExtension = [(NSString *)logFileBaseName stringByDeletingPathExtension];
    v8 = -[NSString stringByAppendingPathExtension:](stringByDeletingPathExtension, "stringByAppendingPathExtension:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", index]);
    v9 = pathExtension;
  }

  else
  {
    if (index >= 1)
    {
      logFileBaseName = -[NSString stringByAppendingPathExtension:](logFileBaseName, "stringByAppendingPathExtension:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", index]);
    }

    v9 = @"log";
    v8 = logFileBaseName;
  }

  logFileBaseName = [(NSString *)v8 stringByAppendingPathExtension:v9];
LABEL_8:
  logDirectoryPath = [(SSLogFileOptions *)self->_options logDirectoryPath];

  return [(NSString *)logDirectoryPath stringByAppendingPathComponent:logFileBaseName];
}

- (void)_openLogFile
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v29 = 0;
  v4 = [v3 createDirectoryAtPath:-[SSLogFileOptions logDirectoryPath](self->_options withIntermediateDirectories:"logDirectoryPath") attributes:1 error:{0, &v29}];

  if ((v4 & 1) == 0)
  {
    v5 = objc_alloc_init(SSMutableLogConfig);
    [(SSLogConfig *)v5 setSubsystem:@"SSRollableLog"];
    [(SSLogConfig *)v5 setSubsystem:@"com.apple.StoreServices"];
    v6 = v5;
    if (!v5)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [(SSLogConfig *)v6 shouldLog];
    if ([(SSLogConfig *)v6 shouldLogToDisk])
    {
      LODWORD(v8) = shouldLog | 2;
    }

    else
    {
      LODWORD(v8) = shouldLog;
    }

    oSLogObject = [(SSLogConfig *)v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      logDirectoryPath = [(SSLogFileOptions *)self->_options logDirectoryPath];
      v30 = 138412546;
      v31 = logDirectoryPath;
      v32 = 2112;
      v33 = v29;
      v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "Failed to create directory, %@, for a log file. %@", &v30, 22);
      if (v11)
      {
        v12 = v11;
        v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
        free(v12);
        SSFileLog(v6, @"%@", v14, v15, v16, v17, v18, v19, v13);
      }
    }
  }

  v20 = open([-[SSRollableLog _activeLogFilePath](self "_activeLogFilePath")], 522, 384);
  if ((v20 & 0x80000000) == 0)
  {
    v21 = v20;
    v22 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v20 closeOnDealloc:1];
    self->_fileHandle = v22;
    [(NSFileHandle *)v22 seekToEndOfFile];
    v23 = dup(v21);
    v24 = dispatch_source_create(MEMORY[0x1E69E9728], v23, 0x61uLL, self->_dispatchQueue);
    self->_fileObserverSource = v24;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __29__SSRollableLog__openLogFile__block_invoke;
    handler[3] = &unk_1E84AC408;
    handler[4] = self;
    dispatch_source_set_event_handler(v24, handler);
    fileObserverSource = self->_fileObserverSource;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __29__SSRollableLog__openLogFile__block_invoke_2;
    v26[3] = &__block_descriptor_36_e5_v8__0l;
    v27 = v23;
    dispatch_source_set_cancel_handler(fileObserverSource, v26);
    dispatch_resume(self->_fileObserverSource);
  }
}

uint64_t __29__SSRollableLog__openLogFile__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _closeLogFile];
  v2 = *(a1 + 32);

  return [v2 _openLogFile];
}

- (void)_rollLogFiles
{
  v6 = objc_alloc_init(MEMORY[0x1E696AC08]);
  [(SSRollableLog *)self _closeLogFile];
  maxNumberOfLogFiles = [(SSLogFileOptions *)self->_options maxNumberOfLogFiles];
  [v6 removeItemAtPath:-[SSRollableLog _logFilePathWithIndex:](self error:{"_logFilePathWithIndex:", maxNumberOfLogFiles - 1), 0}];
  v4 = maxNumberOfLogFiles - 2;
  if (maxNumberOfLogFiles >= 2)
  {
    do
    {
      v5 = v4;
      [v6 moveItemAtPath:-[SSRollableLog _logFilePathWithIndex:](self toPath:"_logFilePathWithIndex:" error:{v4), -[SSRollableLog _logFilePathWithIndex:](self, "_logFilePathWithIndex:", v4 + 1), 0}];
      v4 = v5 - 1;
    }

    while (v5);
  }

  [(SSRollableLog *)self _openLogFile];
}

@end