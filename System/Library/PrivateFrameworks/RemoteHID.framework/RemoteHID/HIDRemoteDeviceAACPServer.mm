@interface HIDRemoteDeviceAACPServer
- (BOOL)createRemoteDevice:(id)device deviceID:(unint64_t)d property:(id)property;
- (HIDRemoteDeviceAACPServer)initWithQueue:(id)queue;
- (id)description;
- (int)remoteDeviceGetReport:(id)report type:(int64_t)type reportID:(unsigned __int8)d report:(id)a6;
- (int)remoteDeviceSetReport:(id)report type:(int64_t)type reportID:(unsigned __int8)d report:(id)a6;
- (int)sendMessageBTDevice:(BTDeviceImpl *)device data:(char *)data size:(unint64_t)size transportVersion:(unsigned __int8)version side:(unsigned __int8)side;
- (os_state_data_s)stateHandler:(os_state_hints_s *)handler;
- (void)activate;
- (void)addBTDevice:(BTDeviceImpl *)device;
- (void)btAccessoryEventHandler:(BTDeviceImpl *)handler event:(int)event state:(int)state;
- (void)btDeviceMessageHandler:(BTDeviceImpl *)handler type:(int)type data:(char *)data size:(unint64_t)size;
- (void)btServiceEventHandler:(BTDeviceImpl *)handler services:(unsigned int)services eventType:(int)type event:(unsigned int)event result:(int)result;
- (void)btSessionCreate;
- (void)btSessionEventHandler:(BTSessionImpl *)handler event:(int)event result:(int)result;
- (void)btSessionInit:(BTSessionImpl *)init;
- (void)cancel;
- (void)dealloc;
- (void)remoteDeviceRefresh:(id)refresh deviceID:(unint64_t)d transportVersion:(unsigned __int8)version side:(unsigned __int8)side;
- (void)removeAllBTDevices;
- (void)removeBTDevice:(BTDeviceImpl *)device;
- (void)setMobileBluetoothInterface:(MobileBluetoothInterface *)interface;
- (void)timeSyncEnable:(BOOL)enable forEndpointID:(unint64_t)d;
@end

@implementation HIDRemoteDeviceAACPServer

- (HIDRemoteDeviceAACPServer)initWithQueue:(id)queue
{
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = HIDRemoteDeviceAACPServer;
  v5 = [(HIDRemoteDeviceServer *)&v12 initWithQueue:queueCopy];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.hidrc.bluetooth", 0);
    btQueue = v5->_btQueue;
    v5->_btQueue = v6;

    v8 = [MEMORY[0x277CBEB28] dataWithLength:1050];
    decodeBuff = v5->_decodeBuff;
    v5->_decodeBuff = v8;

    MobileBluetoothInterface::create(v10);
  }

  return 0;
}

- (void)dealloc
{
  mb = self->_mb;
  if (mb)
  {
    MEMORY[0x26671F420](mb, 0x81C40B8603338);
  }

  v4.receiver = self;
  v4.super_class = HIDRemoteDeviceAACPServer;
  [(HIDRemoteDeviceAACPServer *)&v4 dealloc];
}

- (void)setMobileBluetoothInterface:(MobileBluetoothInterface *)interface
{
  mb = self->_mb;
  if (mb)
  {
    MEMORY[0x26671F420](mb, 0x81C40B8603338);
  }

  self->_mb = interface;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  tsID = self->_tsID;
  v7.receiver = self;
  v7.super_class = HIDRemoteDeviceAACPServer;
  v4 = [(HIDRemoteDeviceServer *)&v7 description];
  v5 = [v2 stringWithFormat:@"<HIDRemoteDeviceAACPServer timeSyncID:%llu %@>", tsID, v4];

  return v5;
}

- (void)activate
{
  [(HIDRemoteDeviceAACPServer *)self btSessionCreate];
  btQueue = [(HIDRemoteDeviceAACPServer *)self btQueue];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __37__HIDRemoteDeviceAACPServer_activate__block_invoke;
  v8 = &unk_279AFD190;
  selfCopy = self;
  self->_stateHandler = os_state_add_handler();

  v4.receiver = self;
  v4.super_class = HIDRemoteDeviceAACPServer;
  [(HIDRemoteDeviceServer *)&v4 activate];
}

