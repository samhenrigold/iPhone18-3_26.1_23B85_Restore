@interface BKMatchOperation
- (BKMatchOperation)initWithDevice:(id)device;
- (id)matchResultInfoWithServerIdentity:(id)identity details:(id)details;
- (id)optionsDictionaryWithError:(id *)error;
- (void)dealloc;
- (void)matchResult:(id)result details:(id)details client:(unint64_t)client;
- (void)operationInterrupted;
- (void)processMatchFailReason:(int64_t)reason;
- (void)startBioOperation:(BOOL)operation reply:(id)reply;
- (void)statusMessage:(unsigned int)message client:(unint64_t)client;
@end

@implementation BKMatchOperation

- (BKMatchOperation)initWithDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = BKMatchOperation;
  v3 = [(BKOperation *)&v6 initWithDevice:device];
  v4 = v3;
  if (v3)
  {
    v3->_purpose = 1;
  }

  BKLogEvent(0x40000u);
  return v4;
}

- (void)dealloc
{
  BKLogEvent(0x40002u);
  v3.receiver = self;
  v3.super_class = BKMatchOperation;
  [(BKOperation *)&v3 dealloc];
}

- (void)operationInterrupted
{
  [(BKMatchOperation *)self processMatchFailReason:1];
  v3.receiver = self;
  v3.super_class = BKMatchOperation;
  [(BKOperation *)&v3 operationInterrupted];
}

- (id)optionsDictionaryWithError:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = dictionary;
  purpose = self->_purpose;
  if (purpose > 3)
  {
    switch(purpose)
    {
      case 4:
        if (!self->_credentialSet)
        {
          [BKMatchOperation optionsDictionaryWithError:error];
          goto LABEL_45;
        }

        [dictionary setObject:MEMORY[0x1E695E118] forKey:@"BKOptionMatchForUnlock"];
        credentialSet = self->_credentialSet;
        goto LABEL_14;
      case 5:
        [dictionary setObject:MEMORY[0x1E695E118] forKey:@"BKOptionMatchForPreArm"];
        if (self->_captureOnly)
        {
          v23 = [MEMORY[0x1E696AD98] numberWithBool:1];
          [v6 setObject:v23 forKey:@"BKOptionMatchCaptureOnly"];
        }

LABEL_23:
        v11 = self->_useCase - 1;
        if (v11 <= 2)
        {
          [v6 setObject:*(&off_1E83043C8 + v11) forKey:@"BKOptionMatchUseCase"];
        }

        if (self->_priority)
        {
          v12 = [MEMORY[0x1E696AD98] numberWithInteger:?];
          [v6 setObject:v12 forKey:@"BKOptionPriority"];
        }

        if (self->_stopOnSuccess)
        {
          v13 = [MEMORY[0x1E696AD98] numberWithBool:1];
          [v6 setObject:v13 forKey:@"BKOptionMatchStopOnSuccess"];
        }

        if (self->_selectedIdentities)
        {
          array = [MEMORY[0x1E695DF70] array];
          if (!array)
          {
            [BKMatchOperation optionsDictionaryWithError:error];
LABEL_44:

            goto LABEL_45;
          }

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v15 = self->_selectedIdentities;
          v16 = [(NSArray *)v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v26;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v26 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                serverIdentity = [*(*(&v25 + 1) + 8 * i) serverIdentity];
                if (!serverIdentity)
                {
                  [BKMatchOperation optionsDictionaryWithError:];
                  goto LABEL_44;
                }

                v21 = serverIdentity;
                [array addObject:serverIdentity];
              }

              v17 = [(NSArray *)v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          [v6 setObject:array forKey:@"BKOptionMatchSelectedIdentities"];
        }

        v22 = v6;
        goto LABEL_46;
      case 6:
        [dictionary setObject:MEMORY[0x1E695E118] forKey:@"BKOptionMatchBypassPasscodeBiolockout"];
        credentialSet = self->_credentialSet;
        if (!credentialSet)
        {
          goto LABEL_23;
        }

        v9 = @"BKOptionAuthWithCredentialSet";
        goto LABEL_22;
    }

LABEL_15:
    if (__osLog)
    {
      v10 = __osLog;
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v31 = "0";
      v32 = 2048;
      v33 = 0;
      v34 = 2080;
      v35 = &unk_1C82F52EE;
      v36 = 2080;
      v37 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKOperation.m";
      v38 = 1024;
      v39 = 797;
      _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    setError(1, error);
    goto LABEL_45;
  }

  if (purpose == 1)
  {
    goto LABEL_23;
  }

  if (purpose == 2)
  {
    credentialSet = MEMORY[0x1E695E118];
    v9 = @"BKOptionMatchForUnlock";
    goto LABEL_22;
  }

  if (purpose != 3)
  {
    goto LABEL_15;
  }

  credentialSet = self->_credentialSet;
  if (credentialSet)
  {
LABEL_14:
    v9 = @"BKOptionMatchForCredentialSet";
LABEL_22:
    [v6 setObject:credentialSet forKey:v9];
    goto LABEL_23;
  }

  [BKMatchOperation optionsDictionaryWithError:error];
LABEL_45:
  v22 = 0;
LABEL_46:

  return v22;
}

- (void)startBioOperation:(BOOL)operation reply:(id)reply
{
  operationCopy = operation;
  v26 = *MEMORY[0x1E69E9840];
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
    v23 = operationCopy;
    v24 = 2048;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKMatchOperation::startBioOperation: async:%d (_cid:%lu)\n", buf, 0x12u);
  }

  v19 = 0;
  v11 = [(BKMatchOperation *)self optionsDictionaryWithError:&v19];
  v12 = v19;
  if (v11)
  {
    userID = self->_userID;
    if (userID)
    {
      v20 = @"BKFilterUserID";
      v21 = userID;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    }

    else
    {
      v14 = 0;
    }

    v15 = self->super._xpcClient;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __44__BKMatchOperation_startBioOperation_reply___block_invoke;
    v17[3] = &unk_1E8303EC8;
    v18 = replyCopy;
    [(BiometricKitXPCClient *)v15 match:v14 withOptions:v11 async:operationCopy withReply:v17];
  }

  else
  {
    [BKMatchOperation startBioOperation:reply:];
  }

  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = v7;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v16, OS_LOG_TYPE_DEFAULT, "BKMatchOperation::startBioOperation: -> void\n", buf, 2u);
  }

  kdebug_trace();
}

