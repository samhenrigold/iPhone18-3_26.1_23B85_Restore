@interface AccessoryIAPInterface
+ (unint64_t)getRegistryEntryIDFromService:(unsigned int)service;
- (AccessoryIAPInterface)initWithInterface:(unsigned int)interface vid:(unsigned __int16)vid pid:(unsigned __int16)pid aidInfo:(id)info andDataInHandler:(id)handler;
- (BOOL)clearUSBHostHIDInterfaces;
- (BOOL)configureInterface:(unsigned int)interface skipPipeSetup:(BOOL)setup;
- (BOOL)configureNCMInterface:(unsigned __int8)interface asCarPlay:(BOOL)play;
- (BOOL)lockOtherInterfaces;
- (BOOL)setInterfaceProperties:(id)properties;
- (BOOL)setProperty:(id)property forInterfaceNum:(unsigned __int8)num;
- (BOOL)setUSBHostHIDInterface:(unsigned __int8)interface withHIDFunction:(unsigned int)function;
- (BOOL)unlockOtherInterfaces;
- (BOOL)writeData:(id)data;
- (void)dealloc;
- (void)dismissNotSupportNotification;
- (void)presentNotSupportNotification;
@end

@implementation AccessoryIAPInterface

- (AccessoryIAPInterface)initWithInterface:(unsigned int)interface vid:(unsigned __int16)vid pid:(unsigned __int16)pid aidInfo:(id)info andDataInHandler:(id)handler
{
  pidCopy = pid;
  vidCopy = vid;
  v11 = *&interface;
  v37 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  handlerCopy = handler;
  v30.receiver = self;
  v30.super_class = AccessoryIAPInterface;
  v15 = [(AccessoryIAPInterface *)&v30 init];
  if (v15)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    *(v15 + 10) = v17;

    *(v15 + 9) = 0;
    *(v15 + 9) = 0;
    *(v15 + 5) = 0;
    v15[11] = 0;
    *(v15 + 13) = 0;
    *(v15 + 14) = 0;
    v18 = *(v15 + 15);
    *(v15 + 15) = 0;

    *(v15 + 7) = 0;
    v15[12] = 0;
    v19 = MEMORY[0x2383AB1E0](handlerCopy);
    v20 = *(v15 + 9);
    *(v15 + 9) = v19;

    *(v15 + 9) = 0;
    *(v15 + 10) = 0;
    *(v15 + 7) = vidCopy;
    *(v15 + 8) = pidCopy;
    *(v15 + 8) = pidCopy | (vidCopy << 16);
    v15[13] = 0;
    objc_storeStrong(v15 + 12, info);
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x", *(v15 + 8) | (*(v15 + 7) << 16)];
    v22 = acc_userNotifications_generateIdentifier(@"iap-interface-registry", v21);
    v23 = *(v15 + 11);
    *(v15 + 11) = v22;

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v24 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [IAPDataBuffer initWithiAPInterface:];
      }

      v24 = MEMORY[0x277D86220];
      v25 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v26 = *(v15 + 8);
      v27 = *(v15 + 12);
      *buf = 136315650;
      v32 = "[AccessoryIAPInterface initWithInterface:vid:pid:aidInfo:andDataInHandler:]";
      v33 = 1024;
      v34 = v26;
      v35 = 2112;
      v36 = v27;
      _os_log_impl(&dword_2336F5000, v24, OS_LOG_TYPE_INFO, "%s: vidpid 0x%X, aidInfo %@", buf, 0x1Cu);
    }

    if ([v15 configureInterface:v11 skipPipeSetup:0])
    {
      v28 = *(v15 + 15);
      *(v15 + 15) = 0;
    }

    else
    {
      v28 = v15;
      v15 = 0;
    }
  }

  return v15;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (BOOL)configureInterface:(unsigned int)interface skipPipeSetup:(BOOL)setup
{
  setupCopy = setup;
  v5 = *&interface;
  v115 = *MEMORY[0x277D85DE8];
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
      [IAPDataBuffer initWithiAPInterface:];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *gLogObjects;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[AccessoryIAPInterface configureInterface:skipPipeSetup:]";
    *&buf[12] = 1024;
    *&buf[14] = v5;
    *&buf[18] = 1024;
    *&buf[20] = setupCopy;
    _os_log_impl(&dword_2336F5000, v9, OS_LOG_TYPE_DEFAULT, "%s: service %d, skipPipeSetup %d", buf, 0x18u);
  }

  ParentOfClass = usbUtil_findParentOfClass(v5, "IOUSBDevice", "IOService");
  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!ParentOfClass)
  {
    if (v12)
    {
      v15 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [IAPDataBuffer initWithiAPInterface:];
      }

      v15 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [AccessoryIAPInterface configureInterface:skipPipeSetup:];
    }

    goto LABEL_70;
  }

  v13 = ParentOfClass;
  if (v12)
  {
    v14 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IAPDataBuffer initWithiAPInterface:];
    }

    v14 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[AccessoryIAPInterface configureInterface:skipPipeSetup:]";
    *&buf[12] = 1024;
    *&buf[14] = v13;
    *&buf[18] = 1024;
    *&buf[20] = v5;
    _os_log_impl(&dword_2336F5000, v14, OS_LOG_TYPE_DEFAULT, "%s: Found parent (%d) of iAP Interface (%d)", buf, 0x18u);
  }

  busyState[0] = 0;
  if (!IOServiceGetBusyState(v13, busyState))
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v17 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [IAPDataBuffer initWithiAPInterface:];
      }

      v17 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [AccessoryIAPInterface configureInterface:skipPipeSetup:];
    }

    if (!IOServiceWaitQuiet(v13, 0))
    {
      busyState[0] = 0;
      if (!IOServiceGetBusyState(v13, busyState))
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v20 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [IAPDataBuffer initWithiAPInterface:];
          }

          v20 = MEMORY[0x277D86220];
          v21 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [AccessoryIAPInterface configureInterface:skipPipeSetup:];
        }
      }
    }
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  memset(buf, 0, sizeof(buf));
  v22 = MEMORY[0x2383AACD0](v5, buf);
  if (gLogObjects)
  {
    v23 = gNumLogObjects <= 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = !v23;
  if (!v22)
  {
    if (v24)
    {
      v26 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [IAPDataBuffer initWithiAPInterface:];
      }

      v26 = MEMORY[0x277D86220];
      v31 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v105 = 136315394;
      *&v105[4] = "[AccessoryIAPInterface configureInterface:skipPipeSetup:]";
      v106 = 2080;
      v107 = buf;
      _os_log_impl(&dword_2336F5000, v26, OS_LOG_TYPE_DEFAULT, "%s: Registry entry name: '%s'", v105, 0x16u);
    }

    if (buf[0] && (*buf == 0x65746E4920504169 ? (v32 = *&buf[6] == 0x65636166726574) : (v32 = 0), v32))
    {
      InterfaceAndNameString = 0;
    }

    else
    {
      v33 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x277CBED08], 1u, 0xA2u, 0xD0u, 0xE9u, 0x42u, 0xF6u, 0x4Au, 0x87u, 0x8Bu, 0x8Bu, 0x77u, 5u, 0x7Cu, 0x8Cu, 0xE0u, 0xCEu);
      v34 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Au, 0x41u, 0x5Au, 0x15u, 0x1Au, 0x7Bu, 0x4Bu, 0x5Bu, 0x86u, 0x9Cu, 0x69u, 0x4Fu, 0xEEu, 0xCu, 0x6Cu, 0x6Bu);
      InterfaceAndNameString = usbUtil_getInterfaceAndNameString(v13, v33, v5, v34, 0);
    }

    IOObjectRelease(v13);
    if (!v5)
    {
      goto LABEL_71;
    }

    self->_registryEntryID = [AccessoryIAPInterface getRegistryEntryIDFromService:v5];
    *v105 = 0;
    if (IORegistryEntryCreateCFProperties(v5, v105, *MEMORY[0x277CBECE8], 0) || !*v105)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v44 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [IAPDataBuffer initWithiAPInterface:];
        }

        v44 = MEMORY[0x277D86220];
        v45 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [AccessoryIAPInterface configureInterface:skipPipeSetup:];
      }
    }

    else
    {
      v35 = [*v105 objectForKey:@"locationID"];
      self->_locationID = [v35 intValue];

      ioregProperties = self->_ioregProperties;
      self->_ioregProperties = *v105;

      v103 = 0;
      *busyState = 0;
      theScore = 0;
      v101 = 0;
      v100 = 0;
      v37 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Du, 0x97u, 0x86u, 0xC6u, 0x9Eu, 0xF3u, 0x11u, 0xD4u, 0xADu, 0x51u, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
      v38 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
      if (IOCreatePlugInInterfaceForService(v5, v37, v38, busyState, &theScore) || (v39 = *busyState) == 0)
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v44 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [IAPDataBuffer initWithiAPInterface:];
          }

          v44 = MEMORY[0x277D86220];
          v46 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [AccessoryIAPInterface configureInterface:skipPipeSetup:];
        }
      }

      else
      {
        v40 = *(**busyState + 8);
        v41 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Au, 0x41u, 0x5Au, 0x15u, 0x1Au, 0x7Bu, 0x4Bu, 0x5Bu, 0x86u, 0x9Cu, 0x69u, 0x4Fu, 0xEEu, 0xCu, 0x6Cu, 0x6Bu);
        v42 = CFUUIDGetUUIDBytes(v41);
        LODWORD(v40) = v40(v39, *&v42.byte0, *&v42.byte8, &v103);
        (*(**busyState + 24))(*busyState);
        if (!v40)
        {
          v43 = v103;
          if (v103)
          {
            self->_interface = v103;
            if (setupCopy)
            {
LABEL_93:
              v29 = 1;
              goto LABEL_72;
            }

            if (!((*v43)->GetInterfaceClass)(v43, &v101 + 1) && !((*self->_interface)->GetInterfaceSubClass)(self->_interface, &v101))
            {
              v48 = logObjectForModule_0();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                [(AccessoryIAPInterface *)&v101 + 1 configureInterface:v48 skipPipeSetup:?];
              }
            }

            entry = 0;
            if (((*self->_interface)->GetDevice)(self->_interface, &entry))
            {
              v49 = logObjectForModule_0();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                [AccessoryIAPInterface configureInterface:skipPipeSetup:];
              }
            }

            else
            {
              RegistryEntryID = IORegistryEntryGetRegistryEntryID(entry, &self->_parentDeviceRegistryEntryID);
              v51 = logObjectForModule_0();
              v49 = v51;
              if (RegistryEntryID)
              {
                if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                {
                  [AccessoryIAPInterface configureInterface:skipPipeSetup:];
                }
              }

              else if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
              {
                parentDeviceRegistryEntryID = self->_parentDeviceRegistryEntryID;
                *buf = 134217984;
                *&buf[4] = parentDeviceRegistryEntryID;
                _os_log_impl(&dword_2336F5000, v49, OS_LOG_TYPE_DEFAULT, "_parentDeviceRegistryEntryID = 0x%llX", buf, 0xCu);
              }
            }

            if (((*self->_interface)->USBInterfaceOpen)(self->_interface))
            {
              v53 = logObjectForModule_0();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                [AccessoryIAPInterface configureInterface:skipPipeSetup:];
              }

              goto LABEL_135;
            }

            if (((*self->_interface)->GetNumEndpoints)(self->_interface, &v100))
            {
              v54 = logObjectForModule_0();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                [AccessoryIAPInterface configureInterface:skipPipeSetup:];
              }

              if (!((*self->_interface)->USBInterfaceClose)(self->_interface))
              {
                goto LABEL_136;
              }

              v53 = logObjectForModule_0();
              if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_135;
              }
            }

            else
            {
              Pipe = findPipe(self->_interface, v100, 0, 2, &self->_bulkOutPipeRef, &self->_bulkOutPipeMaxPacketSize);
              if (!self->_bulkOutPipeRef)
              {
                v56 = logObjectForModule_0();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  [AccessoryIAPInterface configureInterface:skipPipeSetup:];
                }
              }

              if (Pipe)
              {
                v57 = logObjectForModule_0();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  [AccessoryIAPInterface configureInterface:skipPipeSetup:];
                }

                if (!((*self->_interface)->USBInterfaceClose)(self->_interface))
                {
                  goto LABEL_136;
                }

                v53 = logObjectForModule_0();
                if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_135;
                }
              }

              else
              {
                v58 = findPipe(self->_interface, v100, 1, 2, &self->_bulkInPipeRef, &self->_bulkInPipeMaxPacketSize);
                if (!self->_bulkInPipeRef)
                {
                  v59 = logObjectForModule_0();
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                  {
                    [AccessoryIAPInterface configureInterface:skipPipeSetup:];
                  }
                }

                if (!v58)
                {
                  v61 = findPipe(self->_interface, v100, 1, 3, &self->_interruptInPipeRef, &self->_interruptInPipeMaxPacketSize);
                  if (self->_interruptInPipeRef)
                  {
                    v62 = logObjectForModule_0();
                    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_2336F5000, v62, OS_LOG_TYPE_DEFAULT, "Found interrupt in endpoint!", buf, 2u);
                    }
                  }

                  if (v61)
                  {
                    v63 = logObjectForModule_0();
                    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                    {
                      [AccessoryIAPInterface configureInterface:skipPipeSetup:];
                    }
                  }

                  v64 = logObjectForModule_0();
                  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
                  {
                    bulkOutPipeRef = self->_bulkOutPipeRef;
                    bulkOutPipeMaxPacketSize = self->_bulkOutPipeMaxPacketSize;
                    bulkInPipeRef = self->_bulkInPipeRef;
                    bulkInPipeMaxPacketSize = self->_bulkInPipeMaxPacketSize;
                    interruptInPipeRef = self->_interruptInPipeRef;
                    interruptInPipeMaxPacketSize = self->_interruptInPipeMaxPacketSize;
                    *buf = 67110400;
                    *&buf[4] = bulkOutPipeRef;
                    *&buf[8] = 1024;
                    *&buf[10] = bulkOutPipeMaxPacketSize;
                    *&buf[14] = 1024;
                    *&buf[16] = bulkInPipeRef;
                    *&buf[20] = 1024;
                    *&buf[22] = bulkInPipeMaxPacketSize;
                    *&buf[26] = 1024;
                    *&buf[28] = interruptInPipeRef;
                    LOWORD(v109) = 1024;
                    *(&v109 + 2) = interruptInPipeMaxPacketSize;
                    _os_log_debug_impl(&dword_2336F5000, v64, OS_LOG_TYPE_DEBUG, "Bulk out pipe: %d maxPacketSize: %d, Bulk in pipe: %d, maxPacketSize: %d, Interrupt in pipe: %d, maxPacketSize: %d", buf, 0x26u);
                  }

                  v65 = objc_alloc_init(MEMORY[0x277CCAAF8]);
                  dataBufLock = self->_dataBufLock;
                  self->_dataBufLock = v65;

                  v67 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:8];
                  inUseDataBufArray = self->_inUseDataBufArray;
                  self->_inUseDataBufArray = v67;

                  v69 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:8];
                  interruptBulkReadList = self->_interruptBulkReadList;
                  self->_interruptBulkReadList = v69;

                  if (self->_interruptInPipeRef)
                  {
                    dataBufLock4 = [[IAPDataBuffer alloc] initWithiAPInterface:self];
                    dataBufLock = [(AccessoryIAPInterface *)self dataBufLock];
                    [dataBufLock lock];

                    inUseDataBufArray = [(AccessoryIAPInterface *)self inUseDataBufArray];
                    [inUseDataBufArray addObject:dataBufLock4];

                    dataBufLock2 = [(AccessoryIAPInterface *)self dataBufLock];
                    [dataBufLock2 unlock];
                  }

                  else
                  {
                    dataBufLock3 = [(AccessoryIAPInterface *)self dataBufLock];
                    [dataBufLock3 lock];

                    v76 = 8;
                    do
                    {
                      v77 = [[IAPDataBuffer alloc] initWithiAPInterface:self];
                      inUseDataBufArray2 = [(AccessoryIAPInterface *)self inUseDataBufArray];
                      [inUseDataBufArray2 addObject:v77];

                      --v76;
                    }

                    while (v76);
                    dataBufLock4 = [(AccessoryIAPInterface *)self dataBufLock];
                    [(IAPDataBuffer *)dataBufLock4 unlock];
                  }

                  v98 = 0;
                  v79 = ((*self->_interface)->CreateInterfaceAsyncPort)(self->_interface, &v98);
                  v80 = v98;
                  v81 = logObjectForModule_0();
                  v82 = v81;
                  if (v79)
                  {
                    v83 = 1;
                  }

                  else
                  {
                    v83 = v80 == 0;
                  }

                  if (v83)
                  {
                    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                    {
                      [AccessoryIAPInterface configureInterface:skipPipeSetup:];
                    }

                    v84 = 0;
                  }

                  else
                  {
                    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_2336F5000, v82, OS_LOG_TYPE_DEFAULT, "Casting to IOUSBInterfaceInterface400", buf, 2u);
                    }

                    v86 = ((*self->_interface)->GetEndpointPropertiesV3)(self->_interface);
                    v87 = logObjectForModule_0();
                    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 134217984;
                      *&buf[4] = v86;
                      _os_log_impl(&dword_2336F5000, v87, OS_LOG_TYPE_DEFAULT, "notificationPort = %p", buf, 0xCu);
                    }

                    if (v86)
                    {
                      IONotificationPortSetDispatchQueue(v86, usbHostNotificationQ);
                      v88 = logObjectForModule_0();
                      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
                      {
                        [AccessoryIAPInterface configureInterface:skipPipeSetup:];
                      }

                      block[0] = MEMORY[0x277D85DD0];
                      block[1] = 3221225472;
                      block[2] = __58__AccessoryIAPInterface_configureInterface_skipPipeSetup___block_invoke;
                      block[3] = &unk_2789ECE88;
                      block[4] = self;
                      dispatch_async(usbHostNotificationQ, block);
                      v84 = 1;
                    }

                    else
                    {
                      v89 = logObjectForModule_0();
                      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                      {
                        [AccessoryIAPInterface configureInterface:skipPipeSetup:];
                      }

                      if (((*self->_interface)->USBInterfaceClose)(self->_interface))
                      {
                        v90 = logObjectForModule_0();
                        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                        {
                          [AccessoryIAPInterface dealloc];
                        }
                      }

                      ((*self->_interface)->Release)(self->_interface);
                      v84 = 0;
                      self->_interface = 0;
                    }
                  }

                  self->_interfaceConfigured = v84;
                  goto LABEL_93;
                }

                v60 = logObjectForModule_0();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  [AccessoryIAPInterface configureInterface:skipPipeSetup:];
                }

                if (!((*self->_interface)->USBInterfaceClose)(self->_interface))
                {
LABEL_136:
                  ((*self->_interface)->Release)(self->_interface);
                  v29 = 0;
                  self->_interface = 0;
                  goto LABEL_72;
                }

                v53 = logObjectForModule_0();
                if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
