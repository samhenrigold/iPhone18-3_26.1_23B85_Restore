@interface DOMDevice
- (BOOL)compositeDeviceIsConfigured;
- (BOOL)isCompositeDevice;
- (BOOL)shouldMatchDevice;
- (DOMDevice)initWithIOService:(unsigned int)service notificationPort:(IONotificationPort *)port;
- (id)description;
- (void)dealloc;
- (void)evaluateScore:(id)score fromDomPersonality:(id)personality withIORegEntryID:(unint64_t)d;
- (void)handleIONotification:(unsigned int)notification arg:(void *)arg;
- (void)updateDeviceProperties;
@end

@implementation DOMDevice

- (DOMDevice)initWithIOService:(unsigned int)service notificationPort:(IONotificationPort *)port
{
  v5 = *&service;
  v46.receiver = self;
  v46.super_class = DOMDevice;
  v6 = [(DOMDevice *)&v46 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  *(v6 + 4) = v5;
  *(v6 + 4) = 0;
  *(v6 + 13) = 0;
  v8 = *(v6 + 11);
  *(v6 + 11) = 0;

  dialogBodyKey = v7->_dialogBodyKey;
  v7->_dialogBodyKey = 0;

  *&v7->_tbtAccessoryWithIncompatibleCable = 0;
  if (IOServiceAddInterestNotification(port, v5, "IOGeneralInterest", j__objc_msgSend_handleIONotification_arg_, v7, &v7->_io_notification) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000086C0();
  }

  if (IORegistryEntryGetRegistryEntryID(v5, &v7->_IORegEntryID) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100008748();
  }

  v10 = [NSString stringWithFormat:@"com.apple.deviceomatic.transaction.%x", v5];
  [v10 UTF8String];
  v11 = os_transaction_create();
  domDeviceTransaction = v7->_domDeviceTransaction;
  v7->_domDeviceTransaction = v11;

  if (IOServiceWaitQuiet(v5, 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000087F8();
  }

  v13 = dispatch_queue_create("DOMDevice queue", 0);
  queue = v7->_queue;
  v7->_queue = v13;

  [(DOMDevice *)v7 updateDeviceProperties];
  memset(name, 0, sizeof(name));
  if (IORegistryEntryGetName(v5, name) || !name[0])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100008888();
    }
  }

  else
  {
    v15 = [NSString stringWithUTF8String:name];
    v16 = v7->_name;
    v7->_name = v15;
  }

  valuePtr = -1;
  CFProperty = IORegistryEntryCreateCFProperty(v5, @"bDeviceClass", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v18 = CFProperty;
    v19 = CFGetTypeID(CFProperty);
    if (v19 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v18, kCFNumberIntType, &valuePtr);
      v20 = valuePtr == 9;
    }

    else
    {
      v20 = 0;
    }

    CFRelease(v18);
  }

  else
  {
    sub_100008918(&entryID);
    v20 = entryID;
  }

  v7->_isHub = v20;
  iterator = 0;
  entryID = 0;
  IORegistryEntryGetRegistryEntryID(v5, &entryID);
  if (IORegistryEntryCreateIterator(v5, "IOService", 3u, &iterator))
  {
    sub_100008984(&valuePtr);
    v35 = valuePtr;
    goto LABEL_39;
  }

  v21 = IOIteratorNext(iterator);
  if (!v21)
  {
    v35 = 0;
    goto LABEL_39;
  }

  v22 = v21;
  v45 = v5;
  v23 = @"bDeviceClass";
  while (1)
  {
    v24 = IOObjectCopyClass(v22);
    properties = 0;
    if (([(__CFString *)v24 isEqualToString:@"IOUSBDevice"]& 1) == 0)
    {
      break;
    }

LABEL_35:

    v22 = IOIteratorNext(iterator);
    if (!v22)
    {
      v35 = 0;
      goto LABEL_37;
    }
  }

  if (IORegistryEntryCreateCFProperties(v22, &properties, kCFAllocatorDefault, 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v25 = __error();
      v26 = strerror(*v25);
      valuePtr = 136315138;
      v52 = v26;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IORegistryEntryCreateCFProperties failed: %s", &valuePtr, 0xCu);
    }

    goto LABEL_35;
  }

  v27 = properties;
  v28 = [(__CFDictionary *)properties valueForKey:v23];
  if (!v28)
  {
    goto LABEL_34;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v32 = objc_opt_class();
      v44 = v32;
      v33 = objc_opt_class();
      valuePtr = 138412546;
      v52 = v32;
      v53 = 2112;
      v54 = v33;
      v34 = v33;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "got object class %@, expected %@", &valuePtr, 0x16u);
    }

    goto LABEL_34;
  }

  [NSNumber numberWithInt:9];
  v30 = v29 = v23;
  v31 = [v28 isEqual:v30];

  v23 = v29;
  if (!v31)
  {
LABEL_34:
    IOObjectRelease(v22);

    goto LABEL_35;
  }

  IOObjectRelease(v22);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(valuePtr) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "We are hanging off a hub, bub.", &valuePtr, 2u);
  }

  v35 = 1;
