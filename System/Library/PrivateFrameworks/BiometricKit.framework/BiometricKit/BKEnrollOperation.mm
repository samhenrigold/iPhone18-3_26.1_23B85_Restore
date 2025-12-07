@interface BKEnrollOperation
- (BKEnrollOperation)initWithDevice:(id)device;
- (id)enrollResultInfoWithServerIdentity:(id)identity details:(id)details;
- (id)optionsDictionaryWithError:(id *)error;
- (void)enrollResult:(id)result details:(id)details client:(unint64_t)client;
- (void)operationInterrupted;
- (void)processEnrollFailReason:(int64_t)reason;
- (void)startBioOperation:(BOOL)operation reply:(id)reply;
- (void)statusMessage:(unsigned int)message details:(id)details client:(unint64_t)client;
@end

@implementation BKEnrollOperation

- (BKEnrollOperation)initWithDevice:(id)device
{
  v5.receiver = self;
  v5.super_class = BKEnrollOperation;
  v3 = [(BKOperation *)&v5 initWithDevice:device];
  if (v3)
  {
    v3->_userID = getCurrentUserID();
  }

  return v3;
}

- (void)operationInterrupted
{
  [(BKEnrollOperation *)self processEnrollFailReason:2];
  v3.receiver = self;
  v3.super_class = BKEnrollOperation;
  [(BKOperation *)&v3 operationInterrupted];
}

- (id)optionsDictionaryWithError:(id *)error
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = dictionary;
  credentialSet = self->_credentialSet;
  if (credentialSet)
  {
    [dictionary setObject:credentialSet forKey:@"BKOptionAuthWithCredentialSet"];
  }

  accessoryGroup = self->_accessoryGroup;
  if (accessoryGroup)
  {
    serverAccessoryGroup = [(BKAccessoryGroup *)accessoryGroup serverAccessoryGroup];
    [v5 setObject:serverAccessoryGroup forKey:@"BKOptionEnrollAccessoryGroup"];
  }

  return v5;
}

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
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKEnrollOperation::startBioOperation: async:%d (_cid:%lu)\n", buf, 0x12u);
  }

  device = [(BKOperation *)self device];
  descriptor = [device descriptor];
  type = [descriptor type];

  v22 = 0;
  v14 = [(BKEnrollOperation *)self optionsDictionaryWithError:&v22];
  v15 = v22;
  if (v14)
  {
    if (type == 2)
    {
      v16 = 4;
    }

    else
    {
      v16 = 1;
    }

    v17 = self->super._xpcClient;
    userID = self->_userID;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __45__BKEnrollOperation_startBioOperation_reply___block_invoke;
    v20[3] = &unk_1E8303EC8;
    v21 = replyCopy;
    [(BiometricKitXPCClient *)v17 enroll:v16 forUser:userID withOptions:v14 async:operationCopy withReply:v20];
  }

  else
  {
    [BKEnrollOperation startBioOperation:reply:];
  }

  if (__osLogTrace)
  {
    v19 = __osLogTrace;
  }

  else
  {
    v19 = v7;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v19, OS_LOG_TYPE_DEFAULT, "BKEnrollOperation::startBioOperation: -> void\n", buf, 2u);
  }

  kdebug_trace();
}

void __45__BKEnrollOperation_startBioOperation_reply___block_invoke(uint64_t a1, uint64_t a2)
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

- (id)enrollResultInfoWithServerIdentity:(id)identity details:(id)details
{
  detailsCopy = details;
  identityCopy = identity;
  v8 = [BKEnrollResultInfo alloc];
  device = [(BKOperation *)self device];
  v10 = [(BKEnrollResultInfo *)v8 initWithServerIdentity:identityCopy details:detailsCopy device:device];

  return v10;
}

- (void)enrollResult:(id)result details:(id)details client:(unint64_t)client
{
  v37 = *MEMORY[0x1E69E9840];
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
    v30 = resultCopy;
    v31 = 2112;
    v32 = resultCopy;
    v33 = 2048;
    v34 = detailsCopy;
    v35 = 2048;
    clientCopy = client;
    _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKEnrollOperation::enrollResult:details:client: %p(%@), %p, %llu\n", buf, 0x2Au);
  }

  delegate = [(BKOperation *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    dispatchQueue = [(BKOperation *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__BKEnrollOperation_enrollResult_details_client___block_invoke;
    block[3] = &unk_1E8304208;
    block[4] = self;
    v28 = resultCopy;
    dispatch_async(dispatchQueue, block);
  }

  delegate2 = [(BKOperation *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = [(BKEnrollOperation *)self enrollResultInfoWithServerIdentity:resultCopy details:detailsCopy];
    dispatchQueue2 = [(BKOperation *)self dispatchQueue];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __49__BKEnrollOperation_enrollResult_details_client___block_invoke_2;
    v24 = &unk_1E8304208;
    selfCopy = self;
    v26 = v17;
    v19 = v17;
    dispatch_async(dispatchQueue2, &v21);
  }

  [(BKOperation *)self operationEndsWithReason:1, v21, v22, v23, v24, selfCopy];
  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v10;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v20, OS_LOG_TYPE_DEFAULT, "BKEnrollOperation::enrollResult:details:client: -> void\n", buf, 2u);
  }

  kdebug_trace();
}

void __49__BKEnrollOperation_enrollResult_details_client___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [BKIdentity alloc];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) device];
  v6 = [(BKIdentity *)v3 initWithServerIdentity:v4 device:v5];
  [v7 enrollOperation:v2 finishedWithIdentity:v6];
}

