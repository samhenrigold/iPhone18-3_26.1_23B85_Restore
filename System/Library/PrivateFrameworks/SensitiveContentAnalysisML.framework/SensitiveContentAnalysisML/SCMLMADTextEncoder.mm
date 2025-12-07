@interface SCMLMADTextEncoder
+ (id)getServiceWithError:(id *)error;
+ (id)newRequestWithError:(id *)error withVersion:(unint64_t)version;
- (SCMLMADTextEncoder)initWithError:(id *)error;
- (void)embedTextAsynchronously:(id)asynchronously version:(unint64_t)version completionHandler:(id)handler;
@end

@implementation SCMLMADTextEncoder

+ (id)newRequestWithError:(id *)error withVersion:(unint64_t)version
{
  if (!getMADTextEmbeddingRequestClass())
  {
    if (error)
    {
      v9 = scml::error(0x15u, "failed to get MADTextEmbeddingRequest class", 43);
LABEL_12:
      v8 = 0;
      *error = v9;
      return v8;
    }

    return 0;
  }

  v6 = objc_alloc(getMADTextEmbeddingRequestClass());
  if (!v6)
  {
    if (error)
    {
      v10 = "failed to alloc MADTextEmbeddingRequest";
      v11 = 39;
LABEL_11:
      v9 = scml::error(0x15u, v10, v11);
      goto LABEL_12;
    }

    return 0;
  }

  v7 = v6;
  v8 = [v7 init];

  if (!v8)
  {
    if (error)
    {
      v10 = "failed to init MADTextEmbeddingRequest";
      v11 = 38;
      goto LABEL_11;
    }

    return 0;
  }

  [v8 setVersion:toMADUnifiedEmbeddingVersion(version)];
  [v8 setComputeThreshold:1];
  return v8;
}

+ (id)getServiceWithError:(id *)error
{
  if (getMADServiceClass())
  {
    service = [getMADServiceClass() service];
  }

  else if (error)
  {
    v5 = scml::error(0x15u, "failed to get MADService class", 30);
    v6 = v5;
    service = 0;
    *error = v5;
  }

  else
  {
    service = 0;
  }

  return service;
}

- (SCMLMADTextEncoder)initWithError:(id *)error
{
  v8.receiver = self;
  v8.super_class = SCMLMADTextEncoder;
  v4 = [(SCMLMADTextEncoder *)&v8 init];
  if (v4)
  {
    v5 = [SCMLMADTextEncoder getServiceWithError:error];
    service = v4->_service;
    v4->_service = v5;

    if (!v4->_service)
    {

      return 0;
    }
  }

  return v4;
}

- (void)embedTextAsynchronously:(id)asynchronously version:(unint64_t)version completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x1E69E9840];
  asynchronouslyCopy = asynchronously;
  handlerCopy = handler;
  v18 = 0;
  v10 = [SCMLMADTextEncoder newRequestWithError:&v18 withVersion:version];
  v11 = v18;
  if (v10)
  {
    v20[0] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    service = self->_service;
    v19 = asynchronouslyCopy;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__SCMLMADTextEncoder_embedTextAsynchronously_version_completionHandler___block_invoke;
    v15[3] = &unk_1E7EB3BD0;
    v16 = v10;
    v17 = handlerCopy;
    [(MADService *)service performRequests:v12 text:v14 identifier:0 completionHandler:v15];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v11);
  }
}

void __72__SCMLMADTextEncoder_embedTextAsynchronously_version_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [*(a1 + 32) embeddingResults];
  v6 = [v5 objectAtIndexedSubscript:0];

  v7 = [v6 embedding];
  if (v7)
  {
    v8 = +[SCMLLog textAnalyzer];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v19 = [v7 type];
      v20 = [v7 count];
      v21 = [v7 shape];
      v22 = [v21 componentsJoinedByString:{@", "}];
      v23[0] = 67109634;
      v23[1] = v19;
      v24 = 1024;
      v25 = v20;
      v26 = 2112;
      v27 = v22;
      _os_log_debug_impl(&dword_1B8A3C000, v8, OS_LOG_TYPE_DEBUG, "Unified text embedding type=%d count=%d shape=[%@]", v23, 0x18u);
    }

    v9 = toSCMLMADEmbeddingType([v7 type]);
    v10 = [SCMLMADEmbeddingResult alloc];
    v11 = [v7 data];
    v12 = [v7 shape];
    v13 = [v6 bias];
    v14 = [v6 scale];
    v15 = [(SCMLMADEmbeddingResult *)v10 initWithType:v9 data:v11 shape:v12 bias:v13 scale:v14];

    (*(*(a1 + 40) + 16))();
  }

  else if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v16 = [*(a1 + 32) error];

    if (v16)
    {
      v17 = *(a1 + 40);
      v18 = [*(a1 + 32) error];
      (*(v17 + 16))(v17, 0, v18);
    }

    else
    {
      v18 = scml::error(0x15u, "Failed to compute bridge embedding", 34);
      (*(*(a1 + 40) + 16))();
    }
  }
}

@end