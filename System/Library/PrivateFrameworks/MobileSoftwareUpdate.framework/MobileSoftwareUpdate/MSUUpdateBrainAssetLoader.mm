@interface MSUUpdateBrainAssetLoader
- (BOOL)cancel:(id *)cancel;
- (BOOL)purgeUpdateBrains:(id *)brains;
- (MSUUpdateBrainAssetLoader)initWithUpdateAsset:(id)asset;
- (int64_t)requiredDiskSpace:(id *)space;
- (void)adjustMAOptions:(id)options completion:(id)completion;
- (void)adjustOptions:(id)options completion:(id)completion;
- (void)dealloc;
- (void)loadUpdateBrainWithMAOptions:(id)options clientOptionsFromPolicy:(id)policy progressHandler:(id)handler;
- (void)loadUpdateBrainWithOptions:(id)options progressHandler:(id)handler;
@end

@implementation MSUUpdateBrainAssetLoader

- (MSUUpdateBrainAssetLoader)initWithUpdateAsset:(id)asset
{
  v6.receiver = self;
  v6.super_class = MSUUpdateBrainAssetLoader;
  v4 = [(MSUUpdateBrainAssetLoader *)&v6 init];
  if (v4)
  {
    v4->_updateAsset = asset;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MSUUpdateBrainAssetLoader;
  [(MSUUpdateBrainLoader *)&v3 dealloc];
}

- (void)loadUpdateBrainWithMAOptions:(id)options clientOptionsFromPolicy:(id)policy progressHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = @"loadUpdateBrainWithMAOptions";
    _os_log_impl(&dword_259B51000, v9, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | BEGIN", buf, 0xCu);
  }

  global_queue = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__MSUUpdateBrainAssetLoader_loadUpdateBrainWithMAOptions_clientOptionsFromPolicy_progressHandler___block_invoke;
  block[3] = &unk_2798EDA40;
  block[4] = policy;
  block[5] = self;
  block[6] = @"loadUpdateBrainWithMAOptions";
  block[7] = options;
  block[8] = handler;
  dispatch_async(global_queue, block);
}

void __98__MSUUpdateBrainAssetLoader_loadUpdateBrainWithMAOptions_clientOptionsFromPolicy_progressHandler___block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v14 = 0;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = *(a1 + 32);
  if (v4)
  {
    [v2 setObject:v4 forKey:@"ClientOptions"];
  }

  if ([*(a1 + 40) updateAsset])
  {
    if ([objc_msgSend(*(a1 + 40) "updateAsset")])
    {
      [v2 setObject:objc_msgSend(objc_msgSend(*(a1 + 40) forKey:{"updateAsset"), "attributes"), @"AssetProperties"}];
    }

    else if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      __98__MSUUpdateBrainAssetLoader_loadUpdateBrainWithMAOptions_clientOptionsFromPolicy_progressHandler___block_invoke_cold_1();
    }
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    [v3 setObject:v5 forKey:@"DownloadOptions"];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__MSUUpdateBrainAssetLoader_loadUpdateBrainWithMAOptions_clientOptionsFromPolicy_progressHandler___block_invoke_14;
  v13[3] = &unk_2798EDA18;
  v7 = *(a1 + 48);
  v6 = (a1 + 48);
  v8 = v6[2];
  v13[4] = v7;
  v13[5] = v8;
  v9 = perform_se_command_with_progress("LoadMABrain", v2, 0, v3, 0, &v14, v13);
  v10 = v6[2];
  if (v9)
  {
    v17 = *MEMORY[0x277D28998];
    v18[0] = *MEMORY[0x277D28988];
    (*(v10 + 16))(v10, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1], 0);
    v11 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *v6;
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_259B51000, v11, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | SUCCESS", buf, 0xCu);
    }
  }

  else
  {
    (*(v10 + 16))(v10, 0, v14);
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      __98__MSUUpdateBrainAssetLoader_loadUpdateBrainWithMAOptions_clientOptionsFromPolicy_progressHandler___block_invoke_cold_2();
    }
  }
}

uint64_t __98__MSUUpdateBrainAssetLoader_loadUpdateBrainWithMAOptions_clientOptionsFromPolicy_progressHandler___block_invoke_14(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v11 = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = a2;
      v8 = "[BRAIN_LOADER] %{public}@ | PROGRESS (not calling progress handler) | state:%{public}@";
LABEL_6:
      _os_log_impl(&dword_259B51000, v5, OS_LOG_TYPE_DEFAULT, v8, &v11, 0x16u);
    }
  }

  else if (v6)
  {
    v9 = *(a1 + 32);
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = a2;
    v8 = "[BRAIN_LOADER] %{public}@ | PROGRESS (no progress handler) | state:%{public}@";
    goto LABEL_6;
  }

  return 0;
}

