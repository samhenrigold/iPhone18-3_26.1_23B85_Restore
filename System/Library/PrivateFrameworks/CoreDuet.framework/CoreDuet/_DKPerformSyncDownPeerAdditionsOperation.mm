@interface _DKPerformSyncDownPeerAdditionsOperation
+ (void)_updateEventStatsWithIsNewestMissingWindow:(uint64_t)window;
+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)date transportType:;
+ (void)_updateEventStatsWithSyncLatencyOfEvent:(void *)event ingressDate:(uint64_t)date transportType:;
+ (void)_updateEventStatsWithTotal:(void *)total streamNameCounts:(uint64_t)counts transportType:;
- (id)initWithParent:(void *)parent localStorage:(void *)storage transport:(void *)transport peer:(void *)peer policy:(void *)policy type:;
- (void)coalesceRedundantOverlappingWindows;
- (void)endOperation;
- (void)handleFetchedEvents:(void *)events completedWindows:(void *)windows missingWindows:;
- (void)main;
- (void)performSyncDownPeerAdditions;
- (void)performSyncDownPeerAdditionsWithCompletedWindows:(uint64_t)windows;
- (void)performSyncDownPeerAdditionsWithDidPrewarm:(void *)prewarm orError:;
- (void)performSyncDownPeerAdditionsWithHighWaterMark:(uint64_t)mark orError:(uint64_t)error;
- (void)updateEvents:(void *)events withSourceDeviceID:;
@end

@implementation _DKPerformSyncDownPeerAdditionsOperation

- (void)main
{
  v3 = objc_opt_class();
  if ([_DKSync2Coordinator shouldDeferSyncOperationWithClass:v3 syncType:self->_type transport:self->_transport peer:0 policy:self->_policy])
  {

    [(_DKPerformSyncDownPeerAdditionsOperation *)self endOperation];
  }

  else
  {

    [(_DKPerformSyncDownPeerAdditionsOperation *)self performSyncDownPeerAdditions:v4];
  }
}

+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)date transportType:
{
  v12 = a2;
  objc_opt_self();
  if (_updateEventStatsWithPreviousSyncDate_transportType__syncCadenceInitialized_2 != -1)
  {
    +[_DKPerformSyncDownPeerAdditionsOperation _updateEventStatsWithPreviousSyncDate:transportType:];
  }

  v4 = v12;
  if (v12)
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    v6 = [v12 isEqualToDate:distantPast];

    v4 = v12;
    if ((v6 & 1) == 0)
    {
      v7 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceByTransportCounter_2;
      date = [MEMORY[0x1E695DF00] date];
      if (date == 1)
      {
        v9 = @"Rapport";
      }

      else
      {
        v9 = @"Cloud";
      }

      [(_DKEventTypeStatsTimerCounter *)v7 addTimingWithStartDate:v12 endDate:date typeValue:v9];

      v10 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceCounter_2;
      date2 = [MEMORY[0x1E695DF00] date];
      [(_DKEventStatsTimerCounter *)v10 addTimingWithStartDate:v12 endDate:date2];

      v4 = v12;
    }
  }
}

+ (void)_updateEventStatsWithIsNewestMissingWindow:(uint64_t)window
{
  objc_opt_self();
  if (_updateEventStatsWithIsNewestMissingWindow__syncDownAdditionsWindowAgeCounterInitialized != -1)
  {
    +[_DKPerformSyncDownPeerAdditionsOperation _updateEventStatsWithIsNewestMissingWindow:];
  }

  v3 = _updateEventStatsWithIsNewestMissingWindow__syncDownAdditionsWindowAgeCounter;
  if (a2)
  {
    v4 = @"newest";
  }

  else
  {
    v4 = @"older";
  }

  [(_DKEventTypeStatsCounter *)v3 incrementCountByNumber:v4 typeValue:?];
}

+ (void)_updateEventStatsWithSyncLatencyOfEvent:(void *)event ingressDate:(uint64_t)date transportType:
{
  eventCopy = event;
  v7 = a2;
  objc_opt_self();
  if (_updateEventStatsWithSyncLatencyOfEvent_ingressDate_transportType__syncDownAdditionsLatencyInitialized != -1)
  {
    +[_DKPerformSyncDownPeerAdditionsOperation _updateEventStatsWithSyncLatencyOfEvent:ingressDate:transportType:];
  }

  creationDate = [v7 creationDate];

  if (date == 1)
  {
    v8 = @"Rapport";
  }

  else
  {
    v8 = @"Cloud";
  }

  [(_DKEventTypeStatsTimerCounter *)_updateEventStatsWithSyncLatencyOfEvent_ingressDate_transportType__syncDownAdditionsLatencyByTransportCounter addTimingWithStartDate:creationDate endDate:eventCopy typeValue:v8];
  [(_DKEventStatsTimerCounter *)_updateEventStatsWithSyncLatencyOfEvent_ingressDate_transportType__syncDownAdditionsLatencyCounter addTimingWithStartDate:creationDate endDate:eventCopy];
}

+ (void)_updateEventStatsWithTotal:(void *)total streamNameCounts:(uint64_t)counts transportType:
{
  v23 = *MEMORY[0x1E69E9840];
  totalCopy = total;
  objc_opt_self();
  if (_updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsCounterInitialized != -1)
  {
    +[_DKPerformSyncDownPeerAdditionsOperation _updateEventStatsWithTotal:streamNameCounts:transportType:];
  }

  [(_DKEventStatsCounter *)_updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsTotalCounter incrementCountByNumber:a2];
  if (counts == 1)
  {
    v7 = @"Rapport";
  }

  else
  {
    v7 = @"Cloud";
  }

  [(_DKEventTypeStatsCounter *)_updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsTotalByTransportCounter incrementCountByNumber:a2 typeValue:v7];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = totalCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [_updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsCountersByStreamName objectForKeyedSubscript:v13];
        if (!v14)
        {
          v15 = MEMORY[0x1E696AEC0];
          v16 = [_DKEventStatsUtilities safeStringWithString:v13];
          v17 = [v15 stringWithFormat:@"sync_down_additions_stream%@", v16];

          v14 = [_DKEventStatsCounter counterInCollection:v17 withEventName:?];
          [_updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsCountersByStreamName setObject:v14 forKeyedSubscript:v13];
        }

        -[_DKEventStatsCounter incrementCountByNumber:](v14, [v8 countForObject:v13]);
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)endOperation
{
  v2.receiver = self;
  v2.super_class = _DKPerformSyncDownPeerAdditionsOperation;
  [(_DKSyncCompositeOperation *)&v2 endOperation];
}

