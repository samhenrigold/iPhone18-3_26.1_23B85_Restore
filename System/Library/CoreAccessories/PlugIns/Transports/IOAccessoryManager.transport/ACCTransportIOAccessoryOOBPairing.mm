@interface ACCTransportIOAccessoryOOBPairing
- (ACCTransportIOAccessoryOOBPairing)initWithDelegate:(id)delegate andIOService:(unsigned int)service;
- (ACCTransportIOAccessoryOOBPairingProtocol)delegate;
- (BOOL)_handleIncomingOOBPairingInfoData:(int)data;
- (BOOL)openServiceSession;
- (BOOL)supportsType:(int)type;
- (BOOL)transmitData:(id)data;
- (NSMutableData)deviceSupportedTypes;
- (NSNumber)devicePlatformID;
- (NSNumber)supports2way;
- (NSString)deviceDockType;
- (NSString)deviceFirmwareRevision;
- (NSString)deviceHardwareRevision;
- (NSString)deviceModelNumber;
- (NSString)deviceName;
- (NSString)deviceSerialNumber;
- (NSString)deviceUID;
- (NSString)deviceVendorName;
- (NSString)parentConnectionUUID;
- (id)description;
- (int)_convertOOBPairingTypeFromIOAccessory:(int)accessory;
- (void)_checkAccInfo;
- (void)_registerReadCallback;
- (void)closeServiceSession;
- (void)dealloc;
@end

@implementation ACCTransportIOAccessoryOOBPairing

- (ACCTransportIOAccessoryOOBPairing)initWithDelegate:(id)delegate andIOService:(unsigned int)service
{
  v4 = *&service;
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = ACCTransportIOAccessoryOOBPairing;
  v7 = [(ACCTransportIOAccessoryBase *)&v11 initWithIOAccessoryClass:4 ioService:v4];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_parentConnectionUUID, 0);
    endpointUUID = v8->_endpointUUID;
    v8->_endpointUUID = 0;

    objc_storeWeak(&v8->_delegate, delegateCopy);
    v8->super._ioConnect = 0;
    v8->_oobPairingInfoReadBuffer = malloc_type_malloc(0x400uLL, 0xE46DA76BuLL);
    v8->_oobPairingInfoReadBufferLength = 1024;
    v8->_oobPairingDataReadBuffer = malloc_type_malloc(0x400uLL, 0x1C20EAD8uLL);
    v8->_oobPairingDataReadBufferLength = 1024;
    [(ACCTransportIOAccessoryOOBPairing *)v8 _checkAccInfo];
  }

  return v8;
}

- (void)dealloc
{
  v22 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "deallocing OOBPairing %d", buf, 8u);
  }

  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_parentConnectionUUID, 0);
  endpointUUID = self->_endpointUUID;
  self->_endpointUUID = 0;

  deviceSupportedTypes = self->_deviceSupportedTypes;
  self->_deviceSupportedTypes = 0;

  deviceVendorName = self->_deviceVendorName;
  self->_deviceVendorName = 0;

  deviceName = self->_deviceName;
  self->_deviceName = 0;

  deviceModelNumber = self->_deviceModelNumber;
  self->_deviceModelNumber = 0;

  deviceHardwareRevision = self->_deviceHardwareRevision;
  self->_deviceHardwareRevision = 0;

  deviceFirmwareRevision = self->_deviceFirmwareRevision;
  self->_deviceFirmwareRevision = 0;

  deviceSerialNumber = self->_deviceSerialNumber;
  self->_deviceSerialNumber = 0;

  deviceDockType = self->_deviceDockType;
  self->_deviceDockType = 0;

  deviceUID = self->_deviceUID;
  self->_deviceUID = 0;

  v16 = self->_deviceSupportedTypes;
  self->_deviceSupportedTypes = 0;

  oobPairingInfoReadBuffer = self->_oobPairingInfoReadBuffer;
  if (oobPairingInfoReadBuffer)
  {
    free(oobPairingInfoReadBuffer);
    self->_oobPairingInfoReadBuffer = 0;
  }

  oobPairingDataReadBuffer = self->_oobPairingDataReadBuffer;
  if (oobPairingDataReadBuffer)
  {
    free(oobPairingDataReadBuffer);
    self->_oobPairingDataReadBuffer = 0;
  }

  self->_oobPairingInfoReadBufferLength = 0;
  self->_oobPairingDataReadBufferLength = 0;
  v19.receiver = self;
  v19.super_class = ACCTransportIOAccessoryOOBPairing;
  [(ACCTransportIOAccessoryBase *)&v19 dealloc];
}

- (BOOL)openServiceSession
{
  v25 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    endpointUUID = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
    v23 = 67109378;
    *v24 = ioService;
    *&v24[4] = 2112;
    *&v24[6] = endpointUUID;
    _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "OOBPairing openServiceSession, ioService = %d, endpointUUID %@", &v23, 0x12u);
  }

  if (self->super._ioConnect)
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v8 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    endpointUUID2 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
    v23 = 138412290;
    *v24 = endpointUUID2;
    v14 = "OOB Pairing is already open (endpointUUID %@)";
    v15 = v8;
    v16 = 12;
LABEL_24:
    _os_log_impl(&dword_233656000, v15, OS_LOG_TYPE_DEFAULT, v14, &v23, v16);

