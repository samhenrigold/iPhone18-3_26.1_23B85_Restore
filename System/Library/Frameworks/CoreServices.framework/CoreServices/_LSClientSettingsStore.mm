@interface _LSClientSettingsStore
- (BOOL)resetUserElectionsWithError:(id *)error;
- (BOOL)setUserElection:(unsigned __int8)election forExtensionKey:(id)key error:(id *)error;
- (_LSClientSettingsStore)init;
- (id)__internalQueue_xpcConnectionWithError:(id *)error;
- (unsigned)userElectionForExtensionKey:(id)key;
- (void)dealloc;
@end

@implementation _LSClientSettingsStore

- (_LSClientSettingsStore)init
{
  v7.receiver = self;
  v7.super_class = _LSClientSettingsStore;
  _init = [(LSSettingsStore *)&v7 _init];
  if (_init)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.launchservices._LSSettingsInProcessStore", v3);
    internalQueue = _init->_internalQueue;
    _init->_internalQueue = v4;
  }

  return _init;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = _LSClientSettingsStore;
  [(_LSClientSettingsStore *)&v3 dealloc];
}

- (id)__internalQueue_xpcConnectionWithError:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__30;
  v21 = __Block_byref_object_dispose__30;
  v22 = 0;
  internalQueue = [(_LSClientSettingsStore *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (!self->_configuration)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65___LSClientSettingsStore___internalQueue_xpcConnectionWithError___block_invoke;
    v16[3] = &unk_1E6A18DF0;
    v16[4] = &v17;
    v6 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v16];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65___LSClientSettingsStore___internalQueue_xpcConnectionWithError___block_invoke_217;
    v15[3] = &unk_1E6A1CFC0;
    v15[4] = self;
    v15[5] = &v17;
    [v6 getSettingsStoreConfigurationWithCompletionHandler:v15];
  }

  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    xpcConnection = self->_configuration;
    if (xpcConnection)
    {
      v8 = objc_alloc(MEMORY[0x1E696B0B8]);
      endpoint = [(LSSettingsStoreConfiguration *)self->_configuration endpoint];
      v10 = [v8 initWithListenerEndpoint:endpoint];

      v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFB22B0];
      [v10 setRemoteObjectInterface:v11];

      [v10 _setQueue:self->_internalQueue];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __65___LSClientSettingsStore___internalQueue_xpcConnectionWithError___block_invoke_219;
      v14[3] = &unk_1E6A1A830;
      v14[4] = self;
      [v10 setInterruptionHandler:v14];
      objc_storeStrong(&self->_xpcConnection, v10);
      [v10 resume];

      xpcConnection = self->_xpcConnection;
    }

    if (error && !xpcConnection)
    {
      *error = v18[5];
      xpcConnection = self->_xpcConnection;
    }
  }

  v12 = xpcConnection;
  _Block_object_dispose(&v17, 8);

  return v12;
}

- (unsigned)userElectionForExtensionKey:(id)key
{
  keyCopy = key;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__30;
  v29 = __Block_byref_object_dispose__30;
  v30 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__30;
  internalQueue = self->_internalQueue;
  v23[4] = __Block_byref_object_dispose__30;
  v24 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___LSClientSettingsStore_userElectionForExtensionKey___block_invoke;
  block[3] = &unk_1E6A19158;
  block[4] = self;
  block[5] = &v25;
  block[6] = v23;
  dispatch_sync(internalQueue, block);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v7 = v26[5];
  if (v7)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54___LSClientSettingsStore_userElectionForExtensionKey___block_invoke_2;
    v16[3] = &unk_1E6A192C8;
    v8 = keyCopy;
    v17 = v8;
    v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v16];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __54___LSClientSettingsStore_userElectionForExtensionKey___block_invoke_220;
    v13[3] = &unk_1E6A1CFE8;
    v14 = v8;
    v15 = &v18;
    [v9 userElectionForExtensionKey:v14 reply:v13];

    v10 = v17;
  }

  else
  {
    v10 = _LSExtensionsLog(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_LSClientSettingsStore userElectionForExtensionKey:];
    }
  }

  v11 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(&v25, 8);
  return v11;
}

- (BOOL)setUserElection:(unsigned __int8)election forExtensionKey:(id)key error:(id *)error
{
  electionCopy = election;
  keyCopy = key;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__30;
  v46 = __Block_byref_object_dispose__30;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__30;
  internalQueue = self->_internalQueue;
  v40 = __Block_byref_object_dispose__30;
  v41 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64___LSClientSettingsStore_setUserElection_forExtensionKey_error___block_invoke;
  block[3] = &unk_1E6A19158;
  block[4] = self;
  block[5] = &v42;
  block[6] = &v36;
  dispatch_sync(internalQueue, block);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v11 = v43[5];
  if (v11)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__30;
    v29 = __Block_byref_object_dispose__30;
    v30 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __64___LSClientSettingsStore_setUserElection_forExtensionKey_error___block_invoke_2;
    v21[3] = &unk_1E6A1D010;
    v12 = keyCopy;
    v22 = v12;
    v23 = &v25;
    v24 = &v31;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v21];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __64___LSClientSettingsStore_setUserElection_forExtensionKey_error___block_invoke_222;
    v17[3] = &unk_1E6A1D010;
    v18 = v12;
    v19 = &v25;
    v20 = &v31;
    [v13 setUserElection:electionCopy forExtensionKey:v18 reply:v17];
    if (error && (v32[3] & 1) == 0)
    {
      *error = v26[5];
    }

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v34 = 0;
    v14 = _LSExtensionsLog(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_LSClientSettingsStore setUserElection:forExtensionKey:error:];
    }

    if (error)
    {
      *error = v37[5];
    }
  }

  v15 = *(v32 + 24);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  return v15;
}

- (BOOL)resetUserElectionsWithError:(id *)error
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__30;
  v36 = __Block_byref_object_dispose__30;
  v37 = 0;
  v29 = 0;
  v30[0] = &v29;
  v30[1] = 0x3032000000;
  v30[2] = __Block_byref_object_copy__30;
  internalQueue = self->_internalQueue;
  v30[3] = __Block_byref_object_dispose__30;
  v31 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___LSClientSettingsStore_resetUserElectionsWithError___block_invoke;
  block[3] = &unk_1E6A19158;
  block[4] = self;
  block[5] = &v32;
  block[6] = &v29;
  dispatch_sync(internalQueue, block);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v5 = v33[5];
  if (v5)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__30;
    v22 = __Block_byref_object_dispose__30;
    v23 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54___LSClientSettingsStore_resetUserElectionsWithError___block_invoke_2;
    v17[3] = &unk_1E6A1D038;
    v17[4] = &v18;
    v17[5] = &v24;
    v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v17];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54___LSClientSettingsStore_resetUserElectionsWithError___block_invoke_223;
    v16[3] = &unk_1E6A1D038;
    v16[4] = &v18;
    v16[5] = &v24;
    [v6 resetUserElectionsWithReply:v16];
    if (error && (v25[3] & 1) == 0)
    {
      *error = v19[5];
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v27 = 0;
    v7 = _LSExtensionsLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_LSClientSettingsStore *)v30 resetUserElectionsWithError:v7, v8, v9, v10, v11, v12, v13];
    }

    if (error)
    {
      *error = *(v30[0] + 40);
    }
  }

  v14 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v32, 8);
  return v14;
}

- (void)userElectionForExtensionKey:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setUserElection:forExtensionKey:error:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)resetUserElectionsWithError:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(*a1 + 40);
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a2, a3, "Failed to reset user elections, failure creating connection: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end