LABEL_37:
  LODWORD(v5) = v45;
LABEL_39:
  IOObjectRelease(iterator);
  v7->_isAttachedToHub = v35;
  entryID = 0;
  if (IORegistryEntryCreateCFProperties(v5, &entryID, kCFAllocatorDefault, 0))
  {
    v36 = 0;
    goto LABEL_58;
  }

  v36 = entryID;
  if (entryID)
  {
    v37 = [(__CFDictionary *)entryID objectForKey:@"UsbBillboardPreferredMode"];
    if (v37)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v37 isEqualToString:@"Thunderbolt"])
        {
          v7->_isThunderboltDevice = 1;
        }
      }
    }

    if (IOObjectConformsTo(v5, "IOUSBHostDevice") == 1)
    {
      v38 = [(__CFDictionary *)v36 objectForKey:@"kUSBFailedRequestedPower"];
      if (v38)
      {

        goto LABEL_51;
      }
    }

    if (IOObjectConformsTo(v5, "AppleUSBHostBillboardDevice") == 1)
    {
      v39 = [(__CFDictionary *)v36 objectForKey:@"UsbBillboardAltModePowerFailed"];

      if (v39)
      {
LABEL_51:
        p_powerHog = &v7->_powerHog;
        goto LABEL_56;
      }
    }

    if (IOObjectConformsTo(v5, "AppleUSBHostBillboardDevice") == 1)
    {
      v41 = [(__CFDictionary *)v36 objectForKey:@"UsbBillboardAltModeFailed"];

      if (v41)
      {
        p_powerHog = &v7->_tbtAccessoryWithIncompatiblePort;
        if (!v7->_isAttachedToHub)
        {
          p_powerHog = &v7->_tbtAccessoryWithIncompatibleCable;
        }

LABEL_56:
        *p_powerHog = 1;
      }
    }
  }

LABEL_58:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    valuePtr = 138412290;
    v52 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "initialized %@", &valuePtr, 0xCu);
  }

  return v7;
}

- (void)dealloc
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    name = [(DOMDevice *)self name];
    *buf = 138412290;
    v9 = name;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "tearing down object for %@", buf, 0xCu);
  }

  io_notification = self->_io_notification;
  if (io_notification)
  {
    IOObjectRelease(io_notification);
  }

  io_service = self->_io_service;
  if (io_service)
  {
    IOObjectRelease(io_service);
  }

  domDeviceTransaction = self->_domDeviceTransaction;
  if (domDeviceTransaction)
  {
    self->_domDeviceTransaction = 0;
  }

  v7.receiver = self;
  v7.super_class = DOMDevice;
  [(DOMDevice *)&v7 dealloc];
}