LABEL_135:

                  goto LABEL_136;
                }
              }
            }

            [AccessoryIAPInterface dealloc];
            goto LABEL_135;
          }
        }

        if (gLogObjects && gNumLogObjects >= 1)
        {
          v44 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [IAPDataBuffer initWithiAPInterface:];
          }

          v44 = MEMORY[0x277D86220];
          v47 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [AccessoryIAPInterface configureInterface:skipPipeSetup:];
        }
      }
    }

    goto LABEL_71;
  }

  if (v24)
  {
    v25 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IAPDataBuffer initWithiAPInterface:];
    }

    v25 = MEMORY[0x277D86220];
    v27 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [AccessoryIAPInterface configureInterface:skipPipeSetup:];
  }

  IOObjectRelease(v13);
LABEL_70:
  InterfaceAndNameString = 0;
LABEL_71:
  v29 = 0;
LABEL_72:

  return v29;
}

void __58__AccessoryIAPInterface_configureInterface_skipPipeSetup___block_invoke(uint64_t a1)
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
      [IAPDataBuffer initWithiAPInterface:];
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
    *v9 = 0;
    _os_log_impl(&dword_2336F5000, v4, OS_LOG_TYPE_DEFAULT, "Trigger start of reading on dispatch_queue", v9, 2u);
  }

  v5 = *(a1 + 32);
  if (v5[11])
  {
    InterruptReadCompletion(v5, 0, 0);
  }

  else
  {
    for (i = 0; i != 8; ++i)
    {
      v7 = [*(a1 + 32) inUseDataBufArray];
      v8 = [v7 objectAtIndex:i];

      ReadCompletion(v8, 0, 0);
    }
  }
}

