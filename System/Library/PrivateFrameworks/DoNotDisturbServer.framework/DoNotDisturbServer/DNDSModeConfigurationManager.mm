@interface DNDSModeConfigurationManager
- (BOOL)removeModeConfigurationForModeIdentifier:(id)identifier deletePlaceholder:(BOOL)placeholder withError:(id *)error;
- (BOOL)setModeConfiguration:(id)configuration withError:(id *)error;
- (DNDSModeConfigurationManager)initWithBackingStore:(id)store keybag:(id)keybag;
- (DNDSModeConfigurationManagerDelegate)delegate;
- (id)_inheritFromDefaultModeConfiguration:(id)configuration;
- (id)_prepareModeConfigurationForStorage:(id)storage withError:(id *)error;
- (id)_readModeConfigurationsReturningError:(id *)error;
- (id)_removedModeConfigurationRecordForModeRecord:(id)record;
- (id)_sysdiagnoseDataShouldRedact:(BOOL)redact;
- (id)availableModesFilteringPlaceholders:(BOOL)placeholders returningError:(id *)error;
- (id)modeConfigurationForModeIdentifier:(id)identifier withError:(id *)error;
- (id)modeConfigurationsWithError:(id *)error;
- (id)relevantApplicationIdentifiers;
- (id)relevantContacts;
- (unint64_t)_saveModeConfiguration:(id)configuration writeSecurePartition:(BOOL)partition error:(id *)error;
- (unint64_t)_writeModeConfigurationsRecord:(id)record writeSecurePartition:(BOOL)partition error:(id *)error;
- (unint64_t)exceptionForApplication:(id)application thread:(id)thread forModeIdentifier:(id)identifier;
- (unint64_t)exceptionForApplicationIdentifier:(id)identifier thread:(id)thread forModeIdentifier:(id)modeIdentifier;
- (unint64_t)exceptionForContactHandle:(id)handle forModeIdentifier:(id)identifier;
- (void)_fixupConfigurationsIfNeeded;
- (void)_notifyChangeOfModeConfigurationFrom:(id)from to:(id)to;
- (void)dealloc;
- (void)keybagDidUnlockForTheFirstTime:(id)time;
- (void)modeConfigurationStore:(id)store didUpdateAvailableModes:(id)modes;
@end

@implementation DNDSModeConfigurationManager

- (DNDSModeConfigurationManager)initWithBackingStore:(id)store keybag:(id)keybag
{
  storeCopy = store;
  keybagCopy = keybag;
  v13.receiver = self;
  v13.super_class = DNDSModeConfigurationManager;
  v9 = [(DNDSModeConfigurationManager *)&v13 init];
  if (v9)
  {
    v10 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.donotdisturb.server.ModeConfigurationsManager"];
    queue = v9->_queue;
    v9->_queue = v10;

    objc_storeStrong(&v9->_backingStore, store);
    [(DNDSModeConfigurationsStoring *)v9->_backingStore setDelegate:v9];
    objc_storeStrong(&v9->_keybag, keybag);
    [(DNDSKeybagStateProviding *)v9->_keybag addObserver:v9];
    DNDSRegisterSysdiagnoseDataProvider(v9);
    [(DNDSModeConfigurationManager *)v9 _fixupConfigurationsIfNeeded];
  }

  return v9;
}

- (void)dealloc
{
  DNDSUnregisterSysdiagnoseDataProvider(self);
  v3.receiver = self;
  v3.super_class = DNDSModeConfigurationManager;
  [(DNDSModeConfigurationManager *)&v3 dealloc];
}

