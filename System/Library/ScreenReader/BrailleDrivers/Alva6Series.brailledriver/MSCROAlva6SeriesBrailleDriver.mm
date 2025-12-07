@interface MSCROAlva6SeriesBrailleDriver
- (BOOL)setMainCells:(const char *)cells length:(int64_t)length;
- (BOOL)unloadDriver;
- (MSCROAlva6SeriesBrailleDriver)init;
- (id)getInputEvents;
- (int)brailleInputMode;
- (int)loadDriverWithIOElement:(id)element;
- (void)dealloc;
- (void)fileReader:(id)reader data:(const void *)data length:(unint64_t)length;
- (void)removeDeviceNotification:(id)notification;
@end

@implementation MSCROAlva6SeriesBrailleDriver

- (MSCROAlva6SeriesBrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROAlva6SeriesBrailleDriver;
  result = [(MSCROAlva6SeriesBrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROAlva6SeriesBrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROAlva6SeriesBrailleDriver;
  [(MSCROAlva6SeriesBrailleDriver *)&v3 dealloc];
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
        v217 = v11;
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
        [(MSCROAlva6SeriesBrailleDriver *)self unloadDriver];
      }

      v200 = v12;
      infoDictionary = [v12 infoDictionary];
      v201 = [infoDictionary objectForKey:kSCROBrailleDriverModels];
      bluetoothAddress = [elementCopy bluetoothAddress];
      v210 = 0u;
      v211 = 0u;
      v212 = 0u;
      v213 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      pairedDevices = [v15 pairedDevices];

      v17 = [pairedDevices countByEnumeratingWithState:&v210 objects:v218 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v211;
LABEL_14:
        v20 = 0;
        while (1)
        {
          if (*v211 != v19)
          {
            objc_enumerationMutation(pairedDevices);
          }

          v21 = *(*(&v210 + 1) + 8 * v20);
          address = [v21 address];
          v23 = [address isEqualToString:bluetoothAddress];

          if (v23)
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [pairedDevices countByEnumeratingWithState:&v210 objects:v218 count:16];
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
          [v32 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
          [v32 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
          log = v31;
          if (([v31 connected]& 1) == 0)
          {
            v55 = +[AXSubsystemBrailleHardware sharedInstance];
            ignoreLogging2 = [v55 ignoreLogging];

            v30 = v201;
            if ((ignoreLogging2 & 1) == 0)
            {
              v37 = v32;
              v57 = +[AXSubsystemBrailleHardware identifier];
              v39 = AXLoggerForFacility();

              v58 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v39, v58))
              {
                v59 = AXColorizeFormatLog();
                v60 = _AXStringForArgs();
                if (os_log_type_enabled(v39, v58))
                {
                  *buf = 138543362;
                  v217 = v60;
                  _os_log_impl(&dword_0, v39, v58, "%{public}@", buf, 0xCu);
                }
              }

              goto LABEL_50;
            }

LABEL_51:
            [v32 removeObserver:{self, comPort}];
            v26 = 1;
            v12 = v200;
            goto LABEL_52;
          }

          [v31 device];
          ComPortForServiceWithSandboxExtension = BTDeviceGetComPortForServiceWithSandboxExtension();
          if (ComPortForServiceWithSandboxExtension)
          {
            v34 = ComPortForServiceWithSandboxExtension;
            v35 = +[AXSubsystemBrailleHardware sharedInstance];
            ignoreLogging3 = [v35 ignoreLogging];

            v30 = v201;
            if ((ignoreLogging3 & 1) == 0)
            {
              v37 = v32;
              v38 = +[AXSubsystemBrailleHardware identifier];
              v39 = AXLoggerForFacility();

              v40 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v39, v40))
              {
                v41 = AXColorizeFormatLog();
                comPort = v34;
                v42 = _AXStringForArgs();
                if (os_log_type_enabled(v39, v40))
                {
                  *v214 = 138543362;
                  v215 = v42;
                  _os_log_impl(&dword_0, v39, v40, "%{public}@", v214, 0xCu);
                }
              }

LABEL_50:

              v32 = v37;
              goto LABEL_51;
            }

            goto LABEL_51;
          }

          v30 = v201;
          if (sandbox_extension_consume() == -1)
          {
            v62 = +[AXSubsystemBrailleHardware sharedInstance];
            ignoreLogging4 = [v62 ignoreLogging];

            if ((ignoreLogging4 & 1) == 0)
            {
              v64 = +[AXSubsystemBrailleHardware identifier];
              v65 = AXLoggerForFacility();

              v66 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v65, v66))
              {
                v67 = v32;
                v68 = AXColorizeFormatLog();
                comPort = *__error();
                v69 = _AXStringForArgs();
                if (os_log_type_enabled(v65, v66))
                {
                  *v214 = 138543362;
                  v215 = v69;
                  _os_log_impl(&dword_0, v65, v66, "%{public}@", v214, 0xCu);
                }

                v32 = v67;
              }
            }
          }

          v70 = open(buf, 131074, comPort);
          self->_comPort = v70;
          if (v70 < 0)
          {
            v134 = +[AXSubsystemBrailleHardware sharedInstance];
            ignoreLogging5 = [v134 ignoreLogging];

            if ((ignoreLogging5 & 1) == 0)
            {
              v136 = v32;
              v137 = +[AXSubsystemBrailleHardware identifier];
              v138 = AXLoggerForFacility();

              v139 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v138, v139))
              {
                v140 = AXColorizeFormatLog();
                comPort = self->_comPort;
                v141 = _AXStringForArgs();
                if (os_log_type_enabled(v138, v139))
                {
                  *v214 = 138543362;
                  v215 = v141;
                  _os_log_impl(&dword_0, v138, v139, "%{public}@", v214, 0xCu);
                }
              }

              v32 = v136;
            }

            self->_comPort = -1;
            goto LABEL_51;
          }

          objc_storeStrong(&self->_device, v21);
          v194 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:self->_comPort closeOnDealloc:1];
          v71 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:self fileHandle:v194];
          readerThread = self->_readerThread;
          self->_readerThread = v71;

          Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
          self->_safeReadBuffer = Mutable;
          if (!Mutable)
          {
            goto LABEL_171;
          }

          v74 = [objc_allocWithZone(NSLock) init];
          readBufferLock = self->_readBufferLock;
          self->_readBufferLock = v74;

          if (!self->_readBufferLock)
          {
            goto LABEL_171;
          }

          v76 = CFDataCreateMutable(kCFAllocatorDefault, 0);
          self->_readBuffer = v76;
          if (!v76)
          {
            goto LABEL_171;
          }

          [(SCRDFileReader *)self->_readerThread start];
          LOBYTE(v77) = 0;
          v78 = 0;
          v79 = 0;
          v192 = v32;
          while (1)
          {
            modelIdentifier = self->_modelIdentifier;
            if (modelIdentifier || (v77 & 1) != 0 || (v78 & 1) != 0)
            {
              goto LABEL_133;
            }

            v209 = 63;
            __buf = 16155;
            if (write(self->_comPort, &__buf, 3uLL) <= 2)
            {
              v149 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging6 = [v149 ignoreLogging];

              if (ignoreLogging6)
              {
                goto LABEL_171;
              }

              v151 = v32;
              v152 = +[AXSubsystemBrailleHardware identifier];
              v153 = AXLoggerForFacility();

              v154 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v153, v154))
              {
                v155 = AXColorizeFormatLog();
                v156 = _AXStringForArgs();
                if (os_log_type_enabled(v153, v154))
                {
                  *v214 = 138543362;
                  v215 = v156;
                  goto LABEL_167;
                }

                goto LABEL_168;
              }

              goto LABEL_169;
            }

            v207 = 63;
            v206 = 17691;
            if (write(self->_comPort, &v206, 3uLL) <= 2)
            {
              break;
            }

            v205 = 1;
            v204 = 29211;
            if (write(self->_comPort, &v204, 3uLL) <= 2)
            {
              v160 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging7 = [v160 ignoreLogging];

              if (ignoreLogging7)
              {
                goto LABEL_171;
              }

              v151 = v32;
              v162 = +[AXSubsystemBrailleHardware identifier];
              v153 = AXLoggerForFacility();

              v154 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v153, v154))
              {
                v155 = AXColorizeFormatLog();
                v156 = _AXStringForArgs();
                if (os_log_type_enabled(v153, v154))
                {
                  *v214 = 138543362;
                  v215 = v156;
LABEL_167:
                  _os_log_impl(&dword_0, v153, v154, "%{public}@", v214, 0xCu);
                }

                goto LABEL_168;
              }

              goto LABEL_169;
            }

            v203 = 63;
            v202 = 19995;
            if (write(self->_comPort, &v202, 3uLL) <= 2)
            {
              v173 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging8 = [v173 ignoreLogging];

              if (ignoreLogging8)
              {
                goto LABEL_190;
              }

              v175 = +[AXSubsystemBrailleHardware identifier];
              v145 = AXLoggerForFacility();

              v176 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v145, v176))
              {
                v147 = AXColorizeFormatLog();
                v148 = _AXStringForArgs();
                if (os_log_type_enabled(v145, v176))
                {
                  *v214 = 138543362;
                  v215 = v148;
                  _os_log_impl(&dword_0, v145, v176, "%{public}@", v214, 0xCu);
                }

                v30 = v201;
LABEL_183:
              }

