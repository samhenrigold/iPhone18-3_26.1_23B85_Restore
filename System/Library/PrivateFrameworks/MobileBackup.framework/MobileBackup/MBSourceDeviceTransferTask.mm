@interface MBSourceDeviceTransferTask
- (BOOL)_startWithError:(id *)error;
- (MBSourceDeviceTransferTask)initWithFileTransferSession:(id)session;
- (void)_cancel;
- (void)_finishWithError:(id)error;
- (void)_shortenPrebuddyExpirationIfNeeded;
- (void)cancel;
- (void)manager:(id)manager didFinishDeviceTransferKeychainTransfer:(id)transfer;
- (void)manager:(id)manager didFinishDeviceTransferWithError:(id)error;
- (void)manager:(id)manager didUpdateDeviceTransferProgress:(id)progress;
- (void)start;
@end

@implementation MBSourceDeviceTransferTask

- (MBSourceDeviceTransferTask)initWithFileTransferSession:(id)session
{
  v4.receiver = self;
  v4.super_class = MBSourceDeviceTransferTask;
  return [(MBDeviceTransferTask *)&v4 initWithFileTransferSession:session];
}

- (BOOL)_startWithError:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  queue = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = MBGetDefaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_DEFAULT, "%@: Starting the device transfer task", buf, 0xCu);
    _MBLog(@"Df", "%@: Starting the device transfer task", self);
  }

  v8 = objc_opt_new();
  fileTransferSession = [(MBDeviceTransferTask *)self fileTransferSession];
  [v8 setFileTransferSession:fileTransferSession];

  manager = [(MBDeviceTransferTask *)self manager];
  if (!manager)
  {
    [MBSourceDeviceTransferTask _startWithError:];
  }

  v11 = manager;
  v12 = [manager startDeviceTransferWithTaskType:-[MBSourceDeviceTransferTask taskType](self sessionInfo:"taskType") error:{v8, error}];

  return v12;
}

- (void)start
{
  v2.receiver = self;
  v2.super_class = MBSourceDeviceTransferTask;
  [(MBDeviceTransferTask *)&v2 start];
}

- (void)_cancel
{
  v16 = *MEMORY[0x1E69E9840];
  queue = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(queue);

  manager = [(MBDeviceTransferTask *)self manager];
  v11 = 0;
  v5 = [manager cancelDeviceTransferWithTaskType:-[MBSourceDeviceTransferTask taskType](self error:{"taskType"), &v11}];
  v6 = v11;

  if ((v5 & 1) == 0)
  {
    v8 = MBGetDefaultLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      taskType = [(MBSourceDeviceTransferTask *)self taskType];
      *buf = 134218242;
      v13 = taskType;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_ERROR, "Failed to cancel device transfer from source. taskType: %ld error:%@", buf, 0x16u);
      _MBLog(@"E ", "Failed to cancel device transfer from source. taskType: %ld error:%@", [(MBSourceDeviceTransferTask *)self taskType], v6);
    }
  }

  v10 = [MBError errorWithCode:202 format:@"Source device transfer canceled"];

  [(MBSourceDeviceTransferTask *)self _finishWithError:v10];
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = MBSourceDeviceTransferTask;
  [(MBDeviceTransferTask *)&v2 cancel];
}

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  queue = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(queue);

  [(MBDeviceTransferTask *)self setProgressHandler:0];
  v6.receiver = self;
  v6.super_class = MBSourceDeviceTransferTask;
  [(MBDeviceTransferTask *)&v6 _finishWithError:errorCopy];
}

- (void)_shortenPrebuddyExpirationIfNeeded
{
  v2 = +[MBPrebuddyManager sharedManager];
  [v2 shortenPrebuddyExpiration];
}

- (void)manager:(id)manager didFinishDeviceTransferWithError:(id)error
{
  v14 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  queue = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = MBGetDefaultLog(v7);
  v9 = v8;
  if (errorCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v12 = 2112;
      v13 = errorCopy;
      _os_log_impl(&dword_1DEB5D000, v9, OS_LOG_TYPE_ERROR, "%@: Failed the source transfer task: %@", buf, 0x16u);
      _MBLog(@"E ", "%@: Failed the source transfer task: %@", self, errorCopy);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1DEB5D000, v9, OS_LOG_TYPE_DEFAULT, "%@: Finished the source transfer task", buf, 0xCu);
      _MBLog(@"Df", "%@: Finished the source transfer task", self);
    }

    [(MBSourceDeviceTransferTask *)self _shortenPrebuddyExpirationIfNeeded];
  }

  [(MBSourceDeviceTransferTask *)self _finishWithError:errorCopy];
}

- (void)manager:(id)manager didFinishDeviceTransferKeychainTransfer:(id)transfer
{
  managerCopy = manager;
  transferCopy = transfer;
  __assert_rtn("[MBSourceDeviceTransferTask manager:didFinishDeviceTransferKeychainTransfer:]", "MBSourceDeviceTransferTask.m", 96, "0 && Unexpected call");
}

- (void)manager:(id)manager didUpdateDeviceTransferProgress:(id)progress
{
  v13 = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  queue = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = MBGetDefaultLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = progressCopy;
    _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_DEFAULT, "Updated progress: %@", buf, 0xCu);
    _MBLog(@"Df", "Updated progress: %@", progressCopy);
  }

  progressHandler = [(MBDeviceTransferTask *)self progressHandler];

  if (progressHandler)
  {
    progressHandler2 = [(MBDeviceTransferTask *)self progressHandler];
    (progressHandler2)[2](progressHandler2, progressCopy);
  }
}

@end