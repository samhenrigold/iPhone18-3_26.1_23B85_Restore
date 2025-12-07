@interface MSCROMDVBrailleDriver
- (BOOL)setMainCells:(const char *)cells length:(int64_t)length;
- (BOOL)setStatusCells:(const char *)cells length:(int64_t)length;
- (BOOL)unloadDriver;
- (MSCROMDVBrailleDriver)init;
- (id)getInputEvents;
- (int)loadDriverWithIOElement:(id)element;
- (void)_flushWriteBuffer;
- (void)dealloc;
- (void)fileReader:(id)reader data:(const void *)data length:(unint64_t)length;
- (void)removeDeviceNotification:(id)notification;
@end

@implementation MSCROMDVBrailleDriver

- (MSCROMDVBrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROMDVBrailleDriver;
  result = [(MSCROMDVBrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_nextWriteTime = -3061152000.0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROMDVBrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROMDVBrailleDriver;
  [(MSCROMDVBrailleDriver *)&v3 dealloc];
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
        v190 = v11;
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
        [(MSCROMDVBrailleDriver *)self unloadDriver];
      }

      selfCopy = self;
      infoDictionary = [v12 infoDictionary];
      v172 = [infoDictionary objectForKey:kSCROBrailleDriverModels];
      v174 = elementCopy;
      bluetoothAddress = [elementCopy bluetoothAddress];
      v182 = 0u;
      v183 = 0u;
      v184 = 0u;
      v185 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      pairedDevices = [v15 pairedDevices];

      v17 = [pairedDevices countByEnumeratingWithState:&v182 objects:v191 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v183;
LABEL_14:
        v20 = 0;
        while (1)
        {
          if (*v183 != v19)
          {
            objc_enumerationMutation(pairedDevices);
          }

          v21 = *(*(&v182 + 1) + 8 * v20);
          address = [v21 address];
          v23 = [address isEqualToString:bluetoothAddress];

          if (v23)
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [pairedDevices countByEnumeratingWithState:&v182 objects:v191 count:16];
            if (!v18)
            {
              goto LABEL_20;
            }

            goto LABEL_14;
          }
        }

        v31 = v21;

        if (v31)
        {
          v32 = +[NSNotificationCenter defaultCenter];
          v33 = selfCopy;
          [v32 addObserver:selfCopy selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
          [v32 addObserver:selfCopy selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
          if (([v31 connected]& 1) != 0)
          {
            v170 = v31;
            [v31 device];
            ComPortForServiceWithSandboxExtension = BTDeviceGetComPortForServiceWithSandboxExtension();
            if (ComPortForServiceWithSandboxExtension)
            {
              v35 = ComPortForServiceWithSandboxExtension;
              v36 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging2 = [v36 ignoreLogging];

              v29 = infoDictionary;
              if ((ignoreLogging2 & 1) == 0)
              {
                v165 = v32;
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
                    *v187 = 138543362;
                    v188 = v42;
                    _os_log_impl(&dword_0, v39, v40, "%{public}@", v187, 0xCu);
                  }
                }

                v32 = v165;
              }

              [v32 removeObserver:{selfCopy, bluetoothChannelIsLost}];
              v26 = 1;
              elementCopy = v174;
              v30 = v172;
LABEL_116:
              v31 = v170;
              goto LABEL_117;
            }

            v29 = infoDictionary;
            if (sandbox_extension_consume() == -1)
            {
              v61 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging3 = [v61 ignoreLogging];

              if ((ignoreLogging3 & 1) == 0)
              {
                v63 = +[AXSubsystemBrailleHardware identifier];
                v64 = AXLoggerForFacility();

                v65 = AXOSLogLevelFromAXLogLevel();
                if (os_log_type_enabled(v64, v65))
                {
                  v167 = v32;
                  v66 = AXColorizeFormatLog();
                  bluetoothChannelIsLost = *__error();
                  v67 = _AXStringForArgs();
                  if (os_log_type_enabled(v64, v65))
                  {
                    *v187 = 138543362;
                    v188 = v67;
                    _os_log_impl(&dword_0, v64, v65, "%{public}@", v187, 0xCu);
                  }

                  v32 = v167;
                }
              }
            }

            v68 = open(buf, 131074, bluetoothChannelIsLost);
            selfCopy->_comPort = v68;
            elementCopy = v174;
            if ((v68 & 0x80000000) == 0)
            {
              objc_storeStrong(&selfCopy->_device, v21);
              v69 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:selfCopy->_comPort closeOnDealloc:1];
              v70 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:selfCopy fileHandle:v69];
              readerThread = selfCopy->_readerThread;
              selfCopy->_readerThread = v70;

              v72 = malloc_type_calloc(0x2AuLL, 1uLL, 0x100004077774924uLL);
              selfCopy->_writeBuffer = v72;
              if (v72)
              {
                Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
                selfCopy->_safeReadBuffer = Mutable;
                if (Mutable)
                {
                  v74 = [objc_allocWithZone(NSLock) init];
                  readBufferLock = selfCopy->_readBufferLock;
                  selfCopy->_readBufferLock = v74;

                  if (selfCopy->_readBufferLock)
                  {
                    v76 = CFDataCreateMutable(kCFAllocatorDefault, 0);
                    selfCopy->_readBuffer = v76;
                    if (v76)
                    {
                      [(SCRDFileReader *)selfCopy->_readerThread start];
                      __nbyte = 0;
                      v180 = 0;
                      Request = SCRDMDVSerialCreateRequest();
                      if (!Request)
                      {
                        v118 = v69;
                        v119 = +[AXSubsystemBrailleHardware sharedInstance];
                        ignoreLogging4 = [v119 ignoreLogging];

                        if ((ignoreLogging4 & 1) == 0)
                        {
                          v168 = v32;
                          v123 = +[AXSubsystemBrailleHardware identifier];
                          v124 = AXLoggerForFacility();

                          v125 = AXOSLogLevelFromAXLogLevel();
                          if (os_log_type_enabled(v124, v125))
                          {
                            v163 = AXColorizeFormatLog();
                            mode = _AXStringForArgs();
                            if (os_log_type_enabled(v124, v125))
                            {
                              *v187 = 138543362;
                              v188 = mode;
                              _os_log_impl(&dword_0, v124, v125, "%{public}@", v187, 0xCu);
                              v126 = mode;
                              __buf = 0;
                              elementCopy = v174;
                              v30 = v172;
                              v69 = v118;
                              v78 = 0;
                            }

                            else
                            {
                              __buf = 0;
                              elementCopy = v174;
                              v30 = v172;
                              v69 = v118;
                              v78 = 0;
                              v126 = mode;
                            }

                            goto LABEL_175;
                          }

                          __buf = 0;
                          elementCopy = v174;
                          v30 = v172;
                          v32 = v168;
                          v69 = v118;
                          v78 = 0;
                          goto LABEL_176;
                        }

                        __buf = 0;
                        elementCopy = v174;
                        v30 = v172;
                        v69 = v118;
                        v78 = 0;
                        goto LABEL_104;
                      }

                      v78 = Request;
                      v157 = v69;
                      v179 = 0;
                      v79 = SCRDMDVSerialCreateRequest();
                      if (v79)
                      {
                        __buf = v79;
                        v168 = v32;
                        v80 = 0;
                        v81 = 0;
                        v82 = 0;
                        v161 = v78;
                        while (1)
                        {
                          v83 = write(v33->_comPort, v78, __nbyte);
                          if (v83 < __nbyte)
                          {
                            break;
                          }

                          v84 = write(v33->_comPort, __buf, v179);
                          if (v84 < v179)
                          {
                            v137 = +[AXSubsystemBrailleHardware sharedInstance];
                            ignoreLogging5 = [v137 ignoreLogging];

                            if (ignoreLogging5)
                            {
                              goto LABEL_142;
                            }

                            v144 = +[AXSubsystemBrailleHardware identifier];
                            v145 = AXLoggerForFacility();

                            v135 = AXOSLogLevelFromAXLogLevel();
                            v124 = v145;
                            if (!os_log_type_enabled(v145, v135))
                            {
                              goto LABEL_170;
                            }

                            v163 = AXColorizeFormatLog();
                            modea = _AXStringForArgs();
                            if (!os_log_type_enabled(v145, v135))
                            {
                              goto LABEL_173;
                            }

                            *v187 = 138543362;
                            v136 = modea;
                            v188 = modea;
                            goto LABEL_153;
                          }

                          *&v33->_bluetoothChannelIsLost = 0;
                          v85 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.2, 0);
                          v86 = v85;
                          if (v33->_bluetoothChannelIsLost || v33->_hasBeenUnloaded || v85 == kCFRunLoopRunStopped)
                          {
                            v127 = +[AXSubsystemBrailleHardware sharedInstance];
                            ignoreLogging6 = [v127 ignoreLogging];

                            if (ignoreLogging6)
                            {
                              elementCopy = v174;
                              v30 = v172;
                              v32 = v168;
                              v69 = v157;
                              v78 = v161;
                              goto LABEL_104;
                            }

                            v139 = +[AXSubsystemBrailleHardware identifier];
                            v140 = AXLoggerForFacility();

                            v141 = AXOSLogLevelFromAXLogLevel();
                            modeb = v140;
                            if (os_log_type_enabled(v140, v141))
                            {
                              v142 = AXColorizeFormatLog();
                              hasBeenUnloaded = v33->_hasBeenUnloaded;
                              v156 = v86;
                              bluetoothChannelIsLost = v33->_bluetoothChannelIsLost;
                              v163 = v142;
                              v126 = _AXStringForArgs();
                              if (os_log_type_enabled(v140, v141))
                              {
                                *v187 = 138543362;
                                v188 = v126;
                                v143 = v141;
                                v124 = v140;
                                _os_log_impl(&dword_0, v140, v143, "%{public}@", v187, 0xCu);
                                v29 = infoDictionary;
                                elementCopy = v174;
                                v33 = selfCopy;
                                v30 = v172;
                                v69 = v157;
                              }

                              else
                              {
                                v29 = infoDictionary;
                                elementCopy = v174;
                                v33 = selfCopy;
                                v30 = v172;
                                v69 = v157;
                                v124 = modeb;
                              }

                              v78 = v161;
                              goto LABEL_175;
                            }

                            elementCopy = v174;
                            v30 = v172;
                            v32 = v168;
                            v69 = v157;
                            v124 = modeb;
                            v78 = v161;
LABEL_176:

                            goto LABEL_104;
                          }

                          v162 = v82;
                          [(NSLock *)v33->_readBufferLock lock];
                          Length = CFDataGetLength(v33->_readBuffer);
                          if (Length >= 1)
                          {
                            v88 = Length;
                            safeReadBuffer = v33->_safeReadBuffer;
                            BytePtr = CFDataGetBytePtr(v33->_readBuffer);
                            CFDataAppendBytes(safeReadBuffer, BytePtr, v88);
                            v192.location = 0;
                            v192.length = v88;
                            CFDataDeleteBytes(v33->_readBuffer, v192);
                          }

                          [(NSLock *)v33->_readBufferLock unlock];
                          v91 = SCRDMDVSerialCreatePacketsFromBuffer();
                          v175 = 0u;
                          v176 = 0u;
                          v177 = 0u;
                          v178 = 0u;
                          v92 = [v91 countByEnumeratingWithState:&v175 objects:v186 count:16];
                          if (v92)
                          {
                            v93 = v92;
                            v94 = 0;
                            v95 = *v176;
                            do
                            {
                              for (i = 0; i != v93; i = i + 1)
                              {
                                if (*v176 != v95)
                                {
                                  objc_enumerationMutation(v91);
                                }

                                v97 = CFDataGetBytePtr(*(*(&v175 + 1) + 8 * i));
                                if (v97[2] == 37 && v97[3] == 6)
                                {
                                  v81 = v97[5];
                                  v80 = v97[9];
                                  v94 = 1;
                                }
                              }

                              v93 = [v91 countByEnumeratingWithState:&v175 objects:v186 count:16];
                            }

                            while (v93);
                          }

                          else
                          {
                            v94 = 0;
                          }

                          v29 = infoDictionary;
                          v33 = selfCopy;
                          v78 = v161;
                          if ((v94 & 1) == 0)
                          {
                            v82 = v162 + 1;
                            if (v162 < 6)
                            {
                              continue;
                            }
                          }

                          free(v161);
                          free(__buf);
                          selfCopy->_mainSize = v81;
                          if (v81 == 24)
                          {
                            v99 = 0;
                            v100 = xmmword_3A70;
                            v98 = @"com.apple.scrod.braille.driver.mdv.mb248.24";
                            v101 = 2;
LABEL_159:
                            v33 = selfCopy;
                            selfCopy->_statusSize = v99;
                            selfCopy->_deviceID = v101;
                            *&selfCopy->_writeBufferSize = v100;
                          }

                          else
                          {
                            v98 = 0;
                            if (v81 == 40)
                            {
                              v99 = 2 * (v80 < 7);
                              v100 = xmmword_3A80;
                              v98 = @"com.apple.scrod.braille.driver.mdv.mb408l.40";
                              v101 = 1;
                              goto LABEL_159;
                            }
                          }

                          modelIdentifier = v33->_modelIdentifier;
                          v33->_modelIdentifier = &v98->isa;

                          v147 = [v172 objectForKey:v33->_modelIdentifier];
                          if (v147)
                          {
                            v112 = v147;
                            v26 = 0;
                            v33->_isDriverLoaded = 1;
                            v29 = infoDictionary;
                            elementCopy = v174;
                            v30 = v172;
                            v32 = v168;
                            v69 = v157;
                            goto LABEL_115;
                          }

                          v148 = +[AXSubsystemBrailleHardware sharedInstance];
                          ignoreLogging7 = [v148 ignoreLogging];

                          if (ignoreLogging7)
                          {
                            v78 = 0;
                            __buf = 0;
                            v29 = infoDictionary;
                            elementCopy = v174;
                            v33 = selfCopy;
                            v30 = v172;
                            goto LABEL_143;
                          }

                          v150 = +[AXSubsystemBrailleHardware identifier];
                          v151 = AXLoggerForFacility();

                          v152 = AXOSLogLevelFromAXLogLevel();
                          v124 = v151;
                          if (os_log_type_enabled(v151, v152))
                          {
                            v153 = AXColorizeFormatLog();
                            bluetoothChannelIsLost = selfCopy->_modelIdentifier;
                            v163 = v153;
                            modea = _AXStringForArgs();
                            if (os_log_type_enabled(v151, v152))
                            {
                              *v187 = 138543362;
                              v188 = modea;
                              _os_log_impl(&dword_0, v151, v152, "%{public}@", v187, 0xCu);
                              v126 = modea;
                              v78 = 0;
                              __buf = 0;
LABEL_154:
                              v29 = infoDictionary;
                              elementCopy = v174;
                              v33 = selfCopy;
                              v30 = v172;
LABEL_155:
                              v69 = v157;
LABEL_175:

                              v32 = v168;
                              goto LABEL_176;
                            }

                            v78 = 0;
                            __buf = 0;
LABEL_173:
                            v29 = infoDictionary;
                            elementCopy = v174;
                            v33 = selfCopy;
                            v30 = v172;
LABEL_174:
                            v69 = v157;
                            v126 = modea;
                            goto LABEL_175;
                          }

                          v78 = 0;
                          __buf = 0;
LABEL_170:
                          v29 = infoDictionary;
                          elementCopy = v174;
                          v33 = selfCopy;
                          v30 = v172;
LABEL_171:
                          v32 = v168;
                          v69 = v157;
                          goto LABEL_176;
                        }

                        v131 = +[AXSubsystemBrailleHardware sharedInstance];
                        ignoreLogging8 = [v131 ignoreLogging];

                        if (ignoreLogging8)
                        {
LABEL_142:
                          elementCopy = v174;
                          v30 = v172;
LABEL_143:
                          v32 = v168;
                          goto LABEL_144;
                        }

                        v133 = +[AXSubsystemBrailleHardware identifier];
                        v134 = AXLoggerForFacility();

                        v135 = AXOSLogLevelFromAXLogLevel();
                        v124 = v134;
                        if (!os_log_type_enabled(v134, v135))
                        {
                          goto LABEL_170;
                        }

                        v163 = AXColorizeFormatLog();
                        modea = _AXStringForArgs();
                        if (!os_log_type_enabled(v134, v135))
                        {
                          goto LABEL_173;
                        }

                        *v187 = 138543362;
                        v136 = modea;
                        v188 = modea;
LABEL_153:
                        _os_log_impl(&dword_0, v124, v135, "%{public}@", v187, 0xCu);
                        v126 = v136;
                        goto LABEL_154;
                      }

                      v121 = +[AXSubsystemBrailleHardware sharedInstance];
                      ignoreLogging9 = [v121 ignoreLogging];

                      if ((ignoreLogging9 & 1) == 0)
                      {
                        v168 = v32;
                        v129 = +[AXSubsystemBrailleHardware identifier];
                        v124 = AXLoggerForFacility();

                        v130 = AXOSLogLevelFromAXLogLevel();
                        if (os_log_type_enabled(v124, v130))
                        {
                          v163 = AXColorizeFormatLog();
                          modea = _AXStringForArgs();
                          if (os_log_type_enabled(v124, v130))
                          {
                            *v187 = 138543362;
                            v188 = modea;
                            _os_log_impl(&dword_0, v124, v130, "%{public}@", v187, 0xCu);
                            v126 = modea;
                            __buf = 0;
                            elementCopy = v174;
                            v30 = v172;
                            goto LABEL_155;
                          }

                          __buf = 0;
                          elementCopy = v174;
                          v30 = v172;
                          goto LABEL_174;
                        }

                        __buf = 0;
                        elementCopy = v174;
                        v30 = v172;
                        goto LABEL_171;
                      }

                      __buf = 0;
                      elementCopy = v174;
                      v30 = v172;
LABEL_144:
                      v69 = v157;
LABEL_104:
                      [(SCRDFileReader *)v33->_readerThread invalidate:bluetoothChannelIsLost];
                      v109 = v33->_readerThread;
                      v33->_readerThread = 0;

                      v110 = v33->_safeReadBuffer;
                      if (v110)
                      {
                        CFRelease(v110);
                        v33->_safeReadBuffer = 0;
                      }

                      [v32 removeObserver:v33];
                      [(NSLock *)v33->_readBufferLock lock];
                      readBuffer = v33->_readBuffer;
                      if (readBuffer)
                      {
                        CFRelease(readBuffer);
                        v33->_readBuffer = 0;
                      }

                      v112 = v33->_readBufferLock;
                      v113 = v33->_readBufferLock;
                      v33->_readBufferLock = 0;

                      [(NSLock *)v112 unlock];
                      device = v33->_device;
                      v33->_device = 0;

                      v33->_comPort = -1;
                      if (__buf)
                      {
                        free(__buf);
                      }

                      if (v78)
                      {
                        free(v78);
                      }

                      writeBuffer = v33->_writeBuffer;
                      if (writeBuffer)
                      {
                        free(writeBuffer);
                        v33->_writeBuffer = 0;
                      }

                      v116 = v33->_modelIdentifier;
                      v33->_modelIdentifier = 0;

                      v26 = 2;
LABEL_115:

                      goto LABEL_116;
                    }
                  }
                }

                v78 = 0;
                __buf = 0;
                elementCopy = v174;
              }

              else
              {
                v78 = 0;
                __buf = 0;
              }

              v30 = v172;
              goto LABEL_104;
            }

            v102 = +[AXSubsystemBrailleHardware sharedInstance];
            ignoreLogging10 = [v102 ignoreLogging];

            v31 = v170;
            if ((ignoreLogging10 & 1) == 0)
            {
              v169 = v32;
              v104 = +[AXSubsystemBrailleHardware identifier];
              v105 = AXLoggerForFacility();

              v106 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v105, v106))
              {
                v107 = AXColorizeFormatLog();
                bluetoothChannelIsLost = selfCopy->_comPort;
                v108 = _AXStringForArgs();
                if (os_log_type_enabled(v105, v106))
                {
                  *v187 = 138543362;
                  v188 = v108;
                  _os_log_impl(&dword_0, v105, v106, "%{public}@", v187, 0xCu);
                }

                v31 = v170;
              }

              v32 = v169;
            }

            selfCopy->_comPort = -1;
          }

          else
          {
            v53 = +[AXSubsystemBrailleHardware sharedInstance];
            ignoreLogging11 = [v53 ignoreLogging];

            v29 = infoDictionary;
            if ((ignoreLogging11 & 1) == 0)
            {
              v166 = v32;
              v55 = +[AXSubsystemBrailleHardware identifier];
              v56 = AXLoggerForFacility();

              v57 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v56, v57))
              {
                v58 = v31;
                v59 = AXColorizeFormatLog();
                v60 = _AXStringForArgs();
                if (os_log_type_enabled(v56, v57))
                {
                  *buf = 138543362;
                  v190 = v60;
                  _os_log_impl(&dword_0, v56, v57, "%{public}@", buf, 0xCu);
                }

                v31 = v58;
              }

              v32 = v166;
            }
          }

          [v32 removeObserver:{selfCopy, bluetoothChannelIsLost}];
          v26 = 1;
          elementCopy = v174;
          v30 = v172;
