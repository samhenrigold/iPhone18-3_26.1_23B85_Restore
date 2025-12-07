@interface BKMatchTouchIDOperation
- (id)optionsDictionaryWithError:(id *)error;
- (void)statusMessage:(unsigned int)message client:(unint64_t)client;
@end

@implementation BKMatchTouchIDOperation

- (id)optionsDictionaryWithError:(id *)error
{
  v9.receiver = self;
  v9.super_class = BKMatchTouchIDOperation;
  v4 = [(BKMatchOperation *)&v9 optionsDictionaryWithError:error];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v4];
    v6 = v5;
    if (self->_requireFingerOff)
    {
      [v5 setObject:MEMORY[0x1E695E118] forKey:@"BKOptionMatchRequireFingerOff"];
    }

    v7 = v6;
  }

  else
  {
    [BKMatchTouchIDOperation optionsDictionaryWithError:];
    v7 = v10;
  }

  return v7;
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
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKMatchTouchIDOperation::statusMessage:client: %u, %llu\n", buf, 0x12u);
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
        _os_log_impl(&dword_1C82AD000, v14, OS_LOG_TYPE_DEFAULT, "BKMatchTouchIDOperation::statusMessage:client: encounteredCaptureError:%ld => delegate:%p(%@)\n", buf, 0x20u);
      }

      dispatchQueue = [(BKOperation *)self dispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __48__BKMatchTouchIDOperation_statusMessage_client___block_invoke;
      block[3] = &unk_1E8303D98;
      block[4] = self;
      block[5] = v10;
      dispatch_async(dispatchQueue, block);
    }
  }

  v19.receiver = self;
  v19.super_class = BKMatchTouchIDOperation;
  [(BKMatchOperation *)&v19 statusMessage:v5 client:client];
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
    _os_log_impl(&dword_1C82AD000, v18, OS_LOG_TYPE_DEFAULT, "BKMatchTouchIDOperation::statusMessage:client: -> void\n", buf, 2u);
  }

  kdebug_trace();
}

void __48__BKMatchTouchIDOperation_statusMessage_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 fingerprintCaptureOperation:*(a1 + 32) encounteredCaptureError:*(a1 + 40)];
}

- (void)optionsDictionaryWithError:.cold.1()
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