- (id)initWithParent:(void *)parent localStorage:(void *)storage transport:(void *)transport peer:(void *)peer policy:(void *)policy type:
{
  parentCopy = parent;
  storageCopy = storage;
  transportCopy = transport;
  peerCopy = peer;
  policyCopy = policy;
  if (self)
  {
    v22.receiver = self;
    v22.super_class = _DKPerformSyncDownPeerAdditionsOperation;
    v17 = objc_msgSendSuper2(&v22, sel_initWithParent_, a2, storageCopy, parentCopy);
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 37, parent);
      objc_storeStrong(v18 + 38, storage);
      objc_storeStrong(v18 + 39, transport);
      objc_storeStrong(v18 + 40, peer);
      objc_storeStrong(v18 + 41, policy);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)performSyncDownPeerAdditions
{
  OUTLINED_FUNCTION_28_3();
  a34 = v35;
  a35 = v37;
  a23 = *MEMORY[0x1E69E9840];
  if (v36)
  {
    v38 = v36;
    v39 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v39);

    v40 = [*(v38 + 320) streamNamesToSyncWithSyncType:*(v38 + 328) transportType:{objc_msgSend(OUTLINED_FUNCTION_16_5(), "transportType")}];
    v41 = *(v38 + 336);
    *(v38 + 336) = v40;

    if ([*(v38 + 336) count])
    {
      v42 = *(v38 + 296);
      v43 = *(v38 + 312);
      name = [OUTLINED_FUNCTION_16_5() name];
      v45 = [v42 additionsSyncHistoryForPeer:v43 transportName:name error:0];
      v46 = *(v38 + 352);
      *(v38 + 352) = v45;

      v47 = objc_opt_class();
      if ([_DKSync2Coordinator canPerformSyncOperationWithClass:v47 syncType:*(v38 + 328) history:*(v38 + 352) transport:*(v38 + 304) peer:*(v38 + 312) policy:*(v38 + 320)])
      {
        v48 = OUTLINED_FUNCTION_16_5();
        a10 = MEMORY[0x1E69E9820];
        a11 = 3221225472;
        a12 = __72___DKPerformSyncDownPeerAdditionsOperation_performSyncDownPeerAdditions__block_invoke;
        a13 = &unk_1E73675F8;
        a14 = v38;
        [v48 prewarmFetchWithCompletion:&a10];
        goto LABEL_8;
      }
    }

    else
    {
      v49 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        v50 = [objc_opt_class() description];
        if ([OUTLINED_FUNCTION_16_5() transportType] == 8)
        {
          v51 = "up to";
        }

        else
        {
          v51 = "down from";
        }

        model2 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        v53 = &stru_1F05B9908;
        if ([OUTLINED_FUNCTION_20_7() me])
        {
          v54 = @"pseudo ";
        }

        else
        {
          v54 = &stru_1F05B9908;
        }

        identifier = [OUTLINED_FUNCTION_20_7() identifier];
        model = [OUTLINED_FUNCTION_20_7() model];
        if (model)
        {
          v57 = MEMORY[0x1E696AEC0];
          model2 = [OUTLINED_FUNCTION_20_7() model];
          v53 = [v57 stringWithFormat:@" (%@)"];
        }

        name2 = [OUTLINED_FUNCTION_16_5() name];
        LODWORD(a15) = 138544642;
        *(&a15 + 4) = v50;
        WORD6(a15) = 2082;
        *(&a15 + 14) = v51;
        a18 = 2114;
        a19 = v54;
        LOWORD(a20) = 2114;
        *(&a20 + 2) = identifier;
        WORD5(a20) = 2114;
        *(&a20 + 12) = v53;
        WORD2(a21) = 2114;
        *(&a21 + 6) = name2;
        OUTLINED_FUNCTION_15_0(&dword_191750000, v49, v59, "%{public}@: Skipped fetching additions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ due to no streams to sync", &a15);

        if (model)
        {
        }
      }
    }

    [v38 endOperation];
  }

LABEL_8:
  OUTLINED_FUNCTION_29_2();
}

- (void)performSyncDownPeerAdditionsWithDidPrewarm:(void *)prewarm orError:
{
  v43 = *MEMORY[0x1E69E9840];
  prewarmCopy = prewarm;
  if (self)
  {
    v6 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v6);

    if (prewarmCopy)
    {
      errors = [self errors];
      [errors addObject:prewarmCopy];
LABEL_9:

      [self endOperation];
      goto LABEL_10;
    }

    model2 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    if (!a2 || ![OUTLINED_FUNCTION_7_9() hasAdditionsFlagForPeer:*(self + 312)])
    {
      errors = +[_CDLogging syncChannel];
      if (os_log_type_enabled(errors, OS_LOG_TYPE_DEBUG))
      {
        v28 = [objc_opt_class() description];
        if ([OUTLINED_FUNCTION_7_9() transportType] == 8)
        {
          v13 = "up to";
        }

        else
        {
          v13 = "down from";
        }

        v14 = &stru_1F05B9908;
        if ([OUTLINED_FUNCTION_0_26() me])
        {
          v15 = @"pseudo ";
        }

        else
        {
          v15 = &stru_1F05B9908;
        }

        identifier = [OUTLINED_FUNCTION_0_26() identifier];
        model = [OUTLINED_FUNCTION_0_26() model];
        if (model)
        {
          v17 = MEMORY[0x1E696AEC0];
          model2 = [OUTLINED_FUNCTION_0_26() model];
          v14 = [v17 stringWithFormat:@" (%@)", model2];
        }

        name = [OUTLINED_FUNCTION_7_9() name];
        *buf = 138544642;
        v32 = v28;
        v33 = 2082;
        v34 = v13;
        v35 = 2114;
        v36 = v15;
        v37 = 2114;
        v38 = identifier;
        v39 = 2114;
        v40 = v14;
        v41 = 2114;
        v42 = name;
        OUTLINED_FUNCTION_15_0(&dword_191750000, errors, v19, "%{public}@: Skipping fetching additions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ due to no changes to sync", buf);

        if (model)
        {
        }
      }

      goto LABEL_9;
    }

    v9 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v29 = [objc_opt_class() description];
      v20 = &stru_1F05B9908;
      if ([OUTLINED_FUNCTION_0_26() me])
      {
        v21 = @"pseudo ";
      }

      else
      {
        v21 = &stru_1F05B9908;
      }

      identifier2 = [OUTLINED_FUNCTION_0_26() identifier];
      model3 = [OUTLINED_FUNCTION_0_26() model];
      if (model3)
      {
        v24 = MEMORY[0x1E696AEC0];
        model4 = [OUTLINED_FUNCTION_0_26() model];
        v20 = [v24 stringWithFormat:@" (%@)", model4];
      }

      name2 = [OUTLINED_FUNCTION_7_9() name];
      *buf = 138544386;
      v32 = v29;
      v33 = 2114;
      v34 = v21;
      v35 = 2114;
      v36 = identifier2;
      v37 = 2114;
      v38 = v20;
      v39 = 2114;
      v40 = name2;
      _os_log_debug_impl(&dword_191750000, v9, OS_LOG_TYPE_DEBUG, "%{public}@: Performing sync down of additions from %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x34u);

      if (model3)
      {
      }
    }

    v10 = OUTLINED_FUNCTION_7_9();
    v11 = *(self + 312);
    v12 = *(self + 344);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __95___DKPerformSyncDownPeerAdditionsOperation_performSyncDownPeerAdditionsWithDidPrewarm_orError___block_invoke;
    v30[3] = &unk_1E7369B88;
    v30[4] = self;
    [v10 fetchAdditionsHighWaterMarkWithPeer:v11 highPriority:v12 completion:v30];
  }

