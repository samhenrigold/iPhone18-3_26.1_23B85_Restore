@interface ACCTransportIOAccessoryManager
- (ACCTransportIOAccessoryManager)initWithIOService:(unsigned int)service;
- (BOOL)isBatteryPackModeEnabled;
- (BOOL)isPowerDuringSleepEnabled;
- (BOOL)isPowerDuringSleepSupported;
- (BOOL)resetAccessoryBaseCurrent;
- (BOOL)setAccessoryRequestedCurrent:(unsigned int)current;
- (BOOL)setAccessoryUsedCurrent:(unsigned int)current;
- (BOOL)setBatteryPackMode:(BOOL)mode forceResponse:(BOOL)response;
- (BOOL)setFeaturesFromAuthStatus:(int)status authCert:(id)cert certType:(int)type;
- (BOOL)setPowerDuringSleepEnabled:(BOOL)enabled;
- (BOOL)setUSBCurrentLimitBase:(unsigned int)base forceResponse:(BOOL)response;
- (BOOL)setUSBCurrentOffset:(int)offset;
- (BOOL)setUSBMode:(int)mode;
- (BOOL)supervisedTransportsRestricted;
- (NSNumber)inductiveLocalDeviceID;
- (NSSet)authCPChildPorts;
- (NSSet)configStreamChildPorts;
- (NSSet)eaProtocolChildPorts;
- (NSSet)ioAccessoryChildPorts;
- (NSSet)oobPairingChildPorts;
- (NSString)connectionUUID;
- (NSString)inductiveDeviceUID;
- (NSString)regionCode;
- (id)_connectionUUIDsForNotification;
- (int)USBCurrentLimitOffsetInmA;
- (int)_ACCPlatformUSBModeForIOAccessoryUSBConnectType:(int)type;
- (int)_IOAccUSBModeTypeForSetUSBMode:(int)mode;
- (int)_connectionTypeForPrimaryPort;
- (int)cableType;
- (int)getUSBMode;
- (unsigned)USBChargingVoltageInmV;
- (unsigned)USBCurrentLimitBaseInmA;
- (unsigned)USBCurrentLimitInmA;
- (unsigned)accessoryChargingCurrentInmA;
- (unsigned)accessoryPowerModeCurrentLimitInmA:(int)a;
- (unsigned)sleepPowerCurrentLimitInmA;
- (void)USBChargingVoltageInmV;
- (void)USBCurrentLimitBaseInmA;
- (void)USBCurrentLimitInmA;
- (void)USBCurrentLimitOffsetInmA;
- (void)_clearAccessoryInfo;
- (void)_connectionTypeForPrimaryPort;
- (void)_connectionUUIDsForNotification;
- (void)_handleNotificationUarpEndUpdateForModel:(id)model;
- (void)_handleNotificationUarpStagingStatusForModel:(id)model state:(unint64_t)state;
- (void)_handleNotificationUarpStartUpdateForModel:(id)model;
- (void)_handleRegisterationForUarpActivityForModel:(id)model shouldRegister:(BOOL)register;
- (void)_handleResistorIDChangeNotification:(int)notification;
- (void)_handleUartActivityTimeout;
- (void)_kickTimerForUarpActivityForModel:(id)model;
- (void)_pokeResistorID;
- (void)_processAccessoryInfo;
- (void)_registerForBatteryNotifications;
- (void)_registerForIOAccessoryIDBusHIDDevice;
- (void)_registerForIOAccessoryManagerInterestNotifications;
- (void)_sendNotification:(id)notification;
- (void)_stopAuthTimer;
- (void)_stopTimerForUarpActivityForModel:(id)model;
- (void)_updateInductiveInfo:(BOOL)info;
- (void)addIOAccessoryChildPort:(id)port;
- (void)dealloc;
- (void)getUSBMode;
- (void)notifyDriverOfInductiveActivity:(BOOL)activity paused:(BOOL)paused;
- (void)removeIOAccessoryChildPort:(id)port;
- (void)resetAccessoryBaseCurrent;
- (void)setAccessoryPowerMode:(int)mode;
- (void)setConnectionUUID:(id)d;
- (void)setInductiveDeviceUID:(id)d;
- (void)setInductiveLocalDeviceID:(id)d;
- (void)setRegionCode:(id)code;
- (void)supervisedTransportsRestricted;
- (void)transportClassTerminated;
@end

@implementation ACCTransportIOAccessoryManager

- (void)_processAccessoryInfo
{
  [a2 ioService];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (int)_connectionTypeForPrimaryPort
{
  if ([(ACCTransportIOAccessoryManager *)self bIsInductive])
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  [(ACCTransportIOAccessoryBase *)self upstreamManagerService];
  Type = IOAccessoryManagerGetType();
  if (Type == 6 || Type == 3)
  {
    v3 = 6;
  }

  primaryPortNumber = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
  switch(primaryPortNumber)
  {
    case 512:
      v3 = 4;
      break;
    case 257:
      v3 = 8;
      break;
    case 256:
      v3 = 3;
      break;
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v7 = *(gLogObjects + 24);
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
    [ACCTransportIOAccessoryManager _connectionTypeForPrimaryPort];
  }

  return v3;
}

- (id)_connectionUUIDsForNotification
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  connectionUUID = [(ACCTransportIOAccessoryManager *)self connectionUUID];
  if (connectionUUID)
  {
    [v3 addObject:connectionUUID];
  }

  if ([(ACCTransportIOAccessoryManager *)self isRootPort]&& [(ACCTransportIOAccessoryManager *)self _connectionTypeForPrimaryPort]!= 3)
  {
    v26 = connectionUUID;
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v5 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessoryManager _connectionUUIDsForNotification];
    }

    if (gLogObjects && gNumLogObjects >= 4)
    {
      v7 = *(gLogObjects + 24);
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
      [ACCTransportIOAccessoryManager _connectionUUIDsForNotification];
    }

    v9 = +[ACCTransportIOAccessorySharedManager sharedManager];
    delegate = [v9 delegate];

    [delegate startSafeConnectionTransaction];
    [delegate allEndpointsUUIDs];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v31 = 0u;
    v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      v14 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = [delegate connectionUUIDForEndpointWithUUID:*(*(&v28 + 1) + 8 * i)];
          v17 = [delegate connectionTypeForConnectionWithUUID:v16];
          if (v17 == 6 || v17 == 1)
          {
            v19 = v17;
            v20 = gLogObjects;
            v21 = gNumLogObjects;
            if (gLogObjects)
            {
              v22 = gNumLogObjects < 4;
            }

            else
            {
              v22 = 1;
            }

            if (v22)
            {
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *v34 = v20;
                *&v34[8] = 1024;
                *&v34[10] = v21;
                _os_log_error_impl(&dword_233656000, v14, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v23 = v14;
              v24 = v14;
            }

            else
            {
              v24 = *(gLogObjects + 24);
            }

            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109378;
              *v34 = v19;
              *&v34[4] = 2112;
              *&v34[6] = v16;
              _os_log_impl(&dword_233656000, v24, OS_LOG_TYPE_DEFAULT, "Found %{coreacc:ACCConnection_Type_t}d connectionType, need to send notification for connectionUUID %@", buf, 0x12u);
            }

            [v3 addObject:v16];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    [delegate stopSafeConnectionTransaction];

    connectionUUID = v26;
  }

  return v3;
}

- (NSString)connectionUUID
{
  [(NSLock *)self->_propertyLock lock];
  if (self->_connectionUUID)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithString:?];
  }

  else
  {
    v3 = 0;
  }

  [(NSLock *)self->_propertyLock unlock];

  return v3;
}

- (ACCTransportIOAccessoryManager)initWithIOService:(unsigned int)service
{
  v74 = *MEMORY[0x277D85DE8];
  v67.receiver = self;
  v67.super_class = ACCTransportIOAccessoryManager;
  v4 = [(ACCTransportIOAccessoryBase *)&v67 initWithIOAccessoryClass:0 ioService:*&service];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    v6 = *(v4 + 38);
    *(v4 + 38) = v5;

    v7 = [MEMORY[0x277CBEB58] set];
    v8 = *(v4 + 39);
    *(v4 + 39) = v7;

    v9 = [MEMORY[0x277CBEB58] set];
    v10 = *(v4 + 40);
    *(v4 + 40) = v9;

    v11 = [MEMORY[0x277CBEB58] set];
    v12 = *(v4 + 41);
    *(v4 + 41) = v11;

    v13 = [MEMORY[0x277CBEB58] set];
    v14 = *(v4 + 42);
    *(v4 + 42) = v13;

    v15 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v16 = *(v4 + 16);
    *(v4 + 16) = v15;

    *(v4 + 44) = 0;
    v4[145] = 0;
    v4[146] = 0;
    v4[147] = 0;
    v17 = *(v4 + 45);
    *(v4 + 45) = 0;

    v18 = *(v4 + 46);
    *(v4 + 46) = 0;

    v19 = *(v4 + 47);
    *(v4 + 47) = 0;

    v20 = *(v4 + 48);
    *(v4 + 48) = 0;

    v4[148] = 0;
    v4[149] = 0;
    v4[72] = 0;
    *(v4 + 12) = 0;
    v4[136] = [v4 primaryPortNumber] == 257;
    v4[137] = 0;
    v4[138] = 0;
    v21 = *(v4 + 8);
    *(v4 + 8) = 0;

    v4[141] = 0;
    *(v4 + 40) = 100;
    v4[150] = MGGetSInt32Answer() == 6;
    v22 = (IOAccessoryManagerGetType() & 0xF) == 5;
    v4[142] = v22;
    v4[142] = v4[150] | v22;
    *(v4 + 43) = 0;
    *(v4 + 41) = 0;
    v4[144] = 0;
    v23 = objc_alloc_init(MEMORY[0x277CCAC60]);
    v24 = *(v4 + 24);
    *(v4 + 24) = v23;

    *(v4 + 44) = 0;
    *(v4 + 43) = 0;
    [v4 _clearAccessoryInfo];
    v4[139] = [v4 upstreamManagerService] == 0;
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v25 = *(gLogObjects + 24);
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

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessoryManager initWithIOService:];
    }

    ioService = [v4 ioService];
    if (IOServiceOpen(ioService, *MEMORY[0x277D85F48], 0, v4 + 2))
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v28 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v28 = MEMORY[0x277D86220];
        v29 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryManager initWithIOService:];
      }
    }

    else
    {
      [v4 _registerForIOAccessoryManagerInterestNotifications];
    }

    v30 = *(v4 + 37);
    *(v4 + 37) = 0;

    ioService2 = [v4 ioService];
    v32 = *MEMORY[0x277CBECE8];
    v33 = IORegistryEntrySearchCFProperty(ioService2, "IOService", @"IOProviderClass", *MEMORY[0x277CBECE8], 0);
    if (v33)
    {
      v34 = v33;
      if (CFStringCompare(v33, @"AppleUVDMEndpoint", 0))
      {
        v4[140] = 0;
      }

      else
      {
        v4[140] = 1;
        parent = 0;
        if (!IORegistryEntryGetParentEntry([v4 ioService], "IOAccessory", &parent))
        {
          CFProperty = IORegistryEntryCreateCFProperty(parent, @"Description", v32, 0);
          if (CFProperty || (v72 = 0u, v73 = 0u, v70 = 0u, v71 = 0u, v69 = 0u, memset(cStr, 0, sizeof(cStr)), !MEMORY[0x2383A94F0](parent, cStr)) && (CFProperty = CFStringCreateWithCString(v32, cStr, 0x8000100u)) != 0)
          {
            v59 = CFProperty;
            if (gLogObjects && gNumLogObjects >= 1)
            {
              v36 = *gLogObjects;
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [ACCTransportIOAccessoryOOBPairing dealloc];
              }

              v36 = MEMORY[0x277D86220];
              v37 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v38 = *(v4 + 37);
              *cStr = 136316162;
              *&cStr[4] = "[ACCTransportIOAccessoryManager initWithIOService:]";
              *&cStr[12] = 1024;
              *&cStr[14] = 1086;
              *&cStr[18] = 1024;
              *&cStr[20] = service;
              *&cStr[24] = 2112;
              *&cStr[26] = v38;
              *&cStr[34] = 2112;
              *&cStr[36] = v59;
              _os_log_impl(&dword_233656000, v36, OS_LOG_TYPE_DEFAULT, "%s:%d service %d, _managerParent %@ -> %@ ", cStr, 0x2Cu);
            }

            v39 = *(v4 + 37);
            *(v4 + 37) = v59;
          }
        }
      }

      CFRelease(v34);
    }

    else
    {
      v4[140] = 0;
    }

    _connectionTypeForPrimaryPort = [v4 _connectionTypeForPrimaryPort];
    *(v4 + 39) = _connectionTypeForPrimaryPort;
    v4[143] = _connectionTypeForPrimaryPort == 8;
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v41 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v41 = MEMORY[0x277D86220];
      v42 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v43 = v4[139];
      v44 = v4[140];
      v45 = *(v4 + 39);
      v46 = v4[142];
      v47 = v4[143];
      v48 = *(v4 + 37);
      *cStr = 67110402;
      *&cStr[4] = v43;
      *&cStr[8] = 1024;
      *&cStr[10] = v44;
      *&cStr[14] = 1024;
      *&cStr[16] = v45;
      *&cStr[20] = 1024;
      *&cStr[22] = v46;
      *&cStr[26] = 1024;
      *&cStr[28] = v47;
      *&cStr[32] = 2112;
      *&cStr[34] = v48;
      _os_log_impl(&dword_233656000, v41, OS_LOG_TYPE_INFO, "IOAccessoryManager added,  isRootPort = %d, isAdapter = %d, _connectionType = %{coreacc:ACCConnection_Type_t}d, _bIsInductive = %d, _bIsInductivePowerToAccessory = %d, _managerParent = %@", cStr, 0x2Au);
    }

    if (v4[142] == 1 && v4[143] != 1 || (v49 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]), v50 = *(v4 + 23), *(v4 + 23) = v49, v50, objc_initWeak(cStr, v4), v51 = *(v4 + 23), handler[0] = MEMORY[0x277D85DD0], handler[1] = 3221225472, handler[2] = __52__ACCTransportIOAccessoryManager_initWithIOService___block_invoke, handler[3] = &unk_2789E8FF0, objc_copyWeak(&v64, cStr), v65 = service, v63 = v4, dispatch_source_set_event_handler(v51, handler), dispatch_source_set_timer(*(v4 + 23), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0), dispatch_resume(*(v4 + 23)), v63, objc_destroyWeak(&v64), objc_destroyWeak(cStr), (v4[142] & 1) != 0))
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v52 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v52 = MEMORY[0x277D86220];
        v53 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v54 = v4[142];
        *cStr = 136315394;
        *&cStr[4] = "[ACCTransportIOAccessoryManager initWithIOService:]";
        *&cStr[12] = 1024;
        *&cStr[14] = v54;
        _os_log_impl(&dword_233656000, v52, OS_LOG_TYPE_DEFAULT, "%s: _bIsInductive %d, create uarpStagingStatusActivityTimer", cStr, 0x12u);
      }

      v55 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
      v56 = *(v4 + 11);
      *(v4 + 11) = v55;

      objc_initWeak(cStr, v4);
      v57 = *(v4 + 11);
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __52__ACCTransportIOAccessoryManager_initWithIOService___block_invoke_48;
      v60[3] = &unk_2789E9018;
      objc_copyWeak(&v61, cStr);
      dispatch_source_set_event_handler(v57, v60);
      dispatch_source_set_timer(*(v4 + 11), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(*(v4 + 11));
      objc_destroyWeak(&v61);
      objc_destroyWeak(cStr);
    }
  }

  return v4;
}