- (BOOL)setModeConfiguration:(id)configuration withError:(id *)error
{
  v40[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  mode = [configurationCopy mode];
  modeIdentifier = [mode modeIdentifier];
  v9 = [(DNDSModeConfigurationManager *)self modeConfigurationForModeIdentifier:modeIdentifier withError:0];

  if (v9 == configurationCopy || configurationCopy && v9 && [configurationCopy isEqual:v9])
  {
    v10 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v35) = 0;
      _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring call to set mode configuration because it is unchanged.", &v35, 2u);
    }
  }

  if (([(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot]& 1) != 0)
  {
    v11 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v35) = 0;
      _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Secure data will be written", &v35, 2u);
    }

    goto LABEL_21;
  }

  if ([configurationCopy hasSecureData])
  {
    v12 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeConfigurationManager setModeConfiguration:v12 withError:?];
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D05840];
    v39 = *MEMORY[0x277CCA450];
    v40[0] = @"Cannot store mode configuration as new configuration contains secure data and store is not writeable";
    v15 = MEMORY[0x277CBEAC0];
    v16 = v40;
    v17 = &v39;
  }

  else
  {
    hasSecureData = [v9 hasSecureData];
    v19 = DNDSLogModeConfigurations;
    if (!hasSecureData)
    {
      v24 = 0;
      if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v35) = 0;
        _os_log_impl(&dword_24912E000, v19, OS_LOG_TYPE_DEFAULT, "Secure data will not be written", &v35, 2u);
        v24 = 0;
      }

      goto LABEL_22;
    }

    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeConfigurationManager setModeConfiguration:v19 withError:?];
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D05840];
    v37 = *MEMORY[0x277CCA450];
    v38 = @"Cannot replace mode configuration as existing configuration has secure data and store is not writeable";
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v38;
    v17 = &v37;
  }

  v20 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
  v21 = [v13 errorWithDomain:v14 code:1004 userInfo:v20];

  if (!v21)
  {
LABEL_21:
    v24 = 1;
LABEL_22:
    if (!v9 && [configurationCopy isAutomaticallyGenerated])
    {
      v25 = [(DNDSModeConfigurationManager *)self _inheritFromDefaultModeConfiguration:configurationCopy];

      configurationCopy = v25;
    }

    v26 = configurationCopy;
    configurationCopy = [(DNDSModeConfigurationManager *)self _prepareModeConfigurationForStorage:configurationCopy withError:error];

    if (error && *error)
    {
      v21 = 0;
      goto LABEL_28;
    }

    mode2 = [configurationCopy mode];
    isPlaceholder = [mode2 isPlaceholder];

    if (isPlaceholder)
    {
      v29 = DNDSLogModeConfigurations;
      if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
        mode3 = [configurationCopy mode];
        modeIdentifier2 = [mode3 modeIdentifier];
        v35 = 138543362;
        v36 = modeIdentifier2;
        _os_log_impl(&dword_24912E000, v30, OS_LOG_TYPE_DEFAULT, "Setting mode configuration with placeholder visibility effectively removing mode configuration for system Focus by demoting to placeholder; modeIdentifier=%{public}@", &v35, 0xCu);
      }
    }

    v33 = [(DNDSModeConfigurationManager *)self _saveModeConfiguration:configurationCopy writeSecurePartition:v24 error:error];
    if (v33 == 2)
    {
      [(DNDSModeConfigurationManager *)self _notifyChangeOfModeConfigurationFrom:v9 to:configurationCopy];
    }

    v21 = 0;
    v23 = v33 != 0;
    goto LABEL_35;
  }

  if (!error)
  {
LABEL_28:
    v23 = 0;
    goto LABEL_35;
  }

  v22 = v21;
  v23 = 0;
  *error = v21;
LABEL_35:

  return v23;
}

