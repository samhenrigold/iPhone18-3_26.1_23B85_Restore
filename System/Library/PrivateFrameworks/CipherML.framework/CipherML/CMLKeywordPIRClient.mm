@interface CMLKeywordPIRClient
- (id)asyncResponseDataByKeyword:(id)keyword error:(id *)error;
- (id)asyncResponseDataByKeywords:(id)keywords error:(id *)error;
- (id)constructPIRBatchRequestWithKeywords:(id)keywords shardIds:(id)ids error:(id *)error;
- (id)constructPIRRequestWithKeyword:(id)keyword withEvaluationKey:(BOOL)key shardId:(id)id error:(id *)error;
- (id)dataByKeyword:(id)keyword shardId:(id)id error:(id *)error;
- (id)dataByKeywords:(id)keywords shardIds:(id)ids error:(id *)error;
- (id)dataByStringKeyword:(id)keyword shardId:(id)id error:(id *)error;
- (id)dataByStringKeywords:(id)keywords error:(id *)error;
- (id)dataByStringKeywords:(id)keywords shardIds:(id)ids error:(id *)error;
- (id)decryptPIRBatchResponse:(id)response keywords:(id)keywords error:(id *)error;
- (id)decryptPIRResponse:(id)response keyword:(id)keyword shardId:(id)id error:(id *)error;
- (id)removeCachedEntriesByKeywords:(id)keywords error:(id *)error;
- (id)removeCachedEntriesByStringKeywords:(id)keywords error:(id *)error;
- (void)requestDataByKeyword:(id)keyword shardId:(id)id completionHandler:(id)handler;
- (void)requestDataByKeywords:(id)keywords shardIds:(id)ids completionHandler:(id)handler;
- (void)requestDataByStringKeyword:(id)keyword completionHandler:(id)handler;
- (void)requestDataByStringKeyword:(id)keyword shardId:(id)id completionHandler:(id)handler;
- (void)requestDataByStringKeywords:(id)keywords completionHandler:(id)handler;
- (void)requestDataByStringKeywords:(id)keywords shardIds:(id)ids completionHandler:(id)handler;
@end

@implementation CMLKeywordPIRClient

- (void)requestDataByStringKeyword:(id)keyword completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [keyword dataUsingEncoding:4];
  [(CMLKeywordPIRClient *)self requestDataByKeyword:v7 completionHandler:handlerCopy];
}

- (void)requestDataByStringKeyword:(id)keyword shardId:(id)id completionHandler:(id)handler
{
  handlerCopy = handler;
  idCopy = id;
  v10 = [keyword dataUsingEncoding:4];
  [(CMLKeywordPIRClient *)self requestDataByKeyword:v10 shardId:idCopy completionHandler:handlerCopy];
}

- (void)requestDataByStringKeywords:(id)keywords completionHandler:(id)handler
{
  v6 = MEMORY[0x277CBEB18];
  handlerCopy = handler;
  keywordsCopy = keywords;
  array = [v6 array];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__CMLKeywordPIRClient_requestDataByStringKeywords_completionHandler___block_invoke;
  v12[3] = &unk_278541C30;
  v13 = array;
  v10 = array;
  [keywordsCopy enumerateObjectsUsingBlock:v12];

  v11 = [v10 copy];
  [(CMLKeywordPIRClient *)self requestDataByKeywords:v11 completionHandler:handlerCopy];
}

void __69__CMLKeywordPIRClient_requestDataByStringKeywords_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dataUsingEncoding:4];
  [v2 addObject:v3];
}

- (void)requestDataByStringKeywords:(id)keywords shardIds:(id)ids completionHandler:(id)handler
{
  v8 = MEMORY[0x277CBEB18];
  handlerCopy = handler;
  idsCopy = ids;
  keywordsCopy = keywords;
  array = [v8 array];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__CMLKeywordPIRClient_requestDataByStringKeywords_shardIds_completionHandler___block_invoke;
  v14[3] = &unk_278541C30;
  v15 = array;
  v13 = array;
  [keywordsCopy enumerateObjectsUsingBlock:v14];

  [(CMLKeywordPIRClient *)self requestDataByKeywords:v13 shardIds:idsCopy completionHandler:handlerCopy];
}

