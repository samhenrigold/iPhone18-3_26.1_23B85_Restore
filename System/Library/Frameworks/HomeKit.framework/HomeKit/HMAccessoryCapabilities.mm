@interface HMAccessoryCapabilities
- (BOOL)isEqual:(id)equal;
- (BOOL)isLocalEqual:(id)equal;
- (BOOL)supportsCrossfadeAsAirPlaySource;
- (BOOL)supportsNetworkDiagnostics;
- (BOOL)supportsRMVonAppleTV;
- (BOOL)supportsStereoOdeonTTSUBypassingPrimary;
- (HMAccessoryCapabilities)initWithProtoCapabilities:(id)capabilities;
- (HMAccessoryCapabilities)initWithProtoData:(id)data;
- (HMAccessoryCapabilities)initWithTagUUID:(id)d capabilities:(_HMAccessoryCapabilitiesStruct)capabilities;
- (id)pbCapabilities;
- (unint64_t)hash;
@end

@implementation HMAccessoryCapabilities

- (BOOL)supportsNetworkDiagnostics
{
  if (([(HMAccessoryCapabilities *)self capabilities]& 0x8000000000) == 0)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (HMAccessoryCapabilities)initWithProtoCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  selfCopy2 = [capabilitiesCopy tag];

  if (selfCopy2)
  {
    v6 = objc_alloc(MEMORY[0x1E696AFB0]);
    v7 = [capabilitiesCopy tag];
    v109 = [v6 initWithUUIDString:v7];

    selfCopy = self;
    supportsKeychainSync = [capabilitiesCopy supportsKeychainSync];
    supportsDeviceSetup = [capabilitiesCopy supportsDeviceSetup];
    v10 = 2;
    if (!supportsDeviceSetup)
    {
      v10 = 0;
    }

    v11 = v10 | supportsKeychainSync;
    if ([capabilitiesCopy supportsKeyTransferClient])
    {
      v12 = 4;
    }

    else
    {
      v12 = 0;
    }

    supportsKeyTransferServer = [capabilitiesCopy supportsKeyTransferServer];
    v14 = 8;
    if (!supportsKeyTransferServer)
    {
      v14 = 0;
    }

    v107 = v11 | v12 | v14;
    if ([capabilitiesCopy supportsStandaloneMode])
    {
      v15 = 16;
    }

    else
    {
      v15 = 0;
    }

    if ([capabilitiesCopy supportsCloudDataSync])
    {
      v16 = 32;
    }

    else
    {
      v16 = 0;
    }

    if ([capabilitiesCopy supportsWholeHouseAudio])
    {
      v17 = 64;
    }

    else
    {
      v17 = 0;
    }

    v105 = v15 | v16;
    v106 = v17;
    supportsAssistantAccessControl = [capabilitiesCopy supportsAssistantAccessControl];
    v19 = 128;
    if (!supportsAssistantAccessControl)
    {
      v19 = 0;
    }

    v104 = v19;
    supportsHomeInvitation = [capabilitiesCopy supportsHomeInvitation];
    v21 = 256;
    if (!supportsHomeInvitation)
    {
      v21 = 0;
    }

    v103 = v21;
    supportsTargetControl = [capabilitiesCopy supportsTargetControl];
    v23 = 512;
    if (!supportsTargetControl)
    {
      v23 = 0;
    }

    v102 = v23;
    supportsMultiUser = [capabilitiesCopy supportsMultiUser];
    v25 = 1024;
    if (!supportsMultiUser)
    {
      v25 = 0;
    }

    v100 = v25;
    supportsHomeLevelLocationServiceSetting = [capabilitiesCopy supportsHomeLevelLocationServiceSetting];
    v27 = 2048;
    if (!supportsHomeLevelLocationServiceSetting)
    {
      v27 = 0;
    }

    v101 = v27;
    supportsCompanionInitiatedRestart = [capabilitiesCopy supportsCompanionInitiatedRestart];
    v29 = 4096;
    if (!supportsCompanionInitiatedRestart)
    {
      v29 = 0;
    }

    v99 = v29;
    supportsMusicAlarm = [capabilitiesCopy supportsMusicAlarm];
    v31 = 0x2000;
    if (!supportsMusicAlarm)
    {
      v31 = 0;
    }

    v98 = v31;
    supportsAnnounce = [capabilitiesCopy supportsAnnounce];
    v33 = 0x4000;
    if (!supportsAnnounce)
    {
      v33 = 0;
    }

    v97 = v33;
    supportsf9cc0d9d6aa54e7 = [capabilitiesCopy supportsf9cc0d9d6aa54e7];
    v35 = 0x8000;
    if (!supportsf9cc0d9d6aa54e7)
    {
      v35 = 0;
    }

    v96 = v35;
    supportsThirdPartyMusic = [capabilitiesCopy supportsThirdPartyMusic];
    v37 = 0x10000;
    if (!supportsThirdPartyMusic)
    {
      v37 = 0;
    }

    v95 = v37;
    supportsPreferredMediaUser = [capabilitiesCopy supportsPreferredMediaUser];
    v39 = 0x20000;
    if (!supportsPreferredMediaUser)
    {
      v39 = 0;
    }

    v94 = v39;
    supportsThreadBorderRouter = [capabilitiesCopy supportsThreadBorderRouter];
    v41 = 0x40000;
    if (!supportsThreadBorderRouter)
    {
      v41 = 0;
    }

    v93 = v41;
    supportsDoorbellChime = [capabilitiesCopy supportsDoorbellChime];
    v43 = 0x80000;
    if (!supportsDoorbellChime)
    {
      v43 = 0;
    }

    v92 = v43;
    supportsUserMediaSettings = [capabilitiesCopy supportsUserMediaSettings];
    v45 = 0x100000;
    if (!supportsUserMediaSettings)
    {
      v45 = 0;
    }

    v91 = v45;
    supportsCoordinationDoorbellChime = [capabilitiesCopy supportsCoordinationDoorbellChime];
    v47 = 0x200000;
    if (!supportsCoordinationDoorbellChime)
    {
      v47 = 0;
    }

    v90 = v47;
    supportsHomeHub = [capabilitiesCopy supportsHomeHub];
    v49 = 0x400000;
    if (!supportsHomeHub)
    {
      v49 = 0;
    }

    v89 = v49;
    supportsAudioReturnChannel = [capabilitiesCopy supportsAudioReturnChannel];
    v51 = 0x800000;
    if (!supportsAudioReturnChannel)
    {
      v51 = 0;
    }

    v88 = v51;
    supportsManagedConfigurationProfile = [capabilitiesCopy supportsManagedConfigurationProfile];
    v53 = 0x1000000;
    if (!supportsManagedConfigurationProfile)
    {
      v53 = 0;
    }

    v87 = v53;
    supportsCaptiveNetworks = [capabilitiesCopy supportsCaptiveNetworks];
    v55 = 0x2000000;
    if (!supportsCaptiveNetworks)
    {
      v55 = 0;
    }

    v86 = v55;
    supportsMessagedHomePodSettings = [capabilitiesCopy supportsMessagedHomePodSettings];
    v57 = 0x4000000;
    if (!supportsMessagedHomePodSettings)
    {
      v57 = 0;
    }

    v85 = v57;
    supportsMediaActions = [capabilitiesCopy supportsMediaActions];
    v59 = 0x8000000;
    if (!supportsMediaActions)
    {
      v59 = 0;
    }

    v84 = v59;
    supports90bb069d6bx54e7 = [capabilitiesCopy supports90bb069d6bx54e7];
    v61 = 0x10000000;
    if (!supports90bb069d6bx54e7)
    {
      v61 = 0;
    }

    v83 = v61;
    supports89024c1cadcb8b00 = [capabilitiesCopy supports89024c1cadcb8b00];
    v63 = 0x20000000;
    if (!supports89024c1cadcb8b00)
    {
      v63 = 0;
    }

    v82 = v63;
    supports2c25465bb0b47366 = [capabilitiesCopy supports2c25465bb0b47366];
    v65 = 0x40000000;
    if (!supports2c25465bb0b47366)
    {
      v65 = 0;
    }

    v81 = v65;
    supportsInstallManagedConfigurationProfile = [capabilitiesCopy supportsInstallManagedConfigurationProfile];
    v67 = 0x80000000;
    if (!supportsInstallManagedConfigurationProfile)
    {
      v67 = 0;
    }

    v80 = v67;
    if ([capabilitiesCopy supportsCoordinationFreeDoorbellChime])
    {
      v68 = 0x100000000;
    }

    else
    {
      v68 = 0;
    }

    if ([capabilitiesCopy supportsCompanionInitiatedObliterate])
    {
      v69 = 0x200000000;
    }

    else
    {
      v69 = 0;
    }

    if ([capabilitiesCopy supports45c051b0b1f0])
    {
      v70 = 0x400000000;
    }

    else
    {
      v70 = 0;
    }

    if ([capabilitiesCopy supportsTVOSUpdateManualUpdateAvailableNotification])
    {
      v71 = 0x800000000;
    }

    else
    {
      v71 = 0;
    }

    if ([capabilitiesCopy supportsWiFiRepairV2])
    {
      v72 = 0x1000000000;
    }

    else
    {
      v72 = 0;
    }

    if ([capabilitiesCopy supportsSoftwareUpdateV2])
    {
      v73 = 0x2000000000;
    }

    else
    {
      v73 = 0;
    }

    if ([capabilitiesCopy supportsStereoOdeonTTSUBypassingPrimary])
    {
      v74 = 0x4000000000;
    }

    else
    {
      v74 = 0;
    }

    if ([capabilitiesCopy supportsNetworkDiagnostics])
    {
      v75 = 0x8000000000;
    }

    else
    {
      v75 = 0;
    }

    if ([capabilitiesCopy supports24b183bad693415])
    {
      v76 = 0x10000000000;
    }

    else
    {
      v76 = 0;
    }

    clearsKeychainWhenRemovedFromHome = [capabilitiesCopy clearsKeychainWhenRemovedFromHome];
    v78 = 0x20000000000;
    if (!clearsKeychainWhenRemovedFromHome)
    {
      v78 = 0;
    }

    self = [(HMAccessoryCapabilities *)selfCopy initWithTagUUID:v109 capabilities:v107 | v105 | v106 | v104 | v103 | v102 | v100 | v101 | v99 | v98 | v97 | v96 | v95 | v94 | v93 | v92 | v91 | v90 | v89 | v88 | v87 | v86 | v85 | v84 | v83 | v82 | v81 | v80 | v68 | v69 | v70 | v71 | v72 | v73 | v74 | v75 | v76 | v78];

    selfCopy2 = self;
  }

  return selfCopy2;
}

