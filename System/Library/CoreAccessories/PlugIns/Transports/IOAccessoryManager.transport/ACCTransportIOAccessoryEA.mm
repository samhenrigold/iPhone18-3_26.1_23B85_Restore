@interface ACCTransportIOAccessoryEA
- (ACCTransportIOAccessoryEA)initWithDelegate:(id)delegate andIOService:(unsigned int)service;
- (ACCTransportIOAccessoryEAProtocol)delegate;
- (BOOL)_handleIncomingEAData;
- (BOOL)openEAServiceSession;
- (BOOL)transmitData:(id)data;
- (NSString)deviceDockType;
- (NSString)deviceFirmwareRevision;
- (NSString)deviceHardwareRevision;
- (NSString)deviceModelNumber;
- (NSString)deviceName;
- (NSString)deviceSerialNumber;
- (NSString)deviceVendorName;
- (NSString)eaProtocol;
- (NSString)parentConnectionUUID;
- (id)description;
- (void)_checkEAInfo;
- (void)_handleIncomingEAData;
- (void)_registerEAReadCallback;
- (void)closeEAServiceSession;
- (void)dealloc;
@end

@implementation ACCTransportIOAccessoryEA

- (ACCTransportIOAccessoryEA)initWithDelegate:(id)delegate andIOService:(unsigned int)service
{
  v4 = *&service;
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = ACCTransportIOAccessoryEA;
  v7 = [(ACCTransportIOAccessoryBase *)&v11 initWithIOAccessoryClass:2 ioService:v4];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_parentConnectionUUID, 0);
    endpointUUID = v8->_endpointUUID;
    v8->_endpointUUID = 0;

    v8->_sessionOpen = 0;
    objc_storeWeak(&v8->_delegate, delegateCopy);
    [(ACCTransportIOAccessoryEA *)v8 _checkEAInfo];
    v8->_eaDataReadBuffer = malloc_type_malloc(0x400uLL, 0xB99C52EuLL);
    v8->_eaDataReadBufferDataLength = 1024;
  }

  return v8;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 6;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "deallocing EA service %d", buf, 8u);
  }

  [(ACCTransportIOAccessoryEA *)self closeEAServiceSession];
  objc_storeWeak(&self->_delegate, 0);
  free(self->_eaDataReadBuffer);
  v6.receiver = self;
  v6.super_class = ACCTransportIOAccessoryEA;
  [(ACCTransportIOAccessoryBase *)&v6 dealloc];
}

- (BOOL)openEAServiceSession
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(ACCTransportIOAccessoryEA *)self sessionOpen])
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 6;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *(gLogObjects + 40);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      eaProtocol = [(ACCTransportIOAccessoryEA *)self eaProtocol];
      endpointUUID = [(ACCTransportIOAccessoryEA *)self endpointUUID];
      v17 = 138412546;
      v18 = eaProtocol;
      v19 = 2112;
      *v20 = endpointUUID;
      _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "EA session for protocol %@ is already open (endpointUUID %@)", &v17, 0x16u);
    }
  }

  else
  {
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    v6 = IOServiceOpen(ioService, *MEMORY[0x277D85F48], 0, &self->super._ioConnect);
    [(ACCTransportIOAccessoryEA *)self _registerEAReadCallback];
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 6;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *(gLogObjects + 40);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      eaProtocol2 = [(ACCTransportIOAccessoryEA *)self eaProtocol];
      ioService2 = [(ACCTransportIOAccessoryBase *)self ioService];
      endpointUUID2 = [(ACCTransportIOAccessoryEA *)self endpointUUID];
      v17 = 138413058;
      v18 = eaProtocol2;
      v19 = 1024;
      *v20 = ioService2;
      *&v20[4] = 1024;
      *&v20[6] = v6;
      v21 = 2112;
      v22 = endpointUUID2;
      _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_DEFAULT, "EA session for protocol %@ self.ioService %d is open result = 0x%X (endpointUUID %@)", &v17, 0x22u);
    }

    self->_sessionOpen = 1;
  }

  return [(ACCTransportIOAccessoryEA *)self sessionOpen];
}

