@interface RMConfigurationSubscriberDelegate
+ (id)sharedDelegateWithApplicators:(id)applicators;
- (RMConfigurationSubscriberDelegate)initWithApplicators:(id)applicators;
- (id)_configurationsByApplicatorClassNameForConfigurationsByType:(id)type;
- (void)_sendConfigurationUIForConfigurationReference:(id)reference visible:(BOOL)visible configurationUI:(id)i configurationUIGroup:(id)group;
- (void)didFailToFetchConfigurationsWithTypes:(id)types scope:(int64_t)scope error:(id)error;
- (void)didFetchConfigurationsByType:(id)type storesByIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler;
- (void)didFetchConfigurationsWithVisibleUIByType:(id)type storesByIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler;
@end

@implementation RMConfigurationSubscriberDelegate

+ (id)sharedDelegateWithApplicators:(id)applicators
{
  applicatorsCopy = applicators;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__RMConfigurationSubscriberDelegate_sharedDelegateWithApplicators___block_invoke;
  block[3] = &unk_279B058D0;
  v10 = applicatorsCopy;
  v4 = sharedDelegateWithApplicators__onceToken;
  v5 = applicatorsCopy;
  if (v4 != -1)
  {
    dispatch_once(&sharedDelegateWithApplicators__onceToken, block);
  }

  v6 = sharedDelegateWithApplicators__delegate;
  v7 = sharedDelegateWithApplicators__delegate;

  return v6;
}

uint64_t __67__RMConfigurationSubscriberDelegate_sharedDelegateWithApplicators___block_invoke(uint64_t a1)
{
  sharedDelegateWithApplicators__delegate = [[RMConfigurationSubscriberDelegate alloc] initWithApplicators:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

- (RMConfigurationSubscriberDelegate)initWithApplicators:(id)applicators
{
  v40 = *MEMORY[0x277D85DE8];
  applicatorsCopy = applicators;
  v29.receiver = self;
  v29.super_class = RMConfigurationSubscriberDelegate;
  v5 = [(RMConfigurationSubscriberDelegate *)&v29 init];
  v6 = v5;
  if (v5)
  {
    v27 = v5;
    v28 = applicatorsCopy;
    v7 = applicatorsCopy;
    v8 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          v15 = NSStringFromClass(v14);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          supportedConfigurationTypes = [(objc_class *)v14 supportedConfigurationTypes];
          v17 = [supportedConfigurationTypes countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v31;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v31 != v19)
                {
                  objc_enumerationMutation(supportedConfigurationTypes);
                }

                [(NSDictionary *)v8 setObject:v15 forKeyedSubscript:*(*(&v30 + 1) + 8 * j), v27];
              }

              v18 = [supportedConfigurationTypes countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v18);
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v11);
    }

    v6 = v27;
    applicatorClassNameByConfigurationType = v27->_applicatorClassNameByConfigurationType;
    v27->_applicatorClassNameByConfigurationType = v8;

    v22 = dispatch_queue_create("com.apple.rmstore.applicator", 0);
    applicatorQueue = v27->_applicatorQueue;
    v27->_applicatorQueue = v22;

    v24 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    applyLock = v27->_applyLock;
    v27->_applyLock = v24;

    applicatorsCopy = v28;
  }

  return v6;
}