- (void)updateDeviceProperties
{
  properties = 0;
  if (IORegistryEntryCreateCFProperties([(DOMDevice *)self io_service], &properties, kCFAllocatorDefault, 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100008A34();
  }

  v3 = properties;
  [(DOMDevice *)self setProperties:properties];
}

- (void)handleIONotification:(unsigned int)notification arg:(void *)arg
{
  v6 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (notification == -536850432)
  {
    if (v6)
    {
      name = [(DOMDevice *)self name];
      v12 = 138413058;
      *v13 = name;
      *&v13[8] = 1024;
      *&v13[10] = [(DOMDevice *)self io_service];
      v14 = 2048;
      iORegEntryID = [(DOMDevice *)self IORegEntryID];
      v16 = 1024;
      v17 = -536850432;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ service %d (ID: %lld) received kUSBDeviceCurrentConfiguration (messageType 0x%x)", &v12, 0x22u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      properties = [(DOMDevice *)self properties];
      v11 = sub_100006574(properties);
      v12 = 138412290;
      *v13 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "properties:\n%@", &v12, 0xCu);
    }

    if ([(DOMDevice *)self compositeDeviceIsConfigured])
    {
      v8 = +[DOMAccessoryArbitrator sharedDomAccessoryArbitrator];
      [v8 matchDevice:self];
LABEL_12:
    }
  }

  else
  {
    if (notification == -536870896)
    {
      if (v6)
      {
        name2 = [(DOMDevice *)self name];
        v12 = 138413058;
        *v13 = name2;
        *&v13[8] = 1024;
        *&v13[10] = [(DOMDevice *)self io_service];
        v14 = 2048;
        iORegEntryID = [(DOMDevice *)self IORegEntryID];
        v16 = 1024;
        v17 = -536870896;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ service %d (ID: %lld) was terminated (messageType 0x%x)", &v12, 0x22u);
      }

      v8 = +[DOMAccessoryArbitrator sharedDomAccessoryArbitrator];
      [v8 unregisterOffendingDomDevice:self];
      goto LABEL_12;
    }

    if (v6)
    {
      v12 = 67109632;
      *v13 = [(DOMDevice *)self io_service];
      *&v13[4] = 2048;
      *&v13[6] = [(DOMDevice *)self IORegEntryID];
      v14 = 1024;
      LODWORD(iORegEntryID) = notification;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "service %d (ID: %lld) got messageType: 0x%0x", &v12, 0x18u);
    }
  }
}

- (id)description
{
  memset(path, 0, 512);
  IORegistryEntryGetPath([(DOMDevice *)self io_service], "IOService", path);
  memset(className, 0, sizeof(className));
  IOObjectGetClass([(DOMDevice *)self io_service], className);
  name = [(DOMDevice *)self name];
  iORegEntryID = [(DOMDevice *)self IORegEntryID];
  iORegEntryID2 = [(DOMDevice *)self IORegEntryID];
  properties = [(DOMDevice *)self properties];
  v7 = sub_100006574(properties);
  v8 = [NSString stringWithFormat:@"DOMDevice named: %@, IORegEntryID: %lld (0x%016llx), class: %s, properties: %@", name, iORegEntryID, iORegEntryID2, className, v7];

  return v8;
}

- (BOOL)isCompositeDevice
{
  properties = [(DOMDevice *)self properties];
  v4 = [properties valueForKey:@"bDeviceClass"];

  properties2 = [(DOMDevice *)self properties];
  v6 = [properties2 valueForKey:@"bDeviceSubclass"];

  v7 = 0;
  if (v4 && v6)
  {
    if ([v4 integerValue])
    {
      v7 = 0;
    }

    else
    {
      v7 = [v6 integerValue] == 0;
    }
  }

  return v7;
}

- (BOOL)compositeDeviceIsConfigured
{
  [(DOMDevice *)self updateDeviceProperties];
  properties = [(DOMDevice *)self properties];
  v4 = [properties valueForKey:@"kUSBCurrentConfiguration"];
  v5 = v4 != 0;

  return v5;
}

- (void)evaluateScore:(id)score fromDomPersonality:(id)personality withIORegEntryID:(unint64_t)d
{
  scoreCopy = score;
  personalityCopy = personality;
  if (scoreCopy)
  {
    queue = [(DOMDevice *)self queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100005D88;
    v11[3] = &unk_100010818;
    v12 = scoreCopy;
    selfCopy = self;
    v14 = personalityCopy;
    dCopy = d;
    dispatch_sync(queue, v11);
  }
}

- (BOOL)shouldMatchDevice
{
  if ([(DOMDevice *)self isHub])
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      name = [(DOMDevice *)self name];
      v8 = 138412290;
      v9 = name;
      v5 = "Ignoring a USB Hub named %@";
LABEL_4:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v5, &v8, 0xCu);

LABEL_13:
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    if ([(DOMDevice *)self isAttachedToHub]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(DOMDevice *)self name];
      v8 = 138412290;
      v9 = name2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "FYI, %@ is attached to a USB Hub...", &v8, 0xCu);
    }

    if ([(DOMDevice *)self isCompositeDevice]&& ![(DOMDevice *)self compositeDeviceIsConfigured])
    {
      v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (!v3)
      {
        return v3;
      }

      name = [(DOMDevice *)self name];
      v8 = 138412290;
      v9 = name;
      v5 = "deferring match for composite USB device named %@";
      goto LABEL_4;
    }

    if (!+[DOMAccessoryArbitrator isInF5Mode])
    {
      LOBYTE(v3) = 1;
      return v3;
    }

    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Running in F5 mode - suppressing device matching", &v8, 2u);
      goto LABEL_13;
    }
  }

  return v3;
}

@end