void __52__ACCTransportIOAccessoryManager_initWithIOService___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = +[ACCTransportIOAccessorySharedManager sharedManager];
    v4 = [v3 delegate];

    if (gLogObjects && gNumLogObjects >= 4)
    {
      v5 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v8 = *(*(a1 + 32) + 156);
      *buf = 67109376;
      v20 = v7;
      v21 = 1024;
      v22 = v8;
      _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "AppleIDBus auth timeout completed for IOAccMgr service:%d, connectionType:%{coreacc:ACCConnection_Type_t}d", buf, 0xEu);
    }

    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 connectionUUID];
    v11 = [v4 setAuthenticationStatus:3 andCertificateData:0 authCTA:0 forConnectionWithUUID:v10];

    if ((v11 & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v12 = *(gLogObjects + 24);
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

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __52__ACCTransportIOAccessoryManager_initWithIOService___block_invoke_cold_3();
      }
    }

    v14 = objc_loadWeakRetained((a1 + 40));
    [v14 setFeaturesFromAuthStatus:4 authCert:0 certType:0xFFFFFFFFLL];

    v15 = *(*(a1 + 32) + 156);
    if (v15 != 1 && v15 != 8)
    {
      v16 = acc_userNotifications_accessoryNotSupported();
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", *(a1 + 48)];
      [v16 setGroupIdentifier:v17];

      v18 = +[ACCUserNotificationManager sharedManager];
      [v18 presentNotification:v16 completionHandler:0];
    }
  }
}

void __52__ACCTransportIOAccessoryManager_initWithIOService___block_invoke_48(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 4;
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
    v4 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ACCTransportIOAccessoryManager initWithIOService:]_block_invoke";
    _os_log_impl(&dword_233656000, v4, OS_LOG_TYPE_DEFAULT, "%s: uarpStagingStatusActivityTimer fired!", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleUartActivityTimeout];
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 4;
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
    v5 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "deallocating manager with service %d", buf, 8u);
  }

  [(NSMutableSet *)self->_mutableioAccessoryChildPorts removeAllObjects];
  mutableioAccessoryChildPorts = self->_mutableioAccessoryChildPorts;
  self->_mutableioAccessoryChildPorts = 0;

  [(NSMutableSet *)self->_mutableioAccessoryEAChildPorts removeAllObjects];
  mutableioAccessoryEAChildPorts = self->_mutableioAccessoryEAChildPorts;
  self->_mutableioAccessoryEAChildPorts = 0;

  [(NSMutableSet *)self->_mutableioAccessoryAuthCPChildPorts removeAllObjects];
  mutableioAccessoryAuthCPChildPorts = self->_mutableioAccessoryAuthCPChildPorts;
  self->_mutableioAccessoryAuthCPChildPorts = 0;

  [(NSMutableSet *)self->_mutableioAccessoryOOBPairingChildPorts removeAllObjects];
  mutableioAccessoryOOBPairingChildPorts = self->_mutableioAccessoryOOBPairingChildPorts;
  self->_mutableioAccessoryOOBPairingChildPorts = 0;

  [(NSMutableSet *)self->_mutableioAccessoryConfigStreamChildPorts removeAllObjects];
  mutableioAccessoryConfigStreamChildPorts = self->_mutableioAccessoryConfigStreamChildPorts;
  self->_mutableioAccessoryConfigStreamChildPorts = 0;

  if (self->_authTimerAccessory)
  {
    [(ACCTransportIOAccessoryManager *)self _stopAuthTimer];
    dispatch_source_cancel(self->_authTimerAccessory);
    authTimerAccessory = self->_authTimerAccessory;
    self->_authTimerAccessory = 0;
  }

  notificationUarpStagingStatusActivityTimer = self->_notificationUarpStagingStatusActivityTimer;
  if (notificationUarpStagingStatusActivityTimer)
  {
    dispatch_source_set_timer(notificationUarpStagingStatusActivityTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_cancel(self->_notificationUarpStagingStatusActivityTimer);
    v13 = self->_notificationUarpStagingStatusActivityTimer;
    self->_notificationUarpStagingStatusActivityTimer = 0;
  }

  [(ACCTransportIOAccessoryManager *)self setAccessoryPowerMode:1];
  accessoryInfoLock = self->_accessoryInfoLock;
  self->_accessoryInfoLock = 0;

  propertyLock = self->_propertyLock;
  self->_propertyLock = 0;

  v16.receiver = self;
  v16.super_class = ACCTransportIOAccessoryManager;
  [(ACCTransportIOAccessoryBase *)&v16 dealloc];
}

- (void)transportClassTerminated
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_authTimerAccessory)
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 4;
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
      v5 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      ioService = [(ACCTransportIOAccessoryBase *)self ioService];
      _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "IOAccessoryManager canceling auth timer for service %d", buf, 8u);
    }

    [(ACCTransportIOAccessoryManager *)self _stopAuthTimer];
    dispatch_source_cancel(self->_authTimerAccessory);
    authTimerAccessory = self->_authTimerAccessory;
    self->_authTimerAccessory = 0;
  }

  notificationUarpStagingStatusActivityTimer = self->_notificationUarpStagingStatusActivityTimer;
  if (notificationUarpStagingStatusActivityTimer)
  {
    dispatch_source_set_timer(notificationUarpStagingStatusActivityTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_cancel(self->_notificationUarpStagingStatusActivityTimer);
    v8 = self->_notificationUarpStagingStatusActivityTimer;
    self->_notificationUarpStagingStatusActivityTimer = 0;
  }

  v9.receiver = self;
  v9.super_class = ACCTransportIOAccessoryManager;
  [(ACCTransportIOAccessoryBase *)&v9 transportClassTerminated];
}

- (void)addIOAccessoryChildPort:(id)port
{
  portCopy = port;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
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
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessoryManager addIOAccessoryChildPort:portCopy];
  }

  mutableioAccessoryChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryChildPorts];
  [mutableioAccessoryChildPorts addObject:portCopy];

  if ([portCopy ioServiceClassType] == 2)
  {
    mutableioAccessoryEAChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryEAChildPorts];
    [mutableioAccessoryEAChildPorts addObject:portCopy];
  }

  if ([portCopy ioServiceClassType] == 3)
  {
    mutableioAccessoryAuthCPChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryAuthCPChildPorts];
    [mutableioAccessoryAuthCPChildPorts addObject:portCopy];
  }

  if ([portCopy ioServiceClassType] == 4)
  {
    mutableioAccessoryOOBPairingChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryOOBPairingChildPorts];
    [mutableioAccessoryOOBPairingChildPorts addObject:portCopy];
  }

  if ([portCopy ioServiceClassType] == 6)
  {
    mutableioAccessoryConfigStreamChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryConfigStreamChildPorts];
    [mutableioAccessoryConfigStreamChildPorts addObject:portCopy];
  }

  [(ACCTransportIOAccessoryManager *)self _pokeResistorID];
}

- (void)removeIOAccessoryChildPort:(id)port
{
  v16 = *MEMORY[0x277D85DE8];
  portCopy = port;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
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
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessoryManager removeIOAccessoryChildPort:portCopy];
  }

  mutableioAccessoryChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryChildPorts];
  [mutableioAccessoryChildPorts removeObject:portCopy];

  if ([portCopy ioServiceClassType] == 2)
  {
    mutableioAccessoryEAChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryEAChildPorts];
    [mutableioAccessoryEAChildPorts removeObject:portCopy];
  }

  if ([portCopy ioServiceClassType] == 3)
  {
    mutableioAccessoryAuthCPChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryAuthCPChildPorts];
    [mutableioAccessoryAuthCPChildPorts removeObject:portCopy];

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
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15[0] = 67109120;
      v15[1] = [(ACCTransportIOAccessoryBase *)self ioService];
      _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "Stop auth timer on AuthCP service removal, for IOAccessoryManager service %d", v15, 8u);
    }

    [(ACCTransportIOAccessoryManager *)self _stopAuthTimer];
  }

  if ([portCopy ioServiceClassType] == 4)
  {
    mutableioAccessoryOOBPairingChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryOOBPairingChildPorts];
    [mutableioAccessoryOOBPairingChildPorts removeObject:portCopy];
  }

  if ([portCopy ioServiceClassType] == 6)
  {
    mutableioAccessoryConfigStreamChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryConfigStreamChildPorts];
    [mutableioAccessoryConfigStreamChildPorts removeObject:portCopy];
  }
}