- (void)didFetchConfigurationsByType:(id)type storesByIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  identifierCopy = identifier;
  handlerCopy = handler;
  configurationSubscriberDelegate = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
  if (os_log_type_enabled(configurationSubscriberDelegate, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = typeCopy;
    _os_log_impl(&dword_261E36000, configurationSubscriberDelegate, OS_LOG_TYPE_DEFAULT, "Did fetch configurations by type: %{public}@", buf, 0xCu);
  }

  v14 = self->_applyLock;
  if (![(NSConditionLock *)v14 tryLockWhenCondition:0])
  {
    configurationSubscriberDelegate2 = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
    if (os_log_type_enabled(configurationSubscriberDelegate2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261E36000, configurationSubscriberDelegate2, OS_LOG_TYPE_DEFAULT, "Waiting for previous fetch to finish...", buf, 2u);
    }

    [(NSConditionLock *)v14 lockWhenCondition:0];
  }

  [(NSConditionLock *)v14 unlockWithCondition:1];
  v16 = [(RMConfigurationSubscriberDelegate *)self _configurationsByApplicatorClassNameForConfigurationsByType:typeCopy];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __109__RMConfigurationSubscriberDelegate_didFetchConfigurationsByType_storesByIdentifier_scope_completionHandler___block_invoke;
  v24[3] = &unk_279B05948;
  v25 = identifierCopy;
  scopeCopy = scope;
  v24[4] = self;
  v17 = identifierCopy;
  [v16 enumerateKeysAndObjectsUsingBlock:v24];
  applicatorQueue = [(RMConfigurationSubscriberDelegate *)self applicatorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__RMConfigurationSubscriberDelegate_didFetchConfigurationsByType_storesByIdentifier_scope_completionHandler___block_invoke_12;
  block[3] = &unk_279B05970;
  v22 = v14;
  v23 = handlerCopy;
  v19 = handlerCopy;
  v20 = v14;
  dispatch_async(applicatorQueue, block);
}

void __109__RMConfigurationSubscriberDelegate_didFetchConfigurationsByType_storesByIdentifier_scope_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) applicatorQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __109__RMConfigurationSubscriberDelegate_didFetchConfigurationsByType_storesByIdentifier_scope_completionHandler___block_invoke_2;
  v11[3] = &unk_279B05920;
  v8 = *(a1 + 40);
  v15 = *(a1 + 48);
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

void __109__RMConfigurationSubscriberDelegate_didFetchConfigurationsByType_storesByIdentifier_scope_completionHandler___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = NSClassFromString(*(a1 + 32));
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCACA8] rms_stringWithScope:*(a1 + 56)];
    v7 = [(objc_class *)v2 supportedConfigurationTypes];
    *buf = 138543874;
    v18 = v5;
    v19 = 2114;
    v20 = v6;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&dword_261E36000, v4, OS_LOG_TYPE_DEFAULT, "Applicator %{public}@ in %{public}@ scope starting processing configurations of types: %{public}@", buf, 0x20u);
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __109__RMConfigurationSubscriberDelegate_didFetchConfigurationsByType_storesByIdentifier_scope_completionHandler___block_invoke_9;
  v13[3] = &unk_279B058F8;
  v11 = *(a1 + 32);
  v12 = *(a1 + 56);
  v14 = v11;
  v15 = v12;
  v16 = v2;
  [v3 applyConfigurations:v8 storesByIdentifier:v9 scope:v10 completionHandler:v13];
}

void __109__RMConfigurationSubscriberDelegate_didFetchConfigurationsByType_storesByIdentifier_scope_completionHandler___block_invoke_9(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277CCACA8] rms_stringWithScope:*(a1 + 40)];
    v5 = [*(a1 + 48) supportedConfigurationTypes];
    v6 = 138543874;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_261E36000, v2, OS_LOG_TYPE_DEFAULT, "Applicator %{public}@ in %{public}@ scope finished processing configurations of types: %{public}@", &v6, 0x20u);
  }
}

uint64_t __109__RMConfigurationSubscriberDelegate_didFetchConfigurationsByType_storesByIdentifier_scope_completionHandler___block_invoke_12(uint64_t a1)
{
  [*(a1 + 32) lockWhenCondition:1];
  v2 = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_261E36000, v2, OS_LOG_TYPE_DEFAULT, "Fetching complete.", v4, 2u);
  }

  [*(a1 + 32) unlockWithCondition:0];
  return (*(*(a1 + 40) + 16))();
}

- (void)didFailToFetchConfigurationsWithTypes:(id)types scope:(int64_t)scope error:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  errorCopy = error;
  configurationSubscriberDelegate = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
  if (os_log_type_enabled(configurationSubscriberDelegate, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CCACA8] rms_stringWithScope:scope];
    v11 = 138543874;
    v12 = v10;
    v13 = 2114;
    v14 = typesCopy;
    v15 = 2114;
    v16 = errorCopy;
    _os_log_impl(&dword_261E36000, configurationSubscriberDelegate, OS_LOG_TYPE_DEFAULT, "Did fail in %{public}@ scope to fetch configurations %{public}@: %{public}@", &v11, 0x20u);
  }
}