- (void)cancel
{
  if (self->_session)
  {
    objc_storeStrong(&self->_me, self);
    (*(self->_mb->var0 + 1))(self->_mb, &self->_session);
  }

  [(HIDRemoteDeviceAACPServer *)self removeAllBTDevices];
  if (self->_stateHandler)
  {
    os_state_remove_handler();
  }

  v3.receiver = self;
  v3.super_class = HIDRemoteDeviceAACPServer;
  [(HIDRemoteDeviceServer *)&v3 cancel];
}

- (void)btSessionCreate
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)btSessionInit:(BTSessionImpl *)init
{
  v17[1] = *MEMORY[0x277D85DE8];
  self->_session = init;
  v4 = (*(self->_mb->var0 + 2))(self->_mb, init, &self->_manager);
  if (v4)
  {
    v5 = RemoteHIDLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceAACPServer btSessionInit:];
    }

LABEL_13:

    return;
  }

  v6 = (*(self->_mb->var0 + 3))(self->_mb, self->_manager, &[HIDRemoteDeviceAACPServer btSessionInit:]::accessoryCallbacks, self);
  if (v6)
  {
    v5 = RemoteHIDLog(v6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceAACPServer btSessionInit:];
    }

    goto LABEL_13;
  }

  v7 = (*(self->_mb->var0 + 9))(self->_mb, self->_session, HIDAccesoryServiceEventCallback, self);
  if (v7)
  {
    v5 = RemoteHIDLog(v7);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceAACPServer btSessionInit:];
    }

    goto LABEL_13;
  }

  v17[0] = 0xAAAAAAAAAAAAAAAALL;
  v8 = (*(self->_mb->var0 + 13))(self->_mb, self->_session, v17);
  if (v8)
  {
    v5 = RemoteHIDLog(v8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceAACPServer btSessionInit:];
    }

    goto LABEL_13;
  }

  v16 = 256;
  memset(v14, 170, sizeof(v14));
  v9 = (*(self->_mb->var0 + 14))(self->_mb, v17[0], v14, &v16, 256);
  if (v9)
  {
    v10 = RemoteHIDLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceAACPServer btSessionInit:];
    }
  }

  else if (v16)
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v15 = 0;
      (*(self->_mb->var0 + 10))(self->_mb, v14[v11], &v15);
      [(HIDRemoteDeviceAACPServer *)self btServiceEventHandler:v14[v11] services:v15 eventType:0 event:11 result:0];
      v11 = v12;
    }

    while (v16 > v12++);
  }
}

