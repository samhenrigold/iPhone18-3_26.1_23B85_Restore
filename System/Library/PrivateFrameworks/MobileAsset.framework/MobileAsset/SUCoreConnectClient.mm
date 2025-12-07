@interface SUCoreConnectClient
@end

@implementation SUCoreConnectClient

void __120__SUCoreConnectClient_MAAutoSyncHelpers__connectClientSendServerMessage_proxyObject_replyQueue_isSynchronous_withReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = mach_absolute_time();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __120__SUCoreConnectClient_MAAutoSyncHelpers__connectClientSendServerMessage_proxyObject_replyQueue_isSynchronous_withReply___block_invoke_2;
  block[3] = &unk_1E74CA450;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v5;
  v15 = v6;
  v10 = *(a1 + 48);
  v16 = v9;
  v17 = v10;
  v18 = v7;
  v11 = v6;
  v12 = v5;
  dispatch_sync(v8, block);
}

void __120__SUCoreConnectClient_MAAutoSyncHelpers__connectClientSendServerMessage_proxyObject_replyQueue_isSynchronous_withReply___block_invoke_2(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = mach_absolute_time();
  (*(a1[6] + 16))();
  v3 = mach_absolute_time();
  v4 = MAConvertTicksToSeconds(v3 - a1[7]);
  v5 = _MAClientLog(@"DEFAULT");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MAConvertTicksToSeconds(a1[8] - a1[7]);
    v7 = MAConvertTicksToSeconds(v2 - a1[8]);
    v8 = 134218752;
    v9 = v4;
    v10 = 2048;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    v14 = 2048;
    v15 = MAConvertTicksToSeconds(v3 - v2);
    _os_log_impl(&dword_197AD5000, v5, OS_LOG_TYPE_DEFAULT, "ma-auto-sync-helper/xpc-sync total=%.3f (xpc=%.3f, queue=%.3f, reply=%.3f)", &v8, 0x2Au);
  }
}

@end