- (void)didFetchConfigurationsWithVisibleUIByType:(id)type storesByIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  identifierCopy = identifier;
  handlerCopy = handler;
  configurationSubscriberDelegate = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
  if (os_log_type_enabled(configurationSubscriberDelegate, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = typeCopy;
    _os_log_impl(&dword_261E36000, configurationSubscriberDelegate, OS_LOG_TYPE_DEFAULT, "Fetch configurationUIs by type: %{public}@", &buf, 0xCu);
  }

  v14 = self->_applyLock;
  if (![(NSConditionLock *)v14 tryLockWhenCondition:0])
  {
    configurationSubscriberDelegate2 = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
    if (os_log_type_enabled(configurationSubscriberDelegate2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_261E36000, configurationSubscriberDelegate2, OS_LOG_TYPE_DEFAULT, "Waiting for previous fetch UIs to finish...", &buf, 2u);
    }

    [(NSConditionLock *)v14 lockWhenCondition:0];
  }

  [(NSConditionLock *)v14 unlockWithCondition:1];
  v16 = [(RMConfigurationSubscriberDelegate *)self _configurationsByApplicatorClassNameForConfigurationsByType:typeCopy];
  v17 = dispatch_group_create();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1;
  v34 = __Block_byref_object_dispose__1;
  v35 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __122__RMConfigurationSubscriberDelegate_didFetchConfigurationsWithVisibleUIByType_storesByIdentifier_scope_completionHandler___block_invoke;
  v26[3] = &unk_279B059E8;
  v18 = v17;
  v27 = v18;
  selfCopy = self;
  p_buf = &buf;
  scopeCopy = scope;
  [v16 enumerateKeysAndObjectsUsingBlock:v26];
  v19 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __122__RMConfigurationSubscriberDelegate_didFetchConfigurationsWithVisibleUIByType_storesByIdentifier_scope_completionHandler___block_invoke_2_17;
  block[3] = &unk_279B05A10;
  v23 = v14;
  v24 = handlerCopy;
  v25 = &buf;
  v20 = handlerCopy;
  v21 = v14;
  dispatch_group_notify(v18, v19, block);

  _Block_object_dispose(&buf, 8);
}

void __122__RMConfigurationSubscriberDelegate_didFetchConfigurationsWithVisibleUIByType_storesByIdentifier_scope_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_group_enter(*(a1 + 32));
  v7 = [*(a1 + 40) applicatorQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __122__RMConfigurationSubscriberDelegate_didFetchConfigurationsWithVisibleUIByType_storesByIdentifier_scope_completionHandler___block_invoke_2;
  v11[3] = &unk_279B059C0;
  v16 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = v5;
  v17 = *(a1 + 56);
  v8 = *(a1 + 40);
  v14 = v6;
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

void __122__RMConfigurationSubscriberDelegate_didFetchConfigurationsWithVisibleUIByType_storesByIdentifier_scope_completionHandler___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v2 = *(a1 + 32);

    dispatch_group_leave(v2);
    return;
  }

  v3 = NSClassFromString(*(a1 + 40));
  v20 = objc_opt_new();
  v4 = objc_opt_respondsToSelector();
  v5 = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x277CCACA8] rms_stringWithScope:*(a1 + 72)];
      v9 = [(objc_class *)v3 supportedConfigurationTypes];
      *buf = 138543874;
      v30 = v7;
      v31 = 2114;
      v32 = v8;
      v33 = 2114;
      v34 = v9;
      v10 = "Applicator %{public}@ in %{public}@ scope processes configurationUIs of types: %{public}@";