- (id)modeConfigurationForModeIdentifier:(id)identifier withError:(id *)error
{
  identifierCopy = identifier;
  v7 = [(DNDSModeConfigurationManager *)self _readModeConfigurationsReturningError:error];
  v8 = [v7 modeConfigurationForModeIdentifier:identifierCopy];

  if (v8 && ([v8 mode], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "visibility"), v9, !v10))
  {
    v11 = [MEMORY[0x277D05990] modeConfigurationForRecord:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)removeModeConfigurationForModeIdentifier:(id)identifier deletePlaceholder:(BOOL)placeholder withError:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v9 = [(DNDSModeConfigurationManager *)self _readModeConfigurationsReturningError:error];
  v10 = [v9 modeConfigurationForModeIdentifier:identifierCopy];
  if (v10)
  {
    v11 = [v9 mutableCopy];
    mode = [v10 mode];
    semanticType = [mode semanticType];

    if ((semanticType - 1) >= 9)
    {
      if (semanticType)
      {
        v23 = DNDSLogModeConfigurations;
        if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 138543362;
          v25 = identifierCopy;
          _os_log_impl(&dword_24912E000, v23, OS_LOG_TYPE_DEFAULT, "Removing mode configuration for custom Focus or Focus w/ unknown semantic type; modeIdentifier=%{public}@", &v24, 0xCu);
        }

        [v11 setModeConfiguration:0 forModeIdentifier:identifierCopy];
      }

      else if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_FAULT))
      {
        [DNDSModeConfigurationManager removeModeConfigurationForModeIdentifier:deletePlaceholder:withError:];
      }
    }

    else
    {
      if (placeholder)
      {
        makeRecord = 0;
      }

      else
      {
        mode2 = [v10 mode];
        v17 = [(DNDSModeConfigurationManager *)self _removedModeConfigurationRecordForModeRecord:mode2];
        makeRecord = [v17 makeRecord];
      }

      v18 = DNDSLogModeConfigurations;
      if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138543362;
        v25 = identifierCopy;
        _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, "Removing mode configuration for system Focus by demoting to placeholder; modeIdentifier=%{public}@", &v24, 0xCu);
      }

      [v11 setModeConfiguration:makeRecord forModeIdentifier:identifierCopy];
    }

    v19 = [(DNDSModeConfigurationManager *)self _writeModeConfigurationsRecord:v11 writeSecurePartition:1 error:error];
    if (v19 == 2)
    {
      v20 = [(DNDSModeConfigurationManager *)self availableModesFilteringPlaceholders:1 returningError:0];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained modeConfigurationManager:self didUpdateAvailableModes:v20];
    }

    v15 = v19 != 0;
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (id)modeConfigurationsWithError:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [(DNDSModeConfigurationManager *)self _readModeConfigurationsReturningError:error];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  modeConfigurations = [v6 modeConfigurations];
  v8 = [modeConfigurations countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(modeConfigurations);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        mode = [v12 mode];
        visibility = [mode visibility];

        if (!visibility)
        {
          v15 = [MEMORY[0x277D05990] modeConfigurationForRecord:v12];
          mode2 = [v12 mode];
          modeIdentifier = [mode2 modeIdentifier];
          [dictionary setObject:v15 forKeyedSubscript:modeIdentifier];
        }
      }

      v9 = [modeConfigurations countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  return dictionary;
}

- (id)availableModesFilteringPlaceholders:(BOOL)placeholders returningError:(id *)error
{
  placeholdersCopy = placeholders;
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(DNDSModeConfigurationManager *)self _readModeConfigurationsReturningError:error];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  modeConfigurations = [v5 modeConfigurations];
  v8 = [modeConfigurations countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(modeConfigurations);
        }

        mode = [*(*(&v16 + 1) + 8 * i) mode];
        v13 = [MEMORY[0x277D05930] modeForRecord:mode];
        v14 = v13;
        if ((!placeholdersCopy || ([v13 isPlaceholder] & 1) == 0) && (objc_msgSend(v14, "semanticType") != 9 || _os_feature_enabled_impl()))
        {
          [array addObject:v14];
        }
      }

      v9 = [modeConfigurations countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return array;
}

- (unint64_t)exceptionForApplication:(id)application thread:(id)thread forModeIdentifier:(id)identifier
{
  v8 = MEMORY[0x277D058C8];
  identifierCopy = identifier;
  threadCopy = thread;
  applicationCopy = application;
  v12 = [[v8 alloc] initWithBundleID:applicationCopy];

  v13 = [(DNDSModeConfigurationManager *)self exceptionForApplicationIdentifier:v12 thread:threadCopy forModeIdentifier:identifierCopy];
  return v13;
}

- (unint64_t)exceptionForApplicationIdentifier:(id)identifier thread:(id)thread forModeIdentifier:(id)modeIdentifier
{
  threadCopy = thread;
  identifierCopy = identifier;
  v10 = [(DNDSModeConfigurationManager *)self modeConfigurationForModeIdentifier:modeIdentifier withError:0];
  configuration = [v10 configuration];
  v12 = [configuration exceptionForApplicationIdentifier:identifierCopy thread:threadCopy];

  return v12;
}