- (void)btSessionEventHandler:(BTSessionImpl *)handler event:(int)event result:(int)result
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = RemoteHIDLog(self);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    handlerCopy = handler;
    v19 = 1024;
    eventCopy = event;
    v21 = 1024;
    resultCopy = result;
    _os_log_impl(&dword_261D9C000, v9, OS_LOG_TYPE_DEFAULT, "btSessionEventHandler session:%p event:%d result:%d", buf, 0x18u);
  }

  switch(event)
  {
    case 2:
      [(HIDRemoteDeviceAACPServer *)self removeAllBTDevices];
      queue = [(HIDRemoteDeviceServer *)self queue];
      dispatch_async_and_wait(queue, &__block_literal_global);

      self->_session = 0;
      self->_manager = 0;
      v10 = dispatch_time(0, 1000000000);
      btQueue = [(HIDRemoteDeviceAACPServer *)self btQueue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __64__HIDRemoteDeviceAACPServer_btSessionEventHandler_event_result___block_invoke_3;
      v15[3] = &unk_279AFD1B8;
      v15[4] = self;
      v12 = v15;
LABEL_10:
      dispatch_after(v10, btQueue, v12);

      return;
    case 1:
      me = self->_me;
      self->_me = 0;

      return;
    case 0:
      if (!result)
      {
        [(HIDRemoteDeviceAACPServer *)self btSessionInit:handler];
        return;
      }

      v10 = dispatch_time(0, 1000000000);
      btQueue = [(HIDRemoteDeviceAACPServer *)self btQueue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __64__HIDRemoteDeviceAACPServer_btSessionEventHandler_event_result___block_invoke;
      v16[3] = &unk_279AFD1B8;
      v16[4] = self;
      v12 = v16;
      goto LABEL_10;
  }
}

- (void)addBTDevice:(BTDeviceImpl *)device
{
  *&v21[5] = *MEMORY[0x277D85DE8];
  v19 = 0;
  v5 = (*(self->_mb->var0 + 4))(self->_mb, self->_manager, device, 20, &v19);
  v6 = v5;
  v7 = RemoteHIDLog(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v21[0] = v6;
    LOWORD(v21[1]) = 1024;
    *(&v21[1] + 2) = v19;
    _os_log_impl(&dword_261D9C000, v7, OS_LOG_TYPE_INFO, "BTAccessoryManagerGetFeatureCapability:%d (FEATURE_SENSOR_DATA:%d)", buf, 0xEu);
  }

  v8 = (*(self->_mb->var0 + 5))(self->_mb, self->_manager, &[HIDRemoteDeviceAACPServer addBTDevice:]::messageCallback, 2048, self);
  if (v8)
  {
    v9 = RemoteHIDLog(v8);
    if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceAACPServer addBTDevice:];
    }

    goto LABEL_20;
  }

  v10 = (*(self->_mb->var0 + 5))(self->_mb, self->_manager, &[HIDRemoteDeviceAACPServer addBTDevice:]::messageCallback, 0x40000, self);
  if (v10)
  {
    v9 = RemoteHIDLog(v10);
    if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceAACPServer addBTDevice:];
    }

    goto LABEL_20;
  }

  v11 = (*(self->_mb->var0 + 5))(self->_mb, self->_manager, &[HIDRemoteDeviceAACPServer addBTDevice:]::messageCallback, 0x100000, self);
  if (v11)
  {
    v9 = RemoteHIDLog(v11);
    if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceAACPServer addBTDevice:];
    }

    goto LABEL_20;
  }

  v9 = [(HIDRemoteEndpoint *)[HIDAACPRemoteEndpoint alloc] initWithID:device];
  [(HIDAACPRemoteEndpoint *)v9 setServer:self];
  v12 = [(HIDRemoteDeviceServer *)self getEndpoint:[(HIDRemoteEndpoint *)v9 endpointID]];
  v13 = v12 == 0;

  if (v13)
  {
    v15 = RemoteHIDLog(v14);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *v21 = device;
    v16 = "HID AACP device:%p";
  }

  else
  {
    v15 = RemoteHIDLog(v14);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *v21 = device;
    v16 = "HID AACP device:%p already connected";
  }

  _os_log_impl(&dword_261D9C000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
LABEL_18:

  [(HIDRemoteDeviceServer *)self connectEndpoint:v9];
  v18[0] = 0xAAA00200AAAAAAAALL;
  [(HIDRemoteDeviceAACPServer *)self sendMessageBTDevice:device data:v18 size:8 transportVersion:0 side:0];
  [(HIDRemoteDeviceAACPServer *)self sendMessageBTDevice:device data:v18 size:8 transportVersion:1 side:0];
  v17 = [(HIDRemoteDeviceAACPServer *)self sendMessageBTDevice:device data:v18 size:8 transportVersion:1 side:1];
  if (v17)
  {
    RemoteHIDLog(v17);
    objc_claimAutoreleasedReturnValue();
    [HIDRemoteDeviceAACPServer addBTDevice:];
  }

LABEL_20:
}

