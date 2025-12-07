@interface WBSHideMyEmailManager
+ (WBSHideMyEmailManager)sharedManager;
- (WBSHideMyEmailManager)init;
- (void)_performOperation:(unint64_t)operation withURL:(id)l completionHandler:(id)handler;
@end

@implementation WBSHideMyEmailManager

- (WBSHideMyEmailManager)init
{
  v11.receiver = self;
  v11.super_class = WBSHideMyEmailManager;
  v2 = [(WBSHideMyEmailManager *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69C89D0]);
    accountObserver = v2->_accountObserver;
    v2->_accountObserver = v3;

    provisionNewHideMyEmailAvailabilityObserver = [MEMORY[0x1E69C8EF0] provisionNewHideMyEmailAvailabilityObserver];
    provisionNewHideMyEmailAvailabilityObserver = v2->_provisionNewHideMyEmailAvailabilityObserver;
    v2->_provisionNewHideMyEmailAvailabilityObserver = provisionNewHideMyEmailAvailabilityObserver;

    v7 = objc_alloc_init(MEMORY[0x1E698DDC0]);
    privateEmailController = v2->_privateEmailController;
    v2->_privateEmailController = v7;

    v9 = v2;
  }

  return v2;
}

- (void)_performOperation:(unint64_t)operation withURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  host = [l host];
  v11 = WBS_LOG_CHANNEL_PREFIXHideMyEmail(host, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(WBSHideMyEmailManager *)v11 _performOperation:v12 withURL:v13 completionHandler:v14, v15, v16, v17, v18];
  }

  accountObserver = self->_accountObserver;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __69__WBSHideMyEmailManager__performOperation_withURL_completionHandler___block_invoke;
  v22[3] = &unk_1E8285628;
  v25 = handlerCopy;
  operationCopy = operation;
  v23 = host;
  selfCopy = self;
  v20 = handlerCopy;
  v21 = host;
  [(WBSPrimaryAppleAccountObserver *)accountObserver getPrimaryAppleAccountAltDSIDWithCompletionHandler:v22];
}

