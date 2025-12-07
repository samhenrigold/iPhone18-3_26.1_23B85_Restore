@interface BKEnrollPearlOperation
- (BKEnrollPearlOperation)initWithDevice:(id)device;
- (BOOL)completeWithError:(id *)error;
- (BOOL)resumeWithError:(id *)error;
- (BOOL)startWithError:(id *)error;
- (BOOL)suspendWithError:(id *)error;
- (id)enrollResultInfoWithServerIdentity:(id)identity details:(id)details;
- (id)optionsDictionaryWithError:(id *)error;
- (void)enrollFeedback:(id)feedback client:(unint64_t)client;
- (void)enrollUpdate:(id)update client:(unint64_t)client;
- (void)statusMessage:(unsigned int)message client:(unint64_t)client;
@end

@implementation BKEnrollPearlOperation

- (BKEnrollPearlOperation)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = BKEnrollPearlOperation;
  result = [(BKEnrollOperation *)&v4 initWithDevice:device];
  if (result)
  {
    result->_enrollmentType = 1;
  }

  return result;
}

- (id)enrollResultInfoWithServerIdentity:(id)identity details:(id)details
{
  detailsCopy = details;
  identityCopy = identity;
  v8 = [BKEnrollPearlResultInfo alloc];
  device = [(BKOperation *)self device];
  v10 = [(BKEnrollPearlResultInfo *)v8 initWithServerIdentity:identityCopy details:detailsCopy device:device];

  return v10;
}

- (void)statusMessage:(unsigned int)message client:(unint64_t)client
{
  v5 = *&message;
  v45 = *MEMORY[0x1E69E9840];
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
    *v44 = v5;
    *&v44[4] = 2048;
    *&v44[6] = client;
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKEnrollPearlOperation::statusMessage:client: %u, %llu\n", buf, 0x12u);
  }

  if (v5 == 1055)
  {
    selfCopy2 = self;
    v10 = 2;
    goto LABEL_10;
  }

  if (v5 == 1054)
  {
    selfCopy2 = self;
    v10 = 5;
LABEL_10:
    [(BKOperation *)selfCopy2 changeState:v10];
    goto LABEL_11;
  }

  if ((v5 - 63) <= 1)
  {
    delegate = [(BKOperation *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0)
    {
      goto LABEL_11;
    }

    if (__osLog)
    {
      v14 = __osLog;
    }

    else
    {
      v14 = v7;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      delegate2 = [(BKOperation *)self delegate];
      delegate3 = [(BKOperation *)self delegate];
      *buf = 67109634;
      *v44 = v5 == 63;
      *&v44[4] = 2048;
      *&v44[6] = delegate2;
      *&v44[14] = 2112;
      *&v44[16] = delegate3;
      _os_log_impl(&dword_1C82AD000, v15, OS_LOG_TYPE_DEFAULT, "BKEnrollPearlOperation::statusMessage:client: faceDetectStateChanged:%d => delegate:%p(%@)\n", buf, 0x1Cu);
    }

    dispatchQueue = [(BKOperation *)self dispatchQueue];
    v19 = dispatchQueue;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __47__BKEnrollPearlOperation_statusMessage_client___block_invoke;
    v41[3] = &unk_1E8304258;
    v41[4] = self;
    v42 = v5;
    v20 = v41;
LABEL_33:
    dispatch_async(dispatchQueue, v20);

    goto LABEL_11;
  }

  if ((v5 - 100) <= 0xFF)
  {
    delegate4 = [(BKOperation *)self delegate];
    v22 = objc_opt_respondsToSelector();

    if ((v22 & 1) == 0)
    {
      goto LABEL_11;
    }

    v23 = ((100 * v5 - 10000) & 0xFFFCu) / 0xFF;
    if (__osLog)
    {
      v24 = __osLog;
    }

    else
    {
      v24 = v7;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      log = v24;
      delegate5 = [(BKOperation *)self delegate];
      delegate6 = [(BKOperation *)self delegate];
      *buf = 134218498;
      *v44 = ((100 * v5 - 10000) & 0xFFFCu) / 0xFF;
      *&v44[8] = 2048;
      *&v44[10] = delegate5;
      *&v44[18] = 2112;
      *&v44[20] = delegate6;
      _os_log_impl(&dword_1C82AD000, log, OS_LOG_TYPE_DEFAULT, "BKEnrollPearlOperation::statusMessage:client: progressedWithInfo:%ld => delegate:%p(%@)\n", buf, 0x20u);

      v23 = ((100 * v5 - 10000) & 0xFFFCu) / 0xFF;
    }

    dispatchQueue = [(BKOperation *)self dispatchQueue];
    v19 = dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__BKEnrollPearlOperation_statusMessage_client___block_invoke_357;
    block[3] = &unk_1E8303D98;
    block[4] = self;
    block[5] = v23;
    v20 = block;
    goto LABEL_33;
  }

  v27 = v5 - 1056;
  if ((v5 - 1056) <= 0x1B && ((1 << v27) & 0xAA61163) != 0)
  {
    delegate7 = [(BKOperation *)self delegate];
    v29 = objc_opt_respondsToSelector();

    if (v29)
    {
      if (v27 > 0x1B)
      {
        v30 = 2;
      }

      else
      {
        v30 = qword_1C82F50C8[v27];
      }

      if (__osLog)
      {
        v31 = __osLog;
      }

      else
      {
        v31 = v7;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        loga = v31;
        [(BKOperation *)self delegate];
        v33 = v32 = v30;
        delegate8 = [(BKOperation *)self delegate];
        *buf = 134218498;
        *v44 = v32;
        *&v44[8] = 2048;
        *&v44[10] = v33;
        *&v44[18] = 2112;
        *&v44[20] = delegate8;
        _os_log_impl(&dword_1C82AD000, loga, OS_LOG_TYPE_DEFAULT, "BKEnrollPearlOperation::statusMessage:client: failedWithReason:%ld => delegate:%p(%@)\n", buf, 0x20u);

        v30 = v32;
      }

      dispatchQueue2 = [(BKOperation *)self dispatchQueue];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __47__BKEnrollPearlOperation_statusMessage_client___block_invoke_361;
      v39[3] = &unk_1E8303D98;
      v39[4] = self;
      v39[5] = v30;
      dispatch_async(dispatchQueue2, v39);
    }

    [(BKOperation *)self operationEndsWithReason:3];
  }

LABEL_11:
  v38.receiver = self;
  v38.super_class = BKEnrollPearlOperation;
  [(BKEnrollOperation *)&v38 statusMessage:v5 client:client];
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v7;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKEnrollPearlOperation::statusMessage:client: -> void\n", buf, 2u);
  }

  kdebug_trace();
}