- (int)sendMessageBTDevice:(BTDeviceImpl *)device data:(char *)data size:(unint64_t)size transportVersion:(unsigned __int8)version side:(unsigned __int8)side
{
  v39 = *MEMORY[0x277D85DE8];
  if (version)
  {
    v8 = 0x100000;
  }

  else
  {
    v8 = 2048;
  }

  v31 = 0;
  v32 = 0;
  if (size < 8)
  {
    v18 = 0;
LABEL_28:
    selfCopy2 = 5;
    goto LABEL_17;
  }

  versionCopy = version;
  sizeCopy = size;
  dataCopy = data;
  selfCopy = self;
  *data = 0;
  *(data + 1) = ++generation;
  data[3] = 2 * (side & 1);
  v13 = RemoteHIDLogPackets(self);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    deviceCopy = device;
    v35 = 1040;
    v36 = sizeCopy;
    v37 = 2096;
    v38 = dataCopy;
    _os_log_debug_impl(&dword_261D9C000, v13, OS_LOG_TYPE_DEBUG, "[%p] send packet:%{RemoteHID:packet}.*P", buf, 0x1Cu);
  }

  if (versionCopy)
  {
    encodeHeader(dataCopy, sizeCopy, 0, 0, &v31, 1);
    if (v14)
    {
      v15 = sizeCopy - 4;
      encode(dataCopy + 1, sizeCopy - 4, 0, 0, &v32, 0, 1);
      if (v16)
      {
        v17 = [MEMORY[0x277CBEB28] dataWithLength:v32 + v31];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
          encodeHeader(dataCopy, sizeCopy, [v18 mutableBytes], objc_msgSend(v18, "length"), &v31, 0);
          if (v20)
          {
            v21 = v18;
            mutableBytes = [v18 mutableBytes];
            v23 = v31;
            v24 = [v18 length];
            encode(dataCopy + 1, v15, (mutableBytes + v23), (v24 - v31), &v32, 0, 0);
            if (v25)
            {
              v26 = v18;
              dataCopy = [v18 mutableBytes];
              sizeCopy = [v18 length];
              v27 = v18;
              goto LABEL_15;
            }

            v30 = RemoteHIDLog(v25);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              [HIDRemoteDeviceAACPServer sendMessageBTDevice:data:size:transportVersion:side:];
            }
          }

          else
          {
            v30 = RemoteHIDLog(v20);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              [HIDRemoteDeviceAACPServer sendMessageBTDevice:data:size:transportVersion:side:];
            }
          }

          goto LABEL_27;
        }

        v30 = RemoteHIDLog(0);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [HIDRemoteDeviceAACPServer sendMessageBTDevice:data:size:transportVersion:side:];
        }
      }

      else
      {
        v30 = RemoteHIDLog(v16);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [HIDRemoteDeviceAACPServer sendMessageBTDevice:data:size:transportVersion:side:];
        }
      }
    }

    else
    {
      v30 = RemoteHIDLog(v14);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [HIDRemoteDeviceAACPServer sendMessageBTDevice:data:size:transportVersion:side:];
      }
    }

    v18 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v27 = 0;
LABEL_15:
  self = (*(selfCopy->_mb->var0 + 6))(selfCopy->_mb, selfCopy->_manager, v8, device, dataCopy, sizeCopy);
  selfCopy2 = self;
  if (self)
  {
    v18 = v27;
LABEL_17:
    RemoteHIDLog(self);
    objc_claimAutoreleasedReturnValue();
    [HIDRemoteDeviceAACPServer sendMessageBTDevice:data:size:transportVersion:side:];
    v27 = v18;
  }

  return selfCopy2;
}

- (void)removeBTDevice:(BTDeviceImpl *)device
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = RemoteHIDLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    deviceCopy = device;
    _os_log_impl(&dword_261D9C000, v5, OS_LOG_TYPE_DEFAULT, "HID AACP device remove:0x%llx", &v6, 0xCu);
  }

  [(HIDRemoteDeviceServer *)self disconnectEndpointID:device];
}

- (void)removeAllBTDevices
{
  endpoints = [(HIDRemoteDeviceServer *)self endpoints];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__HIDRemoteDeviceAACPServer_removeAllBTDevices__block_invoke;
  v4[3] = &unk_279AFD200;
  v4[4] = self;
  [endpoints enumerateObjectsUsingBlock:v4];
}

void __47__HIDRemoteDeviceAACPServer_removeAllBTDevices__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) removeBTDevice:{objc_msgSend(v3, "endpointID")}];
}

