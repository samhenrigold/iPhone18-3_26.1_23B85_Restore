@interface HMDeviceManager
+ (id)sharedInstance;
- (BOOL)_deviceUpdateRegionStatus:(id)status;
- (HMDeviceManager)init;
- (id)_constructPMEConfigDataBytesForDevice:(id)device fromConfig:(id)config;
- (id)availableDiagnosticRecords;
- (id)availableRecords;
- (void)_aaControllerEnsureStarted;
- (void)_aaControllerEnsureStopped;
- (void)_accessoryDiscoveryEnsureStarted;
- (void)_accessoryDiscoveryEnsureStopped;
- (void)_activate;
- (void)_activateAHPSConnectionForDevice:(id)device;
- (void)_checkForOcclusionInDiagnosticRecord:(id)record forDevice:(id)device;
- (void)_cloudServicesClientEnsureStarted;
- (void)_cloudServicesClientEnsureStopped;
- (void)_computeOcclusionResultFromFaultCountsInRecord:(id)record forDevice:(id)device;
- (void)_continueDeviceConfigurationFlow:(id)flow identifier:(id)identifier reply:(id)reply;
- (void)_deviceFound:(id)found;
- (void)_deviceLost:(id)lost;
- (void)_deviceRescindHearingAssist:(id)assist;
- (void)_deviceRescindHearingProtectionPPE:(id)e;
- (void)_deviceSetOffListeningModeAllowedIfNeeded:(id)needed;
- (void)_diagnosticDataReceived:(id)received identifier:(id)identifier isInternal:(BOOL)internal;
- (void)_distributedNotificationReceived:(id)received;
- (void)_fetchOcclusionResultForDeviceIdentifier:(id)identifier featureID:(int)d completion:(id)completion;
- (void)_hearingAidConfigDataReceived:(id)received identifier:(id)identifier;
- (void)_hearingProtectionValueReceived:(unsigned __int8)received identifier:(id)identifier;
- (void)_invalidate;
- (void)_invalidateAHPSConnectionForDevice:(id)device;
- (void)_loadCloudRecordForDevice:(id)device;
- (void)_modifyDeviceConfiguration:(id)configuration identifier:(id)identifier completion:(id)completion;
- (void)_multimodalContextMessageReceived:(id)received identifier:(id)identifier;
- (void)_occlusionIndicationShownForDeviceAddress:(id)address featureID:(int)d type:(int)type action:(int)action;
- (void)_performActionsOnRecordChange:(id)change;
- (void)_pmeConfigDataReceived:(id)received identifier:(id)identifier;
- (void)_populateV1Struct:(id)struct identifier:(id)identifier deviceRecord:(id)record hmSettingsStruct:(id *)settingsStruct;
- (void)_populateV2Struct:(id)struct identifier:(id)identifier deviceRecord:(id)record hmSettingsStruct:(id *)settingsStruct;
- (void)_registerForHearingAccessibilitySettingsUpdate;
- (void)_registerForInternalDistributedNotification;
- (void)_registerForRegionStatusUpdates;
- (void)_resetFaultCountForDevice:(id)device;
- (void)_retrieveHearingProtectionSettingsForDevice:(id)device;
- (void)_saveCloudRecordForDevice:(id)device withConfig:(id)config;
- (void)_sendConfigOverDeviceManager:(id)manager identifier:(id)identifier completion:(id)completion;
- (void)_sendHAv2RegionStatus:(id)status;
- (void)_sendHearingAidConfigOverAHPSConnection:(id)connection identifier:(id)identifier completion:(id)completion;
- (void)_sendPMEConfigOverAAController:(id)controller identifier:(id)identifier completion:(id)completion;
- (void)_setHearingProtectionEnabledForDevice:(id)device withConfig:(id)config;
- (void)_submitHearingFeaturesMetricFor:(id)for;
- (void)_throttleUpdatesForHearingAidConfig:(id)config identifier:(id)identifier completion:(id)completion;
- (void)_triggerDiagnosticCheckForIdentifier:(id)identifier completion:(id)completion;
- (void)_triggerHearingProtectionOcclusionNotificationIfNeeded:(id)needed;
- (void)_unregisterFromHearingAccessibilitySettingsUpdate;
- (void)_unregisterFromInternalDistributedNotification;
- (void)_unregisterFromRegionStatusUpdates;
- (void)_updateCloudRecords:(id)records;
- (void)_updatePersonalAudioConfigForIdentifier:(id)identifier;
- (void)activate;
- (void)fetchOcclusionResultForDeviceIdentifier:(id)identifier featureID:(int)d completion:(id)completion;
- (void)invalidate;
- (void)occlusionIndicationShownForDeviceAddress:(id)address featureID:(int)d type:(int)type action:(int)action;
@end

@implementation HMDeviceManager

+ (id)sharedInstance
{
  if (sharedInstance_sOnce_1 != -1)
  {
    +[HMDeviceManager sharedInstance];
  }

  v3 = sharedInstance_sSelf_1;

  return v3;
}

- (id)availableRecords
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_deviceRecordMap copy];
  objc_sync_exit(selfCopy);

  return v3;
}

uint64_t __33__HMDeviceManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HMDeviceManager);
  v1 = sharedInstance_sSelf_1;
  sharedInstance_sSelf_1 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)availableDiagnosticRecords
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_diagnosticRecordMap copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (HMDeviceManager)init
{
  v6.receiver = self;
  v6.super_class = HMDeviceManager;
  v2 = [(HMDeviceManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HMDeviceManager_activate__block_invoke;
  block[3] = &unk_2796EFEF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (!self->_activateCalled)
  {
    v8 = v3;
    selfCopy = self;
    self->_activateCalled = 1;
    if (gLogCategory_HMDeviceManager <= 30)
    {
      if (gLogCategory_HMDeviceManager != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(HMDeviceManager *)self _activate];
      }
    }

    [(HMDeviceManager *)selfCopy _accessoryDiscoveryEnsureStarted:v4];
    [(HMDeviceManager *)selfCopy _aaControllerEnsureStarted];
    [(HMDeviceManager *)selfCopy _cloudServicesClientEnsureStarted];
    [(HMDeviceManager *)selfCopy _registerForHearingAccessibilitySettingsUpdate];
    [(HMDeviceManager *)selfCopy _registerForRegionStatusUpdates];

    [(HMDeviceManager *)selfCopy _registerForInternalDistributedNotification];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HMDeviceManager_invalidate__block_invoke;
  block[3] = &unk_2796EFEF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  selfCopy = self;
  if (gLogCategory_HMDeviceManager <= 30)
  {
    if (gLogCategory_HMDeviceManager != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(HMDeviceManager *)self _invalidate];
    }
  }

  [(HMDeviceManager *)selfCopy _accessoryDiscoveryEnsureStopped];
  [(HMDeviceManager *)selfCopy _aaControllerEnsureStopped];
  [(HMDeviceManager *)selfCopy _cloudServicesClientEnsureStopped];
  [(NSMutableDictionary *)selfCopy->_deviceRecordMap removeAllObjects];
  deviceRecordMap = selfCopy->_deviceRecordMap;
  selfCopy->_deviceRecordMap = 0;

  [(NSMutableDictionary *)selfCopy->_deviceAHPSConnectionManagerMap removeAllObjects];
  deviceAHPSConnectionManagerMap = selfCopy->_deviceAHPSConnectionManagerMap;
  selfCopy->_deviceAHPSConnectionManagerMap = 0;

  [(NSMutableDictionary *)selfCopy->_diagnosticRecordMap removeAllObjects];
  diagnosticRecordMap = selfCopy->_diagnosticRecordMap;
  selfCopy->_diagnosticRecordMap = 0;

  [(HMDeviceManager *)selfCopy _unregisterFromHearingAccessibilitySettingsUpdate];
  [(HMDeviceManager *)selfCopy _unregisterFromRegionStatusUpdates];
  [(HMOcclusionNotification *)selfCopy->_occlusionNotification invalidateHearingProtectionOcclusionNotification];
  selfCopy->_activateCalled = 0;

  [(HMDeviceManager *)selfCopy _unregisterFromInternalDistributedNotification];
}

- (void)_modifyDeviceConfiguration:(id)configuration identifier:(id)identifier completion:(id)completion
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:identifierCopy];
  if (v11)
  {
    [(HMDeviceManager *)self _saveCloudRecordForDevice:v11 withConfig:configurationCopy];
    [configurationCopy restoreConfigsFromCloudRecordIfNeeded:v11];
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v35 = [configurationCopy needsUpdateToPersonalAudioForDevice:v11];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __68__HMDeviceManager__modifyDeviceConfiguration_identifier_completion___block_invoke;
    v28[3] = &unk_2796F01F0;
    v33 = v34;
    v28[4] = self;
    v12 = identifierCopy;
    v29 = v12;
    v13 = configurationCopy;
    v30 = v13;
    v14 = v11;
    v31 = v14;
    v32 = completionCopy;
    v15 = MEMORY[0x253095540](v28);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __68__HMDeviceManager__modifyDeviceConfiguration_identifier_completion___block_invoke_2;
    v23 = &unk_2796F0218;
    selfCopy = self;
    v16 = v13;
    v25 = v16;
    v26 = v12;
    v17 = v15;
    v27 = v17;
    [v16 setupConfigsForPPEIfNeeded:v14 completion:&v20];
    v18 = [HMSettingsTelemetry sharedInstance:v20];
    [v18 sendSettingsChanges:v16 record:v14];

    _Block_object_dispose(v34, 8);
  }

  else
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _modifyDeviceConfiguration:identifierCopy identifier:? completion:?];
    }

    v19 = NSErrorF(*MEMORY[0x277CCA590], 4294960534, "missing device record");
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v19);
    }
  }
}

uint64_t __68__HMDeviceManager__modifyDeviceConfiguration_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (!v6)
  {
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      [*(a1 + 32) _updatePersonalAudioConfigForIdentifier:*(a1 + 40)];
    }

    else if (gLogCategory_HMDeviceManager <= 10 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      __68__HMDeviceManager__modifyDeviceConfiguration_identifier_completion___block_invoke_cold_1(a1);
    }
  }

  if ([*(a1 + 48) enableHearingProtection])
  {
    [*(a1 + 32) _setHearingProtectionEnabledForDevice:*(a1 + 56) withConfig:*(a1 + 48)];
  }

  v3 = *(a1 + 64);
  v4 = v6;
  if (v3)
  {
    v3 = (*(v3 + 16))(v3, v6);
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)_continueDeviceConfigurationFlow:(id)flow identifier:(id)identifier reply:(id)reply
{
  flowCopy = flow;
  identifierCopy = identifier;
  replyCopy = reply;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__HMDeviceManager__continueDeviceConfigurationFlow_identifier_reply___block_invoke;
  v14[3] = &unk_2796F0268;
  v14[4] = self;
  v15 = flowCopy;
  v16 = identifierCopy;
  v17 = replyCopy;
  v11 = identifierCopy;
  v12 = flowCopy;
  v13 = replyCopy;
  [(HMDeviceManager *)self _sendConfigOverDeviceManager:v12 identifier:v11 completion:v14];
}

void __69__HMDeviceManager__continueDeviceConfigurationFlow_identifier_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 56) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__HMDeviceManager__continueDeviceConfigurationFlow_identifier_reply___block_invoke_2;
    v11[3] = &unk_2796F0268;
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v10 = *(a1 + 32);
    v8 = *(&v10 + 1);
    *&v9 = *(a1 + 48);
    *(&v9 + 1) = v7;
    v12 = v10;
    v13 = v9;
    [v4 _sendPMEConfigOverAAController:v5 identifier:v6 completion:v11];
  }
}

void __69__HMDeviceManager__continueDeviceConfigurationFlow_identifier_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    v10 = v2;
    v11 = v3;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69__HMDeviceManager__continueDeviceConfigurationFlow_identifier_reply___block_invoke_3;
    v8[3] = &unk_2796F0240;
    v7 = *(a1 + 48);
    v9 = *(a1 + 56);
    [v5 _throttleUpdatesForHearingAidConfig:v6 identifier:v7 completion:v8];
  }
}

- (void)_triggerDiagnosticCheckForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = [(NSMutableDictionary *)self->_deviceAHPSConnectionManagerMap objectForKeyedSubscript:identifierCopy];
  if (!v7)
  {
    v8 = NSErrorF(*MEMORY[0x277CCA590], 4294960543, "device %@ not connected over AHPS", identifierCopy);
    if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _triggerDiagnosticCheckForIdentifier:identifierCopy completion:?];
      if (!completionCopy)
      {
        goto LABEL_7;
      }
    }

    else if (!completionCopy)
    {
LABEL_7:

      goto LABEL_8;
    }

    completionCopy[2](completionCopy, v8);
    goto LABEL_7;
  }

LABEL_8:
  [v7 triggerOnDemandDiagnosticCheckWithCompletionHandler:completionCopy];
}

- (void)_submitHearingFeaturesMetricFor:(id)for
{
  v34[16] = *MEMORY[0x277D85DE8];
  forCopy = for;
  if ([forCopy hearingAssistCapability] == 1)
  {
    v33[0] = @"Amplification";
    amplification = [forCopy amplification];
    v32 = amplification;
    if (amplification)
    {
      v5 = amplification;
    }

    else
    {
      v5 = &unk_286439CF0;
    }

    v34[0] = v5;
    v33[1] = @"Balance";
    balance = [forCopy balance];
    v31 = balance;
    if (balance)
    {
      v7 = balance;
    }

    else
    {
      v7 = &unk_286439CF0;
    }

    v34[1] = v7;
    v33[2] = @"ConversationBoost";
    beamFormer = [forCopy beamFormer];
    v30 = beamFormer;
    if (beamFormer)
    {
      v9 = beamFormer;
    }

    else
    {
      v9 = &unk_286439CF0;
    }

    v34[2] = v9;
    v33[3] = @"HearingAidEnabled";
    v29 = [MEMORY[0x277CCABB0] numberWithChar:{objc_msgSend(forCopy, "hearingAidEnabled")}];
    v34[3] = v29;
    v33[4] = @"HearingAidEnrolled";
    v28 = [MEMORY[0x277CCABB0] numberWithChar:{objc_msgSend(forCopy, "hearingAssistEnrolled")}];
    v34[4] = v28;
    v33[5] = @"HearingAidRegionSupport";
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(forCopy, "hearingAssistRegionStatus")}];
    v34[5] = v27;
    v33[6] = @"HearingAssistEnabled";
    v26 = [MEMORY[0x277CCABB0] numberWithChar:{objc_msgSend(forCopy, "hearingAssistEnabled")}];
    v34[6] = v26;
    v33[7] = @"HearingProtectionLSR";
    v25 = [MEMORY[0x277CCABB0] numberWithChar:{objc_msgSend(forCopy, "hearingProtectionEnabled")}];
    v34[7] = v25;
    v33[8] = @"HearingProtectionRegionSupport";
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(forCopy, "hearingProtectionRegionStatus")}];
    v34[8] = v24;
    v33[9] = @"HearingTestRegionSupport";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(forCopy, "hearingTestRegionStatus")}];
    v34[9] = v10;
    v33[10] = @"MediaAssistEnabled";
    v11 = [MEMORY[0x277CCABB0] numberWithChar:{objc_msgSend(forCopy, "mediaAssistEnabled")}];
    v34[10] = v11;
    v33[11] = @"OffListeningMode";
    v12 = [MEMORY[0x277CCABB0] numberWithChar:{objc_msgSend(forCopy, "listeningModeOffAllowed")}];
    v34[11] = v12;
    v33[12] = @"OwnVoiceSlider";
    ownVoiceLevelGain = [forCopy ownVoiceLevelGain];
    v14 = ownVoiceLevelGain;
    if (ownVoiceLevelGain)
    {
      v15 = ownVoiceLevelGain;
    }

    else
    {
      v15 = &unk_286439CF0;
    }

    v34[12] = v15;
    v33[13] = @"PID";
    v16 = MEMORY[0x277CCABB0];
    aaDevice = [forCopy aaDevice];
    v18 = [v16 numberWithUnsignedInt:{objc_msgSend(aaDevice, "productID")}];
    v34[13] = v18;
    v33[14] = @"SwipeControl";
    v19 = [MEMORY[0x277CCABB0] numberWithChar:{objc_msgSend(forCopy, "swipeGainEnabled")}];
    v34[14] = v19;
    v33[15] = @"Tone";
    tone = [forCopy tone];
    v21 = tone;
    if (tone)
    {
      v22 = tone;
    }

    else
    {
      v22 = &unk_286439CF0;
    }

    v34[15] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:16];
    CUMetricsLog();

    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _submitHearingFeaturesMetricFor:forCopy];
    }
  }

  else if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceManager _submitHearingFeaturesMetricFor:forCopy];
  }
}