- (unint64_t)exceptionForContactHandle:(id)handle forModeIdentifier:(id)identifier
{
  handleCopy = handle;
  v7 = [(DNDSModeConfigurationManager *)self modeConfigurationForModeIdentifier:identifier withError:0];
  configuration = [v7 configuration];
  v9 = [configuration exceptionForContactHandle:handleCopy];

  return v9;
}

- (id)_readModeConfigurationsReturningError:(id *)error
{
  backingStore = self->_backingStore;
  v13 = 0;
  v6 = [(DNDSModeConfigurationsStoring *)backingStore readRecordWithError:&v13];
  v7 = v13;
  v8 = v7;
  if (!v7)
  {
    goto LABEL_10;
  }

  if (error)
  {
    v9 = v7;
    *error = v8;
  }

  hasUnlockedSinceBoot = [(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot];
  v11 = os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR);
  if (hasUnlockedSinceBoot)
  {
    if (v11)
    {
      [DNDSModeConfigurationManager _readModeConfigurationsReturningError:];
    }

    _DNDSRequestRadar(@"Failed to load configurations", v8, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSModeConfigurationManager.m", 266);
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (!v11)
  {
LABEL_10:
    if (v6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  [DNDSModeConfigurationManager _readModeConfigurationsReturningError:];
  if (!v6)
  {
LABEL_11:
    v6 = objc_alloc_init(DNDSModeConfigurationsRecord);
  }

LABEL_12:

  return v6;
}

- (id)relevantApplicationIdentifiers
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v26 = [(DNDSModeConfigurationManager *)self _readModeConfigurationsReturningError:0];
  [v26 modeConfigurations];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v40 = 0u;
  v4 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v28 = *v38;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v37 + 1) + 8 * i);
        triggers = [v7 triggers];
        v8Triggers = [triggers triggers];

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v10 = v8Triggers;
        v11 = [v10 countByEnumeratingWithState:&v33 objects:v42 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v34;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v34 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v33 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                applicationIdentifier = [v15 applicationIdentifier];
                [v3 addObject:applicationIdentifier];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v33 objects:v42 count:16];
          }

          while (v12);
        }

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        secureConfiguration = [v7 secureConfiguration];
        allowedApplications = [secureConfiguration allowedApplications];

        v19 = [allowedApplications countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v30;
          do
          {
            for (k = 0; k != v20; ++k)
            {
              if (*v30 != v21)
              {
                objc_enumerationMutation(allowedApplications);
              }

              [v3 addObject:*(*(&v29 + 1) + 8 * k)];
            }

            v20 = [allowedApplications countByEnumeratingWithState:&v29 objects:v41 count:16];
          }

          while (v20);
        }

        secureConfiguration2 = [v7 secureConfiguration];
        deniedApplications = [secureConfiguration2 deniedApplications];
        [v3 unionSet:deniedApplications];
      }

      v5 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)relevantContacts
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(DNDSModeConfigurationManager *)self _readModeConfigurationsReturningError:0];
  modeConfigurations = [v4 modeConfigurations];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [modeConfigurations countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(modeConfigurations);
        }

        v10 = MEMORY[0x277D05A90];
        secureConfiguration = [*(*(&v17 + 1) + 8 * i) secureConfiguration];
        senderConfiguration = [secureConfiguration senderConfiguration];
        v13 = [v10 configurationForRecord:senderConfiguration];

        allowedContacts = [v13 allowedContacts];
        [v3 unionSet:allowedContacts];

        deniedContacts = [v13 deniedContacts];
        [v3 unionSet:deniedContacts];
      }

      v7 = [modeConfigurations countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)keybagDidUnlockForTheFirstTime:(id)time
{
  v4 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Keybag unlocked for the first time; fixing up mode sender configurations if needed.", v5, 2u);
  }

  [(DNDSModeConfigurationManager *)self _fixupConfigurationsIfNeeded];
}