- (void)btDeviceMessageHandler:(BTDeviceImpl *)handler type:(int)type data:(char *)data size:(unint64_t)size
{
  *&v27[13] = *MEMORY[0x277D85DE8];
  mutableBytes = [(HIDRemoteDeviceServer *)self getEndpoint:?];
  v12 = mutableBytes;
  v22 = 0;
  if (!mutableBytes)
  {
    v17 = RemoteHIDLog(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceAACPServer btDeviceMessageHandler:type:data:size:];
    }

    goto LABEL_16;
  }

  if (type == 0x100000)
  {
    decodeHeader(data, size, [(NSMutableData *)self->_decodeBuff mutableBytes], [(NSMutableData *)self->_decodeBuff length]);
    if (v13)
    {
      v14 = decode(data, size, ([(NSMutableData *)self->_decodeBuff mutableBytes]+ 4), [(NSMutableData *)self->_decodeBuff length]- 4, &v22, 0);
      if (v14)
      {
        mutableBytes = [(NSMutableData *)self->_decodeBuff mutableBytes];
        data = mutableBytes;
        size = v22 + 4;
        goto LABEL_6;
      }

      v19 = RemoteHIDLog(v14);
      [HIDRemoteDeviceAACPServer btDeviceMessageHandler:v19 type:buf data:? size:?];
    }

    else
    {
      v18 = RemoteHIDLog(v13);
      [HIDRemoteDeviceAACPServer btDeviceMessageHandler:v18 type:buf data:? size:?];
    }

    v17 = RemoteHIDLogPackets(v20);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21 = mach_absolute_time();
      *buf = 134218754;
      *&buf[4] = handler;
      v24 = 2048;
      *v25 = v21;
      *&v25[8] = 1040;
      *&v25[10] = size;
      v26 = 2096;
      *v27 = data;
      _os_log_error_impl(&dword_261D9C000, v17, OS_LOG_TYPE_ERROR, "[%p] encoded packet - timestamp:%lld packet:%{RemoteHID:encodedpacket}.*P", buf, 0x26u);
    }

LABEL_16:

    goto LABEL_9;
  }

LABEL_6:
  v15 = RemoteHIDLogPackets(mutableBytes);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = mach_absolute_time();
    *buf = 134219010;
    *&buf[4] = handler;
    v24 = 1024;
    *v25 = type;
    *&v25[4] = 2048;
    *&v25[6] = v16;
    v26 = 1040;
    *v27 = size;
    v27[2] = 2096;
    *&v27[3] = data;
    _os_log_debug_impl(&dword_261D9C000, v15, OS_LOG_TYPE_DEBUG, "[%p] receive packet - type:0x%x timestamp:%lld packet:%{RemoteHID:packet}.*P", buf, 0x2Cu);
  }

  [(HIDRemoteDeviceServer *)self endpointMessageHandler:v12 data:data size:size];
LABEL_9:
}

- (void)btServiceEventHandler:(BTDeviceImpl *)handler services:(unsigned int)services eventType:(int)type event:(unsigned int)event result:(int)result
{
  v21 = *MEMORY[0x277D85DE8];
  v13 = RemoteHIDLog(self);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14[0] = 67109888;
    v14[1] = services;
    v15 = 1024;
    typeCopy = type;
    v17 = 1024;
    eventCopy = event;
    v19 = 1024;
    resultCopy = result;
    _os_log_debug_impl(&dword_261D9C000, v13, OS_LOG_TYPE_DEBUG, "btServiceEventHandler services:0x%x eventType:%d event:%d result:%d", v14, 0x1Au);
  }

  if ((services & 0x80000) != 0)
  {
    if (event != 11 || result | type)
    {
      if (type == 1 && event == 12)
      {
        [(HIDRemoteDeviceAACPServer *)self removeBTDevice:handler];
      }
    }

    else
    {
      [(HIDRemoteDeviceAACPServer *)self addBTDevice:handler];
    }
  }
}

