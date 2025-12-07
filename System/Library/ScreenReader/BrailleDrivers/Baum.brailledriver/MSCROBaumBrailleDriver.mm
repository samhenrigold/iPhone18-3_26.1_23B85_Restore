@interface MSCROBaumBrailleDriver
- (BOOL)setMainCells:(const char *)cells length:(int64_t)length;
- (BOOL)unloadDriver;
- (MSCROBaumBrailleDriver)init;
- (id)getInputEvents;
- (int)brailleInputMode;
- (int)loadDriverWithIOElement:(id)element;
- (void)dealloc;
- (void)fileReader:(id)reader data:(const void *)data length:(unint64_t)length;
- (void)removeDeviceNotification:(id)notification;
@end

@implementation MSCROBaumBrailleDriver

- (MSCROBaumBrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROBaumBrailleDriver;
  result = [(MSCROBaumBrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_nextInitRequestTime = -3061152000.0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROBaumBrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROBaumBrailleDriver;
  [(MSCROBaumBrailleDriver *)&v3 dealloc];
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
        v163 = v11;
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
        [(MSCROBaumBrailleDriver *)self unloadDriver];
      }

      v149 = v12;
      infoDictionary = [v12 infoDictionary];
      [infoDictionary objectForKey:kSCROBrailleDriverModels];
      v151 = v150 = elementCopy;
      bluetoothAddress = [elementCopy bluetoothAddress];
      v155 = 0u;
      v156 = 0u;
      v157 = 0u;
      v158 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      pairedDevices = [v15 pairedDevices];

      v17 = [pairedDevices countByEnumeratingWithState:&v155 objects:v164 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v156;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v156 != v19)
            {
              objc_enumerationMutation(pairedDevices);
            }

            v21 = *(*(&v155 + 1) + 8 * i);
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
                  v33 = v32;
                  [v31 device];
                  ComPortForServiceWithSandboxExtension = BTDeviceGetComPortForServiceWithSandboxExtension();
                  if (ComPortForServiceWithSandboxExtension)
                  {
                    v35 = ComPortForServiceWithSandboxExtension;
                    v36 = +[AXSubsystemBrailleHardware sharedInstance];
                    ignoreLogging2 = [v36 ignoreLogging];

                    if ((ignoreLogging2 & 1) == 0)
                    {
                      v38 = +[AXSubsystemBrailleHardware identifier];
                      v39 = AXLoggerForFacility();

                      v40 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v39, v40))
                      {
                        v41 = AXColorizeFormatLog();
                        bluetoothChannelIsLost = v35;
                        v42 = _AXStringForArgs();
                        if (os_log_type_enabled(v39, v40))
                        {
                          *v160 = 138543362;
                          v161 = v42;
                          _os_log_impl(&dword_0, v39, v40, "%{public}@", v160, 0xCu);
                        }
                      }
                    }

                    v32 = v33;
                    v43 = v33;
                  }

                  else
                  {
                    if (sandbox_extension_consume() == -1)
                    {
                      v53 = +[AXSubsystemBrailleHardware sharedInstance];
                      ignoreLogging3 = [v53 ignoreLogging];

                      if ((ignoreLogging3 & 1) == 0)
                      {
                        v55 = +[AXSubsystemBrailleHardware identifier];
                        v56 = AXLoggerForFacility();

                        v57 = AXOSLogLevelFromAXLogLevel();
                        if (os_log_type_enabled(v56, v57))
                        {
                          v58 = AXColorizeFormatLog();
                          bluetoothChannelIsLost = *__error();
                          v59 = _AXStringForArgs();
                          if (os_log_type_enabled(v56, v57))
                          {
                            *v160 = 138543362;
                            v161 = v59;
                            _os_log_impl(&dword_0, v56, v57, "%{public}@", v160, 0xCu);
                          }
                        }
                      }
                    }

                    v60 = open(&buf, 131074, bluetoothChannelIsLost);
                    self->_comPort = v60;
                    if ((v60 & 0x80000000) == 0)
                    {
                      objc_storeStrong(&self->_device, v21);
                      v61 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:self->_comPort closeOnDealloc:1];
                      v62 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:self fileHandle:v61];
                      readerThread = self->_readerThread;
                      self->_readerThread = v62;

                      Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
                      self->_safeReadBuffer = Mutable;
                      v147 = v61;
                      if (!Mutable)
                      {
                        goto LABEL_118;
                      }

                      v65 = [objc_allocWithZone(NSLock) init];
                      readBufferLock = self->_readBufferLock;
                      self->_readBufferLock = v65;

                      if (!self->_readBufferLock)
                      {
                        goto LABEL_118;
                      }

                      v67 = CFDataCreateMutable(kCFAllocatorDefault, 0);
                      self->_readBuffer = v67;
                      if (!v67)
                      {
                        goto LABEL_118;
                      }

                      [(SCRDFileReader *)self->_readerThread start];
                      v68 = 0;
                      v69 = 0;
                      memset(v159, 0, 19);
                      while (1)
                      {
                        v154 = 1;
                        __buf = 5403;
                        if (write(self->_comPort, &__buf, 3uLL) <= 2)
                        {
                          goto LABEL_118;
                        }

                        v152 = -31717;
                        if (write(self->_comPort, &v152, 2uLL) <= 1)
                        {
                          break;
                        }

                        self->_bluetoothChannelIsLost = 0;
                        self->_hasBeenUnloaded = 0;
                        v70 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.2, 0);
                        v71 = v70;
                        if (self->_bluetoothChannelIsLost || self->_hasBeenUnloaded || v70 == kCFRunLoopRunStopped)
                        {
                          v110 = +[AXSubsystemBrailleHardware sharedInstance];
                          ignoreLogging4 = [v110 ignoreLogging];

                          if (ignoreLogging4)
                          {
                            goto LABEL_118;
                          }

                          v112 = +[AXSubsystemBrailleHardware identifier];
                          v113 = AXLoggerForFacility();

                          v114 = AXOSLogLevelFromAXLogLevel();
                          if (os_log_type_enabled(v113, v114))
                          {
                            v115 = AXColorizeFormatLog();
                            hasBeenUnloaded = self->_hasBeenUnloaded;
                            v145 = v71;
                            bluetoothChannelIsLost = self->_bluetoothChannelIsLost;
                            v116 = _AXStringForArgs();
                            if (os_log_type_enabled(v113, v114))
                            {
                              *v160 = 138543362;
                              v161 = v116;
                              v117 = v113;
                              v118 = v114;
                              goto LABEL_114;
                            }

                            goto LABEL_115;
                          }

                          goto LABEL_116;
                        }

                        [(NSLock *)self->_readBufferLock lock];
                        Length = CFDataGetLength(self->_readBuffer);
                        if (Length >= 1)
                        {
                          v73 = Length;
                          v74 = v68;
                          safeReadBuffer = self->_safeReadBuffer;
                          BytePtr = CFDataGetBytePtr(self->_readBuffer);
                          v77 = safeReadBuffer;
                          v68 = v74;
                          CFDataAppendBytes(v77, BytePtr, v73);
                          v165.location = 0;
                          v165.length = v73;
                          CFDataDeleteBytes(self->_readBuffer, v165);
                        }

                        [(NSLock *)self->_readBufferLock unlock];
                        PacketFromBuffer = SCRDBaumCreatePacketFromBuffer();
                        if (PacketFromBuffer)
                        {
                          v80 = PacketFromBuffer;
                          v81 = 0;
                          do
                          {
                            v82 = CFDataGetBytePtr(v80);
                            v83 = *v82;
                            if (v83 == 132)
                            {
                              v84 = *(v82 + 1);
                              LOWORD(v159[1]) = *(v82 + 17);
                              v159[0] = v84;
                              v81 = 1;
                            }

                            else if (v83 == 23)
                            {
                              v68 = 1;
                            }

                            else
                            {
                              v68 = v68;
                            }

                            CFRelease(v80);
                            v80 = SCRDBaumCreatePacketFromBuffer();
                          }

                          while (v80);
                          v79 = v69++ > 5;
                          v85 = v79;
                          if ((v85 | v81))
                          {
                            if (v81)
                            {
                              v86 = v68;
                              v87 = [NSString stringWithUTF8String:v159];
                              v88 = _modelIdentifierForDeviceIdentifier(v87, &self->_deviceID);
                              modelIdentifier = self->_modelIdentifier;
                              self->_modelIdentifier = v88;

                              v90 = [v151 objectForKey:self->_modelIdentifier];
                              v91 = +[AXSubsystemBrailleHardware sharedInstance];
                              ignoreLogging5 = [v91 ignoreLogging];

                              if (v90)
                              {
                                if ((ignoreLogging5 & 1) == 0)
                                {
                                  v93 = +[AXSubsystemBrailleHardware identifier];
                                  v94 = AXLoggerForFacility();

                                  v95 = AXOSLogLevelFromAXLogLevel();
                                  if (os_log_type_enabled(v94, v95))
                                  {
                                    v96 = AXColorizeFormatLog();
                                    bluetoothChannelIsLost = self->_modelIdentifier;
                                    hasBeenUnloaded = v90;
                                    mode = _AXStringForArgs();
                                    if (os_log_type_enabled(v94, v95))
                                    {
                                      *v160 = 138543362;
                                      v161 = mode;
                                      _os_log_impl(&dword_0, v94, v95, "%{public}@", v160, 0xCu);
                                    }
                                  }
                                }

                                v97 = [v90 objectForKey:{kSCROBrailleDriverMainDisplaySize, bluetoothChannelIsLost, hasBeenUnloaded}];
                                self->_mainSize = [v97 unsignedCharValue];

                                mainSize = self->_mainSize;
                                v99 = mainSize + 7;
                                v79 = mainSize < -7;
                                v100 = mainSize + 14;
                                if (!v79)
                                {
                                  v100 = v99;
                                }

                                v101 = v100 >> 3;
                                self->_routerKeyGroupStateBufferSize = v101;
                                v102 = malloc_type_calloc(v101, 1uLL, 0x100004077774924uLL);
                                self->_routerKeyGroupStateBuffer = v102;
                                if (v102)
                                {
                                  self->_isDriverLoaded = 1;
                                  self->_isDeviceSleeping = v86 & 1;
                                  if (v86)
                                  {
                                    SCRDPostSleepNotification();
                                  }

                                  v26 = 0;
                                  v30 = v151;
LABEL_125:

                                  v32 = v33;
LABEL_126:
                                  v12 = v149;
                                  elementCopy = v150;
                                  v29 = infoDictionary;
LABEL_127:

LABEL_128:
LABEL_129:

LABEL_130:
LABEL_131:

                                  goto LABEL_132;
                                }
                              }

                              else
                              {
                                if ((ignoreLogging5 & 1) == 0)
                                {
                                  v138 = +[AXSubsystemBrailleHardware identifier];
                                  v139 = AXLoggerForFacility();

                                  v140 = AXOSLogLevelFromAXLogLevel();
                                  if (os_log_type_enabled(v139, v140))
                                  {
                                    v141 = AXColorizeFormatLog();
                                    bluetoothChannelIsLost = self->_modelIdentifier;
                                    v142 = _AXStringForArgs();
                                    if (os_log_type_enabled(v139, v140))
                                    {
                                      *v160 = 138543362;
                                      v161 = v142;
                                      _os_log_impl(&dword_0, v139, v140, "%{public}@", v160, 0xCu);
                                    }
                                  }
                                }

                                v90 = 0;
                              }

LABEL_119:
                              v30 = v151;
LABEL_120:
                              [(SCRDFileReader *)self->_readerThread invalidate:bluetoothChannelIsLost];
                              v125 = self->_readerThread;
                              self->_readerThread = 0;

                              v126 = self->_safeReadBuffer;
                              if (v126)
                              {
                                CFRelease(v126);
                                self->_safeReadBuffer = 0;
                              }

                              [v33 removeObserver:self];
                              [(NSLock *)self->_readBufferLock lock];
                              readBuffer = self->_readBuffer;
                              if (readBuffer)
                              {
                                CFRelease(readBuffer);
                                self->_readBuffer = 0;
                              }

                              v128 = self->_readBufferLock;
                              self->_readBufferLock = 0;
                              v129 = v128;

                              [(NSLock *)v129 unlock];
                              device = self->_device;
                              self->_device = 0;

                              self->_comPort = -1;
                              v131 = self->_modelIdentifier;
                              self->_modelIdentifier = 0;

                              self->_isDeviceSleeping = 0;
                              v26 = 2;
                              goto LABEL_125;
                            }

LABEL_117:
                            v123 = +[AXSubsystemBrailleHardware sharedInstance];
                            ignoreLogging6 = [v123 ignoreLogging];

                            if ((ignoreLogging6 & 1) == 0)
                            {
                              v133 = +[AXSubsystemBrailleHardware identifier];
                              v134 = AXLoggerForFacility();

                              v135 = AXOSLogLevelFromAXLogLevel();
                              v30 = v151;
                              if (os_log_type_enabled(v134, v135))
                              {
                                v136 = AXColorizeFormatLog();
                                v137 = _AXStringForArgs();
                                if (os_log_type_enabled(v134, v135))
                                {
                                  *v160 = 138543362;
                                  v161 = v137;
                                  _os_log_impl(&dword_0, v134, v135, "%{public}@", v160, 0xCu);
                                }
                              }

                              v90 = 0;
                              v87 = 0;
                              goto LABEL_120;
                            }

LABEL_118:
                            v90 = 0;
                            v87 = 0;
                            goto LABEL_119;
                          }
                        }

                        else
                        {
                          v79 = v69++ > 5;
                          if (v79)
                          {
                            goto LABEL_117;
                          }
                        }
                      }

                      v119 = +[AXSubsystemBrailleHardware sharedInstance];
                      ignoreLogging7 = [v119 ignoreLogging];

                      if (ignoreLogging7)
                      {
                        goto LABEL_118;
                      }

                      v121 = +[AXSubsystemBrailleHardware identifier];
                      v113 = AXLoggerForFacility();

                      v122 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v113, v122))
                      {
                        v115 = AXColorizeFormatLog();
                        v116 = _AXStringForArgs();
                        if (os_log_type_enabled(v113, v122))
                        {
                          *v160 = 138543362;
                          v161 = v116;
                          v117 = v113;
                          v118 = v122;
LABEL_114:
                          _os_log_impl(&dword_0, v117, v118, "%{public}@", v160, 0xCu);
                        }

LABEL_115:
                      }

