@interface AccessoryTransportPluginUSBHost
+ (__CFDictionary)_createVIDPIDMatchingDictionary;
- (BOOL)clearUSBHostHIDInterfacesForConnectionUUID:(id)d;
- (BOOL)configureUSBHostNCMInterface:(unsigned __int8)interface asCarPlay:(BOOL)play forConnectionUUID:(id)d;
- (BOOL)lockUSBHostInterfacesForConnectionUUID:(id)d;
- (BOOL)sendOutgoingData:(id)data forEndpointWithUUID:(id)d connectionUUID:(id)iD;
- (BOOL)setNeedOutZLP:(BOOL)p maxOutLength:(unsigned int)length forConnectionUUID:(id)d;
- (BOOL)setUSBHostHIDInterface:(unsigned __int8)interface withHIDFunction:(unsigned int)function forConnectionUUID:(id)d;
- (BOOL)startDetectUSBBillboardDeviceWithVID:(unsigned __int16)d PID:(unsigned __int16)iD;
- (BOOL)stopDetectUSBBillboardDeviceWithVID:(unsigned __int16)d PID:(unsigned __int16)iD;
- (void)VIDPIDServiceAdded:(unsigned int)added;
- (void)VIDPIDServiceRemoved:(unsigned int)removed;
- (void)_handleCloseEASessionNotificationForEndpoint:(id)endpoint connection:(id)connection;
- (void)_handleOpenEASessionNotificationForEndpoint:(id)endpoint connection:(id)connection;
- (void)_handleOpenSocketFromAccessoryToAppNotification:(id)notification;
- (void)_handleOpenSocketFromAppToAccessoryNotification:(id)notification;
- (void)configureIOKit;
- (void)configureIOKitVIDPID;
- (void)initPlugin;
- (void)serviceAdded:(unsigned int)added;
- (void)serviceRemoved:(unsigned int)removed;
- (void)startConfiguringIOKit;
- (void)startPlugin;
- (void)stopPlugin;
- (void)tearDownIOKit;
- (void)tearDownIOKitVIDPID;
- (void)unlockUSBHostInterfacesForConnectionUUID:(id)d;
@end

@implementation AccessoryTransportPluginUSBHost

+ (__CFDictionary)_createVIDPIDMatchingDictionary
{
  v7 = 10;
  valuePtr = 7563;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  v3 = *MEMORY[0x277CBECE8];
  v4 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(Mutable, @"idVendor", v4);
  CFRelease(v4);
  v5 = CFNumberCreate(v3, kCFNumberSInt32Type, &v7);
  CFDictionarySetValue(Mutable, @"bInterfaceClass", v5);
  CFRelease(v5);
  return Mutable;
}

- (void)initPlugin
{
  init_logging();
  v3.receiver = self;
  v3.super_class = AccessoryTransportPluginUSBHost;
  [(ACCTransportPlugin *)&v3 initPlugin];
}

- (void)startPlugin
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2336F5000, v5, OS_LOG_TYPE_DEFAULT, "Starting USB Host transport plugin...", buf, 2u);
  }

  v33.receiver = self;
  v33.super_class = AccessoryTransportPluginUSBHost;
  [(ACCTransportPlugin *)&v33 startPlugin];
  +[AccessoryEAInterface initializeSessionClose];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(AccessoryTransportPluginUSBHost *)self setAccessoryConnections:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(AccessoryTransportPluginUSBHost *)self setAccessoryNativeUSBEndpoints:v7];

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(AccessoryTransportPluginUSBHost *)self setActiveEAInterfaces:v8];

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(AccessoryTransportPluginUSBHost *)self setActiveUSBCDCInterfaces:v9];

  v10 = dispatch_queue_create("USBHostTransportPluginConnectionsLock", 0);
  [(AccessoryTransportPluginUSBHost *)self setAccessoryConnectionsLock:v10];

  v11 = dispatch_queue_create("USBHostTransportPluginActiveEAInterfacesLock", 0);
  [(AccessoryTransportPluginUSBHost *)self setActiveEAInterfacesLock:v11];

  v12 = dispatch_queue_create("USBHostTransportPluginNativeUSBEndpointsLock", 0);
  [(AccessoryTransportPluginUSBHost *)self setAccessoryNativeUSBEndpointsLock:v12];

  v13 = dispatch_queue_create("com.apple.accessoryd.usbhost.notificationQueue", 0);
  v14 = usbHostNotificationQ;
  usbHostNotificationQ = v13;

  [(AccessoryTransportPluginUSBHost *)self setAccessoryiAPIntefaceTrafficWaitListCount:0];
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(AccessoryTransportPluginUSBHost *)self setAccessoryiAPIntefaceTrafficWaitList:v15];

  accessoryConnectionsLock = [(AccessoryTransportPluginUSBHost *)self accessoryConnectionsLock];
  v17 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, accessoryConnectionsLock);
  [(AccessoryTransportPluginUSBHost *)self setAccessoryiAPIntefaceTrafficTimer:v17];

  accessoryiAPIntefaceTrafficTimer = [(AccessoryTransportPluginUSBHost *)self accessoryiAPIntefaceTrafficTimer];
  dispatch_source_set_timer(accessoryiAPIntefaceTrafficTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);

  objc_initWeak(buf, self);
  accessoryiAPIntefaceTrafficTimer2 = [(AccessoryTransportPluginUSBHost *)self accessoryiAPIntefaceTrafficTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __46__AccessoryTransportPluginUSBHost_startPlugin__block_invoke;
  handler[3] = &unk_2789ECE38;
  handler[4] = self;
  objc_copyWeak(&v31, buf);
  dispatch_source_set_event_handler(accessoryiAPIntefaceTrafficTimer2, handler);

  accessoryiAPIntefaceTrafficTimer3 = [(AccessoryTransportPluginUSBHost *)self accessoryiAPIntefaceTrafficTimer];
  dispatch_activate(accessoryiAPIntefaceTrafficTimer3);

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleOpenSocketFromAccessoryToAppNotification_ name:*MEMORY[0x277CFD200] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__handleOpenSocketFromAppToAccessoryNotification_ name:*MEMORY[0x277CFD208] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_startConfiguringIOKit name:@"ACCTransportIOAccessory_IOAccessoryManagerArrivedNotification" object:0];

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v24 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v24 = MEMORY[0x277D86220];
    v25 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&dword_2336F5000, v24, OS_LOG_TYPE_DEFAULT, "Registered for USB Host notifications", v29, 2u);
  }

  [(AccessoryTransportPluginUSBHost *)self setIsRunning:1];
  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 postNotificationName:@"ACCTransportIOAccessory_USBHostPluginArrivedNotification" object:0];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __46__AccessoryTransportPluginUSBHost_startPlugin__block_invoke_24;
  v27[3] = &unk_2789ECE60;
  objc_copyWeak(&v28, buf);
  [(ACCTransportPlugin *)self setHandler:v27 forEndpointProperty:*MEMORY[0x277CFD2C8]];
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
}

void __46__AccessoryTransportPluginUSBHost_startPlugin__block_invoke(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2336F5000, v4, OS_LOG_TYPE_DEFAULT, "Wait for iAP timer fired!", buf, 2u);
  }

  if (platform_systemInfo_supportsUSBC())
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v5 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) accessoryiAPIntefaceTrafficWaitList];
      *buf = 136315650;
      v70 = "[AccessoryTransportPluginUSBHost startPlugin]_block_invoke";
      v71 = 1024;
      v72 = 186;
      v73 = 2112;
      v74 = v7;
      _os_log_impl(&dword_2336F5000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d trafficWaitList %@", buf, 0x1Cu);
    }

    v59 = [MEMORY[0x277CBEAA8] date];
    v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = [WeakRetained accessoryiAPIntefaceTrafficWaitList];
    v10 = [v9 allKeys];

    obj = v10;
    v11 = [v10 countByEnumeratingWithState:&v64 objects:v79 count:16];
    v12 = 0x2812FF000uLL;
    if (v11)
    {
      v13 = v11;
      v58 = *v65;
      v14 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v65 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v64 + 1) + 8 * i);
          v17 = objc_loadWeakRetained((a1 + 40));
          v18 = [v17 accessoryiAPIntefaceTrafficWaitList];
          v19 = [v18 objectForKey:v16];

          [v59 timeIntervalSince1970];
          v21 = v20;
          [v19 creationTime];
          v23 = v22;
          v24 = *(v12 + 1880);
          v25 = gNumLogObjects;
          if (v24 && gNumLogObjects >= 1)
          {
            v26 = *v24;
          }

          else
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v70 = v24;
              v71 = 1024;
              v72 = v25;
              _os_log_error_impl(&dword_2336F5000, v14, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v27 = v14;
            v26 = v14;
          }

          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v70 = "[AccessoryTransportPluginUSBHost startPlugin]_block_invoke";
            v71 = 1024;
            v72 = 198;
            v73 = 2112;
            v74 = v16;
            v75 = 2112;
            v76 = v19;
            v77 = 2048;
            v78 = ((v21 - v23) * 1000.0);
            _os_log_impl(&dword_2336F5000, v26, OS_LOG_TYPE_DEFAULT, "%s:%d connectionUUID %@, iapInterface %@, timeSinceCreationMs %llu", buf, 0x30u);
          }

          v28 = acc_userDefaults_copyIntegerForKey(@"WaitForiAPTrafficDelayMS");
          v29 = 1500;
          if (v28)
          {
            v29 = v28;
          }

          if (v29 < ((v21 - v23) * 1000.0))
          {
            v30 = *(v12 + 1880);
            v31 = gNumLogObjects;
            if (v30 && gNumLogObjects >= 1)
            {
              v32 = *v30;
            }

            else
            {
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v70 = v30;
                v71 = 1024;
                v72 = v31;
                _os_log_error_impl(&dword_2336F5000, v14, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v33 = v14;
              v32 = v14;
            }

            v12 = 0x2812FF000;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v70 = ((v21 - v23) * 1000.0);
              _os_log_impl(&dword_2336F5000, v32, OS_LOG_TYPE_DEFAULT, "No iAP traffic for %llu msec!!!", buf, 0xCu);
            }

            [v19 unlockOtherInterfaces];
            [v56 addObject:v16];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v64 objects:v79 count:16];
      }

      while (v13);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v34 = v56;
    v35 = [v34 countByEnumeratingWithState:&v60 objects:v68 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v61;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v61 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v60 + 1) + 8 * j);
          v40 = objc_loadWeakRetained((a1 + 40));
          v41 = [v40 accessoryiAPIntefaceTrafficWaitList];
          [v41 removeObjectForKey:v39];

          v42 = objc_loadWeakRetained((a1 + 40));
          v43 = [v42 accessoryiAPIntefaceTrafficWaitList];
          v44 = [v43 count];
          v45 = objc_loadWeakRetained((a1 + 40));
          [v45 setAccessoryiAPIntefaceTrafficWaitListCount:v44];
        }

        v36 = [v34 countByEnumeratingWithState:&v60 objects:v68 count:16];
      }

      while (v36);
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v46 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v46 = MEMORY[0x277D86220];
      v47 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v48 = objc_loadWeakRetained((a1 + 40));
      v49 = [v48 accessoryiAPIntefaceTrafficWaitList];
      v50 = [v49 count];
      *buf = 134217984;
      v70 = v50;
      _os_log_impl(&dword_2336F5000, v46, OS_LOG_TYPE_DEFAULT, "%lu more pending iAPInterfaceTrafficWait!!!", buf, 0xCu);
    }

    v51 = objc_loadWeakRetained((a1 + 40));
    v52 = [v51 accessoryiAPIntefaceTrafficWaitList];
    v53 = [v52 count];

    if (v53)
    {
      v54 = [*(a1 + 32) accessoryiAPIntefaceTrafficTimer];
      v55 = dispatch_time(0, 50000000);
      dispatch_source_set_timer(v54, v55, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }
}

