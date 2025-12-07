@interface ACCTransportIOAccessoryConfigStream
- (ACCTransportIOAccessoryConfigStream)initWithDelegate:(id)delegate andIOService:(unsigned int)service;
- (ACCTransportIOAccessoryConfigStreamProtocol)delegate;
- (BOOL)IOAccessoryConfigStreamRequestGetPropertyForCategoryID:(unsigned __int16)d propertyID:(unsigned __int8)iD;
- (BOOL)IOAccessoryConfigStreamSetPropertyData:(id)data categoryID:(unsigned __int16)d propertyID:(unsigned __int8)iD;
- (BOOL)openServiceSession;
- (BOOL)transmitData:(id)data;
- (NSString)deviceFirmwareVersion;
- (NSString)deviceHardwareVersion;
- (NSString)deviceIdentifier;
- (NSString)deviceManufacturer;
- (NSString)deviceModel;
- (NSString)deviceName;
- (NSString)devicePPID;
- (NSString)deviceSerialNumber;
- (NSString)parentConnectionUUID;
- (id)_getCategories;
- (id)_getPropertyData:(unsigned __int8)data forCategory:(unsigned __int16)category;
- (id)_getStringProperty:(unsigned __int8)property forCategory:(unsigned __int16)category;
- (id)description;
- (void)_checkAccInfo;
- (void)_getCategories;
- (void)_registerForInterestNotifications;
- (void)closeServiceSession;
- (void)dealloc;
- (void)handlePropertyDataReceived;
@end

@implementation ACCTransportIOAccessoryConfigStream

- (ACCTransportIOAccessoryConfigStream)initWithDelegate:(id)delegate andIOService:(unsigned int)service
{
  v4 = *&service;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = ACCTransportIOAccessoryConfigStream;
  v7 = [(ACCTransportIOAccessoryBase *)&v17 initWithIOAccessoryClass:6 ioService:v4];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_parentConnectionUUID, 0);
    endpointUUID = v8->_endpointUUID;
    v8->_endpointUUID = 0;

    objc_storeWeak(&v8->_delegate, delegateCopy);
    v8->super._ioConnect = 0;
    v8->_categoriesAvailable = 0;
    v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    requestTimer = v8->_requestTimer;
    v8->_requestTimer = v10;

    v12 = v8->_requestTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __69__ACCTransportIOAccessoryConfigStream_initWithDelegate_andIOService___block_invoke;
    handler[3] = &unk_2789E8690;
    v13 = v8;
    v16 = v13;
    dispatch_source_set_event_handler(v12, handler);
    dispatch_source_set_timer(v8->_requestTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(v8->_requestTimer);
    [(ACCTransportIOAccessoryConfigStream *)v13 _registerForInterestNotifications];
    [(ACCTransportIOAccessoryConfigStream *)v13 _checkAccInfo];
  }

  return v8;
}

void __69__ACCTransportIOAccessoryConfigStream_initWithDelegate_andIOService___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 10;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 60);
    LODWORD(v5) = *(v5 + 58);
    v11 = 67109376;
    v12 = v6;
    LOWORD(v13[0]) = 1024;
    *(v13 + 2) = v5;
    _os_log_impl(&dword_233656000, v4, OS_LOG_TYPE_DEFAULT, "ConfigStream request timed out! categoryID 0x%x, propertyID %u", &v11, 0xEu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  if (WeakRetained)
  {
    LOWORD(v11) = 6;
    v8 = *(a1 + 32);
    HIWORD(v11) = *(v8 + 60);
    v12 = *(v8 + 58);
    v13[0] = -536870186;
    v9 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [v9 appendBytes:&v11 length:12];
    v10 = objc_loadWeakRetained((*(a1 + 32) + 64));
    [v10 IOAccessoryConfigStreamMessageArrived:v9 endpointUUID:*(*(a1 + 32) + 136)];
  }

  *(*(a1 + 32) + 57) = 0;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 10;
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
    v5 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "deallocing ConfigStream %d", buf, 8u);
  }

  dispatch_source_cancel(self->_requestTimer);
  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_parentConnectionUUID, 0);
  endpointUUID = self->_endpointUUID;
  self->_endpointUUID = 0;

  deviceIdentifier = self->_deviceIdentifier;
  self->_deviceIdentifier = 0;

  deviceName = self->_deviceName;
  self->_deviceName = 0;

  deviceManufacturer = self->_deviceManufacturer;
  self->_deviceManufacturer = 0;

  deviceModel = self->_deviceModel;
  self->_deviceModel = 0;

  deviceHardwareVersion = self->_deviceHardwareVersion;
  self->_deviceHardwareVersion = 0;

  deviceFirmwareVersion = self->_deviceFirmwareVersion;
  self->_deviceFirmwareVersion = 0;

  deviceSerialNumber = self->_deviceSerialNumber;
  self->_deviceSerialNumber = 0;

  v14.receiver = self;
  v14.super_class = ACCTransportIOAccessoryConfigStream;
  [(ACCTransportIOAccessoryBase *)&v14 dealloc];
}

- (BOOL)openServiceSession
{
  v27 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 10;
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
    v5 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    endpointUUID = [(ACCTransportIOAccessoryConfigStream *)self endpointUUID];
    v25 = 67109378;
    *v26 = ioService;
    *&v26[4] = 2112;
    *&v26[6] = endpointUUID;
    _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "ConfigStream openServiceSession, ioService = %d, endpointUUID %@", &v25, 0x12u);
  }

  if (self->super._ioConnect)
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v8 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    endpointUUID2 = [(ACCTransportIOAccessoryConfigStream *)self endpointUUID];
    v25 = 138412290;
    *v26 = endpointUUID2;
    v16 = "ConfigStream is already open (endpointUUID %@)";
    v17 = v8;
    v18 = 12;
LABEL_29:
    _os_log_impl(&dword_233656000, v17, OS_LOG_TYPE_DEFAULT, v16, &v25, v18);

