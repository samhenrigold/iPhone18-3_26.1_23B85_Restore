@interface AccessoryUSBBillboardDeviceListener
- (AccessoryUSBBillboardDeviceListener)initWithVID:(unsigned __int16)d PID:(unsigned __int16)iD;
- (BOOL)startDetectUSBBillboardDevice;
- (BOOL)stopDetectUSBBillboardDevice;
- (void)AppleUSBHostBillboardDeviceServiceArrived:(unsigned int)arrived;
- (void)AppleUSBHostBillboardDeviceServiceTerminated:(unsigned int)terminated;
- (void)dealloc;
- (void)startDetectUSBBillboardDevice;
@end

@implementation AccessoryUSBBillboardDeviceListener

- (AccessoryUSBBillboardDeviceListener)initWithVID:(unsigned __int16)d PID:(unsigned __int16)iD
{
  iDCopy = iD;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = AccessoryUSBBillboardDeviceListener;
  v6 = [(AccessoryUSBBillboardDeviceListener *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_accessoryUSBBillboardDeviceVIDPID = iDCopy | (dCopy << 16);
    v6->_appleUSBHostBillboardDeviceNotify = 0;
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    accessoryUSBBillboardDeviceRegistryIDs = v7->_accessoryUSBBillboardDeviceRegistryIDs;
    v7->_accessoryUSBBillboardDeviceRegistryIDs = v8;

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%x", "com.apple.coreaccessories.USBBillboardListener", v7->_accessoryUSBBillboardDeviceVIDPID];
    v11 = dispatch_queue_create([v10 UTF8String], 0);
    accessoryUSBBillboardDeviceListenerQueue = v7->_accessoryUSBBillboardDeviceListenerQueue;
    v7->_accessoryUSBBillboardDeviceListenerQueue = v11;
  }

  return v7;
}

- (void)dealloc
{
  [(AccessoryUSBBillboardDeviceListener *)self stopDetectUSBBillboardDevice];
  v3.receiver = self;
  v3.super_class = AccessoryUSBBillboardDeviceListener;
  [(AccessoryUSBBillboardDeviceListener *)&v3 dealloc];
}

- (BOOL)startDetectUSBBillboardDevice
{
  v45 = *MEMORY[0x277D85DE8];
  accessoryUSBBillboardDeviceVIDPID = self->_accessoryUSBBillboardDeviceVIDPID;
  v36 = accessoryUSBBillboardDeviceVIDPID;
  valuePtr = HIWORD(accessoryUSBBillboardDeviceVIDPID);
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
    v7 = self->_accessoryUSBBillboardDeviceVIDPID;
    *buf = 136316162;
    *v39 = "[AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice]";
    *&v39[8] = 1024;
    *v40 = accessoryUSBBillboardDeviceVIDPID;
    *&v40[4] = 1024;
    *v41 = valuePtr;
    *&v41[4] = 1024;
    *v42 = v36;
    *&v42[4] = 1024;
    *&v42[6] = v7;
    _os_log_impl(&dword_2336F5000, v6, OS_LOG_TYPE_DEFAULT, "%s: vidpid = 0x%X (0x%x,0x%x), vs 0x%X", buf, 0x24u);
  }

  if (!self->_started)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy->_appleUSBHostBillboardDeviceNotify)
    {
      v9 = IONotificationPortCreate(*MEMORY[0x277CD28A0]);
      selfCopy->_appleUSBHostBillboardDeviceNotify = v9;
      IONotificationPortSetDispatchQueue(v9, selfCopy->_accessoryUSBBillboardDeviceListenerQueue);
    }

    v10 = IOServiceMatching("AppleUSBHostBillboardDevice");
    if (v10)
    {
      v11 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v13 = CFNumberCreate(v11, kCFNumberSInt32Type, &valuePtr);
        CFDictionaryAddValue(Mutable, @"idVendor", v13);
        v14 = CFNumberCreate(v11, kCFNumberSInt32Type, &v36);
        CFDictionaryAddValue(Mutable, @"idProduct", v14);
        v15 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v16 = v15;
        if (v15)
        {
          CFDictionaryAddValue(v15, @"IOProviderClass", @"IOUSBHostInterface");
          CFDictionaryAddValue(v16, @"IOPropertyMatch", Mutable);
          CFDictionaryAddValue(v10, @"IOParentMatch", v16);
          CFRetain(v10);
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
            v19 = self->_accessoryUSBBillboardDeviceVIDPID;
            *buf = 136316418;
            *v39 = "[AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice]";
            *&v39[8] = 1024;
            *v40 = accessoryUSBBillboardDeviceVIDPID;
            *&v40[4] = 1024;
            *v41 = valuePtr;
            *&v41[4] = 1024;
            *v42 = v36;
            *&v42[4] = 1024;
            *&v42[6] = v19;
            v43 = 2112;
            v44 = v10;
            _os_log_impl(&dword_2336F5000, v17, OS_LOG_TYPE_DEFAULT, "%s: vidpid = 0x%X (0x%x,0x%x), vs 0x%X, matchingDictionary = %@", buf, 0x2Eu);
          }

          if (!IOServiceAddMatchingNotification(selfCopy->_appleUSBHostBillboardDeviceNotify, "IOServicePublish", v10, __AppleUSBHostBillboardDeviceAdded, selfCopy, &selfCopy->_billboardAddedIterator))
          {
            __AppleUSBHostBillboardDeviceAdded(selfCopy, selfCopy->_billboardAddedIterator);
            CFRetain(v10);
            v20 = IOServiceAddMatchingNotification(selfCopy->_appleUSBHostBillboardDeviceNotify, "IOServiceTerminate", v10, __AppleUSBHostBillboardDeviceTerminated, selfCopy, &selfCopy->_billboardRemovedIterator);
            if (!v20)
            {
              __AppleUSBHostBillboardDeviceTerminated(selfCopy, selfCopy->_billboardRemovedIterator);
              self->_started = 1;
              objc_sync_exit(selfCopy);

              v21 = 1;
LABEL_28:
              CFRelease(v10);
              goto LABEL_29;
            }

            v23 = logObjectForModule();
            if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_47;
            }

            v35 = self->_accessoryUSBBillboardDeviceVIDPID;
            *buf = 67110144;
            *v39 = v20;
            *&v39[4] = 1024;
            *&v39[6] = accessoryUSBBillboardDeviceVIDPID;
            *v40 = 1024;
            *&v40[2] = valuePtr;
            *v41 = 1024;
            *&v41[2] = v36;
            *v42 = 1024;
            *&v42[2] = v35;
            v27 = "Failed to AddMatchingNotification for Termination, ret 0x%x, vidpid = 0x%X (0x%x,0x%x), vs 0x%X";
            v28 = v23;
            v29 = 32;
            goto LABEL_61;
          }

          v23 = logObjectForModule();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v26 = self->_accessoryUSBBillboardDeviceVIDPID;
            *buf = 67110146;
            *v39 = accessoryUSBBillboardDeviceVIDPID;
            *&v39[4] = 1024;
            *&v39[6] = valuePtr;
            *v40 = 1024;
            *&v40[2] = v36;
            *v41 = 1024;
            *&v41[2] = v26;
            *v42 = 2112;
            *&v42[2] = v10;
            v27 = "Failed to GetMatchingNotification, vidpid = 0x%X (0x%x,0x%x), vs 0X%X, matchingDictionary %@";
            v28 = v23;
            v29 = 36;
