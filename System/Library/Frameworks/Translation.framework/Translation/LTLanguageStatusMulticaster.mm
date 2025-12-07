@interface LTLanguageStatusMulticaster
@end

@implementation LTLanguageStatusMulticaster

uint64_t __38___LTLanguageStatusMulticaster_shared__block_invoke()
{
  shared_shared = objc_alloc_init(_LTLanguageStatusMulticaster);

  return MEMORY[0x2821F96F8]();
}

void __51___LTLanguageStatusMulticaster__removeAllObservers__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [WeakRetained[2] keyEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [v2[2] objectForKey:*(*(&v9 + 1) + 8 * v7)];
          if (v8)
          {
            [v2 _removeObserver:v8 forceCloseConnection:1];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

void __44___LTLanguageStatusMulticaster_addObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    v12 = WeakRetained;
    v4 = [*(a1 + 32) identifier];
    v5 = [v3 objectForKey:v4];

    WeakRetained = v12;
    if (!v5)
    {
      v6 = _keyForObserver(*(a1 + 32));
      if (([v12 _connectObserverIfNeeded:*(a1 + 32)] & 1) == 0)
      {
        v7 = [*(v12 + 3) objectForKeyedSubscript:v6];
        if (v7)
        {
          v8 = [*(a1 + 32) observations];
          (v8)[2](v8, v7);
        }
      }

      v9 = *(v12 + 2);
      v10 = *(a1 + 32);
      v11 = [v10 identifier];
      [v9 setObject:v10 forKey:v11];

      WeakRetained = v12;
    }
  }
}

void __69___LTLanguageStatusMulticaster__removeObserver_forceCloseConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[2] removeObjectForKey:*(a1 + 32)];
    [v3 _closeConnectionForced:*(a1 + 56) forIdentifier:*(a1 + 32) taskHint:*(a1 + 48) useDedicatedMachPort:*(a1 + 57)];
    WeakRetained = v3;
  }
}

uint64_t __99___LTLanguageStatusMulticaster__closeConnectionForced_forIdentifier_taskHint_useDedicatedMachPort___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = _keyForObserver(v3);
    v6 = [*(a1 + 40) isEqualToString:v7];
  }

  return v6;
}

void __52___LTLanguageStatusMulticaster__didEnterForeground___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = _LTOSLogAssetObservation(WeakRetained, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23AAF5000, v4, OS_LOG_TYPE_INFO, "Resuming language status observations for this process since it came into the foreground", buf, 2u);
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v3[2] keyEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [v3[2] objectForKey:*(*(&v11 + 1) + 8 * v9)];
          [v3 _connectObserverIfNeeded:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

void __52___LTLanguageStatusMulticaster__didEnterBackground___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = _LTOSLogAssetObservation(WeakRetained, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23AAF5000, v4, OS_LOG_TYPE_INFO, "Pausing language status observations for this process since the app is backgrounding", buf, 2u);
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v3[2] keyEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [v3[2] objectForKey:*(*(&v11 + 1) + 8 * v9)];
          [v3 _closeConnectionForObserver:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

void __73___LTLanguageStatusMulticaster__multicastObservations_taskHint_progress___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = _LTOSLogAssetObservation(WeakRetained, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [_LTLanguageStatusObservation describeObservations:v6];
      *buf = 138412290;
      v25 = v8;
      _os_log_impl(&dword_23AAF5000, v7, OS_LOG_TYPE_DEFAULT, "Obsv mlcast [%@]", buf, 0xCu);
    }

    v9 = _keyForTaskHint(*(a1 + 48), *(a1 + 56));
    [v4[3] setObject:*(a1 + 32) forKeyedSubscript:v9];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v4[2] keyEnumerator];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [v4[2] objectForKey:v15];
          v17 = v16;
          if (v16)
          {
            if ([v16 taskHint] == *(a1 + 48) && *(a1 + 56) != objc_msgSend(v17, "useDedicatedMachPort"))
            {
              v18 = [v17 observations];
              v18[2](v18, *(a1 + 32));
            }
          }

          else
          {
            [v4[2] removeObjectForKey:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }
  }
}

