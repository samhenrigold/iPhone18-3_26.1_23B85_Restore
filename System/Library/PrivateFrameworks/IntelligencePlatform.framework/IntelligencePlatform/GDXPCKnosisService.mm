@interface GDXPCKnosisService
- (BOOL)iteratingExecuteKGQ:(id)q error:(id *)error block:(id)block;
- (GDXPCKnosisService)init;
- (id)executeIntent:(id)intent error:(id *)error;
- (id)executeKGQ:(id)q error:(id *)error;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)dealloc;
- (void)locked_establishConnection;
@end

@implementation GDXPCKnosisService

- (id)executeIntent:(id)intent error:(id *)error
{
  intentCopy = intent;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1ABF1B8A8;
  v24 = sub_1ABF1B8B8;
  v25 = 0;
  v7 = GDXPCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v7, OS_LOG_TYPE_DEFAULT, "GDXPCKnosisService: executeIntent called.", buf, 2u);
  }

  *buf = 0;
  v15 = buf;
  v16 = 0x3032000000;
  v17 = sub_1ABF1B8A8;
  v18 = sub_1ABF1B8B8;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1ABF1B8C0;
  v13[3] = &unk_1E79628C8;
  v13[4] = buf;
  v8 = [(GDXPCKnosisService *)self synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1ABF1B98C;
  v12[3] = &unk_1E7962768;
  v12[4] = &v20;
  v12[5] = buf;
  [v8 executeIntent:intentCopy withCompletion:v12];

  v9 = v21[5];
  if (error && !v9)
  {
    *error = *(v15 + 5);
    v9 = v21[5];
  }

  v10 = v9;
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v20, 8);

  return v10;
}

- (BOOL)iteratingExecuteKGQ:(id)q error:(id *)error block:(id)block
{
  v59 = *MEMORY[0x1E69E9840];
  qCopy = q;
  blockCopy = block;
  v8 = GDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, v8, OS_LOG_TYPE_DEFAULT, "GDXPCKnosisService: iteratingExecuteKGQ called.", buf, 2u);
  }

  *buf = 0;
  v52 = buf;
  v53 = 0x3032000000;
  v54 = sub_1ABF1B8A8;
  v55 = sub_1ABF1B8B8;
  v56 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 1;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_1ABF1B8A8;
  v45 = sub_1ABF1B8B8;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1ABF1B8A8;
  v39 = sub_1ABF1B8B8;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1ABF1BE8C;
  v26[3] = &unk_1E7962718;
  v26[4] = buf;
  v26[5] = &v31;
  v26[6] = &v27;
  v9 = [(GDXPCKnosisService *)self synchronousRemoteObjectProxyWithErrorHandler:v26];
  if (*(v48 + 24) == 1)
  {
    do
    {
      if (v32[3])
      {
        break;
      }

      if (*(v52 + 5))
      {
        break;
      }

      v10 = MEMORY[0x1E696AD98];
      longValue = [v42[5] longValue];
      v12 = [v10 numberWithLong:{objc_msgSend(v36[5], "longValue") + longValue}];
      [qCopy setOffset:v12];

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_1ABF1BF80;
      v18[3] = &unk_1E7962740;
      v20 = buf;
      v21 = &v31;
      v22 = &v27;
      v23 = &v47;
      v24 = &v41;
      v25 = &v35;
      v19 = blockCopy;
      [v9 executeKGQ:qCopy withCompletion:v18];
    }

    while ((v48[3] & 1) != 0);
  }

  v13 = *(v28 + 24);
  if (v13 == 1)
  {
    if (error)
    {
      *error = *(v52 + 5);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = *(v52 + 5);
      *v57 = 138412290;
      v58 = v15;
      _os_log_error_impl(&dword_1ABA78000, v8, OS_LOG_TYPE_ERROR, "GDXPCKnosisService: error during iteratingExecuteKGQ call: %@", v57, 0xCu);
    }
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(buf, 8);

  return v13 ^ 1;
}

- (id)executeKGQ:(id)q error:(id *)error
{
  v63 = *MEMORY[0x1E69E9840];
  qCopy = q;
  limit2 = GDXPCLog();
  if (os_log_type_enabled(limit2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1ABA78000, limit2, OS_LOG_TYPE_DEFAULT, "GDXPCKnosisService: executeKgqQuery called.", buf, 2u);
  }

  if (error)
  {
    *error = 0;
  }

  *buf = 0;
  v56 = buf;
  v57 = 0x3032000000;
  v58 = sub_1ABF1B8A8;
  v59 = sub_1ABF1B8B8;
  v60 = &stru_1F20A2CD8;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_1ABF1B8A8;
  v53 = sub_1ABF1B8B8;
  v54 = &stru_1F20A2CD8;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_1ABF1B8A8;
  v47 = sub_1ABF1B8B8;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  limit = [qCopy limit];
  integerValue = [limit integerValue];

  v38[3] = integerValue;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1ABF1B8A8;
  v36 = sub_1ABF1B8B8;
  v37 = 0;
  array = [MEMORY[0x1E695DF70] array];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = sub_1ABF1C4F4;
  v24 = &unk_1E79626F0;
  v26 = &v49;
  v27 = buf;
  v28 = &v39;
  v29 = &v32;
  v30 = &v43;
  v11 = array;
  v25 = v11;
  v31 = v38;
  if ([(GDXPCKnosisService *)self iteratingExecuteKGQ:qCopy error:error block:&v21])
  {
    v12 = [GDKnosisResult alloc];
    v13 = *(v56 + 5);
    v14 = v50[5];
    v15 = v40[3];
    v16 = v44[5];
    limit2 = [qCopy limit];
    LOBYTE(v20) = 0;
    v17 = [(GDKnosisResult *)v12 initWithQuery:v13 kgq:v14 status:v15 answers:v11 errorMessage:v16 limit:limit2 offset:&unk_1F20CF3B0 hasMoreAnswers:v20 debug:v33[5], v21, v22, v23, v24];
  }

  else
  {
    if (os_log_type_enabled(limit2, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v19 = *error;
      }

      else
      {
        v19 = 0;
      }

      *v61 = 138412290;
      v62 = v19;
      _os_log_error_impl(&dword_1ABA78000, limit2, OS_LOG_TYPE_ERROR, "GDXPCKnosisService: error during ExecuteKGQ call: %@", v61, 0xCu);
    }

    v17 = 0;
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(v38, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(buf, 8);

  return v17;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(GDXPCKnosisService *)selfCopy locked_establishConnection];
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
      _os_log_impl(&dword_1ABA78000, v3, OS_LOG_TYPE_DEFAULT, "GDXPCKnosisService: establishing connection.", buf, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.intelligenceplatform.Knosis" options:0];
    connection = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:self->_serverInterface];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&unk_1F20A1CF8];
    objc_initWeak(buf, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1ABF1C8F0;
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
  v3.super_class = GDXPCKnosisService;
  [(GDXPCKnosisService *)&v3 dealloc];
}

- (GDXPCKnosisService)init
{
  v6.receiver = self;
  v6.super_class = GDXPCKnosisService;
  v2 = [(GDXPCKnosisService *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F20E6510];
    serverInterface = v2->_serverInterface;
    v2->_serverInterface = v3;
  }

  return v2;
}

@end