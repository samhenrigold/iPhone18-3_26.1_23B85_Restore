@interface CoreAccessoryManager
- (CoreAccessoryManager)init;
- (NSDictionary)debug;
- (id)coreAccessoryServiceInfoFromProperties:(id)properties;
- (void)accessoryConnectionInfoFromTransport:(id)transport connection:(int *)connection transport:(int *)a5;
- (void)dealloc;
- (void)deregisterForDeviceManagementMatching;
- (void)handleDeviceManagementMatching:(unsigned int)matching;
- (void)publishCoreAccessoryService:(id)service;
- (void)registerForDeviceManagementMatching;
- (void)setDriverFirmwareVersion:(id)version;
- (void)setQueue:(id)queue;
- (void)setSerialNumber:(id)number;
- (void)unpublishCoreAccessoryService;
@end

@implementation CoreAccessoryManager

- (CoreAccessoryManager)init
{
  v10.receiver = self;
  v10.super_class = CoreAccessoryManager;
  v2 = [(CoreAccessoryManager *)&v10 init];
  v3 = v2;
  if (v2)
  {
    serialNumber = v2->_serialNumber;
    v2->_serialNumber = 0;

    driverFirmwareVersion = v3->_driverFirmwareVersion;
    v3->_driverFirmwareVersion = 0;

    connectionUUID = v3->_connectionUUID;
    v3->_connectionUUID = 0;

    publishedAccessoryInfo = v3->_publishedAccessoryInfo;
    v3->_publishedAccessoryInfo = 0;

    v3->_dmMatchedNotifierPortRef = 0;
    v3->_dmMatchedIterator = 0;
    v8 = v3;
  }

  return v3;
}

- (void)dealloc
{
  v3 = MTLoggingPlugin(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 136315906;
    v8 = "";
    v9 = 2080;
    v10 = "";
    v11 = 2080;
    v12 = "[CoreAccessoryManager dealloc]";
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s ~%@", buf, 0x2Au);
  }

  [(CoreAccessoryManager *)self unpublishCoreAccessoryService];
  [(CoreAccessoryManager *)self deregisterForDeviceManagementMatching];
  v6.receiver = self;
  v6.super_class = CoreAccessoryManager;
  [(CoreAccessoryManager *)&v6 dealloc];
}

