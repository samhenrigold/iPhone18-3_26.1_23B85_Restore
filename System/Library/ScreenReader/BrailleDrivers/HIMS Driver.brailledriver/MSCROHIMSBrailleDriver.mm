@interface MSCROHIMSBrailleDriver
- (BOOL)setMainCells:(const char *)cells length:(int64_t)length;
- (BOOL)unloadDriver;
- (MSCROHIMSBrailleDriver)init;
- (id)getInputEvents;
- (int)loadDriverWithIOElement:(id)element;
- (void)dealloc;
- (void)fileReader:(id)reader data:(const void *)data length:(unint64_t)length;
- (void)removeDeviceNotification:(id)notification;
@end

@implementation MSCROHIMSBrailleDriver

- (MSCROHIMSBrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROHIMSBrailleDriver;
  result = [(MSCROHIMSBrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROHIMSBrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROHIMSBrailleDriver;
  [(MSCROHIMSBrailleDriver *)&v3 dealloc];
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
        [(MSCROHIMSBrailleDriver *)self unloadDriver];
      }

      v136 = v12;
      infoDictionary = [v12 infoDictionary];
      [infoDictionary objectForKey:kSCROBrailleDriverModels];
      v138 = v137 = elementCopy;
      bluetoothAddress = [elementCopy bluetoothAddress];
      *&__nbyte[1] = 0u;
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      pairedDevices = [v15 pairedDevices];

      v17 = [pairedDevices countByEnumeratingWithState:&__nbyte[1] objects:v146 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v140;
LABEL_14:
        v20 = 0;
        while (1)
        {
          if (*v140 != v19)
          {
            objc_enumerationMutation(pairedDevices);
          }

          v21 = *(*&__nbyte[3] + 8 * v20);
          address = [v21 address];
          v23 = [address isEqualToString:bluetoothAddress];

          if (v23)
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [pairedDevices countByEnumeratingWithState:&__nbyte[1] objects:v146 count:16];
            if (v18)
            {
              goto LABEL_14;
            }

            goto LABEL_20;
          }
        }

        v31 = v21;

        if (!v31)
        {
          goto LABEL_35;
        }

        v32 = +[NSNotificationCenter defaultCenter];
        [v32 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
        v134 = v32;
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
                  *v143 = 138543362;
                  *&v143[4] = v41;
                  _os_log_impl(&dword_0, v38, v39, "%{public}@", v143, 0xCu);
                }
              }
            }
          }

          else
          {
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
                  bluetoothChannelIsLost = *__error();
                  v65 = _AXStringForArgs();
                  if (os_log_type_enabled(v62, v63))
                  {
                    *v143 = 138543362;
                    *&v143[4] = v65;
                    _os_log_impl(&dword_0, v62, v63, "%{public}@", v143, 0xCu);
                  }
                }
              }
            }

            v66 = open(buf, 131074, bluetoothChannelIsLost);
            self->_comPort = v66;
            if ((v66 & 0x80000000) == 0)
            {
              objc_storeStrong(&self->_device, v21);
              v133 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:self->_comPort closeOnDealloc:1];
              v67 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:self fileHandle:v133];
              readerThread = self->_readerThread;
              self->_readerThread = v67;

              Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
              self->_safeReadBuffer = Mutable;
              if (!Mutable)
              {
                goto LABEL_116;
              }

              v70 = [objc_allocWithZone(NSLock) init];
              readBufferLock = self->_readBufferLock;
              self->_readBufferLock = v70;

              v48 = v134;
              if (self->_readBufferLock && (v72 = CFDataCreateMutable(kCFAllocatorDefault, 0), (self->_readBuffer = v72) != 0))
              {
                [(SCRDFileReader *)self->_readerThread start];
                v73 = SCRDHIMSCreateRequest();
                if (v73)
                {
                  v74 = 0;
                  while (write(self->_comPort, v73, 0) >= 0)
                  {
                    self->_bluetoothChannelIsLost = 0;
                    self->_hasBeenUnloaded = 0;
                    v75 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0, 0);
                    v76 = v75;
                    if (self->_bluetoothChannelIsLost || self->_hasBeenUnloaded || v75 == kCFRunLoopRunStopped)
                    {
                      v94 = +[AXSubsystemBrailleHardware sharedInstance];
                      ignoreLogging4 = [v94 ignoreLogging];

                      if (ignoreLogging4)
                      {
                        goto LABEL_117;
                      }

                      v96 = +[AXSubsystemBrailleHardware identifier];
                      v97 = AXLoggerForFacility();

                      v98 = AXOSLogLevelFromAXLogLevel();
                      if (!os_log_type_enabled(v97, v98))
                      {
                        v30 = v138;
                        v48 = v134;
                        goto LABEL_143;
                      }

                      v99 = AXColorizeFormatLog();
                      hasBeenUnloaded = self->_hasBeenUnloaded;
                      v132 = v76;
                      bluetoothChannelIsLost = self->_bluetoothChannelIsLost;
                      v100 = _AXStringForArgs();
                      if (!os_log_type_enabled(v97, v98))
                      {
                        goto LABEL_106;
                      }

                      *v143 = 138543362;
                      *&v143[4] = v100;
                      v101 = v97;
                      v102 = v98;
LABEL_105:
                      _os_log_impl(&dword_0, v101, v102, "%{public}@", v143, 0xCu);
                      goto LABEL_106;
                    }

                    [(NSLock *)self->_readBufferLock lock];
                    Length = CFDataGetLength(self->_readBuffer);
                    if (Length >= 1)
                    {
                      v78 = Length;
                      v79 = v74;
                      safeReadBuffer = self->_safeReadBuffer;
                      BytePtr = CFDataGetBytePtr(self->_readBuffer);
                      v82 = safeReadBuffer;
                      v74 = v79;
                      CFDataAppendBytes(v82, BytePtr, v78);
                      v147.location = 0;
                      v147.length = v78;
                      CFDataDeleteBytes(self->_readBuffer, v147);
                    }

                    [(NSLock *)self->_readBufferLock unlock];
                    SCRDAdvanceBufferToPacketStart();
                    if (CFDataGetLength(self->_safeReadBuffer) < 10)
                    {
LABEL_80:
                      v84 = 0;
                    }

                    else
                    {
                      while (1)
                      {
                        *&v143[8] = 0;
                        *v143 = 0;
                        CFDataGetBytePtr(self->_safeReadBuffer);
                        SCRDHIMSFillPacket();
                        v21 = v21 & 0xFFFFFFFFFFFF0000 | *&v143[8];
                        if (SCRDHIMSIsPacketValid() && v143[1] == 2)
                        {
                          break;
                        }

                        v148.location = 0;
                        v148.length = 1;
                        CFDataDeleteBytes(self->_safeReadBuffer, v148);
                        SCRDAdvanceBufferToPacketStart();
                        if (CFDataGetLength(self->_safeReadBuffer) <= 9)
                        {
                          goto LABEL_80;
                        }
                      }

                      v84 = v143[3];
                      v149.location = 0;
                      v149.length = 1;
                      CFDataDeleteBytes(self->_safeReadBuffer, v149);
                    }

                    if (v74 <= 3)
                    {
                      ++v74;
                      if (!v84)
                      {
                        continue;
                      }
                    }

                    free(v73);
                    if (v84 != 40)
                    {
                      if (v84 == 20)
                      {
                        v85 = @"com.apple.scrod.braille.driver.hims.braille.edge.20";
                        goto LABEL_109;
                      }

                      v113 = +[AXSubsystemBrailleHardware sharedInstance];
                      ignoreLogging5 = [v113 ignoreLogging];

                      if (ignoreLogging5)
                      {
                        goto LABEL_116;
                      }

                      v115 = +[AXSubsystemBrailleHardware identifier];
                      v116 = AXLoggerForFacility();

                      v117 = AXOSLogLevelFromAXLogLevel();
                      v108 = v116;
                      if (os_log_type_enabled(v116, v117))
                      {
                        v99 = AXColorizeFormatLog();
                        bluetoothChannelIsLost = self->_modelIdentifier;
                        v100 = _AXStringForArgs();
                        if (os_log_type_enabled(v116, v117))
                        {
                          *v143 = 138543362;
                          *&v143[4] = v100;
                          goto LABEL_137;
                        }

LABEL_140:
                        v73 = 0;
LABEL_141:
                        v30 = v138;
                        v48 = v134;
                        v97 = v108;
LABEL_142:

LABEL_143:
                        v93 = v133;
LABEL_144:

                        goto LABEL_118;
                      }

LABEL_138:
                      v73 = 0;
LABEL_139:
                      v30 = v138;
                      v93 = v133;
                      v48 = v134;
                      v97 = v108;
                      goto LABEL_144;
                    }

                    v85 = @"com.apple.scrod.braille.driver.hims.braille.edge.40";
LABEL_109:
                    modelIdentifier = self->_modelIdentifier;
                    self->_modelIdentifier = &v85->isa;

                    v110 = [v138 objectForKey:self->_modelIdentifier];
                    if (v110)
                    {
                      v111 = v110;
                      v112 = [(NSLock *)v110 objectForKey:kSCROBrailleDriverMainDisplaySize];
                      self->_mainSize = [v112 unsignedCharValue];

                      v26 = 0;
                      self->_isDriverLoaded = 1;
                      v30 = v138;
                      v93 = v133;
                      v48 = v134;
                      goto LABEL_125;
                    }

                    v118 = +[AXSubsystemBrailleHardware sharedInstance];
                    ignoreLogging6 = [v118 ignoreLogging];

                    if (ignoreLogging6)
                    {
LABEL_116:
                      v73 = 0;
LABEL_117:
                      v30 = v138;
                      v93 = v133;
                      v48 = v134;
                      goto LABEL_118;
                    }

                    v127 = +[AXSubsystemBrailleHardware identifier];
                    v128 = AXLoggerForFacility();

                    v117 = AXOSLogLevelFromAXLogLevel();
                    v108 = v128;
                    if (!os_log_type_enabled(v128, v117))
                    {
                      goto LABEL_138;
                    }

                    v99 = AXColorizeFormatLog();
                    bluetoothChannelIsLost = self->_modelIdentifier;
                    v100 = _AXStringForArgs();
                    if (!os_log_type_enabled(v128, v117))
                    {
                      goto LABEL_140;
                    }

                    *v143 = 138543362;
                    *&v143[4] = v100;
LABEL_137:
                    v129 = v117;
                    v97 = v108;
                    _os_log_impl(&dword_0, v108, v129, "%{public}@", v143, 0xCu);
                    v73 = 0;
LABEL_106:
                    v30 = v138;
                    v48 = v134;
                    goto LABEL_142;
                  }

                  v103 = +[AXSubsystemBrailleHardware sharedInstance];
                  ignoreLogging7 = [v103 ignoreLogging];

                  if (ignoreLogging7)
                  {
                    goto LABEL_117;
                  }

                  v105 = +[AXSubsystemBrailleHardware identifier];
                  v106 = AXLoggerForFacility();

                  v107 = AXOSLogLevelFromAXLogLevel();
                  v108 = v106;
                  if (!os_log_type_enabled(v106, v107))
                  {
                    goto LABEL_139;
                  }

                  v99 = AXColorizeFormatLog();
                  v100 = _AXStringForArgs();
                  if (!os_log_type_enabled(v106, v107))
                  {
                    goto LABEL_141;
                  }

                  *v143 = 138543362;
                  *&v143[4] = v100;
                  v101 = v106;
                  v102 = v107;
                  v97 = v106;
                  goto LABEL_105;
                }
              }

              else
              {
                v73 = 0;
              }

              v30 = v138;
              v93 = v133;
