@interface CCXPCClient
- (CCXPCClient)init;
- (CCXPCClient)initWithRemoteObjectInterface:(id)interface exportedInterface:(id)exportedInterface connection:(id)connection clientId:(id)id interruptionCode:(unsigned __int16)code invalidationCode:(unsigned __int16)invalidationCode useCase:(id)case;
- (CCXPCClient)initWithRemoteObjectInterface:(id)interface exportedInterface:(id)exportedInterface serviceName:(id)name clientId:(id)id interruptionCode:(unsigned __int16)code invalidationCode:(unsigned __int16)invalidationCode useCase:(id)case;
- (CCXPCClient)initWithRemoteObjectXPCInterface:(id)interface exportedXPCInterface:(id)cInterface connection:(id)connection clientId:(id)id interruptionCode:(unsigned __int16)code invalidationCode:(unsigned __int16)invalidationCode useCase:(id)case;
- (id)_errorHandlerWithCompletion:(id)completion;
- (id)_failureHandlerWithResponse:(unsigned __int16)response;
- (id)_remoteObjectProxy:(BOOL)proxy errorCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)requestBiomeEndpointForAppScopedService:(unint64_t)service user:(unsigned int)user reply:(id)reply;
- (void)servicePriorsRespondingRequest:(BOOL)request completion:(id)completion usingBlock:(id)block;
- (void)serviceRequest:(BOOL)request completion:(id)completion usingBlock:(id)block;
- (void)serviceThrowingRequest:(BOOL)request completion:(id)completion usingBlock:(id)block;
@end

@implementation CCXPCClient

- (void)dealloc
{
  [(CCXPCClient *)self invalidate];
  v3.receiver = self;
  v3.super_class = CCXPCClient;
  [(CCXPCClient *)&v3 dealloc];
}

- (void)invalidate
{
  v6 = *MEMORY[0x1E69E9840];
  clientId = [self clientId];
  v4 = 138412290;
  v5 = clientId;
  _os_log_debug_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_DEBUG, "Invalidating XPC connection for client %@", &v4, 0xCu);
}

- (CCXPCClient)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCXPCClient)initWithRemoteObjectInterface:(id)interface exportedInterface:(id)exportedInterface serviceName:(id)name clientId:(id)id interruptionCode:(unsigned __int16)code invalidationCode:(unsigned __int16)invalidationCode useCase:(id)case
{
  invalidationCodeCopy = invalidationCode;
  codeCopy = code;
  v16 = MEMORY[0x1E696B0B8];
  caseCopy = case;
  idCopy = id;
  exportedInterfaceCopy = exportedInterface;
  interfaceCopy = interface;
  v21 = [v16 bm_connectionWithServiceName:name queue:0];
  v22 = [(CCXPCClient *)self initWithRemoteObjectInterface:interfaceCopy exportedInterface:exportedInterfaceCopy connection:v21 clientId:idCopy interruptionCode:codeCopy invalidationCode:invalidationCodeCopy useCase:caseCopy];

  return v22;
}

- (CCXPCClient)initWithRemoteObjectInterface:(id)interface exportedInterface:(id)exportedInterface connection:(id)connection clientId:(id)id interruptionCode:(unsigned __int16)code invalidationCode:(unsigned __int16)invalidationCode useCase:(id)case
{
  invalidationCodeCopy = invalidationCode;
  codeCopy = code;
  exportedInterfaceCopy = exportedInterface;
  connectionCopy = connection;
  idCopy = id;
  caseCopy = case;
  v19 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:interface];
  if (exportedInterfaceCopy)
  {
    v20 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:exportedInterfaceCopy];
    v21 = [(CCXPCClient *)self initWithRemoteObjectXPCInterface:v19 exportedXPCInterface:v20 connection:connectionCopy clientId:idCopy interruptionCode:codeCopy invalidationCode:invalidationCodeCopy useCase:caseCopy];
  }

  else
  {
    v21 = [(CCXPCClient *)self initWithRemoteObjectXPCInterface:v19 exportedXPCInterface:0 connection:connectionCopy clientId:idCopy interruptionCode:codeCopy invalidationCode:invalidationCodeCopy useCase:caseCopy];
  }

  return v21;
}