- (BOOL)writeData:(id)data
{
  dataCopy = data;
  if (![(AccessoryIAPInterface *)self interface]|| !*[(AccessoryIAPInterface *)self interface])
  {
    goto LABEL_30;
  }

  v5 = ((*-[AccessoryIAPInterface interface](self, "interface"))[256])(-[AccessoryIAPInterface interface](self, "interface"), -[AccessoryIAPInterface bulkOutPipeRef](self, "bulkOutPipeRef"), [dataCopy bytes], objc_msgSend(dataCopy, "length"));
  if (v5 == -536850432)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v6 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [IAPDataBuffer initWithiAPInterface:];
      }

      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_2336F5000, v6, OS_LOG_TYPE_INFO, "USB Pipe stalled, clear and retry!", v18, 2u);
    }

    ((*[(AccessoryIAPInterface *)self interface])[240])([(AccessoryIAPInterface *)self interface], [(AccessoryIAPInterface *)self bulkOutPipeRef]);
    v5 = ((*-[AccessoryIAPInterface interface](self, "interface"))[256])(-[AccessoryIAPInterface interface](self, "interface"), -[AccessoryIAPInterface bulkOutPipeRef](self, "bulkOutPipeRef"), [dataCopy bytes], objc_msgSend(dataCopy, "length"));
  }

  if (gLogObjects)
  {
    v8 = gNumLogObjects <= 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v5)
  {
    if (v9)
    {
      v10 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [IAPDataBuffer initWithiAPInterface:];
      }

      v10 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v9)
    {
      v11 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [IAPDataBuffer initWithiAPInterface:];
      }

      v11 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(AccessoryIAPInterface *)dataCopy writeData:v11];
    }

    if (!-[AccessoryIAPInterface needOutZLP](self, "needOutZLP") || ![dataCopy length] || (v16 = objc_msgSend(dataCopy, "length"), v16 == -[AccessoryIAPInterface maxOutLength](self, "maxOutLength")) || (v17 = objc_msgSend(dataCopy, "length"), v17 % -[AccessoryIAPInterface bulkOutPipeMaxPacketSize](self, "bulkOutPipeMaxPacketSize")) || !((*-[AccessoryIAPInterface interface](self, "interface"))[256])(-[AccessoryIAPInterface interface](self, "interface"), -[AccessoryIAPInterface bulkOutPipeRef](self, "bulkOutPipeRef"), &writeData__zlpBuffer, 0))
    {
      v13 = 1;
      goto LABEL_31;
    }

    v10 = logObjectForModule_0();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }
  }

  [AccessoryIAPInterface writeData:];