- (BOOL)setFeaturesFromAuthStatus:(int)status authCert:(id)cert certType:(int)type
{
  v130 = *MEMORY[0x277D85DE8];
  certCopy = cert;
  ioService = [(ACCTransportIOAccessoryBase *)self ioService];
  CFProperty = IORegistryEntryCreateCFProperty(ioService, @"IOAccessoryManagerInductiveFwMode", *MEMORY[0x277CBECE8], 0);
  valuePtr = 3;
  if (CFProperty)
  {
    v10 = CFProperty;
    CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
    CFRelease(v10);
  }

  if (self->_authTimerAccessory)
  {
    [(ACCTransportIOAccessoryManager *)self _stopAuthTimer];
  }

  if (gLogObjects && gNumLogObjects >= 7)
  {
    v11 = *(gLogObjects + 48);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v119 = type;
    _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "setFeaturesFromAuthStatus: certType %d", buf, 8u);
  }

  if (type == 3)
  {
    v13 = MFAACreateDEVNCertCapsForCable();
  }

  else
  {
    v13 = MFAACreateCapsFromAuthCert();
  }

  v14 = v13;
  v113 = MFAACertificateAuthVersionNumber();
  v114 = certCopy;
  if (v14)
  {
    v112 = *v14;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v15 = *(gLogObjects + 48);
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
      *buf = 67109120;
      *v119 = type;
      _os_log_impl(&dword_233656000, v15, OS_LOG_TYPE_DEFAULT, "setFeaturesFromAuthStatus: certType %d, certCaps: NONE", buf, 8u);
    }

    v112 = 0;
  }

  v17 = MFAACanReceiveInductivePower();
  v18 = acc_userDefaults_copyIntegerForKey(@"OverrideCanReceiveInductivePowerOID");
  v19 = acc_policies_supportInductivePowerTX(v18, v17);
  if (type == -1)
  {
    type = mfaa_certificateManager_determineCertificateType();
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v20 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v20 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *v119 = "[ACCTransportIOAccessoryManager setFeaturesFromAuthStatus:authCert:certType:]";
      *&v119[8] = 1024;
      *v120 = -1;
      *&v120[4] = 1024;
      *v121 = type;
      _os_log_impl(&dword_233656000, v20, OS_LOG_TYPE_INFO, "%s: certType %d -> %d", buf, 0x18u);
    }
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v22 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v22 = MEMORY[0x277D86220];
    v23 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    primaryPortNumber = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    ioService2 = [(ACCTransportIOAccessoryBase *)self ioService];
    bAccConnected = [(ACCTransportIOAccessoryManager *)self bAccConnected];
    bIsInductivePowerToAccessory = self->_bIsInductivePowerToAccessory;
    bIsInductive = self->_bIsInductive;
    *buf = 67111680;
    *v119 = primaryPortNumber;
    *&v119[4] = 1024;
    *&v119[6] = status;
    *v120 = 1024;
    *&v120[2] = type;
    *v121 = 1024;
    *&v121[2] = ioService2;
    *v122 = 1024;
    *&v122[2] = bAccConnected;
    LOWORD(v123) = 1024;
    *(&v123 + 2) = bIsInductivePowerToAccessory;
    HIWORD(v123) = 1024;
    *v124 = bIsInductive;
    *&v124[4] = 1024;
    *v125 = valuePtr;
    *&v125[4] = 1024;
    *v126 = v17;
    *&v126[4] = 1024;
    v127 = v18;
    v128 = 1024;
    v129 = v19;
    _os_log_impl(&dword_233656000, v22, OS_LOG_TYPE_DEFAULT, "setFeaturesFromAuthStatus: [%d] authStatus %d, certType %d, ioService %d, bAccConnected %d, _bIsInductivePowerToAccessory %d, _bIsInductive %d, inductiveFwMode %d, certAllowPowerOut %d, override %d, supportInductivePowerTX %d", buf, 0x44u);
  }

  if ((valuePtr != 1 || !self->_bIsInductive) | v19 & 1)
  {
    v29 = 0;
    v30 = 0xFFFF;
    v31 = 0x7FFFFFFF;
    v32 = 0x2812FE000uLL;
    if (status == 1 || status == 4)
    {
      v36 = 0;
LABEL_81:
      v34 = 0x2812FE000uLL;
      goto LABEL_82;
    }

    if (status == 2)
    {
      if (![(ACCTransportIOAccessoryManager *)self bAccConnected])
      {
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v33 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v33 = MEMORY[0x277D86220];
          v42 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          primaryPortNumber2 = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
          ioService3 = [(ACCTransportIOAccessoryBase *)self ioService];
          *buf = 67109376;
          *v119 = primaryPortNumber2;
          *&v119[4] = 1024;
          *&v119[6] = ioService3;
          _os_log_impl(&dword_233656000, v33, OS_LOG_TYPE_DEFAULT, "[%d] bAccConnected for service %d is false, but auth has passed", buf, 0xEu);
        }

        [(ACCTransportIOAccessoryManager *)self setBAccConnected:1];
        v32 = 0x2812FE000uLL;
      }

      if (self->_bIsInductivePowerToAccessory)
      {
        v30 = 448;
        v36 = 65087;
LABEL_80:
        v31 = 0x7FFFFFFF;
        status = 2;
        v29 = 1;
        goto LABEL_81;
      }

      if (self->_bIsInductive)
      {
        v87 = 449;
        v88 = 65086;
        if (type != 2 && type != 7)
        {
          if (MFAACanChargeInductive())
          {
            v87 = 449;
            v88 = 65086;
          }

          else
          {
            if (gLogObjects && gNumLogObjects >= 4)
            {
              v98 = *(gLogObjects + 24);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [ACCTransportIOAccessoryOOBPairing dealloc];
              }

              v98 = MEMORY[0x277D86220];
              v110 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryManager setFeaturesFromAuthStatus:? authCert:? certType:?];
            }

            v87 = 465;
            v88 = 65070;
            v32 = 0x2812FE000;
          }
        }

        v111 = type == 2;
        if (type == 2)
        {
          v36 = v88 | 0x100;
        }

        else
        {
          v36 = v88;
        }

        if (v111)
        {
          v30 = v87 & 0xD1;
        }

        else
        {
          v30 = v87;
        }

        if (v19)
        {
          v30 &= 0x151u;
          v36 |= 0x80u;
        }

        goto LABEL_80;
      }

      if (v113 == 2)
      {
        v92 = MFAACertificateAuthV2Class();
        v34 = 0x2812FE000uLL;
        if (v92 == 4)
        {
          if (gLogObjects && gNumLogObjects >= 4)
          {
            v93 = *(gLogObjects + 24);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v93 = MEMORY[0x277D86220];
            v99 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
          {
            primaryPortNumber3 = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
            *buf = 67109120;
            *v119 = primaryPortNumber3;
            _os_log_impl(&dword_233656000, v93, OS_LOG_TYPE_DEFAULT, "[%d] V2.0 Class4, don't revoke nor allow AdvancedCharging !", buf, 8u);
          }

          v97 = 449;
          v31 = 4;
          v32 = 0x2812FE000uLL;
        }

        else
        {
          v31 = v92;
          v97 = 465;
        }
      }

      else
      {
        v97 = 465;
        v31 = 0x7FFFFFFF;
        v34 = 0x2812FE000;
      }

      if (MFAACanChargeHighVoltage())
      {
        v101 = *(v34 + 3720);
        if (v101 && gNumLogObjects >= 4)
        {
          v102 = *(v101 + 24);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v102 = MEMORY[0x277D86220];
          v104 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
        {
          primaryPortNumber4 = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
          *buf = 67109120;
          *v119 = primaryPortNumber4;
          _os_log_impl(&dword_233656000, v102, OS_LOG_TYPE_DEFAULT, "[%d] HVC capable, allow AdvancedCharging !", buf, 8u);
        }

        v103 = 65086;
      }

      else
      {
        if (acc_userDefaults_BOOLForKey(@"DisableIAPHVCFixForAuth"))
        {
          v103 = 65070;
LABEL_248:
          v109 = MFAACanUseAccPwrUHPM();
          v36 = v103 | v109;
          if (v109)
          {
            v30 = v97 & 0x1FE;
          }

          else
          {
            v30 = v97;
          }

          if (MFAACanUseAccPwrLoV())
          {
            v30 &= ~0x40u;
            v36 |= 0x40u;
          }

          status = 2;
          v29 = 1;
          goto LABEL_82;
        }

        v106 = *(v34 + 3720);
        if (v106 && gNumLogObjects >= 4)
        {
          v102 = *(v106 + 24);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v102 = MEMORY[0x277D86220];
          v107 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
        {
          primaryPortNumber5 = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
          *buf = 67109120;
          *v119 = primaryPortNumber5;
          _os_log_impl(&dword_233656000, v102, OS_LOG_TYPE_DEFAULT, "[%d] override caps and don't revoke nor allow AdvancedCharging !", buf, 8u);
        }

        v103 = 65070;
      }

      v97 = 449;
      v32 = 0x2812FE000;
      goto LABEL_248;
    }

    v34 = 0x2812FE000uLL;
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v40 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v40 = MEMORY[0x277D86220];
      v41 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager setFeaturesFromAuthStatus:authCert:certType:];
    }

    v29 = 0;
    v36 = 0;
    v30 = 0;
  }

  else
  {
    v34 = 0x2812FE000uLL;
    v32 = 0x2812FE000uLL;
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v35 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v35 = MEMORY[0x277D86220];
      v37 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      primaryPortNumber6 = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
      v39 = self->_bIsInductive;
      *buf = 67110656;
      *v119 = primaryPortNumber6;
      *&v119[4] = 1024;
      *&v119[6] = v39;
      *v120 = 1024;
      *&v120[2] = valuePtr;
      *v121 = 1024;
      *&v121[2] = 1;
      *v122 = 1024;
      *&v122[2] = 0;
      LOWORD(v123) = 1024;
      *(&v123 + 2) = status;
      HIWORD(v123) = 1024;
      *v124 = 1;
      _os_log_impl(&dword_233656000, v35, OS_LOG_TYPE_DEFAULT, "setFeaturesFromAuthStatus: [%d] _bIsInductive %d, inductiveFwMode %d (TX %d), supportInductivePowerTX %d, force AuthStatus to Failed! %d -> %d", buf, 0x2Cu);
    }

    v29 = 0;
    v36 = 0;
    v30 = 0xFFFF;
    v31 = 0x7FFFFFFF;
    status = 1;
  }

LABEL_82:
  MFAADeallocAuthCertCaps();
  v45 = *(v34 + 3720);
  if (v45 && *(v32 + 3704) >= 4)
  {
    v46 = *(v45 + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v46 = MEMORY[0x277D86220];
    v47 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    if (v29)
    {
      v48 = "PASSED";
    }

    else
    {
      v48 = "FAILED";
    }

    primaryPortNumber7 = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    ioService4 = [(ACCTransportIOAccessoryBase *)self ioService];
    *buf = 136316930;
    *v119 = v48;
    v32 = 0x2812FE000uLL;
    *&v119[8] = 1024;
    *v120 = primaryPortNumber7;
    *&v120[4] = 1024;
    *v121 = v113;
    *&v121[4] = 1024;
    *v122 = v31;
    *&v122[4] = 2048;
    v123 = v112;
    *v124 = 1024;
    *&v124[2] = v30;
    *v125 = 1024;
    *&v125[2] = v36;
    *v126 = 1024;
    *&v126[2] = ioService4;
    _os_log_impl(&dword_233656000, v46, OS_LOG_TYPE_DEFAULT, "AUTH [%s], [%d] ver %d / %x, authCertCaps0:%08llX -> ioAccFeatMaskRevoke:%08X, ioAccFeatMaskAllow:%08X, self.ioService %d\n", buf, 0x3Au);
  }

  connect = 0;
  ioService5 = [(ACCTransportIOAccessoryBase *)self ioService];
  v52 = IOServiceOpen(ioService5, *MEMORY[0x277D85F48], 0, &connect);
  if (!v52 && connect)
  {
    v53 = v114;
    if (v30 && IOAccessoryManagerRevokeFeatures())
    {
      v54 = *(v34 + 3720);
      if (v54 && *(v32 + 3704) >= 7)
      {
        v55 = *(v54 + 48);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v55 = MEMORY[0x277D86220];
        v60 = MEMORY[0x277D86220];
      }

      v34 = 0x2812FE000uLL;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryManager setFeaturesFromAuthStatus:authCert:certType:];
      }

      v58 = 0;
      if (!v36)
      {
        goto LABEL_127;
      }
    }

    else
    {
      v58 = 1;
      if (!v36)
      {
LABEL_127:
        IOServiceClose(connect);
        goto LABEL_128;
      }
    }

    if (IOAccessoryManagerAllowFeatures())
    {
      v61 = *(v34 + 3720);
      if (v61 && *(v32 + 3704) >= 7)
      {
        v62 = *(v61 + 48);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v62 = MEMORY[0x277D86220];
        v63 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryManager setFeaturesFromAuthStatus:authCert:certType:];
      }

      v58 = 0;
    }

    goto LABEL_127;
  }

  v56 = *(v34 + 3720);
  v53 = v114;
  if (v56 && *(v32 + 3704) >= 7)
  {
    v57 = *(v56 + 48);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v57 = MEMORY[0x277D86220];
    v59 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    primaryPortNumber8 = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    v95 = connect;
    ioService6 = [(ACCTransportIOAccessoryBase *)self ioService];
    *buf = 67109888;
    *v119 = primaryPortNumber8;
    *&v119[4] = 1024;
    *&v119[6] = v52;
    *v120 = 1024;
    *&v120[2] = v95;
    v32 = 0x2812FE000;
    *v121 = 1024;
    *&v121[2] = ioService6;
    _os_log_error_impl(&dword_233656000, v57, OS_LOG_TYPE_ERROR, "[%d] IOServiceOpen fail kernStatus:%02X, ioConnForService:%04X ioService:%d", buf, 0x1Au);
  }

  v58 = 0;
LABEL_128:
  if (self->_bIsInductivePowerToAccessory)
  {
    if (v29)
    {
      v64 = 4;
    }

    else
    {
      v64 = 2;
    }

    v65 = *(v34 + 3720);
    if (v65 && *(v32 + 3704) >= 4)
    {
      v66 = *(v65 + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v66 = MEMORY[0x277D86220];
      v67 = MEMORY[0x277D86220];
    }

    v34 = 0x2812FE000uLL;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      if (v29)
      {
        v68 = "PASSED";
      }

      else
      {
        v68 = "FAILED";
      }

      primaryPortNumber9 = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
      ioService7 = [(ACCTransportIOAccessoryBase *)self ioService];
      *buf = 136315906;
      *v119 = v68;
      *&v119[8] = 1024;
      *v120 = primaryPortNumber9;
      *&v120[4] = 1024;
      *v121 = v64;
      *&v121[4] = 1024;
      *v122 = ioService7;
      _os_log_impl(&dword_233656000, v66, OS_LOG_TYPE_DEFAULT, "AUTH [%s], for AWC [%d], setting power mode %d, self.ioService %d", buf, 0x1Eu);
    }

    [(ACCTransportIOAccessoryManager *)self setAccessoryPowerMode:v64];
  }

  connectionType = self->_connectionType;
  v72 = acc_userDefaultsIapd_copyIntegerForKey(@"PretendBatteryLevel");
  v73 = !self->_bIsInductive;
  v74 = 1;
  if (!v73 && connectionType != 8)
  {
    v74 = acc_userDefaults_BOOLForKey(@"DisableInductiveAuthTTR") ^ 1;
    v73 = !self->_bIsInductive;
  }

  if (v73 || connectionType == 8)
  {
    v75 = acc_userDefaults_BOOLForKey(@"AuthTTRForAllTransports");
  }

  else
  {
    v75 = 1;
  }

  if ([(ACCTransportIOAccessoryManager *)self batteryChargeLevelPercent]>= 0x50)
  {
    if (v72)
    {
      v76 = v72 < 80;
    }

    else
    {
      v76 = 0;
    }

    v77 = v76;
    v74 &= v77;
  }

  if ((v75 & v74) != 1)
  {
    if (status != 4 && status != 1)
    {
      goto LABEL_208;
    }

    v80 = *(v34 + 3720);
    if (v80 && gNumLogObjects >= 4)
    {
      v81 = *(v80 + 24);
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

    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v119 = "[ACCTransportIOAccessoryManager setFeaturesFromAuthStatus:authCert:certType:]";
      _os_log_impl(&dword_233656000, v81, OS_LOG_TYPE_DEFAULT, "IOAccessoryManager:%s Skipped auth TTR!!!", buf, 0xCu);
    }

LABEL_207:

    goto LABEL_208;
  }

  if (status != 4)
  {
    if (status == 1)
    {
      v78 = *(v34 + 3720);
      if (v78 && gNumLogObjects >= 4)
      {
        v79 = *(v78 + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v79 = MEMORY[0x277D86220];
        v86 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
      {
        [ACCTransportIOAccessoryManager setFeaturesFromAuthStatus:authCert:certType:];
      }

      if (acc_userDefaults_BOOLForKey(@"SysdiagnoseInsteadOfAuthTTR"))
      {
        acc_sysdiagnose_InitiateAuthFailureSysdiagnose();
      }

      else
      {
        acc_tapToRadar_InitiateAuthFailureTTR();
      }
    }

    goto LABEL_208;
  }

  v83 = acc_userDefaults_BOOLForKey(@"EnableAuthTimeoutTTR");
  v84 = *(v34 + 3720);
  if (!v83)
  {
    if (v84 && gNumLogObjects >= 7)
    {
      v81 = *(v84 + 48);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v81 = MEMORY[0x277D86220];
      v90 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessoryManager setFeaturesFromAuthStatus:authCert:certType:];
    }

    goto LABEL_207;
  }

  if (v84 && gNumLogObjects >= 4)
  {
    v85 = *(v84 + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v85 = MEMORY[0x277D86220];
    v89 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessoryManager setFeaturesFromAuthStatus:authCert:certType:];
  }

  if (acc_userDefaults_BOOLForKey(@"SysdiagnoseInsteadOfAuthTTR"))
  {
    acc_sysdiagnose_InitiateAuthTimeoutSysdiagnose();
  }

  else
  {
    acc_tapToRadar_InitiateAuthTimeoutTTR();
  }

LABEL_208:

  return v58;
}

- (BOOL)setUSBMode:(int)mode
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(ACCTransportIOAccessoryManager *)self _IOAccUSBModeTypeForSetUSBMode:?];
  v6 = IOAccessoryManagerConfigureUSBMode();
  v7 = v6;
  if (gLogObjects)
  {
    v8 = gNumLogObjects <= 3;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v6)
  {
    if (v9)
    {
      v10 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = 67109632;
      modeCopy2 = mode;
      v16 = 1024;
      v17 = v5;
      v18 = 1024;
      ioService = v7;
      _os_log_error_impl(&dword_233656000, v10, OS_LOG_TYPE_ERROR, "ERROR - IOAccessoryManagerConfigureUSBMode usbMode=%d usbModeType (IOAccessoryUSBModeType) %d failed 0x%X", &v14, 0x14u);
    }
  }

  else
  {
    if (v9)
    {
      v10 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = 67109632;
      modeCopy2 = mode;
      v16 = 1024;
      v17 = v5;
      v18 = 1024;
      ioService = [(ACCTransportIOAccessoryBase *)self ioService];
      _os_log_debug_impl(&dword_233656000, v10, OS_LOG_TYPE_DEBUG, "successfully set USB Mode %d (IOAccessoryUSBModeType %d) for service %d", &v14, 0x14u);
    }
  }

  return v7 == 0;
}