- (void)closeEAServiceSession
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(ACCTransportIOAccessoryEA *)self sessionOpen])
  {
    IOServiceClose(self->super._ioConnect);
    self->super._ioConnect = 0;
    self->_sessionOpen = 0;
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 6;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    else
    {
      v7 = *(gLogObjects + 40);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      eaProtocol = [(ACCTransportIOAccessoryEA *)self eaProtocol];
      v10 = 138412290;
      v11 = eaProtocol;
      v9 = "EA session for protocol %@ is closed";
LABEL_22:
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, v9, &v10, 0xCu);
    }
  }

  else
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 6;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    else
    {
      v7 = *(gLogObjects + 40);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      eaProtocol = [(ACCTransportIOAccessoryEA *)self eaProtocol];
      v10 = 138412290;
      v11 = eaProtocol;
      v9 = "EA session for protocol %@ is already closed";
      goto LABEL_22;
    }
  }
}

- (BOOL)_handleIncomingEAData
{
  v42 = *MEMORY[0x277D85DE8];
  parentConnectionUUID = [(ACCTransportIOAccessoryEA *)self parentConnectionUUID];

  if (parentConnectionUUID)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0x2812FE000uLL;
    v7 = 0x2812FE000uLL;
    v8 = MEMORY[0x277D86220];
    while (1)
    {
      self->_eaDataReadBufferDataLength = 1024;
      if (v4)
      {
        v9 = *(v6 + 3720);
        v10 = *(v7 + 3704);
        if (v9)
        {
          v11 = v10 < 6;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v35 = v9;
            v36 = 1024;
            LODWORD(v37) = v10;
            _os_log_error_impl(&dword_233656000, v8, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v12 = v8;
          v17 = v8;
        }

        else
        {
          v17 = v9[5];
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          parentConnectionUUID2 = [(ACCTransportIOAccessoryEA *)self parentConnectionUUID];
          eaProtocol = [(ACCTransportIOAccessoryEA *)self eaProtocol];
          *buf = 138412546;
          v35 = parentConnectionUUID2;
          v36 = 2112;
          v37 = eaProtocol;
          _os_log_error_impl(&dword_233656000, v17, OS_LOG_TYPE_ERROR, "error reading from EA session UUID %@, protocol %@", buf, 0x16u);

          v6 = 0x2812FE000;
        }
      }

      else
      {
        v4 = IOAccessoryEAInterfaceReceiveData();
        v13 = *(v6 + 3720);
        v14 = *(v7 + 3704);
        if (v13)
        {
          v15 = v14 < 6;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v35 = v13;
            v36 = 1024;
            LODWORD(v37) = v14;
            _os_log_error_impl(&dword_233656000, v8, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v16 = v8;
          v18 = v8;
        }

        else
        {
          v18 = v13[5];
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          eaDataReadBufferDataLength = self->_eaDataReadBufferDataLength;
          endpointUUID = [(ACCTransportIOAccessoryEA *)self endpointUUID];
          eaProtocol2 = [(ACCTransportIOAccessoryEA *)self eaProtocol];
          *buf = 134218754;
          v35 = eaDataReadBufferDataLength;
          v6 = 0x2812FE000;
          v36 = 2112;
          v37 = endpointUUID;
          v38 = 2112;
          v39 = eaProtocol2;
          v40 = 1024;
          v41 = v4;
          _os_log_debug_impl(&dword_233656000, v18, OS_LOG_TYPE_DEBUG, "read %zu bytes from EA session UUID %@, protocol %@, result = 0x%X", buf, 0x26u);

          v7 = 0x2812FE000;
        }

        delegate = [(ACCTransportIOAccessoryEA *)self delegate];
        if (!delegate)
        {
          v5 = 1;
          goto LABEL_23;
        }

        v20 = delegate;
        delegate2 = [(ACCTransportIOAccessoryEA *)self delegate];
        v22 = objc_opt_respondsToSelector();

        if ((v22 & 1) == 0)
        {
          v5 = 1;
          v6 = 0x2812FE000;
          goto LABEL_23;
        }

        v17 = [MEMORY[0x277CBEA90] dataWithBytes:self->_eaDataReadBuffer length:self->_eaDataReadBufferDataLength];
        delegate3 = [(ACCTransportIOAccessoryEA *)self delegate];
        endpointUUID2 = [(ACCTransportIOAccessoryEA *)self endpointUUID];
        [delegate3 IOAccessoryEADataArrived:v17 eaEndpointUUID:endpointUUID2];

        v5 = 1;
        v6 = 0x2812FE000;
      }

LABEL_23:
      if (self->_eaDataReadBufferDataLength != 1024)
      {
        return v5;
      }
    }
  }

  if (gLogObjects)
  {
    v30 = gNumLogObjects < 6;
  }

  else
  {
    v30 = 1;
  }

  if (v30)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v32 = MEMORY[0x277D86220];
    v31 = MEMORY[0x277D86220];
  }

  else
  {
    v32 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    [(ACCTransportIOAccessoryEA *)self _handleIncomingEAData];
  }

  return 0;
}

