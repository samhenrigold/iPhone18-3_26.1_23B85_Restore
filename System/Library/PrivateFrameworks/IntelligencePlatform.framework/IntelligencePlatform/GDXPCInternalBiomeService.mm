@interface GDXPCInternalBiomeService
- (BOOL)viewDumpStateWithError:(id *)error;
- (BOOL)viewSetEnabledWithName:(id)name enabled:(BOOL)enabled error:(id *)error;
- (BOOL)viewStopWithError:(id *)error;
- (BOOL)viewValidateWithError:(id *)error;
- (GDXPCInternalBiomeService)init;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)viewClearAllDataWithViewQuery:(id)query error:(id *)error;
- (id)viewRunUpdateWithViewQuery:(id)query forceRebuild:(BOOL)rebuild priorityOverride:(id)override error:(id *)error;
- (id)viewValidateWithViewQuery:(id)query applyFixes:(BOOL)fixes verbose:(int64_t)verbose error:(id *)error;
- (void)dealloc;
- (void)locked_establishConnection;
@end

@implementation GDXPCInternalBiomeService

- (BOOL)viewValidateWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1ABF127C0;
  v16 = sub_1ABF127D0;
  v17 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: viewValidate called.", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF127D8;
  v10[3] = &unk_1E79628C8;
  v10[4] = &v12;
  v6 = [(GDXPCInternalBiomeService *)self synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1ABF128A4;
  v9[3] = &unk_1E79628A0;
  v9[4] = &v18;
  v9[5] = &v12;
  [v6 viewValidateWithCompletion:v9];

  v7 = *(v19 + 24);
  if (error && (v19[3] & 1) == 0)
  {
    *error = v13[5];
    v7 = *(v19 + 24);
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v7 & 1;
}

- (BOOL)viewDumpStateWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1ABF127C0;
  v16 = sub_1ABF127D0;
  v17 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: viewDumpState called.", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF12AC0;
  v10[3] = &unk_1E7962878;
  v10[4] = &v12;
  v10[5] = &v18;
  v6 = [(GDXPCInternalBiomeService *)self synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1ABF12BA4;
  v9[3] = &unk_1E79628A0;
  v9[4] = &v18;
  v9[5] = &v12;
  [v6 viewDumpStateWithCompletion:v9];

  v7 = *(v19 + 24);
  if (error && (v19[3] & 1) == 0)
  {
    *error = v13[5];
    v7 = *(v19 + 24);
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v7 & 1;
}

- (id)viewValidateWithViewQuery:(id)query applyFixes:(BOOL)fixes verbose:(int64_t)verbose error:(id *)error
{
  fixesCopy = fixes;
  queryCopy = query;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1ABF127C0;
  v29 = sub_1ABF127D0;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABF127C0;
  v23 = sub_1ABF127D0;
  v24 = 0;
  v11 = GDXPCLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v11, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: viewRunUpdate called", buf, 2u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1ABF12E2C;
  v17[3] = &unk_1E7962878;
  v17[4] = &v19;
  v17[5] = &v25;
  v12 = [(GDXPCInternalBiomeService *)self synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1ABF12F18;
  v16[3] = &unk_1E79627E8;
  v16[4] = &v25;
  v16[5] = &v19;
  [v12 viewValidateWithViewQuery:queryCopy applyFixes:fixesCopy verbose:verbose completion:v16];

  v13 = v26[5];
  if (error && !v13)
  {
    *error = v20[5];
    v13 = v26[5];
  }

  v14 = v13;
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v14;
}

- (BOOL)viewSetEnabledWithName:(id)name enabled:(BOOL)enabled error:(id *)error
{
  enabledCopy = enabled;
  v31 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABF127C0;
  v23 = sub_1ABF127D0;
  v24 = 0;
  v9 = GDXPCLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = nameCopy;
    _os_log_impl(&dword_1ABA78000, v9, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: viewSetEnabled called [name=%@].", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1ABF13210;
  v15[3] = &unk_1E79625C8;
  v10 = nameCopy;
  v16 = v10;
  v17 = &v19;
  v18 = &v25;
  v11 = [(GDXPCInternalBiomeService *)self synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1ABF13304;
  v14[3] = &unk_1E79628A0;
  v14[4] = &v25;
  v14[5] = &v19;
  [v11 viewSetEnabledWithName:v10 enabled:enabledCopy completion:v14];

  v12 = *(v26 + 24);
  if (error && (v26[3] & 1) == 0)
  {
    *error = v20[5];
    v12 = *(v26 + 24);
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12 & 1;
}

- (id)viewClearAllDataWithViewQuery:(id)query error:(id *)error
{
  queryCopy = query;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1ABF127C0;
  v25 = sub_1ABF127D0;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1ABF127C0;
  v19 = sub_1ABF127D0;
  v20 = 0;
  v7 = GDXPCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v7, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: viewClearAllData called.", buf, 2u);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v7, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: viewClearAllData called.", buf, 2u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1ABF135A8;
  v13[3] = &unk_1E7962878;
  v13[4] = &v15;
  v13[5] = &v21;
  v8 = [(GDXPCInternalBiomeService *)self synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1ABF13694;
  v12[3] = &unk_1E79625F0;
  v12[4] = &v21;
  v12[5] = &v15;
  [v8 viewClearAllDataWithViewQuery:queryCopy completion:v12];

  v9 = v22[5];
  if (error && !v9)
  {
    *error = v16[5];
    v9 = v22[5];
  }

  v10 = v9;
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v10;
}

- (BOOL)viewStopWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1ABF127C0;
  v16 = sub_1ABF127D0;
  v17 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: viewStop called", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF13918;
  v10[3] = &unk_1E7962878;
  v10[4] = &v12;
  v10[5] = &v18;
  v6 = [(GDXPCInternalBiomeService *)self synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1ABF139FC;
  v9[3] = &unk_1E79628A0;
  v9[4] = &v18;
  v9[5] = &v12;
  [v6 viewStopWithCompletion:v9];

  v7 = *(v19 + 24);
  if (error && (v19[3] & 1) == 0)
  {
    *error = v13[5];
    v7 = *(v19 + 24);
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v7 & 1;
}

- (id)viewRunUpdateWithViewQuery:(id)query forceRebuild:(BOOL)rebuild priorityOverride:(id)override error:(id *)error
{
  rebuildCopy = rebuild;
  queryCopy = query;
  overrideCopy = override;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1ABF127C0;
  v30 = sub_1ABF127D0;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1ABF127C0;
  v24 = sub_1ABF127D0;
  v25 = 0;
  v12 = GDXPCLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v12, OS_LOG_TYPE_DEFAULT, "GDXPCInternalService: viewRunUpdate called", buf, 2u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1ABF13C90;
  v18[3] = &unk_1E7962878;
  v18[4] = &v20;
  v18[5] = &v26;
  v13 = [(GDXPCInternalBiomeService *)self synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1ABF13D7C;
  v17[3] = &unk_1E79625F0;
  v17[4] = &v26;
  v17[5] = &v20;
  [v13 viewRunUpdateWithViewQuery:queryCopy forceRebuild:rebuildCopy priorityOverride:overrideCopy completion:v17];

  v14 = v27[5];
  if (error && !v14)
  {
    *error = v21[5];
    v14 = v27[5];
  }

  v15 = v14;
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v15;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(GDXPCInternalBiomeService *)selfCopy locked_establishConnection];
  v6 = [(NSXPCConnection *)selfCopy->_connection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)locked_establishConnection
{
  if (!self->_connection)
  {
    v3 = GDXPCLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1ABA78000, v3, OS_LOG_TYPE_DEFAULT, "GDXPCInternalBiomeService: establishing connection.", buf, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.intelligenceplatform.InternalBiome" options:0];
    connection = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:self->_serverInterface];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&unk_1F20A1C98];
    objc_initWeak(buf, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1ABF13FE8;
    v6[3] = &unk_1E7962850;
    objc_copyWeak(&v7, buf);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v6];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = GDXPCInternalBiomeService;
  [(GDXPCInternalBiomeService *)&v3 dealloc];
}

- (GDXPCInternalBiomeService)init
{
  v6.receiver = self;
  v6.super_class = GDXPCInternalBiomeService;
  v2 = [(GDXPCInternalBiomeService *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F20E6450];
    serverInterface = v2->_serverInterface;
    v2->_serverInterface = v3;
  }

  return v2;
}

@end