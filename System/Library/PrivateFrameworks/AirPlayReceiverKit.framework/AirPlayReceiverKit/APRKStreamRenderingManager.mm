@interface APRKStreamRenderingManager
+ (BOOL)setAdvertisingAccessMode:(unint64_t)mode withError:(id *)error;
+ (id)sharedInstance;
+ (unint64_t)getAdvertisingAccessMode;
+ (void)setListeningForAlternateBonjourBrowsing:(BOOL)browsing;
- (APRKStreamRenderingManager)init;
- (APRKStreamRenderingManagerDelegate)delegate;
- (BOOL)_isPermittedClient:(id)client;
- (BOOL)isAirPlayReceiverSupported;
- (BOOL)isAllowedToProceedForClientWithName:(id)name clientID:(id)d;
- (CGSize)_customDisplaySizeFromPrefsWithDefault:(CGSize)default;
- (CGSize)_customDisplaySizeMaxFromPrefsWithDefault:(CGSize)default;
- (__CFString)_getHDRModeString:(unint64_t)string;
- (id)_rendererForUniqueIDInternal:(id)internal;
- (id)activeRenderers;
- (id)allClientNames;
- (id)allRenderers;
- (id)assistedInfoForAWDL;
- (id)assistedInfoForDiscovery;
- (id)assistedInfoForIPAddress:(id)address;
- (id)assistedInfoForMode:(unint64_t)mode options:(id)options;
- (id)createStreamRendererWithUniqueID:(id)d clientName:(id)name UIController:(OpaqueAPReceiverUIController *)controller;
- (id)ensureUniqueClientName:(id)name;
- (id)rendererForUniqueID:(id)d;
- (int)_startReceiverServerWithSupportedModesMask:(unint64_t)mask;
- (int)forcePINRefresh;
- (int)stopReceiverServer;
- (unint64_t)_customDisplayHDRModeFromPrefsWithDefault:(unint64_t)default;
- (unint64_t)activeRenderersCount;
- (void)_addPermittedClient:(id)client;
- (void)_initPermittedClients;
- (void)_setRandomPassword;
- (void)processHideGlobalPasscodePromptRequest;
- (void)processShowGlobalPasscodePromptRequest:(id)request withClientName:(id)name;
- (void)removeRendererWithUniqueID:(id)d;
- (void)serverPropertyForKey:(__CFString *)key;
- (void)setAltAdvertisingEnabled:(BOOL)altAdvertisingEnabled;
- (void)setAssistedModeEnabled:(BOOL)assistedModeEnabled;
- (void)setCustomDisplaySizeMax:(CGSize)max;
- (void)setDisplayHDRMode:(unint64_t)mode;
- (void)setEnableMixingMediaAudio:(BOOL)audio;
- (void)setOptimizeAudioRenderingLatency:(BOOL)optimizeAudioRenderingLatency;
- (void)setPreemptionPolicy:(unint64_t)policy;
- (void)setServerProperty:(void *)property forKey:(__CFString *)key;
- (void)setShouldForwardLayers:(BOOL)layers;
- (void)setUseCALayerForMirroring:(BOOL)mirroring;
- (void)setUsesHomeKitIntegration:(BOOL)integration;
@end

@implementation APRKStreamRenderingManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[APRKStreamRenderingManager sharedInstance];
  }

  v3 = sharedInstance_sharedManager;

  return v3;
}

uint64_t __44__APRKStreamRenderingManager_sharedInstance__block_invoke()
{
  if (IsAppleInternalBuild())
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __44__APRKStreamRenderingManager_sharedInstance__block_invoke_cold_1();
    }

    LogControl();
  }

  v0 = objc_alloc_init(APRKStreamRenderingManager);
  v1 = sharedInstance_sharedManager;
  sharedInstance_sharedManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (BOOL)setAdvertisingAccessMode:(unint64_t)mode withError:(id *)error
{
  if (!+[APRKStreamRenderingManager getAppHasSetAdvertisingAccessModeEntitlement])
  {
    if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      +[APRKStreamRenderingManager setAdvertisingAccessMode:withError:];
    }

    v6 = 0;
    v7 = 0;
    v11 = -6773;
    goto LABEL_18;
  }

  if (mode)
  {
    if (mode == 3)
    {
      v7 = 1;
      v6 = 2;
    }

    else
    {
      if (mode != 1)
      {
        v11 = -6705;
        APSLogErrorAt();
        v6 = 0;
        v7 = 0;
        goto LABEL_18;
      }

      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v6 = 0;
    v7 = 1;
  }

  v8 = APSSettingsSetInt64();
  if (v8)
  {
    v11 = v8;
    [APRKStreamRenderingManager setAdvertisingAccessMode:v8 withError:?];
  }

  else
  {
    v9 = APSSettingsRemoveValue();
    if (v9)
    {
      v11 = v9;
      [APRKStreamRenderingManager setAdvertisingAccessMode:v9 withError:?];
    }

    else
    {
      v10 = APSSettingsSetValue();
      v11 = v10;
      if (!v10)
      {
        APSSettingsSynchronize();
        notify_post("com.apple.airplay.prefsChanged");
        goto LABEL_12;
      }

      [APRKStreamRenderingManager setAdvertisingAccessMode:v10 withError:?];
    }
  }

LABEL_18:
  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
  }

LABEL_12:
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    v12 = 102;
    if (v7)
    {
      v12 = 116;
    }

    LogPrintF(&gLogCategory_AirPlayReceiverKit, "+[APRKStreamRenderingManager setAdvertisingAccessMode:withError:]", 33554482, "Set advertising access mode type=%d level=%lld p2p=%c err=%#m\n", v6, 0, v12);
  }

  return v11 == 0;
}

+ (unint64_t)getAdvertisingAccessMode
{
  v2 = APSGetAccessControlConfig();
  if (v2)
  {
    +[(APRKStreamRenderingManager *)v2];
  }

  else
  {
    v3 = APSGetP2PAllow();
    v6 = v3;
    if (gLogCategory_AirPlayReceiverKit <= 50)
    {
      if (gLogCategory_AirPlayReceiverKit != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        v3 = LogPrintF(&gLogCategory_AirPlayReceiverKit, "+[APRKStreamRenderingManager getAdvertisingAccessMode]", 33554482, "Advertising access pieces: %d %d %d\n", 0, 0, v6);
      }
    }

    if (v6 == 1)
    {
      return 0;
    }

    if (!v6)
    {
      return 1;
    }

    if (gLogCategory_AirPlayReceiverKit <= 50)
    {
      if (gLogCategory_AirPlayReceiverKit != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        +[(APRKStreamRenderingManager *)v3];
      }
    }
  }

  return -1;
}

