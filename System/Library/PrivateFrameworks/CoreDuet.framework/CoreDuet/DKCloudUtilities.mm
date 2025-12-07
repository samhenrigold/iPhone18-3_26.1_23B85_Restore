@interface DKCloudUtilities
@end

@implementation DKCloudUtilities

uint64_t __35___DKCloudUtilities_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_opt_new();
  v2 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void __25___DKCloudUtilities_init__block_invoke(uint64_t a1)
{
  v2 = [_DKThrottledActivity alloc];
  v4 = [(_DKCloudUtilities *)*(a1 + 32) keyValueStore];
  v5 = [(_DKThrottledActivity *)v2 initWithStore:v4 namespace:@"_DKCloudUtilities"];
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;

  v8 = *(a1 + 32);

  [(_DKCloudUtilities *)v8 _fetchCloudKitConfigurationAndStatus];
}

void __57___DKCloudUtilities__fetchCloudKitConfigurationAndStatus__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57___DKCloudUtilities__fetchCloudKitConfigurationAndStatus__block_invoke_2;
  v2[3] = &unk_1E73675F8;
  v2[4] = v1;
  [(_DKCloudUtilities *)v1 _fetchAccountInfoWithCompletionHandler:v2];
}

void __57___DKCloudUtilities__fetchCloudKitConfigurationAndStatus__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 24) == 1)
  {
    [(_DKCloudUtilities *)v1 _updateNumberOfSyncedDevicesWithCompletionHandler:?];
  }
}

void __60___DKCloudUtilities__fetchAccountInfoWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(_DKCloudUtilities *)WeakRetained _updateAccountInfo:v6 error:v5];

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5);
  }

  v9 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __60___DKCloudUtilities__fetchAccountInfoWithCompletionHandler___block_invoke_cold_1();
  }
}

void __46___DKCloudUtilities__updateAccountInfo_error___block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"_DKCloudSyncAvailablityChangedNotification" object:0];
}

void __48___DKCloudUtilities_deleteRemoteStateWithReply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = +[_CDLogging syncChannel];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __48___DKCloudUtilities_deleteRemoteStateWithReply___block_invoke_cold_1(v5, v7);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __48___DKCloudUtilities_deleteRemoteStateWithReply___block_invoke_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __71___DKCloudUtilities__updateNumberOfSyncedDevicesWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __86___DKCloudUtilities__performUpdateNumberOfSyncedDevicesWithAttempt_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 recordType];
  v5 = [v4 isEqualToString:@"metadata_device_type"];

  if (v5)
  {
    v6 = [v3 recordID];
    v7 = [v6 recordName];

    v8 = [*(a1 + 32) arrayForKey:@"_DKCloudSyncDevices"];
    if ([v8 count])
    {
      if ([v8 containsObject:v7])
      {
LABEL_7:

        goto LABEL_8;
      }

      v9 = [v8 mutableCopy];
      [v9 addObject:v7];
      [*(a1 + 32) setArray:v9 forKey:@"_DKCloudSyncDevices"];
      v10 = +[_CDObservationCenter sharedInstance];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count", @"count"}];
      v16 = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      [v10 postNotificationName:@"_DKCloudDeviceCountChangedNotification" userInfo:v12 sender:*(a1 + 40)];
    }

    else
    {
      v13 = *(a1 + 32);
      v17[0] = v7;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      [v13 setArray:v14 forKey:@"_DKCloudSyncDevices"];

      v9 = +[_CDObservationCenter sharedInstance];
      [v9 postNotificationName:@"_DKCloudDeviceCountChangedNotification" userInfo:&unk_1F05EF7B8 sender:*(a1 + 40)];
    }

    goto LABEL_7;
  }

LABEL_8:
}

void __86___DKCloudUtilities__performUpdateNumberOfSyncedDevicesWithAttempt_completionHandler___block_invoke_596(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([a3 isEqualToString:@"metadata_device_type"])
  {
    v6 = [v5 recordName];
    v7 = [*(a1 + 32) arrayForKey:@"_DKCloudSyncDevices"];
    if ([v7 count])
    {
      v8 = [v7 mutableCopy];
      [v8 removeObject:v6];
      [*(a1 + 32) setArray:v8 forKey:@"_DKCloudSyncDevices"];
      v9 = +[_CDObservationCenter sharedInstance];
      v12 = @"count";
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
      v13[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      [v9 postNotificationName:@"_DKCloudDeviceCountChangedNotification" userInfo:v11 sender:*(a1 + 40)];
    }
  }
}

void __86___DKCloudUtilities__performUpdateNumberOfSyncedDevicesWithAttempt_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:?];
    [*(a1 + 32) setData:v4 forKey:@"_DKCloudSyncMetadataChangeToken"];
  }
}

