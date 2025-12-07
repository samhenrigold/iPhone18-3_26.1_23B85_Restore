@interface ATXDocumentPredictionClient
+ (BOOL)_isDemoModeEnabled;
+ (id)_getDocumentsForDemoMode;
+ (void)categoriesForRequest:(id)request withReply:(id)reply;
- (id)zkwPredictionsForRequest:(id)request error:(id *)error;
@end

@implementation ATXDocumentPredictionClient

+ (void)categoriesForRequest:(id)request withReply:(id)reply
{
  if (reply)
  {
    v4 = MEMORY[0x1E696ABC0];
    replyCopy = reply;
    v6 = [v4 errorWithDomain:@"com.apple.ATXPredictionErrorDomain" code:4 userInfo:0];
    replyCopy[2](replyCopy, 0, v6);
  }
}

- (id)zkwPredictionsForRequest:(id)request error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ATXPredictionErrorDomain" code:4 userInfo:0];
  }

  return 0;
}

+ (BOOL)_isDemoModeEnabled
{
  isInternalBuild = [MEMORY[0x1E69C5CF8] isInternalBuild];
  if (isInternalBuild)
  {
    keyExistsAndHasValidFormat = 0;
    LOBYTE(isInternalBuild) = CFPreferencesGetAppBooleanValue(@"SpotlightPlusDocumentsDemoModeEnabled", *MEMORY[0x1E698B030], &keyExistsAndHasValidFormat) != 0;
  }

  return isInternalBuild;
}

+ (id)_getDocumentsForDemoMode
{
  v26 = *MEMORY[0x1E69E9840];
  _demoDocumentsPath = [self _demoDocumentsPath];
  v21 = 0;
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:_demoDocumentsPath options:0 error:&v21];
  v4 = v21;
  v5 = v4;
  if (v3)
  {
    v20 = v4;
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:&v20];
    v7 = v20;

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v9 = [v6 objectForKeyedSubscript:@"Recents"];
      v10 = [v6 objectForKeyedSubscript:@"Suggestions"];
      v11 = __atxlog_handle_document_predictor(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v23 = v9;
        v24 = 2112;
        v25 = v10;
        _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "[Demo] Recents: %@, Suggestions: %@", buf, 0x16u);
      }

      v12 = [v9 _pas_mappedArrayWithTransform:&__block_literal_global_107];
      v13 = [v10 _pas_mappedArrayWithTransform:&__block_literal_global_30_0];
      v14 = [objc_alloc(MEMORY[0x1E69C5D98]) initWithFirst:v13 second:v12];
    }

    else
    {
      v17 = __atxlog_handle_document_predictor(isKindOfClass);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[(ATXDocumentPredictionClient(Demo) *)v6];
      }

      v18 = objc_alloc(MEMORY[0x1E69C5D98]);
      v14 = [v18 initWithFirst:MEMORY[0x1E695E0F0] second:MEMORY[0x1E695E0F0]];
    }

    v5 = v7;
  }

  else
  {
    v15 = __atxlog_handle_document_predictor(v4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[(ATXDocumentPredictionClient(Demo) *)v5];
    }

    v16 = objc_alloc(MEMORY[0x1E69C5D98]);
    v14 = [v16 initWithFirst:MEMORY[0x1E695E0F0] second:MEMORY[0x1E695E0F0]];
  }

  return v14;
}

@end