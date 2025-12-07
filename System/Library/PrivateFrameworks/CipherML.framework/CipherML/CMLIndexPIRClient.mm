@interface CMLIndexPIRClient
- (id)constructPIRBatchRequestWithIndices:(id)indices error:(id *)error;
- (id)constructPIRRequestWithIndex:(unint64_t)index error:(id *)error;
- (id)dataByIndex:(unint64_t)index error:(id *)error;
- (id)dataByIndices:(id)indices error:(id *)error;
- (id)decryptPIRBatchResponse:(id)response indices:(id)indices error:(id *)error;
- (id)decryptPIRResponse:(id)response index:(unint64_t)index error:(id *)error;
- (void)requestDataByIndex:(unint64_t)index completionHandler:(id)handler;
- (void)requestDataByIndices:(id)indices completionHandler:(id)handler;
@end

@implementation CMLIndexPIRClient

- (void)requestDataByIndex:(unint64_t)index completionHandler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__CMLIndexPIRClient_requestDataByIndex_completionHandler___block_invoke;
  aBlock[3] = &unk_2785419B0;
  v8 = handlerCopy;
  v26 = v8;
  v9 = _Block_copy(aBlock);
  connection = [(CMLPIRClient *)self connection];
  dispatchQueue = [(CMLPIRClient *)self dispatchQueue];
  v12 = [CMLXPC asyncProxyToConnection:connection dispatchQueue:dispatchQueue errorHandler:v9];

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __58__CMLIndexPIRClient_requestDataByIndex_completionHandler___block_invoke_2;
  v21 = &unk_278541C08;
  v24 = a2;
  selfCopy = self;
  v13 = v8;
  v23 = v13;
  v14 = _Block_copy(&v18);
  v15 = [CMLLog client:v18];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(a2);
    *buf = 138543362;
    v28 = v16;
    _os_log_impl(&dword_224E26000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  clientConfig = [(CMLPIRClient *)self clientConfig];
  [v12 requestDataByIndex:index clientConfig:clientConfig reply:v14];
}

void __58__CMLIndexPIRClient_requestDataByIndex_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, success(%d) error:%{public}@", buf, 0x1Cu);
  }

  if (v6)
  {
    v9 = [CMLError errorWithCode:300 underlyingError:v6 description:@"Unable to request data by index"];
  }

  else
  {
    v9 = 0;
  }

  v10 = [*(a1 + 32) dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CMLIndexPIRClient_requestDataByIndex_completionHandler___block_invoke_60;
  block[3] = &unk_2785419D8;
  v11 = *(a1 + 40);
  v16 = v9;
  v17 = v11;
  v15 = v5;
  v12 = v9;
  v13 = v5;
  dispatch_async(v10, block);
}

- (void)requestDataByIndices:(id)indices completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__CMLIndexPIRClient_requestDataByIndices_completionHandler___block_invoke;
  aBlock[3] = &unk_2785419B0;
  v8 = handlerCopy;
  v27 = v8;
  indicesCopy = indices;
  v10 = _Block_copy(aBlock);
  connection = [(CMLPIRClient *)self connection];
  dispatchQueue = [(CMLPIRClient *)self dispatchQueue];
  v13 = [CMLXPC asyncProxyToConnection:connection dispatchQueue:dispatchQueue errorHandler:v10];

  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __60__CMLIndexPIRClient_requestDataByIndices_completionHandler___block_invoke_2;
  v22 = &unk_278541A00;
  v25 = a2;
  selfCopy = self;
  v14 = v8;
  v24 = v14;
  v15 = _Block_copy(&v19);
  v16 = [CMLLog client:v19];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    *buf = 138543362;
    v29 = v17;
    _os_log_impl(&dword_224E26000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  clientConfig = [(CMLPIRClient *)self clientConfig];
  [v13 requestDataByIndices:indicesCopy clientConfig:clientConfig reply:v15];
}

