@interface BKExtendEnrollTouchIDOperation
- (void)homeButtonPressed:(unint64_t)pressed;
- (void)matchResult:(id)result details:(id)details client:(unint64_t)client;
- (void)startBioOperation:(BOOL)operation reply:(id)reply;
- (void)statusMessage:(unsigned int)message client:(unint64_t)client;
@end

@implementation BKExtendEnrollTouchIDOperation

- (void)startBioOperation:(BOOL)operation reply:(id)reply
{
  operationCopy = operation;
  v27 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  kdebug_trace();
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->super._xpcClient;
    v10 = v8;
    *buf = 67109376;
    v24 = operationCopy;
    v25 = 2048;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKExtendEnrollTouchIDOperation::startBioOperation: async:%d (_cid:%lu)\n", buf, 0x12u);
  }

  v11 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:&unk_1F48015E8];
  identity = self->_identity;
  if (identity)
  {
    v21 = @"BKFilterIdentity";
    serverIdentity = [(BKIdentity *)identity serverIdentity];
    v22 = serverIdentity;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  }

  else
  {
    v14 = 0;
  }

  credentialSet = self->_credentialSet;
  if (credentialSet)
  {
    [v11 setObject:credentialSet forKey:@"BKOptionAuthWithCredentialSet"];
  }

  v16 = self->super._xpcClient;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __58__BKExtendEnrollTouchIDOperation_startBioOperation_reply___block_invoke;
  v19[3] = &unk_1E8303EC8;
  v17 = replyCopy;
  v20 = v17;
  [(BiometricKitXPCClient *)v16 match:v14 withOptions:v11 async:operationCopy withReply:v19];

  if (__osLogTrace)
  {
    v18 = __osLogTrace;
  }

  else
  {
    v18 = v7;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v18, OS_LOG_TYPE_DEFAULT, "BKExtendEnrollTouchIDOperation::startBioOperation: -> void\n", buf, 2u);
  }

  kdebug_trace();
}

void __58__BKExtendEnrollTouchIDOperation_startBioOperation_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [BKErrorHelper errorWithOSStatus:a2];
    (*(v2 + 16))(v2, 0, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 1, 0);
  }
}

- (void)matchResult:(id)result details:(id)details client:(unint64_t)client
{
  v26 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  detailsCopy = details;
  kdebug_trace();
  v10 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    *v23 = resultCopy;
    *&v23[8] = 2112;
    *&v23[10] = resultCopy;
    *&v23[18] = 2048;
    *&v23[20] = detailsCopy;
    v24 = 2048;
    clientCopy = client;
    _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKExtendEnrollTouchIDOperation::matchResult:withDictionary:client: %p(%@), %p, %llu\n", buf, 0x2Au);
  }

  delegate = [(BKOperation *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    if (__osLog)
    {
      v14 = __osLog;
    }

    else
    {
      v14 = v10;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      delegate2 = [(BKOperation *)self delegate];
      delegate3 = [(BKOperation *)self delegate];
      *buf = 67109634;
      *v23 = resultCopy != 0;
      *&v23[4] = 2048;
      *&v23[6] = delegate2;
      *&v23[14] = 2112;
      *&v23[16] = delegate3;
      _os_log_impl(&dword_1C82AD000, v15, OS_LOG_TYPE_DEFAULT, "BKExtendEnrollTouchIDOperation::matchResult:client: hasUpdated:%d => delegate:%p(%@)\n", buf, 0x1Cu);
    }

    dispatchQueue = [(BKOperation *)self dispatchQueue];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __61__BKExtendEnrollTouchIDOperation_matchResult_details_client___block_invoke;
    v20[3] = &unk_1E8304280;
    v20[4] = self;
    v21 = resultCopy != 0;
    dispatch_async(dispatchQueue, v20);
  }

  if (__osLogTrace)
  {
    v19 = __osLogTrace;
  }

  else
  {
    v19 = v10;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v19, OS_LOG_TYPE_DEFAULT, "BKExtendEnrollTouchIDOperation::matchResult:withDictionary:client: -> void\n", buf, 2u);
  }

  kdebug_trace();
}

void __61__BKExtendEnrollTouchIDOperation_matchResult_details_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 extendEnroll:*(a1 + 32) hasUpdated:*(a1 + 40)];
}

- (void)statusMessage:(unsigned int)message client:(unint64_t)client
{
  v5 = *&message;
  v25 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v22 = v5;
    *&v22[4] = 2048;
    *&v22[6] = client;
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKExtendEnrollTouchIDOperation::statusMessage:client: %u, %llu\n", buf, 0x12u);
  }

  v9 = __statusToFingerprintCaptureError(v5);
  if (v9)
  {
    v10 = v9;
    delegate = [(BKOperation *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      if (__osLog)
      {
        v13 = __osLog;
      }

      else
      {
        v13 = v7;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        delegate2 = [(BKOperation *)self delegate];
        delegate3 = [(BKOperation *)self delegate];
        *buf = 134218498;
        *v22 = v10;
        *&v22[8] = 2048;
        *&v22[10] = delegate2;
        v23 = 2112;
        v24 = delegate3;
        _os_log_impl(&dword_1C82AD000, v14, OS_LOG_TYPE_DEFAULT, "BKExtendEnrollTouchIDOperation::statusMessage:client: encounteredCaptureError:%ld => delegate:%p(%@)\n", buf, 0x20u);
      }

      dispatchQueue = [(BKOperation *)self dispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__BKExtendEnrollTouchIDOperation_statusMessage_client___block_invoke;
      block[3] = &unk_1E8303D98;
      block[4] = self;
      block[5] = v10;
      dispatch_async(dispatchQueue, block);
    }
  }

  v19.receiver = self;
  v19.super_class = BKExtendEnrollTouchIDOperation;
  [(BKOperation *)&v19 statusMessage:v5 client:client];
  if (__osLogTrace)
  {
    v18 = __osLogTrace;
  }

  else
  {
    v18 = v7;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v18, OS_LOG_TYPE_DEFAULT, "BKExtendEnrollTouchIDOperation::statusMessage:client: -> void\n", buf, 2u);
  }

  kdebug_trace();
}

void __55__BKExtendEnrollTouchIDOperation_statusMessage_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 fingerprintCaptureOperation:*(a1 + 32) encounteredCaptureError:*(a1 + 40)];
}

- (void)homeButtonPressed:(unint64_t)pressed
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    pressedCopy = pressed;
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKExtendEnrollTouchIDOperation::homeButtonPressed: clientID:%llu\n", buf, 0xCu);
  }

  delegate = [(BKOperation *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (__osLog)
    {
      v9 = __osLog;
    }

    else
    {
      v9 = v5;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      delegate2 = [(BKOperation *)self delegate];
      delegate3 = [(BKOperation *)self delegate];
      *buf = 134218242;
      pressedCopy = delegate2;
      v18 = 2112;
      v19 = delegate3;
      _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKExtendEnrollTouchIDOperation::homeButtonPressed: homeButtonPressedInEnrollOperation => delegate:%p(%@)\n", buf, 0x16u);
    }

    dispatchQueue = [(BKOperation *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__BKExtendEnrollTouchIDOperation_homeButtonPressed___block_invoke;
    block[3] = &unk_1E8303E78;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }

  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v5;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v14, OS_LOG_TYPE_DEFAULT, "BKExtendEnrollTouchIDOperation::homeButtonPressed: -> void\n", buf, 2u);
  }
}

void __52__BKExtendEnrollTouchIDOperation_homeButtonPressed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 touchIDButtonPressedInOperation:*(a1 + 32)];
}

@end