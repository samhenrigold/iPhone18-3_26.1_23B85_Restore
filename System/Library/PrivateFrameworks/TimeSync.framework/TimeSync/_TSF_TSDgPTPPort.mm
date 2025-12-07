@interface _TSF_TSDgPTPPort
+ (id)diagnosticInfoForClockIdentifier:(unint64_t)identifier andPortNumber:(unsigned __int16)number;
+ (id)diagnosticInfoForService:(id)service;
+ (id)gPTPPortWithClockIdentifier:(unint64_t)identifier portNumber:(unsigned __int16)number;
+ (id)gPTPPortWithService:(id)service;
+ (id)iokitMatchingDictionaryForPortClass:(id)class clockIdentifier:(unint64_t)identifier andPortNumber:(unsigned __int16)number;
- (BOOL)startAutomaticPropertyUpdates;
- (BOOL)stopAutomaticPropertyUpdates;
- (_TSF_TSDgPTPPort)init;
- (_TSF_TSDgPTPPort)initWithService:(id)service pid:(int)pid;
- (id)getMetrics;
- (id)getMetricsWithDelta:(id)delta;
- (id)propertiesForXPC;
- (int)_portRole;
- (unint64_t)_clockIdentifier;
- (unsigned)_portNumber;
- (void)finalizeNotifications;
- (void)setPropertyUpdateQueue:(id)queue;
- (void)updateProperties;
@end

@implementation _TSF_TSDgPTPPort

+ (id)iokitMatchingDictionaryForPortClass:(id)class clockIdentifier:(unint64_t)identifier andPortNumber:(unsigned __int16)number
{
  v5 = MEMORY[0x277CCABB0];
  classCopy = class;
  v9 = [v5 numberWithUnsignedShort:?];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  return v7;
}

- (_TSF_TSDgPTPPort)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  [v3 raise:v4 format:?];

  return 0;
}

+ (id)gPTPPortWithService:(id)service
{
  serviceCopy = service;
  if ([serviceCopy conformsToIOClassName:?])
  {
    v4 = off_279DBD3A0;
LABEL_21:
    v5 = [objc_alloc(*v4) initWithService:?];
    goto LABEL_22;
  }

  if ([serviceCopy conformsToIOClassName:?])
  {
    v4 = off_279DBD3E8;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:?])
  {
    v4 = off_279DBD3F8;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:?])
  {
    v4 = &off_279DBD408;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:?])
  {
    v4 = off_279DBD3E0;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:?])
  {
    v4 = off_279DBD3F0;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:?])
  {
    v4 = off_279DBD400;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:?])
  {
    v4 = off_279DBD3B8;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:?])
  {
    v4 = off_279DBD3C8;
    goto LABEL_21;
  }

  if ([serviceCopy conformsToIOClassName:?])
  {
    v4 = off_279DBD3D0;
    goto LABEL_21;
  }

  v5 = 0;
LABEL_22:

  return v5;
}

+ (id)gPTPPortWithClockIdentifier:(unint64_t)identifier portNumber:(unsigned __int16)number
{
  v5 = MEMORY[0x277D1AE20];
  v6 = [self iokitMatchingDictionaryForClockIdentifier:? andPortNumber:?];
  v7 = [v5 matchingService:?];

  v8 = [self gPTPPortWithService:?];

  return v8;
}