void __67___LTLanguageStatusMulticaster__replayLastObservationsOnHeartbeat___block_invoke(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogAssetObservation(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AAF5000, v3, OS_LOG_TYPE_DEFAULT, "Replaying last language status observations", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v25 = a1;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = WeakRetained[3];
    v28 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v28)
    {
      v27 = *v35;
      do
      {
        v6 = 0;
        do
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = v6;
          v7 = *(*(&v34 + 1) + 8 * v6);
          v8 = [v5[3] objectForKeyedSubscript:v7];
          v10 = _LTOSLogAssetObservation(v8, v9);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = v10;
            v12 = [_LTLanguageStatusObservation describeObservations:v8];
            *buf = 138412290;
            v40 = v12;
            _os_log_impl(&dword_23AAF5000, v11, OS_LOG_TYPE_DEFAULT, "Obsv replay [%@]", buf, 0xCu);
          }

          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v13 = v5[2];
          v14 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v31;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v31 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v30 + 1) + 8 * i);
                v19 = [v5[2] objectForKey:v18];
                v20 = v19;
                if (v19)
                {
                  v21 = _keyForObserver(v19);
                  v22 = [v21 isEqualToString:v7];

                  if (v22)
                  {
                    v23 = [v20 observations];
                    (v23)[2](v23, v8);
                  }
                }

                else
                {
                  [v5[2] removeObjectForKey:v18];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v15);
          }

          v6 = v29 + 1;
        }

        while (v29 + 1 != v28);
        v28 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v28);
    }

    v24 = objc_loadWeakRetained((v25 + 32));
    [v24 _replayLastObservationsOnHeartbeat:*(v25 + 40)];
  }
}

void __108___LTLanguageStatusMulticaster__reconnectIfStreamingWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _startWithConnectionIdentifier:*(a1 + 32) taskHint:*(a1 + 48) useDedicatedMachPort:*(a1 + 56)];
    WeakRetained = v3;
  }
}

void __93___LTLanguageStatusMulticaster__startWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v7 = _LTOSLogAssetObservation(WeakRetained, v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __93___LTLanguageStatusMulticaster__startWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_cold_1();
      }
    }

    [v6 _reconnectIfStreamingWithConnectionIdentifier:*(a1 + 32) taskHint:*(a1 + 48) useDedicatedMachPort:*(a1 + 56)];
  }
}

void __93___LTLanguageStatusMulticaster__startWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __93___LTLanguageStatusMulticaster__startWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_2;
    v12[3] = &unk_278B6D1F0;
    v13 = v5;
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    v14 = v10;
    v16[1] = v11;
    objc_copyWeak(v16, (a1 + 40));
    v15 = v6;
    v17 = *(a1 + 56);
    dispatch_async(v9, v12);

    objc_destroyWeak(v16);
  }
}

void __93___LTLanguageStatusMulticaster__startWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __93___LTLanguageStatusMulticaster__startWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_3;
  v7[3] = &unk_278B6D1C8;
  objc_copyWeak(v10, (a1 + 56));
  v9 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v8 = v5;
  v10[1] = v6;
  v11 = *(a1 + 72);
  [v2 startLanguageStatusChangeObservation:v3 taskHint:v4 completion:v7];

  objc_destroyWeak(v10);
}

void __93___LTLanguageStatusMulticaster__startWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v7 = _LTOSLogAssetObservation(WeakRetained, v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __93___LTLanguageStatusMulticaster__startWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_3_cold_1();
      }
    }

    (*(*(a1 + 40) + 16))();
    [v6 _reconnectIfStreamingWithConnectionIdentifier:*(a1 + 32) taskHint:*(a1 + 56) useDedicatedMachPort:*(a1 + 64)];
  }
}

void __94___LTLanguageStatusMulticaster__cancelWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    v4 = [v2 domain];
    v5 = v4;
    if (v4 == *MEMORY[0x277CCA050])
    {
      v8 = [v3 code];

      if (v8 == 4099)
      {
        v9 = _LTOSLogAssetObservation(v6, v7);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *v11 = 0;
          _os_log_impl(&dword_23AAF5000, v9, OS_LOG_TYPE_INFO, "Language status observation closed was expected so ignoring hangup error", v11, 2u);
        }

        goto LABEL_9;
      }
    }

    else
    {
    }

    v10 = _LTOSLogAssetObservation(v6, v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __94___LTLanguageStatusMulticaster__cancelWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_cold_1();
    }

LABEL_9:
  }
}

void __94___LTLanguageStatusMulticaster__cancelWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94___LTLanguageStatusMulticaster__cancelWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_2;
    block[3] = &unk_278B6D260;
    v11 = v5;
    v12 = *(a1 + 32);
    v13 = v6;
    dispatch_async(v9, block);
  }
}

uint64_t __94___LTLanguageStatusMulticaster__cancelWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cancelLanguageStatusChangeObservation:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

@end