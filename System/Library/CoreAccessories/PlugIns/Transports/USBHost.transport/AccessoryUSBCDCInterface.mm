@interface AccessoryUSBCDCInterface
+ (unint64_t)getRegistryEntryIDFromService:(unsigned int)service;
- (AccessoryUSBCDCInterface)init;
- (AccessoryUSBCDCInterface)initWithInterface:(unsigned int)interface protocol:(id)protocol endpointUUID:(id)d andDataInHandler:(id)handler;
- (BOOL)openCDCInterface;
- (id)description;
- (int)writeData:(id)data;
- (uint64_t)openCDCInterface;
- (void)_handleReadDataCallback:(int)callback revent:(unint64_t)revent t_look:(unint64_t)t_look;
- (void)_poll:(unsigned int)_poll txCommitted:(unsigned int)committed;
- (void)_processInterface:(unsigned int)interface;
- (void)closeCDCInterface;
- (void)dealloc;
- (void)openCDCInterface;
- (void)shuttingDownSession;
@end

@implementation AccessoryUSBCDCInterface

- (AccessoryUSBCDCInterface)init
{
  [MEMORY[0x277CBEAD8] raise:@"AccessoryUSBCDCInterface" format:@"must call initWithInterface:protocol:endpointUUID:andDataInHandler:"];

  return 0;
}

