@interface DNDSAppConfigurationManager
- (DNDSAppConfigurationManager)initWithAppSpecificSettingsManager:(id)manager;
- (id)appActionsForModeIdentifier:(id)identifier error:(id *)error;
- (id)clearAppActionWithIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier;
- (id)clearSystemActionWithIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier;
- (id)setAppAction:(id)action forApplicationIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier;
- (id)setPredicate:(id)predicate forActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier;
- (id)setSystemAction:(id)action modeIdentifier:(id)identifier;
- (id)setTargetContentIdentifierPrefix:(id)prefix forActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier;
- (id)sysdiagnoseDataForDate:(id)date redacted:(BOOL)redacted;
- (id)systemActionForActionIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier error:(id *)error;
- (id)systemActionsForModeIdentifier:(id)identifier error:(id *)error;
- (id)targetContentIdentifierPrefixesForModeIdentifier:(id)identifier error:(id *)error;
- (id)updateSystemActionWithReverseAction:(id)action actionIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier;
- (void)appSpecificSettingsManager:(id)manager receivedSyncedAppSpecificSettings:(id)settings ofType:(Class)type applicationIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier;
- (void)appSpecificSettingsManager:(id)manager receivedSyncedClearForAppSpecificSettings:(id)settings ofType:(Class)type applicationIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier;
- (void)dealloc;
- (void)invalidateAppContextForActionIdentifier:(id)identifier applicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier;
- (void)refreshWithAvailableModes:(id)modes;
@end

@implementation DNDSAppConfigurationManager

- (DNDSAppConfigurationManager)initWithAppSpecificSettingsManager:(id)manager
{
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = DNDSAppConfigurationManager;
  v6 = [(DNDSAppConfigurationManager *)&v14 init];
  if (v6)
  {
    v7 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.donotdisturb.server.AppConfigurationsManager"];
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    predicates = v6->_predicates;
    v6->_predicates = v9;

    objc_storeStrong(&v6->_appSpecificSettingsManager, manager);
    [(DNDSAppSpecificSettingsManager *)v6->_appSpecificSettingsManager setDelegate:v6];
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    delegates = v6->_delegates;
    v6->_delegates = weakObjectsHashTable;

    DNDSRegisterSysdiagnoseDataProvider(v6);
  }

  return v6;
}

- (void)dealloc
{
  DNDSUnregisterSysdiagnoseDataProvider(self);
  v3.receiver = self;
  v3.super_class = DNDSAppConfigurationManager;
  [(DNDSAppConfigurationManager *)&v3 dealloc];
}

- (void)refreshWithAvailableModes:(id)modes
{
  v35 = *MEMORY[0x277D85DE8];
  v23 = [modes bs_map:&__block_literal_global_30];
  selfCopy = self;
  v4 = [DNDSAppSpecificSettingsManager removeModeSpecificSettingsForModeIdentifiersNotInModeIdentifiers:"removeModeSpecificSettingsForModeIdentifiersNotInModeIdentifiers:error:" error:?];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:v12];
        applicationIdentifiers = [v13 applicationIdentifiers];
        [v5 setObject:applicationIdentifiers forKeyedSubscript:v12];

        v15 = [v7 objectForKeyedSubscript:v12];
        modeSpecificSettings = [v15 modeSpecificSettings];
        [v6 setObject:modeSpecificSettings forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = selfCopy->_delegates;
  v18 = [(NSHashTable *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [v22 appConfigurationManager:selfCopy didClearActionsForAppsInModeIdentifiers:v5];
        }

        if (objc_opt_respondsToSelector())
        {
          [v22 appConfigurationManager:selfCopy didClearSystemActionsInModeIdentifiers:v6];
        }
      }

      v19 = [(NSHashTable *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v19);
  }
}

