@interface MBTargetDeviceTransferTask
- (BOOL)_startWithError:(id *)error;
- (MBTargetDeviceTransferTask)initWithFileTransferSession:(id)session;
- (void)_cancel;
- (void)_finishWithError:(id)error;
- (void)cancel;
- (void)manager:(id)manager didFinishDeviceTransferWithError:(id)error;
- (void)manager:(id)manager didUpdateDeviceTransferProgress:(id)progress;
- (void)start;
- (void)startDataTransferWithPreflightInfo:(id)info completionHandler:(id)handler;
- (void)startKeychainDataImportWithKeychainInfo:(id)info completionHandler:(id)handler;
- (void)startKeychainDataTransferWithCompletionHandler:(id)handler;
- (void)startPreflightWithCompletionHandler:(id)handler;
@end

@implementation MBTargetDeviceTransferTask

- (MBTargetDeviceTransferTask)initWithFileTransferSession:(id)session
{
  v4.receiver = self;
  v4.super_class = MBTargetDeviceTransferTask;
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
    [MBTargetDeviceTransferTask _startWithError:];
  }

  v11 = manager;
  v12 = [manager startDeviceTransferWithTaskType:-[MBTargetDeviceTransferTask taskType](self sessionInfo:"taskType") error:{v8, error}];

  return v12;
}

- (void)start
{
  v2.receiver = self;
  v2.super_class = MBTargetDeviceTransferTask;
  [(MBDeviceTransferTask *)&v2 start];
}

- (void)_cancel
{
  v17 = *MEMORY[0x1E69E9840];
  queue = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(queue);

  manager = [(MBDeviceTransferTask *)self manager];
  if (!manager)
  {
    [MBTargetDeviceTransferTask _cancel];
  }

  v5 = manager;
  v12 = 0;
  v6 = [manager cancelDeviceTransferWithTaskType:-[MBTargetDeviceTransferTask taskType](self error:{"taskType"), &v12}];
  v7 = v12;
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    v9 = MBGetDefaultLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      taskType = [(MBTargetDeviceTransferTask *)self taskType];
      *buf = 134218242;
      v14 = taskType;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1DEB5D000, v9, OS_LOG_TYPE_ERROR, "Failed to cancel device transfer from target. taskType: %ld error:%@", buf, 0x16u);
      _MBLog(@"E ", "Failed to cancel device transfer from target. taskType: %ld error:%@", [(MBTargetDeviceTransferTask *)self taskType], v8);
    }
  }

  v11 = [MBError errorWithCode:202 format:@"Target device transfer canceled"];

  [(MBTargetDeviceTransferTask *)self _finishWithError:v11];
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = MBTargetDeviceTransferTask;
  [(MBDeviceTransferTask *)&v2 cancel];
}

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  queue = [(MBDeviceTransferTask *)self queue];
  dispatch_assert_queue_V2(queue);

  [(MBDeviceTransferTask *)self setProgressHandler:0];
  v6.receiver = self;
  v6.super_class = MBTargetDeviceTransferTask;
  [(MBDeviceTransferTask *)&v6 _finishWithError:errorCopy];
}

