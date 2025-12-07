@interface VUIPurchaser
+ (id)sharedInstance;
- (BOOL)_isInterruptedPurchaseFulfilledBySSPurchaseResponse:(id)response;
- (BOOL)isPurchaseInProgress;
- (BOOL)isPurchasing:(id)purchasing;
- (VUIPurchaseRequest)interruptedPurchaseRequest;
- (VUIPurchaser)init;
- (id)_getAdamIdFromBuyParams:(id)params;
- (void)didCompleteInterruptedBuyWithResponse:(id)response error:(id)error;
- (void)enqueuePurchase:(id)purchase withCompletion:(id)completion;
- (void)eventMonitor:(id)monitor receivedEventWithName:(id)name userInfo:(id)info;
- (void)forgetPurchasing:(id)purchasing;
- (void)postCrossProcessNotificationWithBuyParams:(id)params error:(id)error;
- (void)purchase:(id)purchase handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)purchase:(id)purchase handleDialogRequest:(id)request completion:(id)completion;
- (void)purchase:(id)purchase handleEngagementRequest:(id)request completion:(id)completion;
- (void)rememberPurchasing:(id)purchasing;
- (void)setInterruptedPurchaseRequest:(id)request;
@end

@implementation VUIPurchaser

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_15 != -1)
  {
    +[VUIPurchaser sharedInstance];
  }

  v3 = sharedInstance_purchaser;

  return v3;
}

void __30__VUIPurchaser_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUIPurchaser);
  v1 = sharedInstance_purchaser;
  sharedInstance_purchaser = v0;
}

- (VUIPurchaser)init
{
  v12.receiver = self;
  v12.super_class = VUIPurchaser;
  v2 = [(VUIPurchaser *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    purchasingParamsSet = v2->_purchasingParamsSet;
    v2->_purchasingParamsSet = v3;

    vui_defaultBag = [MEMORY[0x1E698C7D8] vui_defaultBag];
    v6 = [objc_alloc(MEMORY[0x1E698CD18]) initWithBag:vui_defaultBag];
    [v6 setPurchaseTaskClass:objc_opt_class()];
    [v6 setDelegate:v2];
    v7 = [objc_alloc(MEMORY[0x1E698CD10]) initWithConfiguration:v6];
    purchaseUIQueue = v2->_purchaseUIQueue;
    v2->_purchaseUIQueue = v7;

    v9 = objc_alloc_init(MEMORY[0x1E69D4900]);
    eventMonitor = v2->_eventMonitor;
    v2->_eventMonitor = v9;

    [(SSEventMonitor *)v2->_eventMonitor setDelegate:v2];
  }

  return v2;
}

- (void)enqueuePurchase:(id)purchase withCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  purchaseCopy = purchase;
  [(VUIPurchaser *)self setInterruptedPurchaseRequest:purchaseCopy];
  purchase = [purchaseCopy purchase];

  uniqueIdentifier = [purchase uniqueIdentifier];
  v10 = VUIDefaultLogObject(uniqueIdentifier);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = uniqueIdentifier;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - enqueue purchase %@", buf, 0xCu);
  }

  v11 = _Block_copy(completionCopy);
  v12 = _completion;
  _completion = v11;

  purchaseUIQueue = [(VUIPurchaser *)self purchaseUIQueue];
  v26 = purchase;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v15 = [purchaseUIQueue enquePurchases:v14];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __47__VUIPurchaser_enqueuePurchase_withCompletion___block_invoke;
  v24[3] = &unk_1E8732000;
  v16 = completionCopy;
  v25 = v16;
  [v15 addErrorBlock:v24];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__VUIPurchaser_enqueuePurchase_withCompletion___block_invoke_16;
  aBlock[3] = &unk_1E8732028;
  aBlock[4] = self;
  v23 = v16;
  v17 = v16;
  v18 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __47__VUIPurchaser_enqueuePurchase_withCompletion___block_invoke_18;
  v20[3] = &unk_1E8732050;
  v21 = v18;
  v19 = v18;
  [v15 addSuccessBlock:v20];
}

void __47__VUIPurchaser_enqueuePurchase_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = VUIDefaultLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 userInfo];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - purchase failed %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __47__VUIPurchaser_enqueuePurchase_withCompletion___block_invoke_16(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) setInterruptedPurchaseRequest:0];
  v4 = [v3 purchase];
  v5 = [v4 uniqueIdentifier];

  v7 = VUIDefaultLogObject(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - purchase succeeded %@", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void __47__VUIPurchaser_enqueuePurchase_withCompletion___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  (*(*(a1 + 32) + 16))();
}