void __78__CMLKeywordPIRClient_requestDataByStringKeywords_shardIds_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dataUsingEncoding:4];
  [v2 addObject:v3];
}

- (void)requestDataByKeyword:(id)keyword shardId:(id)id completionHandler:(id)handler
{
  v26[1] = *MEMORY[0x277D85DE8];
  keywordCopy = keyword;
  idCopy = id;
  handlerCopy = handler;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__3;
  v23[4] = __Block_byref_object_dispose__3;
  v24 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __70__CMLKeywordPIRClient_requestDataByKeyword_shardId_completionHandler___block_invoke;
  v19 = &unk_278541C58;
  v21 = v23;
  v12 = handlerCopy;
  v20 = v12;
  v22 = a2;
  v13 = _Block_copy(&v16);
  if (idCopy)
  {
    v26[0] = idCopy;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:{1, v16, v17, v18, v19}];
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  v25 = keywordCopy;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:{1, v16, v17, v18, v19}];
  [(CMLKeywordPIRClient *)self requestDataByKeywords:v15 shardIds:v14 completionHandler:v13];

  _Block_object_dispose(v23, 8);
}

void __70__CMLKeywordPIRClient_requestDataByKeyword_shardId_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 underlyingErrors];
    v8 = [v7 firstObject];
    v9 = [v6 description];
    v10 = [CMLError errorWithCode:400 underlyingError:v8 description:v9];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  if (v22 && [v22 count] == 1)
  {
    v13 = [v22 objectAtIndexedSubscript:0];
    v14 = [MEMORY[0x277CBEB68] null];

    if (v13 == v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = [v22 objectAtIndexedSubscript:0];
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = NSStringFromSelector(*(a1 + 48));
      v18 = [v16 stringWithFormat:@"%@ returned no result and no error", v17];

      v19 = [CMLError errorWithCode:400 underlyingError:v6 description:v18];
      v20 = *(*(a1 + 40) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)requestDataByKeywords:(id)keywords shardIds:(id)ids completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__CMLKeywordPIRClient_requestDataByKeywords_shardIds_completionHandler___block_invoke;
  aBlock[3] = &unk_2785419B0;
  v10 = handlerCopy;
  v30 = v10;
  idsCopy = ids;
  keywordsCopy = keywords;
  v13 = _Block_copy(aBlock);
  connection = [(CMLPIRClient *)self connection];
  dispatchQueue = [(CMLPIRClient *)self dispatchQueue];
  v16 = [CMLXPC asyncProxyToConnection:connection dispatchQueue:dispatchQueue errorHandler:v13];

  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __72__CMLKeywordPIRClient_requestDataByKeywords_shardIds_completionHandler___block_invoke_2;
  v25 = &unk_278541A00;
  v28 = a2;
  selfCopy = self;
  v17 = v10;
  v27 = v17;
  v18 = _Block_copy(&v22);
  v19 = [CMLLog client:v22];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = NSStringFromSelector(a2);
    *buf = 138543362;
    v32 = v20;
    _os_log_impl(&dword_224E26000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  clientConfig = [(CMLPIRClient *)self clientConfig];
  [v16 requestDataByKeywords:keywordsCopy shardIds:idsCopy clientConfig:clientConfig reply:v18];
}

void __72__CMLKeywordPIRClient_requestDataByKeywords_shardIds_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  v8 = +[CMLLog client];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(*(a1 + 48));
    *buf = 138543874;
    v22 = v9;
    v23 = 2048;
    v24 = v7;
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, results(%lu) error:%{public}@", buf, 0x20u);
  }

  if (!v5)
  {
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_10:
    v12 = [CMLError errorWithCode:401 description:@"requestDataByKeywords resulted in no results and no error"];
    goto LABEL_11;
  }

  v10 = [v5 count];
  if (!v6 && !v10)
  {
    goto LABEL_10;
  }

  if (v6)
  {
LABEL_9:
    v12 = [CMLError errorWithCode:401 underlyingError:v6 description:@"Unable to request data by keywords batch"];
LABEL_11:
    v11 = v12;
    goto LABEL_12;
  }

  v11 = 0;
LABEL_12:
  v13 = [*(a1 + 32) dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CMLKeywordPIRClient_requestDataByKeywords_shardIds_completionHandler___block_invoke_121;
  block[3] = &unk_2785419D8;
  v14 = *(a1 + 40);
  v19 = v11;
  v20 = v14;
  v18 = v5;
  v15 = v11;
  v16 = v5;
  dispatch_async(v13, block);
}

- (id)dataByStringKeyword:(id)keyword shardId:(id)id error:(id *)error
{
  idCopy = id;
  v9 = [keyword dataUsingEncoding:4];
  v10 = [(CMLKeywordPIRClient *)self dataByKeyword:v9 shardId:idCopy error:error];

  return v10;
}

- (id)dataByKeyword:(id)keyword shardId:(id)id error:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  keywordCopy = keyword;
  idCopy = id;
  v10 = idCopy;
  if (idCopy)
  {
    v24[0] = idCopy;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v23 = keywordCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v22 = 0;
  v13 = [(CMLKeywordPIRClient *)self dataByKeywords:v12 shardIds:v11 error:&v22];
  v14 = v22;

  if (error && v14)
  {
    underlyingErrors = [v14 underlyingErrors];
    firstObject = [underlyingErrors firstObject];
    v17 = [v14 description];
    *error = [CMLError errorWithCode:400 underlyingError:firstObject description:v17];
  }

  if (v13 && [v13 count] && (objc_msgSend(v13, "objectAtIndexedSubscript:", 0), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBEB68], "null"), v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v18 != v19))
  {
    v20 = [v13 objectAtIndexedSubscript:0];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)dataByStringKeywords:(id)keywords error:(id *)error
{
  v6 = MEMORY[0x277CBEB18];
  keywordsCopy = keywords;
  array = [v6 array];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__CMLKeywordPIRClient_dataByStringKeywords_error___block_invoke;
  v12[3] = &unk_278541C30;
  v13 = array;
  v9 = array;
  [keywordsCopy enumerateObjectsUsingBlock:v12];

  v10 = [(CMLKeywordPIRClient *)self dataByKeywords:v9 error:error];

  return v10;
}

