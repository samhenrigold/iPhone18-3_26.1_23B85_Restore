@interface SCROBrailleDisplayAutoDetector
+ (id)allocWithZone:(_NSZone *)zone;
+ (void)initialize;
- (BOOL)_serialDataMatchesDriver:(id)driver driverBundleIdentifiers:(id)identifiers fileDescriptor:(int)descriptor;
- (SCROBrailleDisplayAutoDetector)init;
- (id)_driverBundleIdentifiers;
- (id)_serialPortMatchingDictionary;
- (void)_addBLEPeripheral:(id)peripheral central:(id)central;
- (void)_autodetectIOServices:(id)services;
- (void)_detectSerialPorts:(id)ports;
- (void)_initializeAutodetectSerialPorts:(id)ports;
- (void)_openSerialPortService:(id)service sortedDriverBundleIdentifiers:(id)identifiers;
- (void)_registerForSerialPortNotifications;
- (void)addAutodetectBLEIdentifier:(id)identifier;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManagerDidUpdateState:(id)state;
- (void)detectDisplays;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)removeAutodetectBLEIdentifier:(id)identifier;
- (void)serialPortsWerePublished:(unsigned int)published;
- (void)stopDetectingDisplays;
@end

@implementation SCROBrailleDisplayAutoDetector

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_alloc_init(SCROBrailleDisplayAutoDetector);
    _SCROBrailleDisplayAutoDetector = v2;

    MEMORY[0x2821F96F8](v2);
  }
}

+ (id)allocWithZone:(_NSZone *)zone
{
  if (_SCROBrailleDisplayAutoDetector)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___SCROBrailleDisplayAutoDetector;
  return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
}

- (SCROBrailleDisplayAutoDetector)init
{
  selfCopy = self;
  if (!_SCROBrailleDisplayAutoDetector)
  {
    v6.receiver = self;
    v6.super_class = SCROBrailleDisplayAutoDetector;
    selfCopy = [(SCROBrailleDisplayAutoDetector *)&v6 init];
    if (selfCopy)
    {
      array = [MEMORY[0x277CBEB18] array];
      bleIdentifiers = selfCopy->_bleIdentifiers;
      selfCopy->_bleIdentifiers = array;
    }
  }

  return selfCopy;
}

- (id)_driverBundleIdentifiers
{
  brailleDriverDeviceDetectionInfo = [MEMORY[0x277CCA8D8] brailleDriverDeviceDetectionInfo];
  v3 = CFPreferencesGetAppBooleanValue(@"SCROBrailleDriverReverseUSBLoadOrder", *MEMORY[0x277D81C18], 0) != 0;
  allKeys = [brailleDriverDeviceDetectionInfo allKeys];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SCROBrailleDisplayAutoDetector__driverBundleIdentifiers__block_invoke;
  v7[3] = &__block_descriptor_33_e11_q24__0_8_16l;
  v8 = v3;
  v5 = [allKeys sortedArrayUsingComparator:v7];

  return v5;
}

void *__58__SCROBrailleDisplayAutoDetector__driverBundleIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 caseInsensitiveCompare:?];
  v4 = 1;
  if (result == 1)
  {
    v5 = -1;
  }

  else
  {
    v5 = result;
  }

  if (result != -1)
  {
    v4 = v5;
  }

  if (*(a1 + 32) == 1)
  {
    return v4;
  }

  return result;
}

- (void)detectDisplays
{
  if (!self->_isDetectingDisplays)
  {
    v3 = VOTLogBraille();
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26490B000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Detect Displays", "", buf, 2u);
    }

    if (!self->_iteratorDict)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
      iteratorDict = self->_iteratorDict;
      self->_iteratorDict = v4;
    }

    self->_notificationPort = IONotificationPortCreate(*MEMORY[0x277CD2898]);
    _driverBundleIdentifiers = [(SCROBrailleDisplayAutoDetector *)self _driverBundleIdentifiers];
    [(SCROBrailleDisplayAutoDetector *)self _autodetectIOServices:_driverBundleIdentifiers];
    [(SCROBrailleDisplayAutoDetector *)self _initializeAutodetectSerialPorts:_driverBundleIdentifiers];
    v7 = VOTLogBraille();
    if (os_signpost_enabled(v7))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_26490B000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Detect Displays", "", v8, 2u);
    }
  }
}