- (void)registerForDeviceManagementMatching
{
  serialNumber = [(CoreAccessoryManager *)self serialNumber];
  if (serialNumber)
  {
    driverFirmwareVersion = [(CoreAccessoryManager *)self driverFirmwareVersion];
    if (driverFirmwareVersion)
    {
      queue = [(CoreAccessoryManager *)self queue];

      if (queue)
      {
        v7 = MTLoggingPlugin(v5, v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          serialNumber2 = [(CoreAccessoryManager *)self serialNumber];
          *buf = 136315906;
          v29 = "[Debug] ";
          v30 = 2080;
          v31 = "";
          v32 = 2080;
          v33 = "[CoreAccessoryManager registerForDeviceManagementMatching]";
          v34 = 2114;
          v35 = serialNumber2;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s [%{public}@] Registering for device mangement matching notifications", buf, 0x2Au);
        }

        p_dmMatchedIterator = &self->_dmMatchedIterator;
        if (self->_dmMatchedIterator || self->_dmMatchedNotifierPortRef)
        {
          [(CoreAccessoryManager *)self deregisterForDeviceManagementMatching];
        }

        v42[0] = @"IOPropertyMatch";
        v40 = @"SerialNumber";
        serialNumber3 = [(CoreAccessoryManager *)self serialNumber];
        v41 = serialNumber3;
        v11 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v42[1] = @"IONameMatch";
        v43[0] = v11;
        v43[1] = @"AppleDeviceManagementHIDEventService";
        v12 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];

        v14 = IONotificationPortCreate(kIOMainPortDefault);
        self->_dmMatchedNotifierPortRef = v14;
        if (v14)
        {
          v15 = IOServiceAddMatchingNotification(v14, "IOServiceFirstMatch", v12, _dmMatchedCallback, self, &self->_dmMatchedIterator);
          v17 = v15;
          if (v15 || !*p_dmMatchedIterator)
          {
            v18 = MTLoggingPlugin(v15, v16);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              serialNumber4 = [(CoreAccessoryManager *)self serialNumber];
              v20 = *p_dmMatchedIterator;
              *buf = 136316418;
              v29 = "[Error] ";
              v30 = 2080;
              v31 = "";
              v32 = 2080;
              v33 = "[CoreAccessoryManager registerForDeviceManagementMatching]";
              v34 = 2114;
              v35 = serialNumber4;
              v36 = 1024;
              v37 = v17;
              v38 = 2048;
              v39 = v20;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [%{public}@] Failed to create notification port: 0x%08x (deviceIterator: 0x%08jx)", buf, 0x3Au);
            }

            IONotificationPortDestroy(self->_dmMatchedNotifierPortRef);
            self->_dmMatchedNotifierPortRef = 0;
          }

          else
          {
            v23 = MTLoggingPlugin(v15, v16);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              serialNumber5 = [(CoreAccessoryManager *)self serialNumber];
              *buf = 136315906;
              v29 = "[Debug] ";
              v30 = 2080;
              v31 = "";
              v32 = 2080;
              v33 = "[CoreAccessoryManager registerForDeviceManagementMatching]";
              v34 = 2114;
              v35 = serialNumber5;
              _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s [%{public}@] Successfully registered for device mangement matching notifications", buf, 0x2Au);
            }

            [(CoreAccessoryManager *)self handleDeviceManagementMatching:self->_dmMatchedIterator];
            dmMatchedNotifierPortRef = self->_dmMatchedNotifierPortRef;
            queue2 = [(CoreAccessoryManager *)self queue];
            IONotificationPortSetDispatchQueue(dmMatchedNotifierPortRef, queue2);
          }
        }

        else
        {
          v21 = MTLoggingPlugin(0, v13);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            serialNumber6 = [(CoreAccessoryManager *)self serialNumber];
            *buf = 136315906;
            v29 = "[Error] ";
            v30 = 2080;
            v31 = "";
            v32 = 2080;
            v33 = "[CoreAccessoryManager registerForDeviceManagementMatching]";
            v34 = 2114;
            v35 = serialNumber6;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [%{public}@] Failed to create notification port for device", buf, 0x2Au);
          }
        }
      }
    }

    else
    {
    }
  }
}

- (void)deregisterForDeviceManagementMatching
{
  v3 = MTLoggingPlugin(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    serialNumber = [(CoreAccessoryManager *)self serialNumber];
    v7 = 136315906;
    v8 = "[Debug] ";
    v9 = 2080;
    v10 = "";
    v11 = 2080;
    v12 = "[CoreAccessoryManager deregisterForDeviceManagementMatching]";
    v13 = 2114;
    v14 = serialNumber;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s [%{public}@] enter", &v7, 0x2Au);
  }

  dmMatchedIterator = self->_dmMatchedIterator;
  if (dmMatchedIterator)
  {
    IOObjectRelease(dmMatchedIterator);
    self->_dmMatchedIterator = 0;
  }

  dmMatchedNotifierPortRef = self->_dmMatchedNotifierPortRef;
  if (dmMatchedNotifierPortRef)
  {
    IONotificationPortDestroy(dmMatchedNotifierPortRef);
    self->_dmMatchedNotifierPortRef = 0;
  }
}