- (void)startPreflightWithCompletionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = 0;
  atomic_compare_exchange_strong(&self->_startedPreflight, &v5, 1u);
  if (v5)
  {
    [MBTargetDeviceTransferTask startPreflightWithCompletionHandler:];
  }

  v6 = handlerCopy;
  v7 = MBGetDefaultLog(handlerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_DEFAULT, "%@: Starting the preflight", &buf, 0xCu);
    _MBLog(@"Df", "%@: Starting the preflight", self);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__1;
  v21[4] = __Block_byref_object_dispose__1;
  v22 = 0;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  queue = [(MBDeviceTransferTask *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MBTargetDeviceTransferTask_startPreflightWithCompletionHandler___block_invoke;
  block[3] = &unk_1E86848B0;
  block[4] = self;
  v19 = v21;
  v10 = v8;
  v18 = v10;
  p_buf = &buf;
  dispatch_async(queue, block);

  queue2 = [(MBDeviceTransferTask *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__MBTargetDeviceTransferTask_startPreflightWithCompletionHandler___block_invoke_3;
  v13[3] = &unk_1E86848D8;
  v15 = &buf;
  v16 = v21;
  v13[4] = self;
  v14 = v6;
  v12 = v6;
  dispatch_group_notify(v10, queue2, v13);

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&buf, 8);
}

void __66__MBTargetDeviceTransferTask_startPreflightWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = 0;
  v3 = [v2 _handleCompletionWithError:&v11];
  v4 = v11;
  v5 = v11;
  if (v3)
  {
    if (([*(a1 + 32) started] & 1) == 0)
    {
      __66__MBTargetDeviceTransferTask_startPreflightWithCompletionHandler___block_invoke_cold_1();
    }

    v6 = [*(a1 + 32) manager];
    if (!v6)
    {
      __66__MBTargetDeviceTransferTask_startPreflightWithCompletionHandler___block_invoke_cold_2();
    }

    v7 = v6;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__MBTargetDeviceTransferTask_startPreflightWithCompletionHandler___block_invoke_2;
    v8[3] = &unk_1E8684888;
    v10 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
    v9 = *(a1 + 40);
    [v7 startPreflightWithCompletionHandler:v8];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
    dispatch_group_leave(*(a1 + 40));
  }
}

void __66__MBTargetDeviceTransferTask_startPreflightWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __66__MBTargetDeviceTransferTask_startPreflightWithCompletionHandler___block_invoke_3(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1[7] + 8) + 40);
  if (*(*(a1[6] + 8) + 40))
  {
    if (!v2)
    {
      v3 = MBGetDefaultLog(a1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = a1[4];
        v5 = *(*(a1[6] + 8) + 40);
        *buf = 138412546;
        v10 = v4;
        v11 = 2112;
        v12 = v5;
        _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_DEFAULT, "%@: Finished the preflight: %@", buf, 0x16u);
        _MBLog(@"Df", "%@: Finished the preflight: %@", a1[4], *(*(a1[6] + 8) + 40));
      }

      goto LABEL_8;
    }
  }

  else if (!v2)
  {
    __66__MBTargetDeviceTransferTask_startPreflightWithCompletionHandler___block_invoke_3_cold_1();
  }

  v3 = MBGetDefaultLog(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = a1[4];
    v7 = *(*(a1[7] + 8) + 40);
    *buf = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_ERROR, "%@: Failed the preflight: %@", buf, 0x16u);
    _MBLog(@"E ", "%@: Failed the preflight: %@", a1[4], *(*(a1[7] + 8) + 40));
  }

LABEL_8:

  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[6] + 8) + 40), *(*(a1[7] + 8) + 40));
  }

  return result;
}

- (void)startKeychainDataTransferWithCompletionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = 0;
  atomic_compare_exchange_strong(&self->_startedKeychainDataTransfer, &v5, 1u);
  if (v5)
  {
    [MBTargetDeviceTransferTask startKeychainDataTransferWithCompletionHandler:];
  }

  v6 = handlerCopy;
  v7 = MBGetDefaultLog(handlerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_DEFAULT, "%@: Starting the keychain data transfer", &buf, 0xCu);
    _MBLog(@"Df", "%@: Starting the keychain data transfer", self);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__1;
  v21[4] = __Block_byref_object_dispose__1;
  v22 = 0;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  queue = [(MBDeviceTransferTask *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__MBTargetDeviceTransferTask_startKeychainDataTransferWithCompletionHandler___block_invoke;
  block[3] = &unk_1E86848B0;
  block[4] = self;
  v19 = v21;
  v10 = v8;
  v18 = v10;
  p_buf = &buf;
  dispatch_async(queue, block);

  queue2 = [(MBDeviceTransferTask *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__MBTargetDeviceTransferTask_startKeychainDataTransferWithCompletionHandler___block_invoke_3;
  v13[3] = &unk_1E86848D8;
  v15 = &buf;
  v16 = v21;
  v13[4] = self;
  v14 = v6;
  v12 = v6;
  dispatch_group_notify(v10, queue2, v13);

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&buf, 8);
}

void __77__MBTargetDeviceTransferTask_startKeychainDataTransferWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = 0;
  v3 = [v2 _handleCompletionWithError:&v11];
  v4 = v11;
  v5 = v11;
  if (v3)
  {
    if (([*(a1 + 32) started] & 1) == 0)
    {
      __77__MBTargetDeviceTransferTask_startKeychainDataTransferWithCompletionHandler___block_invoke_cold_1();
    }

    v6 = [*(a1 + 32) manager];
    if (!v6)
    {
      __77__MBTargetDeviceTransferTask_startKeychainDataTransferWithCompletionHandler___block_invoke_cold_2();
    }

    v7 = v6;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__MBTargetDeviceTransferTask_startKeychainDataTransferWithCompletionHandler___block_invoke_2;
    v8[3] = &unk_1E8684900;
    v10 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
    v9 = *(a1 + 40);
    [v7 startKeychainDataTransferWithCompletionHandler:v8];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
    dispatch_group_leave(*(a1 + 40));
  }
}

void __77__MBTargetDeviceTransferTask_startKeychainDataTransferWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __77__MBTargetDeviceTransferTask_startKeychainDataTransferWithCompletionHandler___block_invoke_3(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1[7] + 8) + 40);
  if (*(*(a1[6] + 8) + 40))
  {
    if (!v2)
    {
      v3 = MBGetDefaultLog(a1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = a1[4];
        v5 = *(*(a1[6] + 8) + 40);
        *buf = 138412546;
        v10 = v4;
        v11 = 2112;
        v12 = v5;
        _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_DEFAULT, "%@: Finished the keychain data transfer: %@", buf, 0x16u);
        _MBLog(@"Df", "%@: Finished the keychain data transfer: %@", a1[4], *(*(a1[6] + 8) + 40));
      }

      goto LABEL_8;
    }
  }

  else if (!v2)
  {
    __77__MBTargetDeviceTransferTask_startKeychainDataTransferWithCompletionHandler___block_invoke_3_cold_1();
  }

  v3 = MBGetDefaultLog(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = a1[4];
    v7 = *(*(a1[7] + 8) + 40);
    *buf = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_ERROR, "%@: Failed the keychain data transfer: %@", buf, 0x16u);
    _MBLog(@"E ", "%@: Failed the keychain data transfer: %@", a1[4], *(*(a1[7] + 8) + 40));
  }

LABEL_8:

  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[6] + 8) + 40), *(*(a1[7] + 8) + 40));
  }

  return result;
}

