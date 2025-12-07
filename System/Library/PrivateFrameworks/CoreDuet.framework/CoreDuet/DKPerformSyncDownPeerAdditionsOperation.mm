@interface DKPerformSyncDownPeerAdditionsOperation
@end

@implementation DKPerformSyncDownPeerAdditionsOperation

uint64_t __87___DKPerformSyncDownPeerAdditionsOperation__updateEventStatsWithIsNewestMissingWindow___block_invoke()
{
  v0 = [_DKEventTypeStatsCounter counterInCollection:@"sync_down_additions_window" withEventName:@"age" eventType:&unk_1F05EF5A8 eventTypePossibleValues:?];
  v1 = _updateEventStatsWithIsNewestMissingWindow__syncDownAdditionsWindowAgeCounter;
  _updateEventStatsWithIsNewestMissingWindow__syncDownAdditionsWindowAgeCounter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __96___DKPerformSyncDownPeerAdditionsOperation__updateEventStatsWithPreviousSyncDate_transportType___block_invoke()
{
  v0 = [_DKEventTypeStatsTimerCounter counterInCollection:@"sync_down_additions_cadence" withEventName:@"transport" eventType:&unk_1F05EF5C0 eventTypePossibleValues:?];
  v1 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceByTransportCounter_2;
  _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceByTransportCounter_2 = v0;

  v2 = [_DKEventStatsTimerCounter counterInCollection:@"sync_down_additions_cadence" withEventName:?];
  v3 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceCounter_2;
  _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceCounter_2 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __110___DKPerformSyncDownPeerAdditionsOperation__updateEventStatsWithSyncLatencyOfEvent_ingressDate_transportType___block_invoke()
{
  v0 = [_DKEventTypeStatsTimerCounter counterInCollection:@"sync_down_additions_latency" withEventName:@"transport" eventType:&unk_1F05EF5D8 eventTypePossibleValues:?];
  v1 = _updateEventStatsWithSyncLatencyOfEvent_ingressDate_transportType__syncDownAdditionsLatencyByTransportCounter;
  _updateEventStatsWithSyncLatencyOfEvent_ingressDate_transportType__syncDownAdditionsLatencyByTransportCounter = v0;

  v2 = [_DKEventStatsTimerCounter counterInCollection:@"sync_down_additions_latency" withEventName:?];
  v3 = _updateEventStatsWithSyncLatencyOfEvent_ingressDate_transportType__syncDownAdditionsLatencyCounter;
  _updateEventStatsWithSyncLatencyOfEvent_ingressDate_transportType__syncDownAdditionsLatencyCounter = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __102___DKPerformSyncDownPeerAdditionsOperation__updateEventStatsWithTotal_streamNameCounts_transportType___block_invoke()
{
  v0 = [_DKEventStatsCounter counterInCollection:@"sync_down_additions_total" withEventName:?];
  v1 = _updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsTotalCounter;
  _updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsTotalCounter = v0;

  v2 = [_DKEventTypeStatsCounter counterInCollection:@"sync_down_additions_total_by_transport" withEventName:@"transport" eventType:&unk_1F05EF5F0 eventTypePossibleValues:?];
  v3 = _updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsTotalByTransportCounter;
  _updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsTotalByTransportCounter = v2;

  v4 = objc_opt_new();
  v5 = _updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsCountersByStreamName;
  _updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsCountersByStreamName = v4;

  return MEMORY[0x1EEE66BB8](v4, v5);
}

void __93___DKPerformSyncDownPeerAdditionsOperation_performSyncDownPeerAdditionsWithCompletedWindows___block_invoke_cold_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log, int buf, int a12, __int128 a13, __CFString *a14, __int128 a15, __int128 a16, uint64_t a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_28_3();
  a32 = v33;
  a33 = v34;
  loga = v35;
  v37 = v36;
  v39 = v38;
  a21 = *MEMORY[0x1E69E9840];
  v40 = [objc_opt_class() description];
  if ([OUTLINED_FUNCTION_26_4(*(v39 + 32)) transportType] == 8)
  {
    v41 = "up to";
  }

  else
  {
    v41 = "down from";
  }

  v42 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
  v43 = &stru_1F05B9908;
  if ([OUTLINED_FUNCTION_5_13(*(v39 + 32)) me])
  {
    v44 = @"pseudo ";
  }

  else
  {
    v44 = &stru_1F05B9908;
  }

  v45 = [OUTLINED_FUNCTION_5_13(*(v39 + 32)) identifier];
  v46 = [OUTLINED_FUNCTION_5_13(*(v39 + 32)) model];
  if (v46)
  {
    v47 = MEMORY[0x1E696AEC0];
    v42 = [OUTLINED_FUNCTION_5_13(*(v39 + 32)) model];
    v43 = [v47 stringWithFormat:@" (%@)"];
  }

  v48 = [OUTLINED_FUNCTION_26_4(*(v39 + 32)) name];
  v49 = [v37 domain];
  [v37 code];
  OUTLINED_FUNCTION_24_4();
  *(&a13 + 6) = v41;
  HIWORD(a13) = 2114;
  a14 = v44;
  LOWORD(a15) = 2114;
  *(&a15 + 2) = v45;
  WORD5(a15) = 2114;
  *(&a15 + 12) = v43;
  WORD2(a16) = 2114;
  *(&a16 + 6) = v48;
  HIWORD(a16) = 2114;
  a17 = v49;
  LOWORD(a18) = 2048;
  *(&a18 + 2) = v50;
  WORD5(a18) = 2112;
  *(&a18 + 12) = v37;
  _os_log_error_impl(&dword_191750000, loga, OS_LOG_TYPE_ERROR, "%{public}@: Failed during additions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@: %{public}@:%lld (%@)", &buf, 0x5Cu);

  if (v46)
  {
  }

  OUTLINED_FUNCTION_29_2();
}

void __93___DKPerformSyncDownPeerAdditionsOperation_performSyncDownPeerAdditionsWithCompletedWindows___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() description];
  if ([OUTLINED_FUNCTION_26_4(*(a1 + 32)) transportType] == 8)
  {
    v5 = "up to";
  }

  else
  {
    v5 = "down from";
  }

  v6 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
  v7 = &stru_1F05B9908;
  if ([OUTLINED_FUNCTION_5_13(*(a1 + 32)) me])
  {
    v8 = @"pseudo ";
  }

  else
  {
    v8 = &stru_1F05B9908;
  }

  v9 = [OUTLINED_FUNCTION_5_13(*(a1 + 32)) identifier];
  v10 = [OUTLINED_FUNCTION_5_13(*(a1 + 32)) model];
  if (v10)
  {
    v11 = MEMORY[0x1E696AEC0];
    v6 = [OUTLINED_FUNCTION_5_13(*(a1 + 32)) model];
    v7 = [v11 stringWithFormat:@" (%@)", v6];
  }

  v12 = [OUTLINED_FUNCTION_26_4(*(a1 + 32)) name];
  OUTLINED_FUNCTION_24_4();
  v16 = v5;
  v17 = 2114;
  v18 = v8;
  v19 = 2114;
  v20 = v9;
  v21 = 2114;
  v22 = v7;
  v23 = 2114;
  v24 = v13;
  OUTLINED_FUNCTION_15_0(&dword_191750000, a2, v14, "%{public}@: Skipped additions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ due to no changes", v15);

  if (v10)
  {
  }
}

@end