LABEL_117:

          goto LABEL_118;
        }
      }

      else
      {
LABEL_20:
      }

      v43 = +[AXSubsystemBrailleHardware sharedInstance];
      ignoreLogging12 = [v43 ignoreLogging];

      elementCopy = v174;
      if (ignoreLogging12)
      {
        v26 = 1;
        v30 = v172;
        v29 = infoDictionary;
LABEL_119:

LABEL_120:
        goto LABEL_121;
      }

      v47 = +[AXSubsystemBrailleHardware identifier];
      v31 = AXLoggerForFacility();

      v26 = 1;
      v48 = AXOSLogLevelFromAXLogLevel();
      v29 = infoDictionary;
      if (!os_log_type_enabled(v31, v48))
      {
        v30 = v172;
LABEL_118:

        goto LABEL_119;
      }

      v49 = AXColorizeFormatLog();
      v50 = _AXStringForArgs();
      if (os_log_type_enabled(v31, v48))
      {
        *buf = 138543362;
        v190 = v50;
        _os_log_impl(&dword_0, v31, v48, "%{public}@", buf, 0xCu);
      }

      v30 = v172;
      v32 = v49;
      goto LABEL_117;
    }

    v45 = +[AXSubsystemBrailleHardware sharedInstance];
    ignoreLogging13 = [v45 ignoreLogging];

    if ((ignoreLogging13 & 1) == 0)
    {
      v51 = +[AXSubsystemBrailleHardware identifier];
      v29 = AXLoggerForFacility();

      v26 = 1;
      v52 = AXOSLogLevelFromAXLogLevel();
      if (!os_log_type_enabled(v29, v52))
      {
LABEL_121:

        goto LABEL_122;
      }

      v30 = AXColorizeFormatLog();
      bluetoothAddress = _AXStringForArgs();
      if (os_log_type_enabled(v29, v52))
      {
        *buf = 138543362;
        v190 = bluetoothAddress;
        _os_log_impl(&dword_0, v29, v52, "%{public}@", buf, 0xCu);
      }

      goto LABEL_119;
    }

    v26 = 1;
