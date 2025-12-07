@interface NSItemProvider
@end

@implementation NSItemProvider

void __75__NSItemProvider_Sharing__loadURLClassWithPreviousError_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E6983030];
  v4 = a2;
  v5 = [v3 identifier];
  (*(v2 + 16))(v2, v4, v5, 0);
}

void __77__NSItemProvider_Sharing__loadFileURLRequiringOpenInPlace_completionHandler___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v11 = framework_log(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __77__NSItemProvider_Sharing__loadFileURLRequiringOpenInPlace_completionHandler___block_invoke_cold_2(a1, v9, v11);
    }

LABEL_12:

    [*(a1 + 40) loadURLClassWithPreviousError:v9 completionHandler:*(a1 + 48)];
    goto LABEL_14;
  }

  if (*(a1 + 56) != 1 || a3 == 0)
  {
    if (!*(a1 + 56))
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __77__NSItemProvider_Sharing__loadFileURLRequiringOpenInPlace_completionHandler___block_invoke_3;
      v14[3] = &unk_1E788FDE8;
      v15 = v7;
      v17 = *(a1 + 48);
      v16 = *(a1 + 32);
      [v15 coordinateReadingWithSaveToTempDir:1 options:8 completionHandler:v14];

      goto LABEL_14;
    }

    v11 = framework_log(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __77__NSItemProvider_Sharing__loadFileURLRequiringOpenInPlace_completionHandler___block_invoke_cold_1(a1, v11);
    }

    goto LABEL_12;
  }

  v12 = *(a1 + 48);
  v13 = [*(a1 + 32) identifier];
  (*(v12 + 16))(v12, v7, v13, 0);

LABEL_14:
}

void __77__NSItemProvider_Sharing__loadFileURLRequiringOpenInPlace_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = v5;
  if (!v5)
  {
    v9 = framework_log(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __77__NSItemProvider_Sharing__loadFileURLRequiringOpenInPlace_completionHandler___block_invoke_3_cold_1(a1, v7, v9);
    }

    v8 = *(a1 + 32);
  }

  v12 = a1 + 40;
  v10 = *(a1 + 40);
  v11 = *(v12 + 8);
  v13 = v8;
  v14 = [v10 identifier];
  (*(v11 + 16))(v11, v13, v14, 0);
}

void __77__NSItemProvider_Sharing__loadFileURLRequiringOpenInPlace_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "Could not load representation %{public}@ from the item provider for opening in place", &v3, 0xCu);
}

void __77__NSItemProvider_Sharing__loadFileURLRequiringOpenInPlace_completionHandler___block_invoke_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_3_9(&dword_1A9662000, a2, a3, "Could not load representation %{public}@ from the item provider. Error: %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

void __77__NSItemProvider_Sharing__loadFileURLRequiringOpenInPlace_completionHandler___block_invoke_3_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_3_9(&dword_1A9662000, a2, a3, "Failed to save %@ to temp directory with error: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

@end