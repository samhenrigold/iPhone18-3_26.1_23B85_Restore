@interface HKMedicationsDeviceInfo(HealthMedicationsDaemonPlugin)
+ (id)deviceInfoFromStorageGroup:()HealthMedicationsDaemonPlugin syncIdentityManager:;
+ (id)localDeviceInfo;
@end

@implementation HKMedicationsDeviceInfo(HealthMedicationsDaemonPlugin)

+ (id)localDeviceInfo
{
  v0 = objc_alloc(MEMORY[0x277D115E0]);
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  currentDeviceDisplayName = [mEMORY[0x277CCDD30] currentDeviceDisplayName];
  mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
  currentDeviceProductType = [mEMORY[0x277CCDD30]2 currentDeviceProductType];
  mEMORY[0x277CCDD30]3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v6 = mEMORY[0x277CCDD30]3;
  if (mEMORY[0x277CCDD30]3)
  {
    objc_msgSend_currentOSVersionStruct(mEMORY[0x277CCDD30]3);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v7 = [v0 _initLocalDeviceWithName:currentDeviceDisplayName model:currentDeviceProductType operatingSystemVersion:v9 scheduleCompatibilityVersion:1];

  return v7;
}

+ (id)deviceInfoFromStorageGroup:()HealthMedicationsDaemonPlugin syncIdentityManager:
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v34 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  storageEntries = [v5 storageEntries];
  v8 = [storageEntries countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(storageEntries);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        v13 = [v12 key];
        [v6 setObject:v12 forKeyedSubscript:v13];
      }

      v9 = [storageEntries countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v9);
  }

  deviceContext = [v5 deviceContext];
  syncIdentity = [deviceContext syncIdentity];
  hardwareIdentifier = [syncIdentity hardwareIdentifier];

  v17 = [v6 objectForKeyedSubscript:@"_Name"];
  v18 = [v17 stringValue:0];

  v19 = [v6 objectForKeyedSubscript:@"_Model"];
  v20 = [v19 stringValue:0];

  v21 = [v6 objectForKeyedSubscript:@"_OperatingSystemVersion"];
  v22 = [v21 stringValue:0];

  v23 = [v6 objectForKeyedSubscript:@"_ScheduleCompatibilityVersion"];
  v24 = [v23 numberValue:0];

  v25 = 0;
  if (hardwareIdentifier && v18 && v20 && v22 && v24)
  {
    v37 = 0uLL;
    v38 = 0;
    HKNSOperatingSystemVersionFromString();
    integerValue = [v24 integerValue];
    [v5 deviceContext];
    v26 = v33 = v5;
    syncIdentity2 = [v26 syncIdentity];
    currentSyncIdentity = [v34 currentSyncIdentity];
    identity = [currentSyncIdentity identity];
    v31 = [syncIdentity2 isEqual:identity];

    v5 = v33;
    v35 = 0uLL;
    v36 = 0;
    v25 = [objc_alloc(MEMORY[0x277D115E0]) initWithHardwareIdentifier:hardwareIdentifier name:v18 model:v20 operatingSystemVersion:&v35 scheduleCompatibilityVersion:integerValue localDevice:v31];
  }

  return v25;
}

@end