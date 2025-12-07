@interface AFClientLiteInternal
- (id)initAndHandleCommand:(id)command afterCurrentRequest:(BOOL)request isOneWay:(BOOL)way commandHandler:(id)handler completion:(id)completion;
- (void)_handleCommand:(id)command afterCurrentRequest:(BOOL)request isOneWay:(BOOL)way completion:(id)completion;
- (void)dealloc;
- (void)handleCommand:(id)command completion:(id)completion;
@end

@implementation AFClientLiteInternal

- (void)handleCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AFClientLiteInternal_handleCommand_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  block[4] = self;
  v12 = commandCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = commandCopy;
  dispatch_async(queue, block);
}

void __49__AFClientLiteInternal_handleCommand_completion___block_invoke(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1[4] + 16);
  if (v2)
  {
    (*(v2 + 16))(v2, a1[5]);
    v3 = MEMORY[0x1E69C7788];
  }

  else
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[5];
      v8 = 136315394;
      v9 = "[AFClientLiteInternal handleCommand:completion:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s No command handler in client for command %@", &v8, 0x16u);
    }

    v3 = MEMORY[0x1E69C7778];
  }

  v5 = objc_alloc_init(v3);
  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, v5, 0);
  }
}

- (void)_handleCommand:(id)command afterCurrentRequest:(BOOL)request isOneWay:(BOOL)way completion:(id)completion
{
  wayCopy = way;
  requestCopy = request;
  v40 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  completionCopy = completion;
  v12 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v31 = "[AFClientLiteInternal _handleCommand:afterCurrentRequest:isOneWay:completion:]";
    v32 = 2048;
    selfCopy = self;
    v34 = 2112;
    v35 = commandCopy;
    v36 = 1024;
    v37 = requestCopy;
    v38 = 1024;
    v39 = wayCopy;
    _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s %p Started %@ %d %d", buf, 0x2Cu);
  }

  v13 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.siri.client_lite" options:0];
  objc_initWeak(buf, v13);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __79__AFClientLiteInternal__handleCommand_afterCurrentRequest_isOneWay_completion___block_invoke;
  v27[3] = &unk_1E73448F0;
  v27[4] = self;
  v14 = completionCopy;
  v28 = v14;
  objc_copyWeak(&v29, buf);
  v15 = MEMORY[0x193AFB7B0](v27);
  v16 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F058C678];
  [v13 setExportedInterface:v16];

  [v13 setExportedObject:self];
  v17 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F05BEDE0];
  [v13 setRemoteObjectInterface:v17];

  [v13 resume];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __79__AFClientLiteInternal__handleCommand_afterCurrentRequest_isOneWay_completion___block_invoke_6;
  v25[3] = &unk_1E7348AA8;
  v18 = v15;
  v26 = v18;
  v19 = [v13 remoteObjectProxyWithErrorHandler:v25];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __79__AFClientLiteInternal__handleCommand_afterCurrentRequest_isOneWay_completion___block_invoke_8;
  v22[3] = &unk_1E7345A40;
  v20 = v18;
  v24 = v20;
  v21 = v13;
  v23 = v21;
  [v19 handleRemoteCommand:commandCopy afterCurrentRequest:requestCopy isOneWay:wayCopy completion:v22];

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);
}

void __79__AFClientLiteInternal__handleCommand_afterCurrentRequest_isOneWay_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__AFClientLiteInternal__handleCommand_afterCurrentRequest_isOneWay_completion___block_invoke_2;
  block[3] = &unk_1E73448C8;
  v15 = a2;
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v9 = v5;
  objc_copyWeak(&v14, (a1 + 48));
  dispatch_async(v8, block);
  objc_destroyWeak(&v14);
}

void __79__AFClientLiteInternal__handleCommand_afterCurrentRequest_isOneWay_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFClientLiteInternal _handleCommand:afterCurrentRequest:isOneWay:completion:]_block_invoke";
    v7 = 2114;
    v8 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %{public}@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __79__AFClientLiteInternal__handleCommand_afterCurrentRequest_isOneWay_completion___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  if (v2 == 1 && !*(a1 + 32))
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 40);
      v12 = 136315394;
      v13 = "[AFClientLiteInternal _handleCommand:afterCurrentRequest:isOneWay:completion:]_block_invoke_2";
      v14 = 2048;
      v15 = v9;
      _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p Finished", &v12, 0x16u);
    }
  }

  else
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = 136315906;
      v13 = "[AFClientLiteInternal _handleCommand:afterCurrentRequest:isOneWay:completion:]_block_invoke";
      v14 = 2048;
      v15 = v10;
      v16 = 1024;
      v17 = v2;
      v18 = 2112;
      v19 = v11;
      _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %p Failed %d %@", &v12, 0x26u);
    }
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 64), *(a1 + 32));
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained invalidate];
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "[AFClientLiteInternal dealloc]";
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = AFClientLiteInternal;
  [(AFClientLiteInternal *)&v4 dealloc];
}

- (id)initAndHandleCommand:(id)command afterCurrentRequest:(BOOL)request isOneWay:(BOOL)way commandHandler:(id)handler completion:(id)completion
{
  wayCopy = way;
  requestCopy = request;
  v28 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  handlerCopy = handler;
  completionCopy = completion;
  v23.receiver = self;
  v23.super_class = AFClientLiteInternal;
  v15 = [(AFClientLiteInternal *)&v23 init];
  if (v15)
  {
    v16 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v25 = "[AFClientLiteInternal initAndHandleCommand:afterCurrentRequest:isOneWay:commandHandler:completion:]";
      v26 = 2048;
      v27 = v15;
      _os_log_impl(&dword_1912FE000, v16, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
    }

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create(0, v17);

    queue = v15->_queue;
    v15->_queue = v18;

    v20 = MEMORY[0x193AFB7B0](handlerCopy);
    commandHandler = v15->_commandHandler;
    v15->_commandHandler = v20;

    [(AFClientLiteInternal *)v15 _handleCommand:commandCopy afterCurrentRequest:requestCopy isOneWay:wayCopy completion:completionCopy];
  }

  return v15;
}

@end