- (void)_openSerialPortService:(id)service sortedDriverBundleIdentifiers:(id)identifiers
{
  v93 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  identifiersCopy = identifiers;
  uTF8String = [serviceCopy UTF8String];
  v85 = 0;
  memset(&v92, 0, sizeof(v92));
  v9 = open(uTF8String, 131078);
  if (v9 == -1)
  {
    v52 = _SCROD_LOG(v9);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = __error();
      v54 = strerror(*v53);
      v55 = *__error();
      *buf = 136315650;
      v87 = uTF8String;
      v88 = 2080;
      v89 = v54;
      v90 = 1024;
      v91 = v55;
      _os_log_impl(&dword_26490B000, v52, OS_LOG_TYPE_DEFAULT, "Error opening serial port %s - %s(%d).\n", buf, 0x1Cu);
    }

    goto LABEL_56;
  }

  v10 = v9;
  v11 = ioctl(v9, 0x2000740DuLL);
  if (v11 == -1)
  {
    v56 = _SCROD_LOG(v11);
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    v57 = __error();
    v58 = strerror(*v57);
    v59 = *__error();
    *buf = 136315650;
    v87 = uTF8String;
    v88 = 2080;
    v89 = v58;
    v90 = 1024;
    v91 = v59;
    v60 = "Error setting TIOCEXCL on %s - %s(%d).\n";
LABEL_54:
    _os_log_impl(&dword_26490B000, v56, OS_LOG_TYPE_DEFAULT, v60, buf, 0x1Cu);
    goto LABEL_55;
  }

  v12 = fcntl(v10, 4, 0);
  if (v12 == -1)
  {
    v56 = _SCROD_LOG(v12);
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    v61 = __error();
    v62 = strerror(*v61);
    v63 = *__error();
    *buf = 136315650;
    v87 = uTF8String;
    v88 = 2080;
    v89 = v62;
    v90 = 1024;
    v91 = v63;
    v60 = "Error clearing O_NONBLOCK %s - %s(%d).\n";
    goto LABEL_54;
  }

  v13 = tcgetattr(v10, gOriginalTTYAttrs);
  if (v13 == -1)
  {
    v56 = _SCROD_LOG(v13);
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    v64 = __error();
    v65 = strerror(*v64);
    v66 = *__error();
    *buf = 136315650;
    v87 = uTF8String;
    v88 = 2080;
    v89 = v65;
    v90 = 1024;
    v91 = v66;
    v60 = "Error getting tty attributes %s - %s(%d).\n";
    goto LABEL_54;
  }

  v92 = *gOriginalTTYAttrs;
  v14 = _SCROD_LOG(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v87) = cfgetispeed(&v92);
    _os_log_impl(&dword_26490B000, v14, OS_LOG_TYPE_DEFAULT, "Current input baud rate is %d\n", buf, 8u);
  }

  v16 = _SCROD_LOG(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = cfgetospeed(&v92);
    *buf = 67109120;
    LODWORD(v87) = v17;
    _os_log_impl(&dword_26490B000, v16, OS_LOG_TYPE_DEFAULT, "Current output baud rate is %d\n", buf, 8u);
  }

  cfmakeraw(&v92);
  *&v92.c_cc[16] = 2560;
  cfsetspeed(&v92, 0x4B00uLL);
  v92.c_cflag |= 0x300uLL;
  v84 = 14400;
  v18 = ioctl(v10, 0x80085402uLL, &v84);
  if (v18 == -1)
  {
    v19 = _SCROD_LOG(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = __error();
      v21 = strerror(*v20);
      v22 = *__error();
      *buf = 136315650;
      v87 = uTF8String;
      v88 = 2080;
      v89 = v21;
      v90 = 1024;
      v91 = v22;
      _os_log_impl(&dword_26490B000, v19, OS_LOG_TYPE_DEFAULT, "Error calling ioctl(..., IOSSIOSPEED, ...) %s - %s(%d).\n", buf, 0x1Cu);
    }
  }

  v23 = _SCROD_LOG(v18);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = cfgetispeed(&v92);
    *buf = 67109120;
    LODWORD(v87) = v24;
    _os_log_impl(&dword_26490B000, v23, OS_LOG_TYPE_DEFAULT, "Input baud rate changed to %d\n", buf, 8u);
  }

  v26 = _SCROD_LOG(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = cfgetospeed(&v92);
    *buf = 67109120;
    LODWORD(v87) = v27;
    _os_log_impl(&dword_26490B000, v26, OS_LOG_TYPE_DEFAULT, "Output baud rate changed to %d\n", buf, 8u);
  }

  v28 = tcsetattr(v10, 0, &v92);
  if (v28 == -1)
  {
    v56 = _SCROD_LOG(v28);
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    v67 = __error();
    v68 = strerror(*v67);
    v69 = *__error();
    *buf = 136315650;
    v87 = uTF8String;
    v88 = 2080;
    v89 = v68;
    v90 = 1024;
    v91 = v69;
    v60 = "Error setting tty attributes %s - %s(%d).\n";
    goto LABEL_54;
  }

  v29 = ioctl(v10, 0x20007479uLL);
  if (v29 == -1)
  {
    v30 = _SCROD_LOG(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = __error();
      v32 = strerror(*v31);
      v33 = *__error();
      *buf = 136315650;
      v87 = uTF8String;
      v88 = 2080;
      v89 = v32;
      v90 = 1024;
      v91 = v33;
      _os_log_impl(&dword_26490B000, v30, OS_LOG_TYPE_DEFAULT, "Error asserting DTR %s - %s(%d).\n", buf, 0x1Cu);
    }
  }

  v34 = ioctl(v10, 0x20007478uLL);
  if (v34 == -1)
  {
    v35 = _SCROD_LOG(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = __error();
      v37 = strerror(*v36);
      v38 = *__error();
      *buf = 136315650;
      v87 = uTF8String;
      v88 = 2080;
      v89 = v37;
      v90 = 1024;
      v91 = v38;
      _os_log_impl(&dword_26490B000, v35, OS_LOG_TYPE_DEFAULT, "Error clearing DTR %s - %s(%d).\n", buf, 0x1Cu);
    }
  }

  v85 = 294;
  v39 = ioctl(v10, 0x8004746DuLL, &v85);
  if (v39 == -1)
  {
    v40 = _SCROD_LOG(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = __error();
      v42 = strerror(*v41);
      v43 = *__error();
      *buf = 136315650;
      v87 = uTF8String;
      v88 = 2080;
      v89 = v42;
      v90 = 1024;
      v91 = v43;
      _os_log_impl(&dword_26490B000, v40, OS_LOG_TYPE_DEFAULT, "Error setting handshake lines %s - %s(%d).\n", buf, 0x1Cu);
    }
  }

  v44 = ioctl(v10, 0x4004746AuLL, &v85);
  if (v44 == -1)
  {
    v45 = _SCROD_LOG(v44);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = __error();
      v47 = strerror(*v46);
      v48 = *__error();
      *buf = 136315650;
      v87 = uTF8String;
      v88 = 2080;
      v89 = v47;
      v90 = 1024;
      v91 = v48;
      _os_log_impl(&dword_26490B000, v45, OS_LOG_TYPE_DEFAULT, "Error getting handshake lines %s - %s(%d).\n", buf, 0x1Cu);
    }
  }

  v49 = _SCROD_LOG(v44);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v87) = v85;
    _os_log_impl(&dword_26490B000, v49, OS_LOG_TYPE_DEFAULT, "Handshake lines currently set to %d\n", buf, 8u);
  }

  v83 = 1;
  v50 = ioctl(v10, 0x80085400uLL, &v83);
  if (v50 == -1)
  {
    v56 = _SCROD_LOG(v50);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v70 = __error();
      v71 = strerror(*v70);
      v72 = *__error();
      *buf = 136315650;
      v87 = uTF8String;
      v88 = 2080;
      v89 = v71;
      v90 = 1024;
      v91 = v72;
      v60 = "Error setting read latency %s - %s(%d).\n";
      goto LABEL_54;
    }