void __47__BKEnrollPearlOperation_statusMessage_client___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [[BKFaceDetectStateInfo alloc] initWithPresenceState:*(a1 + 40) == 63];
  [v4 operation:v2 faceDetectStateChanged:v3];
}

void __47__BKEnrollPearlOperation_statusMessage_client___block_invoke_357(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [[BKEnrollPearlProgressInfo alloc] initWithPercents:*(a1 + 40)];
  [v4 enrollOperation:v2 progressedWithInfo:v3];
}

void __47__BKEnrollPearlOperation_statusMessage_client___block_invoke_361(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 enrollOperation:*(a1 + 32) failedWithReason:*(a1 + 40)];
}

- (void)enrollUpdate:(id)update client:(unint64_t)client
{
  v47 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  kdebug_trace();
  if (updateCopy)
  {
    v6 = [updateCopy length];
    if (v6 <= 0x31)
    {
      [BKEnrollPearlOperation enrollUpdate:client:];
    }

    else
    {
      v7 = v6;
      bytes = [updateCopy bytes];
      if (bytes)
      {
        v9 = bytes;
        if (v7 < *(bytes + 48) * *(bytes + 46) + 50)
        {
          [BKEnrollPearlOperation enrollUpdate:client:];
        }

        else
        {
          delegate = [(BKOperation *)self delegate];
          v11 = objc_opt_respondsToSelector();

          if (v11)
          {
            v12 = [[BKFaceDetectStateInfo alloc] initFromFaceInfo:v9 + 4];
            dispatchQueue = [(BKOperation *)self dispatchQueue];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __46__BKEnrollPearlOperation_enrollUpdate_client___block_invoke;
            block[3] = &unk_1E8304208;
            block[4] = self;
            v38 = v12;
            v14 = v12;
            dispatch_async(dispatchQueue, block);
          }

          delegate2 = [(BKOperation *)self delegate];
          v16 = objc_opt_respondsToSelector();

          if (v16)
          {
            v17 = *(v9 + 2);
            if (__osLog)
            {
              v18 = __osLog;
            }

            else
            {
              v18 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = v18;
              delegate3 = [(BKOperation *)self delegate];
              delegate4 = [(BKOperation *)self delegate];
              *buf = 134218498;
              v40 = v17;
              v41 = 2048;
              v42 = delegate3;
              v43 = 2112;
              v44 = delegate4;
              _os_log_impl(&dword_1C82AD000, v19, OS_LOG_TYPE_DEFAULT, "BKEnrollPearlOperation::enrollUpdate:client: percentCompleted:%ld => delegate:%p(%@)\n", buf, 0x20u);
            }

            dispatchQueue2 = [(BKOperation *)self dispatchQueue];
            v36[0] = MEMORY[0x1E69E9820];
            v36[1] = 3221225472;
            v36[2] = __46__BKEnrollPearlOperation_enrollUpdate_client___block_invoke_368;
            v36[3] = &unk_1E8303D98;
            v36[4] = self;
            v36[5] = v17;
            dispatch_async(dispatchQueue2, v36);
          }

          delegate5 = [(BKOperation *)self delegate];
          v24 = objc_opt_respondsToSelector();

          if (v24)
          {
            v25 = [[BKEnrollPearlProgressInfo alloc] initFromEnrollInfo:v9];
            if (__osLog)
            {
              v26 = __osLog;
            }

            else
            {
              v26 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = v26;
              percentageCompleted = [v25 percentageCompleted];
              enrolledPoses = [v25 enrolledPoses];
              delegate6 = [(BKOperation *)self delegate];
              delegate7 = [(BKOperation *)self delegate];
              *buf = 134218754;
              v40 = percentageCompleted;
              v41 = 2112;
              v42 = enrolledPoses;
              v43 = 2048;
              v44 = delegate6;
              v45 = 2112;
              v46 = delegate7;
              _os_log_impl(&dword_1C82AD000, v27, OS_LOG_TYPE_DEFAULT, "BKEnrollPearlOperation::enrollUpdate: progressedWithInfo:(percentageCompleted:%ld, enrolledPoses:%@) => delegate:%p(%@)\n", buf, 0x2Au);
            }

            dispatchQueue3 = [(BKOperation *)self dispatchQueue];
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __46__BKEnrollPearlOperation_enrollUpdate_client___block_invoke_369;
            v34[3] = &unk_1E8304208;
            v34[4] = self;
            v35 = v25;
            v33 = v25;
            dispatch_async(dispatchQueue3, v34);
          }
        }
      }

      else
      {
        [BKEnrollPearlOperation enrollUpdate:client:];
      }
    }
  }

  else
  {
    [BKEnrollPearlOperation enrollUpdate:client:];
  }

  kdebug_trace();
}