- (void)btAccessoryEventHandler:(BTDeviceImpl *)handler event:(int)event state:(int)state
{
  *&v31[5] = *MEMORY[0x277D85DE8];
  v9 = RemoteHIDLog(self);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134218496;
    handlerCopy4 = handler;
    v30 = 1024;
    *v31 = event;
    v31[2] = 1024;
    *&v31[3] = state;
    _os_log_impl(&dword_261D9C000, v9, OS_LOG_TYPE_INFO, "btAccessoryEventHandler device:%p event:%d state:%d", buf, 0x18u);
  }

  if (event == 8)
  {
    v18 = RemoteHIDLog(v10);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      handlerCopy4 = handler;
      _os_log_impl(&dword_261D9C000, v18, OS_LOG_TYPE_DEFAULT, "TIMESYNC_NOT_AVAILABLE device:%p", buf, 0xCu);
    }

    v17 = 0;
    self->_tsID = 0;
  }

  else
  {
    if (event != 7)
    {
      return;
    }

    v11 = RemoteHIDLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      handlerCopy4 = handler;
      _os_log_impl(&dword_261D9C000, v11, OS_LOG_TYPE_DEFAULT, "TIMESYNC_AVAILABLE device:%p", buf, 0xCu);
    }

    v12 = (*(self->_mb->var0 + 8))(self->_mb, self->_manager, handler, &self->_tsID);
    v13 = v12;
    v14 = RemoteHIDLog(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      tsID = self->_tsID;
      *buf = 134218240;
      handlerCopy4 = handler;
      v30 = 2048;
      *v31 = tsID;
      _os_log_impl(&dword_261D9C000, v14, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerGetTimeSyncId device:%p tsID:0x%llx", buf, 0x16u);
    }

    if (v13)
    {
      v23 = RemoteHIDLog(v16);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [HIDRemoteDeviceAACPServer btAccessoryEventHandler:event:state:];
      }

      goto LABEL_15;
    }

    v17 = 1;
  }

  v26[0] = @"Active";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:v17];
  v26[1] = @"TSClockID";
  v27[0] = v19;
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_tsID];
  v27[1] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

  endpoints = [(HIDRemoteDeviceServer *)self endpoints];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __65__HIDRemoteDeviceAACPServer_btAccessoryEventHandler_event_state___block_invoke;
  v24[3] = &unk_279AFD200;
  v23 = v21;
  v25 = v23;
  [endpoints enumerateObjectsUsingBlock:v24];

LABEL_15:
}

void __65__HIDRemoteDeviceAACPServer_btAccessoryEventHandler_event_state___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 devices];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__HIDRemoteDeviceAACPServer_btAccessoryEventHandler_event_state___block_invoke_2;
  v4[3] = &unk_279AFD228;
  v5 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

- (int)remoteDeviceSetReport:(id)report type:(int64_t)type reportID:(unsigned __int8)d report:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  v10 = a6;
  v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{objc_msgSend(v10, "length") + 9}];
  v12 = RemoteHIDLog(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v21 = 134218498;
    deviceID = [reportCopy deviceID];
    v23 = 2048;
    typeCopy = type;
    v25 = 2112;
    v26 = v10;
    _os_log_debug_impl(&dword_261D9C000, v12, OS_LOG_TYPE_DEBUG, "remoteDeviceSetReport deviceID:0x%llx type:%ld report:%@", &v21, 0x20u);
  }

  v13 = v11;
  bytes = [v11 bytes];
  v15 = v10;
  memcpy((bytes + 9), [v10 bytes], objc_msgSend(v10, "length"));
  *(bytes + 4) = *(bytes + 4) & 0xFFFFFF80 | [reportCopy deviceID] & 0x7F;
  *(bytes + 4) = (([v10 length] << 7) + 640) & 0x1FF80 | *(bytes + 4) & 0xFF80007F | 0x60000;
  *(bytes + 8) = type;
  endpointID = [reportCopy endpointID];
  v17 = v11;
  v18 = -[HIDRemoteDeviceAACPServer sendMessageBTDevice:data:size:transportVersion:side:](self, "sendMessageBTDevice:data:size:transportVersion:side:", endpointID, [v11 bytes], objc_msgSend(v11, "length"), objc_msgSend(reportCopy, "transportVersion"), objc_msgSend(reportCopy, "side"));
  v19 = v18;
  if (v18)
  {
    RemoteHIDLog(v18);
    objc_claimAutoreleasedReturnValue();
    [HIDRemoteDeviceAACPServer remoteDeviceSetReport:type:reportID:report:];
    v19 = -536870212;
  }

  return v19;
}

