@interface MSCROHandyTechBrailleDriver
- (BOOL)setMainCells:(const char *)cells length:(int64_t)length;
- (BOOL)unloadDriver;
- (MSCROHandyTechBrailleDriver)init;
- (id)getInputEvents;
- (int)loadDriverWithIOElement:(id)element;
- (void)dealloc;
- (void)fileReader:(id)reader data:(const void *)data length:(unint64_t)length;
- (void)removeDeviceNotification:(id)notification;
@end

@implementation MSCROHandyTechBrailleDriver

- (MSCROHandyTechBrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROHandyTechBrailleDriver;
  result = [(MSCROHandyTechBrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_nextResetRequestTime = -3061152000.0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROHandyTechBrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROHandyTechBrailleDriver;
  [(MSCROHandyTechBrailleDriver *)&v3 dealloc];
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
        buf = 138543362;
        v132 = v11;
        _os_log_impl(&dword_0, v8, v9, "%{public}@", &buf, 0xCu);
      }
    }
  }

  if ([elementCopy transport] == 2 && (objc_msgSend(elementCopy, "conformsToProtocol:", &OBJC_PROTOCOL___SCROIOBluetoothElementProtocol) & 1) != 0)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    bundleIdentifier = [v12 bundleIdentifier];

    if (bundleIdentifier)
    {
      if (self->_isDriverLoaded)
      {
        [(MSCROHandyTechBrailleDriver *)self unloadDriver];
      }

      v122 = v12;
      infoDictionary = [v12 infoDictionary];
      [infoDictionary objectForKey:kSCROBrailleDriverModels];
      v124 = v123 = elementCopy;
      bluetoothAddress = [elementCopy bluetoothAddress];
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      v129 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      pairedDevices = [v15 pairedDevices];

      v17 = [pairedDevices countByEnumeratingWithState:&v126 objects:v130 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v127;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v127 != v19)
            {
              objc_enumerationMutation(pairedDevices);
            }

            v21 = *(*(&v126 + 1) + 8 * i);
            address = [v21 address];
            v23 = [address isEqualToString:bluetoothAddress];

            if (v23)
            {
              v31 = v21;

              if (v31)
              {
                v32 = +[NSNotificationCenter defaultCenter];
                [v32 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
                v120 = v32;
                [v32 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
                if (([v31 connected]& 1) != 0)
                {
                  v33 = MSCROBTOpenComPort(v31, &self->_comPort);
                  if (!v33)
                  {
                    objc_storeStrong(&self->_device, v21);
                    v52 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:self->_comPort closeOnDealloc:1];
                    v53 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:self fileHandle:v52];
                    readerThread = self->_readerThread;
                    self->_readerThread = v53;

                    Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
                    self->_safeReadBuffer = Mutable;
                    if (!Mutable)
                    {
                      goto LABEL_114;
                    }

                    v56 = [objc_allocWithZone(NSLock) init];
                    readBufferLock = self->_readBufferLock;
                    self->_readBufferLock = v56;

                    if (!self->_readBufferLock)
                    {
                      goto LABEL_114;
                    }

                    v58 = CFDataCreateMutable(kCFAllocatorDefault, 0);
                    self->_readBuffer = v58;
                    if (!v58)
                    {
                      goto LABEL_114;
                    }

                    [(SCRDFileReader *)self->_readerThread start];
                    v59 = 0;
                    while (1)
                    {
                      __buf = -1;
                      if (!write(self->_comPort, &__buf, 1uLL))
                      {
                        break;
                      }

                      self->_bluetoothChannelIsLost = 0;
                      self->_hasBeenUnloaded = 0;
                      v60 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.1, 0);
                      v61 = v60;
                      if (self->_bluetoothChannelIsLost || self->_hasBeenUnloaded || v60 == kCFRunLoopRunStopped)
                      {
                        v94 = +[AXSubsystemBrailleHardware sharedInstance];
                        ignoreLogging2 = [v94 ignoreLogging];

                        if (ignoreLogging2)
                        {
                          goto LABEL_114;
                        }

                        v96 = +[AXSubsystemBrailleHardware identifier];
                        v97 = AXLoggerForFacility();

                        v98 = AXOSLogLevelFromAXLogLevel();
                        if (os_log_type_enabled(v97, v98))
                        {
                          v99 = AXColorizeFormatLog();
                          hasBeenUnloaded = self->_hasBeenUnloaded;
                          v119 = v61;
                          bluetoothChannelIsLost = self->_bluetoothChannelIsLost;
                          v100 = _AXStringForArgs();
                          if (os_log_type_enabled(v97, v98))
                          {
                            buf = 138543362;
                            v132 = v100;
                            goto LABEL_111;
                          }

                          goto LABEL_112;
                        }

                        goto LABEL_113;
                      }

                      [(NSLock *)self->_readBufferLock lock];
                      Length = CFDataGetLength(self->_readBuffer);
                      if (Length >= 1)
                      {
                        v63 = Length;
                        safeReadBuffer = self->_safeReadBuffer;
                        BytePtr = CFDataGetBytePtr(self->_readBuffer);
                        CFDataAppendBytes(safeReadBuffer, BytePtr, v63);
                        v133.location = 0;
                        v133.length = v63;
                        CFDataDeleteBytes(self->_readBuffer, v133);
                      }

                      [(NSLock *)self->_readBufferLock unlock];
                      SCRDAdvanceBufferToPacketStart();
                      while (CFDataGetLength(self->_safeReadBuffer) > 1)
                      {
                        v66 = CFDataGetBytePtr(self->_safeReadBuffer);
                        if (*v66 == 254)
                        {
                          v67 = v66[1];
                          v68 = (v67 - 129) > 0x27 || ((1 << (v67 + 127)) & 0xA80000026FLL) == 0;
                          if (!v68 || ((v67 - 68) <= 0x30 ? (v69 = ((1 << (v67 - 68)) & 0x1400120010001) == 0) : (v69 = 1), v69 ? (v70 = v67 == 5) : (v70 = 1), v70))
                          {
                            v71 = v66[1];
                            goto LABEL_88;
                          }
                        }

                        else
                        {
                          v134.location = 0;
                          v134.length = 1;
                          CFDataDeleteBytes(self->_safeReadBuffer, v134);
                        }
                      }

                      v71 = 0;
LABEL_88:
                      if (v59 <= 3)
                      {
                        ++v59;
                        if (!v71)
                        {
                          continue;
                        }
                      }

                      v72 = sub_1D90(v71);
                      modelIdentifier = self->_modelIdentifier;
                      self->_modelIdentifier = v72;

                      v74 = [v124 objectForKey:self->_modelIdentifier];
                      if (v74)
                      {
                        v75 = v74;
                        self->_identifierByte = v71;
                        v76 = [(NSLock *)v74 objectForKey:kSCROBrailleDriverMainDisplaySize];
                        self->_mainSize = [v76 unsignedCharValue];

                        if (SCRDHandyTechDisplayUsesExtendedProtocol())
                        {
                          ExtendedProtocolRequestPacket = SCRDHandyTechCreateExtendedProtocolRequestPacket();
                          if (ExtendedProtocolRequestPacket)
                          {
                            v78 = ExtendedProtocolRequestPacket;
                            v79 = +[AXSubsystemBrailleHardware sharedInstance];
                            ignoreLogging3 = [v79 ignoreLogging];

                            if ((ignoreLogging3 & 1) == 0)
                            {
                              v81 = +[AXSubsystemBrailleHardware identifier];
                              v82 = AXLoggerForFacility();

                              v83 = AXOSLogLevelFromAXLogLevel();
                              if (os_log_type_enabled(v82, v83))
                              {
                                v84 = AXColorizeFormatLog();
                                v85 = _AXStringForArgs();
                                if (os_log_type_enabled(v82, v83))
                                {
                                  buf = 138543362;
                                  v132 = v85;
                                  _os_log_impl(&dword_0, v82, v83, "%{public}@", &buf, 0xCu);
                                }
                              }
                            }

                            comPort = self->_comPort;
                            v87 = CFDataGetBytePtr(v78);
                            v88 = CFDataGetLength(v78);
                            write(comPort, v87, v88);
                            CFRelease(v78);
                          }

                          LOBYTE(buf) = 0;
                          v89 = SCRDHandyTechCreateExtendedProtocolRequestPacket();
                          if (v89)
                          {
                            v90 = v89;
                            v91 = self->_comPort;
                            v92 = CFDataGetBytePtr(v89);
                            v93 = CFDataGetLength(v90);
                            write(v91, v92, v93);
                            CFRelease(v90);
                          }
                        }

                        v26 = 0;
                        self->_isDriverLoaded = 1;
                        v30 = v124;
                        goto LABEL_119;
                      }

                      v110 = +[AXSubsystemBrailleHardware sharedInstance];
                      ignoreLogging4 = [v110 ignoreLogging];

                      if ((ignoreLogging4 & 1) == 0)
                      {
                        v112 = +[AXSubsystemBrailleHardware identifier];
                        v113 = AXLoggerForFacility();

                        v114 = AXOSLogLevelFromAXLogLevel();
                        if (os_log_type_enabled(v113, v114))
                        {
                          v115 = AXColorizeFormatLog();
                          bluetoothChannelIsLost = self->_modelIdentifier;
                          v116 = _AXStringForArgs();
                          if (os_log_type_enabled(v113, v114))
                          {
                            buf = 138543362;
                            v132 = v116;
                            _os_log_impl(&dword_0, v113, v114, "%{public}@", &buf, 0xCu);
                          }
                        }
                      }

LABEL_114:
                      [(SCRDFileReader *)self->_readerThread invalidate:bluetoothChannelIsLost];
                      v104 = self->_readerThread;
                      self->_readerThread = 0;

                      v105 = self->_safeReadBuffer;
                      if (v105)
                      {
                        CFRelease(v105);
                        self->_safeReadBuffer = 0;
                      }

                      [v120 removeObserver:self];
                      [(NSLock *)self->_readBufferLock lock];
                      readBuffer = self->_readBuffer;
                      v30 = v124;
                      if (readBuffer)
                      {
                        CFRelease(readBuffer);
                        self->_readBuffer = 0;
                      }

                      v107 = self->_readBufferLock;
                      self->_readBufferLock = 0;
                      v75 = v107;

                      [(NSLock *)v75 unlock];
                      device = self->_device;
                      self->_device = 0;

                      close(self->_comPort);
                      self->_comPort = -1;
                      self->_spaceKeyState = 0;
                      v109 = self->_modelIdentifier;
                      self->_modelIdentifier = 0;

                      v26 = 2;
LABEL_119:

                      v12 = v122;
                      elementCopy = v123;
                      v34 = v120;
                      v29 = infoDictionary;
LABEL_50:

LABEL_52:
LABEL_53:

LABEL_54:
LABEL_55:

                      goto LABEL_56;
                    }

                    v101 = +[AXSubsystemBrailleHardware sharedInstance];
                    ignoreLogging5 = [v101 ignoreLogging];

                    if (ignoreLogging5)
                    {
                      goto LABEL_114;
                    }

                    v103 = +[AXSubsystemBrailleHardware identifier];
                    v97 = AXLoggerForFacility();

                    v98 = AXOSLogLevelFromAXLogLevel();
                    if (os_log_type_enabled(v97, v98))
                    {
                      v99 = AXColorizeFormatLog();
                      v100 = _AXStringForArgs();
                      if (os_log_type_enabled(v97, v98))
                      {
                        buf = 138543362;
                        v132 = v100;
LABEL_111:
                        _os_log_impl(&dword_0, v97, v98, "%{public}@", &buf, 0xCu);
                      }

LABEL_112:
                    }

LABEL_113:

                    goto LABEL_114;
                  }

                  v26 = v33;
                  v34 = v32;
                  [v32 removeObserver:self];
                }

                else
                {
                  v44 = +[AXSubsystemBrailleHardware sharedInstance];
                  ignoreLogging6 = [v44 ignoreLogging];

                  if ((ignoreLogging6 & 1) == 0)
                  {
                    v46 = +[AXSubsystemBrailleHardware identifier];
                    v47 = AXLoggerForFacility();

                    v48 = AXOSLogLevelFromAXLogLevel();
                    if (os_log_type_enabled(v47, v48))
                    {
                      v49 = AXColorizeFormatLog();
                      v50 = _AXStringForArgs();
                      if (os_log_type_enabled(v47, v48))
                      {
                        buf = 138543362;
                        v132 = v50;
                        _os_log_impl(&dword_0, v47, v48, "%{public}@", &buf, 0xCu);
                      }
                    }
                  }

                  v34 = v32;
                  [v32 removeObserver:self];
                  v26 = 1;
                }

                v12 = v122;
                elementCopy = v123;
                v29 = infoDictionary;
LABEL_49:
                v30 = v124;
                goto LABEL_50;
              }

LABEL_30:
              v35 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging7 = [v35 ignoreLogging];

              if (ignoreLogging7)
              {
                v26 = 1;
                v12 = v122;
                elementCopy = v123;
                v29 = infoDictionary;
                v30 = v124;
                goto LABEL_53;
              }

              v39 = +[AXSubsystemBrailleHardware identifier];
              v31 = AXLoggerForFacility();

              v26 = 1;
              v40 = AXOSLogLevelFromAXLogLevel();
              v29 = infoDictionary;
              if (!os_log_type_enabled(v31, v40))
              {
                v12 = v122;
                elementCopy = v123;
                v30 = v124;
                goto LABEL_52;
              }

              v34 = AXColorizeFormatLog();
              v41 = _AXStringForArgs();
              if (os_log_type_enabled(v31, v40))
              {
                buf = 138543362;
                v132 = v41;
                _os_log_impl(&dword_0, v31, v40, "%{public}@", &buf, 0xCu);
              }

              v12 = v122;
              elementCopy = v123;
              goto LABEL_49;
            }
          }

          v18 = [pairedDevices countByEnumeratingWithState:&v126 objects:v130 count:16];
        }

        while (v18);
      }

      goto LABEL_30;
    }

    v37 = +[AXSubsystemBrailleHardware sharedInstance];
    ignoreLogging8 = [v37 ignoreLogging];

    if ((ignoreLogging8 & 1) == 0)
    {
      v42 = +[AXSubsystemBrailleHardware identifier];
      v29 = AXLoggerForFacility();

      v26 = 1;
      v43 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v29, v43))
      {
        v30 = AXColorizeFormatLog();
        bluetoothAddress = _AXStringForArgs();
        if (os_log_type_enabled(v29, v43))
        {
          buf = 138543362;
          v132 = bluetoothAddress;
          _os_log_impl(&dword_0, v29, v43, "%{public}@", &buf, 0xCu);
        }

        goto LABEL_53;
      }

      goto LABEL_55;
    }

    v26 = 1;