LABEL_10:
}

- (void)performSyncDownPeerAdditionsWithHighWaterMark:(uint64_t)mark orError:(uint64_t)error
{
  OUTLINED_FUNCTION_28_3();
  a34 = v35;
  a35 = v36;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  a23 = *MEMORY[0x1E69E9840];
  v43 = v39;
  v44 = v38;
  v45 = v44;
  if (v42)
  {
    if (v44)
    {
      errors = [v42 errors];
      [errors addObject:v45];
    }

    else
    {
      if (v43)
      {
        distantPast = [MEMORY[0x1E695DF00] distantPast];
        v48 = [v43 isEqualToDate:distantPast];

        if ((v48 & 1) == 0)
        {
          objc_storeStrong((v42 + 376), v40);
          [(_DKPerformSyncDownPeerAdditionsOperation *)v42 performSyncDownPeerAdditionsWithCompletedWindows:?];
          goto LABEL_9;
        }
      }

      v49 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        v62 = [objc_opt_class() description];
        transportType = [*(v42 + 304) transportType];
        v51 = "down from";
        if (transportType == 8)
        {
          v51 = "up to";
        }

        v61 = v51;
        v52 = [OUTLINED_FUNCTION_27_3() me];
        v53 = &stru_1F05B9908;
        v54 = @"pseudo ";
        if (!v52)
        {
          v54 = &stru_1F05B9908;
        }

        v60 = v54;
        identifier = [OUTLINED_FUNCTION_27_3() identifier];
        model = [OUTLINED_FUNCTION_27_3() model];
        if (model)
        {
          v57 = MEMORY[0x1E696AEC0];
          [OUTLINED_FUNCTION_27_3() model];
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_21_7();
          v53 = [v57 stringWithFormat:@" (%@)"];
        }

        name = [*(v42 + 304) name];
        LODWORD(a15) = 138544642;
        *(&a15 + 4) = v62;
        WORD6(a15) = 2082;
        *(&a15 + 14) = v61;
        a18 = 2114;
        a19 = v60;
        LOWORD(a20) = 2114;
        *(&a20 + 2) = identifier;
        WORD5(a20) = 2114;
        *(&a20 + 12) = v53;
        WORD2(a21) = 2114;
        *(&a21 + 6) = name;
        OUTLINED_FUNCTION_15_0(&dword_191750000, v49, v59, "%{public}@: Will not attempt additions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ because peer has not yet synced", &a15);

        if (model)
        {
        }
      }

      [*(v42 + 304) setHasAdditionsFlag:0 forPeer:*(v42 + 312)];
    }

    [v42 endOperation];
  }

LABEL_9:

  OUTLINED_FUNCTION_29_2();
}