LABEL_118:
              [(SCRDFileReader *)self->_readerThread invalidate:bluetoothChannelIsLost];
              v120 = self->_readerThread;
              self->_readerThread = 0;

              v121 = self->_safeReadBuffer;
              if (v121)
              {
                CFRelease(v121);
                self->_safeReadBuffer = 0;
              }

              [v48 removeObserver:self];
              [(NSLock *)self->_readBufferLock lock];
              readBuffer = self->_readBuffer;
              if (readBuffer)
              {
                CFRelease(readBuffer);
                self->_readBuffer = 0;
              }

              v111 = self->_readBufferLock;
              v123 = self->_readBufferLock;
              self->_readBufferLock = 0;

              [(NSLock *)v111 unlock];
              device = self->_device;
              self->_device = 0;

              if (v73)
              {
                free(v73);
              }

              self->_comPort = -1;
              v125 = self->_modelIdentifier;
              self->_modelIdentifier = 0;

              self->_mainSize = 0;
              v26 = 2;
LABEL_125:

              goto LABEL_126;
            }

            v86 = +[AXSubsystemBrailleHardware sharedInstance];
            ignoreLogging8 = [v86 ignoreLogging];

            if ((ignoreLogging8 & 1) == 0)
            {
              v88 = +[AXSubsystemBrailleHardware identifier];
              v89 = AXLoggerForFacility();

              v90 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v89, v90))
              {
                v91 = AXColorizeFormatLog();
                bluetoothChannelIsLost = self->_comPort;
                v92 = _AXStringForArgs();
                if (os_log_type_enabled(v89, v90))
                {
                  *v143 = 138543362;
                  *&v143[4] = v92;
                  _os_log_impl(&dword_0, v89, v90, "%{public}@", v143, 0xCu);
                }
              }
            }

            self->_comPort = -1;
          }

          v48 = v134;
          [v134 removeObserver:{self, bluetoothChannelIsLost}];
          v26 = 1;
          v30 = v138;
