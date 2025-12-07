@interface AFSiriActivationListener
- (AFSiriActivationListener)initWithServicePort:(int64_t)port;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_activateWithRequestInfo:(id)info context:(id)context completion:(id)completion;
- (void)_deactivateForReason:(int64_t)reason options:(unint64_t)options context:(id)context completion:(id)completion;
- (void)_deliverButtonEventFromContext:(id)context completion:(id)completion;
- (void)_invalidate;
- (void)_myriadEventWithRequestInfo:(id)info context:(id)context completion:(id)completion;
- (void)_prewarmWithRequestInfo:(id)info context:(id)context completion:(id)completion;
- (void)_startWithDelegate:(id)delegate;
- (void)_stop;
- (void)activateWithRequestInfo:(id)info context:(id)context completion:(id)completion;
- (void)deactivateForReason:(int64_t)reason options:(unint64_t)options context:(id)context completion:(id)completion;
- (void)dealloc;
- (void)handleContext:(id)context completion:(id)completion;
- (void)handleIntent:(id)intent inBackgroundAppWithBundleId:(id)id reply:(id)reply;
- (void)handleIntentForwardingAction:(id)action inBackgroundApplicationWithBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)invalidate;
- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to;
- (void)prewarmWithRequestInfo:(id)info context:(id)context completion:(id)completion;
- (void)startWithDelegate:(id)delegate;
- (void)stop;
@end

@implementation AFSiriActivationListener

- (void)_myriadEventWithRequestInfo:(id)info context:(id)context completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  contextCopy = context;
  completionCopy = completion;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v24 = "[AFSiriActivationListener _myriadEventWithRequestInfo:context:completion:]";
    v25 = 2048;
    selfCopy = self;
    v27 = 2112;
    v28 = infoCopy;
    v29 = 2112;
    v30 = contextCopy;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s %p requestInfo = %@, context = %@", buf, 0x2Au);
  }

  v12 = [AFOneArgumentSafetyBlock alloc];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __75__AFSiriActivationListener__myriadEventWithRequestInfo_context_completion___block_invoke;
  v21[3] = &unk_1E7348AD0;
  v21[4] = self;
  v13 = completionCopy;
  v22 = v13;
  v14 = [AFError errorWithCode:2508];
  v15 = [(AFOneArgumentSafetyBlock *)v12 initWithBlock:v21 defaultValue:v14];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    v18 = 2506;
LABEL_8:
    v17 = [AFError errorWithCode:v18];
    [(AFOneArgumentSafetyBlock *)v15 invokeWithValue:v17];
    goto LABEL_9;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v18 = 2507;
    goto LABEL_8;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__AFSiriActivationListener__myriadEventWithRequestInfo_context_completion___block_invoke_52;
  v19[3] = &unk_1E73493C0;
  v20 = v15;
  [WeakRetained siriActivationListener:self myriadEventWithRequestInfo:infoCopy context:contextCopy completion:v19];
  v17 = v20;
LABEL_9:
}

void __75__AFSiriActivationListener__myriadEventWithRequestInfo_context_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v8 = 136315650;
      v9 = "[AFSiriActivationListener _myriadEventWithRequestInfo:context:completion:]_block_invoke";
      v10 = 2048;
      v11 = v5;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %p error = %@", &v8, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 136315394;
    v9 = "[AFSiriActivationListener _myriadEventWithRequestInfo:context:completion:]_block_invoke";
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %p done", &v8, 0x16u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

- (void)_deliverButtonEventFromContext:(id)context completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v21 = "[AFSiriActivationListener _deliverButtonEventFromContext:completion:]";
    v22 = 2048;
    selfCopy = self;
    v24 = 2112;
    v25 = contextCopy;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p context = %@", buf, 0x20u);
  }

  v9 = [AFOneArgumentSafetyBlock alloc];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__AFSiriActivationListener__deliverButtonEventFromContext_completion___block_invoke;
  v18[3] = &unk_1E7348AD0;
  v18[4] = self;
  v10 = completionCopy;
  v19 = v10;
  v11 = [AFError errorWithCode:2508];
  v12 = [(AFOneArgumentSafetyBlock *)v9 initWithBlock:v18 defaultValue:v11];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    v15 = 2506;
LABEL_8:
    v14 = [AFError errorWithCode:v15];
    [(AFOneArgumentSafetyBlock *)v12 invokeWithValue:v14];
    goto LABEL_9;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v15 = 2507;
    goto LABEL_8;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __70__AFSiriActivationListener__deliverButtonEventFromContext_completion___block_invoke_49;
  v16[3] = &unk_1E73493C0;
  v17 = v12;
  [WeakRetained siriActivationListener:self handleButtonEventFromContext:contextCopy completion:v16];
  v14 = v17;