- (int)getUSBMode
{
  v19 = *MEMORY[0x277D85DE8];
  [(ACCTransportIOAccessoryBase *)self ioService];
  USBConnectType = IOAccessoryManagerGetUSBConnectType();
  if (gLogObjects)
  {
    v4 = gNumLogObjects <= 3;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (USBConnectType)
  {
    if (v5)
    {
      v6 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager getUSBMode];
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v6 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109632;
      v14 = -1;
      v15 = 1024;
      v16 = 0;
      v17 = 1024;
      ioService = [(ACCTransportIOAccessoryBase *)self ioService];
      _os_log_debug_impl(&dword_233656000, v6, OS_LOG_TYPE_DEBUG, "USB Connect %d, usbConnectActive %d, for service %d", buf, 0x14u);
    }
  }

  v9 = [(ACCTransportIOAccessoryManager *)self _ACCPlatformUSBModeForIOAccessoryUSBConnectType:0xFFFFFFFFLL];
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v10 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessoryManager getUSBMode];
  }

  return v9;
}

- (BOOL)setUSBCurrentOffset:(int)offset
{
  v3 = IOAccessoryManagerSetUSBCurrentOffset();
  v4 = v3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects <= 3;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v3)
  {
    if (v6)
    {
      v7 = *(gLogObjects + 24);
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager setUSBCurrentOffset:];
    }
  }

  else
  {
    if (v6)
    {
      v7 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessoryManager setUSBCurrentOffset:];
    }
  }

  return v4 == 0;
}

- (BOOL)setUSBCurrentLimitBase:(unsigned int)base forceResponse:(BOOL)response
{
  responseCopy = response;
  v33 = *MEMORY[0x277D85DE8];
  v7 = IOAccessoryManagerSetUSBCurrentLimitBase();
  v8 = v7;
  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v7)
  {
    if (v10)
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
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager setUSBCurrentLimitBase:forceResponse:];
    }
  }

  else
  {
    if (v10)
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
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessoryManager setUSBCurrentLimitBase:forceResponse:];
    }
  }

  if ((platform_systemInfo_isLightning() & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v14 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v14 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      currentLimitBaseInmA = self->_currentLimitBaseInmA;
      currentLimitBaseInmAValid = self->_currentLimitBaseInmAValid;
      *buf = 67110144;
      v24 = currentLimitBaseInmA;
      v25 = 1024;
      baseCopy = base;
      v27 = 1024;
      v28 = currentLimitBaseInmAValid;
      v29 = 1024;
      v30 = 1;
      v31 = 1024;
      v32 = responseCopy;
      _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_DEFAULT, "setUSBCurrentLimitBase: not lightning device, currentLimitBaseInmA %d -> %d, valid %d -> %d, forceResponse %d", buf, 0x20u);
    }

    if (responseCopy || self->_currentLimitBaseInmA != base)
    {
      self->_currentLimitBaseInmA = base;
      self->_currentLimitBaseInmAValid = 1;
    }

    else
    {
      v18 = self->_currentLimitBaseInmAValid;
      self->_currentLimitBaseInmAValid = 1;
      if (v18)
      {
        return v8 == 0;
      }
    }

    v19 = dispatch_time(0, 10000000);
    notificationPortQueue = self->super._notificationPortQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__ACCTransportIOAccessoryManager_setUSBCurrentLimitBase_forceResponse___block_invoke;
    block[3] = &unk_2789E8690;
    block[4] = self;
    dispatch_after(v19, notificationPortQueue, block);
  }

  return v8 == 0;
}

uint64_t __71__ACCTransportIOAccessoryManager_setUSBCurrentLimitBase_forceResponse___block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 4;
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
    v4 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_233656000, v4, OS_LOG_TYPE_DEFAULT, "setUSBCurrentLimitBase: auto generate kIOAccessoryManagerMessageUSBCurrentLimitChange", v6, 2u);
  }

  return [*(a1 + 32) _handleUSBCurrentLimitNotification];
}

- (unsigned)USBCurrentLimitInmA
{
  v28 = *MEMORY[0x277D85DE8];
  v20 = 0;
  [(ACCTransportIOAccessoryBase *)self ioService];
  USBCurrentLimit = IOAccessoryManagerGetUSBCurrentLimit();
  if (USBCurrentLimit)
  {
    v20 = 0;
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 4;
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
      v8 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      connectionUUID = [(ACCTransportIOAccessoryManager *)self connectionUUID];
      *buf = 67109890;
      *v22 = v20;
      *&v22[4] = 1024;
      *&v22[6] = USBCurrentLimit;
      *v23 = 2112;
      *&v23[2] = connectionUUID;
      v24 = 1024;
      ioService = [(ACCTransportIOAccessoryBase *)self ioService];
      _os_log_error_impl(&dword_233656000, v8, OS_LOG_TYPE_ERROR, "ERROR - IOAccessoryManagerGetUSBCurrentLimit currentLimitBaseInmA=%d failed 0x%X for connectionUUID %@, self.ioService %d", buf, 0x1Eu);
    }

    if ((platform_systemInfo_isLightning() & 1) == 0 && self->_currentLimitBaseInmAValid)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v9 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v9 = MEMORY[0x277D86220];
        v11 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        currentLimitBaseInmA = self->_currentLimitBaseInmA;
        *buf = 67109376;
        *v22 = v20;
        *&v22[4] = 1024;
        *&v22[6] = currentLimitBaseInmA;
        _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_INFO, "USBCurrentLimitInmA: not lightning device and _currentLimitBaseInmAValid, usbCurrentLimitInmA %d -> %d", buf, 0xEu);
      }

      v20 = self->_currentLimitBaseInmA;
    }
  }

  else
  {
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 4;
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

      v10 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(ACCTransportIOAccessoryManager *)&v20 USBCurrentLimitInmA];
    }

    platform_systemInfo_isLightning();
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v13 = *(gLogObjects + 24);
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

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v20;
    ioService2 = [(ACCTransportIOAccessoryBase *)self ioService];
    currentLimitBaseInmAValid = self->_currentLimitBaseInmAValid;
    *buf = 136316162;
    *v22 = "[ACCTransportIOAccessoryManager USBCurrentLimitInmA]";
    *&v22[8] = 1024;
    *v23 = USBCurrentLimit;
    *&v23[4] = 1024;
    *&v23[6] = v15;
    v24 = 1024;
    ioService = ioService2;
    v26 = 1024;
    v27 = currentLimitBaseInmAValid;
    _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_DEFAULT, "%s: status %x, IOAccessoryManagerGetUSBCurrentLimit -> %d for service %d, _currentLimitBaseInmAValid %d", buf, 0x24u);
  }

  return v20;
}

- (unsigned)USBCurrentLimitBaseInmA
{
  v28 = *MEMORY[0x277D85DE8];
  v20 = 0;
  [(ACCTransportIOAccessoryBase *)self ioService];
  USBCurrentLimitBase = IOAccessoryManagerGetUSBCurrentLimitBase();
  if (USBCurrentLimitBase)
  {
    v20 = 0;
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 4;
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
      v8 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      connectionUUID = [(ACCTransportIOAccessoryManager *)self connectionUUID];
      *buf = 67109890;
      *v22 = v20;
      *&v22[4] = 1024;
      *&v22[6] = USBCurrentLimitBase;
      *v23 = 2112;
      *&v23[2] = connectionUUID;
      v24 = 1024;
      ioService = [(ACCTransportIOAccessoryBase *)self ioService];
      _os_log_error_impl(&dword_233656000, v8, OS_LOG_TYPE_ERROR, "ERROR - IOAccessoryManagerGetUSBCurrentLimitBase currentLimitBaseInmA=%d failed 0x%X for connectionUUID %@, self.ioService %d", buf, 0x1Eu);
    }

    if ((platform_systemInfo_isLightning() & 1) == 0 && self->_currentLimitBaseInmAValid)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v9 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v9 = MEMORY[0x277D86220];
        v11 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        currentLimitBaseInmA = self->_currentLimitBaseInmA;
        *buf = 67109376;
        *v22 = v20;
        *&v22[4] = 1024;
        *&v22[6] = currentLimitBaseInmA;
        _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_INFO, "USBCurrentLimitBaseInmA: not lightning device and _currentLimitBaseInmAValid, usbCurrentLimitBaseInmA %d -> %d", buf, 0xEu);
      }

      v20 = self->_currentLimitBaseInmA;
    }
  }

  else
  {
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 4;
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

      v10 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(ACCTransportIOAccessoryManager *)&v20 USBCurrentLimitBaseInmA];
    }

    platform_systemInfo_isLightning();
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v13 = *(gLogObjects + 24);
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

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v20;
    ioService2 = [(ACCTransportIOAccessoryBase *)self ioService];
    currentLimitBaseInmAValid = self->_currentLimitBaseInmAValid;
    *buf = 136316162;
    *v22 = "[ACCTransportIOAccessoryManager USBCurrentLimitBaseInmA]";
    *&v22[8] = 1024;
    *v23 = USBCurrentLimitBase;
    *&v23[4] = 1024;
    *&v23[6] = v15;
    v24 = 1024;
    ioService = ioService2;
    v26 = 1024;
    v27 = currentLimitBaseInmAValid;
    _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_DEFAULT, "%s: status %x, IOAccessoryManagerGetUSBCurrentLimitBase -> %d for service %d, _currentLimitBaseInmAValid %d", buf, 0x24u);
  }

  return v20;
}

- (int)USBCurrentLimitOffsetInmA
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  [(ACCTransportIOAccessoryBase *)self ioService];
  USBCurrentLimitOffset = IOAccessoryManagerGetUSBCurrentLimitOffset();
  if (USBCurrentLimitOffset)
  {
    v14 = 0;
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 4;
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
      v8 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager USBCurrentLimitOffsetInmA];
    }
  }

  else
  {
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 4;
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
      v8 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(ACCTransportIOAccessoryManager *)&v14 USBCurrentLimitOffsetInmA];
    }
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v9 = *(gLogObjects + 24);
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

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v14;
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    *buf = 136315906;
    v16 = "[ACCTransportIOAccessoryManager USBCurrentLimitOffsetInmA]";
    v17 = 1024;
    v18 = USBCurrentLimitOffset;
    v19 = 1024;
    v20 = v11;
    v21 = 1024;
    v22 = ioService;
    _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "%s: status %x, IOAccessoryManagerGetUSBCurrentLimitOffset -> %d for service %d", buf, 0x1Eu);
  }

  return v14;
}

- (unsigned)USBChargingVoltageInmV
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  [(ACCTransportIOAccessoryBase *)self ioService];
  USBChargingVoltage = IOAccessoryManagerGetUSBChargingVoltage();
  if (USBChargingVoltage)
  {
    v14 = 0;
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 4;
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
      v8 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager USBChargingVoltageInmV];
    }
  }

  else
  {
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 4;
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
      v8 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(ACCTransportIOAccessoryManager *)&v14 USBChargingVoltageInmV];
    }
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v9 = *(gLogObjects + 24);
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

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v14;
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    *buf = 136315906;
    v16 = "[ACCTransportIOAccessoryManager USBChargingVoltageInmV]";
    v17 = 1024;
    v18 = USBChargingVoltage;
    v19 = 1024;
    v20 = v11;
    v21 = 1024;
    v22 = ioService;
    _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "%s: status %x, IOAccessoryManagerGetUSBChargingVoltage -> %d for service %d", buf, 0x1Eu);
  }

  return v14;
}

- (int)cableType
{
  v18 = *MEMORY[0x277D85DE8];
  [(ACCTransportIOAccessoryBase *)self ioService];
  USBConnectType = IOAccessoryManagerGetUSBConnectType();
  if (gLogObjects)
  {
    v4 = gNumLogObjects <= 3;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (USBConnectType)
  {
    if (v5)
    {
      v6 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager getUSBMode];
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v6 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109632;
      v13 = -1;
      v14 = 1024;
      v15 = 0;
      v16 = 1024;
      ioService = [(ACCTransportIOAccessoryBase *)self ioService];
      _os_log_debug_impl(&dword_233656000, v6, OS_LOG_TYPE_DEBUG, "CableType: %d, usbConnectActive %d, for service %d", buf, 0x14u);
    }
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v9 = *(gLogObjects + 24);
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

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessoryManager cableType];
  }

  return -1;
}

- (unsigned)sleepPowerCurrentLimitInmA
{
  ioService = [(ACCTransportIOAccessoryBase *)self ioService];

  return MEMORY[0x2821F10D8](ioService);
}

- (BOOL)isPowerDuringSleepSupported
{
  v17 = *MEMORY[0x277D85DE8];
  [(ACCTransportIOAccessoryBase *)self ioService];
  IsSupported = IOAccessoryManagerPowerDuringSleepIsSupported();
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
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

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 67109120;
    LODWORD(v12) = IsSupported != 0;
    _os_log_impl(&dword_233656000, v6, OS_LOG_TYPE_INFO, "powerDuringSleepIsSupported = %d", &v11, 8u);
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v7 = *(gLogObjects + 24);
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    v11 = 136315650;
    v12 = "[ACCTransportIOAccessoryManager isPowerDuringSleepSupported]";
    v13 = 1024;
    v14 = IsSupported != 0;
    v15 = 1024;
    v16 = ioService;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "%s: IOAccessoryManagerPowerDuringSleepIsSupported -> %d for service %d", &v11, 0x18u);
  }

  return IsSupported != 0;
}

- (BOOL)setPowerDuringSleepEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v16 = *MEMORY[0x277D85DE8];
  v5 = IOAccessoryManagerSetPowerDuringSleep();
  v6 = v5;
  if (gLogObjects)
  {
    v7 = gNumLogObjects <= 3;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (v5)
  {
    if (v8)
    {
      v9 = *(gLogObjects + 24);
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
      [ACCTransportIOAccessoryManager setPowerDuringSleepEnabled:];
    }
  }

  else
  {
    if (v8)
    {
      v9 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13[0] = 67109376;
      v13[1] = enabledCopy;
      v14 = 1024;
      ioService = [(ACCTransportIOAccessoryBase *)self ioService];
      _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_INFO, "successfully set IOAccessoryManagerSetPowerDuringSleep enabled %d for service %d", v13, 0xEu);
    }
  }

  return v6 == 0;
}

- (BOOL)isPowerDuringSleepEnabled
{
  v8 = *MEMORY[0x277D85DE8];
  [(ACCTransportIOAccessoryBase *)self ioService];
  PowerDuringSleep = IOAccessoryManagerGetPowerDuringSleep();
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 4;
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
    v5 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = PowerDuringSleep != 0;
    _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_INFO, "powerDuringSleepIsEnabled = %d", v7, 8u);
  }

  return PowerDuringSleep != 0;
}