- (void)postCrossProcessNotificationWithBuyParams:(id)params error:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  paramsCopy = params;
  errorCopy = error;
  v7 = objc_opt_new();
  v8 = v7;
  if (errorCopy)
  {
    [v7 setObject:errorCopy forKeyedSubscript:@"VUIStoreAcquisitionCrossProcessNotificationKeyError"];
  }

  v9 = [paramsCopy length];
  if (v9)
  {
    v9 = [v8 setObject:paramsCopy forKeyedSubscript:@"VUIStoreAcquisitionCrossProcessNotificationKeyBuyParams"];
  }

  v10 = VUIDefaultLogObject(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = paramsCopy;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - Posting VUIStoreAcquisitionCrossProcessNotification with buy params: %@, error: %@", &v12, 0x16u);
  }

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter vui_postNotificationName:@"com.apple.VideosUI.StoreAcquisitionCrossProcessNotification" object:0 userInfo:v8];
}

- (BOOL)isPurchaseInProgress
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(NSMutableSet *)self->_purchasingParamsSet count];
  v3 = VUIDefaultLogObject(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = v2;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - isPurchaseInProgress: %ld", &v5, 0xCu);
  }

  return v2 != 0;
}

- (BOOL)isPurchasing:(id)purchasing
{
  v13 = *MEMORY[0x1E69E9840];
  purchasingCopy = purchasing;
  v5 = [(NSMutableSet *)self->_purchasingParamsSet containsObject:purchasingCopy];
  v6 = VUIDefaultLogObject(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "Not Purchasing";
    if (v5)
    {
      v7 = "Purchasing";
    }

    v9 = 136315394;
    v10 = v7;
    v11 = 2112;
    v12 = purchasingCopy;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - %s: %@", &v9, 0x16u);
  }

  return v5;
}

- (void)rememberPurchasing:(id)purchasing
{
  v8 = *MEMORY[0x1E69E9840];
  purchasingCopy = purchasing;
  v5 = VUIDefaultLogObject(purchasingCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = purchasingCopy;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - rememberPurchasing: %@", &v6, 0xCu);
  }

  [(NSMutableSet *)self->_purchasingParamsSet addObject:purchasingCopy];
}

- (void)forgetPurchasing:(id)purchasing
{
  v8 = *MEMORY[0x1E69E9840];
  purchasingCopy = purchasing;
  v5 = VUIDefaultLogObject(purchasingCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = purchasingCopy;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - forgetPurchasing: %@", &v6, 0xCu);
  }

  [(NSMutableSet *)self->_purchasingParamsSet removeObject:purchasingCopy];
}

- (void)purchase:(id)purchase handleAuthenticateRequest:(id)request completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  purchaseCopy = purchase;
  requestCopy = request;
  completionCopy = completion;
  v10 = VUIDefaultLogObject(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [requestCopy logKey];
    uniqueIdentifier = [purchaseCopy uniqueIdentifier];
    *buf = 138412546;
    v22 = logKey;
    v23 = 2112;
    v24 = uniqueIdentifier;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - handle auth request %@ for purchase %@", buf, 0x16u);
  }

  v16 = MEMORY[0x1E69E9820];
  v17 = __62__VUIPurchaser_purchase_handleAuthenticateRequest_completion___block_invoke;
  v18 = &unk_1E872E580;
  v19 = requestCopy;
  v20 = completionCopy;
  v13 = MEMORY[0x1E696AF00];
  v14 = completionCopy;
  v15 = requestCopy;
  if ([v13 isMainThread])
  {
    v17(&v16);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v16);
  }
}

void __62__VUIPurchaser_purchase_handleAuthenticateRequest_completion___block_invoke(uint64_t a1)
{
  v2 = +[VUIApplicationRouter topMostVisibleViewController];
  v3 = [objc_alloc(MEMORY[0x1E698CC58]) initWithRequest:*(a1 + 32) presentingViewController:v2];
  v4 = [v3 performAuthentication];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__VUIPurchaser_purchase_handleAuthenticateRequest_completion___block_invoke_2;
  v5[3] = &unk_1E872F580;
  v6 = *(a1 + 40);
  [v4 addFinishBlock:v5];
}

void __62__VUIPurchaser_purchase_handleAuthenticateRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = VUIDefaultLogObject(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 authenticationResults];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - finished auth request: %@, %@", &v10, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