LABEL_25:
    v17 = 1;
    goto LABEL_35;
  }

  ioService2 = [(ACCTransportIOAccessoryBase *)self ioService];
  v10 = IOServiceOpen(ioService2, *MEMORY[0x277D85F48], 0, &self->super._ioConnect);
  if (!v10)
  {
    [(ACCTransportIOAccessoryOOBPairing *)self _registerReadCallback];
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v8 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    ioService3 = [(ACCTransportIOAccessoryBase *)self ioService];
    endpointUUID2 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
    v23 = 67109634;
    *v24 = ioService3;
    *&v24[4] = 1024;
    *&v24[6] = 0;
    *&v24[10] = 2112;
    *&v24[12] = endpointUUID2;
    v14 = "OOB Pairing for self.ioService %d is open, result = 0x%X (endpointUUID %@)";
    v15 = v8;
    v16 = 24;
    goto LABEL_24;
  }

  v11 = v10;
  if (gLogObjects && gNumLogObjects >= 8)
  {
    v8 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v8 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    endpointUUID3 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
    v23 = 67109378;
    *v24 = v11;
    *&v24[4] = 2112;
    *&v24[6] = endpointUUID3;
    _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_DEFAULT, "ERROR: OOB Pairing open failed! result %xh (endpointUUID %@)", &v23, 0x12u);
  }

  v17 = 0;
LABEL_35:

  return v17;
}

- (void)closeServiceSession
{
  v13 = *MEMORY[0x277D85DE8];
  ioConnect = self->super._ioConnect;
  if (ioConnect)
  {
    IOServiceClose(ioConnect);
    self->super._ioConnect = 0;
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 8;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      endpointUUID = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
      v11 = 138412290;
      v12 = endpointUUID;
      v10 = "OOB Pairing is closed (endpointUUID %@)";
LABEL_22:
      _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_DEFAULT, v10, &v11, 0xCu);
    }
  }

  else
  {
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 8;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      endpointUUID = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
      v11 = 138412290;
      v12 = endpointUUID;
      v10 = "OOB Pairing is already closed (endpointUUID %@)";
      goto LABEL_22;
    }
  }
}

- (BOOL)supportsType:(int)type
{
  if (type > 1 || ![(NSMutableData *)self->_deviceSupportedTypes length])
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = *([(NSMutableData *)self->_deviceSupportedTypes bytes]+ v5);
    v7 = v6 == type;
    if (v6 == type)
    {
      break;
    }

    ++v5;
  }

  while ([(NSMutableData *)self->_deviceSupportedTypes length]> v5);
  return v7;
}

