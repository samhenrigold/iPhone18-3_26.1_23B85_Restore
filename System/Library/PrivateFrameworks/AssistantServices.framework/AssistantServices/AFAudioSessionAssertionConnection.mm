@interface AFAudioSessionAssertionConnection
- (AFAudioSessionAssertionConnection)initWithInstanceContext:(id)context acquisitionContext:(id)acquisitionContext relinquishmentHandler:(id)handler;
- (NSString)description;
- (id)_xpcConnection;
- (void)_acquireWithContext:(id)context;
- (void)_clearXPCConnection;
- (void)_finalizeWithContext:(id)context error:(id)error;
- (void)_relinquishWithContext:(id)context error:(id)error options:(unint64_t)options;
- (void)dealloc;
- (void)handleXPCConnectionInterrupted;
- (void)handleXPCConnectionInvalidated;
- (void)invalidate;
- (void)relinquishWithContext:(id)context options:(unint64_t)options;
- (void)relinquishWithError:(id)error options:(unint64_t)options;
@end

@implementation AFAudioSessionAssertionConnection

- (void)_clearXPCConnection
{
  v10 = *MEMORY[0x1E69E9840];
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315394;
      v7 = "[AFAudioSessionAssertionConnection _clearXPCConnection]";
      v8 = 2048;
      v9 = xpcConnection;
      _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Destroy XPC connection %p.", &v6, 0x16u);
      xpcConnection = self->_xpcConnection;
    }

    [(NSXPCConnection *)xpcConnection setExportedObject:0];
    [(NSXPCConnection *)self->_xpcConnection invalidate];
    v5 = self->_xpcConnection;
    self->_xpcConnection = 0;
  }
}

- (id)_xpcConnection
{
  v22 = *MEMORY[0x1E69E9840];
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = [(AFInstanceContext *)self->_instanceContext createXPCConnectionWithMachServiceName:@"com.apple.assistant.audio-session-assertion" options:0];
    v5 = self->_xpcConnection;
    self->_xpcConnection = v4;

    [(NSXPCConnection *)self->_xpcConnection _setQueue:self->_queue];
    objc_initWeak(&location, self);
    v6 = self->_xpcConnection;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __51__AFAudioSessionAssertionConnection__xpcConnection__block_invoke;
    v15[3] = &unk_1E7348A80;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v6 setInvalidationHandler:v15];
    v7 = self->_xpcConnection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__AFAudioSessionAssertionConnection__xpcConnection__block_invoke_2;
    v13[3] = &unk_1E7348A80;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v7 setInterruptionHandler:v13];
    v8 = self->_xpcConnection;
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F05BF140];
    [(NSXPCConnection *)v8 setRemoteObjectInterface:v9];

    [(NSXPCConnection *)self->_xpcConnection resume];
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v12 = self->_xpcConnection;
      *buf = 136315394;
      v19 = "[AFAudioSessionAssertionConnection _xpcConnection]";
      v20 = 2048;
      v21 = v12;
      _os_log_debug_impl(&dword_1912FE000, v10, OS_LOG_TYPE_DEBUG, "%s Create XPC connection %p.", buf, 0x16u);
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    xpcConnection = self->_xpcConnection;
  }

  return xpcConnection;
}

void __51__AFAudioSessionAssertionConnection__xpcConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void __51__AFAudioSessionAssertionConnection__xpcConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

- (void)handleXPCConnectionInvalidated
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[AFAudioSessionAssertionConnection handleXPCConnectionInvalidated]";
    v6 = 2048;
    selfCopy = self;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %p", &v4, 0x16u);
  }

  [(AFAudioSessionAssertionConnection *)self invalidate];
}

- (void)handleXPCConnectionInterrupted
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[AFAudioSessionAssertionConnection handleXPCConnectionInterrupted]";
    v6 = 2048;
    selfCopy = self;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %p", &v4, 0x16u);
  }

  [(AFAudioSessionAssertionConnection *)self invalidate];
}

- (void)_finalizeWithContext:(id)context error:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  errorCopy = error;
  if ([(AFTwoArgumentSafetyBlock *)self->_relinquishmentHandler invokeWithValue:contextCopy andValue:errorCopy])
  {
    v8 = AFSiriLogContextConnection;
    if (errorCopy)
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315650;
        v10 = "[AFAudioSessionAssertionConnection _finalizeWithContext:error:]";
        v11 = 2048;
        selfCopy2 = self;
        v13 = 2112;
        v14 = errorCopy;
        _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s %p error = %@", &v9, 0x20u);
      }
    }

    else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v9 = 136315650;
      v10 = "[AFAudioSessionAssertionConnection _finalizeWithContext:error:]";
      v11 = 2048;
      selfCopy2 = self;
      v13 = 2112;
      v14 = contextCopy;
      _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p context = %@", &v9, 0x20u);
    }
  }

  [(AFAudioSessionAssertionConnection *)self _clearXPCConnection];
}