+ (void)setListeningForAlternateBonjourBrowsing:(BOOL)browsing
{
  v4 = APSSettingsSetInt64();
  if (v4)
  {
    if (gLogCategory_AirPlayReceiverKit <= 90)
    {
      v7 = v4;
      if (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize())
      {
        [(APRKStreamRenderingManager *)v7 setListeningForAlternateBonjourBrowsing:v5, v6];
      }
    }
  }

  APSSettingsSynchronize();
  if (browsing)
  {
    if (gLogCategory_AirPlayReceiverKit > 50)
    {
      v8 = "com.apple.airplay.alternatebonjourbrowsingenabled";
      goto LABEL_18;
    }

    if (gLogCategory_AirPlayReceiverKit != -1)
    {
      v8 = "com.apple.airplay.alternatebonjourbrowsingenabled";
LABEL_14:
      LogPrintF(&gLogCategory_AirPlayReceiverKit, "+[APRKStreamRenderingManager setListeningForAlternateBonjourBrowsing:]", 33554482, "Posting %s notification", v8);
      goto LABEL_18;
    }

    v8 = "com.apple.airplay.alternatebonjourbrowsingenabled";
    if (_LogCategory_Initialize())
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (gLogCategory_AirPlayReceiverKit > 50)
    {
      v8 = "com.apple.airplay.alternatebonjourbrowsingdisabled";
      goto LABEL_18;
    }

    if (gLogCategory_AirPlayReceiverKit != -1)
    {
      v8 = "com.apple.airplay.alternatebonjourbrowsingdisabled";
      goto LABEL_14;
    }

    v8 = "com.apple.airplay.alternatebonjourbrowsingdisabled";
    if (_LogCategory_Initialize())
    {
      goto LABEL_14;
    }
  }

LABEL_18:
  notify_post(v8);

  notify_post("com.apple.airplay.prefsChanged");
}

- (APRKStreamRenderingManager)init
{
  v19.receiver = self;
  v19.super_class = APRKStreamRenderingManager;
  v2 = [(APRKStreamRenderingManager *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v2->_server = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    serverProperties = v3->_serverProperties;
    v3->_serverProperties = dictionary;

    *&v3->_useCALayerForMirroring = 1;
    v3->_supportRemoteControl = 0;
    v6 = *MEMORY[0x277CBF3A8];
    v3->_customDisplaySize = *MEMORY[0x277CBF3A8];
    v3->_customDisplaySizeMax = v6;
    v7 = dispatch_queue_create("com.apple.aprkstreamrenderingmanager.isolationqueue", 0);
    isolationQueue = v3->_isolationQueue;
    v3->_isolationQueue = v7;

    objc_storeStrong(&v3->_delegateQueue, MEMORY[0x277D85CD0]);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    renderersArray = v3->_renderersArray;
    v3->_renderersArray = v9;

    v3->_supportedModesMask = 0;
    v3->_maxNumberOfConcurrentSessions = 0;
    v3->_concurrentPlaybackPolicy = 0;
    *&v3->_displayHDRMode = xmmword_23EB09DD0;
    *&v3->_permissionTimeout = xmmword_23EB09DE0;
    v11 = dispatch_queue_create("com.apple.aprkstreamrenderingmanager.permissionqueue", 0);
    permittedClientsQueue = v3->_permittedClientsQueue;
    v3->_permittedClientsQueue = v11;

    IntWithDefault = APSSettingsGetIntWithDefault();
    v3->_permissionEnabled = IntWithDefault == 0;
    if (IntWithDefault)
    {
      if (gLogCategory_AirPlayReceiverKit <= 50)
      {
        if (gLogCategory_AirPlayReceiverKit != -1 || (IntWithDefault = _LogCategory_Initialize(), IntWithDefault))
        {
          [(APRKStreamRenderingManager *)IntWithDefault init];
        }
      }
    }

    v16 = objc_alloc_init(AWDLActivator);
    awdlActivator = v3->_awdlActivator;
    v3->_awdlActivator = v16;

    v3->_preemptionPolicy = 0;
    v3->_useUniqueClientName = APSSettingsGetIntWithDefault() != 0;
  }

  return v3;
}

- (int)stopReceiverServer
{
  if (!self->_server)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKStreamRenderingManager stopReceiverServer];
    }

    goto LABEL_19;
  }

  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderingManager stopReceiverServer];
  }

  v3 = AirPlayReceiverServerGetDispatchQueue();
  CFObjectControlAsync();

  v4 = AirPlayReceiverServerGetDispatchQueue();
  v5 = CFObjectControlSync();

  server = self->_server;
  if (server)
  {
    CFRelease(server);
    self->_server = 0;
  }

  [(AWDLActivator *)self->_awdlActivator stop:0];
  if (!v5)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKStreamRenderingManager stopReceiverServer];
    }

LABEL_19:
    LODWORD(v5) = 0;
    return v5;
  }

  if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [(APRKStreamRenderingManager *)v5 stopReceiverServer];
  }

  return v5;
}

- (id)rendererForUniqueID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__1;
    v16 = __Block_byref_object_dispose__1;
    v17 = 0;
    isolationQueue = self->_isolationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__APRKStreamRenderingManager_rendererForUniqueID___block_invoke;
    block[3] = &unk_278C627D8;
    v11 = &v12;
    block[4] = self;
    v10 = dCopy;
    dispatch_sync(isolationQueue, block);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __50__APRKStreamRenderingManager_rendererForUniqueID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _rendererForUniqueIDInternal:?];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (unint64_t)activeRenderersCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__APRKStreamRenderingManager_activeRenderersCount__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__50__APRKStreamRenderingManager_activeRenderersCount__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)allClientNames
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  isolationQueue = self->_isolationQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__APRKStreamRenderingManager_allClientNames__block_invoke;
  v6[3] = &unk_278C62CA0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void *__44__APRKStreamRenderingManager_allClientNames__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __44__APRKStreamRenderingManager_allClientNames__block_invoke_2;
  v6 = &unk_278C62C78;
  v7 = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:?];
}

void __44__APRKStreamRenderingManager_allClientNames__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 managedClientName];
  [v2 addObject:?];
}

- (id)allRenderers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = objc_alloc_init(MEMORY[0x277CBEB40]);
  isolationQueue = self->_isolationQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__APRKStreamRenderingManager_allRenderers__block_invoke;
  v6[3] = &unk_278C62828;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)activeRenderers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  isolationQueue = self->_isolationQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__APRKStreamRenderingManager_activeRenderers__block_invoke;
  v6[3] = &unk_278C62828;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setServerProperty:(void *)property forKey:(__CFString *)key
{
  propertyCopy = property;
  serverProperties = self->_serverProperties;
  if (!property)
  {
    property = *MEMORY[0x277CBEEE8];
  }

  CFDictionarySetValue(serverProperties, key, property);
  if (self->_server)
  {
    AirPlayReceiverServerSetProperty();
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager setServerProperty:forKey:]", 33554462, "Server property %@ is set to %@", key, propertyCopy);
    }
  }
}

- (void)serverPropertyForKey:(__CFString *)key
{
  result = CFDictionaryGetValue(self->_serverProperties, key);
  if (result == *MEMORY[0x277CBEEE8])
  {
    return 0;
  }

  return result;
}

- (void)setPreemptionPolicy:(unint64_t)policy
{
  self->_preemptionPolicy = policy;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [(APRKStreamRenderingManager *)policy setPreemptionPolicy:a2, policy];
  }

  [APRKStreamRenderingManager setServerProperty:"setServerProperty:forKey:" forKey:?];
}

- (void)setUseCALayerForMirroring:(BOOL)mirroring
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderingManager setUseCALayerForMirroring:];
  }

  self->_useCALayerForMirroring = mirroring;
}

