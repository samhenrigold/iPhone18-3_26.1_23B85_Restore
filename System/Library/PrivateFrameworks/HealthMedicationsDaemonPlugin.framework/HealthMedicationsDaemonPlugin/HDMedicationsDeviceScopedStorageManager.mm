@interface HDMedicationsDeviceScopedStorageManager
- (BOOL)updateLocalDeviceValuesNowWithError:(id *)error;
- (HDMedicationsDeviceScopedStorageManager)initWithProfile:(id)profile;
- (id)_updateLocalDeviceValuesNowWithError:(uint64_t)error;
- (id)accountDevicesInfoTriggeringUpdate:(BOOL)update error:(id *)error;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation HDMedicationsDeviceScopedStorageManager

- (HDMedicationsDeviceScopedStorageManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v10.receiver = self;
  v10.super_class = HDMedicationsDeviceScopedStorageManager;
  v5 = [(HDMedicationsDeviceScopedStorageManager *)&v10 init];
  if (v5)
  {
    deviceKeyValueStoreManager = [profileCopy deviceKeyValueStoreManager];
    objc_storeWeak(&v5->_keyValueStore, deviceKeyValueStoreManager);

    syncIdentityManager = [profileCopy syncIdentityManager];
    syncIdentityManager = v5->_syncIdentityManager;
    v5->_syncIdentityManager = syncIdentityManager;

    [profileCopy registerProfileReadyObserver:v5 queue:0];
  }

  return v5;
}

- (void)profileDidBecomeReady:(id)ready
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__HDMedicationsDeviceScopedStorageManager_profileDidBecomeReady___block_invoke;
  v13[3] = &unk_2796CD998;
  v13[4] = self;
  readyCopy = ready;
  v5 = MEMORY[0x253084B70](v13);
  v6 = MEMORY[0x277D10748];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__HDMedicationsDeviceScopedStorageManager_profileDidBecomeReady___block_invoke_314;
  v11[3] = &unk_2796CEC98;
  v11[4] = self;
  v12 = v5;
  v7 = v5;
  v8 = [v6 maintenanceOperationWithName:@"HDMedicationsDeviceScopedStorageManger" asynchronousBlock:v11];
  daemon = [readyCopy daemon];

  maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
  [maintenanceWorkCoordinator enqueueMaintenanceOperation:v8];
}

void __65__HDMedicationsDeviceScopedStorageManager_profileDidBecomeReady___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  v6 = 0;
  v3 = [v1 updateLocalDeviceValuesNowWithError:&v6];
  v4 = v6;
  if ((v3 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = HKLogMedication();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __65__HDMedicationsDeviceScopedStorageManager_profileDidBecomeReady___block_invoke_cold_1(v2);
    }
  }
}

void __65__HDMedicationsDeviceScopedStorageManager_profileDidBecomeReady___block_invoke_314(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(v2 + 16);
  v4 = a2;
  v3(v2);
  _HKInitializeLogging();
  v5 = HKLogMedication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v6 = v8;
    _os_log_impl(&dword_25181C000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Finished local device update as maintenance operation", &v7, 0xCu);
  }

  v4[2](v4);
}

- (BOOL)updateLocalDeviceValuesNowWithError:(id *)error
{
  v3 = [(HDMedicationsDeviceScopedStorageManager *)self _updateLocalDeviceValuesNowWithError:error];
  v4 = v3 != 0;

  return v4;
}