void __44__BKMatchOperation_startBioOperation_reply___block_invoke(uint64_t a1, uint64_t a2)
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

- (id)matchResultInfoWithServerIdentity:(id)identity details:(id)details
{
  detailsCopy = details;
  identityCopy = identity;
  v8 = [BKMatchResultInfo alloc];
  device = [(BKOperation *)self device];
  v10 = [(BKMatchResultInfo *)v8 initWithServerIdentity:identityCopy details:detailsCopy device:device];

  return v10;
}

- (void)matchResult:(id)result details:(id)details client:(unint64_t)client
{
  v46 = *MEMORY[0x1E69E9840];
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
    log = v11;
    v27 = [detailsCopy objectForKeyedSubscript:@"BKMatchDetailLockoutState"];
    intValue = [v27 intValue];
    v13 = [detailsCopy objectForKeyedSubscript:@"BKMatchDetailUnlocked"];
    bOOLValue = [v13 BOOLValue];
    v15 = [detailsCopy objectForKeyedSubscript:@"BKMatchDetailCredentialAdded"];
    bOOLValue2 = [v15 BOOLValue];
    [detailsCopy objectForKeyedSubscript:@"BKMatchDetailResultIgnored"];
    v18 = v17 = client;
    bOOLValue3 = [v18 BOOLValue];
    *buf = 134219778;
    v31 = resultCopy;
    v32 = 2112;
    v33 = resultCopy;
    v34 = 2048;
    v35 = detailsCopy;
    v36 = 1024;
    v37 = intValue;
    v10 = MEMORY[0x1E69E9C10];
    v38 = 1024;
    v39 = bOOLValue;
    v40 = 1024;
    v41 = bOOLValue2;
    v42 = 1024;
    v43 = bOOLValue3;
    v44 = 2048;
    v45 = v17;
    _os_log_impl(&dword_1C82AD000, log, OS_LOG_TYPE_DEFAULT, "BKMatchOperation::matchResult:withDictionary:client: %p(%@), %p(LockoutState:%d,Unlocked:%d,CredentialAdded:%d,Ignored:%d), %llu\n", buf, 0x42u);
  }

  delegate = [(BKOperation *)self delegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v22 = [(BKMatchOperation *)self matchResultInfoWithServerIdentity:resultCopy details:detailsCopy];
    dispatchQueue = [(BKOperation *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__BKMatchOperation_matchResult_details_client___block_invoke;
    block[3] = &unk_1E8304208;
    block[4] = self;
    v29 = v22;
    v24 = v22;
    dispatch_async(dispatchQueue, block);
  }

  if (__osLogTrace)
  {
    v25 = __osLogTrace;
  }

  else
  {
    v25 = v10;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v25, OS_LOG_TYPE_DEFAULT, "BKMatchOperation::matchResult:withDictionary:client: -> void\n", buf, 2u);
  }

  kdebug_trace();
}