- (BOOL)_handleIncomingOOBPairingInfoData:(int)data
{
  v109 = *MEMORY[0x277D85DE8];
  v4 = 0x2812FE000uLL;
  if (gLogObjects)
  {
    v5 = gNumLogObjects <= 7;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (data)
  {
    if (data == 1)
    {
      if (v6)
      {
        v9 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v9 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [ACCTransportIOAccessoryOOBPairing _handleIncomingOOBPairingInfoData:?];
      }

      if (self->super._ioConnect)
      {
        v13 = 0;
        v14 = MEMORY[0x277D86220];
        while (1)
        {
          self->_oobPairingDataReadBufferLength = 1024;
          v15 = gLogObjects;
          v16 = *(v4 + 3704);
          if (!gLogObjects || v16 < 8)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v107 = v15;
              *&v107[8] = 1024;
              *&v107[10] = v16;
              _os_log_error_impl(&dword_233656000, v14, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v18 = v14;
            v19 = v14;
          }

          else
          {
            v19 = *(gLogObjects + 56);
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            oobPairingDataReadBufferLength = self->_oobPairingDataReadBufferLength;
            endpointUUID = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
            ioConnect = self->super._ioConnect;
            *buf = 134218498;
            *v107 = oobPairingDataReadBufferLength;
            *&v107[8] = 2112;
            *&v107[10] = endpointUUID;
            *&v107[18] = 1024;
            *&v107[20] = ioConnect;
            _os_log_debug_impl(&dword_233656000, v19, OS_LOG_TYPE_DEBUG, "read upto %zu bytes for OOB Pairing Data (endpointUUID %@), call IOAccessoryOOBPairingInterfaceGetPairingData, ioConnect %d", buf, 0x1Cu);
          }

          PairingData = IOAccessoryOOBPairingInterfaceGetPairingData();
          v21 = gLogObjects;
          v22 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 8)
          {
            v23 = *(gLogObjects + 56);
          }

          else
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v107 = v21;
              *&v107[8] = 1024;
              *&v107[10] = v22;
              _os_log_error_impl(&dword_233656000, v14, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v24 = v14;
            v23 = v14;
          }

          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v40 = self->_oobPairingDataReadBufferLength;
            endpointUUID2 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
            *buf = 134218498;
            *v107 = v40;
            *&v107[8] = 2112;
            *&v107[10] = endpointUUID2;
            *&v107[18] = 1024;
            *&v107[20] = PairingData;
            _os_log_debug_impl(&dword_233656000, v23, OS_LOG_TYPE_DEBUG, "read %zu bytes for OOB Pairing Data (endpointUUID %@), result = 0x%X", buf, 0x1Cu);
          }

          if (PairingData)
          {
            break;
          }

          v25 = self->_oobPairingDataReadBufferLength;
          if (v25 && ([(ACCTransportIOAccessoryOOBPairing *)self delegate], (v26 = objc_claimAutoreleasedReturnValue()) != 0) && (v27 = v26, [(ACCTransportIOAccessoryOOBPairing *)self delegate], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_opt_respondsToSelector(), v28, v27, (v29 & 1) != 0))
          {
            *buf = 5;
            activeType = self->_activeType;
            v30 = objc_alloc_init(MEMORY[0x277CBEB28]);
            [v30 appendBytes:buf length:2];
            [v30 appendBytes:&activeType length:2];
            [v30 appendBytes:self->_oobPairingDataReadBuffer length:self->_oobPairingDataReadBufferLength];
            delegate = [(ACCTransportIOAccessoryOOBPairing *)self delegate];
            endpointUUID3 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
            [delegate IOAccessoryOOBPairingDataArrived:v30 endpointUUID:endpointUUID3];
          }

          else
          {
            v33 = gLogObjects;
            v34 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 8)
            {
              v35 = *(gLogObjects + 56);
            }

            else
            {
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *v107 = v33;
                *&v107[8] = 1024;
                *&v107[10] = v34;
                _os_log_error_impl(&dword_233656000, v14, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v36 = v14;
              v35 = v14;
            }

            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v42 = self->_oobPairingDataReadBufferLength;
              endpointUUID4 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
              parentConnectionUUID = [(ACCTransportIOAccessoryOOBPairing *)self parentConnectionUUID];
              *buf = 134218754;
              *v107 = v42;
              *&v107[8] = 2112;
              *&v107[10] = endpointUUID4;
              *&v107[18] = 2112;
              *&v107[20] = parentConnectionUUID;
              *&v107[28] = 1024;
              v108 = 0;
              _os_log_error_impl(&dword_233656000, v35, OS_LOG_TYPE_ERROR, "received OOB Pairing Data (%zu) but delegate doesn't handle it or no data, endpointUUID %@, parentUUID %@, result %d", buf, 0x26u);
            }
          }

          v13 = 1;
          v4 = 0x2812FE000;
          if (v25 != 1024)
          {
            return v13;
          }
        }

        v96 = gLogObjects;
        v97 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 8)
        {
          v94 = *(gLogObjects + 56);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v107 = v96;
            *&v107[8] = 1024;
            *&v107[10] = v97;
            _os_log_error_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v94 = MEMORY[0x277D86220];
          v103 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          endpointUUID5 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
          parentConnectionUUID2 = [(ACCTransportIOAccessoryOOBPairing *)self parentConnectionUUID];
          *buf = 138412802;
          *v107 = endpointUUID5;
          *&v107[8] = 2112;
          *&v107[10] = parentConnectionUUID2;
          *&v107[18] = 1024;
          *&v107[20] = PairingData;
          v101 = "error reading OOB Pairing Data, endpointUUID %@, parentUUID %@, result %d";
LABEL_157:
          _os_log_error_impl(&dword_233656000, v94, OS_LOG_TYPE_ERROR, v101, buf, 0x1Cu);
        }

        goto LABEL_154;
      }

      if (gLogObjects && gNumLogObjects >= 8)
      {
        v95 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v95 = MEMORY[0x277D86220];
        v102 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        [(ACCTransportIOAccessoryOOBPairing *)&self->super._ioConnect _handleIncomingOOBPairingInfoData:v95];
      }
    }

    else
    {
      if (data == 2)
      {
        if (v6)
        {
          v8 = *(gLogObjects + 56);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v8 = MEMORY[0x277D86220];
          v85 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [ACCTransportIOAccessoryOOBPairing _handleIncomingOOBPairingInfoData:?];
        }

        [(ACCTransportIOAccessoryBase *)self ioService];
        ActivePairingType = IOAccessoryOOBPairingInterfaceGetActivePairingType();
        if (gLogObjects && gNumLogObjects >= 8)
        {
          v87 = *(gLogObjects + 56);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v87 = MEMORY[0x277D86220];
          v88 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
        {
          [ACCTransportIOAccessoryOOBPairing _handleIncomingOOBPairingInfoData:?];
        }

        self->_activeType = [(ACCTransportIOAccessoryOOBPairing *)self _convertOOBPairingTypeFromIOAccessory:ActivePairingType];
        return 1;
      }

      if (v6)
      {
        v11 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v11 = MEMORY[0x277D86220];
        v89 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        endpointUUID6 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
        parentConnectionUUID3 = [(ACCTransportIOAccessoryOOBPairing *)self parentConnectionUUID];
        *buf = 67109634;
        *v107 = data;
        *&v107[4] = 2112;
        *&v107[6] = endpointUUID6;
        *&v107[14] = 2112;
        *&v107[16] = parentConnectionUUID3;
        _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "Wrong OOB Pairing data type (%d), endpointUUID %@, parentUUID %@", buf, 0x1Cu);
      }
    }

    return 0;
  }

  if (v6)
  {
    v10 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v10 = MEMORY[0x277D86220];
    v45 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessoryOOBPairing _handleIncomingOOBPairingInfoData:?];
  }

  v13 = 0;
  v46 = MEMORY[0x277D86220];
  while (1)
  {
    self->_oobPairingInfoReadBufferLength = 1024;
    v47 = gLogObjects;
    v48 = *(v4 + 3704);
    if (gLogObjects)
    {
      v49 = v48 < 8;
    }

    else
    {
      v49 = 1;
    }

    if (v49)
    {
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v107 = v47;
        *&v107[8] = 1024;
        *&v107[10] = v48;
        _os_log_error_impl(&dword_233656000, v46, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v50 = v46;
      v51 = v46;
    }

    else
    {
      v51 = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      oobPairingInfoReadBufferLength = self->_oobPairingInfoReadBufferLength;
      endpointUUID7 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
      v75 = self->super._ioConnect;
      *buf = 134218498;
      *v107 = oobPairingInfoReadBufferLength;
      *&v107[8] = 2112;
      *&v107[10] = endpointUUID7;
      *&v107[18] = 1024;
      *&v107[20] = v75;
      _os_log_debug_impl(&dword_233656000, v51, OS_LOG_TYPE_DEBUG, "read upto %zu bytes for OOB Pairing Info (endpointUUID %@), call IOAccessoryOOBPairingInterfaceGetPairingInfo, ioConnect %d", buf, 0x1Cu);
    }

    if (!self->super._ioConnect)
    {
      v56 = gLogObjects;
      v57 = *(v4 + 3704);
      if (gLogObjects && v57 >= 8)
      {
        v58 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v107 = v56;
          *&v107[8] = 1024;
          *&v107[10] = v57;
          _os_log_error_impl(&dword_233656000, v46, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v72 = v46;
        v58 = v46;
      }

      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v81 = self->super._ioConnect;
        endpointUUID8 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
        parentConnectionUUID4 = [(ACCTransportIOAccessoryOOBPairing *)self parentConnectionUUID];
        ioService = [(ACCTransportIOAccessoryBase *)self ioService];
        *buf = 67109890;
        *v107 = v81;
        *&v107[4] = 2112;
        *&v107[6] = endpointUUID8;
        *&v107[14] = 2112;
        *&v107[16] = parentConnectionUUID4;
        *&v107[24] = 1024;
        *&v107[26] = ioService;
        _os_log_error_impl(&dword_233656000, v58, OS_LOG_TYPE_ERROR, "ERROR: No _ioConnect(%d) while trying to get OOB Pairing Info, endpointUUID %@, parentUUID %@, ioService %d", buf, 0x22u);

        v4 = 0x2812FE000;
      }

      v60 = 1024;
      goto LABEL_107;
    }

    PairingInfo = IOAccessoryOOBPairingInterfaceGetPairingInfo();
    v53 = gLogObjects;
    v54 = *(v4 + 3704);
    if (gLogObjects && v54 >= 8)
    {
      v55 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v107 = v53;
        *&v107[8] = 1024;
        *&v107[10] = v54;
        _os_log_error_impl(&dword_233656000, v46, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v59 = v46;
      v55 = v46;
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      v76 = self->_oobPairingInfoReadBufferLength;
      endpointUUID9 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
      *buf = 134218498;
      *v107 = v76;
      *&v107[8] = 2112;
      *&v107[10] = endpointUUID9;
      *&v107[18] = 1024;
      *&v107[20] = PairingInfo;
      _os_log_debug_impl(&dword_233656000, v55, OS_LOG_TYPE_DEBUG, "read %zu bytes for OOB Pairing Info (endpointUUID %@), result = 0x%X", buf, 0x1Cu);

      v4 = 0x2812FE000;
    }

    if (PairingInfo)
    {
      break;
    }

    v60 = self->_oobPairingInfoReadBufferLength;
    delegate2 = [(ACCTransportIOAccessoryOOBPairing *)self delegate];
    if (delegate2 && (v62 = delegate2, [(ACCTransportIOAccessoryOOBPairing *)self delegate], v63 = objc_claimAutoreleasedReturnValue(), v64 = objc_opt_respondsToSelector(), v63, v4 = 0x2812FE000, v62, (v64 & 1) != 0))
    {
      *buf = 4;
      activeType = self->_activeType;
      v65 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [v65 appendBytes:buf length:2];
      [v65 appendBytes:&activeType length:2];
      [v65 appendBytes:self->_oobPairingInfoReadBuffer length:self->_oobPairingInfoReadBufferLength];
      delegate3 = [(ACCTransportIOAccessoryOOBPairing *)self delegate];
      endpointUUID10 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
      [delegate3 IOAccessoryOOBPairingInfoArrived:v65 endpointUUID:endpointUUID10];

      v4 = 0x2812FE000;
    }

    else
    {
      v68 = gLogObjects;
      v69 = *(v4 + 3704);
      if (gLogObjects && v69 >= 8)
      {
        v70 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v107 = v68;
          *&v107[8] = 1024;
          *&v107[10] = v69;
          _os_log_error_impl(&dword_233656000, v46, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v71 = v46;
        v70 = v46;
      }

      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        v78 = self->_oobPairingDataReadBufferLength;
        endpointUUID11 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
        parentConnectionUUID5 = [(ACCTransportIOAccessoryOOBPairing *)self parentConnectionUUID];
        *buf = 134218754;
        *v107 = v78;
        *&v107[8] = 2112;
        *&v107[10] = endpointUUID11;
        *&v107[18] = 2112;
        *&v107[20] = parentConnectionUUID5;
        *&v107[28] = 1024;
        v108 = 0;
        _os_log_error_impl(&dword_233656000, v70, OS_LOG_TYPE_ERROR, "received OOB Pairing Info (%zu) but delegate doesn't handle it, endpointUUID %@, parentUUID %@, result = %02x", buf, 0x26u);

        v4 = 0x2812FE000;
      }
    }

    v13 = 1;
LABEL_107:
    if (v60 != 1024)
    {
      return v13;
    }
  }

  v92 = gLogObjects;
  v93 = *(v4 + 3704);
  if (gLogObjects && v93 >= 8)
  {
    v94 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v107 = v92;
      *&v107[8] = 1024;
      *&v107[10] = v93;
      _os_log_error_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }

    v94 = MEMORY[0x277D86220];
    v98 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
  {
    endpointUUID5 = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
    parentConnectionUUID2 = [(ACCTransportIOAccessoryOOBPairing *)self parentConnectionUUID];
    *buf = 138412802;
    *v107 = endpointUUID5;
    *&v107[8] = 2112;
    *&v107[10] = parentConnectionUUID2;
    *&v107[18] = 1024;
    *&v107[20] = PairingInfo;
    v101 = "error reading OOB Pairing Info, endpointUUID %@, parentUUID %@, result = %02x";
    goto LABEL_157;
  }

LABEL_154:

  return v13;
}

- (void)_registerReadCallback
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = self;
  OUTLINED_FUNCTION_4(&dword_233656000, a2, a3, "ERROR registering OOBPairingReceiveCallback: 0x%x", a5, a6, a7, a8, v8);
}