LABEL_122:

    goto LABEL_123;
  }

  v24 = +[AXSubsystemBrailleHardware sharedInstance];
  ignoreLogging14 = [v24 ignoreLogging];

  if ((ignoreLogging14 & 1) == 0)
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
        v190 = v30;
        _os_log_impl(&dword_0, v12, v28, "%{public}@", buf, 0xCu);
      }

      goto LABEL_120;
    }

    goto LABEL_122;
  }

  v26 = 1;
LABEL_123:

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
        v21 = 138543362;
        v22 = v9;
        _os_log_impl(&dword_0, v6, v7, "%{public}@", &v21, 0xCu);
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
    queuedMainCellsBuffer = self->_queuedMainCellsBuffer;
    if (queuedMainCellsBuffer)
    {
      CFRelease(queuedMainCellsBuffer);
      self->_queuedMainCellsBuffer = 0;
    }

    writeBuffer = self->_writeBuffer;
    if (writeBuffer)
    {
      free(writeBuffer);
      self->_writeBuffer = 0;
    }

    self->_writeBufferNeedsFlush = 0;
    self->_nextWriteTime = -3061152000.0;
    modelIdentifier = self->_modelIdentifier;
    self->_modelIdentifier = 0;

    self->_mainSize = 0;
    self->_statusSize = 0;
    self->_isShiftKeyDown = 0;
  }

  return 1;
}