LABEL_55:

    close(v10);
LABEL_56:
    v10 = -1;
    _fd = -1;
    goto LABEL_57;
  }

  _fd = v10;
  if (v10)
  {
LABEL_57:
    v73 = MEMORY[0x277D85CD0];
    v74 = dispatch_source_create(MEMORY[0x277D85D28], v10, 0, MEMORY[0x277D85CD0]);
    serialSource = self->_serialSource;
    self->_serialSource = v74;

    v92.c_iflag = 0;
    v92.c_oflag = &v92;
    v92.c_cflag = 0x2020000000;
    LOBYTE(v92.c_lflag) = 0;
    v76 = self->_serialSource;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __87__SCROBrailleDisplayAutoDetector__openSerialPortService_sortedDriverBundleIdentifiers___block_invoke;
    handler[3] = &unk_279B73F88;
    v82 = v10;
    handler[4] = self;
    v81 = &v92;
    v80 = identifiersCopy;
    dispatch_source_set_event_handler(v76, handler);
    dispatch_resume(self->_serialSource);
    v77 = dispatch_time(0, 5000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__SCROBrailleDisplayAutoDetector__openSerialPortService_sortedDriverBundleIdentifiers___block_invoke_13;
    block[3] = &unk_279B73EB0;
    block[4] = &v92;
    dispatch_after(v77, v73, block);

    _Block_object_dispose(&v92, 8);
    goto LABEL_58;
  }

  v51 = _SCROD_LOG(v50);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v92.c_iflag) = 138412290;
    *(&v92.c_iflag + 4) = serviceCopy;
    _os_log_impl(&dword_26490B000, v51, OS_LOG_TYPE_DEFAULT, "Could not open service: %@", &v92, 0xCu);
  }

LABEL_58:
}

void __87__SCROBrailleDisplayAutoDetector__openSerialPortService_sortedDriverBundleIdentifiers___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB28] data];
  while (1)
  {
    handle = dispatch_source_get_handle(*(*(a1 + 32) + 8));
    v4 = read(handle, buf, 0x200uLL);
    if (v4 == -1)
    {
      break;
    }

    v5 = v4;
    [v2 appendBytes:buf length:v4];
    v6 = [v2 length];
    if (v5 < 1 || v6 >= 0x11)
    {
      if (v5 < 1)
      {
        goto LABEL_19;
      }

      v8 = [*(a1 + 32) _serialDataMatchesDriver:v2 driverBundleIdentifiers:*(a1 + 40) fileDescriptor:*(a1 + 56)];
      *(*(*(a1 + 48) + 8) + 24) = v8;
      v9 = *(*(*(a1 + 48) + 8) + 24);
      v10 = _SCROD_LOG(v8);
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v9 == 1)
      {
        if (v11)
        {
          *buf = 0;
          v12 = "Found matching driver.  Will connect.";
          goto LABEL_17;
        }
      }

      else if (v11)
      {
        *buf = 0;
        v12 = "This serial device did not match.";
LABEL_17:
        _os_log_impl(&dword_26490B000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
      }

      dispatch_source_set_event_handler(*(*(a1 + 32) + 8), 0);
      dispatch_source_cancel(*(*(a1 + 32) + 8));
      v15 = *(a1 + 32);
      v16 = *(v15 + 8);
      *(v15 + 8) = 0;

      goto LABEL_19;
    }
  }

  v13 = _SCROD_LOG(-1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 56);
    v17[0] = 67109120;
    v17[1] = v14;
    _os_log_impl(&dword_26490B000, v13, OS_LOG_TYPE_INFO, "Serial device: %d Could not read any data", v17, 8u);
  }