LABEL_29:

LABEL_30:
  v13 = 0;
LABEL_31:

  return v13;
}

- (BOOL)setProperty:(id)property forInterfaceNum:(unsigned __int8)num
{
  numCopy = num;
  v25 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  interfacePropertiesArray = [(AccessoryIAPInterface *)self interfacePropertiesArray];

  if (!interfacePropertiesArray)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(AccessoryIAPInterface *)self setInterfacePropertiesArray:array];
  }

  interfacePropertiesArray2 = [(AccessoryIAPInterface *)self interfacePropertiesArray];

  if (interfacePropertiesArray2)
  {
    interfacePropertiesArray3 = [(AccessoryIAPInterface *)self interfacePropertiesArray];
    v11 = [interfacePropertiesArray3 count];

    if (v11 <= numCopy)
    {
      v12 = numCopy - v11 + 1;
      do
      {
        interfacePropertiesArray4 = [(AccessoryIAPInterface *)self interfacePropertiesArray];
        dictionary = [MEMORY[0x277CBEAC0] dictionary];
        [interfacePropertiesArray4 addObject:dictionary];

        --v12;
      }

      while (v12);
    }

    interfacePropertiesArray5 = [(AccessoryIAPInterface *)self interfacePropertiesArray];
    [interfacePropertiesArray5 setObject:propertyCopy atIndexedSubscript:numCopy];
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v16 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IAPDataBuffer initWithiAPInterface:];
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    interfacePropertiesArray6 = [(AccessoryIAPInterface *)self interfacePropertiesArray];
    v20[0] = 67109634;
    v20[1] = numCopy;
    v21 = 2112;
    v22 = propertyCopy;
    v23 = 2112;
    v24 = interfacePropertiesArray6;
    _os_log_impl(&dword_2336F5000, v16, OS_LOG_TYPE_INFO, "Set property for interface number %u: %@\ninterfacePropertiesArray: %@", v20, 0x1Cu);
  }

  return interfacePropertiesArray2 != 0;
}

