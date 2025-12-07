@interface ApplePCIeAnalytics
+ (id)_getProp:(__CFString *)prop fromReg:(unsigned int)reg withType:(Class)type;
- (ApplePCIeAnalytics)init;
- (BOOL)_iteratePCITree:(unsigned int)tree findSlot:(id *)slot findTBID:(id *)d;
- (BOOL)_startEventMonitoring;
- (void)_handleServiceMatched:(unsigned int)matched;
- (void)_startEventMonitoring;
- (void)_stopEventMonitoring;
- (void)start;
- (void)stop;
@end

@implementation ApplePCIeAnalytics

- (ApplePCIeAnalytics)init
{
  v12.receiver = self;
  v12.super_class = ApplePCIeAnalytics;
  v2 = [(ApplePCIeAnalytics *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = dispatch_queue_create([v4 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = os_log_create("com.apple.accessories", [v8 UTF8String]);
    log = v2->_log;
    v2->_log = v9;

    v2->_started = 0;
  }

  return v2;
}

- (void)start
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = log;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Starting %@...", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __27__ApplePCIeAnalytics_start__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __27__ApplePCIeAnalytics_start__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    v3 = *(v1 + 24);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __27__ApplePCIeAnalytics_start__block_invoke_cold_2(v2, v3);
    }
  }

  else
  {
    *(v1 + 8) = 1;
    if (([*v2 _startEventMonitoring] & 1) == 0)
    {
      v4 = *(*v2 + 24);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __27__ApplePCIeAnalytics_start__block_invoke_cold_1(v2, v4);
      }
    }
  }
}

- (void)stop
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = log;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Stopping %@...", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __26__ApplePCIeAnalytics_stop__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __26__ApplePCIeAnalytics_stop__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (*(v1 + 8))
  {
    *(v1 + 8) = 0;
    v3 = *v2;

    [v3 _stopEventMonitoring];
  }

  else
  {
    v4 = *(v1 + 24);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __26__ApplePCIeAnalytics_stop__block_invoke_cold_1(v2, v4);
    }
  }
}

- (BOOL)_startEventMonitoring
{
  if (!self->_started)
  {
    return 0;
  }

  if (self->_monitoring)
  {
    return 1;
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, log, OS_LOG_TYPE_DEFAULT, "Starting event monitoring...", v11, 2u);
  }

  self->_monitoring = 1;
  v5 = IONotificationPortCreate(kIOMainPortDefault);
  self->_ioNotificationPort = v5;
  IONotificationPortSetDispatchQueue(v5, self->_queue);
  v6 = IOServiceMatching("IOPCIDevice");
  ioNotificationPort = self->_ioNotificationPort;
  v8 = v6;
  v9 = IOServiceAddMatchingNotification(ioNotificationPort, "IOServiceFirstMatch", v8, _serviceMatched, self, &self->_ioServiceMatchingIterator);
  v3 = v9 == 0;
  if (v9)
  {
    [(ApplePCIeAnalytics *)&self->_log _startEventMonitoring];
  }

  else
  {
    _serviceMatched(self, self->_ioServiceMatchingIterator);
  }

  return v3;
}

- (void)_stopEventMonitoring
{
  if (self->_monitoring)
  {
    v9 = v2;
    v10 = v3;
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, log, OS_LOG_TYPE_DEFAULT, "Stopping event monitoring...", v8, 2u);
    }

    self->_monitoring = 0;
    ioServiceMatchingIterator = self->_ioServiceMatchingIterator;
    if (ioServiceMatchingIterator)
    {
      IOObjectRelease(ioServiceMatchingIterator);
    }

    ioNotificationPort = self->_ioNotificationPort;
    if (ioNotificationPort)
    {
      IONotificationPortDestroy(ioNotificationPort);
    }
  }
}