- (void)handleDeviceManagementMatching:(unsigned int)matching
{
  v5 = IOIteratorNext(matching);
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    do
    {
      if (v8 >= 2)
      {
        v9 = MTLoggingPlugin(v5, v6);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          serialNumber = [(CoreAccessoryManager *)self serialNumber];
          *buf = 136315906;
          v18 = "[Error] ";
          v19 = 2080;
          v20 = "";
          v21 = 2080;
          v22 = "[CoreAccessoryManager handleDeviceManagementMatching:]";
          v23 = 2114;
          v24 = serialNumber;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [%{public}@] Found multiple device management services expected only one", buf, 0x2Au);
        }
      }

      properties = 0xAAAAAAAAAAAAAAAALL;
      v11 = IORegistryEntryCreateCFProperties(v7, &properties, kCFAllocatorDefault, 0);
      v13 = properties;
      if (v11 || !properties)
      {
        v14 = MTLoggingPlugin(v11, v12);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          serialNumber2 = [(CoreAccessoryManager *)self serialNumber];
          *buf = 136315906;
          v18 = "[Error] ";
          v19 = 2080;
          v20 = "";
          v21 = 2080;
          v22 = "[CoreAccessoryManager handleDeviceManagementMatching:]";
          v23 = 2114;
          v24 = serialNumber2;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [%{public}@] Failed to retrieve the properties from device management service", buf, 0x2Au);
        }
      }

      else
      {
        [(CoreAccessoryManager *)self publishCoreAccessoryService:properties];
      }

      IOObjectRelease(v7);

      v5 = IOIteratorNext(matching);
      v7 = v5;
      ++v8;
    }

    while (v5);
  }
}

- (void)publishCoreAccessoryService:(id)service
{
  serviceCopy = service;
  v6 = serviceCopy;
  if (self->_connectionUUID)
  {
    v7 = MTLoggingPlugin(serviceCopy, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      serialNumber = [(CoreAccessoryManager *)self serialNumber];
      *buf = 136315906;
      v35 = "[Debug] ";
      v36 = 2080;
      v37 = "";
      v38 = 2080;
      v39 = "[CoreAccessoryManager publishCoreAccessoryService:]";
      v40 = 2114;
      v41 = serialNumber;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s [%{public}@] Existing device has already been published - Unpublishing previous device first", buf, 0x2Au);
    }

    [(CoreAccessoryManager *)self unpublishCoreAccessoryService];
  }

  v32 = -1431655766;
  v33 = -1431655766;
  v9 = [v6 objectForKeyedSubscript:@"Transport"];
  [(CoreAccessoryManager *)self accessoryConnectionInfoFromTransport:v9 connection:&v33 transport:&v32];

  v10 = +[ACCTransportClient sharedClient];
  v11 = v33;
  serialNumber2 = [(CoreAccessoryManager *)self serialNumber];
  v13 = [v10 createConnectionWithType:v11 andIdentifier:serialNumber2];

  if (v13)
  {
    v16 = +[ACCTransportClient sharedClient];
    v17 = [v16 createEndpointWithTransportType:v32 andProtocol:1 andIdentifier:0 andDataOutHandler:0 forConnectionWithUUID:v13 publishConnection:0];

    if (v17)
    {
      v20 = [(CoreAccessoryManager *)self coreAccessoryServiceInfoFromProperties:v6];
      v21 = +[ACCTransportClient sharedClient];
      [v21 setAccessoryInfo:v20 forEndpointWithUUID:v17];

      v22 = +[ACCTransportClient sharedClient];
      [v22 publishConnectionWithUUID:v13];

      v23 = [v20 copy];
      publishedAccessoryInfo = self->_publishedAccessoryInfo;
      self->_publishedAccessoryInfo = v23;

      objc_storeStrong(&self->_connectionUUID, v13);
      v27 = MTLoggingPlugin(v25, v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        serialNumber3 = [(CoreAccessoryManager *)self serialNumber];
        v29 = [v20 objectForKeyedSubscript:kACCInfo_Name];
        *buf = 136316418;
        v35 = "";
        v36 = 2080;
        v37 = "";
        v38 = 2080;
        v39 = "[CoreAccessoryManager publishCoreAccessoryService:]";
        v40 = 2114;
        v41 = serialNumber3;
        v42 = 2114;
        v43 = v29;
        v44 = 2114;
        v45 = v13;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s [%{public}@] Published device %{public}@ with connection UUID %{public}@", buf, 0x3Eu);
      }
    }

    else
    {
      v20 = MTLoggingPlugin(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        serialNumber4 = [(CoreAccessoryManager *)self serialNumber];
        *buf = 136315906;
        v35 = "[Error] ";
        v36 = 2080;
        v37 = "";
        v38 = 2080;
        v39 = "[CoreAccessoryManager publishCoreAccessoryService:]";
        v40 = 2114;
        v41 = serialNumber4;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [%{public}@] Could not create CoreAccessory endpoint", buf, 0x2Au);
      }
    }
  }

  else
  {
    v17 = MTLoggingPlugin(v14, v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      serialNumber5 = [(CoreAccessoryManager *)self serialNumber];
      *buf = 136315906;
      v35 = "[Error] ";
      v36 = 2080;
      v37 = "";
      v38 = 2080;
      v39 = "[CoreAccessoryManager publishCoreAccessoryService:]";
      v40 = 2114;
      v41 = serialNumber5;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [%{public}@] Could not create CoreAccessory connection", buf, 0x2Au);
    }
  }
}

