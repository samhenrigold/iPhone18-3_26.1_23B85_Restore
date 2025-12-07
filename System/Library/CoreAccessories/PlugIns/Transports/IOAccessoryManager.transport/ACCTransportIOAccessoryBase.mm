@interface ACCTransportIOAccessoryBase
- (ACCTransportIOAccessoryBase)initWithIOAccessoryClass:(int)class ioService:(unsigned int)service;
- (BOOL)transmitData:(id)data;
- (void)dealloc;
- (void)transportClassTerminated;
@end

@implementation ACCTransportIOAccessoryBase

- (ACCTransportIOAccessoryBase)initWithIOAccessoryClass:(int)class ioService:(unsigned int)service
{
  v4 = *&service;
  v5 = *&class;
  v33 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = ACCTransportIOAccessoryBase;
  v6 = [(ACCTransportIOAccessoryBase *)&v26 init];
  v7 = v6;
  if (v6)
  {
    v6->_ioServiceClassType = v5;
    p_ioServiceClassType = &v6->_ioServiceClassType;
    v6->_ioService = v4;
    v9 = MEMORY[0x277CCACA8];
    v10 = [ACCTransportIOAccessorySharedManager IOAccessoryClassStringForIOAccessoryClassType:v5];
    v11 = [v9 stringWithFormat:@"com.apple.ACCTransportPlugin.%s.%d", objc_msgSend(v10, "UTF8String"), v4];

    v12 = dispatch_queue_create([v11 UTF8String], 0);
    notificationPortQueue = v7->_notificationPortQueue;
    v7->_notificationPortQueue = v12;

    v14 = IONotificationPortCreate(*MEMORY[0x277CD28A0]);
    v7->_ioNotificationPort = v14;
    IONotificationPortSetDispatchQueue(v14, v7->_notificationPortQueue);
    v7->_ioNotificationObject = 0;
    v7->_ioConnect = 0;
    v7->_primaryPortNumber = -1;
    v7->_upstreamManagerService = IOAccessoryManagerGetUpstreamService();
    v15 = *p_ioServiceClassType;
    if (*p_ioServiceClassType <= 1)
    {
      if (v15)
      {
        if (v15 != 1)
        {
LABEL_24:
          v7->_primaryPortNumber = -1;
          goto LABEL_25;
        }

        ManagerPrimaryPort = IOAccessoryPortGetManagerPrimaryPort();
LABEL_9:
        v7->_primaryPortNumber = ManagerPrimaryPort;
        if (ManagerPrimaryPort != -1)
        {
          v18 = logModuleForTransport(*p_ioServiceClassType);
          if (v18 < 0 || !gLogObjects || gNumLogObjects <= v18)
          {
            if (v18 != -1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryBase initWithIOAccessoryClass:ioService:];
            }

            v19 = MEMORY[0x277D86220];
            v20 = MEMORY[0x277D86220];
          }

          else
          {
            v19 = *(gLogObjects + 8 * v18);
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            ioService = v7->_ioService;
            primaryPortNumber = v7->_primaryPortNumber;
            upstreamManagerService = v7->_upstreamManagerService;
            *buf = 67109632;
            v28 = ioService;
            v29 = 1024;
            v30 = primaryPortNumber;
            v31 = 1024;
            v32 = upstreamManagerService;
            _os_log_impl(&dword_233656000, v19, OS_LOG_TYPE_DEFAULT, "adding service with ioService %d, _primaryPortNumber %d, and _upstreamManager service %d", buf, 0x14u);
          }

          goto LABEL_33;
        }

LABEL_25:
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v19 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryBase initWithIOAccessoryClass:ioService:];
          }

          v19 = MEMORY[0x277D86220];
          v24 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryBase initWithIOAccessoryClass:ioService:];
        }

LABEL_33:

        IOObjectRetain(v7->_ioService);
        return v7;
      }
    }

    else if ((v15 - 2) >= 3 && v15 != 6)
    {
      goto LABEL_24;
    }

    ManagerPrimaryPort = IOAccessoryManagerGetPrimaryPort();
    goto LABEL_9;
  }

  return v7;
}

- (void)dealloc
{
  ioNotificationPort = self->_ioNotificationPort;
  if (ioNotificationPort)
  {
    IONotificationPortDestroy(ioNotificationPort);
    self->_ioNotificationPort = 0;
  }

  self->_primaryPortNumber = -1;
  ioConnect = self->_ioConnect;
  if (ioConnect)
  {
    IOServiceClose(ioConnect);
  }

  ioNotificationObject = self->_ioNotificationObject;
  if (ioNotificationObject)
  {
    IOObjectRelease(ioNotificationObject);
    self->_ioNotificationObject = 0;
  }

  IOObjectRelease(self->_ioService);
  upstreamManagerService = self->_upstreamManagerService;
  if (upstreamManagerService)
  {
    IOObjectRelease(upstreamManagerService);
  }

  notificationPortQueue = self->_notificationPortQueue;
  self->_notificationPortQueue = 0;

  v8.receiver = self;
  v8.super_class = ACCTransportIOAccessoryBase;
  [(ACCTransportIOAccessoryBase *)&v8 dealloc];
}

- (void)transportClassTerminated
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  ioNotificationPort = obj->_ioNotificationPort;
  if (ioNotificationPort)
  {
    IONotificationPortDestroy(ioNotificationPort);
    v2 = obj;
    obj->_ioNotificationPort = 0;
  }

  ioNotificationObject = v2->_ioNotificationObject;
  if (ioNotificationObject)
  {
    IOObjectRelease(ioNotificationObject);
    v2 = obj;
    obj->_ioNotificationObject = 0;
  }

  objc_sync_exit(v2);
}

- (BOOL)transmitData:(id)data
{
  dataCopy = data;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryBase initWithIOAccessoryClass:ioService:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [ACCTransportIOAccessoryBase transmitData:];
  }

  return 0;
}

- (void)initWithIOAccessoryClass:ioService:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end