- (void)purchase:(id)purchase handleDialogRequest:(id)request completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  purchaseCopy = purchase;
  requestCopy = request;
  completionCopy = completion;
  v10 = VUIDefaultLogObject(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [requestCopy logKey];
    uniqueIdentifier = [purchaseCopy uniqueIdentifier];
    *buf = 138412546;
    v22 = logKey;
    v23 = 2112;
    v24 = uniqueIdentifier;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - handle dialog request %@ for purchase %@", buf, 0x16u);
  }

  v16 = MEMORY[0x1E69E9820];
  v17 = __56__VUIPurchaser_purchase_handleDialogRequest_completion___block_invoke;
  v18 = &unk_1E872E580;
  v19 = requestCopy;
  v20 = completionCopy;
  v13 = MEMORY[0x1E696AF00];
  v14 = completionCopy;
  v15 = requestCopy;
  if ([v13 isMainThread])
  {
    v17(&v16);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v16);
  }
}

void __56__VUIPurchaser_purchase_handleDialogRequest_completion___block_invoke(uint64_t a1)
{
  v2 = +[VUIApplicationRouter topMostVisibleViewController];
  v3 = [objc_alloc(MEMORY[0x1E698CC50]) initWithRequest:*(a1 + 32) presentingViewController:v2];
  v4 = [v3 present];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__VUIPurchaser_purchase_handleDialogRequest_completion___block_invoke_2;
  v5[3] = &unk_1E8730620;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v4 addFinishBlock:v5];
}

void __56__VUIPurchaser_purchase_handleDialogRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 selectedActionIdentifier];
  v9 = [v7 locateActionWithIdentifier:v8];
  v10 = [v9 style];

  v12 = VUIDefaultLogObject(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218498;
    v17 = v10;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - finished dialog with actionStyle %ld for request: %@, %@", &v16, 0x20u);
  }

  if ((v10 - 1) <= 1)
  {
    v14 = VUIDefaultLogObject(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - User canceled purchase dialog", &v16, 2u);
    }
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, v5, v6);
  }
}

- (void)purchase:(id)purchase handleEngagementRequest:(id)request completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  purchaseCopy = purchase;
  requestCopy = request;
  completionCopy = completion;
  v10 = VUIDefaultLogObject(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [requestCopy logKey];
    uniqueIdentifier = [purchaseCopy uniqueIdentifier];
    *buf = 138412546;
    v22 = logKey;
    v23 = 2112;
    v24 = uniqueIdentifier;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - handle engagement request %@ for purchase %@", buf, 0x16u);
  }

  v16 = MEMORY[0x1E69E9820];
  v17 = __60__VUIPurchaser_purchase_handleEngagementRequest_completion___block_invoke;
  v18 = &unk_1E872E580;
  v19 = requestCopy;
  v20 = completionCopy;
  v13 = MEMORY[0x1E696AF00];
  v14 = completionCopy;
  v15 = requestCopy;
  if ([v13 isMainThread])
  {
    v17(&v16);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v16);
  }
}

void __60__VUIPurchaser_purchase_handleEngagementRequest_completion___block_invoke(uint64_t a1)
{
  v5 = +[VUIApplicationRouter topMostVisibleViewController];
  v2 = [MEMORY[0x1E698C7D8] vui_defaultBag];
  v3 = [objc_alloc(MEMORY[0x1E698CCD0]) initWithRequest:*(a1 + 32) bag:v2 presentingViewController:v5];
  v4 = [v3 presentEngagement];
  [v4 addFinishBlock:*(a1 + 40)];
}

- (void)setInterruptedPurchaseRequest:(id)request
{
  v15 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  selfCopy = self;
  v7 = objc_sync_enter(selfCopy);
  if (selfCopy->_interruptedPurchaseRequest != requestCopy)
  {
    if (requestCopy)
    {
      v8 = VUIDefaultLogObject(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        purchase = [(VUIPurchaseRequest *)requestCopy purchase];
        uniqueIdentifier = [purchase uniqueIdentifier];
        v13 = 138412290;
        v14 = uniqueIdentifier;
        _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - Remember request [%@] for interrupted case", &v13, 0xCu);
      }
    }

    else
    {
      v8 = VUIDefaultLogObject(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        purchase2 = [(VUIPurchaseRequest *)selfCopy->_interruptedPurchaseRequest purchase];
        uniqueIdentifier2 = [purchase2 uniqueIdentifier];
        v13 = 138412290;
        v14 = uniqueIdentifier2;
        _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - Forget request [%@] for interrupted case", &v13, 0xCu);
      }
    }

    objc_storeStrong(&selfCopy->_interruptedPurchaseRequest, request);
  }

  objc_sync_exit(selfCopy);
}