LABEL_116:

                      goto LABEL_118;
                    }

                    v103 = +[AXSubsystemBrailleHardware sharedInstance];
                    ignoreLogging8 = [v103 ignoreLogging];

                    v32 = v33;
                    if ((ignoreLogging8 & 1) == 0)
                    {
                      v105 = +[AXSubsystemBrailleHardware identifier];
                      v106 = AXLoggerForFacility();

                      v107 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v106, v107))
                      {
                        v108 = AXColorizeFormatLog();
                        bluetoothChannelIsLost = self->_comPort;
                        v109 = _AXStringForArgs();
                        if (os_log_type_enabled(v106, v107))
                        {
                          *v160 = 138543362;
                          v161 = v109;
                          _os_log_impl(&dword_0, v106, v107, "%{public}@", v160, 0xCu);
                        }

                        v32 = v33;
                      }
                    }

                    self->_comPort = -1;
                    v43 = v32;
                  }

                  [v43 removeObserver:{self, bluetoothChannelIsLost}];
                  v26 = 1;
                  v30 = v151;
                  goto LABEL_126;
                }

                [v32 removeObserver:self];
                v26 = 1;
                v12 = v149;
                elementCopy = v150;
                v29 = infoDictionary;
LABEL_49:
                v30 = v151;
                goto LABEL_127;
              }

