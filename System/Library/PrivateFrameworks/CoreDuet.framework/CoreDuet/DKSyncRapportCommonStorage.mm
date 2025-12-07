@interface DKSyncRapportCommonStorage
@end

@implementation DKSyncRapportCommonStorage

uint64_t __45___DKSyncRapportCommonStorage_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_3;
  sharedInstance_sharedInstance_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __58___DKSyncRapportCommonStorage__additionalFlagsForInternal__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_content())
  {
    v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreDuet"];
    v3 = [v2 stringForKey:@"ForcedRapportConnectionType"];
    v4 = v3;
    if (!v3)
    {
LABEL_17:

      return;
    }

    if ([v3 isEqualToString:@"Cloud"])
    {
      v5 = 0x10000000;
    }

    else if ([v4 isEqualToString:@"BLE"])
    {
      v5 = 0x8000;
    }

    else if ([v4 isEqualToString:@"AWDL"])
    {
      v5 = 0x20000;
    }

    else if ([v4 isEqualToString:@"USB"])
    {
      v5 = 0x40000;
    }

    else
    {
      if (([v4 isEqualToString:@"L2CAP"] & 1) == 0)
      {
        v8 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __58___DKSyncRapportCommonStorage__additionalFlagsForInternal__block_invoke_cold_1(a1, v4);
        }

        if (!_MergedGlobals_6)
        {
          goto LABEL_17;
        }

        goto LABEL_14;
      }

      v5 = 256;
    }

    _MergedGlobals_6 = v5;
LABEL_14:
    v6 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [objc_opt_class() description];
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_INFO, "%{public}@: Forcing rapport connections through %@", &v9, 0x16u);
    }

    goto LABEL_17;
  }
}

void __65___DKSyncRapportCommonStorage_handshakeWithDuetSyncPeer_orError___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65___DKSyncRapportCommonStorage_handshakeWithDuetSyncPeer_orError___block_invoke_2;
  v9[3] = &unk_1E736ACB0;
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  [v3 fetchSourceDeviceIDFromPeer:v2 highPriority:1 completion:v9];
}

void __65___DKSyncRapportCommonStorage_handshakeWithDuetSyncPeer_orError___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E695DF00] date];
  +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [*(a1 + 32) transportType], *(a1 + 40), v10, v7 == 0);
  if (v7)
  {
    v11 = [v7 UUIDString];
    if (v8)
    {
      v12 = [*(a1 + 48) version];
      v13 = [v8 isEqualToString:v12];

      if ((v13 & 1) == 0)
      {
        v14 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v38 = [objc_opt_class() description];
          v36 = [*(a1 + 48) version];
          v15 = [*(a1 + 48) me];
          v16 = &stru_1F05B9908;
          v17 = @"pseudo ";
          if (!v15)
          {
            v17 = &stru_1F05B9908;
          }

          v33 = v17;
          v35 = [*(a1 + 48) identifier];
          v18 = [*(a1 + 48) model];
          if (v18)
          {
            v19 = MEMORY[0x1E696AEC0];
            v32 = [*(a1 + 48) model];
            v16 = [v19 stringWithFormat:@" (%@)", v32];
          }

          *buf = 138544642;
          v41 = v38;
          v42 = 2114;
          v43 = v36;
          v44 = 2114;
          v45 = v8;
          v46 = 2114;
          v47 = v33;
          v48 = 2114;
          v49 = v35;
          v50 = 2114;
          v51 = v16;
          _os_log_impl(&dword_191750000, v14, OS_LOG_TYPE_INFO, "%{public}@: Will change version from %{public}@ to %{public}@ for %{public}@peer %{public}@%{public}@", buf, 0x3Eu);
          if (v18)
          {
          }
        }
      }
    }

    [*(a1 + 56) setSourceDeviceID:v11 version:v8 peer:*(a1 + 48)];
    [*(a1 + 56) addActiveTransports:objc_msgSend(*(a1 + 32) toPeer:{"transportType"), *(a1 + 48)}];
    v23 = *(a1 + 56);
    v24 = [MEMORY[0x1E695DF00] date];
    [v23 setLastSeenDate:v24 onPeer:*(a1 + 48)];

    [*(*(a1 + 32) + 80) addObject:v11];
  }

  else
  {
    v20 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v39 = [objc_opt_class() description];
      v25 = [*(a1 + 48) me];
      v26 = &stru_1F05B9908;
      v27 = @"pseudo ";
      if (!v25)
      {
        v27 = &stru_1F05B9908;
      }

      v37 = v27;
      v28 = [*(a1 + 48) identifier];
      v29 = [*(a1 + 48) model];
      if (v29)
      {
        v30 = MEMORY[0x1E696AEC0];
        v34 = [*(a1 + 48) model];
        v26 = [v30 stringWithFormat:@" (%@)", v34];
      }

      v31 = [v9 domain];
      *buf = 138544898;
      v41 = v39;
      v42 = 2114;
      v43 = v37;
      v44 = 2114;
      v45 = v28;
      v46 = 2114;
      v47 = v26;
      v48 = 2114;
      v49 = v31;
      v50 = 2048;
      v51 = [v9 code];
      v52 = 2112;
      v53 = v9;
      _os_log_error_impl(&dword_191750000, v20, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch source device id from %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

      if (v29)
      {
      }
    }

    if ([v9 code] == -6714)
    {
      v21 = [v9 domain];
      v22 = [v21 isEqualToString:*MEMORY[0x1E69C6BC8]];

      if (v22)
      {
        [*(a1 + 56) removeActiveTransports:objc_msgSend(*(a1 + 32) fromPeer:{"transportType"), *(a1 + 48)}];
      }
    }
  }
}