- (BOOL)_iteratePCITree:(unsigned int)tree findSlot:(id *)slot findTBID:(id *)d
{
  v7 = *&tree;
  parent = 0;
  IOObjectRetain(tree);
  if (IORegistryEntryGetParentEntry(v7, "IOService", &parent))
  {
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&name[96] = v9;
    *&name[112] = v9;
    *&name[64] = v9;
    *&name[80] = v9;
    *&name[32] = v9;
    *&name[48] = v9;
    *name = v9;
    *&name[16] = v9;
    IORegistryEntryGetName(v7, name);
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [ApplePCIeAnalytics _iteratePCITree:findSlot:findTBID:];
    }

    v10 = v7;
  }

  else
  {
    v12 = parent;
    if (!parent)
    {
LABEL_17:
      IOObjectRelease(v7);
      IOObjectRelease(parent);
      return 1;
    }

    while (1)
    {
      if (IOObjectConformsTo(v12, "IOPCIHostBridge"))
      {
        goto LABEL_17;
      }

      if (!IOObjectConformsTo(v7, "IOPCIDevice"))
      {
        break;
      }

      v13 = [ApplePCIeAnalytics _getProp:kApplePCIeAnalytics_IOPCIDevice_Property_SlotName fromReg:v7 withType:objc_opt_class()];
      v14 = v13;
      if (v13)
      {
        *slot = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", strtol([v13 bytes] + 5, 0, 10));
      }

      v15 = [ApplePCIeAnalytics _getProp:kApplePCIeAnalytics_IOPCIDevice_Property_ThunderboltEntryID fromReg:v7 withType:objc_opt_class()];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
        *d = v16;
      }

      entry = 0;
      if (IORegistryEntryGetParentEntry(parent, "IOService", &entry))
      {
        *&v19 = 0xAAAAAAAAAAAAAAAALL;
        *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&name[96] = v19;
        *&name[112] = v19;
        *&name[64] = v19;
        *&name[80] = v19;
        *&name[32] = v19;
        *&name[48] = v19;
        *name = v19;
        *&name[16] = v19;
        IORegistryEntryGetName(parent, name);
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          [ApplePCIeAnalytics _iteratePCITree:findSlot:findTBID:];
        }

        IOObjectRelease(v7);
        v20 = parent;
        goto LABEL_27;
      }

      v22 = 0;
      if (IORegistryEntryGetParentEntry(v7, "IOService", &v22))
      {
        *&v21 = 0xAAAAAAAAAAAAAAAALL;
        *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&name[96] = v21;
        *&name[112] = v21;
        *&name[64] = v21;
        *&name[80] = v21;
        *&name[32] = v21;
        *&name[48] = v21;
        *name = v21;
        *&name[16] = v21;
        IORegistryEntryGetName(entry, name);
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          [ApplePCIeAnalytics _iteratePCITree:findSlot:findTBID:];
        }

        IOObjectRelease(v7);
        IOObjectRelease(parent);
        v20 = entry;
LABEL_27:
        IOObjectRelease(v20);

        return 0;
      }

      IOObjectRelease(v7);
      IOObjectRelease(parent);
      v7 = entry;
      parent = v22;

      v12 = parent;
      if (!parent)
      {
        goto LABEL_17;
      }
    }

    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&name[96] = v18;
    *&name[112] = v18;
    *&name[64] = v18;
    *&name[80] = v18;
    *&name[32] = v18;
    *&name[48] = v18;
    *name = v18;
    *&name[16] = v18;
    IORegistryEntryGetName(v7, name);
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [ApplePCIeAnalytics _iteratePCITree:findSlot:findTBID:];
    }

    IOObjectRelease(v7);
    v10 = parent;
  }

  IOObjectRelease(v10);
  return 0;
}

+ (id)_getProp:(__CFString *)prop fromReg:(unsigned int)reg withType:(Class)type
{
  CFProperty = IORegistryEntryCreateCFProperty(reg, prop, kCFAllocatorDefault, 0);
  if (!CFProperty || (objc_opt_isKindOfClass() & 1) == 0)
  {

    CFProperty = 0;
  }

  return CFProperty;
}