- (void)_accessoryDiscoveryEnsureStarted
{
  v3 = self->_deviceManager;
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CEF810]);
    deviceManager = self->_deviceManager;
    self->_deviceManager = v4;

    [(AADeviceManager *)v4 setInternalServicesDaemon:self->_internalAAServicesDaemon];
    [(AADeviceManager *)v4 setDispatchQueue:self->_dispatchQueue];
    [(AADeviceManager *)v4 setInterruptionHandler:&__block_literal_global_360];
    [(AADeviceManager *)v4 setInvalidationHandler:&__block_literal_global_363];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_3;
    v9[3] = &unk_2796F0290;
    v9[4] = self;
    [(AADeviceManager *)v4 setDeviceFoundHandler:v9];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_4;
    v8[3] = &unk_2796F0290;
    v8[4] = self;
    [(AADeviceManager *)v4 setDeviceLostHandler:v8];
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [(HMDeviceManager *)v4 _accessoryDiscoveryEnsureStarted];
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_5;
    v6[3] = &unk_2796F02B8;
    v6[4] = self;
    v3 = v4;
    v7 = v3;
    [(AADeviceManager *)v3 activateWithCompletion:v6];
  }
}

uint64_t __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_HMDeviceManager <= 30)
  {
    if (gLogCategory_HMDeviceManager != -1)
    {
      return __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_cold_1(result, a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_cold_1(result, a2, a3);
    }
  }

  return result;
}

uint64_t __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_HMDeviceManager <= 30)
  {
    if (gLogCategory_HMDeviceManager != -1)
    {
      return __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_2_cold_1(result, a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_2_cold_1(result, a2, a3);
    }
  }

  return result;
}

void __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (gLogCategory_HMDeviceManager <= 30)
  {
    if (gLogCategory_HMDeviceManager != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_4_cold_1(v3);
      v3 = v5;
    }
  }

  [*(a1 + 32) _deviceLost:v3];
}

void __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_5(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_5_cold_1(v5);
    }

    [*(*(a1 + 32) + 40) invalidate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    __51__HMDeviceManager__accessoryDiscoveryEnsureStarted__block_invoke_5_cold_2(a1);
  }
}

- (void)_accessoryDiscoveryEnsureStopped
{
  deviceManager = self->_deviceManager;
  if (deviceManager)
  {
    [(AADeviceManager *)deviceManager invalidate];
    v4 = self->_deviceManager;
    self->_deviceManager = 0;
  }
}

- (void)_deviceFound:(id)found
{
  foundCopy = found;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [foundCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:identifier];
    if (v5)
    {
      v6 = v5;
      if ([v5 updateWithAADevice:foundCopy])
      {
        [v6 getSafetyInformation:{objc_msgSend(foundCopy, "productID")}];
        [(HMDeviceManager *)self _performActionsOnRecordChange:v6];
      }
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x277D12B88]);
      deviceRecordMap = self->_deviceRecordMap;
      if (!deviceRecordMap)
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v9 = self->_deviceRecordMap;
        self->_deviceRecordMap = v8;

        deviceRecordMap = self->_deviceRecordMap;
      }

      [(NSMutableDictionary *)deviceRecordMap setObject:v6 forKeyedSubscript:identifier];
      [v6 updateWithAADevice:foundCopy];
      [(HMDeviceManager *)self _retrieveHearingProtectionSettingsForDevice:v6];
      [(HMDeviceManager *)self _loadCloudRecordForDevice:v6];
      [v6 getSafetyInformation:{objc_msgSend(foundCopy, "productID")}];
      [(HMDeviceManager *)self _activateAHPSConnectionForDevice:v6];
      [(HMDeviceManager *)self _performActionsOnRecordChange:v6];
      if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceManager _deviceFound:foundCopy];
      }
    }
  }

  else
  {
    [HMDeviceManager _deviceFound:];
  }
}

uint64_t __41__HMDeviceManager__sendHAv2RegionStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (gLogCategory_HMDeviceManager <= 90)
    {
      v6 = v3;
      if (gLogCategory_HMDeviceManager != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
      {
        __41__HMDeviceManager__sendHAv2RegionStatus___block_invoke_cold_1(a1);
        v4 = v6;
      }
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)_performActionsOnRecordChange:(id)change
{
  changeCopy = change;
  [(HMDeviceManager *)self _deviceUpdateRegionStatus:changeCopy];
  [(HMDeviceManager *)self _deviceSetOffListeningModeAllowedIfNeeded:changeCopy];
  if ([changeCopy hearingAssistEnabled] == 1)
  {
    bluetoothUUID = [changeCopy bluetoothUUID];
    [(HMDeviceManager *)self _updatePersonalAudioConfigForIdentifier:bluetoothUUID];
  }

  [(HMDeviceManager *)self _triggerHearingProtectionOcclusionNotificationIfNeeded:changeCopy];
  if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceManager _performActionsOnRecordChange:changeCopy];
  }

  v5 = +[HMServiceDaemon sharedHMServiceDaemon];
  [v5 reportDeviceRecordChange:changeCopy];

  [(HMDeviceManager *)self _sendHAv2RegionStatus:changeCopy];
}

- (void)_deviceLost:(id)lost
{
  lostCopy = lost;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [lostCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:identifier];
    if (v5)
    {
      if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceManager _deviceLost:v5];
      }

      [(HMDeviceManager *)self _invalidateAHPSConnectionForDevice:v5];
      [(NSMutableDictionary *)self->_deviceRecordMap setObject:0 forKeyedSubscript:identifier];
      v6 = +[HMServiceDaemon sharedHMServiceDaemon];
      [v6 reportDeviceRecordLost:v5];

      [(NSMutableDictionary *)self->_diagnosticRecordMap setObject:0 forKeyedSubscript:identifier];
      v7 = NSErrorF(*MEMORY[0x277CCA590], 4294960534, "Unable to fetch occlusion result, diagnostic record not found for identifier: %@", identifier);
      [v5 invokePendingOcclusionCompletionsWithError:v7];
      [(HMDeviceManager *)self _submitHearingFeaturesMetricFor:v5];
    }
  }

  else
  {
    [HMDeviceManager _deviceLost:];
  }
}

- (void)_sendConfigOverDeviceManager:(id)manager identifier:(id)identifier completion:(id)completion
{
  managerCopy = manager;
  identifierCopy = identifier;
  completionCopy = completion;
  v13 = completionCopy;
  if (self->_deviceManager)
  {
    v14 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:identifierCopy];
    if (v14)
    {
      if (([managerCopy needsUpdateToDeviceManagerForDevice:v14] & 1) == 0)
      {
        if (gLogCategory_HMDeviceManager <= 10 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
        {
          [HMDeviceManager _sendConfigOverDeviceManager:managerCopy identifier:? completion:?];
          if (!v13)
          {
            goto LABEL_28;
          }
        }

        else if (!v13)
        {
          goto LABEL_28;
        }

        v13[2](v13, 0);
        goto LABEL_28;
      }

      v15 = objc_alloc_init(MEMORY[0x277CEF808]);
      [v15 setEnableHearingAidGainSwipe:{objc_msgSend(managerCopy, "enableSwipeGain")}];
      [v15 setEnableHearingAssist:{objc_msgSend(managerCopy, "enableHearingAssist")}];
      [v15 setHearingAidToggle:{objc_msgSend(managerCopy, "enableHearingAid")}];
      [v15 setHearingAidEnrolled:{objc_msgSend(managerCopy, "enrollHearingAssist")}];
      if (_os_feature_enabled_impl())
      {
        [v15 setEnableHearingProtectionPPE:{objc_msgSend(managerCopy, "enableHearingProtectionPPE")}];
      }

      selectedAudiogram = [managerCopy selectedAudiogram];

      if (selectedAudiogram)
      {
        selectedAudiogram2 = [managerCopy selectedAudiogram];
        startDate = [selectedAudiogram2 startDate];
        [v15 setAudiogramEnrolledTimestamp:startDate];
      }

      [v15 setListeningModeOffAllowed:{objc_msgSend(managerCopy, "allowListeningModeOff")}];
      if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceManager _sendConfigOverDeviceManager:v15 identifier:? completion:?];
      }

      deviceManager = self->_deviceManager;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __70__HMDeviceManager__sendConfigOverDeviceManager_identifier_completion___block_invoke;
      v22[3] = &unk_2796F02E0;
      v23 = v15;
      v24 = identifierCopy;
      v25 = v13;
      v20 = v15;
      [(AADeviceManager *)deviceManager sendDeviceConfig:v20 identifier:v24 completion:v22];
    }

    else
    {
      if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceManager _sendConfigOverDeviceManager:identifierCopy identifier:? completion:?];
      }

      v21 = NSErrorF(*MEMORY[0x277CCA590], 4294960534, "missing device record");
      if (v13)
      {
        (v13)[2](v13, v21);
      }
    }
  }

  else
  {
    if (gLogCategory_HMDeviceManager <= 90)
    {
      if (gLogCategory_HMDeviceManager != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
      {
        [HMDeviceManager _sendConfigOverDeviceManager:completionCopy identifier:v11 completion:v12];
      }
    }

    v14 = NSErrorF(*MEMORY[0x277CCA590], 4294960534, "AADeviceManager not found");
    if (v13)
    {
      (v13)[2](v13, v14);
    }
  }

LABEL_28:
}

uint64_t __70__HMDeviceManager__sendConfigOverDeviceManager_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    if (gLogCategory_HMDeviceManager <= 90)
    {
      if (gLogCategory_HMDeviceManager != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
      {
        __70__HMDeviceManager__sendConfigOverDeviceManager_identifier_completion___block_invoke_cold_1(a1);
        v3 = v7;
      }
    }
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v7);
    v3 = v7;
  }

  return MEMORY[0x2821F96F8](v5, v3);
}

- (void)_aaControllerEnsureStarted
{
  p_aaController = &self->_aaController;
  v4 = self->_aaController;
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CEF7F8]);
    [v5 setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(p_aaController, v5);
    [v5 setInvalidationHandler:&__block_literal_global_394];
    if (_os_feature_enabled_impl())
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __45__HMDeviceManager__aaControllerEnsureStarted__block_invoke_2;
      v13[3] = &unk_2796F0308;
      v14 = v5;
      selfCopy = self;
      [v14 setPmeConfigMessageHandler:v13];
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__HMDeviceManager__aaControllerEnsureStarted__block_invoke_3;
    v10[3] = &unk_2796F0308;
    v6 = v5;
    v11 = v6;
    selfCopy2 = self;
    [v6 setMultimodalContextMessageHandler:v10];
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [(HMDeviceManager *)v6 _aaControllerEnsureStarted];
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__HMDeviceManager__aaControllerEnsureStarted__block_invoke_4;
    v7[3] = &unk_2796F02B8;
    v4 = v6;
    v8 = v4;
    selfCopy3 = self;
    [(AAController *)v4 activateWithCompletion:v7];
  }
}

uint64_t __45__HMDeviceManager__aaControllerEnsureStarted__block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_HMDeviceManager <= 30)
  {
    if (gLogCategory_HMDeviceManager != -1)
    {
      return __45__HMDeviceManager__aaControllerEnsureStarted__block_invoke_cold_1(result, a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __45__HMDeviceManager__aaControllerEnsureStarted__block_invoke_cold_1(result, a2, a3);
    }
  }

  return result;
}

void __45__HMDeviceManager__aaControllerEnsureStarted__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (*(a1 + 32) == v3[1])
  {
    v6 = a2;
    [v3 _pmeConfigDataReceived:a3 identifier:v6];
    [*(a1 + 40) _updatePersonalAudioConfigForIdentifier:v6];
  }
}

void *__45__HMDeviceManager__aaControllerEnsureStarted__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[1])
  {
    return [result _multimodalContextMessageReceived:a3 identifier:a2];
  }

  return result;
}

uint64_t __45__HMDeviceManager__aaControllerEnsureStarted__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    if (v3)
    {
      v9 = v3;
      if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        __45__HMDeviceManager__aaControllerEnsureStarted__block_invoke_4_cold_1(v9);
      }

      [*(a1 + 32) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 8);
      *(v6 + 8) = 0;

      goto LABEL_7;
    }

    if (gLogCategory_HMDeviceManager <= 30)
    {
      v9 = 0;
      if (gLogCategory_HMDeviceManager != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        v3 = __45__HMDeviceManager__aaControllerEnsureStarted__block_invoke_4_cold_2(v3, v5, v4);
LABEL_7:
        v5 = v9;
      }
    }
  }

  return MEMORY[0x2821F96F8](v3, v5);
}

- (void)_aaControllerEnsureStopped
{
  aaController = self->_aaController;
  if (aaController)
  {
    [(AAController *)aaController invalidate];
    v4 = self->_aaController;
    self->_aaController = 0;
  }
}