void __60__CMLIndexPIRClient_requestDataByIndices_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  v8 = +[CMLLog client];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(*(a1 + 48));
    *buf = 138543874;
    v20 = v9;
    v21 = 2048;
    v22 = v7;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, results(%lu), error:%{public}@", buf, 0x20u);
  }

  if (v6)
  {
    v10 = [CMLError errorWithCode:301 underlyingError:v6 description:@"Unable to request data by indices batch"];
  }

  else
  {
    v10 = 0;
  }

  v11 = [*(a1 + 32) dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CMLIndexPIRClient_requestDataByIndices_completionHandler___block_invoke_65;
  block[3] = &unk_2785419D8;
  v12 = *(a1 + 40);
  v17 = v10;
  v18 = v12;
  v16 = v5;
  v13 = v10;
  v14 = v5;
  dispatch_async(v11, block);
}

- (id)dataByIndex:(unint64_t)index error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  v30 = 0;
  connection = [(CMLPIRClient *)self connection];
  v9 = [CMLXPC syncProxyToConnection:connection error:&v30];

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
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __39__CMLIndexPIRClient_dataByIndex_error___block_invoke;
  v17[3] = &unk_278541A50;
  v17[5] = &v24;
  v17[6] = a2;
  v17[4] = &v18;
  v10 = _Block_copy(v17);
  v11 = +[CMLLog client];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138543362;
    v32 = v12;
    _os_log_impl(&dword_224E26000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  clientConfig = [(CMLPIRClient *)self clientConfig];
  [v9 requestDataByIndex:index clientConfig:clientConfig reply:v10];

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

void __39__CMLIndexPIRClient_dataByIndex_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, data(%d) error:%{public}@", &v13, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:300 underlyingError:v7 description:@"Unable to request data by index"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)dataByIndices:(id)indices error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  indicesCopy = indices;
  v30 = 0;
  connection = [(CMLPIRClient *)self connection];
  v9 = [CMLXPC syncProxyToConnection:connection error:&v30];

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
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __41__CMLIndexPIRClient_dataByIndices_error___block_invoke;
  v17[3] = &unk_278541A28;
  v17[5] = &v24;
  v17[6] = a2;
  v17[4] = &v18;
  v10 = _Block_copy(v17);
  v11 = +[CMLLog client];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138543362;
    v32 = v12;
    _os_log_impl(&dword_224E26000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  clientConfig = [(CMLPIRClient *)self clientConfig];
  [v9 requestDataByIndices:indicesCopy clientConfig:clientConfig reply:v10];

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

void __41__CMLIndexPIRClient_dataByIndices_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = [v6 count];
  v9 = +[CMLLog client];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(*(a1 + 48));
    v14 = 138543874;
    v15 = v10;
    v16 = 2048;
    v17 = v8;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_224E26000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, results(%lu) error:%{public}@", &v14, 0x20u);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v11 = [CMLError errorWithCode:301 underlyingError:v7 description:@"Unable to request data by indices batch"];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

- (id)constructPIRRequestWithIndex:(unint64_t)index error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  v30 = 0;
  connection = [(CMLPIRClient *)self connection];
  v9 = [CMLXPC syncProxyToConnection:connection error:&v30];

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
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __56__CMLIndexPIRClient_constructPIRRequestWithIndex_error___block_invoke;
  v17[3] = &unk_278541A50;
  v17[5] = &v24;
  v17[6] = a2;
  v17[4] = &v18;
  v10 = _Block_copy(v17);
  v11 = +[CMLLog client];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138543362;
    v32 = v12;
    _os_log_impl(&dword_224E26000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  clientConfig = [(CMLPIRClient *)self clientConfig];
  [v9 constructPIRRequestWithIndex:index clientConfig:clientConfig reply:v10];

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

void __56__CMLIndexPIRClient_constructPIRRequestWithIndex_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, data(%d) error:%{public}@", &v13, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:302 underlyingError:v7 description:@"Unable to create PIR request with index due to errors"];
  }

  else
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v10 = [CMLError errorWithCode:303 description:@"Unable to create PIR request with index due to empty response"];
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

LABEL_7:
}

- (id)constructPIRBatchRequestWithIndices:(id)indices error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  indicesCopy = indices;
  v30 = 0;
  connection = [(CMLPIRClient *)self connection];
  v9 = [CMLXPC syncProxyToConnection:connection error:&v30];

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
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__CMLIndexPIRClient_constructPIRBatchRequestWithIndices_error___block_invoke;
  v17[3] = &unk_278541A50;
  v17[5] = &v24;
  v17[6] = a2;
  v17[4] = &v18;
  v10 = _Block_copy(v17);
  v11 = +[CMLLog client];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138543362;
    v32 = v12;
    _os_log_impl(&dword_224E26000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  clientConfig = [(CMLPIRClient *)self clientConfig];
  [v9 constructPIRBatchRequestWithIndices:indicesCopy clientConfig:clientConfig reply:v10];

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

void __63__CMLIndexPIRClient_constructPIRBatchRequestWithIndices_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, data(%d) error:%{public}@", &v13, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:304 underlyingError:v7 description:@"Unable to create PIR request with batch of indices due to errors"];
  }

  else
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v10 = [CMLError errorWithCode:305 description:@"Unable to create PIR request with batch of indices due to empty response"];
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

LABEL_7:
}