- (void)_registerEAReadCallback
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_error_impl(&dword_233656000, a2, OS_LOG_TYPE_ERROR, "ERROR registering EAReadCallback: 0x%x", v2, 8u);
}

- (void)_checkEAInfo
{
  [(ACCTransportIOAccessoryBase *)self ioService];
  v3 = IOAccessoryEAInterfaceCopyProtocolString();
  eaProtocol = self->_eaProtocol;
  self->_eaProtocol = v3;

  if (!self->_eaProtocol)
  {
    self->_eaProtocol = @"Unknown";
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  v5 = IOAccessoryEAInterfaceCopyDeviceVendorName();
  deviceVendorName = self->_deviceVendorName;
  self->_deviceVendorName = v5;

  if (!self->_deviceVendorName)
  {
    self->_deviceVendorName = @"Unknown";
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  v7 = IOAccessoryEAInterfaceCopyDeviceName();
  deviceName = self->_deviceName;
  self->_deviceName = v7;

  if (!self->_deviceName)
  {
    self->_deviceName = @"Unknown";
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  v9 = IOAccessoryEAInterfaceCopyDeviceModelNumber();
  deviceModelNumber = self->_deviceModelNumber;
  self->_deviceModelNumber = v9;

  if (!self->_deviceModelNumber)
  {
    self->_deviceModelNumber = @"Unknown";
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  v11 = IOAccessoryEAInterfaceCopyDeviceHardwareRevision();
  deviceHardwareRevision = self->_deviceHardwareRevision;
  self->_deviceHardwareRevision = v11;

  if (!self->_deviceHardwareRevision)
  {
    self->_deviceHardwareRevision = @"Unknown";
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  v13 = IOAccessoryEAInterfaceCopyDeviceFirmwareRevision();
  deviceFirmwareRevision = self->_deviceFirmwareRevision;
  self->_deviceFirmwareRevision = v13;

  if (!self->_deviceFirmwareRevision)
  {
    self->_deviceFirmwareRevision = @"Unknown";
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  v15 = IOAccessoryEAInterfaceCopyDeviceSerialNumber();
  deviceSerialNumber = self->_deviceSerialNumber;
  self->_deviceSerialNumber = v15;

  if (!self->_deviceSerialNumber)
  {
    self->_deviceSerialNumber = @"Unknown";
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  v17 = IOAccessoryEAInterfaceCopyDeviceDockType();
  deviceDockType = self->_deviceDockType;
  self->_deviceDockType = v17;

  if (!self->_deviceDockType)
  {
    self->_deviceDockType = @"Unknown";
  }
}

- (BOOL)transmitData:(id)data
{
  dataCopy = data;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 6;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportIOAccessoryEA *)dataCopy transmitData:v7];
  }

  [dataCopy bytes];
  [dataCopy length];
  v8 = IOAccessoryEAInterfaceSendData();
  if (v8)
  {
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v9 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryEA transmitData:?];
    }
  }

  return v8 == 0;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = MEMORY[0x277CCACA8];
  eaProtocol = [(ACCTransportIOAccessoryEA *)self eaProtocol];
  v6 = [v4 stringWithFormat:@"EAProtocol %@\n", eaProtocol];
  [string appendFormat:@"%@", v6];

  v7 = MEMORY[0x277CCACA8];
  deviceVendorName = [(ACCTransportIOAccessoryEA *)self deviceVendorName];
  v9 = [v7 stringWithFormat:@"    deviceVendorName %@\n", deviceVendorName];
  [string appendFormat:@"%@", v9];

  v10 = MEMORY[0x277CCACA8];
  deviceName = [(ACCTransportIOAccessoryEA *)self deviceName];
  v12 = [v10 stringWithFormat:@"    deviceName %@\n", deviceName];
  [string appendFormat:@"%@", v12];

  v13 = MEMORY[0x277CCACA8];
  deviceModelNumber = [(ACCTransportIOAccessoryEA *)self deviceModelNumber];
  v15 = [v13 stringWithFormat:@"    deviceModelNumber %@\n", deviceModelNumber];
  [string appendFormat:@"%@", v15];

  v16 = MEMORY[0x277CCACA8];
  deviceHardwareRevision = [(ACCTransportIOAccessoryEA *)self deviceHardwareRevision];
  v18 = [v16 stringWithFormat:@"    deviceHardwareRevision %@\n", deviceHardwareRevision];
  [string appendFormat:@"%@", v18];

  v19 = MEMORY[0x277CCACA8];
  deviceFirmwareRevision = [(ACCTransportIOAccessoryEA *)self deviceFirmwareRevision];
  v21 = [v19 stringWithFormat:@"    deviceFirmwareRevision %@\n", deviceFirmwareRevision];
  [string appendFormat:@"%@", v21];

  v22 = MEMORY[0x277CCACA8];
  deviceSerialNumber = [(ACCTransportIOAccessoryEA *)self deviceSerialNumber];
  v24 = [v22 stringWithFormat:@"    deviceSerialNumber %@\n", deviceSerialNumber];
  [string appendFormat:@"%@", v24];

  v25 = MEMORY[0x277CCACA8];
  deviceDockType = [(ACCTransportIOAccessoryEA *)self deviceDockType];
  v27 = [v25 stringWithFormat:@"    deviceDockType %@\n", deviceDockType];
  [string appendFormat:@"%@", v27];

  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"    IOService %d\n", -[ACCTransportIOAccessoryBase ioService](self, "ioService")];
  [string appendFormat:@"%@", v28];

  return string;
}

- (NSString)eaProtocol
{
  eaProtocol = self->_eaProtocol;
  if (!eaProtocol || [(NSString *)eaProtocol isEqualToString:@"Unknown"])
  {
    [(ACCTransportIOAccessoryBase *)self ioService];
    v4 = IOAccessoryEAInterfaceCopyProtocolString();
    v5 = self->_eaProtocol;
    self->_eaProtocol = v4;

    if (!self->_eaProtocol)
    {
      self->_eaProtocol = @"Unknown";
    }
  }

  v6 = self->_eaProtocol;

  return v6;
}

- (NSString)deviceVendorName
{
  deviceVendorName = self->_deviceVendorName;
  if (!deviceVendorName || [(NSString *)deviceVendorName isEqualToString:@"Unknown"])
  {
    [(ACCTransportIOAccessoryBase *)self ioService];
    v4 = IOAccessoryEAInterfaceCopyDeviceVendorName();
    v5 = self->_deviceVendorName;
    self->_deviceVendorName = v4;

    if (!self->_deviceVendorName)
    {
      self->_deviceVendorName = @"Unknown";
    }
  }

  v6 = self->_deviceVendorName;

  return v6;
}

- (NSString)deviceName
{
  deviceName = self->_deviceName;
  if (!deviceName || [(NSString *)deviceName isEqualToString:@"Unknown"])
  {
    [(ACCTransportIOAccessoryBase *)self ioService];
    v4 = IOAccessoryEAInterfaceCopyDeviceName();
    v5 = self->_deviceName;
    self->_deviceName = v4;

    if (!self->_deviceName)
    {
      self->_deviceName = @"Unknown";
    }
  }

  v6 = self->_deviceName;

  return v6;
}

- (NSString)deviceModelNumber
{
  deviceModelNumber = self->_deviceModelNumber;
  if (!deviceModelNumber || [(NSString *)deviceModelNumber isEqualToString:@"Unknown"])
  {
    [(ACCTransportIOAccessoryBase *)self ioService];
    v4 = IOAccessoryEAInterfaceCopyDeviceModelNumber();
    v5 = self->_deviceModelNumber;
    self->_deviceModelNumber = v4;

    if (!self->_deviceModelNumber)
    {
      self->_deviceModelNumber = @"Unknown";
    }
  }

  v6 = self->_deviceModelNumber;

  return v6;
}

- (NSString)deviceHardwareRevision
{
  deviceHardwareRevision = self->_deviceHardwareRevision;
  if (!deviceHardwareRevision || [(NSString *)deviceHardwareRevision isEqualToString:@"Unknown"])
  {
    [(ACCTransportIOAccessoryBase *)self ioService];
    v4 = IOAccessoryEAInterfaceCopyDeviceHardwareRevision();
    v5 = self->_deviceHardwareRevision;
    self->_deviceHardwareRevision = v4;

    if (!self->_deviceHardwareRevision)
    {
      self->_deviceHardwareRevision = @"Unknown";
    }
  }

  v6 = self->_deviceHardwareRevision;

  return v6;
}

- (NSString)deviceFirmwareRevision
{
  deviceFirmwareRevision = self->_deviceFirmwareRevision;
  if (!deviceFirmwareRevision || [(NSString *)deviceFirmwareRevision isEqualToString:@"Unknown"])
  {
    [(ACCTransportIOAccessoryBase *)self ioService];
    v4 = IOAccessoryEAInterfaceCopyDeviceFirmwareRevision();
    v5 = self->_deviceFirmwareRevision;
    self->_deviceFirmwareRevision = v4;

    if (!self->_deviceFirmwareRevision)
    {
      self->_deviceFirmwareRevision = @"Unknown";
    }
  }

  v6 = self->_deviceFirmwareRevision;

  return v6;
}

- (NSString)deviceSerialNumber
{
  deviceSerialNumber = self->_deviceSerialNumber;
  if (!deviceSerialNumber || [(NSString *)deviceSerialNumber isEqualToString:@"Unknown"])
  {
    [(ACCTransportIOAccessoryBase *)self ioService];
    v4 = IOAccessoryEAInterfaceCopyDeviceSerialNumber();
    v5 = self->_deviceSerialNumber;
    self->_deviceSerialNumber = v4;

    if (!self->_deviceSerialNumber)
    {
      self->_deviceSerialNumber = @"Unknown";
    }
  }

  v6 = self->_deviceSerialNumber;

  return v6;
}

- (NSString)deviceDockType
{
  deviceDockType = self->_deviceDockType;
  if (!deviceDockType || [(NSString *)deviceDockType isEqualToString:@"Unknown"])
  {
    [(ACCTransportIOAccessoryBase *)self ioService];
    v4 = IOAccessoryEAInterfaceCopyDeviceDockType();
    v5 = self->_deviceDockType;
    self->_deviceDockType = v4;

    if (!self->_deviceDockType)
    {
      self->_deviceDockType = @"Unknown";
    }
  }

  v6 = self->_deviceDockType;

  return v6;
}

- (ACCTransportIOAccessoryEAProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)parentConnectionUUID
{
  WeakRetained = objc_loadWeakRetained(&self->_parentConnectionUUID);

  return WeakRetained;
}

- (void)_handleIncomingEAData
{
  eaProtocol = [self eaProtocol];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)transmitData:(NSObject *)a3 .cold.2(void *a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [a1 length];
  v6 = [a2 eaProtocol];
  v7 = [a2 parentConnectionUUID];
  v8 = 134218498;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  _os_log_debug_impl(&dword_233656000, a3, OS_LOG_TYPE_DEBUG, "transmitting EA data length %lu for protocol %@ (Connection UUID %@)", &v8, 0x20u);
}

- (void)transmitData:(void *)a1 .cold.4(void *a1)
{
  v2 = [a1 eaProtocol];
  v8 = [a1 parentConnectionUUID];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

@end