- (void)performSyncDownPeerAdditionsWithCompletedWindows:(uint64_t)windows
{
  v165 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (windows)
  {
    v4 = +[_CDLogging syncChannel];
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
    v6 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    if (v3)
    {
      if (!v5)
      {
        goto LABEL_7;
      }

      v144 = v3;
      v7 = [objc_opt_class() description];
      [*(windows + 304) transportType];
      v142 = &stru_1F05B9908;
      [OUTLINED_FUNCTION_9_9() me];
      identifier = [OUTLINED_FUNCTION_9_9() identifier];
      model = [OUTLINED_FUNCTION_9_9() model];
      if (model)
      {
        v65 = MEMORY[0x1E696AEC0];
        model2 = [*(windows + 312) model];
        v142 = [v65 stringWithFormat:@" (%@)", model2];
      }

      name = [*(windows + 304) name];
      dk_localtimeString = [(NSDate *)*(windows + 376) dk_localtimeString];
      OUTLINED_FUNCTION_1_21();
      v68 = "%{public}@: Will attempt another additions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ with high water mark %{public}@";
    }

    else
    {
      if (!v5)
      {
        goto LABEL_7;
      }

      v144 = 0;
      v7 = [objc_opt_class() description];
      [*(windows + 304) transportType];
      v142 = &stru_1F05B9908;
      [OUTLINED_FUNCTION_9_9() me];
      identifier = [OUTLINED_FUNCTION_9_9() identifier];
      model = [OUTLINED_FUNCTION_9_9() model];
      if (model)
      {
        v84 = MEMORY[0x1E696AEC0];
        model2 = [*(windows + 312) model];
        v142 = [v84 stringWithFormat:@" (%@)", model2];
      }

      name = [*(windows + 304) name];
      dk_localtimeString = [(NSDate *)*(windows + 376) dk_localtimeString];
      OUTLINED_FUNCTION_1_21();
      v68 = "%{public}@: Will attempt additions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ with high water mark %{public}@";
    }

    _os_log_debug_impl(&dword_191750000, v4, OS_LOG_TYPE_DEBUG, v68, buf, 0x48u);

    if (model)
    {
    }

    v3 = v144;
    v6 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
LABEL_7:

    if (!*(windows + 384))
    {
      date = [MEMORY[0x1E695DF00] date];
      v12 = *(windows + 368);
      *(windows + 368) = date;
    }

    maxSyncPeriodInDays = [*(windows + 320) maxSyncPeriodInDays];
    v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-(86400 * maxSyncPeriodInDays)];
    v15 = *(windows + 368);
    [v15 timeIntervalSinceReferenceDate];
    v17 = v16;
    [v14 timeIntervalSinceReferenceDate];
    v143 = v15;
    v145 = v14;
    if (v17 - v18 < [*(windows + 320) minSyncWindowInSeconds])
    {
      v19 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v141 = [objc_opt_class() description];
        dk_localtimeString2 = [(NSDate *)v145 dk_localtimeString];
        dk_localtimeString3 = [(NSDate *)v15 dk_localtimeString];
        v60 = [OUTLINED_FUNCTION_0_26() me];
        v125 = &stru_1F05B9908;
        v62 = @"pseudo ";
        if (!v60)
        {
          v62 = &stru_1F05B9908;
        }

        dk_localtimeString4 = v62;
        identifier2 = [OUTLINED_FUNCTION_0_26() identifier];
        model3 = [OUTLINED_FUNCTION_0_26() model];
        if (model3)
        {
          v79 = MEMORY[0x1E696AEC0];
          model4 = [OUTLINED_FUNCTION_0_26() model];
          v125 = [v79 stringWithFormat:@" (%@)", model4];
        }

        *buf = 138544642;
        OUTLINED_FUNCTION_12_5();
        v152 = dk_localtimeString2;
        v153 = v80;
        v154 = v81;
        v155 = v80;
        OUTLINED_FUNCTION_22_5();
        v158 = identifier2;
        v159 = v82;
        v160 = v125;
        OUTLINED_FUNCTION_15_0(&dword_191750000, v19, v83, "%{public}@: No more missing additions windows found between %{public}@ and %{public}@ for %{public}@peer %{public}@%{public}@", buf);
        if (model3)
        {
        }
      }

      v140 = 0;
      v20 = 0;
      v14 = v145;
      if (![0 count])
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v21 = *(windows + 392);
    if (v21)
    {
      v22 = [_DKSyncWindow sortedUnionOfSortedWindows:v21 andSortedWindows:v3];
      v140 = 0;
      v23 = *(windows + 392);
      *(windows + 392) = v22;
    }

    else
    {
      v24 = *(windows + 296);
      v25 = *(windows + v6[959]);
      v148 = 0;
      v26 = [v24 sortedSyncDownWindowsOverlappingBetweenDate:v14 andDate:v15 peer:v25 error:&v148];
      v27 = v148;
      v28 = *(windows + 392);
      *(windows + 392) = v26;

      v140 = v27;
      if (!v27)
      {
        v140 = 0;
LABEL_18:
        v29 = *(windows + 392);
        if (!v29)
        {
          v20 = 0;
          goto LABEL_28;
        }

        v20 = [_DKSyncWindow windowsMissingFromSortedWindows:v29 windowMinimumDate:v14 windowMaximumDate:v15];
        v30 = [v20 count];
        v31 = +[_CDLogging syncChannel];
        v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
        if (v30)
        {
          if (v32)
          {
            v135 = [objc_opt_class() description];
            [v20 count];
            v130 = [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
            [OUTLINED_FUNCTION_23_4() count];
            v126 = [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
            dk_localtimeString4 = [(NSDate *)v14 dk_localtimeString];
            dk_localtimeString5 = [(NSDate *)v15 dk_localtimeString];
            v33 = [OUTLINED_FUNCTION_3_18() me];
            v34 = &stru_1F05B9908;
            v35 = @"pseudo ";
            if (!v33)
            {
              v35 = &stru_1F05B9908;
            }

            v119 = v35;
            identifier3 = [OUTLINED_FUNCTION_3_18() identifier];
            model5 = [OUTLINED_FUNCTION_3_18() model];
            if (model5)
            {
              v95 = MEMORY[0x1E696AEC0];
              [OUTLINED_FUNCTION_3_18() model];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_21_7();
              v34 = [v95 stringWithFormat:@" (%@)"];
            }

            OUTLINED_FUNCTION_17_8();
            v152 = v96;
            v153 = v97;
            v154 = v126;
            v155 = 2114;
            OUTLINED_FUNCTION_22_5();
            v158 = dk_localtimeString5;
            v159 = v98;
            v160 = v119;
            v161 = v98;
            v162 = identifier3;
            v163 = v98;
            v164 = v34;
            OUTLINED_FUNCTION_11_8();
            _os_log_debug_impl(v99, v100, v101, v102, v103, 0x52u);
            if (model5)
            {
            }

            v104 = dk_localtimeString4;
LABEL_98:
          }
        }

        else if (v32)
        {
          v139 = [objc_opt_class() description];
          [OUTLINED_FUNCTION_23_4() count];
          dk_localtimeString4 = [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
          dk_localtimeString6 = [(NSDate *)v14 dk_localtimeString];
          dk_localtimeString7 = [(NSDate *)v15 dk_localtimeString];
          v88 = [OUTLINED_FUNCTION_3_18() me];
          v118 = &stru_1F05B9908;
          v90 = @"pseudo ";
          if (!v88)
          {
            v90 = &stru_1F05B9908;
          }

          v121 = v90;
          identifier4 = [OUTLINED_FUNCTION_3_18() identifier];
          model6 = [OUTLINED_FUNCTION_3_18() model];
          if (model6)
          {
            v109 = MEMORY[0x1E696AEC0];
            model7 = [OUTLINED_FUNCTION_3_18() model];
            v118 = [v109 stringWithFormat:@" (%@)", model7];
          }

          OUTLINED_FUNCTION_17_8();
          v152 = dk_localtimeString4;
          v153 = 2114;
          v154 = v110;
          v155 = 2114;
          OUTLINED_FUNCTION_22_5();
          v158 = v121;
          v159 = v111;
          v160 = identifier4;
          v161 = v111;
          v162 = v118;
          OUTLINED_FUNCTION_11_8();
          _os_log_debug_impl(v112, v113, v114, v115, v116, 0x48u);
          if (model6)
          {
          }

          v104 = dk_localtimeString6;
          goto LABEL_98;
        }

LABEL_28:
        if (![v20 count])
        {
          v53 = v140;
          if (v140)
          {
            errors = [windows errors];
            [errors addObject:v140];

LABEL_43:
            if ([*(windows + 304) transportType] != 1)
            {
              [*(windows + 304) setHasAdditionsFlag:0 forPeer:*(windows + 312)];
            }

            [windows endOperation];
LABEL_46:

            goto LABEL_47;
          }

LABEL_39:
          v55 = OUTLINED_FUNCTION_23_4();
          if (v55)
          {
            if (*(windows + 352))
            {
              v56 = [v55 count];
              if (v56 > [*(windows + 352) lastDaySyncCount] + *(windows + 384) + 100)
              {
                v92 = +[_CDLogging syncChannel];
                if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
                {
                  v93 = [objc_opt_class() description];
                  v94 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(OUTLINED_FUNCTION_23_4(), "count")}];
                  *buf = 138543618;
                  v150 = v93;
                  v151 = 2112;
                  v152 = v94;
                  _os_log_debug_impl(&dword_191750000, v92, OS_LOG_TYPE_DEBUG, "%{public}@: Coalescing (%@) redundant overlapping windows", buf, 0x16u);
                }

                [(_DKPerformSyncDownPeerAdditionsOperation *)windows coalesceRedundantOverlappingWindows];
              }
            }
          }

          notify_post("com.apple.CoreDuet.SyncDownPeerAdditions.NoMoreDataToSync");
          v53 = 0;
          goto LABEL_43;
        }

LABEL_29:
        v37 = *(windows + 384);
        if (v37)
        {
          v38 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        }

        else
        {
          lastSyncDate = [*(windows + 352) lastSyncDate];
          v38 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
          [OUTLINED_FUNCTION_7_9() transportType];
          v40 = OUTLINED_FUNCTION_5_1();
          [(_DKPerformSyncDownPeerAdditionsOperation *)v40 _updateEventStatsWithPreviousSyncDate:lastSyncDate transportType:v41];

          v37 = *(windows + 384);
        }

        v42 = v3;
        *(windows + 384) = v37 + 1;
        lastObject = [v20 lastObject];
        urgency = [(_DKSyncType *)lastObject urgency];
        +[_DKPerformSyncDownPeerAdditionsOperation _updateEventStatsWithIsNewestMissingWindow:](_DKPerformSyncDownPeerAdditionsOperation, [urgency isEqualToDate:*(windows + 376)]);

        v45 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          v136 = [objc_opt_class() description];
          if ([OUTLINED_FUNCTION_25_3() me])
          {
            v57 = @"pseudo ";
          }

          else
          {
            v57 = &stru_1F05B9908;
          }

          identifier5 = [OUTLINED_FUNCTION_25_3() identifier];
          model8 = [OUTLINED_FUNCTION_25_3() model];
          if (model8)
          {
            v69 = MEMORY[0x1E696AEC0];
            dk_localtimeString4 = [OUTLINED_FUNCTION_25_3() model];
            v129 = [v69 stringWithFormat:@" (%@)", dk_localtimeString4];
          }

          else
          {
            v129 = &stru_1F05B9908;
          }

          [v20 count];
          v70 = [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
          v71 = _DKSyncLoggingWindowsDescription(v20);
          *buf = 138544642;
          OUTLINED_FUNCTION_12_5();
          v152 = v57;
          v153 = v72;
          v154 = identifier5;
          v155 = v72;
          v156 = v129;
          v157 = 2112;
          v158 = v70;
          v159 = v72;
          v160 = v73;
          OUTLINED_FUNCTION_11_8();
          _os_log_debug_impl(v74, v75, v76, v77, v78, 0x3Eu);

          if (model8)
          {
          }

          v38 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        }

        syncBatchSizeInEvents = [*(windows + 320) syncBatchSizeInEvents];
        transportType = [OUTLINED_FUNCTION_7_9() transportType];
        v48 = *(windows + v38[958]);
        v49 = *(windows + 312);
        if (transportType == 4)
        {
          v50 = 1;
        }

        else
        {
          v50 = 2;
        }

        v51 = *(windows + 336);
        v52 = *(windows + 344);
        v146[0] = MEMORY[0x1E69E9820];
        v146[1] = 3221225472;
        v146[2] = &__93___DKPerformSyncDownPeerAdditionsOperation_performSyncDownPeerAdditionsWithCompletedWindows___block_invoke;
        v146[3] = &unk_1E7369EC0;
        v146[4] = windows;
        v20 = v20;
        v147 = v20;
        [v48 fetchEventsFromPeer:v49 windows:v20 streamNames:v51 limit:syncBatchSizeInEvents fetchOrder:v50 highPriority:v52 completion:v146];

        v3 = v42;
        v14 = v145;
        v53 = v140;
        goto LABEL_46;
      }

      v23 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v138 = [objc_opt_class() description];
        v85 = [OUTLINED_FUNCTION_3_18() me];
        v86 = @"pseudo ";
        if (!v85)
        {
          v86 = &stru_1F05B9908;
        }

        v127 = v86;
        identifier6 = [OUTLINED_FUNCTION_3_18() identifier];
        model9 = [OUTLINED_FUNCTION_3_18() model];
        if (model9)
        {
          v105 = MEMORY[0x1E696AEC0];
          model10 = [OUTLINED_FUNCTION_3_18() model];
          dk_localtimeString4 = [v105 stringWithFormat:@" (%@)", model10];
        }

        else
        {
          dk_localtimeString4 = &stru_1F05B9908;
        }

        domain = [(__CFString *)v140 domain];
        [(__CFString *)v140 code];
        *buf = 138544898;
        OUTLINED_FUNCTION_12_5();
        v152 = v127;
        v153 = v107;
        v154 = identifier6;
        v155 = v107;
        OUTLINED_FUNCTION_22_5();
        v158 = domain;
        v159 = 2048;
        v160 = v108;
        v161 = 2112;
        v162 = v140;
        _os_log_error_impl(&dword_191750000, v23, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch overlapping additions windows for %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

        if (model9)
        {
        }

        v15 = v143;
      }
    }

    goto LABEL_18;
  }

LABEL_47:
}