- (id)_constructPMEConfigDataBytesForDevice:(id)device fromConfig:(id)config
{
  configCopy = config;
  configDataPME = [device configDataPME];
  v9 = configDataPME;
  LODWORD(v95) = 0;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  if (configDataPME)
  {
    [configDataPME getBytes:&v87 length:132];
  }

  else if (gLogCategory_HMDeviceManager <= 30)
  {
    if (gLogCategory_HMDeviceManager != -1 || (configDataPME = _LogCategory_Initialize(), configDataPME))
    {
      [(HMDeviceManager *)configDataPME _constructPMEConfigDataBytesForDevice:v7 fromConfig:v8];
    }
  }

  LOBYTE(v87) = 2;
  if ([configCopy enablePMEMedia])
  {
    if ([configCopy enablePMEMedia] == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    BYTE3(v87) = v10;
  }

  if ([configCopy enablePMEVoice])
  {
    if ([configCopy enablePMEVoice] == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    BYTE2(v87) = v11;
  }

  if ([configCopy enrollPMEVoice])
  {
    if ([configCopy enrollPMEVoice] == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    BYTE1(v87) = v12;
  }

  mediaLossArrayLeft = [configCopy mediaLossArrayLeft];

  if (mediaLossArrayLeft)
  {
    mediaLossArrayLeft2 = [configCopy mediaLossArrayLeft];
    v15 = [mediaLossArrayLeft2 objectAtIndexedSubscript:0];
    [v15 floatValue];
    DWORD1(v89) = v16;

    v17 = [mediaLossArrayLeft2 objectAtIndexedSubscript:1];
    [v17 floatValue];
    DWORD2(v89) = v18;

    v19 = [mediaLossArrayLeft2 objectAtIndexedSubscript:2];
    [v19 floatValue];
    HIDWORD(v89) = v20;

    v21 = [mediaLossArrayLeft2 objectAtIndexedSubscript:3];
    [v21 floatValue];
    LODWORD(v90) = v22;

    v23 = [mediaLossArrayLeft2 objectAtIndexedSubscript:4];
    [v23 floatValue];
    DWORD1(v90) = v24;

    v25 = [mediaLossArrayLeft2 objectAtIndexedSubscript:5];
    [v25 floatValue];
    DWORD2(v90) = v26;

    v27 = [mediaLossArrayLeft2 objectAtIndexedSubscript:6];
    [v27 floatValue];
    HIDWORD(v90) = v28;

    v29 = [mediaLossArrayLeft2 objectAtIndexedSubscript:7];
    [v29 floatValue];
    LODWORD(v91) = v30;
  }

  mediaLossArrayRight = [configCopy mediaLossArrayRight];

  if (mediaLossArrayRight)
  {
    mediaLossArrayRight2 = [configCopy mediaLossArrayRight];
    v33 = [mediaLossArrayRight2 objectAtIndexedSubscript:0];
    [v33 floatValue];
    DWORD1(v93) = v34;

    v35 = [mediaLossArrayRight2 objectAtIndexedSubscript:1];
    [v35 floatValue];
    DWORD2(v93) = v36;

    v37 = [mediaLossArrayRight2 objectAtIndexedSubscript:2];
    [v37 floatValue];
    HIDWORD(v93) = v38;

    v39 = [mediaLossArrayRight2 objectAtIndexedSubscript:3];
    [v39 floatValue];
    LODWORD(v94) = v40;

    v41 = [mediaLossArrayRight2 objectAtIndexedSubscript:4];
    [v41 floatValue];
    DWORD1(v94) = v42;

    v43 = [mediaLossArrayRight2 objectAtIndexedSubscript:5];
    [v43 floatValue];
    DWORD2(v94) = v44;

    v45 = [mediaLossArrayRight2 objectAtIndexedSubscript:6];
    [v45 floatValue];
    HIDWORD(v94) = v46;

    v47 = [mediaLossArrayRight2 objectAtIndexedSubscript:7];
    [v47 floatValue];
    LODWORD(v95) = v48;
  }

  voiceLossArrayLeft = [configCopy voiceLossArrayLeft];

  if (voiceLossArrayLeft)
  {
    voiceLossArrayLeft2 = [configCopy voiceLossArrayLeft];
    v51 = [voiceLossArrayLeft2 objectAtIndexedSubscript:0];
    [v51 floatValue];
    DWORD1(v87) = v52;

    v53 = [voiceLossArrayLeft2 objectAtIndexedSubscript:1];
    [v53 floatValue];
    DWORD2(v87) = v54;

    v55 = [voiceLossArrayLeft2 objectAtIndexedSubscript:2];
    [v55 floatValue];
    HIDWORD(v87) = v56;

    v57 = [voiceLossArrayLeft2 objectAtIndexedSubscript:3];
    [v57 floatValue];
    LODWORD(v88) = v58;

    v59 = [voiceLossArrayLeft2 objectAtIndexedSubscript:4];
    [v59 floatValue];
    DWORD1(v88) = v60;

    v61 = [voiceLossArrayLeft2 objectAtIndexedSubscript:5];
    [v61 floatValue];
    DWORD2(v88) = v62;

    v63 = [voiceLossArrayLeft2 objectAtIndexedSubscript:6];
    [v63 floatValue];
    HIDWORD(v88) = v64;

    v65 = [voiceLossArrayLeft2 objectAtIndexedSubscript:7];
    [v65 floatValue];
    LODWORD(v89) = v66;
  }

  voiceLossArrayRight = [configCopy voiceLossArrayRight];

  if (voiceLossArrayRight)
  {
    voiceLossArrayRight2 = [configCopy voiceLossArrayRight];
    v69 = [voiceLossArrayRight2 objectAtIndexedSubscript:0];
    [v69 floatValue];
    DWORD1(v91) = v70;

    v71 = [voiceLossArrayRight2 objectAtIndexedSubscript:1];
    [v71 floatValue];
    DWORD2(v91) = v72;

    v73 = [voiceLossArrayRight2 objectAtIndexedSubscript:2];
    [v73 floatValue];
    HIDWORD(v91) = v74;

    v75 = [voiceLossArrayRight2 objectAtIndexedSubscript:3];
    [v75 floatValue];
    LODWORD(v92) = v76;

    v77 = [voiceLossArrayRight2 objectAtIndexedSubscript:4];
    [v77 floatValue];
    DWORD1(v92) = v78;

    v79 = [voiceLossArrayRight2 objectAtIndexedSubscript:5];
    [v79 floatValue];
    DWORD2(v92) = v80;

    v81 = [voiceLossArrayRight2 objectAtIndexedSubscript:6];
    [v81 floatValue];
    HIDWORD(v92) = v82;

    v83 = [voiceLossArrayRight2 objectAtIndexedSubscript:7];
    [v83 floatValue];
    LODWORD(v93) = v84;
  }

  v85 = [MEMORY[0x277CBEA90] dataWithBytes:&v87 length:132];

  return v85;
}

- (void)_pmeConfigDataReceived:(id)received identifier:(id)identifier
{
  receivedCopy = received;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:identifierCopy];
  v8 = v7;
  if (v7)
  {
    if ([v7 updateWithPMEConfigData:receivedCopy])
    {
      if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceManager _pmeConfigDataReceived:receivedCopy identifier:?];
      }

      v9 = +[HMServiceDaemon sharedHMServiceDaemon];
      [v9 reportDeviceRecordChange:v8];
    }
  }

  else if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceManager _pmeConfigDataReceived:identifierCopy identifier:?];
  }
}

- (void)_sendPMEConfigOverAAController:(id)controller identifier:(id)identifier completion:(id)completion
{
  controllerCopy = controller;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = _os_feature_enabled_impl();
  if (v11)
  {
    v14 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:identifierCopy];
    if (!v14)
    {
      if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _sendPMEConfigOverAAController:identifier:completion:]", 90, "### Unable to update PME config: %@, device record not found for identifier: %@", controllerCopy, identifierCopy);
      }

      v17 = NSErrorF(*MEMORY[0x277CCA590], 4294960534, "Unable to update PME config, device record not found for identifier: %@", identifierCopy);
      if (completionCopy)
      {
        completionCopy[2](completionCopy, v17);
      }

      goto LABEL_21;
    }

    if ([controllerCopy needsUpdateToPMEConfigurationForDevice:v14])
    {
      [(HMDeviceManager *)self _aaControllerEnsureStarted];
      v15 = [(HMDeviceManager *)self _constructPMEConfigDataBytesForDevice:v14 fromConfig:controllerCopy];
      aaController = self->_aaController;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __72__HMDeviceManager__sendPMEConfigOverAAController_identifier_completion___block_invoke;
      v18[3] = &unk_2796F0330;
      v19 = v15;
      v20 = identifierCopy;
      selfCopy = self;
      v22 = completionCopy;
      v17 = v15;
      [(AAController *)aaController sendPMEConfigData:v17 destinationIdentifier:v20 completionHandler:v18];

LABEL_21:
      goto LABEL_22;
    }

    if (gLogCategory_HMDeviceManager <= 10 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _sendPMEConfigOverAAController:controllerCopy identifier:? completion:?];
      if (!completionCopy)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    if (completionCopy)
    {
LABEL_17:
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    if (gLogCategory_HMDeviceManager <= 90)
    {
      if (gLogCategory_HMDeviceManager != -1 || (v11 = _LogCategory_Initialize(), v11))
      {
        [HMDeviceManager _sendPMEConfigOverAAController:v11 identifier:v12 completion:v13];
      }
    }

    v14 = NSErrorF(*MEMORY[0x277CCA590], 4294960534, "unable to send config to PA, feature flag disabled");
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v14);
    }
  }

LABEL_22:
}

uint64_t __72__HMDeviceManager__sendPMEConfigOverAAController_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (!v3)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      __72__HMDeviceManager__sendPMEConfigOverAAController_identifier_completion___block_invoke_cold_2(a1);
    }

    [*(a1 + 48) _pmeConfigDataReceived:*(a1 + 32) identifier:*(a1 + 40)];
    goto LABEL_10;
  }

  v4 = v3;
  if (gLogCategory_HMDeviceManager <= 90)
  {
    if (gLogCategory_HMDeviceManager != -1 || (v5 = _LogCategory_Initialize(), v4 = v8, v5))
    {
      __72__HMDeviceManager__sendPMEConfigOverAAController_identifier_completion___block_invoke_cold_1(a1, v8);
LABEL_10:
      v4 = v8;
    }
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    v6 = (*(v6 + 16))(v6, v8);
    v4 = v8;
  }

  return MEMORY[0x2821F96F8](v6, v4);
}

- (void)_activateAHPSConnectionForDevice:(id)device
{
  deviceCopy = device;
  bluetoothUUID = [deviceCopy bluetoothUUID];
  if (bluetoothUUID)
  {
    v6 = [(NSMutableDictionary *)self->_deviceAHPSConnectionManagerMap objectForKeyedSubscript:bluetoothUUID];
    if (!v6)
    {
      v6 = [[HMDeviceAHPSConnectionManager alloc] initWithQueue:self->_dispatchQueue];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __52__HMDeviceManager__activateAHPSConnectionForDevice___block_invoke;
      v12[3] = &unk_2796F0358;
      v12[4] = self;
      [(HMDeviceAHPSConnectionManager *)v6 setSettingsUpdateHandler:v12];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __52__HMDeviceManager__activateAHPSConnectionForDevice___block_invoke_2;
      v11[3] = &unk_2796F0380;
      v11[4] = self;
      [(HMDeviceAHPSConnectionManager *)v6 setHearingProtectionUpdateHandler:v11];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __52__HMDeviceManager__activateAHPSConnectionForDevice___block_invoke_3;
      v10[3] = &unk_2796F0358;
      v10[4] = self;
      [(HMDeviceAHPSConnectionManager *)v6 setDiagnosticStatusUpdateHandler:v10];
      deviceAHPSConnectionManagerMap = self->_deviceAHPSConnectionManagerMap;
      if (!deviceAHPSConnectionManagerMap)
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v9 = self->_deviceAHPSConnectionManagerMap;
        self->_deviceAHPSConnectionManagerMap = v8;

        deviceAHPSConnectionManagerMap = self->_deviceAHPSConnectionManagerMap;
      }

      [(NSMutableDictionary *)deviceAHPSConnectionManagerMap setObject:v6 forKeyedSubscript:bluetoothUUID];
      [(HMDeviceAHPSConnectionManager *)v6 activateWithBluetoothDeviceUUID:bluetoothUUID];
    }
  }

  else
  {
    [HMDeviceManager _activateAHPSConnectionForDevice:];
  }
}

void __52__HMDeviceManager__activateAHPSConnectionForDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    __52__HMDeviceManager__activateAHPSConnectionForDevice___block_invoke_cold_1(v5, v6);
  }

  [*(a1 + 32) _hearingAidConfigDataReceived:v5 identifier:v6];
  [*(a1 + 32) _updatePersonalAudioConfigForIdentifier:v6];
}

- (void)_invalidateAHPSConnectionForDevice:(id)device
{
  bluetoothUUID = [device bluetoothUUID];
  v4 = [(NSMutableDictionary *)self->_deviceAHPSConnectionManagerMap objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
    [(NSMutableDictionary *)self->_deviceAHPSConnectionManagerMap setObject:0 forKeyedSubscript:bluetoothUUID];
  }
}

- (void)_diagnosticDataReceived:(id)received identifier:(id)identifier isInternal:(BOOL)internal
{
  receivedCopy = received;
  identifierCopy = identifier;
  v9 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:identifierCopy];
  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_diagnosticRecordMap objectForKeyedSubscript:identifierCopy];
    if (!v10)
    {
      if (!self->_diagnosticRecordMap)
      {
        v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
        diagnosticRecordMap = self->_diagnosticRecordMap;
        self->_diagnosticRecordMap = v11;
      }

      v10 = [objc_alloc(MEMORY[0x277D12B80]) initWithHMDeviceRecord:v9 isNewPairing:0];
      [(NSMutableDictionary *)self->_diagnosticRecordMap setObject:v10 forKeyedSubscript:identifierCopy];
    }

    [v10 updateWithDiagnosticData:receivedCopy];
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _diagnosticDataReceived:v10 identifier:? isInternal:?];
    }

    v13 = +[HMServiceDaemon sharedHMServiceDaemon];
    [v13 reportDiagnosticRecordChange:v10];

    cloudRecordLoaded = [v9 cloudRecordLoaded];
    if (cloudRecordLoaded)
    {
      [(HMDeviceManager *)self _checkForOcclusionInDiagnosticRecord:v10 forDevice:v9];
      if (!internal)
      {
        [v10 submitMetricsForOcclusionPolicy];
      }
    }

    else
    {
      [HMDeviceManager _diagnosticDataReceived:cloudRecordLoaded identifier:v15 isInternal:v16];
    }
  }

  else if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceManager _diagnosticDataReceived:identifierCopy identifier:? isInternal:?];
  }
}

- (void)_hearingAidConfigDataReceived:(id)received identifier:(id)identifier
{
  receivedCopy = received;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:identifierCopy];
  v8 = v7;
  if (v7)
  {
    if ([v7 updateWithHearingAidConfigData:receivedCopy])
    {
      if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceManager _hearingAidConfigDataReceived:v8 identifier:?];
      }

      v9 = +[HMServiceDaemon sharedHMServiceDaemon];
      [v9 reportDeviceRecordChange:v8];
    }
  }

  else if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceManager _hearingAidConfigDataReceived:identifierCopy identifier:?];
  }
}

- (void)_hearingProtectionValueReceived:(unsigned __int8)received identifier:(id)identifier
{
  receivedCopy = received;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:identifierCopy];
  v7 = v6;
  if (v6)
  {
    if ([v6 updateWithHearingProtectionValue:receivedCopy])
    {
      if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _hearingProtectionValueReceived:identifier:]", 30, "HMDeviceRecord updated with Hearing Protection enable value: %d, %@", receivedCopy, v7);
      }

      v8 = +[HMServiceDaemon sharedHMServiceDaemon];
      [v8 reportDeviceRecordChange:v7];

      [(HMDeviceManager *)self _deviceSetOffListeningModeAllowedIfNeeded:v7];
    }
  }

  else
  {
    [HMDeviceManager _hearingProtectionValueReceived:identifier:];
  }
}