void __46__AccessoryTransportPluginUSBHost_startPlugin__block_invoke_24(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a6;
  v10 = a2;
  LODWORD(a4) = [a4 BOOLValue];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (a4)
  {
    [WeakRetained _handleOpenEASessionNotificationForEndpoint:v10 connection:v9];
  }

  else
  {
    [WeakRetained _handleCloseEASessionNotificationForEndpoint:v10 connection:v9];
  }
}

- (void)stopPlugin
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CFD200] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277CFD208] object:0];

  [(AccessoryTransportPluginUSBHost *)self tearDownIOKit];
  v8.receiver = self;
  v8.super_class = AccessoryTransportPluginUSBHost;
  [(ACCTransportPlugin *)&v8 stopPlugin];
  [(AccessoryTransportPluginUSBHost *)self setIsRunning:0];
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v5 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2336F5000, v5, OS_LOG_TYPE_DEFAULT, "Stopped USB Host transport plugin!", v7, 2u);
  }
}

- (void)startConfiguringIOKit
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__AccessoryTransportPluginUSBHost_startConfiguringIOKit__block_invoke;
  block[3] = &unk_2789ECE88;
  block[4] = self;
  if (startConfiguringIOKit_onceToken != -1)
  {
    dispatch_once(&startConfiguringIOKit_onceToken, block);
  }
}

void __56__AccessoryTransportPluginUSBHost_startConfiguringIOKit__block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2336F5000, v4, OS_LOG_TYPE_DEFAULT, "Start configuring IOKit", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__AccessoryTransportPluginUSBHost_startConfiguringIOKit__block_invoke_28;
  block[3] = &unk_2789ECE88;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __56__AccessoryTransportPluginUSBHost_startConfiguringIOKit__block_invoke_28(uint64_t a1)
{
  [*(a1 + 32) configureIOKit];
  v2 = *(a1 + 32);

  return [v2 configureIOKitVIDPID];
}

- (void)configureIOKit
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)tearDownIOKit
{
  iokitNotifyPort = self->_iokitNotifyPort;
  if (iokitNotifyPort)
  {
    IONotificationPortDestroy(iokitNotifyPort);
    self->_iokitNotifyPort = 0;
  }

  IOObjectRelease(self->_iokitAddedIterator);
  iokitRemovedIterator = self->_iokitRemovedIterator;

  IOObjectRelease(iokitRemovedIterator);
}

