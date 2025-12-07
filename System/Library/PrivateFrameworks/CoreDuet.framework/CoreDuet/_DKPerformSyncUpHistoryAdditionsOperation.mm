@interface _DKPerformSyncUpHistoryAdditionsOperation
+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)date transportType:;
+ (void)_updateEventStatsWithTotal:(void *)total streamNameCounts:(uint64_t)counts transportType:;
- (id)history;
- (id)initWithParent:(void *)parent localStorage:(void *)storage transport:(void *)transport peer:(void *)peer policy:(void *)policy type:;
- (void)endOperation;
- (void)handleUpdateStorageWithFetchedWindow:(uint64_t)window eventsCount:(void *)count error:;
- (void)main;
- (void)performSyncUpHistoryAdditions;
- (void)performSyncUpHistoryAdditionsWithAdditionsHighWaterMark:(void *)mark orError:;
- (void)performSyncUpHistoryAdditionsWithPreviousHighWaterMark:(uint64_t)mark;
@end

@implementation _DKPerformSyncUpHistoryAdditionsOperation

- (void)main
{
  v3 = objc_opt_class();
  if ([_DKSync2Coordinator shouldDeferSyncOperationWithClass:v3 syncType:self->_type transport:self->_transport peer:0 policy:self->_policy])
  {

    [(_DKPerformSyncUpHistoryAdditionsOperation *)self endOperation];
  }

  else
  {

    [(_DKPerformSyncUpHistoryAdditionsOperation *)&self->super.super.super.super.isa performSyncUpHistoryAdditions];
  }
}

+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)date transportType:
{
  v11 = a2;
  objc_opt_self();
  if (_updateEventStatsWithPreviousSyncDate_transportType__syncCadenceInitialized_0 != -1)
  {
    +[_DKPerformSyncUpHistoryAdditionsOperation _updateEventStatsWithPreviousSyncDate:transportType:];
  }

  if (v11)
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    v5 = [v11 isEqualToDate:distantPast];

    if ((v5 & 1) == 0)
    {
      v6 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceByTransportCounter_0;
      date = [MEMORY[0x1E695DF00] date];
      if (date == 1)
      {
        v8 = @"Rapport";
      }

      else
      {
        v8 = @"Cloud";
      }

      [(_DKEventTypeStatsTimerCounter *)v6 addTimingWithStartDate:v11 endDate:date typeValue:v8];
    }
  }

  v9 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceCounter_0;
  date2 = [MEMORY[0x1E695DF00] date];
  [(_DKEventStatsTimerCounter *)v9 addTimingWithStartDate:v11 endDate:date2];
}