- (void)setOptimizeAudioRenderingLatency:(BOOL)optimizeAudioRenderingLatency
{
  self->_optimizeAudioRenderingLatency = optimizeAudioRenderingLatency;
  if (gLogCategory_AirPlayReceiverKit <= 30)
  {
    if (gLogCategory_AirPlayReceiverKit == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      optimizeAudioRenderingLatency = self->_optimizeAudioRenderingLatency;
    }

    v3 = "disabled";
    if (optimizeAudioRenderingLatency)
    {
      v3 = "enabled";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager setOptimizeAudioRenderingLatency:]", 33554462, "Audio rendering optimization %s.", v3);
  }
}

- (void)setEnableMixingMediaAudio:(BOOL)audio
{
  self->_enableMixingMediaAudio = audio;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderingManager setEnableMixingMediaAudio:];
  }
}

- (void)setCustomDisplaySizeMax:(CGSize)max
{
  height = max.height;
  width = max.width;
  APSGetMaxSizePreservingAspectRatio();
  self->_customDisplaySizeMax.width = v6;
  self->_customDisplaySizeMax.height = v7;
  if (gLogCategory_AirPlayReceiverKit <= 30)
  {
    if (gLogCategory_AirPlayReceiverKit != -1 || (v8 = _LogCategory_Initialize(), v6 = self->_customDisplaySizeMax.width, v7 = self->_customDisplaySizeMax.height, v8))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager setCustomDisplaySizeMax:]", 33554462, "Requesting new display size of %d x %d. Newly created renderers will use a custom display size max of %d x %d", width, height, v6, v7);
      v6 = self->_customDisplaySizeMax.width;
      v7 = self->_customDisplaySizeMax.height;
    }
  }

  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*&v6);
  [APRKStreamRenderingManager setServerProperty:"setServerProperty:forKey:" forKey:?];
  if (DictionaryRepresentation)
  {

    CFRelease(DictionaryRepresentation);
  }
}

- (void)setDisplayHDRMode:(unint64_t)mode
{
  v6 = [(APRKStreamRenderingManager *)self _getHDRModeString:?];
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [(APRKStreamRenderingManager *)mode setDisplayHDRMode:v6, v5];
  }

  self->_displayHDRMode = mode;

  [APRKStreamRenderingManager setServerProperty:"setServerProperty:forKey:" forKey:?];
}

- (void)setUsesHomeKitIntegration:(BOOL)integration
{
  integrationCopy = integration;
  if (IsAppleInternalBuild())
  {
    IntWithDefault = APSSettingsGetIntWithDefault();
    if (IntWithDefault)
    {
      v8 = 0;
    }

    else
    {
      v8 = integrationCopy;
    }

    self->_usesHomeKitIntegration = v8;
    p_usesHomeKitIntegration = &self->_usesHomeKitIntegration;
    if (integrationCopy && IntWithDefault)
    {
      if (gLogCategory_AirPlayReceiverKit > 50)
      {
        return;
      }

      if (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize())
      {
        [APRKStreamRenderingManager setUsesHomeKitIntegration:];
      }
    }
  }

  else
  {
    self->_usesHomeKitIntegration = integrationCopy;
    p_usesHomeKitIntegration = &self->_usesHomeKitIntegration;
  }

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [(APRKStreamRenderingManager *)p_usesHomeKitIntegration setUsesHomeKitIntegration:v5, v6];
  }
}

- (int)forcePINRefresh
{
  if (!self->_server)
  {
    return 0;
  }

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderingManager forcePINRefresh];
  }

  server = self->_server;

  return MEMORY[0x28213BA88](server, 1, @"clearPIN", 0, 0, 0);
}

- (BOOL)isAirPlayReceiverSupported
{
  if (isAirPlayReceiverSupported_once != -1)
  {
    [APRKStreamRenderingManager isAirPlayReceiverSupported];
  }

  return isAirPlayReceiverSupported_sIsReceiverSupported != 0;
}

uint64_t __56__APRKStreamRenderingManager_isAirPlayReceiverSupported__block_invoke()
{
  if (APSIsVirtualMachine())
  {
    result = IsAppleInternalBuild();
  }

  else
  {
    result = APSSystemSupportsWiFiUDM();
  }

  isAirPlayReceiverSupported_sIsReceiverSupported = result;
  if (gLogCategory_AirPlayReceiverKit <= 50)
  {
    if (gLogCategory_AirPlayReceiverKit == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      LODWORD(result) = isAirPlayReceiverSupported_sIsReceiverSupported;
    }

    v1 = "yes";
    if (!result)
    {
      v1 = "no";
    }

    return LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager isAirPlayReceiverSupported]_block_invoke", 33554482, "isAirPlayReceiverSupported: %s", v1);
  }

  return result;
}

- (void)setAltAdvertisingEnabled:(BOOL)altAdvertisingEnabled
{
  self->_altAdvertisingEnabled = altAdvertisingEnabled;
  if (gLogCategory_AirPlayReceiverKit <= 30)
  {
    if (gLogCategory_AirPlayReceiverKit == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      altAdvertisingEnabled = self->_altAdvertisingEnabled;
    }

    v3 = "disabled";
    if (altAdvertisingEnabled)
    {
      v3 = "enabled";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager setAltAdvertisingEnabled:]", 33554462, "Alt Advertising is %s", v3);
  }
}

- (void)setAssistedModeEnabled:(BOOL)assistedModeEnabled
{
  self->_assistedModeEnabled = assistedModeEnabled;
  if (gLogCategory_AirPlayReceiverKit <= 30)
  {
    if (gLogCategory_AirPlayReceiverKit == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      assistedModeEnabled = self->_assistedModeEnabled;
    }

    v3 = "disabled";
    if (assistedModeEnabled)
    {
      v3 = "enabled";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager setAssistedModeEnabled:]", 33554462, "Assisted Mode is %s", v3);
  }
}

- (id)assistedInfoForAWDL
{
  v11 = 0;
  v12 = 0;
  LODWORD(v14) = 0;
  v13 = 0;
  if (self->_assistedModeEnabled)
  {
    if (self->_server)
    {
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKStreamRenderingManager assistedInfoForAWDL];
      }

      [(AWDLActivator *)self->_awdlActivator startWithMaxDuration:0, 0, 0, v14, 0, 0, 0, 0, 0, 0, 0, 0];
      v3 = CUGetInterfaceAddresses();
      if (v3)
      {
        v8 = v3;
        [(APRKStreamRenderingManager *)v3 assistedInfoForAWDL];
      }

      else
      {
        v4 = SockAddrToString();
        if (!v4)
        {
          v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
          v6 = [(APRKStreamRenderingManager *)self assistedInfoForIPAddress:?];

          if (v6)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        v8 = v4;
        [(APRKStreamRenderingManager *)v4 assistedInfoForAWDL];
      }

      if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [(APRKStreamRenderingManager *)v8 assistedInfoForAWDL];
      }
    }

    else
    {
      [APRKStreamRenderingManager assistedInfoForAWDL];
    }
  }

  else
  {
    [APRKStreamRenderingManager assistedInfoForAWDL];
  }

LABEL_9:
  [(AWDLActivator *)self->_awdlActivator stop:v11];
  v6 = 0;
LABEL_10:

  return v6;
}

