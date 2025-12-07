@interface CMLDataVault
+ (id)cacheFileForUseCase:(id)case error:(id *)error;
+ (id)dataVaultDirectory:(id *)directory;
@end

@implementation CMLDataVault

+ (id)dataVaultDirectory:(id *)directory
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v5 = +[CMLXPC createConnection];
  v6 = [CMLXPC syncProxyToConnection:v5 error:&v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v7 = +[CMLLog client];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&dword_224E26000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending request", buf, 0xCu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __35__CMLDataVault_dataVaultDirectory___block_invoke;
  v11[3] = &unk_278541BE0;
  v11[4] = &v12;
  v11[5] = a2;
  [v6 dataVaultDirectory:v11];
  if (directory)
  {
    *directory = v18;
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __35__CMLDataVault_dataVaultDirectory___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[CMLLog client];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 40));
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_224E26000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete", &v8, 0xCu);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

+ (id)cacheFileForUseCase:(id)case error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  v20 = 0;
  v7 = +[CMLXPC createConnection];
  v8 = [CMLXPC syncProxyToConnection:v7 error:&v20];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v9 = +[CMLLog client];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138543362;
    v22 = v10;
    _os_log_impl(&dword_224E26000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending request", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__CMLDataVault_cacheFileForUseCase_error___block_invoke;
  v13[3] = &unk_278541BE0;
  v13[4] = &v14;
  v13[5] = a2;
  [v8 cacheFileForUseCase:caseCopy reply:v13];
  if (error)
  {
    *error = v20;
  }

  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

void __42__CMLDataVault_cacheFileForUseCase_error___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[CMLLog client];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 40));
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_224E26000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete", &v8, 0xCu);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

@end