@interface HDHeadphoneAudioExposureControlServer
- (HDHeadphoneAudioExposureControlServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)_headphoneProvenanceForRemoteDevice:(BOOL)device;
- (id)_headphoneProvenanceForRemoteWatch;
- (id)_makeAirPods;
- (id)_makeBeatsHeadphones;
- (id)_makeEarPods;
- (id)_makeUnknownHeadphones;
- (void)_headphoneProvenanceForRemoteWatch;
- (void)remote_fetchDoseLimitWithCompletion:(id)completion;
- (void)remote_fetchInfoDictWithCompletion:(id)completion;
- (void)remote_fetchInfoWithCompletion:(id)completion;
- (void)remote_insertQuantityWithExposure:(double)exposure duration:(double)duration startDate:(id)date includesNotificationSample:(BOOL)sample synced:(BOOL)synced completion:(id)completion;
- (void)remote_overrideDoseLimit:(id)limit completion:(id)completion;
- (void)remote_rebuildWithCompletion:(id)completion;
@end

@implementation HDHeadphoneAudioExposureControlServer

- (HDHeadphoneAudioExposureControlServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  clientCopy = client;
  v22.receiver = self;
  v22.super_class = HDHeadphoneAudioExposureControlServer;
  v12 = [(HDStandardTaskServer *)&v22 initWithUUID:d configuration:configuration client:clientCopy delegate:delegate];
  if (v12)
  {
    profile = [clientCopy profile];
    objc_storeWeak(&v12->_profile, profile);

    profile2 = [clientCopy profile];
    v15 = [profile2 profileExtensionWithIdentifier:*MEMORY[0x277D11250]];
    profileExtension = v12->_profileExtension;
    v12->_profileExtension = v15;

    objc_storeStrong(&v12->_client, client);
    v17 = HKCreateSerialDispatchQueue();
    queue = v12->_queue;
    v12->_queue = v17;

    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v12];

    v20 = v12;
  }

  return v12;
}

- (void)remote_rebuildWithCompletion:(id)completion
{
  profileExtension = self->_profileExtension;
  completionCopy = completion;
  headphoneDoseManager = [(HDHearingProfileExtension *)profileExtension headphoneDoseManager];
  v8 = 0;
  v6 = [headphoneDoseManager _rebuildWithError:&v8];
  v7 = v8;

  completionCopy[2](completionCopy, v6, v7);
}

- (void)remote_fetchInfoWithCompletion:(id)completion
{
  profileExtension = self->_profileExtension;
  completionCopy = completion;
  headphoneDoseManager = [(HDHearingProfileExtension *)profileExtension headphoneDoseManager];
  v8 = 0;
  v6 = [headphoneDoseManager _infoWithError:&v8];
  v7 = v8;

  completionCopy[2](completionCopy, v6, v7);
}

- (void)remote_fetchInfoDictWithCompletion:(id)completion
{
  profileExtension = self->_profileExtension;
  completionCopy = completion;
  headphoneDoseManager = [(HDHearingProfileExtension *)profileExtension headphoneDoseManager];
  v8 = 0;
  v6 = [headphoneDoseManager _infoDictWithError:&v8];
  v7 = v8;

  completionCopy[2](completionCopy, v6, v7);
}