- (id)assistedInfoForIPAddress:(id)address
{
  addressCopy = address;
  if (!self->_assistedModeEnabled)
  {
    [APRKStreamRenderingManager assistedInfoForIPAddress:];
LABEL_21:
    v13 = 0;
    v7 = 0;
    v8 = 0;
LABEL_23:
    v16 = 0;
    goto LABEL_14;
  }

  if (!self->_server)
  {
    [APRKStreamRenderingManager assistedInfoForIPAddress:];
    goto LABEL_21;
  }

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [(APRKStreamRenderingManager *)addressCopy assistedInfoForIPAddress:v4, v5];
  }

  [(APRKStreamRenderingManager *)self _setRandomPassword];
  v7 = AirPlayReceiverServerCopyProperty();
  v8 = [v7 mutableCopy];
  v9 = AirPlayReceiverServerCopyProperty();
  intValue = [v9 intValue];

  if (intValue <= 0)
  {
    [APRKStreamRenderingManager assistedInfoForIPAddress:];
    v13 = 0;
    goto LABEL_23;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInt:?];
  [v8 setObject:? forKey:?];

  [v8 setObject:? forKey:?];
  [v8 setObject:? forKey:?];
  if ([addressCopy containsString:?])
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:?];
    [v8 setObject:? forKey:?];
  }

  v13 = [MEMORY[0x277CCAC58] dataWithPropertyList:? format:? options:? error:?];
  v16 = 0;
  if (v16)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [(APRKStreamRenderingManager *)v16 assistedInfoForIPAddress:v14, v15];
    }

    v13 = 0;
  }

LABEL_14:
  v17 = v13;

  return v17;
}

- (id)assistedInfoForDiscovery
{
  if (!self->_assistedModeEnabled)
  {
    [APRKStreamRenderingManager assistedInfoForDiscovery];
LABEL_28:
    v6 = 0;
    v11 = 0;
    v8 = 0;
    v4 = 0;
LABEL_31:
    v7 = 0;
    goto LABEL_14;
  }

  if (!self->_server)
  {
    [APRKStreamRenderingManager assistedInfoForDiscovery];
    goto LABEL_28;
  }

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderingManager assistedInfoForDiscovery];
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = Mutable;
  if (!Mutable)
  {
    [APRKStreamRenderingManager assistedInfoForDiscovery];
    v11 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 4294960568;
    goto LABEL_14;
  }

  CFDictionarySetValue(Mutable, @"AssistedOverAWDL", *MEMORY[0x277CBED28]);
  CFDictionarySetInt64();
  v5 = AirPlayReceiverServerGetDispatchQueue();
  v6 = CFObjectControlSync();

  if (v6)
  {
    [(APRKStreamRenderingManager *)v6 assistedInfoForDiscovery];
    v11 = 0;
    v8 = 0;
    goto LABEL_31;
  }

  [(APRKStreamRenderingManager *)self _setRandomPassword];
  v7 = [0 mutableCopy];
  [v7 setObject:? forKey:?];
  v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:? format:? options:? error:?];
  v11 = 0;
  if (v11)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [(APRKStreamRenderingManager *)v11 assistedInfoForDiscovery];
    }

    v6 = NSErrorToOSStatus();
    v12 = AirPlayReceiverServerGetDispatchQueue();
    CFObjectControlAsync();

    v8 = 0;
  }

  else
  {
    v6 = 0;
  }

LABEL_14:
  if (v4)
  {
    CFRelease(v4);
  }

  if (v6 && gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [(APRKStreamRenderingManager *)v6 assistedInfoForDiscovery];
  }

  return v8;
}

- (id)assistedInfoForMode:(unint64_t)mode options:(id)options
{
  optionsCopy = options;
  v9 = optionsCopy;
  if (mode == 2)
  {
    assistedInfoForDiscovery = [(APRKStreamRenderingManager *)self assistedInfoForDiscovery];
    goto LABEL_9;
  }

  if (mode == 1)
  {
    assistedInfoForDiscovery = [(APRKStreamRenderingManager *)self assistedInfoForAWDL];
LABEL_9:
    v12 = assistedInfoForDiscovery;
    goto LABEL_14;
  }

  if (mode)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [(APRKStreamRenderingManager *)mode assistedInfoForMode:v7 options:v8];
    }

    v12 = 0;
  }

  else
  {
    if (optionsCopy)
    {
      v10 = [optionsCopy objectForKey:?];

      if (v10)
      {
        v11 = [v9 objectForKeyedSubscript:?];
        v12 = [(APRKStreamRenderingManager *)self assistedInfoForIPAddress:?];

        goto LABEL_14;
      }

      [APRKStreamRenderingManager assistedInfoForMode:? options:?];
    }

    else
    {
      [APRKStreamRenderingManager assistedInfoForMode:? options:?];
    }

    v12 = v15;
  }

LABEL_14:

  return v12;
}

- (id)ensureUniqueClientName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  v6 = nameCopy;
  if (nameCopy)
  {
    v6 = nameCopy;
    if (self->_useUniqueClientName)
    {
      v17 = 0u;
      v7 = self->_renderersArray;
      v8 = [NSMutableArray countByEnumeratingWithState:v7 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v8)
      {
        v9 = v8;
        v10 = 1;
        v11 = v5;
        while (2)
        {
          v12 = MEMORY[0];
LABEL_6:
          v13 = 0;
          while (1)
          {
            if (MEMORY[0] != v12)
            {
              objc_enumerationMutation(v7);
            }

            managedClientName = [*(*(&v17 + 1) + 8 * v13) managedClientName];
            v15 = [managedClientName isEqualToString:?];

            if (v15)
            {
              break;
            }

            if (v9 == ++v13)
            {
              v9 = [NSMutableArray countByEnumeratingWithState:v7 objects:"countByEnumeratingWithState:objects:count:" count:?];
              if (v9)
              {
                goto LABEL_6;
              }

              v6 = v11;
              goto LABEL_16;
            }
          }

          v6 = [MEMORY[0x277CCACA8] stringWithFormat:v5, v10];

          v10 = (v10 + 1);
          v17 = 0u;
          v7 = self->_renderersArray;
          v9 = [NSMutableArray countByEnumeratingWithState:v7 objects:"countByEnumeratingWithState:objects:count:" count:?];
          v11 = v6;
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v6 = v5;
      }

LABEL_16:

      if (([v5 isEqualToString:?] & 1) == 0 && gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager ensureUniqueClientName:]", 33554482, "Client name '%@' is not unique, changing display client name to '%@'", v5, v6, v17);
      }
    }
  }

  return v6;
}

- (id)createStreamRendererWithUniqueID:(id)d clientName:(id)name UIController:(OpaqueAPReceiverUIController *)controller
{
  dCopy = d;
  nameCopy = name;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  [(AWDLActivator *)self->_awdlActivator stop];
  v10 = AirPlayReceiverServerGetDispatchQueue();
  CFObjectControlAsync();

  if (dCopy)
  {
    isolationQueue = self->_isolationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__APRKStreamRenderingManager_createStreamRendererWithUniqueID_clientName_UIController___block_invoke;
    block[3] = &unk_278C62CC8;
    v17 = &v19;
    block[4] = self;
    v15 = dCopy;
    v16 = nameCopy;
    controllerCopy = controller;
    dispatch_sync(isolationQueue, block);
  }

  v12 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v12;
}

