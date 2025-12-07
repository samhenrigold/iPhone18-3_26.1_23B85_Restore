@interface ASDTIOPAudioVTProperty
+ (id)ioServiceDependenciesForConfig:(id)config;
- (ASDTIOPAudioVTDevice)vtDevice;
- (ASDTIOPAudioVTProperty)initWithConfig:(id)config propertyDataType:(unsigned int)type qualifierDataType:(unsigned int)dataType;
- (void)dealloc;
@end

@implementation ASDTIOPAudioVTProperty

+ (id)ioServiceDependenciesForConfig:(id)config
{
  v8[1] = *MEMORY[0x277D85DE8];
  configCopy = config;
  asdtServiceID = [configCopy asdtServiceID];
  v5 = [(ASDTIOServiceManager *)ASDTIOPAudioVTServiceManager dependencyForID:asdtServiceID andConfiguration:configCopy];

  if (v5)
  {
    v8[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ASDTIOPAudioVTProperty)initWithConfig:(id)config propertyDataType:(unsigned int)type qualifierDataType:(unsigned int)dataType
{
  v5 = *&dataType;
  v6 = *&type;
  configCopy = config;
  v23.receiver = self;
  v23.super_class = ASDTIOPAudioVTProperty;
  v9 = [(ASDTCustomProperty *)&v23 initWithConfig:configCopy propertyDataType:v6 qualifierDataType:v5];
  if (!v9)
  {
    goto LABEL_5;
  }

  asdtServiceID = [configCopy asdtServiceID];
  v11 = [(ASDTIOServiceManager *)ASDTIOPAudioVTServiceManager matchedIOServiceForID:asdtServiceID];
  [(ASDTIOPAudioVTProperty *)v9 setVtDevice:v11];

  vtDevice = [(ASDTIOPAudioVTProperty *)v9 vtDevice];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v21 = ASDTIOPLogType(v14, v15);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ASDTIOPAudioVTProperty initWithConfig:v9 propertyDataType:? qualifierDataType:?];
    }

    goto LABEL_10;
  }

  vtDevice2 = [(ASDTIOPAudioVTProperty *)v9 vtDevice];
  open = [vtDevice2 open];

  if ((open & 1) == 0)
  {
    v21 = ASDTIOPLogType(v18, v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ASDTIOPAudioVTProperty initWithConfig:v9 propertyDataType:? qualifierDataType:?];
    }

LABEL_10:

    v20 = 0;
    goto LABEL_11;
  }

LABEL_5:
  v20 = v9;
LABEL_11:

  return v20;
}

- (void)dealloc
{
  vtDevice = [(ASDTIOPAudioVTProperty *)self vtDevice];
  [vtDevice close];

  v4.receiver = self;
  v4.super_class = ASDTIOPAudioVTProperty;
  [(ASDTIOPAudioVTProperty *)&v4 dealloc];
}

- (ASDTIOPAudioVTDevice)vtDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_vtDevice);

  return WeakRetained;
}

- (void)initWithConfig:(void *)a1 propertyDataType:qualifierDataType:.cold.1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_2416E9000, v2, v3, "%@: Failed to retrieve legacy voice trigger device for identifier: %@", v4, v5, v6, v7);
}

- (void)initWithConfig:(void *)a1 propertyDataType:qualifierDataType:.cold.2(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_2416E9000, v2, v3, "%@: Failed to open legacy voice trigger device '%@'", v4, v5, v6, v7);
}

@end