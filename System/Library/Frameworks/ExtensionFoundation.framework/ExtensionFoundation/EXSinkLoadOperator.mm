@interface EXSinkLoadOperator
@end

@implementation EXSinkLoadOperator

void __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _EXDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke_126(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  isKindOfClass = a3;
  v7 = isKindOfClass;
  if (v5)
  {
    if (!isKindOfClass)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v8 = v5;
        v9 = [v8 resourceURL];
        v10 = v9;
        v5 = v8;
        if (v9)
        {
          objc_setAssociatedObject(v9, v8, v8, 0x301);
          v5 = v10;
        }
      }
    }

    v11 = _EXDefaultLog(isKindOfClass);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke_126_cold_1();
    }
  }

  else
  {
    v11 = _EXDefaultLog(isKindOfClass);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke_126_cold_2();
    }

    v5 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

void __88___EXSinkLoadOperator_loadPreviewImageWithCompletionHandler_expectedValueClass_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _EXDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(&dword_1847D1000, v0, OS_LOG_TYPE_ERROR, "Connection error: %{public}@", v1, 0xCu);
}

void __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke_126_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  v4 = 2114;
  v5 = v0;
  v6 = 2114;
  v7 = v1;
}

void __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke_126_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  v4[0] = 138543874;
  OUTLINED_FUNCTION_0_6();
  v5 = v0;
  v6 = v1;
  v7 = v2;
}

@end