LABEL_30:
    v19 = 1;
    goto LABEL_39;
  }

  ioService2 = [(ACCTransportIOAccessoryBase *)self ioService];
  v10 = IOServiceOpen(ioService2, *MEMORY[0x277D85F48], 0, &self->super._ioConnect);
  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 9;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v10)
  {
    if (v12)
    {
      v8 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v23 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    ioService3 = [(ACCTransportIOAccessoryBase *)self ioService];
    endpointUUID2 = [(ACCTransportIOAccessoryConfigStream *)self endpointUUID];
    v25 = 67109634;
    *v26 = ioService3;
    *&v26[4] = 1024;
    *&v26[6] = 0;
    *&v26[10] = 2112;
    *&v26[12] = endpointUUID2;
    v16 = "ConfigStream for self.ioService %d is open, result = 0x%X (endpointUUID %@)";
    v17 = v8;
    v18 = 24;
    goto LABEL_29;
  }

  v13 = v10;
  if (v12)
  {
    v8 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v8 = MEMORY[0x277D86220];
    v20 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    endpointUUID3 = [(ACCTransportIOAccessoryConfigStream *)self endpointUUID];
    v25 = 67109378;
    *v26 = v13;
    *&v26[4] = 2112;
    *&v26[6] = endpointUUID3;
    _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_DEFAULT, "ERROR: ConfigStream open failed! result %xh (endpointUUID %@)", &v25, 0x12u);
  }

  v19 = 0;
LABEL_39:

  return v19;
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
      v4 = gNumLogObjects < 10;
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
      v8 = *(gLogObjects + 72);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      endpointUUID = [(ACCTransportIOAccessoryConfigStream *)self endpointUUID];
      v11 = 138412290;
      v12 = endpointUUID;
      v10 = "ConfigStream is closed (endpointUUID %@)";
LABEL_22:
      _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_DEFAULT, v10, &v11, 0xCu);
    }
  }

  else
  {
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 10;
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
      v8 = *(gLogObjects + 72);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      endpointUUID = [(ACCTransportIOAccessoryConfigStream *)self endpointUUID];
      v11 = 138412290;
      v12 = endpointUUID;
      v10 = "ConfigStream is already closed (endpointUUID %@)";
      goto LABEL_22;
    }
  }
}

- (id)_getCategories
{
  v91 = *MEMORY[0x277D85DE8];
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v51 = 8;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 10;
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
    v5 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportIOAccessoryConfigStream *)self _getCategories];
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  Categories = IOAccessoryConfigStreamInterfaceGetCategories();
  if (gLogObjects && gNumLogObjects >= 10)
  {
    v7 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136317698;
    v53 = "[ACCTransportIOAccessoryConfigStream _getCategories]";
    v54 = 1024;
    *v55 = v51;
    *&v55[4] = 2048;
    *&v55[6] = v87;
    v56 = 2048;
    *v57 = *(&v87 + 1);
    *&v57[8] = 2048;
    *&v57[10] = v88;
    *&v57[18] = 2048;
    *&v57[20] = *(&v88 + 1);
    *&v57[28] = 2048;
    *&v57[30] = v89;
    *&v57[38] = 2048;
    *&v57[40] = *(&v89 + 1);
    *&v57[48] = 2048;
    *&v57[50] = v90;
    *&v57[58] = 2048;
    *&v57[60] = *(&v90 + 1);
    *&v57[68] = 1024;
    *&v57[70] = Categories;
    _os_log_debug_impl(&dword_233656000, v7, OS_LOG_TYPE_DEBUG, "%s: after GetCategories: categoryIDsCount %u. [%llx %llx %llx %llx %llx %llx %llx %llx], ret %x \n", buf, 0x68u);
  }

  if (Categories)
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v9 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v33 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      deviceIdentifier = self->_deviceIdentifier;
      *buf = 138412546;
      v53 = deviceIdentifier;
      v54 = 1024;
      *v55 = Categories;
      _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "Error retrieving categories for deviceIdentifier %@, ret %x \n", buf, 0x12u);
    }

LABEL_67:
    v32 = 0;
  }

  else
  {
    for (i = 0; i < v51; ++i)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&v87 + i)];
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v2 setObject:v12 forKey:v11];
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = [v2 allKeys];
    v13 = [obj countByEnumeratingWithState:&v47 objects:v86 count:16];
    if (v13)
    {
      v15 = v13;
      v45 = *v48;
      *&v14 = 134218240;
      v42 = v14;
      v44 = v2;
      while (2)
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v48 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v47 + 1) + 8 * j);
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          [(ACCTransportIOAccessoryBase *)self ioService];
          [v17 unsignedIntValue];
          CategoryProperties = IOAccessoryConfigStreamInterfaceGetCategoryProperties();
          v19 = CategoryProperties;
          v20 = gLogObjects;
          v21 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 10)
          {
            v22 = *(gLogObjects + 72);
          }

          else
          {
            v23 = CategoryProperties;
            v24 = v15;
            v25 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = v42;
              v53 = v20;
              v54 = 1024;
              *v55 = v21;
              _os_log_error_impl(&dword_233656000, v25, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v26 = v25;
            v22 = v25;
            v15 = v24;
            v19 = v23;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v30 = self->_deviceIdentifier;
            unsignedIntValue = [v17 unsignedIntValue];
            *buf = 136320258;
            v53 = "[ACCTransportIOAccessoryConfigStream _getCategories]";
            v54 = 2112;
            *v55 = v30;
            *&v55[8] = 1024;
            *&v55[10] = unsignedIntValue;
            v56 = 1024;
            *v57 = 16;
            *&v57[4] = 2048;
            *&v57[6] = v78;
            *&v57[14] = 2048;
            *&v57[16] = *(&v78 + 1);
            *&v57[24] = 2048;
            *&v57[26] = v79;
            *&v57[34] = 2048;
            *&v57[36] = *(&v79 + 1);
            *&v57[44] = 2048;
            *&v57[46] = v80;
            *&v57[54] = 2048;
            *&v57[56] = *(&v80 + 1);
            *&v57[64] = 2048;
            *&v57[66] = v81;
            v58 = 2048;
            v59 = *(&v81 + 1);
            v60 = 2048;
            v61 = v82;
            v62 = 2048;
            v63 = *(&v82 + 1);
            v64 = 2048;
            v65 = v83;
            v66 = 2048;
            v67 = *(&v83 + 1);
            v68 = 2048;
            v69 = v84;
            v70 = 2048;
            v71 = *(&v84 + 1);
            v72 = 2048;
            v73 = v85;
            v74 = 2048;
            v75 = *(&v85 + 1);
            v76 = 1024;
            v77 = v19;
            _os_log_debug_impl(&dword_233656000, v22, OS_LOG_TYPE_DEBUG, "%s: after GetCategoryProperties: deviceIdentifier %@, categoryID %04x, propertyIDsCount %u. [%llx %llx %llx %llx %llx %llx %llx %llx %llx %llx %llx %llx %llx %llx %llx %llx], ret %x \n", buf, 0xC8u);
          }

          if (v19)
          {
            if (gLogObjects && gNumLogObjects >= 10)
            {
              v35 = *(gLogObjects + 72);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [ACCTransportIOAccessoryOOBPairing dealloc];
              }

              v35 = MEMORY[0x277D86220];
              v36 = MEMORY[0x277D86220];
            }

            v2 = v44;
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v37 = self->_deviceIdentifier;
              unsignedIntValue2 = [v17 unsignedIntValue];
              *buf = 138412802;
              v53 = v37;
              v54 = 1024;
              *v55 = unsignedIntValue2;
              *&v55[4] = 1024;
              *&v55[6] = v19;
              _os_log_impl(&dword_233656000, v35, OS_LOG_TYPE_DEFAULT, "Error retrieving properties for deviceIdentifier %@, categoryID %04x, ret %x \n", buf, 0x18u);
            }

            if (gLogObjects && gNumLogObjects > 9)
            {
              v9 = *(gLogObjects + 72);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [ACCTransportIOAccessoryOOBPairing dealloc];
              }

              v9 = MEMORY[0x277D86220];
              v39 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              [ACCTransportIOAccessoryConfigStream _getCategories];
            }

            goto LABEL_67;
          }

          v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
          for (k = 0; k < 0x10; ++k)
          {
            v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&v78 + k)];
            [v27 addObject:v29];
          }

          v2 = v44;
          [v44 setObject:v27 forKey:v17];
        }

        v15 = [obj countByEnumeratingWithState:&v47 objects:v86 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v32 = [v2 copy];
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v9 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v41 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessoryConfigStream _getCategories];
    }
  }

  return v32;
}