- (BOOL)setBatteryPackMode:(BOOL)mode forceResponse:(BOOL)response
{
  responseCopy = response;
  modeCopy = mode;
  v33 = *MEMORY[0x277D85DE8];
  v7 = IOAccessoryManagerSetBatteryPackMode();
  v8 = v7;
  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v7)
  {
    if (v10)
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
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager setBatteryPackMode:forceResponse:];
    }
  }

  else
  {
    if (v10)
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
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessoryManager setBatteryPackMode:modeCopy forceResponse:self];
    }
  }

  if ((platform_systemInfo_isLightning() & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v14 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v14 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      batteryPackModeEnabled = self->_batteryPackModeEnabled;
      batteryPackModeEnabledValid = self->_batteryPackModeEnabledValid;
      *buf = 67110144;
      v24 = batteryPackModeEnabled;
      v25 = 1024;
      v26 = modeCopy;
      v27 = 1024;
      v28 = batteryPackModeEnabledValid;
      v29 = 1024;
      v30 = 1;
      v31 = 1024;
      v32 = responseCopy;
      _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_DEFAULT, "setBatteryPackMode: not lightning device, batteryPackModeEnabled %d -> %d, valid %d -> %d, forceResponse %d", buf, 0x20u);
    }

    if (responseCopy || self->_batteryPackModeEnabled != modeCopy)
    {
      self->_batteryPackModeEnabled = modeCopy;
      self->_batteryPackModeEnabledValid = 1;
    }

    else
    {
      v18 = self->_batteryPackModeEnabledValid;
      self->_batteryPackModeEnabledValid = 1;
      if (v18)
      {
        return v8 == 0;
      }
    }

    v19 = dispatch_time(0, 10000000);
    notificationPortQueue = self->super._notificationPortQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__ACCTransportIOAccessoryManager_setBatteryPackMode_forceResponse___block_invoke;
    block[3] = &unk_2789E8690;
    block[4] = self;
    dispatch_after(v19, notificationPortQueue, block);
  }

  return v8 == 0;
}

uint64_t __67__ACCTransportIOAccessoryManager_setBatteryPackMode_forceResponse___block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 4;
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
    v4 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_233656000, v4, OS_LOG_TYPE_DEFAULT, "setBatteryPackMode: auto generate kIOAccessoryManagerMessageUSBBatteryPackChange", v6, 2u);
  }

  return [*(a1 + 32) _handleBatteryPackNotification];
}

- (BOOL)isBatteryPackModeEnabled
{
  v18 = *MEMORY[0x277D85DE8];
  [(ACCTransportIOAccessoryBase *)self ioService];
  BatteryPackMode = IOAccessoryManagerGetBatteryPackMode();
  v4 = BatteryPackMode != 0;
  if ((platform_systemInfo_isLightning() & 1) == 0 && self->_batteryPackModeEnabledValid)
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v5 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      batteryPackModeEnabled = self->_batteryPackModeEnabled;
      v13 = 67109376;
      *v14 = BatteryPackMode != 0;
      *&v14[4] = 1024;
      *&v14[6] = batteryPackModeEnabled;
      _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_INFO, "setBatteryPackMode: not lightning device and batteryPackModeEnabledValid, batteryPackModeEnabled %d -> %d", &v13, 0xEu);
    }

    v4 = self->_batteryPackModeEnabled;
  }

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

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    batteryPackModeEnabledValid = self->_batteryPackModeEnabledValid;
    v13 = 136315650;
    *v14 = "[ACCTransportIOAccessoryManager isBatteryPackModeEnabled]";
    *&v14[8] = 1024;
    v15 = v4;
    v16 = 1024;
    v17 = batteryPackModeEnabledValid;
    _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_DEFAULT, "%s: batteryPackModeIsEnabled = %d, _batteryPackModeEnabledValid %d", &v13, 0x18u);
  }

  return v4;
}

- (BOOL)setAccessoryRequestedCurrent:(unsigned int)current
{
  v3 = IOAccessoryManagerSetAccessoryRequestedCurrent();
  v4 = v3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects <= 3;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v3)
  {
    if (v6)
    {
      v7 = *(gLogObjects + 24);
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager setAccessoryRequestedCurrent:];
    }
  }

  else
  {
    if (v6)
    {
      v7 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessoryManager setAccessoryRequestedCurrent:];
    }
  }

  return v4 == 0;
}

- (BOOL)setAccessoryUsedCurrent:(unsigned int)current
{
  v3 = IOAccessoryManagerSetAccessoryUsedCurrent();
  v4 = v3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects <= 3;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v3)
  {
    if (v6)
    {
      v7 = *(gLogObjects + 24);
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager setAccessoryUsedCurrent:];
    }
  }

  else
  {
    if (v6)
    {
      v7 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessoryManager setAccessoryUsedCurrent:];
    }
  }

  return v4 == 0;
}

- (BOOL)resetAccessoryBaseCurrent
{
  v3 = IOAccessoryManagerRestoreUSBCurrentLimitBase();
  v4 = v3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects <= 3;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v3)
  {
    if (v6)
    {
      v7 = *(gLogObjects + 24);
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager resetAccessoryBaseCurrent];
    }
  }

  else
  {
    if (v6)
    {
      v7 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(ACCTransportIOAccessoryManager *)self resetAccessoryBaseCurrent];
    }
  }

  return v4 == 0;
}

- (unsigned)accessoryChargingCurrentInmA
{
  v14 = *MEMORY[0x277D85DE8];
  [(ACCTransportIOAccessoryBase *)self ioService];
  ActivePowerMode = IOAccessoryManagerGetActivePowerMode();
  v4 = [(ACCTransportIOAccessoryManager *)self accessoryPowerModeCurrentLimitInmA:ActivePowerMode];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
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
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 67109632;
    v9[1] = v4;
    v10 = 1024;
    v11 = ActivePowerMode;
    v12 = 1024;
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    _os_log_debug_impl(&dword_233656000, v7, OS_LOG_TYPE_DEBUG, "successfully get accessoryChargingCurrentInmA %d with IOAccessoryPowerMode %d for service %d", v9, 0x14u);
  }

  return v4;
}

- (unsigned)accessoryPowerModeCurrentLimitInmA:(int)a
{
  v15 = *MEMORY[0x277D85DE8];
  [(ACCTransportIOAccessoryBase *)self ioService];
  v5 = IOAccessoryManagerPowerModeCurrentLimit();
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 4;
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
    v8 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10[0] = 67109632;
    v10[1] = v5;
    v11 = 1024;
    aCopy = a;
    v13 = 1024;
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    _os_log_debug_impl(&dword_233656000, v8, OS_LOG_TYPE_DEBUG, "successfully get IOAccessoryManagerPowerModeCurrentLimit %d with ACCPlatform_Power_Mode_t %d for service %d", v10, 0x14u);
  }

  return v5;
}

- (BOOL)supervisedTransportsRestricted
{
  if ([(ACCTransportIOAccessoryBase *)self ioService]&& (v3 = [(ACCTransportIOAccessoryBase *)self ioService], (CFProperty = IORegistryEntryCreateCFProperty(v3, @"SupervisedTransportsRestricted", *MEMORY[0x277CBECE8], 0)) != 0))
  {
    v5 = CFProperty != *MEMORY[0x277CBED10];
    CFRelease(CFProperty);
  }

  else
  {
    v5 = 1;
  }

  if (gLogObjects)
  {
    v6 = gNumLogObjects < 4;
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
    v8 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportIOAccessoryManager *)v5 supervisedTransportsRestricted];
  }

  return v5;
}

- (void)_registerForIOAccessoryManagerInterestNotifications
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_registerForBatteryNotifications
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_registerForIOAccessoryIDBusHIDDevice
{
  [(ACCTransportIOAccessoryManager *)self setIoAccessoryIDBusHIDDevicePortRef:IONotificationPortCreate(*MEMORY[0x277CD2898])];
  RunLoopSource = IONotificationPortGetRunLoopSource([(ACCTransportIOAccessoryManager *)self ioAccessoryIDBusHIDDevicePortRef]);
  if (RunLoopSource)
  {
    v4 = RunLoopSource;
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, v4, *MEMORY[0x277CBF058]);
    v6 = IOServiceMatching("IOAccessoryIDBusHIDDevice");
    [v6 setObject:@"IOAccessoryBulkDataEndpoint" forKeyedSubscript:@"IOProviderClass"];
    if (IOServiceAddMatchingNotification([(ACCTransportIOAccessoryManager *)self ioAccessoryIDBusHIDDevicePortRef], "IOServiceFirstMatch", v6, __IOAccessoryIDBusHIDDeviceMatch, self, &self->_idbusHIDDeviceIterator))
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v7 = *(gLogObjects + 24);
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

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryManager _registerForBatteryNotifications];
      }
    }

    else
    {
      __IOAccessoryIDBusHIDDeviceMatch(self, self->_idbusHIDDeviceIterator);
    }
  }
}

- (int)_IOAccUSBModeTypeForSetUSBMode:(int)mode
{
  if (mode >= 3)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 4;
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

      v6 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager _IOAccUSBModeTypeForSetUSBMode:];
    }

    v3 = 0;
  }

  else
  {
    v3 = dword_2336C0300[mode];
  }

  if (gLogObjects)
  {
    v7 = gNumLogObjects < 4;
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
    v9 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessoryManager _IOAccUSBModeTypeForSetUSBMode:];
  }

  return v3;
}

- (int)_ACCPlatformUSBModeForIOAccessoryUSBConnectType:(int)type
{
  if (type >= 6)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 4;
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

      v6 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager _ACCPlatformUSBModeForIOAccessoryUSBConnectType:];
    }

    v3 = -1;
  }

  else
  {
    v3 = dword_2336C030C[type];
  }

  if (gLogObjects)
  {
    v7 = gNumLogObjects < 4;
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
    v9 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessoryManager _ACCPlatformUSBModeForIOAccessoryUSBConnectType:];
  }

  return v3;
}

- (void)_handleResistorIDChangeNotification:(int)notification
{
  v3 = *&notification;
  v40[1] = *MEMORY[0x277D85DE8];
  if ([(ACCTransportIOAccessoryManager *)self resistorID]== notification)
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 4;
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

      v9 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessoryManager _handleResistorIDChangeNotification:];
    }

    connectionUUID = [(ACCTransportIOAccessoryManager *)self connectionUUID];

    if (v3 != 100 && !connectionUUID)
    {
      v11 = dispatch_get_global_queue(0, 0);
      v12 = v11;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __70__ACCTransportIOAccessoryManager__handleResistorIDChangeNotification___block_invoke_76;
      v29[3] = &unk_2789E9040;
      v30 = v3;
      v29[4] = self;
      v13 = v29;
LABEL_41:
      dispatch_async(v11, v13);
    }
  }

  else
  {
    [(ACCTransportIOAccessoryManager *)self setResistorID:v3];
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 4;
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

      v14 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v14 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v36) = [(ACCTransportIOAccessoryManager *)self resistorID];
      _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_DEFAULT, "Manager: New resistorID value %d", buf, 8u);
    }

    if (v3 != 100)
    {
      v15 = MEMORY[0x277CBEB38];
      v39 = @"resistorID";
      v16 = [MEMORY[0x277CCABB0] numberWithInt:{-[ACCTransportIOAccessoryManager resistorID](self, "resistorID")}];
      v40[0] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      v18 = [v15 dictionaryWithDictionary:v17];

      if (gLogObjects && gNumLogObjects >= 4)
      {
        v19 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v19 = MEMORY[0x277D86220];
        v20 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v36 = @"com.apple.accessories.resistor.idChanged";
        v37 = 2112;
        v38 = v18;
        _os_log_impl(&dword_233656000, v19, OS_LOG_TYPE_DEFAULT, "CoreAnalytics event: %@\neventDict: %@", buf, 0x16u);
      }

      AnalyticsSendEvent();
    }

    connectionUUID2 = [(ACCTransportIOAccessoryManager *)self connectionUUID];

    if (!connectionUUID2)
    {
      if (v3 == 100)
      {
        return;
      }

      v11 = dispatch_get_global_queue(0, 0);
      v12 = v11;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__ACCTransportIOAccessoryManager__handleResistorIDChangeNotification___block_invoke;
      block[3] = &unk_2789E9040;
      v32 = v3;
      block[4] = self;
      v13 = block;
      goto LABEL_41;
    }

    if (gLogObjects && gNumLogObjects >= 4)
    {
      v22 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v22 = MEMORY[0x277D86220];
      v23 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      connectionUUID3 = [(ACCTransportIOAccessoryManager *)self connectionUUID];
      *buf = 138412290;
      v36 = connectionUUID3;
      _os_log_impl(&dword_233656000, v22, OS_LOG_TYPE_DEFAULT, "Manager: Have a connection UUID %@, sending resistorID notification", buf, 0xCu);
    }

    v25 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
    v33[0] = *MEMORY[0x277CFD178];
    connectionUUID4 = [(ACCTransportIOAccessoryManager *)self connectionUUID];
    v33[1] = *MEMORY[0x277CFD190];
    v34[0] = connectionUUID4;
    v34[1] = v25;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x277CFD198] object:0 userInfo:v27];
  }
}

void __70__ACCTransportIOAccessoryManager__handleResistorIDChangeNotification___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 4;
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
    v4 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&dword_233656000, v4, OS_LOG_TYPE_DEFAULT, "Manager: Have no connection UUID for valid resistorID %d on resistor ID change notification. Tell shared Manager", v7, 8u);
  }

  v6 = +[ACCTransportIOAccessorySharedManager sharedManager];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 IOAccessoryManagerResistorIDChanged:*(a1 + 40) forManager:*(a1 + 32)];
  }
}

void __70__ACCTransportIOAccessoryManager__handleResistorIDChangeNotification___block_invoke_76(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 4;
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
    v4 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&dword_233656000, v4, OS_LOG_TYPE_DEFAULT, "Manager: Still have no connection UUID for a valid resistorID %d that should have a connectionUUID. Tell shared Manager", v7, 8u);
  }

  v6 = +[ACCTransportIOAccessorySharedManager sharedManager];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 IOAccessoryManagerResistorIDChanged:*(a1 + 40) forManager:*(a1 + 32)];
  }
}