LABEL_184:

              goto LABEL_190;
            }

            self->_bluetoothChannelIsLost = 0;
            self->_hasBeenUnloaded = 0;
            v81 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.5, 0);
            v82 = v81;
            if (self->_bluetoothChannelIsLost || self->_hasBeenUnloaded || v81 == kCFRunLoopRunStopped)
            {
              v142 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging9 = [v142 ignoreLogging];

              if (ignoreLogging9)
              {
                goto LABEL_190;
              }

              v144 = +[AXSubsystemBrailleHardware identifier];
              v145 = AXLoggerForFacility();

              v146 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v145, v146))
              {
                v147 = AXColorizeFormatLog();
                hasBeenUnloaded = self->_hasBeenUnloaded;
                v191 = v82;
                comPort = self->_bluetoothChannelIsLost;
                v148 = _AXStringForArgs();
                if (os_log_type_enabled(v145, v146))
                {
                  *v214 = 138543362;
                  v215 = v148;
                  _os_log_impl(&dword_0, v145, v146, "%{public}@", v214, 0xCu);
                }

                goto LABEL_183;
              }

              goto LABEL_184;
            }

            v193 = v79;
            [(NSLock *)self->_readBufferLock lock];
            Length = CFDataGetLength(self->_readBuffer);
            if (Length >= 1)
            {
              v84 = Length;
              safeReadBuffer = self->_safeReadBuffer;
              BytePtr = CFDataGetBytePtr(self->_readBuffer);
              CFDataAppendBytes(safeReadBuffer, BytePtr, v84);
              v219.location = 0;
              v219.length = v84;
              CFDataDeleteBytes(self->_readBuffer, v219);
            }

            [(NSLock *)self->_readBufferLock unlock];
            SCRDAdvanceBufferToPacketStart();
            v87 = CFDataGetLength(self->_safeReadBuffer);
            if (v87 >= 3)
            {
              v88 = v87;
              v77 = 0;
              v196 = 0;
              while (1)
              {
                v89 = CFDataGetBytePtr(self->_safeReadBuffer);
                v90 = v89;
                v91 = v89[1];
                if (v91 <= 0x4A)
                {
                  break;
                }

                if (v91 != 75)
                {
                  if (v91 != 78)
                  {
                    goto LABEL_107;
                  }

                  if (v88 >= 0xE)
                  {
                    self->_hasFeaturePack = (*(v89 + 2) | *(v89 + 6)) != 0;
                    v221.location = 0;
                    v221.length = 14;
                    CFDataDeleteBytes(self->_safeReadBuffer, v221);
                    v101 = +[AXSubsystemBrailleHardware sharedInstance];
                    ignoreLogging10 = [v101 ignoreLogging];

                    if ((ignoreLogging10 & 1) == 0)
                    {
                      v103 = +[AXSubsystemBrailleHardware identifier];
                      v104 = AXLoggerForFacility();

                      v105 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v104, v105))
                      {
                        v106 = v77;
                        v107 = AXColorizeFormatLog();
                        comPort = self->_hasFeaturePack;
                        v108 = _AXStringForArgs();
                        if (os_log_type_enabled(v104, v105))
                        {
                          *v214 = 138543362;
                          v215 = v108;
                          _os_log_impl(&dword_0, v104, v105, "%{public}@", v214, 0xCu);
                        }

                        v77 = v106;
                      }
                    }

                    v100 = 1;
                    v196 = 1;
                    goto LABEL_127;
                  }

                  goto LABEL_126;
                }

                if (v88 < 4)
                {
                  v100 = 0;
                  goto LABEL_127;
                }

                if (v89[2] == 1 && write(self->_comPort, &v206, 3uLL) < 3)
                {
                  goto LABEL_190;
                }

                v120 = self->_safeReadBuffer;
                v121.location = 0;
                v121.length = 4;