+ (void)_updateEventStatsWithTotal:(void *)total streamNameCounts:(uint64_t)counts transportType:
{
  v23 = *MEMORY[0x1E69E9840];
  totalCopy = total;
  objc_opt_self();
  if (_updateEventStatsWithTotal_streamNameCounts_transportType__syncUpHistoryAdditionsCounterInitialized != -1)
  {
    +[_DKPerformSyncUpHistoryAdditionsOperation _updateEventStatsWithTotal:streamNameCounts:transportType:];
  }

  [(_DKEventStatsCounter *)_updateEventStatsWithTotal_streamNameCounts_transportType__syncUpHistoryAdditionsTotalCounter incrementCountByNumber:a2];
  if (counts == 1)
  {
    v7 = @"Rapport";
  }

  else
  {
    v7 = @"Cloud";
  }

  [(_DKEventTypeStatsCounter *)_updateEventStatsWithTotal_streamNameCounts_transportType__syncUpHistoryAdditionsTotalByTransportCounter incrementCountByNumber:a2 typeValue:v7];
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
        v14 = [_updateEventStatsWithTotal_streamNameCounts_transportType__syncUpHistoryAdditionsCountersByStreamName objectForKeyedSubscript:v13];
        if (!v14)
        {
          v15 = MEMORY[0x1E696AEC0];
          v16 = [_DKEventStatsUtilities safeStringWithString:v13];
          v17 = [v15 stringWithFormat:@"sync_up_history_additions_stream%@", v16];

          v14 = [_DKEventStatsCounter counterInCollection:v17 withEventName:?];
          [_updateEventStatsWithTotal_streamNameCounts_transportType__syncUpHistoryAdditionsCountersByStreamName setObject:v14 forKeyedSubscript:v13];
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
  v2.super_class = _DKPerformSyncUpHistoryAdditionsOperation;
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
    v24.receiver = self;
    v24.super_class = _DKPerformSyncUpHistoryAdditionsOperation;
    v17 = objc_msgSendSuper2(&v24, sel_initWithParent_, a2, storageCopy, parentCopy);
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 37, parent);
      objc_storeStrong(v18 + 38, storage);
      objc_storeStrong(v18 + 39, transport);
      objc_storeStrong(v18 + 40, peer);
      objc_storeStrong(v18 + 41, policy);
      date = [MEMORY[0x1E695DF00] date];
      v20 = v18[43];
      v18[43] = date;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)performSyncUpHistoryAdditions
{
  v35 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    v3 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v3);

    v4 = [v2[40] streamNamesToSyncWithSyncType:v2[41] transportType:{objc_msgSend(OUTLINED_FUNCTION_14_5(), "transportType")}];
    v5 = v2[42];
    v2[42] = v4;

    if ([v2[42] count])
    {
      [OUTLINED_FUNCTION_14_5() name];
      objc_claimAutoreleasedReturnValue();
      v6 = [OUTLINED_FUNCTION_20_5() additionsSyncHistoryForPeer:? transportName:? error:?];
      v7 = v2[45];
      v2[45] = v6;

      v8 = objc_opt_class();
      if (([_DKSync2Coordinator canPerformSyncOperationWithClass:v8 syncType:v2[41] history:v2[45] transport:v2[38] peer:v2[39] policy:v2[40]]& 1) != 0)
      {
        [v2[45] lastSyncDate];
        objc_claimAutoreleasedReturnValue();
        v9 = [OUTLINED_FUNCTION_20_5() highPriorityForSyncUpWithSyncType:? lastSyncDate:?];

        v10 = OUTLINED_FUNCTION_14_5();
        v11 = v2[39];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __74___DKPerformSyncUpHistoryAdditionsOperation_performSyncUpHistoryAdditions__block_invoke;
        v22[3] = &unk_1E7369B88;
        v22[4] = v2;
        return [v10 fetchAdditionsHighWaterMarkWithPeer:v11 highPriority:v9 completion:v22];
      }
    }

    else
    {
      v12 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = [objc_opt_class() description];
        if ([OUTLINED_FUNCTION_14_5() transportType] == 8)
        {
          v14 = "up to";
        }

        else
        {
          v14 = "down from";
        }

        model2 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        v16 = &stru_1F05B9908;
        if ([OUTLINED_FUNCTION_17_6() me])
        {
          v17 = @"pseudo ";
        }

        else
        {
          v17 = &stru_1F05B9908;
        }

        identifier = [OUTLINED_FUNCTION_17_6() identifier];
        model = [OUTLINED_FUNCTION_17_6() model];
        if (model)
        {
          v20 = MEMORY[0x1E696AEC0];
          model2 = [OUTLINED_FUNCTION_17_6() model];
          v16 = [v20 stringWithFormat:@" (%@)", model2];
        }

        name = [OUTLINED_FUNCTION_14_5() name];
        *buf = 138544642;
        v24 = v13;
        v25 = 2082;
        v26 = v14;
        v27 = 2114;
        v28 = v17;
        v29 = 2114;
        v30 = identifier;
        v31 = 2114;
        v32 = v16;
        v33 = 2114;
        v34 = name;
        _os_log_debug_impl(&dword_191750000, v12, OS_LOG_TYPE_DEBUG, "%{public}@: Skipped additions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ due to no streams to sync", buf, 0x3Eu);

        if (model)
        {
        }
      }
    }

    return [v2 endOperation];
  }

  return result;
}

