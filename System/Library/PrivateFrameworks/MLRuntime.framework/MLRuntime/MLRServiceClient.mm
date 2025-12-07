@interface MLRServiceClient
+ (id)sharedConnection;
- (MLRServiceClient)initWithConnection:(id)connection;
- (void)dealloc;
- (void)donateJSONResult:(id)result identifier:(id)identifier completion:(id)completion;
- (void)performOnRemoteObjectWithBlock:(id)block isSynchronous:(BOOL)synchronous errorHandler:(id)handler;
@end

@implementation MLRServiceClient

- (MLRServiceClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  if (!connectionCopy)
  {
    v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"connection must not be nil" userInfo:0];
    objc_exception_throw(v12);
  }

  v6 = connectionCopy;
  v13.receiver = self;
  v13.super_class = MLRServiceClient;
  v7 = [(MLRServiceClient *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_connection, connection);
    connection = v8->_connection;
    v10 = DESServiceGetXPCInterface();
    [(NSXPCConnection *)connection setRemoteObjectInterface:v10];

    [(NSXPCConnection *)v8->_connection resume];
  }

  return v8;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  v4.receiver = self;
  v4.super_class = MLRServiceClient;
  [(MLRServiceClient *)&v4 dealloc];
}

+ (id)sharedConnection
{
  if (sharedConnection_onceToken != -1)
  {
    +[MLRServiceClient sharedConnection];
  }

  v3 = sharedConnection_client;

  return v3;
}

void __36__MLRServiceClient_sharedConnection__block_invoke()
{
  v0 = [MLRServiceClient alloc];
  v1 = objc_alloc(MEMORY[0x277CCAE80]);
  v4 = [v1 initWithMachServiceName:*MEMORY[0x277D055E8] options:4096];
  v2 = [(MLRServiceClient *)v0 initWithConnection:v4];
  v3 = sharedConnection_client;
  sharedConnection_client = v2;
}

- (void)performOnRemoteObjectWithBlock:(id)block isSynchronous:(BOOL)synchronous errorHandler:(id)handler
{
  synchronousCopy = synchronous;
  v24[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  handlerCopy = handler;
  v10 = handlerCopy;
  connection = self->_connection;
  if (synchronousCopy)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __78__MLRServiceClient_performOnRemoteObjectWithBlock_isSynchronous_errorHandler___block_invoke;
    v21[3] = &unk_2798409D8;
    v12 = &v22;
    v22 = handlerCopy;
    v13 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v21];
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __78__MLRServiceClient_performOnRemoteObjectWithBlock_isSynchronous_errorHandler___block_invoke_2;
    v19[3] = &unk_2798409D8;
    v12 = &v20;
    v20 = handlerCopy;
    v13 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v19];
  }

  v14 = v13;

  if (v14)
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy, v14);
    }
  }

  else if (v10)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D05640];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = @"Fail to create remote object proxy.";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v18 = [v15 errorWithDomain:v16 code:1300 userInfo:v17];
    (v10)[2](v10, v18);
  }
}

uint64_t __78__MLRServiceClient_performOnRemoteObjectWithBlock_isSynchronous_errorHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __78__MLRServiceClient_performOnRemoteObjectWithBlock_isSynchronous_errorHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)donateJSONResult:(id)result identifier:(id)identifier completion:(id)completion
{
  v27[1] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  identifierCopy = identifier;
  completionCopy = completion;
  if (!resultCopy)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D05640];
    v26 = *MEMORY[0x277CCA450];
    v27[0] = @"JSONResult must be not be nil.";
    v14 = MEMORY[0x277CBEAC0];
    v15 = v27;
    v16 = &v26;
LABEL_6:
    v11 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
    v17 = [v12 errorWithDomain:v13 code:1400 userInfo:v11];
    completionCopy[2](completionCopy, v17);

    goto LABEL_7;
  }

  if (!identifierCopy)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D05640];
    v24 = *MEMORY[0x277CCA450];
    v25 = @"identifier must be not be nil.";
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v25;
    v16 = &v24;
    goto LABEL_6;
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __59__MLRServiceClient_donateJSONResult_identifier_completion___block_invoke;
  v20[3] = &unk_279840A00;
  v21 = resultCopy;
  v22 = identifierCopy;
  v23 = completionCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__MLRServiceClient_donateJSONResult_identifier_completion___block_invoke_3;
  v18[3] = &unk_2798409D8;
  v19 = v23;
  [(MLRServiceClient *)self performOnRemoteObjectWithBlock:v20 errorHandler:v18];

  v11 = v21;
LABEL_7:
}

void __59__MLRServiceClient_donateJSONResult_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__MLRServiceClient_donateJSONResult_identifier_completion___block_invoke_2;
  v5[3] = &unk_2798409D8;
  v6 = *(a1 + 48);
  [a2 donateJSONResult:v3 identifier:v4 completion:v5];
}

@end