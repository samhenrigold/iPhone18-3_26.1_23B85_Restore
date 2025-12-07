@interface SKAdNetwork
+ (void)endImpression:(SKAdImpression *)impression completionHandler:(void *)completion;
+ (void)registerAppForAdNetworkAttribution;
+ (void)startImpression:(SKAdImpression *)impression completionHandler:(void *)completion;
+ (void)updateConversionValue:(NSInteger)conversionValue;
+ (void)updatePostbackConversionValue:(NSInteger)conversionValue completionHandler:(void *)completion;
+ (void)updatePostbackConversionValue:(NSInteger)fineValue coarseValue:(SKAdNetworkCoarseConversionValue)coarseValue completionHandler:(void *)completion;
+ (void)updatePostbackConversionValue:(NSInteger)fineValue coarseValue:(SKAdNetworkCoarseConversionValue)coarseValue lockWindow:(BOOL)lockWindow completionHandler:(void *)completion;
@end

@implementation SKAdNetwork

+ (void)startImpression:(SKAdImpression *)impression completionHandler:(void *)completion
{
  v6 = completion;
  v7 = impression;
  v8 = objc_opt_new();
  sourceAppStoreItemIdentifier = [(SKAdImpression *)v7 sourceAppStoreItemIdentifier];
  [v8 setObject:sourceAppStoreItemIdentifier forKeyedSubscript:0x1F29BE0A0];

  advertisedAppStoreItemIdentifier = [(SKAdImpression *)v7 advertisedAppStoreItemIdentifier];
  [v8 setObject:advertisedAppStoreItemIdentifier forKeyedSubscript:0x1F29BE0C0];

  adNetworkIdentifier = [(SKAdImpression *)v7 adNetworkIdentifier];
  [v8 setObject:adNetworkIdentifier forKeyedSubscript:0x1F29BE0E0];

  adCampaignIdentifier = [(SKAdImpression *)v7 adCampaignIdentifier];
  [v8 setObject:adCampaignIdentifier forKeyedSubscript:0x1F29BE100];

  sourceIdentifier = [(SKAdImpression *)v7 sourceIdentifier];
  [v8 setObject:sourceIdentifier forKeyedSubscript:0x1F29BE120];

  adImpressionIdentifier = [(SKAdImpression *)v7 adImpressionIdentifier];
  [v8 setObject:adImpressionIdentifier forKeyedSubscript:0x1F29BE140];

  signature = [(SKAdImpression *)v7 signature];
  [v8 setObject:signature forKeyedSubscript:0x1F29BE160];

  version = [(SKAdImpression *)v7 version];
  [v8 setObject:version forKeyedSubscript:0x1F29BE180];

  timestamp = [(SKAdImpression *)v7 timestamp];

  [v8 setObject:timestamp forKeyedSubscript:0x1F29BE1A0];
  [v8 setObject:&unk_1F29D51E0 forKeyedSubscript:0x1F29BE1C0];
  v18 = +[SKServiceBroker defaultBroker];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __49__SKAdNetwork_startImpression_completionHandler___block_invoke;
  v30[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v30[4] = self;
  v19 = [v18 storeKitSynchronousServiceWithErrorHandler:v30];

  v21 = _SKAdNetworkGetImpressionQueue(v20);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SKAdNetwork_startImpression_completionHandler___block_invoke_34;
  block[3] = &unk_1E7B27FD8;
  v26 = v19;
  v27 = v8;
  v28 = v6;
  selfCopy = self;
  v22 = v6;
  v23 = v8;
  v24 = v19;
  dispatch_async(v21, block);
}

void __49__SKAdNetwork_startImpression_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __49__SKAdNetwork_startImpression_completionHandler___block_invoke_cold_1();
  }
}

void __49__SKAdNetwork_startImpression_completionHandler___block_invoke_34(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__SKAdNetwork_startImpression_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7B27FB0;
  v4 = *(a1 + 48);
  v3 = v4;
  v6 = v4;
  [v1 startAdImpressionWithConfig:v2 completionHandler:v5];
}

