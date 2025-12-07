@interface FIAppStoreAvailability
+ (BOOL)_isDeviceTablet;
+ (void)_isSupportedDeviceAvailableWithCompletion:(id)completion;
+ (void)fetchIsFitnessAvailableForDeviceWithCompletion:(id)completion;
+ (void)isFitnessPlusStorefrontContentAvailableWithCompletion:(id)completion;
@end

@implementation FIAppStoreAvailability

+ (void)fetchIsFitnessAvailableForDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([self _isDeviceTablet])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __73__FIAppStoreAvailability_fetchIsFitnessAvailableForDeviceWithCompletion___block_invoke;
    v7[3] = &unk_279004870;
    selfCopy = self;
    v8 = completionCopy;
    dispatch_async(v5, v7);
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B35E000, v6, OS_LOG_TYPE_DEFAULT, "FIAppStoreAvailability - device not tablet; calling completion with YES", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 1);
  }
}

void __73__FIAppStoreAvailability_fetchIsFitnessAvailableForDeviceWithCompletion___block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v3 = *(a1 + 40);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __73__FIAppStoreAvailability_fetchIsFitnessAvailableForDeviceWithCompletion___block_invoke_2;
  v19[3] = &unk_279004848;
  v21 = &v22;
  v4 = v2;
  v20 = v4;
  [v3 isFitnessPlusStorefrontContentAvailableWithCompletion:v19];
  dispatch_group_enter(v4);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = *(a1 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__FIAppStoreAvailability_fetchIsFitnessAvailableForDeviceWithCompletion___block_invoke_3;
  v12[3] = &unk_279004848;
  v14 = &v15;
  v6 = v4;
  v13 = v6;
  [v5 _isSupportedDeviceAvailableWithCompletion:v12];
  v7 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v6, v7))
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
    {
      __73__FIAppStoreAvailability_fetchIsFitnessAvailableForDeviceWithCompletion___block_invoke_cold_1(v10);
    }
  }

  if (*(v23 + 24) == 1)
  {
    v11 = *(v16 + 24);
  }

  else
  {
    v11 = 0;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v11 & 1, v8, v9);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v22, 8);
}

+ (BOOL)_isDeviceTablet
{
  if (_isDeviceTablet_onceToken != -1)
  {
    +[FIAppStoreAvailability _isDeviceTablet];
  }

  return _isDeviceTablet___isDeviceTablet;
}

uint64_t __41__FIAppStoreAvailability__isDeviceTablet__block_invoke()
{
  result = MGGetSInt32Answer();
  _isDeviceTablet___isDeviceTablet = result == 3;
  return result;
}

+ (void)isFitnessPlusStorefrontContentAvailableWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = [MEMORY[0x277CEE3F8] bagForProfile:@"Fitness" profileVersion:@"1"];
  v5 = [v4 BOOLForKey:@"fitnessPlusEnabled"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__FIAppStoreAvailability_isFitnessPlusStorefrontContentAvailableWithCompletion___block_invoke;
  v7[3] = &unk_279004898;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 valueWithCompletion:v7];
}

void __80__FIAppStoreAvailability_isFitnessPlusStorefrontContentAvailableWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a2)
  {
    v7 = [a2 BOOLValue];
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v7;
      _os_log_impl(&dword_24B35E000, v8, OS_LOG_TYPE_DEFAULT, "FIAppStoreAvailability fetched fitness plus enabled value: %d", v10, 8u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
    {
      __80__FIAppStoreAvailability_isFitnessPlusStorefrontContentAvailableWithCompletion___block_invoke_cold_1(v9, v6);
    }
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)_isSupportedDeviceAvailableWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CF0130];
  completionCopy = completion;
  sharedInstance = [v3 sharedInstance];
  v6 = objc_alloc_init(MEMORY[0x277CF0178]);
  allAuthKitAccounts = [sharedInstance allAuthKitAccounts];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__FIAppStoreAvailability__isSupportedDeviceAvailableWithCompletion___block_invoke;
  v11[3] = &unk_279004908;
  v8 = v6;
  v12 = v8;
  v9 = [allAuthKitAccounts hk_firstObjectPassingTest:v11];

  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v14 = v9 != 0;
    _os_log_impl(&dword_24B35E000, v10, OS_LOG_TYPE_DEFAULT, "FIAppStoreAvailability - isSupportedDeviceAvailable: %d", buf, 8u);
  }

  completionCopy[2](completionCopy, v9 != 0);
}

