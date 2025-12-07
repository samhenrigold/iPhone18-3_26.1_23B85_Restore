@interface _PSZkwUtils
+ (id)clientModelMismatchErrorResponseForRequest:(id)request requestedClientModelId:(id)id actualClientModelId:(id)modelId;
@end

@implementation _PSZkwUtils

+ (id)clientModelMismatchErrorResponseForRequest:(id)request requestedClientModelId:(id)id actualClientModelId:(id)modelId
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AEC0];
  requestCopy = request;
  modelId = [v7 stringWithFormat:@"Wrong delegate for request. Expected %@ but found %@.", id, modelId];
  v10 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [_PSZkwUtils clientModelMismatchErrorResponseForRequest:modelId requestedClientModelId:v10 actualClientModelId:?];
  }

  v11 = objc_alloc(getATXSuggestionRequestResponseClass());
  v12 = MEMORY[0x1E696ABC0];
  getATXSuggestionRequestResponseClass();
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v19 = *MEMORY[0x1E696A578];
  v20[0] = modelId;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v16 = [v12 errorWithDomain:v14 code:5 userInfo:v15];
  v17 = [v11 initWithSuggestions:0 feedbackMetadata:0 originalRequest:requestCopy responseCode:3 error:v16];

  return v17;
}

+ (void)clientModelMismatchErrorResponseForRequest:(uint64_t)a1 requestedClientModelId:(NSObject *)a2 actualClientModelId:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Client model mismatch when fetching ZKW suggestion: %@", &v2, 0xCu);
}

@end