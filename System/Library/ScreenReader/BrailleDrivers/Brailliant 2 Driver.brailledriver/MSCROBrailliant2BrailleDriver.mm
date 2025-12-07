@interface MSCROBrailliant2BrailleDriver
- (BOOL)setMainCells:(const char *)cells length:(int64_t)length;
- (BOOL)unloadDriver;
- (MSCROBrailliant2BrailleDriver)init;
- (id)getInputEvents;
- (int)brailleInputMode;
- (int)loadDriverWithIOElement:(id)element;
- (void)dealloc;
- (void)fileReader:(id)reader data:(const void *)data length:(unint64_t)length;
- (void)removeDeviceNotification:(id)notification;
@end

@implementation MSCROBrailliant2BrailleDriver

- (MSCROBrailliant2BrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROBrailliant2BrailleDriver;
  result = [(MSCROBrailliant2BrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROBrailliant2BrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROBrailliant2BrailleDriver;
  [(MSCROBrailliant2BrailleDriver *)&v3 dealloc];
}

- (int)loadDriverWithIOElement:(id)element
{
  elementCopy = element;
  v5 = +[AXSubsystemBrailleHardware sharedInstance];
  ignoreLogging = [v5 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    v7 = +[AXSubsystemBrailleHardware identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v145 = v11;
        _os_log_impl(&dword_0, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  if ([elementCopy conformsToProtocol:&OBJC_PROTOCOL___SCROIOBluetoothElementProtocol] && objc_msgSend(elementCopy, "transport") == 2)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    bundleIdentifier = [v12 bundleIdentifier];

    if (bundleIdentifier)
    {
      if (self->_isDriverLoaded)
      {
        [(MSCROBrailliant2BrailleDriver *)self unloadDriver];
      }

      infoDictionary = [v12 infoDictionary];
      [infoDictionary objectForKey:kSCROBrailleDriverModels];
      v137 = v136 = elementCopy;
      bluetoothAddress = [elementCopy bluetoothAddress];
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v16 = +[BluetoothManager sharedInstance];
      pairedDevices = [v16 pairedDevices];

      v18 = [pairedDevices countByEnumeratingWithState:&v139 objects:v143 count:16];
      v138 = infoDictionary;
      if (v18)
      {
        v19 = v18;
        v134 = v12;
        v20 = *v140;
        while (2)
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v140 != v20)
            {
              objc_enumerationMutation(pairedDevices);
            }

            v22 = *(*(&v139 + 1) + 8 * i);
            address = [v22 address];
            v24 = [address isEqualToString:bluetoothAddress];

            if (v24)
            {
              v25 = v22;
              goto LABEL_27;
            }
          }

          v19 = [pairedDevices countByEnumeratingWithState:&v139 objects:v143 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }

        v25 = 0;
LABEL_27:
        v12 = v134;
        infoDictionary = v138;
      }

      else
      {
        v25 = 0;
      }

      v34 = +[AXSubsystemBrailleHardware sharedInstance];
      ignoreLogging2 = [v34 ignoreLogging];

      if ((ignoreLogging2 & 1) == 0)
      {
        v36 = v25;
        v37 = +[AXSubsystemBrailleHardware identifier];
        v38 = AXLoggerForFacility();

        v39 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = AXColorizeFormatLog();
          bluetoothChannelIsLost = v36;
          v41 = _AXStringForArgs();
          if (os_log_type_enabled(v38, v39))
          {
            *buf = 138543362;
            v145 = v41;
            _os_log_impl(&dword_0, v38, v39, "%{public}@", buf, 0xCu);
          }
        }

        v25 = v36;
        infoDictionary = v138;
      }

      if (!v25)
      {
        v52 = +[AXSubsystemBrailleHardware sharedInstance];
        ignoreLogging3 = [v52 ignoreLogging];

        if (ignoreLogging3)
        {
          LODWORD(v28) = 1;
          elementCopy = v136;
          v31 = v137;
LABEL_65:

LABEL_66:
LABEL_67:

          goto LABEL_68;
        }

        v64 = +[AXSubsystemBrailleHardware identifier];
        v65 = AXLoggerForFacility();

        v51 = v65;
        LODWORD(v28) = 1;
        v66 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = AXColorizeFormatLog();
          v68 = _AXStringForArgs();
          if (os_log_type_enabled(v65, v66))
          {
            *buf = 138543362;
            v145 = v68;
            _os_log_impl(&dword_0, v65, v66, "%{public}@", buf, 0xCu);
          }
        }

        goto LABEL_63;
      }

      v42 = +[NSNotificationCenter defaultCenter];
      [v42 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
      v135 = v42;
      [v42 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
      if (([v25 connected] & 1) == 0)
      {
        v54 = +[AXSubsystemBrailleHardware sharedInstance];
        ignoreLogging4 = [v54 ignoreLogging];

        if ((ignoreLogging4 & 1) == 0)
        {
          v56 = v25;
          v57 = +[AXSubsystemBrailleHardware identifier];
          v58 = AXLoggerForFacility();

          v59 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = AXColorizeFormatLog();
            v61 = _AXStringForArgs();
            if (os_log_type_enabled(v58, v59))
            {
              *buf = 138543362;
              v145 = v61;
              _os_log_impl(&dword_0, v58, v59, "%{public}@", buf, 0xCu);
            }
          }

          v25 = v56;
          infoDictionary = v138;
        }

        v51 = v135;
        [v135 removeObserver:self, bluetoothChannelIsLost];
        LODWORD(v28) = 1;
        goto LABEL_63;
      }

      v43 = MSCROBTOpenComPort(v25, &self->_comPort);
      if (v43)
      {
        v28 = v43;
        v44 = +[AXSubsystemBrailleHardware sharedInstance];
        ignoreLogging5 = [v44 ignoreLogging];

        if ((ignoreLogging5 & 1) == 0)
        {
          v132 = v25;
          v46 = +[AXSubsystemBrailleHardware identifier];
          v47 = AXLoggerForFacility();

          v48 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = AXColorizeFormatLog();
            bluetoothChannelIsLost = [NSNumber numberWithUnsignedInt:v28];
            v50 = _AXStringForArgs();

            if (os_log_type_enabled(v47, v48))
            {
              *buf = 138543362;
              v145 = v50;
              _os_log_impl(&dword_0, v47, v48, "%{public}@", buf, 0xCu);
            }
          }

          v25 = v132;
        }

        v51 = v135;
        [v135 removeObserver:self, bluetoothChannelIsLost];
LABEL_63:
        elementCopy = v136;
        v31 = v137;
LABEL_64:

        goto LABEL_65;
      }

      objc_storeStrong(&self->_device, v25);
      v131 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:self->_comPort closeOnDealloc:1];
      v70 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:self fileHandle:v131];
      readerThread = self->_readerThread;
      self->_readerThread = v70;

      Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
      self->_safeReadBuffer = Mutable;
      v133 = v25;
      if (Mutable)
      {
        v73 = [objc_allocWithZone(NSLock) init];
        readBufferLock = self->_readBufferLock;
        self->_readBufferLock = v73;

        v51 = v42;
        if (self->_readBufferLock && (v75 = CFDataCreateMutable(kCFAllocatorDefault, 0), (self->_readBuffer = v75) != 0))
        {
          [(SCRDFileReader *)self->_readerThread start];
          InitializationRequestPacket = SCRDHumanwareCreateInitializationRequestPacket();
          v77 = InitializationRequestPacket;
          if (InitializationRequestPacket)
          {
            v78 = 0;
            v128 = InitializationRequestPacket;
            while (!self->_deviceID)
            {
              Length = CFDataGetLength(v77);
              comPort = self->_comPort;
              BytePtr = CFDataGetBytePtr(v77);
              if (write(comPort, BytePtr, Length) < Length)
              {
                v105 = +[AXSubsystemBrailleHardware sharedInstance];
                ignoreLogging6 = [v105 ignoreLogging];

                if (ignoreLogging6)
                {
                  goto LABEL_105;
                }

                v107 = +[AXSubsystemBrailleHardware identifier];
                v101 = AXLoggerForFacility();

                v102 = AXOSLogLevelFromAXLogLevel();
                if (!os_log_type_enabled(v101, v102))
                {
                  goto LABEL_116;
                }

                mode = AXColorizeFormatLog();
                v104 = _AXStringForArgs();
                if (!os_log_type_enabled(v101, v102))
                {
                  goto LABEL_125;
                }

                *buf = 138543362;
                v145 = v104;
LABEL_102:
                v108 = v101;
                _os_log_impl(&dword_0, v101, v102, "%{public}@", buf, 0xCu);
LABEL_126:
                elementCopy = v136;
                v31 = v137;
                v51 = v135;
                v77 = v128;
LABEL_127:

                goto LABEL_128;
              }

              self->_bluetoothChannelIsLost = 0;
              self->_hasBeenUnloaded = 0;
              v82 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0, 0);
              v83 = v82;
              if (self->_bluetoothChannelIsLost || self->_hasBeenUnloaded || v82 == kCFRunLoopRunStopped)
              {
                v98 = +[AXSubsystemBrailleHardware sharedInstance];
                ignoreLogging7 = [v98 ignoreLogging];

                if (ignoreLogging7)
                {
                  goto LABEL_105;
                }

                v100 = +[AXSubsystemBrailleHardware identifier];
                v101 = AXLoggerForFacility();

                v102 = AXOSLogLevelFromAXLogLevel();
                if (os_log_type_enabled(v101, v102))
                {
                  v103 = AXColorizeFormatLog();
                  hasBeenUnloaded = self->_hasBeenUnloaded;
                  v127 = v83;
                  bluetoothChannelIsLost = self->_bluetoothChannelIsLost;
                  mode = v103;
                  v104 = _AXStringForArgs();
                  if (os_log_type_enabled(v101, v102))
                  {
                    *buf = 138543362;
                    v145 = v104;
                    goto LABEL_102;
                  }

LABEL_125:
                  v108 = v101;
                  goto LABEL_126;
                }

LABEL_116:
                v108 = v101;
                elementCopy = v136;
                v31 = v137;
                v51 = v135;
                v77 = v128;
LABEL_128:

                goto LABEL_106;
              }

              [(NSLock *)self->_readBufferLock lock];
              v84 = CFDataGetLength(self->_readBuffer);
              if (v84 >= 1)
              {
                v85 = v84;
                safeReadBuffer = self->_safeReadBuffer;
                v87 = CFDataGetBytePtr(self->_readBuffer);
                CFDataAppendBytes(safeReadBuffer, v87, v85);
                v146.location = 0;
                v146.length = v85;
                CFDataDeleteBytes(self->_readBuffer, v146);
              }

              [(NSLock *)self->_readBufferLock unlock];
              InitializationPacketFromBuffer = SCRDHumanwareCreateInitializationPacketFromBuffer();
              v25 = v133;
              if (InitializationPacketFromBuffer)
              {
                v89 = InitializationPacketFromBuffer;
                do
                {
                  v90 = SCRDHumanwareDeviceIDForInitializationPacket();
                  if (SCRDHumanwareIsDeviceIDValid())
                  {
                    self->_mainSize = SCRDHumanwareDisplaySizeForDeviceID();
                    self->_deviceID = v90;
                  }

                  CFRelease(v89);
                  v89 = SCRDHumanwareCreateInitializationPacketFromBuffer();
                }

                while (v89);
              }

              ++v78;
              v77 = v128;
              if (v78 == 7)
              {
                break;
              }
            }

            CFRelease(v77);
            v91 = _modelIdentifierForDeviceIdentifier(self->_deviceID);
            modelIdentifier = self->_modelIdentifier;
            self->_modelIdentifier = v91;

            v93 = [v137 objectForKey:self->_modelIdentifier];
            if (!v93)
            {
              v109 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging8 = [v109 ignoreLogging];

              if (ignoreLogging8)
              {
                goto LABEL_104;
              }

              v121 = +[AXSubsystemBrailleHardware identifier];
              v122 = AXLoggerForFacility();

              v123 = AXOSLogLevelFromAXLogLevel();
              if (!os_log_type_enabled(v122, v123))
              {
                v108 = v122;
                v77 = 0;
                elementCopy = v136;
                v31 = v137;
                v51 = v135;
                goto LABEL_128;
              }

              v124 = AXColorizeFormatLog();
              bluetoothChannelIsLost = self->_modelIdentifier;
              mode = v124;
              v104 = _AXStringForArgs();
              v108 = v122;
              if (os_log_type_enabled(v122, v123))
              {
                *buf = 138543362;
                v145 = v104;
                _os_log_impl(&dword_0, v122, v123, "%{public}@", buf, 0xCu);
              }

              v77 = 0;
              elementCopy = v136;
              v31 = v137;
              v51 = v135;
              goto LABEL_127;
            }

            v94 = v93;
            self->_isDriverLoaded = 1;
            v95 = +[AXSubsystemBrailleHardware sharedInstance];
            ignoreLogging9 = [v95 ignoreLogging];

            if (ignoreLogging9)
            {
              LODWORD(v28) = 0;
              elementCopy = v136;
              v31 = v137;
              v51 = v135;
              v97 = v131;
              goto LABEL_115;
            }

            v118 = +[AXSubsystemBrailleHardware identifier];
            v115 = AXLoggerForFacility();

            v119 = AXOSLogLevelFromAXLogLevel();
            if (!os_log_type_enabled(v115, v119))
            {
              LODWORD(v28) = 0;
              elementCopy = v136;
              v31 = v137;
              v51 = v135;
LABEL_114:
              v97 = v131;

              v25 = v133;
LABEL_115:

              goto LABEL_64;
            }

            modea = AXColorizeFormatLog();
            v120 = _AXStringForArgs();
            v51 = v135;
            if (os_log_type_enabled(v115, v119))
            {
              *buf = 138543362;
              v145 = v120;
              _os_log_impl(&dword_0, v115, v119, "%{public}@", buf, 0xCu);
            }

            LODWORD(v28) = 0;
            elementCopy = v136;
            v31 = v137;
            p_isa = &modea->isa;
LABEL_113:

            goto LABEL_114;
          }
        }

        else
        {
          v77 = 0;
        }

        elementCopy = v136;
        v31 = v137;
      }

      else
      {
LABEL_104:
        v77 = 0;
LABEL_105:
        elementCopy = v136;
        v31 = v137;
        v51 = v135;
      }

