@interface CSSpeechUaapXPCClient
- (CSSpeechUaapXPCClient)init;
- (void)_handleConnectionError:(id)error;
- (void)dealloc;
- (void)invalidate;
- (void)registerDatapackUpdate;
- (void)registerMultilingualUaapApp:(id)app withAssetFiles:(id)files completion:(id)completion;
- (void)registerUaapApp:(id)app forLocale:(id)locale withAssetFiles:(id)files completion:(id)completion;
- (void)registerUaapApp:(id)app withAssetFiles:(id)files completion:(id)completion;
@end

@implementation CSSpeechUaapXPCClient

- (void)dealloc
{
  [(CSSpeechUaapXPCClient *)self invalidate];
  v3.receiver = self;
  v3.super_class = CSSpeechUaapXPCClient;
  [(CSSpeechUaapXPCClient *)&v3 dealloc];
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  connection = self->_connection;
  if (connection)
  {
    v4 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[CSSpeechUaapXPCClient invalidate]";
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s Invalidating CSSpeechUaapXPCClient", &v6, 0xCu);
      connection = self->_connection;
    }

    xpc_connection_cancel(connection);
    v5 = self->_connection;
    self->_connection = 0;
  }
}

- (void)registerDatapackUpdate
{
  keys[1] = *MEMORY[0x277D85DE8];
  keys[0] = "messageType";
  values = xpc_uint64_create(4uLL);
  v3 = xpc_dictionary_create(keys, &values, 1uLL);
  xpc_connection_send_message(self->_connection, v3);
}

- (void)registerMultilingualUaapApp:(id)app withAssetFiles:(id)files completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  appCopy = app;
  filesCopy = files;
  completionCopy = completion;
  empty = xpc_dictionary_create_empty();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __79__CSSpeechUaapXPCClient_registerMultilingualUaapApp_withAssetFiles_completion___block_invoke;
  v23[3] = &unk_2784C4A28;
  v12 = empty;
  v24 = v12;
  [filesCopy enumerateKeysAndObjectsUsingBlock:v23];
  *keys = xmmword_2784C4A48;
  v13 = appCopy;
  values[0] = xpc_string_create([appCopy UTF8String]);
  v14 = v12;
  values[1] = v14;
  *v26 = xmmword_2784C4A58;
  v25[0] = xpc_uint64_create(3uLL);
  v25[1] = xpc_dictionary_create(keys, values, 2uLL);
  v15 = xpc_dictionary_create(v26, v25, 2uLL);
  connection = self->_connection;
  queue = self->_queue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __79__CSSpeechUaapXPCClient_registerMultilingualUaapApp_withAssetFiles_completion___block_invoke_3;
  v21[3] = &unk_2784C6A48;
  v18 = completionCopy;
  v22 = v18;
  xpc_connection_send_message_with_reply(connection, v15, queue, v21);

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }
}

void __79__CSSpeechUaapXPCClient_registerMultilingualUaapApp_withAssetFiles_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  empty = xpc_array_create_empty();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__CSSpeechUaapXPCClient_registerMultilingualUaapApp_withAssetFiles_completion___block_invoke_2;
  v11[3] = &unk_2784C49E8;
  v12 = empty;
  v8 = empty;
  [v5 enumerateObjectsUsingBlock:v11];

  v9 = *(a1 + 32);
  v10 = [v6 UTF8String];

  xpc_dictionary_set_value(v9, v10, v8);
}

void __79__CSSpeechUaapXPCClient_registerMultilingualUaapApp_withAssetFiles_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  string = xpc_dictionary_get_string(v3, "errorDomain");
  if (string)
  {
    int64 = xpc_dictionary_get_int64(v3, "errorCode");
    v6 = xpc_dictionary_get_string(v3, "errorMessage");
    v7 = MEMORY[0x277CCA9B8];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    v12 = *MEMORY[0x277CCA450];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    v13[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    string = [v7 errorWithDomain:v8 code:int64 userInfo:v10];
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, string);
  }
}

void __79__CSSpeechUaapXPCClient_registerMultilingualUaapApp_withAssetFiles_completion___block_invoke_2(uint64_t a1, id a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = xpc_string_create([a2 UTF8String]);
  xpc_array_append_value(v3, v5);
}

- (void)registerUaapApp:(id)app forLocale:(id)locale withAssetFiles:(id)files completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  appCopy = app;
  localeCopy = locale;
  filesCopy = files;
  completionCopy = completion;
  empty = xpc_array_create_empty();
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __77__CSSpeechUaapXPCClient_registerUaapApp_forLocale_withAssetFiles_completion___block_invoke;
  v27[3] = &unk_2784C49E8;
  v15 = empty;
  v28 = v15;
  [filesCopy enumerateObjectsUsingBlock:v27];
  *keys = xmmword_2784C4A08;
  v33 = "locale";
  v16 = appCopy;
  values[0] = xpc_string_create([appCopy UTF8String]);
  v17 = v15;
  values[1] = v17;
  v18 = localeCopy;
  values[2] = xpc_string_create([localeCopy UTF8String]);
  *v30 = xmmword_2784C4A58;
  v29[0] = xpc_uint64_create(2uLL);
  v29[1] = xpc_dictionary_create(keys, values, 3uLL);
  v19 = xpc_dictionary_create(v30, v29, 2uLL);
  connection = self->_connection;
  queue = self->_queue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __77__CSSpeechUaapXPCClient_registerUaapApp_forLocale_withAssetFiles_completion___block_invoke_2;
  v25[3] = &unk_2784C6A48;
  v22 = completionCopy;
  v26 = v22;
  xpc_connection_send_message_with_reply(connection, v19, queue, v25);

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 2; j != -1; --j)
  {
  }
}

