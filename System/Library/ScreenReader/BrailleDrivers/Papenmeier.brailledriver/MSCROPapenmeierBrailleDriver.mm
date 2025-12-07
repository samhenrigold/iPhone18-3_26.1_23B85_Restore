@interface MSCROPapenmeierBrailleDriver
- (BOOL)setMainCells:(const char *)cells length:(int64_t)length;
- (BOOL)unloadDriver;
- (MSCROPapenmeierBrailleDriver)init;
- (id)getInputEvents;
- (int)loadDriverWithIOElement:(id)element;
- (void)dealloc;
- (void)fileReader:(id)reader data:(const void *)data length:(unint64_t)length;
- (void)removeDeviceNotification:(id)notification;
@end

@implementation MSCROPapenmeierBrailleDriver

- (MSCROPapenmeierBrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROPapenmeierBrailleDriver;
  result = [(MSCROPapenmeierBrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROPapenmeierBrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROPapenmeierBrailleDriver;
  [(MSCROPapenmeierBrailleDriver *)&v3 dealloc];
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
        v178 = v11;
        _os_log_impl(&dword_0, v8, v9, "%{public}@", buf, 0xCu);
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
        [(MSCROPapenmeierBrailleDriver *)self unloadDriver];
      }

      selfCopy = self;
      infoDictionary = [v12 infoDictionary];
      [infoDictionary objectForKey:kSCROBrailleDriverModels];
      v170 = v169 = elementCopy;
      bluetoothAddress = [elementCopy bluetoothAddress];
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v174 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      pairedDevices = [v15 pairedDevices];

      v17 = [pairedDevices countByEnumeratingWithState:&v171 objects:v179 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v172;
LABEL_14:
        v20 = 0;
        while (1)
        {
          if (*v172 != v19)
          {
            objc_enumerationMutation(pairedDevices);
          }

          v21 = *(*(&v171 + 1) + 8 * v20);
          address = [v21 address];
          v23 = [address isEqualToString:bluetoothAddress];

          if (v23)
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [pairedDevices countByEnumeratingWithState:&v171 objects:v179 count:16];
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
          goto LABEL_37;
        }

        v32 = v31;
        v33 = +[NSNotificationCenter defaultCenter];
        v34 = selfCopy;
        [v33 addObserver:selfCopy selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
        v166 = v33;
        [v33 addObserver:selfCopy selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
        if (([v32 connected]& 1) != 0)
        {
          [v32 device];
          ComPortForServiceWithSandboxExtension = BTDeviceGetComPortForServiceWithSandboxExtension();
          if (ComPortForServiceWithSandboxExtension)
          {
            v36 = ComPortForServiceWithSandboxExtension;
            v37 = +[AXSubsystemBrailleHardware sharedInstance];
            ignoreLogging2 = [v37 ignoreLogging];

            if ((ignoreLogging2 & 1) == 0)
            {
              v39 = v32;
              v40 = +[AXSubsystemBrailleHardware identifier];
              v41 = AXLoggerForFacility();

              v42 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v41, v42))
              {
                v43 = AXColorizeFormatLog();
                v156 = v36;
                v44 = _AXStringForArgs();
                if (os_log_type_enabled(v41, v42))
                {
                  *v175 = 138543362;
                  v176 = v44;
                  _os_log_impl(&dword_0, v41, v42, "%{public}@", v175, 0xCu);
                }
              }

              v32 = v39;
            }

            v45 = v166;
            [v166 removeObserver:{selfCopy, v156}];
          }

          else
          {
            if (sandbox_extension_consume() == -1)
            {
              v66 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging3 = [v66 ignoreLogging];

              if ((ignoreLogging3 & 1) == 0)
              {
                v68 = +[AXSubsystemBrailleHardware identifier];
                v69 = AXLoggerForFacility();

                v70 = AXOSLogLevelFromAXLogLevel();
                if (os_log_type_enabled(v69, v70))
                {
                  v71 = v32;
                  v72 = AXColorizeFormatLog();
                  v156 = *__error();
                  v73 = _AXStringForArgs();
                  if (os_log_type_enabled(v69, v70))
                  {
                    *v175 = 138543362;
                    v176 = v73;
                    _os_log_impl(&dword_0, v69, v70, "%{public}@", v175, 0xCu);
                  }

                  v32 = v71;
                }
              }
            }

            v74 = open(buf, 131074, v156);
            selfCopy->_comPort = v74;
            if ((v74 & 0x80000000) == 0)
            {
              objc_storeStrong(&selfCopy->_device, v21);
              v75 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:selfCopy->_comPort closeOnDealloc:1];
              v76 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:selfCopy fileHandle:v75];
              readerThread = selfCopy->_readerThread;
              selfCopy->_readerThread = v76;

              Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
              selfCopy->_safeReadBuffer = Mutable;
              if (!Mutable)
              {
                goto LABEL_125;
              }

              v79 = [objc_allocWithZone(NSLock) init];
              readBufferLock = selfCopy->_readBufferLock;
              selfCopy->_readBufferLock = v79;

              v81 = v166;
              if (selfCopy->_readBufferLock)
              {
                v82 = CFDataCreateMutable(kCFAllocatorDefault, 0);
                selfCopy->_readBuffer = v82;
                if (v82)
                {
                  IdentityRequestBuffer = SCRDPapenmeierCreateIdentityRequestBuffer();
                  if (IdentityRequestBuffer)
                  {
                    v84 = IdentityRequestBuffer;
                    v164 = v32;
                    [(SCRDFileReader *)selfCopy->_readerThread start];
                    v85 = 0;
                    v86 = kCFRunLoopDefaultMode;
                    while (1)
                    {
                      if (write(selfCopy->_comPort, v84, 0) < 0)
                      {
                        elementCopy = v169;
                        v30 = v170;
                        v32 = v164;
                        goto LABEL_126;
                      }

                      selfCopy->_bluetoothChannelIsLost = 0;
                      selfCopy->_hasBeenUnloaded = 0;
                      v87 = CFRunLoopRunInMode(v86, 0.1, 0);
                      v88 = v87;
                      if (selfCopy->_bluetoothChannelIsLost || selfCopy->_hasBeenUnloaded || v87 == kCFRunLoopRunStopped)
                      {
                        break;
                      }

                      [(NSLock *)selfCopy->_readBufferLock lock];
                      Length = CFDataGetLength(selfCopy->_readBuffer);
                      if (Length >= 1)
                      {
                        v90 = Length;
                        v91 = v86;
                        safeReadBuffer = selfCopy->_safeReadBuffer;
                        BytePtr = CFDataGetBytePtr(selfCopy->_readBuffer);
                        v94 = safeReadBuffer;
                        v86 = v91;
                        CFDataAppendBytes(v94, BytePtr, v90);
                        v180.location = 0;
                        v180.length = v90;
                        CFDataDeleteBytes(selfCopy->_readBuffer, v180);
                      }

                      [(NSLock *)selfCopy->_readBufferLock unlock];
                      PacketFromBuffer = SCRDPapenmeierCreatePacketFromBuffer();
                      if (PacketFromBuffer)
                      {
                        v96 = PacketFromBuffer;
                        while (*v96 != 10 || *(v96 + 2) != 5)
                        {
                          SCRDPapenmeierReleasePacket();
                          v96 = SCRDPapenmeierCreatePacketFromBuffer();
                          if (!v96)
                          {
                            goto LABEL_80;
                          }
                        }

                        v106 = v75;
                        v107 = (16 * (**(v96 + 8) & 0xF)) | *(*(v96 + 8) + 1);
                        if (v107 > 98)
                        {
                          if (v107 == 99)
                          {
                            v108 = @"com.apple.scrod.braille.driver.papenmeier.braillex.live.plus";
                          }

                          else
                          {
                            if (v107 != 100)
                            {
                              goto LABEL_110;
                            }

                            v108 = @"com.apple.scrod.braille.driver.papenmeier.braillex.live.20";
                          }
                        }

                        else
                        {
                          if (v107 != 89)
                          {
                            if (v107 == 98)
                            {
                              v108 = @"com.apple.scrod.braille.driver.papenmeier.braillex.live";
                              goto LABEL_109;
                            }

LABEL_110:
                            SCRDPapenmeierReleasePacket();
                            selfCopy->_deviceID = v107;
                            v81 = v166;
                            v75 = v106;
LABEL_111:
                            v121 = +[AXSubsystemBrailleHardware sharedInstance];
                            ignoreLogging4 = [v121 ignoreLogging];

                            v32 = v164;
                            if ((ignoreLogging4 & 1) == 0)
                            {
                              v123 = +[AXSubsystemBrailleHardware identifier];
                              v124 = AXLoggerForFacility();

                              v125 = AXOSLogLevelFromAXLogLevel();
                              if (os_log_type_enabled(v124, v125))
                              {
                                v126 = AXColorizeFormatLog();
                                deviceID = selfCopy->_deviceID;
                                modelIdentifier = selfCopy->_modelIdentifier;
                                v127 = _AXStringForArgs();
                                if (os_log_type_enabled(v124, v125))
                                {
                                  *v175 = 138543362;
                                  v176 = v127;
                                  _os_log_impl(&dword_0, v124, v125, "%{public}@", v175, 0xCu);
                                }

                                v32 = v164;
                              }

                              v81 = v166;
                            }

                            KeyBuffer = SCRDPapenmeierCreateKeyBuffer();
                            selfCopy->_keysDownBuffer = KeyBuffer;
                            if (!KeyBuffer)
                            {
                              v132 = +[AXSubsystemBrailleHardware sharedInstance];
                              ignoreLogging5 = [v132 ignoreLogging];

                              if (ignoreLogging5)
                              {
                                goto LABEL_96;
                              }

                              v134 = +[AXSubsystemBrailleHardware identifier];
                              v135 = AXLoggerForFacility();

                              v114 = v135;
                              v136 = AXOSLogLevelFromAXLogLevel();
                              if (os_log_type_enabled(v135, v136))
                              {
                                v137 = AXColorizeFormatLog();
                                deviceID = selfCopy->_deviceID;
                                v163 = v137;
                                v161 = _AXStringForArgs();
                                if (os_log_type_enabled(v135, v136))
                                {
                                  *v175 = 138543362;
                                  v176 = v161;
                                  _os_log_impl(&dword_0, v135, v136, "%{public}@", v175, 0xCu);
                                  v117 = v161;
                                  elementCopy = v169;
                                  v30 = v170;
                                  goto LABEL_152;
                                }

                                elementCopy = v169;
                                v30 = v170;
                                v32 = v164;
                                v117 = v161;
                                goto LABEL_159;
                              }

                              elementCopy = v169;
                              v30 = v170;
                              v32 = v164;
LABEL_160:

                              goto LABEL_126;
                            }

                            free(v84);
                            v129 = [v170 objectForKey:selfCopy->_modelIdentifier];
                            if (v129)
                            {
                              v130 = v129;
                              v131 = [(NSLock *)v129 objectForKey:kSCROBrailleDriverMainDisplaySize];
                              selfCopy->_mainSize = [v131 unsignedCharValue];

                              v26 = 0;
                              selfCopy->_isDriverLoaded = 1;
                              elementCopy = v169;
                              v30 = v170;
                              goto LABEL_135;
                            }

                            v138 = +[AXSubsystemBrailleHardware sharedInstance];
                            ignoreLogging6 = [v138 ignoreLogging];

                            if (ignoreLogging6)
                            {
LABEL_125:
                              v84 = 0;
                              elementCopy = v169;
                              v30 = v170;
                              v81 = v166;
                              goto LABEL_126;
                            }

                            v152 = +[AXSubsystemBrailleHardware identifier];
                            v153 = AXLoggerForFacility();

                            v114 = v153;
                            v154 = AXOSLogLevelFromAXLogLevel();
                            if (os_log_type_enabled(v153, v154))
                            {
                              v155 = AXColorizeFormatLog();
                              deviceID = selfCopy->_modelIdentifier;
                              v163 = v155;
                              _AXStringForArgs();
                              v162 = v160 = v153;
                              if (os_log_type_enabled(v153, v154))
                              {
                                *v175 = 138543362;
                                v114 = v153;
                                v176 = v162;
                                _os_log_impl(&dword_0, v153, v154, "%{public}@", v175, 0xCu);
                                v117 = v162;
                                v84 = 0;
LABEL_151:
                                elementCopy = v169;
                                v30 = v170;
                                v81 = v166;
                                v34 = selfCopy;
LABEL_152:
                                v32 = v164;
                                goto LABEL_159;
                              }

                              v84 = 0;
LABEL_158:
                              elementCopy = v169;
                              v30 = v170;
                              v81 = v166;
                              v34 = selfCopy;
                              v32 = v164;
                              v114 = v160;
                              v117 = v162;
LABEL_159:

                              goto LABEL_160;
                            }

                            v84 = 0;
LABEL_155:
                            elementCopy = v169;
                            v30 = v170;
                            v32 = v164;
                            v81 = v166;
                            goto LABEL_160;
                          }

                          v108 = @"com.apple.scrod.braille.driver.papenmeier.braillex.trio.40";
                        }

LABEL_109:
                        v120 = selfCopy->_modelIdentifier;
                        selfCopy->_modelIdentifier = &v108->isa;

                        goto LABEL_110;
                      }

LABEL_80:
                      v97 = v85++ >= 4;
                      v81 = v166;
                      if (v97)
                      {
                        goto LABEL_111;
                      }
                    }

                    v118 = +[AXSubsystemBrailleHardware sharedInstance];
                    ignoreLogging7 = [v118 ignoreLogging];

                    if (ignoreLogging7)
                    {
                      elementCopy = v169;
                      v30 = v170;
                      v32 = v164;
                      v81 = v166;
                      goto LABEL_126;
                    }

                    v148 = +[AXSubsystemBrailleHardware identifier];
                    v149 = AXLoggerForFacility();

                    v114 = v149;
                    v150 = AXOSLogLevelFromAXLogLevel();
                    if (os_log_type_enabled(v149, v150))
                    {
                      v151 = AXColorizeFormatLog();
                      modelIdentifier = selfCopy->_hasBeenUnloaded;
                      v159 = v88;
                      deviceID = selfCopy->_bluetoothChannelIsLost;
                      v163 = v151;
                      _AXStringForArgs();
                      v162 = v160 = v149;
                      if (os_log_type_enabled(v149, v150))
                      {
                        *v175 = 138543362;
                        v114 = v149;
                        v176 = v162;
                        _os_log_impl(&dword_0, v149, v150, "%{public}@", v175, 0xCu);
                        v117 = v162;
                        goto LABEL_151;
                      }

                      goto LABEL_158;
                    }

                    goto LABEL_155;
                  }

                  v109 = +[AXSubsystemBrailleHardware sharedInstance];
                  ignoreLogging8 = [v109 ignoreLogging];

                  if ((ignoreLogging8 & 1) == 0)
                  {
                    v165 = v75;
                    v111 = v32;
                    v112 = +[AXSubsystemBrailleHardware identifier];
                    v113 = AXLoggerForFacility();

                    v114 = v113;
                    v115 = AXOSLogLevelFromAXLogLevel();
                    if (os_log_type_enabled(v113, v115))
                    {
                      v163 = AXColorizeFormatLog();
                      v116 = _AXStringForArgs();
                      if (os_log_type_enabled(v114, v115))
                      {
                        *v175 = 138543362;
                        v176 = v116;
                        _os_log_impl(&dword_0, v114, v115, "%{public}@", v175, 0xCu);
                      }

                      v84 = 0;
                      v117 = v116;
                      elementCopy = v169;
                      v30 = v170;
                      v32 = v111;
                      v75 = v165;
                      goto LABEL_159;
                    }

                    v84 = 0;
                    elementCopy = v169;
                    v30 = v170;
                    v32 = v111;
                    v75 = v165;
                    goto LABEL_160;
                  }
                }
              }

              v84 = 0;
LABEL_96:
              elementCopy = v169;
              v30 = v170;
LABEL_126:
              [(SCRDFileReader *)v34->_readerThread invalidate:deviceID];
              v140 = v34->_readerThread;
              v34->_readerThread = 0;

              v141 = v34->_safeReadBuffer;
              if (v141)
              {
                CFRelease(v141);
                v34->_safeReadBuffer = 0;
              }

              [v81 removeObserver:v34];
              [(NSLock *)v34->_readBufferLock lock];
              readBuffer = v34->_readBuffer;
              if (readBuffer)
              {
                CFRelease(readBuffer);
                v34->_readBuffer = 0;
              }

              v130 = v34->_readBufferLock;
              v143 = v34->_readBufferLock;
              v34->_readBufferLock = 0;

              [(NSLock *)v130 unlock];
              keysDownBuffer = v34->_keysDownBuffer;
              if (keysDownBuffer)
              {
                free(keysDownBuffer);
                v34->_keysDownBuffer = 0;
              }

              if (v84)
              {
                free(v84);
              }

              device = v34->_device;
              v34->_device = 0;

              v34->_comPort = -1;
              v146 = v34->_modelIdentifier;
              v34->_modelIdentifier = 0;

              v26 = 2;
LABEL_135:

              v45 = v166;
              goto LABEL_136;
            }

            v98 = +[AXSubsystemBrailleHardware sharedInstance];
            ignoreLogging9 = [v98 ignoreLogging];

            if ((ignoreLogging9 & 1) == 0)
            {
              v100 = v32;
              v101 = +[AXSubsystemBrailleHardware identifier];
              v102 = AXLoggerForFacility();

              v103 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v102, v103))
              {
                v104 = AXColorizeFormatLog();
                deviceID = selfCopy->_comPort;
                v105 = _AXStringForArgs();
                if (os_log_type_enabled(v102, v103))
                {
                  *v175 = 138543362;
                  v176 = v105;
                  _os_log_impl(&dword_0, v102, v103, "%{public}@", v175, 0xCu);
                }
              }

              v32 = v100;
            }

            v45 = v166;
            [v166 removeObserver:{selfCopy, deviceID}];
            selfCopy->_comPort = -1;
          }

          v26 = 1;
          elementCopy = v169;
          v30 = v170;