- (BOOL)setInterfaceProperties:(id)properties
{
  propertiesCopy = properties;
  if ([(AccessoryIAPInterface *)self interface])
  {
    entry = 0;
    if (((*[(AccessoryIAPInterface *)self interface])[168])([(AccessoryIAPInterface *)self interface], &entry))
    {
      v5 = 1;
    }

    else
    {
      v5 = entry == 0;
    }

    if (v5)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v6 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [IAPDataBuffer initWithiAPInterface:];
        }

        v6 = MEMORY[0x277D86220];
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [AccessoryIAPInterface setInterfaceProperties:];
      }
    }

    else
    {
      v9 = IORegistryEntrySetCFProperties(entry, propertiesCopy);
      if (gLogObjects)
      {
        v10 = gNumLogObjects <= 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = !v10;
      if (!v9)
      {
        if (v11)
        {
          v6 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [IAPDataBuffer initWithiAPInterface:];
          }

          v6 = MEMORY[0x277D86220];
          v17 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          [AccessoryIAPInterface setInterfaceProperties:];
        }

        v13 = 1;
        goto LABEL_43;
      }

      if (v11)
      {
        v6 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [IAPDataBuffer initWithiAPInterface:];
        }

        v6 = MEMORY[0x277D86220];
        v15 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [AccessoryIAPInterface setInterfaceProperties:];
      }
    }

    v13 = 0;