- (BOOL)createRemoteDevice:(id)device deviceID:(unint64_t)d property:(id)property
{
  v21 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  propertyCopy = property;
  [propertyCopy setObject:@"BT-AACP" forKeyedSubscript:@"Transport"];
  [propertyCopy setObject:&unk_28744E840 forKeyedSubscript:@"RequestTimeout"];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v20 + 15) = v10;
  v19[13] = v10;
  v20[0] = v10;
  v19[11] = v10;
  v19[12] = v10;
  v19[9] = v10;
  v19[10] = v10;
  v19[7] = v10;
  v19[8] = v10;
  v19[5] = v10;
  v19[6] = v10;
  v19[3] = v10;
  v19[4] = v10;
  v19[1] = v10;
  v19[2] = v10;
  v19[0] = v10;
  if (!(*(self->_mb->var0 + 11))(self->_mb, [deviceCopy endpointID], v19, 255))
  {
    v18 = -21846;
    v17 = -1431655766;
    if (!(*(self->_mb->var0 + 12))(self->_mb, v19, &v17))
    {
      v11 = [MEMORY[0x277CBEA90] dataWithBytes:&v17 length:6];
      [propertyCopy setObject:v11 forKeyedSubscript:@"BT_ADDR"];
    }
  }

  v12 = [propertyCopy objectForKeyedSubscript:@"VendorID"];
  v13 = v12 == 0;

  if (v13)
  {
    [propertyCopy setObject:&unk_28744E858 forKeyedSubscript:@"VendorID"];
  }

  v16.receiver = self;
  v16.super_class = HIDRemoteDeviceAACPServer;
  v14 = [(HIDRemoteDeviceServer *)&v16 createRemoteDevice:deviceCopy deviceID:d property:propertyCopy];

  return v14;
}

- (int)remoteDeviceGetReport:(id)report type:(int64_t)type reportID:(unsigned __int8)d report:(id)a6
{
  typeCopy = type;
  reportCopy = report;
  v11 = a6;
  v12 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:10];
  bytes = [v12 bytes];
  *(bytes + 4) = *(bytes + 4) & 0xFF800000 | [reportCopy deviceID] & 0x7F | 0x80300;
  *(bytes + 8) = typeCopy;
  *(bytes + 9) = d;
  v14 = -[HIDRemoteDeviceAACPServer sendMessageBTDevice:data:size:transportVersion:side:](self, "sendMessageBTDevice:data:size:transportVersion:side:", [reportCopy endpointID], objc_msgSend(v12, "bytes"), objc_msgSend(v12, "length"), objc_msgSend(reportCopy, "transportVersion"), objc_msgSend(reportCopy, "side"));
  v15 = v14;
  if (v14)
  {
    RemoteHIDLog(v14);
    objc_claimAutoreleasedReturnValue();
    [HIDRemoteDeviceAACPServer remoteDeviceGetReport:type:reportID:report:];
    v15 = -536870212;
  }

  return v15;
}

- (void)remoteDeviceRefresh:(id)refresh deviceID:(unint64_t)d transportVersion:(unsigned __int8)version side:(unsigned __int8)side
{
  sideCopy = side;
  versionCopy = version;
  v15 = *MEMORY[0x277D85DE8];
  refreshCopy = refresh;
  LODWORD(v14) = 0;
  HIDWORD(v14) = d & 0x7F | 0x200;
  v11 = -[HIDRemoteDeviceAACPServer sendMessageBTDevice:data:size:transportVersion:side:](self, "sendMessageBTDevice:data:size:transportVersion:side:", [refreshCopy endpointID], &v14, 8, versionCopy, sideCopy);
  v12 = v11;
  if (v11)
  {
    v13 = RemoteHIDLog(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceAACPServer remoteDeviceRefresh:d deviceID:v12 transportVersion:v13 side:?];
    }
  }
}

- (void)timeSyncEnable:(BOOL)enable forEndpointID:(unint64_t)d
{
  enableCopy = enable;
  v19 = *MEMORY[0x277D85DE8];
  v6 = BTAccessoryManagerSensorStreamTimeSyncEnable();
  v7 = v6;
  v8 = RemoteHIDLog(v6);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v13 = 67109632;
      v14 = enableCopy;
      v15 = 2048;
      dCopy2 = d;
      v17 = 1024;
      v18 = v7;
      v10 = "Couldn't set %u timesync for device:%p status:%d";
      v11 = v8;
      v12 = 24;
LABEL_6:
      _os_log_impl(&dword_261D9C000, v11, OS_LOG_TYPE_DEFAULT, v10, &v13, v12);
    }
  }

  else if (v9)
  {
    v13 = 67109376;
    v14 = enableCopy;
    v15 = 2048;
    dCopy2 = d;
    v10 = "Set %u timesync for device:%p";
    v11 = v8;
    v12 = 18;
    goto LABEL_6;
  }
}

