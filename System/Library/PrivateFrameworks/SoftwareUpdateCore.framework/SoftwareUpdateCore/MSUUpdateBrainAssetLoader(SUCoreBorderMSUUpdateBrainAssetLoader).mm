@interface MSUUpdateBrainAssetLoader(SUCoreBorderMSUUpdateBrainAssetLoader)
- (void)SUCoreBorder_loadUpdateBrainWithMAOptions:()SUCoreBorderMSUUpdateBrainAssetLoader clientOptionsFromPolicy:progressHandler:;
@end

@implementation MSUUpdateBrainAssetLoader(SUCoreBorderMSUUpdateBrainAssetLoader)

- (void)SUCoreBorder_loadUpdateBrainWithMAOptions:()SUCoreBorderMSUUpdateBrainAssetLoader clientOptionsFromPolicy:progressHandler:
{
  v33[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _SUCoreBorder_MSUFunctionAtBegin(@"loadUpdateBrainWithMAOptions", 0);
  v12 = v11;
  if (v11)
  {
    simAction = [v11 simAction];
    if (simAction == 3)
    {
      v32 = *MEMORY[0x277D28998];
      v33[0] = *MEMORY[0x277D28988];
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v14 = 0;
      if (v10)
      {
LABEL_11:
        mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
        completionQueue = [mEMORY[0x277D643F8] completionQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __150__MSUUpdateBrainAssetLoader_SUCoreBorderMSUUpdateBrainAssetLoader__SUCoreBorder_loadUpdateBrainWithMAOptions_clientOptionsFromPolicy_progressHandler___block_invoke_393;
        block[3] = &unk_27892C830;
        v25 = v10;
        v23 = v15;
        v24 = v14;
        dispatch_async(completionQueue, block);

        oslog = v25;
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      if (simAction == 1)
      {
        v14 = [v12 buildErrorWithDescription:@"SUCoreError created by SUCoreBorder_loadUpdateBrainWithMAOptions"];
      }

      else
      {
        mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
        v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v12];
        [mEMORY[0x277D64428] trackAnomaly:@"SUCoreBorder_loadUpdateBrainWithMAOptions" forReason:v19 withResult:8113 withError:0];

        v14 = 0;
      }

      v15 = 0;
      if (v10)
      {
        goto LABEL_11;
      }
    }

    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = v15;
      v30 = 2114;
      v31 = v14;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "loadUpdateBrainWithMAOptions completed (no handler), state=%{public}@ error=%{public}@", buf, 0x16u);
    }

    goto LABEL_12;
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __150__MSUUpdateBrainAssetLoader_SUCoreBorderMSUUpdateBrainAssetLoader__SUCoreBorder_loadUpdateBrainWithMAOptions_clientOptionsFromPolicy_progressHandler___block_invoke;
  v26[3] = &unk_27892C858;
  v27 = v10;
  [self loadUpdateBrainWithMAOptions:v8 clientOptionsFromPolicy:v9 progressHandler:v26];
  v15 = v27;
LABEL_13:
}

@end