- (void)_checkAccInfo
{
  v71 = *MEMORY[0x277D85DE8];
  [(ACCTransportIOAccessoryBase *)self ioService];
  v3 = IOAccessoryOOBPairingInterfaceCopyDeviceVendorName();
  deviceVendorName = self->_deviceVendorName;
  self->_deviceVendorName = v3;

  if (!self->_deviceVendorName)
  {
    self->_deviceVendorName = @"Unknown";
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  v5 = IOAccessoryOOBPairingInterfaceCopyDeviceName();
  deviceName = self->_deviceName;
  self->_deviceName = v5;

  if (!self->_deviceName)
  {
    self->_deviceName = @"Unknown";
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  v7 = IOAccessoryOOBPairingInterfaceCopyDeviceModelNumber();
  deviceModelNumber = self->_deviceModelNumber;
  self->_deviceModelNumber = v7;

  if (!self->_deviceModelNumber)
  {
    self->_deviceModelNumber = @"Unknown";
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  v9 = IOAccessoryOOBPairingInterfaceCopyDeviceHardwareRevision();
  deviceHardwareRevision = self->_deviceHardwareRevision;
  self->_deviceHardwareRevision = v9;

  if (!self->_deviceHardwareRevision)
  {
    self->_deviceHardwareRevision = @"Unknown";
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  v11 = IOAccessoryOOBPairingInterfaceCopyDeviceFirmwareRevision();
  deviceFirmwareRevision = self->_deviceFirmwareRevision;
  self->_deviceFirmwareRevision = v11;

  if (!self->_deviceFirmwareRevision)
  {
    self->_deviceFirmwareRevision = @"Unknown";
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  v13 = IOAccessoryOOBPairingInterfaceCopyDeviceSerialNumber();
  deviceSerialNumber = self->_deviceSerialNumber;
  self->_deviceSerialNumber = v13;

  if (!self->_deviceSerialNumber)
  {
    self->_deviceSerialNumber = @"Unknown";
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  v15 = IOAccessoryOOBPairingInterfaceCopyDeviceDockType();
  deviceDockType = self->_deviceDockType;
  self->_deviceDockType = v15;

  if (!self->_deviceDockType)
  {
    self->_deviceDockType = @"Unknown";
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  SupportedPairingTypes = IOAccessoryOOBPairingInterfaceGetSupportedPairingTypes();
  deviceSupportedTypes = self->_deviceSupportedTypes;
  self->_deviceSupportedTypes = SupportedPairingTypes;

  if (!self->_deviceSupportedTypes)
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v20 = self->_deviceSupportedTypes;
    self->_deviceSupportedTypes = v19;
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  self->_activeType = [(ACCTransportIOAccessoryOOBPairing *)self _convertOOBPairingTypeFromIOAccessory:IOAccessoryOOBPairingInterfaceGetActivePairingType()];
  [(ACCTransportIOAccessoryBase *)self ioService];
  v21 = [MEMORY[0x277CCABB0] numberWithBool:IOAccessoryOOBPairingInterfaceSupports2Way() != 0];
  supports2way = self->_supports2way;
  self->_supports2way = v21;

  [(ACCTransportIOAccessoryBase *)self ioService];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOAccessoryOOBPairingInterfaceCopyDevicePlatformID()];
  devicePlatformID = self->_devicePlatformID;
  self->_devicePlatformID = v23;

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v25 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v25 = MEMORY[0x277D86220];
    v26 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    endpointUUID = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
    v29 = self->_deviceVendorName;
    v30 = self->_deviceName;
    v31 = self->_deviceModelNumber;
    v32 = self->_deviceHardwareRevision;
    v33 = self->_deviceFirmwareRevision;
    v34 = self->_deviceSerialNumber;
    v35 = self->_deviceDockType;
    v36 = self->_deviceSupportedTypes;
    activeType = self->_activeType;
    v38 = self->_supports2way;
    v39 = self->_devicePlatformID;
    *buf = 136318722;
    v42 = "[ACCTransportIOAccessoryOOBPairing _checkAccInfo]";
    v43 = 1024;
    v44 = 437;
    v45 = 1024;
    v46 = ioService;
    v47 = 2112;
    v48 = endpointUUID;
    v40 = endpointUUID;
    v49 = 2112;
    v50 = v29;
    v51 = 2112;
    v52 = v30;
    v53 = 2112;
    v54 = v31;
    v55 = 2112;
    v56 = v32;
    v57 = 2112;
    v58 = v33;
    v59 = 2112;
    v60 = v34;
    v61 = 2112;
    v62 = v35;
    v63 = 2112;
    v64 = v36;
    v65 = 1024;
    v66 = activeType;
    v67 = 2112;
    v68 = v38;
    v69 = 2112;
    v70 = v39;
    _os_log_impl(&dword_233656000, v25, OS_LOG_TYPE_INFO, "%s:%d ioService = %d, endpointUUID %@, vendorName %@, name %@, model %@, hwRev %@, fwRev %@, ser %@, dock %@, supported %@, active %d, 2way %@, platformID %@", buf, 0x8Cu);
  }
}

- (int)_convertOOBPairingTypeFromIOAccessory:(int)accessory
{
  if (accessory == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (accessory)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (BOOL)transmitData:(id)data
{
  v38 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 8;
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
    v7 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessoryOOBPairing transmitData:?];
  }

  if (!dataCopy)
  {
    goto LABEL_71;
  }

  bytes = [dataCopy bytes];
  v9 = [dataCopy length];
  v10 = v9;
  if (!bytes || (v11 = v9 - 4, v9 < 4))
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v15 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v15 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      endpointUUID = self->_endpointUUID;
      v34 = 134218242;
      *v35 = v10;
      *&v35[8] = 2112;
      *&v35[10] = endpointUUID;
      _os_log_impl(&dword_233656000, v15, OS_LOG_TYPE_DEFAULT, "ERROR: Not enough bytes (%lu) for message header for OOBPairing transmit, endpointUUID %@", &v34, 0x16u);
    }

    goto LABEL_70;
  }

  v12 = *bytes;
  if (v12 >= 2)
  {
    v13 = bytes[1];
    if (![(ACCTransportIOAccessoryOOBPairing *)self supportsType:bytes[1]])
    {
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v22 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v22 = MEMORY[0x277D86220];
        v25 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_61;
      }

      v26 = self->_endpointUUID;
      v34 = 67109378;
      *v35 = v13;
      *&v35[4] = 2112;
      *&v35[6] = v26;
      v27 = "ERROR: PairingType (%d) not supported for OOBPairing transmit, endpointUUID %@";
      goto LABEL_60;
    }
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v14 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v14 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v32 = self->_endpointUUID;
    ioConnect = self->super._ioConnect;
    v34 = 138413058;
    *v35 = v32;
    *&v35[8] = 1024;
    *&v35[10] = ioConnect;
    *&v35[14] = 1024;
    *&v35[16] = v12;
    v36 = 2048;
    v37 = v11;
    _os_log_debug_impl(&dword_233656000, v14, OS_LOG_TYPE_DEBUG, "OOBPairing: endpointUUID %@, ioConnect %d, transmitData: messageID %d, payloadLen %lu", &v34, 0x22u);
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v21 = IOAccessoryOOBPairingInterfaceSendPairingInfo();
LABEL_48:
      if (!v21)
      {
        goto LABEL_49;
      }

LABEL_62:
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v15 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v15 = MEMORY[0x277D86220];
        v30 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing transmitData:?];
      }

LABEL_70:

LABEL_71:
      v24 = 0;
      goto LABEL_72;
    }

    if (v12 == 3)
    {
      v21 = IOAccessoryOOBPairingInterfaceSendPairingData();
      goto LABEL_48;
    }

    if (gLogObjects && gNumLogObjects >= 8)
    {
      v22 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v22 = MEMORY[0x277D86220];
      v28 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
LABEL_61:

      goto LABEL_62;
    }

    v29 = self->_endpointUUID;
    v34 = 67109378;
    *v35 = v12;
    *&v35[4] = 2112;
    *&v35[6] = v29;
    v27 = "ERROR: Invalid messageID (%d) for OOBPairing transmit, endpointUUID %@";
LABEL_60:
    _os_log_impl(&dword_233656000, v22, OS_LOG_TYPE_DEFAULT, v27, &v34, 0x12u);
    goto LABEL_61;
  }

  delegate = [(ACCTransportIOAccessoryOOBPairing *)self delegate];
  if (v12)
  {
    v20 = [delegate IOAccessoryOOBPairingDataFinishedForEndpointUUID:self->_endpointUUID];
  }

  else
  {
    v20 = [delegate IOAccessoryOOBPairingDataStartedForEndpointUUID:self->_endpointUUID];
  }

  v23 = v20;

  if ((v23 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_49:
  v24 = 1;
LABEL_72:

  return v24;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = MEMORY[0x277CCACA8];
  endpointUUID = [(ACCTransportIOAccessoryOOBPairing *)self endpointUUID];
  v6 = [v4 stringWithFormat:@"OOBPairing %@\n", endpointUUID];
  [string appendFormat:@"%@", v6];

  v7 = MEMORY[0x277CCACA8];
  deviceVendorName = [(ACCTransportIOAccessoryOOBPairing *)self deviceVendorName];
  v9 = [v7 stringWithFormat:@"    deviceVendorName %@\n", deviceVendorName];
  [string appendFormat:@"%@", v9];

  v10 = MEMORY[0x277CCACA8];
  deviceName = [(ACCTransportIOAccessoryOOBPairing *)self deviceName];
  v12 = [v10 stringWithFormat:@"    deviceName %@\n", deviceName];
  [string appendFormat:@"%@", v12];

  v13 = MEMORY[0x277CCACA8];
  deviceModelNumber = [(ACCTransportIOAccessoryOOBPairing *)self deviceModelNumber];
  v15 = [v13 stringWithFormat:@"    deviceModelNumber %@\n", deviceModelNumber];
  [string appendFormat:@"%@", v15];

  v16 = MEMORY[0x277CCACA8];
  deviceHardwareRevision = [(ACCTransportIOAccessoryOOBPairing *)self deviceHardwareRevision];
  v18 = [v16 stringWithFormat:@"    deviceHardwareRevision %@\n", deviceHardwareRevision];
  [string appendFormat:@"%@", v18];

  v19 = MEMORY[0x277CCACA8];
  deviceFirmwareRevision = [(ACCTransportIOAccessoryOOBPairing *)self deviceFirmwareRevision];
  v21 = [v19 stringWithFormat:@"    deviceFirmwareRevision %@\n", deviceFirmwareRevision];
  [string appendFormat:@"%@", v21];

  v22 = MEMORY[0x277CCACA8];
  deviceSerialNumber = [(ACCTransportIOAccessoryOOBPairing *)self deviceSerialNumber];
  v24 = [v22 stringWithFormat:@"    deviceSerialNumber %@\n", deviceSerialNumber];
  [string appendFormat:@"%@", v24];

  v25 = MEMORY[0x277CCACA8];
  deviceDockType = [(ACCTransportIOAccessoryOOBPairing *)self deviceDockType];
  v27 = [v25 stringWithFormat:@"    deviceDockType %@\n", deviceDockType];
  [string appendFormat:@"%@", v27];

  v28 = MEMORY[0x277CCACA8];
  deviceUID = [(ACCTransportIOAccessoryOOBPairing *)self deviceUID];
  v30 = [v28 stringWithFormat:@"    deviceUID %@\n", deviceUID];
  [string appendFormat:@"%@", v30];

  v31 = MEMORY[0x277CCACA8];
  deviceSupportedTypes = [(ACCTransportIOAccessoryOOBPairing *)self deviceSupportedTypes];
  v33 = [v31 stringWithFormat:@"    deviceSupportedTypes %@\n", deviceSupportedTypes];
  [string appendFormat:@"%@", v33];

  v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"    activeType %d\n", -[ACCTransportIOAccessoryOOBPairing activeType](self, "activeType")];
  [string appendFormat:@"%@", v34];

  v35 = MEMORY[0x277CCACA8];
  supports2way = [(ACCTransportIOAccessoryOOBPairing *)self supports2way];
  v37 = [v35 stringWithFormat:@"    Supports2Way %@\n", supports2way];
  [string appendFormat:@"%@", v37];

  v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"    IOService %d\n", -[ACCTransportIOAccessoryBase ioService](self, "ioService")];
  [string appendFormat:@"%@", v38];

  return string;
}