- (void)_sendNotification:(id)notification
{
  v37 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = +[ACCTransportIOAccessorySharedManager sharedManager];
  [v5 lockAccessoryPorts];

  _connectionUUIDsForNotification = [(ACCTransportIOAccessoryManager *)self _connectionUUIDsForNotification];
  if ([_connectionUUIDsForNotification count])
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v7 = *(gLogObjects + 24);
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
      [(ACCTransportIOAccessoryManager *)notificationCopy _sendNotification:_connectionUUIDsForNotification, v7];
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = _connectionUUIDsForNotification;
    obj = _connectionUUIDsForNotification;
    v9 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      v12 = *MEMORY[0x277CFD1B8];
      v13 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          v34 = v12;
          v35 = v15;
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
          v17 = gLogObjects;
          v18 = gNumLogObjects;
          if (gLogObjects)
          {
            v19 = gNumLogObjects < 4;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v31 = v17;
              v32 = 1024;
              LODWORD(v33) = v18;
              _os_log_error_impl(&dword_233656000, v13, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v20 = v13;
            v21 = v13;
          }

          else
          {
            v21 = *(gLogObjects + 24);
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v31 = notificationCopy;
            v32 = 2112;
            v33 = v16;
            _os_log_debug_impl(&dword_233656000, v21, OS_LOG_TYPE_DEBUG, "Sending %@ notification, notificationDict=%@", buf, 0x16u);
          }

          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter postNotificationName:notificationCopy object:0 userInfo:v16];
        }

        v10 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
      }

      while (v10);
    }

    _connectionUUIDsForNotification = v24;
  }

  v23 = +[ACCTransportIOAccessorySharedManager sharedManager];
  [v23 unlockAccessoryPorts];
}

- (void)_updateInductiveInfo:(BOOL)info
{
  infoCopy = info;
  *&v58[5] = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
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
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    bIsInductive = self->_bIsInductive;
    *buf = 136315650;
    v56 = "[ACCTransportIOAccessoryManager _updateInductiveInfo:]";
    v57 = 1024;
    *v58 = bIsInductive;
    v58[2] = 1024;
    *&v58[3] = infoCopy;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "%s: _bIsInductive %d, force %d", buf, 0x18u);
  }

  if (infoCopy || self->_bIsInductive)
  {
    [(NSRecursiveLock *)self->_accessoryInfoLock lock];
    valuePtr = 0;
    v49 = 0;
    if (infoCopy || ([(ACCTransportIOAccessoryManager *)self regionCode], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      ioService = [(ACCTransportIOAccessoryBase *)self ioService];
      v11 = *MEMORY[0x277CBECE8];
      CFProperty = IORegistryEntryCreateCFProperty(ioService, @"IOAccessoryManagerInductiveRegionCodeData", *MEMORY[0x277CBECE8], 0);
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v13 = *(gLogObjects + 24);
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

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v56 = "[ACCTransportIOAccessoryManager _updateInductiveInfo:]";
        v57 = 2112;
        *v58 = CFProperty;
        _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_DEFAULT, "%s: cfRegionCode = %@", buf, 0x16u);
      }

      if (CFProperty)
      {
        *buf = -21846;
        CFNumberGetValue(CFProperty, kCFNumberSInt16Type, buf);
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c", buf[1], buf[0]];
        [(ACCTransportIOAccessoryManager *)self setRegionCode:v15];

        CFRelease(CFProperty);
        if (infoCopy)
        {
          goto LABEL_29;
        }
      }

      else
      {
        [(ACCTransportIOAccessoryManager *)self setRegionCode:0];
        if (infoCopy)
        {
          goto LABEL_29;
        }
      }
    }

    inductiveDeviceType = [(ACCTransportIOAccessoryManager *)self inductiveDeviceType];

    if (inductiveDeviceType)
    {
      goto LABEL_41;
    }

    v11 = *MEMORY[0x277CBECE8];
LABEL_29:
    v17 = IORegistryEntryCreateCFProperty([(ACCTransportIOAccessoryBase *)self ioService], @"IOAccessoryManagerInductiveDeviceType", v11, 0);
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v18 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v18 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v56 = "[ACCTransportIOAccessoryManager _updateInductiveInfo:]";
      v57 = 2112;
      *v58 = v17;
      _os_log_impl(&dword_233656000, v18, OS_LOG_TYPE_DEFAULT, "%s: cfInductiveDeviceType = %@", buf, 0x16u);
    }

    if (v17)
    {
      CFNumberGetValue(v17, kCFNumberSInt16Type, &valuePtr);
      v20 = [(__CFNumber *)v17 copy];
      [(ACCTransportIOAccessoryManager *)self setInductiveDeviceType:v20];

      CFRelease(v17);
      if (infoCopy)
      {
        goto LABEL_43;
      }
    }

    else
    {
      [(ACCTransportIOAccessoryManager *)self setInductiveDeviceType:0];
      if (infoCopy)
      {
        goto LABEL_43;
      }
    }

LABEL_41:
    inductiveDeviceID = [(ACCTransportIOAccessoryManager *)self inductiveDeviceID];

    if (inductiveDeviceID)
    {
      goto LABEL_55;
    }

    v11 = *MEMORY[0x277CBECE8];
LABEL_43:
    v22 = IORegistryEntryCreateCFProperty([(ACCTransportIOAccessoryBase *)self ioService], @"IOAccessoryManagerInductiveDeviceID", v11, 0);
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v23 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v23 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v56 = "[ACCTransportIOAccessoryManager _updateInductiveInfo:]";
      v57 = 2112;
      *v58 = v22;
      _os_log_impl(&dword_233656000, v23, OS_LOG_TYPE_DEFAULT, "%s: cfInductiveDeviceID = %@", buf, 0x16u);
    }

    if (v22)
    {
      CFNumberGetValue(v22, kCFNumberSInt32Type, &v49);
      v25 = [(__CFNumber *)v22 copy];
      [(ACCTransportIOAccessoryManager *)self setInductiveDeviceID:v25];

      CFRelease(v22);
      if (infoCopy)
      {
        goto LABEL_56;
      }
    }

    else
    {
      [(ACCTransportIOAccessoryManager *)self setInductiveDeviceID:0];
      if (infoCopy)
      {
LABEL_56:
        inductiveDeviceType2 = [(ACCTransportIOAccessoryManager *)self inductiveDeviceType];
        if (inductiveDeviceType2)
        {
          v27 = inductiveDeviceType2;
          inductiveDeviceID2 = [(ACCTransportIOAccessoryManager *)self inductiveDeviceID];

          if (inductiveDeviceID2)
          {
            v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%03X-%06X", valuePtr, v49];
            [(NSLock *)self->_propertyLock lock];
            inductiveDeviceUID = self->_inductiveDeviceUID;
            if (!inductiveDeviceUID || ![(NSString *)inductiveDeviceUID isEqualToString:v29])
            {
              objc_storeStrong(&self->_inductiveDeviceUID, v29);
            }

            [(NSLock *)self->_propertyLock unlock];
          }
        }

        if (infoCopy)
        {
LABEL_64:
          ioService2 = [(ACCTransportIOAccessoryBase *)self ioService];
          v33 = IORegistryEntryCreateCFProperty(ioService2, @"IOAccessoryManagerInductiveLocalDeviceID", *MEMORY[0x277CBECE8], 0);
          if (gLogObjects && gNumLogObjects >= 4)
          {
            v34 = *(gLogObjects + 24);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v34 = MEMORY[0x277D86220];
            v35 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v56 = "[ACCTransportIOAccessoryManager _updateInductiveInfo:]";
            v57 = 2112;
            *v58 = v33;
            _os_log_impl(&dword_233656000, v34, OS_LOG_TYPE_DEFAULT, "%s: cfInductiveLocalDeviceID = %@", buf, 0x16u);
          }

          if (v33)
          {
            inductiveLocalDeviceID = [(ACCTransportIOAccessoryManager *)self inductiveLocalDeviceID];
            v37 = [v33 copy];
            [(ACCTransportIOAccessoryManager *)self setInductiveLocalDeviceID:v37];

            CFRelease(v33);
            inductiveLocalDeviceID2 = [(ACCTransportIOAccessoryManager *)self inductiveLocalDeviceID];
            v39 = inductiveLocalDeviceID2;
            if (inductiveLocalDeviceID2 && inductiveLocalDeviceID)
            {
              inductiveLocalDeviceID3 = [(ACCTransportIOAccessoryManager *)self inductiveLocalDeviceID];
              v41 = [inductiveLocalDeviceID3 isEqualToNumber:inductiveLocalDeviceID];

              if (v41)
              {
                goto LABEL_80;
              }
            }

            else
            {
            }

            v53 = *MEMORY[0x277CFD2A8];
            inductiveLocalDeviceID4 = [(ACCTransportIOAccessoryManager *)self inductiveLocalDeviceID];
            v54 = inductiveLocalDeviceID4;
            v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];

            v44 = +[ACCTransportIOAccessorySharedManager sharedManager];
            [v44 setProperties:v43 forManager:self];

LABEL_80:
            goto LABEL_81;
          }

          [(ACCTransportIOAccessoryManager *)self setInductiveLocalDeviceID:0];
LABEL_81:
          inductiveDeviceType3 = [(ACCTransportIOAccessoryManager *)self inductiveDeviceType];

          if (inductiveDeviceType3)
          {
            v51 = *MEMORY[0x277CFD2A0];
            inductiveDeviceType4 = [(ACCTransportIOAccessoryManager *)self inductiveDeviceType];
            v52 = inductiveDeviceType4;
            v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];

            v48 = +[ACCTransportIOAccessorySharedManager sharedManager];
            [v48 setProperties:v47 forManager:self];
          }

          [(NSRecursiveLock *)self->_accessoryInfoLock unlock];
          return;
        }

LABEL_63:
        inductiveLocalDeviceID5 = [(ACCTransportIOAccessoryManager *)self inductiveLocalDeviceID];

        if (inductiveLocalDeviceID5)
        {
          goto LABEL_81;
        }

        goto LABEL_64;
      }
    }

LABEL_55:
    if (self->_inductiveDeviceUID)
    {
      goto LABEL_63;
    }

    goto LABEL_56;
  }
}

- (void)_clearAccessoryInfo
{
  v9 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_accessoryInfoLock lock];
  if ([(ACCTransportIOAccessoryManager *)self bIsInductive])
  {
    deviceModelNumber = [(ACCTransportIOAccessoryManager *)self deviceModelNumber];

    if (deviceModelNumber)
    {
      deviceModelNumber2 = [(ACCTransportIOAccessoryManager *)self deviceModelNumber];
      [(ACCTransportIOAccessoryManager *)self _unregisterForUarpActivityForModel:deviceModelNumber2];
    }
  }

  if (self->_allAccessoryInfoFieldsAreValid)
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 4;
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
      v7 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = [(ACCTransportIOAccessoryBase *)self ioService];
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "Clearing accessory info for manager %d", v8, 8u);
    }

    self->_allAccessoryInfoFieldsAreValid = 0;
    [(ACCTransportIOAccessoryManager *)self setDeviceModelNumber:0];
    [(ACCTransportIOAccessoryManager *)self setDeviceName:0];
    [(ACCTransportIOAccessoryManager *)self setDeviceVendorName:0];
    [(ACCTransportIOAccessoryManager *)self setDeviceSerialNumber:0];
    [(ACCTransportIOAccessoryManager *)self setDeviceHardwareRevision:0];
    [(ACCTransportIOAccessoryManager *)self setDeviceFirmwareRevision:0];
    [(ACCTransportIOAccessoryManager *)self setDigitalID:0];
    [(ACCTransportIOAccessoryManager *)self setRegionCode:0];
    [(ACCTransportIOAccessoryManager *)self setInductiveDeviceType:0];
    [(ACCTransportIOAccessoryManager *)self setInductiveDeviceID:0];
    [(ACCTransportIOAccessoryManager *)self setInductiveLocalDeviceID:0];
  }

  [(NSRecursiveLock *)self->_accessoryInfoLock unlock];
}

- (void)_pokeResistorID
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(ACCTransportIOAccessoryManager *)self resistorID]== 100 && [(ACCTransportIOAccessoryBase *)self primaryPortNumber]!= 1)
  {
    if (!gLogObjects || gNumLogObjects < 4)
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
      v5 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67109120;
      ioService = [(ACCTransportIOAccessoryBase *)self ioService];
      _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "Poking resistorID for service (%d) for rear-port IOAccessoryManager", &v15, 8u);
    }

    [(ACCTransportIOAccessoryBase *)self ioService];
    AccessoryID = IOAccessoryManagerGetAccessoryID();
    if (AccessoryID <= 0xF)
    {
      resistorID2 = AccessoryID;
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v8 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v8 = MEMORY[0x277D86220];
        v13 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        ioService2 = [(ACCTransportIOAccessoryBase *)self ioService];
        v15 = 67109376;
        ioService = resistorID2;
        v17 = 1024;
        v18 = ioService2;
        _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_DEFAULT, "Have a resistorID to update from poke, %d, from service %d", &v15, 0xEu);
      }

LABEL_34:
      [(ACCTransportIOAccessoryManager *)self _handleResistorIDChangeNotification:resistorID2];
      return;
    }
  }

  if (([(ACCTransportIOAccessoryManager *)self resistorID]& 0x80000000) == 0 && [(ACCTransportIOAccessoryManager *)self resistorID]<= 15)
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v9 = *(gLogObjects + 24);
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

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      resistorID = [(ACCTransportIOAccessoryManager *)self resistorID];
      ioService3 = [(ACCTransportIOAccessoryBase *)self ioService];
      v15 = 67109376;
      ioService = resistorID;
      v17 = 1024;
      v18 = ioService3;
      _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "Already have a resistorID to update from poke, %d, from service %d. Checking if we need to advertise connection", &v15, 0xEu);
    }

    resistorID2 = [(ACCTransportIOAccessoryManager *)self resistorID];
    goto LABEL_34;
  }
}