- (void)_sendHearingAidConfigOverAHPSConnection:(id)connection identifier:(id)identifier completion:(id)completion
{
  connectionCopy = connection;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = [(NSMutableDictionary *)self->_deviceAHPSConnectionManagerMap objectForKeyedSubscript:identifierCopy];
  v14 = v11;
  if (v11)
  {
    v15 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:identifierCopy];
    if (!v15)
    {
      if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _sendHearingAidConfigOverAHPSConnection:identifier:completion:]", 90, "### Unable to update HearingAid config: %@, device record not found for identifier: %@", connectionCopy, identifierCopy);
      }

      v18 = NSErrorF(*MEMORY[0x277CCA590], 4294960534, "Unable to update HearingAid config: %@, device record not found for identifier: %@", connectionCopy, identifierCopy);
      if (completionCopy)
      {
        completionCopy[2](completionCopy, v18);
      }

      goto LABEL_27;
    }

    if ([connectionCopy needsUpdateToAHPSConnectionManagerForDevice:v15])
    {
      v25 = 0;
      memset(v24, 0, sizeof(v24));
      [(HMDeviceManager *)self _populateV1Struct:connectionCopy identifier:identifierCopy deviceRecord:v15 hmSettingsStruct:v24];
      if (LOBYTE(v24[0]) < 2u)
      {
        v16 = 100;
      }

      else
      {
        [(HMDeviceManager *)self _populateV2Struct:connectionCopy identifier:identifierCopy deviceRecord:v15 hmSettingsStruct:v24];
        if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
        {
          [HMDeviceManager _sendHearingAidConfigOverAHPSConnection:v24 identifier:identifierCopy completion:?];
        }

        v16 = 104;
      }

      v17 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:v16];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __81__HMDeviceManager__sendHearingAidConfigOverAHPSConnection_identifier_completion___block_invoke;
      v19[3] = &unk_2796F0330;
      v20 = identifierCopy;
      selfCopy = self;
      v22 = v17;
      v23 = completionCopy;
      v18 = v17;
      [v14 writeHMSettingsConfigsData:v18 completion:v19];

LABEL_27:
      goto LABEL_28;
    }

    if (gLogCategory_HMDeviceManager <= 10 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _sendHearingAidConfigOverAHPSConnection:connectionCopy identifier:? completion:?];
      if (!completionCopy)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    if (completionCopy)
    {
LABEL_21:
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    if (gLogCategory_HMDeviceManager <= 90)
    {
      if (gLogCategory_HMDeviceManager != -1 || (v11 = _LogCategory_Initialize(), v11))
      {
        [HMDeviceManager _sendHearingAidConfigOverAHPSConnection:v11 identifier:v12 completion:v13];
      }
    }

    v15 = NSErrorF(*MEMORY[0x277CCA590], 4294960534, "AHPS connection manager not found");
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v15);
    }
  }

LABEL_28:
}

uint64_t __81__HMDeviceManager__sendHearingAidConfigOverAHPSConnection_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (!v3)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      __81__HMDeviceManager__sendHearingAidConfigOverAHPSConnection_identifier_completion___block_invoke_cold_1(a1);
    }

    [*(a1 + 40) _hearingAidConfigDataReceived:*(a1 + 48) identifier:*(a1 + 32)];
    v3 = 0;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    v4 = (*(v4 + 16))(v4, v6);
    v3 = v6;
  }

  return MEMORY[0x2821F96F8](v4, v3);
}

- (void)_populateV2Struct:(id)struct identifier:(id)identifier deviceRecord:(id)record hmSettingsStruct:(id *)settingsStruct
{
  structCopy = struct;
  identifierCopy = identifier;
  ownVoiceLevelGain = [record ownVoiceLevelGain];
  [ownVoiceLevelGain floatValue];
  v12 = v11;

  ownVoiceLevelGain2 = [structCopy ownVoiceLevelGain];

  if (ownVoiceLevelGain2)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _populateV2Struct:identifier:deviceRecord:hmSettingsStruct:];
    }

    ownVoiceLevelGain3 = [structCopy ownVoiceLevelGain];
    [ownVoiceLevelGain3 floatValue];
    v12 = v15;
  }

  settingsStruct->var1 = v12;
}

- (void)_populateV1Struct:(id)struct identifier:(id)identifier deviceRecord:(id)record hmSettingsStruct:(id *)settingsStruct
{
  structCopy = struct;
  identifierCopy = identifier;
  recordCopy = record;
  configDataHearingAid = [recordCopy configDataHearingAid];
  v12 = configDataHearingAid;
  if (configDataHearingAid)
  {
    [configDataHearingAid getBytes:settingsStruct length:100];
    settingsStruct->var0 = [recordCopy version];
LABEL_3:
    v13 = structCopy;
    goto LABEL_11;
  }

  if ([recordCopy version])
  {
    var0 = [recordCopy version];
  }

  else
  {
    var0 = 1;
  }

  v13 = structCopy;
  settingsStruct->var0 = var0;
  if (gLogCategory_HMDeviceManager <= 30)
  {
    if (gLogCategory_HMDeviceManager != -1)
    {
LABEL_9:
      LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _populateV1Struct:identifier:deviceRecord:hmSettingsStruct:]", 30, "HearingAid config data not found, created new config with version %d", var0);
      goto LABEL_3;
    }

    v15 = _LogCategory_Initialize();
    v13 = structCopy;
    if (v15)
    {
      var0 = settingsStruct->var0;
      goto LABEL_9;
    }
  }

LABEL_11:
  settingsStruct->var1 = 2;
  settingsStruct->var2 = 100;
  selectedAudiogram = [v13 selectedAudiogram];

  if (selectedAudiogram)
  {
    v17 = +[HMHealthKitUtilities sharedInstance];
    selectedAudiogram2 = [structCopy selectedAudiogram];
    [v17 updateHMSettingsStruct:settingsStruct fromAudiogram:selectedAudiogram2];
  }

  if (gLogCategory_HMDeviceManager <= 30)
  {
    v19 = settingsStruct->var3.var0;
    v20 = settingsStruct->var4.var0;
    if (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize())
    {
      [HMDeviceManager _populateV1Struct:v19 identifier:? deviceRecord:? hmSettingsStruct:?];
    }

    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _populateV1Struct:v20 identifier:? deviceRecord:? hmSettingsStruct:?];
    }
  }

  amplification = [recordCopy amplification];
  [amplification floatValue];
  v23 = v22;

  amplification2 = [structCopy amplification];

  if (amplification2)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _populateV1Struct:identifier:deviceRecord:hmSettingsStruct:];
    }

    amplification3 = [structCopy amplification];
    [amplification3 floatValue];
    v23 = v26;
  }

  balance = [recordCopy balance];
  [balance floatValue];
  v29 = v28;

  balance2 = [structCopy balance];

  if (balance2)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _populateV1Struct:identifier:deviceRecord:hmSettingsStruct:];
    }

    balance3 = [structCopy balance];
    [balance3 floatValue];
    v29 = v32;
  }

  beamFormer = [recordCopy beamFormer];
  [beamFormer floatValue];
  var10 = v34;

  beamFormer2 = [structCopy beamFormer];

  if (beamFormer2)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _populateV1Struct:identifier:deviceRecord:hmSettingsStruct:];
    }

    beamFormer3 = [structCopy beamFormer];
    [beamFormer3 floatValue];
    var10 = v38;
  }

  noiseSuppression = [recordCopy noiseSuppression];
  [noiseSuppression floatValue];
  var11 = v40;

  noiseSuppression2 = [structCopy noiseSuppression];

  if (noiseSuppression2)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _populateV1Struct:identifier:deviceRecord:hmSettingsStruct:];
    }

    noiseSuppression3 = [structCopy noiseSuppression];
    [noiseSuppression3 floatValue];
    var11 = v44;
  }

  tone = [recordCopy tone];
  [tone floatValue];
  v47 = v46;

  tone2 = [structCopy tone];

  if (tone2)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _populateV1Struct:identifier:deviceRecord:hmSettingsStruct:];
    }

    tone3 = [structCopy tone];
    [tone3 floatValue];
    v47 = v50;
  }

  v51 = v47 * 2.0 + -1.0;
  v52 = v23 * 2.0 + -1.0;
  v53 = v29 * 2.0 + -1.0;
  if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _populateV1Struct:identifier:deviceRecord:hmSettingsStruct:]", 30, "backend converted tone: %lf, balance: %lf, amplification: %lf", v51, v53, v52);
  }

  v54 = fmax(fmin((v52 - (v53 * 0.5)), 1.5), -1.5);
  var8 = fmax(fmin(((v53 * 0.5) + v52), 1.5), -1.5);
  var9 = fmaxf(fminf(v51, 1.0), -1.0);
  settingsStruct->var3.var8 = v54;
  settingsStruct->var3.var9 = var9;
  settingsStruct->var4.var8 = var8;
  settingsStruct->var4.var9 = var9;
  settingsStruct->var3.var10 = var10;
  settingsStruct->var3.var11 = var11;
  settingsStruct->var4.var10 = var10;
  settingsStruct->var4.var11 = var11;
  if (gLogCategory_HMDeviceManager <= 30)
  {
    if (gLogCategory_HMDeviceManager != -1)
    {
LABEL_50:
      LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _populateV1Struct:identifier:deviceRecord:hmSettingsStruct:]", 30, "sending settings to buds: %@ - version: %d, leftGain: %lf, rightGain: %lf, tone: %lf, amplification: %lf, balance: %lf, beamFormer: %lf, noiseSuppression: %lf", identifierCopy, settingsStruct->var0, v54, var8, var9, v52, v53, var10, var11);
      goto LABEL_52;
    }

    if (_LogCategory_Initialize())
    {
      var8 = settingsStruct->var4.var8;
      v54 = settingsStruct->var3.var8;
      var9 = settingsStruct->var3.var9;
      var10 = settingsStruct->var3.var10;
      var11 = settingsStruct->var3.var11;
      goto LABEL_50;
    }
  }

LABEL_52:
}

- (void)_throttleUpdatesForHearingAidConfig:(id)config identifier:(id)identifier completion:(id)completion
{
  configCopy = config;
  identifierCopy = identifier;
  completionCopy = completion;
  latestConfigsMap = self->_latestConfigsMap;
  if (!latestConfigsMap)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = self->_latestConfigsMap;
    self->_latestConfigsMap = v12;

    latestConfigsMap = self->_latestConfigsMap;
  }

  [(NSMutableDictionary *)latestConfigsMap setObject:configCopy forKeyedSubscript:identifierCopy];
  v14 = [(NSMutableDictionary *)self->_throttleTimerMap objectForKeyedSubscript:identifierCopy];
  if (v14)
  {
    v15 = v14;
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v16 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
    throttleTimerMap = self->_throttleTimerMap;
    if (!throttleTimerMap)
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v19 = self->_throttleTimerMap;
      self->_throttleTimerMap = v18;

      throttleTimerMap = self->_throttleTimerMap;
    }

    [(NSMutableDictionary *)throttleTimerMap setObject:v16 forKeyedSubscript:identifierCopy];
    handler = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __77__HMDeviceManager__throttleUpdatesForHearingAidConfig_identifier_completion___block_invoke;
    v24 = &unk_2796F0218;
    v15 = v16;
    v25 = v15;
    selfCopy = self;
    v20 = identifierCopy;
    v27 = v20;
    v28 = completionCopy;
    dispatch_source_set_event_handler(v15, &handler);
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _throttleUpdatesForHearingAidConfig:identifier:completion:]", 30, "Device identifier: %@, throttling updates for Hearing Aid Config with timer %@", v20, v15, handler, v22, v23, v24, v25, selfCopy, v27);
    }

    CUDispatchTimerSet();
    dispatch_activate(v15);
  }
}

void __77__HMDeviceManager__throttleUpdatesForHearingAidConfig_identifier_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = (a1 + 32);
  v4 = [*(*(a1 + 40) + 88) objectForKeyedSubscript:*(a1 + 48)];

  if (v3 == v4)
  {
    v5 = [*(*(a1 + 40) + 72) objectForKeyedSubscript:*(a1 + 48)];
    v8 = v5;
    if (v5)
    {
      [*(a1 + 40) _sendHearingAidConfigOverAHPSConnection:v5 identifier:*(a1 + 48) completion:*(a1 + 56)];
      v6 = 72;
    }

    else
    {
      if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        __77__HMDeviceManager__throttleUpdatesForHearingAidConfig_identifier_completion___block_invoke_cold_1(v2 + 2, v2);
      }

      v7 = [*(*(a1 + 40) + 88) objectForKeyedSubscript:*(a1 + 48)];
      dispatch_source_cancel(v7);

      v6 = 88;
    }

    [*(*(a1 + 40) + v6) setObject:0 forKeyedSubscript:*(a1 + 48)];
  }
}

- (void)_cloudServicesClientEnsureStarted
{
  p_cloudServicesClient = &self->_cloudServicesClient;
  v4 = self->_cloudServicesClient;
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CEF7F0]);
    [v5 setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(p_cloudServicesClient, v5);
    [v5 setInvalidationHandler:&__block_literal_global_452];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__HMDeviceManager__cloudServicesClientEnsureStarted__block_invoke_2;
    v9[3] = &unk_2796F03A8;
    v9[4] = self;
    [v5 setHmDeviceCloudRecordUpdateHandler:v9];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__HMDeviceManager__cloudServicesClientEnsureStarted__block_invoke_3;
    v6[3] = &unk_2796F02B8;
    v4 = v5;
    v7 = v4;
    selfCopy = self;
    [(AACloudServicesClient *)v4 activateWithCompletion:v6];
  }
}

uint64_t __52__HMDeviceManager__cloudServicesClientEnsureStarted__block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_HMDeviceManager <= 30)
  {
    if (gLogCategory_HMDeviceManager != -1)
    {
      return __52__HMDeviceManager__cloudServicesClientEnsureStarted__block_invoke_cold_1(result, a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __52__HMDeviceManager__cloudServicesClientEnsureStarted__block_invoke_cold_1(result, a2, a3);
    }
  }

  return result;
}

void __52__HMDeviceManager__cloudServicesClientEnsureStarted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (gLogCategory_HMDeviceManager <= 30)
  {
    if (gLogCategory_HMDeviceManager != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      __52__HMDeviceManager__cloudServicesClientEnsureStarted__block_invoke_2_cold_1(v3, v4, v5);
    }
  }

  [*(a1 + 32) _updateCloudRecords:v6];
}

uint64_t __52__HMDeviceManager__cloudServicesClientEnsureStarted__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 24))
  {
    if (v3)
    {
      v9 = v3;
      if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        __52__HMDeviceManager__cloudServicesClientEnsureStarted__block_invoke_3_cold_1(v9);
      }

      [*(a1 + 32) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 24);
      *(v6 + 24) = 0;

      goto LABEL_7;
    }

    if (gLogCategory_HMDeviceManager <= 30)
    {
      v9 = 0;
      if (gLogCategory_HMDeviceManager != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        v3 = __52__HMDeviceManager__cloudServicesClientEnsureStarted__block_invoke_3_cold_2(v3, v5, v4);
LABEL_7:
        v5 = v9;
      }
    }
  }

  return MEMORY[0x2821F96F8](v3, v5);
}