- (VUIPurchaseRequest)interruptedPurchaseRequest
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_interruptedPurchaseRequest;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)didCompleteInterruptedBuyWithResponse:(id)response error:(id)error
{
  v37 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  errorCopy = error;
  v8 = VUIDefaultLogObject(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = responseCopy;
    v35 = 2112;
    v36 = errorCopy;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - Received interrupted buy completion event [%@], error: %@", buf, 0x16u);
  }

  purchase = [(VUIPurchaseRequest *)self->_interruptedPurchaseRequest purchase];
  buyParams = [purchase buyParams];
  stringValue = [buyParams stringValue];

  v12 = [(VUIPurchaser *)self _getAdamIdFromBuyParams:stringValue];
  v13 = v12;
  if (v12)
  {
    longLongValue = [v12 longLongValue];
    v15 = [responseCopy vui_dictionaryForKey:@"metrics"];
    v31 = [v15 vui_arrayForKey:@"itemIds"];
    firstObject = [v31 firstObject];
    v32 = errorCopy;
    if (firstObject)
    {
      v17 = firstObject;
      v30 = 0;
      v18 = 0;
    }

    else
    {
      v18 = [responseCopy vui_arrayForKey:@"songList"];
      firstObject2 = [v18 firstObject];
      v20 = [firstObject2 vui_numberForKey:@"songId"];
      if (v20)
      {
        v17 = v20;
        v30 = firstObject2;
      }

      else
      {
        v21 = [responseCopy vui_arrayForKey:@"app-list"];

        firstObject3 = [v21 firstObject];
        v23 = firstObject2;
        v24 = firstObject3;

        v17 = [v24 vui_numberForKey:@"item-id"];
        v30 = v24;
        v18 = v21;
      }
    }

    longLongValue2 = [v17 longLongValue];
    v26 = VUIDefaultLogObject(longLongValue2);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v34 = longLongValue;
      v35 = 2048;
      v36 = longLongValue2;
      _os_log_impl(&dword_1E323F000, v26, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - saved interrupted buy [%li], incoming buy [%li] ", buf, 0x16u);
    }

    v28 = VUIDefaultLogObject(v27);
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (longLongValue2 && longLongValue && longLongValue == longLongValue2)
    {
      if (v29)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v28, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - Interrupted buy completed!", buf, 2u);
      }

      errorCopy = v32;
      [(VUIPurchaseRequest *)self->_interruptedPurchaseRequest handleRequestCompletionWithResult:responseCopy andError:v32];
    }

    else
    {
      if (v29)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v28, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - Not the buy completion for which we were interrupted", buf, 2u);
      }

      errorCopy = v32;
    }
  }

  else
  {
    v15 = VUIDefaultLogObject(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - No saved interrupted purchase request", buf, 2u);
    }
  }
}

- (id)_getAdamIdFromBuyParams:(id)params
{
  v20 = *MEMORY[0x1E69E9840];
  paramsCopy = params;
  if ([paramsCopy length])
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v4 setQuery:paramsCopy];
    [v4 queryItems];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          name = [v10 name];
          v12 = [name isEqualToString:@"salableAdamId"];

          if (v12)
          {
            value = [v10 value];
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    value = 0;
LABEL_12:
  }

  else
  {
    value = 0;
  }

  return value;
}