- (void)unpublishCoreAccessoryService
{
  if (self->_connectionUUID)
  {
    v3 = MTLoggingPlugin(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      serialNumber = [(CoreAccessoryManager *)self serialNumber];
      connectionUUID = self->_connectionUUID;
      v8 = 136316162;
      v9 = "";
      v10 = 2080;
      v11 = "";
      v12 = 2080;
      v13 = "[CoreAccessoryManager unpublishCoreAccessoryService]";
      v14 = 2114;
      v15 = serialNumber;
      v16 = 2114;
      v17 = connectionUUID;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s [%{public}@] Unpublishing device with connection UUID %{public}@", &v8, 0x34u);
    }

    v6 = +[ACCTransportClient sharedClient];
    [v6 destroyConnectionWithUUID:self->_connectionUUID];

    v7 = self->_connectionUUID;
    self->_connectionUUID = 0;
  }
}

- (id)coreAccessoryServiceInfoFromProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [propertiesCopy mutableCopy];
  v25 = [v4 objectForKeyedSubscript:@"MTFW Version"];
  if (!v25 || ![v25 intValue])
  {
    driverFirmwareVersion = [(CoreAccessoryManager *)self driverFirmwareVersion];

    if (driverFirmwareVersion)
    {
      driverFirmwareVersion2 = [(CoreAccessoryManager *)self driverFirmwareVersion];
      [v4 setObject:driverFirmwareVersion2 forKeyedSubscript:@"MTFW Version"];
    }

    else
    {
      v9 = MTLoggingPlugin(v6, v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        serialNumber = [(CoreAccessoryManager *)self serialNumber];
        *buf = 136315906;
        v38 = "[Error] ";
        v39 = 2080;
        v40 = "";
        v41 = 2080;
        v42 = "[CoreAccessoryManager coreAccessoryServiceInfoFromProperties:]";
        v43 = 2114;
        v44 = serialNumber;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [%{public}@] Failed to determine MTFW version", buf, 0x2Au);
      }

      [v4 setObject:&off_112470 forKeyedSubscript:@"MTFW Version"];
    }
  }

  v26 = [v4 objectForKeyedSubscript:@"SerialNumber"];
  v27 = [v4 objectForKeyedSubscript:@"Product"];
  v28 = [v4 objectForKeyedSubscript:@"Manufacturer"];
  v11 = [v4 objectForKeyedSubscript:@"HardwareID"];
  v24 = v11;
  if (v11)
  {
    v29 = [NSString stringWithFormat:@"%04X", objc_msgSend_unsignedIntegerValue(v11)];
  }

  else
  {
    v29 = &stru_10DCA8;
  }

  v12 = [NSMutableString stringWithCapacity:20];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = [&off_112BF8 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v13)
  {
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(&off_112BF8);
        }

        v16 = [v4 objectForKeyedSubscript:*(*(&v30 + 1) + 8 * i)];
        if (v16)
        {
          if ([v12 length])
          {
            [v12 appendString:@"."];
          }

          v17 = [NSString stringWithFormat:@"%04X", objc_msgSend_unsignedIntegerValue(v16)];
          [v12 appendString:v17];
        }
      }

      v13 = [&off_112BF8 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v13);
  }

  v18 = v27;
  if (!v27)
  {
    v18 = &stru_10DCA8;
  }

  v34[0] = kACCInfo_Name;
  v34[1] = kACCInfo_Manufacturer;
  v19 = @"Apple Inc.";
  if (v28)
  {
    v19 = v28;
  }

  v35[0] = v18;
  v35[1] = v19;
  v20 = v26;
  if (!v26)
  {
    v20 = &stru_10DCA8;
  }

  v34[2] = kACCInfo_SerialNumber;
  v34[3] = kACCInfo_FirmwareVersionActive;
  v35[2] = v20;
  v35[3] = v12;
  v34[4] = kACCInfo_HardwareVersion;
  v34[5] = kACCInfo_Model;
  v35[4] = v29;
  v35[5] = &stru_10DCA8;
  v21 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:6];

  return v21;
}