LABEL_136:
          v29 = infoDictionary;
          goto LABEL_137;
        }

        v58 = +[AXSubsystemBrailleHardware sharedInstance];
        ignoreLogging10 = [v58 ignoreLogging];

        if ((ignoreLogging10 & 1) == 0)
        {
          v60 = v32;
          v61 = +[AXSubsystemBrailleHardware identifier];
          v62 = AXLoggerForFacility();

          v63 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = AXColorizeFormatLog();
            v65 = _AXStringForArgs();
            if (os_log_type_enabled(v62, v63))
            {
              *buf = 138543362;
              v178 = v65;
              _os_log_impl(&dword_0, v62, v63, "%{public}@", buf, 0xCu);
            }
          }

          v32 = v60;
        }

        v45 = v166;
        [v166 removeObserver:selfCopy];
        v26 = 1;
        v29 = infoDictionary;
        elementCopy = v169;
        v30 = v170;
      }

      else
      {
LABEL_20:

LABEL_37:
        v46 = +[AXSubsystemBrailleHardware sharedInstance];
        ignoreLogging11 = [v46 ignoreLogging];

        elementCopy = v169;
        if (ignoreLogging11)
        {
          v26 = 1;
          v29 = infoDictionary;
          v30 = v170;
LABEL_139:

LABEL_140:
          goto LABEL_141;
        }

        v50 = +[AXSubsystemBrailleHardware identifier];
        v32 = AXLoggerForFacility();

        v26 = 1;
        v51 = AXOSLogLevelFromAXLogLevel();
        v29 = infoDictionary;
        if (!os_log_type_enabled(v32, v51))
        {
          v30 = v170;
LABEL_138:

          goto LABEL_139;
        }

        v45 = AXColorizeFormatLog();
        v52 = _AXStringForArgs();
        v53 = v32;
        v54 = v52;
        v55 = v53;
        if (os_log_type_enabled(v53, v51))
        {
          *buf = 138543362;
          v178 = v54;
          _os_log_impl(&dword_0, v55, v51, "%{public}@", buf, 0xCu);
        }

        v30 = v170;
        v32 = v55;
      }