void __46__BKEnrollPearlOperation_enrollUpdate_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 operation:*(a1 + 32) faceDetectStateChanged:*(a1 + 40)];
}

void __46__BKEnrollPearlOperation_enrollUpdate_client___block_invoke_368(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 enrollOperation:*(a1 + 32) percentCompleted:*(a1 + 40)];
}

void __46__BKEnrollPearlOperation_enrollUpdate_client___block_invoke_369(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 enrollOperation:*(a1 + 32) progressedWithInfo:*(a1 + 40)];
}

- (void)enrollFeedback:(id)feedback client:(unint64_t)client
{
  feedbackCopy = feedback;
  v6 = feedbackCopy;
  if (feedbackCopy)
  {
    if ([feedbackCopy length] <= 0x29)
    {
      [BKEnrollPearlOperation enrollFeedback:client:];
    }

    else
    {
      bytes = [v6 bytes];
      if (bytes)
      {
        v8 = bytes;
        delegate = [(BKOperation *)self delegate];
        v10 = objc_opt_respondsToSelector();

        if (v10)
        {
          v11 = [[BKFaceDetectStateInfo alloc] initFromFaceInfo:v8];
          dispatchQueue = [(BKOperation *)self dispatchQueue];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __48__BKEnrollPearlOperation_enrollFeedback_client___block_invoke;
          v14[3] = &unk_1E8304208;
          v14[4] = self;
          v15 = v11;
          v13 = v11;
          dispatch_async(dispatchQueue, v14);
        }
      }

      else
      {
        [BKEnrollPearlOperation enrollFeedback:client:];
      }
    }
  }

  else
  {
    [BKEnrollPearlOperation enrollFeedback:client:];
  }
}

void __48__BKEnrollPearlOperation_enrollFeedback_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 operation:*(a1 + 32) faceDetectStateChanged:*(a1 + 40)];
}