- (NSString)deviceVendorName
{
  deviceVendorName = self->_deviceVendorName;
  if (!deviceVendorName || [(NSString *)deviceVendorName isEqualToString:@"Unknown"])
  {
    [(ACCTransportIOAccessoryBase *)self ioService];
    v4 = IOAccessoryOOBPairingInterfaceCopyDeviceVendorName();
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
    v4 = IOAccessoryOOBPairingInterfaceCopyDeviceName();
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
    v4 = IOAccessoryOOBPairingInterfaceCopyDeviceModelNumber();
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
    v4 = IOAccessoryOOBPairingInterfaceCopyDeviceHardwareRevision();
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
    v4 = IOAccessoryOOBPairingInterfaceCopyDeviceFirmwareRevision();
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
    v4 = IOAccessoryOOBPairingInterfaceCopyDeviceSerialNumber();
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
    v4 = IOAccessoryOOBPairingInterfaceCopyDeviceDockType();
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

- (NSString)deviceUID
{
  v21 = *MEMORY[0x277D85DE8];
  deviceUID = self->_deviceUID;
  if (deviceUID && ![(NSString *)deviceUID isEqualToString:@"Unknown"])
  {
    goto LABEL_26;
  }

  [(ACCTransportIOAccessoryBase *)self upstreamManagerService];
  v4 = IOAccessoryManagerCopyAccessoryDeviceUID();
  if (!v4)
  {
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 8;
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

      v11 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v11 = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "ERROR: IOAccessoryManagerCopyAccessoryDeviceUID failed", &v19, 2u);
    }

    goto LABEL_25;
  }

  v5 = self->_deviceUID;
  self->_deviceUID = v4;

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v6 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v6 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = self->_deviceUID;
    v19 = 138412290;
    v20 = v10;
    _os_log_impl(&dword_233656000, v6, OS_LOG_TYPE_INFO, "from IOAccessoryManagerCopyAccessoryDeviceUID, _deviceUID: %@", &v19, 0xCu);
  }

  if (!self->_deviceUID)
  {
LABEL_25:
    v12 = self->_deviceUID;
    self->_deviceUID = @"Unknown";
  }

