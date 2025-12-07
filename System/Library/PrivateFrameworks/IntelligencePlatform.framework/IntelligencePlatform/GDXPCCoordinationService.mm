@interface GDXPCCoordinationService
- (BOOL)graphUpdatedWithSource:(id)source error:(id *)error;
- (BOOL)migrateViewDatabasesWithError:(id *)error;
- (BOOL)sourceUpdatedWithSourceType:(id)type sourceIdentifier:(id)identifier error:(id *)error;
- (BOOL)streamUpdatedWithStreamName:(id)name isDelete:(BOOL)delete error:(id *)error;
- (BOOL)streamsChangedWithUpdated:(id)updated deletes:(id)deletes error:(id *)error;
- (GDXPCCoordinationService)init;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)sysdiagnoseInfoWithError:(id *)error;
- (void)dealloc;
- (void)locked_establishConnection;
@end

@implementation GDXPCCoordinationService

- (GDXPCCoordinationService)init
{
  v6.receiver = self;
  v6.super_class = GDXPCCoordinationService;
  v2 = [(GDXPCCoordinationService *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F20E6210];
    serverInterface = v2->_serverInterface;
    v2->_serverInterface = v3;
  }

  return v2;
}

- (id)sysdiagnoseInfoWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABF0D4CC;
  v23 = sub_1ABF0D4DC;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1ABF0D4CC;
  v17 = sub_1ABF0D4DC;
  v18 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEBUG, "GDXPCCoordinationService: sysdiagnoseInfo called.", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1ABF0D4E4;
  v11[3] = &unk_1E79628C8;
  v11[4] = &v13;
  v6 = [(GDXPCCoordinationService *)self synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF0D5B0;
  v10[3] = &unk_1E79627E8;
  v10[4] = &v19;
  v10[5] = &v13;
  [v6 sysdiagnoseInfoWithCompletion:v10];

  v7 = v20[5];
  if (error && !v7)
  {
    *error = v14[5];
    v7 = v20[5];
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v8;
}

- (BOOL)migrateViewDatabasesWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1ABF0D4CC;
  v16 = sub_1ABF0D4DC;
  v17 = 0;
  v5 = GDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "GDXPCCoordinationService: migrateViewDatabases called", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF0D834;
  v10[3] = &unk_1E7962878;
  v10[4] = &v12;
  v10[5] = &v18;
  v6 = [(GDXPCCoordinationService *)self synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1ABF0D918;
  v9[3] = &unk_1E79628A0;
  v9[4] = &v18;
  v9[5] = &v12;
  [v6 migrateViewDatabasesWithCompletion:v9];

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

- (BOOL)streamsChangedWithUpdated:(id)updated deletes:(id)deletes error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  deletesCopy = deletes;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1ABF0D4CC;
  v22 = sub_1ABF0D4DC;
  v23 = 0;
  v10 = GDXPCLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [updatedCopy count];
    v12 = [deletesCopy count];
    *buf = 134218240;
    v29 = v11;
    v30 = 2048;
    v31 = v12;
    _os_log_impl(&dword_1ABA78000, v10, OS_LOG_TYPE_DEFAULT, "GDXPCCoordinationService: streamsChanged called with %tu updated and %tu deletes", buf, 0x16u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1ABF0DBC8;
  v17[3] = &unk_1E7962878;
  v17[4] = &v18;
  v17[5] = &v24;
  v13 = [(GDXPCCoordinationService *)self synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1ABF0DCAC;
  v16[3] = &unk_1E79628A0;
  v16[4] = &v24;
  v16[5] = &v18;
  [v13 streamsChangedWithUpdated:updatedCopy deletes:deletesCopy completion:v16];

  v14 = *(v25 + 24);
  if (error && (v25[3] & 1) == 0)
  {
    *error = v19[5];
    v14 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  return v14 & 1;
}

- (BOOL)streamUpdatedWithStreamName:(id)name isDelete:(BOOL)delete error:(id *)error
{
  deleteCopy = delete;
  v35 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1ABF0D4CC;
  v25 = sub_1ABF0D4DC;
  v26 = 0;
  v9 = GDXPCLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:deleteCopy];
    *buf = 138412546;
    v32 = nameCopy;
    v33 = 2112;
    v34 = v10;
    _os_log_impl(&dword_1ABA78000, v9, OS_LOG_TYPE_DEFAULT, "GDXPCCoordinationService: streamUpdatedWithStreamName called. %@ %@", buf, 0x16u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1ABF0DF70;
  v16[3] = &unk_1E7962428;
  v11 = nameCopy;
  v20 = deleteCopy;
  v17 = v11;
  v18 = &v21;
  v19 = &v27;
  v12 = [(GDXPCCoordinationService *)self synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1ABF0E090;
  v15[3] = &unk_1E79628A0;
  v15[4] = &v27;
  v15[5] = &v21;
  [v12 streamUpdatedWithStreamName:v11 isDelete:deleteCopy completion:v15];

  v13 = *(v28 + 24);
  if (error && (v28[3] & 1) == 0)
  {
    *error = v22[5];
    v13 = *(v28 + 24);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13 & 1;
}

- (BOOL)sourceUpdatedWithSourceType:(id)type sourceIdentifier:(id)identifier error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  identifierCopy = identifier;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1ABF0D4CC;
  v26 = sub_1ABF0D4DC;
  v27 = 0;
  v10 = GDXPCLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = typeCopy;
    v34 = 2112;
    v35 = identifierCopy;
    _os_log_impl(&dword_1ABA78000, v10, OS_LOG_TYPE_DEFAULT, "GDXPCCoordinationService: sourceUpdatedWithError called. %@ %@", buf, 0x16u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1ABF0E350;
  v17[3] = &unk_1E7962640;
  v11 = typeCopy;
  v18 = v11;
  v12 = identifierCopy;
  v19 = v12;
  v20 = &v22;
  v21 = &v28;
  v13 = [(GDXPCCoordinationService *)self synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1ABF0E44C;
  v16[3] = &unk_1E79628A0;
  v16[4] = &v28;
  v16[5] = &v22;
  [v13 sourceUpdatedWithSourceType:v11 sourceIdentifier:v12 completion:v16];

  v14 = *(v29 + 24);
  if (error && (v29[3] & 1) == 0)
  {
    *error = v23[5];
    v14 = *(v29 + 24);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v14 & 1;
}

- (BOOL)graphUpdatedWithSource:(id)source error:(id *)error
{
  sourceCopy = source;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1ABF0D4CC;
  v18 = sub_1ABF0D4DC;
  v19 = 0;
  v7 = GDXPCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v7, OS_LOG_TYPE_DEFAULT, "GDXPCCoordinationService: graphUpdatedWithError called.", buf, 2u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1ABF0E680;
  v12[3] = &unk_1E7962878;
  v12[4] = &v14;
  v12[5] = &v20;
  v8 = [(GDXPCCoordinationService *)self synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1ABF0E764;
  v11[3] = &unk_1E79628A0;
  v11[4] = &v20;
  v11[5] = &v14;
  [v8 graphUpdatedWithSource:sourceCopy completion:v11];

  v9 = *(v21 + 24);
  if (error && (v21[3] & 1) == 0)
  {
    *error = v15[5];
    v9 = *(v21 + 24);
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v9 & 1;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(GDXPCCoordinationService *)selfCopy locked_establishConnection];
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
      _os_log_impl(&dword_1ABA78000, v3, OS_LOG_TYPE_DEFAULT, "GDXPCCoordinationService: establishing connection.", buf, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.intelligenceplatform.Coordination" options:0];
    connection = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:self->_serverInterface];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&unk_1F20A1BD8];
    objc_initWeak(buf, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1ABF0E968;
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
  v3.super_class = GDXPCCoordinationService;
  [(GDXPCCoordinationService *)&v3 dealloc];
}

@end