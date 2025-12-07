@interface DKBluetoothMonitor
@end

@implementation DKBluetoothMonitor

void __28___DKBluetoothMonitor_start__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_transaction_create();
  v5 = [v3 object];

  v6 = dispatch_time(0, 1000000000);
  v7 = [*(a1 + 32) queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __28___DKBluetoothMonitor_start__block_invoke_3;
  v9[3] = &unk_27856F0B0;
  v9[4] = *(a1 + 32);
  v10 = v5;
  v8 = v5;
  dispatch_after(v6, v7, v9);
}

void __28___DKBluetoothMonitor_start__block_invoke_3(uint64_t a1)
{
  v40[1] = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 232) lock];
  v2 = *(*(a1 + 32) + 176);
  v3 = [*(a1 + 40) address];
  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    v5 = *(*(a1 + 32) + 232);

    [v5 unlock];
  }

  else
  {
    if ([*(a1 + 40) isAppleAudioDevice])
    {
      [*(a1 + 32) updateCurrentBatteryLevels];
      v6 = [*(a1 + 32) batteryLevels];
      v7 = *(*(a1 + 32) + 216);
      v8 = dispatch_walltime(0, 300000000000);
      v9 = v6;
      dispatch_source_set_timer(v7, v8, 0x45D964B800uLL, 0x64uLL);
    }

    else
    {
      v9 = 0;
    }

    v10 = [*(a1 + 32) _inEarStatusForDevice:*(a1 + 40)];
    v11 = [*(a1 + 40) connected];
    v12 = [*(a1 + 40) name];
    v13 = [*(a1 + 40) address];
    v14 = [*(a1 + 40) type];
    v15 = [*(a1 + 40) isAppleAudioDevice];
    v39 = v9;
    LODWORD(v36) = [*(a1 + 40) productId];
    v38 = v10;
    v16 = [_DKBluetoothMonitor _eventWithState:v11 name:v12 address:v13 type:v14 isAppleAudioDevice:v15 isUserWearing:v10 productID:v36 accessoryBatteryLevels:v9];

    v17 = [*(a1 + 40) address];
    if (v17)
    {
      v18 = [*(*(a1 + 32) + 184) objectForKeyedSubscript:v17];
      if (v18)
      {
        v19 = [*(a1 + 32) historicalHandler];

        if (v19)
        {
          v20 = [v16 startDate];
          [v18 setEndDate:v20];

          v21 = [*(a1 + 32) historicalHandler];
          v40[0] = v18;
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
          (v21)[2](v21, v22);

          [*(*(a1 + 32) + 184) removeObjectForKey:v17];
        }
      }

      [*(*(a1 + 32) + 176) setObject:v16 forKey:v17];
      v23 = *(*(a1 + 32) + 192);
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 40), "vendorId")}];
      [v23 setObject:v24 forKey:v17];
    }

    v25 = objc_opt_class();
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 40), "vendorId")}];
    v27 = [v25 _BMEventFromDKEvent:v16 starting:1 vendorID:v26];

    [*(*(a1 + 32) + 152) sendEvent:v27];
    [*(a1 + 32) saveState];
    [*(*(a1 + 32) + 232) unlock];
    v28 = [*(a1 + 40) connected];
    v29 = [*(a1 + 40) name];
    v30 = [*(a1 + 40) address];
    v31 = [*(a1 + 40) type];
    v32 = [*(a1 + 40) isAppleAudioDevice];
    LODWORD(v37) = [*(a1 + 40) productId];
    v33 = [_DKBluetoothMonitor contextValueForBluetoothConnectionStatus:v28 name:v29 address:v30 deviceType:v31 isAppleAudioDevice:v32 isUserWearing:v38 productID:v37];

    v34 = [MEMORY[0x277CFE318] userContext];
    v35 = [MEMORY[0x277CFE338] keyPathForBluetoothDataDictionary];
    [v34 setObject:v33 forKeyedSubscript:v35];
  }
}