- (void)loadUpdateBrainWithOptions:(id)options progressHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = @"loadUpdateBrainWithOptions";
    _os_log_impl(&dword_259B51000, v7, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | BEGIN", buf, 0xCu);
  }

  global_queue = dispatch_get_global_queue(17, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__MSUUpdateBrainAssetLoader_loadUpdateBrainWithOptions_progressHandler___block_invoke;
  v9[3] = &unk_2798EDA68;
  v9[4] = self;
  v9[5] = @"loadUpdateBrainWithOptions";
  v9[6] = options;
  v9[7] = handler;
  dispatch_async(global_queue, v9);
}

void __72__MSUUpdateBrainAssetLoader_loadUpdateBrainWithOptions_progressHandler___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  if ([*(a1 + 32) updateAsset])
  {
    if ([objc_msgSend(*(a1 + 32) "updateAsset")])
    {
      [v2 setObject:objc_msgSend(objc_msgSend(*(a1 + 32) forKey:{"updateAsset"), "attributes"), @"AssetProperties"}];
    }

    else if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      __72__MSUUpdateBrainAssetLoader_loadUpdateBrainWithOptions_progressHandler___block_invoke_cold_1();
    }
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    [v2 setObject:v3 forKey:@"ClientOptions"];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__MSUUpdateBrainAssetLoader_loadUpdateBrainWithOptions_progressHandler___block_invoke_22;
  v11[3] = &unk_2798EDA18;
  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  v6 = v4[2];
  v11[4] = v5;
  v11[5] = v6;
  v7 = perform_command_with_progress("LoadBrain", v2, 0, 0, &v12, v11);
  v8 = v4[2];
  if (v7)
  {
    v15 = *MEMORY[0x277D28998];
    v16[0] = *MEMORY[0x277D28988];
    (*(v8 + 16))(v8, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1], 0);
    v9 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *v4;
      *buf = 138543362;
      v14 = v10;
      _os_log_impl(&dword_259B51000, v9, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | SUCCESS", buf, 0xCu);
    }
  }

  else
  {
    (*(v8 + 16))(v8, 0, v12);
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      __98__MSUUpdateBrainAssetLoader_loadUpdateBrainWithMAOptions_clientOptionsFromPolicy_progressHandler___block_invoke_cold_2();
    }
  }
}