LABEL_126:
          v12 = v136;
          elementCopy = v137;
          v29 = infoDictionary;
          goto LABEL_127;
        }

        v52 = +[AXSubsystemBrailleHardware sharedInstance];
        ignoreLogging9 = [v52 ignoreLogging];

        if ((ignoreLogging9 & 1) == 0)
        {
          v54 = +[AXSubsystemBrailleHardware identifier];
          v55 = AXLoggerForFacility();

          v56 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = AXColorizeFormatLog();
            v58 = _AXStringForArgs();
            if (os_log_type_enabled(v55, v56))
            {
              *buf = 138543362;
              v145 = v58;
              _os_log_impl(&dword_0, v55, v56, "%{public}@", buf, 0xCu);
            }
          }
        }

        v48 = v32;
        [v32 removeObserver:self];
        v26 = 1;
        v12 = v136;
        elementCopy = v137;
        v29 = infoDictionary;
      }

      else
      {
LABEL_20:

LABEL_35:
        v42 = +[AXSubsystemBrailleHardware sharedInstance];
        ignoreLogging10 = [v42 ignoreLogging];

        if (ignoreLogging10)
        {
          v26 = 1;
          v12 = v136;
          elementCopy = v137;
          v29 = infoDictionary;
          v30 = v138;
LABEL_129:

LABEL_130:
          goto LABEL_131;
        }

        v46 = +[AXSubsystemBrailleHardware identifier];
        v31 = AXLoggerForFacility();

        v26 = 1;
        v47 = AXOSLogLevelFromAXLogLevel();
        v29 = infoDictionary;
        if (!os_log_type_enabled(v31, v47))
        {
          v12 = v136;
          elementCopy = v137;
          v30 = v138;
LABEL_128:

          goto LABEL_129;
        }

        v48 = AXColorizeFormatLog();
        v49 = _AXStringForArgs();
        if (os_log_type_enabled(v31, v47))
        {
          *buf = 138543362;
          v145 = v49;
          _os_log_impl(&dword_0, v31, v47, "%{public}@", buf, 0xCu);
        }

        v12 = v136;
        elementCopy = v137;
      }

      v30 = v138;
