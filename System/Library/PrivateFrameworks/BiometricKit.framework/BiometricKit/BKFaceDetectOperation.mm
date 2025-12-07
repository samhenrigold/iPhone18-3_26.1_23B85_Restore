@interface BKFaceDetectOperation
- (BKFaceDetectOperation)initWithDevice:(id)device;
- (void)startBioOperation:(BOOL)operation reply:(id)reply;
- (void)statusMessage:(unsigned int)message details:(id)details client:(unint64_t)client;
@end

@implementation BKFaceDetectOperation

- (BKFaceDetectOperation)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = BKFaceDetectOperation;
  result = [(BKOperation *)&v4 initWithDevice:device];
  if (result)
  {
    result->_mode = 2;
    result->_timeout = -1.0;
  }

  return result;
}

- (void)startBioOperation:(BOOL)operation reply:(id)reply
{
  operationCopy = operation;
  v33 = *MEMORY[0x1E69E9840];
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
    xpcClient = self->super.super._xpcClient;
    v10 = v8;
    *buf = 67109376;
    *v26 = operationCopy;
    *&v26[4] = 2048;
    *&v26[6] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKFaceDetectOperation::startBioOperation: async:%d (_cid:%lu)\n", buf, 0x12u);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v12 = dictionary;
  mode = self->_mode;
  if (mode == 1)
  {
    v14 = &unk_1F4801670;
    goto LABEL_10;
  }

  if (mode == 2)
  {
    v14 = &unk_1F4801688;
LABEL_10:
    [dictionary setObject:v14 forKey:@"BKOptionPresenceDetectMode"];
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeout];
    [v12 setObject:v15 forKey:@"BKOptionPresenceDetectTimeout"];

    v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_highPriority];
    [v12 setObject:v16 forKey:@"BKOptionPresenceDetectHighPriority"];

    v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_eyeRelief];
    [v12 setObject:v17 forKey:@"BKOptionPresenceDetectEyeRelief"];

    v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_motionDetect];
    [v12 setObject:v18 forKey:@"BKOptionPresenceDetectMotion"];

    v19 = self->super.super._xpcClient;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __49__BKFaceDetectOperation_startBioOperation_reply___block_invoke;
    v23[3] = &unk_1E8303EC8;
    v24 = replyCopy;
    [(BiometricKitXPCClient *)v19 detectPresenceWithOptions:v12 async:operationCopy withReply:v23];
    v20 = v24;
    goto LABEL_17;
  }

  if (__osLog)
  {
    v21 = __osLog;
  }

  else
  {
    v21 = v7;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    *v26 = "0";
    *&v26[8] = 2048;
    *&v26[10] = 0;
    v27 = 2080;
    v28 = &unk_1C82F52EE;
    v29 = 2080;
    v30 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevicePearl.m";
    v31 = 1024;
    v32 = 487;
    _os_log_impl(&dword_1C82AD000, v21, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
  }

  v20 = [BKErrorHelper errorWithCode:1];
  (*(replyCopy + 2))(replyCopy, 0, v20);
LABEL_17:

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
    _os_log_impl(&dword_1C82AD000, v22, OS_LOG_TYPE_DEFAULT, "BKFaceDetectOperation::startBioOperation: -> void\n", buf, 2u);
  }

  kdebug_trace();
}

void __49__BKFaceDetectOperation_startBioOperation_reply___block_invoke(uint64_t a1, uint64_t a2)
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