LABEL_43:

    goto LABEL_44;
  }

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
      [IAPDataBuffer initWithiAPInterface:];
    }

    v12 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *gLogObjects;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [AccessoryIAPInterface setInterfaceProperties:];
  }

  v13 = 0;
LABEL_44:

  return v13;
}

- (BOOL)setUSBHostHIDInterface:(unsigned __int8)interface withHIDFunction:(unsigned int)function
{
  interfaceCopy = interface;
  v20 = *MEMORY[0x277D85DE8];
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
      [IAPDataBuffer initWithiAPInterface:];
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
    *buf = 67109376;
    v17 = interfaceCopy;
    v18 = 1024;
    functionCopy = function;
    _os_log_impl(&dword_2336F5000, v9, OS_LOG_TYPE_INFO, "Setting USBHost HID interface: %d with HIDFunctionType: %d", buf, 0xEu);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{function, @"IAPHIDAccessoryCategoryKey"}];
  v15 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v12 = [(AccessoryIAPInterface *)self setProperty:v11 forInterfaceNum:interfaceCopy];

  return v12;
}

- (BOOL)clearUSBHostHIDInterfaces
{
  v10 = *MEMORY[0x277D85DE8];
  [(AccessoryIAPInterface *)self setInterfacePropertiesArray:0];
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
      [IAPDataBuffer initWithiAPInterface:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    interfacePropertiesArray = [(AccessoryIAPInterface *)self interfacePropertiesArray];
    v8 = 138412290;
    v9 = interfacePropertiesArray;
    _os_log_impl(&dword_2336F5000, v5, OS_LOG_TYPE_INFO, "interfacePropertiesArray %@...", &v8, 0xCu);
  }

  return 1;
}

