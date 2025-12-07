@interface LADFR
- (BOOL)_connectToUIAgent;
- (LADFR)initWithXpcQueue:(id)queue;
- (void)clearDFR:(id)r;
- (void)dealloc;
- (void)updateDFR:(int64_t)r options:(id)options delegate:(id)delegate reply:(id)reply;
@end

@implementation LADFR

- (LADFR)initWithXpcQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = LADFR;
  v6 = [(LADFR *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcQueue, queue);
    [(LADFR *)v7 _connectToUIAgent];
  }

  return v7;
}

- (void)dealloc
{
  agentConnection = [(LADFR *)self agentConnection];
  [agentConnection invalidate];

  v4.receiver = self;
  v4.super_class = LADFR;
  [(LADFR *)&v4 dealloc];
}

- (void)updateDFR:(int64_t)r options:(id)options delegate:(id)delegate reply:(id)reply
{
  optionsCopy = options;
  delegateCopy = delegate;
  replyCopy = reply;
  if ([(LADFR *)self _connectToUIAgent])
  {
    agentConnection = [(LADFR *)self agentConnection];
    v13 = [agentConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_7];
    [v13 updateDFR:r options:optionsCopy delegate:delegateCopy reply:replyCopy];

    replyCopy = v13;
  }

  else
  {
    agentConnection = [LAErrorHelper internalErrorWithMessage:@"Failed to connect to LA UI agent (DFR)"];
    (*(replyCopy + 2))(replyCopy, 0, agentConnection);
  }
}

void __42__LADFR_updateDFR_options_delegate_reply___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = LA_LOG_LADFR(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1DF403000, v3, OS_LOG_TYPE_DEFAULT, "XPC error: %{public}@", &v4, 0xCu);
  }
}

- (void)clearDFR:(id)r
{
  rCopy = r;
  agentConnection = [(LADFR *)self agentConnection];
  v5 = [agentConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_5];
  [v5 clearDFR:rCopy];
}

void __18__LADFR_clearDFR___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = LA_LOG_LADFR(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1DF403000, v3, OS_LOG_TYPE_DEFAULT, "XPC error: %{public}@", &v4, 0xCu);
  }
}

- (BOOL)_connectToUIAgent
{
  agentConnection = [(LADFR *)self agentConnection];

  if (agentConnection)
  {
    v5 = LA_LOG_LADFR(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(LADFR *)v5 _connectToUIAgent];
    }

LABEL_8:
    v24 = 1;
    goto LABEL_9;
  }

  v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.LocalAuthentication.DFR" options:0];
  [(LADFR *)self setAgentConnection:v6];

  agentConnection2 = [(LADFR *)self agentConnection];

  if (agentConnection2)
  {
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A7D3C0];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v9 setWithObjects:{v10, v11, v12, v13, v14, objc_opt_class(), 0}];
    [v5 setClasses:v15 forSelector:sel_eventDFR_eventHints_ argumentIndex:1 ofReply:0];
    v16 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A7B858];
    [v16 setInterface:v5 forSelector:sel_updateDFR_options_delegate_reply_ argumentIndex:2 ofReply:0];
    objc_initWeak(&location, self);
    agentConnection3 = [(LADFR *)self agentConnection];
    [agentConnection3 setRemoteObjectInterface:v16];

    agentConnection4 = [(LADFR *)self agentConnection];
    [agentConnection4 setInterruptionHandler:&__block_literal_global_31];

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __26__LADFR__connectToUIAgent__block_invoke_32;
    v27[3] = &unk_1E86B5CC0;
    objc_copyWeak(&v28, &location);
    agentConnection5 = [(LADFR *)self agentConnection];
    [agentConnection5 setInvalidationHandler:v27];

    agentConnection6 = [(LADFR *)self agentConnection];
    [agentConnection6 _setQueue:self->_xpcQueue];

    agentConnection7 = [(LADFR *)self agentConnection];
    [agentConnection7 resume];

    v23 = LA_LOG_LADFR(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF403000, v23, OS_LOG_TYPE_DEFAULT, "New XPC connection to LA UI agent (DFR)", buf, 2u);
    }

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);

    goto LABEL_8;
  }

  v5 = LA_LOG_LADFR(v8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(LADFR *)v5 _connectToUIAgent];
  }

  v24 = 0;
LABEL_9:

  return v24;
}

void __26__LADFR__connectToUIAgent__block_invoke(uint64_t a1)
{
  v1 = LA_LOG_LADFR(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1DF403000, v1, OS_LOG_TYPE_DEFAULT, "XPC interruption handler (DFR)", v2, 2u);
  }
}

void __26__LADFR__connectToUIAgent__block_invoke_32(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAgentConnection:0];
}

@end