void __87__APRKStreamRenderingManager_createStreamRendererWithUniqueID_clientName_UIController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _rendererForUniqueIDInternal:?];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v5 = [*(a1 + 32) ensureUniqueClientName:?];
    v6 = [APRKStreamRenderer initWithUniqueID:"initWithUniqueID:clientName:UIController:useCALayerForMirroring:" clientName:? UIController:? useCALayerForMirroring:?];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __87__APRKStreamRenderingManager_createStreamRendererWithUniqueID_clientName_UIController___block_invoke_cold_1();
    }

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      [*(*(a1 + 32) + 24) addObject:?];
      v9 = *(a1 + 32);
      v10 = *(v9 + 40);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __87__APRKStreamRenderingManager_createStreamRendererWithUniqueID_clientName_UIController___block_invoke_2;
      v12[3] = &unk_278C62CA0;
      v11 = *(a1 + 56);
      v12[4] = v9;
      v12[5] = v11;
      dispatch_async(v10, v12);
    }
  }
}

void __87__APRKStreamRenderingManager_createStreamRendererWithUniqueID_clientName_UIController___block_invoke_2(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __87__APRKStreamRenderingManager_createStreamRendererWithUniqueID_clientName_UIController___block_invoke_2_cold_1(a1);
  }

  v2 = [*(a1 + 32) delegate];
  [v2 didStartStreamingWithRenderer:?];
}

- (void)removeRendererWithUniqueID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__1;
    v12[4] = __Block_byref_object_dispose__1;
    v13 = 0;
    isolationQueue = self->_isolationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__APRKStreamRenderingManager_removeRendererWithUniqueID___block_invoke;
    block[3] = &unk_278C627D8;
    v11 = v12;
    block[4] = self;
    v10 = dCopy;
    dispatch_sync(isolationQueue, block);
    delegateQueue = self->_delegateQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__APRKStreamRenderingManager_removeRendererWithUniqueID___block_invoke_2;
    v8[3] = &unk_278C62CA0;
    v8[4] = self;
    v8[5] = v12;
    dispatch_async(delegateQueue, v8);

    _Block_object_dispose(v12, 8);
  }
}

void *__57__APRKStreamRenderingManager_removeRendererWithUniqueID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _rendererForUniqueIDInternal:?];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = [*(*(a1 + 32) + 24) removeObject:?];
  if (gLogCategory_AirPlayReceiverKit <= 50)
  {
    if (gLogCategory_AirPlayReceiverKit != -1)
    {
      return __57__APRKStreamRenderingManager_removeRendererWithUniqueID___block_invoke_cold_1();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __57__APRKStreamRenderingManager_removeRendererWithUniqueID___block_invoke_cold_1();
    }
  }

  return result;
}

void __57__APRKStreamRenderingManager_removeRendererWithUniqueID___block_invoke_2(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __57__APRKStreamRenderingManager_removeRendererWithUniqueID___block_invoke_2_cold_1(a1);
  }

  v2 = [*(a1 + 32) delegate];
  [v2 didStopStreamingWithRenderer:?];
}

- (void)setShouldForwardLayers:(BOOL)layers
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderingManager setShouldForwardLayers:];
  }

  self->_shouldForwardLayers = layers;
}

- (void)processShowGlobalPasscodePromptRequest:(id)request withClientName:(id)name
{
  requestCopy = request;
  nameCopy = name;
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__APRKStreamRenderingManager_processShowGlobalPasscodePromptRequest_withClientName___block_invoke;
  block[3] = &unk_278C628F0;
  block[4] = self;
  v12 = nameCopy;
  v13 = requestCopy;
  v9 = requestCopy;
  v10 = nameCopy;
  dispatch_async(delegateQueue, block);
}

void __84__APRKStreamRenderingManager_processShowGlobalPasscodePromptRequest_withClientName___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __84__APRKStreamRenderingManager_processShowGlobalPasscodePromptRequest_withClientName___block_invoke_cold_1(v2);
    }

    v5 = [*(a1 + 32) delegate];
    [v5 shouldShowGlobalPasscodeWithString:? withClientName:?];
  }
}

- (void)processHideGlobalPasscodePromptRequest
{
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__APRKStreamRenderingManager_processHideGlobalPasscodePromptRequest__block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

void __68__APRKStreamRenderingManager_processHideGlobalPasscodePromptRequest__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __68__APRKStreamRenderingManager_processHideGlobalPasscodePromptRequest__block_invoke_cold_1(v1);
    }

    v4 = [*v1 delegate];
    [v4 shouldHideGlobalPasscode];
  }
}

- (BOOL)isAllowedToProceedForClientWithName:(id)name clientID:(id)d
{
  nameCopy = name;
  dCopy = d;
  if (self->_permissionEnabled)
  {
    delegate = [(APRKStreamRenderingManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = [(APRKStreamRenderingManager *)self _isPermittedClient:?];

      if ((v9 & 1) == 0)
      {
        v10 = dispatch_semaphore_create(0);
        v40 = 0;
        v41 = &v40;
        v42 = 0x2020000000;
        v43 = 0;
        uUID = [MEMORY[0x277CCAD78] UUID];
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __75__APRKStreamRenderingManager_isAllowedToProceedForClientWithName_clientID___block_invoke;
        aBlock[3] = &unk_278C62CF0;
        v39 = &v40;
        v12 = v10;
        v38 = v12;
        v13 = _Block_copy(aBlock);
        delegateQueue = self->_delegateQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __75__APRKStreamRenderingManager_isAllowedToProceedForClientWithName_clientID___block_invoke_2;
        block[3] = &unk_278C62D18;
        block[4] = self;
        v15 = nameCopy;
        v34 = v15;
        v16 = uUID;
        v35 = v16;
        v17 = v13;
        v36 = v17;
        dispatch_async(delegateQueue, block);
        permissionTimeout = self->_permissionTimeout;
        if (permissionTimeout < 0)
        {
          v19 = -1;
        }

        else
        {
          v19 = dispatch_time(0, 1000000000 * permissionTimeout);
        }

        if (dispatch_semaphore_wait(v12, v19))
        {
          if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
          {
            delegate2 = [(APRKStreamRenderingManager *)self delegate];
            LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager isAllowedToProceedForClientWithName:clientID:]", 33554482, "Delegate %{ptr} reply timed out for client %@", delegate2, v15);
          }

          delegate3 = [(APRKStreamRenderingManager *)self delegate];
          v25 = objc_opt_respondsToSelector();

          if (v25)
          {
            v26 = self->_delegateQueue;
            v27 = MEMORY[0x277D85DD0];
            v28 = 3221225472;
            v29 = __75__APRKStreamRenderingManager_isAllowedToProceedForClientWithName_clientID___block_invoke_3;
            v30 = &unk_278C62788;
            selfCopy = self;
            v32 = v16;
            dispatch_async(v26, &v27);
          }
        }

        else if (*(v41 + 24) == 1)
        {
          [(APRKStreamRenderingManager *)self _addPermittedClient:?];
          v20 = 1;
LABEL_26:

          _Block_object_dispose(&v40, 8);
          goto LABEL_8;
        }

        v20 = 0;
        goto LABEL_26;
      }
    }

    else
    {
    }
  }

  v20 = 1;
LABEL_8:
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    v21 = @"not ";
    if (v20)
    {
      v21 = &stru_28513D508;
    }

    LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager isAllowedToProceedForClientWithName:clientID:]", 33554482, "Client %@ is %@allowed to proceed", nameCopy, v21, v27, v28, v29, v30, selfCopy);
  }

  return v20;
}