- (void)startKeychainDataImportWithKeychainInfo:(id)info completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  handlerCopy = handler;
  if (!infoCopy)
  {
    [MBTargetDeviceTransferTask startKeychainDataImportWithKeychainInfo:completionHandler:];
  }

  v8 = 0;
  atomic_compare_exchange_strong(&self->_startedKeychainDataImport, &v8, 1u);
  if (v8)
  {
    [MBTargetDeviceTransferTask startKeychainDataImportWithKeychainInfo:completionHandler:];
  }

  v9 = handlerCopy;
  v10 = MBGetDefaultLog(handlerCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1DEB5D000, v10, OS_LOG_TYPE_DEFAULT, "%@: Starting the keychain data import", &buf, 0xCu);
    _MBLog(@"Df", "%@: Starting the keychain data import", self);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  v28 = 0;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  queue = [(MBDeviceTransferTask *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__MBTargetDeviceTransferTask_startKeychainDataImportWithKeychainInfo_completionHandler___block_invoke;
  block[3] = &unk_1E8684928;
  block[4] = self;
  p_buf = &buf;
  v13 = v11;
  v21 = v13;
  v14 = infoCopy;
  v22 = v14;
  dispatch_async(queue, block);

  queue2 = [(MBDeviceTransferTask *)self queue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88__MBTargetDeviceTransferTask_startKeychainDataImportWithKeychainInfo_completionHandler___block_invoke_3;
  v17[3] = &unk_1E8684950;
  v18 = v9;
  v19 = &buf;
  v17[4] = self;
  v16 = v9;
  dispatch_group_notify(v13, queue2, v17);

  _Block_object_dispose(&buf, 8);
}

void __88__MBTargetDeviceTransferTask_startKeychainDataImportWithKeychainInfo_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = [v2 _handleCompletionWithError:&v12];
  v4 = v12;
  v5 = v12;
  if (v3)
  {
    if (([*(a1 + 32) started] & 1) == 0)
    {
      __88__MBTargetDeviceTransferTask_startKeychainDataImportWithKeychainInfo_completionHandler___block_invoke_cold_1();
    }

    v6 = [*(a1 + 32) manager];
    if (!v6)
    {
      __88__MBTargetDeviceTransferTask_startKeychainDataImportWithKeychainInfo_completionHandler___block_invoke_cold_2();
    }

    v7 = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __88__MBTargetDeviceTransferTask_startKeychainDataImportWithKeychainInfo_completionHandler___block_invoke_2;
    v9[3] = &unk_1E8684690;
    v8 = *(a1 + 48);
    v11 = *(a1 + 56);
    v10 = *(a1 + 40);
    [v7 startKeychainDataImportWithKeychainInfo:v8 completionHandler:v9];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v4);
    dispatch_group_leave(*(a1 + 40));
  }
}

void __88__MBTargetDeviceTransferTask_startKeychainDataImportWithKeychainInfo_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __88__MBTargetDeviceTransferTask_startKeychainDataImportWithKeychainInfo_completionHandler___block_invoke_3(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1[6] + 8) + 40);
  v3 = MBGetDefaultLog(a1);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v6 = *(*(a1[6] + 8) + 40);
      *buf = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1DEB5D000, v4, OS_LOG_TYPE_ERROR, "%@: Failed the keychain data import: %@", buf, 0x16u);
      _MBLog(@"E ", "%@: Failed the keychain data import: %@", a1[4], *(*(a1[6] + 8) + 40));
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    *buf = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1DEB5D000, v4, OS_LOG_TYPE_DEFAULT, "%@: Finished the keychain data import", buf, 0xCu);
    _MBLog(@"Df", "%@: Finished the keychain data import", a1[4]);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[6] + 8) + 40));
  }

  return result;
}

