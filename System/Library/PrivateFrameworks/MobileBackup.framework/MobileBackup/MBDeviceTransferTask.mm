@interface MBDeviceTransferTask
- (BOOL)_handleCompletionWithError:(id *)error;
- (MBDeviceTransferTask)initWithFileTransferSession:(id)session;
- (MBManager)manager;
- (OS_dispatch_queue)queue;
- (void)_finishWithError:(id)error;
- (void)_suspend;
- (void)cancel;
- (void)dealloc;
- (void)manager:(id)manager didUpdateDeviceTransferConnectionInfo:(id)info;
- (void)managerDidLoseConnectionToService:(id)service;
- (void)setQueue:(id)queue;
- (void)start;
@end

@implementation MBDeviceTransferTask

- (OS_dispatch_queue)queue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  queue = selfCopy->_queue;
  if (!queue)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UTILITY, 0);

    v6 = objc_opt_class();
    Name = class_getName(v6);
    v8 = dispatch_queue_create(Name, v5);
    v9 = selfCopy->_queue;
    selfCopy->_queue = v8;

    queue = selfCopy->_queue;
  }

  v10 = queue;
  objc_sync_exit(selfCopy);

  return v10;
}

- (void)setQueue:(id)queue
{
  queueCopy = queue;
  obj = self;
  objc_sync_enter(obj);
  queue = obj->_queue;
  obj->_queue = queueCopy;

  objc_sync_exit(obj);
}

- (MBManager)manager
{
  queue = [(MBDeviceTransferTask *)self queue];
  if (!queue)
  {
    [MBDeviceTransferTask manager];
  }

  v4 = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  manager = selfCopy->_manager;
  if (!manager)
  {
    v7 = [[MBManager alloc] initWithDelegate:selfCopy eventQueue:v4];
    v8 = selfCopy->_manager;
    selfCopy->_manager = v7;

    manager = selfCopy->_manager;
  }

  v9 = manager;
  objc_sync_exit(selfCopy);

  return v9;
}

- (MBDeviceTransferTask)initWithFileTransferSession:(id)session
{
  v15 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  if (!sessionCopy)
  {
    [MBDeviceTransferTask initWithFileTransferSession:];
  }

  v5 = sessionCopy;
  v10.receiver = self;
  v10.super_class = MBDeviceTransferTask;
  v6 = [(MBDeviceTransferTask *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6 = [(MBDeviceTransferTask *)v6 setFileTransferSession:v5];
  }

  v8 = MBGetDefaultLog(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_DEFAULT, "%@: init, fileTransferSession:%@", buf, 0x16u);
    _MBLog(@"Df", "%@: init, fileTransferSession:%@", v7, v5);
  }

  return v7;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MBGetDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_DEFAULT, "%@: dealloc", buf, 0xCu);
    _MBLog(@"Df", "%@: dealloc", self);
  }

  v4.receiver = self;
  v4.super_class = MBDeviceTransferTask;
  [(MBDeviceTransferTask *)&v4 dealloc];
}

- (void)start
{
  v2 = atomic_load(&self->_started);
  if (v2)
  {
    [MBDeviceTransferTask start];
  }

  queue = [(MBDeviceTransferTask *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__MBDeviceTransferTask_start__block_invoke;
  block[3] = &unk_1E8684358;
  block[4] = self;
  dispatch_async(queue, block);
}

void __29__MBDeviceTransferTask_start__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MBGetDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1DEB5D000, v2, OS_LOG_TYPE_DEFAULT, "%@: Starting", buf, 0xCu);
    _MBLog(@"Df", "%@: Starting", *(a1 + 32));
  }

  v4 = [*(a1 + 32) canceled];
  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 _cancel];
  }

  else
  {
    v10 = 0;
    v6 = [v5 _startWithError:&v10];
    v7 = v10;
    v8 = v7;
    if ((v6 & 1) == 0 && !v7)
    {
      __29__MBDeviceTransferTask_start__block_invoke_cold_1();
    }

    v9 = *(a1 + 32);
    if (v6)
    {
      if (atomic_exchange(v9 + 24, 1u))
      {
        __29__MBDeviceTransferTask_start__block_invoke_cold_2();
      }
    }

    else
    {
      [(atomic_uchar *)v9 _finishWithError:v8];
    }

    if ([*(a1 + 32) canceled])
    {
      [*(a1 + 32) _cancel];
    }
  }
}

