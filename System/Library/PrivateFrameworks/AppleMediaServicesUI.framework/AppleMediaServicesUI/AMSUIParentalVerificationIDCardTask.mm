@interface AMSUIParentalVerificationIDCardTask
+ (id)_descriptorForMinimumAge:(int64_t)age;
+ (id)_identityController;
+ (id)_identityRequestWithDescriptor:(id)descriptor nonce:(id)nonce;
+ (id)_requestDictFromMinimumAge:(int64_t)age walletData:(id)data nonce:(id)nonce;
+ (int64_t)_minAgeFromObject:(id)object;
- (AMSUIParentalVerificationIDCardTask)initWithAccount:(id)account accountParameters:(id)parameters bag:(id)bag displayName:(id)name metrics:(id)metrics viewController:(id)controller;
- (id)_dataFromIDCardForMinimumAge:(int64_t)age nonce:(id)nonce;
- (id)_promiseToFetchIDCardTokenURL:(id)l requestBody:(id)body;
- (id)_promiseToLoadPVTURLWithBody:(id)body;
- (id)_promiseToRequestIDCardData;
- (id)performTask;
@end

@implementation AMSUIParentalVerificationIDCardTask

- (AMSUIParentalVerificationIDCardTask)initWithAccount:(id)account accountParameters:(id)parameters bag:(id)bag displayName:(id)name metrics:(id)metrics viewController:(id)controller
{
  accountCopy = account;
  parametersCopy = parameters;
  bagCopy = bag;
  nameCopy = name;
  metricsCopy = metrics;
  controllerCopy = controller;
  v24.receiver = self;
  v24.super_class = AMSUIParentalVerificationIDCardTask;
  v18 = [(AMSTask *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_originalAccount, account);
    objc_storeStrong(&v19->_accountParameters, parameters);
    objc_storeStrong(&v19->_bag, bag);
    objc_storeStrong(&v19->_displayName, name);
    objc_storeStrong(&v19->_metrics, metrics);
    objc_storeStrong(&v19->_viewController, controller);
  }

  return v19;
}

- (id)performTask
{
  v25 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v19 = 138543618;
    v20 = v5;
    v21 = 2114;
    v22 = v6;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running AMSUIParentalVerificationIDCardTask", &v19, 0x16u);
  }

  v7 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:*MEMORY[0x1E698C4C0]];
  originalAccount = [(AMSUIParentalVerificationIDCardTask *)self originalAccount];
  accountParameters = [(AMSUIParentalVerificationIDCardTask *)self accountParameters];
  v10 = [AMSUIPaymentVerificationProtocolHandler _accountToUseFromGivenAccount:originalAccount accountParameters:accountParameters accountStore:v7];

  if (v10)
  {
    [(AMSUIParentalVerificationIDCardTask *)self setAccount:v10];
    _promiseToRequestIDCardData = [(AMSUIParentalVerificationIDCardTask *)self _promiseToRequestIDCardData];
  }

  else
  {
    v12 = AMSCustomError();
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      v19 = 138543874;
      v20 = v15;
      v21 = 2114;
      v22 = v16;
      v23 = 2114;
      v24 = v12;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %{public}@", &v19, 0x20u);
    }

    _promiseToRequestIDCardData = [MEMORY[0x1E698CAD0] promiseWithError:v12];
    metrics = [(AMSUIParentalVerificationIDCardTask *)self metrics];
    [metrics setDisplayReason:@"Missing account"];
  }

  return _promiseToRequestIDCardData;
}