LABEL_106:
      [(SCRDFileReader *)self->_readerThread invalidate:bluetoothChannelIsLost];
      v111 = self->_readerThread;
      self->_readerThread = 0;

      v112 = self->_safeReadBuffer;
      if (v112)
      {
        CFRelease(v112);
        self->_safeReadBuffer = 0;
      }

      if (v77)
      {
        CFRelease(v77);
      }

      [v51 removeObserver:self];
      [(NSLock *)self->_readBufferLock lock];
      readBuffer = self->_readBuffer;
      if (readBuffer)
      {
        CFRelease(readBuffer);
        self->_readBuffer = 0;
      }

      v114 = self->_readBufferLock;
      self->_readBufferLock = 0;
      v115 = v114;

      [v115 unlock];
      device = self->_device;
      self->_device = 0;

      v94 = 0;
      self->_comPort = -1;
      self->_deviceID = 0;
      p_isa = self->_modelIdentifier;
      self->_modelIdentifier = 0;
      LODWORD(v28) = 2;
      goto LABEL_113;
    }

    v32 = +[AXSubsystemBrailleHardware sharedInstance];
    ignoreLogging10 = [v32 ignoreLogging];

    if ((ignoreLogging10 & 1) == 0)
    {
      v62 = +[AXSubsystemBrailleHardware identifier];
      infoDictionary = AXLoggerForFacility();

      LODWORD(v28) = 1;
      v63 = AXOSLogLevelFromAXLogLevel();
      if (!os_log_type_enabled(infoDictionary, v63))
      {
LABEL_68:

        goto LABEL_69;
      }

      v31 = AXColorizeFormatLog();
      v25 = _AXStringForArgs();
      if (os_log_type_enabled(infoDictionary, v63))
      {
        *buf = 138543362;
        v145 = v25;
        _os_log_impl(&dword_0, infoDictionary, v63, "%{public}@", buf, 0xCu);
      }

      goto LABEL_66;
    }

    LODWORD(v28) = 1;