LABEL_127:

      goto LABEL_128;
    }

    v44 = +[AXSubsystemBrailleHardware sharedInstance];
    ignoreLogging11 = [v44 ignoreLogging];

    if ((ignoreLogging11 & 1) == 0)
    {
      v50 = +[AXSubsystemBrailleHardware identifier];
      v29 = AXLoggerForFacility();

      v26 = 1;
      v51 = AXOSLogLevelFromAXLogLevel();
      if (!os_log_type_enabled(v29, v51))
      {
LABEL_131:

        goto LABEL_132;
      }

      v30 = AXColorizeFormatLog();
      bluetoothAddress = _AXStringForArgs();
      if (os_log_type_enabled(v29, v51))
      {
        *buf = 138543362;
        v145 = bluetoothAddress;
        _os_log_impl(&dword_0, v29, v51, "%{public}@", buf, 0xCu);
      }

      goto LABEL_129;
    }

    v26 = 1;
LABEL_132:

    goto LABEL_133;
  }

  v24 = +[AXSubsystemBrailleHardware sharedInstance];
  ignoreLogging12 = [v24 ignoreLogging];

  if ((ignoreLogging12 & 1) == 0)
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
        *buf = 138543362;
        v145 = v30;
        _os_log_impl(&dword_0, v12, v28, "%{public}@", buf, 0xCu);
      }

      goto LABEL_130;
    }

    goto LABEL_132;
  }

  v26 = 1;
LABEL_133:

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
      v12.location = 0;
      v12.length = v5;
      CFDataDeleteBytes(self->_readBuffer, v12);
    }
  }

  [(NSLock *)self->_readBufferLock unlock];
  v8 = self->_safeReadBuffer;
  _himsDeviceId = [(MSCROHIMSBrailleDriver *)self _himsDeviceId];

  return _SCRDHIMSBrailleEDGEExtractEventsFromBuffer(v8, _himsDeviceId);
}

- (BOOL)setMainCells:(const char *)cells length:(int64_t)length
{
  v5 = SCRDHIMSCreateRequest();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  comPort = self->_comPort;
  v8 = comPort != -1 && write(comPort, v6, 0) == 0;
  free(v6);
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