LABEL_125:
                CFDataDeleteBytes(v120, v121);
LABEL_126:
                v100 = 1;
LABEL_127:
                SCRDAdvanceBufferToPacketStart();
                v123 = CFDataGetLength(self->_safeReadBuffer);
                if (v123 >= 3)
                {
                  v88 = v123;
                  if (v100)
                  {
                    continue;
                  }
                }

                goto LABEL_131;
              }

              if (v91 != 63)
              {
                if (v91 == 69)
                {
                  v92 = v89[2];
                  self->_availableCells = v92;
                  self->_splitPointOffset = LOBYTE(self->_mainSize) - v92;
                  v220.location = 0;
                  v220.length = 3;
                  CFDataDeleteBytes(self->_safeReadBuffer, v220);
                  v93 = +[AXSubsystemBrailleHardware sharedInstance];
                  ignoreLogging11 = [v93 ignoreLogging];

                  if ((ignoreLogging11 & 1) == 0)
                  {
                    v95 = +[AXSubsystemBrailleHardware identifier];
                    v96 = AXLoggerForFacility();

                    v97 = AXOSLogLevelFromAXLogLevel();
                    if (os_log_type_enabled(v96, v97))
                    {
                      v98 = AXColorizeFormatLog();
                      comPort = v90[2];
                      v99 = _AXStringForArgs();
                      if (os_log_type_enabled(v96, v97))
                      {
                        *v214 = 138543362;
                        v215 = v99;
                        _os_log_impl(&dword_0, v96, v97, "%{public}@", v214, 0xCu);
                      }
                    }
                  }

                  v100 = 1;
                  v77 = 1;
                  goto LABEL_127;
                }

LABEL_107:
                v100 = 1;
                v222.location = 0;
                v222.length = 1;
                CFDataDeleteBytes(self->_safeReadBuffer, v222);
                goto LABEL_127;
              }

              v109 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging12 = [v109 ignoreLogging];

              if ((ignoreLogging12 & 1) == 0)
              {
                v195 = v77;
                v111 = +[AXSubsystemBrailleHardware identifier];
                v112 = AXLoggerForFacility();

                v113 = AXOSLogLevelFromAXLogLevel();
                if (os_log_type_enabled(v112, v113))
                {
                  v114 = AXColorizeFormatLog();
                  comPort = v90[2];
                  v115 = _AXStringForArgs();
                  if (os_log_type_enabled(v112, v113))
                  {
                    *v214 = 138543362;
                    v215 = v115;
                    _os_log_impl(&dword_0, v112, v113, "%{public}@", v214, 0xCu);
                  }
                }

                v77 = v195;
              }

              v116 = v90[2];
              if (v116 == 64)
              {
                v117 = 0;
                v118 = @"com.apple.scrod.braille.driver.alva.6.series.BC640";
                v119 = 40;
LABEL_123:
                v122 = self->_modelIdentifier;
                self->_modelIdentifier = &v118->isa;

                self->_deviceID = v117;
                self->_mainSize = v119;
                v30 = v201;
              }

              else if (v116 == 128)
              {
                v117 = 1;
                v118 = @"com.apple.scrod.braille.driver.alva.6.series.BC680";
                v119 = 80;
                goto LABEL_123;
              }

              v120 = self->_safeReadBuffer;
              v121.location = 0;
              v121.length = 3;
              goto LABEL_125;
            }

            v196 = 0;
            LOBYTE(v77) = 0;