LABEL_9:
}

void __70__AFSiriActivationListener__deliverButtonEventFromContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v8 = 136315650;
      v9 = "[AFSiriActivationListener _deliverButtonEventFromContext:completion:]_block_invoke";
      v10 = 2048;
      v11 = v5;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %p error = %@", &v8, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 136315394;
    v9 = "[AFSiriActivationListener _deliverButtonEventFromContext:completion:]_block_invoke";
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %p done", &v8, 0x16u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

- (void)_deactivateForReason:(int64_t)reason options:(unint64_t)options context:(id)context completion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v12 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    if (reason > 0x14)
    {
      v14 = @"(unknown)";
    }

    else
    {
      v14 = off_1E7345920[reason];
    }

    v15 = v14;
    v16 = AFSiriDeactivationOptionsGetNames(options);
    *buf = 136316162;
    v29 = "[AFSiriActivationListener _deactivateForReason:options:context:completion:]";
    v30 = 2048;
    selfCopy = self;
    v32 = 2112;
    v33 = v15;
    v34 = 2112;
    v35 = v16;
    v36 = 2112;
    v37 = contextCopy;
    _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s %p reason = %@, options = %@, context = %@", buf, 0x34u);
  }

  v17 = [AFOneArgumentSafetyBlock alloc];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __76__AFSiriActivationListener__deactivateForReason_options_context_completion___block_invoke;
  v26[3] = &unk_1E7348AD0;
  v26[4] = self;
  v18 = completionCopy;
  v27 = v18;
  v19 = [AFError errorWithCode:2508];
  v20 = [(AFOneArgumentSafetyBlock *)v17 initWithBlock:v26 defaultValue:v19];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    v23 = 2506;
LABEL_11:
    v22 = [AFError errorWithCode:v23];
    [(AFOneArgumentSafetyBlock *)v20 invokeWithValue:v22];
    goto LABEL_12;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v23 = 2507;
    goto LABEL_11;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __76__AFSiriActivationListener__deactivateForReason_options_context_completion___block_invoke_46;
  v24[3] = &unk_1E73493C0;
  v25 = v20;
  [WeakRetained siriActivationListener:self deactivateForReason:reason options:options context:contextCopy completion:v24];
  v22 = v25;
LABEL_12:
}

void __76__AFSiriActivationListener__deactivateForReason_options_context_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v8 = 136315650;
      v9 = "[AFSiriActivationListener _deactivateForReason:options:context:completion:]_block_invoke";
      v10 = 2048;
      v11 = v5;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %p error = %@", &v8, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 136315394;
    v9 = "[AFSiriActivationListener _deactivateForReason:options:context:completion:]_block_invoke";
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %p done", &v8, 0x16u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

- (void)_activateWithRequestInfo:(id)info context:(id)context completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  contextCopy = context;
  completionCopy = completion;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v24 = "[AFSiriActivationListener _activateWithRequestInfo:context:completion:]";
    v25 = 2048;
    selfCopy = self;
    v27 = 2112;
    v28 = infoCopy;
    v29 = 2112;
    v30 = contextCopy;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s %p requestInfo = %@, context = %@", buf, 0x2Au);
  }

  v12 = [AFOneArgumentSafetyBlock alloc];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __72__AFSiriActivationListener__activateWithRequestInfo_context_completion___block_invoke;
  v21[3] = &unk_1E7348AD0;
  v21[4] = self;
  v13 = completionCopy;
  v22 = v13;
  v14 = [AFError errorWithCode:2508];
  v15 = [(AFOneArgumentSafetyBlock *)v12 initWithBlock:v21 defaultValue:v14];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    v18 = 2506;
LABEL_8:
    v17 = [AFError errorWithCode:v18];
    [(AFOneArgumentSafetyBlock *)v15 invokeWithValue:v17];
    goto LABEL_9;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v18 = 2507;
    goto LABEL_8;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__AFSiriActivationListener__activateWithRequestInfo_context_completion___block_invoke_43;
  v19[3] = &unk_1E73493C0;
  v20 = v15;
  [WeakRetained siriActivationListener:self activateWithRequestInfo:infoCopy context:contextCopy completion:v19];
  v17 = v20;
LABEL_9:
}

void __72__AFSiriActivationListener__activateWithRequestInfo_context_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v8 = 136315650;
      v9 = "[AFSiriActivationListener _activateWithRequestInfo:context:completion:]_block_invoke";
      v10 = 2048;
      v11 = v5;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %p error = %@", &v8, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 136315394;
    v9 = "[AFSiriActivationListener _activateWithRequestInfo:context:completion:]_block_invoke";
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %p done", &v8, 0x16u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

