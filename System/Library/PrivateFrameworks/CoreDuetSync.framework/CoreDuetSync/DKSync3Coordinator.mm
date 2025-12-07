@interface DKSync3Coordinator
@end

@implementation DKSync3Coordinator

void __141___DKSync3Coordinator__DKSyncRemoteContextStorageDelegate__remoteContextStorage_subscribeToChangesWithPeer_registrationIdentifier_predicate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CFE290];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __141___DKSync3Coordinator__DKSyncRemoteContextStorageDelegate__remoteContextStorage_subscribeToChangesWithPeer_registrationIdentifier_predicate___block_invoke_2;
  v14[3] = &unk_278E35030;
  objc_copyWeak(&v18, (a1 + 64));
  v13 = *(a1 + 32);
  v8 = *(&v13 + 1);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v15 = v13;
  v16 = v11;
  v12 = v5;
  v17 = v12;
  [v7 performAsyncBlock:v14];

  objc_destroyWeak(&v18);
}

void __141___DKSync3Coordinator__DKSyncRemoteContextStorageDelegate__remoteContextStorage_subscribeToChangesWithPeer_registrationIdentifier_predicate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __141___DKSync3Coordinator__DKSyncRemoteContextStorageDelegate__remoteContextStorage_subscribeToChangesWithPeer_registrationIdentifier_predicate___block_invoke_2_cold_1();
  }

  [WeakRetained sendContextValuesToPeer:*(a1 + 48) registrationIdentifier:*(a1 + 64) keyPaths:*(a1 + 56)];
}

void __128___DKSync3Coordinator__CDRemoteUserContextServer__subscribeToContextValueChangeNotificationsWithRegistration_deviceIDs_handler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v7 = 0;
  [v2 subscribeToContextValueChangeNotificationsWithRegistration:v3 deviceIDs:v4 error:&v7];
  v5 = v7;
  v6 = a1[7];
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

void __132___DKSync3Coordinator__CDRemoteUserContextServer__unsubscribeFromContextValueChangeNotificationsWithRegistration_deviceIDs_handler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v7 = 0;
  [v2 unsubscribeFromContextValueChangeNotificationsWithRegistration:v3 deviceIDs:v4 error:&v7];
  v5 = v7;
  v6 = a1[7];
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

void __116___DKSync3Coordinator__CDRemoteUserContextServer__subscribeToDeviceStatusChangeNotificationsForDeviceTypes_handler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v6 = 0;
  [v2 subscribeToDeviceStatusChangeNotificationsForDeviceTypes:v3 error:&v6];
  v4 = v6;
  v5 = a1[5];
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

void __126___DKSync3Coordinator__CDRemoteUserContextServer__subscribeToContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CFE0C8] syncChannel];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __126___DKSync3Coordinator__CDRemoteUserContextServer__subscribeToContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke_cold_1(a1, v3);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __126___DKSync3Coordinator__CDRemoteUserContextServer__subscribeToContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke_cold_2();
    }

    [*(a1 + 56) addObject:*(a1 + 40)];
  }
}

void __130___DKSync3Coordinator__CDRemoteUserContextServer__unsubscribeFromContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CFE0C8] syncChannel];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __130___DKSync3Coordinator__CDRemoteUserContextServer__unsubscribeFromContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke_cold_1(a1, v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __130___DKSync3Coordinator__CDRemoteUserContextServer__unsubscribeFromContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke_cold_2();
  }
}

void __91___DKSync3Coordinator__CDRemoteUserContextServer__fetchPropertiesOfRemoteKeyPaths_handler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __91___DKSync3Coordinator__CDRemoteUserContextServer__fetchPropertiesOfRemoteKeyPaths_handler___block_invoke_2;
  v3[3] = &unk_278E35140;
  v4 = *(a1 + 48);
  [v1 _fetchPropertiesOfRemoteKeyPaths:v2 handler:v3];
}

uint64_t __91___DKSync3Coordinator__CDRemoteUserContextServer__fetchPropertiesOfRemoteKeyPaths_handler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __85___DKSync3Coordinator__CDRemoteUserContextServer__requestActivateDevicesWithHandler___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __85___DKSync3Coordinator__CDRemoteUserContextServer__requestActivateDevicesWithHandler___block_invoke_2;
  v2[3] = &unk_278E35140;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _requestActivateDevicesWithHandler:v2];
}