LABEL_131:
            v79 = v193 + 1;
            v32 = v192;
            v78 = v196;
            if (v193 == 6)
            {
              modelIdentifier = self->_modelIdentifier;
LABEL_133:
              if (modelIdentifier && (v77 & 1) != 0 && (v78 & 1) != 0)
              {
                v124 = [v30 objectForKey:?];
                if (v124)
                {
                  v125 = v124;
                  if (self->_mainSize < self->_availableCells)
                  {
                    v126 = v32;
                    v127 = +[AXSubsystemBrailleHardware sharedInstance];
                    ignoreLogging13 = [v127 ignoreLogging];

                    if ((ignoreLogging13 & 1) == 0)
                    {
                      v129 = +[AXSubsystemBrailleHardware identifier];
                      v130 = AXLoggerForFacility();

                      v131 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v130, v131))
                      {
                        v132 = AXColorizeFormatLog();
                        comPort = self->_availableCells;
                        hasBeenUnloaded = self->_mainSize;
                        v133 = _AXStringForArgs();
                        if (os_log_type_enabled(v130, v131))
                        {
                          *v214 = 138543362;
                          v215 = v133;
                          _os_log_impl(&dword_0, v130, v131, "%{public}@", v214, 0xCu);
                        }
                      }
                    }

                    goto LABEL_198;
                  }

                  v26 = 0;
                  self->_isDriverLoaded = 1;
                  v12 = v200;
LABEL_177:

LABEL_52:
                  v29 = infoDictionary;
LABEL_53:

                  goto LABEL_55;
                }

                v126 = v32;
                v182 = +[AXSubsystemBrailleHardware sharedInstance];
                ignoreLogging14 = [v182 ignoreLogging];

                if ((ignoreLogging14 & 1) == 0)
                {
                  v184 = +[AXSubsystemBrailleHardware identifier];
                  v185 = AXLoggerForFacility();

                  v186 = AXOSLogLevelFromAXLogLevel();
                  if (os_log_type_enabled(v185, v186))
                  {
                    v187 = AXColorizeFormatLog();
                    comPort = self->_modelIdentifier;
                    v188 = _AXStringForArgs();
                    if (os_log_type_enabled(v185, v186))
                    {
                      *v214 = 138543362;
                      v215 = v188;
                      _os_log_impl(&dword_0, v185, v186, "%{public}@", v214, 0xCu);
                    }
                  }
                }

                v125 = 0;