- (void)_handleServiceMatched:(unsigned int)matched
{
  if (!matched)
  {
    return;
  }

  v3 = *&matched;
  if ([(ApplePCIeAnalytics *)self analyticsEventsEnabled])
  {
    v5 = objc_opt_new();
    v6 = [ApplePCIeAnalytics _getProp:kApplePCIeAnalytics_IOPCIDevice_Property_VendorID fromReg:v3 withType:objc_opt_class()];
    v7 = convertNSDataToHexString(v6);
    [v5 setValue:v7 forKey:@"PCIe_VID"];

    v8 = [ApplePCIeAnalytics _getProp:kApplePCIeAnalytics_IOPCIDevice_Property_DeviceID fromReg:v3 withType:objc_opt_class()];
    v9 = convertNSDataToHexString(v8);
    [v5 setValue:v9 forKey:@"PCIe_DID"];

    v10 = [ApplePCIeAnalytics _getProp:kApplePCIeAnalytics_IOPCIDevice_Property_SubsystemVendorID fromReg:v3 withType:objc_opt_class()];
    v11 = convertNSDataToHexString(v10);
    [v5 setValue:v11 forKey:@"PCIe_Subsystem_VID"];

    v12 = [ApplePCIeAnalytics _getProp:kApplePCIeAnalytics_IOPCIDevice_Property_SubsystemID fromReg:v3 withType:objc_opt_class()];
    v13 = convertNSDataToHexString(v12);
    [v5 setValue:v13 forKey:@"PCIe_Subsystem_ID"];

    v14 = [ApplePCIeAnalytics _getProp:kApplePCIeAnalytics_IOPCIDevice_Property_ClassCode fromReg:v3 withType:objc_opt_class()];
    v15 = convertNSDataToHexString(v14);
    [v5 setValue:v15 forKey:@"PCIe_ClassCode"];

    v16 = [ApplePCIeAnalytics _getProp:@"IOPCIExpressCapabilities" fromReg:v3 withType:objc_opt_class()];
    v17 = [NSNumber numberWithBool:v16 != 0];
    [v5 setObject:v17 forKey:@"isPCIe"];

    if (v16)
    {
      v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%X", [v16 unsignedIntValue]);
      [v5 setObject:v18 forKey:@"PCIe_Capabilities"];
    }

    v19 = [ApplePCIeAnalytics _getProp:@"IOPCIExpressLinkCapabilities" fromReg:v3 withType:objc_opt_class()];

    if (!v19)
    {
      goto LABEL_31;
    }

    unsignedIntValue = [v19 unsignedIntValue];
    v21 = [NSString stringWithFormat:@"0x%X", unsignedIntValue];
    [v5 setObject:v21 forKey:@"PCIe_LinkCapabilities"];

    if ((unsignedIntValue & 0xFu) > 6)
    {
      v22 = &off_23B98;
    }

    else
    {
      v22 = [NSNumber numberWithUnsignedInt:?];
    }

    [v5 setObject:v22 forKey:@"linkSpeed"];

    v24 = (unsignedIntValue >> 4) & 0x3F;
    if (v24 > 7)
    {
      if (((unsignedIntValue >> 4) & 0x3F) > 0xF)
      {
        if (v24 == 16)
        {
          v25 = &off_23C40;
          goto LABEL_30;
        }

        if (v24 == 32)
        {
          v25 = &off_23C58;
          goto LABEL_30;
        }
      }

      else
      {
        if (v24 == 8)
        {
          v25 = &off_23C10;
          goto LABEL_30;
        }

        if (v24 == 12)
        {
          v25 = &off_23C28;
LABEL_30:
          [v5 setObject:v25 forKey:@"linkWidth"];
LABEL_31:
          v35 = 0;
          v36 = 0;
          v26 = [(ApplePCIeAnalytics *)self _iteratePCITree:v3 findSlot:&v36 findTBID:&v35];
          v27 = v36;
          v28 = v35;
          v29 = v28;
          if (v26)
          {
            if (v28)
            {
              v30 = IORegistryEntryIDMatching([v28 unsignedLongLongValue]);
              MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v30);
              v32 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", kApplePCIeAnalytics_IOPCIDevice_Property_RouterID, kCFAllocatorDefault, 3u);
              [v5 setObject:v32 forKey:@"atcPort"];
              IOObjectRelease(MatchingService);
            }

            else if (v27)
            {
              [v5 setObject:v27 forKey:@"slot"];
            }
          }

          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v38 = @"com.apple.accessories.IOPCIDevice.FirstMatch";
            _os_log_impl(&dword_0, log, OS_LOG_TYPE_DEFAULT, "Sending analytics event... (eventName: %@)", buf, 0xCu);
          }

          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
          {
            [ApplePCIeAnalytics _handleServiceMatched:];
          }

          v34 = v5;
          if ((AnalyticsSendEventLazy() & 1) == 0 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            [ApplePCIeAnalytics _handleServiceMatched:];
          }

          return;
        }
      }
    }

    else
    {
      if (((unsignedIntValue >> 4) & 0x3F) <= 1)
      {
        if (v24)
        {
          v25 = &off_23BC8;
        }

        else
        {
          v25 = &off_23BB0;
        }

        goto LABEL_30;
      }

      if (v24 == 2)
      {
        v25 = &off_23BE0;
        goto LABEL_30;
      }

      if (v24 == 4)
      {
        v25 = &off_23BF8;
        goto LABEL_30;
      }
    }

    v25 = &off_23C70;
    goto LABEL_30;
  }

  v23 = self->_log;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v38 = @"com.apple.accessories.IOPCIDevice.FirstMatch";
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Analytics events are disabled for this event - ignoring... (eventName: %@)", buf, 0xCu);
  }
}

void __27__ApplePCIeAnalytics_start__block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0(&dword_0, v5, v6, "%@ failed to start!", v7, v8, v9, v10);
}

void __27__ApplePCIeAnalytics_start__block_invoke_cold_2(uint64_t *a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0(&dword_0, v5, v6, "%@ already started... ignoring!", v7, v8, v9, v10);
}

void __26__ApplePCIeAnalytics_stop__block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0(&dword_0, v5, v6, "%@ already stopped... ignoring!", v7, v8, v9, v10);
}

- (void)_startEventMonitoring
{
  v3 = *self;
  if (os_log_type_enabled(*self, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "IOServiceAddMatchingNotification failed: %08x", v4, 8u);
  }
}

@end