void __28___DKBluetoothMonitor_start__block_invoke_4(uint64_t a1, void *a2)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v47 = os_transaction_create();
  v4 = [v3 object];

  v46 = v4;
  v5 = [v4 objectForKeyedSubscript:@"device"];
  [*(a1 + 32) updateCurrentBatteryLevels];
  v6 = [*(a1 + 32) batteryLevels];
  v7 = [*(a1 + 32) _inEarStatusForDevice:v5];
  v8 = [v5 connected];
  v9 = [v5 name];
  v10 = [v5 address];
  v11 = [v5 type];
  v12 = [v5 isAppleAudioDevice];
  v45 = v6;
  LODWORD(v43) = [v5 productId];
  v44 = [_DKBluetoothMonitor _eventWithState:v8 name:v9 address:v10 type:v11 isAppleAudioDevice:v12 isUserWearing:v7 productID:v43 accessoryBatteryLevels:v6];

  [*(*(a1 + 32) + 232) lock];
  v13 = *(*(a1 + 32) + 176);
  v14 = [v5 address];
  v15 = [v13 objectForKeyedSubscript:v14];

  v16 = [v15 metadata];
  v17 = [MEMORY[0x277CFE198] isUserWearing];
  v18 = [v16 valueForKey:v17];
  v48 = v15;
  if (!v18)
  {

    goto LABEL_8;
  }

  v19 = v18;
  v20 = [v15 metadata];
  v21 = [MEMORY[0x277CFE198] isUserWearing];
  v22 = [v20 valueForKey:v21];
  v23 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v24 = [v22 isEqual:v23];

  if (v24)
  {
LABEL_8:
    [*(*(a1 + 32) + 232) unlock];
    v25 = v44;
    goto LABEL_9;
  }

  v25 = v44;
  if (v48)
  {
    v26 = [*(a1 + 32) historicalHandler];

    if (v26)
    {
      v27 = [v44 startDate];
      [v48 setEndDate:v27];

      v28 = objc_opt_class();
      v29 = *(*(a1 + 32) + 192);
      v30 = [v5 address];
      v31 = [v29 objectForKeyedSubscript:v30];
      v32 = [v28 _BMEventFromDKEvent:v48 starting:0 vendorID:v31];

      [*(*(a1 + 32) + 152) sendEvent:v32];
      v33 = [*(a1 + 32) historicalHandler];
      v49[0] = v48;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
      (v33)[2](v33, v34);
    }
  }

  v35 = *(*(a1 + 32) + 176);
  v36 = [v5 address];
  [v35 setObject:v44 forKey:v36];

  v37 = *(*(a1 + 32) + 192);
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v5, "vendorId")}];
  v39 = [v5 address];
  [v37 setObject:v38 forKey:v39];

  v40 = objc_opt_class();
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v5, "vendorId")}];
  v42 = [v40 _BMEventFromDKEvent:v44 starting:1 vendorID:v41];

  [*(*(a1 + 32) + 152) sendEvent:v42];
  [*(a1 + 32) saveState];
  [*(*(a1 + 32) + 232) unlock];

LABEL_9:
}

