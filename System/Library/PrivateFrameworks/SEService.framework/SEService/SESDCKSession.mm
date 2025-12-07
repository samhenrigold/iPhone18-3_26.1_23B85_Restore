@interface SESDCKSession
+ (id)requestAssertionForKeyID:(id)d withOptions:(id)options error:(id *)error;
- (BOOL)sendPassthroughMessage:(id)message error:(id *)error;
- (SESDCKSessionDelegate)delegate;
- (SESDCKSessionPassthroughDelegate)passthroughDelegate;
- (id)cancelRKEAction:(unint64_t)action;
- (id)cancelRKEFunction:(id)function;
- (id)disableBluetooth:(BOOL)bluetooth;
- (id)sendRKEAction:(unint64_t)action authorization:(id)authorization;
- (id)sendRKEFunction:(id)function action:(id)action authorization:(id)authorization;
- (id)setActiveKey:(id)key;
- (id)setAuthorization:(id)authorization;
- (id)setSecureElementToken:(id)token;
- (void)didEndUnexpectedly:(id)unexpectedly;
- (void)didReceivePassthroughMessage:(id)message;
- (void)didStartSession:(id)session;
- (void)endSession;
- (void)sendEvent:(id)event;
- (void)sendRKEFunction:(id)function action:(id)action actionType:(unint64_t)type arbitraryData:(id)data authorization:(id)authorization completion:(id)completion;
@end

@implementation SESDCKSession

- (id)setActiveKey:(id)key
{
  v34 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = keyCopy;
    _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_INFO, "setActiveKey %@", &buf, 0xCu);
  }

  if ([(SESSession *)self state]== 1)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__6;
    v32 = __Block_byref_object_dispose__6;
    v33 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __30__SESDCKSession_setActiveKey___block_invoke;
    v22[3] = &unk_1E82D1170;
    v22[4] = &buf;
    v6 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v22];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __30__SESDCKSession_setActiveKey___block_invoke_2;
    v21[3] = &unk_1E82D0DF0;
    v21[4] = &v23;
    v21[5] = &buf;
    [v6 setActiveKey:keyCopy reply:v21];

    v7 = *(&buf + 1);
    if ((v24[3] & 1) == 0 && !*(*(&buf + 1) + 40))
    {
      v8 = SESDefaultLogObject();
      v9 = SESCreateAndLogError();
      v10 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v9;

      v7 = *(&buf + 1);
    }

    aid = self->_aid;
    if (!keyCopy || *(v7 + 40))
    {
      self->_aid = 0;

      v14 = 0;
      activeKeyIdentifier = self->_activeKeyIdentifier;
      self->_activeKeyIdentifier = 0;
    }

    else
    {
      self->_aid = @"A000000809434343444B417631";

      v12 = keyCopy;
      activeKeyIdentifier = self->_activeKeyIdentifier;
      self->_activeKeyIdentifier = v12;
      v14 = 1;
    }

    self->_supportsSecureRanging = v14;
    v17 = *(*(&buf + 1) + 40);
    if (v17)
    {
      v18 = SESDefaultLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *(*(&buf + 1) + 40);
        *v27 = 138412290;
        v28 = v19;
        _os_log_impl(&dword_1C7B9A000, v18, OS_LOG_TYPE_ERROR, "%@", v27, 0xCu);
      }

      v17 = *(*(&buf + 1) + 40);
    }

    v16 = v17;
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v15 = SESDefaultLogObject();
    v16 = SESCreateAndLogError();
  }

  return v16;
}

- (id)setSecureElementToken:(id)token
{
  v31 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_INFO, "setSecureElementToken", buf, 2u);
  }

  if ([(SESSession *)self state]== 1)
  {
    *buf = 0;
    v24 = buf;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__6;
    v27 = __Block_byref_object_dispose__6;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __39__SESDCKSession_setSecureElementToken___block_invoke;
    v18[3] = &unk_1E82D1170;
    v18[4] = buf;
    v6 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v18];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __39__SESDCKSession_setSecureElementToken___block_invoke_2;
    v17[3] = &unk_1E82D0DF0;
    v17[4] = &v19;
    v17[5] = buf;
    [v6 setSecureElementToken:tokenCopy reply:v17];

    v7 = v24;
    if ((v20[3] & 1) == 0 && !*(v24 + 5))
    {
      v8 = SESDefaultLogObject();
      v9 = SESCreateAndLogError();
      v10 = *(v24 + 5);
      *(v24 + 5) = v9;

      v7 = v24;
    }

    v11 = *(v7 + 5);
    if (v11)
    {
      v12 = SESDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(v24 + 5);
        *v29 = 138412290;
        v30 = v13;
        _os_log_impl(&dword_1C7B9A000, v12, OS_LOG_TYPE_ERROR, "%@", v29, 0xCu);
      }

      v11 = *(v24 + 5);
    }

    v14 = v11;
    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = SESDefaultLogObject();
    v14 = SESCreateAndLogError();
  }

  return v14;
}