void __77__CSSpeechUaapXPCClient_registerUaapApp_forLocale_withAssetFiles_completion___block_invoke(uint64_t a1, id a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = xpc_string_create([a2 UTF8String]);
  xpc_array_append_value(v3, v5);
}

void __77__CSSpeechUaapXPCClient_registerUaapApp_forLocale_withAssetFiles_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  string = xpc_dictionary_get_string(v3, "errorDomain");
  if (string)
  {
    int64 = xpc_dictionary_get_int64(v3, "errorCode");
    v6 = xpc_dictionary_get_string(v3, "errorMessage");
    v7 = MEMORY[0x277CCA9B8];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    v12 = *MEMORY[0x277CCA450];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    v13[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    string = [v7 errorWithDomain:v8 code:int64 userInfo:v10];
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, string);
  }
}

- (void)registerUaapApp:(id)app withAssetFiles:(id)files completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  appCopy = app;
  filesCopy = files;
  completionCopy = completion;
  empty = xpc_array_create_empty();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __67__CSSpeechUaapXPCClient_registerUaapApp_withAssetFiles_completion___block_invoke;
  v23[3] = &unk_2784C49E8;
  v12 = empty;
  v24 = v12;
  [filesCopy enumerateObjectsUsingBlock:v23];
  *keys = xmmword_2784C4A48;
  v13 = appCopy;
  values[0] = xpc_string_create([appCopy UTF8String]);
  v14 = v12;
  values[1] = v14;
  *v26 = xmmword_2784C4A58;
  v25[0] = xpc_uint64_create(1uLL);
  v25[1] = xpc_dictionary_create(keys, values, 2uLL);
  v15 = xpc_dictionary_create(v26, v25, 2uLL);
  connection = self->_connection;
  queue = self->_queue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __67__CSSpeechUaapXPCClient_registerUaapApp_withAssetFiles_completion___block_invoke_2;
  v21[3] = &unk_2784C6A48;
  v18 = completionCopy;
  v22 = v18;
  xpc_connection_send_message_with_reply(connection, v15, queue, v21);

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }
}

void __67__CSSpeechUaapXPCClient_registerUaapApp_withAssetFiles_completion___block_invoke(uint64_t a1, id a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = xpc_string_create([a2 UTF8String]);
  xpc_array_append_value(v3, v5);
}

void __67__CSSpeechUaapXPCClient_registerUaapApp_withAssetFiles_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  string = xpc_dictionary_get_string(v3, "errorDomain");
  if (string)
  {
    int64 = xpc_dictionary_get_int64(v3, "errorCode");
    v6 = xpc_dictionary_get_string(v3, "errorMessage");
    v7 = MEMORY[0x277CCA9B8];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    v12 = *MEMORY[0x277CCA450];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    v13[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    string = [v7 errorWithDomain:v8 code:int64 userInfo:v10];
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, string);
  }
}

- (void)_handleConnectionError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (errorCopy)
  {
    v4 = MEMORY[0x277D863F8];
    v5 = *MEMORY[0x277D015D8];
    v6 = os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR);
    if (errorCopy == v4 || errorCopy == MEMORY[0x277D863F0])
    {
      if (v6)
      {
        v10 = 136315138;
        v11 = "[CSSpeechUaapXPCClient _handleConnectionError:]";
        _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s CSSpeechUaapXPCClient listener disconnected", &v10, 0xCu);
      }
    }

    else if (v6)
    {
      v8 = *MEMORY[0x277D86400];
      v9 = v5;
      v10 = 136315394;
      v11 = "[CSSpeechUaapXPCClient _handleConnectionError:]";
      v12 = 2080;
      string = xpc_dictionary_get_string(errorCopy, v8);
      _os_log_error_impl(&dword_222E4D000, v9, OS_LOG_TYPE_ERROR, "%s CSSpeechUaapXPCConnection error: %s", &v10, 0x16u);
    }
  }
}

- (CSSpeechUaapXPCClient)init
{
  v12.receiver = self;
  v12.super_class = CSSpeechUaapXPCClient;
  v2 = [(CSSpeechUaapXPCClient *)&v12 init];
  if (v2)
  {
    CSLogInitIfNeeded();
    mach_service = xpc_connection_create_mach_service("com.apple.corespeech.corespeechd.uaapservice", 0, 0);
    v4 = *(v2 + 1);
    *(v2 + 1) = mach_service;

    v5 = dispatch_queue_create("CSSpeechUaapXPCClient", 0);
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    xpc_connection_set_target_queue(*(v2 + 1), *(v2 + 2));
    objc_initWeak(&location, v2);
    v7 = *(v2 + 1);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __29__CSSpeechUaapXPCClient_init__block_invoke;
    v9[3] = &unk_2784C69C0;
    objc_copyWeak(&v10, &location);
    xpc_connection_set_event_handler(v7, v9);
    xpc_connection_activate(*(v2 + 1));
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __29__CSSpeechUaapXPCClient_init__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (MEMORY[0x223DD2E40](v3) == MEMORY[0x277D86480])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      [WeakRetained _handleConnectionError:v4];

      goto LABEL_9;
    }

    v5 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[CSSpeechUaapXPCClient init]_block_invoke";
      v6 = "%s CSSpeechUaapXPCClient got an event it can't handle";
LABEL_7:
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, v6, &v8, 0xCu);
    }
  }

  else
  {
    v5 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[CSSpeechUaapXPCClient init]_block_invoke";
      v6 = "%s CSSpeechUaapXPCClient received an empty connection event";
      goto LABEL_7;
    }
  }

LABEL_9:
}

@end