uint64_t __72__MSUUpdateBrainAssetLoader_loadUpdateBrainWithOptions_progressHandler___block_invoke_22(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = a2;
      _os_log_impl(&dword_259B51000, v5, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | PROGRESS (calling progress handler) | state:%{public}@", &v10, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else if (v6)
  {
    v8 = *(a1 + 32);
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = a2;
    _os_log_impl(&dword_259B51000, v5, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | PROGRESS (no progress handler) | state:%{public}@", &v10, 0x16u);
  }

  return 0;
}

- (BOOL)cancel:(id *)cancel
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = @"cancel";
    _os_log_impl(&dword_259B51000, v5, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | BEGIN", buf, 0xCu);
  }

  attributes = [(MAAsset *)[(MSUUpdateBrainAssetLoader *)self updateAsset] attributes];
  v6 = perform_command("CancelLoadBrain", [MEMORY[0x277CBEAC0] dictionaryWithObjects:&attributes forKeys:&v11 count:1], 0, 0, cancel);
  if (cancel)
  {
    v7 = *cancel;
  }

  v8 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = @"cancel";
      _os_log_impl(&dword_259B51000, v9, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | SUCCESS", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MSUUpdateBrainAssetLoader cancel:];
  }

  return v6;
}

- (void)adjustMAOptions:(id)options completion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = @"adjustMAOptions";
    _os_log_impl(&dword_259B51000, v7, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | BEGIN", buf, 0xCu);
  }

  global_queue = dispatch_get_global_queue(25, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__MSUUpdateBrainAssetLoader_adjustMAOptions_completion___block_invoke;
  v9[3] = &unk_2798EDA68;
  v9[4] = options;
  v9[5] = @"adjustMAOptions";
  v9[6] = self;
  v9[7] = completion;
  dispatch_async(global_queue, v9);
}

uint64_t __56__MSUUpdateBrainAssetLoader_adjustMAOptions_completion___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v9 = 0;
  if (*(a1 + 32))
  {
    if ([*(a1 + 48) updateAsset])
    {
      v14 = @"AssetProperties";
      v15[0] = [objc_msgSend(*(a1 + 48) "updateAsset")];
      v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    }

    else
    {
      v2 = 0;
    }

    v3 = *(a1 + 32);
    v12 = @"DownloadConfig";
    v13 = v3;
    v4 = perform_se_command("MAAdjustLoadBrainOptions", v2, 0, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1], 0, &v9);
    v5 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        *buf = 138543362;
        v11 = v7;
        _os_log_impl(&dword_259B51000, v6, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | SUCCESS", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __56__MSUUpdateBrainAssetLoader_adjustMAOptions_completion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
  {
    __56__MSUUpdateBrainAssetLoader_adjustMAOptions_completion___block_invoke_cold_2();
  }

  return (*(*(a1 + 56) + 16))(*(a1 + 56), v9);
}

- (void)adjustOptions:(id)options completion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = @"adjustOptions";
    _os_log_impl(&dword_259B51000, v7, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | BEGIN", buf, 0xCu);
  }

  global_queue = dispatch_get_global_queue(17, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__MSUUpdateBrainAssetLoader_adjustOptions_completion___block_invoke;
  v9[3] = &unk_2798EDA68;
  v9[4] = options;
  v9[5] = self;
  v9[6] = @"adjustOptions";
  v9[7] = completion;
  dispatch_async(global_queue, v9);
}

uint64_t __54__MSUUpdateBrainAssetLoader_adjustOptions_completion___block_invoke(void *a1)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v3 = a1[4];
  v2 = a1[5];
  v12[0] = @"ClientOptions";
  v12[1] = @"AssetProperties";
  v13[0] = v3;
  v13[1] = [objc_msgSend(v2 "updateAsset")];
  v4 = perform_command("AdjustLoadBrainOptions", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2], 0, 0, &v9);
  v5 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[6];
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_259B51000, v6, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | SUCCESS", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __54__MSUUpdateBrainAssetLoader_adjustOptions_completion___block_invoke_cold_1();
  }

  return (*(a1[7] + 16))(a1[7], v9);
}

- (BOOL)purgeUpdateBrains:(id *)brains
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = @"purgeUpdateBrains";
    _os_log_impl(&dword_259B51000, v4, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | BEGIN", &v9, 0xCu);
  }

  v5 = perform_command("PurgeBrains", 0, 0, 0, brains);
  if (brains)
  {
    v6 = *brains;
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      [MSUUpdateBrainAssetLoader purgeUpdateBrains:];
    }
  }

  else
  {
    v7 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = @"purgeUpdateBrains";
      _os_log_impl(&dword_259B51000, v7, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | SUCCESS", &v9, 0xCu);
    }
  }

  return v5;
}

- (int64_t)requiredDiskSpace:(id *)space
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = @"requiredDiskSpace";
    _os_log_impl(&dword_259B51000, v5, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | BEGIN", buf, 0xCu);
  }

  if ([(MAAsset *)[(MSUUpdateBrainAssetLoader *)self updateAsset] attributes])
  {
    v20 = @"AssetProperties";
    v21[0] = [(MAAsset *)[(MSUUpdateBrainAssetLoader *)self updateAsset] attributes];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  }

  else
  {
    v6 = 0;
  }

  v15 = 0;
  v7 = perform_command("RequiredDiskSpace", v6, 0, &v15, space);
  v8 = v15;
  if (space)
  {
    v9 = *space;
    if ((v7 & 1) == 0)
    {
      if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
      {
        [MSUUpdateBrainAssetLoader requiredDiskSpace:];
      }

      return -1;
    }
  }

  else if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      [MSUUpdateBrainAssetLoader requiredDiskSpace:];
    }

    return -1;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v12 = v11;
  if ((isKindOfClass & 1) == 0)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MSUUpdateBrainAssetLoader requiredDiskSpace:];
    }

    return -1;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    longLongValue = [v15 longLongValue];
    *buf = 138543618;
    v17 = @"requiredDiskSpace";
    v18 = 2048;
    v19 = longLongValue;
    _os_log_impl(&dword_259B51000, v12, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | SUCCESS | Required disk space: %llu bytes", buf, 0x16u);
  }

  return [v15 longLongValue];
}

- (void)cancel:.cold.1()
{
  v2 = 138543618;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_259B51000, v0, v1, "[BRAIN_LOADER] %{public}@ | FAILURE | error:%{public}@", v2);
}

void __56__MSUUpdateBrainAssetLoader_adjustMAOptions_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)purgeUpdateBrains:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)requiredDiskSpace:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end