- (id)setAuthorization:(id)authorization
{
  v31 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_INFO, "setAuthorization", buf, 2u);
  }

  if ([(SESSession *)self state]== 1)
  {
    *buf = 0;
    v24 = buf;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__6;
    v27 = __Block_byref_object_dispose__6;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __34__SESDCKSession_setAuthorization___block_invoke;
    v18[3] = &unk_1E82D1170;
    v18[4] = buf;
    v6 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v18];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __34__SESDCKSession_setAuthorization___block_invoke_2;
    v17[3] = &unk_1E82D0DF0;
    v17[4] = &v19;
    v17[5] = buf;
    [v6 setAuthorization:authorizationCopy reply:v17];

    v7 = v24;
    if ((v20[3] & 1) == 0 && !*(v24 + 5))
    {
      v8 = SESDefaultLogObject();
      v9 = SESCreateAndLogError();
      v10 = *(v24 + 5);
      *(v24 + 5) = v9;

      v7 = v24;
    }

    v11 = *(v7 + 5);
    if (v11)
    {
      v12 = SESDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(v24 + 5);
        *v29 = 138412290;
        v30 = v13;
        _os_log_impl(&dword_1C7B9A000, v12, OS_LOG_TYPE_ERROR, "%@", v29, 0xCu);
      }

      v11 = *(v24 + 5);
    }

    v14 = v11;
    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = SESDefaultLogObject();
    v14 = SESCreateAndLogError();
  }

  return v14;
}

- (id)disableBluetooth:(BOOL)bluetooth
{
  bluetoothCopy = bluetooth;
  v31 = *MEMORY[0x1E69E9840];
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = bluetoothCopy;
    _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_INFO, "disableBluetooth %d", buf, 8u);
  }

  if ([(SESSession *)self state]== 1)
  {
    *buf = 0;
    v26 = buf;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__6;
    v29 = __Block_byref_object_dispose__6;
    v30 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __34__SESDCKSession_disableBluetooth___block_invoke;
    v18[3] = &unk_1E82D1170;
    v18[4] = buf;
    v6 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v18];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __34__SESDCKSession_disableBluetooth___block_invoke_2;
    v17[3] = &unk_1E82D0DF0;
    v17[4] = &v19;
    v17[5] = buf;
    [v6 preArmActiveKey:bluetoothCopy reply:v17];

    v7 = v26;
    if ((v20[3] & 1) == 0 && !*(v26 + 5))
    {
      v8 = SESDefaultLogObject();
      v9 = SESCreateAndLogError();
      v10 = *(v26 + 5);
      *(v26 + 5) = v9;

      v7 = v26;
    }

    v11 = *(v7 + 5);
    if (v11)
    {
      v12 = SESDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(v26 + 5);
        *v23 = 138412290;
        v24 = v13;
        _os_log_impl(&dword_1C7B9A000, v12, OS_LOG_TYPE_ERROR, "%@", v23, 0xCu);
      }

      v11 = *(v26 + 5);
    }

    v14 = v11;
    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = SESDefaultLogObject();
    v14 = SESCreateAndLogError();
  }

  return v14;
}