void __50__CMLKeywordPIRClient_dataByStringKeywords_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dataUsingEncoding:4];
  [v2 addObject:v3];
}

- (id)dataByStringKeywords:(id)keywords shardIds:(id)ids error:(id *)error
{
  v8 = MEMORY[0x277CBEB18];
  idsCopy = ids;
  keywordsCopy = keywords;
  array = [v8 array];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__CMLKeywordPIRClient_dataByStringKeywords_shardIds_error___block_invoke;
  v15[3] = &unk_278541C30;
  v16 = array;
  v12 = array;
  [keywordsCopy enumerateObjectsUsingBlock:v15];

  v13 = [(CMLKeywordPIRClient *)self dataByKeywords:v12 shardIds:idsCopy error:error];

  return v13;
}

void __59__CMLKeywordPIRClient_dataByStringKeywords_shardIds_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dataUsingEncoding:4];
  [v2 addObject:v3];
}

- (id)dataByKeywords:(id)keywords shardIds:(id)ids error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  keywordsCopy = keywords;
  idsCopy = ids;
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
  v20[2] = __53__CMLKeywordPIRClient_dataByKeywords_shardIds_error___block_invoke;
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
  [v12 requestDataByKeywords:keywordsCopy shardIds:idsCopy clientConfig:clientConfig reply:v13];

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

void __53__CMLKeywordPIRClient_dataByKeywords_shardIds_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, results(%lu), error:%{public}@", &v14, 0x20u);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v11 = [CMLError errorWithCode:401 underlyingError:v7 description:@"Unable to request data by keywords batch"];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

