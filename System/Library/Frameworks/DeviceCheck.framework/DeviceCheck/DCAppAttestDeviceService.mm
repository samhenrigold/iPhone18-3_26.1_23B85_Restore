@interface DCAppAttestDeviceService
+ (DCAppAttestDeviceService)sharedService;
- (BOOL)hasEntitlement;
- (BOOL)isSupported;
- (DCAppAttestController)appAttestController;
- (void)attestKey:(__SecKey *)key clientDataHash:(id)hash options:(id)options completionHandler:(id)handler;
@end

@implementation DCAppAttestDeviceService

- (DCAppAttestController)appAttestController
{
  appAttestController = self->_appAttestController;
  if (!appAttestController)
  {
    v4 = [[DCAppAttestController alloc] initWithType:3];
    v5 = self->_appAttestController;
    self->_appAttestController = v4;

    appAttestController = self->_appAttestController;
  }

  return appAttestController;
}

+ (DCAppAttestDeviceService)sharedService
{
  if (sharedService_onceToken_0 != -1)
  {
    +[DCAppAttestDeviceService sharedService];
  }

  v3 = sharedService_sharedService_0;

  return v3;
}

uint64_t __41__DCAppAttestDeviceService_sharedService__block_invoke()
{
  sharedService_sharedService_0 = objc_alloc_init(DCAppAttestDeviceService);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isSupported
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(DCAppAttestDeviceService *)self hasEntitlement])
  {
    appAttestController = [(DCAppAttestDeviceService *)self appAttestController];
    isSupported = [appAttestController isSupported];

    return isSupported;
  }

  else
  {
    if (DCLogSystem_onceToken_1 != -1)
    {
      [DCAppAttestDeviceService isSupported];
    }

    v6 = DCLogSystem_log_1;
    if (os_log_type_enabled(DCLogSystem_log_1, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v8 = 0;
      v9 = 47;
      do
      {
        v10 = &aLibraryCachesC_1[v7];
        if (v9 == 47)
        {
          v8 = &aLibraryCachesC_1[v7];
        }

        v9 = v10[1];
        if (!v10[1])
        {
          break;
        }
      }

      while (v7++ < 0xFFF);
      if (v8)
      {
        v12 = v8 + 1;
      }

      else
      {
        v12 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheck/Source/Interfaces/Private/DCAppAttestDeviceService.m";
      }

      v13 = 136315394;
      v14 = v12;
      v15 = 1024;
      v16 = 56;
      _os_log_impl(&dword_238044000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Client is missing Device API entitlement.", &v13, 0x12u);
    }

    return 0;
  }
}

- (void)attestKey:(__SecKey *)key clientDataHash:(id)hash options:(id)options completionHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  optionsCopy = options;
  handlerCopy = handler;
  if ([(DCAppAttestDeviceService *)self isSupported])
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    v33 = 0;
    v15 = store_keychain_item(key, @"appattest-device", uUIDString, &v33);
    v16 = v33;
    if (v15)
    {
      v17 = SecKeyCopyAttributes(key);
      appAttestController = [(DCAppAttestDeviceService *)self appAttestController];
      [appAttestController attestKey:uUIDString keyAttributes:v17 clientDataHash:hashCopy authData:0 options:optionsCopy completionHandler:handlerCopy];
    }

    else
    {
      if (DCLogSystem_onceToken_1 != -1)
      {
        [DCAppAttestDeviceService attestKey:clientDataHash:options:completionHandler:];
      }

      v26 = DCLogSystem_log_1;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = 0;
        v28 = 0;
        v29 = 47;
        do
        {
          v30 = &aLibraryCachesC_1[v27];
          if (v29 == 47)
          {
            v28 = &aLibraryCachesC_1[v27];
          }

          v29 = v30[1];
          if (!v30[1])
          {
            break;
          }

          v24 = v27++ >= 0xFFF;
        }

        while (!v24);
        if (v28)
        {
          v31 = v28 + 1;
        }

        else
        {
          v31 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheck/Source/Interfaces/Private/DCAppAttestDeviceService.m";
        }

        localizedDescription = [v16 localizedDescription];
        *buf = 136315650;
        v35 = v31;
        v36 = 1024;
        v37 = 79;
        v38 = 2112;
        v39 = localizedDescription;
        _os_log_impl(&dword_238044000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to save key to keychain. { error=%@ }", buf, 0x1Cu);
      }

      v17 = [MEMORY[0x277CCA9B8] dc_errorWithCode:0];
      handlerCopy[2](handlerCopy, 0, v17);
    }
  }

  else
  {
    if (DCLogSystem_onceToken_1 != -1)
    {
      [DCAppAttestDeviceService isSupported];
    }

    v19 = DCLogSystem_log_1;
    if (os_log_type_enabled(DCLogSystem_log_1, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 0;
      v21 = 0;
      v22 = 47;
      do
      {
        v23 = &aLibraryCachesC_1[v20];
        if (v22 == 47)
        {
          v21 = &aLibraryCachesC_1[v20];
        }

        v22 = v23[1];
        if (!v23[1])
        {
          break;
        }

        v24 = v20++ >= 0xFFF;
      }

      while (!v24);
      if (v21)
      {
        v25 = v21 + 1;
      }

      else
      {
        v25 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheck/Source/Interfaces/Private/DCAppAttestDeviceService.m";
      }

      *buf = 136315394;
      v35 = v25;
      v36 = 1024;
      v37 = 70;
      _os_log_impl(&dword_238044000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Client is not supported, cannot attest key.", buf, 0x12u);
    }
  }
}

- (BOOL)hasEntitlement
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __42__DCAppAttestDeviceService_hasEntitlement__block_invoke;
  v21[3] = &__block_descriptor_40_e5_v8__0l;
  v21[4] = v2;
  v3 = MEMORY[0x2383E6220](v21);
  v19[4] = 0;
  error = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __42__DCAppAttestDeviceService_hasEntitlement__block_invoke_2;
  v19[3] = &__block_descriptor_40_e5_v8__0l;
  v4 = MEMORY[0x2383E6220](v19);
  v5 = SecTaskCopyValueForEntitlement(v2, @"com.apple.devicecheck.private.device", &error);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __42__DCAppAttestDeviceService_hasEntitlement__block_invoke_3;
  v18[3] = &__block_descriptor_40_e5_v8__0l;
  v18[4] = v5;
  v6 = MEMORY[0x2383E6220](v18);
  if (error)
  {
    if (DCLogSystem_onceToken_1 != -1)
    {
      [DCAppAttestDeviceService attestKey:clientDataHash:options:completionHandler:];
    }

    v7 = DCLogSystem_log_1;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 0;
      v9 = 0;
      v10 = 47;
      do
      {
        v11 = &aLibraryCachesC_1[v8];
        if (v10 == 47)
        {
          v9 = &aLibraryCachesC_1[v8];
        }

        v10 = v11[1];
        if (!v11[1])
        {
          break;
        }
      }

      while (v8++ < 0xFFF);
      v13 = CFErrorCopyDescription(error);
      if (v9)
      {
        v14 = v9 + 1;
      }

      else
      {
        v14 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheck/Source/Interfaces/Private/DCAppAttestDeviceService.m";
      }

      *buf = 136315650;
      v23 = v14;
      v24 = 1024;
      v25 = 106;
      v26 = 2112;
      v27 = v13;
      v15 = v13;
      _os_log_impl(&dword_238044000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch entitlement. { error=%@ }", buf, 0x1Cu);
    }

    v16 = 0;
  }

  else
  {
    v16 = v5 == *MEMORY[0x277CBED28];
  }

  v6[2](v6);

  v4[2](v4);
  v3[2](v3);

  return v16;
}

void __42__DCAppAttestDeviceService_hasEntitlement__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __42__DCAppAttestDeviceService_hasEntitlement__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __42__DCAppAttestDeviceService_hasEntitlement__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

@end