LABEL_19:
}

void __87__SCROBrailleDisplayAutoDetector__openSerialPortService_sortedDriverBundleIdentifiers___block_invoke_13(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__SCROBrailleDisplayAutoDetector__openSerialPortService_sortedDriverBundleIdentifiers___block_invoke_2;
  block[3] = &unk_279B73EB0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __87__SCROBrailleDisplayAutoDetector__openSerialPortService_sortedDriverBundleIdentifiers___block_invoke_2(uint64_t result)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    result = _fd;
    if (_fd)
    {
      tcdrain(_fd);
      v1 = _fd;

      return close(v1);
    }
  }

  return result;
}

- (BOOL)_serialDataMatchesDriver:(id)driver driverBundleIdentifiers:(id)identifiers fileDescriptor:(int)descriptor
{
  v72 = *MEMORY[0x277D85DE8];
  driverCopy = driver;
  identifiersCopy = identifiers;
  brailleDriverDeviceDetectionInfo = [MEMORY[0x277CCA8D8] brailleDriverDeviceDetectionInfo];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v9 = identifiersCopy;
  v10 = [v9 countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v10)
  {
    v11 = *v63;
    v46 = v9;
    v47 = brailleDriverDeviceDetectionInfo;
    v39 = *v63;
    do
    {
      v12 = 0;
      v38 = v10;
      do
      {
        if (*v63 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v42 = v12;
        v13 = *(*(&v62 + 1) + 8 * v12);
        v14 = [brailleDriverDeviceDetectionInfo objectForKey:v13];
        v15 = [v14 objectForKey:kSCROBrailleDriverAutoDetectDictionaries[0]];

        v17 = _SCROD_LOG(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v70 = v13;
          _os_log_impl(&dword_26490B000, v17, OS_LOG_TYPE_DEFAULT, "Testing match for %@", buf, 0xCu);
        }

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v18 = v15;
        v43 = [v18 countByEnumeratingWithState:&v58 objects:v68 count:16];
        if (v43)
        {
          v19 = *v59;
          v40 = *v59;
          v41 = v13;
          v48 = v18;
          do
          {
            v20 = 0;
            do
            {
              if (*v59 != v19)
              {
                objc_enumerationMutation(v18);
              }

              v44 = v20;
              v21 = [*(*(&v58 + 1) + 8 * v20) objectForKeyedSubscript:kSCROBrailleDriverSerialAdvertiseBytes[0]];
              v54 = 0u;
              v55 = 0u;
              v56 = 0u;
              v57 = 0u;
              obj = v21;
              v22 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v55;
                while (2)
                {
                  for (i = 0; i != v23; ++i)
                  {
                    if (*v55 != v24)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v26 = *(*(&v54 + 1) + 8 * i);
                    data = [MEMORY[0x277CBEB28] data];
                    v50 = 0u;
                    v51 = 0u;
                    v52 = 0u;
                    v53 = 0u;
                    v28 = [v26 componentsSeparatedByString:@"\\x"];
                    v29 = [v28 countByEnumeratingWithState:&v50 objects:v66 count:16];
                    if (v29)
                    {
                      v30 = v29;
                      v31 = *v51;
                      do
                      {
                        for (j = 0; j != v30; ++j)
                        {
                          if (*v51 != v31)
                          {
                            objc_enumerationMutation(v28);
                          }

                          v33 = *(*(&v50 + 1) + 8 * j);
                          if ([v33 length])
                          {
                            buf[0] = strtol([v33 UTF8String], 0, 16);
                            [data appendBytes:buf length:1];
                          }
                        }

                        v30 = [v28 countByEnumeratingWithState:&v50 objects:v66 count:16];
                      }

                      while (v30);
                    }

                    if (![driverCopy rangeOfData:data options:0 range:{0, objc_msgSend(driverCopy, "length")}])
                    {
                      v35 = [[SCROIOSerialElement alloc] initWithFileDescriptor:descriptor];
                      v36 = _SCROD_LOG(v35);
                      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v70 = v35;
                        _os_log_impl(&dword_26490B000, v36, OS_LOG_TYPE_DEFAULT, "Matched element: %@", buf, 0xCu);
                      }

                      _postBrailleDisplayDetected(v41, v35);
                      v34 = 1;
                      v9 = v46;
                      brailleDriverDeviceDetectionInfo = v47;
                      goto LABEL_39;
                    }
                  }

                  v23 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
                  if (v23)
                  {
                    continue;
                  }

                  break;
                }
              }

              v20 = v44 + 1;
              v9 = v46;
              brailleDriverDeviceDetectionInfo = v47;
              v18 = v48;
              v19 = v40;
            }

            while (v44 + 1 != v43);
            v43 = [v48 countByEnumeratingWithState:&v58 objects:v68 count:16];
          }

          while (v43);
        }

        v12 = v42 + 1;
        v11 = v39;
      }

      while (v42 + 1 != v38);
      v10 = [v9 countByEnumeratingWithState:&v62 objects:v71 count:16];
      v11 = v39;
      v34 = 0;
    }

    while (v10);
  }

  else
  {
    v34 = 0;
  }