- (void)_relinquishWithContext:(id)context error:(id)error options:(unint64_t)options
{
  v25 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  errorCopy = error;
  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v18 = "[AFAudioSessionAssertionConnection _relinquishWithContext:error:options:]";
    v19 = 2048;
    selfCopy = self;
    v21 = 2112;
    v22 = contextCopy;
    v23 = 2112;
    v24 = errorCopy;
    _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s %p context = %@, error = %@", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  _xpcConnection = [(AFAudioSessionAssertionConnection *)self _xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__AFAudioSessionAssertionConnection__relinquishWithContext_error_options___block_invoke;
  v15[3] = &unk_1E7349738;
  objc_copyWeak(&v16, buf);
  v12 = [_xpcConnection remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__AFAudioSessionAssertionConnection__relinquishWithContext_error_options___block_invoke_18;
  v13[3] = &unk_1E7348A80;
  objc_copyWeak(&v14, buf);
  [v12 relinquishAudioSessionWithContext:contextCopy error:errorCopy options:options completion:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

void __74__AFAudioSessionAssertionConnection__relinquishWithContext_error_options___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = 136315650;
    v8 = "[AFAudioSessionAssertionConnection _relinquishWithContext:error:options:]_block_invoke";
    v9 = 2048;
    v10 = WeakRetained;
    v11 = 2112;
    v12 = v3;
    _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s %p error = %@", &v7, 0x20u);
  }
}

void __74__AFAudioSessionAssertionConnection__relinquishWithContext_error_options___block_invoke_18(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 136315394;
    v6 = "[AFAudioSessionAssertionConnection _relinquishWithContext:error:options:]_block_invoke";
    v7 = 2048;
    v8 = WeakRetained;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p done", &v5, 0x16u);
  }
}

- (void)_acquireWithContext:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v18 = "[AFAudioSessionAssertionConnection _acquireWithContext:]";
    v19 = 2048;
    selfCopy = self;
    v21 = 2112;
    v22 = contextCopy;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p context = %@", buf, 0x20u);
  }

  v6 = self->_queue;
  objc_initWeak(buf, self);
  _xpcConnection = [(AFAudioSessionAssertionConnection *)self _xpcConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__AFAudioSessionAssertionConnection__acquireWithContext___block_invoke;
  v14[3] = &unk_1E7349710;
  v8 = v6;
  v15 = v8;
  objc_copyWeak(&v16, buf);
  v9 = [_xpcConnection remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__AFAudioSessionAssertionConnection__acquireWithContext___block_invoke_3;
  v11[3] = &unk_1E73427C0;
  v10 = v8;
  v12 = v10;
  objc_copyWeak(&v13, buf);
  [v9 acquireAudioSessionWithContext:contextCopy relinquishmentHandler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v16);

  objc_destroyWeak(buf);
}

void __57__AFAudioSessionAssertionConnection__acquireWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__AFAudioSessionAssertionConnection__acquireWithContext___block_invoke_2;
  v6[3] = &unk_1E73470E0;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void __57__AFAudioSessionAssertionConnection__acquireWithContext___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__AFAudioSessionAssertionConnection__acquireWithContext___block_invoke_4;
  block[3] = &unk_1E7347500;
  objc_copyWeak(&v13, (a1 + 40));
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);

  objc_destroyWeak(&v13);
}

void __57__AFAudioSessionAssertionConnection__acquireWithContext___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finalizeWithContext:*(a1 + 32) error:*(a1 + 40)];
}

void __57__AFAudioSessionAssertionConnection__acquireWithContext___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finalizeWithContext:0 error:*(a1 + 32)];
}