- (void)_cloudServicesClientEnsureStopped
{
  if (self->_cloudServicesClient)
  {
    selfCopy = self;
    if (gLogCategory_HMDeviceManager <= 30)
    {
      if (gLogCategory_HMDeviceManager != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(HMDeviceManager *)self _cloudServicesClientEnsureStopped];
      }
    }

    [(AACloudServicesClient *)selfCopy->_cloudServicesClient invalidate];
    cloudServicesClient = selfCopy->_cloudServicesClient;
    selfCopy->_cloudServicesClient = 0;
  }
}

- (void)_saveCloudRecordForDevice:(id)device withConfig:(id)config
{
  deviceCopy = device;
  configCopy = config;
  cloudRecord = [deviceCopy cloudRecord];
  if (!cloudRecord)
  {
    v9 = objc_alloc(MEMORY[0x277CEF830]);
    bluetoothAddress = [deviceCopy bluetoothAddress];
    cloudRecord = [v9 initWithBluetoothAddress:bluetoothAddress];

    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _saveCloudRecordForDevice:configCopy withConfig:?];
    }
  }

  enableMediaAssist = [configCopy enableMediaAssist];
  v12 = enableMediaAssist != 0;
  if (enableMediaAssist)
  {
    [cloudRecord setMediaAssistEnabled:{objc_msgSend(configCopy, "enableMediaAssist")}];
    if ([configCopy enableMediaAssist] == 2)
    {
      [cloudRecord setPmeMediaEnabled:{objc_msgSend(deviceCopy, "pmeMediaEnabled")}];
      [cloudRecord setPmeVoiceEnabled:{objc_msgSend(deviceCopy, "pmeVoiceEnabled")}];
    }
  }

  if ([configCopy enableHearingAid] == 2)
  {
    [cloudRecord setSwipeGainEnabled:{objc_msgSend(deviceCopy, "swipeGainEnabled")}];
    v12 = 1;
  }

  hearingAssistRegionStatus = [deviceCopy hearingAssistRegionStatus];
  if (hearingAssistRegionStatus != [cloudRecord haRegionStatus])
  {
    [cloudRecord setHaRegionStatus:{objc_msgSend(deviceCopy, "hearingAssistRegionStatus")}];
    v12 = 1;
  }

  hearingAidV2RegionStatus = [deviceCopy hearingAidV2RegionStatus];
  if (hearingAidV2RegionStatus != [cloudRecord haRegionStatusV2])
  {
    [cloudRecord setHaRegionStatusV2:{objc_msgSend(deviceCopy, "hearingAidV2RegionStatus")}];
    v12 = 1;
  }

  hearingProtectionPPERegionStatus = [deviceCopy hearingProtectionPPERegionStatus];
  if (hearingProtectionPPERegionStatus != [cloudRecord hpPPERegionStatus])
  {
    [cloudRecord setHpPPERegionStatus:{objc_msgSend(deviceCopy, "hearingProtectionPPERegionStatus")}];
    v12 = 1;
  }

  hearingProtectionRegionStatus = [deviceCopy hearingProtectionRegionStatus];
  if (hearingProtectionRegionStatus == [cloudRecord hpRegionStatus])
  {
    if (!v12)
    {
      goto LABEL_29;
    }
  }

  else
  {
    [cloudRecord setHpRegionStatus:{objc_msgSend(deviceCopy, "hearingProtectionRegionStatus")}];
  }

  if ([deviceCopy updateWithCloudRecordInfo:cloudRecord])
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _saveCloudRecordForDevice:deviceCopy withConfig:?];
    }

    v17 = +[HMServiceDaemon sharedHMServiceDaemon];
    [v17 reportDeviceRecordChange:deviceCopy];
  }

  if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceManager _saveCloudRecordForDevice:cloudRecord withConfig:?];
  }

  cloudServicesClient = self->_cloudServicesClient;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __56__HMDeviceManager__saveCloudRecordForDevice_withConfig___block_invoke;
  v19[3] = &unk_2796F03D0;
  v20 = cloudRecord;
  [(AACloudServicesClient *)cloudServicesClient modifyHMDeviceCloudRecordInfo:v20 completion:v19];

LABEL_29:
}

uint64_t __56__HMDeviceManager__saveCloudRecordForDevice_withConfig___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (gLogCategory_HMDeviceManager <= 30)
  {
    v6 = v3;
    if (gLogCategory_HMDeviceManager != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      v3 = LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _saveCloudRecordForDevice:withConfig:]_block_invoke", 30, "Saved HMDeviceCloudRecordInfo, with error %@, record: %@", v4, *(a1 + 32));
      v4 = v6;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)_loadCloudRecordForDevice:(id)device
{
  deviceCopy = device;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  cloudServicesClient = self->_cloudServicesClient;
  bluetoothAddress = [deviceCopy bluetoothAddress];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HMDeviceManager__loadCloudRecordForDevice___block_invoke;
  v8[3] = &unk_2796F03F8;
  v7 = deviceCopy;
  selfCopy = self;
  v11 = v12;
  v9 = v7;
  [(AACloudServicesClient *)cloudServicesClient fetchHMDeviceCloudRecordInfoWithAddress:bluetoothAddress completion:v8];

  _Block_object_dispose(v12, 8);
}

void __45__HMDeviceManager__loadCloudRecordForDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  if (v5)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      __45__HMDeviceManager__loadCloudRecordForDevice___block_invoke_cold_1(a1, v5);
    }
  }

  else if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    __45__HMDeviceManager__loadCloudRecordForDevice___block_invoke_cold_2(v18);
  }

  v6 = v18;
  if (!v18)
  {
    v7 = objc_alloc(MEMORY[0x277CEF830]);
    v8 = [*(a1 + 32) bluetoothAddress];
    v19 = [v7 initWithBluetoothAddress:v8];

    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      __45__HMDeviceManager__loadCloudRecordForDevice___block_invoke_cold_3(v19);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    v6 = v19;
  }

  v20 = v6;
  [*(a1 + 32) setCloudRecordLoaded:1];
  if ([*(a1 + 32) updateWithCloudRecordInfo:v20])
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      __45__HMDeviceManager__loadCloudRecordForDevice___block_invoke_cold_4((a1 + 32));
    }

    v9 = +[HMServiceDaemon sharedHMServiceDaemon];
    [v9 reportDeviceRecordChange:*(a1 + 32)];
  }

  v10 = *(*(a1 + 40) + 56);
  v11 = [*(a1 + 32) bluetoothUUID];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (v12)
  {
    [v12 setIsNewPairing:*(*(*(a1 + 48) + 8) + 24)];
    [*(a1 + 40) _checkForOcclusionInDiagnosticRecord:v12 forDevice:*(a1 + 32)];
    [v12 submitMetricsForOcclusionPolicy];
  }

  else
  {
    if (!*(*(a1 + 40) + 56))
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v14 = *(a1 + 40);
      v15 = *(v14 + 56);
      *(v14 + 56) = v13;
    }

    v12 = [objc_alloc(MEMORY[0x277D12B80]) initWithHMDeviceRecord:*(a1 + 32) isNewPairing:*(*(*(a1 + 48) + 8) + 24)];
    v16 = *(*(a1 + 40) + 56);
    v17 = [*(a1 + 32) bluetoothUUID];
    [v16 setObject:v12 forKeyedSubscript:v17];

    [v12 updateFaultCountsFromCloudRecord:v20];
    [*(a1 + 40) _computeOcclusionResultFromFaultCountsInRecord:v12 forDevice:*(a1 + 32)];
  }
}

- (void)_updateCloudRecords:(id)records
{
  recordsCopy = records;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  deviceRecordMap = self->_deviceRecordMap;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__HMDeviceManager__updateCloudRecords___block_invoke;
  v7[3] = &unk_2796F0420;
  v8 = recordsCopy;
  v6 = recordsCopy;
  [(NSMutableDictionary *)deviceRecordMap enumerateKeysAndObjectsUsingBlock:v7];
}

void __39__HMDeviceManager__updateCloudRecords___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = [v9 bluetoothAddress];
        v11 = [v10 lowercaseString];
        v12 = [v4 bluetoothAddress];
        v13 = [v12 lowercaseString];
        v14 = v11;
        v15 = v13;
        v16 = v15;
        if (v14 == v15)
        {

LABEL_11:
          if (![v4 updateWithCloudRecordInfo:v9])
          {
            goto LABEL_18;
          }

          if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
          {
            __39__HMDeviceManager__updateCloudRecords___block_invoke_cold_1(v4);
          }

          v10 = +[HMServiceDaemon sharedHMServiceDaemon];
          [v10 reportDeviceRecordChange:v4];
LABEL_17:

          goto LABEL_18;
        }

        if ((v14 != 0) == (v15 == 0))
        {

          goto LABEL_17;
        }

        v17 = [v14 isEqual:v15];

        if (v17)
        {
          goto LABEL_11;
        }

LABEL_18:
        ++v8;
      }

      while (v6 != v8);
      v18 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      v6 = v18;
    }

    while (v18);
  }
}

- (void)_registerForHearingAccessibilitySettingsUpdate
{
  mEMORY[0x277D12DF8] = [MEMORY[0x277D12DF8] sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__HMDeviceManager__registerForHearingAccessibilitySettingsUpdate__block_invoke;
  v4[3] = &unk_2796EFEF0;
  v4[4] = self;
  [mEMORY[0x277D12DF8] registerUpdateBlock:v4 forRetrieveSelector:sel_activeHearingProtectionEnabled withListener:self];
}

void __65__HMDeviceManager__registerForHearingAccessibilitySettingsUpdate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDeviceManager__registerForHearingAccessibilitySettingsUpdate__block_invoke_2;
  block[3] = &unk_2796EFEF0;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t __65__HMDeviceManager__registerForHearingAccessibilitySettingsUpdate__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__HMDeviceManager__registerForHearingAccessibilitySettingsUpdate__block_invoke_3;
  v4[3] = &unk_2796F0420;
  v4[4] = v1;
  return [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)_unregisterFromHearingAccessibilitySettingsUpdate
{
  mEMORY[0x277D12DF8] = [MEMORY[0x277D12DF8] sharedInstance];
  [mEMORY[0x277D12DF8] registerUpdateBlock:0 forRetrieveSelector:sel_activeHearingProtectionEnabled withListener:self];
}

- (void)_retrieveHearingProtectionSettingsForDevice:(id)device
{
  deviceCopy = device;
  mEMORY[0x277D12DF8] = [MEMORY[0x277D12DF8] sharedInstance];
  bluetoothAddress = [deviceCopy bluetoothAddress];
  v6 = [mEMORY[0x277D12DF8] activeHearingProtectionEnabledForAddress:bluetoothAddress];

  if ([deviceCopy updateWithHearingProtectionValue:v6])
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _retrieveHearingProtectionSettingsForDevice:]", 30, "HMDeviceRecord updated with Hearing Protection settings value: %d, %@", v6, deviceCopy);
    }

    v7 = +[HMServiceDaemon sharedHMServiceDaemon];
    [v7 reportDeviceRecordChange:deviceCopy];

    [(HMDeviceManager *)self _deviceSetOffListeningModeAllowedIfNeeded:deviceCopy];
  }
}

uint64_t __66__HMDeviceManager__checkForOcclusionInDiagnosticRecord_forDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_HMDeviceManager <= 30)
  {
    v5 = v2;
    if (gLogCategory_HMDeviceManager != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __66__HMDeviceManager__checkForOcclusionInDiagnosticRecord_forDevice___block_invoke_cold_1(v3);
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)_computeOcclusionResultFromFaultCountsInRecord:(id)record forDevice:(id)device
{
  recordCopy = record;
  deviceCopy = device;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __76__HMDeviceManager__computeOcclusionResultFromFaultCountsInRecord_forDevice___block_invoke;
  v15 = &unk_2796EFEF0;
  v7 = deviceCopy;
  v16 = v7;
  v8 = MEMORY[0x253095540](&v12);
  if ([recordCopy isOcclusionDetectionSupported])
  {
    if ([recordCopy diagnosticMeasurementsCount])
    {
      computeOcclusionResultForHearingProtection = [recordCopy computeOcclusionResultForHearingProtection];
      computeOcclusionResultForHearingTest = [recordCopy computeOcclusionResultForHearingTest];
      LODWORD(computeOcclusionResultForHearingProtection) = [v7 setOcclusionResult:computeOcclusionResultForHearingProtection forFeatureID:2];
      if ((computeOcclusionResultForHearingProtection | [v7 setOcclusionResult:computeOcclusionResultForHearingTest forFeatureID:3]))
      {
        if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _computeOcclusionResultFromFaultCountsInRecord:forDevice:]", 30, "HMDeviceRecord updated with occlusion result: %@", v7, v12, v13, v14, v15);
        }

        v11 = +[HMServiceDaemon sharedHMServiceDaemon];
        [v11 reportDeviceRecordChange:v7];
      }
    }

    else if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _computeOcclusionResultFromFaultCountsInRecord:forDevice:]", 90, "### compute occlusion result failed, missing record");
    }
  }

  else if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _computeOcclusionResultFromFaultCountsInRecord:forDevice:]", 90, "### compute occlusion result failed, occlusion detection unsupported");
  }

  v8[2](v8);
}

uint64_t __76__HMDeviceManager__computeOcclusionResultFromFaultCountsInRecord_forDevice___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setOcclusionResultReady:1];
  v2 = *(a1 + 32);

  return [v2 invokePendingOcclusionCompletionsWithError:0];
}

- (void)fetchOcclusionResultForDeviceIdentifier:(id)identifier featureID:(int)d completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__HMDeviceManager_fetchOcclusionResultForDeviceIdentifier_featureID_completion___block_invoke;
  v13[3] = &unk_2796F0468;
  v13[4] = self;
  v14 = identifierCopy;
  dCopy = d;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = identifierCopy;
  dispatch_async(dispatchQueue, v13);
}

- (void)_fetchOcclusionResultForDeviceIdentifier:(id)identifier featureID:(int)d completion:(id)completion
{
  v6 = *&d;
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    v9 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:identifierCopy];
    v10 = v9;
    if (v9)
    {
      if ([v9 occlusionResultReady])
      {
        v11 = [v10 getOcclusionResultForFeatureID:v6];
        completionCopy[2](completionCopy, v11, 0);
        if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
        {
          [HMDeviceManager _fetchOcclusionResultForDeviceIdentifier:v6 featureID:v11 completion:identifierCopy];
        }

        if (v6 != 3 || !HMOcclusionResultIsOverallPassing())
        {
          goto LABEL_22;
        }

        bluetoothAddress = [v10 bluetoothAddress];
        [(HMDeviceManager *)self _occlusionIndicationShownForDeviceAddress:bluetoothAddress featureID:3 type:5 action:0];
      }

      else
      {
        pendingOcclusionCompletionsMap = [v10 pendingOcclusionCompletionsMap];

        if (!pendingOcclusionCompletionsMap)
        {
          v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v10 setPendingOcclusionCompletionsMap:v14];
        }

        pendingOcclusionCompletionsMap2 = [v10 pendingOcclusionCompletionsMap];
        v16 = [MEMORY[0x277CCABB0] numberWithInt:v6];
        bluetoothAddress = [pendingOcclusionCompletionsMap2 objectForKeyedSubscript:v16];

        if (!bluetoothAddress)
        {
          bluetoothAddress = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        v17 = MEMORY[0x253095540](completionCopy);
        [bluetoothAddress addObject:v17];

        pendingOcclusionCompletionsMap3 = [v10 pendingOcclusionCompletionsMap];
        v19 = [MEMORY[0x277CCABB0] numberWithInt:v6];
        [pendingOcclusionCompletionsMap3 setObject:bluetoothAddress forKeyedSubscript:v19];

        if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
        {
          [HMDeviceManager _fetchOcclusionResultForDeviceIdentifier:completionCopy featureID:identifierCopy completion:?];
        }
      }
    }

    else
    {
      if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        [HMDeviceManager _fetchOcclusionResultForDeviceIdentifier:identifierCopy featureID:? completion:?];
      }

      bluetoothAddress = NSErrorF(*MEMORY[0x277CCA590], 4294960534, "Unable to fetch occlusion result, device record not found for identifier: %@", identifierCopy);
      (completionCopy)[2](completionCopy, 0, bluetoothAddress);
    }