- (id)_getPropertyData:(unsigned __int8)data forCategory:(unsigned __int16)category
{
  categoryCopy = category;
  dataCopy = data;
  v30 = *MEMORY[0x277D85DE8];
  memset(__b, 170, sizeof(__b));
  [(ACCTransportIOAccessoryBase *)self ioService];
  Property = IOAccessoryConfigStreamInterfaceGetProperty();
  if (Property)
  {
    v8 = Property;
    if (gLogObjects)
    {
      v9 = gNumLogObjects < 10;
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

      v12 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *(gLogObjects + 72);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      deviceIdentifier = self->_deviceIdentifier;
      *buf = 136316162;
      v19 = "[ACCTransportIOAccessoryConfigStream _getPropertyData:forCategory:]";
      v20 = 2112;
      v21 = deviceIdentifier;
      v22 = 1024;
      v23 = categoryCopy;
      v24 = 1024;
      v25 = dataCopy;
      v26 = 1024;
      LODWORD(v27) = v8;
      _os_log_debug_impl(&dword_233656000, v12, OS_LOG_TYPE_DEBUG, "%s: Failed to got property data: device %@, categoryID 0x%04x, propertyID 0x%02x, ret %x \n", buf, 0x28u);
    }

    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:__b length:?];
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v12 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v16 = self->_deviceIdentifier;
      *buf = 136316418;
      v19 = "[ACCTransportIOAccessoryConfigStream _getPropertyData:forCategory:]";
      v20 = 2112;
      v21 = v16;
      v22 = 1024;
      v23 = categoryCopy;
      v24 = 1024;
      v25 = dataCopy;
      v26 = 2048;
      v27 = 1024;
      v28 = 2112;
      v29 = v11;
      _os_log_debug_impl(&dword_233656000, v12, OS_LOG_TYPE_DEBUG, "%s: Got property data: device %@, categoryID 0x%04x, propertyID 0x%02x, dataLen %zu, result %@ \n", buf, 0x36u);
    }
  }

  return v11;
}

- (id)_getStringProperty:(unsigned __int8)property forCategory:(unsigned __int16)category
{
  categoryCopy = category;
  propertyCopy = property;
  v32 = *MEMORY[0x277D85DE8];
  memset(__b, 170, sizeof(__b));
  [(ACCTransportIOAccessoryBase *)self ioService];
  Property = IOAccessoryConfigStreamInterfaceGetProperty();
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 10;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    deviceIdentifier = self->_deviceIdentifier;
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:__b length:1024];
    *buf = 136316674;
    v23 = "[ACCTransportIOAccessoryConfigStream _getStringProperty:forCategory:]";
    v24 = 2112;
    v25 = deviceIdentifier;
    v26 = 1024;
    v27 = categoryCopy;
    v28 = 1024;
    v29 = propertyCopy;
    v30 = 1024;
    *v31 = Property;
    *&v31[4] = 2048;
    *&v31[6] = 1024;
    *&v31[14] = 2112;
    *&v31[16] = v16;
    v17 = v16;
    _os_log_debug_impl(&dword_233656000, v10, OS_LOG_TYPE_DEBUG, "%s: device %@, categoryID 0x%04x, propertyID 0x%02x, ret %x, dataLen %zu, data = %@ \n", buf, 0x3Cu);
  }

  if (Property)
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v11 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v18 = self->_deviceIdentifier;
      *buf = 136316162;
      v23 = "[ACCTransportIOAccessoryConfigStream _getStringProperty:forCategory:]";
      v24 = 2112;
      v25 = v18;
      v26 = 1024;
      v27 = categoryCopy;
      v28 = 1024;
      v29 = propertyCopy;
      v30 = 1024;
      *v31 = Property;
      _os_log_debug_impl(&dword_233656000, v11, OS_LOG_TYPE_DEBUG, "%s: Failed to get string property: device %@, categoryID 0x%04x, propertyID 0x%02x, ret %x \n", buf, 0x28u);
    }

    v12 = 0;
  }

  else
  {
    __b[1024] = 0;
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:__b];
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v11 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v19 = self->_deviceIdentifier;
      *buf = 136316418;
      v23 = "[ACCTransportIOAccessoryConfigStream _getStringProperty:forCategory:]";
      v24 = 2112;
      v25 = v19;
      v26 = 1024;
      v27 = categoryCopy;
      v28 = 1024;
      v29 = propertyCopy;
      v30 = 2048;
      *v31 = 1024;
      *&v31[8] = 2112;
      *&v31[10] = v12;
      _os_log_debug_impl(&dword_233656000, v11, OS_LOG_TYPE_DEBUG, "%s: Got string property: device %@, categoryID 0x%04x, propertyID 0x%02x, dataLen %zu, result %@ \n", buf, 0x36u);
    }
  }

  return v12;
}