uint64_t __85___DKSync3Coordinator__CDRemoteUserContextServer__requestActivateDevicesWithHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __107___DKSync3Coordinator__CDRemoteUserContextServer__sendContextValuesToPeer_registrationIdentifier_keyPaths___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CFE0C8] syncChannel];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __107___DKSync3Coordinator__CDRemoteUserContextServer__sendContextValuesToPeer_registrationIdentifier_keyPaths___block_invoke_cold_1(a1, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __107___DKSync3Coordinator__CDRemoteUserContextServer__sendContextValuesToPeer_registrationIdentifier_keyPaths___block_invoke_cold_2(a1);
  }
}

void __141___DKSync3Coordinator__DKSyncRemoteContextStorageDelegate__remoteContextStorage_subscribeToChangesWithPeer_registrationIdentifier_predicate___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_17();
  v2 = v1;
  v3 = [objc_opt_class() description];
  v4 = &stru_28584E620;
  [*(v2 + 48) me];
  v5 = [*(v2 + 48) identifier];
  v6 = [*(v2 + 48) model];
  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    [*(v2 + 48) model];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_13();
    v4 = [v7 stringWithFormat:@" (%@)"];
  }

  OUTLINED_FUNCTION_5();
  v8 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v9, v10, v11, v12, v13, 0x3Eu);
  if (v6)
  {
  }

  OUTLINED_FUNCTION_16();
}

void __126___DKSync3Coordinator__CDRemoteUserContextServer__subscribeToContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v5 = [objc_opt_class() description];
  v6 = &stru_28584E620;
  [*(a1 + 40) me];
  v7 = [*(a1 + 40) identifier];
  v8 = [*(a1 + 40) model];
  if (v8)
  {
    v9 = MEMORY[0x277CCACA8];
    [*(a1 + 40) model];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_12();
    v6 = [v9 stringWithFormat:@" (%@)"];
  }

  v10 = [*(a1 + 48) identifier];
  v11 = [a2 domain];
  [a2 code];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_18(&dword_245377000, v12, v13, "%{public}@: Failed to subscribe %{public}@peer %{public}@%{public}@ to context value change notifications with registration %{public}@: %{public}@:%lld (%@)", v14, v15, v16, v17, v18, v19);

  if (v8)
  {
  }
}

void __126___DKSync3Coordinator__CDRemoteUserContextServer__subscribeToContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_19();
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_21(v1) description];
  v4 = &stru_28584E620;
  [*(v2 + 40) me];
  v5 = [*(v2 + 40) identifier];
  v6 = [*(v2 + 40) model];
  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    [*(v2 + 40) model];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_12();
    v4 = [v7 stringWithFormat:@" (%@)"];
  }

  v8 = [*(v2 + 48) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v9, v10, v11, v12, v13, 0x34u);

  if (v6)
  {
  }

  OUTLINED_FUNCTION_20();
}

void __130___DKSync3Coordinator__CDRemoteUserContextServer__unsubscribeFromContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v5 = [objc_opt_class() description];
  v6 = &stru_28584E620;
  [*(a1 + 40) me];
  v7 = [*(a1 + 40) identifier];
  v8 = [*(a1 + 40) model];
  if (v8)
  {
    v9 = MEMORY[0x277CCACA8];
    [*(a1 + 40) model];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_12();
    v6 = [v9 stringWithFormat:@" (%@)"];
  }

  v10 = [*(a1 + 48) identifier];
  v11 = [a2 domain];
  [a2 code];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_18(&dword_245377000, v12, v13, "%{public}@: Failed to unsubscribe %{public}@peer %{public}@%{public}@ from context value change notifications with registration %{public}@: %{public}@:%lld (%@)", v14, v15, v16, v17, v18, v19);

  if (v8)
  {
  }
}

void __130___DKSync3Coordinator__CDRemoteUserContextServer__unsubscribeFromContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_19();
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_21(v1) description];
  v4 = &stru_28584E620;
  [*(v2 + 40) me];
  v5 = [*(v2 + 40) identifier];
  v6 = [*(v2 + 40) model];
  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    [*(v2 + 40) model];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_12();
    v4 = [v7 stringWithFormat:@" (%@)"];
  }

  v8 = [*(v2 + 48) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v9, v10, v11, v12, v13, 0x34u);

  if (v6)
  {
  }

  OUTLINED_FUNCTION_20();
}