- (void)serviceAdded:(unsigned int)added
{
  v187 = *MEMORY[0x277D85DE8];
  v3 = 0x2812FF000uLL;
  v4 = 0x2812FF000uLL;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AccessoryTransportPluginUSBHost serviceAdded:];
  }

  v8 = IOIteratorNext(added);
  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0x277D86220];
    v11 = *MEMORY[0x277CBECE8];
    v139 = *MEMORY[0x277CFD288];
    v138 = *MEMORY[0x277CFD280];
    v137 = *MEMORY[0x277CFD2B8];
    v140 = *MEMORY[0x277CFD260];
    v141 = *MEMORY[0x277CFD278];
    allocator = *MEMORY[0x277CBECE8];
    do
    {
      v12 = *(v3 + 1880);
      v13 = *(v4 + 1864);
      if (v12)
      {
        v14 = v13 < 1;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *v180 = 134218240;
          *&v180[4] = v12;
          *&v180[12] = 1024;
          *&v180[14] = v13;
          _os_log_error_impl(&dword_2336F5000, v10, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v180, 0x12u);
        }

        v15 = v10;
        v16 = v10;
      }

      else
      {
        v16 = *v12;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [(AccessoryTransportPluginUSBHost *)&v169 serviceAdded:v170];
      }

      v17 = *(v3 + 1880);
      v18 = *(v4 + 1864);
      if (v17 && v18 >= 1)
      {
        v19 = *v17;
      }

      else
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *v180 = 134218240;
          *&v180[4] = v17;
          *&v180[12] = 1024;
          *&v180[14] = v18;
          _os_log_error_impl(&dword_2336F5000, v10, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v180, 0x12u);
        }

        v20 = v10;
        v19 = v10;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *v180 = 67109120;
        *&v180[4] = v9;
        _os_log_debug_impl(&dword_2336F5000, v19, OS_LOG_TYPE_DEBUG, "io_service_t: %u", v180, 8u);
      }

      v185 = 0u;
      v186 = 0u;
      v183 = 0u;
      v184 = 0u;
      v181 = 0u;
      v182 = 0u;
      memset(v180, 0, sizeof(v180));
      properties = 0;
      entryID = 0;
      v21 = MEMORY[0x2383AACD0](v9, v180);
      v22 = *(v3 + 1880);
      v23 = *(v4 + 1864);
      if (v22)
      {
        v24 = v23 <= 0;
      }

      else
      {
        v24 = 1;
      }

      v25 = !v24;
      if (v21)
      {
        v26 = v21;
        if (v25)
        {
          v27 = *v22;
        }

        else
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v22;
            *&buf[12] = 1024;
            *&buf[14] = v23;
            _os_log_error_impl(&dword_2336F5000, v10, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v28 = v10;
          v27 = v10;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v26;
          _os_log_error_impl(&dword_2336F5000, v27, OS_LOG_TYPE_ERROR, "IORegistryEntryGetName failed: %08x", buf, 8u);
        }
      }

      else
      {
        if (v25)
        {
          v27 = *v22;
        }

        else
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v22;
            *&buf[12] = 1024;
            *&buf[14] = v23;
            _os_log_error_impl(&dword_2336F5000, v10, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v29 = v10;
          v27 = v10;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          *&buf[4] = v180;
          _os_log_debug_impl(&dword_2336F5000, v27, OS_LOG_TYPE_DEBUG, "Registry entry name: %s", buf, 0xCu);
        }
      }

      RegistryEntryID = IORegistryEntryGetRegistryEntryID(v9, &entryID);
      v31 = *(v3 + 1880);
      v32 = *(v4 + 1864);
      if (v31)
      {
        v33 = v32 <= 0;
      }

      else
      {
        v33 = 1;
      }

      v34 = !v33;
      if (RegistryEntryID)
      {
        v35 = RegistryEntryID;
        if (v34)
        {
          v36 = *v31;
        }

        else
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v31;
            *&buf[12] = 1024;
            *&buf[14] = v32;
            _os_log_error_impl(&dword_2336F5000, v10, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v37 = v10;
          v36 = v10;
        }

        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v35;
          _os_log_error_impl(&dword_2336F5000, v36, OS_LOG_TYPE_ERROR, "IORegistryEntryGetRegistryEntryID failed: %08x", buf, 8u);
        }
      }

      else
      {
        if (v34)
        {
          v36 = *v31;
        }

        else
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v31;
            *&buf[12] = 1024;
            *&buf[14] = v32;
            _os_log_error_impl(&dword_2336F5000, v10, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v38 = v10;
          v36 = v10;
        }

        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          *&buf[4] = entryID;
          *&buf[12] = 2048;
          *&buf[14] = entryID;
          _os_log_debug_impl(&dword_2336F5000, v36, OS_LOG_TYPE_DEBUG, "Registry entry ID: %llu 0x%llX", buf, 0x16u);
        }
      }

      v39 = IORegistryEntryCreateCFProperties(v9, &properties, v11, 0);
      v40 = v39;
      v41 = *(v3 + 1880);
      v42 = *(v4 + 1864);
      if (v41)
      {
        v43 = v42 <= 0;
      }

      else
      {
        v43 = 1;
      }

      v44 = !v43;
      if (v39 || !properties)
      {
        if (v44)
        {
          v45 = *v41;
        }

        else
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v41;
            *&buf[12] = 1024;
            *&buf[14] = v42;
            _os_log_error_impl(&dword_2336F5000, v10, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v46 = v10;
          v45 = v10;
        }

        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v40;
          _os_log_error_impl(&dword_2336F5000, v45, OS_LOG_TYPE_ERROR, "IORegistryEntryCreateCFProperties failed: %08x", buf, 8u);
        }
      }

      else
      {
        if (v44)
        {
          v45 = *v41;
        }

        else
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v41;
            *&buf[12] = 1024;
            *&buf[14] = v42;
            _os_log_error_impl(&dword_2336F5000, v10, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v47 = v10;
          v45 = v10;
        }

        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = properties;
          _os_log_debug_impl(&dword_2336F5000, v45, OS_LOG_TYPE_DEBUG, "serviceProperties: %@", buf, 0xCu);
        }
      }

      CFProperty = IORegistryEntryCreateCFProperty(v9, @"idVendor", v11, 0);
      v49 = IORegistryEntryCreateCFProperty(v9, @"idProduct", v11, 0);
      valuePtr = 0;
      if (CFProperty)
      {
        CFNumberGetValue(CFProperty, kCFNumberSInt16Type, &valuePtr + 2);
      }

      if (v49)
      {
        CFNumberGetValue(v49, kCFNumberSInt16Type, &valuePtr);
      }

      v50 = *(v3 + 1880);
      v51 = *(v4 + 1864);
      if (v50 && v51 >= 1)
      {
        v10 = *v50;
      }

      else
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v50;
          *&buf[12] = 1024;
          *&buf[14] = v51;
          _os_log_error_impl(&dword_2336F5000, v10, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v52 = v10;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136317442;
        *&buf[4] = "[AccessoryTransportPluginUSBHost serviceAdded:]";
        *&buf[12] = 1024;
        *&buf[14] = 387;
        *&buf[18] = 1024;
        *&buf[20] = v9;
        *&buf[24] = 2080;
        *&buf[26] = v180;
        *&buf[34] = 2048;
        *&buf[36] = entryID;
        *&buf[44] = 2112;
        *&buf[46] = CFProperty;
        *&buf[54] = 2112;
        *&buf[56] = v49;
        *&buf[64] = 1024;
        *&buf[66] = HIWORD(valuePtr);
        *&buf[70] = 1024;
        *&buf[72] = valuePtr;
        *&buf[76] = 2112;
        *&buf[78] = properties;
        _os_log_impl(&dword_2336F5000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d service %d, name '%s', regEntryID %llu, vid / pid = %@ / %@ (0x%x / 0x%x), serviceProperties: %@", buf, 0x56u);
      }

      if (properties)
      {
        CFRelease(properties);
        properties = 0;
      }

      if (CFProperty)
      {
        CFRelease(CFProperty);
      }

      if (v49)
      {
        CFRelease(v49);
      }

      v53 = HIWORD(valuePtr);
      v54 = valuePtr;
      if (MGGetBoolAnswer())
      {
        v55 = 1;
      }

      else
      {
        v55 = 6;
      }

      v56 = v54 & 0xFFFE | (v53 << 16);
      v148 = v9;
      if (v56 == 95164176)
      {
        v145 = v55;
        v57 = IORegistryEntrySearchCFProperty(v9, "IOService", @"AID Info", v11, 3u);
        v58 = v57;
        cf = v57;
        if (v57)
        {
          Value = CFDictionaryGetValue(v57, @"Digital ID");
          CFDictionaryGetValue(v58, @"Accessory Name");
          CFDictionaryGetValue(v58, @"Accessory Manufacturer");
          CFDictionaryGetValue(v58, @"Accessory Model");
          v58 = CFDictionaryGetValue(v58, @"MikeyBus Info");
        }

        else
        {
          Value = 0;
        }

        v62 = *(v3 + 1880);
        v63 = *(v4 + 1864);
        if (v62 && v63 >= 1)
        {
          v64 = *v62;
        }

        else
        {
          v64 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v62;
            *&buf[12] = 1024;
            *&buf[14] = v63;
            _os_log_error_impl(&dword_2336F5000, v64, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v65 = v64;
        }

        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = "[AccessoryTransportPluginUSBHost serviceAdded:]";
          *&buf[12] = 1024;
          *&buf[14] = 437;
          *&buf[18] = 1024;
          *&buf[20] = v9;
          *&buf[24] = 2080;
          *&buf[26] = v180;
          *&buf[34] = 2112;
          *&buf[36] = Value;
          _os_log_impl(&dword_2336F5000, v64, OS_LOG_TYPE_DEFAULT, "%s:%d service %d, name '%s', digitalID %@", buf, 0x2Cu);
        }

        v66 = *(v3 + 1880);
        v67 = *(v4 + 1864);
        if (v66 && v67 >= 1)
        {
          v68 = *v66;
        }

        else
        {
          v68 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v66;
            *&buf[12] = 1024;
            *&buf[14] = v67;
            _os_log_error_impl(&dword_2336F5000, v68, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v69 = v68;
        }

        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = "[AccessoryTransportPluginUSBHost serviceAdded:]";
          *&buf[12] = 1024;
          *&buf[14] = 438;
          *&buf[18] = 1024;
          *&buf[20] = v9;
          *&buf[24] = 2112;
          *&buf[26] = cf;
          _os_log_impl(&dword_2336F5000, v68, OS_LOG_TYPE_DEFAULT, "%s:%d service %d, aidInfo %@", buf, 0x22u);
        }

        v70 = *(v3 + 1880);
        v71 = *(v4 + 1864);
        if (v70 && v71 >= 1)
        {
          v72 = *v70;
        }

        else
        {
          v72 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v70;
            *&buf[12] = 1024;
            *&buf[14] = v71;
            _os_log_error_impl(&dword_2336F5000, v72, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v73 = v72;
        }

        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = "[AccessoryTransportPluginUSBHost serviceAdded:]";
          *&buf[12] = 1024;
          *&buf[14] = 439;
          *&buf[18] = 1024;
          *&buf[20] = v9;
          *&buf[24] = 2112;
          *&buf[26] = v58;
          _os_log_impl(&dword_2336F5000, v72, OS_LOG_TYPE_DEFAULT, "%s:%d service %d, mikeyBusInfo %@", buf, 0x22u);
        }

        if (Value && (v74 = CFGetTypeID(Value), v74 == CFDataGetTypeID()) && CFDataGetLength(Value) == 6)
        {
          v165 = 0;
          *buffer = 0;
          v188.location = 0;
          v188.length = 6;
          CFDataGetBytes(Value, v188, buffer);
          v75 = *(v3 + 1880);
          v76 = *(v4 + 1864);
          if (v75 && v76 >= 1)
          {
            v77 = *v75;
            v78 = MEMORY[0x277D86220];
          }

          else
          {
            v78 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&buf[4] = v75;
              *&buf[12] = 1024;
              *&buf[14] = v76;
              _os_log_error_impl(&dword_2336F5000, v78, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v125 = v78;
            v77 = v78;
          }

          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136317186;
            *&buf[4] = "[AccessoryTransportPluginUSBHost serviceAdded:]";
            *&buf[12] = 1024;
            *&buf[14] = 452;
            *&buf[18] = 1024;
            *&buf[20] = v9;
            *&buf[24] = 2080;
            *&buf[26] = v180;
            *&buf[34] = 1024;
            *&buf[36] = HIWORD(valuePtr);
            *&buf[40] = 1024;
            *&buf[42] = valuePtr;
            *&buf[46] = 1024;
            *&buf[48] = (buffer[0] >> 2) & 1;
            *&buf[52] = 1024;
            *&buf[54] = buffer[0] & 3;
            *&buf[58] = 1024;
            *&buf[60] = buffer[2] & 1;
            _os_log_debug_impl(&dword_2336F5000, v77, OS_LOG_TYPE_DEBUG, "%s:%d service %d, name '%s', vid / pid = 0x%x / 0x%x, _mb %x, _uart %x, _bd %x", buf, 0x40u);
          }

          v126 = buffer[0];
          v127 = buffer[2];
          v128 = *(v3 + 1880);
          v129 = *(v4 + 1864);
          if (v128 && v129 >= 1)
          {
            v78 = *v128;
          }

          else
          {
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&buf[4] = v128;
              *&buf[12] = 1024;
              *&buf[14] = v129;
              _os_log_error_impl(&dword_2336F5000, v78, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v130 = v78;
          }

          v131 = v127 & 1;
          if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
          {
            *buf = 136317186;
            *&buf[4] = "[AccessoryTransportPluginUSBHost serviceAdded:]";
            *&buf[12] = 1024;
            *&buf[14] = 460;
            *&buf[18] = 1024;
            *&buf[20] = v148;
            *&buf[24] = 2080;
            *&buf[26] = v180;
            *&buf[34] = 1024;
            *&buf[36] = HIWORD(valuePtr);
            *&buf[40] = 1024;
            *&buf[42] = valuePtr;
            *&buf[46] = 1024;
            *&buf[48] = (v126 >> 2) & 1;
            *&buf[52] = 1024;
            *&buf[54] = (v126 & 3) != 0;
            *&buf[58] = 1024;
            *&buf[60] = v131;
            _os_log_impl(&dword_2336F5000, v78, OS_LOG_TYPE_INFO, "%s:%d service %d, name '%s', vid / pid = 0x%x / 0x%x, _mb %d, _uart %d, _bd %d", buf, 0x40u);
          }

          if ((v126 & 3) != 0)
          {
            v132 = 6;
          }

          else
          {
            v132 = 1;
          }

          if ((v126 & 7) != 0)
          {
            v61 = v132;
          }

          else
          {
            v61 = 7;
          }

          if (v126 & 7 | v131)
          {
            v133 = *(v3 + 1880);
            v134 = *(v4 + 1864);
            LODWORD(v9) = v148;
            if (v133 && v134 >= 1)
            {
              v135 = *v133;
            }

            else
            {
              v135 = MEMORY[0x277D86220];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *&buf[4] = v133;
                *&buf[12] = 1024;
                *&buf[14] = v134;
                _os_log_error_impl(&dword_2336F5000, v135, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v136 = v135;
            }

            if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316930;
              *&buf[4] = "[AccessoryTransportPluginUSBHost serviceAdded:]";
              *&buf[12] = 1024;
              *&buf[14] = 483;
              *&buf[18] = 1024;
              *&buf[20] = v148;
              *&buf[24] = 2080;
              *&buf[26] = v180;
              *&buf[34] = 1024;
              *&buf[36] = HIWORD(valuePtr);
              *&buf[40] = 1024;
              *&buf[42] = valuePtr;
              *&buf[46] = 1024;
              *&buf[48] = 8;
              *&buf[52] = 1024;
              *&buf[54] = v61;
              _os_log_impl(&dword_2336F5000, v135, OS_LOG_TYPE_DEFAULT, "%s:%d service %d, name '%s', vid / pid = 0x%x / 0x%x, override transportType %{coreacc:ACCEndpoint_TransportType_t}d -> %{coreacc:ACCEndpoint_TransportType_t}d", buf, 0x3Au);
            }

            valuePtr = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x, 0x%x", HIWORD(valuePtr), valuePtr];
          }

          else
          {
            valuePtr = 0;
            v61 = 8;
            LODWORD(v9) = v148;
          }
        }

        else
        {
          valuePtr = 0;
          v61 = 8;
          if (HIWORD(valuePtr) == 1452 && valuePtr == 5905)
          {
            v79 = *(v3 + 1880);
            v80 = *(v4 + 1864);
            if (v79 && v80 >= 1)
            {
              v81 = *v79;
            }

            else
            {
              v81 = MEMORY[0x277D86220];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *&buf[4] = v79;
                *&buf[12] = 1024;
                *&buf[14] = v80;
                _os_log_error_impl(&dword_2336F5000, v81, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v82 = v81;
            }

            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316930;
              *&buf[4] = "[AccessoryTransportPluginUSBHost serviceAdded:]";
              *&buf[12] = 1024;
              *&buf[14] = 496;
              *&buf[18] = 1024;
              *&buf[20] = v9;
              *&buf[24] = 2080;
              *&buf[26] = v180;
              *&buf[34] = 1024;
              *&buf[36] = HIWORD(valuePtr);
              *&buf[40] = 1024;
              *&buf[42] = valuePtr;
              *&buf[46] = 1024;
              *&buf[48] = 8;
              *&buf[52] = 1024;
              *&buf[54] = 7;
              _os_log_impl(&dword_2336F5000, v81, OS_LOG_TYPE_DEFAULT, "%s:%d service %d, name '%s', vid / pid = 0x%x / 0x%x, override transportType %{coreacc:ACCEndpoint_TransportType_t}d -> %{coreacc:ACCEndpoint_TransportType_t}d", buf, 0x3Au);
            }

            valuePtr = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x, 0x%x", HIWORD(valuePtr), valuePtr];
            v61 = 7;
          }
        }

        v55 = v145;
      }

      else
      {
        cf = 0;
        valuePtr = 0;
        v61 = 8;
      }

      v83 = [(ACCTransportPlugin *)self createConnectionWithType:v55 andIdentifier:0];
      if (v56 == 95164176)
      {
        v142 = v61;
        v84 = valuePtr;
        v85 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIWORD(valuePtr)];
        v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:valuePtr];
        v178[0] = v139;
        v178[1] = v138;
        v179[0] = v85;
        v179[1] = v86;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v179 forKeys:v178 count:2];
        v87 = *(v3 + 1880);
        v88 = *(v4 + 1864);
        if (v87 && v88 >= 1)
        {
          v89 = *v87;
        }

        else
        {
          v90 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v87;
            *&buf[12] = 1024;
            *&buf[14] = v88;
            _os_log_error_impl(&dword_2336F5000, v90, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v91 = v90;
          v89 = v90;
        }

        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316674;
          *&buf[4] = "[AccessoryTransportPluginUSBHost serviceAdded:]";
          *&buf[12] = 1024;
          *&buf[14] = 530;
          *&buf[18] = 1024;
          *&buf[20] = v148;
          *&buf[24] = 2080;
          *&buf[26] = v180;
          *&buf[34] = 1024;
          *&buf[36] = HIWORD(valuePtr);
          *&buf[40] = 1024;
          *&buf[42] = valuePtr;
          *&buf[46] = 2112;
          *&buf[48] = v9;
          _os_log_impl(&dword_2336F5000, v89, OS_LOG_TYPE_DEFAULT, "%s:%d service %d, name '%s', vid / pid = 0x%x / 0x%x, override adapterVID/PID, newProperties = %@", buf, 0x38u);
        }

        v92 = [v9 copy];
        [(ACCTransportPlugin *)self setProperties:v92 forConnectionWithUUID:v83];

        LODWORD(v9) = v148;
        valuePtr = v84;
        v61 = v142;
      }

      ParentOfClass = usbUtil_findParentOfClass(v9, "IOUSBHostDevice", "IOService");
      v146 = valuePtr;
      if (ParentOfClass)
      {
        v94 = ParentOfClass;
        v95 = usbUtil_findParentOfClass(ParentOfClass, "IOAccessoryManager", "IOPort");
        if (v95)
        {
          v96 = v95;
          v97 = IORegistryEntryCreateCFProperty(v95, @"Description", allocator, 0);
          if (v97 || (v176 = 0u, v177 = 0u, memset(buf, 0, sizeof(buf)), !MEMORY[0x2383AACD0](v96, buf)) && (v97 = CFStringCreateWithCString(allocator, buf, 0x8000100u)) != 0)
          {
            v98 = v97;
            v173 = v137;
            v174 = v97;
            v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v174 forKeys:&v173 count:1];

            v99 = *(v3 + 1880);
            v100 = *(v4 + 1864);
            if (v99 && v100 >= 1)
            {
              v101 = *v99;
            }

            else
            {
              v102 = MEMORY[0x277D86220];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *&buf[4] = v99;
                *&buf[12] = 1024;
                *&buf[14] = v100;
                _os_log_error_impl(&dword_2336F5000, v102, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v103 = v102;
              v101 = v102;
            }

            if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316674;
              *&buf[4] = "[AccessoryTransportPluginUSBHost serviceAdded:]";
              *&buf[12] = 1024;
              *&buf[14] = 553;
              *&buf[18] = 1024;
              *&buf[20] = v148;
              *&buf[24] = 2080;
              *&buf[26] = v180;
              *&buf[34] = 1024;
              *&buf[36] = HIWORD(valuePtr);
              *&buf[40] = 1024;
              *&buf[42] = valuePtr;
              *&buf[46] = 2112;
              *&buf[48] = v9;
              _os_log_impl(&dword_2336F5000, v101, OS_LOG_TYPE_DEFAULT, "%s:%d service %d, name '%s', vid / pid = 0x%x / 0x%x, override managerParent, newProperties = %@", buf, 0x38u);
            }

            v104 = [v9 copy];
            [(ACCTransportPlugin *)self setProperties:v104 forConnectionWithUUID:v83];

            LODWORD(v9) = v148;
          }

          IOObjectRelease(v94);
          valuePtr = v146;
        }

        else
        {
          LODWORD(v96) = v94;
        }

        IOObjectRelease(v96);
      }

      v105 = [(ACCTransportPlugin *)self createEndpointWithTransportType:v61 andProtocol:0 andIdentifier:valuePtr forConnectionWithUUID:v83 publishConnection:0];
      if (v105)
      {
        v106 = v3;
        v171[0] = v141;
        v107 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIWORD(valuePtr)];
        v171[1] = v140;
        v172[0] = v107;
        v108 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:valuePtr];
        v172[1] = v108;
        v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v172 forKeys:v171 count:2];

        [(ACCTransportPlugin *)self setAccessoryInfo:v109 forEndpointWithUUID:v105];
        if (cf)
        {
          v110 = objc_alloc(MEMORY[0x277CBEAC0]);
          v111 = [MEMORY[0x277CCACA8] stringWithCString:"AID Info" encoding:4];
          v112 = [v110 initWithObjectsAndKeys:{cf, v111, 0}];

          [(ACCTransportPlugin *)self setProperties:v112 forConnectionWithUUID:v83];
        }

        [(ACCTransportPlugin *)self publishConnectionWithUUID:v83];
        v113 = [AccessoryIAPInterface alloc];
        v114 = HIWORD(valuePtr);
        v115 = valuePtr;
        v158[0] = MEMORY[0x277D85DD0];
        v158[1] = 3221225472;
        v158[2] = __48__AccessoryTransportPluginUSBHost_serviceAdded___block_invoke;
        v158[3] = &unk_2789ECED8;
        v116 = v105;
        v159 = v116;
        selfCopy = self;
        v117 = v83;
        v161 = v117;
        v162 = HIWORD(valuePtr);
        v163 = valuePtr;
        v118 = [(AccessoryIAPInterface *)v113 initWithInterface:v148 vid:v114 pid:v115 aidInfo:cf andDataInHandler:v158];
        if (v118)
        {
          accessoryConnectionsLock = [(AccessoryTransportPluginUSBHost *)self accessoryConnectionsLock];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __48__AccessoryTransportPluginUSBHost_serviceAdded___block_invoke_84;
          block[3] = &unk_2789ECEB0;
          block[4] = self;
          v153 = v118;
          v154 = v117;
          v156 = HIWORD(valuePtr);
          v157 = valuePtr;
          v155 = v116;
          dispatch_sync(accessoryConnectionsLock, block);

          v4 = 0x2812FF000;
        }

        else
        {
          v120 = *(v3 + 1880);
          v121 = gNumLogObjects;
          if (v120 && gNumLogObjects >= 1)
          {
            v122 = *v120;
          }

          else
          {
            v123 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&buf[4] = v120;
              *&buf[12] = 1024;
              *&buf[14] = v121;
              _os_log_error_impl(&dword_2336F5000, v123, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v124 = v123;
            v122 = v123;
            v3 = v106;
          }

          v4 = 0x2812FF000;
          if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
          {
            [(AccessoryTransportPluginUSBHost *)&v150 serviceAdded:v151];
          }

          [(ACCTransportPlugin *)self destroyConnectionWithUUID:v117];
        }

        LODWORD(v9) = v148;
        valuePtr = v146;
      }

      IOObjectRelease(v9);
      if (cf)
      {
        CFRelease(cf);
      }

      v9 = IOIteratorNext(added);
      v10 = MEMORY[0x277D86220];
      v11 = allocator;
    }

    while (v9);
  }
}