- (BOOL)configureNCMInterface:(unsigned __int8)interface asCarPlay:(BOOL)play
{
  playCopy = play;
  interfaceCopy = interface;
  v14 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_new();
  if (v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0x20000000];
    [v7 setObject:v8 forKeyedSubscript:@"NetworkInterfaceFlags"];

    if (playCopy)
    {
      [v7 setObject:@"CarPlay" forKeyedSubscript:@"InterfaceRole"];
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v9 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [IAPDataBuffer initWithiAPInterface:];
      }

      v9 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13[0] = 67109120;
      v13[1] = interfaceCopy;
      _os_log_impl(&dword_2336F5000, v9, OS_LOG_TYPE_INFO, "Setting NCM interface number to %u...", v13, 8u);
    }

    v10 = [(AccessoryIAPInterface *)self setProperty:v7 forInterfaceNum:interfaceCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)unlockOtherInterfaces
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  interfacePropertiesArray = [(AccessoryIAPInterface *)self interfacePropertiesArray];

  if (interfacePropertiesArray)
  {
    interfacePropertiesArray2 = [(AccessoryIAPInterface *)self interfacePropertiesArray];
    [dictionary setObject:interfacePropertiesArray2 forKey:@"InterfaceProperties"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [dictionary setObject:v6 forKey:@"Authenticated"];

  v7 = [(AccessoryIAPInterface *)self setInterfaceProperties:dictionary];
  return v7;
}

- (BOOL)lockOtherInterfaces
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  [dictionary setObject:v4 forKey:@"Authenticated"];

  LOBYTE(self) = [(AccessoryIAPInterface *)self setInterfaceProperties:dictionary];
  return self;
}