void __86___DKCloudUtilities__performUpdateNumberOfSyncedDevicesWithAttempt_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __86___DKCloudUtilities__performUpdateNumberOfSyncedDevicesWithAttempt_completionHandler___block_invoke_4;
    v29[3] = &unk_1E7367440;
    v30 = *(a1 + 32);
    [_DKSyncSerializer performSyncBlock:v29];
    v9 = v30;
LABEL_26:

    goto LABEL_27;
  }

  v4 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __86___DKCloudUtilities__performUpdateNumberOfSyncedDevicesWithAttempt_completionHandler___block_invoke_3_cold_1(a1, v3, v4);
  }

  if ([v3 code] == 2)
  {
    v5 = [v3 domain];
    v6 = *MEMORY[0x1E695B740];
    v7 = [v5 isEqualToString:*MEMORY[0x1E695B740]];

    if (v7)
    {
      v8 = [v3 userInfo];
      v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695B798]];

      [v9 allValues];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v10 = v28 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v26;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v25 + 1) + 8 * i);
            if ([v15 code] == 21)
            {
              v16 = [v15 domain];
              v17 = [v16 isEqualToString:v6];

              if (v17)
              {

                goto LABEL_21;
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_26;
    }
  }

  if ([v3 code] == 21)
  {
    v18 = [v3 domain];
    v19 = [v18 isEqualToString:*MEMORY[0x1E695B740]];

    if (v19)
    {
LABEL_21:
      v20 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v24[0] = 0;
        _os_log_impl(&dword_191750000, v20, OS_LOG_TYPE_INFO, "Change token expired, may retry fetching number of synced devices", v24, 2u);
      }

      [*(a1 + 48) removeObjectForKey:@"_DKCloudSyncMetadataChangeToken"];
      v21 = *(a1 + 80);
      v22 = +[_CDLogging syncChannel];
      v9 = v22;
      if (v21 <= 2)
      {
        __86___DKCloudUtilities__performUpdateNumberOfSyncedDevicesWithAttempt_completionHandler___block_invoke_3_cold_3(v22, a1, (a1 + 80));
        goto LABEL_29;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        __86___DKCloudUtilities__performUpdateNumberOfSyncedDevicesWithAttempt_completionHandler___block_invoke_3_cold_2();
      }

      goto LABEL_26;
    }
  }

LABEL_27:
  v23 = *(a1 + 72);
  if (v23)
  {
    (*(v23 + 16))(v23, v3);
  }

LABEL_29:
}

void __86___DKCloudUtilities__performUpdateNumberOfSyncedDevicesWithAttempt_completionHandler___block_invoke_4(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) arrayForKey:@"_DKCloudSyncDevices"];
  if ([v1 count] >= 2)
  {
    v2 = +[_DKSyncPeerStatusTracker sharedInstance];
    v3 = [v2 allPeers];
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-1728000.0];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if (([v10 me] & 1) == 0)
          {
            v11 = [v10 lastSeenDate];
            v12 = v11;
            if (!v11 || ([v11 timeIntervalSinceNow], v14 = v13, objc_msgSend(v4, "timeIntervalSinceNow"), v14 < v15))
            {
              [v2 setLastSeenDate:v4 onPeer:v10];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }
}

void __71___DKCloudUtilities__updateNumberOfSyncedDevicesWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    OUTLINED_FUNCTION_3_4(v3, a2, *(a1 + 40));
  }
}

void __48___DKCloudUtilities_deleteRemoteStateWithReply___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [a1 domain];
  [a1 code];
  v5 = 138543874;
  v6 = v4;
  OUTLINED_FUNCTION_4_3();
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Failed to delete zones: %{public}@:%lld (%@)", &v5, 0x20u);
}

void __86___DKCloudUtilities__performUpdateNumberOfSyncedDevicesWithAttempt_completionHandler___block_invoke_3_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 40);
  v6 = [a2 domain];
  v7 = 138413058;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  v11 = 2048;
  v12 = [a2 code];
  v13 = 2112;
  v14 = a2;
  _os_log_debug_impl(&dword_191750000, a3, OS_LOG_TYPE_DEBUG, "Failed to fetch record zone changes for %@: %{public}@:%lld (%@)", &v7, 0x2Au);
}

void __86___DKCloudUtilities__performUpdateNumberOfSyncedDevicesWithAttempt_completionHandler___block_invoke_3_cold_3(NSObject *a1, uint64_t a2, void *a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_191750000, a1, OS_LOG_TYPE_INFO, "Will retry fetching number of synced devices", v6, 2u);
  }

  [(_DKCloudUtilities *)*(a2 + 56) _performUpdateNumberOfSyncedDevicesWithAttempt:*(a2 + 72) completionHandler:?];
}

@end