void __69__WBSHideMyEmailManager__performOperation_withURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 length];
  if (v4)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXHideMyEmail(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __69__WBSHideMyEmailManager__performOperation_withURL_completionHandler___block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v14 = [*(a1 + 32) safari_highLevelDomainFromHost];
    v15 = [v14 isEqualToString:@"icloud.com"];
    if (v15)
    {
      v17 = [objc_alloc(MEMORY[0x1E69C8F58]) initWithDomain:*(a1 + 32) state:2 privateEmailAddress:0];
      v19 = WBS_LOG_CHANNEL_PREFIXHideMyEmail(v17, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __69__WBSHideMyEmailManager__performOperation_withURL_completionHandler___block_invoke_cold_3(v19);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v22 = WBS_LOG_CHANNEL_PREFIXHideMyEmail(v15, v16);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        __69__WBSHideMyEmailManager__performOperation_withURL_completionHandler___block_invoke_cold_2(a1, v22);
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__WBSHideMyEmailManager__performOperation_withURL_completionHandler___block_invoke_4;
      aBlock[3] = &unk_1E8285600;
      v26 = *(a1 + 32);
      v23 = v26.i64[0];
      v28 = vextq_s8(v26, v26, 8uLL);
      v29 = *(a1 + 48);
      v24 = _Block_copy(aBlock);
      v25 = *(a1 + 56);
      if (v25 == 1)
      {
        [*(*(a1 + 40) + 24) fetchPrivateEmailForAltDSID:v3 withKey:*(a1 + 32) completion:v24];
      }

      else if (!v25)
      {
        [*(*(a1 + 40) + 24) lookupPrivateEmailForAltDSID:v3 withKey:*(a1 + 32) completion:v24];
      }
    }
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x1E69C8F58]) initWithDomain:*(a1 + 32) state:3 privateEmailAddress:0];
    v21 = WBS_LOG_CHANNEL_PREFIXHideMyEmail(v14, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      __69__WBSHideMyEmailManager__performOperation_withURL_completionHandler___block_invoke_cold_4(v21);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __69__WBSHideMyEmailManager__performOperation_withURL_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 safari_matchesErrorDomain:*MEMORY[0x1E698DC20] andCode:-6003];
    v9 = v8;
    v11 = WBS_LOG_CHANNEL_PREFIXHideMyEmail(v8, v10);
    v12 = v11;
    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __69__WBSHideMyEmailManager__performOperation_withURL_completionHandler___block_invoke_4_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
      }

      v20 = *(*(a1 + 32) + 16);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __69__WBSHideMyEmailManager__performOperation_withURL_completionHandler___block_invoke_5;
      v25[3] = &unk_1E82838F8;
      v26 = *(a1 + 40);
      v27 = *(a1 + 48);
      [v20 getFeatureAvailabilityWithCompletionHandler:v25];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __69__WBSHideMyEmailManager__performOperation_withURL_completionHandler___block_invoke_4_cold_1(v12);
      }

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v21 = [v5 privateEmailAddress];
    v22 = [objc_alloc(MEMORY[0x1E69C8F58]) initWithDomain:*(a1 + 40) state:0 privateEmailAddress:v21];
    v24 = WBS_LOG_CHANNEL_PREFIXHideMyEmail(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      __69__WBSHideMyEmailManager__performOperation_withURL_completionHandler___block_invoke_4_cold_3(v24);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __69__WBSHideMyEmailManager__performOperation_withURL_completionHandler___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = objc_alloc(MEMORY[0x1E69C8F58]);
  if (v2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [v4 initWithDomain:*(a1 + 32) state:v5 privateEmailAddress:0];
  v8 = WBS_LOG_CHANNEL_PREFIXHideMyEmail(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __69__WBSHideMyEmailManager__performOperation_withURL_completionHandler___block_invoke_5_cold_1(v2, v8);
  }

  (*(*(a1 + 40) + 16))();
}

+ (WBSHideMyEmailManager)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[WBSHideMyEmailManager sharedManager];
  }

  v3 = sharedManager_sharedInstance;

  return v3;
}

void __38__WBSHideMyEmailManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(WBSHideMyEmailManager);
  v1 = sharedManager_sharedInstance;
  sharedManager_sharedInstance = v0;
}

void __69__WBSHideMyEmailManager__performOperation_withURL_completionHandler___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56))
  {
    v3 = @"Fetch (Provision New)";
  }

  else
  {
    v3 = @"Lookup (Get Existing)";
  }

  v4 = v3;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1C6968000, a2, OS_LOG_TYPE_DEBUG, "Domain not found on quirks list. Starting AuthKit operation: %@.", v5, 0xCu);
}

void __69__WBSHideMyEmailManager__performOperation_withURL_completionHandler___block_invoke_cold_3(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_3() state];
  v3 = WBSHideMyEmailRecordStateStringForRecordState();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __69__WBSHideMyEmailManager__performOperation_withURL_completionHandler___block_invoke_cold_4(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_3() state];
  v3 = WBSHideMyEmailRecordStateStringForRecordState();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __69__WBSHideMyEmailManager__performOperation_withURL_completionHandler___block_invoke_4_cold_1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1C6968000, v1, OS_LOG_TYPE_ERROR, "Failed to get Hide My Email record with error: %{public}@.", v4, 0xCu);
}

void __69__WBSHideMyEmailManager__performOperation_withURL_completionHandler___block_invoke_4_cold_3(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_3() state];
  v3 = WBSHideMyEmailRecordStateStringForRecordState();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __69__WBSHideMyEmailManager__performOperation_withURL_completionHandler___block_invoke_5_cold_1(char a1, void *a2)
{
  v3 = @"NO";
  if (a1)
  {
    v3 = @"YES";
  }

  v4 = v3;
  v5 = a2;
  [OUTLINED_FUNCTION_3() state];
  v11 = WBSHideMyEmailRecordStateStringForRecordState();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

@end