void __75__APRKStreamRenderingManager_isAllowedToProceedForClientWithName_clientID___block_invoke_2(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __75__APRKStreamRenderingManager_isAllowedToProceedForClientWithName_clientID___block_invoke_2_cold_1(a1);
  }

  v2 = [*(a1 + 32) delegate];
  [v2 shouldAskPermissionWithRequestID:? forClientWithName:? withCompletionBlock:?];
}

void __75__APRKStreamRenderingManager_isAllowedToProceedForClientWithName_clientID___block_invoke_3(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __75__APRKStreamRenderingManager_isAllowedToProceedForClientWithName_clientID___block_invoke_3_cold_1(a1);
  }

  v2 = [*(a1 + 32) delegate];
  [v2 shouldCancelPermissionRequestWithRequestID:?];
}

- (__CFString)_getHDRModeString:(unint64_t)string
{
  switch(string)
  {
    case 3uLL:
      v3 = MEMORY[0x277CD6528];
      return *v3;
    case 2uLL:
      v3 = MEMORY[0x277CD6530];
      return *v3;
    case 1uLL:
      v3 = MEMORY[0x277CD6538];
      return *v3;
  }

  return 0;
}

- (int)_startReceiverServerWithSupportedModesMask:(unint64_t)mask
{
  valuePtr[17] = *MEMORY[0x277D85DE8];
  valuePtr[0] = UIControllerCreate;
  [(APRKStreamRenderingManager *)self _customDisplaySizeFromPrefsWithDefault:?];
  v6 = v5;
  v8 = v7;
  [(APRKStreamRenderingManager *)self _customDisplaySizeMaxFromPrefsWithDefault:?];
  v10 = v9;
  v12 = v11;
  v13 = [(APRKStreamRenderingManager *)self _customDisplayHDRModeFromPrefsWithDefault:?];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__APRKStreamRenderingManager__startReceiverServerWithSupportedModesMask___block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  if (_startReceiverServerWithSupportedModesMask__onceToken != -1)
  {
    dispatch_once(&_startReceiverServerWithSupportedModesMask__onceToken, block);
  }

  if (self->_server)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50)
    {
      if (gLogCategory_AirPlayReceiverKit != -1 || (v13 = _LogCategory_Initialize(), v13))
      {
        [(APRKStreamRenderingManager *)v13 _startReceiverServerWithSupportedModesMask:v14, v15];
      }
    }

    LODWORD(v16) = 0;
    return v16;
  }

  if (gLogCategory_AirPlayReceiverKit <= 50)
  {
    if (gLogCategory_AirPlayReceiverKit != -1 || (v13 = _LogCategory_Initialize(), v13))
    {
      [(APRKStreamRenderingManager *)v13 _startReceiverServerWithSupportedModesMask:v14, v15];
    }
  }

  v17 = *MEMORY[0x277CBECE8];
  v18 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, valuePtr);
  Mutable = CFDictionaryCreateMutable(v17, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CE9EC0], v18);
  v20 = *MEMORY[0x277CBF3A8];
  v21 = *(MEMORY[0x277CBF3A8] + 8);
  if (v6 != *MEMORY[0x277CBF3A8] || v8 != v21)
  {
    v60.width = v6;
    v60.height = v8;
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v60);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CE9E78], DictionaryRepresentation);
    CFRelease(DictionaryRepresentation);
  }

  if (v10 != v20 || v12 != v21)
  {
    v61.width = v10;
    v61.height = v12;
    v25 = CGSizeCreateDictionaryRepresentation(v61);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CE9E80], v25);
    CFRelease(v25);
  }

  v26 = [(APRKStreamRenderingManager *)self _getHDRModeString:?];
  if (v26)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CE9E70], v26);
  }

  if (mask)
  {
    self->_supportedModesMask = mask;
    v27 = APSFeaturesCreateMutable();
    if (!v27)
    {
      [APRKStreamRenderingManager _startReceiverServerWithSupportedModesMask:];
      LODWORD(v16) = -6728;
      goto LABEL_79;
    }

    v30 = v27;
    if ((mask & 1) == 0)
    {
      if (gLogCategory_AirPlayReceiverKit <= 10)
      {
        if (gLogCategory_AirPlayReceiverKit != -1 || (v27 = _LogCategory_Initialize(), v27))
        {
          [(APRKStreamRenderingManager *)v27 _startReceiverServerWithSupportedModesMask:v28, v29];
        }
      }

      v27 = APSFeaturesSetFeature();
    }

    if ((mask & 3) == 0)
    {
      if (gLogCategory_AirPlayReceiverKit <= 10)
      {
        if (gLogCategory_AirPlayReceiverKit != -1 || (v27 = _LogCategory_Initialize(), v27))
        {
          [(APRKStreamRenderingManager *)v27 _startReceiverServerWithSupportedModesMask:v28, v29];
        }
      }

      v27 = APSFeaturesSetFeature();
    }

    if ((mask & 4) == 0)
    {
      if (gLogCategory_AirPlayReceiverKit <= 10)
      {
        if (gLogCategory_AirPlayReceiverKit != -1 || (v27 = _LogCategory_Initialize(), v27))
        {
          [(APRKStreamRenderingManager *)v27 _startReceiverServerWithSupportedModesMask:v28, v29];
        }
      }

      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CE9E90], v30);
    CFRelease(v30);
  }

  v31 = *MEMORY[0x277CBED28];
  v32 = *MEMORY[0x277CBED10];
  if (self->_usesHomeKitIntegration)
  {
    v33 = *MEMORY[0x277CBED28];
  }

  else
  {
    v33 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x277CE9ED8], v33);
  maxNumberOfConcurrentSessions = self->_maxNumberOfConcurrentSessions;
  if (maxNumberOfConcurrentSessions)
  {
    if (gLogCategory_AirPlayReceiverKit <= 10)
    {
      if (gLogCategory_AirPlayReceiverKit != -1 || (v37 = _LogCategory_Initialize(), maxNumberOfConcurrentSessions = self->_maxNumberOfConcurrentSessions, v37))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager _startReceiverServerWithSupportedModesMask:]", 33554442, "Client app set maxNumberOfConcurrentSessions to %lu", maxNumberOfConcurrentSessions);
      }
    }

    CFDictionarySetInt64();
  }

  else if (gLogCategory_AirPlayReceiverKit <= 10)
  {
    if (gLogCategory_AirPlayReceiverKit != -1 || (v34 = _LogCategory_Initialize(), v34))
    {
      [(APRKStreamRenderingManager *)v34 _startReceiverServerWithSupportedModesMask:v35, maxNumberOfConcurrentSessions];
    }
  }

  concurrentPlaybackPolicy = self->_concurrentPlaybackPolicy;
  if (concurrentPlaybackPolicy)
  {
    if (concurrentPlaybackPolicy == 1)
    {
      v39 = v31;
    }

    else
    {
      v39 = v32;
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CE9EA0], v39);
  }

  if (self->_supportRemoteControl)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CE9EB0], v31);
  }

  if (self->_assistedModeEnabled)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CE9EA8], v31);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CE9ED0], v31);
  }

  if (self->_altAdvertisingEnabled)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CE9EC8], v31);
  }

  if (self->_enableMixingMediaAudio)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CE9E88], v31);
  }

  v40 = AirPlayReceiverServerCreate();
  if (v40)
  {
    v16 = v40;
    if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [(APRKStreamRenderingManager *)v16 _startReceiverServerWithSupportedModesMask:v41, v42];
    }
  }

  else
  {
    if (self->_assistedModeEnabled)
    {
      [(APRKStreamRenderingManager *)self _setRandomPassword];
    }

    v43 = AirPlayReceiverServerGetDispatchQueue();
    v16 = CFObjectControlSync();

    if (!v16)
    {
      v57 = v18;
      v47 = self->_serverProperties;
      v48 = [NSMutableDictionary countByEnumeratingWithState:v47 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v48)
      {
        v49 = v48;
        v50 = MEMORY[0];
        do
        {
          for (i = 0; i != v49; i = (i + 1))
          {
            if (MEMORY[0] != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = *(8 * i);
            v53 = [(APRKStreamRenderingManager *)self serverPropertyForKey:?];
            AirPlayReceiverServerSetProperty();
            if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager _startReceiverServerWithSupportedModesMask:]", 33554462, "Server property %@ is set to %@", v52, v53);
            }
          }

          v49 = [NSMutableDictionary countByEnumeratingWithState:v47 objects:"countByEnumeratingWithState:objects:count:" count:?];
        }

        while (v49);
      }

      if (gLogCategory_AirPlayReceiverKit > 50)
      {
        LODWORD(v16) = 0;
        v18 = v57;
      }

      else
      {
        v18 = v57;
        if (gLogCategory_AirPlayReceiverKit != -1 || (v54 = _LogCategory_Initialize(), v54))
        {
          [(APRKStreamRenderingManager *)v54 _startReceiverServerWithSupportedModesMask:v55, v56];
        }

        LODWORD(v16) = 0;
      }

      goto LABEL_79;
    }

    if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [(APRKStreamRenderingManager *)v16 _startReceiverServerWithSupportedModesMask:v44, v45];
    }
  }

  APSLogErrorAt();