- (void)_stopAuthTimer
{
  v8 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 4;
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
    v5 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = [(ACCTransportIOAccessoryBase *)self ioService];
    _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_INFO, "Stopping auth timer for service %d", v7, 8u);
  }

  authTimerAccessory = self->_authTimerAccessory;
  if (authTimerAccessory)
  {
    dispatch_source_set_timer(authTimerAccessory, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  self->_isAuthTimedOut = 0;
}

- (void)_handleRegisterationForUarpActivityForModel:(id)model shouldRegister:(BOOL)register
{
  registerCopy = register;
  v89 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 4;
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
    v9 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    primaryPortNumber = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    connectionUUID = [(ACCTransportIOAccessoryManager *)self connectionUUID];
    *buf = 136316162;
    v72 = "[ACCTransportIOAccessoryManager _handleRegisterationForUarpActivityForModel:shouldRegister:]";
    v73 = 1024;
    v74 = primaryPortNumber;
    v75 = 2112;
    v76 = connectionUUID;
    v77 = 2112;
    v78 = modelCopy;
    v79 = 1024;
    v80 = registerCopy;
    _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel %@, shouldRegister %d", buf, 0x2Cu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (registerCopy)
  {
    if (selfCopy->_notificationUarpRegistered)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v13 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v13 = MEMORY[0x277D86220];
        v28 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        primaryPortNumber2 = [(ACCTransportIOAccessoryBase *)selfCopy primaryPortNumber];
        connectionUUID2 = [(ACCTransportIOAccessoryManager *)selfCopy connectionUUID];
        *buf = 136316162;
        v72 = "[ACCTransportIOAccessoryManager _handleRegisterationForUarpActivityForModel:shouldRegister:]";
        v73 = 1024;
        v74 = primaryPortNumber2;
        v75 = 2112;
        v76 = connectionUUID2;
        v77 = 2112;
        v78 = modelCopy;
        v79 = 1024;
        v80 = 1;
        _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel '%@', shouldRegister=%d, Already registered!!!", buf, 0x2Cu);
      }

LABEL_39:

      goto LABEL_64;
    }

    v17 = [modelCopy isEqualToString:@"A3250"];
    v18 = @"A2580";
    if (!v17)
    {
      v18 = 0;
    }

    v70 = v18;
    modelCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"com.apple.uarp.startupdate.", modelCopy];
    notificationUarpStartUpdateName = selfCopy->_notificationUarpStartUpdateName;
    selfCopy->_notificationUarpStartUpdateName = modelCopy;

    modelCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"com.apple.uarp.endupdate.", modelCopy];
    notificationUarpEndUpdateName = selfCopy->_notificationUarpEndUpdateName;
    selfCopy->_notificationUarpEndUpdateName = modelCopy2;

    modelCopy3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"com.apple.uarp.stagingstatus.", modelCopy];
    notificationUarpStagingStatusName = selfCopy->_notificationUarpStagingStatusName;
    selfCopy->_notificationUarpStagingStatusName = modelCopy3;

    if (v17)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"com.apple.uarp.stagingstatus.", @"A2580"];
      notificationUarpStagingStatusName2 = selfCopy->_notificationUarpStagingStatusName2;
      selfCopy->_notificationUarpStagingStatusName2 = v25;
    }

    if (gLogObjects && gNumLogObjects >= 4)
    {
      v27 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v27 = MEMORY[0x277D86220];
      v53 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      primaryPortNumber3 = [(ACCTransportIOAccessoryBase *)selfCopy primaryPortNumber];
      connectionUUID3 = [(ACCTransportIOAccessoryManager *)selfCopy connectionUUID];
      v56 = selfCopy->_notificationUarpStartUpdateName;
      v57 = selfCopy->_notificationUarpEndUpdateName;
      v58 = selfCopy->_notificationUarpStagingStatusName;
      v59 = selfCopy->_notificationUarpStagingStatusName2;
      *buf = 136317186;
      v72 = "[ACCTransportIOAccessoryManager _handleRegisterationForUarpActivityForModel:shouldRegister:]";
      v73 = 1024;
      v74 = primaryPortNumber3;
      v75 = 2112;
      v76 = connectionUUID3;
      v77 = 2112;
      v78 = modelCopy;
      v79 = 1024;
      v80 = 1;
      v81 = 2112;
      v82 = v56;
      v83 = 2112;
      v84 = v57;
      v85 = 2112;
      v86 = v58;
      v87 = 2112;
      v88 = v59;
      _os_log_impl(&dword_233656000, v27, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel '%@', shouldRegister=%d, Register %@ / %@ / %@ / %@", buf, 0x54u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    notificationUarpStartUpdateName = [(ACCTransportIOAccessoryManager *)selfCopy notificationUarpStartUpdateName];
    CFNotificationCenterAddObserver(DarwinNotifyCenter, selfCopy, __handleNotificationUarpStartUpdate, notificationUarpStartUpdateName, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v62 = CFNotificationCenterGetDarwinNotifyCenter();
    notificationUarpEndUpdateName = [(ACCTransportIOAccessoryManager *)selfCopy notificationUarpEndUpdateName];
    CFNotificationCenterAddObserver(v62, selfCopy, __handleNotificationUarpEndUpdate, notificationUarpEndUpdateName, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v64 = CFNotificationCenterGetDarwinNotifyCenter();
    notificationUarpStagingStatusName = [(ACCTransportIOAccessoryManager *)selfCopy notificationUarpStagingStatusName];
    CFNotificationCenterAddObserver(v64, selfCopy, __handleNotificationUarpStagingStatus, notificationUarpStagingStatusName, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    if (selfCopy->_notificationUarpStagingStatusName2)
    {
      v66 = CFNotificationCenterGetDarwinNotifyCenter();
      notificationUarpStagingStatusName2 = [(ACCTransportIOAccessoryManager *)selfCopy notificationUarpStagingStatusName2];
      CFNotificationCenterAddObserver(v66, selfCopy, __handleNotificationUarpStagingStatus, notificationUarpStagingStatusName2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    CFNotificationCenterGetDarwinNotifyCenter();
    notificationUarpStagingStatusName3 = [(ACCTransportIOAccessoryManager *)selfCopy notificationUarpStagingStatusName];
    __handleNotificationUarpStagingStatus(notificationUarpStagingStatusName3, selfCopy, notificationUarpStagingStatusName3);

    if (selfCopy->_notificationUarpStagingStatusName2)
    {
      CFNotificationCenterGetDarwinNotifyCenter();
      notificationUarpStagingStatusName22 = [(ACCTransportIOAccessoryManager *)selfCopy notificationUarpStagingStatusName2];
      __handleNotificationUarpStagingStatus(notificationUarpStagingStatusName22, selfCopy, notificationUarpStagingStatusName22);
    }

    selfCopy->_notificationUarpRegistered = 1;
  }

  else
  {
    if (gLogObjects)
    {
      v14 = gNumLogObjects <= 3;
    }

    else
    {
      v14 = 1;
    }

    v15 = !v14;
    if (!selfCopy->_notificationUarpRegistered)
    {
      if (v15)
      {
        v13 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v13 = MEMORY[0x277D86220];
        v50 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        primaryPortNumber4 = [(ACCTransportIOAccessoryBase *)selfCopy primaryPortNumber];
        connectionUUID4 = [(ACCTransportIOAccessoryManager *)selfCopy connectionUUID];
        *buf = 136316162;
        v72 = "[ACCTransportIOAccessoryManager _handleRegisterationForUarpActivityForModel:shouldRegister:]";
        v73 = 1024;
        v74 = primaryPortNumber4;
        v75 = 2112;
        v76 = connectionUUID4;
        v77 = 2112;
        v78 = modelCopy;
        v79 = 1024;
        v80 = 0;
        _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel '%@', shouldRegister=%d, Already unregistered!!!", buf, 0x2Cu);
      }

      goto LABEL_39;
    }

    if (v15)
    {
      v16 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v16 = MEMORY[0x277D86220];
      v31 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      primaryPortNumber5 = [(ACCTransportIOAccessoryBase *)selfCopy primaryPortNumber];
      connectionUUID5 = [(ACCTransportIOAccessoryManager *)selfCopy connectionUUID];
      v34 = selfCopy->_notificationUarpStartUpdateName;
      v35 = selfCopy->_notificationUarpEndUpdateName;
      v36 = selfCopy->_notificationUarpStagingStatusName;
      v37 = selfCopy->_notificationUarpStagingStatusName2;
      *buf = 136317186;
      v72 = "[ACCTransportIOAccessoryManager _handleRegisterationForUarpActivityForModel:shouldRegister:]";
      v73 = 1024;
      v74 = primaryPortNumber5;
      v75 = 2112;
      v76 = connectionUUID5;
      v77 = 2112;
      v78 = modelCopy;
      v79 = 1024;
      v80 = 0;
      v81 = 2112;
      v82 = v34;
      v83 = 2112;
      v84 = v35;
      v85 = 2112;
      v86 = v36;
      v87 = 2112;
      v88 = v37;
      _os_log_impl(&dword_233656000, v16, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel '%@', shouldRegister=%d, Unregister %@ / %@ / %@ / %@", buf, 0x54u);
    }

    [(ACCTransportIOAccessoryManager *)selfCopy _stopTimerForUarpActivityForModel:modelCopy];
    v38 = CFNotificationCenterGetDarwinNotifyCenter();
    notificationUarpStartUpdateName2 = [(ACCTransportIOAccessoryManager *)selfCopy notificationUarpStartUpdateName];
    CFNotificationCenterRemoveObserver(v38, selfCopy, notificationUarpStartUpdateName2, 0);

    v40 = CFNotificationCenterGetDarwinNotifyCenter();
    notificationUarpEndUpdateName2 = [(ACCTransportIOAccessoryManager *)selfCopy notificationUarpEndUpdateName];
    CFNotificationCenterRemoveObserver(v40, selfCopy, notificationUarpEndUpdateName2, 0);

    v42 = CFNotificationCenterGetDarwinNotifyCenter();
    notificationUarpStagingStatusName4 = [(ACCTransportIOAccessoryManager *)selfCopy notificationUarpStagingStatusName];
    CFNotificationCenterRemoveObserver(v42, selfCopy, notificationUarpStagingStatusName4, 0);

    if (selfCopy->_notificationUarpStagingStatusName2)
    {
      v44 = CFNotificationCenterGetDarwinNotifyCenter();
      notificationUarpStagingStatusName23 = [(ACCTransportIOAccessoryManager *)selfCopy notificationUarpStagingStatusName2];
      CFNotificationCenterRemoveObserver(v44, selfCopy, notificationUarpStagingStatusName23, 0);
    }

    v46 = selfCopy->_notificationUarpStartUpdateName;
    selfCopy->_notificationUarpStartUpdateName = 0;

    v47 = selfCopy->_notificationUarpEndUpdateName;
    selfCopy->_notificationUarpEndUpdateName = 0;

    v48 = selfCopy->_notificationUarpStagingStatusName;
    selfCopy->_notificationUarpStagingStatusName = 0;

    v49 = selfCopy->_notificationUarpStagingStatusName2;
    selfCopy->_notificationUarpStagingStatusName2 = 0;

    selfCopy->_notificationUarpRegistered = 0;
  }

LABEL_64:
  objc_sync_exit(selfCopy);
}

- (void)_kickTimerForUarpActivityForModel:(id)model
{
  v35 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
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
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    primaryPortNumber = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    connectionUUID = [(ACCTransportIOAccessoryManager *)self connectionUUID];
    v10 = self->_notificationUarpStagingStatusActivityTimer != 0;
    v23 = 136316162;
    v24 = "[ACCTransportIOAccessoryManager _kickTimerForUarpActivityForModel:]";
    v25 = 1024;
    v26 = primaryPortNumber;
    v27 = 2112;
    v28 = connectionUUID;
    v29 = 2112;
    v30 = modelCopy;
    v31 = 1024;
    LODWORD(v32) = v10;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel '%@', (timer exist %d)", &v23, 0x2Cu);
  }

  if (self->_notificationUarpStagingStatusActivityTimer)
  {
    v11 = acc_userDefaults_copyIntegerForKey(@"UARPActivityTimerS");
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = 600;
    }

    if ((v12 & 0x8000000000000000) != 0)
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
        v22 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [ACCTransportIOAccessoryManager _kickTimerForUarpActivityForModel:?];
      }

      dispatch_source_set_timer(self->_notificationUarpStagingStatusActivityTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    else
    {
      if (v12 >= 0x78)
      {
        v13 = 30;
      }

      else
      {
        v13 = v12 >> 2;
      }

      if (gLogObjects && gNumLogObjects >= 4)
      {
        v14 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v14 = MEMORY[0x277D86220];
        v16 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        primaryPortNumber2 = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
        connectionUUID2 = [(ACCTransportIOAccessoryManager *)self connectionUUID];
        v23 = 136316418;
        v24 = "[ACCTransportIOAccessoryManager _kickTimerForUarpActivityForModel:]";
        v25 = 1024;
        v26 = primaryPortNumber2;
        v27 = 2112;
        v28 = connectionUUID2;
        v29 = 2112;
        v30 = modelCopy;
        v31 = 2048;
        v32 = v12;
        v33 = 2048;
        v34 = v13;
        _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel '%@', start check timer. (%ld / %llu)", &v23, 0x3Au);
      }

      notificationUarpStagingStatusActivityTimer = self->_notificationUarpStagingStatusActivityTimer;
      v20 = dispatch_time(0, 1000000000 * v12);
      dispatch_source_set_timer(notificationUarpStagingStatusActivityTimer, v20, 0xFFFFFFFFFFFFFFFFLL, 1000000000 * v13);
      v21 = __copyModelFromUarpNotificationName(self->_notificationUarpStagingStatusName2);
      self->_notificationUarpStagingStatusAlternateActive = [v21 isEqualToString:modelCopy];
    }
  }
}

- (void)_stopTimerForUarpActivityForModel:(id)model
{
  v22 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
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
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    primaryPortNumber = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    connectionUUID = [(ACCTransportIOAccessoryManager *)self connectionUUID];
    v10 = self->_notificationUarpStagingStatusActivityTimer != 0;
    v12 = 136316162;
    v13 = "[ACCTransportIOAccessoryManager _stopTimerForUarpActivityForModel:]";
    v14 = 1024;
    v15 = primaryPortNumber;
    v16 = 2112;
    v17 = connectionUUID;
    v18 = 2112;
    v19 = modelCopy;
    v20 = 1024;
    v21 = v10;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel '%@', stop check timer. (timer exist %d)", &v12, 0x2Cu);
  }

  notificationUarpStagingStatusActivityTimer = self->_notificationUarpStagingStatusActivityTimer;
  if (notificationUarpStagingStatusActivityTimer)
  {
    dispatch_source_set_timer(notificationUarpStagingStatusActivityTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)_handleNotificationUarpStartUpdateForModel:(id)model
{
  v18 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
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
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    primaryPortNumber = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    connectionUUID = [(ACCTransportIOAccessoryManager *)self connectionUUID];
    v10 = 136315906;
    v11 = "[ACCTransportIOAccessoryManager _handleNotificationUarpStartUpdateForModel:]";
    v12 = 1024;
    v13 = primaryPortNumber;
    v14 = 2112;
    v15 = connectionUUID;
    v16 = 2112;
    v17 = modelCopy;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel %@", &v10, 0x26u);
  }

  [(ACCTransportIOAccessoryManager *)self notifyDriverOfInductiveActivity:1 paused:0];
}

- (void)_handleNotificationUarpEndUpdateForModel:(id)model
{
  v18 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
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
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    primaryPortNumber = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    connectionUUID = [(ACCTransportIOAccessoryManager *)self connectionUUID];
    v10 = 136315906;
    v11 = "[ACCTransportIOAccessoryManager _handleNotificationUarpEndUpdateForModel:]";
    v12 = 1024;
    v13 = primaryPortNumber;
    v14 = 2112;
    v15 = connectionUUID;
    v16 = 2112;
    v17 = modelCopy;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel %@", &v10, 0x26u);
  }

  [(ACCTransportIOAccessoryManager *)self notifyDriverOfInductiveActivity:0 paused:0];
}

- (void)_handleNotificationUarpStagingStatusForModel:(id)model state:(unint64_t)state
{
  v25 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 4;
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
    v9 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    primaryPortNumber = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    connectionUUID = [(ACCTransportIOAccessoryManager *)self connectionUUID];
    notificationUarpStagingStatus = self->_notificationUarpStagingStatus;
    v13 = 136316418;
    v14 = "[ACCTransportIOAccessoryManager _handleNotificationUarpStagingStatusForModel:state:]";
    v15 = 1024;
    v16 = primaryPortNumber;
    v17 = 2112;
    v18 = connectionUUID;
    v19 = 2112;
    v20 = modelCopy;
    v21 = 2048;
    v22 = notificationUarpStagingStatus;
    v23 = 2048;
    stateCopy = state;
    _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel %@, state %llu -> %llu", &v13, 0x3Au);
  }

  if (self->_notificationUarpStagingStatus != state)
  {
    self->_notificationUarpStagingStatus = state;
    [(ACCTransportIOAccessoryManager *)self notifyDriverOfInductiveActivity:state != 0 paused:state == 2];
    state = self->_notificationUarpStagingStatus;
  }

  if (state == 1)
  {
    [(ACCTransportIOAccessoryManager *)self _kickTimerForUarpActivityForModel:modelCopy];
  }

  else
  {
    [(ACCTransportIOAccessoryManager *)self _stopTimerForUarpActivityForModel:modelCopy];
  }
}

- (void)_handleUartActivityTimeout
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_deviceModelNumber)
  {
    self->_notificationUarpStagingActivityTimedOut = 1;
    p_notificationUarpStagingStatusName2 = &self->_notificationUarpStagingStatusName2;
    if (self->_notificationUarpStagingStatusName2 && self->_notificationUarpStagingStatusAlternateActive)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v4 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v4 = MEMORY[0x277D86220];
        v8 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v9 = *p_notificationUarpStagingStatusName2;
      v11 = 136315394;
      v12 = "[ACCTransportIOAccessoryManager _handleUartActivityTimeout]";
      v13 = 2112;
      v14 = v9;
      v7 = "%s: uarpStagingStatusTimer, handle alternate %@, force Inactive";
    }

    else
    {
      p_notificationUarpStagingStatusName2 = &self->_notificationUarpStagingStatusName;
      if (!self->_notificationUarpStagingStatusName)
      {
        return;
      }

      if (gLogObjects && gNumLogObjects >= 4)
      {
        v4 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v4 = MEMORY[0x277D86220];
        v5 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v6 = *p_notificationUarpStagingStatusName2;
      v11 = 136315394;
      v12 = "[ACCTransportIOAccessoryManager _handleUartActivityTimeout]";
      v13 = 2112;
      v14 = v6;
      v7 = "%s: uarpStagingStatusTimer, handle %@, force Inactive";
    }

    _os_log_impl(&dword_233656000, v4, OS_LOG_TYPE_DEFAULT, v7, &v11, 0x16u);
LABEL_22:

    v10 = __copyModelFromUarpNotificationName(*p_notificationUarpStagingStatusName2);
    [(ACCTransportIOAccessoryManager *)self _handleNotificationUarpStagingStatusForModel:v10 state:0];
  }
}