LABEL_61:
            _os_log_error_impl(&dword_2336F5000, v28, OS_LOG_TYPE_ERROR, v27, buf, v29);
          }

LABEL_47:

          objc_sync_exit(selfCopy);
          goto LABEL_48;
        }

        v23 = logObjectForModule();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v34 = self->_accessoryUSBBillboardDeviceVIDPID;
          *buf = 67109888;
          *v39 = accessoryUSBBillboardDeviceVIDPID;
          *&v39[4] = 1024;
          *&v39[6] = valuePtr;
          *v40 = 1024;
          *&v40[2] = v36;
          *v41 = 1024;
          *&v41[2] = v34;
          _os_log_error_impl(&dword_2336F5000, v23, OS_LOG_TYPE_ERROR, "Could not create parentMatchingDictionary, vidpid = 0x%X (0x%x,0x%x), vs 0x%X", buf, 0x1Au);
        }

LABEL_43:
        v16 = 0;
        goto LABEL_47;
      }

      v23 = logObjectForModule();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
LABEL_40:
        Mutable = 0;
        goto LABEL_43;
      }

      v33 = self->_accessoryUSBBillboardDeviceVIDPID;
      *buf = 67109888;
      *v39 = accessoryUSBBillboardDeviceVIDPID;
      *&v39[4] = 1024;
      *&v39[6] = valuePtr;
      *v40 = 1024;
      *&v40[2] = v36;
      *v41 = 1024;
      *&v41[2] = v33;
      v25 = "Could not create parentPropertyDictionary, vidpid = 0x%X (0x%x,0x%x), vs 0x%X";
    }

    else
    {
      v23 = logObjectForModule();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      v24 = self->_accessoryUSBBillboardDeviceVIDPID;
      *buf = 67109888;
      *v39 = accessoryUSBBillboardDeviceVIDPID;
      *&v39[4] = 1024;
      *&v39[6] = valuePtr;
      *v40 = 1024;
      *&v40[2] = v36;
      *v41 = 1024;
      *&v41[2] = v24;
      v25 = "Could not create matchingDictionary, vidpid = 0x%X (0x%x,0x%x), vs 0x%X";
    }

    _os_log_error_impl(&dword_2336F5000, v23, OS_LOG_TYPE_ERROR, v25, buf, 0x1Au);
    goto LABEL_40;
  }

  selfCopy = logObjectForModule();
  if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
  {
    v32 = self->_accessoryUSBBillboardDeviceVIDPID;
    *buf = 67109888;
    *v39 = accessoryUSBBillboardDeviceVIDPID;
    *&v39[4] = 1024;
    *&v39[6] = valuePtr;
    *v40 = 1024;
    *&v40[2] = v36;
    *v41 = 1024;
    *&v41[2] = v32;
    _os_log_error_impl(&dword_2336F5000, &selfCopy->super, OS_LOG_TYPE_ERROR, "Already started detecting billboard device, vidpid = 0x%X (0x%x,0x%x), vs 0x%X", buf, 0x1Au);
  }

  v10 = 0;
  v16 = 0;
  Mutable = 0;