- (void)_prewarmWithRequestInfo:(id)info context:(id)context completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  contextCopy = context;
  completionCopy = completion;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v24 = "[AFSiriActivationListener _prewarmWithRequestInfo:context:completion:]";
    v25 = 2048;
    selfCopy = self;
    v27 = 2112;
    v28 = infoCopy;
    v29 = 2112;
    v30 = contextCopy;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s %p requestInfo = %@, context = %@", buf, 0x2Au);
  }

  v12 = [AFOneArgumentSafetyBlock alloc];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __71__AFSiriActivationListener__prewarmWithRequestInfo_context_completion___block_invoke;
  v21[3] = &unk_1E7348AD0;
  v21[4] = self;
  v13 = completionCopy;
  v22 = v13;
  v14 = [AFError errorWithCode:2508];
  v15 = [(AFOneArgumentSafetyBlock *)v12 initWithBlock:v21 defaultValue:v14];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    v18 = 2506;
LABEL_8:
    v17 = [AFError errorWithCode:v18];
    [(AFOneArgumentSafetyBlock *)v15 invokeWithValue:v17];
    goto LABEL_9;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v18 = 2507;
    goto LABEL_8;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __71__AFSiriActivationListener__prewarmWithRequestInfo_context_completion___block_invoke_40;
  v19[3] = &unk_1E73493C0;
  v20 = v15;
  [WeakRetained siriActivationListener:self prewarmWithRequestInfo:infoCopy context:contextCopy completion:v19];
  v17 = v20;
LABEL_9:
}

void __71__AFSiriActivationListener__prewarmWithRequestInfo_context_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v8 = 136315650;
      v9 = "[AFSiriActivationListener _prewarmWithRequestInfo:context:completion:]_block_invoke";
      v10 = 2048;
      v11 = v5;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %p error = %@", &v8, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 136315394;
    v9 = "[AFSiriActivationListener _prewarmWithRequestInfo:context:completion:]_block_invoke";
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %p done", &v8, 0x16u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

- (void)_invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[AFSiriActivationListener _invalidate]";
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", &v5, 0x16u);
  }

  [(NSXPCListener *)self->_xpcListener invalidate];
  xpcListener = self->_xpcListener;
  self->_xpcListener = 0;

  objc_storeWeak(&self->_delegate, 0);
}

- (void)_stop
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[AFSiriActivationListener _stop]";
    v6 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", &v4, 0x16u);
  }

  [(NSXPCListener *)self->_xpcListener suspend];
  objc_storeWeak(&self->_delegate, 0);
}

- (void)_startWithDelegate:(id)delegate
{
  v12 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[AFSiriActivationListener _startWithDelegate:]";
    v8 = 2048;
    selfCopy = self;
    v10 = 2112;
    v11 = delegateCopy;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p delegate = %@", &v6, 0x20u);
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
  [(NSXPCListener *)self->_xpcListener resume];
}

- (void)handleIntentForwardingAction:(id)action inBackgroundApplicationWithBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v21 = "[AFSiriActivationListener handleIntentForwardingAction:inBackgroundApplicationWithBundleIdentifier:completionHandler:]";
    v22 = 2112;
    v23 = actionCopy;
    v24 = 2112;
    v25 = identifierCopy;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s intentForwardingAction = %@, bundleIdentifier = %@", buf, 0x20u);
  }

  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __119__AFSiriActivationListener_handleIntentForwardingAction_inBackgroundApplicationWithBundleIdentifier_completionHandler___block_invoke;
  v16[3] = &unk_1E73479F0;
  v16[4] = self;
  v17 = actionCopy;
  v18 = identifierCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = identifierCopy;
  v15 = actionCopy;
  dispatch_async(queue, v16);
}

void __119__AFSiriActivationListener_handleIntentForwardingAction_inBackgroundApplicationWithBundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __119__AFSiriActivationListener_handleIntentForwardingAction_inBackgroundApplicationWithBundleIdentifier_completionHandler___block_invoke_2;
    v8[3] = &unk_1E73467B0;
    v5 = *(a1 + 48);
    v9 = *(a1 + 56);
    [WeakRetained siriActivationListener:v3 handleIntentForwardingAction:v4 inBackgroundApplicationWithBundleIdentifier:v5 completionHandler:v8];
  }

  else
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v11 = "[AFSiriActivationListener handleIntentForwardingAction:inBackgroundApplicationWithBundleIdentifier:completionHandler:]_block_invoke";
      _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s Intent handling is not supported on this platform", buf, 0xCu);
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }
}

void __119__AFSiriActivationListener_handleIntentForwardingAction_inBackgroundApplicationWithBundleIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[AFSiriActivationListener handleIntentForwardingAction:inBackgroundApplicationWithBundleIdentifier:completionHandler:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s intentForwardingActionResponse = %@", &v6, 0x16u);
  }
}