- (id)_promiseToRequestIDCardData
{
  account = [(AMSUIParentalVerificationIDCardTask *)self account];
  ams_altDSID = [account ams_altDSID];

  accountParameters = [(AMSUIParentalVerificationIDCardTask *)self accountParameters];
  v6 = [AMSUIParentalVerificationCore _minimumAgeFrom:accountParameters];

  if (v6)
  {
    v7 = -[AMSUIParentalVerificationIDCardTask _dataFromIDCardForMinimumAge:nonce:](self, "_dataFromIDCardForMinimumAge:nonce:", [v6 integerValue], ams_altDSID);
  }

  else
  {
    v8 = [(AMSUIParentalVerificationIDCardTask *)self bag];
    v9 = [v8 dictionaryForKey:@"parental-verification"];

    valuePromise = [v9 valuePromise];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__AMSUIParentalVerificationIDCardTask__promiseToRequestIDCardData__block_invoke;
    v12[3] = &unk_1E7F25470;
    v12[4] = self;
    v13 = ams_altDSID;
    v7 = [valuePromise thenWithBlock:v12];
  }

  return v7;
}

uint64_t __66__AMSUIParentalVerificationIDCardTask__promiseToRequestIDCardData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() _minAgeFromObject:v3];

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 _dataFromIDCardForMinimumAge:v4 nonce:v6];
}

- (id)_dataFromIDCardForMinimumAge:(int64_t)age nonce:(id)nonce
{
  nonceCopy = nonce;
  v7 = objc_alloc_init(MEMORY[0x1E698CA58]);
  v8 = [objc_opt_class() _descriptorForMinimumAge:age];
  _identityController = [objc_opt_class() _identityController];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__AMSUIParentalVerificationIDCardTask__dataFromIDCardForMinimumAge_nonce___block_invoke;
  v17[3] = &unk_1E7F25578;
  v17[4] = self;
  v18 = v8;
  v19 = nonceCopy;
  v20 = _identityController;
  v10 = v7;
  v21 = v10;
  ageCopy = age;
  v11 = _identityController;
  v12 = nonceCopy;
  v13 = v8;
  [v11 checkCanRequestDocument:v13 completion:v17];
  v14 = v21;
  v15 = v10;

  return v10;
}

void __74__AMSUIParentalVerificationIDCardTask__dataFromIDCardForMinimumAge_nonce___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [objc_opt_class() _identityRequestWithDescriptor:*(a1 + 40) nonce:*(a1 + 48)];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__AMSUIParentalVerificationIDCardTask__dataFromIDCardForMinimumAge_nonce___block_invoke_2;
    v10[3] = &unk_1E7F25550;
    v10[4] = *(a1 + 32);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
    v11 = v6;
    v13 = v7;
    v12 = *(a1 + 48);
    [v5 requestDocument:v4 completion:v10];
  }

  else
  {
    v8 = [v3 metrics];
    [v8 setDisplayReason:@"No suitable ID card"];

    v9 = AMSError();
    [*(a1 + 64) finishWithError:v9];
  }
}

void __74__AMSUIParentalVerificationIDCardTask__dataFromIDCardForMinimumAge_nonce___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 encryptedData];

  if (v7)
  {
    v8 = [v5 encryptedData];
    v9 = [objc_opt_class() _requestDictFromMinimumAge:*(a1 + 56) walletData:v8 nonce:*(a1 + 48)];
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) _promiseToLoadPVTURLWithBody:v9];
    [v10 finishWithPromise:v11];
  }

  else
  {
    v12 = [v6 code];
    v13 = [*(a1 + 32) metrics];
    v14 = v13;
    if (v12 == 2)
    {
      [v13 setDisplayReason:@"User closed wallet UI"];

      v15 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v15)
      {
        v15 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v16 = [v15 OSLogObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = AMSLogKey();
        *buf = 138543874;
        v34 = v17;
        v35 = 2114;
        v36 = v18;
        v37 = 2114;
        v38 = v6;
        _os_log_impl(&dword_1BB036000, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] ID Card UI was cancelled by user: %{public}@", buf, 0x20u);
      }

      v19 = *(a1 + 40);
      v31 = @"really_cancelled";
      v32 = MEMORY[0x1E695E118];
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v21 = AMSCustomError();
      [v19 finishWithError:v21];
    }

    else
    {
      [v13 setDisplayReason:@"ID Card document request failed"];

      v22 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v22)
      {
        v22 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = AMSLogKey();
        *buf = 138543874;
        v34 = v24;
        v35 = 2114;
        v36 = v25;
        v37 = 2114;
        v38 = v6;
        _os_log_impl(&dword_1BB036000, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Request document from wallet failed: %{public}@", buf, 0x20u);
      }

      v26 = *(a1 + 40);
      v27 = [*(a1 + 32) bag];
      v28 = [*(a1 + 32) viewController];
      v29 = [*(a1 + 32) metrics];
      v30 = [AMSUIParentalVerificationCommon _promiseToPromptAfterFailureWithBag:v27 viewController:v28 metrics:v29 pageID:@"ContinueNoIDCard" flowName:@"Wallet ID card"];
      [v26 finishWithPromise:v30];
    }
  }
}