- (void)sendRKEFunction:(id)function action:(id)action actionType:(unint64_t)type arbitraryData:(id)data authorization:(id)authorization completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  functionCopy = function;
  actionCopy = action;
  dataCopy = data;
  authorizationCopy = authorization;
  completionCopy = completion;
  v19 = SESDefaultLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    *&buf[4] = [functionCopy unsignedIntValue];
    LOWORD(v32) = 1024;
    *(&v32 + 2) = [actionCopy unsignedIntValue];
    HIWORD(v32) = 1024;
    LODWORD(v33) = authorizationCopy != 0;
    _os_log_impl(&dword_1C7B9A000, v19, OS_LOG_TYPE_INFO, "sendRKEFunction 0x%X action 0x%X authorization %d", buf, 0x14u);
  }

  if ([(SESSession *)self state]== 1)
  {
    if ([dataCopy length] < 0x41)
    {
      *buf = 0;
      v32 = buf;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy__6;
      v35 = __Block_byref_object_dispose__6;
      v36 = 0;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __90__SESDCKSession_sendRKEFunction_action_actionType_arbitraryData_authorization_completion___block_invoke;
      v28[3] = &unk_1E82D1170;
      v28[4] = buf;
      v24 = [(SESSession *)self remoteObjectProxyWithErrorHandler:v28];
      [v24 sendRKEFunction:objc_msgSend(functionCopy action:"unsignedShortValue") actionType:objc_msgSend(actionCopy arbitraryData:"unsignedCharValue") authorization:type completion:{dataCopy, authorizationCopy, completionCopy}];

      if (*(v32 + 5))
      {
        v25 = SESDefaultLogObject();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = *(v32 + 5);
          *v29 = 138412290;
          v30 = v26;
          _os_log_impl(&dword_1C7B9A000, v25, OS_LOG_TYPE_ERROR, "%@", v29, 0xCu);
        }

        v27 = SESEnsureError();
        completionCopy[2](completionCopy, 0, v27);
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v20 = SESDefaultLogObject();
      [dataCopy length];
      v21 = SESCreateAndLogError();
      completionCopy[2](completionCopy, 0, v21);
    }
  }

  else
  {
    v22 = SESDefaultLogObject();
    v23 = SESCreateAndLogError();
    completionCopy[2](completionCopy, 0, v23);
  }
}

- (id)cancelRKEFunction:(id)function
{
  v32 = *MEMORY[0x1E69E9840];
  functionCopy = function;
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = [functionCopy unsignedIntValue];
    _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_INFO, "cancelRKEFunction 0x%X", buf, 8u);
  }

  if ([(SESSession *)self state]== 1)
  {
    *buf = 0;
    v27 = buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__6;
    v30 = __Block_byref_object_dispose__6;
    v31 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __35__SESDCKSession_cancelRKEFunction___block_invoke;
    v19[3] = &unk_1E82D1170;
    v19[4] = buf;
    v6 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v19];
    unsignedShortValue = [functionCopy unsignedShortValue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __35__SESDCKSession_cancelRKEFunction___block_invoke_2;
    v18[3] = &unk_1E82D0DF0;
    v18[4] = &v20;
    v18[5] = buf;
    [v6 cancelRKEFunction:unsignedShortValue reply:v18];

    v8 = v27;
    if ((v21[3] & 1) == 0 && !*(v27 + 5))
    {
      v9 = SESDefaultLogObject();
      v10 = SESCreateAndLogError();
      v11 = *(v27 + 5);
      *(v27 + 5) = v10;

      v8 = v27;
    }

    v12 = *(v8 + 5);
    if (v12)
    {
      v13 = SESDefaultLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *(v27 + 5);
        *v24 = 138412290;
        v25 = v14;
        _os_log_impl(&dword_1C7B9A000, v13, OS_LOG_TYPE_ERROR, "%@", v24, 0xCu);
      }

      v12 = *(v27 + 5);
    }

    v15 = v12;
    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = SESDefaultLogObject();
    v15 = SESCreateAndLogError();
  }

  return v15;
}

- (BOOL)sendPassthroughMessage:(id)message error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v7 = SESDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7B9A000, v7, OS_LOG_TYPE_INFO, "sendPassthroughMessage", buf, 2u);
  }

  if ([(SESSession *)self state]== 1)
  {
    if ([messageCopy length] < 0x10000)
    {
      *buf = 0;
      v25 = buf;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy__6;
      v28 = __Block_byref_object_dispose__6;
      v29 = 0;
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __46__SESDCKSession_sendPassthroughMessage_error___block_invoke;
      v19[3] = &unk_1E82D1170;
      v19[4] = buf;
      v10 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v19];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __46__SESDCKSession_sendPassthroughMessage_error___block_invoke_2;
      v18[3] = &unk_1E82D0DF0;
      v18[4] = &v20;
      v18[5] = buf;
      [v10 sendPassthroughMessage:messageCopy reply:v18];

      v11 = v25;
      if ((v21[3] & 1) == 0 && !*(v25 + 5))
      {
        v12 = SESDefaultLogObject();
        v13 = SESCreateAndLogError();
        v14 = *(v25 + 5);
        *(v25 + 5) = v13;

        v11 = v25;
      }

      if (*(v11 + 5))
      {
        v15 = SESDefaultLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = *(v25 + 5);
          *v30 = 138412290;
          v31 = v16;
          _os_log_impl(&dword_1C7B9A000, v15, OS_LOG_TYPE_ERROR, "%@", v30, 0xCu);
        }

        v11 = v25;
      }

      if (error)
      {
        *error = *(v11 + 5);
        v11 = v25;
      }

      LOBYTE(error) = *(v11 + 5) == 0;
      _Block_object_dispose(&v20, 8);
      _Block_object_dispose(buf, 8);
    }

    else if (error)
    {
      v8 = SESDefaultLogObject();
      [messageCopy length];
      *error = SESCreateAndLogError();

LABEL_9:
      LOBYTE(error) = 0;
    }
  }

  else if (error)
  {
    v9 = SESDefaultLogObject();
    *error = SESCreateAndLogError();

    goto LABEL_9;
  }

  return error;
}