void __28___DKBluetoothMonitor_start__block_invoke_5(uint64_t a1, void *a2)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_transaction_create();
  v5 = [v3 object];

  [*(*(a1 + 32) + 232) lock];
  v6 = *(*(a1 + 32) + 184);
  v7 = [v5 address];
  v8 = [v6 valueForKey:v7];

  v9 = *(a1 + 32);
  if (v8)
  {
    [v9[29] unlock];
  }

  else
  {
    v43 = v4;
    v10 = [v9 batteryLevels];
    v11 = [v5 name];
    v12 = [v5 address];
    v13 = [v5 type];
    v14 = [v5 isAppleAudioDevice];
    LODWORD(v41) = [v5 productId];
    v15 = [_DKBluetoothMonitor _eventWithState:0 name:v11 address:v12 type:v13 isAppleAudioDevice:v14 isUserWearing:0 productID:v41 accessoryBatteryLevels:v10];

    v16 = *(*(a1 + 32) + 176);
    v17 = [v5 address];
    v18 = [v16 objectForKeyedSubscript:v17];

    if (v18)
    {
      v19 = [*(a1 + 32) historicalHandler];

      if (v19)
      {
        v20 = [v15 startDate];
        [v18 setEndDate:v20];

        v21 = objc_opt_class();
        v22 = *(*(a1 + 32) + 192);
        v23 = [v5 address];
        v24 = [v22 objectForKeyedSubscript:v23];
        v25 = [v21 _BMEventFromDKEvent:v18 starting:0 vendorID:v24];

        [*(*(a1 + 32) + 152) sendEvent:v25];
        v26 = [*(a1 + 32) historicalHandler];
        v44[0] = v18;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
        (v26)[2](v26, v27);

        v28 = *(*(a1 + 32) + 176);
        v29 = [v5 address];
        [v28 removeObjectForKey:v29];

        v30 = *(*(a1 + 32) + 192);
        v31 = [v5 address];
        [v30 removeObjectForKey:v31];
      }
    }

    v32 = *(*(a1 + 32) + 184);
    v33 = [v5 address];
    [v32 setObject:v15 forKey:v33];

    if ([v5 isAppleAudioDevice] && !objc_msgSend(*(*(a1 + 32) + 176), "count"))
    {
      dispatch_source_set_timer(*(*(a1 + 32) + 216), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      [*(a1 + 32) setBatteryLevels:MEMORY[0x277CBEC10]];
    }

    [*(a1 + 32) saveState];
    [*(*(a1 + 32) + 232) unlock];
    v34 = [v5 name];
    v35 = [v5 address];
    v36 = [v5 type];
    v37 = [v5 isAppleAudioDevice];
    LODWORD(v42) = [v5 productId];
    v38 = [_DKBluetoothMonitor contextValueForBluetoothConnectionStatus:0 name:v34 address:v35 deviceType:v36 isAppleAudioDevice:v37 isUserWearing:0 productID:v42];

    v39 = [MEMORY[0x277CFE318] userContext];
    v40 = [MEMORY[0x277CFE338] keyPathForBluetoothDataDictionary];
    [v39 setObject:v38 forKeyedSubscript:v40];

    v4 = v43;
  }
}