LABEL_39:

  return v34;
}

- (id)_serialPortMatchingDictionary
{
  v2 = IOServiceMatching("IOSerialBSDClient");
  CFDictionarySetValue(v2, @"IOSerialBSDClientType", @"IOSerialStream");

  return v2;
}

- (void)serialPortsWerePublished:(unsigned int)published
{
  _driverBundleIdentifiers = [(SCROBrailleDisplayAutoDetector *)self _driverBundleIdentifiers];
  [(SCROBrailleDisplayAutoDetector *)self _detectSerialPorts:_driverBundleIdentifiers];
}

- (void)_registerForSerialPortNotifications
{
  _serialPortMatchingDictionary = [(SCROBrailleDisplayAutoDetector *)self _serialPortMatchingDictionary];
  Current = CFRunLoopGetCurrent();
  RunLoopSource = IONotificationPortGetRunLoopSource(self->_notificationPort);
  CFRunLoopAddSource(Current, RunLoopSource, *MEMORY[0x277CBF058]);
  notification = 0;
  notificationPort = self->_notificationPort;
  v7 = CFRetain(_serialPortMatchingDictionary);
  v8 = IOServiceAddMatchingNotification(notificationPort, "IOServicePublish", v7, _serialPortPublishedCallback, self, &notification);
  if (v8)
  {
    v9 = _SCROD_LOG(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_26490B000, v9, OS_LOG_TYPE_DEFAULT, "Could not register for serial publish notification", v10, 2u);
    }
  }
}

- (void)_initializeAutodetectSerialPorts:(id)ports
{
  portsCopy = ports;
  [(SCROBrailleDisplayAutoDetector *)self _registerForSerialPortNotifications];
  [(SCROBrailleDisplayAutoDetector *)self _detectSerialPorts:portsCopy];
}

- (void)_detectSerialPorts:(id)ports
{
  v30 = *MEMORY[0x277D85DE8];
  portsCopy = ports;
  v27 = 0;
  v5 = MEMORY[0x266745A00](0, &v27);
  v6 = v5;
  if (v5 || ([MEMORY[0x277CCAC38] processInfo], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "processName"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hasPrefix:", @"scrod"), v8, v7, (v9 & 1) == 0))
  {
    v20 = _SCROD_LOG(v5);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v29 = v6;
      _os_log_impl(&dword_26490B000, v20, OS_LOG_TYPE_DEFAULT, "IOMainPort returned %d\n", buf, 8u);
    }
  }

  else
  {
    existing = 0;
    _serialPortMatchingDictionary = [(SCROBrailleDisplayAutoDetector *)self _serialPortMatchingDictionary];
    v11 = v27;
    v12 = CFRetain(_serialPortMatchingDictionary);
    MatchingServices = IOServiceGetMatchingServices(v11, v12, &existing);
    if (MatchingServices)
    {
      v14 = MatchingServices;
      v15 = _SCROD_LOG(MatchingServices);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v29 = v14;
        _os_log_impl(&dword_26490B000, v15, OS_LOG_TYPE_DEFAULT, "IOServiceGetMatchingServices returned %d\n", buf, 8u);
      }
    }

    v16 = IOIteratorNext(existing);
    if (v16)
    {
      v17 = v16;
      v18 = *MEMORY[0x277CBECE8];
      while (1)
      {
        CFProperty = IORegistryEntryCreateCFProperty(v17, @"IOCalloutDevice", v18, 0);
        IOObjectRelease(v17);
        if ([CFProperty hasPrefix:@"/dev/cu.usbserial"])
        {
          break;
        }

        v17 = IOIteratorNext(existing);
        if (!v17)
        {
          goto LABEL_17;
        }
      }

      v21 = dispatch_time(0, 5000000000);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __53__SCROBrailleDisplayAutoDetector__detectSerialPorts___block_invoke;
      v23[3] = &unk_279B73FB0;
      v23[4] = self;
      v24 = CFProperty;
      v25 = portsCopy;
      v22 = CFProperty;
      dispatch_after(v21, MEMORY[0x277D85CD0], v23);
    }

LABEL_17:
  }
}

