@interface CMLPIRClient
- (CMLPIRClient)initWithClientConfig:(id)config;
- (CMLPIRClient)initWithClientConfig:(id)config dispatchQueue:(id)queue;
- (CMLPIRClient)initWithClientConfig:(id)config dispatchQueue:(id)queue connection:(id)connection;
- (NSString)useCase;
- (id)generateEvaluationKey:(id *)key;
- (id)setPIRConfig:(id)config error:(id *)error;
- (void)dealloc;
@end

@implementation CMLPIRClient

- (NSString)useCase
{
  clientConfig = [(CMLPIRClient *)self clientConfig];
  useCase = [clientConfig useCase];

  return useCase;
}

- (CMLPIRClient)initWithClientConfig:(id)config
{
  configCopy = config;
  v5 = dispatch_queue_create("com.apple.CipherML.CMLPIRClient", 0);
  v6 = [(CMLPIRClient *)self initWithClientConfig:configCopy dispatchQueue:v5];

  return v6;
}

- (CMLPIRClient)initWithClientConfig:(id)config dispatchQueue:(id)queue
{
  configCopy = config;
  queueCopy = queue;
  if ([(CMLPIRClient *)self isMemberOfClass:objc_opt_class()])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"CMLPIRClient should not be instantiated, only its subclasses"}];
  }

  v8 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ciphermld" options:0];
  if (v8)
  {
    self = [(CMLPIRClient *)self initWithClientConfig:configCopy dispatchQueue:queueCopy connection:v8];
    selfCopy = self;
  }

  else
  {
    v10 = +[CMLLog client];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CMLSimilarityClient initWithClientConfig:v10 dispatchQueue:?];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (CMLPIRClient)initWithClientConfig:(id)config dispatchQueue:(id)queue connection:(id)connection
{
  configCopy = config;
  queueCopy = queue;
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = CMLPIRClient;
  v12 = [(CMLPIRClient *)&v15 init];
  if (v12)
  {
    v13 = +[CMLXPC interfaceDescription];
    [connectionCopy setRemoteObjectInterface:v13];

    [connectionCopy activate];
    objc_storeStrong(&v12->_clientConfig, config);
    objc_storeStrong(&v12->_dispatchQueue, queue);
    objc_storeStrong(&v12->_connection, connection);
  }

  return v12;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = CMLPIRClient;
  [(CMLPIRClient *)&v3 dealloc];
}

- (id)setPIRConfig:(id)config error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v30 = 0;
  connection = [(CMLPIRClient *)self connection];
  v10 = [CMLXPC syncProxyToConnection:connection error:&v30];

  objc_storeStrong(&self->_pirConfig, config);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v11 = +[CMLLog client];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138543362;
    v32 = v12;
    _os_log_impl(&dword_224E26000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  clientConfig = [(CMLPIRClient *)self clientConfig];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __35__CMLPIRClient_setPIRConfig_error___block_invoke;
  v17[3] = &unk_278541A50;
  v17[4] = &v18;
  v17[5] = &v24;
  v17[6] = a2;
  [v10 setPIRConfig:configCopy clientConfig:clientConfig reply:v17];

  if (error)
  {
    v14 = v30;
    if (!v30)
    {
      v14 = v25[5];
    }

    *error = v14;
  }

  v15 = v19[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v15;
}

void __35__CMLPIRClient_setPIRConfig_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = +[CMLLog client];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(*(a1 + 48));
    v13 = 138543874;
    v14 = v9;
    v15 = 1024;
    v16 = v6 != 0;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, success(%d) error:%{public}@", &v13, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:200 underlyingError:v7 description:@"Unable to set PIR config due to errors"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)generateEvaluationKey:(id *)key
{
  v31 = *MEMORY[0x277D85DE8];
  v28 = 0;
  connection = [(CMLPIRClient *)self connection];
  v7 = [CMLXPC syncProxyToConnection:connection error:&v28];

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v8 = +[CMLLog client];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 138543362;
    v30 = v9;
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  pirConfig = [(CMLPIRClient *)self pirConfig];
  clientConfig = [(CMLPIRClient *)self clientConfig];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__CMLPIRClient_generateEvaluationKey___block_invoke;
  v15[3] = &unk_278541A50;
  v15[4] = &v16;
  v15[5] = &v22;
  v15[6] = a2;
  [v7 generateEvaluationKey:pirConfig clientConfig:clientConfig reply:v15];

  if (key)
  {
    v12 = v28;
    if (!v28)
    {
      v12 = v23[5];
    }

    *key = v12;
  }

  v13 = v17[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v13;
}

void __38__CMLPIRClient_generateEvaluationKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = +[CMLLog client];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(*(a1 + 48));
    v13 = 138543874;
    v14 = v9;
    v15 = 1024;
    v16 = v6 != 0;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, success(%d) error:%{public}@", &v13, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:1500 underlyingError:v7 description:@"Unable to set generateEvaluationKey due to errors"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

@end