LABEL_198:
                v12 = v200;
                v30 = v201;
                v32 = v126;
LABEL_172:
                [(SCRDFileReader *)self->_readerThread invalidate:comPort];
                v166 = self->_readerThread;
                self->_readerThread = 0;

                v167 = self->_safeReadBuffer;
                if (v167)
                {
                  CFRelease(v167);
                  self->_safeReadBuffer = 0;
                }

                [v32 removeObserver:self];
                [(NSLock *)self->_readBufferLock lock];
                readBuffer = self->_readBuffer;
                if (readBuffer)
                {
                  CFRelease(readBuffer);
                  self->_readBuffer = 0;
                }

                v169 = self->_readBufferLock;
                self->_readBufferLock = 0;
                v170 = v169;

                [(NSLock *)v170 unlock];
                device = self->_device;
                self->_device = 0;

                self->_comPort = -1;
                self->_hasFeaturePack = 0;
                v172 = self->_modelIdentifier;
                self->_modelIdentifier = 0;

                v26 = 2;
                goto LABEL_177;
              }

              v163 = v77;
              v197 = v78;
              v164 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging15 = [v164 ignoreLogging];

              if (ignoreLogging15)
              {
LABEL_171:
                v125 = 0;
                v12 = v200;
                goto LABEL_172;
              }

              v177 = +[AXSubsystemBrailleHardware identifier];
              v178 = AXLoggerForFacility();

              v179 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v178, v179))
              {
                v180 = AXColorizeFormatLog();
                hasBeenUnloaded = v163 & 1;
                v191 = v197 & 1;
                comPort = self->_modelIdentifier;
                v181 = _AXStringForArgs();
                if (os_log_type_enabled(v178, v179))
                {
                  *v214 = 138543362;
                  v215 = v181;
                  _os_log_impl(&dword_0, v178, v179, "%{public}@", v214, 0xCu);
                }

                v30 = v201;
              }