LABEL_37:
              v44 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging9 = [v44 ignoreLogging];

              if (ignoreLogging9)
              {
                v26 = 1;
                v12 = v149;
                elementCopy = v150;
                v29 = infoDictionary;
                v30 = v151;
                goto LABEL_129;
              }

              v48 = +[AXSubsystemBrailleHardware identifier];
              v31 = AXLoggerForFacility();

              v26 = 1;
              v49 = AXOSLogLevelFromAXLogLevel();
              v29 = infoDictionary;
              if (!os_log_type_enabled(v31, v49))
              {
                v12 = v149;
                elementCopy = v150;
                v30 = v151;
                goto LABEL_128;
              }

              v32 = AXColorizeFormatLog();
              v50 = _AXStringForArgs();
              if (os_log_type_enabled(v31, v49))
              {
                buf = 138543362;
                v163 = v50;
                _os_log_impl(&dword_0, v31, v49, "%{public}@", &buf, 0xCu);
              }

              v26 = 1;
              v12 = v149;
              elementCopy = v150;
              goto LABEL_49;
            }
          }

          v18 = [pairedDevices countByEnumeratingWithState:&v155 objects:v164 count:16];
        }

        while (v18);
      }

      goto LABEL_37;
    }

    v46 = +[AXSubsystemBrailleHardware sharedInstance];
    ignoreLogging10 = [v46 ignoreLogging];

    if ((ignoreLogging10 & 1) == 0)
    {
      v51 = +[AXSubsystemBrailleHardware identifier];
      v29 = AXLoggerForFacility();

      v26 = 1;
      v52 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v29, v52))
      {
        v30 = AXColorizeFormatLog();
        bluetoothAddress = _AXStringForArgs();
        if (os_log_type_enabled(v29, v52))
        {
          buf = 138543362;
          v163 = bluetoothAddress;
          _os_log_impl(&dword_0, v29, v52, "%{public}@", &buf, 0xCu);
        }

        goto LABEL_129;
      }

      goto LABEL_131;
    }

    v26 = 1;
