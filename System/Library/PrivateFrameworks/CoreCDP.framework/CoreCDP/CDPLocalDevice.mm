@interface CDPLocalDevice
+ (BOOL)hasLocalSecret;
+ (id)sharedInstance;
- (BOOL)currentProcessHasEntitlement:(id)entitlement;
- (CDPLocalDevice)init;
- (NSNumber)localSecretGeneration;
- (id)deviceClass;
- (id)deviceName;
- (id)hardwareModel;
- (id)marketingModel;
- (id)modelVersion;
- (id)osVersion;
- (id)serialNumber;
- (void)localSecretGeneration;
- (void)serialNumber;
@end

@implementation CDPLocalDevice

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[CDPLocalDevice sharedInstance];
  }

  v3 = sharedInstance_localDevice;

  return v3;
}

- (id)serialNumber
{
  v2 = MGCopyAnswer();
  v3 = _CDPLogSystem(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CDPLocalDevice serialNumber];
  }

  return v2;
}

- (void)serialNumber
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1DED99000, v0, OS_LOG_TYPE_DEBUG, "Reporting current serial number: %@", v1, 0xCu);
}

uint64_t __32__CDPLocalDevice_sharedInstance__block_invoke()
{
  sharedInstance_localDevice = objc_alloc_init(CDPLocalDevice);

  return MEMORY[0x1EEE66BB8]();
}

- (CDPLocalDevice)init
{
  v8.receiver = self;
  v8.super_class = CDPLocalDevice;
  v2 = [(CDPLocalDevice *)&v8 init];
  v3 = v2;
  if (v2)
  {
    if ([(CDPLocalDevice *)v2 _currentProcessCreatesDaemonTypeProxy])
    {
      CDPDLocalDeviceSecretProxyImplClass = getCDPDLocalDeviceSecretProxyImplClass();
    }

    else
    {
      CDPDLocalDeviceSecretProxyImplClass = CDPLocalDeviceSecretProxyImpl;
    }

    v5 = objc_alloc_init(CDPDLocalDeviceSecretProxyImplClass);
    localSecretProxy = v3->_localSecretProxy;
    v3->_localSecretProxy = v5;
  }

  return v3;
}

+ (BOOL)hasLocalSecret
{
  v2 = +[CDPLocalDevice sharedInstance];
  hasLocalSecret = [v2 hasLocalSecret];

  return hasLocalSecret;
}

- (NSNumber)localSecretGeneration
{
  v2 = MKBGetDeviceConfigurations();
  if (v2)
  {
    v3 = @"PasscodeGeneration";
    v4 = [v2 objectForKeyedSubscript:v3];
    if (v4)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v6 = isKindOfClass;
      v7 = _CDPLogSystem(isKindOfClass);
      v8 = v7;
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [CDPLocalDevice localSecretGeneration];
        }

        v9 = v4;
        goto LABEL_15;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CDPLocalDevice *)v4 localSecretGeneration];
      }
    }

    else
    {
      v8 = _CDPLogSystem(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CDPLocalDevice localSecretGeneration];
      }
    }

    v9 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v3 = _CDPLogSystem(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [CDPLocalDevice localSecretGeneration];
  }

  v9 = 0;
LABEL_16:

  return v9;
}

- (id)marketingModel
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)hardwareModel
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)modelVersion
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)osVersion
{
  v2 = MGCopyAnswer();
  if (+[CDPUtilities isInternalBuild])
  {
    v3 = MGCopyAnswer();

    v2 = v3;
  }

  return v2;
}

- (id)deviceClass
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)deviceName
{
  v2 = MGCopyAnswer();

  return v2;
}

- (BOOL)currentProcessHasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  if (currentProcessHasEntitlement__onceToken != -1)
  {
    [CDPLocalDevice currentProcessHasEntitlement:];
  }

  if (currentProcessHasEntitlement__taskRef)
  {
    error = 0;
    v4 = SecTaskCopyValueForEntitlement(currentProcessHasEntitlement__taskRef, entitlementCopy, &error);
    v5 = v4;
    if (error)
    {
      v6 = _CDPLogSystem(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [CDPLocalDevice currentProcessHasEntitlement:];
      }

      CFRelease(error);
    }

    if (v5 && (v7 = CFGetTypeID(v5), v7 == CFBooleanGetTypeID()))
    {
      bOOLValue = [v5 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    v9 = _CDPLogSystem(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CDPLocalDevice currentProcessHasEntitlement:];
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

SecTaskRef __47__CDPLocalDevice_currentProcessHasEntitlement___block_invoke()
{
  result = SecTaskCreateFromSelf(0);
  currentProcessHasEntitlement__taskRef = result;
  return result;
}

- (void)localSecretGeneration
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)currentProcessHasEntitlement:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1DED99000, v1, OS_LOG_TYPE_ERROR, "Error when checking self process for entitlement %@. error:%@", v2, 0x16u);
}

@end