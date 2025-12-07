@interface KSiCloudDeviceListMonitor
@end

@implementation KSiCloudDeviceListMonitor

void __53___KSiCloudDeviceListMonitor_iCloudDeviceListMonitor__block_invoke()
{
  v0 = objc_alloc_init(_KSiCloudDeviceListMonitor);
  v1 = iCloudDeviceListMonitor_sharedInstance;
  iCloudDeviceListMonitor_sharedInstance = v0;
}

void __70___KSiCloudDeviceListMonitor_fetchCloudKitDevicesWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!v6 || a4)
  {
    NSLog(&cfstr_CloudkitDevice.isa, a4);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = v6;
    v9 = KSCategory(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v8 needUpgradeDeviceNames];
      *buf = 136315394;
      v18 = "[_KSiCloudDeviceListMonitor fetchCloudKitDevicesWithCompletionBlock:]_block_invoke";
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_2557E2000, v9, OS_LOG_TYPE_INFO, "%s  cloudkit devices that needs upgrade: %@", buf, 0x16u);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70___KSiCloudDeviceListMonitor_fetchCloudKitDevicesWithCompletionBlock___block_invoke_141;
    v14[3] = &unk_2797F63D8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v15 = v8;
    v16 = v12;
    v13 = v8;
    [v11 fetchICloudDevicesWithCompletionBlock:v14];
  }
}

void __70___KSiCloudDeviceListMonitor_fetchCloudKitDevicesWithCompletionBlock___block_invoke_141(uint64_t a1, uint64_t a2, char a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithArray:a2];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [*(a1 + 32) needUpgradeDeviceNames];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [_KSDeviceInfo ksDeviceWithName:*(*(&v14 + 1) + 8 * i) needsUpgrade:1];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v7);
    }

    v12 = KSCategory(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v19 = "[_KSiCloudDeviceListMonitor fetchCloudKitDevicesWithCompletionBlock:]_block_invoke";
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_2557E2000, v12, OS_LOG_TYPE_INFO, "%s  >>> devices that need to upgraded: %@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v13 = *(*(a1 + 40) + 16);

    v13();
  }
}

void __68___KSiCloudDeviceListMonitor_fetchICloudDevicesWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = v5;
  if (v4)
  {
    v7 = [v4 responseDictionary];
    NSLog(&cfstr_IcloudResponse.isa, v7);
    v8 = [v7 objectForKeyedSubscript:@"devices"];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [_KSDeviceInfo ksDecviceWithiCloudDeviceInfo:*(*(&v15 + 1) + 8 * v12)];
          [v6 addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v10);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = KSCategory(v5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "[_KSiCloudDeviceListMonitor fetchICloudDevicesWithCompletionBlock:]_block_invoke";
      _os_log_impl(&dword_2557E2000, v14, OS_LOG_TYPE_INFO, "%s  couldn't fetch icloud device list", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __49___KSiCloudDeviceListMonitor_queryMigrationState__block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = +[_KSTextReplacementHelper aggdPrefix];
  v2 = [v0 stringWithFormat:@"%@.didMigrate", v1];
  v3 = queryMigrationState_kAggdKeyDidMigrate;
  queryMigrationState_kAggdKeyDidMigrate = v2;

  v4 = MEMORY[0x277CCACA8];
  v7 = +[_KSTextReplacementHelper aggdPrefix];
  v5 = [v4 stringWithFormat:@"%@.waitingMigration", v7];
  v6 = queryMigrationState_kAggdKeyWaitingMigration;
  queryMigrationState_kAggdKeyWaitingMigration = v5;
}

void __49___KSiCloudDeviceListMonitor_queryMigrationState__block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = KSCategory(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x277CCABB0] numberWithBool:a2];
      v13 = 136315394;
      v14 = "[_KSiCloudDeviceListMonitor queryMigrationState]_block_invoke_2";
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_2557E2000, v4, OS_LOG_TYPE_INFO, "%s  >>> The device migration eligibility for 30day check is: %@", &v13, 0x16u);
    }

    v6 = &queryMigrationState_kAggdKeyWaitingMigration;
    if (a2)
    {
      v6 = &queryMigrationState_kAggdKeyDidMigrate;
    }

    [_KSAggdLogger addValue:1 forScalarKey:*v6];
    v7 = objc_alloc(MEMORY[0x277CBEBD0]);
    v8 = +[_KSUtilities userDefaultsSuiteName];
    v9 = [v7 initWithSuiteName:v8];

    [v9 setBool:a2 forKey:@"_KSTRCloudKitMigratable"];
    v10 = [MEMORY[0x277CBEAA8] date];
    [v9 setObject:v10 forKey:@"_KSCKMigrationPreviousCheckDate"];

    if (a2)
    {
      v11 = [MEMORY[0x277CCAB98] defaultCenter];
      v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
      [v11 postNotificationName:@"_KSCloudKitDevicesMigrationStateDidChange" object:v12];
    }
  }
}

void __87___KSiCloudDeviceListMonitor_isAccountCompatibleForCloudKitSyncingWithCompletionBlock___block_invoke(uint64_t a1, void *a2, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      v10 = 1;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(a1 + 32);
          v13 = [*(*(&v14 + 1) + 8 * i) swVersion];
          LODWORD(v12) = [v12 isSWVersionCloudKitSyncCompatible:v13];

          v10 &= v12;
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  (*(*(a1 + 40) + 16))();
}

@end