void __49__BKEnrollOperation_enrollResult_details_client___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 enrollOperation:*(a1 + 32) finishedWithEnrollResult:*(a1 + 40)];
}

- (void)processEnrollFailReason:(int64_t)reason
{
  v19 = *MEMORY[0x1E69E9840];
  delegate = [(BKOperation *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (__osLog)
    {
      v7 = __osLog;
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      delegate2 = [(BKOperation *)self delegate];
      delegate3 = [(BKOperation *)self delegate];
      *buf = 134218498;
      reasonCopy = reason;
      v15 = 2048;
      v16 = delegate2;
      v17 = 2112;
      v18 = delegate3;
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKEnrollOperation::processEnrollFailReason: %ld => delegate:%p(%@)\n", buf, 0x20u);
    }

    dispatchQueue = [(BKOperation *)self dispatchQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__BKEnrollOperation_processEnrollFailReason___block_invoke;
    v12[3] = &unk_1E8303D98;
    v12[4] = self;
    v12[5] = reason;
    dispatch_async(dispatchQueue, v12);
  }
}

void __45__BKEnrollOperation_processEnrollFailReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 enrollOperation:*(a1 + 32) failedWithReason:*(a1 + 40)];
}

- (void)statusMessage:(unsigned int)message details:(id)details client:(unint64_t)client
{
  v6 = *&message;
  v36 = *MEMORY[0x1E69E9840];
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
    xpcClient = self->super._xpcClient;
    v12 = v10;
    *buf = 67109888;
    *v35 = v6;
    *&v35[4] = 2048;
    *&v35[6] = detailsCopy;
    *&v35[14] = 2048;
    *&v35[16] = client;
    *&v35[24] = 2048;
    *&v35[26] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v12, OS_LOG_TYPE_DEFAULT, "BKEnrollOperation::statusMessage:details:client: %u, %p, %llu (_cid:%lu)\n", buf, 0x26u);
  }

  if ((v6 - 100) <= 0xFF)
  {
    delegate = [(BKOperation *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = ((100 * v6 - 10000) & 0xFFFCu) / 0xFF;
      if (__osLog)
      {
        v16 = __osLog;
      }

      else
      {
        v16 = v9;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        delegate2 = [(BKOperation *)self delegate];
        delegate3 = [(BKOperation *)self delegate];
        *buf = 134218498;
        *v35 = v15;
        *&v35[8] = 2048;
        *&v35[10] = delegate2;
        *&v35[18] = 2112;
        *&v35[20] = delegate3;
        _os_log_impl(&dword_1C82AD000, v17, OS_LOG_TYPE_DEFAULT, "BKEnrollOperation::statusMessage:details:client: percentCompleted:%ld => delegate:%p(%@)\n", buf, 0x20u);
      }

      dispatchQueue = [(BKOperation *)self dispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__BKEnrollOperation_statusMessage_details_client___block_invoke;
      block[3] = &unk_1E8303D98;
      block[4] = self;
      block[5] = v15;
      dispatch_async(dispatchQueue, block);
    }

    goto LABEL_18;
  }

  if (v6 <= 67)
  {
    if (v6 == 66)
    {
      v21 = 1;
    }

    else
    {
      if (v6 != 67)
      {
LABEL_31:
        v30.receiver = self;
        v30.super_class = BKEnrollOperation;
        [(BKOperation *)&v30 statusMessage:v6 client:client];
        goto LABEL_32;
      }

      v21 = 2;
    }

LABEL_30:
    [(BKEnrollOperation *)self processEnrollFailReason:v21];
    goto LABEL_31;
  }

  if (v6 == 68)
  {
    v21 = 3;
    goto LABEL_30;
  }

  if (v6 != 501)
  {
    if (v6 == 70)
    {
LABEL_18:
      [(BiometricKitXPCClient *)self->super._xpcClient enrollContinue];
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  delegate4 = [(BKOperation *)self delegate];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    v24 = [detailsCopy objectForKeyedSubscript:@"BKAuthRequiredForAccessory"];
    if (v24)
    {
      v25 = [BKAccessory alloc];
      device = [(BKOperation *)self device];
      v27 = [(BKAccessory *)v25 initWithServerAccessory:v24 device:device];

      if (v27)
      {
        dispatchQueue2 = [(BKOperation *)self dispatchQueue];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __50__BKEnrollOperation_statusMessage_details_client___block_invoke_161;
        v31[3] = &unk_1E8304208;
        v31[4] = self;
        v32 = v27;
        dispatch_async(dispatchQueue2, v31);
      }

      else
      {
        [BKEnrollOperation statusMessage:details:client:];
      }
    }
  }

LABEL_32:
  if (__osLogTrace)
  {
    v29 = __osLogTrace;
  }

  else
  {
    v29 = v9;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v29, OS_LOG_TYPE_DEFAULT, "BKEnrollOperation::statusMessage:details:client: -> void\n", buf, 2u);
  }

  kdebug_trace();
}

void __50__BKEnrollOperation_statusMessage_details_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 enrollOperation:*(a1 + 32) percentCompleted:*(a1 + 40)];
}

void __50__BKEnrollOperation_statusMessage_details_client___block_invoke_161(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 enrollOperation:*(a1 + 32) requiredAuthorizationForAccessory:*(a1 + 40)];
}

- (uint64_t)startBioOperation:reply:.cold.1()
{
  OUTLINED_FUNCTION_13();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  v6 = OUTLINED_FUNCTION_2_4();
  return v7(v6);
}

- (void)statusMessage:details:client:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

@end