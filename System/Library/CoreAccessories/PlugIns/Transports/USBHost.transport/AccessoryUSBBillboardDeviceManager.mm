@interface AccessoryUSBBillboardDeviceManager
+ (id)sharedManager;
- (AccessoryUSBBillboardDeviceManager)init;
- (BOOL)isStartedDetectUSBBillboardDeviceWithVID:(unsigned __int16)d PID:(unsigned __int16)iD;
- (BOOL)startDetectUSBBillboardDeviceWithVID:(unsigned __int16)d PID:(unsigned __int16)iD;
- (BOOL)stopDetectUSBBillboardDeviceWithVID:(unsigned __int16)d PID:(unsigned __int16)iD;
- (id)copyDetectedBillboardDevices;
- (void)AppleUSBHostBillboardDeviceServiceArrived:(unsigned int)arrived vidpid:(unsigned int)vidpid;
- (void)AppleUSBHostBillboardDeviceServiceTerminated:(unsigned int)terminated vidpid:(unsigned int)vidpid;
- (void)dealloc;
- (void)stopDetectUSBBillboardDeviceAll;
@end

@implementation AccessoryUSBBillboardDeviceManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__AccessoryUSBBillboardDeviceManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_once != -1)
  {
    dispatch_once(&sharedManager_once, block);
  }

  v2 = sharedManager_sharedInstance;

  return v2;
}

uint64_t __51__AccessoryUSBBillboardDeviceManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (AccessoryUSBBillboardDeviceManager)init
{
  v8.receiver = self;
  v8.super_class = AccessoryUSBBillboardDeviceManager;
  v2 = [(AccessoryUSBBillboardDeviceManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    usbBillboardDeviceListeners = v2->_usbBillboardDeviceListeners;
    v2->_usbBillboardDeviceListeners = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    detectedBillboardDevices = v2->_detectedBillboardDevices;
    v2->_detectedBillboardDevices = v5;
  }

  return v2;
}

- (void)dealloc
{
  [(AccessoryUSBBillboardDeviceManager *)self stopDetectUSBBillboardDeviceAll];
  v3.receiver = self;
  v3.super_class = AccessoryUSBBillboardDeviceManager;
  [(AccessoryUSBBillboardDeviceManager *)&v3 dealloc];
}

- (id)copyDetectedBillboardDevices
{
  v3 = self->_detectedBillboardDevices;
  objc_sync_enter(v3);
  if ([(NSMutableDictionary *)self->_detectedBillboardDevices count])
  {
    v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_detectedBillboardDevices];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v3);

  return v4;
}

- (void)AppleUSBHostBillboardDeviceServiceArrived:(unsigned int)arrived vidpid:(unsigned int)vidpid
{
  v4 = *&vidpid;
  v5 = *&arrived;
  v28 = *MEMORY[0x277D85DE8];
  v7 = [AccessoryUSBBillboardDevice parentServiceVidPid:?];
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v20 = 136315906;
    v21 = "[AccessoryUSBBillboardDeviceManager AppleUSBHostBillboardDeviceServiceArrived:vidpid:]";
    v22 = 1024;
    v23 = v5;
    v24 = 1024;
    *v25 = v7;
    *&v25[4] = 1024;
    *&v25[6] = v4;
    _os_log_impl(&dword_2336F5000, v10, OS_LOG_TYPE_INFO, "%s: service %d (0x%x), vidpid 0x%X", &v20, 0x1Eu);
  }

  if (v7 == v4 && [AccessoryUSBBillboardDeviceManager vidpidRequiresNotSupportedPrompt:v4])
  {
    v11 = [AccessoryUSBBillboardDevice getRegistryEntryIDFromService:v5];
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v12 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v12 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136316162;
      v21 = "[AccessoryUSBBillboardDeviceManager AppleUSBHostBillboardDeviceServiceArrived:vidpid:]";
      v22 = 1024;
      v23 = v5;
      v24 = 1024;
      *v25 = v4;
      *&v25[4] = 2048;
      *&v25[6] = v11;
      v26 = 1024;
      v27 = v4;
      _os_log_impl(&dword_2336F5000, v12, OS_LOG_TYPE_DEFAULT, "%s: service %d (0x%x), registryID 0x%llx, vidpid 0x%X", &v20, 0x28u);
    }

    if (v11)
    {
      v14 = self->_detectedBillboardDevices;
      objc_sync_enter(v14);
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
      v16 = [(NSMutableDictionary *)self->_detectedBillboardDevices objectForKey:v15];
      if (v16)
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v17 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
          }

          v17 = MEMORY[0x277D86220];
          v18 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 136315650;
          v21 = "[AccessoryUSBBillboardDeviceManager AppleUSBHostBillboardDeviceServiceArrived:vidpid:]";
          v22 = 1024;
          v23 = v4;
          v24 = 2048;
          *v25 = v11;
          _os_log_impl(&dword_2336F5000, v17, OS_LOG_TYPE_DEFAULT, "%s: vidpid 0x%X, Already seen device for registryID 0x%llx", &v20, 0x1Cu);
        }
      }

      else
      {
        v16 = [[AccessoryUSBBillboardDevice alloc] initWithService:v5];
        [(NSMutableDictionary *)self->_detectedBillboardDevices setObject:v16 forKey:v15];
      }

      objc_sync_exit(v14);
      if (v16)
      {
        [(AccessoryUSBBillboardDevice *)v16 presentNotSupportNotification];
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v16 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
          }

          v16 = MEMORY[0x277D86220];
          v19 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 136315650;
          v21 = "[AccessoryUSBBillboardDeviceManager AppleUSBHostBillboardDeviceServiceArrived:vidpid:]";
          v22 = 1024;
          v23 = v4;
          v24 = 2048;
          *v25 = v11;
          _os_log_impl(&dword_2336F5000, &v16->super, OS_LOG_TYPE_DEFAULT, "%s: vidpid 0x%X, Failed to create device for registryID 0x%llx", &v20, 0x1Cu);
        }
      }
    }
  }
}