void __49__SKAdNetwork_startImpression_completionHandler___block_invoke_2(uint64_t a1, unint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = _SKANErrorFromNSError(a2);
  if (a2 | v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __49__SKAdNetwork_startImpression_completionHandler___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: Started view-through impression", &v7, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v4);
  }
}

+ (void)endImpression:(SKAdImpression *)impression completionHandler:(void *)completion
{
  v6 = completion;
  v7 = impression;
  v8 = objc_opt_new();
  sourceAppStoreItemIdentifier = [(SKAdImpression *)v7 sourceAppStoreItemIdentifier];
  [v8 setObject:sourceAppStoreItemIdentifier forKeyedSubscript:0x1F29BE0A0];

  advertisedAppStoreItemIdentifier = [(SKAdImpression *)v7 advertisedAppStoreItemIdentifier];
  [v8 setObject:advertisedAppStoreItemIdentifier forKeyedSubscript:0x1F29BE0C0];

  adNetworkIdentifier = [(SKAdImpression *)v7 adNetworkIdentifier];
  [v8 setObject:adNetworkIdentifier forKeyedSubscript:0x1F29BE0E0];

  adCampaignIdentifier = [(SKAdImpression *)v7 adCampaignIdentifier];
  [v8 setObject:adCampaignIdentifier forKeyedSubscript:0x1F29BE100];

  sourceIdentifier = [(SKAdImpression *)v7 sourceIdentifier];
  [v8 setObject:sourceIdentifier forKeyedSubscript:0x1F29BE120];

  adImpressionIdentifier = [(SKAdImpression *)v7 adImpressionIdentifier];
  [v8 setObject:adImpressionIdentifier forKeyedSubscript:0x1F29BE140];

  signature = [(SKAdImpression *)v7 signature];
  [v8 setObject:signature forKeyedSubscript:0x1F29BE160];

  version = [(SKAdImpression *)v7 version];
  [v8 setObject:version forKeyedSubscript:0x1F29BE180];

  timestamp = [(SKAdImpression *)v7 timestamp];

  [v8 setObject:timestamp forKeyedSubscript:0x1F29BE1A0];
  [v8 setObject:&unk_1F29D51E0 forKeyedSubscript:0x1F29BE1C0];
  v18 = +[SKServiceBroker defaultBroker];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __47__SKAdNetwork_endImpression_completionHandler___block_invoke;
  v30[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v30[4] = self;
  v19 = [v18 storeKitSynchronousServiceWithErrorHandler:v30];

  v21 = _SKAdNetworkGetImpressionQueue(v20);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SKAdNetwork_endImpression_completionHandler___block_invoke_36;
  block[3] = &unk_1E7B27FD8;
  v26 = v19;
  v27 = v8;
  v28 = v6;
  selfCopy = self;
  v22 = v6;
  v23 = v8;
  v24 = v19;
  dispatch_async(v21, block);
}

void __47__SKAdNetwork_endImpression_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __47__SKAdNetwork_endImpression_completionHandler___block_invoke_cold_1();
  }
}

void __47__SKAdNetwork_endImpression_completionHandler___block_invoke_36(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__SKAdNetwork_endImpression_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7B27FB0;
  v4 = *(a1 + 48);
  v3 = v4;
  v6 = v4;
  [v1 endAdImpressionWithConfig:v2 completionHandler:v5];
}

void __47__SKAdNetwork_endImpression_completionHandler___block_invoke_2(uint64_t a1, unint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = _SKANErrorFromNSError(a2);
  if (a2 | v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __47__SKAdNetwork_endImpression_completionHandler___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: Ended view-through impression", &v7, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v4);
  }
}

+ (void)registerAppForAdNetworkAttribution
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SKAdNetwork_registerAppForAdNetworkAttribution__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (registerAppForAdNetworkAttribution_onceToken != -1)
  {
    dispatch_once(&registerAppForAdNetworkAttribution_onceToken, block);
  }
}