LABEL_137:

      goto LABEL_138;
    }

    v48 = +[AXSubsystemBrailleHardware sharedInstance];
    ignoreLogging12 = [v48 ignoreLogging];

    if ((ignoreLogging12 & 1) == 0)
    {
      v56 = +[AXSubsystemBrailleHardware identifier];
      v29 = AXLoggerForFacility();

      v26 = 1;
      v57 = AXOSLogLevelFromAXLogLevel();
      if (!os_log_type_enabled(v29, v57))
      {
LABEL_141:

        goto LABEL_142;
      }

      v30 = AXColorizeFormatLog();
      bluetoothAddress = _AXStringForArgs();
      if (os_log_type_enabled(v29, v57))
      {
        *buf = 138543362;
        v178 = bluetoothAddress;
        _os_log_impl(&dword_0, v29, v57, "%{public}@", buf, 0xCu);
      }

      goto LABEL_139;
    }

    v26 = 1;
LABEL_142:

    goto LABEL_143;
  }

  v24 = +[AXSubsystemBrailleHardware sharedInstance];
  ignoreLogging13 = [v24 ignoreLogging];

  if ((ignoreLogging13 & 1) == 0)
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
        v178 = v30;
        _os_log_impl(&dword_0, v12, v28, "%{public}@", buf, 0xCu);
      }

      goto LABEL_140;
    }

    goto LABEL_142;
  }

  v26 = 1;
LABEL_143:

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
    keysDownBuffer = self->_keysDownBuffer;
    if (keysDownBuffer)
    {
      free(keysDownBuffer);
      self->_keysDownBuffer = 0;
    }
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
      v13.location = 0;
      v13.length = v5;
      CFDataDeleteBytes(self->_readBuffer, v13);
    }
  }

  [(NSLock *)self->_readBufferLock unlock];
  deviceID = self->_deviceID;
  v9 = self->_safeReadBuffer;
  keysDownBuffer = self->_keysDownBuffer;

  return _SCRDPapenmeierExtractEventsFromBuffer(v9, deviceID, keysDownBuffer);
}

- (BOOL)setMainCells:(const char *)cells length:(int64_t)length
{
  BrailleBufferB = SCRDPapenmeierCreateBrailleBufferB();
  if (!BrailleBufferB)
  {
    return 0;
  }

  v6 = BrailleBufferB;
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