- (id)optionsDictionaryWithError:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = BKEnrollPearlOperation;
  v5 = [(BKEnrollOperation *)&v15 optionsDictionaryWithError:?];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v5];
    v7 = v6;
    if (self->_clientToComplete)
    {
      [v6 setObject:MEMORY[0x1E695E118] forKey:@"BKOptionEnrollClientToComplete"];
    }

    if ((self->_enrollmentType - 1) >= 3)
    {
      if (__osLog)
      {
        v13 = __osLog;
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 136316162;
      *&buf[4] = "0";
      v18 = 2048;
      v19 = 0;
      v20 = 2080;
      v21 = &unk_1C82F52EE;
      v22 = 2080;
      v23 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevicePearl.m";
      v24 = 1024;
      v25 = 900;
    }

    else
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      [v7 setObject:v8 forKey:@"BKOptionFaceIDEnrollType"];

      augmentedIdentity = self->_augmentedIdentity;
      if (augmentedIdentity)
      {
        serverIdentity = [(BKIdentity *)augmentedIdentity serverIdentity];
        [v7 setObject:serverIdentity forKey:@"BKOptionEnrollAugmentedIdentity"];
      }

      if (self->_enrollmentType != 3)
      {
        goto LABEL_10;
      }

      if (self->_periocularGlassesRequirement < 3uLL)
      {
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
        [v7 setObject:v11 forKey:@"BKOptionFaceIDEnrollGlassesRequirement"];

LABEL_10:
        v7 = v7;
        v12 = v7;
        goto LABEL_18;
      }

      if (__osLog)
      {
        v13 = __osLog;
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 136316162;
      *&buf[4] = "0";
      v18 = 2048;
      v19 = 0;
      v20 = 2080;
      v21 = &unk_1C82F52EE;
      v22 = 2080;
      v23 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevicePearl.m";
      v24 = 1024;
      v25 = 918;
    }

    _os_log_impl(&dword_1C82AD000, v13, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
LABEL_17:
    setError(1, error);
    v12 = 0;
    goto LABEL_18;
  }

  [(BKEnrollPearlOperation *)&v16 optionsDictionaryWithError:buf];
  v7 = v16;
  v12 = *buf;
LABEL_18:

  return v12;
}

- (BOOL)startWithError:(id *)error
{
  *&v19[5] = *MEMORY[0x1E69E9840];
  kdebug_trace();
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
    xpcClient = self->super.super._xpcClient;
    v8 = v6;
    *buf = 134217984;
    *v19 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKEnrollPearlOperation:start (_cid:%lu)\n", buf, 0xCu);
  }

  v17.receiver = self;
  v17.super_class = BKEnrollPearlOperation;
  v9 = [(BKOperation *)&v17 startWithError:error];
  v10 = v9;
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v5;
  }

  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v12 = *error;
      }

      else
      {
        v12 = 0;
      }

      *buf = 67109378;
      v19[0] = 1;
      LOWORD(v19[1]) = 2112;
      *(&v19[1] + 2) = v12;
      v14 = v11;
      v15 = OS_LOG_TYPE_DEFAULT;
LABEL_20:
      _os_log_impl(&dword_1C82AD000, v14, v15, "BKEnrollPearlOperation:start -> %d, error:%@\n", buf, 0x12u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v13 = *error;
    }

    else
    {
      v13 = 0;
    }

    *buf = 67109378;
    v19[0] = 0;
    LOWORD(v19[1]) = 2112;
    *(&v19[1] + 2) = v13;
    v14 = v11;
    v15 = OS_LOG_TYPE_ERROR;
    goto LABEL_20;
  }

  kdebug_trace();
  return v10;
}

- (BOOL)completeWithError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  kdebug_trace();
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
    xpcClient = self->super.super._xpcClient;
    v8 = v6;
    v19 = 134217984;
    *v20 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKEnrollPearlOperation:complete (_cid:%lu)\n", &v19, 0xCu);
  }

  completeEnrollment = [(BiometricKitXPCClient *)self->super.super._xpcClient completeEnrollment];
  v10 = completeEnrollment;
  if (completeEnrollment)
  {
    if (__osLog)
    {
      v16 = __osLog;
    }

    else
    {
      v16 = v5;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 136316162;
      *v20 = "err == 0 ";
      *&v20[8] = 2048;
      *&v20[10] = v10;
      v21 = 2080;
      v22 = &unk_1C82F52EE;
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevicePearl.m";
      v25 = 1024;
      v26 = 963;
      _os_log_impl(&dword_1C82AD000, v16, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v19, 0x30u);
    }

    setErrorWithOSStatus(v10, error);
    if (__osLogTrace)
    {
      v17 = __osLogTrace;
    }

    else
    {
      v17 = v5;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v18 = *error;
      }

      else
      {
        v18 = 0;
      }

      v19 = 67109378;
      *v20 = 0;
      *&v20[4] = 2112;
      *&v20[6] = v18;
      v13 = v17;
      v14 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }
  }

  else
  {
    if (__osLogTrace)
    {
      v11 = __osLogTrace;
    }

    else
    {
      v11 = v5;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v12 = *error;
      }

      else
      {
        v12 = 0;
      }

      v19 = 67109378;
      *v20 = 1;
      *&v20[4] = 2112;
      *&v20[6] = v12;
      v13 = v11;
      v14 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
      _os_log_impl(&dword_1C82AD000, v13, v14, "BKEnrollPearlOperation:complete -> %d, error:%@\n", &v19, 0x12u);
    }
  }

  kdebug_trace();
  return v10 == 0;
}