- (void)dealloc
{
  protocolName = self->_protocolName;
  self->_protocolName = 0;

  [(AccessoryUSBCDCInterface *)self closeCDCInterface];
  cdcDataService = self->_cdcDataService;
  if (cdcDataService)
  {
    IOObjectRelease(cdcDataService);
  }

  usbService = self->_usbService;
  if (usbService)
  {
    IOObjectRelease(usbService);
  }

  notiPort = self->_notiPort;
  if (notiPort)
  {
    IONotificationPortDestroy(notiPort);
    self->_notiPort = 0;
  }

  v7.receiver = self;
  v7.super_class = AccessoryUSBCDCInterface;
  [(AccessoryUSBCDCInterface *)&v7 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = AccessoryUSBCDCInterface;
  v4 = [(AccessoryUSBCDCInterface *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ endpointUUID: %@", v4, self->_endpointUUID];

  return v5;
}

- (AccessoryUSBCDCInterface)initWithInterface:(unsigned int)interface protocol:(id)protocol endpointUUID:(id)d andDataInHandler:(id)handler
{
  v8 = *&interface;
  protocolCopy = protocol;
  dCopy = d;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = AccessoryUSBCDCInterface;
  v13 = [(AccessoryUSBCDCInterface *)&v21 init];
  if (v13)
  {
    v14 = [protocolCopy copy];
    protocolName = v13->_protocolName;
    v13->_protocolName = v14;

    v16 = [dCopy copy];
    endpointUUID = v13->_endpointUUID;
    v13->_endpointUUID = v16;

    v18 = MEMORY[0x2383AB1E0](handlerCopy);
    dataInHandler = v13->_dataInHandler;
    v13->_dataInHandler = v18;

    *&v13->_cdcDataService = 0;
    v13->_cdcConnect = 0;
    [(AccessoryUSBCDCInterface *)v13 _processInterface:v8];
  }

  return v13;
}

- (void)shuttingDownSession
{
  v9 = *MEMORY[0x277D85DE8];
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
    protocolName = self->_protocolName;
    v7 = 138412290;
    v8 = protocolName;
    _os_log_impl(&dword_2336F5000, v5, OS_LOG_TYPE_DEFAULT, "Shutting down session for USB CDC protocol %@", &v7, 0xCu);
  }

  [(AccessoryUSBCDCInterface *)self closeCDCInterface];
}

- (BOOL)openCDCInterface
{
  v37 = *MEMORY[0x277D85DE8];
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(AccessoryUSBCDCInterface *)self openCDCInterface];
  }

  v6 = MEMORY[0x277D85F48];
  v7 = IOServiceOpen(self->_cdcDataService, *MEMORY[0x277D85F48], 0, &self->_cdcConnect);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v8 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v7;
    _os_log_impl(&dword_2336F5000, v8, OS_LOG_TYPE_DEFAULT, "openCDCInterface IOServiceOpen kr = 0x%X", buf, 8u);
  }

  if (!v7)
  {
    *buf = 0;
    v36 = 0;
    v10 = IOConnectCallMethod(self->_cdcConnect, 0, buf, 2u, 0, 0, 0, 0, 0, 0);
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
      *v34 = 67109120;
      *&v34[4] = v10;
      _os_log_impl(&dword_2336F5000, v11, OS_LOG_TYPE_DEFAULT, "openCDCInterface IOConnectCallMethod kr = 0x%X", v34, 8u);
    }
  }

  *buf = 0xAAAAAAAAAAAAAAAALL;
  *v34 = 0xAAAAAAAAAAAAAAAALL;
  v13 = MEMORY[0x2383AABD0](self->_cdcConnect, 0, *v6, buf, v34, 1);
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

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v32 = 67109120;
    v33 = v13;
    _os_log_impl(&dword_2336F5000, v14, OS_LOG_TYPE_INFO, "openCDCInterface kIOSerialMemoryArena kr = 0x%X", v32, 8u);
  }

  if (v13)
  {
    goto LABEL_75;
  }

  self->arena = *buf;
  v16 = MEMORY[0x2383AABD0](self->_cdcConnect, 1, *v6, buf, v34, 1);
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

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *v32 = 67109120;
    v33 = v16;
    _os_log_impl(&dword_2336F5000, v17, OS_LOG_TYPE_INFO, "openCDCInterface kIOSerialMemoryRxBuf kr = 0x%X", v32, 8u);
  }

  if (v16)
  {
    goto LABEL_75;
  }

  self->rxBuf = (*buf + self->arena->var6);
  v19 = MEMORY[0x2383AABD0](self->_cdcConnect, 2, *v6, buf, v34, 1);
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

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *v32 = 67109120;
    v33 = v19;
    _os_log_impl(&dword_2336F5000, v20, OS_LOG_TYPE_INFO, "openCDCInterface kIOSerialMemoryTxBuf kr = 0x%X", v32, 8u);
  }

  if (v19)
  {
    goto LABEL_75;
  }

  self->txBuf = (*buf + self->arena->var7);
  memset(&inputStruct, 0, sizeof(inputStruct));
  inputStructCnt = 72;
  *input = xmmword_233713860;
  v22 = IOConnectCallMethod(self->_cdcConnect, 2u, input, 1u, 0, 0, 0, 0, &inputStruct, &inputStructCnt);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v23 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v23 = MEMORY[0x277D86220];
    v24 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *v32 = 67109120;
    v33 = v22;
    _os_log_impl(&dword_2336F5000, v23, OS_LOG_TYPE_INFO, "openCDCInterface IOConnectCallMethod 1 kr = 0x%X", v32, 8u);
  }

  if (v22)
  {
    goto LABEL_75;
  }

  inputStruct.c_cflag = inputStruct.c_cflag & 0xFFFFFFFFFFFF20FFLL | 0xCB00;
  cfsetispeed(&inputStruct, 0xE1000uLL);
  cfsetospeed(&inputStruct, 0xE1000uLL);
  v25 = IOConnectCallMethod(self->_cdcConnect, 2u, &input[1], 1u, &inputStruct, inputStructCnt, 0, 0, 0, 0);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v26 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v26 = MEMORY[0x277D86220];
    v27 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *v32 = 67109120;
    v33 = v25;
    _os_log_impl(&dword_2336F5000, v26, OS_LOG_TYPE_INFO, "openCDCInterface IOConnectCallMethod 2 kr = 0x%X", v32, 8u);
  }

  if (v25)
  {
LABEL_75:
    [(AccessoryUSBCDCInterface *)self openCDCInterface];
    return 0;
  }

  else
  {
    [(AccessoryUSBCDCInterface *)self _poll:0 txCommitted:0];
    return 1;
  }
}

- (void)closeCDCInterface
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D85F48];
  if (self->rxBuf)
  {
    v4 = MEMORY[0x2383AABE0](self->_cdcConnect, 1, *MEMORY[0x277D85F48]);
    if (v4)
    {
      v5 = v4;
      if (gLogObjects)
      {
        v6 = gNumLogObjects < 1;
      }

      else
      {
        v6 = 1;
      }

      if (v6)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
        }

        v8 = MEMORY[0x277D86220];
        v7 = MEMORY[0x277D86220];
      }

      else
      {
        v8 = *gLogObjects;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v17 = 67109120;
        v18 = v5;
        _os_log_impl(&dword_2336F5000, v8, OS_LOG_TYPE_INFO, "closeCDCInterface kIOSerialMemoryRxBuf kr = 0x%X", &v17, 8u);
      }
    }

    self->rxBuf = 0;
  }

  if (self->txBuf)
  {
    v9 = MEMORY[0x2383AABE0](self->_cdcConnect, 2, *v3);
    if (v9)
    {
      v10 = v9;
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

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v17 = 67109120;
        v18 = v10;
        _os_log_impl(&dword_2336F5000, v11, OS_LOG_TYPE_INFO, "closeCDCInterface kIOSerialMemoryTxBuf kr = 0x%X", &v17, 8u);
      }
    }

    self->txBuf = 0;
  }

  if (self->arena)
  {
    v13 = MEMORY[0x2383AABE0](self->_cdcConnect, 0, *v3);
    if (v13)
    {
      v14 = v13;
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

      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = 67109120;
        v18 = v14;
        _os_log_impl(&dword_2336F5000, v15, OS_LOG_TYPE_INFO, "closeCDCInterface kIOSerialMemoryArena kr = 0x%X", &v17, 8u);
      }
    }

    self->arena = 0;
  }

  IOServiceClose(self->_cdcConnect);
}