- (void)accessoryConnectionInfoFromTransport:(id)transport connection:(int *)connection transport:(int *)a5
{
  transportCopy = transport;
  if ([transportCopy isEqualToString:@"AID"])
  {
    v7 = 7;
    v8 = 3;
  }

  else if ([transportCopy isEqualToString:@"USB"])
  {
    v7 = 0;
    v8 = 6;
  }

  else
  {
    v9 = [transportCopy isEqualToString:@"Bluetooth"];
    if (v9)
    {
      v8 = 2;
    }

    else
    {
      v8 = 11;
    }

    if (v9)
    {
      v7 = 2;
    }

    else
    {
      v7 = 18;
    }
  }

  *connection = v8;
  *a5 = v7;
}

- (void)setSerialNumber:(id)number
{
  numberCopy = number;
  if (numberCopy)
  {
    serialNumber = [(CoreAccessoryManager *)self serialNumber];
    v6 = [serialNumber isEqualToString:numberCopy];

    if ((v6 & 1) == 0)
    {
      objc_storeStrong(&self->_serialNumber, number);
      [(CoreAccessoryManager *)self registerForDeviceManagementMatching];
    }
  }
}

- (void)setDriverFirmwareVersion:(id)version
{
  versionCopy = version;
  if (versionCopy)
  {
    driverFirmwareVersion = [(CoreAccessoryManager *)self driverFirmwareVersion];
    v6 = [driverFirmwareVersion isEqualToString:versionCopy];

    if ((v6 & 1) == 0)
    {
      objc_storeStrong(&self->_driverFirmwareVersion, version);
      [(CoreAccessoryManager *)self registerForDeviceManagementMatching];
    }
  }
}

- (void)setQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"CoreAccessoryManager.mm" lineNumber:361 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
  }

  objc_storeStrong(&self->_queue, queue);
  [(CoreAccessoryManager *)self registerForDeviceManagementMatching];
}

- (NSDictionary)debug
{
  v14[0] = @"SerialNumber";
  serialNumber = [(CoreAccessoryManager *)self serialNumber];
  v4 = serialNumber;
  v5 = @"Unknown";
  if (serialNumber)
  {
    v5 = serialNumber;
  }

  v15[0] = v5;
  v14[1] = @"MultitouchDriverFirmwareVersion";
  driverFirmwareVersion = [(CoreAccessoryManager *)self driverFirmwareVersion];
  v7 = driverFirmwareVersion;
  v8 = @"None";
  if (driverFirmwareVersion)
  {
    v9 = driverFirmwareVersion;
  }

  else
  {
    v9 = @"None";
  }

  connectionUUID = self->_connectionUUID;
  publishedAccessoryInfo = self->_publishedAccessoryInfo;
  if (!connectionUUID)
  {
    connectionUUID = @"None";
  }

  v15[1] = v9;
  v15[2] = connectionUUID;
  v14[2] = @"ConnectionUUID";
  v14[3] = @"PublishedAccessoryInfo";
  if (publishedAccessoryInfo)
  {
    v8 = [(NSDictionary *)publishedAccessoryInfo copy];
  }

  v15[3] = v8;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (publishedAccessoryInfo)
  {
  }

  return v12;
}

@end