BOOL __68__FIAppStoreAvailability__isSupportedDeviceAvailableWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 ams_altDSID];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CF0220]);
    v6 = [v3 ams_altDSID];
    [v5 setAltDSID:v6];

    v25[0] = @"iOS";
    v25[1] = @"watchOS";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    [v5 setOperatingSystems:v7];

    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__0;
    v23 = __Block_byref_object_dispose__0;
    v24 = 0;
    v8 = dispatch_semaphore_create(0);
    v9 = *(a1 + 32);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__FIAppStoreAvailability__isSupportedDeviceAvailableWithCompletion___block_invoke_338;
    v16[3] = &unk_2790048C0;
    v18 = &v19;
    v10 = v8;
    v17 = v10;
    [v9 fetchDeviceListWithContext:v5 completion:v16];
    v11 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v10, v11))
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC270];
      if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
      {
        __68__FIAppStoreAvailability__isSupportedDeviceAvailableWithCompletion___block_invoke_cold_1(v12);
      }

      v13 = 0;
    }

    else
    {
      v14 = [v20[5] hk_firstObjectPassingTest:&__block_literal_global_343];
      v13 = v14 != 0;
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __68__FIAppStoreAvailability__isSupportedDeviceAvailableWithCompletion___block_invoke_338(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    if (v6)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC270];
      if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
      {
        __68__FIAppStoreAvailability__isSupportedDeviceAvailableWithCompletion___block_invoke_338_cold_1(v8, v7);
      }
    }
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

BOOL __68__FIAppStoreAvailability__isSupportedDeviceAvailableWithCompletion___block_invoke_340(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a2;
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [v2 model];
    v6 = objc_msgSend_operatingSystemVersion(v2);
    v17 = 138412546;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_24B35E000, v4, OS_LOG_TYPE_DEFAULT, "FIAppStoreAvailability remoteDevice model:%@ version:%@", &v17, 0x16u);
  }

  v7 = [v2 model];
  if ([v7 hasPrefix:@"iPhone"])
  {
    v8 = [v2 operatingSystemName];
    if ([v8 isEqualToString:@"iOS"])
    {
      v9 = objc_msgSend_operatingSystemVersion(v2);
      [v9 doubleValue];
      v11 = v10 >= 16.1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 operatingSystemName];
  if ([v12 isEqualToString:@"watchOS"])
  {
    v13 = objc_msgSend_operatingSystemVersion(v2);
    [v13 doubleValue];
    v15 = v14 >= 7.0;
  }

  else
  {
    v15 = 0;
  }

  return v11 || v15;
}

void __80__FIAppStoreAvailability_isFitnessPlusStorefrontContentAvailableWithCompletion___block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  LODWORD(v11) = 138412290;
  *(&v11 + 4) = v4;
  OUTLINED_FUNCTION_0(&dword_24B35E000, v5, v6, "FIAppStoreAvailability failed to fetch fitness plus enabled value: %@", v7, v8, v9, v10, v11, DWORD2(v11));
}

void __68__FIAppStoreAvailability__isSupportedDeviceAvailableWithCompletion___block_invoke_338_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  LODWORD(v11) = 138412290;
  *(&v11 + 4) = v4;
  OUTLINED_FUNCTION_0(&dword_24B35E000, v5, v6, "FIAppStoreAvailability failed to fetch device list: %@", v7, v8, v9, v10, v11, DWORD2(v11));
}

@end