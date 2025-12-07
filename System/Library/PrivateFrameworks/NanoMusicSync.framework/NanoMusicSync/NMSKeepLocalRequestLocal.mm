@interface NMSKeepLocalRequestLocal
+ (id)sharedKeepLocalOperationQueue;
- (void)_performRequestWithConstraints:(unint64_t)constraints qualityOfService:(int64_t)service completion:(id)completion;
- (void)performWithOptions:(id)options completion:(id)completion;
@end

@implementation NMSKeepLocalRequestLocal

+ (id)sharedKeepLocalOperationQueue
{
  if (sharedKeepLocalOperationQueue_onceToken != -1)
  {
    +[NMSKeepLocalRequestLocal sharedKeepLocalOperationQueue];
  }

  v3 = sharedKeepLocalOperationQueue_sharedQueue;

  return v3;
}

uint64_t __57__NMSKeepLocalRequestLocal_sharedKeepLocalOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = sharedKeepLocalOperationQueue_sharedQueue;
  sharedKeepLocalOperationQueue_sharedQueue = v0;

  [sharedKeepLocalOperationQueue_sharedQueue setMaxConcurrentOperationCount:1];
  v2 = sharedKeepLocalOperationQueue_sharedQueue;

  return [v2 setName:@"com.apple.NanoMusicSync.NMSKeepLocalRequestLocal"];
}

- (void)performWithOptions:(id)options completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  v8 = [(NMSKeepLocalRequest *)self enableState]+ 1;
  if (v8 > 4)
  {
    v19 = MEMORY[0x277CBEAD8];
    v20 = *MEMORY[0x277CBE658];
    v21 = @"Unsupported KeepLocal enable state specified.";
    goto LABEL_14;
  }

  if (v8 == 2)
  {
    if (![optionsCopy requiresValidation])
    {
      v18 = [optionsCopy resolvedConstraints:{objc_msgSend(MEMORY[0x277CD5EC0], "nms_defaultKeepLocalConstraints")}];
      qualityOfService = [optionsCopy qualityOfService];
      selfCopy2 = self;
      v11 = v18;
      goto LABEL_4;
    }

    v12 = NMLogForCategory(5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      modelObject = [(NMSKeepLocalRequest *)self modelObject];
      *buf = 138412290;
      v27 = modelObject;
      _os_log_impl(&dword_25B27B000, v12, OS_LOG_TYPE_DEFAULT, "[NMSKeepLocalRequestLocal] Running KeepLocal validation for modelObject: %@", buf, 0xCu);
    }

    cellularBundleIdentifier = [optionsCopy cellularBundleIdentifier];

    if (cellularBundleIdentifier)
    {
      v15 = [NMSKeepLocalRequestValidator alloc];
      modelObject2 = [(NMSKeepLocalRequest *)self modelObject];
      v17 = [(NMSKeepLocalRequestValidator *)v15 initWithModelObject:modelObject2];

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __58__NMSKeepLocalRequestLocal_performWithOptions_completion___block_invoke;
      v23[3] = &unk_27993E8F8;
      v25 = completionCopy;
      v23[4] = self;
      v24 = optionsCopy;
      [(NMSKeepLocalRequestValidator *)v17 performWithOptions:v24 completion:v23];

      goto LABEL_5;
    }

    v19 = MEMORY[0x277CBEAD8];
    v20 = *MEMORY[0x277CBE660];
    v21 = @"Required cellular bundle identifier missing during KeepLocalRequest validation.";
LABEL_14:
    v22 = [v19 exceptionWithName:v20 reason:v21 userInfo:0];
    objc_exception_throw(v22);
  }

  qualityOfService = [optionsCopy qualityOfService];
  selfCopy2 = self;
  v11 = 0;
LABEL_4:
  [(NMSKeepLocalRequestLocal *)selfCopy2 _performRequestWithConstraints:v11 qualityOfService:qualityOfService completion:completionCopy];
LABEL_5:
}