LABEL_21:
      _os_log_debug_impl(&dword_261E36000, v5, OS_LOG_TYPE_DEBUG, v10, buf, 0x20u);
    }
  }

  else if (v6)
  {
    v19 = *(a1 + 40);
    v8 = [MEMORY[0x277CCACA8] rms_stringWithScope:*(a1 + 72)];
    v9 = [(objc_class *)v3 supportedConfigurationTypes];
    *buf = 138543874;
    v30 = v19;
    v31 = 2114;
    v32 = v8;
    v33 = 2114;
    v34 = v9;
    v10 = "Applicator %{public}@ in %{public}@ scope does not process configurationUIs of types: %{public}@";
    goto LABEL_21;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = *(a1 + 48);
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        if (v4)
        {
          dispatch_group_enter(*(a1 + 32));
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __122__RMConfigurationSubscriberDelegate_didFetchConfigurationsWithVisibleUIByType_storesByIdentifier_scope_completionHandler___block_invoke_15;
          v21[3] = &unk_279B05998;
          v17 = *(a1 + 72);
          v18 = *(a1 + 56);
          v23 = *(a1 + 64);
          v21[4] = v18;
          v21[5] = v16;
          v22 = *(a1 + 32);
          [v20 configurationUIForConfiguration:v16 scope:v17 completionHandler:v21];
        }

        else
        {
          [*(a1 + 56) _sendConfigurationUIForConfigurationReference:*(*(&v24 + 1) + 8 * i) visible:0 configurationUI:0 configurationUIGroup:*(a1 + 32)];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __122__RMConfigurationSubscriberDelegate_didFetchConfigurationsWithVisibleUIByType_storesByIdentifier_scope_completionHandler___block_invoke_15(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
  }

  else
  {
    [*(a1 + 32) _sendConfigurationUIForConfigurationReference:*(a1 + 40) visible:a2 configurationUI:a3 configurationUIGroup:*(a1 + 48)];
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __122__RMConfigurationSubscriberDelegate_didFetchConfigurationsWithVisibleUIByType_storesByIdentifier_scope_completionHandler___block_invoke_2_17(uint64_t a1)
{
  [*(a1 + 32) lockWhenCondition:1];
  v2 = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_261E36000, v2, OS_LOG_TYPE_DEFAULT, "Fetching configuration UIs complete.", v4, 2u);
  }

  [*(a1 + 32) unlockWithCondition:0];
  return (*(*(a1 + 40) + 16))();
}

- (id)_configurationsByApplicatorClassNameForConfigurationsByType:(id)type
{
  v4 = MEMORY[0x277CBEB38];
  typeCopy = type;
  applicatorClassNameByConfigurationType = [(RMConfigurationSubscriberDelegate *)self applicatorClassNameByConfigurationType];
  v7 = [v4 dictionaryWithCapacity:{objc_msgSend(applicatorClassNameByConfigurationType, "count")}];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__RMConfigurationSubscriberDelegate__configurationsByApplicatorClassNameForConfigurationsByType___block_invoke;
  v12[3] = &unk_279B05A38;
  v12[4] = self;
  v8 = v7;
  v13 = v8;
  [typeCopy enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __97__RMConfigurationSubscriberDelegate__configurationsByApplicatorClassNameForConfigurationsByType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 applicatorClassNameByConfigurationType];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [*(a1 + 40) objectForKeyedSubscript:v8];
    if (!v9)
    {
      v9 = objc_opt_new();
      [*(a1 + 40) setObject:v9 forKeyedSubscript:v8];
    }

    [v9 addObjectsFromArray:v10];
  }
}

- (void)_sendConfigurationUIForConfigurationReference:(id)reference visible:(BOOL)visible configurationUI:(id)i configurationUIGroup:(id)group
{
  referenceCopy = reference;
  iCopy = i;
  groupCopy = group;
  store = [referenceCopy store];
  dispatch_group_enter(groupCopy);
  applicatorQueue = [(RMConfigurationSubscriberDelegate *)self applicatorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__RMConfigurationSubscriberDelegate__sendConfigurationUIForConfigurationReference_visible_configurationUI_configurationUIGroup___block_invoke;
  block[3] = &unk_279B05A60;
  v20 = store;
  v21 = referenceCopy;
  visibleCopy = visible;
  v22 = iCopy;
  v23 = groupCopy;
  v15 = groupCopy;
  v16 = iCopy;
  v17 = referenceCopy;
  v18 = store;
  dispatch_async(applicatorQueue, block);
}

void __128__RMConfigurationSubscriberDelegate__sendConfigurationUIForConfigurationReference_visible_configurationUI_configurationUIGroup___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) declaration];
  v4 = *(a1 + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __128__RMConfigurationSubscriberDelegate__sendConfigurationUIForConfigurationReference_visible_configurationUI_configurationUIGroup___block_invoke_2;
  v6[3] = &unk_279B05448;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v2 setConfigurationUI:v3 visible:v4 ui:v5 completionHandler:v6];
}

void __128__RMConfigurationSubscriberDelegate__sendConfigurationUIForConfigurationReference_visible_configurationUI_configurationUIGroup___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __128__RMConfigurationSubscriberDelegate__sendConfigurationUIForConfigurationReference_visible_configurationUI_configurationUIGroup___block_invoke_2_cold_1(v3, v4);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __128__RMConfigurationSubscriberDelegate__sendConfigurationUIForConfigurationReference_visible_configurationUI_configurationUIGroup___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_261E36000, a2, OS_LOG_TYPE_ERROR, "Failed to update configuration UI: %{public}@", &v2, 0xCu);
}

@end