@interface ASDTIOPAudioVTConfigurationProperty
+ (id)configDictForService:(id)service;
- (ASDTIOPAudioVTConfigurationProperty)initWithConfig:(id)config;
- (BOOL)storePropertyValue:(id)value;
- (id)retrievePropertyValue;
- (int)checkPropertyValue:(id)value;
@end

@implementation ASDTIOPAudioVTConfigurationProperty

+ (id)configDictForService:(id)service
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEFC38];
  v8[0] = *MEMORY[0x277CEFC58];
  v8[1] = v3;
  v9[0] = @"ASDTIOPAudioVTConfigurationProperty";
  v9[1] = service;
  v4 = MEMORY[0x277CBEAC0];
  serviceCopy = service;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

- (ASDTIOPAudioVTConfigurationProperty)initWithConfig:(id)config
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:config];
  v5 = *MEMORY[0x277CEFC10];
  v11[0] = *MEMORY[0x277CEFC28];
  v11[1] = v5;
  v6 = *MEMORY[0x277CEFC68];
  v12[0] = &unk_285359AD8;
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v4 asdtAddMissingEntriesFromDictionary:v7];

  v10.receiver = self;
  v10.super_class = ASDTIOPAudioVTConfigurationProperty;
  v8 = [(ASDTIOPAudioVTProperty *)&v10 initWithConfig:v4 propertyDataType:1886155636 qualifierDataType:0];

  return v8;
}

- (int)checkPropertyValue:(id)value
{
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = ASDTIOPAudioVTConfigurationProperty;
  v5 = [(ASDTCustomProperty *)&v13 checkPropertyValue:valueCopy];
  if (!v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = [valueCopy objectForKey:@"CorealisRTModel"];
      objc_opt_class();
      v9 = objc_opt_isKindOfClass();
      if (v9)
      {
        v5 = 0;
      }

      else
      {
        v11 = ASDTIOPLogType(v9, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [ASDTIOPAudioVTConfigurationProperty checkPropertyValue:?];
        }

        v5 = 3;
      }
    }

    else
    {
      v8 = ASDTIOPLogType(isKindOfClass, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [ASDTIOPAudioVTConfigurationProperty checkPropertyValue:?];
      }

      v5 = 2;
    }
  }

  return v5;
}

- (BOOL)storePropertyValue:(id)value
{
  v36 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v31 = 0;
  vtDevice = [(ASDTIOPAudioVTProperty *)self vtDevice];
  v6 = [vtDevice getIsEnabled:&v31];

  if (v6)
  {
    if (!v31 || (-[ASDTIOPAudioVTProperty vtDevice](self, "vtDevice"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 setEnabled:0], v9, (v10 & 1) != 0))
    {
      v13 = valueCopy;
      v14 = [v13 objectForKey:@"CorealisRTModelVersion"];
      v16 = ASDTIOPLogType(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        name = [(ASDTCustomProperty *)self name];
        v18 = name;
        v19 = @"<unknown>";
        if (v14)
        {
          v19 = v14;
        }

        *buf = 138412546;
        v33 = name;
        v34 = 2112;
        v35 = v19;
        _os_log_impl(&dword_2416E9000, v16, OS_LOG_TYPE_DEFAULT, "%@: Updating VT configuration to '%@'\n", buf, 0x16u);
      }

      vtDevice2 = [(ASDTIOPAudioVTProperty *)self vtDevice];
      v21 = [vtDevice2 setConfigurationInfo:v13];

      if (v21)
      {
        if (!v31 || (-[ASDTIOPAudioVTProperty vtDevice](self, "vtDevice"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 setEnabled:v31], v24, (v25 & 1) != 0))
        {
          v28 = 1;
LABEL_22:

          goto LABEL_23;
        }

        v29 = ASDTIOPLogType(v26, v27);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [ASDTIOPAudioVTConfigurationProperty storePropertyValue:?];
        }
      }

      else
      {
        v29 = ASDTIOPLogType(v22, v23);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [ASDTIOPAudioVTConfigurationProperty storePropertyValue:?];
        }
      }

      v28 = 0;
      goto LABEL_22;
    }

    v13 = ASDTIOPLogType(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ASDTIOPAudioVTConfigurationProperty storePropertyValue:?];
    }
  }

  else
  {
    v13 = ASDTIOPLogType(v7, v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ASDTIOPAudioVTConfigurationProperty storePropertyValue:?];
    }
  }

  v28 = 0;
LABEL_23:

  return v28;
}

- (id)retrievePropertyValue
{
  v9[1] = *MEMORY[0x277D85DE8];
  vtDevice = [(ASDTIOPAudioVTProperty *)self vtDevice];
  isConfigured = [vtDevice isConfigured];

  if (isConfigured)
  {
    vtDevice2 = [(ASDTIOPAudioVTProperty *)self vtDevice];
    getConfigurationInfo = [vtDevice2 getConfigurationInfo];
  }

  else
  {
    v8 = @"CorealisRTModelVersion";
    v9[0] = @"<na>";
    getConfigurationInfo = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  return getConfigurationInfo;
}

- (void)checkPropertyValue:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2416E9000, v2, v3, "%@: VT configuration is not a dictionary.", v4, v5, v6, v7);
}

- (void)checkPropertyValue:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2416E9000, v2, v3, "%@: VT configuration data invalid.", v4, v5, v6, v7);
}

- (void)storePropertyValue:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2416E9000, v2, v3, "%@: Could not determine if the VT device was enabled.", v4, v5, v6, v7);
}

- (void)storePropertyValue:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2416E9000, v2, v3, "%@: Could not disable the VT device.", v4, v5, v6, v7);
}

- (void)storePropertyValue:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2416E9000, v2, v3, "%@: Failed to set the VT configuration.", v4, v5, v6, v7);
}

- (void)storePropertyValue:(void *)a1 .cold.4(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2416E9000, v2, v3, "%@: Could not enable the VT device.", v4, v5, v6, v7);
}

@end