LABEL_79:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v16;
}

uint64_t __73__APRKStreamRenderingManager__startReceiverServerWithSupportedModesMask___block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_create("APRKAlternateBonjourBrowsingNotificationQueue", 0);
  v3 = _startReceiverServerWithSupportedModesMask__notificationQueue;
  _startReceiverServerWithSupportedModesMask__notificationQueue = v2;

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __73__APRKStreamRenderingManager__startReceiverServerWithSupportedModesMask___block_invoke_2;
  handler[3] = &unk_278C62D40;
  handler[4] = *(a1 + 32);
  notify_register_dispatch("com.apple.airplay.alternatebonjourbrowsingdisabled", &_startReceiverServerWithSupportedModesMask__notifyDisabledToken, _startReceiverServerWithSupportedModesMask__notificationQueue, handler);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__APRKStreamRenderingManager__startReceiverServerWithSupportedModesMask___block_invoke_3;
  v5[3] = &unk_278C62D40;
  v5[4] = *(a1 + 32);
  return notify_register_dispatch("com.apple.airplay.alternatebonjourbrowsingenabled", &_startReceiverServerWithSupportedModesMask__notifyEnabledToken, _startReceiverServerWithSupportedModesMask__notificationQueue, v5);
}

void __73__APRKStreamRenderingManager__startReceiverServerWithSupportedModesMask___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_AirPlayReceiverKit <= 50)
  {
    if (gLogCategory_AirPlayReceiverKit != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __73__APRKStreamRenderingManager__startReceiverServerWithSupportedModesMask___block_invoke_2_cold_1(a1, a2, a3);
    }
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:? object:?];
}

void __73__APRKStreamRenderingManager__startReceiverServerWithSupportedModesMask___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_AirPlayReceiverKit <= 50)
  {
    if (gLogCategory_AirPlayReceiverKit != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __73__APRKStreamRenderingManager__startReceiverServerWithSupportedModesMask___block_invoke_3_cold_1(a1, a2, a3);
    }
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:? object:?];
}

- (id)_rendererForUniqueIDInternal:(id)internal
{
  internalCopy = internal;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  renderersArray = self->_renderersArray;
  v8 = MEMORY[0x277D85DD0];
  v9 = internalCopy;
  [(NSMutableArray *)renderersArray enumerateObjectsUsingBlock:v8, 3221225472, __59__APRKStreamRenderingManager__rendererForUniqueIDInternal___block_invoke, &unk_278C62D68];
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

void __59__APRKStreamRenderingManager__rendererForUniqueIDInternal___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 uniqueID];
  v8 = [v7 isEqual:?];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (CGSize)_customDisplaySizeFromPrefsWithDefault:(CGSize)default
{
  height = default.height;
  width = default.width;
  IntWithDefault = APSSettingsGetIntWithDefault();
  v6 = APSSettingsGetIntWithDefault();
  if (IntWithDefault > 0 || v6 >= 1)
  {
    v8 = v6;
    if (v6 <= 0)
    {
      v8 = (IntWithDefault / 1.77777778);
    }

    else if (IntWithDefault <= 0)
    {
      IntWithDefault = (v6 * 1.77777778);
    }

    width = IntWithDefault;
    height = v8;
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager _customDisplaySizeFromPrefsWithDefault:]", 33554462, "Will use custom display size %d x %d from prefs\n", IntWithDefault, v8);
    }
  }

  v9 = width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)_customDisplaySizeMaxFromPrefsWithDefault:(CGSize)default
{
  height = default.height;
  width = default.width;
  IntWithDefault = APSSettingsGetIntWithDefault();
  v6 = APSSettingsGetIntWithDefault();
  if (IntWithDefault > 0 || v6 >= 1)
  {
    v8 = v6;
    if (v6 <= 0)
    {
      v8 = (IntWithDefault / 1.77777778);
    }

    else if (IntWithDefault <= 0)
    {
      IntWithDefault = (v6 * 1.77777778);
    }

    width = IntWithDefault;
    height = v8;
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager _customDisplaySizeMaxFromPrefsWithDefault:]", 33554462, "Will use custom display size max %d x %d from prefs\n", IntWithDefault, v8);
    }
  }

  v9 = width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (unint64_t)_customDisplayHDRModeFromPrefsWithDefault:(unint64_t)default
{
  CFStringGetTypeID();
  v5 = APSSettingsCopyValueEx();
  if (v5)
  {
    v7 = v5;
    if (CFEqual(v5, *MEMORY[0x277CD6538]))
    {
      default = 1;
    }

    else if (CFEqual(v7, *MEMORY[0x277CD6530]))
    {
      default = 2;
    }

    else if (CFEqual(v7, *MEMORY[0x277CD6528]))
    {
      default = 3;
    }

    else
    {
      if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKStreamRenderingManager _customDisplayHDRModeFromPrefsWithDefault:];
      }

      default = 0;
    }

    CFRelease(v7);
  }

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [(APRKStreamRenderingManager *)default _customDisplayHDRModeFromPrefsWithDefault:v6];
  }

  return default;
}

