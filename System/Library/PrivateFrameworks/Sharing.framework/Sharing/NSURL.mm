@interface NSURL
@end

@implementation NSURL

void __79__NSURL_Sharing__coordinateReadingWithSaveToTempDir_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    if (*(a1 + 48) == 1)
    {
      v6 = [MEMORY[0x1E696AC08] defaultManager];
      v7 = [v4 lastPathComponent];
      v8 = [v6 temporaryDirectory];
      v19 = 0;
      v9 = [v6 URLForDirectory:99 inDomain:1 appropriateForURL:v8 create:1 error:&v19];
      v10 = v19;

      if (!v9)
      {
        v12 = utilities_log(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          __79__NSURL_Sharing__coordinateReadingWithSaveToTempDir_options_completionHandler___block_invoke_cold_1(v10, v12);
        }

        v9 = [v6 temporaryDirectory];
      }

      v13 = [v9 URLByAppendingPathComponent:v7];
      v18 = v10;
      v14 = [v6 copyItemAtURL:v4 toURL:v13 error:&v18];
      v15 = v18;

      if (v14)
      {
        v5 = v13;
        v17 = v4;
      }

      else
      {
        v17 = utilities_log(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __79__NSURL_Sharing__coordinateReadingWithSaveToTempDir_options_completionHandler___block_invoke_cold_2(v4, v15, v17);
        }

        v5 = v4;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void __79__NSURL_Sharing__coordinateReadingWithSaveToTempDir_options_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "Failed to create a temporary directory with error: %@", &v2, 0xCu);
}

void __79__NSURL_Sharing__coordinateReadingWithSaveToTempDir_options_completionHandler___block_invoke_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1A9662000, log, OS_LOG_TYPE_ERROR, "Failed to copy file %@ to temporary directory with error %@", &v3, 0x16u);
}

@end