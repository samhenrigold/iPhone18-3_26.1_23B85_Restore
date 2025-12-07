@interface WDDeviceStoredDataViewController
- (BOOL)shouldShowDeleteAllDataButton;
- (id)storedDataDisplayName;
- (id)storedDataPredicate;
- (void)deleteAllStoredData;
@end

@implementation WDDeviceStoredDataViewController

- (id)storedDataPredicate
{
  v2 = MEMORY[0x277CCD838];
  v3 = MEMORY[0x277CBEB98];
  device = [(WDDeviceStoredDataViewController *)self device];
  v5 = [v3 setWithObject:device];
  v6 = [v2 predicateForObjectsFromDevices:v5];

  return v6;
}

- (id)storedDataDisplayName
{
  displayName = [(WDDeviceStoredDataViewController *)self displayName];
  v4 = displayName;
  if (displayName)
  {
    name = displayName;
  }

  else
  {
    device = [(WDDeviceStoredDataViewController *)self device];
    name = [device name];
  }

  return name;
}

- (BOOL)shouldShowDeleteAllDataButton
{
  profile = [(WDStoredDataByCategoryViewController *)self profile];
  healthStore = [profile healthStore];
  profileIdentifier = [healthStore profileIdentifier];
  type = [profileIdentifier type];

  if (type == 3)
  {
    return 0;
  }

  capturedSampleTypes = [(WDStoredDataByCategoryViewController *)self capturedSampleTypes];
  if ([capturedSampleTypes count])
  {
    isAppleInternalInstall = 1;
  }

  else
  {
    isAppleInternalInstall = [MEMORY[0x277CCDD30] isAppleInternalInstall];
  }

  return isAppleInternalInstall;
}

- (void)deleteAllStoredData
{
  v26 = *MEMORY[0x277D85DE8];
  storedDataPredicate = [(WDDeviceStoredDataViewController *)self storedDataPredicate];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 1;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v19 = 0u;
  capturedSampleTypes = [(WDStoredDataByCategoryViewController *)self capturedSampleTypes];
  v5 = [capturedSampleTypes countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(capturedSampleTypes);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        dispatch_group_enter(v3);
        profile = [(WDStoredDataByCategoryViewController *)self profile];
        healthStore = [profile healthStore];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __55__WDDeviceStoredDataViewController_deleteAllStoredData__block_invoke;
        v15[3] = &unk_2796E7100;
        v15[4] = v8;
        v17 = v23;
        v18 = a2;
        v16 = v3;
        [healthStore deleteObjectsOfType:v8 predicate:storedDataPredicate withCompletion:v15];

        ++v7;
      }

      while (v5 != v7);
      v5 = [capturedSampleTypes countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v5);
  }

  dispatch_group_leave(v3);
  v11 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__WDDeviceStoredDataViewController_deleteAllStoredData__block_invoke_295;
  block[3] = &unk_2796E6E30;
  block[4] = self;
  block[5] = v23;
  block[6] = a2;
  dispatch_group_notify(v3, v11, block);

  _Block_object_dispose(v23, 8);
}

void __55__WDDeviceStoredDataViewController_deleteAllStoredData__block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      __55__WDDeviceStoredDataViewController_deleteAllStoredData__block_invoke_cold_1(a1, v7, v6);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 40));
}

void __55__WDDeviceStoredDataViewController_deleteAllStoredData__block_invoke_295(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v9[9] = v1;
    v9[10] = v2;
    v4 = objc_alloc(MEMORY[0x277CCD328]);
    v5 = [*(a1 + 32) profile];
    v6 = [v5 healthStore];
    v7 = [v4 initWithHealthStore:v6];

    v8 = [*(a1 + 32) device];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__WDDeviceStoredDataViewController_deleteAllStoredData__block_invoke_2;
    v9[3] = &__block_descriptor_40_e20_v20__0B8__NSError_12l;
    v9[4] = *(a1 + 48);
    [v7 deleteDevice:v8 completion:v9];
  }
}

void __55__WDDeviceStoredDataViewController_deleteAllStoredData__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      __55__WDDeviceStoredDataViewController_deleteAllStoredData__block_invoke_2_cold_1(a1, v6, v5);
    }
  }
}

void __55__WDDeviceStoredDataViewController_deleteAllStoredData__block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 56);
  v6 = a2;
  v7 = NSStringFromSelector(v5);
  v8 = *(a1 + 32);
  v9 = 138412802;
  v10 = v7;
  v11 = 2112;
  v12 = v8;
  v13 = 2112;
  v14 = a3;
  _os_log_error_impl(&dword_251E85000, v6, OS_LOG_TYPE_ERROR, "%@ deleteObjectsOfType: %@ %@", &v9, 0x20u);
}

void __55__WDDeviceStoredDataViewController_deleteAllStoredData__block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = NSStringFromSelector(v4);
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a3;
  _os_log_error_impl(&dword_251E85000, v5, OS_LOG_TYPE_ERROR, "%@ Error deleting device: %@", &v7, 0x16u);
}

@end