- (int)writeData:(id)data
{
  v33 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  arena = self->arena;
  v6 = -1 << arena->var9;
  var3 = arena->var3;
  v8 = (arena->var4 + ~var3) & ~v6;
  if (v8 >= [dataCopy length])
  {
    v8 = [dataCopy length];
  }

  if (gLogObjects)
  {
    v9 = gNumLogObjects < 1;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *gLogObjects;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = dataCopy;
    _os_log_impl(&dword_2336F5000, v11, OS_LOG_TYPE_DEFAULT, "CDC Data to write = %@", buf, 0xCu);
  }

  if (v8)
  {
    v12 = ~v6;
    v29 = dataCopy;
    bytes = [dataCopy bytes];
    v14 = 0;
    v15 = MEMORY[0x277D86220];
    do
    {
      v16 = (var3 + v14) & v12;
      self->txBuf[self->arena->var7 + v16] = *(bytes + v14);
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
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v17;
          *&buf[12] = 1024;
          *&buf[14] = v18;
          _os_log_error_impl(&dword_2336F5000, v15, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v20 = v15;
        v21 = v15;
      }

      else
      {
        v21 = *gLogObjects;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = self->txBuf[self->arena->var7 + v16];
        v23 = *(bytes + v14);
        *buf = 67109632;
        *&buf[4] = v22;
        *&buf[8] = 1024;
        *&buf[10] = v14;
        *&buf[14] = 1024;
        *&buf[16] = v23;
        _os_log_debug_impl(&dword_2336F5000, v21, OS_LOG_TYPE_DEBUG, "txBuf[arena->txqoffset + ((pi++) & mask)] = 0x%X, dataBuf[%d] = 0x%X", buf, 0x14u);
      }

      ++v14;
    }

    while (v8 != v14);
    *buf = 0;
    *&buf[8] = v8;
    v24 = IOConnectCallMethod(self->_cdcConnect, 1u, buf, 2u, 0, 0, 0, 0, 0, 0);
    if (v24)
    {
      v25 = v24;
      dataCopy = v29;
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v26 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
        }

        v26 = MEMORY[0x277D86220];
        v27 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 67109120;
        v31 = v25;
        _os_log_impl(&dword_2336F5000, v26, OS_LOG_TYPE_DEFAULT, "writeData kr = 0x%X", v30, 8u);
      }

      v8 = 0;
    }

    else
    {
      dataCopy = v29;
    }
  }

  return v8;
}

- (void)_poll:(unsigned int)_poll txCommitted:(unsigned int)committed
{
  v26 = *MEMORY[0x277D85DE8];
  reference[0] = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  reference[1] = _asyncCallback;
  selfCopy = self;
  input[0] = _poll;
  input[1] = committed;
  input[2] = 1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  v13[0] = 0;
  v13[1] = 0;
  outputCnt = 2;
  cdcConnect = self->_cdcConnect;
  MachPort = IONotificationPortGetMachPort(self->_notiPort);
  v6 = IOConnectCallAsyncMethod(cdcConnect, 1u, MachPort, reference, 3u, input, 3u, 0, 0, v13, &outputCnt, 0, 0);
  if (v6)
  {
    v7 = v6;
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v8 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v12 = v7;
      _os_log_impl(&dword_2336F5000, v8, OS_LOG_TYPE_INFO, "_poll kr = 0x%X", buf, 8u);
    }
  }
}