void __92___DKSync3Coordinator__CDRemoteUserContextServer___fetchPropertiesOfRemoteKeyPaths_handler___block_invoke_cold_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int buf, int a12, __int128 a13, void *a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_17();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  a18 = *MEMORY[0x277D85DE8];
  v38 = [objc_opt_class() description];
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v35, "count")}];
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v37[5], "count")}];
  v41 = &stru_28584E620;
  if ([v37[6] me])
  {
    v42 = @"pseudo ";
  }

  else
  {
    v42 = &stru_28584E620;
  }

  v43 = [v37[6] identifier];
  v44 = [v37[6] model];
  if (v44)
  {
    v45 = MEMORY[0x277CCACA8];
    v37 = [v37[6] model];
    v41 = [v45 stringWithFormat:@" (%@)"];
  }

  OUTLINED_FUNCTION_14();
  *(&a13 + 6) = v39;
  HIWORD(a13) = v46;
  a14 = v40;
  LOWORD(a15) = 2114;
  *(&a15 + 2) = v42;
  WORD5(a15) = 2114;
  *(&a15 + 12) = v43;
  WORD2(a16) = 2114;
  *(&a16 + 6) = v41;
  _os_log_debug_impl(&dword_245377000, v33, OS_LOG_TYPE_DEBUG, "%{public}@: Successfullly fetched %@ of %@ properties of key paths from %{public}@peer %{public}@%{public}@", &buf, 0x3Eu);
  if (v44)
  {
  }

  OUTLINED_FUNCTION_16();
}

void __92___DKSync3Coordinator__CDRemoteUserContextServer___fetchPropertiesOfRemoteKeyPaths_handler___block_invoke_cold_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int buf, int a12, __int128 a13, void *a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_17();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  a18 = *MEMORY[0x277D85DE8];
  v38 = [objc_opt_class() description];
  v39 = &stru_28584E620;
  if ([v37[6] me])
  {
    v40 = @"pseudo ";
  }

  else
  {
    v40 = &stru_28584E620;
  }

  v41 = [v37[6] identifier];
  v42 = [v37[6] model];
  if (v42)
  {
    v43 = MEMORY[0x277CCACA8];
    [v37[6] model];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_12();
    v39 = [v43 stringWithFormat:@" (%@)"];
  }

  v44 = [v35 domain];
  [v35 code];
  OUTLINED_FUNCTION_1();
  *(&a13 + 6) = v40;
  HIWORD(a13) = v45;
  a14 = v41;
  LOWORD(a15) = v45;
  *(&a15 + 2) = v39;
  WORD5(a15) = v45;
  *(&a15 + 12) = v44;
  WORD2(a16) = 2048;
  *(&a16 + 6) = v46;
  HIWORD(a16) = 2112;
  a17 = v35;
  _os_log_error_impl(&dword_245377000, v33, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch properties of key paths from %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", &buf, 0x48u);

  if (v42)
  {
  }

  OUTLINED_FUNCTION_16();
}

void __107___DKSync3Coordinator__CDRemoteUserContextServer__sendContextValuesToPeer_registrationIdentifier_keyPaths___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = [OUTLINED_FUNCTION_21(a1) description];
  v6 = &stru_28584E620;
  if ([*(a1 + 40) me])
  {
    v7 = @"pseudo ";
  }

  else
  {
    v7 = &stru_28584E620;
  }

  v8 = [*(a1 + 40) identifier];
  v9 = [*(a1 + 40) model];
  if (v9)
  {
    v10 = MEMORY[0x277CCACA8];
    [*(a1 + 40) model];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_13();
    v6 = [v10 stringWithFormat:@" (%@)"];
  }

  v11 = [*(a1 + 48) valueForKey:@"key"];
  OUTLINED_FUNCTION_5();
  v12 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_1();
  v14 = v7;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(&dword_245377000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to send context values to %{public}@peer %{public}@%{public}@ for key paths: %{public}@", buf, 0x34u);

  if (v9)
  {
  }
}

void __107___DKSync3Coordinator__CDRemoteUserContextServer__sendContextValuesToPeer_registrationIdentifier_keyPaths___block_invoke_cold_2(uint64_t a1)
{
  v3 = [OUTLINED_FUNCTION_21(a1) description];
  v4 = &stru_28584E620;
  [*(a1 + 40) me];
  v5 = [*(a1 + 40) identifier];
  v6 = [*(a1 + 40) model];
  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    [*(a1 + 40) model];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_13();
    v4 = [v7 stringWithFormat:@" (%@)"];
  }

  v8 = [*(a1 + 48) valueForKey:@"key"];
  OUTLINED_FUNCTION_5();
  v9 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v10, v11, v12, v13, v14, 0x34u);

  if (v6)
  {
  }
}

@end