+ (id)requestAssertionForKeyID:(id)d withOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  dCopy = d;
  v9 = +[SESSessionManager sharedInstance];
  v14 = 0;
  v10 = [v9 startDCKAssertionForKeyIdentifier:dCopy withOptions:optionsCopy error:&v14];

  v11 = v14;
  if (error)
  {
    v12 = v11;
    *error = v11;
  }

  return v10;
}

- (void)didStartSession:(id)session
{
  v3.receiver = self;
  v3.super_class = SESDCKSession;
  [(SESSession *)&v3 didStartSession:session];
}

- (void)didEndUnexpectedly:(id)unexpectedly
{
  v3.receiver = self;
  v3.super_class = SESDCKSession;
  [(SESSession *)&v3 didEndUnexpectedly:unexpectedly];
}

- (void)endSession
{
  v3.receiver = self;
  v3.super_class = SESDCKSession;
  [(SESSession *)&v3 endSession];
  [(SESDCKSession *)self sendEvent:&unk_1F4762E50];
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  if ([(SESSession *)self state]== 1)
  {
    queue = [(SESSession *)self queue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __27__SESDCKSession_sendEvent___block_invoke;
    v7[3] = &unk_1E82D11C0;
    v7[4] = self;
    v8 = eventCopy;
    dispatch_async(queue, v7);
  }

  else
  {
    v6 = SESDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7B9A000, v6, OS_LOG_TYPE_INFO, "Dropping event while no active session", buf, 2u);
    }
  }
}

void __27__SESDCKSession_sendEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 sesSession:*(a1 + 32) event:*(a1 + 40)];
}

- (void)didReceivePassthroughMessage:(id)message
{
  messageCopy = message;
  if ([(SESSession *)self state]!= 1)
  {
    v7 = SESDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v8 = "Dropping passthrough message while no active session";
LABEL_8:
      _os_log_impl(&dword_1C7B9A000, v7, OS_LOG_TYPE_INFO, v8, buf, 2u);
    }

LABEL_9:

    goto LABEL_10;
  }

  passthroughDelegate = [(SESDCKSession *)self passthroughDelegate];

  if (!passthroughDelegate)
  {
    v7 = SESDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v8 = "Dropping passthrough message due to no delegate";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  queue = [(SESSession *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__SESDCKSession_didReceivePassthroughMessage___block_invoke;
  v9[3] = &unk_1E82D11C0;
  v9[4] = self;
  v10 = messageCopy;
  dispatch_async(queue, v9);

LABEL_10:
}

void __46__SESDCKSession_didReceivePassthroughMessage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) passthroughDelegate];
  [v2 sesSession:*(a1 + 32) didReceivePassthroughMessage:*(a1 + 40)];
}

- (id)sendRKEAction:(unint64_t)action authorization:(id)authorization
{
  v4 = SESDefaultLogObject();
  v5 = SESCreateAndLogError();

  return v5;
}

- (id)sendRKEFunction:(id)function action:(id)action authorization:(id)authorization
{
  v5 = SESDefaultLogObject();
  v6 = SESCreateAndLogError();

  return v6;
}

- (id)cancelRKEAction:(unint64_t)action
{
  v3 = SESDefaultLogObject();
  v4 = SESCreateAndLogError();

  return v4;
}

- (SESDCKSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SESDCKSessionPassthroughDelegate)passthroughDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_passthroughDelegate);

  return WeakRetained;
}

@end