- (void)startDataTransferWithPreflightInfo:(id)info completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  handlerCopy = handler;
  if (!infoCopy)
  {
    [MBTargetDeviceTransferTask startDataTransferWithPreflightInfo:completionHandler:];
  }

  v8 = 0;
  atomic_compare_exchange_strong(&self->_startedDataTransfer, &v8, 1u);
  if (v8)
  {
    [MBTargetDeviceTransferTask startDataTransferWithPreflightInfo:completionHandler:];
  }

  v9 = handlerCopy;
  v10 = MBGetDefaultLog(handlerCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1DEB5D000, v10, OS_LOG_TYPE_DEFAULT, "%@: Starting the data transfer", &buf, 0xCu);
    _MBLog(@"Df", "%@: Starting the data transfer", self);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  v28 = 0;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  queue = [(MBDeviceTransferTask *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__MBTargetDeviceTransferTask_startDataTransferWithPreflightInfo_completionHandler___block_invoke;
  block[3] = &unk_1E8684928;
  block[4] = self;
  p_buf = &buf;
  v13 = v11;
  v21 = v13;
  v14 = infoCopy;
  v22 = v14;
  dispatch_async(queue, block);

  queue2 = [(MBDeviceTransferTask *)self queue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __83__MBTargetDeviceTransferTask_startDataTransferWithPreflightInfo_completionHandler___block_invoke_3;
  v17[3] = &unk_1E8684950;
  v18 = v9;
  v19 = &buf;
  v17[4] = self;
  v16 = v9;
  dispatch_group_notify(v13, queue2, v17);

  _Block_object_dispose(&buf, 8);
}

void __83__MBTargetDeviceTransferTask_startDataTransferWithPreflightInfo_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = [v2 _handleCompletionWithError:&v12];
  v4 = v12;
  v5 = v12;
  if (v3)
  {
    if (([*(a1 + 32) started] & 1) == 0)
    {
      __83__MBTargetDeviceTransferTask_startDataTransferWithPreflightInfo_completionHandler___block_invoke_cold_1();
    }

    v6 = [*(a1 + 32) manager];
    if (!v6)
    {
      __83__MBTargetDeviceTransferTask_startDataTransferWithPreflightInfo_completionHandler___block_invoke_cold_2();
    }

    v7 = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __83__MBTargetDeviceTransferTask_startDataTransferWithPreflightInfo_completionHandler___block_invoke_2;
    v9[3] = &unk_1E8684690;
    v8 = *(a1 + 48);
    v11 = *(a1 + 56);
    v10 = *(a1 + 40);
    [v7 startDataTransferWithPreflightInfo:v8 completionHandler:v9];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v4);
    dispatch_group_leave(*(a1 + 40));
  }
}

void __83__MBTargetDeviceTransferTask_startDataTransferWithPreflightInfo_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __83__MBTargetDeviceTransferTask_startDataTransferWithPreflightInfo_completionHandler___block_invoke_3(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1[6] + 8) + 40);
  v3 = MBGetDefaultLog(a1);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v6 = *(*(a1[6] + 8) + 40);
      *buf = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1DEB5D000, v4, OS_LOG_TYPE_ERROR, "%@: Failed the data transfer: %@", buf, 0x16u);
      _MBLog(@"E ", "%@: Failed the data transfer: %@", a1[4], *(*(a1[6] + 8) + 40));
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    *buf = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1DEB5D000, v4, OS_LOG_TYPE_DEFAULT, "%@: Finished the data transfer", buf, 0xCu);
    _MBLog(@"Df", "%@: Finished the data transfer", a1[4]);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[6] + 8) + 40));
  }

  return result;
}

- (void)manager:(id)manager didFinishDeviceTransferWithError:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  finished = [(MBDeviceTransferTask *)self finished];
  if ((finished & 1) == 0)
  {
    v7 = MBGetDefaultLog(finished);
    v8 = v7;
    if (errorCopy)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        selfCopy2 = self;
        v11 = 2112;
        v12 = errorCopy;
        _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_ERROR, "%@: Failed the target transfer task: %@", buf, 0x16u);
        _MBLog(@"E ", "%@: Failed the target transfer task: %@", self, errorCopy);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_DEFAULT, "%@: Finished the target transfer task", buf, 0xCu);
      _MBLog(@"Df", "%@: Finished the target transfer task", self);
    }

    [(MBTargetDeviceTransferTask *)self _finishWithError:errorCopy];
  }
}

- (void)manager:(id)manager didUpdateDeviceTransferProgress:(id)progress
{
  v12 = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  finished = [(MBDeviceTransferTask *)self finished];
  if ((finished & 1) == 0)
  {
    v7 = MBGetDefaultLog(finished);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = progressCopy;
      _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_DEFAULT, "Updated progress: %@", buf, 0xCu);
      _MBLog(@"Df", "Updated progress: %@", progressCopy);
    }

    progressHandler = [(MBDeviceTransferTask *)self progressHandler];

    if (progressHandler)
    {
      progressHandler2 = [(MBDeviceTransferTask *)self progressHandler];
      (progressHandler2)[2](progressHandler2, progressCopy);
    }
  }
}

@end