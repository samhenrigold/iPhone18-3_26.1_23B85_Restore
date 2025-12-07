@interface MSCROBrailleNoteApexBrailleDriver
- (BOOL)setMainCells:(const char *)cells length:(int64_t)length;
- (BOOL)unloadDriver;
- (MSCROBrailleNoteApexBrailleDriver)init;
- (id)getInputEvents;
- (int)loadDriverWithIOElement:(id)element;
- (void)dealloc;
- (void)fileReader:(id)reader data:(const void *)data length:(unint64_t)length;
- (void)removeDeviceNotification:(id)notification;
@end

@implementation MSCROBrailleNoteApexBrailleDriver

- (MSCROBrailleNoteApexBrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROBrailleNoteApexBrailleDriver;
  result = [(MSCROBrailleNoteApexBrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROBrailleNoteApexBrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROBrailleNoteApexBrailleDriver;
  [(MSCROBrailleNoteApexBrailleDriver *)&v3 dealloc];
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
        v140 = v11;
        _os_log_impl(&dword_0, v8, v9, "%{public}@", &buf, 0xCu);
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
        [(MSCROBrailleNoteApexBrailleDriver *)self unloadDriver];
      }

      v129 = v12;
      infoDictionary = [v12 infoDictionary];
      [infoDictionary objectForKey:kSCROBrailleDriverModels];
      v131 = v130 = elementCopy;
      bluetoothAddress = [elementCopy bluetoothAddress];
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      pairedDevices = [v15 pairedDevices];

      v17 = [pairedDevices countByEnumeratingWithState:&v133 objects:v141 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v134;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v134 != v19)
            {
              objc_enumerationMutation(pairedDevices);
            }

            v21 = *(*(&v133 + 1) + 8 * i);
            address = [v21 address];
            v23 = [address isEqualToString:bluetoothAddress];

            if (v23)
            {
              v31 = v21;

              if (v31)
              {
                v32 = +[NSNotificationCenter defaultCenter];
                [v32 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
                v127 = v32;
                [v32 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
                if (([v31 connected]& 1) != 0)
                {
                  [v31 device];
                  ComPortForServiceWithSandboxExtension = BTDeviceGetComPortForServiceWithSandboxExtension();
                  if (ComPortForServiceWithSandboxExtension)
                  {
                    v34 = ComPortForServiceWithSandboxExtension;
                    v35 = +[AXSubsystemBrailleHardware sharedInstance];
                    ignoreLogging2 = [v35 ignoreLogging];

                    v29 = infoDictionary;
                    v12 = v129;
                    if ((ignoreLogging2 & 1) == 0)
                    {
                      v37 = +[AXSubsystemBrailleHardware identifier];
                      v38 = AXLoggerForFacility();

                      v39 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v38, v39))
                      {
                        v40 = AXColorizeFormatLog();
                        comPort = v34;
                        v41 = _AXStringForArgs();
                        if (os_log_type_enabled(v38, v39))
                        {
                          *v137 = 138543362;
                          v138 = v41;
                          _os_log_impl(&dword_0, v38, v39, "%{public}@", v137, 0xCu);
                        }
                      }

                      goto LABEL_50;
                    }

                    goto LABEL_51;
                  }

                  v29 = infoDictionary;
                  v12 = v129;
                  if (sandbox_extension_consume() == -1)
                  {
                    v59 = +[AXSubsystemBrailleHardware sharedInstance];
                    ignoreLogging3 = [v59 ignoreLogging];

                    if ((ignoreLogging3 & 1) == 0)
                    {
                      v61 = +[AXSubsystemBrailleHardware identifier];
                      v62 = AXLoggerForFacility();

                      v63 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v62, v63))
                      {
                        v64 = AXColorizeFormatLog();
                        comPort = *__error();
                        v125 = v64;
                        v65 = _AXStringForArgs();
                        if (os_log_type_enabled(v62, v63))
                        {
                          *v137 = 138543362;
                          v138 = v65;
                          _os_log_impl(&dword_0, v62, v63, "%{public}@", v137, 0xCu);
                        }
                      }
                    }
                  }

                  v66 = open(&buf, 131074, comPort);
                  self->_comPort = v66;
                  if (v66 < 0)
                  {
                    v89 = +[AXSubsystemBrailleHardware sharedInstance];
                    ignoreLogging4 = [v89 ignoreLogging];

                    if ((ignoreLogging4 & 1) == 0)
                    {
                      v91 = +[AXSubsystemBrailleHardware identifier];
                      v92 = AXLoggerForFacility();

                      v93 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v92, v93))
                      {
                        v94 = AXColorizeFormatLog();
                        comPort = self->_comPort;
                        v95 = _AXStringForArgs();
                        if (os_log_type_enabled(v92, v93))
                        {
                          *v137 = 138543362;
                          v138 = v95;
                          _os_log_impl(&dword_0, v92, v93, "%{public}@", v137, 0xCu);
                        }
                      }
                    }

                    self->_comPort = -1;
                    goto LABEL_51;
                  }

                  objc_storeStrong(&self->_device, v21);
                  v126 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:self->_comPort closeOnDealloc:1];
                  v67 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:self fileHandle:v126];
                  readerThread = self->_readerThread;
                  self->_readerThread = v67;

                  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
                  self->_safeReadBuffer = Mutable;
                  v48 = v127;
                  if (!Mutable)
                  {
                    goto LABEL_117;
                  }

                  v70 = [objc_allocWithZone(NSLock) init];
                  readBufferLock = self->_readBufferLock;
                  self->_readBufferLock = v70;

                  if (!self->_readBufferLock)
                  {
                    goto LABEL_117;
                  }

                  v72 = CFDataCreateMutable(kCFAllocatorDefault, 0);
                  self->_readBuffer = v72;
                  if (!v72)
                  {
                    goto LABEL_117;
                  }

                  [(SCRDFileReader *)self->_readerThread start];
                  v73 = 5;
                  while (2)
                  {
                    modelIdentifier = self->_modelIdentifier;
                    if (modelIdentifier)
                    {
                      goto LABEL_90;
                    }

                    __buf = 16155;
                    if (write(self->_comPort, &__buf, 2uLL) <= 1)
                    {
                      v105 = +[AXSubsystemBrailleHardware sharedInstance];
                      ignoreLogging5 = [v105 ignoreLogging];

                      if ((ignoreLogging5 & 1) == 0)
                      {
                        v107 = +[AXSubsystemBrailleHardware identifier];
                        v99 = AXLoggerForFacility();

                        v108 = AXOSLogLevelFromAXLogLevel();
                        if (os_log_type_enabled(v99, v108))
                        {
                          v101 = AXColorizeFormatLog();
                          v102 = _AXStringForArgs();
                          if (os_log_type_enabled(v99, v108))
                          {
                            *v137 = 138543362;
                            v138 = v102;
                            v103 = v99;
                            v104 = v108;
LABEL_107:
                            _os_log_impl(&dword_0, v103, v104, "%{public}@", v137, 0xCu);
                          }

LABEL_108:
                        }

LABEL_109:
                      }

LABEL_116:
                      v48 = v127;
                      goto LABEL_117;
                    }

                    self->_bluetoothChannelIsLost = 0;
                    self->_hasBeenUnloaded = 0;
                    v75 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0, 0);
                    v76 = v75;
                    if (self->_bluetoothChannelIsLost || self->_hasBeenUnloaded || v75 == kCFRunLoopRunStopped)
                    {
                      v96 = +[AXSubsystemBrailleHardware sharedInstance];
                      ignoreLogging6 = [v96 ignoreLogging];

                      if ((ignoreLogging6 & 1) == 0)
                      {
                        v98 = +[AXSubsystemBrailleHardware identifier];
                        v99 = AXLoggerForFacility();

                        v100 = AXOSLogLevelFromAXLogLevel();
                        if (os_log_type_enabled(v99, v100))
                        {
                          v101 = AXColorizeFormatLog();
                          hasBeenUnloaded = self->_hasBeenUnloaded;
                          v124 = v76;
                          comPort = self->_bluetoothChannelIsLost;
                          v102 = _AXStringForArgs();
                          if (os_log_type_enabled(v99, v100))
                          {
                            *v137 = 138543362;
                            v138 = v102;
                            v103 = v99;
                            v104 = v100;
                            goto LABEL_107;
                          }

                          goto LABEL_108;
                        }

                        goto LABEL_109;
                      }

                      goto LABEL_116;
                    }

                    [(NSLock *)self->_readBufferLock lock];
                    Length = CFDataGetLength(self->_readBuffer);
                    if (Length >= 1)
                    {
                      v78 = Length;
                      safeReadBuffer = self->_safeReadBuffer;
                      BytePtr = CFDataGetBytePtr(self->_readBuffer);
                      v81 = safeReadBuffer;
                      v48 = v127;
                      CFDataAppendBytes(v81, BytePtr, v78);
                      v142.location = 0;
                      v142.length = v78;
                      CFDataDeleteBytes(self->_readBuffer, v142);
                    }

                    [(NSLock *)self->_readBufferLock unlock];
                    DescriptionPacketFromBuffer = SCRDBrailleNoteCreateDescriptionPacketFromBuffer();
                    if (DescriptionPacketFromBuffer)
                    {
                      v83 = DescriptionPacketFromBuffer;
                      if (SCRDBrailleNoteGetDisplayInfoFromDescriptionPacket())
                      {
                        mainSize = self->_mainSize;
                        if (mainSize == 32)
                        {
                          v85 = @"com.apple.scrod.braille.driver.humanware.braillenote.apex.32";
LABEL_86:
                          v86 = self->_modelIdentifier;
                          self->_modelIdentifier = &v85->isa;
                        }

                        else if (mainSize == 18)
                        {
                          v85 = @"com.apple.scrod.braille.driver.humanware.braillenote.apex.18";
                          goto LABEL_86;
                        }
                      }

                      CFRelease(v83);
                    }

                    if (!--v73)
                    {
                      modelIdentifier = self->_modelIdentifier;
LABEL_90:
                      v87 = [v131 objectForKey:modelIdentifier];
                      if (v87)
                      {
                        v88 = v87;
                        v26 = 0;
                        self->_isDriverLoaded = 1;
                        v30 = v131;
                        goto LABEL_122;
                      }

                      v109 = +[AXSubsystemBrailleHardware sharedInstance];
                      ignoreLogging7 = [v109 ignoreLogging];

                      v48 = v127;
                      if ((ignoreLogging7 & 1) == 0)
                      {
                        v111 = +[AXSubsystemBrailleHardware identifier];
                        v112 = AXLoggerForFacility();

                        v113 = AXOSLogLevelFromAXLogLevel();
                        if (os_log_type_enabled(v112, v113))
                        {
                          v114 = AXColorizeFormatLog();
                          comPort = self->_modelIdentifier;
                          v115 = _AXStringForArgs();
                          if (os_log_type_enabled(v112, v113))
                          {
                            *v137 = 138543362;
                            v138 = v115;
                            _os_log_impl(&dword_0, v112, v113, "%{public}@", v137, 0xCu);
                          }
                        }

                        goto LABEL_116;
                      }

LABEL_117:
                      [(SCRDFileReader *)self->_readerThread invalidate:comPort];
                      v116 = self->_readerThread;
                      self->_readerThread = 0;

                      v117 = self->_safeReadBuffer;
                      if (v117)
                      {
                        CFRelease(v117);
                        self->_safeReadBuffer = 0;
                      }

                      [v48 removeObserver:self];
                      [(NSLock *)self->_readBufferLock lock];
                      readBuffer = self->_readBuffer;
                      v30 = v131;
                      if (readBuffer)
                      {
                        CFRelease(readBuffer);
                        self->_readBuffer = 0;
                      }

                      v119 = self->_readBufferLock;
                      self->_readBufferLock = 0;
                      v88 = v119;

                      [(NSLock *)v88 unlock];
                      device = self->_device;
                      self->_device = 0;

                      self->_comPort = -1;
                      v121 = self->_modelIdentifier;
                      self->_modelIdentifier = 0;

                      v26 = 2;
LABEL_122:

LABEL_53:
LABEL_55:

                      elementCopy = v130;
LABEL_56:

LABEL_57:
LABEL_58:

                      goto LABEL_59;
                    }

                    continue;
                  }
                }

                v52 = +[AXSubsystemBrailleHardware sharedInstance];
                ignoreLogging8 = [v52 ignoreLogging];

                v29 = infoDictionary;
                v12 = v129;
                if ((ignoreLogging8 & 1) == 0)
                {
                  v54 = +[AXSubsystemBrailleHardware identifier];
                  v38 = AXLoggerForFacility();

                  v55 = AXOSLogLevelFromAXLogLevel();
                  if (os_log_type_enabled(v38, v55))
                  {
                    v56 = AXColorizeFormatLog();
                    v57 = _AXStringForArgs();
                    if (os_log_type_enabled(v38, v55))
                    {
                      buf = 138543362;
                      v140 = v57;
                      _os_log_impl(&dword_0, v38, v55, "%{public}@", &buf, 0xCu);
                    }
                  }

LABEL_50:
                }