- (CCXPCClient)initWithRemoteObjectXPCInterface:(id)interface exportedXPCInterface:(id)cInterface connection:(id)connection clientId:(id)id interruptionCode:(unsigned __int16)code invalidationCode:(unsigned __int16)invalidationCode useCase:(id)case
{
  invalidationCodeCopy = invalidationCode;
  codeCopy = code;
  interfaceCopy = interface;
  cInterfaceCopy = cInterface;
  connectionCopy = connection;
  idCopy = id;
  caseCopy = case;
  v32.receiver = self;
  v32.super_class = CCXPCClient;
  v19 = [(CCXPCClient *)&v32 init];
  p_isa = &v19->super.isa;
  if (v19)
  {
    v19->_failureCode = 0;
    v19->_interruptionCode = codeCopy;
    objc_storeStrong(&v19->_clientId, id);
    objc_storeStrong(p_isa + 2, case);
    objc_storeStrong(p_isa + 3, connection);
    v21 = p_isa[3];
    if (!v21)
    {
      v29 = 0;
      goto LABEL_10;
    }

    [v21 setRemoteObjectInterface:interfaceCopy];
    if (cInterfaceCopy)
    {
      [p_isa[3] setExportedInterface:cInterfaceCopy];
      v22 = p_isa[3];
      v23 = [MEMORY[0x1E698EA18] weakProxyToObject:p_isa];
      [v22 setExportedObject:v23];
    }

    v24 = p_isa[3];
    v25 = [p_isa _failureHandlerWithResponse:codeCopy];
    [v24 setInterruptionHandler:v25];

    v26 = p_isa[3];
    v27 = [p_isa _failureHandlerWithResponse:invalidationCodeCopy];
    [v26 setInvalidationHandler:v27];

    v28 = __biome_log_for_category();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [CCXPCClient initWithRemoteObjectXPCInterface:idCopy exportedXPCInterface:v28 connection:? clientId:? interruptionCode:? invalidationCode:? useCase:?];
    }

    [p_isa[3] activate];
    [p_isa[3] setBm_exportedUseCase:caseCopy];
  }

  v29 = p_isa;
LABEL_10:

  return v29;
}

- (id)_failureHandlerWithResponse:(unsigned __int16)response
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__CCXPCClient__failureHandlerWithResponse___block_invoke;
  aBlock[3] = &unk_1E7C8B8E0;
  objc_copyWeak(&v7, &location);
  responseCopy = response;
  v4 = _Block_copy(aBlock);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __43__CCXPCClient__failureHandlerWithResponse___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __43__CCXPCClient__failureHandlerWithResponse___block_invoke_cold_1(a1, WeakRetained, v3);
    }

    [WeakRetained setFailureCode:*(a1 + 40)];
    v4 = [WeakRetained connection];
    [v4 invalidate];

    [WeakRetained setConnection:0];
  }
}

- (id)_errorHandlerWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__CCXPCClient__errorHandlerWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C8B908;
  objc_copyWeak(&v10, &location);
  v9 = completionCopy;
  v5 = completionCopy;
  v6 = _Block_copy(aBlock);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

void __43__CCXPCClient__errorHandlerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __43__CCXPCClient__errorHandlerWithCompletion___block_invoke_cold_1(v3, WeakRetained, v5);
    }

    v6 = [WeakRetained interruptionCode];
    [WeakRetained setFailureCode:v6];
    [WeakRetained setConnection:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

- (id)_remoteObjectProxy:(BOOL)proxy errorCompletion:(id)completion
{
  proxyCopy = proxy;
  completionCopy = completion;
  v7 = [(CCXPCClient *)self _errorHandlerWithCompletion:completionCopy];
  connection = [(CCXPCClient *)self connection];
  v9 = connection;
  if (proxyCopy)
  {
    [connection synchronousRemoteObjectProxyWithErrorHandler:v7];
  }

  else
  {
    [connection remoteObjectProxyWithErrorHandler:v7];
  }
  v10 = ;

  if (completionCopy && !v10)
  {
    completionCopy[2](completionCopy, [(CCXPCClient *)self failureCode]);
  }

  return v10;
}

- (void)serviceRequest:(BOOL)request completion:(id)completion usingBlock:(id)block
{
  requestCopy = request;
  completionCopy = completion;
  blockCopy = block;
  v9 = [(CCXPCClient *)self _remoteObjectProxy:requestCopy errorCompletion:completionCopy];
  if (v9)
  {
    blockCopy[2](blockCopy, v9, completionCopy);
  }
}

- (void)serviceThrowingRequest:(BOOL)request completion:(id)completion usingBlock:(id)block
{
  requestCopy = request;
  completionCopy = completion;
  blockCopy = block;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__CCXPCClient_serviceThrowingRequest_completion_usingBlock___block_invoke;
  v12[3] = &unk_1E7C8B930;
  v10 = completionCopy;
  v12[4] = self;
  v13 = v10;
  v11 = [(CCXPCClient *)self _remoteObjectProxy:requestCopy errorCompletion:v12];
  if (v11)
  {
    blockCopy[2](blockCopy, v11, v10);
  }
}

void __60__CCXPCClient_serviceThrowingRequest_completion_usingBlock___block_invoke(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = MEMORY[0x1E696ABC0];
    v8 = [*(*(a1 + 32) + 24) remoteObjectInterface];
    v5 = [v8 protocol];
    v6 = NSStringFromProtocol(v5);
    v7 = [v4 errorWithDomain:v6 code:a2 userInfo:0];
    (*(v2 + 16))(v2, v7);
  }
}