- (void)remote_insertQuantityWithExposure:(double)exposure duration:(double)duration startDate:(id)date includesNotificationSample:(BOOL)sample synced:(BOOL)synced completion:(id)completion
{
  syncedCopy = synced;
  sampleCopy = sample;
  v41[2] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  completionCopy = completion;
  v14 = dateCopy;
  v15 = v14;
  if (!v14)
  {
    v16 = [MEMORY[0x277CBEAA8] now];
    v15 = [v16 dateByAddingTimeInterval:-duration];
  }

  v17 = [v15 dateByAddingTimeInterval:{duration, self}];
  decibelAWeightedSoundPressureLevelUnit = [MEMORY[0x277CCDAB0] decibelAWeightedSoundPressureLevelUnit];
  v19 = MEMORY[0x277CCD800];
  v20 = HKHeadphoneAudioExposureType();
  v37 = decibelAWeightedSoundPressureLevelUnit;
  v21 = [MEMORY[0x277CCD7E8] quantityWithUnit:decibelAWeightedSoundPressureLevelUnit doubleValue:exposure];
  v22 = [v19 quantitySampleWithType:v20 quantity:v21 startDate:v15 endDate:v17];

  if (sampleCopy)
  {
    v23 = [v17 dateByAddingTimeInterval:1.0];
    v24 = [v23 dateByAddingTimeInterval:-604800.0];
    v25 = MEMORY[0x277CCD0B0];
    v26 = HKHeadphoneAudioExposureEventType();
    [v25 categorySampleWithType:v26 value:1 startDate:v24 endDate:v23];
    v28 = v27 = syncedCopy;

    v41[0] = v28;
    v41[1] = v22;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];

    syncedCopy = v27;
  }

  else
  {
    v40 = v22;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  }

  profile = [v36 profile];
  dataManager = [profile dataManager];
  v32 = [v36 _headphoneProvenanceForRemoteDevice:syncedCopy];
  v39 = 0;
  v33 = [dataManager insertDataObjects:v29 withProvenance:v32 creationDate:&v39 error:CFAbsoluteTimeGetCurrent()];
  v34 = v39;

  completionCopy[2](completionCopy, v33, v34);
}

- (void)remote_fetchDoseLimitWithCompletion:(id)completion
{
  profileExtension = self->_profileExtension;
  completionCopy = completion;
  headphoneDoseManager = [(HDHearingProfileExtension *)profileExtension headphoneDoseManager];
  v8 = 0;
  v6 = [headphoneDoseManager _fetchDoseLimitInfoWithError:&v8];
  v7 = v8;

  completionCopy[2](completionCopy, v6, v7);
}

- (void)remote_overrideDoseLimit:(id)limit completion:(id)completion
{
  profileExtension = self->_profileExtension;
  completionCopy = completion;
  limitCopy = limit;
  headphoneDoseManager = [(HDHearingProfileExtension *)profileExtension headphoneDoseManager];
  v11 = 0;
  v9 = [headphoneDoseManager _overrideDoseLimit:limitCopy error:&v11];

  v10 = v11;
  completionCopy[2](completionCopy, v9, v10);
}

- (id)_headphoneProvenanceForRemoteDevice:(BOOL)device
{
  if (device)
  {
    _headphoneProvenanceForRemoteWatch = [(HDHeadphoneAudioExposureControlServer *)self _headphoneProvenanceForRemoteWatch];
  }

  else
  {
    profile = [(HDStandardTaskServer *)self profile];
    dataProvenanceManager = [profile dataProvenanceManager];
    _headphoneProvenanceForRemoteWatch = [dataProvenanceManager defaultLocalDataProvenance];
  }

  return _headphoneProvenanceForRemoteWatch;
}