- (HMAccessoryCapabilities)initWithProtoData:(id)data
{
  dataCopy = data;
  v5 = [[HMProtoAccessoryCapabilities alloc] initWithData:dataCopy];

  if (v5)
  {
    self = [(HMAccessoryCapabilities *)self initWithProtoCapabilities:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)pbCapabilities
{
  v3 = objc_alloc_init(HMProtoAccessoryCapabilities);
  v4 = [(HMAccessoryCapabilities *)self tag];
  [(HMProtoAccessoryCapabilities *)v3 setTag:v4];

  [(HMProtoAccessoryCapabilities *)v3 setSupportsKeychainSync:[(HMAccessoryCapabilities *)self supportsKeychainSync]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsDeviceSetup:[(HMAccessoryCapabilities *)self supportsDeviceSetup]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsKeyTransferClient:[(HMAccessoryCapabilities *)self supportsKeyTransferClient]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsKeyTransferServer:[(HMAccessoryCapabilities *)self supportsKeyTransferServer]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsStandaloneMode:[(HMAccessoryCapabilities *)self supportsStandaloneMode]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsCloudDataSync:[(HMAccessoryCapabilities *)self supportsCloudDataSync]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsWholeHouseAudio:[(HMAccessoryCapabilities *)self supportsWholeHouseAudio]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsAssistantAccessControl:[(HMAccessoryCapabilities *)self supportsAssistantAccessControl]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsHomeInvitation:[(HMAccessoryCapabilities *)self supportsHomeInvitation]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsTargetControl:[(HMAccessoryCapabilities *)self supportsTargetControl]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsMultiUser:[(HMAccessoryCapabilities *)self supportsMultiUser]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsHomeLevelLocationServiceSetting:[(HMAccessoryCapabilities *)self supportsHomeLevelLocationServiceSetting]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsCompanionInitiatedRestart:[(HMAccessoryCapabilities *)self supportsCompanionInitiatedRestart]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsMusicAlarm:[(HMAccessoryCapabilities *)self supportsMusicAlarm]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsAnnounce:[(HMAccessoryCapabilities *)self supportsAnnounce]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsf9cc0d9d6aa54e7:[(HMAccessoryCapabilities *)self supportsAudioAnalysis]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsThirdPartyMusic:[(HMAccessoryCapabilities *)self supportsThirdPartyMusic]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsPreferredMediaUser:[(HMAccessoryCapabilities *)self supportsPreferredMediaUser]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsThreadBorderRouter:[(HMAccessoryCapabilities *)self supportsThreadBorderRouter]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsDoorbellChime:[(HMAccessoryCapabilities *)self supportsDoorbellChime]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsUserMediaSettings:[(HMAccessoryCapabilities *)self supportsUserMediaSettings]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsCoordinationDoorbellChime:[(HMAccessoryCapabilities *)self supportsCoordinationDoorbellChime]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsHomeHub:[(HMAccessoryCapabilities *)self supportsHomeHub]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsAudioReturnChannel:[(HMAccessoryCapabilities *)self supportsAudioReturnChannel]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsManagedConfigurationProfile:[(HMAccessoryCapabilities *)self supportsManagedConfigurationProfile]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsCaptiveNetworks:[(HMAccessoryCapabilities *)self supportsCaptiveNetworks]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsMessagedHomePodSettings:[(HMAccessoryCapabilities *)self supportsMessagedHomePodSettings]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsMediaActions:[(HMAccessoryCapabilities *)self supportsMediaActions]];
  [(HMProtoAccessoryCapabilities *)v3 setSupports90bb069d6bx54e7:[(HMAccessoryCapabilities *)self supportsDropIn]];
  [(HMProtoAccessoryCapabilities *)v3 setSupports89024c1cadcb8b00:[(HMAccessoryCapabilities *)self supportsRMVonAppleTV]];
  [(HMProtoAccessoryCapabilities *)v3 setSupports2c25465bb0b47366:[(HMAccessoryCapabilities *)self supportsJustSiri]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsInstallManagedConfigurationProfile:[(HMAccessoryCapabilities *)self supportsInstallManagedConfigurationProfile]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsCoordinationFreeDoorbellChime:[(HMAccessoryCapabilities *)self supportsCoordinationFreeDoorbellChime]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsCompanionInitiatedObliterate:[(HMAccessoryCapabilities *)self supportsCompanionInitiatedObliterate]];
  [(HMProtoAccessoryCapabilities *)v3 setSupports45c051b0b1f0:[(HMAccessoryCapabilities *)self supportsLoreto]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsTVOSUpdateManualUpdateAvailableNotification:[(HMAccessoryCapabilities *)self supportsTVOSUpdateManualUpdateAvailableNotification]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsWiFiRepairV2:[(HMAccessoryCapabilities *)self supportsWiFiRepairV2]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsSoftwareUpdateV2:[(HMAccessoryCapabilities *)self supportsSoftwareUpdateV2]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsStereoOdeonTTSUBypassingPrimary:[(HMAccessoryCapabilities *)self supportsStereoOdeonTTSUBypassingPrimary]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsNetworkDiagnostics:[(HMAccessoryCapabilities *)self supportsNetworkDiagnostics]];
  [(HMProtoAccessoryCapabilities *)v3 setSupports24b183bad693415:[(HMAccessoryCapabilities *)self supportsCrossfadeAsAirPlaySource]];
  [(HMProtoAccessoryCapabilities *)v3 setClearsKeychainWhenRemovedFromHome:[(HMAccessoryCapabilities *)self clearsKeychainWhenRemovedFromHome]];

  return v3;
}

- (BOOL)supportsCrossfadeAsAirPlaySource
{
  if (([(HMAccessoryCapabilities *)self capabilities]& 0x10000000000) == 0)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (BOOL)supportsStereoOdeonTTSUBypassingPrimary
{
  if (([(HMAccessoryCapabilities *)self capabilities]& 0x4000000000) == 0)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (BOOL)supportsRMVonAppleTV
{
  if (([(HMAccessoryCapabilities *)self capabilities]& 0x20000000) == 0)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (BOOL)isLocalEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6
    && (v7 = -[HMAccessoryCapabilities supportsKeychainSync](self, "supportsKeychainSync"), v7 == [v6 supportsKeychainSync])
    && (v8 = -[HMAccessoryCapabilities supportsDeviceSetup](self, "supportsDeviceSetup"), v8 == [v6 supportsDeviceSetup])
    && (v9 = -[HMAccessoryCapabilities supportsKeyTransferClient](self, "supportsKeyTransferClient"), v9 == [v6 supportsKeyTransferClient])
    && (v10 = -[HMAccessoryCapabilities supportsKeyTransferServer](self, "supportsKeyTransferServer"), v10 == [v6 supportsKeyTransferServer])
    && (v11 = -[HMAccessoryCapabilities supportsStandaloneMode](self, "supportsStandaloneMode"), v11 == [v6 supportsStandaloneMode])
    && (v12 = -[HMAccessoryCapabilities supportsCloudDataSync](self, "supportsCloudDataSync"), v12 == [v6 supportsCloudDataSync])
    && (v13 = -[HMAccessoryCapabilities supportsWholeHouseAudio](self, "supportsWholeHouseAudio"), v13 == [v6 supportsWholeHouseAudio])
    && (v14 = -[HMAccessoryCapabilities supportsAssistantAccessControl](self, "supportsAssistantAccessControl"), v14 == [v6 supportsAssistantAccessControl])
    && (v15 = -[HMAccessoryCapabilities supportsHomeInvitation](self, "supportsHomeInvitation"), v15 == [v6 supportsHomeInvitation])
    && (v16 = -[HMAccessoryCapabilities supportsTargetControl](self, "supportsTargetControl"), v16 == [v6 supportsTargetControl])
    && (v17 = -[HMAccessoryCapabilities supportsMultiUser](self, "supportsMultiUser"), v17 == [v6 supportsMultiUser])
    && (v18 = -[HMAccessoryCapabilities supportsHomeLevelLocationServiceSetting](self, "supportsHomeLevelLocationServiceSetting"), v18 == [v6 supportsHomeLevelLocationServiceSetting])
    && (v19 = -[HMAccessoryCapabilities supportsCompanionInitiatedRestart](self, "supportsCompanionInitiatedRestart"), v19 == [v6 supportsCompanionInitiatedRestart])
    && (v20 = -[HMAccessoryCapabilities supportsMusicAlarm](self, "supportsMusicAlarm"), v20 == [v6 supportsMusicAlarm])
    && (v21 = -[HMAccessoryCapabilities supportsAnnounce](self, "supportsAnnounce"), v21 == [v6 supportsAnnounce])
    && (v22 = -[HMAccessoryCapabilities supportsAudioAnalysis](self, "supportsAudioAnalysis"), v22 == [v6 supportsAudioAnalysis])
    && (v23 = -[HMAccessoryCapabilities supportsThirdPartyMusic](self, "supportsThirdPartyMusic"), v23 == [v6 supportsThirdPartyMusic])
    && (v24 = -[HMAccessoryCapabilities supportsPreferredMediaUser](self, "supportsPreferredMediaUser"), v24 == [v6 supportsPreferredMediaUser])
    && (v25 = -[HMAccessoryCapabilities supportsThreadBorderRouter](self, "supportsThreadBorderRouter"), v25 == [v6 supportsThreadBorderRouter])
    && (v26 = -[HMAccessoryCapabilities supportsDoorbellChime](self, "supportsDoorbellChime"), v26 == [v6 supportsDoorbellChime])
    && (v27 = -[HMAccessoryCapabilities supportsUserMediaSettings](self, "supportsUserMediaSettings"), v27 == [v6 supportsUserMediaSettings])
    && (v28 = -[HMAccessoryCapabilities supportsCoordinationDoorbellChime](self, "supportsCoordinationDoorbellChime"), v28 == [v6 supportsCoordinationDoorbellChime])
    && (v29 = -[HMAccessoryCapabilities supportsHomeHub](self, "supportsHomeHub"), v29 == [v6 supportsHomeHub])
    && (v30 = -[HMAccessoryCapabilities supportsAudioReturnChannel](self, "supportsAudioReturnChannel"), v30 == [v6 supportsAudioReturnChannel])
    && (v31 = -[HMAccessoryCapabilities supportsManagedConfigurationProfile](self, "supportsManagedConfigurationProfile"), v31 == [v6 supportsManagedConfigurationProfile])
    && (v32 = -[HMAccessoryCapabilities supportsCaptiveNetworks](self, "supportsCaptiveNetworks"), v32 == [v6 supportsCaptiveNetworks])
    && (v33 = -[HMAccessoryCapabilities supportsMessagedHomePodSettings](self, "supportsMessagedHomePodSettings"), v33 == [v6 supportsMessagedHomePodSettings])
    && (v34 = -[HMAccessoryCapabilities supportsMediaActions](self, "supportsMediaActions"), v34 == [v6 supportsMediaActions])
    && (v35 = -[HMAccessoryCapabilities supportsDropIn](self, "supportsDropIn"), v35 == [v6 supportsDropIn])
    && ((v36 = -[HMAccessoryCapabilities supportsRMVonAppleTV](self, "supportsRMVonAppleTV"), v36 == [v6 supportsRMVonAppleTV]) || (_os_feature_enabled_impl() & 1) == 0)
    && (v37 = -[HMAccessoryCapabilities supportsJustSiri](self, "supportsJustSiri"), v37 == [v6 supportsJustSiri])
    && (v38 = -[HMAccessoryCapabilities supportsInstallManagedConfigurationProfile](self, "supportsInstallManagedConfigurationProfile"), v38 == [v6 supportsInstallManagedConfigurationProfile])
    && (v39 = -[HMAccessoryCapabilities supportsCoordinationFreeDoorbellChime](self, "supportsCoordinationFreeDoorbellChime"), v39 == [v6 supportsCoordinationFreeDoorbellChime])
    && (v40 = -[HMAccessoryCapabilities supportsCompanionInitiatedObliterate](self, "supportsCompanionInitiatedObliterate"), v40 == [v6 supportsCompanionInitiatedObliterate])
    && (v41 = -[HMAccessoryCapabilities supportsLoreto](self, "supportsLoreto"), v41 == [v6 supportsLoreto])
    && (v42 = -[HMAccessoryCapabilities supportsTVOSUpdateManualUpdateAvailableNotification](self, "supportsTVOSUpdateManualUpdateAvailableNotification"), v42 == [v6 supportsTVOSUpdateManualUpdateAvailableNotification])
    && (v43 = -[HMAccessoryCapabilities supportsWiFiRepairV2](self, "supportsWiFiRepairV2"), v43 == [v6 supportsWiFiRepairV2])
    && (v44 = -[HMAccessoryCapabilities supportsSoftwareUpdateV2](self, "supportsSoftwareUpdateV2"), v44 == [v6 supportsSoftwareUpdateV2])
    && ((v47 = -[HMAccessoryCapabilities supportsStereoOdeonTTSUBypassingPrimary](self, "supportsStereoOdeonTTSUBypassingPrimary"), v47 == [v6 supportsStereoOdeonTTSUBypassingPrimary]) || (_os_feature_enabled_impl() & 1) == 0)
    && ((v48 = -[HMAccessoryCapabilities supportsNetworkDiagnostics](self, "supportsNetworkDiagnostics"), v48 == [v6 supportsNetworkDiagnostics]) || (_os_feature_enabled_impl() & 1) == 0)
    && ((v49 = -[HMAccessoryCapabilities supportsCrossfadeAsAirPlaySource](self, "supportsCrossfadeAsAirPlaySource"), v49 == [v6 supportsCrossfadeAsAirPlaySource]) || (_os_feature_enabled_impl() & 1) == 0))
  {
    clearsKeychainWhenRemovedFromHome = [(HMAccessoryCapabilities *)self clearsKeychainWhenRemovedFromHome];
    v45 = clearsKeychainWhenRemovedFromHome ^ [v6 clearsKeychainWhenRemovedFromHome] ^ 1;
  }

  else
  {
    LOBYTE(v45) = 0;
  }

  return v45;
}

- (unint64_t)hash
{
  v2 = [(HMAccessoryCapabilities *)self tag];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMAccessoryCapabilities *)self tag];
      v8 = [(HMAccessoryCapabilities *)v6 tag];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (HMAccessoryCapabilities)initWithTagUUID:(id)d capabilities:(_HMAccessoryCapabilitiesStruct)capabilities
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = HMAccessoryCapabilities;
  v7 = [(HMAccessoryCapabilities *)&v11 init];
  if (v7)
  {
    uUIDString = [dCopy UUIDString];
    tag = v7->_tag;
    v7->_tag = uUIDString;

    v7->_capabilities = capabilities;
  }

  return v7;
}

@end