LABEL_22:
    goto LABEL_23;
  }

  [HMDeviceManager _fetchOcclusionResultForDeviceIdentifier:featureID:completion:];
LABEL_23:
}

- (void)occlusionIndicationShownForDeviceAddress:(id)address featureID:(int)d type:(int)type action:(int)action
{
  addressCopy = address;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__HMDeviceManager_occlusionIndicationShownForDeviceAddress_featureID_type_action___block_invoke;
  v13[3] = &unk_2796F0490;
  v13[4] = self;
  v14 = addressCopy;
  dCopy = d;
  typeCopy = type;
  actionCopy = action;
  v12 = addressCopy;
  dispatch_async(dispatchQueue, v13);
}

- (void)_occlusionIndicationShownForDeviceAddress:(id)address featureID:(int)d type:(int)type action:(int)action
{
  v6 = *&action;
  v7 = *&type;
  v8 = *&d;
  addressCopy = address;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  deviceRecordMap = self->_deviceRecordMap;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__HMDeviceManager__occlusionIndicationShownForDeviceAddress_featureID_type_action___block_invoke;
  v18[3] = &unk_2796F04B8;
  v12 = addressCopy;
  v19 = v12;
  v20 = &v21;
  [(NSMutableDictionary *)deviceRecordMap enumerateKeysAndObjectsUsingBlock:v18];
  v13 = v22[5];
  if (v13)
  {
    diagnosticRecordMap = self->_diagnosticRecordMap;
    bluetoothUUID = [v13 bluetoothUUID];
    v16 = [(NSMutableDictionary *)diagnosticRecordMap objectForKeyedSubscript:bluetoothUUID];

    if (v16)
    {
      [v16 occlusionIndicationShownForFeatureID:v8 type:v7 action:v6];
      [(HMDeviceManager *)self _computeOcclusionResultFromFaultCountsInRecord:v16 forDevice:v22[5]];
      if (v8 == 3 && (v7 - 3) <= 1)
      {
        bluetoothUUID2 = [v22[5] bluetoothUUID];
        [(HMDeviceManager *)self _triggerDiagnosticCheckForIdentifier:bluetoothUUID2 completion:0];
      }
    }

    else if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _occlusionIndicationShownForDeviceAddress:featureID:type:action:]", 90, "### Unable to set occlusionIndicationShown, diagnostic record not found for address: %@", v12);
    }
  }

  else if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _occlusionIndicationShownForDeviceAddress:featureID:type:action:]", 90, "### Unable to set occlusionIndicationShown, device record not found for address: %@", v12);
  }

  _Block_object_dispose(&v21, 8);
}

void __83__HMDeviceManager__occlusionIndicationShownForDeviceAddress_featureID_type_action___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v14 = a3;
  v7 = [v14 bluetoothAddress];
  v8 = [v7 lowercaseString];
  v9 = [*(a1 + 32) lowercaseString];
  v10 = v8;
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {

    goto LABEL_6;
  }

  if ((v10 != 0) == (v11 == 0))
  {

    goto LABEL_8;
  }

  v13 = [v10 isEqual:v11];

  if (v13)
  {
LABEL_6:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }

LABEL_8:
}

- (void)_resetFaultCountForDevice:(id)device
{
  deviceCopy = device;
  [deviceCopy setOcclusionResult:0 forFeatureID:2];
  [deviceCopy setOcclusionResult:0 forFeatureID:3];
  diagnosticRecordMap = self->_diagnosticRecordMap;
  bluetoothUUID = [deviceCopy bluetoothUUID];
  v6 = [(NSMutableDictionary *)diagnosticRecordMap objectForKeyedSubscript:bluetoothUUID];

  if (v6)
  {
    [v6 resetFaultCounts];
    getCloudRecordForCurrentFaultCount = [v6 getCloudRecordForCurrentFaultCount];
    if (gLogCategory_HMDeviceManager <= 10 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _resetFaultCountForDevice:getCloudRecordForCurrentFaultCount];
    }

    [deviceCopy updateWithCloudRecordInfo:getCloudRecordForCurrentFaultCount];
    [(AACloudServicesClient *)self->_cloudServicesClient modifyHMDeviceCloudRecordInfo:getCloudRecordForCurrentFaultCount completion:&__block_literal_global_496];
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceManager _resetFaultCountForDevice:deviceCopy];
    }

    v8 = +[HMServiceDaemon sharedHMServiceDaemon];
    [v8 reportDeviceRecordChange:deviceCopy];

    goto LABEL_9;
  }

  if (gLogCategory_HMDeviceManager <= 10 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    getCloudRecordForCurrentFaultCount = [deviceCopy bluetoothUUID];
    LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _resetFaultCountForDevice:]", 10, "Internal: Failed to find diagnostic record for UUID: %@", getCloudRecordForCurrentFaultCount);
LABEL_9:
  }
}

uint64_t __45__HMDeviceManager__resetFaultCountForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_HMDeviceManager <= 30)
  {
    v5 = v2;
    if (gLogCategory_HMDeviceManager != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __45__HMDeviceManager__resetFaultCountForDevice___block_invoke_cold_1(v3);
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

uint64_t __61__HMDeviceManager__deviceSetOffListeningModeAllowedIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (gLogCategory_HMDeviceManager <= 90)
    {
      v6 = v3;
      if (gLogCategory_HMDeviceManager != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
      {
        __61__HMDeviceManager__deviceSetOffListeningModeAllowedIfNeeded___block_invoke_cold_1(a1);
        v4 = v6;
      }
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)_updatePersonalAudioConfigForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _os_feature_enabled_impl();
  if (v5)
  {
    v8 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:identifierCopy];
    v11 = v8;
    if (v8)
    {
      bluetoothAddress = [v8 bluetoothAddress];
      v15 = bluetoothAddress;
      if (bluetoothAddress)
      {
        pmeMediaEnabled = [v11 pmeMediaEnabled];
        if (pmeMediaEnabled && (pmeMediaEnabled = [v11 pmeVoiceEnabled], pmeMediaEnabled))
        {
          v44 = 0;
          v42 = 0u;
          v43 = 0u;
          if ([v11 hearingAssistEnabled] == 1)
          {
            earLossArrayLeft = [v11 earLossArrayLeft];
            v20 = *(&v43 + 1);
            *(&v43 + 1) = earLossArrayLeft;

            earLossArrayRight = [v11 earLossArrayRight];
            v22 = v44;
            v44 = earLossArrayRight;

            earLossArrayLeft2 = [v11 earLossArrayLeft];
            v24 = *(&v42 + 1);
            *(&v42 + 1) = earLossArrayLeft2;

            [v11 earLossArrayRight];
            *&v43 = pmeVoiceLossDataRight = v43;
          }

          else
          {
            pmeMediaLossDataLeft = [v11 pmeMediaLossDataLeft];
            v27 = HMEarLossDataToArray();
            v28 = *(&v43 + 1);
            *(&v43 + 1) = v27;

            pmeMediaLossDataRight = [v11 pmeMediaLossDataRight];
            v30 = HMEarLossDataToArray();
            v31 = v44;
            v44 = v30;

            pmeVoiceLossDataLeft = [v11 pmeVoiceLossDataLeft];
            v33 = HMEarLossDataToArray();
            v34 = *(&v42 + 1);
            *(&v42 + 1) = v33;

            pmeVoiceLossDataRight = [v11 pmeVoiceLossDataRight];
            v35 = HMEarLossDataToArray();
            v36 = v43;
            *&v43 = v35;
          }

          if (*(&v43 + 1) && v44)
          {
            BYTE1(v42) = [v11 pmeMediaEnabled] == 1;
            LOBYTE(v42) = [v11 pmeVoiceEnabled] == 1;
            if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
            {
              v37 = "no";
              if ((BYTE1(v42) | v42))
              {
                v37 = "yes";
              }

              LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _updatePersonalAudioConfigForIdentifier:]", 30, "Personal Audio: setPersonalMediaEnabled: %s", v37);
            }

            mEMORY[0x277D3A1D0] = [MEMORY[0x277D3A1D0] sharedInstance];
            [mEMORY[0x277D3A1D0] setPersonalMediaEnabled:(BYTE1(v42) | v42) & 1 forRouteUID:v15];

            if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
            {
              firstObject = [*(&v43 + 1) firstObject];
              firstObject2 = [v44 firstObject];
              LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _updatePersonalAudioConfigForIdentifier:]", 30, "Personal Audio: updating address: %@, mediaEnable: %d, speechEnable: %d, media leftLoss: %@, media rightLoss: %@", v15, BYTE1(v42), v42, firstObject, firstObject2);
            }

            mEMORY[0x277D3A1D0]2 = [MEMORY[0x277D3A1D0] sharedInstance];
            [mEMORY[0x277D3A1D0]2 updateConfiguration:&v42 forRouteID:v15];
          }

          else if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _updatePersonalAudioConfigForIdentifier:]", 30, "Skipping update to Personal Audio, missing media loss: %s, speech loss: %s", "no", "no");
          }

          __destructor_8_s8_s16_s24_s32(&v42);
        }

        else if (gLogCategory_HMDeviceManager <= 30)
        {
          if (gLogCategory_HMDeviceManager != -1 || (pmeMediaEnabled = _LogCategory_Initialize(), pmeMediaEnabled))
          {
            [(HMDeviceManager *)pmeMediaEnabled _updatePersonalAudioConfigForIdentifier:v17, v18];
          }
        }
      }

      else if (gLogCategory_HMDeviceManager <= 90)
      {
        if (gLogCategory_HMDeviceManager != -1 || (bluetoothAddress = _LogCategory_Initialize(), bluetoothAddress))
        {
          [(HMDeviceManager *)bluetoothAddress _updatePersonalAudioConfigForIdentifier:v13, v14];
        }
      }
    }

    else if (gLogCategory_HMDeviceManager <= 90)
    {
      if (gLogCategory_HMDeviceManager != -1 || (v8 = _LogCategory_Initialize(), v8))
      {
        [(HMDeviceManager *)v8 _updatePersonalAudioConfigForIdentifier:v9, v10];
      }
    }
  }

  else if (gLogCategory_HMDeviceManager <= 90)
  {
    if (gLogCategory_HMDeviceManager != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      [(HMDeviceManager *)v5 _updatePersonalAudioConfigForIdentifier:v6, v7];
    }
  }
}

- (void)_deviceRescindHearingAssist:(id)assist
{
  assistCopy = assist;
  if ([assistCopy hearingAssistEnrolled] == 1)
  {
    v5 = objc_alloc_init(MEMORY[0x277D12B78]);
    [v5 setEnableHearingAssist:2];
    [v5 setEnableMediaAssist:2];
    if ([assistCopy hearingAidEnabled])
    {
      [v5 setEnableHearingAid:2];
      [v5 setEnableSwipeGain:2];
    }

    if ([assistCopy mediaAssistEnabled] == 1)
    {
      [v5 setEnablePMEMedia:2];
      [v5 setEnablePMEVoice:2];
    }

    bluetoothUUID = [assistCopy bluetoothUUID];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__HMDeviceManager__deviceRescindHearingAssist___block_invoke;
    v8[3] = &unk_2796F03D0;
    v9 = v5;
    v7 = v5;
    [(HMDeviceManager *)self _modifyDeviceConfiguration:v7 identifier:bluetoothUUID completion:v8];
  }

  else if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceManager _deviceRescindHearingAssist:assistCopy];
  }
}

uint64_t __47__HMDeviceManager__deviceRescindHearingAssist___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (gLogCategory_HMDeviceManager <= 30)
    {
      v7 = v3;
      if (gLogCategory_HMDeviceManager != -1 || (v3 = _LogCategory_Initialize(), v4 = v7, v3))
      {
        v5 = "Feature rescind, failed to modify device config: %@";
LABEL_13:
        v3 = __47__HMDeviceManager__deviceRescindHearingAssist___block_invoke_cold_1(a1, v5);
        v4 = v7;
      }
    }
  }

  else if (gLogCategory_HMDeviceManager <= 30)
  {
    v7 = 0;
    if (gLogCategory_HMDeviceManager != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
    {
      v5 = "Feature rescinded, modified device config: %@";
      goto LABEL_13;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)_deviceRescindHearingProtectionPPE:(id)e
{
  eCopy = e;
  if ([eCopy hearingProtectionPPEEnabled] == 1)
  {
    v5 = objc_alloc_init(MEMORY[0x277D12B78]);
    [v5 setEnableHearingProtectionPPE:2];
    bluetoothUUID = [eCopy bluetoothUUID];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__HMDeviceManager__deviceRescindHearingProtectionPPE___block_invoke;
    v8[3] = &unk_2796F03D0;
    v9 = v5;
    v7 = v5;
    [(HMDeviceManager *)self _modifyDeviceConfiguration:v7 identifier:bluetoothUUID completion:v8];
  }

  else if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceManager _deviceRescindHearingProtectionPPE:eCopy];
  }
}