void __65___DKSyncRapportCommonStorage_handshakeWithDuetSyncPeer_orError___block_invoke_156(id *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [objc_opt_class() description];
    v4 = &stru_1F05B9908;
    if ([a1[5] me])
    {
      v5 = @"pseudo ";
    }

    else
    {
      v5 = &stru_1F05B9908;
    }

    v6 = [a1[5] identifier];
    v7 = [a1[5] model];
    if (v7)
    {
      v8 = MEMORY[0x1E696AEC0];
      a1 = [a1[5] model];
      v4 = [v8 stringWithFormat:@" (%@)", a1];
    }

    *buf = 138544130;
    v10 = v3;
    v11 = 2114;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_191750000, v2, OS_LOG_TYPE_INFO, "%{public}@: Throttled fetchSourceDeviceIDFromPeer for %{public}@peer %{public}@%{public}@", buf, 0x2Au);
    if (v7)
    {
    }
  }
}

void __55___DKSyncRapportCommonStorage_handleActivateWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55___DKSyncRapportCommonStorage_handleActivateWithError___block_invoke_cold_1(a1, v3);
    }

    v5 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55___DKSyncRapportCommonStorage_handleActivateWithError___block_invoke_cold_2(a1, v5);
    }
  }
}

uint64_t __83___DKSyncRapportCommonStorage_fetchSourceDeviceIDFromPeer_highPriority_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

uint64_t __95___DKSyncRapportCommonStorage_sendRequestID_request_peer_highPriority_options_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  [(_DKSyncRapportCommonStorage *)*(a1 + 32) handleActivateCompanionLinkClient:*(a1 + 48) forPeer:v7 error:?];
  if (v7)
  {
    [*(a1 + 40) invalidate];
    v3 = *(a1 + 80);
    if (v3)
    {
      (*(v3 + 16))(v3, 0, 0, v7);
    }
  }

  else
  {
    v4 = *(a1 + 56);
    if (*(a1 + 88) == 1)
    {
      if ([*(a1 + 56) count])
      {
        v5 = [*(a1 + 56) mutableCopy];
        [v5 addEntriesFromDictionary:*(*(a1 + 32) + 16)];
      }

      else
      {
        v5 = *(*(a1 + 32) + 16);
      }

      v4 = v5;
    }

    [(_DKSyncRapportCommonStorage *)*(a1 + 32) sendRequestID:*(a1 + 72) request:*(a1 + 48) peer:*(a1 + 40) client:v4 options:*(a1 + 80) responseHandler:?];
  }

  return MEMORY[0x1EEE66C30]();
}

void __89___DKSyncRapportCommonStorage_sendRequestID_request_peer_client_options_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  v9 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v9);

  if (v8 && [v8 code] == -71156)
  {
    v10 = [v8 domain];
    v11 = [v10 isEqualToString:*MEMORY[0x1E69C6BC8]];
  }

  else
  {
    v11 = 0;
  }

  [(_DKEventTypeResultStatsCounter *)*(*(a1 + 32) + 24) incrementCountWithTypeValue:v11 success:?];
  v12 = *(a1 + 56);
  if (v12)
  {
    (*(v12 + 16))(v12, v13, v7, v8);
  }

  --*(*(a1 + 32) + 56);
  [*(a1 + 48) invalidate];
  usleep(0x186A0u);
}

void __49___DKSyncRapportCommonStorage_handleInvalidation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(_DKSyncRapportCommonStorage *)WeakRetained startRapport];
}

void __58___DKSyncRapportCommonStorage__additionalFlagsForInternal__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __55___DKSyncRapportCommonStorage_handleActivateWithError___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = [objc_opt_class() description];
  v4 = [a2 domain];
  [a2 code];
  OUTLINED_FUNCTION_27_4();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void __55___DKSyncRapportCommonStorage_handleActivateWithError___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

@end