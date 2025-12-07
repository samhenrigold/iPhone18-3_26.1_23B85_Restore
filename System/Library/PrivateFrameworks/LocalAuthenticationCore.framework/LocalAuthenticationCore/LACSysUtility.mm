@interface LACSysUtility
+ (LACSysUtility)sharedInstance;
- (BOOL)_hasCodeSigningMonitorOfType:(unsigned int)type;
- (BOOL)hasCodeSigningMonitor;
- (unint64_t)txmSecurityBootMode;
- (unsigned)_getCodeSigningConfig;
- (unsigned)_getCodeSigningMonitorType;
@end

@implementation LACSysUtility

+ (LACSysUtility)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[LACSysUtility sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_2;

  return v3;
}

uint64_t __31__LACSysUtility_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(LACSysUtility);
  v1 = sharedInstance_sharedInstance_2;
  sharedInstance_sharedInstance_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)hasCodeSigningMonitor
{
  if ([(LACSysUtility *)self hasPPL])
  {
    return 1;
  }

  return [(LACSysUtility *)self hasTXM];
}

- (unint64_t)txmSecurityBootMode
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v8 = 4;
  v2 = sysctlbyname("security.codesigning.security_boot_mode_complete", &v9, &v8, 0, 0);
  v3 = v2;
  v4 = LACLogDefault(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v9;
    v6 = *__error();
    *buf = 67109632;
    v11 = v5;
    v12 = 1024;
    v13 = v3;
    v14 = 1024;
    v15 = v6;
    _os_log_impl(&dword_1B0233000, v4, OS_LOG_TYPE_DEFAULT, "TXM boot mode returned value: %d error: %d global error: %d", buf, 0x14u);
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

- (BOOL)_hasCodeSigningMonitorOfType:(unsigned int)type
{
  if ([(LACSysUtility *)self _getCodeSigningMonitorType]== type)
  {
    return [(LACSysUtility *)self _getCodeSigningConfig]>> 31;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (unsigned)_getCodeSigningMonitorType
{
  if (_getCodeSigningMonitorType_onceToken != -1)
  {
    [LACSysUtility _getCodeSigningMonitorType];
  }

  return _getCodeSigningMonitorType_codeSigningMonitor;
}

void __43__LACSysUtility__getCodeSigningMonitorType__block_invoke()
{
  v2 = 4;
  v0 = sysctlbyname("security.codesigning.monitor", &_getCodeSigningMonitorType_codeSigningMonitor, &v2, 0, 0);
  if (v0)
  {
    v1 = LACLogDefault(v0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __43__LACSysUtility__getCodeSigningMonitorType__block_invoke_cold_1();
    }
  }
}

- (unsigned)_getCodeSigningConfig
{
  if (_getCodeSigningConfig_onceToken != -1)
  {
    [LACSysUtility _getCodeSigningConfig];
  }

  return _getCodeSigningConfig_codeSigningConfig;
}

void __38__LACSysUtility__getCodeSigningConfig__block_invoke()
{
  v2 = 4;
  v0 = sysctlbyname("security.codesigning.config", &_getCodeSigningConfig_codeSigningConfig, &v2, 0, 0);
  if (v0)
  {
    v1 = LACLogDefault(v0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __38__LACSysUtility__getCodeSigningConfig__block_invoke_cold_1();
    }
  }
}

void __43__LACSysUtility__getCodeSigningMonitorType__block_invoke_cold_1()
{
  __error();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0233000, v0, v1, "Sysctl security.codesigning.monitor failed with error code: %d global error: %d", v2, v3, v4, v5);
}

void __38__LACSysUtility__getCodeSigningConfig__block_invoke_cold_1()
{
  __error();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0233000, v0, v1, "Sysctl security.codesigning.config failed with error code: %d global error: %d", v2, v3, v4, v5);
}

@end