- (void)_handleReadDataCallback:(int)callback revent:(unint64_t)revent t_look:(unint64_t)t_look
{
  v27 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 1;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *gLogObjects;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AccessoryUSBCDCInterface _handleReadDataCallback:v8 revent:? t_look:?];
  }

  var8 = self->arena->var8;
  explicit = atomic_load_explicit(self->arena, memory_order_acquire);
  var1 = self->arena->var1;
  v12 = explicit - var1;
  if (explicit != var1)
  {
    v13 = ~(-1 << var8);
    MEMORY[0x28223BE20]();
    memset(&buf[-((v12 + 15) & 0x1FFFFFFF0)], 170, v12);
    rxBuf = self->rxBuf;
    var6 = self->arena->var6;
    v16 = v12;
    v17 = &buf[-((v12 + 15) & 0x1FFFFFFF0)];
    do
    {
      v18 = var1++ & v13;
      *v17++ = rxBuf[var6 + v18];
      --v16;
    }

    while (v16);
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:&buf[-((v12 + 15) & 0x1FFFFFFF0)] length:v12];
    if (gLogObjects)
    {
      v20 = gNumLogObjects < 1;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v22 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    else
    {
      v22 = *gLogObjects;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v19;
      _os_log_impl(&dword_2336F5000, v22, OS_LOG_TYPE_DEFAULT, "receivedData %@", buf, 0xCu);
    }

    dataInHandler = [(AccessoryUSBCDCInterface *)self dataInHandler];

    if (dataInHandler)
    {
      dataInHandler2 = [(AccessoryUSBCDCInterface *)self dataInHandler];
      (dataInHandler2)[2](dataInHandler2, self, v19);
    }
  }

  [(AccessoryUSBCDCInterface *)self _poll:v12 txCommitted:0];
}