void __49__SKAdNetwork_registerAppForAdNetworkAttribution__block_invoke(uint64_t a1)
{
  v2 = +[SKServiceBroker defaultBroker];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__SKAdNetwork_registerAppForAdNetworkAttribution__block_invoke_2;
  v4[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v4[4] = *(a1 + 32);
  v3 = [v2 storeKitServiceWithErrorHandler:v4];

  [v3 registerForInstallAttribution];
}

void __49__SKAdNetwork_registerAppForAdNetworkAttribution__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __49__SKAdNetwork_registerAppForAdNetworkAttribution__block_invoke_2_cold_1();
  }
}

+ (void)updateConversionValue:(NSInteger)conversionValue
{
  v5 = +[SKServiceBroker defaultBroker];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__SKAdNetwork_updateConversionValue___block_invoke;
  v8[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v8[4] = self;
  v6 = [v5 storeKitServiceWithErrorHandler:v8];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:conversionValue];
  [v6 updateConversionValue:v7];
}

void __37__SKAdNetwork_updateConversionValue___block_invoke(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __37__SKAdNetwork_updateConversionValue___block_invoke_cold_1();
  }
}

+ (void)updatePostbackConversionValue:(NSInteger)conversionValue completionHandler:(void *)completion
{
  v6 = completion;
  v7 = +[SKServiceBroker defaultBroker];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__SKAdNetwork_updatePostbackConversionValue_completionHandler___block_invoke;
  v18[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v18[4] = self;
  v8 = [v7 storeKitSynchronousServiceWithErrorHandler:v18];

  v10 = _SKAdNetworkGetImpressionQueue(v9);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__SKAdNetwork_updatePostbackConversionValue_completionHandler___block_invoke_39;
  block[3] = &unk_1E7B28000;
  v16 = conversionValue;
  selfCopy = self;
  v14 = v8;
  v15 = v6;
  v11 = v6;
  v12 = v8;
  dispatch_async(v10, block);
}

void __63__SKAdNetwork_updatePostbackConversionValue_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __37__SKAdNetwork_updateConversionValue___block_invoke_cold_1();
  }
}

void __63__SKAdNetwork_updatePostbackConversionValue_completionHandler___block_invoke_39(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__SKAdNetwork_updatePostbackConversionValue_completionHandler___block_invoke_2;
  v4[3] = &unk_1E7B27FB0;
  v6 = *(a1 + 56);
  v5 = *(a1 + 40);
  [v2 updateConversionValue:v3 completionHandler:v4];
}

void __63__SKAdNetwork_updatePostbackConversionValue_completionHandler___block_invoke_2(uint64_t a1, unint64_t a2)
{
  v4 = _SKANErrorFromNSError(a2);
  if (a2 | v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __63__SKAdNetwork_updatePostbackConversionValue_completionHandler___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

+ (void)updatePostbackConversionValue:(NSInteger)fineValue coarseValue:(SKAdNetworkCoarseConversionValue)coarseValue completionHandler:(void *)completion
{
  v8 = coarseValue;
  v9 = completion;
  v10 = +[SKServiceBroker defaultBroker];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __75__SKAdNetwork_updatePostbackConversionValue_coarseValue_completionHandler___block_invoke;
  v23[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v23[4] = self;
  v11 = [v10 storeKitSynchronousServiceWithErrorHandler:v23];

  v13 = _SKAdNetworkGetImpressionQueue(v12);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__SKAdNetwork_updatePostbackConversionValue_coarseValue_completionHandler___block_invoke_40;
  v17[3] = &unk_1E7B28028;
  v18 = v11;
  v19 = v8;
  v21 = fineValue;
  selfCopy = self;
  v20 = v9;
  v14 = v9;
  v15 = v8;
  v16 = v11;
  dispatch_async(v13, v17);
}

void __75__SKAdNetwork_updatePostbackConversionValue_coarseValue_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __37__SKAdNetwork_updateConversionValue___block_invoke_cold_1();
  }
}

void __75__SKAdNetwork_updatePostbackConversionValue_coarseValue_completionHandler___block_invoke_40(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__SKAdNetwork_updatePostbackConversionValue_coarseValue_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7B27FB0;
  v7 = *(a1 + 64);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v2 updateConversionValue:v3 coarseValue:v4 completionHandler:v5];
}