- (_TSF_TSDgPTPPort)initWithService:(id)service pid:(int)pid
{
  serviceCopy = service;
  v17.receiver = self;
  v17.super_class = _TSF_TSDgPTPPort;
  v7 = [(_TSF_TSDgPTPPort *)&v17 init];
  if (v7)
  {
    objc_initWeak(&location, v7);
    objc_storeStrong(&v7->_service, service);
    if (v7->_service)
    {
      v7->_portNumber = [(_TSF_TSDgPTPPort *)v7 _portNumber];
      v7->_clockIdentifier = [(_TSF_TSDgPTPPort *)v7 _clockIdentifier];
      if (initWithService_pid__onceToken != -1)
      {
        [_TSF_TSDgPTPPort initWithService:pid:];
      }

      if (_sharedNotificationsQueue)
      {
        objc_storeStrong(&v7->_propertyUpdateQueue, _sharedNotificationsQueue);
        v7->_portRole = [(_TSF_TSDgPTPPort *)v7 _portRole];
        v8 = [objc_alloc(MEMORY[0x277D1AE18]) initOnDispatchQueue:?];
        notificationPort = v7->_notificationPort;
        v7->_notificationPort = v8;

        if (v7->_notificationPort)
        {
          service = v7->_service;
          v14 = MEMORY[0x277D85DD0];
          objc_copyWeak(&v15, &location);
          v11 = [(IOKService *)service addInterestNotifcationOfType:v14 usingNotificationPort:3221225472 error:__40___TSF_TSDgPTPPort_initWithService_pid___block_invoke_65 withHandler:&unk_279DBD820];
          generalInterestNotification = v7->_generalInterestNotification;
          v7->_generalInterestNotification = v11;

          objc_destroyWeak(&v15);
          if (v7->_generalInterestNotification)
          {
LABEL_8:
            objc_destroyWeak(&location);
            goto LABEL_9;
          }

          [_TSF_TSDgPTPPort initWithService:pid:];
        }

        else
        {
          [_TSF_TSDgPTPPort initWithService:pid:];
        }
      }

      else
      {
        [_TSF_TSDgPTPPort initWithService:pid:];
      }
    }

    else
    {
      [_TSF_TSDgPTPPort initWithService:pid:];
    }

    v7 = 0;
    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

- (void)updateProperties
{
  propertyUpdateQueue = [(_TSF_TSDgPTPPort *)self propertyUpdateQueue];
  _portRole = [(_TSF_TSDgPTPPort *)self _portRole];
  _clockIdentifier = [(_TSF_TSDgPTPPort *)self _clockIdentifier];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36___TSF_TSDgPTPPort_updateProperties__block_invoke;
  block[3] = &unk_279DBD848;
  v7 = _portRole;
  block[4] = self;
  block[5] = _clockIdentifier;
  dispatch_async(propertyUpdateQueue, block);
}

- (BOOL)startAutomaticPropertyUpdates
{
  v2 = self->_generalInterestNotification != 0;
  self->_updatePropertiesOnPropertyChange = 1;
  return v2;
}

- (BOOL)stopAutomaticPropertyUpdates
{
  self->_updatePropertiesOnPropertyChange = 0;
  dispatch_sync(_sharedNotificationsQueue, &__block_literal_global_69);
  return 1;
}

- (unsigned)_portNumber
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    unsignedShortValue = [v3 unsignedShortValue];
  }

  else
  {
    unsignedShortValue = 0;
  }

  return unsignedShortValue;
}

- (int)_portRole
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    intValue = [v3 intValue];
    if (intValue < 4)
    {
      v5 = intValue + 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_clockIdentifier
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    unsignedLongLongValue = [v3 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (void)setPropertyUpdateQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    queueCopy = _sharedNotificationsQueue;
  }

  self->_propertyUpdateQueue = queueCopy;

  MEMORY[0x2821F96F8]();
}

- (void)finalizeNotifications
{
  self->_updatePropertiesOnPropertyChange = 0;
  generalInterestNotification = self->_generalInterestNotification;
  self->_generalInterestNotification = 0;

  notificationPort = self->_notificationPort;
  self->_notificationPort = 0;
}

- (id)propertiesForXPC
{
  v3 = objc_opt_class();
  service = [(_TSF_TSDgPTPPort *)self service];
  v5 = [v3 diagnosticInfoForService:?];

  v6 = [v5 objectForKeyedSubscript:?];
  if (!v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:?];
    goto LABEL_13;
  }

  v7 = v6;
  intValue = [v6 intValue];
  if (intValue > 1)
  {
    if (intValue == 2)
    {
      v9 = MEMORY[0x277CCABB0];
    }

    else
    {
      if (intValue != 3)
      {
        goto LABEL_13;
      }

      v9 = MEMORY[0x277CCABB0];
    }
  }

  else if (intValue)
  {
    if (intValue != 1)
    {
      goto LABEL_13;
    }

    v9 = MEMORY[0x277CCABB0];
  }

  else
  {
    v9 = MEMORY[0x277CCABB0];
  }

  v10 = [v9 numberWithInt:?];

  v7 = v10;