uint64_t __48__AccessoryTransportPluginUSBHost_serviceAdded___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (gLogSignpostObjects)
  {
    v7 = gNumLogSignpostObjects < 4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __48__AccessoryTransportPluginUSBHost_serviceAdded___block_invoke_cold_1();
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *(gLogSignpostObjects + 24);
  }

  v10 = [*(a1 + 32) hash];
  if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      v12 = *(a1 + 32);
      *buf = 138412546;
      v36 = v12;
      v37 = 2048;
      v38 = [v6 length];
      _os_signpost_emit_with_name_impl(&dword_2336F5000, v9, OS_SIGNPOST_EVENT, v11, "Endpoint RECV", "Received incoming data! %@, %lu bytes", buf, 0x16u);
    }
  }

  if (platform_systemInfo_supportsUSBC() && [*(a1 + 40) accessoryiAPIntefaceTrafficWaitListCount])
  {
    v13 = [*(a1 + 40) accessoryConnectionsLock];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__AccessoryTransportPluginUSBHost_serviceAdded___block_invoke_80;
    block[3] = &unk_2789ECEB0;
    block[4] = *(a1 + 40);
    v31 = v5;
    v32 = *(a1 + 48);
    v33 = *(a1 + 32);
    v34 = *(a1 + 56);
    dispatch_sync(v13, block);
  }

  v14 = [*(a1 + 32) hash];
  v15 = [v6 hash];
  v16 = v15 ^ v14;
  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v17 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __48__AccessoryTransportPluginUSBHost_serviceAdded___block_invoke_cold_1();
    }

    v17 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  v19 = v14 == v15 || v16 == -1;
  v20 = !v19;
  if (!v19 && os_signpost_enabled(v17))
  {
    v21 = *(a1 + 32);
    v22 = [v6 length];
    *buf = 138412546;
    v36 = v21;
    v37 = 2048;
    v38 = v22;
    _os_signpost_emit_with_name_impl(&dword_2336F5000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v16, "Endpoint RECV", "Received incoming data! %@, %lu bytes", buf, 0x16u);
  }

  v23 = [*(a1 + 40) processIncomingData:v6 forEndpointWithUUID:*(a1 + 32)];
  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v24 = *(gLogSignpostObjects + 24);
    if (!v20)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __48__AccessoryTransportPluginUSBHost_serviceAdded___block_invoke_cold_1();
  }

  v24 = MEMORY[0x277D86220];
  v25 = MEMORY[0x277D86220];
  if (v20)
  {
LABEL_37:
    if (os_signpost_enabled(v24))
    {
      if (v23)
      {
        v26 = "SUCCESS";
      }

      else
      {
        v26 = "ERROR";
      }

      v27 = *(a1 + 32);
      v28 = [v6 length];
      *buf = 136315650;
      v36 = v26;
      v37 = 2112;
      v38 = v27;
      v39 = 2048;
      v40 = v28;
      _os_signpost_emit_with_name_impl(&dword_2336F5000, v24, OS_SIGNPOST_INTERVAL_END, v16, "Endpoint RECV", "%s handling Received incoming data! %@, %lu bytes", buf, 0x20u);
    }
  }

LABEL_42:

  return v23;
}