- (void)_checkAccInfo
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_233656000, v0, OS_LOG_TYPE_DEBUG, "%s: _deviceIdentifier %@ \n", v1, 0x16u);
}

- (void)_registerForInterestNotifications
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_error_impl(&dword_233656000, a2, OS_LOG_TYPE_ERROR, "error 0X%X  IOServiceAddInterestNotification", v2, 8u);
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = MEMORY[0x277CCACA8];
  endpointUUID = [(ACCTransportIOAccessoryConfigStream *)self endpointUUID];
  v6 = [v4 stringWithFormat:@"ConfigStream %@\n", endpointUUID];
  [string appendFormat:@"%@", v6];

  v7 = MEMORY[0x277CCACA8];
  deviceIdentifier = [(ACCTransportIOAccessoryConfigStream *)self deviceIdentifier];
  v9 = [v7 stringWithFormat:@"    deviceIdentifier %@\n", deviceIdentifier];
  [string appendFormat:@"%@", v9];

  v10 = MEMORY[0x277CCACA8];
  deviceName = [(ACCTransportIOAccessoryConfigStream *)self deviceName];
  v12 = [v10 stringWithFormat:@"    deviceName %@\n", deviceName];
  [string appendFormat:@"%@", v12];

  v13 = MEMORY[0x277CCACA8];
  deviceManufacturer = [(ACCTransportIOAccessoryConfigStream *)self deviceManufacturer];
  v15 = [v13 stringWithFormat:@"    deviceManufacturer %@\n", deviceManufacturer];
  [string appendFormat:@"%@", v15];

  v16 = MEMORY[0x277CCACA8];
  deviceModel = [(ACCTransportIOAccessoryConfigStream *)self deviceModel];
  v18 = [v16 stringWithFormat:@"    deviceModel %@\n", deviceModel];
  [string appendFormat:@"%@", v18];

  v19 = MEMORY[0x277CCACA8];
  deviceHardwareVersion = [(ACCTransportIOAccessoryConfigStream *)self deviceHardwareVersion];
  v21 = [v19 stringWithFormat:@"    deviceHardwareVersion %@\n", deviceHardwareVersion];
  [string appendFormat:@"%@", v21];

  v22 = MEMORY[0x277CCACA8];
  deviceFirmwareVersion = [(ACCTransportIOAccessoryConfigStream *)self deviceFirmwareVersion];
  v24 = [v22 stringWithFormat:@"    deviceFirmwareVersion %@\n", deviceFirmwareVersion];
  [string appendFormat:@"%@", v24];

  v25 = MEMORY[0x277CCACA8];
  deviceSerialNumber = [(ACCTransportIOAccessoryConfigStream *)self deviceSerialNumber];
  v27 = [v25 stringWithFormat:@"    deviceSerialNumber %@\n", deviceSerialNumber];
  [string appendFormat:@"%@", v27];

  v28 = MEMORY[0x277CCACA8];
  devicePPID = [(ACCTransportIOAccessoryConfigStream *)self devicePPID];
  v30 = [v28 stringWithFormat:@"    devicePPID %@\n", devicePPID];
  [string appendFormat:@"%@", v30];

  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"    IOService %d\n", -[ACCTransportIOAccessoryBase ioService](self, "ioService")];
  [string appendFormat:@"%@", v31];

  return string;
}

- (BOOL)IOAccessoryConfigStreamRequestGetPropertyForCategoryID:(unsigned __int16)d propertyID:(unsigned __int8)iD
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->_requestPending)
  {
    Property = -536870187;
  }

  else
  {
    iDCopy = iD;
    dCopy = d;
    self->_requestPending = 1;
    self->_requestedCategoryID = d;
    self->_requestedPropertyID = iD;
    [(ACCTransportIOAccessoryBase *)self ioService];
    Property = IOAccessoryConfigStreamInterfaceRequestGetProperty();
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 4;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v17[0] = 67109632;
      v17[1] = dCopy;
      v18 = 1024;
      v19 = iDCopy;
      v20 = 1024;
      v21 = Property;
      _os_log_debug_impl(&dword_233656000, v10, OS_LOG_TYPE_DEBUG, "IOAccessoryConfigStreamRequestGetPropertyForCategoryID: called IOAccessoryConfigStreamInterfaceRequestGetProperty, categoryID 0x%x, propertyID %u, ret 0X%X", v17, 0x14u);
    }

    if (!Property)
    {
      requestTimer = self->_requestTimer;
      v16 = dispatch_time(0, 15000000000);
      dispatch_source_set_timer(requestTimer, v16, 0xFFFFFFFFFFFFFFFFLL, 0);
      return 1;
    }
  }

  if (gLogObjects)
  {
    v11 = gNumLogObjects < 4;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [ACCTransportIOAccessoryConfigStream IOAccessoryConfigStreamRequestGetPropertyForCategoryID:v13 propertyID:?];
  }

  return 0;
}

