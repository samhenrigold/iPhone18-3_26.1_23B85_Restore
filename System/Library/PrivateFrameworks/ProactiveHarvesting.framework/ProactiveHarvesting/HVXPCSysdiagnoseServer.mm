@interface HVXPCSysdiagnoseServer
- (void)sysdiagnoseStringWithCompletion:(id)completion;
@end

@implementation HVXPCSysdiagnoseServer

- (void)sysdiagnoseStringWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = hv_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2321EC000, v4, OS_LOG_TYPE_DEFAULT, "HVXPCSysdiagnoseServer: sysdiagnoseStringWithCompletion called.", buf, 2u);
  }

  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__45;
  v22 = __Block_byref_object_dispose__46;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__45;
  v16 = __Block_byref_object_dispose__46;
  v17 = 0;
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__HVXPCSysdiagnoseServer_sysdiagnoseStringWithCompletion___block_invoke;
  v11[3] = &unk_278969AB8;
  v11[4] = &v12;
  v11[5] = buf;
  [v5 statsWithCompletion:v11];

  v6 = v13[5];
  v7 = (v19 + 40);
  if (v6)
  {
    obj = *(v19 + 5);
    v8 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v6 options:0 error:&obj];
    objc_storeStrong(v7, obj);
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
      completionCopy[2](completionCopy, v9, 0);
    }

    else
    {
      completionCopy[2](completionCopy, 0, *(v19 + 5));
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, *(v19 + 5));
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(buf, 8);
}

void __58__HVXPCSysdiagnoseServer_sysdiagnoseStringWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v8 = hv_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_error_impl(&dword_2321EC000, v8, OS_LOG_TYPE_ERROR, "HVXPCSysdiagnoseServer: sysdiagnoseStringWithCompletion: error: %@", &v9, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

@end