- (void)statusMessage:(unsigned int)message details:(id)details client:(unint64_t)client
{
  v6 = *&message;
  v37 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  kdebug_trace();
  v9 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *v36 = v6;
    *&v36[4] = 2048;
    *&v36[6] = detailsCopy;
    *&v36[14] = 2048;
    *&v36[16] = client;
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKFaceDetectOperation::statusMessage:details:client: %u, %p, %llu\n", buf, 0x1Cu);
  }

  if (v6 > 1050)
  {
    if (v6 != 1051)
    {
      if (v6 != 1076)
      {
        goto LABEL_29;
      }

      delegate = [(BKOperation *)self delegate];
      v20 = objc_opt_respondsToSelector();

      if ((v20 & 1) == 0)
      {
        goto LABEL_29;
      }

      if (__osLog)
      {
        v21 = __osLog;
      }

      else
      {
        v21 = v9;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        delegate2 = [(BKOperation *)self delegate];
        delegate3 = [(BKOperation *)self delegate];
        *buf = 134218242;
        *v36 = delegate2;
        *&v36[8] = 2112;
        *&v36[10] = delegate3;
        _os_log_impl(&dword_1C82AD000, v22, OS_LOG_TYPE_DEFAULT, "BKFaceDetectOperation::statusMessage:details:client: motionDetectStateChanged => delegate:%p(%@)\n", buf, 0x16u);
      }

      dispatchQueue = [(BKOperation *)self dispatchQueue];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __54__BKFaceDetectOperation_statusMessage_details_client___block_invoke_263;
      v30[3] = &unk_1E8304208;
      v30[4] = self;
      v31 = detailsCopy;
      dispatch_async(dispatchQueue, v30);

      v18 = v31;
LABEL_24:

      goto LABEL_29;
    }

    selfCopy2 = self;
    v27 = 4;
    goto LABEL_28;
  }

  if ((v6 - 63) < 2)
  {
    delegate4 = [(BKOperation *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      goto LABEL_29;
    }

    if (__osLog)
    {
      v13 = __osLog;
    }

    else
    {
      v13 = v9;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      delegate5 = [(BKOperation *)self delegate];
      delegate6 = [(BKOperation *)self delegate];
      *buf = 67109634;
      *v36 = v6 == 63;
      *&v36[4] = 2048;
      *&v36[6] = delegate5;
      *&v36[14] = 2112;
      *&v36[16] = delegate6;
      _os_log_impl(&dword_1C82AD000, v14, OS_LOG_TYPE_DEFAULT, "BKFaceDetectOperation::statusMessage:details:client: faceDetectStateChanged:%d => delegate:%p(%@)\n", buf, 0x1Cu);
    }

    dispatchQueue2 = [(BKOperation *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__BKFaceDetectOperation_statusMessage_details_client___block_invoke;
    block[3] = &unk_1E83043E8;
    block[4] = self;
    v34 = v6;
    v33 = detailsCopy;
    dispatch_async(dispatchQueue2, block);

    v18 = v33;
    goto LABEL_24;
  }

  if (v6 == 1050)
  {
    selfCopy2 = self;
    v27 = 1;
LABEL_28:
    [(BKOperation *)selfCopy2 operationEndsWithReason:v27];
  }

LABEL_29:
  v29.receiver = self;
  v29.super_class = BKFaceDetectOperation;
  [(BKOperation *)&v29 statusMessage:v6 client:client];
  if (__osLogTrace)
  {
    v28 = __osLogTrace;
  }

  else
  {
    v28 = v9;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v28, OS_LOG_TYPE_DEFAULT, "BKFaceDetectOperation::statusMessage:details:client: -> void\n", buf, 2u);
  }

  kdebug_trace();
}

void __54__BKFaceDetectOperation_statusMessage_details_client___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [[BKFaceDetectStateInfo alloc] initWithPresenceState:*(a1 + 48) == 63 details:*(a1 + 40)];
  [v4 operation:v2 faceDetectStateChanged:v3];
}

void __54__BKFaceDetectOperation_statusMessage_details_client___block_invoke_263(uint64_t a1)
{
  v7 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [BKMotionDetectStateInfo alloc];
  v4 = [*(a1 + 40) objectForKeyedSubscript:@"BKStatusDetailMotionDetectMatrix"];
  v5 = [*(a1 + 40) objectForKeyedSubscript:@"BKStatusDetailMotionDetectState"];
  v6 = [(BKMotionDetectStateInfo *)v3 initWithMotionMatrix:v4 motionDetectState:v5];
  [v7 operation:v2 motionDetectStateChanged:v6];
}

@end