- (id)removeCachedEntriesByStringKeywords:(id)keywords error:(id *)error
{
  v6 = MEMORY[0x277CBEB18];
  keywordsCopy = keywords;
  array = [v6 array];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__CMLKeywordPIRClient_removeCachedEntriesByStringKeywords_error___block_invoke;
  v12[3] = &unk_278541C30;
  v13 = array;
  v9 = array;
  [keywordsCopy enumerateObjectsUsingBlock:v12];

  v10 = [(CMLKeywordPIRClient *)self removeCachedEntriesByKeywords:v9 error:error];

  return v10;
}

void __65__CMLKeywordPIRClient_removeCachedEntriesByStringKeywords_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dataUsingEncoding:4];
  [v2 addObject:v3];
}

- (id)removeCachedEntriesByKeywords:(id)keywords error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  keywordsCopy = keywords;
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
  v17[2] = __59__CMLKeywordPIRClient_removeCachedEntriesByKeywords_error___block_invoke;
  v17[3] = &unk_278541C80;
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
  [v9 removeCachedEntriesByKeywords:keywordsCopy clientConfig:clientConfig reply:v10];

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

void __59__CMLKeywordPIRClient_removeCachedEntriesByKeywords_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[CMLLog client];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(*(a1 + 48));
    v14 = 138543874;
    v15 = v7;
    v16 = 2048;
    v17 = a2;
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&dword_224E26000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, removed (%ldl) entries, error:%{public}@", &v14, 0x20u);
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (v5)
  {
    v11 = [CMLError errorWithCode:412 underlyingError:v5 description:@"Unable to remove cached entries by keywords"];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

- (id)constructPIRRequestWithKeyword:(id)keyword withEvaluationKey:(BOOL)key shardId:(id)id error:(id *)error
{
  keyCopy = key;
  v39 = *MEMORY[0x277D85DE8];
  keywordCopy = keyword;
  idCopy = id;
  v36 = 0;
  connection = [(CMLPIRClient *)self connection];
  v14 = [CMLXPC syncProxyToConnection:connection error:&v36];

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __86__CMLKeywordPIRClient_constructPIRRequestWithKeyword_withEvaluationKey_shardId_error___block_invoke;
  v23[3] = &unk_278541A50;
  v23[5] = &v30;
  v23[6] = a2;
  v23[4] = &v24;
  v15 = _Block_copy(v23);
  v16 = +[CMLLog client];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    *buf = 138543362;
    v38 = v17;
    _os_log_impl(&dword_224E26000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  pirConfig = [(CMLPIRClient *)self pirConfig];
  clientConfig = [(CMLPIRClient *)self clientConfig];
  [v14 constructPIRRequestWithKeyword:keywordCopy withEvaluationKey:keyCopy shardId:idCopy pirConfig:pirConfig clientConfig:clientConfig reply:v15];

  if (error)
  {
    v20 = v36;
    if (!v36)
    {
      v20 = v31[5];
    }

    *error = v20;
  }

  v21 = v25[5];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v21;
}

void __86__CMLKeywordPIRClient_constructPIRRequestWithKeyword_withEvaluationKey_shardId_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, data(%d), error:%{public}@", &v13, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:402 underlyingError:v7 description:@"Unable to create PIR request with keyword due to errors"];
  }

  else
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v10 = [CMLError errorWithCode:403 description:@"Unable to create PIR request with keyword due to empty response"];
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

LABEL_7:
}

- (id)constructPIRBatchRequestWithKeywords:(id)keywords shardIds:(id)ids error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  keywordsCopy = keywords;
  idsCopy = ids;
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
  v20[2] = __75__CMLKeywordPIRClient_constructPIRBatchRequestWithKeywords_shardIds_error___block_invoke;
  v20[3] = &unk_278541A50;
  v20[5] = &v27;
  v20[6] = a2;
  v20[4] = &v21;
  v13 = _Block_copy(v20);
  if (!idsCopy)
  {
    idsCopy = MEMORY[0x277CBEBF8];
  }

  v14 = +[CMLLog client];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    *buf = 138543362;
    v35 = v15;
    _os_log_impl(&dword_224E26000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  clientConfig = [(CMLPIRClient *)self clientConfig];
  [v12 constructPIRBatchRequestWithKeywords:keywordsCopy shardIds:idsCopy clientConfig:clientConfig reply:v13];

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

void __75__CMLKeywordPIRClient_constructPIRBatchRequestWithKeywords_shardIds_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, data(%d), error:%{public}@", &v13, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:404 underlyingError:v7 description:@"Unable to create PIR request with batch of keywords due to errors"];
  }

  else
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v10 = [CMLError errorWithCode:405 description:@"Unable to create PIR request with batch of keywords due to empty response"];
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