LABEL_48:

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v30 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v30 = MEMORY[0x277D86220];
    v31 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [(AccessoryUSBBillboardDeviceListener *)accessoryUSBBillboardDeviceVIDPID startDetectUSBBillboardDevice];
  }

  [(AccessoryUSBBillboardDeviceListener *)self stopDetectUSBBillboardDevice];
  v21 = 0;
  if (v10)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (v16)
  {
    CFRelease(v16);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v21;
}

- (BOOL)stopDetectUSBBillboardDevice
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  appleUSBHostBillboardDeviceNotify = selfCopy->_appleUSBHostBillboardDeviceNotify;
  if (appleUSBHostBillboardDeviceNotify)
  {
    IONotificationPortDestroy(appleUSBHostBillboardDeviceNotify);
    selfCopy->_appleUSBHostBillboardDeviceNotify = 0;
  }

  billboardAddedIterator = selfCopy->_billboardAddedIterator;
  if (billboardAddedIterator)
  {
    IOObjectRelease(billboardAddedIterator);
    selfCopy->_billboardAddedIterator = 0;
  }

  billboardRemovedIterator = selfCopy->_billboardRemovedIterator;
  if (billboardRemovedIterator)
  {
    IOObjectRelease(billboardRemovedIterator);
    selfCopy->_billboardRemovedIterator = 0;
  }

  selfCopy->_started = 0;
  objc_sync_exit(selfCopy);

  return 1;
}