- (void)_initPermittedClients
{
  if (!self->_permittedClients)
  {
    handler[7] = v2;
    handler[8] = v3;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    permittedClients = self->_permittedClients;
    self->_permittedClients = dictionary;

    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_permittedClientsQueue);
    permissionGrantTimer = self->_permissionGrantTimer;
    self->_permissionGrantTimer = v7;

    v9 = self->_permissionGrantTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __51__APRKStreamRenderingManager__initPermittedClients__block_invoke;
    handler[3] = &unk_278C626E8;
    handler[4] = self;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_source_set_timer(self->_permissionGrantTimer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(self->_permissionGrantTimer);
  }
}

void *__51__APRKStreamRenderingManager__initPermittedClients__block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __51__APRKStreamRenderingManager__initPermittedClients__block_invoke_cold_1();
  }

  v2 = *(*(a1 + 32) + 120);

  return [v2 removeAllObjects];
}

- (BOOL)_isPermittedClient:(id)client
{
  clientCopy = client;
  v5 = clientCopy;
  v6 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (clientCopy && !self->_forcePermissionDialog)
  {
    permittedClientsQueue = self->_permittedClientsQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__APRKStreamRenderingManager__isPermittedClient___block_invoke;
    block[3] = &unk_278C62D90;
    block[4] = self;
    v10 = clientCopy;
    v11 = &v12;
    dispatch_sync(permittedClientsQueue, block);

    v6 = *(v13 + 24);
  }

  _Block_object_dispose(&v12, 8);

  return v6 & 1;
}

void __49__APRKStreamRenderingManager__isPermittedClient___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _initPermittedClients];
  v6 = [*(*(a1 + 32) + 120) objectForKey:?];
  if (v6)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [v6 doubleValue];
    v5 = *(a1 + 32);
    if (Current - v4 <= *(v5 + 112))
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      [*(v5 + 120) removeObjectForKey:?];
    }
  }

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __49__APRKStreamRenderingManager__isPermittedClient___block_invoke_cold_1(a1 + 40, a1, v2);
  }
}

- (void)_addPermittedClient:(id)client
{
  clientCopy = client;
  v5 = clientCopy;
  if (clientCopy)
  {
    permittedClientsQueue = self->_permittedClientsQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__APRKStreamRenderingManager__addPermittedClient___block_invoke;
    v7[3] = &unk_278C62788;
    v7[4] = self;
    v8 = clientCopy;
    dispatch_sync(permittedClientsQueue, v7);
  }
}

void __50__APRKStreamRenderingManager__addPermittedClient___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _initPermittedClients];
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __50__APRKStreamRenderingManager__addPermittedClient___block_invoke_cold_1(a1, v2, v3);
  }

  v4 = *(*(a1 + 32) + 120);
  v5 = MEMORY[0x277CCABB0];
  CFAbsoluteTimeGetCurrent();
  v6 = [v5 numberWithDouble:?];
  [v4 setObject:? forKey:?];

  v7 = *(a1 + 32);
  v8 = *(v7 + 136);
  v9 = dispatch_time(0, 1000000000 * *(v7 + 112));

  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

- (void)_setRandomPassword
{
  if (self->_server)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    passwordString = self->_passwordString;
    p_passwordString = &self->_passwordString;
    *p_passwordString = uUIDString;

    v7 = AirPlayReceiverServerSetProperty();
    if (v7)
    {
      if (gLogCategory_AirPlayReceiverKit <= 90)
      {
        v10 = v7;
        if (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize())
        {
          [(APRKStreamRenderingManager *)v10 _setRandomPassword];
        }
      }
    }

    else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [(APRKStreamRenderingManager *)p_passwordString _setRandomPassword];
    }
  }
}

- (APRKStreamRenderingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (uint64_t)assistedInfoForMode:(void *)a1 options:.cold.1(void *a1)
{
  result = APSLogErrorAt();
  if (gLogCategory_AirPlayReceiverKit <= 50)
  {
    if (gLogCategory_AirPlayReceiverKit != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = OUTLINED_FUNCTION_7(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager assistedInfoForMode:options:]", v3, "IP option required for IP mode");
    }
  }

  *a1 = 0;
  return result;
}

- (uint64_t)assistedInfoForMode:(void *)a1 options:.cold.2(void *a1)
{
  result = APSLogErrorAt();
  if (gLogCategory_AirPlayReceiverKit <= 50)
  {
    if (gLogCategory_AirPlayReceiverKit != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = OUTLINED_FUNCTION_7(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager assistedInfoForMode:options:]", v3, "Options required for IP mode");
    }
  }

  *a1 = 0;
  return result;
}

void __87__APRKStreamRenderingManager_createStreamRendererWithUniqueID_clientName_UIController___block_invoke_2_cold_1(uint64_t a1)
{
  [*(a1 + 32) delegate];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager createStreamRendererWithUniqueID:clientName:UIController:]_block_invoke_2", v1, "Calling didStartStreamingWithRenderer on delegate %{ptr} with renderer %{ptr}");
}

void __57__APRKStreamRenderingManager_removeRendererWithUniqueID___block_invoke_2_cold_1(uint64_t a1)
{
  [*(a1 + 32) delegate];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager removeRendererWithUniqueID:]_block_invoke_2", v1, "Calling didStopStreamingWithRenderer on delegate %{ptr} with renderer %{ptr}");
}

void __84__APRKStreamRenderingManager_processShowGlobalPasscodePromptRequest_withClientName___block_invoke_cold_1(id *a1)
{
  v2 = [*a1 delegate];
  OUTLINED_FUNCTION_7(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager processShowGlobalPasscodePromptRequest:withClientName:]_block_invoke", v1, "Calling shouldShowGlobalPasscodeWithString on delegate %{ptr} and clientName %@");
}

void __68__APRKStreamRenderingManager_processHideGlobalPasscodePromptRequest__block_invoke_cold_1(id *a1)
{
  v2 = [*a1 delegate];
  OUTLINED_FUNCTION_7(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager processHideGlobalPasscodePromptRequest]_block_invoke", v1, "Calling shouldHideGlobalPasscode on delegate %{ptr}");
}

void __75__APRKStreamRenderingManager_isAllowedToProceedForClientWithName_clientID___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  OUTLINED_FUNCTION_7(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager isAllowedToProceedForClientWithName:clientID:]_block_invoke_2", v1, "Asking delegate %{ptr} for permission to proceed for client %@");
}

void __75__APRKStreamRenderingManager_isAllowedToProceedForClientWithName_clientID___block_invoke_3_cold_1(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  OUTLINED_FUNCTION_7(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager isAllowedToProceedForClientWithName:clientID:]_block_invoke_3", v1, "Asking delegate %{ptr} to cancel permission request");
}

- (uint64_t)_customDisplayHDRModeFromPrefsWithDefault:(uint64_t)a3 .cold.2(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    [a2 _getHDRModeString:?];
  }

  return OUTLINED_FUNCTION_1(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderingManager _customDisplayHDRModeFromPrefsWithDefault:]", a3, "Using HDR Mode %@");
}

@end