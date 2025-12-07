@interface CMLSimilarityClient
- (CMLSimilarityClient)initWithClientConfig:(id)config;
- (CMLSimilarityClient)initWithClientConfig:(id)config dispatchQueue:(id)queue;
- (CMLSimilarityClient)initWithClientConfig:(id)config dispatchQueue:(id)queue connection:(id)connection;
- (NSString)useCase;
- (id)asyncResponseSimilarityScoresForElements:(id)elements shardIndex:(unint64_t)index error:(id *)error;
- (id)asyncResponseSimilarityScoresForElements:(id)elements shardIndices:(id)indices error:(id *)error;
- (id)decryptBatchOfSimilarityScores:(id)scores error:(id *)error;
- (id)decryptSimilarityScores:(id)scores error:(id *)error;
- (id)encryptBatchOfElements:(id)elements shardIndex:(unint64_t)index error:(id *)error;
- (id)encryptBatchOfElements:(id)elements shardIndices:(id)indices error:(id *)error;
- (id)encryptDifferentiallyPrivateFakes:(id)fakes shardIndex:(unint64_t)index shardCount:(unint64_t)count error:(id *)error;
- (id)encryptElement:(id)element shardIndex:(unint64_t)index error:(id *)error;
- (id)encryptElement:(id)element shardIndices:(id)indices error:(id *)error;
- (id)setPECConfig:(id)config error:(id *)error;
- (id)similarityScoresForElement:(id)element shardIndex:(unint64_t)index error:(id *)error;
- (id)similarityScoresForElement:(id)element shardIndices:(id)indices error:(id *)error;
- (id)similarityScoresForElements:(id)elements shardIndex:(unint64_t)index error:(id *)error;
- (id)similarityScoresForElements:(id)elements shardIndices:(id)indices error:(id *)error;
- (void)dealloc;
- (void)requestSimilarityScoresForElement:(id)element shardIndex:(unint64_t)index completionHandler:(id)handler;
- (void)requestSimilarityScoresForElement:(id)element shardIndices:(id)indices completionHandler:(id)handler;
- (void)requestSimilarityScoresForElements:(id)elements shardIndex:(unint64_t)index completionHandler:(id)handler;
- (void)requestSimilarityScoresForElements:(id)elements shardIndices:(id)indices completionHandler:(id)handler;
@end

@implementation CMLSimilarityClient

- (NSString)useCase
{
  clientConfig = [(CMLSimilarityClient *)self clientConfig];
  useCase = [clientConfig useCase];

  return useCase;
}

- (CMLSimilarityClient)initWithClientConfig:(id)config
{
  configCopy = config;
  v5 = dispatch_queue_create("com.apple.CipherML.CMLSimilarityClient", 0);
  v6 = [(CMLSimilarityClient *)self initWithClientConfig:configCopy dispatchQueue:v5];

  return v6;
}