uint64_t __54__HMDeviceManager__deviceRescindHearingProtectionPPE___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (gLogCategory_HMDeviceManager <= 30)
    {
      v7 = v3;
      if (gLogCategory_HMDeviceManager != -1 || (v3 = _LogCategory_Initialize(), v4 = v7, v3))
      {
        v5 = "Feature rescind, failed to modify device config: %@";
LABEL_13:
        v3 = __54__HMDeviceManager__deviceRescindHearingProtectionPPE___block_invoke_cold_1(a1, v5);
        v4 = v7;
      }
    }
  }

  else if (gLogCategory_HMDeviceManager <= 30)
  {
    v7 = 0;
    if (gLogCategory_HMDeviceManager != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
    {
      v5 = "Feature rescinded, modified device config: %@";
      goto LABEL_13;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (BOOL)_deviceUpdateRegionStatus:(id)status
{
  statusCopy = status;
  if (gLogCategory_HMDeviceManager <= 10 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceManager _deviceUpdateRegionStatus:statusCopy];
  }

  if (_os_feature_enabled_impl() && (v5 = [statusCopy hearingAssistRegionStatus], +[HMHealthKitUtilities sharedInstance](HMHealthKitUtilities, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "getRegionSupportStatusForFeatureID:", *MEMORY[0x277CCC038]), v6, v5 != v7))
  {
    [statusCopy setHearingAssistRegionStatus:v7];
    if (v7 == 3)
    {
      [(HMDeviceManager *)self _deviceRescindHearingAssist:statusCopy];
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  if (_os_feature_enabled_impl())
  {
    hearingProtectionRegionStatus = [statusCopy hearingProtectionRegionStatus];
    v10 = +[HMHealthKitUtilities sharedInstance];
    v11 = [v10 getRegionSupportStatusForFeatureID:*MEMORY[0x277CCC048]];

    if (hearingProtectionRegionStatus != v11)
    {
      [statusCopy setHearingProtectionRegionStatus:v11];
      v8 = 1;
    }
  }

  if (_os_feature_enabled_impl())
  {
    hearingTestRegionStatus = [statusCopy hearingTestRegionStatus];
    v13 = +[HMHealthKitUtilities sharedInstance];
    v14 = [v13 getRegionSupportStatusForFeatureID:*MEMORY[0x277CCC058]];

    if (hearingTestRegionStatus != v14)
    {
      [statusCopy setHearingTestRegionStatus:v14];
      v8 = 1;
    }
  }

  if (_os_feature_enabled_impl())
  {
    hearingAidV2RegionStatus = [statusCopy hearingAidV2RegionStatus];
    v16 = +[HMHealthKitUtilities sharedInstance];
    v17 = [v16 getRegionSupportStatusForFeatureID:*MEMORY[0x277CCC040]];

    if (hearingAidV2RegionStatus != v17)
    {
      [statusCopy setHearingAidV2RegionStatus:v17];
      v8 = 1;
    }
  }

  if (_os_feature_enabled_impl())
  {
    hearingProtectionPPERegionStatus = [statusCopy hearingProtectionPPERegionStatus];
    v19 = +[HMHealthKitUtilities sharedInstance];
    v20 = [v19 getRegionSupportStatusForFeatureID:*MEMORY[0x277CCC050]];

    if (hearingProtectionPPERegionStatus != v20)
    {
      [statusCopy setHearingProtectionPPERegionStatus:v20];
      if (v20 == 3)
      {
        [(HMDeviceManager *)self _deviceRescindHearingProtectionPPE:statusCopy];
      }

      goto LABEL_25;
    }
  }

  if (v8)
  {
LABEL_25:
    [(HMDeviceManager *)self _saveCloudRecordForDevice:statusCopy withConfig:0];
    v21 = 1;
    goto LABEL_26;
  }

  v21 = 0;
LABEL_26:

  return v21;
}

- (void)_registerForRegionStatusUpdates
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__HMDeviceManager__registerForRegionStatusUpdates__block_invoke;
  v3[3] = &unk_2796EFEF0;
  v3[4] = self;
  v2 = +[HMHealthKitUtilities sharedInstance];
  [v2 setFeatureStatusChangedHandler:v3];
}

uint64_t __50__HMDeviceManager__registerForRegionStatusUpdates__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__HMDeviceManager__registerForRegionStatusUpdates__block_invoke_2;
  v4[3] = &unk_2796F0420;
  v4[4] = v1;
  return [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

void __50__HMDeviceManager__registerForRegionStatusUpdates__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) _deviceUpdateRegionStatus:?])
  {
    v4 = +[HMServiceDaemon sharedHMServiceDaemon];
    [v4 reportDeviceRecordChange:v5];
  }
}

- (void)_unregisterFromRegionStatusUpdates
{
  v2 = +[HMHealthKitUtilities sharedInstance];
  [v2 setFeatureStatusChangedHandler:0];
}

- (void)_distributedNotificationReceived:(id)received
{
  receivedCopy = received;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDeviceManager__distributedNotificationReceived___block_invoke;
  v7[3] = &unk_2796EFEC8;
  v8 = receivedCopy;
  selfCopy = self;
  v6 = receivedCopy;
  dispatch_async(dispatchQueue, v7);
}

void __52__HMDeviceManager__distributedNotificationReceived___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) userInfo];
  v6 = v3;
  if (v3)
  {
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      __52__HMDeviceManager__distributedNotificationReceived___block_invoke_cold_1(v2);
    }

    v7 = [v6 objectForKeyedSubscript:@"msg-identifier"];
    v8 = [v6 objectForKeyedSubscript:@"msg-data"];
    v9 = [v6 objectForKeyedSubscript:@"bt-address"];
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__0;
    v40 = __Block_byref_object_dispose__0;
    v41 = 0;
    v10 = *(*(a1 + 40) + 48);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __52__HMDeviceManager__distributedNotificationReceived___block_invoke_2;
    v33[3] = &unk_2796F04B8;
    v11 = v9;
    v34 = v11;
    v35 = &v36;
    [v10 enumerateKeysAndObjectsUsingBlock:v33];
    if (!v37[5])
    {
      if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _distributedNotificationReceived:]_block_invoke", 90, "Internal: no matching device found for address %@", v11);
      }

      goto LABEL_38;
    }

    v12 = v7;
    v13 = v12;
    if (v12 == @"occlusion-test")
    {
      goto LABEL_9;
    }

    if (!v12)
    {
      goto LABEL_27;
    }

    v14 = [(__CFString *)v12 isEqual:@"occlusion-test"];

    if (v14)
    {
LABEL_9:
      v15 = *(a1 + 40);
      v16 = [v37[5] bluetoothUUID];
      [v15 _diagnosticDataReceived:v8 identifier:v16 isInternal:1];
    }

    v17 = v13;
    v18 = v17;
    if (v17 == @"reset-occlusion-counts")
    {
      goto LABEL_13;
    }

    if (v17)
    {
      v19 = [(__CFString *)v17 isEqual:@"reset-occlusion-counts"];

      if (!v19)
      {
LABEL_14:
        v20 = v18;
        v21 = v20;
        if (v20 == @"override-occlusion-result")
        {
          goto LABEL_17;
        }

        if (v20)
        {
          v22 = [(__CFString *)v20 isEqual:@"override-occlusion-result"];

          if (!v22)
          {
LABEL_33:
            v30 = v21;
            if (v30 == @"override-bud-to-source-context")
            {
LABEL_36:
              v32 = *(a1 + 40);
              v28 = [v37[5] bluetoothUUID];
              [v32 _multimodalContextMessageReceived:v8 identifier:v28];
              goto LABEL_37;
            }

            v28 = v30;
            if (v30)
            {
              v31 = [(__CFString *)v30 isEqual:@"override-bud-to-source-context"];

              if (!v31)
              {
LABEL_38:

                _Block_object_dispose(&v36, 8);
                goto LABEL_39;
              }

              goto LABEL_36;
            }

LABEL_37:

            goto LABEL_38;
          }

LABEL_17:
          v23 = [v6 objectForKeyedSubscript:@"feature-ID"];
          v24 = [v23 intValue];

          v25 = [v6 objectForKeyedSubscript:@"occlusion-result"];
          v26 = [v25 intValue];

          [v37[5] setOcclusionResult:v26 forFeatureID:v24];
          if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _distributedNotificationReceived:]_block_invoke", 30, "HMDeviceRecord updated with occlusion result: %@", v37[5]);
          }

          v29 = +[HMServiceDaemon sharedHMServiceDaemon];
          [v29 reportDeviceRecordChange:v37[5]];

          goto LABEL_33;
        }

LABEL_28:

        v28 = v13;
        goto LABEL_37;
      }

LABEL_13:
      [*(a1 + 40) _resetFaultCountForDevice:v37[5]];
      goto LABEL_14;
    }

LABEL_27:

    v27 = v13;
    goto LABEL_28;
  }

  if (gLogCategory_HMDeviceManager <= 90)
  {
    if (gLogCategory_HMDeviceManager != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      __52__HMDeviceManager__distributedNotificationReceived___block_invoke_cold_2(v3, v4, v5);
    }
  }

LABEL_39:
}

void __52__HMDeviceManager__distributedNotificationReceived___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v14 = a3;
  v7 = [v14 bluetoothAddress];
  v8 = [v7 lowercaseString];
  v9 = [*(a1 + 32) lowercaseString];
  v10 = v8;
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {

    goto LABEL_6;
  }

  if ((v10 != 0) == (v11 == 0))
  {

    goto LABEL_8;
  }

  v13 = [v10 isEqual:v11];

  if (v13)
  {
LABEL_6:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }

LABEL_8:
}

- (void)_registerForInternalDistributedNotification
{
  if (!self->_distributedNotificationObserving)
  {
    v3 = IsAppleInternalBuild();
    if (v3)
    {
      if (gLogCategory_HMDeviceManager <= 30)
      {
        if (gLogCategory_HMDeviceManager != -1 || (v3 = _LogCategory_Initialize(), v3))
        {
          [(HMDeviceManager *)v3 _registerForInternalDistributedNotification];
        }
      }

      defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
      [defaultCenter addObserver:self selector:sel__distributedNotificationReceived_ name:@"com.apple.HearingModeService" object:0];
      self->_distributedNotificationObserving = 1;
    }
  }
}

- (void)_unregisterFromInternalDistributedNotification
{
  if (self->_distributedNotificationObserving)
  {
    selfCopy = self;
    if (gLogCategory_HMDeviceManager <= 30)
    {
      if (gLogCategory_HMDeviceManager != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(HMDeviceManager *)self _unregisterFromInternalDistributedNotification];
      }
    }

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter removeObserver:selfCopy name:@"com.apple.HearingModeService" object:0];
    selfCopy->_distributedNotificationObserving = 0;
  }
}

- (void)_sendHAv2RegionStatus:(id)status
{
  statusCopy = status;
  if (([statusCopy sharedRegionStatus] & 1) == 0 && objc_msgSend(statusCopy, "hearingAidV2Capability") && objc_msgSend(statusCopy, "hearingAidV2RegionStatus"))
  {
    [statusCopy setSharedRegionStatus:1];
    if (_os_feature_enabled_impl())
    {
      if ([statusCopy hearingAidV2Capability] == 1)
      {
        v5 = objc_alloc_init(MEMORY[0x277CEF808]);
        if ([statusCopy hearingAidV2RegionStatus] == 2)
        {
          v6 = 1;
        }

        else
        {
          v6 = 2;
        }

        [v5 setHearingAidV2SourceRegionSupport:v6];
        if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
        {
          bluetoothUUID = [statusCopy bluetoothUUID];
          LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _sendHAv2RegionStatus:]", 30, "AADeviceManager: sending HAv2 region status config %@ to device with identifier: %@", v5, bluetoothUUID);
        }

        deviceManager = self->_deviceManager;
        bluetoothUUID2 = [statusCopy bluetoothUUID];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __41__HMDeviceManager__sendHAv2RegionStatus___block_invoke;
        v12[3] = &unk_2796F02B8;
        v13 = v5;
        v14 = statusCopy;
        v10 = v5;
        [(AADeviceManager *)deviceManager sendDeviceConfig:v10 identifier:bluetoothUUID2 completion:v12];
      }

      else if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        bluetoothUUID3 = [statusCopy bluetoothUUID];
        LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _sendHAv2RegionStatus:]", 90, "HAv2 Capability not supported for %@", bluetoothUUID3);
      }
    }

    else if (gLogCategory_HMDeviceManager <= 90 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _sendHAv2RegionStatus:]", 90, "HAv2 Feature not supported");
    }
  }
}

- (void)_multimodalContextMessageReceived:(id)received identifier:(id)identifier
{
  receivedCopy = received;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([receivedCopy length] >= 3)
  {
    v7 = [(NSMutableDictionary *)self->_deviceRecordMap objectForKeyedSubscript:identifierCopy];
    if (v7)
    {
      if (receivedCopy && (v8 = receivedCopy, v9 = [receivedCopy bytes], *v9 == 2))
      {
        if (v9[1] == 1)
        {
          v10 = v9[2];
          if ([v7 currentNoiseLevel] != v10)
          {
            if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
            {
              bluetoothUUID = [v7 bluetoothUUID];
              currentNoiseLevel = [v7 currentNoiseLevel];
              if (currentNoiseLevel > 2)
              {
                v13 = "?";
              }

              else
              {
                v13 = off_2796F04D8[currentNoiseLevel];
              }

              if (v10 > 2)
              {
                v14 = "?";
              }

              else
              {
                v14 = off_2796F04D8[v10];
              }

              LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _multimodalContextMessageReceived:identifier:]", 30, "HMDeviceRecord UUID %@, SPL level changed: %s --> %s", bluetoothUUID, v13, v14);
            }

            [v7 setCurrentNoiseLevel:v10];
          }

          [(HMDeviceManager *)self _triggerHearingProtectionOcclusionNotificationIfNeeded:v7];
        }

        else if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _multimodalContextMessageReceived:identifier:]", 30, "Multimodal context message dimension: %d, not supported");
        }
      }

      else if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _multimodalContextMessageReceived:identifier:]", 30, "Multimodal context message type: %d, not supported");
      }
    }

    else if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _multimodalContextMessageReceived:identifier:]", 30, "Multimodal context updated for unknown identifier: %@", identifierCopy);
    }
  }
}

- (void)_setHearingProtectionEnabledForDevice:(id)device withConfig:(id)config
{
  deviceCopy = device;
  configCopy = config;
  if ([configCopy enableHearingProtection])
  {
    enableHearingProtection = [configCopy enableHearingProtection];
    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      bluetoothUUID = [deviceCopy bluetoothUUID];
      LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _setHearingProtectionEnabledForDevice:withConfig:]", 30, "HMDeviceRecord UUID %@, set Hearing Protection settings value: %d", bluetoothUUID, enableHearingProtection == 1);
    }

    mEMORY[0x277D12DF8] = [MEMORY[0x277D12DF8] sharedInstance];
    bluetoothAddress = [deviceCopy bluetoothAddress];
    [mEMORY[0x277D12DF8] setActiveHearingProtectionEnabled:enableHearingProtection == 1 forAddress:bluetoothAddress];
  }
}

- (void)_checkForOcclusionInDiagnosticRecord:(id)record forDevice:(id)device
{
  recordCopy = record;
  deviceCopy = device;
  if ([recordCopy isOcclusionDetectionSupported])
  {
    measurementInvalidReason = [recordCopy measurementInvalidReason];
    if (measurementInvalidReason)
    {
      if ([recordCopy isDeviceUsedFor3MonthsOrLess])
      {
        [deviceCopy setOcclusionResult:3 forFeatureID:2];
        [deviceCopy setOcclusionResult:3 forFeatureID:3];
        if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
        {
          bluetoothUUID = [deviceCopy bluetoothUUID];
          LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _checkForOcclusionInDiagnosticRecord:forDevice:]", 30, "HMDeviceRecord with UUID %@ used for <3 months, override occlusion to pass", bluetoothUUID);
        }

        v12 = +[HMServiceDaemon sharedHMServiceDaemon];
        [v12 reportDeviceRecordChange:deviceCopy];
      }

      getOnDemandRetestReason = measurementInvalidReason;
    }

    else
    {
      cloudRecord = [deviceCopy cloudRecord];
      v10 = [recordCopy updateFaultCountsFromCloudRecord:cloudRecord];

      if (v10)
      {
        getCloudRecordForCurrentFaultCount = [recordCopy getCloudRecordForCurrentFaultCount];
        if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _checkForOcclusionInDiagnosticRecord:forDevice:]", 30, "Saving diagnostics data in HMDeviceCloudRecordInfo record: %@", getCloudRecordForCurrentFaultCount);
        }

        [deviceCopy updateWithCloudRecordInfo:getCloudRecordForCurrentFaultCount];
        [(AACloudServicesClient *)self->_cloudServicesClient modifyHMDeviceCloudRecordInfo:getCloudRecordForCurrentFaultCount completion:&__block_literal_global_479];
      }

      [(HMDeviceManager *)self _computeOcclusionResultFromFaultCountsInRecord:recordCopy forDevice:deviceCopy];
      getOnDemandRetestReason = [recordCopy getOnDemandRetestReason];
      if (!getOnDemandRetestReason)
      {
        goto LABEL_22;
      }
    }

    if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
    {
      bluetoothUUID2 = [deviceCopy bluetoothUUID];
      LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _checkForOcclusionInDiagnosticRecord:forDevice:]", 30, "Triggering on-demand diagnostic check for device UUID: %@, with reason: %@", bluetoothUUID2, getOnDemandRetestReason);
    }

    bluetoothUUID3 = [deviceCopy bluetoothUUID];
    [(HMDeviceManager *)self _triggerDiagnosticCheckForIdentifier:bluetoothUUID3 completion:0];

