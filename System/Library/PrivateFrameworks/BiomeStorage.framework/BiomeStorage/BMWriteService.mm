@interface BMWriteService
- (BMWriteService)initWithUseCase:(id)case;
- (BOOL)writeData:(id)data version:(unsigned int)version timestamp:(double)timestamp toStream:(id)stream asUser:(unsigned int)user error:(id *)error;
- (id)newConnection;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)dealloc;
- (void)requestBiomeEndpointForAppScopedService:(unint64_t)service user:(unsigned int)user reply:(id)reply;
@end

@implementation BMWriteService

- (BMWriteService)initWithUseCase:(id)case
{
  caseCopy = case;
  v6 = [(BMWriteService *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_useCase, case);
  }

  return v7;
}

- (id)newConnection
{
  v3 = [MEMORY[0x1E696B0B8] bm_connectionWithServiceName:@"com.apple.BiomeWriteService" queue:0];
  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F48E3A68];
  [v3 setRemoteObjectInterface:v4];

  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F48E3548];
  [v3 setExportedInterface:v5];
  v6 = [MEMORY[0x1E698EA18] weakProxyToObject:self];
  [v3 setExportedObject:v6];

  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __31__BMWriteService_newConnection__block_invoke;
  v11 = &unk_1E8338EC0;
  objc_copyWeak(&v12, &location);
  [v3 setInvalidationHandler:&v8];
  [v3 activate];
  [v3 setBm_exportedUseCase:self->_useCase];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v3;
}

void __31__BMWriteService_newConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionInvalidated];
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  v20[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  connection = [(BMWriteService *)self connection];

  if (!connection)
  {
    newConnection = [(BMWriteService *)self newConnection];
    [(BMWriteService *)self setConnection:newConnection];
  }

  connection2 = [(BMWriteService *)self connection];

  if (connection2)
  {
    connection3 = [(BMWriteService *)self connection];
    v9 = [connection3 synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

    if (v9)
    {
      v9 = v9;
      v10 = v9;
    }

    else
    {
      v13 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A578];
      v18 = @"Unable to create proxy";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v15 = [v13 errorWithDomain:*MEMORY[0x1E698E908] code:7 userInfo:v14];
      handlerCopy[2](handlerCopy, v15);

      v10 = 0;
    }
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v20[0] = @"Unable to create connection";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v12 = [v11 errorWithDomain:*MEMORY[0x1E698E908] code:7 userInfo:v9];
    handlerCopy[2](handlerCopy, v12);

    v10 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (BOOL)writeData:(id)data version:(unsigned int)version timestamp:(double)timestamp toStream:(id)stream asUser:(unsigned int)user error:(id *)error
{
  errorCopy = error;
  v8 = *&user;
  v11 = *&version;
  dataCopy = data;
  streamCopy = stream;
  v30 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  v29 = 0;
  v14 = MEMORY[0x1E69E9820];
  do
  {
    v23[0] = v14;
    v23[1] = 3221225472;
    v23[2] = __68__BMWriteService_writeData_version_timestamp_toStream_asUser_error___block_invoke;
    v23[3] = &unk_1E8338EE8;
    v23[4] = &v24;
    errorCopy = [(BMWriteService *)self synchronousRemoteObjectProxyWithErrorHandler:v23, errorCopy];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __68__BMWriteService_writeData_version_timestamp_toStream_asUser_error___block_invoke_2;
    v22[3] = &unk_1E8338EE8;
    v22[4] = &v24;
    [errorCopy writeData:dataCopy version:v11 timestamp:streamCopy toStream:v8 asUser:v22 reply:timestamp];
  }

  while ((BMShouldRetry() & 1) != 0);
  v16 = v25;
  if (errorCopy)
  {
    v17 = v25[5];
    if (v17)
    {
      *errorCopy = v17;
      v16 = v25;
    }
  }

  v18 = v16[5] == 0;
  _Block_object_dispose(&v24, 8);

  return v18;
}

- (void)requestBiomeEndpointForAppScopedService:(unint64_t)service user:(unsigned int)user reply:(id)reply
{
  v5 = *&user;
  v50[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v8 = MEMORY[0x1E698E9D8];
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v29 = [v8 processWithXPCConnection:currentConnection];

  processType = [v29 processType];
  v11 = MEMORY[0x1E698E908];
  if (processType != 4)
  {
    v25 = MEMORY[0x1E696ABC0];
    v49 = *MEMORY[0x1E696A578];
    v50[0] = @"Not authorized";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v27 = [v25 errorWithDomain:*v11 code:5 userInfo:v26];
    replyCopy[2](replyCopy, 0, v27);

    goto LABEL_12;
  }

  v44 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__2;
  v42 = __Block_byref_object_dispose__2;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v37 = 0;
  v12 = *MEMORY[0x1E698E908];
  v13 = *MEMORY[0x1E696A578];
  do
  {
    v14 = [MEMORY[0x1E698EA28] connectionToAccessServerInDomain:service user:v5 useCase:self->_useCase options:1];
    connection = [v14 connection];
    v16 = connection;
    if (connection)
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __69__BMWriteService_requestBiomeEndpointForAppScopedService_user_reply___block_invoke;
      v31[3] = &unk_1E8338EE8;
      v31[4] = &v32;
      v17 = [connection synchronousRemoteObjectProxyWithErrorHandler:v31];
      v18 = v17;
      if (v17)
      {
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __69__BMWriteService_requestBiomeEndpointForAppScopedService_user_reply___block_invoke_2;
        v30[3] = &unk_1E8338F10;
        v30[4] = &v38;
        v30[5] = &v32;
        [v17 requestBiomeEndpointForAppScopedService:service user:v5 reply:v30];
        goto LABEL_9;
      }

      v22 = MEMORY[0x1E696ABC0];
      v45 = v13;
      v46 = @"Failed to create remote object proxy";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v23 = [v22 errorWithDomain:v12 code:7 userInfo:v21];
      v24 = v33[5];
      v33[5] = v23;
    }

    else
    {
      v19 = MEMORY[0x1E696ABC0];
      v47 = v13;
      v48 = @"Failed to create connection";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v20 = [v19 errorWithDomain:v12 code:7 userInfo:v18];
      v21 = v33[5];
      v33[5] = v20;
    }

LABEL_9:
  }

  while ((BMShouldRetry() & 1) != 0);
  replyCopy[2](replyCopy, v39[5], v33[5]);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
LABEL_12:
}

void __69__BMWriteService_requestBiomeEndpointForAppScopedService_user_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)dealloc
{
  connection = [(BMWriteService *)self connection];
  [connection setInvalidationHandler:0];

  connection2 = [(BMWriteService *)self connection];
  [connection2 invalidate];

  [(BMWriteService *)self setConnection:0];
  v5.receiver = self;
  v5.super_class = BMWriteService;
  [(BMWriteService *)&v5 dealloc];
}

@end