- (void)notifyDriverOfInductiveActivity:(BOOL)activity paused:(BOOL)paused
{
  pausedCopy = paused;
  activityCopy = activity;
  v37 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 4;
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
    v9 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    primaryPortNumber = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    connectionUUID = [(ACCTransportIOAccessoryManager *)self connectionUUID];
    *buf = 136316418;
    v27 = "[ACCTransportIOAccessoryManager notifyDriverOfInductiveActivity:paused:]";
    v28 = 1024;
    v29 = primaryPortNumber;
    v30 = 2112;
    *v31 = connectionUUID;
    *&v31[8] = 1024;
    v32 = activityCopy;
    v33 = 1024;
    v34 = pausedCopy;
    v35 = 1024;
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, active %d, paused %d, service %d", buf, 0x2Eu);
  }

  connect = 0;
  ioService2 = [(ACCTransportIOAccessoryBase *)self ioService];
  v13 = IOServiceOpen(ioService2, *MEMORY[0x277D85F48], 0, &connect);
  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = connect == 0;
  }

  if (v14)
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
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v23 = connect;
      ioService3 = [(ACCTransportIOAccessoryBase *)self ioService];
      *buf = 136315906;
      v27 = "[ACCTransportIOAccessoryManager notifyDriverOfInductiveActivity:paused:]";
      v28 = 1024;
      v29 = v13;
      v30 = 1024;
      *v31 = v23;
      *&v31[4] = 1024;
      *&v31[6] = ioService3;
      _os_log_error_impl(&dword_233656000, v15, OS_LOG_TYPE_ERROR, "%s: IOServiceOpen fail kernStatus:%02X, ioConnForService:%04X ioService:%d", buf, 0x1Eu);
    }
  }

  else
  {
    if (activityCopy)
    {
      v16 = 0x400000;
    }

    else
    {
      v16 = 0;
    }

    if (pausedCopy)
    {
      v17 = v16 | 0x800000;
    }

    else
    {
      v17 = v16;
    }

    if ((!activityCopy || !pausedCopy) && IOAccessoryManagerRevokeFeatures())
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v18 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v18 = MEMORY[0x277D86220];
        v20 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryManager notifyDriverOfInductiveActivity:paused:];
      }
    }

    if (v17 && IOAccessoryManagerAllowFeatures())
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v21 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v21 = MEMORY[0x277D86220];
        v22 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryManager notifyDriverOfInductiveActivity:paused:];
      }
    }

    IOServiceClose(connect);
  }
}

- (NSSet)ioAccessoryChildPorts
{
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  mutableioAccessoryChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryChildPorts];
  v5 = [v3 initWithSet:mutableioAccessoryChildPorts];

  return v5;
}

- (NSSet)eaProtocolChildPorts
{
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  mutableioAccessoryEAChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryEAChildPorts];
  v5 = [v3 initWithSet:mutableioAccessoryEAChildPorts];

  return v5;
}

- (NSSet)authCPChildPorts
{
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  mutableioAccessoryAuthCPChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryAuthCPChildPorts];
  v5 = [v3 initWithSet:mutableioAccessoryAuthCPChildPorts];

  return v5;
}

- (NSSet)oobPairingChildPorts
{
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  mutableioAccessoryOOBPairingChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryOOBPairingChildPorts];
  v5 = [v3 initWithSet:mutableioAccessoryOOBPairingChildPorts];

  return v5;
}

- (NSSet)configStreamChildPorts
{
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  mutableioAccessoryConfigStreamChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryConfigStreamChildPorts];
  v5 = [v3 initWithSet:mutableioAccessoryConfigStreamChildPorts];

  return v5;
}

- (NSString)inductiveDeviceUID
{
  [(NSLock *)self->_propertyLock lock];
  v3 = [(NSString *)self->_inductiveDeviceUID copy];
  [(NSLock *)self->_propertyLock unlock];

  return v3;
}

- (NSNumber)inductiveLocalDeviceID
{
  [(NSLock *)self->_propertyLock lock];
  v3 = [(NSNumber *)self->_inductiveLocalDeviceID copy];
  [(NSLock *)self->_propertyLock unlock];

  return v3;
}

- (NSString)regionCode
{
  [(NSLock *)self->_propertyLock lock];
  v3 = [(NSString *)self->_regionCode copy];
  [(NSLock *)self->_propertyLock unlock];

  return v3;
}

- (void)setAccessoryPowerMode:(int)mode
{
  v19 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
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
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 67109632;
    primaryPortNumber = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    v15 = 1024;
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    v17 = 1024;
    modeCopy = mode;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "setAccessoryPowerMode: primaryPort %d, ioService %d, accessoryPowerMode: %d", &v13, 0x14u);
  }

  if (IOAccessoryManagerConfigurePower())
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v8 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager setAccessoryPowerMode:];
    }
  }

  else
  {
    self->_accessoryPowerMode = mode;
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v8 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      accessoryPowerMode = [(ACCTransportIOAccessoryManager *)self accessoryPowerMode];
      ioService2 = [(ACCTransportIOAccessoryBase *)self ioService];
      v13 = 67109376;
      primaryPortNumber = accessoryPowerMode;
      v15 = 1024;
      ioService = ioService2;
      _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_DEFAULT, "Successfully set acc. power mode to %u for service %u", &v13, 0xEu);
    }
  }
}

- (void)setConnectionUUID:(id)d
{
  propertyLock = self->_propertyLock;
  dCopy = d;
  [(NSLock *)propertyLock lock];
  v6 = [dCopy copy];

  connectionUUID = self->_connectionUUID;
  self->_connectionUUID = v6;

  v8 = self->_propertyLock;

  [(NSLock *)v8 unlock];
}

- (void)setInductiveDeviceUID:(id)d
{
  propertyLock = self->_propertyLock;
  dCopy = d;
  [(NSLock *)propertyLock lock];
  v6 = [dCopy copy];

  inductiveDeviceUID = self->_inductiveDeviceUID;
  self->_inductiveDeviceUID = v6;

  v8 = self->_propertyLock;

  [(NSLock *)v8 unlock];
}

- (void)setInductiveLocalDeviceID:(id)d
{
  propertyLock = self->_propertyLock;
  dCopy = d;
  [(NSLock *)propertyLock lock];
  v6 = [dCopy copy];

  inductiveLocalDeviceID = self->_inductiveLocalDeviceID;
  self->_inductiveLocalDeviceID = v6;

  v8 = self->_propertyLock;

  [(NSLock *)v8 unlock];
}

- (void)setRegionCode:(id)code
{
  propertyLock = self->_propertyLock;
  codeCopy = code;
  [(NSLock *)propertyLock lock];
  v6 = [codeCopy copy];

  regionCode = self->_regionCode;
  self->_regionCode = v6;

  v8 = self->_propertyLock;

  [(NSLock *)v8 unlock];
}

- (void)initWithIOService:.cold.4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __52__ACCTransportIOAccessoryManager_initWithIOService___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addIOAccessoryChildPort:(void *)a1 .cold.2(void *a1)
{
  [a1 ioService];
  [a1 ioServiceClassType];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

- (void)removeIOAccessoryChildPort:(void *)a1 .cold.2(void *a1)
{
  [a1 ioService];
  [a1 ioServiceClassType];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

- (void)setFeaturesFromAuthStatus:(void *)a1 authCert:certType:.cold.11(void *a1)
{
  [a1 primaryPortNumber];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)setFeaturesFromAuthStatus:authCert:certType:.cold.13()
{
  OUTLINED_FUNCTION_11();
  [v0 primaryPortNumber];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x14u);
}

- (void)setFeaturesFromAuthStatus:authCert:certType:.cold.17()
{
  OUTLINED_FUNCTION_11();
  [v0 primaryPortNumber];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

- (void)setFeaturesFromAuthStatus:authCert:certType:.cold.19()
{
  OUTLINED_FUNCTION_11();
  [v0 primaryPortNumber];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

- (void)getUSBMode
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)setUSBCurrentOffset:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)setUSBCurrentOffset:.cold.4()
{
  OUTLINED_FUNCTION_11();
  [v0 ioService];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
}

- (void)setUSBCurrentLimitBase:forceResponse:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)setUSBCurrentLimitBase:forceResponse:.cold.4()
{
  OUTLINED_FUNCTION_11();
  [v0 ioService];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
}

- (void)USBCurrentLimitInmA
{
  OUTLINED_FUNCTION_13(self, a2);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
}

- (void)USBCurrentLimitBaseInmA
{
  OUTLINED_FUNCTION_13(self, a2);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
}

- (void)USBCurrentLimitOffsetInmA
{
  OUTLINED_FUNCTION_13(self, a2);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
}

- (void)USBChargingVoltageInmV
{
  OUTLINED_FUNCTION_13(self, a2);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
}

- (void)setPowerDuringSleepEnabled:.cold.2()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)setBatteryPackMode:forceResponse:.cold.2()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)setBatteryPackMode:(uint64_t)a1 forceResponse:(void *)a2 .cold.4(uint64_t a1, void *a2)
{
  [a2 ioService];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
}

- (void)setAccessoryRequestedCurrent:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)setAccessoryRequestedCurrent:.cold.4()
{
  OUTLINED_FUNCTION_11();
  [v0 ioService];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
}

- (void)setAccessoryUsedCurrent:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)setAccessoryUsedCurrent:.cold.4()
{
  OUTLINED_FUNCTION_11();
  [v0 ioService];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
}

- (void)resetAccessoryBaseCurrent
{
  [self ioService];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)supervisedTransportsRestricted
{
  connectionUUID = [a2 connectionUUID];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_IOAccUSBModeTypeForSetUSBMode:.cold.2()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_IOAccUSBModeTypeForSetUSBMode:.cold.4()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  v3 = v0;
  _os_log_debug_impl(&dword_233656000, v1, OS_LOG_TYPE_DEBUG, "returning %d for IOAccessoryUSBModeType, ACCPlatform_USB_ModeSet_t %d", v2, 0xEu);
}

- (void)_ACCPlatformUSBModeForIOAccessoryUSBConnectType:.cold.2()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_ACCPlatformUSBModeForIOAccessoryUSBConnectType:.cold.4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_connectionTypeForPrimaryPort
{
  OUTLINED_FUNCTION_11();
  [v0 primaryPortNumber];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
}

- (void)_connectionUUIDsForNotification
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleResistorIDChangeNotification:.cold.5()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_sendNotification:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_233656000, log, OS_LOG_TYPE_DEBUG, "Sending %@ notification for ConnectionUUIDs %@", &v3, 0x16u);
}

- (void)_kickTimerForUarpActivityForModel:(void *)a1 .cold.3(void *a1)
{
  [a1 primaryPortNumber];
  v2 = [a1 connectionUUID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x26u);
}

- (void)notifyDriverOfInductiveActivity:paused:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)notifyDriverOfInductiveActivity:paused:.cold.6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)setAccessoryPowerMode:.cold.3()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

@end