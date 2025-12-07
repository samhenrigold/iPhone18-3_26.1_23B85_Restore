@interface DMFCommunicationPolicyMonitor
+ (NSSet)communicationBundleIdentifiers;
+ (NSSet)policyTypes;
+ (unint64_t)communicationPolicyForApplicationPolicy:(id)policy downtimeEnforced:(BOOL)enforced;
- (DMFCommunicationPolicyMonitor)init;
- (DMFCommunicationPolicyMonitor)initWithPolicyChangeHandler:(id)handler;
- (id)requestPoliciesByBundleIdentifierWithError:(id *)error;
- (void)_updatePoliciesByBundleIdentifier;
- (void)dealloc;
- (void)requestPoliciesByBundleIdentifierWithCompletionHandler:(id)handler;
@end

@implementation DMFCommunicationPolicyMonitor

+ (NSSet)communicationBundleIdentifiers
{
  if (communicationBundleIdentifiers_onceToken != -1)
  {
    +[DMFCommunicationPolicyMonitor communicationBundleIdentifiers];
  }

  v2 = [communicationBundleIdentifiers_bundleIdentifiers copy];

  return v2;
}

void __63__DMFCommunicationPolicyMonitor_communicationBundleIdentifiers__block_invoke()
{
  v4[7] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"com.apple.facetime";
  v4[1] = @"com.apple.FaceTime";
  v4[2] = @"com.apple.MobileSMS";
  v4[3] = @"com.apple.iChat";
  v4[4] = @"com.apple.mobilephone";
  v4[5] = @"com.apple.NanoPhone";
  v4[6] = @"com.apple.tincan";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:7];
  v2 = [v0 setWithArray:v1];
  v3 = communicationBundleIdentifiers_bundleIdentifiers;
  communicationBundleIdentifiers_bundleIdentifiers = v2;
}

+ (NSSet)policyTypes
{
  if (policyTypes_onceToken_1 != -1)
  {
    +[DMFCommunicationPolicyMonitor policyTypes];
  }

  v2 = [policyTypes_types_1 copy];

  return v2;
}

void __44__DMFCommunicationPolicyMonitor_policyTypes__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"applications";
  v4[1] = @"applicationcategories";
  v4[2] = @"categories";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  v2 = [v0 setWithArray:v1];
  v3 = policyTypes_types_1;
  policyTypes_types_1 = v2;
}

- (DMFCommunicationPolicyMonitor)initWithPolicyChangeHandler:(id)handler
{
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = DMFCommunicationPolicyMonitor;
  v5 = [(DMFCommunicationPolicyMonitor *)&v17 init];
  if (v5)
  {
    v6 = objc_opt_new();
    identifier = v5->_identifier;
    v5->_identifier = v6;

    if (handlerCopy)
    {
      policyTypes = [objc_opt_class() policyTypes];
      v9 = [[DMFPolicyRegistration alloc] initWithIdentifier:@"dmf.policy.monitor.communication" policyTypes:policyTypes callback:handlerCopy];
      v10 = +[DMFPolicyMonitor policyMonitor];
      v11 = v5->_identifier;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __61__DMFCommunicationPolicyMonitor_initWithPolicyChangeHandler___block_invoke;
      v14[3] = &unk_1E8616088;
      v15 = v5;
      v16 = policyTypes;
      v12 = policyTypes;
      [v10 addRegistration:v9 forPolicyMonitorIdentifier:v11 completionHandler:v14];
    }
  }

  return v5;
}

void __61__DMFCommunicationPolicyMonitor_initWithPolicyChangeHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2)
  {
    v7 = DMFPolicyLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61__DMFCommunicationPolicyMonitor_initWithPolicyChangeHandler___block_invoke_cold_1(a1, v6, v7);
    }
  }
}

- (void)dealloc
{
  v3 = +[DMFPolicyMonitor policyMonitor];
  [v3 invalidatePolicyMonitor:self->_identifier];

  v4.receiver = self;
  v4.super_class = DMFCommunicationPolicyMonitor;
  [(DMFCommunicationPolicyMonitor *)&v4 dealloc];
}

+ (unint64_t)communicationPolicyForApplicationPolicy:(id)policy downtimeEnforced:(BOOL)enforced
{
  enforcedCopy = enforced;
  if ([policy integerValue])
  {
    return 2;
  }

  else
  {
    return enforcedCopy;
  }
}

- (id)requestPoliciesByBundleIdentifierWithError:(id *)error
{
  communicationBundleIdentifiers = [objc_opt_class() communicationBundleIdentifiers];
  allObjects = [communicationBundleIdentifiers allObjects];

  v6 = +[DMFPolicyMonitor policyMonitor];
  v7 = [v6 requestCommunicationPoliciesForBundleIdentifiers:allObjects withError:error];

  return v7;
}

- (void)requestPoliciesByBundleIdentifierWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  communicationBundleIdentifiers = [objc_opt_class() communicationBundleIdentifiers];
  allObjects = [communicationBundleIdentifiers allObjects];

  v5 = +[DMFPolicyMonitor policyMonitor];
  [v5 requestCommunicationPoliciesForBundleIdentifiers:allObjects completionHandler:handlerCopy];
}

- (DMFCommunicationPolicyMonitor)init
{
  v20 = *MEMORY[0x1E69E9840];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __37__DMFCommunicationPolicyMonitor_init__block_invoke;
  v17[3] = &unk_1E86160F8;
  selfCopy = self;
  v2 = [(DMFCommunicationPolicyMonitor *)selfCopy initWithPolicyChangeHandler:v17];
  if (v2)
  {
    communicationBundleIdentifiers = [objc_opt_class() communicationBundleIdentifiers];
    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(communicationBundleIdentifiers, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = communicationBundleIdentifiers;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 setObject:&unk_1F57B6D48 forKeyedSubscript:{*(*(&v13 + 1) + 8 * v9++), v13}];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v7);
    }

    v10 = [v4 copy];
    policiesByBundleIdentifier = v2->_policiesByBundleIdentifier;
    v2->_policiesByBundleIdentifier = v10;
  }

  return v2;
}

- (void)_updatePoliciesByBundleIdentifier
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_1DBFFF000, a2, OS_LOG_TYPE_ERROR, "Failed to request communication policies with error: %{public}@", &v2, 0xCu);
}

void __61__DMFCommunicationPolicyMonitor_initWithPolicyChangeHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 24);
  v5 = 138543874;
  v6 = v4;
  v7 = 2114;
  v8 = v3;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_1DBFFF000, log, OS_LOG_TYPE_ERROR, "Failed to register communication policy monitor with identifier %{public}@ for types %{public}@ with error: %{public}@", &v5, 0x20u);
}

@end