- (BOOL)IOAccessoryConfigStreamSetPropertyData:(id)data categoryID:(unsigned __int16)d propertyID:(unsigned __int8)iD
{
  iDCopy = iD;
  dCopy = d;
  v26 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  memset(v20, 170, sizeof(v20));
  if ([dataCopy length] > 0x400)
  {
    if (gLogObjects)
    {
      v12 = gNumLogObjects < 4;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v15 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    else
    {
      v15 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [dataCopy length];
      *buf = 134218752;
      *v22 = v16;
      *&v22[8] = 2048;
      *v23 = 1024;
      *&v23[8] = 1024;
      *v24 = dCopy;
      *&v24[4] = 1024;
      v25 = iDCopy;
      _os_log_impl(&dword_233656000, v15, OS_LOG_TYPE_DEFAULT, "IOAccessoryConfigStreamSetPropertyData: dataLen too large! (%lu > %lu) categoryID 0x%x, propertyID %u", buf, 0x22u);
    }

    goto LABEL_30;
  }

  [dataCopy getBytes:v20 length:1024];
  v9 = [dataCopy length];
  [(ACCTransportIOAccessoryBase *)self ioService];
  v10 = IOAccessoryConfigStreamInterfaceSetProperty();
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v11 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v11 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109888;
    *v22 = dCopy;
    *&v22[4] = 1024;
    *&v22[6] = iDCopy;
    *v23 = 2048;
    *&v23[2] = v9;
    *v24 = 1024;
    *&v24[2] = v10;
    _os_log_debug_impl(&dword_233656000, v11, OS_LOG_TYPE_DEBUG, "IOAccessoryConfigStreamSetPropertyData: called IOAccessoryConfigStreamInterfaceSetProperty, categoryID 0x%x, propertyID %u, dataLen %lu, ret 0X%X", buf, 0x1Eu);
  }

  if (v10)
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v15 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v15 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109888;
      *v22 = dCopy;
      *&v22[4] = 1024;
      *&v22[6] = iDCopy;
      *v23 = 2048;
      *&v23[2] = v9;
      *v24 = 1024;
      *&v24[2] = v10;
      _os_log_error_impl(&dword_233656000, v15, OS_LOG_TYPE_ERROR, "IOAccessoryConfigStreamSetPropertyData: Failed call to IOAccessoryConfigStreamInterfaceSetProperty, categoryID 0x%x, propertyID %u, dataLen %lu, error 0X%X", buf, 0x1Eu);
    }

LABEL_30:

    v17 = 0;
    goto LABEL_31;
  }

  v17 = 1;
LABEL_31:

  return v17;
}

- (BOOL)transmitData:(id)data
{
  v132 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 10;
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
    v7 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessoryConfigStream transmitData:];
  }

  if (!dataCopy || !self->_categoriesAvailable)
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v13 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_152;
    }

    categoriesAvailable = self->_categoriesAvailable;
    endpointUUID = self->_endpointUUID;
    *buf = 67109634;
    *&buf[4] = categoriesAvailable;
    *&buf[8] = 1024;
    *&buf[10] = dataCopy != 0;
    *&buf[14] = 2112;
    *&buf[16] = endpointUUID;
    v17 = "ERROR: Not ready(%d) or no message data(%d) to handle ConfigStream transmit, endpointUUID %@";
    v18 = v13;
    v19 = 24;
