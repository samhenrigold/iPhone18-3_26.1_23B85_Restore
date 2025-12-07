@interface CacheDeleteRegisterInfoCallbacksForProcess
@end

@implementation CacheDeleteRegisterInfoCallbacksForProcess

void ___CacheDeleteRegisterInfoCallbacksForProcess_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = atomic_load((*(*(a1 + 96) + 8) + 24));
  if (v1)
  {
    v4 = CDGetLogHandle("client");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      v6 = "deleted has launched";
      v7 = v4;
      v8 = 2;
      goto LABEL_6;
    }
  }

  else
  {
    v3 = _CacheDeleteRegister(*(a1 + 32), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 40));
    v4 = CDGetLogHandle("client");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v9 = 138543874;
      v10 = v5;
      v11 = 2082;
      v12 = "_Anonymous";
      v13 = 1024;
      v14 = v3;
      v6 = "deleted has been relaunched, re-registered %{public}@%{public}s, result: %d";
      v7 = v4;
      v8 = 28;
LABEL_6:
      _os_log_impl(&dword_1BA7F1000, v7, OS_LOG_TYPE_DEFAULT, v6, &v9, v8);
    }
  }
}

@end