LABEL_26:
  if (gLogObjects)
  {
    v13 = gNumLogObjects < 8;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v15 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  else
  {
    v15 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = self->_deviceUID;
    v19 = 138412290;
    v20 = v16;
    _os_log_impl(&dword_233656000, v15, OS_LOG_TYPE_INFO, "return _deviceUID: %@", &v19, 0xCu);
  }

  v17 = self->_deviceUID;

  return v17;
}

- (NSNumber)devicePlatformID
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_devicePlatformID)
  {
    [(ACCTransportIOAccessoryBase *)self ioService];
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOAccessoryOOBPairingInterfaceCopyDevicePlatformID()];
    devicePlatformID = self->_devicePlatformID;
    self->_devicePlatformID = v3;

    if (gLogObjects)
    {
      v5 = gNumLogObjects < 8;
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
      v7 = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = self->_devicePlatformID;
      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_INFO, "from IOAccessoryOOBPairingInterfaceCopyDevicePlatformID, _devicePlatformID: %@", &v15, 0xCu);
    }
  }

  if (gLogObjects)
  {
    v9 = gNumLogObjects < 8;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = self->_devicePlatformID;
    v15 = 138412290;
    v16 = v12;
    _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_INFO, "return _devicePlatformID: %@", &v15, 0xCu);
  }

  v13 = self->_devicePlatformID;

  return v13;
}