- (void)performSyncUpHistoryAdditionsWithAdditionsHighWaterMark:(void *)mark orError:
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  markCopy = mark;
  if (self)
  {
    if (v5)
    {
      [(_DKPerformSyncUpHistoryAdditionsOperation *)self performSyncUpHistoryAdditionsWithPreviousHighWaterMark:v5];
    }

    else
    {
      errors = +[_CDLogging syncChannel];
      v8 = os_log_type_enabled(errors, OS_LOG_TYPE_DEBUG);
      if (markCopy)
      {
        if (v8)
        {
          v26 = [objc_opt_class() description];
          [OUTLINED_FUNCTION_4_13() transportType];
          OUTLINED_FUNCTION_12_3();
          v9 = &stru_1F05B9908;
          [OUTLINED_FUNCTION_8_7() me];
          identifier = [OUTLINED_FUNCTION_8_7() identifier];
          model = [OUTLINED_FUNCTION_8_7() model];
          if (model)
          {
            v16 = MEMORY[0x1E696AEC0];
            model2 = [OUTLINED_FUNCTION_8_7() model];
            v9 = [v16 stringWithFormat:@" (%@)", model2];
          }

          name = [OUTLINED_FUNCTION_4_13() name];
          domain = [markCopy domain];
          [markCopy code];
          OUTLINED_FUNCTION_13_5();
          v29 = model4;
          OUTLINED_FUNCTION_6_13();
          v30 = name;
          v31 = v19;
          v32 = domain;
          v33 = 2048;
          v34 = v20;
          v35 = 2112;
          v36 = markCopy;
          _os_log_debug_impl(&dword_191750000, errors, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping additions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@: %{public}@:%lld (%@)", buf, 0x5Cu);

          if (model)
          {
          }
        }

        errors = [self errors];
        [errors addObject:markCopy];
      }

      else if (v8)
      {
        v27 = [objc_opt_class() description];
        if ([self[38] transportType] == 8)
        {
          v12 = "up to";
        }

        else
        {
          v12 = "down from";
        }

        v13 = &stru_1F05B9908;
        [OUTLINED_FUNCTION_8_7() me];
        identifier2 = [OUTLINED_FUNCTION_8_7() identifier];
        model3 = [OUTLINED_FUNCTION_8_7() model];
        if (model3)
        {
          v21 = MEMORY[0x1E696AEC0];
          model4 = [OUTLINED_FUNCTION_8_7() model];
          v13 = [v21 stringWithFormat:@" (%@)", model4];
        }

        name2 = [self[38] name];
        OUTLINED_FUNCTION_13_5();
        v29 = v12;
        OUTLINED_FUNCTION_6_13();
        v30 = v23;
        _os_log_debug_impl(&dword_191750000, errors, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping additions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ due to missing high water mark", buf, 0x3Eu);

        if (model3)
        {
        }
      }

      [self endOperation];
    }
  }
}

- (void)performSyncUpHistoryAdditionsWithPreviousHighWaterMark:(uint64_t)mark
{
  v285[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (mark)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    v5 = 0x1E7366000uLL;
    v6 = +[_CDLogging syncChannel];
    v7 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    v8 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v245 = v3;
      v40 = [objc_opt_class() description];
      if ([OUTLINED_FUNCTION_4_13() transportType] == 8)
      {
        v41 = "up to";
      }

      else
      {
        v41 = "down from";
      }

      if ([*(mark + 312) me])
      {
        v42 = @"pseudo ";
      }

      else
      {
        v42 = &stru_1F05B9908;
      }

      identifier = [*(mark + 312) identifier];
      model = [*(mark + 312) model];
      if (model)
      {
        v58 = MEMORY[0x1E696AEC0];
        model2 = [*(mark + 312) model];
        v248 = [v58 stringWithFormat:@" (%@)", model2];
      }

      else
      {
        v248 = &stru_1F05B9908;
      }

      name = [OUTLINED_FUNCTION_4_13() name];
      dk_localtimeString = [(NSDate *)v245 dk_localtimeString];
      *buf = 138544898;
      v268 = v40;
      v269 = 2082;
      v270 = v41;
      v271 = 2114;
      v272 = v42;
      v273 = 2114;
      v274 = identifier;
      v275 = 2114;
      v276 = v248;
      v277 = 2114;
      v278 = name;
      v279 = 2112;
      v280 = dk_localtimeString;
      _os_log_debug_impl(&dword_191750000, v6, OS_LOG_TYPE_DEBUG, "%{public}@: Performing additions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ from previous high water mark %@", buf, 0x48u);

      if (model)
      {
      }

      v3 = v245;
      v7 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      v8 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      v5 = 0x1E7366000;
    }

    v9 = [*(mark + 320) queryStartDateWithSyncType:*(mark + 328) previousHighWaterMark:v3];
    v10 = *(mark + 344);
    [v10 timeIntervalSinceReferenceDate];
    v12 = v11;
    [v9 timeIntervalSinceReferenceDate];
    if (v12 - v13 <= [*(mark + 320) minSyncWindowInSeconds])
    {
      syncChannel = [*(v5 + 648) syncChannel];
      v35 = os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG);
      if (v35)
      {
        v250 = [OUTLINED_FUNCTION_15_5(v35 v36)];
        v51 = v7;
        if ([OUTLINED_FUNCTION_4_13() transportType] == 8)
        {
          v52 = "up to";
        }

        else
        {
          v52 = "down from";
        }

        v53 = &stru_1F05B9908;
        if ([*(mark + v8[848]) me])
        {
          v54 = @"pseudo ";
        }

        else
        {
          v54 = &stru_1F05B9908;
        }

        [*(mark + v8[848]) identifier];
        v56 = model4 = v8;
        model3 = [*(mark + model4[848]) model];
        if (model3)
        {
          v115 = MEMORY[0x1E696AEC0];
          model4 = [*(mark + model4[848]) model];
          v53 = [v115 stringWithFormat:@" (%@)", model4];
        }

        name2 = [*(mark + v51[847]) name];
        *buf = 138544642;
        v268 = v250;
        v269 = 2082;
        v270 = v52;
        v271 = 2114;
        v272 = v54;
        v273 = 2114;
        v274 = v56;
        v275 = 2114;
        v276 = v53;
        v277 = 2114;
        v278 = name2;
        OUTLINED_FUNCTION_5_10();
        _os_log_debug_impl(v117, v118, v119, v120, v121, 0x3Eu);

        if (model3)
        {
        }

        v3 = v245;
        v10 = v230;
        v9 = v238;
      }

      v29 = 0;
      v28 = 0;
    }

    else
    {
      v14 = *(mark + 352);
      if (!v14)
      {
        [*(mark + 360) lastSyncDate];
        v16 = v15 = v5;
        transportType = [OUTLINED_FUNCTION_4_13() transportType];
        [_DKPerformSyncUpHistoryAdditionsOperation _updateEventStatsWithPreviousSyncDate:v16 transportType:transportType];

        v5 = v15;
        v14 = *(mark + 352);
      }

      *(mark + 352) = v14 + 1;
      v18 = objc_opt_new();
      [(_DKSyncWindow *)v18 setStartDate:v9];
      [(_DKSyncWindow *)v18 setEndDate:v10];
      syncChannel2 = [*(v5 + 648) syncChannel];
      v20 = os_log_type_enabled(syncChannel2, OS_LOG_TYPE_DEBUG);
      v249 = v18;
      if (v20)
      {
        v226 = [OUTLINED_FUNCTION_15_5(v20 v21)];
        v241 = [v18 debugDescription];
        if ([*(mark + 304) transportType] == 8)
        {
          v46 = "up to";
        }

        else
        {
          v46 = "down from";
        }

        v221 = &stru_1F05B9908;
        if ([OUTLINED_FUNCTION_1_16() me])
        {
          v48 = @"pseudo ";
        }

        else
        {
          v48 = &stru_1F05B9908;
        }

        identifier2 = [OUTLINED_FUNCTION_1_16() identifier];
        model5 = [OUTLINED_FUNCTION_1_16() model];
        if (model5)
        {
          v106 = MEMORY[0x1E696AEC0];
          model6 = [OUTLINED_FUNCTION_1_16() model];
          v221 = [v106 stringWithFormat:@" (%@)", model6];
        }

        name3 = [*(mark + 304) name];
        OUTLINED_FUNCTION_11_5();
        *(v108 + 4) = v226;
        v269 = 2114;
        *(v108 + 14) = v241;
        v271 = 2082;
        v272 = v46;
        v273 = 2114;
        *(v108 + 34) = v48;
        v275 = 2114;
        *(v108 + 44) = identifier2;
        v277 = 2114;
        *(v108 + 54) = v221;
        v279 = 2114;
        v280 = v109;
        OUTLINED_FUNCTION_5_10();
        _os_log_debug_impl(v110, v111, v112, v113, v114, 0x48u);

        if (model5)
        {
        }

        v3 = v245;
        v18 = v249;
        v10 = v230;
        v9 = v238;
      }

      syncBatchSizeInEvents = [*(mark + 320) syncBatchSizeInEvents];
      v23 = syncBatchSizeInEvents;
      if (syncBatchSizeInEvents <= 1)
      {
        v24 = syncBatchSizeInEvents;
      }

      else
      {
        v24 = syncBatchSizeInEvents + 1;
      }

      v25 = *(mark + 296);
      v285[0] = v18;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v285 count:1];
      v27 = *(mark + 336);
      v266 = 0;
      v28 = [v25 sortedEventsFromSyncWindows:v26 streamNames:v27 limit:v24 fetchOrder:1 error:&v266];
      v29 = v266;

      if (v29)
      {
        v30 = +[_CDLogging syncChannel];
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
        if (v31)
        {
          v243 = [OUTLINED_FUNCTION_15_5(v31 v32)];
          v228 = [v249 debugDescription];
          transportType2 = [*(mark + 304) transportType];
          v101 = "down from";
          if (transportType2 == 8)
          {
            v101 = "up to";
          }

          v223 = v101;
          if ([OUTLINED_FUNCTION_1_16() me])
          {
            v102 = @"pseudo ";
          }

          else
          {
            v102 = &stru_1F05B9908;
          }

          identifier3 = [OUTLINED_FUNCTION_1_16() identifier];
          model7 = [OUTLINED_FUNCTION_1_16() model];
          if (model7)
          {
            v122 = MEMORY[0x1E696AEC0];
            model8 = [OUTLINED_FUNCTION_1_16() model];
            v216 = [v122 stringWithFormat:@" (%@)", model8];
          }

          else
          {
            v216 = &stru_1F05B9908;
          }

          name4 = [*(mark + 304) name];
          domain = [v29 domain];
          [v29 code];
          OUTLINED_FUNCTION_11_5();
          *(v125 + 4) = v243;
          v269 = 2114;
          *(v125 + 14) = v228;
          v271 = 2082;
          v272 = v223;
          v273 = 2114;
          *(v125 + 34) = v102;
          v275 = 2114;
          *(v125 + 44) = identifier3;
          v277 = 2114;
          *(v125 + 54) = v216;
          OUTLINED_FUNCTION_2_13(v126);
          OUTLINED_FUNCTION_22_4(&dword_191750000, v127, v128, "%{public}@: Failed while querying for events in window %{public}@ doing additions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@: %{public}@:%lld (%@)", v129, v130, v131, v132, v193, v194, model14, model16, model10, model12, v205, v211, model8, v223, v228, v230, v238, v243, v245, v249, v251, v252, v253, v254, v255, v256, v257, markCopy, v259, v260, v261[0], v261[1], v262, *(&v262 + 1), v263[0], v263[1], v264, *(&v264 + 1), v265, v266);

          if (model7)
          {
          }

          v3 = v247;
          v10 = v232;
          v9 = v240;
        }

        LOBYTE(v33) = 1;
      }

      else
      {
        if (v23 < 2)
        {
          v37 = v10;
          v39 = 0;
        }

        else
        {
          v37 = v10;
          if ([v28 count] == v23 + 1)
          {
            if ([v28 count] < 2)
            {
              v39 = 1;
            }

            else
            {
              v38 = [v28 subarrayWithRange:{0, objc_msgSend(v28, "count") - 1}];

              v39 = 1;
              v28 = v38;
            }
          }

          else
          {
            v39 = 0;
          }
        }

        v212 = [v28 count];
        v61 = objc_opt_new();
        v242 = v61;
        v246 = v3;
        v239 = v9;
        if (v39)
        {
          v62 = v61;
          lastObject = [v28 lastObject];
          startDate = [(_DKSyncWindow *)v249 startDate];
          [(_DKSyncWindow *)v62 setStartDate:startDate];

          creationDate = [lastObject creationDate];
          [(_DKSyncWindow *)v62 setEndDate:creationDate];

          v66 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
          {
            v234 = [objc_opt_class() description];
            v224 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v212];
            v219 = [v249 debugDescription];
            transportType3 = [*(mark + 304) transportType];
            v139 = "down from";
            if (transportType3 == 8)
            {
              v139 = "up to";
            }

            v207 = v139;
            v140 = [OUTLINED_FUNCTION_1_16() me];
            v141 = @"pseudo ";
            if (!v140)
            {
              v141 = &stru_1F05B9908;
            }

            v203 = v141;
            identifier4 = [OUTLINED_FUNCTION_1_16() identifier];
            model9 = [OUTLINED_FUNCTION_1_16() model];
            if (model9)
            {
              v165 = MEMORY[0x1E696AEC0];
              model10 = [OUTLINED_FUNCTION_1_16() model];
              v199 = [v165 stringWithFormat:@" (%@)", model10];
            }

            else
            {
              v199 = &stru_1F05B9908;
            }

            name5 = [*(mark + 304) name];
            v167 = [v242 debugDescription];
            OUTLINED_FUNCTION_11_5();
            *(v168 + 4) = v234;
            v269 = 2112;
            OUTLINED_FUNCTION_9_6(v224);
            *(v169 + 34) = v207;
            v275 = v170;
            *(v169 + 44) = v203;
            v277 = v170;
            *(v169 + 54) = identifier4;
            v279 = v170;
            v280 = v199;
            v281 = v170;
            *(v169 + 74) = name5;
            v282 = v170;
            *(v169 + 84) = v171;
            _os_log_debug_impl(&dword_191750000, v66, OS_LOG_TYPE_DEBUG, "%{public}@: Found %@ events in window %{public}@ for additions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ but hit limit, fetch limited to window %{public}@", buf, 0x5Cu);

            if (model9)
            {
            }

            v62 = v242;
          }
        }

        else
        {
          v67 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            v220 = [objc_opt_class() description];
            v235 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v212];
            v225 = [v249 debugDescription];
            transportType4 = [OUTLINED_FUNCTION_4_13() transportType];
            v146 = "down from";
            if (transportType4 == 8)
            {
              v146 = "up to";
            }

            v208 = v146;
            v201 = &stru_1F05B9908;
            if ([OUTLINED_FUNCTION_18_4() me])
            {
              v148 = @"pseudo ";
            }

            else
            {
              v148 = &stru_1F05B9908;
            }

            identifier5 = [OUTLINED_FUNCTION_18_4() identifier];
            model11 = [OUTLINED_FUNCTION_18_4() model];
            if (model11)
            {
              v172 = MEMORY[0x1E696AEC0];
              model12 = [OUTLINED_FUNCTION_18_4() model];
              v201 = [v172 stringWithFormat:@" (%@)", model12];
            }

            name6 = [*(mark + 304) name];
            OUTLINED_FUNCTION_11_5();
            *(v174 + 4) = v220;
            v269 = 2112;
            OUTLINED_FUNCTION_9_6(v235);
            *(v175 + 34) = v208;
            v275 = v176;
            *(v175 + 44) = v148;
            v277 = v176;
            *(v175 + 54) = identifier5;
            v279 = v176;
            v280 = v201;
            v281 = v176;
            *(v175 + 74) = v177;
            OUTLINED_FUNCTION_5_10();
            _os_log_debug_impl(v178, v179, v180, v181, v182, 0x52u);

            if (model11)
            {
            }
          }

          startDate2 = [(_DKSyncWindow *)v249 startDate];
          v62 = v242;
          [(_DKSyncWindow *)v242 setStartDate:startDate2];

          lastObject = [(_DKSyncType *)v249 urgency];
          [(_DKSyncWindow *)v242 setEndDate:lastObject];
        }

        sourceDeviceID = [*(mark + 312) sourceDeviceID];
        v70 = [_DKSyncMetadataStorage windowStreamNameWithSourceDeviceID:sourceDeviceID];

        name7 = [OUTLINED_FUNCTION_4_13() name];
        v222 = v70;
        v72 = [_DKSyncMetadataStorage eventFromFetchedWindow:v62 windowStreamName:v70 transportName:name7];

        v10 = v37;
        v73 = 0x1E695D000;
        if (v28)
        {
          v74 = [v28 mutableCopy];
        }

        else
        {
          v74 = objc_opt_new();
        }

        v75 = v74;
        v76 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        [v74 addObject:v72];
        v227 = v28;
        v217 = v75;
        if ([v28 count] || objc_msgSend(OUTLINED_FUNCTION_4_13(), "transportType") != 8 || -[_DKSyncType forceSync](*(mark + 328)))
        {
          v231 = v37;
          v77 = objc_opt_new();
          *v261 = 0u;
          v262 = 0u;
          *v263 = 0u;
          v264 = 0u;
          v78 = v75;
          v79 = [v78 countByEnumeratingWithState:v261 objects:v284 count:16];
          if (v79)
          {
            v80 = v79;
            v81 = *v262;
            do
            {
              for (i = 0; i != v80; ++i)
              {
                if (*v262 != v81)
                {
                  objc_enumerationMutation(v78);
                }

                v83 = *(v261[1] + 8 * i);
                if (v83 != v72)
                {
                  stream = [v83 stream];
                  name8 = [stream name];

                  if (name8)
                  {
                    [v77 addObject:name8];
                  }
                }
              }

              v80 = [v78 countByEnumeratingWithState:v261 objects:v284 count:16];
            }

            while (v80);
          }

          v86 = *(mark + 320);
          v87 = *(mark + 328);
          lastSyncDate = [*(mark + 360) lastSyncDate];
          v89 = [v86 highPriorityForSyncUpWithSyncType:v87 lastSyncDate:lastSyncDate];

          v90 = *(mark + 304);
          v252 = MEMORY[0x1E69E9820];
          v253 = 3221225472;
          v254 = __100___DKPerformSyncUpHistoryAdditionsOperation_performSyncUpHistoryAdditionsWithPreviousHighWaterMark___block_invoke;
          v255 = &unk_1E7369BB0;
          v256 = v28;
          v257 = v77;
          markCopy = mark;
          v91 = v242;
          v259 = v242;
          v260 = v212;
          v92 = v77;
          [v90 updateStorageWithAddedEvents:v78 deletedEventIDs:0 highPriority:v89 completion:&v252];

          v33 = 0;
          v10 = v231;
          v76 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
          v73 = 0x1E695D000uLL;
        }

        else
        {
          v33 = 1;
          v91 = v242;
        }

        v93 = *(mark + v76[846]);
        v283 = v91;
        v94 = [*(v73 + 3784) arrayWithObjects:&v283 count:1];
        v95 = *(mark + 312);
        name9 = [OUTLINED_FUNCTION_4_13() name];
        v251 = 0;
        [v93 saveSyncedDownWindows:v94 peer:v95 transportName:name9 error:&v251];
        v29 = v251;

        v97 = +[_CDLogging syncChannel];
        errors = v97;
        if (v29)
        {
          v28 = v227;
          if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
          {
            v233 = [objc_opt_class() description];
            v213 = [v242 debugDescription];
            transportType5 = [*(mark + 304) transportType];
            v134 = "down from";
            if (transportType5 == 8)
            {
              v134 = "up to";
            }

            v200 = v134;
            v135 = [OUTLINED_FUNCTION_7_6() me];
            v136 = &stru_1F05B9908;
            if (v135)
            {
              v136 = @"pseudo ";
            }

            v198 = v136;
            identifier6 = [OUTLINED_FUNCTION_7_6() identifier];
            model13 = [OUTLINED_FUNCTION_7_6() model];
            if (model13)
            {
              v153 = MEMORY[0x1E696AEC0];
              model14 = [OUTLINED_FUNCTION_7_6() model];
              v195 = [v153 stringWithFormat:@" (%@)", model14];
            }

            else
            {
              v195 = &stru_1F05B9908;
            }

            name10 = [*(mark + 304) name];
            domain2 = [v29 domain];
            [v29 code];
            OUTLINED_FUNCTION_3_15();
            OUTLINED_FUNCTION_16_3();
            *(v156 + 44) = identifier6;
            v277 = v157;
            *(v156 + 54) = v195;
            OUTLINED_FUNCTION_2_13(v158);
            OUTLINED_FUNCTION_22_4(&dword_191750000, v159, v160, "%{public}@: Failed while saving additions window %{public}@ doing additions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@: %{public}@:%lld (%@)", v161, v162, v163, v164, v193, v194, model14, v198, v200, model13, identifier6, v213, v217, v222, v227, v233, v239, v242, v246, v249, v251, v252, v253, v254, v255, v256, v257, markCopy, v259, v260, v261[0], v261[1], v262, *(&v262 + 1), v263[0], v263[1], v264, *(&v264 + 1), v265, v266);

            if (v204)
            {
            }
          }

          errors = [mark errors];
          [errors addObject:v29];
        }

        else
        {
          v28 = v227;
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
          {
            v236 = [objc_opt_class() description];
            v214 = [v242 debugDescription];
            [*(mark + 304) transportType];
            [OUTLINED_FUNCTION_7_6() me];
            identifier7 = [OUTLINED_FUNCTION_7_6() identifier];
            model15 = [OUTLINED_FUNCTION_7_6() model];
            if (model15)
            {
              v183 = MEMORY[0x1E696AEC0];
              model16 = [OUTLINED_FUNCTION_7_6() model];
              v197 = [v183 stringWithFormat:@" (%@)", model16];
            }

            else
            {
              v197 = &stru_1F05B9908;
            }

            name11 = [*(mark + 304) name];
            OUTLINED_FUNCTION_3_15();
            OUTLINED_FUNCTION_16_3();
            *(v185 + 44) = identifier7;
            v277 = v186;
            *(v185 + 54) = v197;
            v279 = v186;
            v280 = v187;
            OUTLINED_FUNCTION_5_10();
            _os_log_debug_impl(v188, v189, v190, v191, v192, 0x48u);

            if (model15)
            {
            }
          }
        }

        if (!v29)
        {
          v3 = v246;
          v9 = v239;
          if (!v33)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        }

        v3 = v246;
        v9 = v239;
      }

      errors2 = [mark errors];
      [errors2 addObject:v29];

      if ((v33 & 1) == 0)
      {
LABEL_81:

        goto LABEL_82;
      }
    }