- (id)setPredicate:(id)predicate forActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier
{
  predicateCopy = predicate;
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  modeIdentifierCopy = modeIdentifier;
  if (!predicateCopy)
  {
    goto LABEL_4;
  }

  appSpecificSettingsManager = self->_appSpecificSettingsManager;
  v22 = 0;
  v15 = [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager appActionWithIdentifier:identifierCopy forApplicationIdentifier:applicationIdentifierCopy modeIdentifier:modeIdentifierCopy error:&v22];
  v16 = v22;
  if (v15)
  {

LABEL_4:
    v17 = self->_appSpecificSettingsManager;
    v21 = 0;
    [(DNDSAppSpecificSettingsManager *)v17 setAppSpecificSettings:predicateCopy identifier:identifierCopy type:objc_opt_class() applicationIdentifier:applicationIdentifierCopy modeIdentifier:modeIdentifierCopy error:&v21];
    v18 = v21;
    goto LABEL_8;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:@"No action exists for action identifier; ignoring request to set predicate." forKeyedSubscript:*MEMORY[0x277CCA450]];
  if (v16)
  {
    [dictionary setObject:v16 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:dictionary];

LABEL_8:

  return v18;
}

- (id)targetContentIdentifierPrefixesForModeIdentifier:(id)identifier error:(id *)error
{
  appSpecificSettingsManager = self->_appSpecificSettingsManager;
  identifierCopy = identifier;
  v7 = [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager appSpecificSettingsOfType:objc_opt_class() modeIdentifier:identifierCopy error:error];

  return v7;
}

- (id)setTargetContentIdentifierPrefix:(id)prefix forActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier
{
  prefixCopy = prefix;
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  modeIdentifierCopy = modeIdentifier;
  if (!prefixCopy || ![prefixCopy length])
  {
    goto LABEL_5;
  }

  appSpecificSettingsManager = self->_appSpecificSettingsManager;
  v22 = 0;
  v15 = [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager appActionWithIdentifier:identifierCopy forApplicationIdentifier:applicationIdentifierCopy modeIdentifier:modeIdentifierCopy error:&v22];
  v16 = v22;
  if (v15)
  {

LABEL_5:
    v17 = self->_appSpecificSettingsManager;
    v21 = 0;
    [(DNDSAppSpecificSettingsManager *)v17 setAppSpecificSettings:prefixCopy identifier:identifierCopy type:objc_opt_class() applicationIdentifier:applicationIdentifierCopy modeIdentifier:modeIdentifierCopy error:&v21];
    v18 = v21;
    goto LABEL_6;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:@"No action exists for action identifier; ignoring request to set target content identifier prefix." forKeyedSubscript:*MEMORY[0x277CCA450]];
  if (v16)
  {
    [dictionary setObject:v16 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:dictionary];

LABEL_6:

  return v18;
}

- (void)invalidateAppContextForActionIdentifier:(id)identifier applicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier
{
  v48 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  modeIdentifierCopy = modeIdentifier;
  v39 = 0;
  v11 = [(DNDSAppConfigurationManager *)self appActionForActionIdentifier:identifierCopy applicationIdentifier:applicationIdentifierCopy modeIdentifier:modeIdentifierCopy error:&v39];
  v12 = v39;
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11 == 0;
  }

  if (v13)
  {
    v14 = v12;
    v15 = DNDSLogAppConfigurationServiceProvider;
    if (os_log_type_enabled(DNDSLogAppConfigurationServiceProvider, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v41 = identifierCopy;
      v42 = 2112;
      v43 = applicationIdentifierCopy;
      v44 = 2112;
      v45 = modeIdentifierCopy;
      v46 = 2112;
      v47 = v14;
      _os_log_error_impl(&dword_24912E000, v15, OS_LOG_TYPE_ERROR, "Failed to retrieve action for actionIdentifier:%@ applicationIdentifier:%@ modeIdentifier: %@, error=%@", buf, 0x2Au);
    }
  }

  else
  {
    bundleID = [applicationIdentifierCopy bundleID];
    v17 = objc_alloc_init(MEMORY[0x277D23C30]);
    v38 = 0;
    v18 = [v17 actionForBundleIdentifier:bundleID andActionIdentifier:identifierCopy error:&v38];
    v19 = v38;
    v14 = v19;
    if (v19 || !v18)
    {
      v27 = DNDSLogAppFocusConfiguration;
      if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        v41 = identifierCopy;
        v42 = 2114;
        v43 = applicationIdentifierCopy;
        v44 = 2114;
        v45 = modeIdentifierCopy;
        v46 = 2114;
        v47 = v14;
        _os_log_error_impl(&dword_24912E000, v27, OS_LOG_TYPE_ERROR, "Failed to get action metadata for task with actionIdentifier:%{public}@ applicationIdentifier:%{public}@ modeIdentifier:%{public}@ error=%{public}@", buf, 0x2Au);
      }
    }

    else
    {
      v29 = v17;
      v30 = bundleID;
      v20 = [MEMORY[0x277D23BB8] policyWithActionMetadata:v18];
      action = [v11 action];
      parameters = [action parameters];
      v23 = [v20 actionWithParameters:parameters];

      v24 = [v23 actionWithOpenWhenRun:0];

      v25 = v20;
      v37 = 0;
      v26 = [v20 connectionWithError:&v37];
      v14 = v37;
      if (v14 || !v26)
      {
        v28 = DNDSLogAppConfigurationServiceProvider;
        if (os_log_type_enabled(DNDSLogAppConfigurationServiceProvider, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          v41 = identifierCopy;
          v42 = 2112;
          v43 = applicationIdentifierCopy;
          v44 = 2112;
          v45 = modeIdentifierCopy;
          v46 = 2112;
          v47 = v14;
          _os_log_error_impl(&dword_24912E000, v28, OS_LOG_TYPE_ERROR, "Failed to create connection for actionIdentifier:%@ applicationIdentifier:%@ modeIdentifier: %@, error=%@", buf, 0x2Au);
        }
      }

      else
      {
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __108__DNDSAppConfigurationManager_invalidateAppContextForActionIdentifier_applicationIdentifier_modeIdentifier___block_invoke;
        v31[3] = &unk_278F8BBC8;
        v32 = v24;
        selfCopy = self;
        v34 = identifierCopy;
        v35 = applicationIdentifierCopy;
        v36 = modeIdentifierCopy;
        [v26 fetchActionAppContextForAction:v32 completionHandler:v31];
      }

      v17 = v29;
      bundleID = v30;
    }
  }
}

void __108__DNDSAppConfigurationManager_invalidateAppContextForActionIdentifier_applicationIdentifier_modeIdentifier___block_invoke(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = DNDSLogAppConfigurationServiceProvider;
    if (os_log_type_enabled(DNDSLogAppConfigurationServiceProvider, OS_LOG_TYPE_ERROR))
    {
      __108__DNDSAppConfigurationManager_invalidateAppContextForActionIdentifier_applicationIdentifier_modeIdentifier___block_invoke_cold_1(a1, v6, v7);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v5;
      v9 = DNDSLogAppConfigurationServiceProvider;
      if (os_log_type_enabled(DNDSLogAppConfigurationServiceProvider, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a1[4];
        v18 = 138412546;
        v19 = v8;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Successfully fetched updated appContext %@ for action %@", &v18, 0x16u);
      }

      v11 = a1[5];
      v12 = [v8 notificationFilterPredicate];
      v13 = [v11 setPredicate:v12 forActionIdentifier:a1[6] forApplicationIdentifier:a1[7] modeIdentifier:a1[8]];

      v14 = a1[5];
      v15 = [v8 targetContentIdentifierPrefix];
      v16 = [v14 setTargetContentIdentifierPrefix:v15 forActionIdentifier:a1[6] forApplicationIdentifier:a1[7] modeIdentifier:a1[8]];
    }

    else
    {
      v17 = DNDSLogAppConfigurationServiceProvider;
      if (os_log_type_enabled(DNDSLogAppConfigurationServiceProvider, OS_LOG_TYPE_ERROR))
      {
        __108__DNDSAppConfigurationManager_invalidateAppContextForActionIdentifier_applicationIdentifier_modeIdentifier___block_invoke_cold_2(v5, a1, v17);
      }
    }
  }
}

- (id)appActionsForModeIdentifier:(id)identifier error:(id *)error
{
  appSpecificSettingsManager = self->_appSpecificSettingsManager;
  identifierCopy = identifier;
  v7 = [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager appSpecificSettingsOfType:objc_opt_class() modeIdentifier:identifierCopy error:error];

  return v7;
}

- (id)setAppAction:(id)action forApplicationIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier
{
  v35 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  v33 = 0;
  [MEMORY[0x277D05898] runtimeIsSupported:&v33];
  v11 = v33;
  if (!v11)
  {
    bundleID = [identifierCopy bundleID];
    [actionCopy setBundleIdentifier:bundleID];

    appSpecificSettingsManager = self->_appSpecificSettingsManager;
    identifier = [actionCopy identifier];
    v32 = 0;
    [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager setAppSpecificSettings:actionCopy identifier:identifier type:objc_opt_class() applicationIdentifier:identifierCopy modeIdentifier:modeIdentifierCopy error:&v32];
    v11 = v32;

    if (actionCopy)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v15 = self->_appSpecificSettingsManager;
      identifier2 = [0 identifier];
      v31 = v11;
      [(DNDSAppSpecificSettingsManager *)v15 setAppSpecificSettings:0 identifier:identifier2 type:objc_opt_class() applicationIdentifier:identifierCopy modeIdentifier:modeIdentifierCopy error:&v31];
      v17 = v31;

      v11 = v17;
      if (v17)
      {
        goto LABEL_16;
      }
    }

    v26 = v11;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = self->_delegates;
    v19 = [(NSHashTable *)v18 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v27 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v23 appConfigurationManager:self didSetAction:actionCopy forApplicationIdentifier:identifierCopy modeIdentifier:modeIdentifierCopy];
          }
        }

        v20 = [(NSHashTable *)v18 countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v20);
    }

    v11 = v26;
  }