LABEL_190:
              v125 = 0;
              v12 = v200;
              v32 = v192;
              goto LABEL_172;
            }
          }

          v157 = +[AXSubsystemBrailleHardware sharedInstance];
          ignoreLogging16 = [v157 ignoreLogging];

          if (ignoreLogging16)
          {
            goto LABEL_171;
          }

          v151 = v32;
          v159 = +[AXSubsystemBrailleHardware identifier];
          v153 = AXLoggerForFacility();

          v154 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v153, v154))
          {
            v155 = AXColorizeFormatLog();
            v156 = _AXStringForArgs();
            if (os_log_type_enabled(v153, v154))
            {
              *v214 = 138543362;
              v215 = v156;
              goto LABEL_167;
            }

LABEL_168:

            v30 = v201;
          }

LABEL_169:

          v32 = v151;
          goto LABEL_171;
        }
      }

      else
      {
LABEL_20:
      }

      v43 = +[AXSubsystemBrailleHardware sharedInstance];
      ignoreLogging17 = [v43 ignoreLogging];

      v12 = v200;
      if (ignoreLogging17)
      {
        v26 = 1;
        v29 = infoDictionary;
        v30 = v201;
      }

      else
      {
        v47 = +[AXSubsystemBrailleHardware identifier];
        v48 = AXLoggerForFacility();

        v26 = 1;
        v49 = AXOSLogLevelFromAXLogLevel();
        v29 = infoDictionary;
        log = v48;
        if (os_log_type_enabled(v48, v49))
        {
          v50 = AXColorizeFormatLog();
          v51 = _AXStringForArgs();
          v52 = os_log_type_enabled(v48, v49);
          v30 = v201;
          if (v52)
          {
            *buf = 138543362;
            v217 = v51;
            _os_log_impl(&dword_0, log, v49, "%{public}@", buf, 0xCu);
          }

          v32 = v50;
          goto LABEL_53;
        }

        v30 = v201;
LABEL_55:
      }

LABEL_56:

LABEL_57:
      goto LABEL_58;
    }

    v45 = +[AXSubsystemBrailleHardware sharedInstance];
    ignoreLogging18 = [v45 ignoreLogging];

    if ((ignoreLogging18 & 1) == 0)
    {
      v53 = +[AXSubsystemBrailleHardware identifier];
      v29 = AXLoggerForFacility();

      v26 = 1;
      v54 = AXOSLogLevelFromAXLogLevel();
      if (!os_log_type_enabled(v29, v54))
      {
LABEL_58:

        goto LABEL_59;
      }

      v30 = AXColorizeFormatLog();
      bluetoothAddress = _AXStringForArgs();
      if (os_log_type_enabled(v29, v54))
      {
        *buf = 138543362;
        v217 = bluetoothAddress;
        _os_log_impl(&dword_0, v29, v54, "%{public}@", buf, 0xCu);
      }

      goto LABEL_56;
    }

    v26 = 1;
LABEL_59:

    goto LABEL_60;
  }

  v24 = +[AXSubsystemBrailleHardware sharedInstance];
  ignoreLogging19 = [v24 ignoreLogging];

  if ((ignoreLogging19 & 1) == 0)
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
        v217 = v30;
        _os_log_impl(&dword_0, v12, v28, "%{public}@", buf, 0xCu);
      }

      goto LABEL_57;
    }

    goto LABEL_59;
  }

  v26 = 1;
LABEL_60:

  return v26;
}

- (BOOL)unloadDriver
{
  self->_hasBeenUnloaded = 1;
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

    self->_mainSize = 0;
    *&self->_availableCells = 0;
    self->_hasFeaturePack = 0;
  }

  return 1;
}