LABEL_51:
                v48 = v127;
                [v127 removeObserver:{self, comPort}];
                v26 = 1;
LABEL_52:
                v30 = v131;
                goto LABEL_53;
              }

LABEL_34:
              v42 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging9 = [v42 ignoreLogging];

              if (ignoreLogging9)
              {
                v26 = 1;
                v12 = v129;
                elementCopy = v130;
                v29 = infoDictionary;
                v30 = v131;
                goto LABEL_56;
              }

              v46 = +[AXSubsystemBrailleHardware identifier];
              v31 = AXLoggerForFacility();

              v26 = 1;
              v47 = AXOSLogLevelFromAXLogLevel();
              v29 = infoDictionary;
              if (!os_log_type_enabled(v31, v47))
              {
                v12 = v129;
                v30 = v131;
                goto LABEL_55;
              }

              v48 = AXColorizeFormatLog();
              v49 = _AXStringForArgs();
              v12 = v129;
              if (os_log_type_enabled(v31, v47))
              {
                buf = 138543362;
                v140 = v49;
                _os_log_impl(&dword_0, v31, v47, "%{public}@", &buf, 0xCu);
              }

              goto LABEL_52;
            }
          }

          v18 = [pairedDevices countByEnumeratingWithState:&v133 objects:v141 count:16];
        }

        while (v18);
      }

      goto LABEL_34;
    }

    v44 = +[AXSubsystemBrailleHardware sharedInstance];
    ignoreLogging10 = [v44 ignoreLogging];

    if ((ignoreLogging10 & 1) == 0)
    {
      v50 = +[AXSubsystemBrailleHardware identifier];
      v29 = AXLoggerForFacility();

      v26 = 1;
      v51 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v29, v51))
      {
        v30 = AXColorizeFormatLog();
        bluetoothAddress = _AXStringForArgs();
        if (os_log_type_enabled(v29, v51))
        {
          buf = 138543362;
          v140 = bluetoothAddress;
          _os_log_impl(&dword_0, v29, v51, "%{public}@", &buf, 0xCu);
        }

        goto LABEL_56;
      }

      goto LABEL_58;
    }

    v26 = 1;