void __48__AccessoryTransportPluginUSBHost_serviceAdded___block_invoke_80(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessoryiAPIntefaceTrafficWaitList];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    [v4 timeIntervalSince1970];
    v6 = v5;
    [*(a1 + 40) creationTime];
    v8 = v7;

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v9 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v13 = *(a1 + 64);
      v14 = *(a1 + 66);
      v15 = [*(a1 + 32) accessoryiAPIntefaceTrafficWaitList];
      v21 = 136316930;
      v22 = "[AccessoryTransportPluginUSBHost serviceAdded:]_block_invoke";
      v23 = 1024;
      v24 = 640;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v12;
      v29 = 2048;
      v30 = ((v6 - v8) * 1000.0);
      v31 = 1024;
      v32 = v13;
      v33 = 1024;
      v34 = v14;
      v35 = 2112;
      v36 = v15;
      _os_log_impl(&dword_2336F5000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d received data for %@ - %@, timeSinceCreation %llu, vid / pid = 0x%x / 0x%x, trafficWaitList %@", &v21, 0x46u);
    }

    v16 = [*(a1 + 32) accessoryiAPIntefaceTrafficWaitList];
    [v16 removeObjectForKey:*(a1 + 48)];

    v17 = [*(a1 + 32) accessoryiAPIntefaceTrafficWaitList];
    [*(a1 + 32) setAccessoryiAPIntefaceTrafficWaitListCount:{objc_msgSend(v17, "count")}];
  }

  v18 = [*(a1 + 32) accessoryiAPIntefaceTrafficWaitList];
  v19 = [v18 count];

  if (!v19)
  {
    v20 = [*(a1 + 32) accessoryiAPIntefaceTrafficTimer];
    dispatch_source_set_timer(v20, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

void __48__AccessoryTransportPluginUSBHost_serviceAdded___block_invoke_84(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessoryConnections];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];

  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) registryEntryID];
    v7 = *(a1 + 64);
    v8 = *(a1 + 66);
    v9 = *(a1 + 40);
    v21 = 136316418;
    v22 = "[AccessoryTransportPluginUSBHost serviceAdded:]_block_invoke";
    v23 = 1024;
    v24 = 682;
    v25 = 2048;
    v26 = v6;
    v27 = 1024;
    *v28 = v7;
    *&v28[4] = 1024;
    *&v28[6] = v8;
    *v29 = 2112;
    *&v29[2] = v9;
    _os_log_impl(&dword_2336F5000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d registryEntryID %llu, vid / pid = 0x%x / 0x%x, iapInterface %@", &v21, 0x32u);
  }

  if (platform_systemInfo_supportsUSBC())
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v10 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      v14 = *(a1 + 64);
      v15 = *(a1 + 66);
      v16 = [*(a1 + 32) accessoryiAPIntefaceTrafficWaitList];
      v21 = 136316674;
      v22 = "[AccessoryTransportPluginUSBHost serviceAdded:]_block_invoke";
      v23 = 1024;
      v24 = 687;
      v25 = 2112;
      v26 = v12;
      v27 = 2112;
      *v28 = v13;
      *&v28[8] = 1024;
      *v29 = v14;
      *&v29[4] = 1024;
      *&v29[6] = v15;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_2336F5000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d add to trafficWaitList for %@ - %@, vid / pid = 0x%x / 0x%x, trafficWaitList %@", &v21, 0x3Cu);
    }

    v17 = [*(a1 + 32) accessoryiAPIntefaceTrafficWaitList];
    [v17 setObject:*(a1 + 40) forKey:*(a1 + 48)];

    v18 = [*(a1 + 32) accessoryiAPIntefaceTrafficWaitList];
    [*(a1 + 32) setAccessoryiAPIntefaceTrafficWaitListCount:{objc_msgSend(v18, "count")}];

    v19 = [*(a1 + 32) accessoryiAPIntefaceTrafficTimer];
    v20 = dispatch_time(0, 50000000);
    dispatch_source_set_timer(v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)serviceRemoved:(unsigned int)removed
{
  v38 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AccessoryTransportPluginUSBHost serviceRemoved:];
  }

  for (i = IOIteratorNext(removed); i; i = IOIteratorNext(removed))
  {
    memset(v37, 0, sizeof(v37));
    v31 = 0;
    entryID = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy_;
    v30 = __Block_byref_object_dispose_;
    if (!MEMORY[0x2383AACD0](i, v37))
    {
      v9 = gLogObjects;
      v10 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v11 = *gLogObjects;
      }

      else
      {
        v12 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v34 = v9;
          v35 = 1024;
          LODWORD(v36) = v10;
          _os_log_error_impl(&dword_2336F5000, v12, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v13 = v12;
        v11 = v12;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v34 = v37;
        _os_log_debug_impl(&dword_2336F5000, v11, OS_LOG_TYPE_DEBUG, "Registry entry name: %s", buf, 0xCu);
      }
    }

    if (!IORegistryEntryGetRegistryEntryID(i, &entryID))
    {
      v14 = gLogObjects;
      v15 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v16 = *gLogObjects;
      }

      else
      {
        v17 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v34 = v14;
          v35 = 1024;
          LODWORD(v36) = v15;
          _os_log_error_impl(&dword_2336F5000, v17, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v18 = v17;
        v16 = v17;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v34 = entryID;
        v35 = 2048;
        v36 = entryID;
        _os_log_debug_impl(&dword_2336F5000, v16, OS_LOG_TYPE_DEBUG, "Registry entry ID: %llu 0x%llX", buf, 0x16u);
      }
    }

    accessoryConnectionsLock = [(AccessoryTransportPluginUSBHost *)self accessoryConnectionsLock];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__AccessoryTransportPluginUSBHost_serviceRemoved___block_invoke;
    block[3] = &unk_2789ECF00;
    block[4] = self;
    block[5] = &v26;
    block[6] = entryID;
    dispatch_sync(accessoryConnectionsLock, block);

    if (v27[5])
    {
      [(ACCTransportPlugin *)self destroyConnectionWithUUID:?];
      accessoryNativeUSBEndpointsLock = [(AccessoryTransportPluginUSBHost *)self accessoryNativeUSBEndpointsLock];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __50__AccessoryTransportPluginUSBHost_serviceRemoved___block_invoke_2;
      v24[3] = &unk_2789ECE88;
      v24[4] = self;
      dispatch_sync(accessoryNativeUSBEndpointsLock, v24);

      activeEAInterfacesLock = [(AccessoryTransportPluginUSBHost *)self activeEAInterfacesLock];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __50__AccessoryTransportPluginUSBHost_serviceRemoved___block_invoke_3;
      v23[3] = &unk_2789ECE88;
      v23[4] = self;
      dispatch_sync(activeEAInterfacesLock, v23);
    }

    v22 = IOObjectRelease(i);
    if (v22)
    {
      printf("Couldn’t release raw device object: %08x\n", v22);
    }

    _Block_object_dispose(&v26, 8);
  }
}

void __50__AccessoryTransportPluginUSBHost_serviceRemoved___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) accessoryConnections];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
LABEL_3:
    v7 = 0;
    v8 = v5;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(v2);
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(&v13 + 1) + 8 * v7));
      v9 = [*(a1 + 32) accessoryConnections];
      v5 = [v9 objectForKey:*(*(*(a1 + 40) + 8) + 40)];

      if (v5)
      {
        if ([v5 registryEntryID] == *(a1 + 48))
        {
          break;
        }
      }

      ++v7;
      v8 = v5;
      if (v4 == v7)
      {
        v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
    v5 = 0;
LABEL_12:
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v12 = [*(a1 + 32) accessoryConnections];
    [v12 removeObjectForKey:*(*(*(a1 + 40) + 8) + 40)];
  }
}

void __50__AccessoryTransportPluginUSBHost_serviceRemoved___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) accessoryNativeUSBEndpoints];
  [v1 removeAllObjects];
}

void __50__AccessoryTransportPluginUSBHost_serviceRemoved___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) activeEAInterfaces];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [*(a1 + 32) activeEAInterfaces];
        v9 = [v8 objectForKey:v7];

        [v9 shuttingDownSession];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = [*(a1 + 32) activeEAInterfaces];
  [v10 removeAllObjects];
}

- (void)_handleOpenEASessionNotificationForEndpoint:(id)endpoint connection:(id)connection
{
  v28 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  connectionCopy = connection;
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

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = endpointCopy;
    _os_log_impl(&dword_2336F5000, v10, OS_LOG_TYPE_DEFAULT, "Opening EA USB Session Notification for endpoint %@", buf, 0xCu);
  }

  v11 = [(ACCTransportPlugin *)self identifierForEndpointWithUUID:endpointCopy];
  v12 = [(ACCTransportPlugin *)self propertiesForEndpointWithUUID:endpointCopy];
  v13 = [v12 objectForKey:*MEMORY[0x277CFD2D0]];
  if (gLogObjects && gNumLogObjects >= 1)
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
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v13;
    _os_log_impl(&dword_2336F5000, v14, OS_LOG_TYPE_DEFAULT, "EA sessionUUID is %@", buf, 0xCu);
  }

  accessoryConnectionsLock = [(AccessoryTransportPluginUSBHost *)self accessoryConnectionsLock];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__AccessoryTransportPluginUSBHost__handleOpenEASessionNotificationForEndpoint_connection___block_invoke;
  block[3] = &unk_2789ECF50;
  block[4] = self;
  v22 = connectionCopy;
  v23 = v11;
  v24 = endpointCopy;
  v25 = v13;
  v17 = v13;
  v18 = endpointCopy;
  v19 = v11;
  v20 = connectionCopy;
  dispatch_sync(accessoryConnectionsLock, block);
}

void __90__AccessoryTransportPluginUSBHost__handleOpenEASessionNotificationForEndpoint_connection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoryConnections];
  v3 = [v2 objectForKey:*(a1 + 40)];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 activeEAInterfacesLock];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__AccessoryTransportPluginUSBHost__handleOpenEASessionNotificationForEndpoint_connection___block_invoke_2;
    block[3] = &unk_2789ECF50;
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = v3;
    v6 = *(a1 + 64);
    v7 = *(a1 + 32);
    v17 = v6;
    v18 = v7;
    dispatch_sync(v5, block);

    v8 = v14;
  }

  else
  {
    v9 = [v4 activeUSBCDCInterfaces];
    v8 = [v9 objectForKey:*(a1 + 40)];

    if (v8)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v10 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
        }

        v10 = MEMORY[0x277D86220];
        v11 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_2336F5000, v10, OS_LOG_TYPE_DEFAULT, "Opening EA USB CDC Session", v12, 2u);
      }

      [v8 openCDCInterface];
    }
  }
}

void __90__AccessoryTransportPluginUSBHost__handleOpenEASessionNotificationForEndpoint_connection___block_invoke_2(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2336F5000, v4, OS_LOG_TYPE_DEFAULT, "Creating EA Native USB Session", buf, 2u);
  }

  v5 = -[AccessoryEAInterface initWithProtocol:endpointUUID:vid:pid:eaSessionUUID:USBDeviceID:]([AccessoryEAInterface alloc], "initWithProtocol:endpointUUID:vid:pid:eaSessionUUID:USBDeviceID:", *(a1 + 32), *(a1 + 40), [*(a1 + 48) vid], objc_msgSend(*(a1 + 48), "pid"), *(a1 + 56), objc_msgSend(*(a1 + 48), "parentDeviceRegistryEntryID"));
  if (v5)
  {
    v6 = [*(a1 + 64) activeEAInterfaces];
    [v6 setObject:v5 forKey:*(a1 + 40)];
  }

  if ([*(a1 + 48) vidpid] == 95164176)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __90__AccessoryTransportPluginUSBHost__handleOpenEASessionNotificationForEndpoint_connection___block_invoke_86;
    v9[3] = &unk_2789ECF28;
    v7 = *(a1 + 40);
    v8 = *(a1 + 64);
    v10 = v7;
    v11 = v8;
    [(AccessoryEAInterface *)v5 setDataInHandler:v9];
  }
}