void __75__SKAdNetwork_updatePostbackConversionValue_coarseValue_completionHandler___block_invoke_2(uint64_t a1, unint64_t a2)
{
  v4 = _SKANErrorFromNSError(a2);
  if (a2 | v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __63__SKAdNetwork_updatePostbackConversionValue_completionHandler___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

+ (void)updatePostbackConversionValue:(NSInteger)fineValue coarseValue:(SKAdNetworkCoarseConversionValue)coarseValue lockWindow:(BOOL)lockWindow completionHandler:(void *)completion
{
  v10 = coarseValue;
  v11 = completion;
  v12 = +[SKServiceBroker defaultBroker];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __86__SKAdNetwork_updatePostbackConversionValue_coarseValue_lockWindow_completionHandler___block_invoke;
  v26[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v26[4] = self;
  v13 = [v12 storeKitSynchronousServiceWithErrorHandler:v26];

  v15 = _SKAdNetworkGetImpressionQueue(v14);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__SKAdNetwork_updatePostbackConversionValue_coarseValue_lockWindow_completionHandler___block_invoke_41;
  block[3] = &unk_1E7B28050;
  v20 = v13;
  v21 = v10;
  v25 = lockWindow;
  v23 = fineValue;
  selfCopy = self;
  v22 = v11;
  v16 = v11;
  v17 = v10;
  v18 = v13;
  dispatch_async(v15, block);
}

void __86__SKAdNetwork_updatePostbackConversionValue_coarseValue_lockWindow_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __37__SKAdNetwork_updateConversionValue___block_invoke_cold_1();
  }
}

void __86__SKAdNetwork_updatePostbackConversionValue_coarseValue_lockWindow_completionHandler___block_invoke_41(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
  v4 = *(a1 + 72);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__SKAdNetwork_updatePostbackConversionValue_coarseValue_lockWindow_completionHandler___block_invoke_2;
  v6[3] = &unk_1E7B27FB0;
  v8 = *(a1 + 64);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v2 updateConversionValue:v3 coarseValue:v5 lockWindow:v4 completionHandler:v6];
}

void __86__SKAdNetwork_updatePostbackConversionValue_coarseValue_lockWindow_completionHandler___block_invoke_2(uint64_t a1, unint64_t a2)
{
  v4 = _SKANErrorFromNSError(a2);
  if (a2 | v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __63__SKAdNetwork_updatePostbackConversionValue_completionHandler___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

void __49__SKAdNetwork_startImpression_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B23EF000, MEMORY[0x1E69E9C10], v0, "%{public}@: Error in remote proxy while starting view-through impression: %{public}@", v1, v2, v3, v4);
}

void __49__SKAdNetwork_startImpression_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B23EF000, MEMORY[0x1E69E9C10], v0, "%{public}@: Error in remote proxy while starting view-through impression: %{public}@", v1, v2, v3, v4);
}

void __47__SKAdNetwork_endImpression_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B23EF000, MEMORY[0x1E69E9C10], v0, "%{public}@: Error in remote proxy while ending view-through impression: %{public}@", v1, v2, v3, v4);
}

void __47__SKAdNetwork_endImpression_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B23EF000, MEMORY[0x1E69E9C10], v0, "%{public}@: Error in remote proxy while ending\a view-through impression: %{public}@", v1, v2, v3, v4);
}

void __49__SKAdNetwork_registerAppForAdNetworkAttribution__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B23EF000, MEMORY[0x1E69E9C10], v0, "%{public}@: Error in remote proxy while registering SKAdNetwork: %{public}@", v1, v2, v3, v4);
}

void __37__SKAdNetwork_updateConversionValue___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B23EF000, MEMORY[0x1E69E9C10], v0, "%{public}@: Error in remote proxy while updating SKAdNetwork conversion value: %{public}@", v1, v2, v3, v4);
}

void __63__SKAdNetwork_updatePostbackConversionValue_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B23EF000, MEMORY[0x1E69E9C10], v0, "%{public}@: Error while updating conversion value: %{public}@", v1, v2, v3, v4);
}

@end