LABEL_132:
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
          v163 = v30;
          _os_log_impl(&dword_0, v12, v28, "%{public}@", &buf, 0xCu);
        }

        goto LABEL_130;
      }

      goto LABEL_132;
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
        v20 = 138543362;
        v21 = v9;
        _os_log_impl(&dword_0, v6, v7, "%{public}@", &v20, 0xCu);
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

    v14 = self->_readBufferLock;
    readBufferLock = self->_readBufferLock;
    self->_readBufferLock = 0;

    [(NSLock *)v14 unlock];
    [(BluetoothDevice *)self->_device disconnect];
    device = self->_device;
    self->_device = 0;

    self->_comPort = -1;
    self->_bluetoothChannelIsLost = 1;
    modelIdentifier = self->_modelIdentifier;
    self->_modelIdentifier = 0;

    self->_mainSize = 0;
    routerKeyGroupStateBuffer = self->_routerKeyGroupStateBuffer;
    if (routerKeyGroupStateBuffer)
    {
      free(routerKeyGroupStateBuffer);
      self->_routerKeyGroupStateBuffer = 0;
    }

    self->_isDeviceSleeping = 0;
    *&self->_routerKeyStateBuffer = 0;
    self->_frontPanelKeysDown = 0;
  }

  return 1;
}