- (void)handleFetchedEvents:(void *)events completedWindows:(void *)windows missingWindows:
{
  v136 = *MEMORY[0x1E69E9840];
  v7 = a2;
  eventsCopy = events;
  windowsCopy = windows;
  if (!self)
  {
    v12 = v7;
    goto LABEL_37;
  }

  v10 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v10);

  v11 = +[_DKCompatibility currentCompatibility];
  v12 = [v11 filterIncompatibleEvents:v7];

  v13 = [v12 count];
  v14 = +[_CDLogging syncChannel];
  v15 = v14;
  v16 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
  v17 = "down from";
  v115 = v12;
  if (v13)
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v100 = eventsCopy;
    v110 = [objc_opt_class() description];
    [v12 count];
    v18 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
    v95 = windowsCopy;
    v105 = _DKSyncLoggingWindowsDescription(windowsCopy);
    if ([*(self + 304) transportType] == 8)
    {
      v19 = "up to";
    }

    else
    {
      v19 = "down from";
    }

    model2 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    v21 = &stru_1F05B9908;
    if ([OUTLINED_FUNCTION_10_10() me])
    {
      v22 = @"pseudo ";
    }

    else
    {
      v22 = &stru_1F05B9908;
    }

    identifier = [OUTLINED_FUNCTION_4_16() identifier];
    model = [OUTLINED_FUNCTION_4_16() model];
    if (model)
    {
      v25 = MEMORY[0x1E696AEC0];
      model2 = [OUTLINED_FUNCTION_4_16() model];
      v21 = [v25 stringWithFormat:@" (%@)", model2];
    }

    name = [*(self + 304) name];
    OUTLINED_FUNCTION_13_6();
    OUTLINED_FUNCTION_2_17();
    v125 = v32;
    v126 = 2082;
    v127 = v19;
    v128 = v33;
    v129 = v22;
    OUTLINED_FUNCTION_8_10();
    _os_log_impl(&dword_191750000, v15, OS_LOG_TYPE_INFO, "%{public}@: Fetched %@ events in windows %{public}@ doing sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x52u);

    if (model)
    {
    }

    v34 = v105;
  }

  else
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_24;
    }

    v100 = eventsCopy;
    v106 = [objc_opt_class() description];
    [v12 count];
    v26 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
    v95 = windowsCopy;
    v111 = _DKSyncLoggingWindowsDescription(windowsCopy);
    if ([*(self + 304) transportType] == 8)
    {
      v17 = "up to";
    }

    v27 = &stru_1F05B9908;
    if ([OUTLINED_FUNCTION_10_10() me])
    {
      v28 = @"pseudo ";
    }

    else
    {
      v28 = &stru_1F05B9908;
    }

    identifier2 = [OUTLINED_FUNCTION_10_10() identifier];
    model3 = [OUTLINED_FUNCTION_10_10() model];
    if (model3)
    {
      v74 = MEMORY[0x1E696AEC0];
      [OUTLINED_FUNCTION_10_10() model];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_21_7();
      v27 = [v74 stringWithFormat:@" (%@)"];
    }

    name2 = [*(self + 304) name];
    *buf = 138545154;
    v121 = v106;
    OUTLINED_FUNCTION_2_17();
    v125 = v76;
    v126 = 2082;
    v127 = v17;
    v128 = v77;
    v129 = v28;
    OUTLINED_FUNCTION_8_10();
    _os_log_debug_impl(&dword_191750000, v15, OS_LOG_TYPE_DEBUG, "%{public}@: Fetched %@ events in windows %{public}@ doing sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x52u);

    if (model3)
    {
    }

    v34 = v111;
  }

  windowsCopy = v95;
  eventsCopy = v100;
  v12 = v115;
  v16 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