- (os_state_data_s)stateHandler:(os_state_hints_s *)handler
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = objc_opt_new();
  if (handler->var2 - 4 < 0xFFFFFFFE)
  {
    v10 = 0;
    v7 = 0;
    goto LABEL_9;
  }

  endpoints = [(HIDRemoteDeviceServer *)self endpoints];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__HIDRemoteDeviceAACPServer_stateHandler___block_invoke;
  v14[3] = &unk_279AFD250;
  v14[4] = &v15;
  [endpoints enumerateObjectsUsingBlock:v14];

  v6 = v16[5];
  v13 = 0;
  v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:v6 format:200 options:0 error:&v13];
  v8 = v13;
  v9 = v8;
  if (!v7)
  {
    v10 = 0;
    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v8 = malloc_type_calloc(1uLL, [v7 length] + 200, 0x1000040BEF03554uLL);
  v10 = v8;
  if (v8)
  {
    strlcpy(v8->var3, "RemoteHID State", 0x40uLL);
    v10->var0 = 1;
    v10->var1.var1 = [v7 length];
    v8 = memcpy(v10->var4, [v7 bytes], objc_msgSend(v7, "length"));
  }

  if (v9)
  {
LABEL_6:
    v11 = RemoteHIDLog(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceAACPServer stateHandler:];
    }
  }

LABEL_9:

  _Block_object_dispose(&v15, 8);
  return v10;
}

void __42__HIDRemoteDeviceAACPServer_stateHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 copyState];
  [v2 addObject:?];
}

- (void)btSessionInit:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)btSessionInit:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)btSessionInit:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)btSessionInit:.cold.4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)btSessionInit:.cold.5()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)addBTDevice:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)addBTDevice:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)addBTDevice:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)addBTDevice:.cold.4()
{
  OUTLINED_FUNCTION_4_0();
  if (OUTLINED_FUNCTION_7_0(v1))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3_0(&dword_261D9C000, v2, v3, "addDevice device:%p result:%d", v4, v5, v6, v7);
  }
}

- (void)sendMessageBTDevice:data:size:transportVersion:side:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendMessageBTDevice:data:size:transportVersion:side:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendMessageBTDevice:data:size:transportVersion:side:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendMessageBTDevice:data:size:transportVersion:side:.cold.4()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendMessageBTDevice:data:size:transportVersion:side:.cold.5()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendMessageBTDevice:data:size:transportVersion:side:.cold.6()
{
  OUTLINED_FUNCTION_4_0();
  if (OUTLINED_FUNCTION_7_0(v1))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3_0(&dword_261D9C000, v2, v3, "BTAccessoryManagerSendCustomMessage fail - device:%p result:%d", v4, v5, v6, v7);
  }
}

- (void)btDeviceMessageHandler:(NSObject *)a1 type:(NSObject *)a2 data:size:.cold.1(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v10 = 0;
    OUTLINED_FUNCTION_6_0(&dword_261D9C000, v4, v5, "decodeHeader fail", v6, v7, v8, v9, v10);
  }

  *a2 = a1;
}

- (void)btDeviceMessageHandler:(NSObject *)a1 type:(NSObject *)a2 data:size:.cold.2(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v10 = 0;
    OUTLINED_FUNCTION_6_0(&dword_261D9C000, v4, v5, "decode fail", v6, v7, v8, v9, v10);
  }

  *a2 = a1;
}

- (void)btAccessoryEventHandler:event:state:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)remoteDeviceSetReport:type:reportID:report:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  if (OUTLINED_FUNCTION_7_0(v1))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3_0(&dword_261D9C000, v2, v3, "SetReport device:%p status:%d", v4, v5, v6, v7);
  }
}

- (void)remoteDeviceGetReport:type:reportID:report:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  if (OUTLINED_FUNCTION_7_0(v1))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3_0(&dword_261D9C000, v2, v3, "GetReport device:%p status:%d", v4, v5, v6, v7);
  }
}

- (void)remoteDeviceRefresh:(os_log_t)log deviceID:transportVersion:side:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_261D9C000, log, OS_LOG_TYPE_ERROR, "remoteDeviceRefresh id:%llu result:%d", &v3, 0x12u);
}

@end