- (int)brailleInputMode
{
  deviceID = self->_deviceID;
  if (deviceID > 0x24)
  {
    return 0;
  }

  else
  {
    return dword_3C64[deviceID];
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
      v17.location = 0;
      v17.length = v5;
      CFDataDeleteBytes(self->_readBuffer, v17);
    }
  }

  [(NSLock *)self->_readBufferLock unlock];
  v8 = self->_safeReadBuffer;
  if (v8)
  {
    if (CFDataGetLength(v8) < 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = +[NSMutableArray array];
    }

    PacketFromBuffer = SCRDBaumCreatePacketFromBuffer();
    if (PacketFromBuffer)
    {
      v12 = PacketFromBuffer;
      while (1)
      {
        v13 = *CFDataGetBytePtr(v12);
        if (v13 > 0x23)
        {
          if (v13 > 50)
          {
            if (v13 == 51)
            {
              SCRDBaumAppendEventsFromBrailleAndFrontPanelPacket();
            }

            else if (v13 == 52)
            {
              SCRDBaumAppendEventsFromDirectionalPadPacket();
            }
          }

          else if (v13 == 36)
          {
            SCRDBaumAppendEventsFromTopPanelPacket();
          }

          else if (v13 == 39)
          {
            SCRDBaumAppendEventsFromRoutingKeyPacket();
          }

          goto LABEL_32;
        }

        if (v13 == 1)
        {
          break;
        }

        if (v13 != 23)
        {
          if (v13 == 34)
          {
            SCRDBaumAppendEventsFromRoutingKeyGroupPacket();
          }

          goto LABEL_32;
        }

        if (!self->_isDeviceSleeping)
        {
          self->_isDeviceSleeping = 1;
LABEL_31:
          SCRDPostSleepNotification();
        }

LABEL_32:
        CFRelease(v12);
        v12 = SCRDBaumCreatePacketFromBuffer();
        if (!v12)
        {
          goto LABEL_33;
        }
      }

      if (!SCRDBaumGetSizeFromDisplaySizePacket() || self->_mainSize || !self->_isDeviceSleeping)
      {
        goto LABEL_32;
      }

      self->_isDeviceSleeping = 0;
      goto LABEL_31;
    }

LABEL_33:
    if ([v9 count])
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }

    v10 = v14;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)setMainCells:(const char *)cells length:(int64_t)length
{
  DisplayRequest = SCRDBaumCreateDisplayRequest();
  if (DisplayRequest)
  {
    v6 = DisplayRequest;
    comPort = self->_comPort;
    v8 = comPort != -1 && write(comPort, v6, 0) == 0;
    free(v6);
  }

  else
  {
    v8 = 0;
  }

  [NSThread sleepForTimeInterval:0.005];
  return v8;
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