- (void)eventMonitor:(id)monitor receivedEventWithName:(id)name userInfo:(id)info
{
  v44 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  infoCopy = info;
  v9 = VUIDefaultLogObject(infoCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = nameCopy;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - Received SS event [%@]", buf, 0xCu);
  }

  if ([nameCopy isEqualToString:*MEMORY[0x1E69D4C30]])
  {
    v10 = [infoCopy objectForKey:@"response"];
    if (!v10)
    {
      v11 = VUIDefaultLogObject(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - No payload in ss purchase completion event", buf, 2u);
      }

      goto LABEL_19;
    }

    v37 = 0;
    v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v37];
    v12 = v37;
    if (v12)
    {
      v13 = v12;
      v14 = VUIDefaultLogObject(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v13;
        _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - Failed to unarchive data with error: %@", buf, 0xCu);
      }

      goto LABEL_18;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v13 = VUIDefaultLogObject(isKindOfClass);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v18 = "VUIPurchaser - ss event payload has invalid response type";
        goto LABEL_17;
      }

LABEL_18:

LABEL_19:
      goto LABEL_20;
    }

    error = [v11 error];

    if (error)
    {
      v13 = VUIDefaultLogObject(v17);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v18 = "VUIPurchaser - SS event success notification receieved an unexpected error";
LABEL_17:
        _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    v19 = [(VUIPurchaser *)self _isInterruptedPurchaseFulfilledBySSPurchaseResponse:v11];
    v20 = v19;
    v13 = VUIDefaultLogObject(v19);
    v21 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if ((v20 & 1) == 0)
    {
      if (!v21)
      {
        goto LABEL_18;
      }

      *buf = 0;
      v18 = "VUIPurchaser - Not the buy completion for which we were interrupted";
      goto LABEL_17;
    }

    if (v21)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - Interrupted buy completed!", buf, 2u);
    }

    uRLResponse = [v11 URLResponse];
    bodyData = [uRLResponse bodyData];

    if (bodyData)
    {
      v36 = 0;
      v24 = [MEMORY[0x1E696AE40] propertyListWithData:bodyData options:0 format:0 error:&v36];
      v25 = v36;
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    error2 = [v11 error];
    v27 = error2;
    if (v24)
    {
      v28 = 0;
    }

    else
    {
      v28 = v25;
    }

    if (error2)
    {
      v28 = error2;
    }

    v13 = v28;

    domain = [v13 domain];
    v35 = bodyData;
    if ([domain isEqualToString:*MEMORY[0x1E69E46D0]])
    {
      code = [v13 code];

      if (code == 16)
      {
        v32 = 1;
        goto LABEL_43;
      }
    }

    else
    {
    }

    v33 = [v24 objectForKey:*MEMORY[0x1E69E4830]];
    v32 = v33 != 0;

    if (!v25 && !v13 && !v33 && v24)
    {
      [(VUIPurchaseRequest *)self->_interruptedPurchaseRequest handleRequestCompletionWithResult:v24 andError:0];
      v25 = 0;
LABEL_46:

      goto LABEL_18;
    }

LABEL_43:
    v34 = VUIDefaultLogObject(v31);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v39 = v13;
      v40 = 2112;
      v41 = v25;
      v42 = 1024;
      v43 = v32;
      _os_log_impl(&dword_1E323F000, v34, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - Error finishing interrupted purchse: [%@] plist error [%@] Was cancelled [%d]", buf, 0x1Cu);
    }

    [(VUIPurchaser *)self setInterruptedPurchaseRequest:0];
    goto LABEL_46;
  }

LABEL_20:
}

- (BOOL)_isInterruptedPurchaseFulfilledBySSPurchaseResponse:(id)response
{
  v22 = *MEMORY[0x1E69E9840];
  purchase = [response purchase];
  v5 = purchase;
  if (!purchase)
  {
    buyParameters = VUIDefaultLogObject(0);
    if (os_log_type_enabled(buyParameters, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      v16 = "VUIPurchaser - Interrupted purchase not valid ss response";
LABEL_13:
      _os_log_impl(&dword_1E323F000, buyParameters, OS_LOG_TYPE_DEFAULT, v16, &v18, 2u);
    }

LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

  if (!self->_interruptedPurchaseRequest)
  {
    buyParameters = VUIDefaultLogObject(purchase);
    if (os_log_type_enabled(buyParameters, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      v16 = "VUIPurchaser - No interrupted purchase request";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  buyParameters = [purchase buyParameters];
  purchase2 = [(VUIPurchaseRequest *)self->_interruptedPurchaseRequest purchase];
  buyParams = [purchase2 buyParams];
  stringValue = [buyParams stringValue];

  v11 = VUIDefaultLogObject(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = buyParameters;
    v20 = 2112;
    v21 = stringValue;
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIPurchaser - buyParams [%@], interruptedBuyParams[%@] ", &v18, 0x16u);
  }

  v12 = [(VUIPurchaser *)self _getAdamIdFromBuyParams:buyParameters];
  v13 = [(VUIPurchaser *)self _getAdamIdFromBuyParams:stringValue];
  v14 = v13;
  v15 = 0;
  if (v12 && v13)
  {
    v15 = [v12 isEqualToString:v13];
  }

LABEL_15:
  return v15;
}

@end