- (void)handleIntent:(id)intent inBackgroundAppWithBundleId:(id)id reply:(id)reply
{
  v28 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  idCopy = id;
  replyCopy = reply;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v21 = "[AFSiriActivationListener handleIntent:inBackgroundAppWithBundleId:reply:]";
    v22 = 2048;
    selfCopy = self;
    v24 = 2112;
    v25 = intentCopy;
    v26 = 2112;
    v27 = idCopy;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s %p intent = %@, bundleIdentifier = %@", buf, 0x2Au);
  }

  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__AFSiriActivationListener_handleIntent_inBackgroundAppWithBundleId_reply___block_invoke;
  v16[3] = &unk_1E73479F0;
  v16[4] = self;
  v17 = intentCopy;
  v18 = idCopy;
  v19 = replyCopy;
  v13 = replyCopy;
  v14 = idCopy;
  v15 = intentCopy;
  dispatch_async(queue, v16);
}

void __75__AFSiriActivationListener_handleIntent_inBackgroundAppWithBundleId_reply___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__AFSiriActivationListener_handleIntent_inBackgroundAppWithBundleId_reply___block_invoke_2;
    v11[3] = &unk_1E7346788;
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v11[4] = *(a1 + 32);
    v12 = v6;
    [WeakRetained siriActivationListener:v3 handleIntent:v4 inBackgroundAppWithBundleId:v5 reply:v11];
    v7 = v12;
  }

  else
  {
    v7 = [AFError errorWithCode:1316];
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 136315650;
      v14 = "[AFSiriActivationListener handleIntent:inBackgroundAppWithBundleId:reply:]_block_invoke";
      v15 = 2048;
      v16 = v10;
      v17 = 2112;
      v18 = v7;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s %p error = %@", buf, 0x20u);
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v7);
    }
  }
}

void __75__AFSiriActivationListener_handleIntent_inBackgroundAppWithBundleId_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  if (v5)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v12 = 136315650;
      v13 = "[AFSiriActivationListener handleIntent:inBackgroundAppWithBundleId:reply:]_block_invoke_2";
      v14 = 2048;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p intentResponse = %@", &v12, 0x20u);
    }
  }

  if (v6)
  {
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = 136315650;
      v13 = "[AFSiriActivationListener handleIntent:inBackgroundAppWithBundleId:reply:]_block_invoke";
      v14 = 2048;
      v15 = v11;
      v16 = 2112;
      v17 = v6;
      _os_log_error_impl(&dword_1912FE000, v10, OS_LOG_TYPE_ERROR, "%s %p error = %@", &v12, 0x20u);
    }
  }
}

- (void)handleContext:(id)context completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v16 = "[AFSiriActivationListener handleContext:completion:]";
    v17 = 2048;
    selfCopy = self;
    v19 = 2112;
    v20 = contextCopy;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p context = %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  block[4] = self;
  v13 = contextCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = contextCopy;
  dispatch_async(queue, block);
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_2;
  v38[3] = &unk_1E73466B8;
  v2 = *(a1 + 40);
  v38[4] = *(a1 + 32);
  v39 = v2;
  v40 = *(a1 + 48);
  v3 = MEMORY[0x193AFB7B0](v38);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_15;
  v35[3] = &unk_1E73466B8;
  v4 = *(a1 + 40);
  v35[4] = *(a1 + 32);
  v36 = v4;
  v37 = *(a1 + 48);
  v5 = MEMORY[0x193AFB7B0](v35);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_18;
  v32[3] = &unk_1E73466E0;
  v6 = *(a1 + 40);
  v32[4] = *(a1 + 32);
  v33 = v6;
  v34 = *(a1 + 48);
  v7 = MEMORY[0x193AFB7B0](v32);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_22;
  v29[3] = &unk_1E7346708;
  v29[4] = *(a1 + 32);
  v31 = *(a1 + 48);
  v30 = *(a1 + 40);
  v8 = MEMORY[0x193AFB7B0](v29);
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __53__AFSiriActivationListener_handleContext_completion___block_invoke_26;
  v25 = &unk_1E73466B8;
  v9 = *(a1 + 40);
  v26 = *(a1 + 32);
  v27 = v9;
  v28 = *(a1 + 48);
  v10 = MEMORY[0x193AFB7B0](&v22);
  v11 = AFSiriActivationCreateRequestInfoFromContext(*(a1 + 40));
  v12 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 32);
    *buf = 136315650;
    v42 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
    v43 = 2048;
    v44 = v13;
    v45 = 2112;
    v46 = v11;
    _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s %p requestInfo = %@", buf, 0x20u);
  }

  v14 = [*(a1 + 40) source];
  v15 = [*(a1 + 40) event];
  if (v14 == 4)
  {
    if (v15 <= 8)
    {
      if (v15 == 1 || v15 == 8)
      {
        v16 = [*(a1 + 40) userInfo];
        v17 = [v16 objectForKey:@"isCancellationDoubleTapEvent"];

        v18 = [*(a1 + 40) userInfo];
        v19 = [v18 objectForKey:@"hasPlayedStartAlert"];
        v20 = [v19 BOOLValue];

        if (!v17 && (v20 & 1) != 0 || v17 && ([v17 BOOLValue] & 1) == 0)
        {
          (v5)[2](v5, v11);
        }

        else
        {
          if ([*(a1 + 40) options])
          {
            v3 = v21;
            (*(v21 + 16))(v21, v11);
            goto LABEL_22;
          }

          v7[2](v7, 1, 0);
        }

        v3 = v21;
LABEL_22:

        goto LABEL_19;
      }

      goto LABEL_16;
    }

    if (v15 == 9)
    {
      v8[2](v8, *(a1 + 40));
      goto LABEL_19;
    }
  }

  if (v15 == 16)
  {
    (v10)[2](v10, v11);
    goto LABEL_19;
  }