- (unint64_t)_saveModeConfiguration:(id)configuration writeSecurePartition:(BOOL)partition error:(id *)error
{
  partitionCopy = partition;
  v8 = DNDSLogModeConfigurations;
  configurationCopy = configuration;
  [configurationCopy log:v8 withMessage:@"Saving configuration"];
  v10 = [(DNDSModeConfigurationsStoring *)self->_backingStore readRecordWithError:0];
  v11 = [v10 mutableCopy];
  makeRecord = [configurationCopy makeRecord];
  mode = [configurationCopy mode];

  modeIdentifier = [mode modeIdentifier];
  [v11 setModeConfiguration:makeRecord forModeIdentifier:modeIdentifier];

  v15 = [(DNDSModeConfigurationManager *)self _writeModeConfigurationsRecord:v11 writeSecurePartition:partitionCopy error:error];
  return v15;
}

- (unint64_t)_writeModeConfigurationsRecord:(id)record writeSecurePartition:(BOOL)partition error:(id *)error
{
  partitionCopy = partition;
  v22 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  backingStore = self->_backingStore;
  v19 = 0;
  v10 = [(DNDSModeConfigurationsStoring *)backingStore writeRecord:recordCopy writePartition:partitionCopy error:&v19];
  v11 = v19;
  v12 = v11;
  if (v10)
  {
    if (v10 == 1)
    {
      v14 = DNDSLogModeConfigurations;
      if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v21 = v12;
        _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Failed to save configurations, but error can be ignored; error=%{public}@", buf, 0xCu);
      }
    }

    else if (v10 == 2)
    {
      [recordCopy log:DNDSLogModeConfigurations withMessage:@"Saved configurations"];
      v13 = 2;
      goto LABEL_19;
    }

    v13 = 1;
    goto LABEL_19;
  }

  if (error && v11)
  {
    v15 = v11;
    *error = v12;
  }

  hasUnlockedSinceBoot = [(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot];
  v17 = os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR);
  if (hasUnlockedSinceBoot)
  {
    if (v17)
    {
      [DNDSModeConfigurationManager _writeModeConfigurationsRecord:writeSecurePartition:error:];
    }

    [recordCopy log:DNDSLogModeConfigurations withMessage:@"Failed to save configuations"];
    _DNDSRequestRadar(@"Error saving configurations", v12, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSModeConfigurationManager.m", 370);
  }

  else
  {
    if (v17)
    {
      [DNDSModeConfigurationManager _writeModeConfigurationsRecord:writeSecurePartition:error:];
    }

    [recordCopy log:DNDSLogModeConfigurations withMessage:@"Failed to save configuations; first lock"];
  }

  v13 = 0;
LABEL_19:

  return v13;
}

- (id)_inheritFromDefaultModeConfiguration:(id)configuration
{
  configurationCopy = configuration;
  mode = [configurationCopy mode];
  modeIdentifier = [mode modeIdentifier];

  v7 = *MEMORY[0x277D05830];
  v8 = [modeIdentifier isEqualToString:*MEMORY[0x277D05830]];
  v9 = [modeIdentifier isEqualToString:*MEMORY[0x277D05860]];
  v10 = configurationCopy;
  if ((v8 & 1) == 0)
  {
    v10 = configurationCopy;
    if ((v9 & 1) == 0)
    {
      v11 = [(DNDSModeConfigurationManager *)self modeConfigurationForModeIdentifier:v7 withError:0];
      configuration = [configurationCopy configuration];
      phoneCallBypassSettings = [configuration phoneCallBypassSettings];

      configuration2 = [v11 configuration];
      phoneCallBypassSettings2 = [configuration2 phoneCallBypassSettings];

      v10 = configurationCopy;
      if (([phoneCallBypassSettings isEqual:phoneCallBypassSettings2] & 1) == 0)
      {
        v16 = [configurationCopy mutableCopy];
        configuration3 = [configurationCopy configuration];
        v18 = [configuration3 mutableCopy];

        isAutomaticallyGenerated = [configurationCopy isAutomaticallyGenerated];
        [v18 setPhoneCallBypassSettings:phoneCallBypassSettings2];
        [v16 setConfiguration:v18];
        [v16 setAutomaticallyGenerated:isAutomaticallyGenerated];
        v10 = [v16 copy];
      }
    }
  }

  return v10;
}