- (void)presentNotSupportNotification
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = acc_userNotifications_accessoryNotSupported();
  v4 = [(NSString *)self->_identifier copy];
  [v3 setGroupIdentifier:v4];

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
      [IAPDataBuffer initWithiAPInterface:];
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
    vid = self->_vid;
    pid = self->_pid;
    registryEntryID = self->_registryEntryID;
    groupIdentifier = [v3 groupIdentifier];
    v13 = 136316418;
    v14 = "[AccessoryIAPInterface presentNotSupportNotification]";
    v15 = 1024;
    v16 = vid;
    v17 = 1024;
    v18 = pid;
    v19 = 2048;
    v20 = registryEntryID;
    v21 = 2112;
    v22 = groupIdentifier;
    v23 = 2112;
    v24 = v3;
    _os_log_impl(&dword_2336F5000, v7, OS_LOG_TYPE_DEFAULT, "%s: vid/pid 0x%X/0x%X, registryID 0x%llx, groupidentifer %@, pAccErrorNotification %@", &v13, 0x36u);
  }

  v12 = +[ACCUserNotificationManager sharedManager];
  [v12 presentNotification:v3 completionHandler:0];
}

- (void)dismissNotSupportNotification
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(NSString *)self->_identifier copy];
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
      [IAPDataBuffer initWithiAPInterface:];
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
    vid = self->_vid;
    pid = self->_pid;
    registryEntryID = self->_registryEntryID;
    v11 = 136316162;
    v12 = "[AccessoryIAPInterface dismissNotSupportNotification]";
    v13 = 1024;
    v14 = vid;
    v15 = 1024;
    v16 = pid;
    v17 = 2048;
    v18 = registryEntryID;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_2336F5000, v6, OS_LOG_TYPE_DEFAULT, "%s: vid/pid 0x%X/0x%X, registryID 0x%llx, groupidentifer %@", &v11, 0x2Cu);
  }

  v10 = +[ACCUserNotificationManager sharedManager];
  [v10 dismissNotificationsWithGroupIdentifier:v3];
}

+ (unint64_t)getRegistryEntryIDFromService:(unsigned int)service
{
  entryID = 0;
  if (IORegistryEntryGetRegistryEntryID(service, &entryID))
  {
    return 0;
  }

  else
  {
    return entryID;
  }
}

- (void)configureInterface:skipPipeSetup:.cold.11()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)configureInterface:skipPipeSetup:.cold.13()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)configureInterface:skipPipeSetup:.cold.15()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)configureInterface:(os_log_t)log skipPipeSetup:.cold.16(unsigned __int8 *a1, unsigned __int8 *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_debug_impl(&dword_2336F5000, log, OS_LOG_TYPE_DEBUG, "Interface class %d, subclass %d", v5, 0xEu);
}

- (void)configureInterface:skipPipeSetup:.cold.17()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)configureInterface:skipPipeSetup:.cold.18()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)configureInterface:skipPipeSetup:.cold.19()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)configureInterface:skipPipeSetup:.cold.20()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)configureInterface:skipPipeSetup:.cold.22()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)configureInterface:skipPipeSetup:.cold.23()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)configureInterface:skipPipeSetup:.cold.25()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)configureInterface:skipPipeSetup:.cold.26()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)configureInterface:skipPipeSetup:.cold.28()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)configureInterface:skipPipeSetup:.cold.29()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)configureInterface:skipPipeSetup:.cold.30()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)configureInterface:skipPipeSetup:.cold.31()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)configureInterface:skipPipeSetup:.cold.34()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeData:.cold.3()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)writeData:(void *)a1 .cold.5(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = [a1 length];
  _os_log_debug_impl(&dword_2336F5000, a2, OS_LOG_TYPE_DEBUG, "Wrote %lu bytes to USB!", &v3, 0xCu);
}

- (void)setInterfaceProperties:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)setInterfaceProperties:.cold.4()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)setInterfaceProperties:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end