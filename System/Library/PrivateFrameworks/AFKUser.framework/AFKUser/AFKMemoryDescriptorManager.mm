@interface AFKMemoryDescriptorManager
+ (id)withService:(unsigned int)service;
- (AFKMemoryDescriptorManager)initWithService:(unsigned int)service;
- (void)dealloc;
@end

@implementation AFKMemoryDescriptorManager

+ (id)withService:(unsigned int)service
{
  v3 = [[AFKMemoryDescriptorManager alloc] initWithService:*&service];

  return v3;
}

- (AFKMemoryDescriptorManager)initWithService:(unsigned int)service
{
  output[1] = *MEMORY[0x277D85DE8];
  outputCnt = 1;
  v10.receiver = self;
  v10.super_class = AFKMemoryDescriptorManager;
  v4 = [(AFKMemoryDescriptorManager *)&v10 init];
  if (!v4 || IOObjectRetain(service))
  {
    goto LABEL_16;
  }

  v4->_service = service;
  v5 = IOServiceOpen(service, *MEMORY[0x277D85F48], 0x6D646D72u, &v4->_connect);
  if (v5)
  {
    v8 = _AFKUserLog(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(AFKMemoryDescriptorManager *)v4 regID];
      [AFKMemoryDescriptorManager initWithService:];
    }

    goto LABEL_15;
  }

  v6 = IOConnectCallScalarMethod(v4->_connect, 9u, 0, 0, output, &outputCnt);
  if (v6)
  {
    v8 = _AFKUserLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(AFKMemoryDescriptorManager *)v4 regID];
      [AFKMemoryDescriptorManager initWithService:];
    }

    goto LABEL_15;
  }

  if (outputCnt != 1)
  {
    v8 = _AFKUserLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(AFKMemoryDescriptorManager *)&outputCnt initWithService:v12, [(AFKMemoryDescriptorManager *)v4 regID]];
    }

LABEL_15:

LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  v4->_regID = output[0];
  v7 = v4;
LABEL_17:

  return v7;
}

- (void)dealloc
{
  connect = self->_connect;
  if (connect)
  {
    IOServiceClose(connect);
    self->_connect = 0;
  }

  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
    self->_service = 0;
  }

  v5.receiver = self;
  v5.super_class = AFKMemoryDescriptorManager;
  [(AFKMemoryDescriptorManager *)&v5 dealloc];
}

- (void)initWithService:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: IOServiceOpen:0x%x", v3, v4);
}

- (void)initWithService:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: kGetIDMethod:0x%x", v3, v4);
}

@end