- (void)servicePriorsRespondingRequest:(BOOL)request completion:(id)completion usingBlock:(id)block
{
  requestCopy = request;
  completionCopy = completion;
  blockCopy = block;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__CCXPCClient_servicePriorsRespondingRequest_completion_usingBlock___block_invoke;
  v12[3] = &unk_1E7C8B958;
  v10 = completionCopy;
  v13 = v10;
  v11 = [(CCXPCClient *)self _remoteObjectProxy:requestCopy errorCompletion:v12];
  if (v11)
  {
    blockCopy[2](blockCopy, v11, v10);
  }
}

uint64_t __68__CCXPCClient_servicePriorsRespondingRequest_completion_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0, 0);
  }

  return result;
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
  v11 = MEMORY[0x1E696A578];
  if (processType != 5)
  {
    v25 = MEMORY[0x1E696ABC0];
    v49 = *MEMORY[0x1E696A578];
    v50[0] = @"Not authorized";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v27 = [v25 errorWithDomain:@"com.apple.CascadeSets.Donate" code:3 userInfo:v26];
    replyCopy[2](replyCopy, 0, v27);

    goto LABEL_15;
  }

  if (!service && [v29 uid] == v5)
  {
    v5 = getuid();
  }

  v44 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__5;
  v42 = __Block_byref_object_dispose__5;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__5;
  v36 = __Block_byref_object_dispose__5;
  v37 = 0;
  v12 = *MEMORY[0x1E698E908];
  v13 = *v11;
  do
  {
    v14 = [MEMORY[0x1E698EA28] connectionToAccessServerInDomain:service user:v5 useCase:self->_useCase options:0];
    connection = [v14 connection];
    v16 = connection;
    if (connection)
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __66__CCXPCClient_requestBiomeEndpointForAppScopedService_user_reply___block_invoke;
      v31[3] = &unk_1E7C8ADD0;
      v31[4] = &v32;
      v17 = [connection synchronousRemoteObjectProxyWithErrorHandler:v31];
      v18 = v17;
      if (v17)
      {
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __66__CCXPCClient_requestBiomeEndpointForAppScopedService_user_reply___block_invoke_2;
        v30[3] = &unk_1E7C8B980;
        v30[4] = &v38;
        v30[5] = &v32;
        [v17 requestBiomeEndpointForAppScopedService:service user:v5 reply:v30];
        goto LABEL_12;
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

LABEL_12:
  }

  while ((BMShouldRetry() & 1) != 0);
  replyCopy[2](replyCopy, v39[5], v33[5]);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
LABEL_15:
}

void __66__CCXPCClient_requestBiomeEndpointForAppScopedService_user_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)initWithRemoteObjectXPCInterface:(uint64_t)a1 exportedXPCInterface:(NSObject *)a2 connection:clientId:interruptionCode:invalidationCode:useCase:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_DEBUG, "Client %@ connecting to XPC service", &v2, 0xCu);
}

void __43__CCXPCClient__failureHandlerWithResponse___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = [a2 clientId];
  v6[0] = 67109378;
  v6[1] = v4;
  v7 = 2112;
  v8 = v5;
  _os_log_debug_impl(&dword_1B6DB2000, a3, OS_LOG_TYPE_DEBUG, "XPC connection terminated (%u) for client %@", v6, 0x12u);
}

void __43__CCXPCClient__errorHandlerWithCompletion___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a2 clientId];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1B6DB2000, a3, OS_LOG_TYPE_ERROR, "XPC request hit error (%@) for client %@", &v6, 0x16u);
}

@end