- (id)_prepareModeConfigurationForStorage:(id)storage withError:(id *)error
{
  storageCopy = storage;
  v5 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  configuration = [storageCopy configuration];
  senderConfiguration = [configuration senderConfiguration];
  v8 = [senderConfiguration sanitizedConfigurationWithContactStore:v5];

  if (v8)
  {
    configuration2 = [storageCopy configuration];
    v10 = [configuration2 mutableCopy];

    isAutomaticallyGenerated = [storageCopy isAutomaticallyGenerated];
    [v10 setSenderConfiguration:v8];
    v12 = [storageCopy mutableCopy];
    [v12 setConfiguration:v10];
    [v12 setAutomaticallyGenerated:isAutomaticallyGenerated];
    v13 = [v12 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_notifyChangeOfModeConfigurationFrom:(id)from to:(id)to
{
  v85 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  configuration = [fromCopy configuration];
  senderConfiguration = [configuration senderConfiguration];
  allowedContacts = [senderConfiguration allowedContacts];

  configuration2 = [toCopy configuration];
  senderConfiguration2 = [configuration2 senderConfiguration];
  allowedContacts2 = [senderConfiguration2 allowedContacts];

  v13 = [allowedContacts mutableCopy];
  [v13 intersectSet:allowedContacts2];
  v62 = allowedContacts2;
  v14 = [allowedContacts2 mutableCopy];
  [v14 minusSet:v13];
  v15 = [allowedContacts mutableCopy];
  v60 = v13;
  [v15 minusSet:v13];
  v64 = fromCopy;
  configuration3 = [fromCopy configuration];
  senderConfiguration3 = [configuration3 senderConfiguration];
  deniedContacts = [senderConfiguration3 deniedContacts];

  v63 = toCopy;
  configuration4 = [toCopy configuration];
  senderConfiguration4 = [configuration4 senderConfiguration];
  deniedContacts2 = [senderConfiguration4 deniedContacts];

  v22 = [deniedContacts mutableCopy];
  [v22 intersectSet:deniedContacts2];
  v58 = deniedContacts2;
  v55 = [deniedContacts2 mutableCopy];
  [v55 minusSet:v22];
  v59 = deniedContacts;
  v23 = [deniedContacts mutableCopy];
  v57 = v22;
  [v23 minusSet:v22];
  v24 = objc_opt_new();
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v25 = v15;
  v26 = [v25 countByEnumeratingWithState:&v77 objects:v84 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v78;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v78 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v77 + 1) + 8 * i);
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
        [v24 setObject:v31 forKey:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v77 objects:v84 count:16];
    }

    while (v27);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v32 = v23;
  v33 = [v32 countByEnumeratingWithState:&v73 objects:v83 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v74;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v74 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v73 + 1) + 8 * j);
        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
        [v24 setObject:v38 forKey:v37];
      }

      v34 = [v32 countByEnumeratingWithState:&v73 objects:v83 count:16];
    }

    while (v34);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v39 = v14;
  v40 = [v39 countByEnumeratingWithState:&v69 objects:v82 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v70;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v70 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v69 + 1) + 8 * k);
        v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
        [v24 setObject:v45 forKey:v44];
      }

      v41 = [v39 countByEnumeratingWithState:&v69 objects:v82 count:16];
    }

    while (v41);
  }

  v56 = v25;

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v46 = v55;
  v47 = [v46 countByEnumeratingWithState:&v65 objects:v81 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v66;
    do
    {
      for (m = 0; m != v48; ++m)
      {
        if (*v66 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = *(*(&v65 + 1) + 8 * m);
        v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
        [v24 setObject:v52 forKey:v51];
      }

      v48 = [v46 countByEnumeratingWithState:&v65 objects:v81 count:16];
    }

    while (v48);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained modeConfigurationManager:self didModifyExceptionsForContacts:v24 forModeConfiguration:v63];
  if (objc_opt_respondsToSelector())
  {
    mode = [v63 mode];
    [WeakRetained modeConfigurationManager:self didModifyAvailableMode:mode];
  }
}