- (CMLSimilarityClient)initWithClientConfig:(id)config dispatchQueue:(id)queue
{
  configCopy = config;
  queueCopy = queue;
  v8 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ciphermld" options:0];
  if (v8)
  {
    self = [(CMLSimilarityClient *)self initWithClientConfig:configCopy dispatchQueue:queueCopy connection:v8];
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

- (CMLSimilarityClient)initWithClientConfig:(id)config dispatchQueue:(id)queue connection:(id)connection
{
  configCopy = config;
  queueCopy = queue;
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = CMLSimilarityClient;
  v12 = [(CMLSimilarityClient *)&v15 init];
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
  v3.super_class = CMLSimilarityClient;
  [(CMLSimilarityClient *)&v3 dealloc];
}

- (void)requestSimilarityScoresForElement:(id)element shardIndex:(unint64_t)index completionHandler:(id)handler
{
  v13[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCABB0];
  handlerCopy = handler;
  elementCopy = element;
  v11 = [v8 numberWithUnsignedInteger:index];
  v13[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [(CMLSimilarityClient *)self requestSimilarityScoresForElement:elementCopy shardIndices:v12 completionHandler:handlerCopy];
}

- (void)requestSimilarityScoresForElement:(id)element shardIndices:(id)indices completionHandler:(id)handler
{
  v16[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v16[0] = element;
  v9 = MEMORY[0x277CBEA60];
  indicesCopy = indices;
  elementCopy = element;
  v12 = [v9 arrayWithObjects:v16 count:1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__CMLSimilarityClient_requestSimilarityScoresForElement_shardIndices_completionHandler___block_invoke;
  v14[3] = &unk_278541988;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(CMLSimilarityClient *)self requestSimilarityScoresForElements:v12 shardIndices:indicesCopy completionHandler:v14];
}

void __88__CMLSimilarityClient_requestSimilarityScoresForElement_shardIndices_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 objectAtIndexedSubscript:0];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)requestSimilarityScoresForElements:(id)elements shardIndex:(unint64_t)index completionHandler:(id)handler
{
  v13[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCABB0];
  handlerCopy = handler;
  elementsCopy = elements;
  v11 = [v8 numberWithUnsignedInteger:index];
  v13[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [(CMLSimilarityClient *)self requestSimilarityScoresForElements:elementsCopy shardIndices:v12 completionHandler:handlerCopy];
}

- (void)requestSimilarityScoresForElements:(id)elements shardIndices:(id)indices completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__CMLSimilarityClient_requestSimilarityScoresForElements_shardIndices_completionHandler___block_invoke;
  aBlock[3] = &unk_2785419B0;
  v10 = handlerCopy;
  v25 = v10;
  indicesCopy = indices;
  elementsCopy = elements;
  v13 = _Block_copy(aBlock);
  connection = [(CMLSimilarityClient *)self connection];
  dispatchQueue = [(CMLSimilarityClient *)self dispatchQueue];
  v16 = [CMLXPC asyncProxyToConnection:connection dispatchQueue:dispatchQueue errorHandler:v13];

  v17 = +[CMLLog client];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = NSStringFromSelector(a2);
    *buf = 138543362;
    v27 = v18;
    _os_log_impl(&dword_224E26000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  clientConfig = [(CMLSimilarityClient *)self clientConfig];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __89__CMLSimilarityClient_requestSimilarityScoresForElements_shardIndices_completionHandler___block_invoke_65;
  v21[3] = &unk_278541A00;
  v22 = v10;
  v23 = a2;
  v21[4] = self;
  v20 = v10;
  [v16 similarityScoresForElements:elementsCopy shardIndices:indicesCopy clientConfig:clientConfig reply:v21];
}

void __89__CMLSimilarityClient_requestSimilarityScoresForElements_shardIndices_completionHandler___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[CMLLog client];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(*(a1 + 48));
    *buf = 138543874;
    v19 = v8;
    v20 = 1024;
    v21 = v5 != 0;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&dword_224E26000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, scores(%d) error:%{public}@", buf, 0x1Cu);
  }

  if (v6)
  {
    v9 = [CMLError errorWithCode:600 underlyingError:v6 description:@"Unable to calculate similarity scores for elements due to errors"];
  }

  else
  {
    v9 = 0;
  }

  if (!(v5 | v9))
  {
    v9 = [CMLError errorWithCode:601 description:@"Server returns nil instead of similarity scores with empty error"];
  }

  v10 = [*(a1 + 32) dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__CMLSimilarityClient_requestSimilarityScoresForElements_shardIndices_completionHandler___block_invoke_73;
  block[3] = &unk_2785419D8;
  v11 = *(a1 + 40);
  v16 = v9;
  v17 = v11;
  v15 = v5;
  v12 = v9;
  v13 = v5;
  dispatch_async(v10, block);
}

- (id)similarityScoresForElement:(id)element shardIndex:(unint64_t)index error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCABB0];
  elementCopy = element;
  v10 = [v8 numberWithUnsignedInteger:index];
  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [(CMLSimilarityClient *)self similarityScoresForElement:elementCopy shardIndices:v11 error:error];

  return v12;
}

- (id)similarityScoresForElement:(id)element shardIndices:(id)indices error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v8 = MEMORY[0x277CBEA60];
  indicesCopy = indices;
  elementCopy2 = element;
  v11 = [v8 arrayWithObjects:&elementCopy count:1];

  v12 = [(CMLSimilarityClient *)self similarityScoresForElements:v11 shardIndices:indicesCopy error:error, elementCopy, v16];

  v13 = [v12 objectAtIndexedSubscript:0];

  return v13;
}