- (NSMutableData)deviceSupportedTypes
{
  deviceSupportedTypes = self->_deviceSupportedTypes;
  if (!deviceSupportedTypes)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v5 = self->_deviceSupportedTypes;
    self->_deviceSupportedTypes = v4;

    deviceSupportedTypes = self->_deviceSupportedTypes;
  }

  return deviceSupportedTypes;
}

- (NSNumber)supports2way
{
  supports2way = self->_supports2way;
  if (!supports2way)
  {
    [(ACCTransportIOAccessoryBase *)self ioService];
    v4 = [MEMORY[0x277CCABB0] numberWithBool:IOAccessoryOOBPairingInterfaceSupports2Way() != 0];
    v5 = self->_supports2way;
    self->_supports2way = v4;

    supports2way = self->_supports2way;
  }

  return supports2way;
}

- (ACCTransportIOAccessoryOOBPairingProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)parentConnectionUUID
{
  WeakRetained = objc_loadWeakRetained(&self->_parentConnectionUUID);

  return WeakRetained;
}

- (void)_handleIncomingOOBPairingInfoData:(void *)a1 .cold.2(void *a1)
{
  [a1 endpointUUID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() ioService];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)_handleIncomingOOBPairingInfoData:(NSObject *)a3 .cold.4(int *a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  [a2 endpointUUID];
  objc_claimAutoreleasedReturnValue();
  v7 = [OUTLINED_FUNCTION_5() parentConnectionUUID];
  v8[0] = 67109890;
  v8[1] = v6;
  v9 = 2112;
  v10 = v3;
  v11 = 2112;
  v12 = v7;
  v13 = 1024;
  v14 = [a2 ioService];
  _os_log_error_impl(&dword_233656000, a3, OS_LOG_TYPE_ERROR, "ERROR: No _ioConnect(%d) while trying to get OOB Pairing Data, endpointUUID %@, parentUUID %@, ioService %d", v8, 0x22u);
}

