@interface AMSUIMarketingItemViewController
+ (AMSBagKeySet)bagKeySet;
+ (id)createBagForSubProfile;
- (AMSUIMarketingItemViewController)initWithMarketingItem:(id)item bag:(id)bag;
- (AMSUIMarketingItemViewController)initWithServiceType:(id)type placement:(id)placement account:(id)account bag:(id)bag;
- (AMSUIMarketingItemViewController)initWithServiceType:(id)type placement:(id)placement bag:(id)bag;
- (NSString)offerHints;
- (NSString)seed;
- (id)_performCampaignAttributionWithBag:(id)bag;
- (void)_performCampaignAttributionIfNeeded;
- (void)_setInternalClientOptionsValue:(id)value forKey:(id)key;
@end

@implementation AMSUIMarketingItemViewController

- (AMSUIMarketingItemViewController)initWithMarketingItem:(id)item bag:(id)bag
{
  v15[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  bagCopy = bag;
  v8 = [bagCopy URLForKey:@"marketingItemDynamicUIUrl"];
  v13.receiver = self;
  v13.super_class = AMSUIMarketingItemViewController;
  v9 = [(AMSUIDynamicViewController *)&v13 initWithBag:bagCopy bagValue:v8];

  if (v9)
  {
    [(AMSUIMarketingItemViewController *)v9 setOriginalBag:bagCopy];
    [(AMSUIMarketingItemViewController *)v9 _performCampaignAttributionIfNeeded];
    v14 = @"marketingItem";
    rawValues = [itemCopy rawValues];
    v15[0] = rawValues;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [(AMSUIDynamicViewController *)v9 setInternalClientOptions:v11];
  }

  return v9;
}

- (AMSUIMarketingItemViewController)initWithServiceType:(id)type placement:(id)placement bag:(id)bag
{
  v17[2] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  placementCopy = placement;
  bagCopy = bag;
  v11 = [bagCopy URLForKey:@"marketingItemDynamicUIUrl"];
  v15.receiver = self;
  v15.super_class = AMSUIMarketingItemViewController;
  v12 = [(AMSUIDynamicViewController *)&v15 initWithBag:bagCopy bagValue:v11];

  if (v12)
  {
    [(AMSUIMarketingItemViewController *)v12 setOriginalBag:bagCopy];
    [(AMSUIMarketingItemViewController *)v12 _performCampaignAttributionIfNeeded];
    v16[0] = @"serviceType";
    v16[1] = @"placement";
    v17[0] = typeCopy;
    v17[1] = placementCopy;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    [(AMSUIDynamicViewController *)v12 setInternalClientOptions:v13];
  }

  return v12;
}

- (NSString)offerHints
{
  internalClientOptions = [(AMSUIDynamicViewController *)self internalClientOptions];
  v3 = [internalClientOptions objectForKeyedSubscript:@"offerHints"];

  return v3;
}

- (NSString)seed
{
  internalClientOptions = [(AMSUIDynamicViewController *)self internalClientOptions];
  v3 = [internalClientOptions objectForKeyedSubscript:@"seed"];

  return v3;
}

- (void)_setInternalClientOptionsValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  internalClientOptions = [(AMSUIDynamicViewController *)self internalClientOptions];
  v9 = [internalClientOptions mutableCopy];

  [v9 setObject:valueCopy forKeyedSubscript:keyCopy];
  [(AMSUIDynamicViewController *)self setInternalClientOptions:v9];
}

- (void)_performCampaignAttributionIfNeeded
{
  v14 = *MEMORY[0x1E69E9840];
  campaignQueryParameters = [(AMSUIMarketingItemViewController *)self campaignQueryParameters];
  v4 = [campaignQueryParameters count];

  if (v4)
  {
    originalBag = [(AMSUIMarketingItemViewController *)self originalBag];
    oSLogObject = [(AMSUIMarketingItemViewController *)self _performCampaignAttributionWithBag:originalBag];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__AMSUIMarketingItemViewController__performCampaignAttributionIfNeeded__block_invoke;
    v9[3] = &unk_1E7F24FB0;
    v9[4] = self;
    [oSLogObject addFinishBlock:v9];
  }

  else
  {
    originalBag = [MEMORY[0x1E698C968] sharedConfig];
    if (!originalBag)
    {
      originalBag = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [originalBag OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      *buf = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No campaign query parameters provided", buf, 0x16u);
    }
  }
}

void __71__AMSUIMarketingItemViewController__performCampaignAttributionIfNeeded__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E698C968] sharedConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = AMSLogableError();
      v11 = 138543874;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Campaign attribution failed with error: %{public}@", &v11, 0x20u);

LABEL_10:
    }
  }

  else
  {
    if (!v4)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v8 = AMSLogKey();
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Campaign attribution completed successfully", &v11, 0x16u);
      goto LABEL_10;
    }
  }
}