- (id)getInputEvents
{
  [(MSCROMDVBrailleDriver *)self _flushWriteBuffer];
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

  return _SCRDMDVSerialExtractEventsFromBuffer(v8, &self->_isShiftKeyDown, deviceID);
}

- (BOOL)setMainCells:(const char *)cells length:(int64_t)length
{
  if (length >= 1)
  {
    v7 = &self->_writeBuffer[self->_writeBufferStatusCellOffset];
    lengthCopy = length;
    do
    {
      ++cells;
      *v7++ = SCRDMDVConvertStandardCellToMDVCell();
      --lengthCopy;
    }

    while (lengthCopy);
  }

  mainSize = self->_mainSize;
  if (mainSize > length)
  {
    bzero(&self->_writeBuffer[length + self->_writeBufferStatusCellOffset], mainSize - length);
  }

  self->_writeBufferNeedsFlush = 1;
  [(MSCROMDVBrailleDriver *)self _flushWriteBuffer];
  return 1;
}

- (BOOL)setStatusCells:(const char *)cells length:(int64_t)length
{
  if (length >= 1)
  {
    for (i = 0; i != length; ++i)
    {
      self->_writeBuffer[i] = SCRDMDVConvertStandardCellToMDVCell();
    }
  }

  statusSize = self->_statusSize;
  if (statusSize > length)
  {
    bzero(&self->_writeBuffer[length], statusSize - length);
  }

  self->_writeBufferNeedsFlush = 1;
  [(MSCROMDVBrailleDriver *)self _flushWriteBuffer];
  return 1;
}

- (void)_flushWriteBuffer
{
  if (self->_writeBufferNeedsFlush)
  {
    nextWriteTime = self->_nextWriteTime;
    if (nextWriteTime < CFAbsoluteTimeGetCurrent())
    {
      Request = SCRDMDVSerialCreateRequest();
      if (Request)
      {
        v5 = Request;
        comPort = self->_comPort;
        if (comPort != -1 && !write(comPort, v5, 0))
        {
          self->_writeBufferNeedsFlush = 0;
        }

        self->_nextWriteTime = CFAbsoluteTimeGetCurrent() + 0.005;
        free(v5);
      }
    }
  }
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