- (BOOL)suspendWithError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  kdebug_trace();
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
    xpcClient = self->super.super._xpcClient;
    v8 = v6;
    v19 = 134217984;
    *v20 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKEnrollPearlOperation:suspend (_cid:%lu)\n", &v19, 0xCu);
  }

  v9 = [(BiometricKitXPCClient *)self->super.super._xpcClient suspendEnrollment:1];
  v10 = v9;
  if (v9)
  {
    if (__osLog)
    {
      v16 = __osLog;
    }

    else
    {
      v16 = v5;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 136316162;
      *v20 = "err == 0 ";
      *&v20[8] = 2048;
      *&v20[10] = v10;
      v21 = 2080;
      v22 = &unk_1C82F52EE;
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevicePearl.m";
      v25 = 1024;
      v26 = 987;
      _os_log_impl(&dword_1C82AD000, v16, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v19, 0x30u);
    }

    setErrorWithOSStatus(v10, error);
    if (__osLogTrace)
    {
      v17 = __osLogTrace;
    }

    else
    {
      v17 = v5;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v18 = *error;
      }

      else
      {
        v18 = 0;
      }

      v19 = 67109378;
      *v20 = 0;
      *&v20[4] = 2112;
      *&v20[6] = v18;
      v13 = v17;
      v14 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }
  }

  else
  {
    if (__osLogTrace)
    {
      v11 = __osLogTrace;
    }

    else
    {
      v11 = v5;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v12 = *error;
      }

      else
      {
        v12 = 0;
      }

      v19 = 67109378;
      *v20 = 1;
      *&v20[4] = 2112;
      *&v20[6] = v12;
      v13 = v11;
      v14 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
      _os_log_impl(&dword_1C82AD000, v13, v14, "BKEnrollPearlOperation:suspend -> %d, error:%@\n", &v19, 0x12u);
    }
  }

  kdebug_trace();
  return v10 == 0;
}

- (BOOL)resumeWithError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  kdebug_trace();
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
    xpcClient = self->super.super._xpcClient;
    v8 = v6;
    v19 = 134217984;
    *v20 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKEnrollPearlOperation:resume (_cid:%lu)\n", &v19, 0xCu);
  }

  v9 = [(BiometricKitXPCClient *)self->super.super._xpcClient suspendEnrollment:0];
  v10 = v9;
  if (v9)
  {
    if (__osLog)
    {
      v16 = __osLog;
    }

    else
    {
      v16 = v5;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 136316162;
      *v20 = "err == 0 ";
      *&v20[8] = 2048;
      *&v20[10] = v10;
      v21 = 2080;
      v22 = &unk_1C82F52EE;
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevicePearl.m";
      v25 = 1024;
      v26 = 1011;
      _os_log_impl(&dword_1C82AD000, v16, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v19, 0x30u);
    }

    setErrorWithOSStatus(v10, error);
    if (__osLogTrace)
    {
      v17 = __osLogTrace;
    }

    else
    {
      v17 = v5;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v18 = *error;
      }

      else
      {
        v18 = 0;
      }

      v19 = 67109378;
      *v20 = 0;
      *&v20[4] = 2112;
      *&v20[6] = v18;
      v13 = v17;
      v14 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }
  }

  else
  {
    if (__osLogTrace)
    {
      v11 = __osLogTrace;
    }

    else
    {
      v11 = v5;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v12 = *error;
      }

      else
      {
        v12 = 0;
      }

      v19 = 67109378;
      *v20 = 1;
      *&v20[4] = 2112;
      *&v20[6] = v12;
      v13 = v11;
      v14 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
      _os_log_impl(&dword_1C82AD000, v13, v14, "BKEnrollPearlOperation:resume -> %d, error:%@\n", &v19, 0x12u);
    }
  }

  kdebug_trace();
  return v10 == 0;
}

- (void)enrollUpdate:client:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)enrollUpdate:client:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)enrollUpdate:client:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)enrollUpdate:client:.cold.4()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)enrollFeedback:client:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)enrollFeedback:client:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)enrollFeedback:client:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)optionsDictionaryWithError:(void *)a1 .cold.1(void *a1, void *a2)
{
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9);
  }

  *a2 = 0;
  *a1 = 0;
}

@end