- (id)_performCampaignAttributionWithBag:(id)bag
{
  v24 = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  v5 = AMSLogKey();
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    campaignQueryParameters = [(AMSUIMarketingItemViewController *)self campaignQueryParameters];
    *buf = 138543874;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    v22 = 2112;
    v23 = campaignQueryParameters;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found campaign query parameters, kicking off Campaign Attribution: %@", buf, 0x20u);
  }

  v11 = [bagCopy URLForKey:@"marketingItemDynamicUIUrl"];
  valuePromise = [v11 valuePromise];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__AMSUIMarketingItemViewController__performCampaignAttributionWithBag___block_invoke;
  v16[3] = &unk_1E7F24FD8;
  v16[4] = self;
  v17 = bagCopy;
  v13 = bagCopy;
  v14 = [valuePromise continueWithBlock:v16];

  return v14;
}

id __71__AMSUIMarketingItemViewController__performCampaignAttributionWithBag___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v13 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v13)
    {
      v13 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      v17 = AMSLogableError();
      *buf = 138543874;
      v56 = v15;
      v57 = 2114;
      v58 = v16;
      v59 = 2114;
      v60 = v17;
      _os_log_impl(&dword_1BB036000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to get dynamic UI URL for campaign attribution: %{public}@", buf, 0x20u);
    }

    v18 = [MEMORY[0x1E698CAD0] promiseWithError:v6];
  }

  else
  {
    v7 = [MEMORY[0x1E696AF20] componentsWithURL:a2 resolvingAgainstBaseURL:0];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 queryItems];
      v10 = [v9 mutableCopy];
      v11 = v10;
      v49 = v8;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = [MEMORY[0x1E695DF70] array];
      }

      v25 = v12;

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v26 = [*(a1 + 32) campaignQueryParameters];
      v27 = [v26 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v51;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v51 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v50 + 1) + 8 * i);
            v32 = [*(a1 + 32) campaignQueryParameters];
            v33 = [v32 objectForKeyedSubscript:v31];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v34 = [MEMORY[0x1E696AF60] queryItemWithName:v31 value:v33];
              [v25 addObject:v34];
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v28);
      }

      v8 = v49;
      v24 = v25;
      [v49 setQueryItems:v25];
      v35 = [v49 URL];
      v36 = [MEMORY[0x1E698C968] sharedConfig];
      v37 = v36;
      if (v35)
      {
        if (!v36)
        {
          v37 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v38 = [v37 OSLogObject];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = objc_opt_class();
          v40 = AMSLogKey();
          *buf = 138543874;
          v56 = v39;
          v57 = 2114;
          v58 = v40;
          v59 = 2112;
          v60 = v35;
          _os_log_impl(&dword_1BB036000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Calling campaign task with URL: %@", buf, 0x20u);
        }

        v41 = [objc_alloc(MEMORY[0x1E698C820]) initWithURL:v35 bag:*(a1 + 40)];
        v42 = [*(a1 + 32) account];
        [v41 setAccount:v42];

        v43 = [v41 perform];
      }

      else
      {
        if (!v36)
        {
          v37 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v44 = [v37 OSLogObject];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = objc_opt_class();
          v46 = AMSLogKey();
          *buf = 138543618;
          v56 = v45;
          v57 = 2114;
          v58 = v46;
          _os_log_impl(&dword_1BB036000, v44, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to construct URL with campaign attribution query parameters", buf, 0x16u);
        }

        v47 = MEMORY[0x1E698CAD0];
        v41 = AMSError();
        v43 = [v47 promiseWithError:v41];
      }

      v18 = v43;

      v6 = 0;
    }

    else
    {
      v19 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v19)
      {
        v19 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v20 = [v19 OSLogObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        v22 = AMSLogKey();
        *buf = 138543618;
        v56 = v21;
        v57 = 2114;
        v58 = v22;
        _os_log_impl(&dword_1BB036000, v20, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create URL components for campaign attribution", buf, 0x16u);
      }

      v23 = MEMORY[0x1E698CAD0];
      v24 = AMSError();
      v18 = [v23 promiseWithError:v24];
    }
  }

  return v18;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(MEMORY[0x1E698CA40]);
  [v2 addBagKey:@"marketingItemDynamicUIUrl" valueType:5 defaultValue:@"https://amsui.apple.com/dynamic/marketing#route=marketingItem"];
  v3 = +[AMSUIDynamicViewController bagKeySet];
  [v2 unionBagKeySet:v3];

  return v2;
}

+ (id)createBagForSubProfile
{
  v2 = MEMORY[0x1E698C7E0];
  bagKeySet = [objc_opt_class() bagKeySet];
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  [v2 registerBagKeySet:bagKeySet forProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  v6 = MEMORY[0x1E698C7D8];
  bagSubProfile2 = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion2 = [objc_opt_class() bagSubProfileVersion];
  v9 = [v6 bagForProfile:bagSubProfile2 profileVersion:bagSubProfileVersion2];

  return v9;
}

- (AMSUIMarketingItemViewController)initWithServiceType:(id)type placement:(id)placement account:(id)account bag:(id)bag
{
  accountCopy = account;
  v11 = [(AMSUIMarketingItemViewController *)self initWithServiceType:type placement:placement bag:bag];
  v12 = v11;
  if (v11)
  {
    [(AMSUIDynamicViewController *)v11 setAccount:accountCopy];
  }

  return v12;
}

@end