@interface HAENAccessoryInfo
+ (id)getAccessoryInfo:(id *)info;
+ (id)getAccessoryInfoFromIOAccesoryManager:(id *)manager;
+ (id)getAccessoryInfoFromIOKitDirectly:(id *)directly;
- (id)description;
@end

@implementation HAENAccessoryInfo

+ (id)getAccessoryInfoFromIOAccesoryManager:(id *)manager
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = +[HAENDefaults isRunningCITests];
  if (!v4)
  {
    connect = 0;
    ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
    if (ServiceWithPrimaryPort)
    {
      v11 = IOServiceOpen(ServiceWithPrimaryPort, *MEMORY[0x277D85F48], 0, &connect);
      if (!v11)
      {
        v14 = objc_alloc_init(HAENAccessoryInfo);
        v17 = IOAccessoryManagerCopyDeviceInfo();
        if (v17)
        {
          v18 = errorForIOKitFailure(v17);
          v19 = HAENotificationsLog(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v53 = v18;
            _os_log_impl(&dword_25081E000, v19, OS_LOG_TYPE_DEFAULT, "failed to get serial number %@", buf, 0xCu);
          }

          v20 = IOAccessoryManagerCopyDeviceInfo();
          if (v20)
          {
            v21 = errorForIOKitFailure(v20);

            v23 = HAENotificationsLog(v22);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v53 = v21;
              _os_log_impl(&dword_25081E000, v23, OS_LOG_TYPE_DEFAULT, "failed to get manufacturer %@", buf, 0xCu);
            }

            v18 = v21;

            v24 = IOAccessoryManagerCopyDeviceInfo();
            if (v24)
            {
              v25 = errorForIOKitFailure(v24);

              v27 = HAENotificationsLog(v26);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v53 = v25;
                _os_log_impl(&dword_25081E000, v27, OS_LOG_TYPE_DEFAULT, "failed to get model number %@", buf, 0xCu);
              }

              v18 = v25;

              v28 = IOAccessoryManagerCopyDeviceInfo();
              if (v28)
              {
                v29 = errorForIOKitFailure(v28);

                v31 = HAENotificationsLog(v30);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v53 = v29;
                  _os_log_impl(&dword_25081E000, v31, OS_LOG_TYPE_DEFAULT, "failed to get name %@", buf, 0xCu);
                }

                v18 = v29;

                v32 = IOAccessoryManagerCopyDeviceInfo();
                if (v32)
                {
                  v33 = errorForIOKitFailure(v32);

                  v35 = HAENotificationsLog(v34);
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v53 = v33;
                    _os_log_impl(&dword_25081E000, v35, OS_LOG_TYPE_DEFAULT, "failed to get interface serial number %@", buf, 0xCu);
                  }

                  v18 = v33;

                  v36 = IOAccessoryManagerCopyDeviceInfo();
                  if (v36)
                  {
                    v37 = errorForIOKitFailure(v36);

                    v39 = HAENotificationsLog(v38);
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                    {
                      +[HAENAccessoryInfo getAccessoryInfoFromIOAccesoryManager:];
                    }

                    name = v37;

                    v41 = HAENotificationsLog(v40);
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      v53 = "+[HAENAccessoryInfo getAccessoryInfoFromIOAccesoryManager:]";
                      v54 = 2112;
                      v55 = v14;
                      _os_log_impl(&dword_25081E000, v41, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
                    }

                    IOServiceClose(connect);
                    serialNumber = v14->_serialNumber;
                    if (!v14->_manufacturer || !serialNumber)
                    {
                      v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"IOAccessoryManager: required fields are missing, manufacturer %@, serialNumber %@", v14->_manufacturer, serialNumber, 0];
                      v50 = *MEMORY[0x277CCA450];
                      v51 = v43;
                      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
                      *manager = makeError(v44, 4u);

                      v46 = HAENotificationsLog(v45);
                      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                      {
                        +[HAENAccessoryInfo getAccessoryInfoFromIOAccesoryManager:];
                      }

                      v14 = 0;
                    }

                    v14 = v14;
                    v6 = v14;
                    goto LABEL_17;
                  }

                  v47 = @"kIOAccDigitalIDDeviceInfoTypeInterfaceModuleSerialNumber";
                }

                else
                {
                  v47 = @"kIOAccDigitalIDDeviceInfoTypeInterfaceDeviceSerialNumber";
                }
              }

              else
              {
                v47 = @"kIOAccDigitalIDDeviceInfoTypeAccessoryName";
              }
            }

            else
            {
              v47 = @"kIOAccDigitalIDDeviceInfoTypeAccessoryModelNumber";
            }
          }

          else
          {
            v47 = @"kIOAccDigitalIDDeviceInfoTypeAccessoryManufacturer";
          }

          v48 = errorForBadDeviceInfo(v47);

          name = v48;
        }

        else
        {
          name = errorForBadDeviceInfo(@"kIOAccDigitalIDDeviceInfoTypeAccessorySerialNumber");
        }

LABEL_12:
        if (connect)
        {
          IOServiceClose(connect);
        }

        v6 = 0;
        if (manager && name)
        {
          v15 = name;
          v6 = 0;
          *manager = name;
        }