- (id)_updateLocalDeviceValuesNowWithError:(uint64_t)error
{
  v27[4] = *MEMORY[0x277D85DE8];
  if (error)
  {
    localDeviceInfo = [MEMORY[0x277D115E0] localDeviceInfo];
    v26[0] = @"_Name";
    name = [localDeviceInfo name];
    v27[0] = name;
    v26[1] = @"_Model";
    model = [localDeviceInfo model];
    v27[1] = model;
    v26[2] = @"_OperatingSystemVersion";
    if (localDeviceInfo)
    {
      objc_msgSend_operatingSystemVersion(localDeviceInfo);
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v7 = HKNSOperatingSystemVersionString();
    v27[2] = v7;
    v26[3] = @"_ScheduleCompatibilityVersion";
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(localDeviceInfo, "scheduleCompatibilityVersion")}];
    v27[3] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];

    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__13;
    v20 = __Block_byref_object_dispose__13;
    v21 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__HDMedicationsDeviceScopedStorageManager__updateLocalDeviceValuesNowWithError___block_invoke;
    v15[3] = &unk_2796CECC0;
    v15[4] = error;
    v15[5] = &v22;
    v15[6] = &v16;
    [v9 enumerateKeysAndObjectsUsingBlock:v15];
    if (v23[3])
    {
      v10 = localDeviceInfo;
    }

    else
    {
      v11 = v17[5];
      v12 = v11;
      if (v11)
      {
        if (a2)
        {
          v13 = v11;
          *a2 = v12;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v10 = 0;
    }

    _Block_object_dispose(&v16, 8);

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __80__HDMedicationsDeviceScopedStorageManager__updateLocalDeviceValuesNowWithError___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 8));
    v14 = 0;
    v10 = [WeakRetained setNumber:v8 forKey:v7 domainName:@"Medications" protectionCategory:1 error:&v14];
    v11 = v14;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = 0;
      goto LABEL_8;
    }

    WeakRetained = objc_loadWeakRetained((a1[4] + 8));
    v13 = 0;
    v10 = [WeakRetained setString:v8 forKey:v7 domainName:@"Medications" protectionCategory:1 error:&v13];
    v11 = v13;
  }

  v12 = v11;
  *(*(a1[5] + 8) + 24) = v10;

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v12);
    *a4 = 1;
  }

LABEL_8:
}

- (id)accountDevicesInfoTriggeringUpdate:(BOOL)update error:(id *)error
{
  if (update)
  {
    v25 = 0;
    localDeviceInfo = [(HDMedicationsDeviceScopedStorageManager *)self _updateLocalDeviceValuesNowWithError:?];
    v7 = v25;
    v8 = v7;
    if (!localDeviceInfo)
    {
      v9 = v7;
      if (v9)
      {
        if (error)
        {
          v10 = v9;
          *error = v9;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      _HKInitializeLogging();
      localDeviceInfo = HKLogMedication();
      if (os_log_type_enabled(localDeviceInfo, OS_LOG_TYPE_ERROR))
      {
        [HDMedicationsDeviceScopedStorageManager accountDevicesInfoTriggeringUpdate:? error:?];
      }

      v21 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    localDeviceInfo = [MEMORY[0x277D115E0] localDeviceInfo];
    v8 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_keyValueStore);
  v24 = v8;
  v12 = [WeakRetained fetchEntriesForDomain:@"Medications" key:0 protectionCategory:1 error:&v24];
  v9 = v24;

  if (v12)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __84__HDMedicationsDeviceScopedStorageManager_accountDevicesInfoTriggeringUpdate_error___block_invoke;
    v23[3] = &unk_2796CECE8;
    v23[4] = self;
    v13 = [v12 hk_map:v23];
    currentSyncIdentity = [(HDSyncIdentityManager *)self->_syncIdentityManager currentSyncIdentity];
    identity = [currentSyncIdentity identity];
    hardwareIdentifier = [identity hardwareIdentifier];
    [localDeviceInfo _setHardwareIdentifier:hardwareIdentifier];

    unitTest_accountDevicesInfo = self->_unitTest_accountDevicesInfo;
    if (unitTest_accountDevicesInfo)
    {
      v18 = unitTest_accountDevicesInfo;
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x277D115C8]) initWithMedicationFeatureDevicesInfo:v13 localDeviceInfo:localDeviceInfo];
    }

    v21 = v18;
  }

  else
  {
    v19 = v9;
    if (v19)
    {
      if (error)
      {
        v20 = v19;
        *error = v19;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v21 = 0;
  }

LABEL_18:

  return v21;
}

id __84__HDMedicationsDeviceScopedStorageManager_accountDevicesInfoTriggeringUpdate_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 deviceContext];
  v5 = [v4 type];

  if (v5 > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277D115E0] deviceInfoFromStorageGroup:v3 syncIdentityManager:*(*(a1 + 32) + 16)];
  }

  return v6;
}

void __65__HDMedicationsDeviceScopedStorageManager_profileDidBecomeReady___block_invoke_cold_1(void *a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_0_8(v1);
  OUTLINED_FUNCTION_0_7(&dword_25181C000, v3, v4, "[%{public}@]: Error updating local device values: %{public}@", v5, v6, v7, v8);
}

- (void)accountDevicesInfoTriggeringUpdate:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_0_8(v1);
  OUTLINED_FUNCTION_0_7(&dword_25181C000, v3, v4, "[%{public}@]: Error updating local device values: %{public}@", v5, v6, v7, v8);
}

@end