LABEL_7:
}

- (id)decryptPIRResponse:(id)response keyword:(id)keyword shardId:(id)id error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  keywordCopy = keyword;
  idCopy = id;
  v36 = 0;
  connection = [(CMLPIRClient *)self connection];
  v15 = [CMLXPC syncProxyToConnection:connection error:&v36];

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __64__CMLKeywordPIRClient_decryptPIRResponse_keyword_shardId_error___block_invoke;
  v23[3] = &unk_278541A50;
  v23[5] = &v30;
  v23[6] = a2;
  v23[4] = &v24;
  v16 = _Block_copy(v23);
  v17 = +[CMLLog client];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = NSStringFromSelector(a2);
    *buf = 138543362;
    v38 = v18;
    _os_log_impl(&dword_224E26000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  clientConfig = [(CMLPIRClient *)self clientConfig];
  [v15 decryptPIRResponse:responseCopy keyword:keywordCopy shardId:idCopy clientConfig:clientConfig reply:v16];

  if (error)
  {
    v20 = v36;
    if (!v36)
    {
      v20 = v31[5];
    }

    *error = v20;
  }

  v21 = v25[5];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v21;
}

void __64__CMLKeywordPIRClient_decryptPIRResponse_keyword_shardId_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, data(%d), error:%{public}@", &v13, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:406 underlyingError:v7 description:@"Unable to decrypt PIR response with keyword and shardId due to errors"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)decryptPIRBatchResponse:(id)response keywords:(id)keywords error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  keywordsCopy = keywords;
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
  v20[2] = __62__CMLKeywordPIRClient_decryptPIRBatchResponse_keywords_error___block_invoke;
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
  [v12 decryptPIRBatchResponse:responseCopy keywords:keywordsCopy clientConfig:clientConfig reply:v13];

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

void __62__CMLKeywordPIRClient_decryptPIRBatchResponse_keywords_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v11 = [CMLError errorWithCode:408 underlyingError:v7 description:@"Unable to decrypt PIR response with batch of keywords due to errors"];
  }

  else
  {
    if (*(*(*(a1 + 32) + 8) + 40))
    {
      goto LABEL_7;
    }

    v11 = [CMLError errorWithCode:409 description:@"Unable to decrypt PIR response with batch of keywords due to empty response"];
  }

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

LABEL_7:
}

- (id)asyncResponseDataByKeyword:(id)keyword error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  keywordCopy = keyword;
  v15[0] = keywordCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v14 = 0;
  v8 = [(CMLKeywordPIRClient *)self asyncResponseDataByKeywords:v7 error:&v14];
  v9 = v14;

  if (error && v9)
  {
    underlyingErrors = [v9 underlyingErrors];
    firstObject = [underlyingErrors firstObject];
    v12 = [v9 description];
    *error = [CMLError errorWithCode:410 underlyingError:firstObject description:v12];
  }

  return v8;
}

- (id)asyncResponseDataByKeywords:(id)keywords error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  keywordsCopy = keywords;
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
  v17[2] = __57__CMLKeywordPIRClient_asyncResponseDataByKeywords_error___block_invoke;
  v17[3] = &unk_278541A78;
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
  [v9 asyncResponseDataByKeywords:keywordsCopy clientConfig:clientConfig reply:v10];

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

void __57__CMLKeywordPIRClient_asyncResponseDataByKeywords_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v10 = [CMLError errorWithCode:411 underlyingError:v7 description:@"Unable to request data by keywords batch with async response"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

@end