LABEL_16:
  v24 = v11;

  return v24;
}

- (id)clearAppActionWithIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  modeIdentifierCopy = modeIdentifier;
  appSpecificSettingsManager = self->_appSpecificSettingsManager;
  v27 = 0;
  [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager setAppSpecificSettings:0 identifier:identifierCopy type:objc_opt_class() applicationIdentifier:applicationIdentifierCopy modeIdentifier:modeIdentifierCopy error:&v27];
  v12 = v27;
  v13 = self->_appSpecificSettingsManager;
  v26 = v12;
  [(DNDSAppSpecificSettingsManager *)v13 setAppSpecificSettings:0 identifier:identifierCopy type:objc_opt_class() applicationIdentifier:applicationIdentifierCopy modeIdentifier:modeIdentifierCopy error:&v26];
  v21 = v26;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = self->_delegates;
  v15 = [(NSHashTable *)v14 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v19 appConfigurationManager:self didClearActionWithIdentifier:identifierCopy forApplicationIdentifier:applicationIdentifierCopy modeIdentifier:modeIdentifierCopy];
        }
      }

      v16 = [(NSHashTable *)v14 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v16);
  }

  return v21;
}

- (id)systemActionForActionIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier error:(id *)error
{
  appSpecificSettingsManager = self->_appSpecificSettingsManager;
  modeIdentifierCopy = modeIdentifier;
  identifierCopy = identifier;
  v10 = [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager modeSpecificSettingsOfType:objc_opt_class() identifier:identifierCopy modeIdentifier:modeIdentifierCopy error:error];

  return v10;
}

