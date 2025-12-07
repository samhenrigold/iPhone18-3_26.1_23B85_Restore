@interface DMFWebsitePolicyMonitor
+ (NSSet)policyTypes;
- (BOOL)hasAnyRestrictivePoliciesWithError:(id *)error;
- (DMFWebsitePolicyMonitor)initWithPolicyChangeHandler:(id)handler;
- (void)dealloc;
- (void)hasAnyRestrictivePoliciesWithCompletionHandler:(id)handler;
- (void)requestPoliciesForWebsites:(id)websites completionHandler:(id)handler;
@end

@implementation DMFWebsitePolicyMonitor

+ (NSSet)policyTypes
{
  if (policyTypes_onceToken_2 != -1)
  {
    +[DMFWebsitePolicyMonitor policyTypes];
  }

  v2 = [policyTypes_types_2 copy];

  return v2;
}

void __38__DMFWebsitePolicyMonitor_policyTypes__block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"applications";
  v4[1] = @"categories";
  v4[2] = @"websites";
  v4[3] = @"websitecategories";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = policyTypes_types_2;
  policyTypes_types_2 = v2;
}

- (DMFWebsitePolicyMonitor)initWithPolicyChangeHandler:(id)handler
{
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = DMFWebsitePolicyMonitor;
  v5 = [(DMFWebsitePolicyMonitor *)&v17 init];
  if (v5)
  {
    v6 = objc_opt_new();
    identifier = v5->_identifier;
    v5->_identifier = v6;

    if (handlerCopy)
    {
      policyTypes = [objc_opt_class() policyTypes];
      v9 = [[DMFPolicyRegistration alloc] initWithIdentifier:@"dmf.policy.monitor.web" policyTypes:policyTypes callback:handlerCopy];
      v10 = +[DMFPolicyMonitor policyMonitor];
      v11 = v5->_identifier;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __55__DMFWebsitePolicyMonitor_initWithPolicyChangeHandler___block_invoke;
      v14[3] = &unk_1E8616088;
      v15 = v5;
      v16 = policyTypes;
      v12 = policyTypes;
      [v10 addRegistration:v9 forPolicyMonitorIdentifier:v11 completionHandler:v14];
    }
  }

  return v5;
}

void __55__DMFWebsitePolicyMonitor_initWithPolicyChangeHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2)
  {
    v7 = DMFPolicyLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__DMFWebsitePolicyMonitor_initWithPolicyChangeHandler___block_invoke_cold_1(a1, v6, v7);
    }
  }
}

- (void)dealloc
{
  v3 = +[DMFPolicyMonitor policyMonitor];
  [v3 invalidatePolicyMonitor:self->_identifier];

  v4.receiver = self;
  v4.super_class = DMFWebsitePolicyMonitor;
  [(DMFWebsitePolicyMonitor *)&v4 dealloc];
}

- (void)requestPoliciesForWebsites:(id)websites completionHandler:(id)handler
{
  handlerCopy = handler;
  websitesCopy = websites;
  v7 = +[DMFPolicyMonitor policyMonitor];
  [v7 requestPoliciesForWebsiteURLs:websitesCopy completionHandler:handlerCopy];
}

- (void)hasAnyRestrictivePoliciesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[DMFPolicyMonitor policyMonitor];
  policyTypes = [objc_opt_class() policyTypes];
  allObjects = [policyTypes allObjects];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__DMFWebsitePolicyMonitor_hasAnyRestrictivePoliciesWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E8616D60;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [v4 requestPoliciesForTypes:allObjects completionHandler:v8];
}

void __74__DMFWebsitePolicyMonitor_hasAnyRestrictivePoliciesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [a2 allValues];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v10 + 1) + 8 * i) hasRestrictivePolicies])
          {
            (*(*(a1 + 32) + 16))();

            return;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (BOOL)hasAnyRestrictivePoliciesWithError:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = +[DMFPolicyMonitor policyMonitor];
  policyTypes = [objc_opt_class() policyTypes];
  allObjects = [policyTypes allObjects];
  v21 = 0;
  v7 = [v4 requestPoliciesForTypes:allObjects withError:&v21];
  v8 = v21;

  if (!v8)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    allValues = [v7 allValues];
    v12 = [allValues countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(allValues);
          }

          if ([*(*(&v17 + 1) + 8 * i) hasRestrictivePolicies])
          {

            v10 = 1;
            goto LABEL_15;
          }
        }

        v13 = [allValues countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_13;
  }

  if (!error)
  {
LABEL_13:
    v10 = 0;
    goto LABEL_15;
  }

  v9 = v8;
  v10 = 0;
  *error = v8;
LABEL_15:

  return v10;
}

void __55__DMFWebsitePolicyMonitor_initWithPolicyChangeHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v5 = 138543874;
  v6 = v4;
  v7 = 2114;
  v8 = v3;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_1DBFFF000, log, OS_LOG_TYPE_ERROR, "Failed to register website policy monitor with identifier %{public}@ for types %{public}@ with error: %{public}@", &v5, 0x20u);
}

@end