- (void)AppleUSBHostBillboardDeviceServiceArrived:(unsigned int)arrived
{
  v3 = *&arrived;
  v27 = *MEMORY[0x277D85DE8];
  v5 = [AccessoryUSBBillboardDevice parentServiceVidPid:?];
  v6 = [AccessoryUSBBillboardDevice getRegistryEntryIDFromService:v3];
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

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    accessoryUSBBillboardDeviceVIDPID = self->_accessoryUSBBillboardDeviceVIDPID;
    v17 = 136316162;
    v18 = "[AccessoryUSBBillboardDeviceListener AppleUSBHostBillboardDeviceServiceArrived:]";
    v19 = 1024;
    v20 = v3;
    v21 = 2048;
    v22 = v6;
    v23 = 1024;
    v24 = v5;
    v25 = 1024;
    v26 = accessoryUSBBillboardDeviceVIDPID;
    _os_log_debug_impl(&dword_2336F5000, v9, OS_LOG_TYPE_DEBUG, "%s: service %d, registryID 0x%llx, vidpid 0x%X vs 0x%X", &v17, 0x28u);
  }

  if (v5 == self->_accessoryUSBBillboardDeviceVIDPID)
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
      v17 = 136315906;
      v18 = "[AccessoryUSBBillboardDeviceListener AppleUSBHostBillboardDeviceServiceArrived:]";
      v19 = 1024;
      v20 = v3;
      v21 = 2048;
      v22 = v6;
      v23 = 1024;
      v24 = v5;
      _os_log_impl(&dword_2336F5000, v10, OS_LOG_TYPE_DEFAULT, "%s: service %d, registryID 0x%llx, vidpid 0x%X", &v17, 0x22u);
    }

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
    if (([(NSMutableSet *)self->_accessoryUSBBillboardDeviceRegistryIDs containsObject:v12]& 1) != 0)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v13 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
        }

        v13 = MEMORY[0x277D86220];
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_accessoryUSBBillboardDeviceVIDPID;
        v17 = 136315906;
        v18 = "[AccessoryUSBBillboardDeviceListener AppleUSBHostBillboardDeviceServiceArrived:]";
        v19 = 1024;
        v20 = v3;
        v21 = 2048;
        v22 = v6;
        v23 = 1024;
        v24 = v15;
        _os_log_impl(&dword_2336F5000, v13, OS_LOG_TYPE_DEFAULT, "%s: service %d, registryID 0x%llx, vidpid 0x%X, Already in registryID list!", &v17, 0x22u);
      }
    }

    else
    {
      [(NSMutableSet *)self->_accessoryUSBBillboardDeviceRegistryIDs addObject:v12];
      v13 = +[AccessoryUSBBillboardDeviceManager sharedManager];
      [v13 AppleUSBHostBillboardDeviceServiceArrived:v3 vidpid:self->_accessoryUSBBillboardDeviceVIDPID];
    }
  }
}

- (void)AppleUSBHostBillboardDeviceServiceTerminated:(unsigned int)terminated
{
  v3 = *&terminated;
  v29 = *MEMORY[0x277D85DE8];
  v5 = [AccessoryUSBBillboardDevice getRegistryEntryIDFromService:?];
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
    accessoryUSBBillboardDeviceVIDPID = self->_accessoryUSBBillboardDeviceVIDPID;
    v21 = 136315906;
    v22 = "[AccessoryUSBBillboardDeviceListener AppleUSBHostBillboardDeviceServiceTerminated:]";
    v23 = 1024;
    v24 = v3;
    v25 = 2048;
    v26 = v5;
    v27 = 1024;
    v28 = accessoryUSBBillboardDeviceVIDPID;
    _os_log_debug_impl(&dword_2336F5000, v8, OS_LOG_TYPE_DEBUG, "%s: service %d, registryID 0x%llx, 0x%X", &v21, 0x22u);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v5];
  v10 = [(NSMutableSet *)self->_accessoryUSBBillboardDeviceRegistryIDs containsObject:v9];
  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v10)
  {
    if (v12)
    {
      v13 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v13 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_accessoryUSBBillboardDeviceVIDPID;
      v21 = 136315906;
      v22 = "[AccessoryUSBBillboardDeviceListener AppleUSBHostBillboardDeviceServiceTerminated:]";
      v23 = 1024;
      v24 = v3;
      v25 = 2048;
      v26 = v5;
      v27 = 1024;
      v28 = v16;
      _os_log_impl(&dword_2336F5000, v13, OS_LOG_TYPE_DEFAULT, "%s: service %d, registryID 0x%llx, 0x%X", &v21, 0x22u);
    }

    v17 = +[AccessoryUSBBillboardDeviceManager sharedManager];
    [v17 AppleUSBHostBillboardDeviceServiceTerminated:v3 vidpid:self->_accessoryUSBBillboardDeviceVIDPID];

    [(NSMutableSet *)self->_accessoryUSBBillboardDeviceRegistryIDs removeObject:v9];
  }

  else
  {
    if (v12)
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
      v19 = self->_accessoryUSBBillboardDeviceVIDPID;
      v21 = 136315906;
      v22 = "[AccessoryUSBBillboardDeviceListener AppleUSBHostBillboardDeviceServiceTerminated:]";
      v23 = 1024;
      v24 = v3;
      v25 = 2048;
      v26 = v5;
      v27 = 1024;
      v28 = v19;
      _os_log_impl(&dword_2336F5000, v14, OS_LOG_TYPE_DEFAULT, "%s: service %d, registryID 0x%llx, vidpid 0x%X, Not in registryID list!", &v21, 0x22u);
    }
  }
}

- (void)startDetectUSBBillboardDevice
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_error_impl(&dword_2336F5000, a2, OS_LOG_TYPE_ERROR, "Failed startDetectUSBBillboardDevice, cleanup, vidpid = 0x%X", v2, 8u);
}

@end