+ (id)_descriptorForMinimumAge:(int64_t)age
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69B8930] ageThresholdElementWithAge:age];
  v4 = objc_alloc_init(getPKIdentityDriversLicenseDescriptorClass());
  v19[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  willNotStoreIntent = [MEMORY[0x1E69B8938] willNotStoreIntent];
  [v4 addElements:v5 withIntentToStore:willNotStoreIntent];

  v7 = objc_alloc_init(getPKIdentityPhotoIDDescriptorClass());
  v18 = v3;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  willNotStoreIntent2 = [MEMORY[0x1E69B8938] willNotStoreIntent];
  [v7 addElements:v8 withIntentToStore:willNotStoreIntent2];

  v10 = objc_alloc_init(getPKIdentityNationalIDCardDescriptorClass());
  [v10 setRegionCode:@"JP"];
  v17 = v3;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  willNotStoreIntent3 = [MEMORY[0x1E69B8938] willNotStoreIntent];
  [v10 addElements:v11 withIntentToStore:willNotStoreIntent3];

  v16[0] = v4;
  v16[1] = v7;
  v16[2] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  v14 = [objc_alloc(getPKIdentityAnyOfDescriptorClass()) initWithDescriptors:v13];

  return v14;
}

+ (id)_identityController
{
  v2 = objc_alloc_init(getPKIdentityAuthorizationControllerClass(self, a2));

  return v2;
}

+ (id)_identityRequestWithDescriptor:(id)descriptor nonce:(id)nonce
{
  v6 = getPKIdentityRequestClass[0];
  nonceCopy = nonce;
  descriptorCopy = descriptor;
  v9 = objc_alloc_init(v6());
  [v9 setDescriptor:descriptorCopy];

  v10 = [self _nonceFromString:nonceCopy];

  [v9 setNonce:v10];
  [v9 setMerchantIdentifier:@"com.apple.ams-identity-verification"];

  return v9;
}

- (id)_promiseToLoadPVTURLWithBody:(id)body
{
  bodyCopy = body;
  metrics = [(AMSUIParentalVerificationIDCardTask *)self metrics];
  [metrics enqueueEventWithPageId:@"ParentalVerificationIDCard" displayReason:0];

  v6 = [(AMSUIParentalVerificationIDCardTask *)self bag];
  v7 = [v6 URLForKey:@"verifyAgeMeadPvt"];

  valuePromise = [v7 valuePromise];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__AMSUIParentalVerificationIDCardTask__promiseToLoadPVTURLWithBody___block_invoke;
  v12[3] = &unk_1E7F25470;
  v12[4] = self;
  v13 = bodyCopy;
  v9 = bodyCopy;
  v10 = [valuePromise thenWithBlock:v12];

  return v10;
}