LABEL_34:
    _os_log_impl(&dword_233656000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
LABEL_152:

    v85 = 0;
    goto LABEL_153;
  }

  bytes = [dataCopy bytes];
  v9 = [dataCopy length];
  v10 = v9;
  if (!bytes || (v11 = v9 - 12, v9 < 0xC))
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v13 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v13 = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_152;
    }

    v21 = self->_endpointUUID;
    *buf = 134218242;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v21;
    v17 = "ERROR: Not enough bytes (%lu) for message header for ConfigStream transmit, endpointUUID %@";
    v18 = v13;
    v19 = 22;
    goto LABEL_34;
  }

  if (gLogObjects && gNumLogObjects >= 10)
  {
    v12 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v12 = MEMORY[0x277D86220];
    v22 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v76 = self->_endpointUUID;
    ioConnect = self->super._ioConnect;
    v78 = *bytes;
    *buf = 138413058;
    *&buf[4] = v76;
    *&buf[12] = 1024;
    *&buf[14] = ioConnect;
    *&buf[18] = 1024;
    *&buf[20] = v78;
    *&buf[24] = 2048;
    *&buf[26] = v11;
    _os_log_debug_impl(&dword_233656000, v12, OS_LOG_TYPE_DEBUG, "ConfigStream: endpointUUID %@, ioConnect %d, transmitData: messageID %d, payloadLen %lu", buf, 0x22u);
  }

  v23 = *bytes;
  if (v23 <= 2)
  {
    if (v23 == 1)
    {
      iOAccessoryConfigStreamCopyCategories = [(ACCTransportIOAccessoryConfigStream *)self IOAccessoryConfigStreamCopyCategories];
      v25 = iOAccessoryConfigStreamCopyCategories;
      if (iOAccessoryConfigStreamCopyCategories)
      {
        v26 = 0;
      }

      else
      {
        v26 = -536870212;
      }

      if (iOAccessoryConfigStreamCopyCategories)
      {
        v35 = iOAccessoryConfigStreamCopyCategories;
        v36 = 64;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);

        if (!WeakRetained)
        {
          v25 = v35;
          goto LABEL_142;
        }

        v121 = -21846;
        *&v38 = 0xAAAAAAAAAAAAAAAALL;
        *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v119 = v38;
        v120 = v38;
        v117 = v38;
        v118 = v38;
        v115 = v38;
        v116 = v38;
        *&buf[32] = v38;
        v114 = v38;
        *buf = v38;
        *&buf[16] = v38;
        v39 = v35;
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        obj = [v39 allKeys];
        v96 = v39;
        v98 = [obj countByEnumeratingWithState:&v109 objects:&v128 count:16];
        if (v98)
        {
          v90 = 64;
          v91 = v26;
          v92 = bytes;
          selfCopy = self;
          v94 = dataCopy;
          LODWORD(dataCopy) = 0;
          v40 = *v110;
          v41 = MEMORY[0x277D86220];
          v95 = *v110;
          while (2)
          {
            v42 = 0;
            dataCopy = dataCopy;
            v43 = &buf[20 * dataCopy + 6];
            do
            {
              if (*v110 != v40)
              {
                objc_enumerationMutation(obj);
              }

              v102 = v42;
              v103 = *(*(&v109 + 1) + 8 * v42);
              v44 = [v39 objectForKey:v90];
              v45 = v44;
              if (v44)
              {
                v101 = v44;
                v46 = gLogObjects;
                v47 = gNumLogObjects;
                if (gLogObjects)
                {
                  v48 = gNumLogObjects < 10;
                }

                else
                {
                  v48 = 1;
                }

                if (v48)
                {
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                  {
                    *v122 = 134218240;
                    *v123 = v46;
                    *&v123[8] = 1024;
                    *v124 = v47;
                    _os_log_error_impl(&dword_233656000, v41, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v122, 0x12u);
                  }

                  v49 = v41;
                }

                else
                {
                  v41 = *(gLogObjects + 72);
                }

                v45 = v101;
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                {
                  unsignedIntValue = [v103 unsignedIntValue];
                  *v122 = 67109376;
                  *v123 = dataCopy;
                  *&v123[4] = 1024;
                  *&v123[6] = unsignedIntValue;
                  _os_log_debug_impl(&dword_233656000, v41, OS_LOG_TYPE_DEBUG, "ConfigStream _fillCategoryList [%d] categoryID 0x%x", v122, 0xEu);
                }

                if (dataCopy > 7)
                {
                  v70 = dataCopy;
                  if (gLogObjects && gNumLogObjects >= 10)
                  {
                    v79 = *(gLogObjects + 72);
                    self = selfCopy;
                    dataCopy = v94;
                    bytes = v92;
                    v26 = v91;
                    v36 = v90;
                  }

                  else
                  {
                    self = selfCopy;
                    dataCopy = v94;
                    bytes = v92;
                    v26 = v91;
                    v36 = v90;
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      [ACCTransportIOAccessoryOOBPairing dealloc];
                    }

                    v79 = MEMORY[0x277D86220];
                    v80 = MEMORY[0x277D86220];
                  }

                  if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                  {
                    [(ACCTransportIOAccessoryConfigStream *)v70 transmitData:v79];
                  }

                  goto LABEL_132;
                }

                v99 = &buf[20 * dataCopy + 2];
                *v99 = [v103 unsignedIntValue];
                v105 = 0u;
                v106 = 0u;
                v107 = 0u;
                v108 = 0u;
                v104 = v101;
                v50 = [v104 countByEnumeratingWithState:&v105 objects:v127 count:16];
                if (v50)
                {
                  v51 = v50;
                  v100 = dataCopy;
                  LODWORD(v52) = 0;
                  v53 = *v106;
                  while (2)
                  {
                    v54 = 0;
                    v52 = v52;
                    if (v52 <= 16)
                    {
                      v55 = 16;
                    }

                    else
                    {
                      v55 = v52;
                    }

                    do
                    {
                      if (*v106 != v53)
                      {
                        objc_enumerationMutation(v104);
                      }

                      v56 = *(*(&v105 + 1) + v54);
                      v57 = gLogObjects;
                      v58 = gNumLogObjects;
                      if (gLogObjects)
                      {
                        v59 = gNumLogObjects < 10;
                      }

                      else
                      {
                        v59 = 1;
                      }

                      if (v59)
                      {
                        v61 = MEMORY[0x277D86220];
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          *v122 = 134218240;
                          *v123 = v57;
                          *&v123[8] = 1024;
                          *v124 = v58;
                          _os_log_error_impl(&dword_233656000, v61, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v122, 0x12u);
                        }

                        v60 = v61;
                      }

                      else
                      {
                        v61 = *(gLogObjects + 72);
                      }

                      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
                      {
                        unsignedIntValue2 = [v103 unsignedIntValue];
                        unsignedIntValue3 = [v56 unsignedIntValue];
                        *v122 = 67109888;
                        *v123 = v100;
                        *&v123[4] = 1024;
                        *&v123[6] = v52;
                        *v124 = 1024;
                        *&v124[2] = unsignedIntValue2;
                        v125 = 1024;
                        v126 = unsignedIntValue3;
                        _os_log_debug_impl(&dword_233656000, v61, OS_LOG_TYPE_DEBUG, "ConfigStream _fillCategoryList [%d, %d] categoryID 0x%x, propertyID %d", v122, 0x1Au);
                      }

                      if (v55 == v52)
                      {
                        v64 = gLogObjects;
                        v65 = gNumLogObjects;
                        if (gLogObjects && gNumLogObjects >= 10)
                        {
                          v66 = *(gLogObjects + 72);
                          v40 = v95;
                          v39 = v96;
                          dataCopy = v100;
                        }

                        else
                        {
                          v66 = MEMORY[0x277D86220];
                          v40 = v95;
                          v39 = v96;
                          dataCopy = v100;
                          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                          {
                            *v122 = 134218240;
                            *v123 = v64;
                            *&v123[8] = 1024;
                            *v124 = v65;
                            _os_log_error_impl(&dword_233656000, v66, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v122, 0x12u);
                          }

                          v67 = v66;
                        }

                        v45 = v101;
                        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                        {
                          unsignedIntValue4 = [v103 unsignedIntValue];
                          *v122 = 67109888;
                          *v123 = dataCopy;
                          *&v123[4] = 1024;
                          *&v123[6] = unsignedIntValue4;
                          *v124 = 1024;
                          *&v124[2] = v52;
                          v125 = 1024;
                          v126 = 16;
                          _os_log_error_impl(&dword_233656000, v66, OS_LOG_TYPE_ERROR, "ConfigStream _fillCategoryList [%d] categoryID 0x%x, propertyIndex too large!  %d >= %d", v122, 0x1Au);
                        }

                        goto LABEL_109;
                      }

                      v43[v52++] = [v56 unsignedIntValue];
                      v54 += 8;
                      --v51;
                    }

                    while (v51);
                    v51 = [v104 countByEnumeratingWithState:&v105 objects:v127 count:16];
                    if (v51)
                    {
                      continue;
                    }

                    break;
                  }

                  v40 = v95;
                  v39 = v96;
                  dataCopy = v100;
                  v45 = v101;
                }

                else
                {
                  LOWORD(v52) = 0;
                }

LABEL_109:

                v99[1] = v52;
                v41 = MEMORY[0x277D86220];
              }

              ++dataCopy;

              v42 = v102 + 1;
              v43 += 20;
            }

            while (v102 + 1 != v98);
            v98 = [obj countByEnumeratingWithState:&v109 objects:&v128 count:16];
            if (v98)
            {
              continue;
            }

            break;
          }

          LOWORD(v70) = dataCopy;
          self = selfCopy;
          dataCopy = v94;
          bytes = v92;
          v26 = v91;
          v36 = v90;
        }

        else
        {
          LOWORD(v70) = 0;
        }