void __47__BKMatchOperation_matchResult_details_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 matchOperation:*(a1 + 32) matchedWithResult:*(a1 + 40)];
}

- (void)processMatchFailReason:(int64_t)reason
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
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKMatchOperation::processMatchFailReason: %ld => delegate:%p(%@)\n", buf, 0x20u);
    }

    dispatchQueue = [(BKOperation *)self dispatchQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__BKMatchOperation_processMatchFailReason___block_invoke;
    v12[3] = &unk_1E8303D98;
    v12[4] = self;
    v12[5] = reason;
    dispatch_async(dispatchQueue, v12);
  }
}

void __43__BKMatchOperation_processMatchFailReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 matchOperation:*(a1 + 32) failedWithReason:*(a1 + 40)];
}

- (void)statusMessage:(unsigned int)message client:(unint64_t)client
{
  v5 = *&message;
  v25 = *MEMORY[0x1E69E9840];
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
    *buf = 67109632;
    v20 = v5;
    v21 = 2048;
    clientCopy = client;
    v23 = 2048;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKMatchOperation::statusMessage:client: %u, %llu (_cid:%lu)\n", buf, 0x1Cu);
  }

  if (v5 <= 81)
  {
    switch(v5)
    {
      case '3':
        v12 = 1;
        break;
      case 'P':
        v12 = 2;
        break;
      case 'Q':
        v11 = 2;
        goto LABEL_21;
      default:
        goto LABEL_25;
    }

LABEL_24:
    [(BKMatchOperation *)self processMatchFailReason:v12];
    goto LABEL_25;
  }

  if (v5 <= 91)
  {
    if (v5 == 82)
    {
      v11 = 3;
    }

    else
    {
      if (v5 != 83)
      {
        goto LABEL_25;
      }

      v11 = 4;
    }

    goto LABEL_21;
  }

  if (v5 != 92)
  {
    if (v5 != 502)
    {
      goto LABEL_25;
    }

    v12 = 8;
    goto LABEL_24;
  }

  v11 = 5;
LABEL_21:
  delegate = [(BKOperation *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    dispatchQueue = [(BKOperation *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__BKMatchOperation_statusMessage_client___block_invoke;
    block[3] = &unk_1E8303D98;
    block[4] = self;
    block[5] = v11;
    dispatch_async(dispatchQueue, block);
  }

LABEL_25:
  v17.receiver = self;
  v17.super_class = BKMatchOperation;
  [(BKOperation *)&v17 statusMessage:v5 client:client];
  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = v7;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v16, OS_LOG_TYPE_DEFAULT, "BKMatchOperation::statusMessage:client: -> void\n", buf, 2u);
  }
}

void __41__BKMatchOperation_statusMessage_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 matchOperation:*(a1 + 32) presenceDetectedInLockout:*(a1 + 40)];
}

- (id)optionsDictionaryWithError:(void *)a1 .cold.1(void *a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  return setError(1, a1);
}

- (id)optionsDictionaryWithError:(void *)a1 .cold.2(void *a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  return setError(1, a1);
}

- (void)optionsDictionaryWithError:.cold.3()
{
  OUTLINED_FUNCTION_13();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  setError(1, v1);
}

- (id)optionsDictionaryWithError:(void *)a1 .cold.4(void *a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  return setError(1, a1);
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

@end