- (void)AppleUSBHostBillboardDeviceServiceTerminated:(unsigned int)terminated vidpid:(unsigned int)vidpid
{
  v4 = *&vidpid;
  v5 = *&terminated;
  v25 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *gLogObjects;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v17 = 136315650;
    v18 = "[AccessoryUSBBillboardDeviceManager AppleUSBHostBillboardDeviceServiceTerminated:vidpid:]";
    v19 = 1024;
    v20 = v5;
    v21 = 1024;
    LODWORD(v22) = v4;
    _os_log_impl(&dword_2336F5000, v9, OS_LOG_TYPE_INFO, "%s: service %d, vidpid 0x%X", &v17, 0x18u);
  }

  if ([AccessoryUSBBillboardDeviceManager vidpidRequiresNotSupportedPrompt:v4])
  {
    v10 = [AccessoryUSBBillboardDevice getRegistryEntryIDFromService:v5];
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v11 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v11 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315906;
      v18 = "[AccessoryUSBBillboardDeviceManager AppleUSBHostBillboardDeviceServiceTerminated:vidpid:]";
      v19 = 1024;
      v20 = v5;
      v21 = 2048;
      v22 = v10;
      v23 = 1024;
      v24 = v4;
      _os_log_impl(&dword_2336F5000, v11, OS_LOG_TYPE_DEFAULT, "%s: service %d, registryID 0x%llx, vidpid 0x%X", &v17, 0x22u);
    }

    if (v10)
    {
      v13 = self->_detectedBillboardDevices;
      objc_sync_enter(v13);
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
      v15 = [(NSMutableDictionary *)self->_detectedBillboardDevices objectForKey:v14];

      objc_sync_exit(v13);
      if (v15)
      {
        [v15 dismissNotSupportNotification];
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v15 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
          }

          v15 = MEMORY[0x277D86220];
          v16 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136315650;
          v18 = "[AccessoryUSBBillboardDeviceManager AppleUSBHostBillboardDeviceServiceTerminated:vidpid:]";
          v19 = 1024;
          v20 = v4;
          v21 = 2048;
          v22 = v10;
          _os_log_impl(&dword_2336F5000, v15, OS_LOG_TYPE_DEFAULT, "%s: vidpid 0x%X, Failed to find device for registryID 0x%llx", &v17, 0x1Cu);
        }
      }
    }
  }
}

- (BOOL)startDetectUSBBillboardDeviceWithVID:(unsigned __int16)d PID:(unsigned __int16)iD
{
  iDCopy = iD;
  dCopy = d;
  v29 = *MEMORY[0x277D85DE8];
  v7 = iD | (d << 16);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v7];
  v9 = self->_usbBillboardDeviceListeners;
  objc_sync_enter(v9);
  v10 = [(NSMutableDictionary *)self->_usbBillboardDeviceListeners objectForKey:v8];
  if (!v10)
  {
    v10 = [[AccessoryUSBBillboardDeviceListener alloc] initWithVID:dCopy PID:iDCopy];
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v11 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v11 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315650;
      v24 = "[AccessoryUSBBillboardDeviceManager startDetectUSBBillboardDeviceWithVID:PID:]";
      v25 = 1024;
      v26 = v7;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_2336F5000, v11, OS_LOG_TYPE_DEFAULT, "%s: vidpid 0x%X, add listener, %@", &v23, 0x1Cu);
    }

    [(NSMutableDictionary *)self->_usbBillboardDeviceListeners setObject:v10 forKey:v8];
    if (!v10)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v16 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
        }

        v16 = MEMORY[0x277D86220];
        v21 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceManager startDetectUSBBillboardDeviceWithVID:PID:];
      }

      v10 = 0;
      goto LABEL_42;
    }
  }

  started = [(AccessoryUSBBillboardDeviceListener *)v10 started];
  if (gLogObjects)
  {
    v14 = gNumLogObjects <= 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (started)
  {
    if (v15)
    {
      v16 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v16 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315650;
      v24 = "[AccessoryUSBBillboardDeviceManager startDetectUSBBillboardDeviceWithVID:PID:]";
      v25 = 1024;
      v26 = v7;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_2336F5000, v16, OS_LOG_TYPE_DEFAULT, "%s: vidpid 0x%X, listener already started, %@", &v23, 0x1Cu);
    }

LABEL_42:

    v20 = 0;
    goto LABEL_43;
  }

  if (v15)
  {
    v17 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v17 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315650;
    v24 = "[AccessoryUSBBillboardDeviceManager startDetectUSBBillboardDeviceWithVID:PID:]";
    v25 = 1024;
    v26 = v7;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_2336F5000, v17, OS_LOG_TYPE_DEFAULT, "%s: vidpid 0x%X, start listener, %@", &v23, 0x1Cu);
  }

  [(AccessoryUSBBillboardDeviceListener *)v10 startDetectUSBBillboardDevice];
  v20 = 1;