- (void)_processInterface:(unsigned int)interface
{
  v3 = *&interface;
  v67 = *MEMORY[0x277D85DE8];
  IOObjectRetain(interface);
  if (v3)
  {
    self->_registryEntryID = [AccessoryUSBCDCInterface getRegistryEntryIDFromService:v3];
    properties = 0;
    v5 = *MEMORY[0x277CBECE8];
    v6 = IORegistryEntryCreateCFProperties(v3, &properties, *MEMORY[0x277CBECE8], 0);
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = properties == 0;
    }

    if (v7)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v8 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
        }

        v8 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(AccessoryUSBCDCInterface *)v6 _processInterface:v8];
      }
    }

    else
    {
      v9 = [(__CFDictionary *)properties objectForKey:@"locationID"];
      self->_locationID = [v9 intValue];

      ioregProperties = self->_ioregProperties;
      self->_ioregProperties = properties;

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
        v13 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_ioregProperties;
        *buf = 138412290;
        *&buf[4] = v14;
        _os_log_impl(&dword_2336F5000, v11, OS_LOG_TYPE_DEFAULT, "_ioregProperties = %@", buf, 0xCu);
      }

      iterator = 0;
      object = v3;
      MEMORY[0x2383AACC0](v3, "IOService", &iterator);
      v15 = IOIteratorNext(iterator);
      if (v15)
      {
        v16 = v15;
        v17 = MEMORY[0x277D86220];
        do
        {
          v63 = 0u;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          *buf = 0u;
          v18 = MEMORY[0x2383AACD0](v16, buf);
          v19 = gLogObjects;
          v20 = gNumLogObjects;
          if (gLogObjects)
          {
            v21 = gNumLogObjects <= 0;
          }

          else
          {
            v21 = 1;
          }

          v22 = !v21;
          if (v18)
          {
            v23 = v18;
            if (v22)
            {
              v24 = *gLogObjects;
            }

            else
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *v64 = 134218240;
                *v65 = v19;
                *&v65[8] = 1024;
                v66 = v20;
                _os_log_error_impl(&dword_2336F5000, v17, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v64, 0x12u);
              }

              v25 = v17;
              v24 = v17;
            }

            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *v64 = 67109120;
              *v65 = v23;
              _os_log_error_impl(&dword_2336F5000, v24, OS_LOG_TYPE_ERROR, "IORegistryEntryGetName failed: %08x", v64, 8u);
            }
          }

          else
          {
            if (v22)
            {
              v24 = *gLogObjects;
            }

            else
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *v64 = 134218240;
                *v65 = v19;
                *&v65[8] = 1024;
                v66 = v20;
                _os_log_error_impl(&dword_2336F5000, v17, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v64, 0x12u);
              }

              v26 = v17;
              v24 = v17;
            }

            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *v64 = 136315138;
              *v65 = buf;
              _os_log_debug_impl(&dword_2336F5000, v24, OS_LOG_TYPE_DEBUG, "Registry entry name: %s", v64, 0xCu);
            }
          }

          if (IOObjectConformsTo(v16, "IOSerialStreamSync"))
          {
            v27 = gLogObjects;
            v28 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 1)
            {
              v29 = *gLogObjects;
            }

            else
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *v64 = 134218240;
                *v65 = v27;
                *&v65[8] = 1024;
                v66 = v28;
                _os_log_error_impl(&dword_2336F5000, v17, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v64, 0x12u);
              }

              v30 = v17;
              v29 = v17;
            }

            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *v64 = 0;
              _os_log_impl(&dword_2336F5000, v29, OS_LOG_TYPE_DEFAULT, "Found IOSerialStreamSync", v64, 2u);
            }

            self->_cdcDataService = v16;
            IOObjectRetain(v16);
            v31 = gLogObjects;
            v32 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 1)
            {
              v33 = *gLogObjects;
            }

            else
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *v64 = 134218240;
                *v65 = v31;
                *&v65[8] = 1024;
                v66 = v32;
                _os_log_error_impl(&dword_2336F5000, v17, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v64, 0x12u);
              }

              v34 = v17;
              v33 = v17;
            }

            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              cdcDataService = self->_cdcDataService;
              *v64 = 67109376;
              *v65 = cdcDataService;
              *&v65[4] = 1024;
              *&v65[6] = v16;
              _os_log_impl(&dword_2336F5000, v33, OS_LOG_TYPE_DEFAULT, "_cdcDataService = %u, cdcService = %u", v64, 0xEu);
            }
          }

          v53 = 0;
          v36 = IORegistryEntryCreateCFProperties(v16, &v53, v5, 0);
          v37 = v36;
          v38 = gLogObjects;
          v39 = gNumLogObjects;
          if (gLogObjects)
          {
            v40 = gNumLogObjects <= 0;
          }

          else
          {
            v40 = 1;
          }

          v41 = !v40;
          if (v36 || !v53)
          {
            if (v41)
            {
              v43 = *gLogObjects;
            }

            else
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *v64 = 134218240;
                *v65 = v38;
                *&v65[8] = 1024;
                v66 = v39;
                _os_log_error_impl(&dword_2336F5000, v17, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v64, 0x12u);
              }

              v44 = v17;
              v43 = v17;
            }

            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              *v64 = 67109120;
              *v65 = v37;
              _os_log_error_impl(&dword_2336F5000, v43, OS_LOG_TYPE_ERROR, "Failed to get childServiceProperties error: %08x", v64, 8u);
            }
          }

          else
          {
            if (v41)
            {
              v42 = *gLogObjects;
            }

            else
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *v64 = 134218240;
                *v65 = v38;
                *&v65[8] = 1024;
                v66 = v39;
                _os_log_error_impl(&dword_2336F5000, v17, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v64, 0x12u);
              }

              v45 = v17;
              v42 = v17;
            }

            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              *v64 = 138412290;
              *v65 = v53;
              _os_log_debug_impl(&dword_2336F5000, v42, OS_LOG_TYPE_DEBUG, "childServiceProperties = %@", v64, 0xCu);
            }

            CFRelease(v53);
          }

          IOObjectRelease(v16);
          v16 = IOIteratorNext(iterator);
        }

        while (v16);
      }

      IOObjectRelease(iterator);
      v46 = IONotificationPortCreate(*MEMORY[0x277CD28A0]);
      self->_notiPort = v46;
      if (v46)
      {
        Main = CFRunLoopGetMain();
        RunLoopSource = IONotificationPortGetRunLoopSource(self->_notiPort);
        CFRunLoopAddSource(Main, RunLoopSource, *MEMORY[0x277CBF058]);
        v49 = object;
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v50 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
          }

          v50 = MEMORY[0x277D86220];
          v51 = MEMORY[0x277D86220];
        }

        v49 = object;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2336F5000, v50, OS_LOG_TYPE_DEFAULT, "Could not create notification port", buf, 2u);
        }
      }

      self->_usbService = v49;
      IOObjectRetain(v49);
      IOObjectRelease(v49);
    }
  }
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

- (void)openCDCInterface
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *(self + 24);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_2336F5000, a2, OS_LOG_TYPE_DEBUG, "_cdcDataService = %d", v3, 8u);
}

- (uint64_t)openCDCInterface
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = gLogObjects;
  v3 = gNumLogObjects;
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
      *v13 = 134218240;
      *&v13[4] = v2;
      *&v13[12] = 1024;
      *&v13[14] = v3;
      OUTLINED_FUNCTION_1_0(&dword_2336F5000, MEMORY[0x277D86220], v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v6, v7, v8, v9, *v13, *&v13[16], v14);
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *gLogObjects;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_2336F5000, v11, OS_LOG_TYPE_DEFAULT, "Failed to create CDC interface", v13, 2u);
  }

  return [self closeCDCInterface];
}

- (void)_processInterface:(int)a1 .cold.2(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_2336F5000, a2, OS_LOG_TYPE_ERROR, "Failed to get serviceProperties error: %08x", v2, 8u);
}

@end