- (void)_autodetectIOServices:(id)services
{
  v67 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  brailleDriverDeviceDetectionInfo = [MEMORY[0x277CCA8D8] brailleDriverDeviceDetectionInfo];
  notificationPort = self->_notificationPort;
  if (notificationPort)
  {
    RunLoopSource = IONotificationPortGetRunLoopSource(notificationPort);
    if (RunLoopSource)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v36 = servicesCopy;
      obj = servicesCopy;
      v40 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
      if (v40)
      {
        v6 = 0;
        v38 = *v60;
        v42 = *MEMORY[0x277CBF058];
        allocator = *MEMORY[0x277CBECE8];
        do
        {
          v7 = 0;
          do
          {
            if (*v60 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v41 = v7;
            v8 = *(*(&v59 + 1) + 8 * v7);
            v9 = [brailleDriverDeviceDetectionInfo objectForKey:v8];
            v10 = [v9 objectForKey:kSCROBrailleDriverAutoDetectDictionaries[0]];

            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v44 = v10;
            v11 = [v44 countByEnumeratingWithState:&v55 objects:v65 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v56;
              do
              {
                for (i = 0; i != v12; ++i)
                {
                  if (*v56 != v13)
                  {
                    objc_enumerationMutation(v44);
                  }

                  v15 = *(*(&v55 + 1) + 8 * i);
                  if ((v6 & 1) == 0)
                  {
                    Current = CFRunLoopGetCurrent();
                    CFRunLoopAddSource(Current, RunLoopSource, v42);
                  }

                  notification = 0;
                  v17 = [v15 objectForKeyedSubscript:@"IOProviderClass"];
                  v18 = [v17 isEqual:@"IOUSBDevice"];

                  if (v18)
                  {
                    v19 = [v15 mutableCopy];
                    [v19 setObject:@"IOUSBDevice" forKey:@"IOProviderClass"];
                    Copy = CFDictionaryCreateCopy(allocator, v19);
                  }

                  else
                  {
                    Copy = CFDictionaryCreateCopy(allocator, v15);
                  }

                  v21 = IOServiceAddMatchingNotification(self->_notificationPort, "IOServiceFirstMatch", Copy, _connectHandler, v8, &notification);
                  if (v21)
                  {
                    NSLog(&cfstr_ErrorDWhileCre.isa, v21, v8);
                  }

                  else
                  {
                    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:notification];
                    v23 = [(NSMutableDictionary *)self->_iteratorDict objectForKey:v8];
                    if (v23)
                    {
                      v24 = v23;
                    }

                    else
                    {
                      v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
                      [(NSMutableDictionary *)self->_iteratorDict setObject:v24 forKey:v8];
                    }

                    [v24 addObject:v22];
                  }

                  v6 = 1;
                }

                v12 = [v44 countByEnumeratingWithState:&v55 objects:v65 count:16];
              }

              while (v12);
            }

            v7 = v41 + 1;
          }

          while (v41 + 1 != v40);
          v40 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
        }

        while (v40);
      }

      servicesCopy = v36;
    }

    self->_isDetectingDisplays = 1;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v25 = servicesCopy;
  v26 = [v25 countByEnumeratingWithState:&v50 objects:v64 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v51;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v51 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v50 + 1) + 8 * j);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v31 = [(NSMutableDictionary *)self->_iteratorDict objectForKey:v30];
        v32 = [v31 countByEnumeratingWithState:&v46 objects:v63 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v47;
          do
          {
            for (k = 0; k != v33; ++k)
            {
              if (*v47 != v34)
              {
                objc_enumerationMutation(v31);
              }

              _connectHandler(v30, [*(*(&v46 + 1) + 8 * k) unsignedIntValue]);
            }

            v33 = [v31 countByEnumeratingWithState:&v46 objects:v63 count:16];
          }

          while (v33);
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v50 objects:v64 count:16];
    }

    while (v27);
  }
}

- (void)stopDetectingDisplays
{
  v26 = *MEMORY[0x277D85DE8];
  notificationPort = self->_notificationPort;
  if (notificationPort)
  {
    IONotificationPortDestroy(notificationPort);
  }

  self->_notificationPort = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_iteratorDict;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v10 = [(NSMutableDictionary *)self->_iteratorDict objectForKey:v9, 0];
        v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          do
          {
            v14 = 0;
            do
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(v10);
              }

              IOObjectRelease([*(*(&v16 + 1) + 8 * v14++) unsignedIntValue]);
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  iteratorDict = self->_iteratorDict;
  self->_iteratorDict = 0;

  self->_isDetectingDisplays = 0;
}

- (void)removeAutodetectBLEIdentifier:(id)identifier
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = _SCROD_BRAILLE_LOG(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = identifierCopy;
    _os_log_impl(&dword_26490B000, v5, OS_LOG_TYPE_DEFAULT, "Stop autodetecting ble: %@", buf, 0xCu);
  }

  if ([identifierCopy length])
  {
    [(NSMutableArray *)self->_bleIdentifiers removeObject:identifierCopy];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    selfCopy = self;
    centralManager = [(SCROBrailleDisplayAutoDetector *)self centralManager];
    v7 = [centralManager retrieveConnectedPeripheralsWithServices:0 allowAll:1];

    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          v13 = _SCROD_BRAILLE_LOG(v8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = v12;
            _os_log_impl(&dword_26490B000, v13, OS_LOG_TYPE_DEFAULT, "Checking peripheral %@", buf, 0xCu);
          }

          identifier = [v12 identifier];
          uUIDString = [identifier UUIDString];
          v16 = [identifierCopy isEqualToString:uUIDString];

          if (v16)
          {
            centralManager2 = [(SCROBrailleDisplayAutoDetector *)selfCopy centralManager];
            [centralManager2 cancelPeripheralConnection:v12];

            if (libAccessibilityLibraryCore(0))
            {
              soft__AXSVoiceOverTouchSetTactileGraphicsDisplay(0);
            }

            goto LABEL_17;
          }

          ++v11;
        }

        while (v9 != v11);
        v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        v9 = v8;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }
}