LABEL_43:

  objc_sync_exit(v9);
  return v20;
}

- (BOOL)stopDetectUSBBillboardDeviceWithVID:(unsigned __int16)d PID:(unsigned __int16)iD
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = iD | (d << 16);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v5];
  v7 = self->_usbBillboardDeviceListeners;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)self->_usbBillboardDeviceListeners objectForKey:v6];
  v9 = v8;
  if (v8)
  {
    started = [v8 started];
    v11 = started;
    if (gLogObjects)
    {
      v12 = gNumLogObjects <= 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = !v12;
    if (started)
    {
      if (v13)
      {
        v14 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
        }

        v14 = MEMORY[0x277D86220];
        v18 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "[AccessoryUSBBillboardDeviceManager stopDetectUSBBillboardDeviceWithVID:PID:]";
        v25 = 1024;
        v26 = v5;
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&dword_2336F5000, v14, OS_LOG_TYPE_DEFAULT, "%s: vidpid 0x%X, stop listener, %@", &v23, 0x1Cu);
      }

      [v9 stopDetectUSBBillboardDevice];
    }

    else
    {
      if (v13)
      {
        v16 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
        }

        v16 = MEMORY[0x277D86220];
        v19 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "[AccessoryUSBBillboardDeviceManager stopDetectUSBBillboardDeviceWithVID:PID:]";
        v25 = 1024;
        v26 = v5;
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&dword_2336F5000, v16, OS_LOG_TYPE_DEFAULT, "%s: vidpid 0x%X, listener already stopped, %@", &v23, 0x1Cu);
      }
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v20 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v20 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315650;
      v24 = "[AccessoryUSBBillboardDeviceManager stopDetectUSBBillboardDeviceWithVID:PID:]";
      v25 = 1024;
      v26 = v5;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_2336F5000, v20, OS_LOG_TYPE_DEFAULT, "%s: vidpid 0x%X, remove listener, %@", &v23, 0x1Cu);
    }

    [(NSMutableDictionary *)self->_usbBillboardDeviceListeners removeObjectForKey:v6];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v15 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v15 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315394;
      v24 = "[AccessoryUSBBillboardDeviceManager stopDetectUSBBillboardDeviceWithVID:PID:]";
      v25 = 1024;
      v26 = v5;
      _os_log_impl(&dword_2336F5000, v15, OS_LOG_TYPE_DEFAULT, "%s: vidpid 0x%X, Failed to find listener!!!", &v23, 0x12u);
    }

    v11 = 0;
  }

  objc_sync_exit(v7);
  return v11;
}

- (void)stopDetectUSBBillboardDeviceAll
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = self->_usbBillboardDeviceListeners;
  objc_sync_enter(v3);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_usbBillboardDeviceListeners allValues];
  v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v7++) stopDetectUSBBillboardDevice];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_usbBillboardDeviceListeners removeAllObjects];
  objc_sync_exit(v3);
}

- (BOOL)isStartedDetectUSBBillboardDeviceWithVID:(unsigned __int16)d PID:(unsigned __int16)iD
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:iD | (d << 16)];
  v6 = self->_usbBillboardDeviceListeners;
  objc_sync_enter(v6);
  v7 = [(NSMutableDictionary *)self->_usbBillboardDeviceListeners objectForKey:v5];
  v8 = v7;
  if (v7)
  {
    started = [v7 started];
  }

  else
  {
    started = 0;
  }

  objc_sync_exit(v6);
  return started;
}

- (void)startDetectUSBBillboardDeviceWithVID:PID:.cold.5()
{
  v9 = *MEMORY[0x277D85DE8];
  LODWORD(v7) = 136315394;
  *(&v7 + 4) = "[AccessoryUSBBillboardDeviceManager startDetectUSBBillboardDeviceWithVID:PID:]";
  OUTLINED_FUNCTION_2_0();
  *v8 = v0;
  OUTLINED_FUNCTION_1_0(&dword_2336F5000, v1, v2, "%s: vidpid 0x%X, Failed to create listener!!!", v3, v4, v5, v6, v7, DWORD2(v7), *&v8[2], v9);
}

@end