- (id)systemActionsForModeIdentifier:(id)identifier error:(id *)error
{
  appSpecificSettingsManager = self->_appSpecificSettingsManager;
  identifierCopy = identifier;
  v7 = [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager modeSpecificSettingsOfType:objc_opt_class() modeIdentifier:identifierCopy error:error];

  return v7;
}

- (id)setSystemAction:(id)action modeIdentifier:(id)identifier
{
  v26 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  identifierCopy = identifier;
  v24 = 0;
  [MEMORY[0x277D05AC0] runtimeIsSupported:&v24];
  v8 = v24;
  if (!v8)
  {
    appSpecificSettingsManager = self->_appSpecificSettingsManager;
    identifier = [actionCopy identifier];
    v23 = 0;
    [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager setModeSpecificSettings:actionCopy identifier:identifier type:objc_opt_class() modeIdentifier:identifierCopy error:&v23];
    v8 = v23;

    if (!v8)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = self->_delegates;
      v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v19 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v16 appConfigurationManager:self didSetSystemAction:actionCopy modeIdentifier:{identifierCopy, v19}];
            }
          }

          v13 = [(NSHashTable *)v11 countByEnumeratingWithState:&v19 objects:v25 count:16];
        }

        while (v13);
      }
    }
  }

  v17 = v8;

  return v17;
}