- (id)similarityScoresForElements:(id)elements shardIndex:(unint64_t)index error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCABB0];
  elementsCopy = elements;
  v10 = [v8 numberWithUnsignedInteger:index];
  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [(CMLSimilarityClient *)self similarityScoresForElements:elementsCopy shardIndices:v11 error:error];

  return v12;
}

- (id)similarityScoresForElements:(id)elements shardIndices:(id)indices error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  indicesCopy = indices;
  v38 = 0;
  connection = [(CMLSimilarityClient *)self connection];
  v12 = [CMLXPC syncProxyToConnection:connection error:&v38];

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__0;
  v36 = __Block_byref_object_dispose__0;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  v13 = +[CMLLog client];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 138543362;
    v40 = v14;
    _os_log_impl(&dword_224E26000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending request", buf, 0xCu);
  }

  clientConfig = [(CMLSimilarityClient *)self clientConfig];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __70__CMLSimilarityClient_similarityScoresForElements_shardIndices_error___block_invoke;
  v25[3] = &unk_278541A28;
  v25[4] = &v26;
  v25[5] = &v32;
  v25[6] = a2;
  [v12 similarityScoresForElements:elementsCopy shardIndices:indicesCopy clientConfig:clientConfig reply:v25];

  if (!v27[5] && !v33[5])
  {
    v16 = [CMLError errorWithCode:601 description:@"Server returns nil instead of similarity scores with empty error"];
    v17 = v33[5];
    v33[5] = v16;
  }

  if (error)
  {
    v18 = v38;
    if (!v38)
    {
      v18 = v33[5];
    }

    *error = v18;
  }

  v19 = +[CMLLog client];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = NSStringFromSelector(a2);
    v21 = v27[5] != 0;
    v22 = v33[5];
    *buf = 138543874;
    v40 = v20;
    v41 = 1024;
    v42 = v21;
    v43 = 2114;
    v44 = v22;
    _os_log_impl(&dword_224E26000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Request complete, scores(%d) error:%{public}@", buf, 0x1Cu);
  }

  v23 = v27[5];
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);

  return v23;
}

void __70__CMLSimilarityClient_similarityScoresForElements_shardIndices_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, scores(%d), error:%{public}@", &v13, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:600 underlyingError:v7 description:@"Unable to calculate similarity scores for element due to errors"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)setPECConfig:(id)config error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v29 = 0;
  connection = [(CMLSimilarityClient *)self connection];
  v9 = [CMLXPC syncProxyToConnection:connection error:&v29];

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v10 = +[CMLLog client];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 138543362;
    v31 = v11;
    _os_log_impl(&dword_224E26000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending request", buf, 0xCu);
  }

  [(CMLSimilarityClient *)self setClientPecConfig:configCopy];
  clientConfig = [(CMLSimilarityClient *)self clientConfig];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__CMLSimilarityClient_setPECConfig_error___block_invoke;
  v16[3] = &unk_278541A50;
  v16[4] = &v17;
  v16[5] = &v23;
  v16[6] = a2;
  [v9 setPECConfig:configCopy clientConfig:clientConfig reply:v16];

  if (error)
  {
    v13 = v29;
    if (!v29)
    {
      v13 = v24[5];
    }

    *error = v13;
  }

  v14 = v18[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v14;
}

void __42__CMLSimilarityClient_setPECConfig_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Received response, success(%d) error:%{public}@", &v13, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:200 underlyingError:v7 description:@"Unable to set PEC config due to errors"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)encryptElement:(id)element shardIndex:(unint64_t)index error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  v16[0] = element;
  v8 = MEMORY[0x277CBEA60];
  elementCopy = element;
  v10 = [v8 arrayWithObjects:v16 count:1];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v15 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];

  v13 = [(CMLSimilarityClient *)self encryptBatchOfElements:v10 shardIndices:v12 error:error];

  return v13;
}

- (id)encryptElement:(id)element shardIndices:(id)indices error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v8 = MEMORY[0x277CBEA60];
  indicesCopy = indices;
  elementCopy2 = element;
  v11 = [v8 arrayWithObjects:&elementCopy count:1];

  v12 = [(CMLSimilarityClient *)self encryptBatchOfElements:v11 shardIndices:indicesCopy error:error, elementCopy, v15];

  return v12;
}

- (id)decryptSimilarityScores:(id)scores error:(id *)error
{
  v4 = [(CMLSimilarityClient *)self decryptBatchOfSimilarityScores:scores error:error];
  v5 = [v4 objectAtIndexedSubscript:0];

  return v5;
}