LABEL_17:

        goto LABEL_18;
      }

      name = errorForIOKitFailure(v11);
      v12 = HAENotificationsLog(name);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[HAENAccessoryInfo getAccessoryInfoFromIOAccesoryManager:];
      }
    }

    else
    {
      v13 = objc_alloc(MEMORY[0x277CCA9B8]);
      name = [v13 initWithDomain:HAENAccessoryInfoErrorDomain code:2 userInfo:MEMORY[0x277CBEC10]];
      v12 = HAENotificationsLog(name);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[HAENAccessoryInfo getAccessoryInfoFromIOAccesoryManager:];
      }
    }

    v14 = 0;
    goto LABEL_12;
  }

  v5 = HAENotificationsLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25081E000, v5, OS_LOG_TYPE_DEFAULT, "running citest mode with fake accessory info", buf, 2u);
  }

  v6 = objc_alloc_init(HAENAccessoryInfo);
  manufacturer = v6->_manufacturer;
  v6->_manufacturer = @"CITEST.INC";

  v8 = v6->_serialNumber;
  v6->_serialNumber = @"0123456789";

  name = v6->_name;
  v6->_name = @"FAKE";
LABEL_18:

  return v6;
}

+ (id)getAccessoryInfoFromIOKitDirectly:(id *)directly
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(HAENAccessoryInfo);
  v5 = IOServiceMatching("IOMikeyBusDevice");
  if (!v5 || ((existing = 0, !IOServiceGetMatchingServices(*MEMORY[0x277CD28A0], v5, &existing)) ? (v6 = existing == 0) : (v6 = 1), v6))
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = IOIteratorNext(existing);
    if (v9)
    {
      v10 = v9;
      v8 = 0;
      v7 = 0;
      while (1)
      {
        if (v8 && v7)
        {
          goto LABEL_28;
        }

        properties = 0;
        v11 = IORegistryEntryCreateCFProperties(v10, &properties, 0, 0);
        v12 = properties;
        if (!v11)
        {
          if (properties)
          {
            break;
          }
        }

LABEL_21:
        if (v12)
        {
          CFRelease(v12);
        }

        IOObjectRelease(v10);
        v10 = IOIteratorNext(existing);
        if (!v10)
        {
          goto LABEL_28;
        }
      }

      v13 = HAENotificationsLog(properties);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v29 = "+[HAENAccessoryInfo getAccessoryInfoFromIOKitDirectly:]";
        v30 = 2112;
        v31 = properties;
        _os_log_impl(&dword_25081E000, v13, OS_LOG_TYPE_DEFAULT, "%s IOMikeyBusDevice properties: %@\n", buf, 0x16u);
      }

      if (v8)
      {
        if (v7)
        {
LABEL_18:
          v15 = HAENotificationsLog(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v29 = v8;
            v30 = 2112;
            v31 = v7;
            _os_log_impl(&dword_25081E000, v15, OS_LOG_TYPE_DEFAULT, "IOMikeyBus sn: %@ mft: %@", buf, 0x16u);
          }

          v12 = properties;
          goto LABEL_21;
        }
      }

      else
      {
        v14 = [(__CFDictionary *)properties objectForKey:@"SerialNumber"];
        v8 = v14;
        if (v7)
        {
          goto LABEL_18;
        }
      }

      v14 = [(__CFDictionary *)properties objectForKey:@"VendorName"];
      v7 = v14;
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
LABEL_28:
    IOObjectRelease(existing);
  }

  objc_storeStrong(&v4->_manufacturer, v7);
  objc_storeStrong(&v4->_serialNumber, v8);
  serialNumber = v4->_serialNumber;
  if (v4->_manufacturer)
  {
    v17 = serialNumber == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    serialNumber = [MEMORY[0x277CCACA8] stringWithFormat:@"IOMikeyBus: required fields are missing, manufacturer %@, serialNumber %@", v4->_manufacturer, serialNumber];
    v26 = *MEMORY[0x277CCA450];
    v27 = serialNumber;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    *directly = makeError(v19, 4u);

    v21 = HAENotificationsLog(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[HAENAccessoryInfo getAccessoryInfoFromIOAccesoryManager:];
    }

    v4 = 0;
  }

  v22 = v4;

  return v4;
}

+ (id)getAccessoryInfo:(id *)info
{
  v4 = [HAENAccessoryInfo getAccessoryInfoFromIOAccesoryManager:?];
  v5 = v4;
  if (v4 && !*info)
  {
    v13 = v4;
  }

  else
  {
    v6 = HAENotificationsLog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(HAENAccessoryInfo *)info getAccessoryInfo:v6, v7, v8, v9, v10, v11, v12];
    }

    *info = 0;
    v13 = [HAENAccessoryInfo getAccessoryInfoFromIOKitDirectly:info];

    if (*info)
    {
      v15 = HAENotificationsLog(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(HAENAccessoryInfo *)info getAccessoryInfo:v15, v16, v17, v18, v19, v20, v21];
      }
    }
  }

  v22 = v13;

  return v22;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"[%@]: serial# '%@', manufacturer '%@', name '%@', model# '%@', InterfaceDeviceSerial# '%@', interfaceModuleSerial# '%@'", v5, self->_serialNumber, self->_manufacturer, self->_name, self->_modelNumber, self->_interfaceDeviceSerialNumber, self->_interfaceModuleSerialNumber];

  return v6;
}

+ (void)getAccessoryInfo:(uint64_t)a3 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0(&dword_25081E000, a2, a3, "failed to get accessory info from IOAccessoryManager: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)getAccessoryInfo:(uint64_t)a3 .cold.2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0(&dword_25081E000, a2, a3, "failed to get accessory info from mickey bus: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end