LABEL_56:
  }

  else
  {
    v24 = +[AXSubsystemBrailleHardware sharedInstance];
    ignoreLogging9 = [v24 ignoreLogging];

    if ((ignoreLogging9 & 1) == 0)
    {
      v27 = +[AXSubsystemBrailleHardware identifier];
      v12 = AXLoggerForFacility();

      v26 = 1;
      v28 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v12, v28))
      {
        v29 = AXColorizeFormatLog();
        [elementCopy transport];
        [elementCopy conformsToProtocol:&OBJC_PROTOCOL___SCROIOBluetoothElementProtocol];
        v30 = _AXStringForArgs();
        if (os_log_type_enabled(v12, v28))
        {
          buf = 138543362;
          v132 = v30;
          _os_log_impl(&dword_0, v12, v28, "%{public}@", &buf, 0xCu);
        }

        goto LABEL_54;
      }

      goto LABEL_56;
    }

    v26 = 1;
  }

  return v26;
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
    modelIdentifier = self->_modelIdentifier;
    self->_modelIdentifier = 0;

    self->_identifierByte = 0;
    self->_mainSize = 0;
    *&self->_maxPacketSize = 0;
    self->_nextResetRequestTime = -3061152000.0;
  }

  return 1;
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
      v25.location = 0;
      v25.length = v5;
      CFDataDeleteBytes(self->_readBuffer, v25);
    }
  }

  [(NSLock *)self->_readBufferLock unlock];
  isDeviceResetting = self->_isDeviceResetting;
  v9 = SCRDHandyTechExtractEventsFromBuffer();
  if (self->_isDeviceResetting)
  {
    nextResetRequestTime = self->_nextResetRequestTime;
    if (nextResetRequestTime <= CFAbsoluteTimeGetCurrent())
    {
      __buf = -1;
      comPort = self->_comPort;
      if (comPort != -1)
      {
        write(comPort, &__buf, 1uLL);
      }

      self->_nextResetRequestTime = CFAbsoluteTimeGetCurrent() + 0.2;
    }
  }

  if (isDeviceResetting != self->_isDeviceResetting)
  {
    if (SCRDHandyTechDisplayUsesExtendedProtocol() && self->_comPort != -1)
    {
      ExtendedProtocolRequestPacket = SCRDHandyTechCreateExtendedProtocolRequestPacket();
      if (ExtendedProtocolRequestPacket)
      {
        v13 = ExtendedProtocolRequestPacket;
        v14 = self->_comPort;
        v15 = CFDataGetBytePtr(ExtendedProtocolRequestPacket);
        v16 = CFDataGetLength(v13);
        write(v14, v15, v16);
        CFRelease(v13);
      }

      v17 = SCRDHandyTechCreateExtendedProtocolRequestPacket();
      if (v17)
      {
        v18 = v17;
        v19 = self->_comPort;
        v20 = CFDataGetBytePtr(v17);
        v21 = CFDataGetLength(v18);
        write(v19, v20, v21);
        CFRelease(v18);
      }
    }

    SCRDPostSleepNotification();
  }

  return v9;
}

