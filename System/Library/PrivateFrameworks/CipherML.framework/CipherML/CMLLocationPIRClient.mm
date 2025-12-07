@interface CMLLocationPIRClient
- (id)constructPIRRequestWithLatitude:(double)latitude longitude:(double)longitude error:(id *)error;
- (id)dataByLatitude:(double)latitude longitude:(double)longitude error:(id *)error;
- (id)decryptPIRResponse:(id)response latitude:(double)latitude longitude:(double)longitude error:(id *)error;
- (void)requestDataByLatitude:(double)latitude longitude:(double)longitude completionHandler:(id)handler;
@end

@implementation CMLLocationPIRClient

- (void)requestDataByLatitude:(double)latitude longitude:(double)longitude completionHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__CMLLocationPIRClient_requestDataByLatitude_longitude_completionHandler___block_invoke;
  aBlock[3] = &unk_2785419B0;
  v10 = handlerCopy;
  v28 = v10;
  v11 = _Block_copy(aBlock);
  connection = [(CMLPIRClient *)self connection];
  dispatchQueue = [(CMLPIRClient *)self dispatchQueue];
  v14 = [CMLXPC asyncProxyToConnection:connection dispatchQueue:dispatchQueue errorHandler:v11];

  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __74__CMLLocationPIRClient_requestDataByLatitude_longitude_completionHandler___block_invoke_2;
  v23 = &unk_278541C08;
  v26 = a2;
  selfCopy = self;
  v15 = v10;
  v25 = v15;
  v16 = _Block_copy(&v20);
  v17 = [CMLLog client:v20];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = NSStringFromSelector(a2);
    *buf = 138543362;
    v30 = v18;
    _os_log_impl(&dword_224E26000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  clientConfig = [(CMLPIRClient *)self clientConfig];
  [v14 requestDataByLatitude:clientConfig longitude:v16 clientConfig:latitude reply:longitude];
}

void __74__CMLLocationPIRClient_requestDataByLatitude_longitude_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, data(%d) error:%{public}@", buf, 0x1Cu);
  }

  if (v6)
  {
    v9 = [CMLError errorWithCode:500 underlyingError:v6 description:@"Unable to request data by location"];
  }

  else
  {
    v9 = 0;
  }

  v10 = [*(a1 + 32) dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CMLLocationPIRClient_requestDataByLatitude_longitude_completionHandler___block_invoke_190;
  block[3] = &unk_2785419D8;
  v11 = *(a1 + 40);
  v16 = v9;
  v17 = v11;
  v15 = v5;
  v12 = v9;
  v13 = v5;
  dispatch_async(v10, block);
}

- (id)dataByLatitude:(double)latitude longitude:(double)longitude error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
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
  v19[2] = __55__CMLLocationPIRClient_dataByLatitude_longitude_error___block_invoke;
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
  [v11 requestDataByLatitude:clientConfig longitude:v12 clientConfig:latitude reply:longitude];

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

void __55__CMLLocationPIRClient_dataByLatitude_longitude_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v10 = [CMLError errorWithCode:500 underlyingError:v7 description:@"Unable to request data by location"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)constructPIRRequestWithLatitude:(double)latitude longitude:(double)longitude error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
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
  v19[2] = __72__CMLLocationPIRClient_constructPIRRequestWithLatitude_longitude_error___block_invoke;
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
  [v11 constructPIRRequestWithLatitude:clientConfig longitude:v12 clientConfig:latitude reply:longitude];

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

void __72__CMLLocationPIRClient_constructPIRRequestWithLatitude_longitude_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v10 = [CMLError errorWithCode:501 underlyingError:v7 description:@"Unable to create PIR request with location due to errors"];
  }

  else
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v10 = [CMLError errorWithCode:502 description:@"Unable to create PIR request with location due to empty response"];
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

LABEL_7:
}

- (id)decryptPIRResponse:(id)response latitude:(double)latitude longitude:(double)longitude error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v34 = 0;
  connection = [(CMLPIRClient *)self connection];
  v13 = [CMLXPC syncProxyToConnection:connection error:&v34];

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __68__CMLLocationPIRClient_decryptPIRResponse_latitude_longitude_error___block_invoke;
  v21[3] = &unk_278541A50;
  v21[5] = &v28;
  v21[6] = a2;
  v21[4] = &v22;
  v14 = _Block_copy(v21);
  v15 = +[CMLLog client];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(a2);
    *buf = 138543362;
    v36 = v16;
    _os_log_impl(&dword_224E26000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  clientConfig = [(CMLPIRClient *)self clientConfig];
  [v13 decryptPIRResponse:responseCopy latitude:clientConfig longitude:v14 clientConfig:latitude reply:longitude];

  if (error)
  {
    v18 = v34;
    if (!v34)
    {
      v18 = v29[5];
    }

    *error = v18;
  }

  v19 = v23[5];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v19;
}

void __68__CMLLocationPIRClient_decryptPIRResponse_latitude_longitude_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v10 = [CMLError errorWithCode:503 underlyingError:v7 description:@"Unable to decrypt PIR response with location due to errors"];
  }

  else
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v10 = [CMLError errorWithCode:504 description:@"Unable to decrypt PIR response with location due to empty response"];
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

LABEL_7:
}

@end