- (void)addAutodetectBLEIdentifier:(id)identifier
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (!self->_centralManager)
  {
    v6 = _SCROD_LOG(identifierCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      centralManager = self->_centralManager;
      *buf = 138412290;
      v30 = centralManager;
      _os_log_impl(&dword_26490B000, v6, OS_LOG_TYPE_DEFAULT, "Auto detect BTLE devices: %@", buf, 0xCu);
    }

    v8 = [objc_alloc(MEMORY[0x277CBDFF8]) initWithDelegate:self queue:0];
    v9 = self->_centralManager;
    self->_centralManager = v8;
  }

  v10 = _SCROD_BRAILLE_LOG(identifierCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v5;
    _os_log_impl(&dword_26490B000, v10, OS_LOG_TYPE_DEFAULT, "Autodetect ble: %@", buf, 0xCu);
  }

  if (v5 && ([(NSMutableArray *)self->_bleIdentifiers containsObject:v5]& 1) == 0)
  {
    [(NSMutableArray *)self->_bleIdentifiers addObject:v5];
  }

  v23 = v5;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  centralManager = [(SCROBrailleDisplayAutoDetector *)self centralManager];
  v12 = [centralManager retrieveConnectedPeripheralsWithServices:0 allowAll:1];

  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * v16);
        v18 = _SCROD_BRAILLE_LOG(v13);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v30 = v17;
          _os_log_impl(&dword_26490B000, v18, OS_LOG_TYPE_DEFAULT, "Checking peripheral %@", buf, 0xCu);
        }

        bleIdentifiers = self->_bleIdentifiers;
        identifier = [(CBCentralManager *)v17 identifier];
        uUIDString = [identifier UUIDString];
        LODWORD(bleIdentifiers) = [(NSMutableArray *)bleIdentifiers containsObject:uUIDString];

        if (bleIdentifiers)
        {
          centralManager2 = [(SCROBrailleDisplayAutoDetector *)self centralManager];
          [(SCROBrailleDisplayAutoDetector *)self _addBLEPeripheral:v17 central:centralManager2];
        }

        ++v16;
      }

      while (v14 != v16);
      v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      v14 = v13;
    }

    while (v13);
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  v36 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  state = [stateCopy state];
  if (state == 5)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    centralManager = [(SCROBrailleDisplayAutoDetector *)self centralManager];
    v7 = [centralManager retrieveConnectedPeripheralsWithServices:0 allowAll:1];

    v8 = [v7 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v26;
      *&v9 = 138412290;
      v24 = v9;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          bleIdentifiers = self->_bleIdentifiers;
          identifier = [v13 identifier];
          uUIDString = [identifier UUIDString];
          LODWORD(bleIdentifiers) = [(NSMutableArray *)bleIdentifiers containsObject:uUIDString];

          if (bleIdentifiers)
          {
            v18 = _SCROD_BRAILLE_LOG(v17);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v24;
              v32 = v13;
              _os_log_impl(&dword_26490B000, v18, OS_LOG_TYPE_DEFAULT, "Checking peripheral power on %@", buf, 0xCu);
            }

            [(SCROBrailleDisplayAutoDetector *)self _addBLEPeripheral:v13 central:stateCopy];
          }
        }

        v10 = [v7 countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v10);
    }

    isScanning = [stateCopy isScanning];
    v20 = _SCROD_LOG(isScanning);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [MEMORY[0x277CCABB0] numberWithBool:isScanning];
      *buf = 138412546;
      v32 = stateCopy;
      v33 = 2112;
      v34 = v21;
      _os_log_impl(&dword_26490B000, v20, OS_LOG_TYPE_DEFAULT, "Starting scan: %@ scanning: %@", buf, 0x16u);
    }

    if ((isScanning & 1) == 0)
    {
      [stateCopy setDelegate:self];
      v22 = *MEMORY[0x277CBDEF8];
      v29[0] = *MEMORY[0x277CBDDB0];
      v29[1] = v22;
      v30[0] = MEMORY[0x277CBEC38];
      v30[1] = MEMORY[0x277CBEC38];
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
      [stateCopy scanForPeripheralsWithServices:0 options:v23];
    }
  }

  else if (state == 4)
  {
    [stateCopy stopScan];
  }
}

