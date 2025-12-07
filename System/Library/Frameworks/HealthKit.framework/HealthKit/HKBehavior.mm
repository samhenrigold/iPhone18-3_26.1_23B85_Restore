@interface HKBehavior
@end

@implementation HKBehavior

_HKFeatureFlags *__23___HKBehavior_features__block_invoke()
{
  v0 = objc_alloc_init(_HKFeatureFlags);

  return v0;
}

uint64_t __38___HKBehavior_shouldReceiveECGSamples__block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) isAppleWatch])
  {
    return 1;
  }

  v2 = [*(a1 + 32) currentDeviceRegionInfo];
  if ([v2 isEqualToString:@"LM/A"])
  {
    v3 = 0;
  }

  else
  {
    v3 = MGGetBoolAnswer();
  }

  return v3;
}

id __39___HKBehavior_currentDeviceProductType__block_invoke()
{
  v0 = MGCopyAnswer();

  return v0;
}

id __40___HKBehavior_currentDeviceSerialNumber__block_invoke()
{
  v0 = MGCopyAnswer();

  return v0;
}

uint64_t __40___HKBehavior_supportsCloudSyncSharding__block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) isAppleWatch])
  {
    return 1;
  }

  result = [*(a1 + 32) tinkerModeEnabled];
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t __44___HKBehavior_supportsCloudSyncStagingShard__block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) isAppleWatch])
  {
    return 1;
  }

  result = [*(a1 + 32) tinkerModeEnabled];
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t __44___HKBehavior_supportsPeriodicFullCloudSync__block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) isAppleWatch])
  {
    return 1;
  }

  result = [*(a1 + 32) tinkerModeEnabled];
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL __43___HKBehavior_supportsCoordinatedCloudSync__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isRealityDevice])
  {
    return 0;
  }

  return +[_HKBehavior hasPairedWatch];
}

void __33___HKBehavior__isDeviceSupported__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging(a1, a2);
  v4 = HKLogInfrastructure(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    v7 = objc_opt_class();
    v8 = 2114;
    v9 = @"healthkit";
    v5 = v7;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Overriding %{public}@", &v6, 0x16u);
  }
}

void __33___HKBehavior__isDeviceSupported__block_invoke_255(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  _HKInitializeLogging(a1, a2);
  v4 = HKLogInfrastructure(v2, v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v8 = HKLogInfrastructure(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      __33___HKBehavior__isDeviceSupported__block_invoke_255_cold_1(v9, v10, v8);
    }
  }
}

void __38___HKBehavior__isAppleInternalInstall__block_invoke(uint64_t a1, uint64_t a2)
{
  _HKInitializeLogging(a1, a2);
  v5 = HKLogInfrastructure(v3, v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v9 = HKLogInfrastructure(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __38___HKBehavior__isAppleInternalInstall__block_invoke_cold_1(a1, v9);
    }
  }
}

void __33___HKBehavior__isDeviceSupported__block_invoke_255_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  v5 = a1;
  _os_log_debug_impl(&dword_19197B000, a3, OS_LOG_TYPE_DEBUG, "%{public}@: Device is not supported", a2, 0xCu);
}

void __38___HKBehavior__isAppleInternalInstall__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = "n ";
  }

  else
  {
    v2 = " NON-";
  }

  v3 = 136446210;
  v4 = v2;
  _os_log_debug_impl(&dword_19197B000, a2, OS_LOG_TYPE_DEBUG, "Device is a%{public}sAppleInternal install", &v3, 0xCu);
}

@end