- (int)brailleInputMode
{
  if (self->_hasFeaturePack)
  {
    return 2;
  }

  else
  {
    return 0;
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
      v23.location = 0;
      v23.length = v5;
      CFDataDeleteBytes(self->_readBuffer, v23);
    }
  }

  [(NSLock *)self->_readBufferLock unlock];
  SCRDAdvanceBufferToPacketStart();
  v8 = CFDataGetLength(self->_safeReadBuffer);
  if (v8 >= 3)
  {
    v9 = v8;
    v10 = +[NSMutableArray array];
    while (1)
    {
      v11 = CFDataGetBytePtr(self->_safeReadBuffer);
      v12.location = 0;
      v12.length = 3;
      switch(v11[1])
      {
        case '?':
        case 'D':
        case 'I':
        case 'L':
        case 'O':
        case 'P':
        case 'R':
        case 'S':
        case 'U':
          goto LABEL_7;
        case '@':
        case 'A':
        case 'B':
        case 'C':
        case 'J':
        case 'M':
        case 'Q':
          goto LABEL_11;
        case 'E':
          v15 = v11[2];
          if (v15 != self->_availableCells)
          {
            self->_availableCells = v15;
            self->_splitPointOffset = LOBYTE(self->_mainSize) - v15;
            v16 = +[NSNotificationCenter defaultCenter];
            [v16 postNotificationName:@"SCROBrailleDriverProtocolConfigurationChangeNotification" object:self userInfo:0];
          }

          v12.location = 0;
          v12.length = 3;
          goto LABEL_7;
        case 'F':
          if (v9 < 6)
          {
            goto LABEL_30;
          }

          v12.location = 0;
          v12.length = 6;
          goto LABEL_7;
        case 'G':
          if (v9 < 0xB)
          {
            goto LABEL_30;
          }

          v12.location = 0;
          v12.length = 11;
          goto LABEL_7;
        case 'H':
          if (v9 < 8)
          {
            goto LABEL_30;
          }

          v12.location = 0;
          v12.length = 8;
          goto LABEL_7;
        case 'K':
          if (v9 < 4)
          {
            goto LABEL_30;
          }

          if (v11[2] == 1)
          {
            v22 = 63;
            __buf = 17691;
            comPort = self->_comPort;
            if (comPort != -1)
            {
              write(comPort, &__buf, 3uLL);
            }
          }

          else
          {
            SCRDAlva6SeriesAppendKeyEvent();
          }

LABEL_36:
          v12.location = 0;
          v12.length = 4;
          goto LABEL_7;
        case 'N':
          if (v9 < 0xE)
          {
            goto LABEL_30;
          }

          v12.location = 0;
          v12.length = 14;
          goto LABEL_7;
        case 'T':
          if (v9 >= 4)
          {
            goto LABEL_36;
          }

          goto LABEL_30;
        case 'V':
          if (v9 < 0xD)
          {
            goto LABEL_30;
          }

          v12.location = 0;
          v12.length = 13;
          goto LABEL_7;
        default:
          if (v11[1] != 2)
          {
LABEL_11:
            v12.location = 0;
            v12.length = 1;
            goto LABEL_7;
          }

          if (v9 >= 5)
          {
            v12.location = 0;
            v12.length = 5;
LABEL_7:
            CFDataDeleteBytes(self->_safeReadBuffer, v12);
            v13 = 1;
            goto LABEL_31;
          }

LABEL_30:
          v13 = 0;
LABEL_31:
          SCRDAdvanceBufferToPacketStart();
          v17 = CFDataGetLength(self->_safeReadBuffer);
          if (v17 < 3)
          {
            goto LABEL_38;
          }

          v9 = v17;
          if ((v13 & 1) == 0)
          {
            goto LABEL_38;
          }

          break;
      }
    }
  }

  v10 = 0;
LABEL_38:
  if ([v10 count])
  {
    v18 = v10;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  return v18;
}

- (BOOL)setMainCells:(const char *)cells length:(int64_t)length
{
  v7 = self->_availableCells + 4;
  v8 = malloc_type_malloc(v7, 0xD5D4D399uLL);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  strcpy(v8, "\x1BB");
  availableCells = self->_availableCells;
  v8[3] = availableCells;
  v11 = v8 + 4;
  if (availableCells <= length)
  {
    memcpy(v8 + 4, cells, availableCells);
  }

  else
  {
    memcpy(v8 + 4, cells, length);
    bzero(&v11[length], self->_availableCells - length);
  }

  comPort = self->_comPort;
  v12 = comPort != -1 && write(comPort, v9, v7) == v7;
  free(v9);
  return v12;
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