LABEL_59:
  }

  else
  {
    v24 = +[AXSubsystemBrailleHardware sharedInstance];
    ignoreLogging11 = [v24 ignoreLogging];

    if ((ignoreLogging11 & 1) == 0)
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
          v140 = v30;
          _os_log_impl(&dword_0, v12, v28, "%{public}@", &buf, 0xCu);
        }

        goto LABEL_57;
      }

      goto LABEL_59;
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
    self->_bluetoothChannelIsLost = 1;
    modelIdentifier = self->_modelIdentifier;
    self->_modelIdentifier = 0;

    self->_mainSize = 0;
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
      v11.location = 0;
      v11.length = v5;
      CFDataDeleteBytes(self->_readBuffer, v11);
    }
  }

  [(NSLock *)self->_readBufferLock unlock];
  v8 = self->_safeReadBuffer;

  return _SCRDBrailleNoteExtractEventsFromBuffer(v8);
}

- (BOOL)setMainCells:(const char *)cells length:(int64_t)length
{
  DisplayRequest = SCRDBrailleNoteCreateDisplayRequest();
  if (!DisplayRequest)
  {
    return 0;
  }

  v6 = DisplayRequest;
  if (self->_comPort == -1)
  {
    v10 = 0;
  }

  else
  {
    Length = CFDataGetLength(DisplayRequest);
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