LABEL_22:
  }
}

- (void)_triggerHearingProtectionOcclusionNotificationIfNeeded:(id)needed
{
  neededCopy = needed;
  hearingProtectionOcclusionResult = [neededCopy hearingProtectionOcclusionResult];
  v5 = neededCopy;
  if (!hearingProtectionOcclusionResult)
  {
    goto LABEL_28;
  }

  hearingProtectionOcclusionResult = [neededCopy hearingProtectionCapability];
  v5 = neededCopy;
  if (hearingProtectionOcclusionResult != 1)
  {
    goto LABEL_28;
  }

  hearingProtectionOcclusionResult = [neededCopy hearingProtectionRegionStatus];
  v5 = neededCopy;
  if (hearingProtectionOcclusionResult != 2)
  {
    goto LABEL_28;
  }

  hearingProtectionOcclusionResult = [neededCopy currentNoiseLevel];
  v5 = neededCopy;
  if (hearingProtectionOcclusionResult != 2)
  {
    goto LABEL_28;
  }

  aaDevice = [neededCopy aaDevice];
  if ([aaDevice audioStreamState] == 1)
  {

    v5 = neededCopy;
  }

  else
  {
    aaDevice2 = [neededCopy aaDevice];
    audioStreamState = [aaDevice2 audioStreamState];

    v5 = neededCopy;
    if (audioStreamState)
    {
      goto LABEL_28;
    }
  }

  aaDevice3 = [v5 aaDevice];
  if ([aaDevice3 primaryPlacement] == 1)
  {
    aaDevice4 = [neededCopy aaDevice];
    secondaryPlacement = [aaDevice4 secondaryPlacement];

    v5 = neededCopy;
    if (secondaryPlacement == 1)
    {
      goto LABEL_13;
    }
  }

  else
  {

    v5 = neededCopy;
  }

  aaDevice5 = [v5 aaDevice];
  placementMode = [aaDevice5 placementMode];

  v5 = neededCopy;
  if (placementMode == 1)
  {
    goto LABEL_28;
  }

LABEL_13:
  aaDevice6 = [v5 aaDevice];
  if ([aaDevice6 listeningMode] != 4)
  {
    aaDevice7 = [neededCopy aaDevice];
    if ([aaDevice7 listeningMode] != 3)
    {
      aaDevice8 = [neededCopy aaDevice];
      listeningMode = [aaDevice8 listeningMode];

      v5 = neededCopy;
      if (listeningMode != 2)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }
  }

  v5 = neededCopy;
LABEL_18:
  if ([v5 hearingProtectionOcclusionResult] != 2)
  {
    hearingProtectionOcclusionResult = [neededCopy hearingProtectionOcclusionResult];
    v5 = neededCopy;
    if (hearingProtectionOcclusionResult != 3)
    {
      goto LABEL_28;
    }

    bluetoothAddress = [neededCopy bluetoothAddress];
    [(HMDeviceManager *)self _occlusionIndicationShownForDeviceAddress:bluetoothAddress featureID:2 type:2 action:0];
    goto LABEL_27;
  }

  v18 = +[HMOcclusionNotification sharedInstance];
  occlusionNotification = self->_occlusionNotification;
  self->_occlusionNotification = v18;

  if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _triggerHearingProtectionOcclusionNotificationIfNeeded:]", 30, "shouldShowHearingProtectionOcclusionNotification %d", [(HMOcclusionNotification *)self->_occlusionNotification shouldShowHearingProtectionOcclusionNotification]);
  }

  hearingProtectionOcclusionResult = [(HMOcclusionNotification *)self->_occlusionNotification shouldShowHearingProtectionOcclusionNotification];
  v5 = neededCopy;
  if (hearingProtectionOcclusionResult)
  {
    aaDevice9 = [neededCopy aaDevice];
    coreBluetoothDevice = [aaDevice9 coreBluetoothDevice];
    productID = [coreBluetoothDevice productID];

    v24 = self->_occlusionNotification;
    bluetoothAddress = [neededCopy bluetoothAddress];
    [(HMOcclusionNotification *)v24 showHearingProtectionOcclusionNotification:productID forAddress:bluetoothAddress];
LABEL_27:

    v5 = neededCopy;
  }

LABEL_28:

  MEMORY[0x2821F96F8](hearingProtectionOcclusionResult, v5);
}

- (void)_deviceSetOffListeningModeAllowedIfNeeded:(id)needed
{
  neededCopy = needed;
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    aaDevice = [neededCopy aaDevice];
    if ([aaDevice hideOffListeningModeCapability] == 2 && objc_msgSend(neededCopy, "hearingProtectionEnabled") && !objc_msgSend(aaDevice, "listeningModeOffAllowed"))
    {
      if ([neededCopy hearingProtectionEnabled] == 2)
      {
        v6 = 1;
      }

      else if ([neededCopy hearingProtectionEnabled] == 1)
      {
        v7 = [aaDevice listeningMode] == 1;
        if (([aaDevice listeningModeConfigs] | v7))
        {
          v6 = 1;
        }

        else
        {
          v6 = 2;
        }
      }

      else
      {
        v6 = 0;
      }

      if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
      {
        identifier = [aaDevice identifier];
        v9 = off_2796F0550[v6];
        listeningMode = [aaDevice listeningMode];
        if (listeningMode > 4)
        {
          v11 = "?";
        }

        else
        {
          v11 = off_2796F0568[listeningMode];
        }

        [aaDevice listeningModeConfigs];
        v12 = CUPrintFlags32();
        LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _deviceSetOffListeningModeAllowedIfNeeded:]", 30, "HMDeviceRecord with identifier: %@, set default for AllowListeningMode: %s, LsnM: %s, lsMc: %@", identifier, v9, v11, v12);
      }

      v13 = objc_alloc_init(MEMORY[0x277CEF808]);
      [v13 setListeningModeOffAllowed:v6];
      deviceManager = self->_deviceManager;
      identifier2 = [aaDevice identifier];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __61__HMDeviceManager__deviceSetOffListeningModeAllowedIfNeeded___block_invoke;
      v17[3] = &unk_2796F02B8;
      v18 = v13;
      v19 = aaDevice;
      v16 = v13;
      [(AADeviceManager *)deviceManager sendDeviceConfig:v16 identifier:identifier2 completion:v17];
    }
  }
}

- (void)_submitHearingFeaturesMetricFor:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 bluetoothUUID];
  LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _submitHearingFeaturesMetricFor:]", 30, "Skip sending hearing features snapshot for %@", v1);
}

- (void)_submitHearingFeaturesMetricFor:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 bluetoothUUID];
  LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _submitHearingFeaturesMetricFor:]", 30, "Submitted hearing features snapshot for %@", v1);
}

- (void)_deviceFound:.cold.2()
{
  if (gLogCategory_HMDeviceManager <= 90)
  {
    OUTLINED_FUNCTION_1();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _deviceFound:]", 90, "AudioAccessoryDevice identifier not found, %@", v0);
    }
  }
}

void __41__HMDeviceManager__sendHAv2RegionStatus___block_invoke_cold_1(uint64_t a1)
{
  [*(a1 + 40) bluetoothUUID];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _sendHAv2RegionStatus:]_block_invoke", 90, "### AADeviceManager failed to send HAv2 region status config %@ to device with identifier: %@");
}

- (void)_deviceLost:.cold.2()
{
  if (gLogCategory_HMDeviceManager <= 90)
  {
    OUTLINED_FUNCTION_1();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _deviceLost:]", 90, "AudioAccessoryDevice identifier not found, %@", v0);
    }
  }
}

- (void)_pmeConfigDataReceived:(uint64_t)a1 identifier:.cold.1(uint64_t a1)
{
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _pmeConfigDataReceived:identifier:]", 30, "HMDeviceRecord updated from PME config data: <%@>, %@");
}

void __72__HMDeviceManager__sendPMEConfigOverAAController_identifier_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v3 = CUPrintNSDataHex();
  LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _sendPMEConfigOverAAController:identifier:completion:]_block_invoke", 90, "Write PME Config <%@> failed with error: %@\n", v3, a2);
}

void __72__HMDeviceManager__sendPMEConfigOverAAController_identifier_completion___block_invoke_cold_2(uint64_t a1)
{
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _sendPMEConfigOverAAController:identifier:completion:]_block_invoke", 30, "PME config written: destination %@, data <%@>\n");
}

- (void)_activateAHPSConnectionForDevice:.cold.1()
{
  if (gLogCategory_HMDeviceManager <= 90)
  {
    OUTLINED_FUNCTION_1();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _activateAHPSConnectionForDevice:]", 90, "AudioAccessoryDevice %@ missing identifier", v0);
    }
  }
}

- (void)_diagnosticDataReceived:(uint64_t)a1 identifier:(uint64_t)a2 isInternal:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_HMDeviceManager <= 30 && (gLogCategory_HMDeviceManager != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_0(&gLogCategory_HMDeviceManager, "[HMDeviceManager _diagnosticDataReceived:identifier:isInternal:]", a3, "_diagnosticRecordCheckForOcclusion: missing cloud record");
  }
}

- (void)_hearingProtectionValueReceived:identifier:.cold.1()
{
  if (gLogCategory_HMDeviceManager <= 90)
  {
    OUTLINED_FUNCTION_1();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _hearingProtectionValueReceived:identifier:]", 90, "HP value update for unknown identifier: %@", v0);
    }
  }
}

- (void)_populateV2Struct:identifier:deviceRecord:hmSettingsStruct:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v3 = [v0 ownVoiceLevelGain];
  [v3 floatValue];
  v2 = OUTLINED_FUNCTION_2(v1);
  LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _populateV2Struct:identifier:deviceRecord:hmSettingsStruct:]", 30, "Device identifier: %@, updating ownVoiceLevelGain %f --> %f", v2);
}

- (void)_populateV1Struct:identifier:deviceRecord:hmSettingsStruct:.cold.3()
{
  OUTLINED_FUNCTION_3();
  v3 = [v0 amplification];
  [v3 floatValue];
  v2 = OUTLINED_FUNCTION_2(v1);
  LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _populateV1Struct:identifier:deviceRecord:hmSettingsStruct:]", 30, "Device identifier: %@, updating amplification %f --> %f", v2);
}

- (void)_populateV1Struct:identifier:deviceRecord:hmSettingsStruct:.cold.4()
{
  OUTLINED_FUNCTION_3();
  v3 = [v0 balance];
  [v3 floatValue];
  v2 = OUTLINED_FUNCTION_2(v1);
  LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _populateV1Struct:identifier:deviceRecord:hmSettingsStruct:]", 30, "Device identifier: %@, updating balance %f --> %f", v2);
}

- (void)_populateV1Struct:identifier:deviceRecord:hmSettingsStruct:.cold.5()
{
  OUTLINED_FUNCTION_3();
  v3 = [v0 beamFormer];
  [v3 floatValue];
  v2 = OUTLINED_FUNCTION_2(v1);
  LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _populateV1Struct:identifier:deviceRecord:hmSettingsStruct:]", 30, "Device identifier: %@, updating beamFormer %f --> %f", v2);
}

- (void)_populateV1Struct:identifier:deviceRecord:hmSettingsStruct:.cold.6()
{
  OUTLINED_FUNCTION_3();
  v3 = [v0 noiseSuppression];
  [v3 floatValue];
  v2 = OUTLINED_FUNCTION_2(v1);
  LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _populateV1Struct:identifier:deviceRecord:hmSettingsStruct:]", 30, "Device identifier: %@, updating noiseSuppression %f --> %f", v2);
}

- (void)_populateV1Struct:identifier:deviceRecord:hmSettingsStruct:.cold.7()
{
  OUTLINED_FUNCTION_3();
  v3 = [v0 tone];
  [v3 floatValue];
  v2 = OUTLINED_FUNCTION_2(v1);
  LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _populateV1Struct:identifier:deviceRecord:hmSettingsStruct:]", 30, "Device identifier: %@, updating tone %f --> %f", v2);
}

void __45__HMDeviceManager__loadCloudRecordForDevice___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) bluetoothAddress];
  LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _loadCloudRecordForDevice:]_block_invoke", 30, "HMDeviceCloudRecordInfo not found from persistent storage for address %@, error %@", v3, a2);
}

- (void)_fetchOcclusionResultForDeviceIdentifier:(uint64_t)a1 featureID:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x253095540](a1);
  LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _fetchOcclusionResultForDeviceIdentifier:featureID:completion:]", 30, "caching occlusion result handler %@ for device identifier %@", v3, a2);
}

- (uint64_t)_fetchOcclusionResultForDeviceIdentifier:(unsigned int)a1 featureID:(unsigned int)a2 completion:(uint64_t)a3 .cold.2(unsigned int a1, unsigned int a2, uint64_t a3)
{
  if (a1 > 3)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_2796F04F0[a1];
  }

  if (a2 > 7)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_2796F0510[a2];
  }

  return LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _fetchOcclusionResultForDeviceIdentifier:featureID:completion:]", 30, "fetch occlusion result for UUID: %@, feature ID: %s, result: %s", a3, v3, v4);
}

- (void)_fetchOcclusionResultForDeviceIdentifier:featureID:completion:.cold.4()
{
  if (gLogCategory_HMDeviceManager <= 90)
  {
    OUTLINED_FUNCTION_1();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _fetchOcclusionResultForDeviceIdentifier:featureID:completion:]", 90, "### Unable fetch occlusion result, no completion handler for identifier: %@", v0);
    }
  }
}

void __61__HMDeviceManager__deviceSetOffListeningModeAllowedIfNeeded___block_invoke_cold_1(uint64_t a1)
{
  [*(a1 + 40) identifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _deviceSetOffListeningModeAllowedIfNeeded:]_block_invoke", 90, "### AADeviceManager failed to send device config %@ to device with identifier: %@");
}

- (void)_deviceUpdateRegionStatus:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 bluetoothUUID];
  LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _deviceUpdateRegionStatus:]", 10, "Fetching region status for UUID: %@", v1);
}

void __52__HMDeviceManager__distributedNotificationReceived___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 userInfo];
  LogPrintF(&gLogCategory_HMDeviceManager, "[HMDeviceManager _distributedNotificationReceived:]_block_invoke", 30, "Internal: Received Distributed Notification wth userInfo %@", v1);
}

@end