@interface BKPresenceDetectOperation
- (id)optionsDictionaryWithError:(id *)error;
- (void)startBioOperation:(BOOL)operation reply:(id)reply;
@end

@implementation BKPresenceDetectOperation

- (id)optionsDictionaryWithError:(id *)error
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_priority)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [dictionary setObject:v5 forKey:@"BKOptionPriority"];
  }

  return dictionary;
}

- (void)startBioOperation:(BOOL)operation reply:(id)reply
{
  operationCopy = operation;
  v22 = *MEMORY[0x1E69E9840];
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
    v19 = operationCopy;
    v20 = 2048;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKPresenceDetectOperation::startOperation: async:%d (_cid:%lu)\n", buf, 0x12u);
  }

  v17 = 0;
  v11 = [(BKPresenceDetectOperation *)self optionsDictionaryWithError:&v17];
  v12 = v17;
  if (v11)
  {
    v13 = self->super._xpcClient;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__BKPresenceDetectOperation_startBioOperation_reply___block_invoke;
    v15[3] = &unk_1E8303EC8;
    v16 = replyCopy;
    [(BiometricKitXPCClient *)v13 detectPresenceWithOptions:v11 async:operationCopy withReply:v15];
  }

  else
  {
    [BKPresenceDetectOperation startBioOperation:reply:];
  }

  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v7;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v14, OS_LOG_TYPE_DEFAULT, "BKPresenceDetectOperation::startBioOperation: -> void\n", buf, 2u);
  }

  kdebug_trace();
}

void __53__BKPresenceDetectOperation_startBioOperation_reply___block_invoke(uint64_t a1, uint64_t a2)
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