- (void)cancel
{
  v9 = *MEMORY[0x1E69E9840];
  if ((atomic_exchange(&self->_canceled, 1u) & 1) == 0)
  {
    started = [(MBDeviceTransferTask *)self started];
    if (started)
    {
      v4 = MBGetDefaultLog(started);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1DEB5D000, v4, OS_LOG_TYPE_DEFAULT, "%@: Canceling", buf, 0xCu);
        _MBLog(@"Df", "%@: Canceling", self);
      }

      queue = [(MBDeviceTransferTask *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __30__MBDeviceTransferTask_cancel__block_invoke;
      block[3] = &unk_1E8684358;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }
}

- (void)_finishWithError:(id)error
{
  v14 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  queue = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(queue);

  if ((atomic_exchange(&self->_finished, 1u) & 1) == 0)
  {
    v7 = MBGetDefaultLog(v6);
    v8 = v7;
    if (errorCopy)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        selfCopy2 = self;
        v12 = 2112;
        v13 = errorCopy;
        _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_ERROR, "%@: Finishing the device transfer task: %@", buf, 0x16u);
        _MBLog(@"E ", "%@: Finishing the device transfer task: %@", self, errorCopy);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_DEFAULT, "%@: Finishing the device transfer task", buf, 0xCu);
      _MBLog(@"Df", "%@: Finishing the device transfer task", self);
    }

    [(MBDeviceTransferTask *)self setCompletionError:errorCopy];
    completionHandler = [(MBDeviceTransferTask *)self completionHandler];
    if (completionHandler)
    {
      [(MBDeviceTransferTask *)self setProgressHandler:0];
      [(MBDeviceTransferTask *)self setConnectionInfoHandler:0];
      [(MBDeviceTransferTask *)self setConnectionStateHandler:0];
      [(MBDeviceTransferTask *)self setCompletionHandler:0];
      (completionHandler)[2](completionHandler, errorCopy);
    }
  }
}

- (BOOL)_handleCompletionWithError:(id *)error
{
  if (!error)
  {
    [MBDeviceTransferTask _handleCompletionWithError:];
  }

  queue = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(MBDeviceTransferTask *)self canceled])
  {
    v6 = @"Canceled";
    v7 = 202;
    goto LABEL_4;
  }

  if ([(MBDeviceTransferTask *)self finished])
  {
    completionError = [(MBDeviceTransferTask *)self completionError];
    if (completionError)
    {
      goto LABEL_8;
    }

    v6 = @"Invalid state (finished)";
    v7 = 1;
LABEL_4:
    completionError = [MBError errorWithCode:v7 format:v6];
    if (!completionError)
    {
      return 1;
    }

LABEL_8:
    v9 = completionError;
    *error = v9;

    return 0;
  }

  return 1;
}

- (void)_suspend
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = MBGetDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_DEFAULT, "%@: Suspending", buf, 0xCu);
    _MBLog(@"Df", "%@: Suspending", self);
  }

  if (atomic_exchange(&self->_suspended, 1u))
  {
    [MBDeviceTransferTask _suspend];
  }
}

- (void)managerDidLoseConnectionToService:(id)service
{
  v13 = *MEMORY[0x1E69E9840];
  queue = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(queue);

  started = [(MBDeviceTransferTask *)self started];
  if (started)
  {
    v7 = [MBError errorWithCode:19 format:@"XPC connection interrupted"];
    v8 = MBGetDefaultLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_ERROR, "Lost connection, error:%@", buf, 0xCu);
      _MBLog(@"E ", "Lost connection, error:%@", v7);
    }

    [(MBDeviceTransferTask *)self _finishWithError:v7];
  }

  else
  {
    v7 = MBGetDefaultLog(started);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138543362;
      v12 = v9;
      _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring %{public}@", buf, 0xCu);

      v10 = NSStringFromSelector(a2);
      _MBLog(@"Df", "Ignoring %{public}@", v10);
    }
  }
}

- (void)manager:(id)manager didUpdateDeviceTransferConnectionInfo:(id)info
{
  managerCopy = manager;
  infoCopy = info;
  if (!infoCopy)
  {
    [MBDeviceTransferTask manager:didUpdateDeviceTransferConnectionInfo:];
  }

  v7 = infoCopy;
  if ([infoCopy connectionState] != 1 && objc_msgSend(v7, "connectionState") != 2)
  {
    [MBDeviceTransferTask manager:didUpdateDeviceTransferConnectionInfo:];
  }

  connectionStateHandler = [(MBDeviceTransferTask *)self connectionStateHandler];

  if (connectionStateHandler)
  {
    connectionStateHandler2 = [(MBDeviceTransferTask *)self connectionStateHandler];
    connectionStateHandler2[2](connectionStateHandler2, [v7 connectionState]);
  }

  connectionInfoHandler = [(MBDeviceTransferTask *)self connectionInfoHandler];

  if (connectionInfoHandler)
  {
    connectionInfoHandler2 = [(MBDeviceTransferTask *)self connectionInfoHandler];
    (connectionInfoHandler2)[2](connectionInfoHandler2, v7);
  }
}

@end