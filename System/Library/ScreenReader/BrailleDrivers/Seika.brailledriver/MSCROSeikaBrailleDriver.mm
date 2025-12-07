@interface MSCROSeikaBrailleDriver
- (BOOL)setMainCells:(const char *)cells length:(int64_t)length;
- (BOOL)unloadDriver;
- (MSCROSeikaBrailleDriver)init;
- (id)getInputEvents;
- (int)loadDriverWithIOElement:(id)element;
- (void)dealloc;
- (void)fileReader:(id)reader data:(const void *)data length:(unint64_t)length;
- (void)removeDeviceNotification:(id)notification;
@end

@implementation MSCROSeikaBrailleDriver

- (MSCROSeikaBrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROSeikaBrailleDriver;
  result = [(MSCROSeikaBrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROSeikaBrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROSeikaBrailleDriver;
  [(MSCROSeikaBrailleDriver *)&v3 dealloc];
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
        v160 = v11;
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
        [(MSCROSeikaBrailleDriver *)self unloadDriver];
      }

      v150 = v12;
      infoDictionary = [v12 infoDictionary];
      v148 = [infoDictionary objectForKey:kSCROBrailleDriverModels];
      bluetoothAddress = [elementCopy bluetoothAddress];
      v153 = 0u;
      v154 = 0u;
      v155 = 0u;
      v156 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      pairedDevices = [v15 pairedDevices];

      v17 = [pairedDevices countByEnumeratingWithState:&v153 objects:v161 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v154;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v154 != v19)
            {
              objc_enumerationMutation(pairedDevices);
            }

            v21 = *(*(&v153 + 1) + 8 * i);
            address = [v21 address];
            v23 = [address isEqualToString:bluetoothAddress];

            if (v23)
            {
              v31 = v21;

              if (v31)
              {
                v32 = +[NSNotificationCenter defaultCenter];
                [v32 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
                [v32 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
                if (([v31 connected]& 1) != 0)
                {
                  v146 = v32;
                  [v31 device];
                  ComPortForServiceWithSandboxExtension = BTDeviceGetComPortForServiceWithSandboxExtension();
                  if (ComPortForServiceWithSandboxExtension)
                  {
                    v34 = ComPortForServiceWithSandboxExtension;
                    v35 = +[AXSubsystemBrailleHardware sharedInstance];
                    ignoreLogging2 = [v35 ignoreLogging];

                    v30 = v148;
                    v29 = infoDictionary;
                    if ((ignoreLogging2 & 1) == 0)
                    {
                      v37 = +[AXSubsystemBrailleHardware identifier];
                      v38 = AXLoggerForFacility();

                      v39 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v38, v39))
                      {
                        v40 = AXColorizeFormatLog();
                        bluetoothChannelIsLost = v34;
                        v41 = _AXStringForArgs();
                        if (os_log_type_enabled(v38, v39))
                        {
                          *v157 = 138543362;
                          v158 = v41;
                          _os_log_impl(&dword_0, v38, v39, "%{public}@", v157, 0xCu);
                        }
                      }
                    }

                    v32 = v146;
                  }

                  else
                  {
                    v30 = v148;
                    v29 = infoDictionary;
                    if (sandbox_extension_consume() == -1)
                    {
                      v58 = +[AXSubsystemBrailleHardware sharedInstance];
                      ignoreLogging3 = [v58 ignoreLogging];

                      if ((ignoreLogging3 & 1) == 0)
                      {
                        v60 = +[AXSubsystemBrailleHardware identifier];
                        v61 = AXLoggerForFacility();

                        v62 = AXOSLogLevelFromAXLogLevel();
                        if (os_log_type_enabled(v61, v62))
                        {
                          v63 = AXColorizeFormatLog();
                          bluetoothChannelIsLost = *__error();
                          v144 = v63;
                          v64 = _AXStringForArgs();
                          if (os_log_type_enabled(v61, v62))
                          {
                            *v157 = 138543362;
                            v158 = v64;
                            _os_log_impl(&dword_0, v61, v62, "%{public}@", v157, 0xCu);
                          }
                        }
                      }
                    }

                    v65 = open(&buf, 131074, bluetoothChannelIsLost);
                    self->_comPort = v65;
                    if ((v65 & 0x80000000) == 0)
                    {
                      objc_storeStrong(&self->_device, v21);
                      v66 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:self->_comPort closeOnDealloc:1];
                      v67 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:self fileHandle:v66];
                      readerThread = self->_readerThread;
                      self->_readerThread = v67;

                      v69 = objc_allocWithZone(NSConstantValueExpression);
                      v70 = [v69 initWithObject:kSCRDSeikaNotetakerBluetoothNameRegExPattern];
                      v71 = objc_allocWithZone(NSComparisonPredicate);
                      v72 = +[NSExpression expressionForEvaluatedObject];
                      v143 = v70;
                      v145 = [v71 initWithLeftExpression:v72 rightExpression:v70 modifier:0 type:6 options:0];

                      Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
                      self->_safeReadBuffer = Mutable;
                      if (!Mutable)
                      {
                        goto LABEL_127;
                      }

                      v74 = [objc_allocWithZone(NSLock) init];
                      readBufferLock = self->_readBufferLock;
                      self->_readBufferLock = v74;

                      if (!self->_readBufferLock)
                      {
                        goto LABEL_127;
                      }

                      v76 = CFDataCreateMutable(kCFAllocatorDefault, 0);
                      self->_readBuffer = v76;
                      if (!v76)
                      {
                        goto LABEL_127;
                      }

                      v141 = v66;
                      [(SCRDFileReader *)self->_readerThread start];
                      name = [(BluetoothDevice *)self->_device name];
                      v78 = [v145 evaluateWithObject:name];

                      v79 = v78;
                      v80 = 0;
                      if (v78)
                      {
                        v81 = -95;
                      }

                      else
                      {
                        v81 = 10;
                      }

                      __buf = -1;
                      v152 = v81;
                      while (1)
                      {
                        modelIdentifier = self->_modelIdentifier;
                        if (modelIdentifier)
                        {
                          goto LABEL_116;
                        }

                        if (write(self->_comPort, &__buf, 3uLL) <= 2)
                        {
                          break;
                        }

                        self->_bluetoothChannelIsLost = 0;
                        self->_hasBeenUnloaded = 0;
                        v83 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0, 0);
                        v84 = v83;
                        if (self->_bluetoothChannelIsLost || self->_hasBeenUnloaded || v83 == kCFRunLoopRunStopped)
                        {
                          v110 = +[AXSubsystemBrailleHardware sharedInstance];
                          ignoreLogging4 = [v110 ignoreLogging];

                          v66 = v141;
                          if (ignoreLogging4)
                          {
                            goto LABEL_127;
                          }

                          v112 = +[AXSubsystemBrailleHardware identifier];
                          v113 = AXLoggerForFacility();

                          v114 = v113;
                          v115 = AXOSLogLevelFromAXLogLevel();
                          if (!os_log_type_enabled(v113, v115))
                          {
                            v66 = v141;
                            goto LABEL_126;
                          }

                          v116 = AXColorizeFormatLog();
                          hasBeenUnloaded = self->_hasBeenUnloaded;
                          v140 = v84;
                          bluetoothChannelIsLost = self->_bluetoothChannelIsLost;
                          v117 = _AXStringForArgs();
                          if (os_log_type_enabled(v114, v115))
                          {
                            *v157 = 138543362;
                            v158 = v117;
                            _os_log_impl(&dword_0, v114, v115, "%{public}@", v157, 0xCu);
                          }

                          v66 = v141;
                          goto LABEL_124;
                        }

                        [(NSLock *)self->_readBufferLock lock];
                        readBuffer = self->_readBuffer;
                        if (readBuffer)
                        {
                          Length = CFDataGetLength(readBuffer);
                          if (Length >= 1)
                          {
                            v87 = Length;
                            v88 = v79;
                            safeReadBuffer = self->_safeReadBuffer;
                            BytePtr = CFDataGetBytePtr(self->_readBuffer);
                            v91 = safeReadBuffer;
                            v79 = v88;
                            CFDataAppendBytes(v91, BytePtr, v87);
                            v162.location = 0;
                            v162.length = v87;
                            CFDataDeleteBytes(self->_readBuffer, v162);
                          }
                        }

                        [(NSLock *)self->_readBufferLock unlock];
                        if (v79)
                        {
                          PacketFromBuffer = SCRDSeikaNotetakerCreatePacketFromBuffer();
                          if (PacketFromBuffer)
                          {
                            v93 = PacketFromBuffer;
                            do
                            {
                              v94 = CFDataGetBytePtr(v93);
                              if (v94[2] == 162)
                              {
                                HIDWORD(v96) = v94[5] - 8;
                                LODWORD(v96) = HIDWORD(v96);
                                v95 = v96 >> 3;
                                if (v95 <= 4 && ((0x17u >> v95) & 1) != 0)
                                {
                                  v97 = dword_3538[v95];
                                  v98 = *(&off_8260 + v95);
                                  self->_deviceID = v97;
                                  v99 = self->_modelIdentifier;
                                  self->_modelIdentifier = v98;
                                }
                              }

                              CFRelease(v93);
                              v93 = SCRDSeikaNotetakerCreatePacketFromBuffer();
                            }

                            while (v93);
                          }
                        }

                        else
                        {
                          while (1)
                          {
                            IdentityPacketFromBuffer = SCRDSeikaCreateIdentityPacketFromBuffer();
                            if (!IdentityPacketFromBuffer)
                            {
                              break;
                            }

                            if (CFDataGetBytePtr(self->_safeReadBuffer)[2] == 40)
                            {
                              self->_deviceID = 1;
                              v101 = self->_modelIdentifier;
                              self->_modelIdentifier = @"com.apple.scrod.braille.driver.nippon.telesoft.seika.40";
                            }

                            CFRelease(IdentityPacketFromBuffer);
                          }
                        }

                        if (++v80 == 5)
                        {
                          modelIdentifier = self->_modelIdentifier;
LABEL_116:
                          v123 = [v148 objectForKey:modelIdentifier];
                          v32 = v146;
                          v66 = v141;
                          if (v123)
                          {
                            v124 = v123;
                            v125 = [v123 objectForKey:kSCROBrailleDriverMainDisplaySize];
                            self->_mainSize = [v125 unsignedCharValue];

                            self->_isDriverLoaded = 1;
                            v26 = 0;
                            v12 = v150;
                            goto LABEL_132;
                          }

                          v126 = +[AXSubsystemBrailleHardware sharedInstance];
                          ignoreLogging5 = [v126 ignoreLogging];

                          if ((ignoreLogging5 & 1) == 0)
                          {
                            v128 = +[AXSubsystemBrailleHardware identifier];
                            v129 = AXLoggerForFacility();

                            v114 = v129;
                            v122 = AXOSLogLevelFromAXLogLevel();
                            if (os_log_type_enabled(v114, v122))
                            {
                              v130 = AXColorizeFormatLog();
                              bluetoothChannelIsLost = self->_modelIdentifier;
                              mode = v130;
                              v117 = _AXStringForArgs();
                              if (os_log_type_enabled(v114, v122))
                              {
                                *v157 = 138543362;
                                v158 = v117;
LABEL_122:
                                _os_log_impl(&dword_0, v114, v122, "%{public}@", v157, 0xCu);
                              }

                              goto LABEL_123;
                            }

LABEL_126:
                          }

LABEL_127:
                          [(SCRDFileReader *)self->_readerThread invalidate:bluetoothChannelIsLost];
                          v131 = self->_readerThread;
                          self->_readerThread = 0;

                          v132 = self->_safeReadBuffer;
                          if (v132)
                          {
                            CFRelease(v132);
                            self->_safeReadBuffer = 0;
                          }

                          v32 = v146;
                          [v146 removeObserver:self];
                          [(NSLock *)self->_readBufferLock lock];
                          v133 = self->_readBuffer;
                          v12 = v150;
                          if (v133)
                          {
                            CFRelease(v133);
                            self->_readBuffer = 0;
                          }

                          v134 = self->_readBufferLock;
                          self->_readBufferLock = 0;
                          v135 = v134;

                          [(NSLock *)v135 unlock];
                          device = self->_device;
                          self->_device = 0;

                          self->_comPort = -1;
                          v137 = self->_modelIdentifier;
                          self->_modelIdentifier = 0;

                          self->_deviceID = 0;
                          v26 = 2;
LABEL_132:

LABEL_100:
LABEL_101:

LABEL_102:
LABEL_103:

LABEL_104:
                          goto LABEL_105;
                        }
                      }

                      v118 = +[AXSubsystemBrailleHardware sharedInstance];
                      ignoreLogging6 = [v118 ignoreLogging];

                      v66 = v141;
                      if (ignoreLogging6)
                      {
                        goto LABEL_127;
                      }

                      v120 = +[AXSubsystemBrailleHardware identifier];
                      v121 = AXLoggerForFacility();

                      v114 = v121;
                      v122 = AXOSLogLevelFromAXLogLevel();
                      if (!os_log_type_enabled(v114, v122))
                      {
                        goto LABEL_126;
                      }

                      mode = AXColorizeFormatLog();
                      v117 = _AXStringForArgs();
                      if (os_log_type_enabled(v114, v122))
                      {
                        *v157 = 138543362;
                        v158 = v117;
                        goto LABEL_122;
                      }

LABEL_123:
                      v116 = mode;
LABEL_124:

                      goto LABEL_126;
                    }

                    v102 = +[AXSubsystemBrailleHardware sharedInstance];
                    ignoreLogging7 = [v102 ignoreLogging];

                    v32 = v146;
                    if ((ignoreLogging7 & 1) == 0)
                    {
                      v104 = +[AXSubsystemBrailleHardware identifier];
                      v105 = AXLoggerForFacility();

                      v106 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v105, v106))
                      {
                        v107 = AXColorizeFormatLog();
                        bluetoothChannelIsLost = self->_comPort;
                        v108 = _AXStringForArgs();
                        if (os_log_type_enabled(v105, v106))
                        {
                          *v157 = 138543362;
                          v158 = v108;
                          _os_log_impl(&dword_0, v105, v106, "%{public}@", v157, 0xCu);
                        }

                        v32 = v146;
                      }
                    }

                    self->_comPort = -1;
                  }
                }

                else
                {
                  v51 = +[AXSubsystemBrailleHardware sharedInstance];
                  ignoreLogging8 = [v51 ignoreLogging];

                  v30 = v148;
                  v29 = infoDictionary;
                  if ((ignoreLogging8 & 1) == 0)
                  {
                    v53 = +[AXSubsystemBrailleHardware identifier];
                    v54 = AXLoggerForFacility();

                    v55 = AXOSLogLevelFromAXLogLevel();
                    if (os_log_type_enabled(v54, v55))
                    {
                      v56 = v32;
                      v57 = AXColorizeFormatLog();
                      v147 = _AXStringForArgs();
                      if (os_log_type_enabled(v54, v55))
                      {
                        buf = 138543362;
                        v160 = v147;
                        _os_log_impl(&dword_0, v54, v55, "%{public}@", &buf, 0xCu);
                      }

                      v32 = v56;
                    }
                  }
                }

                [v32 removeObserver:{self, bluetoothChannelIsLost}];