- (BOOL)setMainCells:(const char *)cells length:(int64_t)length
{
  if (self->_isDeviceResetting)
  {
    return 0;
  }

  if (SCRDHandyTechDisplayUsesExtendedProtocol())
  {
    ExtendedProtocolRequestPacket = SCRDHandyTechCreateExtendedProtocolRequestPacket();
    if (!ExtendedProtocolRequestPacket)
    {
      return 0;
    }

    v9 = ExtendedProtocolRequestPacket;
    Length = CFDataGetLength(ExtendedProtocolRequestPacket);
    comPort = self->_comPort;
    if (comPort == -1)
    {
      v4 = 0;
    }

    else
    {
      v12 = Length;
      BytePtr = CFDataGetBytePtr(v9);
      v4 = write(comPort, BytePtr, v12) == v12;
    }

    CFRelease(v9);
  }

  else
  {
    mainSize = self->_mainSize;
    v15 = &v19 - ((mainSize + 16) & 0xFFFFFFFFFFFFFFF0);
    lengthCopy = mainSize;
    if (mainSize >= length)
    {
      if (mainSize > length)
      {
        bzero(&v15[length + 1], mainSize - length);
      }

      lengthCopy = length;
    }

    *v15 = 1;
    memcpy(v15 + 1, cells, lengthCopy);
    v17 = self->_comPort;
    return v17 != -1 && write(v17, &v19 - ((mainSize + 16) & 0xFFFFFFFFFFFFFFF0), mainSize + 1) == mainSize + 1;
  }

  return v4;
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
  object = [notification object];
  if (object)
  {
    if (object == self->_device)
    {
      self->_bluetoothChannelIsLost = 1;
      if (self->_isDriverLoaded)
      {
        v6 = object;
        v5 = +[NSNotificationCenter defaultCenter];
        [v5 postNotificationName:@"SCROBrailleDriverProtocolUnloadNotification" object:self userInfo:0];

        object = v6;
      }
    }
  }
}

@end