LABEL_16:
  if ([*(a1 + 40) options])
  {
    (v3)[2](v3, v11);
  }

  else
  {
    (v5)[2](v5, v11);
  }

LABEL_19:
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 136315394;
    v15 = "[AFSiriActivationListener handleContext:completion:]_block_invoke_2";
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %p Handling as prewarming...", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_12;
  v11[3] = &unk_1E7346690;
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = v8;
  v11[4] = v9;
  v12 = v10;
  [v6 _prewarmWithRequestInfo:v3 context:v7 completion:v11];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_15(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 136315394;
    v15 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %p Handling as activation...", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_16;
  v11[3] = &unk_1E7346690;
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = v8;
  v11[4] = v9;
  v12 = v10;
  [v6 _activateWithRequestInfo:v3 context:v7 completion:v11];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    *buf = 136315394;
    v17 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
    v18 = 2048;
    v19 = v7;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %p Handling as deactivation...", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_19;
  v13[3] = &unk_1E7346690;
  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v15 = v10;
  v13[4] = v11;
  v14 = v12;
  [v8 _deactivateForReason:a2 options:a3 context:v9 completion:v13];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_22(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 136315394;
    v14 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
    v15 = 2048;
    v16 = v5;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %p Delivering button event ...", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_23;
  v10[3] = &unk_1E7346690;
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v7;
  v10[4] = v8;
  v11 = v9;
  [v6 _deliverButtonEventFromContext:v3 completion:v10];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_26(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 136315394;
    v15 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %p Handling myriad event...", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_27;
  v11[3] = &unk_1E7346690;
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = v8;
  v11[4] = v9;
  v12 = v10;
  [v6 _myriadEventWithRequestInfo:v3 context:v7 completion:v11];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_27(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1[6])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_2_28;
    v12[3] = &unk_1E7346640;
    v13 = v3;
    v5 = [AFSiriActivationResult newWithBuilder:v12];
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = a1[4];
      *buf = 136315650;
      v15 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
      v16 = 2048;
      v17 = v7;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %p result = %@", buf, 0x20u);
    }

    (*(a1[6] + 16))();
  }

  v8 = AFSiriLogContextConnection;
  if (v4)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = a1[5];
      *buf = 136315906;
      v15 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
      v16 = 2048;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v4;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s %p Unable to handle context %@ as myriad event due to error %@.", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v11 = a1[4];
    *buf = 136315394;
    v15 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
    v16 = 2048;
    v17 = v11;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p done", buf, 0x16u);
  }
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_2_28(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:6];
  [v3 setError:*(a1 + 32)];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_23(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1[6])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_2_24;
    v12[3] = &unk_1E7346640;
    v13 = v3;
    v5 = [AFSiriActivationResult newWithBuilder:v12];
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = a1[4];
      *buf = 136315650;
      v15 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
      v16 = 2048;
      v17 = v7;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %p result = %@", buf, 0x20u);
    }

    (*(a1[6] + 16))();
  }

  v8 = AFSiriLogContextConnection;
  if (v4)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = a1[5];
      *buf = 136315906;
      v15 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
      v16 = 2048;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v4;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s %p Unable to deliver button event from context %@ due to error %@.", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v11 = a1[4];
    *buf = 136315394;
    v15 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
    v16 = 2048;
    v17 = v11;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p done", buf, 0x16u);
  }
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_2_24(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:3];
  [v3 setError:*(a1 + 32)];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_19(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1[6])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_2_20;
    v12[3] = &unk_1E7346640;
    v13 = v3;
    v5 = [AFSiriActivationResult newWithBuilder:v12];
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = a1[4];
      *buf = 136315650;
      v15 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
      v16 = 2048;
      v17 = v7;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %p result = %@", buf, 0x20u);
    }

    (*(a1[6] + 16))();
  }

  v8 = AFSiriLogContextConnection;
  if (v4)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = a1[5];
      *buf = 136315906;
      v15 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
      v16 = 2048;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v4;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s %p Unable to handle context %@ as deactivation due to error %@.", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v11 = a1[4];
    *buf = 136315394;
    v15 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
    v16 = 2048;
    v17 = v11;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p done", buf, 0x16u);
  }
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_2_20(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:2];
  [v3 setError:*(a1 + 32)];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_16(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1[6])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_2_17;
    v12[3] = &unk_1E7346640;
    v13 = v3;
    v5 = [AFSiriActivationResult newWithBuilder:v12];
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = a1[4];
      *buf = 136315650;
      v15 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
      v16 = 2048;
      v17 = v7;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %p result = %@", buf, 0x20u);
    }

    (*(a1[6] + 16))();
  }

  v8 = AFSiriLogContextConnection;
  if (v4)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = a1[5];
      *buf = 136315906;
      v15 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
      v16 = 2048;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v4;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s %p Unable to handle context %@ as activation due to error %@.", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v11 = a1[4];
    *buf = 136315394;
    v15 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
    v16 = 2048;
    v17 = v11;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p done", buf, 0x16u);
  }
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_2_17(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:1];
  [v3 setError:*(a1 + 32)];
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_12(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1[6])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__AFSiriActivationListener_handleContext_completion___block_invoke_2_13;
    v12[3] = &unk_1E7346640;
    v13 = v3;
    v5 = [AFSiriActivationResult newWithBuilder:v12];
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = a1[4];
      *buf = 136315650;
      v15 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
      v16 = 2048;
      v17 = v7;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %p result = %@", buf, 0x20u);
    }

    (*(a1[6] + 16))();
  }

  v8 = AFSiriLogContextConnection;
  if (v4)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = a1[5];
      *buf = 136315906;
      v15 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
      v16 = 2048;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v4;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s %p Unable to handle context %@ as prewarming due to error %@.", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v11 = a1[4];
    *buf = 136315394;
    v15 = "[AFSiriActivationListener handleContext:completion:]_block_invoke";
    v16 = 2048;
    v17 = v11;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p done", buf, 0x16u);
  }
}