- (void)_handleIncomingOOBPairingInfoData:(void *)a1 .cold.6(void *a1)
{
  [a1 endpointUUID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() ioService];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)_handleIncomingOOBPairingInfoData:(void *)a1 .cold.8(void *a1)
{
  [a1 endpointUUID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() ioService];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)_handleIncomingOOBPairingInfoData:(void *)a1 .cold.10(void *a1)
{
  v6 = [a1 endpointUUID];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x18u);
}

- (void)transmitData:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 192);
  v5 = 138412802;
  v6 = v1;
  OUTLINED_FUNCTION_2();
  v7 = v2;
  v8 = 2112;
  v9 = v3;
  _os_log_debug_impl(&dword_233656000, v4, OS_LOG_TYPE_DEBUG, "OOBPairing: endpointUUID %@, ioConnect %d, transmitData: %@", &v5, 0x1Cu);
}

- (void)transmitData:(uint64_t)a1 .cold.8(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 192);
  v4 = 138412546;
  v5 = v1;
  OUTLINED_FUNCTION_2();
  v6 = v2;
  _os_log_error_impl(&dword_233656000, v3, OS_LOG_TYPE_ERROR, "ERROR: send OOB pairing data, endpointUUID %@, error 0x%X", &v4, 0x12u);
}

@end