- (id)_removedModeConfigurationRecordForModeRecord:(id)record
{
  v4 = MEMORY[0x277D05A20];
  recordCopy = record;
  defaultConfiguration = [v4 defaultConfiguration];
  v7 = [recordCopy mutableCopy];

  [v7 setVisibility:1];
  v8 = objc_alloc(MEMORY[0x277D05990]);
  v9 = [MEMORY[0x277D05930] modeForRecord:v7];
  v10 = [v8 initWithMode:v9 configuration:defaultConfiguration triggers:MEMORY[0x277CBEBF8]];

  v11 = [(DNDSModeConfigurationManager *)self _prepareModeConfigurationForStorage:v10 withError:0];

  return v11;
}

- (id)_sysdiagnoseDataShouldRedact:(BOOL)redact
{
  redactCopy = redact;
  v4 = [(DNDSModeConfigurationsStoring *)self->_backingStore readRecordWithError:0];
  v5 = objc_alloc_init(DNDSApplicationIdentifierMapper);
  v6 = objc_alloc_init(DNDSContactProvider);
  v7 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:3 redactSensitiveData:redactCopy contactProvider:v6 applicationIdentifierMapper:v5];
  v8 = [v4 dictionaryRepresentationWithContext:v7];

  return v8;
}

- (void)_fixupConfigurationsIfNeeded
{
  v81 = *MEMORY[0x277D85DE8];
  if ([(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot])
  {
    [(DNDSKeybagStateProviding *)self->_keybag removeObserver:self];
    v74 = 0;
    v3 = [(DNDSModeConfigurationManager *)self _readModeConfigurationsReturningError:&v74];
    v4 = v74;
    if (v4)
    {
      if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
      {
        [DNDSModeConfigurationManager _fixupConfigurationsIfNeeded];
      }

      goto LABEL_50;
    }

    modeConfigurations = [v3 modeConfigurations];
    v7 = [v3 mutableCopy];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v8 = modeConfigurations;
    obj = v8;
    v63 = [v8 countByEnumeratingWithState:&v70 objects:v80 count:16];
    if (v63)
    {
      selfCopy = self;
      v58 = v3;
      v9 = 0;
      v62 = *v71;
      v59 = v7;
      do
      {
        v10 = 0;
        do
        {
          if (*v71 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v64 = v10;
          v11 = *(*(&v70 + 1) + 8 * v10);
          secureConfiguration = [v11 secureConfiguration];
          senderConfiguration = [secureConfiguration senderConfiguration];

          v14 = [senderConfiguration mutableCopy];
          allowedContactTypes = [senderConfiguration allowedContactTypes];
          v16 = [allowedContactTypes count];

          if (v16)
          {
            v17 = objc_opt_new();
            [v14 setAllowedContactTypes:v17];
          }

          deniedContactTypes = [senderConfiguration deniedContactTypes];
          v19 = [deniedContactTypes count];

          if (v19)
          {
            v20 = objc_opt_new();
            [v14 setDeniedContactTypes:v20];
          }

          allowedContactGroups = [senderConfiguration allowedContactGroups];
          v22 = [allowedContactGroups count];

          if (v22)
          {
            v23 = objc_opt_new();
            [v14 setAllowedContactGroups:v23];
          }

          deniedContactGroups = [senderConfiguration deniedContactGroups];
          v25 = [deniedContactGroups count];

          if (v25)
          {
            v26 = objc_opt_new();
            [v14 setDeniedContactGroups:v26];
          }

          v27 = [v11 mutableCopy];
          if (([senderConfiguration isEqual:v14] & 1) == 0)
          {
            secureConfiguration2 = [v27 secureConfiguration];
            v29 = [secureConfiguration2 mutableCopy];

            [v29 setSenderConfiguration:v14];
            [v27 setSecureConfiguration:v29];
            v30 = DNDSLogModeConfigurations;
            if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v77 = senderConfiguration;
              v78 = 2114;
              v79 = v14;
              _os_log_impl(&dword_24912E000, v30, OS_LOG_TYPE_DEFAULT, "Fixing up mode with sender configuration: %{public}@ to new sender configuration: %{public}@", buf, 0x16u);
            }

            v9 = 1;
          }

          mode = [v11 mode];
          semanticType = [mode semanticType];

          if (semanticType == 2)
          {
            secureConfiguration3 = [v11 secureConfiguration];
            allowedApplications = [secureConfiguration3 allowedApplications];
            v35 = [allowedApplications count];

            if (v35)
            {
              secureConfiguration4 = [v27 secureConfiguration];
              v37 = [secureConfiguration4 mutableCopy];

              v38 = objc_opt_new();
              [v37 setAllowedApplications:v38];

              [v27 setSecureConfiguration:v37];
              v39 = DNDSLogModeConfigurations;
              if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
              {
                v40 = v39;
                secureConfiguration5 = [v11 secureConfiguration];
                *buf = 138543618;
                v77 = secureConfiguration5;
                v78 = 2114;
                v79 = v37;
                _os_log_impl(&dword_24912E000, v40, OS_LOG_TYPE_DEFAULT, "Fixing up driving mode with secureConfiguration: %{public}@ to new secureConfiguration: %{public}@", buf, 0x16u);
              }

              v9 = 1;
            }
          }

          mode2 = [v11 mode];
          semanticType2 = [mode2 semanticType];

          if ((semanticType2 - 1) <= 2)
          {
            v61 = v14;
            v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            triggers = [v11 triggers];
            v45Triggers = [triggers triggers];

            v47 = [v45Triggers countByEnumeratingWithState:&v66 objects:v75 count:16];
            if (v47)
            {
              v48 = v47;
              v49 = *v67;
              do
              {
                for (i = 0; i != v48; ++i)
                {
                  if (*v67 != v49)
                  {
                    objc_enumerationMutation(v45Triggers);
                  }

                  v51 = *(*(&v66 + 1) + 8 * i);
                  if (v51 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                  {
                    [v44 addObject:v51];
                  }

                  else
                  {
                    v9 = 1;
                  }
                }

                v48 = [v45Triggers countByEnumeratingWithState:&v66 objects:v75 count:16];
              }

              while (v48);
            }

            v52 = [DNDSModeConfigurationTriggersRecord alloc];
            v53 = [v44 copy];
            v54 = [(DNDSModeConfigurationTriggersRecord *)v52 initWithTriggers:v53];

            [v27 setTriggers:v54];
            v7 = v59;
            v14 = v61;
          }

          mode3 = [v27 mode];
          modeIdentifier = [mode3 modeIdentifier];
          [v7 setModeConfiguration:v27 forModeIdentifier:modeIdentifier];

          v10 = v64 + 1;
        }

        while (v64 + 1 != v63);
        v63 = [obj countByEnumeratingWithState:&v70 objects:v80 count:16];
      }

      while (v63);

      v3 = v58;
      if ((v9 & 1) == 0)
      {
        goto LABEL_49;
      }

      v65 = 0;
      [(DNDSModeConfigurationManager *)selfCopy _writeModeConfigurationsRecord:v7 writeSecurePartition:1 error:&v65];
      v8 = v65;
      if (v8 && os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
      {
        [DNDSModeConfigurationManager _fixupConfigurationsIfNeeded];
      }
    }

LABEL_49:
LABEL_50:

    return;
  }

  v5 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Deferring mode sender configuration fixup until keybag unlocked for the first time.", buf, 2u);
  }
}

- (void)modeConfigurationStore:(id)store didUpdateAvailableModes:(id)modes
{
  modesCopy = modes;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained modeConfigurationManager:self didUpdateAvailableModes:modesCopy];
}

- (DNDSModeConfigurationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)removeModeConfigurationForModeIdentifier:deletePlaceholder:withError:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(&dword_24912E000, v0, OS_LOG_TYPE_FAULT, "Removing mode configuration for default Focus is not supported; modeIdentifier=%{public}@", v1, 0xCu);
}

@end