uint64_t __58__NMSKeepLocalRequestLocal_performWithOptions_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 48) + 16);

    return v4();
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) qualityOfService];
    v9 = *(a1 + 48);

    return [v7 _performRequestWithConstraints:a2 qualityOfService:v8 completion:v9];
  }
}

- (void)_performRequestWithConstraints:(unint64_t)constraints qualityOfService:(int64_t)service completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = NMLogForCategory(5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    enableState = [(NMSKeepLocalRequest *)self enableState];
    modelObject = [(NMSKeepLocalRequest *)self modelObject];
    *buf = 134218498;
    v25 = enableState;
    v26 = 2048;
    constraintsCopy = constraints;
    v28 = 2112;
    v29 = modelObject;
    _os_log_impl(&dword_25B27B000, v9, OS_LOG_TYPE_DEFAULT, "[NMSKeepLocalRequestLocal] Proceeding with KeepLocal request with state: %ld, constraints: %ld, modelObject: %@", buf, 0x20u);
  }

  v12 = objc_alloc_init(MEMORY[0x277CD5EC0]);
  modelObject2 = [(NMSKeepLocalRequest *)self modelObject];
  [v12 setModelObject:modelObject2];

  [v12 setEnableState:{-[NMSKeepLocalRequest enableState](self, "enableState")}];
  [v12 setConstraints:constraints];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __87__NMSKeepLocalRequestLocal__performRequestWithConstraints_qualityOfService_completion___block_invoke;
  v21[3] = &unk_27993E068;
  v14 = v12;
  v22 = v14;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = [v14 newOperationWithResponseHandler:v21];
  [v16 setQualityOfService:service];
  v17 = NMLogForCategory(5);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    modelObject3 = [(NMSKeepLocalRequest *)self modelObject];
    *buf = 138412546;
    v25 = v16;
    v26 = 2112;
    constraintsCopy = modelObject3;
    _os_log_impl(&dword_25B27B000, v17, OS_LOG_TYPE_DEFAULT, "[NMSKeepLocalRequestLocal] Adding KeepLocal operation(%@) for modelObject=%@", buf, 0x16u);
  }

  sharedKeepLocalOperationQueue = [objc_opt_class() sharedKeepLocalOperationQueue];
  [sharedKeepLocalOperationQueue addOperation:v16];
  v20 = v14;
  AnalyticsSendEventLazy();
}

void __87__NMSKeepLocalRequestLocal__performRequestWithConstraints_qualityOfService_completion___block_invoke(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = NMLogForCategory(5);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __87__NMSKeepLocalRequestLocal__performRequestWithConstraints_qualityOfService_completion___block_invoke_cold_1(a1, v5);
    }

    v6 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA7E8];
    v18[0] = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v7 = [v6 errorWithDomain:@"NMSKeepLocalRequestErrorDomain" code:0 userInfo:v5];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) enableState];
      v9 = [*(a1 + 32) constraints];
      v10 = [*(a1 + 32) modelObject];
      v11 = 134218498;
      v12 = v8;
      v13 = 2048;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "[NMSKeepLocalRequestLocal] Successfully set KeepLocal state: %ld with constraints: %ld for modelObject: %@", &v11, 0x20u);
    }

    v7 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

id __87__NMSKeepLocalRequestLocal__performRequestWithConstraints_qualityOfService_completion___block_invoke_18(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"constraints";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "constraints")}];
  v6[1] = @"enableState";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "enableState")}];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

void __87__NMSKeepLocalRequestLocal__performRequestWithConstraints_qualityOfService_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) enableState];
  v5 = [*(a1 + 32) constraints];
  v6 = [*(a1 + 32) modelObject];
  v7 = 134218498;
  v8 = v4;
  v9 = 2048;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  _os_log_error_impl(&dword_25B27B000, a2, OS_LOG_TYPE_ERROR, "[NMSKeepLocalRequestLocal] Error setting KeepLocal state: %ld with constraints: %ld for modelObject: %@", &v7, 0x20u);
}

@end