LABEL_132:

        *buf = v70;
        if (gLogObjects && gNumLogObjects >= 10)
        {
          v81 = *(gLogObjects + 72);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v81 = MEMORY[0x277D86220];
          v82 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
        {
          [ACCTransportIOAccessoryConfigStream transmitData:v81];
        }

        v30 = v96;
        v128 = 5;
        v129 = *(bytes + 1);
        v130 = 162;
        v131 = v26;
        v28 = objc_alloc_init(MEMORY[0x277CBEB28]);
        [v28 appendBytes:&v128 length:12];
        v83 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:162];
        [v28 appendData:v83];

        v29 = objc_loadWeakRetained((&self->super.super.isa + v36));
        goto LABEL_141;
      }

LABEL_142:

      if (v26)
      {
LABEL_143:
        if (gLogObjects && gNumLogObjects >= 10)
        {
          v13 = *(gLogObjects + 72);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v13 = MEMORY[0x277D86220];
          v86 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v88 = *bytes;
          v89 = self->_endpointUUID;
          *buf = 67109634;
          *&buf[4] = v88;
          *&buf[8] = 2112;
          *&buf[10] = v89;
          *&buf[18] = 1024;
          *&buf[20] = v26;
          _os_log_error_impl(&dword_233656000, v13, OS_LOG_TYPE_ERROR, "ERROR: configStream messaID %u, endpointUUID %@, error 0x%X", buf, 0x18u);
        }

        goto LABEL_152;
      }

      goto LABEL_146;
    }

    if (v23 == 2)
    {
      v24 = [(ACCTransportIOAccessoryConfigStream *)self IOAccessoryConfigStreamCopyDataForCategoryID:bytes[1] propertyID:*(bytes + 4)];
      v25 = v24;
      if (v24)
      {
        v26 = 0;
      }

      else
      {
        v26 = -536870212;
      }

      if (v24)
      {
        v27 = objc_loadWeakRetained(&self->_delegate);

        if (v27)
        {
          *buf = 6;
          *&buf[2] = *(bytes + 1);
          *&buf[6] = [v25 length];
          *&buf[8] = 0;
          v28 = objc_alloc_init(MEMORY[0x277CBEB28]);
          [v28 appendBytes:buf length:12];
          [v28 appendData:v25];
          v29 = objc_loadWeakRetained(&self->_delegate);
          v30 = v25;
LABEL_141:
          v84 = v29;
          [v29 IOAccessoryConfigStreamMessageArrived:v28 endpointUUID:self->_endpointUUID];

          v25 = v30;
          goto LABEL_142;
        }
      }

      goto LABEL_142;
    }

LABEL_53:
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v33 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v33 = MEMORY[0x277D86220];
      v73 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v74 = *bytes;
      v75 = self->_endpointUUID;
      *buf = 67109378;
      *&buf[4] = v74;
      *&buf[8] = 2112;
      *&buf[10] = v75;
      _os_log_impl(&dword_233656000, v33, OS_LOG_TYPE_DEFAULT, "ERROR: Invalid messageID (%d) for ConfigStream transmit, endpointUUID %@", buf, 0x12u);
    }

    v26 = -536870202;
    goto LABEL_143;
  }

  if (v23 != 3)
  {
    if (v23 == 4)
    {
      v31 = [MEMORY[0x277CBEA90] dataWithBytes:bytes + 6 length:v11];
      v32 = [(ACCTransportIOAccessoryConfigStream *)self IOAccessoryConfigStreamSetPropertyData:v31 categoryID:bytes[1] propertyID:*(bytes + 4)];

      if (!v32)
      {
        v26 = -536870212;
        goto LABEL_143;
      }

      goto LABEL_146;
    }

    goto LABEL_53;
  }

  if (![(ACCTransportIOAccessoryConfigStream *)self IOAccessoryConfigStreamRequestGetPropertyForCategoryID:bytes[1] propertyID:*(bytes + 4)])
  {
    v26 = -536870212;
    *buf = 6;
    *&buf[2] = *(bytes + 1);
    *&buf[6] = 0;
    *&buf[8] = -536870212;
    v71 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [v71 appendBytes:buf length:12];
    v72 = objc_loadWeakRetained(&self->_delegate);
    [v72 IOAccessoryConfigStreamMessageArrived:v71 endpointUUID:self->_endpointUUID];

    goto LABEL_143;
  }

LABEL_146:
  v85 = 1;
LABEL_153:

  return v85;
}

- (void)handlePropertyDataReceived
{
  v25 = *MEMORY[0x277D85DE8];
  if (self->_requestPending)
  {
    dispatch_source_set_timer(self->_requestTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    requestedCategoryID = self->_requestedCategoryID;
    requestedPropertyID = self->_requestedPropertyID;
    v5 = [(ACCTransportIOAccessoryConfigStream *)self IOAccessoryConfigStreamCopyDataForCategoryID:requestedCategoryID propertyID:self->_requestedPropertyID];
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v6 = *(gLogObjects + 72);
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

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      requestPending = self->_requestPending;
      v11 = self->_requestedCategoryID;
      v12 = self->_requestedPropertyID;
      LODWORD(v19) = 67109890;
      HIDWORD(v19) = requestPending;
      *v20 = 1024;
      *&v20[2] = v11;
      v21 = 1024;
      v22 = v12;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_233656000, v6, OS_LOG_TYPE_DEFAULT, "handlePropertyDataReceived: _requestPending %d, _requestedCategoryID 0x%x, _requestedPropertyID %u, propertyData %@", &v19, 0x1Eu);
    }

    if (v5)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);

      if (WeakRetained)
      {
        LOWORD(v19) = 6;
        WORD1(v19) = requestedCategoryID;
        WORD2(v19) = requestedPropertyID;
        HIWORD(v19) = [v5 length];
        *v20 = 0;
        v14 = objc_alloc_init(MEMORY[0x277CBEB28]);
        [v14 appendBytes:&v19 length:12];
        [v14 appendData:v5];
        v15 = objc_loadWeakRetained(&self->_delegate);
        [v15 IOAccessoryConfigStreamMessageArrived:v14 endpointUUID:self->_endpointUUID];
      }
    }

    self->_requestPending = 0;
  }

  else
  {
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 10;
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

      v5 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v5 = *(gLogObjects + 72);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_requestPending;
      v17 = self->_requestedCategoryID;
      v18 = self->_requestedPropertyID;
      LODWORD(v19) = 67109632;
      HIDWORD(v19) = v16;
      *v20 = 1024;
      *&v20[2] = v17;
      v21 = 1024;
      v22 = v18;
      _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "handlePropertyDataReceived: received without pending request, _requestPending %d, _requestedCategoryID 0x%x, _requestedPropertyID %u", &v19, 0x14u);
    }
  }
}