LABEL_69:

    goto LABEL_70;
  }

  v26 = +[AXSubsystemBrailleHardware sharedInstance];
  ignoreLogging11 = [v26 ignoreLogging];

  if ((ignoreLogging11 & 1) == 0)
  {
    v29 = +[AXSubsystemBrailleHardware identifier];
    v12 = AXLoggerForFacility();

    LODWORD(v28) = 1;
    v30 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v12, v30))
    {
      infoDictionary = AXColorizeFormatLog();
      [elementCopy transport];
      [elementCopy conformsToProtocol:&OBJC_PROTOCOL___SCROIOBluetoothElementProtocol];
      v31 = _AXStringForArgs();
      if (os_log_type_enabled(v12, v30))
      {
        *buf = 138543362;
        v145 = v31;
        _os_log_impl(&dword_0, v12, v30, "%{public}@", buf, 0xCu);
      }

      goto LABEL_67;
    }

    goto LABEL_69;
  }

  LODWORD(v28) = 1;
LABEL_70:

  return v28;
}

- (BOOL)unloadDriver
{
  v3 = +[AXSubsystemBrailleHardware sharedInstance];
  ignoreLogging = [v3 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    v5 = +[AXSubsystemBrailleHardware identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v19 = 138543362;
        v20 = v9;
        _os_log_impl(&dword_0, v6, v7, "%{public}@", &v19, 0xCu);
      }
    }
  }

  self->_hasBeenUnloaded = 1;
  if (self->_isDriverLoaded)
  {
    self->_isDriverLoaded = 0;
    [(SCRDFileReader *)self->_readerThread invalidate];
    readerThread = self->_readerThread;
    self->_readerThread = 0;

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 removeObserver:self];

    safeReadBuffer = self->_safeReadBuffer;
    if (safeReadBuffer)
    {
      CFRelease(safeReadBuffer);
      self->_safeReadBuffer = 0;
    }

    [(NSLock *)self->_readBufferLock lock];
    readBuffer = self->_readBuffer;
    if (readBuffer)
    {
      CFRelease(readBuffer);
      self->_readBuffer = 0;
    }

    readBufferLock = self->_readBufferLock;
    self->_readBufferLock = 0;
    v15 = readBufferLock;

    [(NSLock *)v15 unlock];
    [(BluetoothDevice *)self->_device disconnect];
    device = self->_device;
    self->_device = 0;

    self->_comPort = -1;
    self->_bluetoothChannelIsLost = 1;
    modelIdentifier = self->_modelIdentifier;
    self->_modelIdentifier = 0;

    self->_mainSize = 0;
    self->_deviceID = 0;
  }

  return 1;
}

