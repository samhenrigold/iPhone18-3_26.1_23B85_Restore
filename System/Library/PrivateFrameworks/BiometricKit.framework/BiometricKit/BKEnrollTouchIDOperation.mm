@interface BKEnrollTouchIDOperation
- (BKEnrollTouchIDOperation)initWithDevice:(id)device;
- (BOOL)startWithError:(id *)error;
- (id)createEnrollProgressInfo:(unsigned int)info;
- (void)dealloc;
- (void)enrollResult:(id)result details:(id)details client:(unint64_t)client;
- (void)homeButtonPressed:(unint64_t)pressed;
- (void)statusMessage:(unsigned int)message client:(unint64_t)client;
@end

@implementation BKEnrollTouchIDOperation

- (BKEnrollTouchIDOperation)initWithDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = BKEnrollTouchIDOperation;
  v3 = [(BKEnrollOperation *)&v6 initWithDevice:device];
  v4 = v3;
  if (v3)
  {
    ComponentSetInit(&v3->_compSet.count);
  }

  return v4;
}

- (void)dealloc
{
  v3 = ComponentSetRelease(&self->_compSet.count);
  v4.receiver = self;
  v4.super_class = BKEnrollTouchIDOperation;
  [(BKOperation *)&v4 dealloc];
}

- (BOOL)startWithError:(id *)error
{
  v4.receiver = self;
  v4.super_class = BKEnrollTouchIDOperation;
  return [(BKOperation *)&v4 startWithError:error];
}

- (id)createEnrollProgressInfo:(unsigned int)info
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 0, 512);
  memset(&v10[30], 0, 32);
  v5 = [(BiometricKitXPCClient *)self->super.super._xpcClient pullAlignmentData:0];
  v6 = v5;
  if (v5)
  {
    [v5 getBytes:v12 length:3060];
    if (SWORD3(v12[0]) >= 300)
    {
      [BKEnrollTouchIDOperation createEnrollProgressInfo:];
    }

    else
    {
      v7 = ComponentSetUpdate(&self->_compSet, v12, v10);
      if (v7)
      {
        [(BKEnrollTouchIDOperation *)v7 createEnrollProgressInfo:?];
      }

      else
      {
        v8 = GenerateEnrollProgressInfo(v10, info, 0);
        if (v8)
        {
          goto LABEL_5;
        }

        [BKEnrollTouchIDOperation createEnrollProgressInfo:];
      }
    }
  }

  else
  {
    [BKEnrollTouchIDOperation createEnrollProgressInfo:];
  }

  v8 = v11;
LABEL_5:

  return v8;
}

- (void)enrollResult:(id)result details:(id)details client:(unint64_t)client
{
  v5.receiver = self;
  v5.super_class = BKEnrollTouchIDOperation;
  [(BKEnrollOperation *)&v5 enrollResult:result details:details client:client];
}

- (void)statusMessage:(unsigned int)message client:(unint64_t)client
{
  v5 = *&message;
  v31 = *MEMORY[0x1E69E9840];
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
    *v28 = v5;
    *&v28[4] = 2048;
    *&v28[6] = client;
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKEnrollTouchIDOperation::statusMessage:client: %u, %llu\n", buf, 0x12u);
  }

  if ((v5 - 100) > 0xFF)
  {
    v13 = __statusToFingerprintCaptureError(v5);
    if (v13)
    {
      v14 = v13;
      delegate = [(BKOperation *)self delegate];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        if (__osLog)
        {
          v17 = __osLog;
        }

        else
        {
          v17 = v7;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          delegate2 = [(BKOperation *)self delegate];
          delegate3 = [(BKOperation *)self delegate];
          *buf = 134218498;
          *v28 = v14;
          *&v28[8] = 2048;
          *&v28[10] = delegate2;
          v29 = 2112;
          v30 = delegate3;
          _os_log_impl(&dword_1C82AD000, v18, OS_LOG_TYPE_DEFAULT, "BKEnrollTouchIDOperation::statusMessage:client: encounteredCaptureError:%ld => delegate:%p(%@)\n", buf, 0x20u);
        }

        dispatchQueue = [(BKOperation *)self dispatchQueue];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __49__BKEnrollTouchIDOperation_statusMessage_client___block_invoke_17;
        v24[3] = &unk_1E8303D98;
        v24[4] = self;
        v24[5] = v14;
        dispatch_async(dispatchQueue, v24);
      }
    }
  }

  else
  {
    v9 = [(BKEnrollTouchIDOperation *)self createEnrollProgressInfo:?];
    delegate4 = [(BKOperation *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      dispatchQueue2 = [(BKOperation *)self dispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__BKEnrollTouchIDOperation_statusMessage_client___block_invoke;
      block[3] = &unk_1E8304208;
      block[4] = self;
      v26 = v9;
      dispatch_async(dispatchQueue2, block);
    }
  }

  v23.receiver = self;
  v23.super_class = BKEnrollTouchIDOperation;
  [(BKEnrollOperation *)&v23 statusMessage:v5 client:client];
  if (__osLogTrace)
  {
    v22 = __osLogTrace;
  }

  else
  {
    v22 = v7;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v22, OS_LOG_TYPE_DEFAULT, "BKEnrollTouchIDOperation::statusMessage:client: -> void\n", buf, 2u);
  }

  kdebug_trace();
}

void __49__BKEnrollTouchIDOperation_statusMessage_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 enrollOperation:*(a1 + 32) progressedWithTouchIDInfo:*(a1 + 40)];
}

void __49__BKEnrollTouchIDOperation_statusMessage_client___block_invoke_17(uint64_t a1)
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
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKEnrollTouchIDOperation::homeButtonPressed: clientID:%llu\n", buf, 0xCu);
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
      _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKEnrollTouchIDOperation::homeButtonPressed: homeButtonPressedInEnrollOperation => delegate:%p(%@)\n", buf, 0x16u);
    }

    dispatchQueue = [(BKOperation *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__BKEnrollTouchIDOperation_homeButtonPressed___block_invoke;
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
    _os_log_impl(&dword_1C82AD000, v14, OS_LOG_TYPE_DEFAULT, "BKEnrollTouchIDOperation::homeButtonPressed: -> void\n", buf, 2u);
  }
}

void __46__BKEnrollTouchIDOperation_homeButtonPressed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 touchIDButtonPressedInOperation:*(a1 + 32)];
}

- (void)createEnrollProgressInfo:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v3, v4, v5, v6, v7, 0x30u);
  }

  *a2 = 0;
}

- (void)createEnrollProgressInfo:.cold.2()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_6();
}

- (void)createEnrollProgressInfo:.cold.3()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_6();
}

- (void)createEnrollProgressInfo:.cold.4()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_6();
}

@end