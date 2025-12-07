@interface DMFCategoryPolicyMonitor
+ (NSSet)policyTypes;
- (DMFCategoryPolicyMonitor)initWithPolicyChangeHandler:(id)handler;
- (void)dealloc;
- (void)requestPoliciesForCategoryIdentifiers:(id)identifiers completionHandler:(id)handler;
@end

@implementation DMFCategoryPolicyMonitor

- (DMFCategoryPolicyMonitor)initWithPolicyChangeHandler:(id)handler
{
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = DMFCategoryPolicyMonitor;
  v5 = [(DMFCategoryPolicyMonitor *)&v17 init];
  if (v5)
  {
    v6 = objc_opt_new();
    identifier = v5->_identifier;
    v5->_identifier = v6;

    if (handlerCopy)
    {
      policyTypes = [objc_opt_class() policyTypes];
      v9 = [[DMFPolicyRegistration alloc] initWithIdentifier:@"dmf.policy.monitor.category" policyTypes:policyTypes callback:handlerCopy];
      v10 = +[DMFPolicyMonitor policyMonitor];
      v11 = v5->_identifier;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __56__DMFCategoryPolicyMonitor_initWithPolicyChangeHandler___block_invoke;
      v14[3] = &unk_1E8616088;
      v15 = v5;
      v16 = policyTypes;
      v12 = policyTypes;
      [v10 addRegistration:v9 forPolicyMonitorIdentifier:v11 completionHandler:v14];
    }
  }

  return v5;
}

void __56__DMFCategoryPolicyMonitor_initWithPolicyChangeHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2)
  {
    v7 = DMFPolicyLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __56__DMFCategoryPolicyMonitor_initWithPolicyChangeHandler___block_invoke_cold_1(a1, v6, v7);
    }
  }
}

- (void)dealloc
{
  v3 = +[DMFPolicyMonitor policyMonitor];
  [v3 invalidatePolicyMonitor:self->_identifier];

  v4.receiver = self;
  v4.super_class = DMFCategoryPolicyMonitor;
  [(DMFCategoryPolicyMonitor *)&v4 dealloc];
}

+ (NSSet)policyTypes
{
  if (policyTypes_onceToken_0 != -1)
  {
    +[DMFCategoryPolicyMonitor policyTypes];
  }

  v2 = [policyTypes_types_0 copy];

  return v2;
}

void __39__DMFCategoryPolicyMonitor_policyTypes__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"applicationcategories";
  v4[1] = @"categories";
  v4[2] = @"websitecategories";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  v2 = [v0 setWithArray:v1];
  v3 = policyTypes_types_0;
  policyTypes_types_0 = v2;
}

- (void)requestPoliciesForCategoryIdentifiers:(id)identifiers completionHandler:(id)handler
{
  handlerCopy = handler;
  identifiersCopy = identifiers;
  v7 = +[DMFPolicyMonitor policyMonitor];
  [v7 requestPoliciesForCategoryIdentifiers:identifiersCopy completionHandler:handlerCopy];
}

void __56__DMFCategoryPolicyMonitor_initWithPolicyChangeHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
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
  _os_log_error_impl(&dword_1DBFFF000, log, OS_LOG_TYPE_ERROR, "Failed to register category policy monitor with identifier %{public}@ for types %{public}@ with error: %{public}@", &v5, 0x20u);
}

@end