LABEL_24:

  sourceDeviceID = [OUTLINED_FUNCTION_10_10() sourceDeviceID];
  if (!sourceDeviceID)
  {
    v46 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v97 = windowsCopy;
      v102 = eventsCopy;
      v64 = [objc_opt_class() description];
      [v12 count];
      v65 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
      model5 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      [OUTLINED_FUNCTION_6_16() me];
      identifier3 = [OUTLINED_FUNCTION_6_16() identifier];
      model4 = [OUTLINED_FUNCTION_6_16() model];
      if (model4)
      {
        v78 = MEMORY[0x1E696AEC0];
        model5 = [OUTLINED_FUNCTION_6_16() model];
        v69 = [v78 stringWithFormat:@" (%@)", model5];
      }

      else
      {
        v69 = &stru_1F05B9908;
      }

      *buf = 138544386;
      v121 = v64;
      OUTLINED_FUNCTION_2_17();
      OUTLINED_FUNCTION_18_6();
      _os_log_error_impl(&dword_191750000, v46, OS_LOG_TYPE_ERROR, "%{public}@: Unable to save %@ events, missing device id in peer %{public}@peer %{public}@%{public}@", buf, 0x34u);
      if (model4)
      {
      }

      windowsCopy = v97;
      eventsCopy = v102;
      v12 = v115;
    }

    errors = [self errors];
    errors3 = +[_DKSyncErrors internalFailure];
    [errors addObject:errors3];
    v42 = 0;
    goto LABEL_32;
  }

  errors = +[_DKSyncPeerStatusTracker sharedInstance];
  date = [MEMORY[0x1E695DF00] date];
  v38 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
  [errors setLastSuccessfulActivityDate:date onTransport:objc_msgSend(*(self + 304) forPeer:{"transportType"), *(self + v16[959])}];

  if ([v12 count])
  {
    *(self + 400) = 1;
    [(_DKPerformSyncDownPeerAdditionsOperation *)self updateEvents:v115 withSourceDeviceID:sourceDeviceID];
    v49 = *(self + 296);
    v119 = 0;
    v50 = [v49 saveEvents:v115 error:&v119];
    v51 = v119;
    v52 = +[_CDLogging syncChannel];
    errors2 = v52;
    if (v50)
    {
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v96 = windowsCopy;
        v101 = eventsCopy;
        v112 = [objc_opt_class() description];
        [v115 count];
        v107 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
        v54 = [OUTLINED_FUNCTION_4_16() me];
        v55 = &stru_1F05B9908;
        v56 = @"pseudo ";
        if (!v54)
        {
          v56 = &stru_1F05B9908;
        }

        v93 = v56;
        identifier4 = [OUTLINED_FUNCTION_4_16() identifier];
        model6 = [OUTLINED_FUNCTION_4_16() model];
        if (model6)
        {
          v59 = MEMORY[0x1E696AEC0];
          model7 = [OUTLINED_FUNCTION_4_16() model];
          v55 = [v59 stringWithFormat:@" (%@)", model7];
        }

        v81 = _DKSyncLoggingWindowsDescription(v101);
        *buf = 138544642;
        v121 = v112;
        v122 = 2112;
        v123 = v107;
        v124 = 2114;
        v125 = v93;
        v126 = 2114;
        v127 = identifier4;
        v128 = 2114;
        v129 = v55;
        v130 = 2114;
        v131 = v81;
        _os_log_impl(&dword_191750000, errors2, OS_LOG_TYPE_INFO, "%{public}@: Saved %@ events from %{public}@peer %{public}@%{public}@ in windows %{public}@", buf, 0x3Eu);
        if (model6)
        {
        }

        windowsCopy = v96;
        eventsCopy = v101;
      }
    }

    else
    {
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v99 = windowsCopy;
        v104 = eventsCopy;
        v114 = [objc_opt_class() description];
        [v115 count];
        v109 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
        v82 = [OUTLINED_FUNCTION_4_16() me];
        v83 = @"pseudo ";
        if (!v82)
        {
          v83 = &stru_1F05B9908;
        }

        v94 = v83;
        identifier5 = [OUTLINED_FUNCTION_4_16() identifier];
        model8 = [OUTLINED_FUNCTION_4_16() model];
        if (model8)
        {
          v87 = MEMORY[0x1E696AEC0];
          model7 = [OUTLINED_FUNCTION_4_16() model];
          v86 = [v87 stringWithFormat:@" (%@)", model7];
        }

        else
        {
          v86 = &stru_1F05B9908;
        }

        domain = [v51 domain];
        [v51 code];
        OUTLINED_FUNCTION_13_6();
        v122 = 2112;
        v123 = v89;
        v124 = 2114;
        v125 = v94;
        v126 = 2114;
        v127 = identifier5;
        v128 = 2114;
        v129 = v86;
        v130 = 2114;
        v131 = domain;
        v132 = 2048;
        v133 = v90;
        v134 = 2112;
        v135 = v51;
        _os_log_error_impl(&dword_191750000, errors2, OS_LOG_TYPE_ERROR, "%{public}@: Failed while saving %@ events from %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x52u);

        if (model8)
        {
        }

        windowsCopy = v99;
        eventsCopy = v104;
      }

      errors2 = [self errors];
      [errors2 addObject:v51];
    }

    v16 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    v38 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
  }

  v39 = *(self + 296);
  v40 = *(self + v16[959]);
  name3 = [*(self + v38[958]) name];
  v118 = 0;
  [v39 saveSyncedDownWindows:eventsCopy peer:v40 transportName:name3 error:&v118];
  v42 = v118;

  v43 = +[_CDLogging syncChannel];
  v44 = v43;
  if (v42)
  {
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v60 = [objc_opt_class() description];
      v61 = _DKSyncLoggingWindowsDescription(eventsCopy);
      domain2 = [(__CFString *)v42 domain];
      code = [(__CFString *)v42 code];
      *buf = 138544386;
      v121 = v60;
      v122 = 2114;
      v123 = v61;
      v124 = 2114;
      v125 = domain2;
      v126 = 2048;
      v127 = code;
      v128 = 2112;
      v129 = v42;
      _os_log_error_impl(&dword_191750000, v44, OS_LOG_TYPE_ERROR, "%{public}@: Failed while saving synced down windows %{public}@: %{public}@:%lld (%@)", buf, 0x34u);
    }

    errors3 = [self errors];
    [errors3 addObject:v42];
    v12 = v115;