- (id)updateSystemActionWithReverseAction:(id)action actionIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier
{
  v35[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  v33 = 0;
  [MEMORY[0x277D05AC0] runtimeIsSupported:&v33];
  v11 = v33;
  if (v11)
  {
    v12 = v11;
    v13 = v12;
    goto LABEL_19;
  }

  v32 = 0;
  v14 = [(DNDSAppConfigurationManager *)self systemActionForActionIdentifier:identifierCopy modeIdentifier:modeIdentifierCopy error:&v32];
  v12 = v32;
  if (!v14)
  {
    v21 = DNDSLogSystemFocusConfiguration;
    if (os_log_type_enabled(DNDSLogSystemFocusConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDSAppConfigurationManager updateSystemActionWithReverseAction:identifierCopy actionIdentifier:modeIdentifierCopy modeIdentifier:v21];
      if (v12)
      {
        goto LABEL_12;
      }
    }

    else if (v12)
    {
LABEL_12:
      v26 = v12;
      v12 = v26;
      v14 = 0;
      goto LABEL_15;
    }

    modeIdentifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to find system action for reverse action. action=%@ mode=%@", identifierCopy, modeIdentifierCopy];;
    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277D05840];
    v34 = *MEMORY[0x277CCA450];
    v35[0] = modeIdentifierCopy;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v12 = [v23 errorWithDomain:v24 code:1007 userInfo:v25];

    goto LABEL_12;
  }

  reverseAction = [v14 reverseAction];
  v16 = reverseAction;
  if (reverseAction == actionCopy)
  {

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  if (actionCopy && ([v14 reverseAction], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    reverseAction2 = [v14 reverseAction];
    v20 = [actionCopy isEqual:reverseAction2];

    if (v20)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v27 = [v14 mutableCopy];
  [v27 setReverseAction:actionCopy];

  appSpecificSettingsManager = self->_appSpecificSettingsManager;
  v31 = v12;
  [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager setModeSpecificSettings:v27 identifier:identifierCopy type:objc_opt_class() modeIdentifier:modeIdentifierCopy error:&v31];
  v29 = v31;

  v26 = v29;
  v12 = v26;
  v14 = v27;
LABEL_15:
  v13 = v26;
LABEL_18:

LABEL_19:

  return v13;
}

- (id)clearSystemActionWithIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  v25 = 0;
  v8 = [(DNDSAppConfigurationManager *)self systemActionForActionIdentifier:identifierCopy modeIdentifier:modeIdentifierCopy error:&v25];
  v9 = v25;
  if (v8)
  {
    appSpecificSettingsManager = self->_appSpecificSettingsManager;
    v24 = v9;
    v19 = identifierCopy;
    [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager setModeSpecificSettings:0 identifier:identifierCopy type:objc_opt_class() modeIdentifier:modeIdentifierCopy error:&v24];
    v18 = v24;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = self->_delegates;
    v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v16 appConfigurationManager:self didClearSystemAction:v8 modeIdentifier:modeIdentifierCopy];
          }
        }

        v13 = [(NSHashTable *)v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v13);
    }

    v9 = v18;
    identifierCopy = v19;
  }

  return v9;
}

- (id)sysdiagnoseDataForDate:(id)date redacted:(BOOL)redacted
{
  v4 = objc_opt_new();

  return v4;
}

- (void)appSpecificSettingsManager:(id)manager receivedSyncedAppSpecificSettings:(id)settings ofType:(Class)type applicationIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier
{
  v25 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  v13 = settingsCopy;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = self->_delegates;
  v15 = [(NSHashTable *)v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v20 + 1) + 8 * v18);
        if (objc_opt_respondsToSelector())
        {
          [v19 appConfigurationManager:self didSetAction:v13 forApplicationIdentifier:identifierCopy modeIdentifier:{modeIdentifierCopy, v20}];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSHashTable *)v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }
}

- (void)appSpecificSettingsManager:(id)manager receivedSyncedClearForAppSpecificSettings:(id)settings ofType:(Class)type applicationIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier
{
  v26 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  v12 = settingsCopy;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = self->_delegates;
  v14 = [(NSHashTable *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * v17);
        if (objc_opt_respondsToSelector())
        {
          identifier = [v12 identifier];
          [v18 appConfigurationManager:self didClearActionWithIdentifier:identifier forApplicationIdentifier:identifierCopy modeIdentifier:modeIdentifierCopy];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSHashTable *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }
}

void __108__DNDSAppConfigurationManager_invalidateAppContextForActionIdentifier_applicationIdentifier_modeIdentifier___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_24912E000, a2, a3, "Failed to fetch appContext for action:%@, error=%@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __108__DNDSAppConfigurationManager_invalidateAppContextForActionIdentifier_applicationIdentifier_modeIdentifier___block_invoke_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = *(a2 + 32);
  OUTLINED_FUNCTION_1_0(&dword_24912E000, a2, a3, "Fetched appContext:%@ for action:%@ is invalid", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)updateSystemActionWithReverseAction:(uint64_t)a1 actionIdentifier:(uint64_t)a2 modeIdentifier:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_24912E000, a2, a3, "Unable to find system action for reverse action. action=%@; mode=%@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end