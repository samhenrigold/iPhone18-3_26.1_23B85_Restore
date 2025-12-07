@interface SESACWGSession
- (SESACWGSessionDelegate)delegate;
- (id)disableBluetooth:(BOOL)bluetooth;
- (id)setActiveKey:(id)key;
- (id)setSecureElementToken:(id)token;
- (void)didEndUnexpectedly:(id)unexpectedly;
- (void)didStartSession:(id)session;
- (void)endSession;
- (void)sendEvent:(id)event;
@end

@implementation SESACWGSession

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
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__4;
    v32 = __Block_byref_object_dispose__4;
    v33 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __31__SESACWGSession_setActiveKey___block_invoke;
    v22[3] = &unk_1E82D1170;
    v22[4] = &buf;
    v6 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v22];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __31__SESACWGSession_setActiveKey___block_invoke_2;
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
      self->_aid = @"A000000909ACCE5501";

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
    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&buf, 8);
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
    v26 = __Block_byref_object_copy__4;
    v27 = __Block_byref_object_dispose__4;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __40__SESACWGSession_setSecureElementToken___block_invoke;
    v18[3] = &unk_1E82D1170;
    v18[4] = buf;
    v6 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v18];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __40__SESACWGSession_setSecureElementToken___block_invoke_2;
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
    v28 = __Block_byref_object_copy__4;
    v29 = __Block_byref_object_dispose__4;
    v30 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __35__SESACWGSession_disableBluetooth___block_invoke;
    v18[3] = &unk_1E82D1170;
    v18[4] = buf;
    v6 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v18];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __35__SESACWGSession_disableBluetooth___block_invoke_2;
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

- (void)didStartSession:(id)session
{
  v3.receiver = self;
  v3.super_class = SESACWGSession;
  [(SESSession *)&v3 didStartSession:session];
}

- (void)didEndUnexpectedly:(id)unexpectedly
{
  v3.receiver = self;
  v3.super_class = SESACWGSession;
  [(SESSession *)&v3 didEndUnexpectedly:unexpectedly];
}

- (void)endSession
{
  v3.receiver = self;
  v3.super_class = SESACWGSession;
  [(SESSession *)&v3 endSession];
  [(SESACWGSession *)self sendEvent:&unk_1F4762E28];
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  if ([(SESSession *)self state]== 1)
  {
    queue = [(SESSession *)self queue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __28__SESACWGSession_sendEvent___block_invoke;
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

void __28__SESACWGSession_sendEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 sesSession:*(a1 + 32) event:*(a1 + 40)];
}

- (SESACWGSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end