uint64_t __90__AccessoryTransportPluginUSBHost__handleOpenEASessionNotificationForEndpoint_connection___block_invoke_86(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
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
    v10 = *(a1 + 32);
    v13 = 138412802;
    v14 = v10;
    v15 = 2048;
    v16 = [v6 length];
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_2336F5000, v9, OS_LOG_TYPE_INFO, "EAInterface: endpointUUID %@, received %lu bytes, %@", &v13, 0x20u);
  }

  v11 = [*(a1 + 40) processIncomingData:v6 forEndpointWithUUID:*(a1 + 32)];
  return v11;
}

- (void)_handleCloseEASessionNotificationForEndpoint:(id)endpoint connection:(id)connection
{
  v19 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  connectionCopy = connection;
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

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = endpointCopy;
    _os_log_impl(&dword_2336F5000, v10, OS_LOG_TYPE_DEFAULT, "Closing EA USB Session Notification for endpoint %@", buf, 0xCu);
  }

  activeEAInterfacesLock = [(AccessoryTransportPluginUSBHost *)self activeEAInterfacesLock];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__AccessoryTransportPluginUSBHost__handleCloseEASessionNotificationForEndpoint_connection___block_invoke;
  block[3] = &unk_2789ECF78;
  block[4] = self;
  v15 = endpointCopy;
  v16 = connectionCopy;
  v12 = connectionCopy;
  v13 = endpointCopy;
  dispatch_sync(activeEAInterfacesLock, block);
}

void __91__AccessoryTransportPluginUSBHost__handleCloseEASessionNotificationForEndpoint_connection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeEAInterfaces];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    [v3 shuttingDownSession];
    v4 = [*(a1 + 32) activeEAInterfaces];
    [v4 removeObjectForKey:*(a1 + 40)];
  }

  else
  {
    v5 = [*(a1 + 32) activeUSBCDCInterfaces];
    v6 = [v5 objectForKey:*(a1 + 48)];

    if (v6)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v7 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
        }

        v7 = MEMORY[0x277D86220];
        v8 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_2336F5000, v7, OS_LOG_TYPE_DEFAULT, "Closing EA USB CDC Session", v9, 2u);
      }

      [v6 closeCDCInterface];
    }
  }
}

- (void)_handleOpenSocketFromAccessoryToAppNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  userInfo = [notification userInfo];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = userInfo;
    _os_log_impl(&dword_2336F5000, v7, OS_LOG_TYPE_DEFAULT, "OpenSocket From Accessory To App Native EA USB Session Notification, userInfo %@", buf, 0xCu);
  }

  v8 = [userInfo objectForKey:*MEMORY[0x277CFD1F8]];
  activeEAInterfacesLock = [(AccessoryTransportPluginUSBHost *)self activeEAInterfacesLock];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__AccessoryTransportPluginUSBHost__handleOpenSocketFromAccessoryToAppNotification___block_invoke;
  v11[3] = &unk_2789ECFA0;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_sync(activeEAInterfacesLock, v11);
}

void __83__AccessoryTransportPluginUSBHost__handleOpenSocketFromAccessoryToAppNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeEAInterfaces];
  v4 = [v2 objectForKey:*(a1 + 40)];

  v3 = v4;
  if (v4)
  {
    [v4 openPipeToApp];
    v3 = v4;
  }
}

- (void)_handleOpenSocketFromAppToAccessoryNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  userInfo = [notification userInfo];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = userInfo;
    _os_log_impl(&dword_2336F5000, v7, OS_LOG_TYPE_DEFAULT, "OpenSocket From App To Accessory Native EA USB Session Notification, userInfo %@", buf, 0xCu);
  }

  v8 = [userInfo objectForKey:*MEMORY[0x277CFD1F8]];
  activeEAInterfacesLock = [(AccessoryTransportPluginUSBHost *)self activeEAInterfacesLock];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__AccessoryTransportPluginUSBHost__handleOpenSocketFromAppToAccessoryNotification___block_invoke;
  v11[3] = &unk_2789ECFA0;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_sync(activeEAInterfacesLock, v11);
}

void __83__AccessoryTransportPluginUSBHost__handleOpenSocketFromAppToAccessoryNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeEAInterfaces];
  v4 = [v2 objectForKey:*(a1 + 40)];

  v3 = v4;
  if (v4)
  {
    [v4 openPipeFromApp];
    v3 = v4;
  }
}

- (void)unlockUSBHostInterfacesForConnectionUUID:(id)d
{
  v77 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2020000000;
  v61 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v5 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v65 = dCopy;
    _os_log_impl(&dword_2336F5000, v5, OS_LOG_TYPE_INFO, "Unlocking USB interfaces for connection %@...", buf, 0xCu);
  }

  accessoryConnectionsLock = [(AccessoryTransportPluginUSBHost *)self accessoryConnectionsLock];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__AccessoryTransportPluginUSBHost_unlockUSBHostInterfacesForConnectionUUID___block_invoke;
  block[3] = &unk_2789ECFC8;
  block[4] = self;
  v34 = dCopy;
  v43 = v34;
  v44 = v60;
  v45 = &v56;
  v46 = &v52;
  v47 = &v48;
  dispatch_sync(accessoryConnectionsLock, block);

  v8 = [AccessoryEAInterface findNativeEAInterfacesForRegistryID:v57[3]];
  v9 = v8;
  if (v8 && [v8 count])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v38 objects:v76 count:16];
    v11 = 0;
    if (v10)
    {
      v33 = *v39;
      v32 = v9;
      do
      {
        v35 = v10;
        for (i = 0; i != v35; ++i)
        {
          if (*v39 != v33)
          {
            objc_enumerationMutation(obj);
          }

          if (*(v49 + 12) == 5904)
          {
            v13 = *(v53 + 12) == 1452;
            if (*(v53 + 12) == 1452)
            {
              v14 = 5;
            }

            else
            {
              v14 = 6;
            }

            if (*(v53 + 12) == 1452)
            {
              v15 = 5;
            }

            else
            {
              v15 = 8;
            }
          }

          else
          {
            v13 = 0;
            v15 = 8;
            v14 = 6;
          }

          v16 = *(*(&v38 + 1) + 8 * i);
          v17 = gLogObjects;
          v18 = gNumLogObjects;
          if (gLogObjects)
          {
            v19 = gNumLogObjects < 1;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
            selfCopy = self;
            v21 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v65 = v17;
              v66 = 1024;
              v67 = v18;
              _os_log_error_impl(&dword_2336F5000, v21, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v22 = v21;
            v23 = v21;
            self = selfCopy;
          }

          else
          {
            v23 = *gLogObjects;
          }

          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = *(v53 + 12);
            v25 = *(v49 + 12);
            *buf = 138413570;
            v65 = v16;
            v66 = 1024;
            v67 = v24;
            v68 = 1024;
            v69 = v25;
            v70 = 1024;
            v71 = v13;
            v72 = 1024;
            v73 = v14;
            v74 = 1024;
            v75 = v15;
            _os_log_impl(&dword_2336F5000, v23, OS_LOG_TYPE_DEFAULT, "unlockOtherInterfaces nativeEAProtocolString '%@', vid / pid = (0x%x / 0x%x), useEAService %d, protocol %{coreacc:ACCEndpoint_Protocol_t}d, transportType %{coreacc:ACCEndpoint_TransportType_t}d", buf, 0x2Au);
          }

          v9 = v32;
          v26 = [(ACCTransportPlugin *)self createEndpointWithTransportType:v15 andProtocol:v14 andIdentifier:v16 forConnectionWithUUID:v34 publishConnection:0];

          accessoryNativeUSBEndpointsLock = [(AccessoryTransportPluginUSBHost *)self accessoryNativeUSBEndpointsLock];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __76__AccessoryTransportPluginUSBHost_unlockUSBHostInterfacesForConnectionUUID___block_invoke_94;
          v36[3] = &unk_2789ECF78;
          v36[4] = self;
          v36[5] = v16;
          v11 = v26;
          v37 = v11;
          dispatch_sync(accessoryNativeUSBEndpointsLock, v36);
        }

        v10 = [obj countByEnumeratingWithState:&v38 objects:v76 count:16];
      }

      while (v10);
    }

    v62[0] = *MEMORY[0x277CFD278];
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v53 + 12)];
    v62[1] = *MEMORY[0x277CFD260];
    v63[0] = v28;
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v49 + 12)];
    v63[1] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];

    [(ACCTransportPlugin *)self setAccessoryInfo:v30 forEndpointWithUUID:v11];
    [(ACCTransportPlugin *)self publishConnectionWithUUID:v34];
  }

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(v60, 8);
}

void __76__AccessoryTransportPluginUSBHost_unlockUSBHostInterfacesForConnectionUUID___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessoryConnections];
  v3 = [v2 objectForKey:*(a1 + 40)];

  *(*(*(a1 + 48) + 8) + 24) = [v3 unlockOtherInterfaces];
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
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = @"yes";
    }

    else
    {
      v7 = @"no";
    }

    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_2336F5000, v6, OS_LOG_TYPE_DEFAULT, "unlockOtherInterfaces succeeded? %@. Ignoring result anyways", &v8, 0xCu);
  }

  *(*(*(a1 + 56) + 8) + 24) = [v3 parentDeviceRegistryEntryID];
  *(*(*(a1 + 64) + 8) + 24) = [v3 vid];
  *(*(*(a1 + 72) + 8) + 24) = [v3 pid];
}

void __76__AccessoryTransportPluginUSBHost_unlockUSBHostInterfacesForConnectionUUID___block_invoke_94(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoryNativeUSBEndpoints];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (BOOL)lockUSBHostInterfacesForConnectionUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  accessoryConnectionsLock = [(AccessoryTransportPluginUSBHost *)self accessoryConnectionsLock];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__AccessoryTransportPluginUSBHost_lockUSBHostInterfacesForConnectionUUID___block_invoke;
  block[3] = &unk_2789ECFF0;
  block[4] = self;
  v9 = dCopy;
  v10 = &v11;
  v6 = dCopy;
  dispatch_sync(accessoryConnectionsLock, block);

  LOBYTE(dCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return dCopy;
}

void __74__AccessoryTransportPluginUSBHost_lockUSBHostInterfacesForConnectionUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoryConnections];
  v3 = [v2 objectForKey:*(a1 + 40)];

  *(*(*(a1 + 48) + 8) + 24) = [v3 lockOtherInterfaces];
}

- (void)configureIOKitVIDPID
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)tearDownIOKitVIDPID
{
  iokitVIDPIDNotifyPort = self->_iokitVIDPIDNotifyPort;
  if (iokitVIDPIDNotifyPort)
  {
    IONotificationPortDestroy(iokitVIDPIDNotifyPort);
    self->_iokitVIDPIDNotifyPort = 0;
  }

  IOObjectRelease(self->_iokitVIDPIDAddedIterator);
  iokitVIDPIDRemovedIterator = self->_iokitVIDPIDRemovedIterator;

  IOObjectRelease(iokitVIDPIDRemovedIterator);
}