- (NSString)deviceIdentifier
{
  v15 = *MEMORY[0x277D85DE8];
  deviceIdentifier = self->_deviceIdentifier;
  if (!deviceIdentifier || [(NSString *)deviceIdentifier isEqualToString:@"Unknown"])
  {
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    CFProperty = IORegistryEntryCreateCFProperty(ioService, @"IOAccessoryConfigStreamIdentifier", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v6 = self->_deviceIdentifier;
      self->_deviceIdentifier = CFProperty;
    }

    if (!self->_deviceIdentifier)
    {
      self->_deviceIdentifier = @"Unknown";
    }
  }

  if (gLogObjects)
  {
    v7 = gNumLogObjects < 10;
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

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = self->_deviceIdentifier;
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_INFO, "return _deviceIdentifier: %@", &v13, 0xCu);
  }

  v11 = self->_deviceIdentifier;

  return v11;
}

- (NSString)deviceName
{
  deviceName = self->_deviceName;
  if (!deviceName || [(NSString *)deviceName isEqualToString:@"Unknown"])
  {
    v4 = [(ACCTransportIOAccessoryConfigStream *)self _getStringProperty:5 forCategory:0];
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

- (NSString)deviceManufacturer
{
  deviceManufacturer = self->_deviceManufacturer;
  if (!deviceManufacturer || [(NSString *)deviceManufacturer isEqualToString:@"Unknown"])
  {
    v4 = [(ACCTransportIOAccessoryConfigStream *)self _getStringProperty:4 forCategory:0];
    v5 = self->_deviceManufacturer;
    self->_deviceManufacturer = v4;

    if (!self->_deviceManufacturer)
    {
      self->_deviceManufacturer = @"Unknown";
    }
  }

  v6 = self->_deviceManufacturer;

  return v6;
}

- (NSString)deviceModel
{
  deviceModel = self->_deviceModel;
  if (!deviceModel || [(NSString *)deviceModel isEqualToString:@"Unknown"])
  {
    v4 = [(ACCTransportIOAccessoryConfigStream *)self _getStringProperty:6 forCategory:0];
    v5 = self->_deviceModel;
    self->_deviceModel = v4;

    if (!self->_deviceModel)
    {
      self->_deviceModel = @"Unknown";
    }
  }

  v6 = self->_deviceModel;

  return v6;
}

- (NSString)deviceHardwareVersion
{
  deviceHardwareVersion = self->_deviceHardwareVersion;
  if (!deviceHardwareVersion || [(NSString *)deviceHardwareVersion isEqualToString:@"Unknown"])
  {
    v4 = [(ACCTransportIOAccessoryConfigStream *)self _getStringProperty:2 forCategory:0];
    v5 = self->_deviceHardwareVersion;
    self->_deviceHardwareVersion = v4;

    if (!self->_deviceHardwareVersion)
    {
      self->_deviceHardwareVersion = @"Unknown";
    }
  }

  v6 = self->_deviceHardwareVersion;

  return v6;
}

- (NSString)deviceFirmwareVersion
{
  deviceFirmwareVersion = self->_deviceFirmwareVersion;
  if (!deviceFirmwareVersion || [(NSString *)deviceFirmwareVersion isEqualToString:@"Unknown"])
  {
    v4 = [(ACCTransportIOAccessoryConfigStream *)self _getStringProperty:3 forCategory:0];
    v5 = self->_deviceFirmwareVersion;
    self->_deviceFirmwareVersion = v4;

    if (!self->_deviceFirmwareVersion)
    {
      self->_deviceFirmwareVersion = @"Unknown";
    }
  }

  v6 = self->_deviceFirmwareVersion;

  return v6;
}

- (NSString)deviceSerialNumber
{
  deviceSerialNumber = self->_deviceSerialNumber;
  if (!deviceSerialNumber || [(NSString *)deviceSerialNumber isEqualToString:@"Unknown"])
  {
    v4 = [(ACCTransportIOAccessoryConfigStream *)self _getStringProperty:7 forCategory:0];
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

- (NSString)devicePPID
{
  devicePPID = self->_devicePPID;
  if (!devicePPID || [(NSString *)devicePPID isEqualToString:@"Unknown"])
  {
    v4 = [(ACCTransportIOAccessoryConfigStream *)self _getStringProperty:1 forCategory:4096];
    v5 = self->_devicePPID;
    self->_devicePPID = v4;

    if (!self->_devicePPID)
    {
      self->_devicePPID = @"Unknown";
    }
  }

  v6 = self->_devicePPID;

  return v6;
}

- (ACCTransportIOAccessoryConfigStreamProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)parentConnectionUUID
{
  WeakRetained = objc_loadWeakRetained(&self->_parentConnectionUUID);

  return WeakRetained;
}

- (void)_getCategories
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)IOAccessoryConfigStreamRequestGetPropertyForCategoryID:(int)a1 propertyID:(NSObject *)a2 .cold.3(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_233656000, a2, OS_LOG_TYPE_ERROR, "IOAccessoryConfigStreamRequestGetPropertyForCategoryID: Failed call to IOAccessoryConfigStreamInterfaceRequestGetProperty, error 0X%X", v2, 8u);
}

- (void)transmitData:(int)a1 .cold.7(int a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 67109376;
  v2[1] = a1;
  v3 = 1024;
  v4 = 8;
  _os_log_error_impl(&dword_233656000, a2, OS_LOG_TYPE_ERROR, "ConfigStream _fillCategoryList categoryIndex too large!  %d >= %d", v2, 0xEu);
}

- (void)transmitData:(os_log_t)log .cold.9(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = 1;
  _os_log_debug_impl(&dword_233656000, log, OS_LOG_TYPE_DEBUG, "ConfigStream _fillCategoryList success=%d", v1, 8u);
}

@end