@interface SRXPCConnection
+ (id)sharedConnection;
- (SRXPCConnection)init;
- (void)handleReply:(id)reply completion:(id)completion;
- (void)sendCommand:(unint64_t)command info:(id)info sync:(BOOL)sync completion:(id)completion;
@end

@implementation SRXPCConnection

+ (id)sharedConnection
{
  if (sharedConnection_onceToken != -1)
  {
    +[SRXPCConnection sharedConnection];
  }

  v3 = sharedConnection_sConnection;

  return v3;
}

uint64_t __35__SRXPCConnection_sharedConnection__block_invoke()
{
  sharedConnection_sConnection = [(CSXPCConnection *)[SRXPCConnection alloc] initWithMachServiceName:@"com.apple.spotlight.IndexAgent"];

  return MEMORY[0x1EEE66BB8]();
}

- (SRXPCConnection)init
{
  v9.receiver = self;
  v9.super_class = SRXPCConnection;
  v2 = [(CSXPCConnection *)&v9 initWithMachServiceName:@"com.apple.spotlight.IndexAgent"];
  if (v2)
  {
    v3 = dispatch_workloop_create("com.apple.spotlight.resources.assetsQuery.workloop");
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UNSPECIFIED, 0);
    v6 = dispatch_queue_create_with_target_V2("com.apple.spotlight.resources.assetsQuery.queue", v5, v3);
    v7 = *(v2 + 7);
    *(v2 + 7) = v6;

    dispatch_activate(*(v2 + 7));
    *(v2 + 8) = 0;
  }

  else
  {
    v3 = SRLogCategoryAssets(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(SRXPCConnection *)v3 init];
    }
  }

  return v2;
}

- (void)handleReply:(id)reply completion:(id)completion
{
  xdict = reply;
  completionCopy = completion;
  if (xdict == MEMORY[0x1E69E9E18])
  {
    v6 = -6;
    goto LABEL_6;
  }

  if (xdict == MEMORY[0x1E69E9E20] || MEMORY[0x1B2705140]() != MEMORY[0x1E69E9E80])
  {
    v6 = -5;
LABEL_6:
    v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SpotlightResourcesErrorDomain" code:v6 userInfo:0];
    v8 = 0;
    goto LABEL_7;
  }

  int64 = xpc_dictionary_get_int64(xdict, "e");
  if (int64 < 0)
  {
    v6 = int64;
    goto LABEL_6;
  }

  v10 = xpc_dictionary_get_value(xdict, "i");
  if (!v10)
  {
    v6 = -8;
    goto LABEL_6;
  }

  v8 = v10;
  v7 = 0;
LABEL_7:
  completionCopy[2](completionCopy, v8, v7);
}

- (void)sendCommand:(unint64_t)command info:(id)info sync:(BOOL)sync completion:(id)completion
{
  syncCopy = sync;
  v35 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  completionCopy = completion;
  spid = self->_spid;
  self->_spid = spid + 1;
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "command", "assets");
  xpc_dictionary_set_uint64(empty, "c", command);
  xpc_dictionary_set_uint64(empty, "rid", spid + 1);
  v14 = getpid();
  xpc_dictionary_set_uint64(empty, "pid", v14);
  if (infoCopy)
  {
    xpc_dictionary_set_value(empty, "i", infoCopy);
  }

  v16 = SRLogCategorySafety(v15);
  v17 = v16;
  if (spid <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 134218496;
    commandCopy = command;
    v31 = 1024;
    v32 = syncCopy;
    v33 = 2048;
    v34 = qos_class_self();
    _os_signpost_emit_with_name_impl(&dword_1AE58E000, v17, OS_SIGNPOST_INTERVAL_BEGIN, spid + 1, "SendRequest", "c:%llu, sync:%d, qos:%llu", buf, 0x1Cu);
  }

  connection = [(CSXPCConnection *)self connection];
  v19 = connection;
  if (syncCopy)
  {
    v20 = xpc_connection_send_message_with_reply_sync(connection, empty);

    v22 = SRLogCategorySafety(v21);
    v23 = v22;
    if (spid <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v24 = qos_class_self();
      *buf = 134217984;
      commandCopy = v24;
      _os_signpost_emit_with_name_impl(&dword_1AE58E000, v23, OS_SIGNPOST_INTERVAL_END, spid + 1, "SendRequest", "qos:%llu", buf, 0xCu);
    }

    [(SRXPCConnection *)self handleReply:v20 completion:completionCopy];
  }

  else
  {
    queue = self->_queue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __52__SRXPCConnection_sendCommand_info_sync_completion___block_invoke;
    handler[3] = &unk_1E7A2B168;
    v28 = spid + 1;
    handler[4] = self;
    v27 = completionCopy;
    xpc_connection_send_message_with_reply(v19, empty, queue, handler);
  }
}

void __52__SRXPCConnection_sendCommand_info_sync_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SRLogCategorySafety(v3);
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134217984;
    v8 = qos_class_self();
    _os_signpost_emit_with_name_impl(&dword_1AE58E000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SendRequest", "qos:%llu", &v7, 0xCu);
  }

  [*(a1 + 32) handleReply:v3 completion:*(a1 + 40)];
}

@end