- (id)_promiseToFetchIDCardTokenURL:(id)l requestBody:(id)body
{
  bodyCopy = body;
  lCopy = l;
  account = [(AMSUIParentalVerificationIDCardTask *)self account];
  accountParameters = [(AMSUIParentalVerificationIDCardTask *)self accountParameters];
  v10 = [(AMSUIParentalVerificationIDCardTask *)self bag];
  v11 = [AMSUIPaymentVerificationProtocolHandler _promiseToFetchURLResponseForAccount:account accountParameters:accountParameters url:lCopy bag:v10 requestBody:bodyCopy bodyEncoding:3 contentType:0];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__AMSUIParentalVerificationIDCardTask__promiseToFetchIDCardTokenURL_requestBody___block_invoke;
  v14[3] = &unk_1E7F25498;
  v14[4] = self;
  v12 = [v11 continueWithBlock:v14];

  return v12;
}

id __81__AMSUIParentalVerificationIDCardTask__promiseToFetchIDCardTokenURL_requestBody___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) metrics];
    [v7 setDisplayReason:@"ID card data fetch failed"];

    v8 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v28 = 138543874;
      v29 = v10;
      v30 = 2114;
      v31 = v11;
      v32 = 2114;
      v33 = v6;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Fetch PVT for ID Card failed: %{public}@", &v28, 0x20u);
    }

    v12 = [*(a1 + 32) bag];
    v13 = [*(a1 + 32) viewController];
    v14 = [*(a1 + 32) metrics];
    v15 = [AMSUIParentalVerificationCommon _promiseToPromptAfterFailureWithBag:v12 viewController:v13 metrics:v14 pageID:@"ContinueNoIDCard" flowName:@"Wallet ID card"];
LABEL_7:

    goto LABEL_10;
  }

  v16 = [v5 object];
  v12 = [AMSUIParentalVerificationCore _tokenFromObject:v16];

  v13 = [AMSUIParentalVerificationCore _tokenResultFromTokenString:v12];
  if (!v13)
  {
    v20 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v20)
    {
      v20 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = AMSLogKey();
      v24 = [v5 object];
      v28 = 138543874;
      v29 = v22;
      v30 = 2114;
      v31 = v23;
      v32 = 2114;
      v33 = v24;
      _os_log_impl(&dword_1BB036000, v21, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Fetch PVT for ID Card response had no token: %{public}@", &v28, 0x20u);
    }

    v25 = [*(a1 + 32) metrics];
    [v25 setDisplayReason:@"ID card data failed"];

    v14 = [*(a1 + 32) bag];
    v26 = [*(a1 + 32) viewController];
    v27 = [*(a1 + 32) metrics];
    v15 = [AMSUIParentalVerificationCommon _promiseToPromptAfterFailureWithBag:v14 viewController:v26 metrics:v27 pageID:@"ContinueNoIDCard" flowName:@"Wallet ID card"];

    goto LABEL_7;
  }

  v17 = [*(a1 + 32) metrics];
  [v17 enqueueEventWithPageId:@"ParentVerified" displayReason:@"IDCard"];

  v18 = [*(a1 + 32) metrics];
  [v18 flushEvents];

  v15 = [MEMORY[0x1E698CAD0] promiseWithResult:v13];
LABEL_10:

  return v15;
}

+ (id)_requestDictFromMinimumAge:(int64_t)age walletData:(id)data nonce:(id)nonce
{
  v16[3] = *MEMORY[0x1E69E9840];
  nonceCopy = nonce;
  v8 = [data base64EncodedStringWithOptions:1];
  v15[0] = @"ageThreshold";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:age];
  v10 = v9;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = &stru_1F3921360;
  }

  v16[0] = v9;
  v16[1] = v11;
  v15[1] = @"digitalId";
  v15[2] = @"nonce";
  if (nonceCopy)
  {
    v12 = nonceCopy;
  }

  else
  {
    v12 = &stru_1F3921360;
  }

  v16[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  return v13;
}

+ (int64_t)_minAgeFromObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objectCopy;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"min-age"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      integerValue = [v6 integerValue];
    }

    else
    {
      integerValue = 18;
    }
  }

  else
  {
    integerValue = 18;
  }

  return integerValue;
}

@end