LABEL_13:
  [v5 setObject:? forKeyedSubscript:?];

  return v5;
}

+ (id)diagnosticInfoForService:(id)service
{
  v3 = MEMORY[0x277CBEB38];
  serviceCopy = service;
  dictionary = [v3 dictionary];
  ioClassName = [serviceCopy ioClassName];
  [dictionary setObject:? forKeyedSubscript:?];

  iodProperties = [serviceCopy iodProperties];

  [dictionary addEntriesFromDictionary:?];
  [dictionary removeObjectForKey:?];
  [dictionary removeObjectForKey:?];
  [dictionary removeObjectForKey:?];
  [dictionary removeObjectForKey:?];
  [dictionary removeObjectForKey:?];
  [dictionary removeObjectForKey:?];
  [dictionary removeObjectForKey:?];

  return dictionary;
}

+ (id)diagnosticInfoForClockIdentifier:(unint64_t)identifier andPortNumber:(unsigned __int16)number
{
  v4 = MEMORY[0x277D1AE20];
  v5 = [self iokitMatchingDictionaryForClockIdentifier:? andPortNumber:?];
  v6 = [v4 matchingService:?];

  if (v6)
  {
    if ([v6 conformsToIOClassName:?])
    {
      v7 = _TSF_TSDgPTPEthernetPort;
LABEL_20:
      v8 = [(__objc2_class *)v7 diagnosticInfoForService:?];
      goto LABEL_21;
    }

    if ([v6 conformsToIOClassName:?])
    {
      v7 = _TSF_TSDgPTPUnicastLinkLayerPtPPort;
      goto LABEL_20;
    }

    if ([v6 conformsToIOClassName:?])
    {
      v7 = _TSF_TSDgPTPUnicastLinkLayerEtEPort;
      goto LABEL_20;
    }

    if ([v6 conformsToIOClassName:?])
    {
      v7 = _TSF_TSDgPTPUnicastUDPv4PtPPort;
      goto LABEL_20;
    }

    if ([v6 conformsToIOClassName:?])
    {
      v7 = _TSF_TSDgPTPUnicastUDPv6PtPPort;
      goto LABEL_20;
    }

    if ([v6 conformsToIOClassName:?])
    {
      v7 = _TSF_TSDgPTPUnicastUDPv4EtEPort;
      goto LABEL_20;
    }

    if ([v6 conformsToIOClassName:?])
    {
      v7 = _TSF_TSDgPTPUnicastUDPv6EtEPort;
      goto LABEL_20;
    }

    if ([v6 conformsToIOClassName:?])
    {
      v7 = _TSF_TSDgPTPLocalClockPort;
      goto LABEL_20;
    }

    if ([v6 conformsToIOClassName:?])
    {
      v7 = _TSF_TSDgPTPPort;
      goto LABEL_20;
    }

    v8 = 0;
  }

  else
  {
    [_TSF_TSDgPTPPort diagnosticInfoForClockIdentifier:? andPortNumber:?];
    v8 = v10;
  }

LABEL_21:

  return v8;
}

- (id)getMetrics
{
  v2 = [[_TSF_TSDPortMetrics alloc] initWithPort:?];

  return v2;
}

- (id)getMetricsWithDelta:(id)delta
{
  deltaCopy = delta;
  getMetrics = [(_TSF_TSDgPTPPort *)self getMetrics];
  v6 = [getMetrics getDelta:?];

  return v6;
}

- (void)initWithService:pid:.cold.2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)initWithService:pid:.cold.3()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)initWithService:pid:.cold.4()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)initWithService:pid:.cold.5()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

+ (void)diagnosticInfoForClockIdentifier:(void *)a1 andPortNumber:.cold.1(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }

  *a1 = 0;
}

@end