uint64_t __26___DKBluetoothMonitor_log__block_invoke()
{
  v0 = os_log_create("com.apple.coreduet.monitors", "_DKBluetoothMonitor");
  v1 = log_log_2;
  log_log_2 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __32___DKBluetoothMonitor_saveState__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CFE108] sharedInstance];
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v17 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v17];
  v5 = v17;
  if (v5)
  {
    v6 = +[_DKBluetoothMonitor log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __32___DKBluetoothMonitor_saveState__block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = (a1 + 32);
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [v2 setData:v4 forKey:v15];

  v16 = +[_DKBluetoothMonitor log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __32___DKBluetoothMonitor_saveState__block_invoke_cold_2(v13, v16);
  }
}

void __32___DKBluetoothMonitor_loadState__block_invoke(uint64_t a1)
{
  v87[2] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v63 = [MEMORY[0x277CFE108] sharedInstance];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v64 = [v63 dataForKey:v2];

  if (v64)
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v3 setWithObjects:{v4, v5, v6, v7, v8, objc_opt_class(), 0}];
    v10 = [*(a1 + 32) classesForSecureStateDecoding];
    v11 = [v9 setByAddingObjectsFromSet:v10];

    v78 = 0;
    v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v11 fromData:v64 error:&v78];
    v13 = v78;
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v12;

    if (v13)
    {
      v16 = +[_DKBluetoothMonitor log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __32___DKBluetoothMonitor_loadState__block_invoke_cold_1(v13, v16, v17, v18, v19, v20, v21, v22);
      }
    }
  }

  v23 = *(a1 + 40);
  if (*(*(v23 + 8) + 40))
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v24 = [*(*(v23 + 8) + 40) allKeys];
    v25 = [v24 countByEnumeratingWithState:&v74 objects:v85 count:16];
    if (v25)
    {
      v26 = *v75;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v75 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v74 + 1) + 8 * i);
          v29 = +[_DKBluetoothMonitor log];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v28];
            *buf = 138412546;
            v82 = v28;
            v83 = 2112;
            v84 = v30;
            _os_log_impl(&dword_22595A000, v29, OS_LOG_TYPE_INFO, "savedState key: %@ value: %@", buf, 0x16u);
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v74 objects:v85 count:16];
      }

      while (v25);
    }

    v31 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"_DKBluetoothMonitor-activeConnections"];

    if (v31)
    {
      v32 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"_DKBluetoothMonitor-activeConnections"];
      v33 = *(a1 + 32);
      v34 = *(v33 + 176);
      *(v33 + 176) = v32;

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v35 = [*(*(a1 + 32) + 176) allKeys];
      v36 = [v35 countByEnumeratingWithState:&v70 objects:v80 count:16];
      if (v36)
      {
        v37 = *v71;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v71 != v37)
            {
              objc_enumerationMutation(v35);
            }

            v39 = *(*(&v70 + 1) + 8 * j);
            v40 = +[_DKBluetoothMonitor log];
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              v41 = [*(*(a1 + 32) + 176) objectForKeyedSubscript:v39];
              *buf = 138412546;
              v82 = v39;
              v83 = 2112;
              v84 = v41;
              _os_log_impl(&dword_22595A000, v40, OS_LOG_TYPE_INFO, "load key: %@ value: %@", buf, 0x16u);
            }
          }

          v36 = [v35 countByEnumeratingWithState:&v70 objects:v80 count:16];
        }

        while (v36);
      }
    }

    else
    {
      v35 = +[_DKBluetoothMonitor log];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22595A000, v35, OS_LOG_TYPE_INFO, "No active connections to load", buf, 2u);
      }
    }

    v52 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"_DKBluetoothMonitor-inactiveConnections"];

    if (v52)
    {
      v53 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"_DKBluetoothMonitor-inactiveConnections"];
      v54 = *(a1 + 32);
      v55 = *(v54 + 184);
      *(v54 + 184) = v53;

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v51 = [*(*(a1 + 32) + 184) allKeys];
      v56 = [v51 countByEnumeratingWithState:&v66 objects:v79 count:16];
      if (v56)
      {
        v57 = *v67;
        do
        {
          for (k = 0; k != v56; ++k)
          {
            if (*v67 != v57)
            {
              objc_enumerationMutation(v51);
            }

            v59 = *(*(&v66 + 1) + 8 * k);
            v60 = +[_DKBluetoothMonitor log];
            if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
            {
              v61 = [*(*(a1 + 32) + 184) objectForKeyedSubscript:v59];
              *buf = 138412546;
              v82 = v59;
              v83 = 2112;
              v84 = v61;
              _os_log_impl(&dword_22595A000, v60, OS_LOG_TYPE_INFO, "load key: %@ value: %@", buf, 0x16u);
            }
          }

          v56 = [v51 countByEnumeratingWithState:&v66 objects:v79 count:16];
        }

        while (v56);
      }
    }

    else
    {
      v51 = +[_DKBluetoothMonitor log];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22595A000, v51, OS_LOG_TYPE_INFO, "No inactive connections to load", buf, 2u);
      }
    }
  }

  else
  {
    v42 = +[_DKBluetoothMonitor log];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22595A000, v42, OS_LOG_TYPE_INFO, "saved state is nil", buf, 2u);
    }

    v43 = MEMORY[0x277CBEAC0];
    v44 = [MEMORY[0x277CBEB38] dictionary];
    v87[0] = v44;
    v45 = [MEMORY[0x277CBEB38] dictionary];
    v87[1] = v45;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:2];
    v86[0] = @"_DKBluetoothMonitor-activeConnections";
    v86[1] = @"_DKBluetoothMonitor-inactiveConnections";
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:2];
    v48 = [v43 dictionaryWithObjects:v46 forKeys:v47];
    v49 = *(*(a1 + 40) + 8);
    v50 = *(v49 + 40);
    *(v49 + 40) = v48;

    v51 = v44;
  }

  objc_autoreleasePoolPop(context);
}

BOOL __44___DKBluetoothMonitor_handleUnpairingEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = *(a1 + 32);
  v5 = [v3 address];
  if ([v4 isEqualToString:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 address];
    v6 = v7 == 0;
  }

  return v6;
}

void __32___DKBluetoothMonitor_saveState__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_5(&dword_22595A000, a2, a3, "Error serializing activeConnection data: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __32___DKBluetoothMonitor_saveState__block_invoke_cold_2(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 136446466;
  v5 = "[_DKBluetoothMonitor saveState]_block_invoke";
  v6 = 2114;
  v7 = objc_opt_class();
  v3 = v7;
  _os_log_debug_impl(&dword_22595A000, a2, OS_LOG_TYPE_DEBUG, "%{public}s did _CDSharedMemoryKeyValueStore for %{public}@.", &v4, 0x16u);
}

void __32___DKBluetoothMonitor_loadState__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_5(&dword_22595A000, a2, a3, "Error unarchiving state: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end