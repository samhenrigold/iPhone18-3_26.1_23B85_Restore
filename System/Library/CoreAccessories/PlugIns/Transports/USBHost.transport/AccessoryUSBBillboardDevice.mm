@interface AccessoryUSBBillboardDevice
+ (unint64_t)getRegistryEntryIDFromService:(unsigned int)service;
+ (unsigned)parentServiceVidPid:(unsigned int)pid;
- (AccessoryUSBBillboardDevice)initWithService:(unsigned int)service;
- (void)dismissNotSupportNotification;
- (void)presentNotSupportNotification;
@end

@implementation AccessoryUSBBillboardDevice

- (AccessoryUSBBillboardDevice)initWithService:(unsigned int)service
{
  v3 = *&service;
  v11.receiver = self;
  v11.super_class = AccessoryUSBBillboardDevice;
  v4 = [(AccessoryUSBBillboardDevice *)&v11 init];
  if (v4)
  {
    v4->_registryEntryID = [AccessoryUSBBillboardDevice getRegistryEntryIDFromService:v3];
    v5 = [AccessoryUSBBillboardDevice parentServiceVidPid:v3];
    HIDWORD(v6) = v5;
    LODWORD(v6) = v5;
    *&v4->_vid = v6 >> 16;
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x", v5];
    v8 = acc_userNotifications_generateIdentifier(@"billboard-registry", v7);
    identifier = v4->_identifier;
    v4->_identifier = v8;
  }

  return v4;
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
    vid = self->_vid;
    pid = self->_pid;
    registryEntryID = self->_registryEntryID;
    groupIdentifier = [v3 groupIdentifier];
    v13 = 136316418;
    v14 = "[AccessoryUSBBillboardDevice presentNotSupportNotification]";
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
    vid = self->_vid;
    pid = self->_pid;
    registryEntryID = self->_registryEntryID;
    v11 = 136316162;
    v12 = "[AccessoryUSBBillboardDevice dismissNotSupportNotification]";
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

+ (unsigned)parentServiceVidPid:(unsigned int)pid
{
  v30 = *MEMORY[0x277D85DE8];
  parent = 0;
  ParentEntry = IORegistryEntryGetParentEntry(pid, "IOService", &parent);
  if (ParentEntry)
  {
    [(AccessoryUSBBillboardDevice *)&parent parentServiceVidPid:pid, ParentEntry];
    v5 = 0;
    v8 = 0;
    CFProperty = 0;
    v10 = 0;
  }

  else
  {
    if (parent)
    {
      v5 = IOObjectCopyClass(parent);
      v6 = *MEMORY[0x277CBECE8];
      CFProperty = IORegistryEntryCreateCFProperty(parent, @"idVendor", *MEMORY[0x277CBECE8], 0);
      v8 = IORegistryEntryCreateCFProperty(parent, @"idProduct", v6, 0);
      IOObjectRelease(parent);
    }

    else
    {
      v5 = 0;
      v8 = 0;
      CFProperty = 0;
    }

    unsignedShortValue = [CFProperty unsignedShortValue];
    v10 = [v8 unsignedShortValue] | (unsignedShortValue << 16);
  }

  if (gLogObjects)
  {
    v11 = gNumLogObjects < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136316674;
    v17 = "+[AccessoryUSBBillboardDevice parentServiceVidPid:]";
    v18 = 1024;
    pidCopy = pid;
    v20 = 1024;
    v21 = parent;
    v22 = 2112;
    v23 = v5;
    v24 = 2112;
    v25 = CFProperty;
    v26 = 2112;
    v27 = v8;
    v28 = 1024;
    v29 = v10;
    _os_log_impl(&dword_2336F5000, v13, OS_LOG_TYPE_INFO, "%s: service(%d) parent(%d - %@) vid/pid(%@/%@) vidpid 0X%X", buf, 0x3Cu);
  }

  return v10;
}

+ (void)parentServiceVidPid:(int)a3 .cold.1(int *a1, int a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = logObjectForModule();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a1;
    v8 = 136315906;
    v9 = "+[AccessoryUSBBillboardDevice parentServiceVidPid:]";
    v10 = 1024;
    v11 = a2;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = a3;
    _os_log_impl(&dword_2336F5000, v6, OS_LOG_TYPE_DEFAULT, "%s: service(%d) parent(%d) not available. (%d)", &v8, 0x1Eu);
  }
}

@end