- (void)_addBLEPeripheral:(id)peripheral central:(id)central
{
  v34 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  centralCopy = central;
  v8 = _SCROD_LOG(centralCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    name = [peripheralCopy name];
    *buf = 138412546;
    *&buf[4] = peripheralCopy;
    *&buf[12] = 2112;
    *&buf[14] = name;
    _os_log_impl(&dword_26490B000, v8, OS_LOG_TYPE_DEFAULT, "Trying to add peripheral %@ %@", buf, 0x16u);
  }

  name2 = [peripheralCopy name];
  v11 = [name2 hasPrefix:@"DotPad"];

  name3 = [peripheralCopy name];
  v13 = [name3 hasPrefix:@"DotPocket"];

  if ((v11 | v13))
  {
    v14 = [[SCROIODotPadElement alloc] initWithCentral:centralCopy peripheral:peripheralCopy];
    v15 = _SCROD_LOG(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = peripheralCopy;
      _os_log_impl(&dword_26490B000, v15, OS_LOG_TYPE_DEFAULT, "Matched dot pad element: %@ %@", buf, 0x16u);
    }

    if (v11 && libAccessibilityLibraryCore(0))
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v16 = get_AXSVoiceOverTouchCopyTactileGraphicsDisplaySymbolLoc_ptr;
      v30 = get_AXSVoiceOverTouchCopyTactileGraphicsDisplaySymbolLoc_ptr;
      if (!get_AXSVoiceOverTouchCopyTactileGraphicsDisplaySymbolLoc_ptr)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __get_AXSVoiceOverTouchCopyTactileGraphicsDisplaySymbolLoc_block_invoke;
        v32 = &unk_279B73EB0;
        v33 = &v27;
        v17 = libAccessibilityLibrary();
        v18 = dlsym(v17, "_AXSVoiceOverTouchCopyTactileGraphicsDisplay");
        *(v33[1] + 24) = v18;
        get_AXSVoiceOverTouchCopyTactileGraphicsDisplaySymbolLoc_ptr = *(v33[1] + 24);
        v16 = v28[3];
      }

      _Block_object_dispose(&v27, 8);
      if (!v16)
      {
        [SCROBrailleDisplayAutoDetector _addBLEPeripheral:central:];
      }

      v20 = v16(v19);
      identifier = [peripheralCopy identifier];
      uUIDString = [identifier UUIDString];
      v23 = [v20 isEqualToString:uUIDString];

      if ((v23 & 1) == 0)
      {
        identifier2 = [peripheralCopy identifier];
        uUIDString2 = [identifier2 UUIDString];
        soft__AXSVoiceOverTouchSetTactileGraphicsDisplay(uUIDString2);
      }
    }

    dotFamilyIdentifier = [(SCROIODotPadElement *)v14 dotFamilyIdentifier];
    _postBrailleDisplayDetected(dotFamilyIdentifier, v14);
  }

  else
  {
    [centralCopy connectPeripheral:peripheralCopy options:0];
    if (([(NSMutableArray *)self->_connectedPeripherals containsObject:peripheralCopy]& 1) == 0)
    {
      [(NSMutableArray *)self->_connectedPeripherals addObject:peripheralCopy];
    }
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  v11 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  v6 = _SCROD_LOG(peripheralCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = peripheralCopy;
    _os_log_impl(&dword_26490B000, v6, OS_LOG_TYPE_DEFAULT, "Did connect periperhal: %@", &v9, 0xCu);
  }

  name = [peripheralCopy name];
  v8 = [name hasPrefix:@"DotPad"];

  if ((v8 & 1) == 0)
  {
    [peripheralCopy setDelegate:self];
    [peripheralCopy discoverServices:0];
  }
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  v17 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  name = [peripheralCopy name];
  v6 = [name hasPrefix:@"DotPad"];

  if ((v6 & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    services = [peripheralCopy services];
    v8 = [services countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(services);
          }

          [peripheralCopy discoverCharacteristics:0 forService:*(*(&v12 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [services countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  serviceCopy = service;
  name = [peripheralCopy name];
  v9 = [name hasPrefix:@"DotPad"];

  if ((v9 & 1) == 0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    characteristics = [serviceCopy characteristics];
    v11 = [characteristics countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(characteristics);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          [peripheralCopy readValueForCharacteristic:v15];
          [peripheralCopy setNotifyValue:1 forCharacteristic:v15];
        }

        v12 = [characteristics countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  v16 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  peripheralCopy = peripheral;
  bleIdentifiers = self->_bleIdentifiers;
  identifier = [peripheralCopy identifier];
  uUIDString = [identifier UUIDString];
  LODWORD(bleIdentifiers) = [(NSMutableArray *)bleIdentifiers containsObject:uUIDString];

  if (bleIdentifiers)
  {
    v13 = _SCROD_BRAILLE_LOG([managerCopy stopScan]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = peripheralCopy;
      _os_log_impl(&dword_26490B000, v13, OS_LOG_TYPE_DEFAULT, "Discovered periperhal %@", &v14, 0xCu);
    }

    [(SCROBrailleDisplayAutoDetector *)self _addBLEPeripheral:peripheralCopy central:managerCopy];
  }
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  peripheralCopy = peripheral;
  v9 = _SCROD_LOG(peripheralCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    bleIdentifiers = self->_bleIdentifiers;
    v15 = 138412546;
    v16 = bleIdentifiers;
    v17 = 2112;
    v18 = peripheralCopy;
    _os_log_impl(&dword_26490B000, v9, OS_LOG_TYPE_DEFAULT, "Peripheral disconnected that we're monitoring, rescanning: %@ %@", &v15, 0x16u);
  }

  v11 = self->_bleIdentifiers;
  identifier = [peripheralCopy identifier];
  uUIDString = [identifier UUIDString];
  LODWORD(v11) = [(NSMutableArray *)v11 containsObject:uUIDString];

  if (v11)
  {
    v14 = _SCROD_LOG([(SCROBrailleDisplayAutoDetector *)self centralManagerDidUpdateState:managerCopy]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_26490B000, v14, OS_LOG_TYPE_DEFAULT, "Peripheral disconnected that we're monitoring, rescanning", &v15, 2u);
    }
  }

  [(NSMutableArray *)self->_connectedPeripherals removeObject:peripheralCopy];
}

- (void)_addBLEPeripheral:central:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CFStringRef soft__AXSVoiceOverTouchCopyTactileGraphicsDisplay(void)"];
  [v0 handleFailureInFunction:v1 file:@"SCROBrailleDisplayAutoDetector.m" lineNumber:48 description:{@"%s", dlerror()}];

  __break(1u);
}

@end