- (void)VIDPIDServiceAdded:(unsigned int)added
{
  v92 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AccessoryTransportPluginUSBHost VIDPIDServiceAdded:];
  }

  v8 = IOIteratorNext(added);
  if (v8)
  {
    v10 = v8;
    v11 = MEMORY[0x277D86220];
    allocator = *MEMORY[0x277CBECE8];
    v68 = *MEMORY[0x277CFD250];
    v66 = *MEMORY[0x277CFD270];
    v67 = *MEMORY[0x277CFD240];
    v64 = *MEMORY[0x277CFD230];
    v65 = *MEMORY[0x277CFD248];
    v63 = *MEMORY[0x277CFD238];
    *&v9 = 136315138;
    v62 = v9;
    addedCopy = added;
    selfCopy = self;
    do
    {
      memset(v91, 0, sizeof(v91));
      properties = 0;
      entryID = 0;
      v12 = MEMORY[0x2383AACD0](v10, v91);
      v13 = gLogObjects;
      v14 = gNumLogObjects;
      if (gLogObjects)
      {
        v15 = gNumLogObjects <= 0;
      }

      else
      {
        v15 = 1;
      }

      v16 = !v15;
      if (v12)
      {
        v17 = v12;
        if (v16)
        {
          v18 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v88 = v13;
            v89 = 1024;
            LODWORD(v90) = v14;
            _os_log_error_impl(&dword_2336F5000, v11, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v19 = v11;
          v18 = v11;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v88) = v17;
          _os_log_error_impl(&dword_2336F5000, v18, OS_LOG_TYPE_ERROR, "IORegistryEntryGetName failed: %08x", buf, 8u);
        }
      }

      else
      {
        if (v16)
        {
          v18 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v88 = v13;
            v89 = 1024;
            LODWORD(v90) = v14;
            _os_log_error_impl(&dword_2336F5000, v11, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v20 = v11;
          v18 = v11;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = v62;
          v88 = v91;
          _os_log_debug_impl(&dword_2336F5000, v18, OS_LOG_TYPE_DEBUG, "Registry entry name: %s", buf, 0xCu);
        }
      }

      RegistryEntryID = IORegistryEntryGetRegistryEntryID(v10, &entryID);
      v22 = gLogObjects;
      v23 = gNumLogObjects;
      if (gLogObjects)
      {
        v24 = gNumLogObjects <= 0;
      }

      else
      {
        v24 = 1;
      }

      v25 = !v24;
      if (RegistryEntryID)
      {
        v26 = RegistryEntryID;
        if (v25)
        {
          v27 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v88 = v22;
            v89 = 1024;
            LODWORD(v90) = v23;
            _os_log_error_impl(&dword_2336F5000, v11, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v28 = v11;
          v27 = v11;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v88) = v26;
          _os_log_error_impl(&dword_2336F5000, v27, OS_LOG_TYPE_ERROR, "IORegistryEntryGetRegistryEntryID failed: %08x", buf, 8u);
        }
      }

      else
      {
        if (v25)
        {
          v27 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v88 = v22;
            v89 = 1024;
            LODWORD(v90) = v23;
            _os_log_error_impl(&dword_2336F5000, v11, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v29 = v11;
          v27 = v11;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          v88 = entryID;
          v89 = 2048;
          v90 = entryID;
          _os_log_debug_impl(&dword_2336F5000, v27, OS_LOG_TYPE_DEBUG, "Registry entry ID: %llu 0x%llX", buf, 0x16u);
        }
      }

      v30 = IORegistryEntryCreateCFProperties(v10, &properties, allocator, 0);
      v31 = v30;
      v32 = gLogObjects;
      v33 = gNumLogObjects;
      if (gLogObjects)
      {
        v34 = gNumLogObjects <= 0;
      }

      else
      {
        v34 = 1;
      }

      v35 = !v34;
      if (v30 || !properties)
      {
        if (v35)
        {
          v11 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v88 = v32;
            v89 = 1024;
            LODWORD(v90) = v33;
            _os_log_error_impl(&dword_2336F5000, v11, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v36 = v11;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v88) = v31;
          _os_log_error_impl(&dword_2336F5000, v11, OS_LOG_TYPE_ERROR, "IORegistryEntryCreateCFProperties failed: %08x", buf, 8u);
        }
      }

      else
      {
        if (v35)
        {
          v11 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v88 = v32;
            v89 = 1024;
            LODWORD(v90) = v33;
            _os_log_error_impl(&dword_2336F5000, v11, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v37 = v11;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v88 = properties;
          _os_log_debug_impl(&dword_2336F5000, v11, OS_LOG_TYPE_DEBUG, "serviceProperties: %@", buf, 0xCu);
        }
      }

      if (properties)
      {
        CFRelease(properties);
        properties = 0;
      }

      v38 = [(ACCTransportPlugin *)self createConnectionWithType:6 andIdentifier:0, v62];
      v39 = [(ACCTransportPlugin *)self createEndpointWithTransportType:8 andProtocol:5 andIdentifier:@"com.medtronic.cdc.protocol" forConnectionWithUUID:v38 publishConnection:0];
      if (v39)
      {
        v40 = [AccessoryUSBCDCInterface alloc];
        v80[0] = MEMORY[0x277D85DD0];
        v80[1] = 3221225472;
        v80[2] = __54__AccessoryTransportPluginUSBHost_VIDPIDServiceAdded___block_invoke;
        v80[3] = &unk_2789ED018;
        v41 = v39;
        v81 = v41;
        selfCopy2 = self;
        v42 = [(AccessoryUSBCDCInterface *)v40 initWithInterface:v10 protocol:@"com.medtronic.cdc.protocol" endpointUUID:v41 andDataInHandler:v80];
        if (v42)
        {
          v73 = v10;
          accessoryConnectionsLock = [(AccessoryTransportPluginUSBHost *)self accessoryConnectionsLock];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __54__AccessoryTransportPluginUSBHost_VIDPIDServiceAdded___block_invoke_101;
          block[3] = &unk_2789ECF78;
          block[4] = self;
          v72 = v42;
          v44 = v42;
          v78 = v44;
          v71 = v38;
          v79 = v71;
          dispatch_sync(accessoryConnectionsLock, block);

          v85[0] = v68;
          ioregProperties = [(AccessoryUSBCDCInterface *)v44 ioregProperties];
          v46 = [ioregProperties objectForKey:@"USB Product Name"];
          v86[0] = v46;
          v85[1] = v67;
          ioregProperties2 = [(AccessoryUSBCDCInterface *)v44 ioregProperties];
          v48 = [ioregProperties2 objectForKey:@"USB Vendor Name"];
          v86[1] = v48;
          v85[2] = v66;
          ioregProperties3 = [(AccessoryUSBCDCInterface *)v44 ioregProperties];
          v50 = [ioregProperties3 objectForKey:@"USB Serial Number"];
          v86[2] = v50;
          v86[3] = @"Unknown";
          v85[3] = v65;
          v85[4] = v64;
          v85[5] = v63;
          v86[4] = @"Unknown";
          v86[5] = @"Unknown";
          v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:6];

          v52 = gLogObjects;
          v53 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v54 = *gLogObjects;
          }

          else
          {
            v59 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v88 = v52;
              v89 = 1024;
              LODWORD(v90) = v53;
              _os_log_error_impl(&dword_2336F5000, v59, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v60 = v59;
            v54 = v59;
          }

          self = selfCopy;
          LODWORD(v10) = v73;
          added = addedCopy;
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v88 = v51;
            _os_log_impl(&dword_2336F5000, v54, OS_LOG_TYPE_INFO, "accInfoDictionary = %@", buf, 0xCu);
          }

          [(ACCTransportPlugin *)selfCopy setAccessoryInfo:v51 forEndpointWithUUID:v41];
          [(ACCTransportPlugin *)selfCopy publishConnectionWithUUID:v71];

          v55 = v72;
        }

        else
        {
          v55 = 0;
          v56 = gLogObjects;
          v57 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v58 = *gLogObjects;
          }

          else
          {
            v58 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v88 = v56;
              v89 = 1024;
              LODWORD(v90) = v57;
              _os_log_error_impl(&dword_2336F5000, v58, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v61 = v58;
          }

          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            [(AccessoryTransportPluginUSBHost *)&v75 VIDPIDServiceAdded:v76];
          }

          [(ACCTransportPlugin *)self destroyConnectionWithUUID:v38];
        }
      }

      IOObjectRelease(v10);

      v10 = IOIteratorNext(added);
      v11 = MEMORY[0x277D86220];
    }

    while (v10);
  }
}

uint64_t __54__AccessoryTransportPluginUSBHost_VIDPIDServiceAdded___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (gLogSignpostObjects)
  {
    v7 = gNumLogSignpostObjects < 4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __48__AccessoryTransportPluginUSBHost_serviceAdded___block_invoke_cold_1();
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *(gLogSignpostObjects + 24);
  }

  v10 = [*(a1 + 32) hash];
  if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      v12 = *(a1 + 32);
      v29 = 138412546;
      v30 = v12;
      v31 = 2048;
      v32 = [v6 length];
      _os_signpost_emit_with_name_impl(&dword_2336F5000, v9, OS_SIGNPOST_EVENT, v11, "Endpoint RECV", "Received incoming data! %@, %lu bytes", &v29, 0x16u);
    }
  }

  v13 = [*(a1 + 32) hash];
  v14 = [v6 hash];
  v15 = v14 ^ v13;
  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v16 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __48__AccessoryTransportPluginUSBHost_serviceAdded___block_invoke_cold_1();
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  v18 = v13 == v14 || v15 == -1;
  v19 = !v18;
  if (!v18 && os_signpost_enabled(v16))
  {
    v20 = *(a1 + 32);
    v21 = [v6 length];
    v29 = 138412546;
    v30 = v20;
    v31 = 2048;
    v32 = v21;
    _os_signpost_emit_with_name_impl(&dword_2336F5000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Endpoint RECV", "Received incoming data! %@, %lu bytes", &v29, 0x16u);
  }

  v22 = [*(a1 + 40) processIncomingData:v6 forEndpointWithUUID:*(a1 + 32)];
  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v23 = *(gLogSignpostObjects + 24);
    if (!v19)
    {
      goto LABEL_39;
    }

    goto LABEL_34;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __48__AccessoryTransportPluginUSBHost_serviceAdded___block_invoke_cold_1();
  }

  v23 = MEMORY[0x277D86220];
  v24 = MEMORY[0x277D86220];
  if (v19)
  {
LABEL_34:
    if (os_signpost_enabled(v23))
    {
      if (v22)
      {
        v25 = "SUCCESS";
      }

      else
      {
        v25 = "ERROR";
      }

      v26 = *(a1 + 32);
      v27 = [v6 length];
      v29 = 136315650;
      v30 = v25;
      v31 = 2112;
      v32 = v26;
      v33 = 2048;
      v34 = v27;
      _os_signpost_emit_with_name_impl(&dword_2336F5000, v23, OS_SIGNPOST_INTERVAL_END, v15, "Endpoint RECV", "%s handling Received incoming data! %@, %lu bytes", &v29, 0x20u);
    }
  }

LABEL_39:

  return v22;
}