- (id)encryptBatchOfElements:(id)elements shardIndex:(unint64_t)index error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCABB0];
  elementsCopy = elements;
  v10 = [v8 numberWithUnsignedInteger:index];
  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [(CMLSimilarityClient *)self encryptBatchOfElements:elementsCopy shardIndices:v11 error:error];

  return v12;
}

- (id)encryptDifferentiallyPrivateFakes:(id)fakes shardIndex:(unint64_t)index shardCount:(unint64_t)count error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  fakesCopy = fakes;
  v41 = 0;
  connection = [(CMLSimilarityClient *)self connection];
  v12 = [CMLXPC syncProxyToConnection:connection error:&v41];

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__0;
  v39 = __Block_byref_object_dispose__0;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__0;
  v33 = __Block_byref_object_dispose__0;
  v34 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__CMLSimilarityClient_encryptDifferentiallyPrivateFakes_shardIndex_shardCount_error___block_invoke;
  aBlock[3] = &unk_278541A28;
  aBlock[5] = &v35;
  aBlock[6] = a2;
  aBlock[4] = &v29;
  v13 = _Block_copy(aBlock);
  v14 = +[CMLLog client];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    *buf = 138543362;
    v43 = v15;
    _os_log_impl(&dword_224E26000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending request", buf, 0xCu);
  }

  clientPecConfig = [(CMLSimilarityClient *)self clientPecConfig];
  clientConfig = [(CMLSimilarityClient *)self clientConfig];
  [v12 encryptDifferentiallyPrivateFakes:fakesCopy shardIndex:index shardCount:count pecConfig:clientPecConfig clientConfig:clientConfig reply:v13];

  if (!v30[5] && !v36[5])
  {
    v18 = [CMLError errorWithCode:911 description:@"Server returns nil instead of encrypted elements data with empty error"];
    v19 = v36[5];
    v36[5] = v18;
  }

  if (error)
  {
    v20 = v41;
    if (!v41)
    {
      v20 = v36[5];
    }

    *error = v20;
  }

  v21 = +[CMLLog client];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = NSStringFromSelector(a2);
    v23 = v30[5] != 0;
    v24 = v36[5];
    *buf = 138543874;
    v43 = v22;
    v44 = 1024;
    v45 = v23;
    v46 = 2114;
    v47 = v24;
    _os_log_impl(&dword_224E26000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Request complete, encryptedData(%d) error:%{public}@", buf, 0x1Cu);
  }

  v25 = v30[5];
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);

  return v25;
}

void __85__CMLSimilarityClient_encryptDifferentiallyPrivateFakes_shardIndex_shardCount_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Received response, encrypted(%d) error:%{public}@", &v13, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:910 underlyingError:v7 description:@"Unable to encrypt batch of elements"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)encryptBatchOfElements:(id)elements shardIndices:(id)indices error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  indicesCopy = indices;
  v38 = 0;
  connection = [(CMLSimilarityClient *)self connection];
  v12 = [CMLXPC syncProxyToConnection:connection error:&v38];

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__0;
  v36 = __Block_byref_object_dispose__0;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  v13 = +[CMLLog client];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 138543362;
    v40 = v14;
    _os_log_impl(&dword_224E26000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending request", buf, 0xCu);
  }

  clientConfig = [(CMLSimilarityClient *)self clientConfig];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __65__CMLSimilarityClient_encryptBatchOfElements_shardIndices_error___block_invoke;
  v25[3] = &unk_278541A50;
  v25[4] = &v26;
  v25[5] = &v32;
  v25[6] = a2;
  [v12 encryptBatchOfElements:elementsCopy shardIndices:indicesCopy clientConfig:clientConfig reply:v25];

  if (!v27[5] && !v33[5])
  {
    v16 = [CMLError errorWithCode:901 description:@"Server returns nil instead of encrypted elements data with empty error"];
    v17 = v33[5];
    v33[5] = v16;
  }

  if (error)
  {
    v18 = v38;
    if (!v38)
    {
      v18 = v33[5];
    }

    *error = v18;
  }

  v19 = +[CMLLog client];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = NSStringFromSelector(a2);
    v21 = v27[5] != 0;
    v22 = v33[5];
    *buf = 138543874;
    v40 = v20;
    v41 = 1024;
    v42 = v21;
    v43 = 2114;
    v44 = v22;
    _os_log_impl(&dword_224E26000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Request complete, encryptedData(%d) error:%{public}@", buf, 0x1Cu);
  }

  v23 = v27[5];
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);

  return v23;
}