void __53__AFSiriActivationListener_handleContext_completion___block_invoke_2_13(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:5];
  [v3 setError:*(a1 + 32)];
}

- (void)deactivateForReason:(int64_t)reason options:(unint64_t)options context:(id)context completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v12 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    if (reason > 0x14)
    {
      v14 = @"(unknown)";
    }

    else
    {
      v14 = off_1E7345920[reason];
    }

    v15 = v14;
    v16 = AFSiriDeactivationOptionsGetNames(options);
    *buf = 136316162;
    v26 = "[AFSiriActivationListener deactivateForReason:options:context:completion:]";
    v27 = 2048;
    selfCopy = self;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = v16;
    v33 = 2112;
    v34 = contextCopy;
    _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s %p reason = %@, options = %@, context = %@", buf, 0x34u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__AFSiriActivationListener_deactivateForReason_options_context_completion___block_invoke;
  block[3] = &unk_1E7346668;
  reasonCopy = reason;
  optionsCopy = options;
  block[4] = self;
  v21 = contextCopy;
  v22 = completionCopy;
  v18 = completionCopy;
  v19 = contextCopy;
  dispatch_async(queue, block);
}

void __75__AFSiriActivationListener_deactivateForReason_options_context_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__AFSiriActivationListener_deactivateForReason_options_context_completion___block_invoke_2;
  v7[3] = &unk_1E7348AD0;
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v4 _deactivateForReason:v2 options:v3 context:v5 completion:v7];
}

void __75__AFSiriActivationListener_deactivateForReason_options_context_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__AFSiriActivationListener_deactivateForReason_options_context_completion___block_invoke_3;
    v11[3] = &unk_1E7346640;
    v12 = v3;
    v5 = [AFSiriActivationResult newWithBuilder:v11];
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 136315650;
      v14 = "[AFSiriActivationListener deactivateForReason:options:context:completion:]_block_invoke_2";
      v15 = 2048;
      v16 = v7;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %p result = %@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v8 = AFSiriLogContextConnection;
  if (v4)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 136315650;
      v14 = "[AFSiriActivationListener deactivateForReason:options:context:completion:]_block_invoke";
      v15 = 2048;
      v16 = v9;
      v17 = 2112;
      v18 = v4;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s %p error = %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    *buf = 136315394;
    v14 = "[AFSiriActivationListener deactivateForReason:options:context:completion:]_block_invoke";
    v15 = 2048;
    v16 = v10;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p done", buf, 0x16u);
  }
}