void __54__AccessoryTransportPluginUSBHost_VIDPIDServiceAdded___block_invoke_101(uint64_t a1)
{
  v2 = [*(a1 + 32) activeUSBCDCInterfaces];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (void)VIDPIDServiceRemoved:(unsigned int)removed
{
  v35 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AccessoryTransportPluginUSBHost VIDPIDServiceRemoved:];
  }

  v8 = IOIteratorNext(removed);
  if (v8)
  {
    removedCopy = removed;
    do
    {
      memset(v34, 0, 128);
      v28 = 0;
      entryID = 0;
      v23 = 0;
      v24 = &v23;
      v25 = 0x3032000000;
      v26 = __Block_byref_object_copy_;
      v27 = __Block_byref_object_dispose_;
      if (!MEMORY[0x2383AACD0](v8, v34))
      {
        v9 = gLogObjects;
        v10 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v11 = *gLogObjects;
        }

        else
        {
          v12 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v31 = v9;
            v32 = 1024;
            LODWORD(v33) = v10;
            _os_log_error_impl(&dword_2336F5000, v12, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v13 = v12;
          v11 = v12;
          removed = removedCopy;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v31 = v34;
          _os_log_debug_impl(&dword_2336F5000, v11, OS_LOG_TYPE_DEBUG, "Registry entry name: %s", buf, 0xCu);
        }
      }

      if (!IORegistryEntryGetRegistryEntryID(v8, &entryID))
      {
        v14 = gLogObjects;
        v15 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v16 = *gLogObjects;
        }

        else
        {
          v17 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v31 = v14;
            v32 = 1024;
            LODWORD(v33) = v15;
            _os_log_error_impl(&dword_2336F5000, v17, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v18 = v17;
          v16 = v17;
          removed = removedCopy;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          v31 = entryID;
          v32 = 2048;
          v33 = entryID;
          _os_log_debug_impl(&dword_2336F5000, v16, OS_LOG_TYPE_DEBUG, "Registry entry ID: %llu 0x%llX", buf, 0x16u);
        }
      }

      accessoryConnectionsLock = [(AccessoryTransportPluginUSBHost *)self accessoryConnectionsLock];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__AccessoryTransportPluginUSBHost_VIDPIDServiceRemoved___block_invoke;
      block[3] = &unk_2789ED040;
      block[4] = self;
      block[5] = &v23;
      dispatch_sync(accessoryConnectionsLock, block);

      if (v24[5])
      {
        [(ACCTransportPlugin *)self destroyConnectionWithUUID:?];
      }

      v20 = IOObjectRelease(v8);
      if (v20)
      {
        printf("Couldn’t release raw device object: %08x\n", v20);
      }

      _Block_object_dispose(&v23, 8);

      v8 = IOIteratorNext(removed);
    }

    while (v8);
  }
}

void __56__AccessoryTransportPluginUSBHost_VIDPIDServiceRemoved___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) activeUSBCDCInterfaces];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v2);
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(&v12 + 1) + 8 * v6));
      v7 = [*(a1 + 32) activeUSBCDCInterfaces];
      v8 = [v7 objectForKey:*(*(*(a1 + 40) + 8) + 40)];

      if (v8)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    v8 = 0;
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    [v8 closeCDCInterface];
    v11 = [*(a1 + 32) activeUSBCDCInterfaces];
    [v11 removeObjectForKey:*(*(*(a1 + 40) + 8) + 40)];
  }
}

- (BOOL)setUSBHostHIDInterface:(unsigned __int8)interface withHIDFunction:(unsigned int)function forConnectionUUID:(id)d
{
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  accessoryConnectionsLock = [(AccessoryTransportPluginUSBHost *)self accessoryConnectionsLock];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__AccessoryTransportPluginUSBHost_setUSBHostHIDInterface_withHIDFunction_forConnectionUUID___block_invoke;
  v13[3] = &unk_2789ED068;
  v13[4] = self;
  v14 = dCopy;
  v15 = &v18;
  interfaceCopy = interface;
  functionCopy = function;
  v10 = dCopy;
  dispatch_sync(accessoryConnectionsLock, v13);

  v11 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);
  return v11;
}

void __92__AccessoryTransportPluginUSBHost_setUSBHostHIDInterface_withHIDFunction_forConnectionUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoryConnections];
  v3 = [v2 objectForKey:*(a1 + 40)];

  *(*(*(a1 + 48) + 8) + 24) = [v3 setUSBHostHIDInterface:*(a1 + 60) withHIDFunction:*(a1 + 56)];
}

- (BOOL)clearUSBHostHIDInterfacesForConnectionUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  accessoryConnectionsLock = [(AccessoryTransportPluginUSBHost *)self accessoryConnectionsLock];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__AccessoryTransportPluginUSBHost_clearUSBHostHIDInterfacesForConnectionUUID___block_invoke;
  block[3] = &unk_2789ECFF0;
  block[4] = self;
  v9 = dCopy;
  v10 = &v11;
  v6 = dCopy;
  dispatch_sync(accessoryConnectionsLock, block);

  LOBYTE(dCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return dCopy;
}

void __78__AccessoryTransportPluginUSBHost_clearUSBHostHIDInterfacesForConnectionUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoryConnections];
  v3 = [v2 objectForKey:*(a1 + 40)];

  *(*(*(a1 + 48) + 8) + 24) = [v3 clearUSBHostHIDInterfaces];
}

- (BOOL)configureUSBHostNCMInterface:(unsigned __int8)interface asCarPlay:(BOOL)play forConnectionUUID:(id)d
{
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  accessoryConnectionsLock = [(AccessoryTransportPluginUSBHost *)self accessoryConnectionsLock];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__AccessoryTransportPluginUSBHost_configureUSBHostNCMInterface_asCarPlay_forConnectionUUID___block_invoke;
  v13[3] = &unk_2789ED090;
  v13[4] = self;
  v14 = dCopy;
  v15 = &v18;
  interfaceCopy = interface;
  playCopy = play;
  v10 = dCopy;
  dispatch_sync(accessoryConnectionsLock, v13);

  v11 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);
  return v11;
}

void __92__AccessoryTransportPluginUSBHost_configureUSBHostNCMInterface_asCarPlay_forConnectionUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoryConnections];
  v3 = [v2 objectForKey:*(a1 + 40)];

  *(*(*(a1 + 48) + 8) + 24) = [v3 configureNCMInterface:*(a1 + 56) asCarPlay:*(a1 + 57)];
}

- (BOOL)setNeedOutZLP:(BOOL)p maxOutLength:(unsigned int)length forConnectionUUID:(id)d
{
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  accessoryConnectionsLock = [(AccessoryTransportPluginUSBHost *)self accessoryConnectionsLock];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__AccessoryTransportPluginUSBHost_setNeedOutZLP_maxOutLength_forConnectionUUID___block_invoke;
  v13[3] = &unk_2789ED068;
  v13[4] = self;
  v14 = dCopy;
  pCopy = p;
  lengthCopy = length;
  v15 = &v18;
  v10 = dCopy;
  dispatch_sync(accessoryConnectionsLock, v13);

  v11 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);
  return v11;
}

void __80__AccessoryTransportPluginUSBHost_setNeedOutZLP_maxOutLength_forConnectionUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoryConnections];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    [v3 setNeedOutZLP:*(a1 + 60)];
    [v3 setMaxOutLength:*(a1 + 56)];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (BOOL)sendOutgoingData:(id)data forEndpointWithUUID:(id)d connectionUUID:(id)iD
{
  v36 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  iDCopy = iD;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  if (acc_userDefaultsLogging_BOOLForKey(@"TransportSignpost"))
  {
    if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
    {
      v11 = *(gLogSignpostObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __48__AccessoryTransportPluginUSBHost_serviceAdded___block_invoke_cold_1();
      }

      v11 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    v13 = [dCopy hash];
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v14 = [dataCopy length];
      *buf = 138412546;
      *&buf[4] = dCopy;
      *&buf[12] = 2048;
      *&buf[14] = v14;
      _os_signpost_emit_with_name_impl(&dword_2336F5000, v11, OS_SIGNPOST_EVENT, v13, "Endpoint SEND", "Send outgoing data! %@, %lu bytes", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v35 = 0;
  activeEAInterfacesLock = [(AccessoryTransportPluginUSBHost *)self activeEAInterfacesLock];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__AccessoryTransportPluginUSBHost_sendOutgoingData_forEndpointWithUUID_connectionUUID___block_invoke;
  block[3] = &unk_2789ED0B8;
  block[4] = self;
  v16 = dCopy;
  v26 = v16;
  v28 = &v30;
  v17 = dataCopy;
  v27 = v17;
  v29 = buf;
  dispatch_sync(activeEAInterfacesLock, block);

  if ((*(*&buf[8] + 24) & 1) == 0)
  {
    accessoryConnectionsLock = [(AccessoryTransportPluginUSBHost *)self accessoryConnectionsLock];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __87__AccessoryTransportPluginUSBHost_sendOutgoingData_forEndpointWithUUID_connectionUUID___block_invoke_2;
    v21[3] = &unk_2789ED0E0;
    v21[4] = self;
    v22 = iDCopy;
    v24 = &v30;
    v23 = v17;
    dispatch_sync(accessoryConnectionsLock, v21);
  }

  v19 = *(v31 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v30, 8);

  return v19 & 1;
}

void __87__AccessoryTransportPluginUSBHost_sendOutgoingData_forEndpointWithUUID_connectionUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeEAInterfaces];
  v4 = [v2 objectForKey:*(a1 + 40)];

  v3 = v4;
  if (v4)
  {
    *(*(*(a1 + 56) + 8) + 24) = [v4 writeData:*(a1 + 48)];
    v3 = v4;
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

void __87__AccessoryTransportPluginUSBHost_sendOutgoingData_forEndpointWithUUID_connectionUUID___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoryConnections];
  v5 = [v2 objectForKey:*(a1 + 40)];

  if (v5)
  {
    *(*(*(a1 + 56) + 8) + 24) = [v5 writeData:*(a1 + 48)];
  }

  else
  {
    v3 = [*(a1 + 32) activeUSBCDCInterfaces];
    v4 = [v3 objectForKey:*(a1 + 40)];

    if (v4)
    {
      *(*(*(a1 + 56) + 8) + 24) = [v4 writeData:*(a1 + 48)] != 0;
    }
  }
}

- (BOOL)startDetectUSBBillboardDeviceWithVID:(unsigned __int16)d PID:(unsigned __int16)iD
{
  iDCopy = iD;
  dCopy = d;
  v6 = +[AccessoryUSBBillboardDeviceManager sharedManager];
  LOBYTE(iDCopy) = [v6 startDetectUSBBillboardDeviceWithVID:dCopy PID:iDCopy];

  return iDCopy;
}

- (BOOL)stopDetectUSBBillboardDeviceWithVID:(unsigned __int16)d PID:(unsigned __int16)iD
{
  iDCopy = iD;
  dCopy = d;
  v6 = +[AccessoryUSBBillboardDeviceManager sharedManager];
  LOBYTE(iDCopy) = [v6 stopDetectUSBBillboardDeviceWithVID:dCopy PID:iDCopy];

  return iDCopy;
}

void __48__AccessoryTransportPluginUSBHost_serviceAdded___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

@end