- (void)relinquishWithError:(id)error options:(unint64_t)options
{
  v23 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v10 = v7;
    v11 = AFAssertionRelinquishmentOptionsGetNames(options);
    *buf = 136315906;
    v16 = "[AFAudioSessionAssertionConnection relinquishWithError:options:]";
    v17 = 2048;
    selfCopy = self;
    v19 = 2112;
    v20 = errorCopy;
    v21 = 2112;
    v22 = v11;
    _os_log_error_impl(&dword_1912FE000, v10, OS_LOG_TYPE_ERROR, "%s %p error = %@, options = %@", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AFAudioSessionAssertionConnection_relinquishWithError_options___block_invoke;
  block[3] = &unk_1E73484C0;
  block[4] = self;
  v13 = errorCopy;
  optionsCopy = options;
  v9 = errorCopy;
  dispatch_async(queue, block);
}

- (void)relinquishWithContext:(id)context options:(unint64_t)options
{
  v23 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = AFAssertionRelinquishmentOptionsGetNames(options);
    *buf = 136315906;
    v16 = "[AFAudioSessionAssertionConnection relinquishWithContext:options:]";
    v17 = 2048;
    selfCopy = self;
    v19 = 2112;
    v20 = contextCopy;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p context = %@, options = %@", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AFAudioSessionAssertionConnection_relinquishWithContext_options___block_invoke;
  block[3] = &unk_1E73484C0;
  block[4] = self;
  v13 = contextCopy;
  optionsCopy = options;
  v11 = contextCopy;
  dispatch_async(queue, block);
}

- (void)invalidate
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[AFAudioSessionAssertionConnection invalidate]";
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AFAudioSessionAssertionConnection_invalidate__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __47__AFAudioSessionAssertionConnection_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ is invalidated without relinquishment and finalization.", v1];
  v2 = [AFError errorWithCode:42 description:v3];
  [v1 _finalizeWithContext:0 error:v2];
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "[AFAudioSessionAssertionConnection dealloc]";
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ is deallocated without relinquishment and finalization.", self];
  v5 = [AFError errorWithCode:41 description:v4];
  [(AFAudioSessionAssertionConnection *)self _finalizeWithContext:0 error:v5];

  v6.receiver = self;
  v6.super_class = AFAudioSessionAssertionConnection;
  [(AFAudioSessionAssertionConnection *)&v6 dealloc];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7.receiver = self;
  v7.super_class = AFAudioSessionAssertionConnection;
  v4 = [(AFAudioSessionAssertionConnection *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ {uuid = %@, instanceContext = %@, acquisitionContext = %@}", v4, self->_uuid, self->_instanceContext, self->_acquisitionContext];

  return v5;
}

- (AFAudioSessionAssertionConnection)initWithInstanceContext:(id)context acquisitionContext:(id)acquisitionContext relinquishmentHandler:(id)handler
{
  v42 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  acquisitionContextCopy = acquisitionContext;
  handlerCopy = handler;
  v33.receiver = self;
  v33.super_class = AFAudioSessionAssertionConnection;
  v11 = [(AFAudioSessionAssertionConnection *)&v33 init];
  if (v11)
  {
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v35 = "[AFAudioSessionAssertionConnection initWithInstanceContext:acquisitionContext:relinquishmentHandler:]";
      v36 = 2048;
      v37 = v11;
      v38 = 2112;
      v39 = contextCopy;
      v40 = 2112;
      v41 = acquisitionContextCopy;
      _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s %p instanceContext = %@, acquisitionContext = %@", buf, 0x2Au);
    }

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INITIATED, 0);
    v15 = AFAudioSessionAssertionGetConnectionWorkloop();
    v16 = dispatch_queue_create_with_target_V2("com.apple.assistant.audio-session-assertion.client-connection", v14, v15);
    queue = v11->_queue;
    v11->_queue = v16;

    if (contextCopy)
    {
      v18 = contextCopy;
    }

    else
    {
      v18 = +[AFInstanceContext currentContext];
    }

    instanceContext = v11->_instanceContext;
    v11->_instanceContext = v18;

    v20 = [acquisitionContextCopy copy];
    acquisitionContext = v11->_acquisitionContext;
    v11->_acquisitionContext = v20;

    v22 = [AFTwoArgumentSafetyBlock alloc];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __102__AFAudioSessionAssertionConnection_initWithInstanceContext_acquisitionContext_relinquishmentHandler___block_invoke;
    v31[3] = &unk_1E7342798;
    v32 = handlerCopy;
    v23 = [AFError errorWithCode:40];
    v24 = [(AFTwoArgumentSafetyBlock *)v22 initWithBlock:v31 defaultValue1:0 defaultValue2:v23];
    relinquishmentHandler = v11->_relinquishmentHandler;
    v11->_relinquishmentHandler = v24;

    v26 = v11->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__AFAudioSessionAssertionConnection_initWithInstanceContext_acquisitionContext_relinquishmentHandler___block_invoke_2;
    block[3] = &unk_1E7349860;
    v29 = v11;
    v30 = acquisitionContextCopy;
    dispatch_async(v26, block);
  }

  return v11;
}

uint64_t __102__AFAudioSessionAssertionConnection_initWithInstanceContext_acquisitionContext_relinquishmentHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end