LABEL_32:

    v47 = errors;
    errors = v42;
LABEL_33:

    if ([*(self + 304) transportType] != 1)
    {
      [*(self + 304) setHasAdditionsFlag:0 forPeer:*(self + 312)];
    }

    [self endOperation];
    goto LABEL_36;
  }

  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    v98 = windowsCopy;
    v113 = [objc_opt_class() description];
    v103 = eventsCopy;
    v108 = _DKSyncLoggingWindowsDescription(eventsCopy);
    model10 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    [OUTLINED_FUNCTION_6_16() me];
    identifier6 = [OUTLINED_FUNCTION_6_16() identifier];
    model9 = [OUTLINED_FUNCTION_6_16() model];
    if (model9)
    {
      v79 = MEMORY[0x1E696AEC0];
      model10 = [OUTLINED_FUNCTION_6_16() model];
      v73 = [v79 stringWithFormat:@" (%@)", model10];
    }

    else
    {
      v73 = &stru_1F05B9908;
    }

    OUTLINED_FUNCTION_13_6();
    v122 = 2114;
    v123 = v80;
    v124 = 2114;
    OUTLINED_FUNCTION_18_6();
    _os_log_debug_impl(&dword_191750000, v44, OS_LOG_TYPE_DEBUG, "%{public}@: Successfully saved completed windows %{public}@ from %{public}@peer %{public}@%{public}@", buf, 0x34u);
    if (model9)
    {
    }

    windowsCopy = v98;
    eventsCopy = v103;
  }

  v48 = *(self + 384);
  if (v48 >= [*(self + 320) maxBatchesPerSync])
  {
    v47 = errors;
    errors = 0;
    v12 = v115;
    goto LABEL_33;
  }

  v116[0] = MEMORY[0x1E69E9820];
  v116[1] = 3221225472;
  v116[2] = __96___DKPerformSyncDownPeerAdditionsOperation_handleFetchedEvents_completedWindows_missingWindows___block_invoke;
  v116[3] = &unk_1E7367710;
  v116[4] = self;
  v117 = eventsCopy;
  [_DKSyncSerializer performAsyncBlock:v116];

  v12 = v115;
LABEL_36:

LABEL_37:
}