LABEL_80:
    [mark endOperation];
    goto LABEL_81;
  }

LABEL_82:
}

- (void)handleUpdateStorageWithFetchedWindow:(uint64_t)window eventsCount:(void *)count error:
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a2;
  countCopy = count;
  if (!self)
  {
    goto LABEL_25;
  }

  v9 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v9);

  if (countCopy)
  {
    v10 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v22 = [objc_opt_class() description];
      domain = [countCopy domain];
      *buf = 138544130;
      v33 = v22;
      v34 = 2114;
      v35 = domain;
      v36 = 2048;
      code = [countCopy code];
      v38 = 2112;
      v39 = countCopy;
      _os_log_error_impl(&dword_191750000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed while updating storage: %{public}@:%lld (%@)", buf, 0x2Au);
    }

    errors = [self errors];
    [errors addObject:countCopy];

    goto LABEL_24;
  }

  v12 = +[_CDLogging syncChannel];
  v13 = v12;
  if (window)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v29 = [objc_opt_class() description];
      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:window];
      v27 = [v7 debugDescription];
      [*(self + 304) transportType];
      OUTLINED_FUNCTION_12_3();
      v14 = &stru_1F05B9908;
      if ([OUTLINED_FUNCTION_21_5() me])
      {
        v15 = @"pseudo ";
      }

      else
      {
        v15 = &stru_1F05B9908;
      }

      identifier = [OUTLINED_FUNCTION_21_5() identifier];
      model = [OUTLINED_FUNCTION_21_5() model];
      if (model)
      {
        v18 = MEMORY[0x1E696AEC0];
        model2 = [OUTLINED_FUNCTION_21_5() model];
        v14 = [v18 stringWithFormat:@" (%@)", model2];
      }

      name = [*(self + 304) name];
      OUTLINED_FUNCTION_0_23();
      v40 = v15;
      OUTLINED_FUNCTION_10_7();
      _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_INFO, "%{public}@: Synced up %@ events and high water mark window in window %{public}@ doing sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x52u);

      if (!model)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v29 = [objc_opt_class() description];
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
    v27 = [v7 debugDescription];
    [*(self + 304) transportType];
    OUTLINED_FUNCTION_12_3();
    v14 = &stru_1F05B9908;
    if ([OUTLINED_FUNCTION_19_6() me])
    {
      v19 = @"pseudo ";
    }

    else
    {
      v19 = &stru_1F05B9908;
    }

    identifier = [OUTLINED_FUNCTION_19_6() identifier];
    model = [OUTLINED_FUNCTION_19_6() model];
    if (model)
    {
      v24 = MEMORY[0x1E696AEC0];
      model2 = [OUTLINED_FUNCTION_19_6() model];
      v14 = [v24 stringWithFormat:@" (%@)", model2];
    }

    name2 = [*(self + 304) name];
    OUTLINED_FUNCTION_0_23();
    v40 = v19;
    OUTLINED_FUNCTION_10_7();
    _os_log_debug_impl(&dword_191750000, v13, OS_LOG_TYPE_DEBUG, "%{public}@: Synced up %@ events and high water mark window in window %{public}@ doing sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x52u);

    if (!model)
    {
      goto LABEL_21;
    }

LABEL_20:

LABEL_21:
  }

  v21 = *(self + 352);
  if (v21 >= [*(self + 320) maxBatchesPerSync])
  {
LABEL_24:
    [self endOperation];
    goto LABEL_25;
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __100___DKPerformSyncUpHistoryAdditionsOperation_handleUpdateStorageWithFetchedWindow_eventsCount_error___block_invoke;
  v30[3] = &unk_1E7367710;
  v30[4] = self;
  v31 = v7;
  [_DKSyncSerializer performAsyncBlock:v30];

LABEL_25:
}

- (id)history
{
  if (result)
  {
    return objc_getProperty(result, a2, 360, 1);
  }

  return result;
}

@end