void __65__CMLSimilarityClient_encryptBatchOfElements_shardIndices_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Received response, encrypted(%d) error:%{public}@", &v13, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:900 underlyingError:v7 description:@"Unable to encrypt batch of elements"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)decryptBatchOfSimilarityScores:(id)scores error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  scoresCopy = scores;
  v35 = 0;
  connection = [(CMLSimilarityClient *)self connection];
  v9 = [CMLXPC syncProxyToConnection:connection error:&v35];

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__0;
  v33 = __Block_byref_object_dispose__0;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v10 = +[CMLLog client];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 138543362;
    v37 = v11;
    _os_log_impl(&dword_224E26000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  clientConfig = [(CMLSimilarityClient *)self clientConfig];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __60__CMLSimilarityClient_decryptBatchOfSimilarityScores_error___block_invoke;
  v22[3] = &unk_278541A28;
  v22[4] = &v23;
  v22[5] = &v29;
  v22[6] = a2;
  [v9 decryptBatchOfSimilarityScores:scoresCopy clientConfig:clientConfig reply:v22];

  if (!v24[5] && !v30[5])
  {
    v13 = [CMLError errorWithCode:1001 description:@"Server returns nil instead of batch of decrypted scores with empty error"];
    v14 = v30[5];
    v30[5] = v13;
  }

  if (error)
  {
    v15 = v35;
    if (!v35)
    {
      v15 = v30[5];
    }

    *error = v15;
  }

  v16 = +[CMLLog client];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    v18 = v24[5] != 0;
    v19 = v30[5];
    *buf = 138543874;
    v37 = v17;
    v38 = 1024;
    v39 = v18;
    v40 = 2114;
    v41 = v19;
    _os_log_impl(&dword_224E26000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Request complete, scores(%d) error:%{public}@", buf, 0x1Cu);
  }

  v20 = v24[5];
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);

  return v20;
}

void __60__CMLSimilarityClient_decryptBatchOfSimilarityScores_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, scores(%d), error:%{public}@", &v13, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:1000 underlyingError:v7 description:@"Unable to decrypt batch of similarity scores"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)asyncResponseSimilarityScoresForElements:(id)elements shardIndex:(unint64_t)index error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCABB0];
  elementsCopy = elements;
  v10 = [v8 numberWithUnsignedInteger:index];
  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [(CMLSimilarityClient *)self asyncResponseSimilarityScoresForElements:elementsCopy shardIndices:v11 error:error];

  return v12;
}

- (id)asyncResponseSimilarityScoresForElements:(id)elements shardIndices:(id)indices error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  indicesCopy = indices;
  v32 = 0;
  connection = [(CMLSimilarityClient *)self connection];
  v12 = [CMLXPC syncProxyToConnection:connection error:&v32];

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v13 = +[CMLLog client];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 138543362;
    v34 = v14;
    _os_log_impl(&dword_224E26000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  clientConfig = [(CMLSimilarityClient *)self clientConfig];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __83__CMLSimilarityClient_asyncResponseSimilarityScoresForElements_shardIndices_error___block_invoke;
  v19[3] = &unk_278541A78;
  v19[4] = &v20;
  v19[5] = &v26;
  v19[6] = a2;
  [v12 asyncResponseSimilarityScoresForElements:elementsCopy shardIndices:indicesCopy clientConfig:clientConfig reply:v19];

  if (error)
  {
    v16 = v32;
    if (!v32)
    {
      v16 = v27[5];
    }

    *error = v16;
  }

  v17 = v21[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v17;
}

void __83__CMLSimilarityClient_asyncResponseSimilarityScoresForElements_shardIndices_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v15 = 2112;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, asyncResponseId(%@) error:%{public}@", &v13, 0x20u);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:602 underlyingError:v7 description:@"Unable to calculate similarity scores for element with async response due to errors"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (void)initWithClientConfig:(uint64_t)a1 dispatchQueue:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_224E26000, a2, OS_LOG_TYPE_ERROR, "could not create connection to %@", &v2, 0xCu);
}

@end