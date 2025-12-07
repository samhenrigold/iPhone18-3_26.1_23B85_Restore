@interface DNDSPlaceholderModeManager
- (DNDSPlaceholderModeManager)initWithBackingStore:(id)store;
- (id)_readPlaceholderModesReturningError:(id *)error;
- (id)placeholderModeIgnoringExcludedPlatformsForSemanticType:(int64_t)type;
- (id)placeholderModesWithError:(id *)error;
- (id)sysdiagnoseDataForDate:(id)date redacted:(BOOL)redacted;
@end

@implementation DNDSPlaceholderModeManager

- (DNDSPlaceholderModeManager)initWithBackingStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = DNDSPlaceholderModeManager;
  v6 = [(DNDSPlaceholderModeManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingStore, store);
  }

  return v7;
}

- (id)placeholderModesWithError:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(DNDSPlaceholderModeManager *)self _readPlaceholderModesReturningError:error];
  array = [MEMORY[0x277CBEB18] array];
  v5 = currentDevicePlatformString();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = v3;
  placeholderModes = [v3 placeholderModes];
  v7 = [placeholderModes countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(placeholderModes);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        placeholderExcludedPlatforms = [v11 placeholderExcludedPlatforms];
        v13 = [placeholderExcludedPlatforms containsObject:v5];

        if ((v13 & 1) == 0)
        {
          v14 = [MEMORY[0x277D05930] modeForRecord:v11];
          if ([v14 semanticType] != 9 || (_os_feature_enabled_impl() & 1) != 0 || !+[DNDSPlatformEligibility isIntelligenceAvailable](DNDSPlatformEligibility, "isIntelligenceAvailable"))
          {
            [array addObject:v14];
          }
        }
      }

      v8 = [placeholderModes countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)placeholderModeIgnoringExcludedPlatformsForSemanticType:(int64_t)type
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [(DNDSPlaceholderModeManager *)self _readPlaceholderModesReturningError:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  placeholderModes = [v4 placeholderModes];
  v6 = [placeholderModes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(placeholderModes);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 semanticType] == type)
        {
          v11 = [MEMORY[0x277D05930] modeForRecord:v10];
          goto LABEL_11;
        }
      }

      v7 = [placeholderModes countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)sysdiagnoseDataForDate:(id)date redacted:(BOOL)redacted
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"placeholderModes";
  redacted = [(DNDSPlaceholderModeManager *)self placeholderModesWithError:0, redacted];
  v8[0] = redacted;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (id)_readPlaceholderModesReturningError:(id *)error
{
  backingStore = self->_backingStore;
  v11 = 0;
  v5 = [(DNDSBackingStore *)backingStore readRecordWithError:&v11];
  v6 = v11;
  v7 = v6;
  if (v6)
  {
    if (error)
    {
      v8 = v6;
      *error = v7;
    }

    v9 = DNDSLogGeneral;
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
    {
      [(DNDSPlaceholderModeManager *)v7 _readPlaceholderModesReturningError:v9];
    }

    _DNDSRequestRadar(@"Failed to load placeholder Focus modes", v7, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSPlaceholderModeManager.m", 109);
  }

  if (!v5)
  {
    v5 = objc_alloc_init(DNDSPlaceholderModesRecord);
  }

  return v5;
}

- (void)_readPlaceholderModesReturningError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Failed to load placeholder modes, will request a radar; error=%{public}@", &v2, 0xCu);
}

@end