- (id)_headphoneProvenanceForRemoteWatch
{
  v42[4] = *MEMORY[0x277D85DE8];
  _makeAirPods = [(HDHeadphoneAudioExposureControlServer *)self _makeAirPods];
  v42[0] = _makeAirPods;
  _makeEarPods = [(HDHeadphoneAudioExposureControlServer *)self _makeEarPods];
  v42[1] = _makeEarPods;
  _makeBeatsHeadphones = [(HDHeadphoneAudioExposureControlServer *)self _makeBeatsHeadphones];
  v42[2] = _makeBeatsHeadphones;
  _makeUnknownHeadphones = [(HDHeadphoneAudioExposureControlServer *)self _makeUnknownHeadphones];
  v42[3] = _makeUnknownHeadphones;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];

  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"AAAAAAAA-AAAA-AAAA-AAAA-AAAAAAAAAAAA"];
  profile = [(HDStandardTaskServer *)self profile];
  sourceManager = [profile sourceManager];
  v41 = 0;
  v11 = [sourceManager sourceForAppleDeviceWithUUID:v8 identifier:@"com.apple.health.demo_watch" name:@"Fake Person's Watch" productType:@"Watch1 createIfNecessary:2" error:{1, &v41}];
  v12 = v41;

  if (v11)
  {
    profile2 = [(HDStandardTaskServer *)self profile];
    deviceManager = [profile2 deviceManager];
    v15 = [v7 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v7, "count"))}];
    v40 = v12;
    v16 = [deviceManager deviceEntityForDevice:v15 error:&v40];
    v38 = v40;

    if (v16)
    {
      profile3 = [(HDStandardTaskServer *)self profile];
      daemon = [profile3 daemon];
      behavior = [daemon behavior];

      v34 = MEMORY[0x277D10698];
      profile4 = [(HDStandardTaskServer *)self profile];
      currentSyncIdentityPersistentID = [profile4 currentSyncIdentityPersistentID];
      currentOSBuild = [behavior currentOSBuild];
      v21 = currentOSBuild;
      v22 = *MEMORY[0x277D10430];
      if (currentOSBuild)
      {
        v22 = currentOSBuild;
      }

      v32 = v22;
      v36 = v8;
      v37 = v7;
      if (behavior)
      {
        objc_msgSend_currentOSVersionStruct(behavior);
      }

      else
      {
        memset(v39, 0, sizeof(v39));
      }

      currentOSVersion = [behavior currentOSVersion];
      localTimeZone = [behavior localTimeZone];
      name = [localTimeZone name];
      v29 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v11, "persistentID")}];
      v30 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "persistentID")}];
      v24 = [v34 dataProvenanceWithSyncProvenance:0 syncIdentity:currentSyncIdentityPersistentID productType:@"Watch1 systemBuild:2" operatingSystemVersion:v32 sourceVersion:v39 timeZoneName:currentOSVersion sourceID:name deviceID:v29 contributorReference:{v30, 0}];

      v8 = v36;
      v7 = v37;
    }

    else
    {
      _HKInitializeLogging();
      v25 = *MEMORY[0x277CCC2B8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
      {
        v12 = v38;
        [(HDHeadphoneAudioExposureControlServer *)v38 _headphoneProvenanceForRemoteWatch];
        v24 = 0;
        goto LABEL_15;
      }

      v24 = 0;
    }

    v12 = v38;
LABEL_15:

    goto LABEL_16;
  }

  _HKInitializeLogging();
  v23 = *MEMORY[0x277CCC2B8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
  {
    [(HDHeadphoneAudioExposureControlServer *)v12 _headphoneProvenanceForRemoteWatch];
  }

  v24 = 0;
LABEL_16:

  return v24;
}

- (id)_makeAirPods
{
  v2 = objc_alloc(MEMORY[0x277CCD2E8]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [v2 initWithName:@"AirPods" manufacturer:@"Apple model:Inc." hardwareVersion:@"AirPods 1 firmwareVersion:1" softwareVersion:0 localIdentifier:0 UDIDeviceIdentifier:{0, uUIDString, 0}];

  return v5;
}

- (id)_makeEarPods
{
  v2 = objc_alloc(MEMORY[0x277CCD2E8]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [v2 initWithName:@"EarPods" manufacturer:@"Apple model:Inc." hardwareVersion:@"EarPods 1 firmwareVersion:1" softwareVersion:0 localIdentifier:0 UDIDeviceIdentifier:{0, uUIDString, 0}];

  return v5;
}

- (id)_makeBeatsHeadphones
{
  v2 = objc_alloc(MEMORY[0x277CCD2E8]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [v2 initWithName:@"Powerbeats Pro" manufacturer:@"Beats By Dre" model:@"Powerbeats Pro 1 hardwareVersion:1" firmwareVersion:0 softwareVersion:0 localIdentifier:0 UDIDeviceIdentifier:{uUIDString, 0}];

  return v5;
}

- (id)_makeUnknownHeadphones
{
  v2 = objc_alloc(MEMORY[0x277CCD2E8]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [v2 initWithName:0 manufacturer:@"Foo model:Inc." hardwareVersion:@"FooPods 1 firmwareVersion:1" softwareVersion:0 localIdentifier:0 UDIDeviceIdentifier:{0, uUIDString, 0}];

  return v5;
}

- (void)_headphoneProvenanceForRemoteWatch
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_251764000, a2, OS_LOG_TYPE_ERROR, "Error creating watch source entity %{public}@", &v2, 0xCu);
}

@end