- (void)coalesceRedundantOverlappingWindows
{
  v79[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-86400.0];
    v4 = [_DKSyncWindow redundantWindowsFromSortedWindows:v3 olderThanDate:?];
    if ([v4 count] >= 2)
    {
      v5 = [v4 valueForKeyPath:@"event.UUID"];
      firstObject = [v4 firstObject];
      startDate = [(_DKSyncWindow *)firstObject startDate];
      lastObject = [v4 lastObject];
      urgency = [(_DKSyncType *)lastObject urgency];
      v10 = [_DKSyncWindow syncWindowWithStartDate:startDate endDate:urgency];

      firstObject2 = [v4 firstObject];
      event = [(_DKSyncWindow *)firstObject2 event];

      if (event)
      {
        v61 = v5;
        stream = [event stream];
        name = [stream name];

        v59 = name;
        v15 = [_DKSyncMetadataStorage eventFromFetchedWindow:v10 windowStreamName:name transportName:0];
        v16 = *(self + 296);
        v58 = v15;
        v79[0] = v15;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:1];
        v63 = 0;
        LODWORD(name) = [v16 saveEvents:v17 error:&v63];
        v18 = v63;

        if (name)
        {
          v19 = *(self + 296);
          v62 = v18;
          v20 = [v19 deleteEventsWithEventIDs:v61 error:&v62];
          v60 = v62;

          v21 = +[_CDLogging syncChannel];
          v22 = v21;
          if (v20)
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              v52 = [objc_opt_class() description];
              v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
              v23 = [OUTLINED_FUNCTION_0_26() me];
              v24 = &stru_1F05B9908;
              v25 = @"pseudo ";
              if (!v23)
              {
                v25 = &stru_1F05B9908;
              }

              v49 = v25;
              identifier = [OUTLINED_FUNCTION_0_26() identifier];
              model = [OUTLINED_FUNCTION_0_26() model];
              if (model)
              {
                v41 = MEMORY[0x1E696AEC0];
                model2 = [OUTLINED_FUNCTION_0_26() model];
                v24 = [v41 stringWithFormat:@" (%@)", model2];
              }

              v42 = [v10 debugDescription];
              *buf = 138544642;
              v66 = v52;
              v67 = 2112;
              v68 = v56;
              v69 = 2114;
              v70 = v49;
              v71 = 2114;
              v72 = identifier;
              v73 = 2114;
              v74 = v24;
              v75 = 2114;
              v76 = v42;
              OUTLINED_FUNCTION_15_0(&dword_191750000, v22, v43, "%{public}@: Coalesced %@ windows for %{public}@peer %{public}@%{public}@ into window %{public}@", buf);

              if (model)
              {
              }
            }
          }

          else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v57 = [objc_opt_class() description];
            v38 = [OUTLINED_FUNCTION_0_26() me];
            v39 = &stru_1F05B9908;
            v40 = @"pseudo ";
            if (!v38)
            {
              v40 = &stru_1F05B9908;
            }

            v51 = v40;
            identifier2 = [OUTLINED_FUNCTION_0_26() identifier];
            model3 = [OUTLINED_FUNCTION_0_26() model];
            if (model3)
            {
              v44 = MEMORY[0x1E696AEC0];
              [OUTLINED_FUNCTION_0_26() model];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_21_7();
              v39 = [v44 stringWithFormat:@" (%@)"];
            }

            domain = [(__CFString *)v60 domain];
            code = [(__CFString *)v60 code];
            *buf = 138544898;
            v66 = v57;
            v67 = 2114;
            v68 = v51;
            v69 = 2114;
            v70 = identifier2;
            v71 = 2114;
            v72 = v39;
            v73 = 2114;
            v74 = domain;
            v75 = 2048;
            v76 = code;
            v77 = 2112;
            v78 = v60;
            _os_log_error_impl(&dword_191750000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Failed while deleting coalesced events for %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

            if (model3)
            {
            }
          }
        }

        else
        {
          v22 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v35 = [objc_opt_class() description];
            domain2 = [(__CFString *)v18 domain];
            code2 = [(__CFString *)v18 code];
            *buf = 138544130;
            v66 = v35;
            v67 = 2114;
            v68 = domain2;
            v69 = 2048;
            v70 = code2;
            v71 = 2112;
            v72 = v18;
            _os_log_error_impl(&dword_191750000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Failed while saving coalesced event: %{public}@:%lld (%@)", buf, 0x2Au);
          }

          v60 = v18;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v27 = *(self + 392);
        if (isKindOfClass)
        {
          v28 = v27;
        }

        else
        {
          v28 = [v27 mutableCopy];
        }

        v29 = v28;
        firstObject3 = [v4 firstObject];
        v31 = [v29 indexOfObject:firstObject3];

        v32 = [v4 count];
        v64 = v10;
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
        [v29 replaceObjectsInRange:v31 withObjectsFromArray:{v32, v33}];

        v34 = *(self + 392);
        *(self + 392) = v29;

        v5 = v61;
      }
    }
  }
}

- (void)updateEvents:(void *)events withSourceDeviceID:
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  eventsCopy = events;
  if (self)
  {
    v7 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v7);

    v23 = objc_opt_new();
    v21 = eventsCopy;
    v22 = objc_opt_new();
    [v22 setDeviceID:eventsCopy];
    date = [MEMORY[0x1E695DF00] date];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v20 = v5;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          source = [v14 source];
          v16 = source;
          if (source)
          {
            deviceID = [source deviceID];

            if (!deviceID)
            {
              [v16 setDeviceID:v21];
            }
          }

          else
          {
            [v14 setSource:v22];
          }

          stream = [v14 stream];
          name = [stream name];

          if (name)
          {
            [v23 addObject:name];
          }

          +[_DKPerformSyncDownPeerAdditionsOperation _updateEventStatsWithSyncLatencyOfEvent:ingressDate:transportType:](_DKPerformSyncDownPeerAdditionsOperation, v14, date, [*(self + 304) transportType]);
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    +[_DKPerformSyncDownPeerAdditionsOperation _updateEventStatsWithTotal:streamNameCounts:transportType:](_DKPerformSyncDownPeerAdditionsOperation, [v9 count], v23, objc_msgSend(*(self + 304), "transportType"));
    v5 = v20;
    eventsCopy = v21;
  }
}

@end