- (int)brailleInputMode
{
  deviceID = self->_deviceID;
  if (deviceID - 1) < 8 && ((0xA3u >> (deviceID - 1)))
  {
    return 2;
  }

  else
  {
    return 2 * (deviceID == 7);
  }
}

- (id)getInputEvents
{
  [(NSLock *)self->_readBufferLock lock];
  readBuffer = self->_readBuffer;
  if (readBuffer)
  {
    Length = CFDataGetLength(readBuffer);
    if (Length >= 1)
    {
      v5 = Length;
      safeReadBuffer = self->_safeReadBuffer;
      BytePtr = CFDataGetBytePtr(self->_readBuffer);
      CFDataAppendBytes(safeReadBuffer, BytePtr, v5);
      v12.location = 0;
      v12.length = v5;
      CFDataDeleteBytes(self->_readBuffer, v12);
    }
  }

  [(NSLock *)self->_readBufferLock unlock];
  v8 = self->_safeReadBuffer;
  deviceID = self->_deviceID;

  return _SCRDHumanwareExtractEventsFromBuffer(v8, deviceID, 0);
}

- (BOOL)setMainCells:(const char *)cells length:(int64_t)length
{
  v5 = SCRDHumanwareCreateWriteRequestPacket();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (self->_comPort == -1)
  {
    v10 = 0;
  }

  else
  {
    Length = CFDataGetLength(v5);
    comPort = self->_comPort;
    BytePtr = CFDataGetBytePtr(v6);
    v10 = write(comPort, BytePtr, Length) == Length;
  }

  CFRelease(v6);
  return v10;
}

- (void)fileReader:(id)reader data:(const void *)data length:(unint64_t)length
{
  if (length)
  {
    [(NSLock *)self->_readBufferLock lock];
    readBuffer = self->_readBuffer;
    if (readBuffer)
    {
      CFDataAppendBytes(readBuffer, data, length);
    }

    [(NSLock *)self->_readBufferLock unlock];
  }

  WeakRetained = objc_loadWeakRetained(&self->_driverDelegate);
  [WeakRetained brailleDriverDidReceiveInput];
}

- (void)removeDeviceNotification:(id)notification
{
  notificationCopy = notification;
  v5 = AXLogBrailleHW();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = notificationCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Brailliant2 remove device: %@", &v9, 0xCu);
  }

  object = [notificationCopy object];
  v7 = object;
  if (object)
  {
    if (object == self->_device)
    {
      self->_bluetoothChannelIsLost = 1;
      if (self->_isDriverLoaded)
      {
        v8 = +[NSNotificationCenter defaultCenter];
        [v8 postNotificationName:@"SCROBrailleDriverProtocolUnloadNotification" object:self userInfo:0];
      }
    }
  }
}

@end