void __75__AFSiriActivationListener_deactivateForReason_options_context_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:2];
  [v3 setError:*(a1 + 32)];
}

- (void)activateWithRequestInfo:(id)info context:(id)context completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  contextCopy = context;
  completionCopy = completion;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v21 = "[AFSiriActivationListener activateWithRequestInfo:context:completion:]";
    v22 = 2048;
    selfCopy = self;
    v24 = 2112;
    v25 = infoCopy;
    v26 = 2112;
    v27 = contextCopy;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s %p requestInfo = %@, context = %@", buf, 0x2Au);
  }

  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__AFSiriActivationListener_activateWithRequestInfo_context_completion___block_invoke;
  v16[3] = &unk_1E73479F0;
  v16[4] = self;
  v17 = infoCopy;
  v18 = contextCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = contextCopy;
  v15 = infoCopy;
  dispatch_async(queue, v16);
}

void __71__AFSiriActivationListener_activateWithRequestInfo_context_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__AFSiriActivationListener_activateWithRequestInfo_context_completion___block_invoke_2;
  v6[3] = &unk_1E7348AD0;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _activateWithRequestInfo:v3 context:v4 completion:v6];
}

void __71__AFSiriActivationListener_activateWithRequestInfo_context_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__AFSiriActivationListener_activateWithRequestInfo_context_completion___block_invoke_3;
    v11[3] = &unk_1E7346640;
    v12 = v3;
    v5 = [AFSiriActivationResult newWithBuilder:v11];
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 136315650;
      v14 = "[AFSiriActivationListener activateWithRequestInfo:context:completion:]_block_invoke_2";
      v15 = 2048;
      v16 = v7;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %p result = %@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v8 = AFSiriLogContextConnection;
  if (v4)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 136315650;
      v14 = "[AFSiriActivationListener activateWithRequestInfo:context:completion:]_block_invoke";
      v15 = 2048;
      v16 = v9;
      v17 = 2112;
      v18 = v4;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s %p error = %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    *buf = 136315394;
    v14 = "[AFSiriActivationListener activateWithRequestInfo:context:completion:]_block_invoke";
    v15 = 2048;
    v16 = v10;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p done", buf, 0x16u);
  }
}

void __71__AFSiriActivationListener_activateWithRequestInfo_context_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:1];
  [v3 setError:*(a1 + 32)];
}

- (void)prewarmWithRequestInfo:(id)info context:(id)context completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  contextCopy = context;
  completionCopy = completion;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v21 = "[AFSiriActivationListener prewarmWithRequestInfo:context:completion:]";
    v22 = 2048;
    selfCopy = self;
    v24 = 2112;
    v25 = infoCopy;
    v26 = 2112;
    v27 = contextCopy;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s %p requestInfo = %@, context = %@", buf, 0x2Au);
  }

  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __70__AFSiriActivationListener_prewarmWithRequestInfo_context_completion___block_invoke;
  v16[3] = &unk_1E73479F0;
  v16[4] = self;
  v17 = infoCopy;
  v18 = contextCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = contextCopy;
  v15 = infoCopy;
  dispatch_async(queue, v16);
}

void __70__AFSiriActivationListener_prewarmWithRequestInfo_context_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__AFSiriActivationListener_prewarmWithRequestInfo_context_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _prewarmWithRequestInfo:v2 context:v3 completion:v4];
}

void __70__AFSiriActivationListener_prewarmWithRequestInfo_context_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__AFSiriActivationListener_prewarmWithRequestInfo_context_completion___block_invoke_3;
    v8[3] = &unk_1E7346640;
    v9 = v3;
    v5 = [AFSiriActivationResult newWithBuilder:v8];
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v11 = "[AFSiriActivationListener prewarmWithRequestInfo:context:completion:]_block_invoke_2";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s result = %@", buf, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }

  v7 = AFSiriLogContextConnection;
  if (v4)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[AFSiriActivationListener prewarmWithRequestInfo:context:completion:]_block_invoke";
      v12 = 2112;
      v13 = v4;
      _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[AFSiriActivationListener prewarmWithRequestInfo:context:completion:]_block_invoke";
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s done", buf, 0xCu);
  }
}

void __70__AFSiriActivationListener_prewarmWithRequestInfo_context_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setActionType:5];
  [v3 setError:*(a1 + 32)];
}

- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to
{
  v17 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v9 = 136315906;
    v10 = "[AFSiriActivationListener notifyObserver:didChangeStateFrom:to:]";
    v11 = 2112;
    v12 = observerCopy;
    v13 = 2048;
    fromCopy = from;
    v15 = 2048;
    toCopy = to;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s notifyObserver = %@, fromState = %llu, toState = %llu", &v9, 0x2Au);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v23 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v7 = connectionCopy;
  if (self->_xpcListener != listener)
  {
    goto LABEL_2;
  }

  v9 = [connectionCopy valueForEntitlement:@"com.apple.siri.activation"];

  if (v9)
  {
    goto LABEL_7;
  }

  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v14 = v10;
    v15 = 136315906;
    v16 = "[AFSiriActivationListener listener:shouldAcceptNewConnection:]";
    v17 = 2048;
    selfCopy = self;
    v19 = 1026;
    processIdentifier = [v7 processIdentifier];
    v21 = 2112;
    v22 = @"com.apple.siri.activation";
    _os_log_error_impl(&dword_1912FE000, v14, OS_LOG_TYPE_ERROR, "%s %p Client with pid %{public}d does not have entitlement %@.", &v15, 0x26u);
  }

  v11 = [v7 valueForEntitlement:@"com.apple.siri.external_request"];

  if (v11)
  {
LABEL_7:
    [v7 _setQueue:self->_connectionQueue];
    [v7 setRemoteObjectInterface:0];
    v12 = AFSiriActivationServiceGetXPCInterface();
    [v7 setExportedInterface:v12];

    [v7 setExportedObject:self];
    [v7 resume];
    v8 = 1;
  }

  else
  {
LABEL_2:
    v8 = 0;
  }

  return v8;
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AFSiriActivationListener_invalidate__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stop
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__AFSiriActivationListener_stop__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)startWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__AFSiriActivationListener_startWithDelegate___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "[AFSiriActivationListener dealloc]";
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  [(AFSiriActivationListener *)self _invalidate];
  v4.receiver = self;
  v4.super_class = AFSiriActivationListener;
  [(AFSiriActivationListener *)&v4 dealloc];
}

- (AFSiriActivationListener)initWithServicePort:(int64_t)port
{
  v34 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = AFSiriActivationListener;
  v4 = [(AFSiriActivationListener *)&v29 init];
  if (v4)
  {
    if (AFLogInitIfNeeded_once != -1)
    {
      dispatch_once(&AFLogInitIfNeeded_once, &__block_literal_global_2942);
    }

    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v31 = "[AFSiriActivationListener initWithServicePort:]";
      v32 = 2048;
      v33 = v4;
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
    }

    if ((port - 1) > 2)
    {
      if (AFIsHorseman_onceToken != -1)
      {
        dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
      }

      if (AFIsHorseman_isHorseman)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      v10 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v11 = v10;
        if (port > 3)
        {
          v12 = @"(unknown)";
        }

        else
        {
          v12 = off_1E73424C8[port];
        }

        v13 = v12;
        *buf = 136315394;
        v31 = "[AFSiriActivationListener initWithServicePort:]";
        v32 = 2112;
        v33 = v13;
        _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s servicePort = %@ (incoming)", buf, 0x16u);

        v10 = AFSiriLogContextConnection;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = v10;
        v15 = off_1E73424C8[v9];
        *buf = 136315394;
        v31 = "[AFSiriActivationListener initWithServicePort:]";
        v32 = 2112;
        v33 = v15;
        _os_log_impl(&dword_1912FE000, v14, OS_LOG_TYPE_INFO, "%s servicePort = %@ (effective)", buf, 0x16u);
      }

      port = v9;
    }

    else
    {
      v6 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v7 = v6;
        v8 = off_1E73424C8[port];
        *buf = 136315394;
        v31 = "[AFSiriActivationListener initWithServicePort:]";
        v32 = 2112;
        v33 = v8;
        _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s servicePort = %@ (incoming, effective)", buf, 0x16u);
      }
    }

    v16 = AFSiriActivationServiceGetMachServiceName(port);
    v17 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v31 = "[AFSiriActivationListener initWithServicePort:]";
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&dword_1912FE000, v17, OS_LOG_TYPE_INFO, "%s machServiceName = %@", buf, 0x16u);
    }

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_attr_make_with_qos_class(v18, QOS_CLASS_USER_INTERACTIVE, 0);

    v20 = dispatch_queue_create("com.apple.siri.activation.listener", v19);
    queue = v4->_queue;
    v4->_queue = v20;

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_attr_make_with_qos_class(v22, QOS_CLASS_USER_INTERACTIVE, 0);

    v24 = dispatch_queue_create("com.apple.siri.activation.listenerConnection", v23);
    connectionQueue = v4->_connectionQueue;
    v4->_connectionQueue = v24;

    v26 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:v16];
    xpcListener = v4->_xpcListener;
    v4->_xpcListener = v26;

    [(NSXPCListener *)v4->_xpcListener _setQueue:v4->_queue];
    [(NSXPCListener *)v4->_xpcListener setDelegate:v4];
  }

  return v4;
}

@end