- (id)decryptPIRResponse:(id)response index:(unint64_t)index error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v32 = 0;
  connection = [(CMLPIRClient *)self connection];
  v11 = [CMLXPC syncProxyToConnection:connection error:&v32];

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3;
  v30 = __Block_byref_object_dispose__3;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__CMLIndexPIRClient_decryptPIRResponse_index_error___block_invoke;
  v19[3] = &unk_278541A50;
  v19[5] = &v26;
  v19[6] = a2;
  v19[4] = &v20;
  v12 = _Block_copy(v19);
  v13 = +[CMLLog client];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 138543362;
    v34 = v14;
    _os_log_impl(&dword_224E26000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  clientConfig = [(CMLPIRClient *)self clientConfig];
  [v11 decryptPIRResponse:responseCopy index:index clientConfig:clientConfig reply:v12];

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

void __52__CMLIndexPIRClient_decryptPIRResponse_index_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, data(%d) error:%{public}@", &v13, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:306 underlyingError:v7 description:@"Unable to decrypt PIR response with index due to errors"];
  }

  else
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v10 = [CMLError errorWithCode:307 description:@"Unable to decrypt PIR response with index due to empty response"];
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

LABEL_7:
}

- (id)decryptPIRBatchResponse:(id)response indices:(id)indices error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  indicesCopy = indices;
  v33 = 0;
  connection = [(CMLPIRClient *)self connection];
  v12 = [CMLXPC syncProxyToConnection:connection error:&v33];

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3;
  v31 = __Block_byref_object_dispose__3;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __59__CMLIndexPIRClient_decryptPIRBatchResponse_indices_error___block_invoke;
  v20[3] = &unk_278541A28;
  v20[5] = &v27;
  v20[6] = a2;
  v20[4] = &v21;
  v13 = _Block_copy(v20);
  v14 = +[CMLLog client];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    *buf = 138543362;
    v35 = v15;
    _os_log_impl(&dword_224E26000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  clientConfig = [(CMLPIRClient *)self clientConfig];
  [v12 decryptPIRBatchResponse:responseCopy indices:indicesCopy clientConfig:clientConfig reply:v13];

  if (error)
  {
    v17 = v33;
    if (!v33)
    {
      v17 = v28[5];
    }

    *error = v17;
  }

  v18 = v22[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v18;
}

void __59__CMLIndexPIRClient_decryptPIRBatchResponse_indices_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = [v6 count];
  v9 = +[CMLLog client];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(*(a1 + 48));
    v14 = 138543874;
    v15 = v10;
    v16 = 2048;
    v17 = v8;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_224E26000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, results(%lu) error:%{public}@", &v14, 0x20u);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v11 = [CMLError errorWithCode:308 underlyingError:v7 description:@"Unable to decrypt PIR batch response with indices due to errors"];
  }

  else
  {
    if (*(*(*(a1 + 32) + 8) + 40))
    {
      goto LABEL_7;
    }

    v11 = [CMLError errorWithCode:309 description:@"Unable to decrypt PIR batch response with indices due to empty response"];
  }

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

LABEL_7:
}

@end