LABEL_99:
                v26 = 1;
                v12 = v150;
                goto LABEL_100;
              }

LABEL_36:
              v42 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging9 = [v42 ignoreLogging];

              if (ignoreLogging9)
              {
                v26 = 1;
                v29 = infoDictionary;
                v12 = v150;
                v30 = v148;
                goto LABEL_102;
              }

              v46 = +[AXSubsystemBrailleHardware identifier];
              v31 = AXLoggerForFacility();

              v26 = 1;
              v47 = AXOSLogLevelFromAXLogLevel();
              v29 = infoDictionary;
              if (!os_log_type_enabled(v31, v47))
              {
                v12 = v150;
                v30 = v148;
                goto LABEL_101;
              }

              v32 = AXColorizeFormatLog();
              v48 = _AXStringForArgs();
              v30 = v148;
              if (os_log_type_enabled(v31, v47))
              {
                buf = 138543362;
                v160 = v48;
                _os_log_impl(&dword_0, v31, v47, "%{public}@", &buf, 0xCu);
              }

              goto LABEL_99;
            }
          }

          v18 = [pairedDevices countByEnumeratingWithState:&v153 objects:v161 count:16];
        }

        while (v18);
      }

      goto LABEL_36;
    }

    v44 = +[AXSubsystemBrailleHardware sharedInstance];
    ignoreLogging10 = [v44 ignoreLogging];

    if ((ignoreLogging10 & 1) == 0)
    {
      v49 = +[AXSubsystemBrailleHardware identifier];
      v29 = AXLoggerForFacility();

      v26 = 1;
      v50 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v29, v50))
      {
        v30 = AXColorizeFormatLog();
        bluetoothAddress = _AXStringForArgs();
        if (os_log_type_enabled(v29, v50))
        {
          buf = 138543362;
          v160 = bluetoothAddress;
          _os_log_impl(&dword_0, v29, v50, "%{public}@", &buf, 0xCu);
        }

        goto LABEL_102;
      }

      goto LABEL_104;
    }

    v26 = 1;
LABEL_105:
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
          v160 = v30;
          _os_log_impl(&dword_0, v12, v28, "%{public}@", &buf, 0xCu);
        }

        goto LABEL_103;
      }

      goto LABEL_105;
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
    self->_deviceID = 0;
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
      v12.location = 0;
      v12.length = v5;
      CFDataDeleteBytes(self->_readBuffer, v12);
    }
  }

  [(NSLock *)self->_readBufferLock unlock];
  v8 = self->_safeReadBuffer;
  deviceID = self->_deviceID;

  return _SCRDSeikaExtractEventsFromBuffer(v8, deviceID);
}

- (BOOL)setMainCells:(const char *)cells length:(int64_t)length
{
  v5 = SCRDSeikaCreateWriteRequestPacket();
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
  [NSThread sleepForTimeInterval:0.005];
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