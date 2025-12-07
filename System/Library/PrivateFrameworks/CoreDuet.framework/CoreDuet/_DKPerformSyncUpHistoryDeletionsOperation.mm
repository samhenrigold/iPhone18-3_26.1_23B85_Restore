@interface _DKPerformSyncUpHistoryDeletionsOperation
+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)date transportType:;
+ (void)_updateEventStatsWithTotal:(uint64_t)total transportType:;
- (id)initWithParent:(void *)parent sibling:(void *)sibling localStorage:(void *)storage transport:(void *)transport peer:(void *)peer policy:(void *)policy type:;
- (uint64_t)existsAdditionsSyncHistory;
- (void)endOperation;
- (void)handleUpdateStorageWithStartDate:(void *)date endDate:(uint64_t)endDate deletedEventIDsCount:(void *)count orError:;
- (void)main;
- (void)performSyncUpHistoryDeletions;
- (void)performSyncUpHistoryDeletionsWithDeletionsHighWaterMark:(void *)mark orError:;
- (void)performSyncUpHistoryDeletionsWithPreviousHighWaterMark:(char *)mark;
@end

@implementation _DKPerformSyncUpHistoryDeletionsOperation

- (void)main
{
  v3 = objc_opt_class();
  if ([_DKSync2Coordinator shouldDeferSyncOperationWithClass:v3 syncType:self->_type transport:self->_transport peer:0 policy:self->_policy])
  {

    [(_DKPerformSyncUpHistoryDeletionsOperation *)self endOperation];
  }

  else
  {

    [(_DKPerformSyncUpHistoryDeletionsOperation *)self performSyncUpHistoryDeletions];
  }
}

+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)date transportType:
{
  v11 = a2;
  objc_opt_self();
  if (_updateEventStatsWithPreviousSyncDate_transportType__syncCadenceInitialized_1 != -1)
  {
    +[_DKPerformSyncUpHistoryDeletionsOperation _updateEventStatsWithPreviousSyncDate:transportType:];
  }

  if (v11)
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    v5 = [v11 isEqualToDate:distantPast];

    if ((v5 & 1) == 0)
    {
      v6 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceByTransportCounter_1;
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

  v9 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceCounter_1;
  date2 = [MEMORY[0x1E695DF00] date];
  [(_DKEventStatsTimerCounter *)v9 addTimingWithStartDate:v11 endDate:date2];
}

+ (void)_updateEventStatsWithTotal:(uint64_t)total transportType:
{
  objc_opt_self();
  if (_updateEventStatsWithTotal_transportType__syncUpHistoryDeletionsCounterInitialized != -1)
  {
    +[_DKPerformSyncUpHistoryDeletionsOperation _updateEventStatsWithTotal:transportType:];
  }

  [(_DKEventStatsCounter *)_updateEventStatsWithTotal_transportType__syncUpHistoryDeletionsTotalCounter incrementCountByNumber:a2];
  v5 = _updateEventStatsWithTotal_transportType__syncUpHistoryDeletionsTotalByTransportCounter;
  if (total == 1)
  {
    v6 = @"Rapport";
  }

  else
  {
    v6 = @"Cloud";
  }

  [(_DKEventTypeStatsCounter *)v5 incrementCountByNumber:a2 typeValue:v6];
}

- (void)endOperation
{
  v2.receiver = self;
  v2.super_class = _DKPerformSyncUpHistoryDeletionsOperation;
  [(_DKSyncCompositeOperation *)&v2 endOperation];
}

- (id)initWithParent:(void *)parent sibling:(void *)sibling localStorage:(void *)storage transport:(void *)transport peer:(void *)peer policy:(void *)policy type:
{
  parentCopy = parent;
  siblingCopy = sibling;
  storageCopy = storage;
  transportCopy = transport;
  peerCopy = peer;
  policyCopy = policy;
  if (self)
  {
    v27.receiver = self;
    v27.super_class = _DKPerformSyncUpHistoryDeletionsOperation;
    v18 = objc_msgSendSuper2(&v27, sel_initWithParent_, a2, transportCopy, storageCopy, siblingCopy, parentCopy);
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(v18 + 37, parent);
      objc_storeStrong(v19 + 38, sibling);
      objc_storeStrong(v19 + 39, storage);
      objc_storeStrong(v19 + 40, transport);
      objc_storeStrong(v19 + 41, peer);
      objc_storeStrong(v19 + 42, policy);
      date = [MEMORY[0x1E695DF00] date];
      v21 = v19[44];
      v19[44] = date;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)performSyncUpHistoryDeletions
{
  v129 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  selfCopy = self;
  v3 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [*(selfCopy + 328) streamNamesToSyncWithDisabledFeatures:0];
  v5 = *(selfCopy + 344);
  *(selfCopy + 344) = v4;

  if (![*(selfCopy + 344) count])
  {
    v14 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = [objc_opt_class() description];
      if ([*(selfCopy + 312) transportType] == 8)
      {
        v16 = "up to";
      }

      else
      {
        v16 = "down from";
      }

      v17 = &stru_1F05B9908;
      if ([OUTLINED_FUNCTION_16_4() me])
      {
        v18 = @"pseudo ";
      }

      else
      {
        v18 = &stru_1F05B9908;
      }

      identifier = [OUTLINED_FUNCTION_16_4() identifier];
      model = [OUTLINED_FUNCTION_16_4() model];
      if (model)
      {
        v43 = MEMORY[0x1E696AEC0];
        model2 = [OUTLINED_FUNCTION_16_4() model];
        v17 = [v43 stringWithFormat:@" (%@)", model2];
      }

      name = [*(selfCopy + 312) name];
      *buf = 138544642;
      v118 = v15;
      v119 = 2082;
      v120 = v16;
      v121 = 2114;
      v122 = v18;
      v123 = 2114;
      v124 = identifier;
      v125 = 2114;
      v126 = v17;
      v127 = 2114;
      v128 = name;
      OUTLINED_FUNCTION_15_0(&dword_191750000, v14, v45, "%{public}@: Skippped deletions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ due to no streams to sync", buf);

      if (model)
      {
      }
    }

    goto LABEL_9;
  }

  [OUTLINED_FUNCTION_8_9() name];
  objc_claimAutoreleasedReturnValue();
  v6 = [OUTLINED_FUNCTION_20_5() deletionsSyncHistoryForPeer:? transportName:? error:?];
  v7 = *(selfCopy + 360);
  *(selfCopy + 360) = v6;

  v8 = objc_opt_class();
  if (![_DKSync2Coordinator canPerformSyncOperationWithClass:v8 syncType:*(selfCopy + 336) history:*(selfCopy + 360) transport:*(selfCopy + 312) peer:*(selfCopy + 320) policy:*(selfCopy + 328)])
  {
LABEL_9:
    [selfCopy endOperation];
    return;
  }

  existsAdditionsSyncHistory = [(_DKPerformSyncUpHistoryDeletionsOperation *)selfCopy existsAdditionsSyncHistory];
  v11 = +[_CDLogging syncChannel];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (existsAdditionsSyncHistory)
  {
    if (v12)
    {
      v99 = [objc_opt_class() description];
      name2 = [OUTLINED_FUNCTION_8_9() name];
      v46 = [OUTLINED_FUNCTION_2_15() me];
      v47 = &stru_1F05B9908;
      v48 = @"pseudo ";
      if (!v46)
      {
        v48 = &stru_1F05B9908;
      }

      v85 = v48;
      identifier2 = [OUTLINED_FUNCTION_2_15() identifier];
      model3 = [OUTLINED_FUNCTION_2_15() model];
      if (model3)
      {
        v54 = MEMORY[0x1E696AEC0];
        model4 = [OUTLINED_FUNCTION_2_15() model];
        v47 = [v54 stringWithFormat:@" (%@)", model4];
      }

      OUTLINED_FUNCTION_7_8();
      v122 = v85;
      v123 = v55;
      v124 = identifier2;
      v125 = v55;
      v126 = v47;
      OUTLINED_FUNCTION_21_6(&dword_191750000, v56, v57, "%{public}@: Peforming deletions history sync up on transport %{public}@ for %{public}@peer %{public}@%{public}@", v58, v59, v60, v61, v77, v78, v79, model4, v85, identifier2, name2, v99, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
      if (model3)
      {
      }
    }

    [*(selfCopy + 360) lastSyncDate];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_20_5() highPriorityForSyncUpWithSyncType:? lastSyncDate:?];

    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_3_17();
    [v13 fetchDeletionsHighWaterMarkWithPeer:? highPriority:? completion:?];
  }

  else
  {
    if (v12)
    {
      v100 = [objc_opt_class() description];
      name3 = [OUTLINED_FUNCTION_8_9() name];
      v50 = &stru_1F05B9908;
      if ([OUTLINED_FUNCTION_2_15() me])
      {
        v51 = @"pseudo ";
      }

      else
      {
        v51 = &stru_1F05B9908;
      }

      identifier3 = [OUTLINED_FUNCTION_2_15() identifier];
      model5 = [OUTLINED_FUNCTION_2_15() model];
      if (model5)
      {
        v62 = MEMORY[0x1E696AEC0];
        model6 = [OUTLINED_FUNCTION_2_15() model];
        v50 = [v62 stringWithFormat:@" (%@)", model6];
      }

      OUTLINED_FUNCTION_7_8();
      v122 = v51;
      v123 = v63;
      v124 = identifier3;
      v125 = v63;
      v126 = v50;
      OUTLINED_FUNCTION_21_6(&dword_191750000, v64, v65, "%{public}@: Skipping deletions history sync up on transport %{public}@ for %{public}@peer %{public}@%{public}@ due to no previous additions", v66, v67, v68, v69, v77, v78, v79, model4, v84, model6, name3, v100, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
      if (model5)
      {
      }
    }

    distantPast = [MEMORY[0x1E695DF00] distantPast];
    v22 = *(selfCopy + 352);
    sourceDeviceID = [OUTLINED_FUNCTION_2_15() sourceDeviceID];
    v24 = [_DKSyncMetadataStorage bookmarkStreamNameWithSourceDeviceID:sourceDeviceID];

    name4 = [OUTLINED_FUNCTION_8_9() name];
    v26 = distantPast;
    v98 = v24;
    v27 = [_DKSyncMetadataStorage eventFromStartDate:distantPast endDate:v22 bookmarkStreamName:v24 transportName:name4];

    v28 = *(selfCopy + 312);
    v92 = v27;
    v116 = v27;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v116 count:1];
    v109 = MEMORY[0x1E69E9820];
    v110 = 3221225472;
    v111 = __74___DKPerformSyncUpHistoryDeletionsOperation_performSyncUpHistoryDeletions__block_invoke;
    v112 = &unk_1E7367C28;
    v113 = selfCopy;
    v30 = v26;
    v114 = v30;
    v31 = v22;
    v115 = v31;
    [v28 updateStorageWithAddedEvents:v29 deletedEventIDs:0 highPriority:0 completion:&v109];

    v32 = *(selfCopy + 304);
    v33 = *(selfCopy + 320);
    name5 = [OUTLINED_FUNCTION_8_9() name];
    v108 = 0;
    [v32 setLastSyncDownDeletionDate:v31 previousDate:v30 forPeer:v33 transportName:name5 error:&v108];
    v35 = v108;

    v36 = +[_CDLogging syncChannel];
    v37 = v36;
    if (v35)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v38 = [objc_opt_class() description];
        dk_localtimeString = [(NSDate *)v30 dk_localtimeString];
        dk_localtimeString2 = [(NSDate *)v31 dk_localtimeString];
        domain = [(__CFString *)v35 domain];
        code = [(__CFString *)v35 code];
        *buf = 138544642;
        v118 = v38;
        v119 = 2114;
        v120 = dk_localtimeString;
        v121 = 2114;
        v122 = dk_localtimeString2;
        v123 = 2114;
        v124 = domain;
        v125 = 2048;
        v126 = code;
        v127 = 2112;
        v128 = v35;
        _os_log_error_impl(&dword_191750000, v37, OS_LOG_TYPE_ERROR, "%{public}@: Failed while fast forwarding local bookmark [%{public}@ ending %{public}@]: %{public}@:%lld (%@)", buf, 0x3Eu);
      }
    }

    else if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v91 = [objc_opt_class() description];
      dk_localtimeString3 = [(NSDate *)v30 dk_localtimeString];
      dk_localtimeString4 = [(NSDate *)v31 dk_localtimeString];
      v70 = [OUTLINED_FUNCTION_2_15() me];
      selfCopy = &stru_1F05B9908;
      v72 = @"pseudo ";
      if (!v70)
      {
        v72 = &stru_1F05B9908;
      }

      v80 = v72;
      identifier4 = [OUTLINED_FUNCTION_2_15() identifier];
      model7 = [OUTLINED_FUNCTION_2_15() model];
      if (model7)
      {
        v76 = MEMORY[0x1E696AEC0];
        selfCopy = [OUTLINED_FUNCTION_2_15() model];
        selfCopy = [v76 stringWithFormat:@" (%@)", selfCopy];
      }

      *buf = 138544642;
      v118 = v91;
      v119 = 2114;
      v120 = dk_localtimeString3;
      v121 = 2114;
      v122 = dk_localtimeString4;
      v123 = 2114;
      v124 = v80;
      v125 = 2114;
      v126 = identifier4;
      v127 = 2114;
      v128 = selfCopy;
      OUTLINED_FUNCTION_15_0(&dword_191750000, v37, v74, "%{public}@: Successfully fast forwarded local bookmark [%{public}@ ending %{public}@] for %{public}@peer %{public}@%{public}@", buf);
      if (model7)
      {
      }
    }
  }
}

- (uint64_t)existsAdditionsSyncHistory
{
  if (!self)
  {
    return 0;
  }

  history = [(_DKPerformSyncUpHistoryAdditionsOperation *)*(self + 296) history];
  if (!history)
  {
    v4 = *(self + 304);
    v5 = *(self + 320);
    name = [*(self + 312) name];
    history = [v4 additionsSyncHistoryForPeer:v5 transportName:name error:0];
  }

  lastSyncDate = [history lastSyncDate];
  if (lastSyncDate)
  {
    lastSyncDate2 = [history lastSyncDate];
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    v10 = [lastSyncDate2 isEqualToDate:distantPast];

    v11 = v10 ^ 1u;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)performSyncUpHistoryDeletionsWithDeletionsHighWaterMark:(void *)mark orError:
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  markCopy = mark;
  if (self)
  {
    if (v5)
    {
      [(_DKPerformSyncUpHistoryDeletionsOperation *)self performSyncUpHistoryDeletionsWithPreviousHighWaterMark:v5];
    }

    else
    {
      errors = +[_CDLogging syncChannel];
      v8 = os_log_type_enabled(errors, OS_LOG_TYPE_DEBUG);
      if (markCopy)
      {
        if (v8)
        {
          v25 = [objc_opt_class() description];
          name = [self[39] name];
          v10 = &stru_1F05B9908;
          if ([OUTLINED_FUNCTION_20_6() me])
          {
            v11 = @"pseudo ";
          }

          else
          {
            v11 = &stru_1F05B9908;
          }

          identifier = [OUTLINED_FUNCTION_20_6() identifier];
          model = [OUTLINED_FUNCTION_20_6() model];
          if (model)
          {
            v19 = MEMORY[0x1E696AEC0];
            model2 = [OUTLINED_FUNCTION_20_6() model];
            v10 = [v19 stringWithFormat:@" (%@)", model2];
          }

          domain = [markCopy domain];
          [markCopy code];
          *buf = 138545154;
          v28 = v25;
          OUTLINED_FUNCTION_17_7();
          v29 = v11;
          OUTLINED_FUNCTION_18_5();
          v30 = v21;
          v31 = domain;
          v32 = 2048;
          v33 = v22;
          v34 = 2112;
          v35 = markCopy;
          _os_log_debug_impl(&dword_191750000, errors, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping deletions history sync up on transport %{public}@ for %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x52u);

          if (model)
          {
          }
        }

        errors = [self errors];
        [errors addObject:markCopy];
      }

      else if (v8)
      {
        v26 = [objc_opt_class() description];
        name2 = [self[39] name];
        v15 = &stru_1F05B9908;
        if ([OUTLINED_FUNCTION_15_6() me])
        {
          v16 = @"pseudo ";
        }

        else
        {
          v16 = &stru_1F05B9908;
        }

        identifier2 = [OUTLINED_FUNCTION_15_6() identifier];
        model3 = [OUTLINED_FUNCTION_15_6() model];
        if (model3)
        {
          v23 = MEMORY[0x1E696AEC0];
          model2 = [OUTLINED_FUNCTION_15_6() model];
          v15 = [v23 stringWithFormat:@" (%@)", model2];
        }

        *buf = 138544386;
        v28 = v26;
        OUTLINED_FUNCTION_17_7();
        v29 = v16;
        OUTLINED_FUNCTION_18_5();
        _os_log_debug_impl(&dword_191750000, errors, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping deletions history sync up on transport %{public}@ for %{public}@peer %{public}@%{public}@ due to missing high water mark", buf, 0x34u);
        if (model3)
        {
        }
      }

      [self endOperation];
    }
  }
}

- (void)performSyncUpHistoryDeletionsWithPreviousHighWaterMark:(char *)mark
{
  v212 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (mark)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    v5 = +[_CDLogging syncChannel];
    v6 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    model2 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    v8 = &stru_1F05B9908;
    v9 = 0x1E696A000uLL;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v168 = v3;
      v81 = [objc_opt_class() description];
      name = [*(mark + 39) name];
      if ([OUTLINED_FUNCTION_14_6() me])
      {
        v8 = @"pseudo ";
      }

      identifier = [OUTLINED_FUNCTION_14_6() identifier];
      model = [OUTLINED_FUNCTION_14_6() model];
      markCopy = mark;
      if (model)
      {
        v105 = MEMORY[0x1E696AEC0];
        model2 = [OUTLINED_FUNCTION_14_6() model];
        v162 = model2;
        v85 = [v105 stringWithFormat:@" (%@)"];
      }

      else
      {
        v85 = &stru_1F05B9908;
      }

      dk_localtimeString = [(NSDate *)v168 dk_localtimeString];
      OUTLINED_FUNCTION_9_8();
      *(v107 + 4) = v81;
      v202 = 2114;
      *(v107 + 14) = name;
      v203 = 2114;
      v204 = v8;
      v205 = 2114;
      *(v107 + 34) = identifier;
      v206 = 2114;
      *(v107 + 44) = v85;
      v207 = 2112;
      *(v107 + 54) = v108;
      OUTLINED_FUNCTION_5_12();
      _os_log_debug_impl(v109, v110, v111, v112, v113, 0x3Eu);
      if (model)
      {
      }

      v3 = v168;
      mark = markCopy;
      model2 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      v9 = 0x1E696A000;
      v6 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    }

    v10 = v3;
    [*(mark + 44) timeIntervalSinceReferenceDate];
    v12 = v11;
    [v10 timeIntervalSinceReferenceDate];
    if (v12 - v13 <= [*(mark + 41) minSyncWindowInSeconds])
    {
      v25 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v96 = v9;
        markCopy2 = mark;
        v169 = v3;
        v98 = [objc_opt_class() description];
        v174 = v10;
        dk_localtimeString2 = [(NSDate *)v10 dk_localtimeString];
        if ([*&markCopy2[model2[892]] me])
        {
          v100 = @"pseudo ";
        }

        else
        {
          v100 = &stru_1F05B9908;
        }

        identifier2 = [*&markCopy2[model2[892]] identifier];
        model3 = [*&markCopy2[model2[892]] model];
        if (model3)
        {
          v121 = *(v96 + 3776);
          v104 = markCopy2;
          markCopy2 = [*&markCopy2[model2[892]] model];
          markCopy2 = [v121 stringWithFormat:@" (%@)", markCopy2];
        }

        else
        {
          markCopy2 = &stru_1F05B9908;
          v104 = markCopy2;
        }

        OUTLINED_FUNCTION_9_8();
        *(v122 + 4) = v98;
        OUTLINED_FUNCTION_12_4();
        *(v123 + 14) = dk_localtimeString2;
        v203 = 2114;
        v204 = v100;
        v205 = 2114;
        *(v123 + 34) = identifier2;
        v206 = 2114;
        *(v123 + 44) = markCopy2;
        OUTLINED_FUNCTION_5_12();
        _os_log_debug_impl(v124, v125, v126, v127, v128, 0x34u);
        if (model3)
        {
        }

        v3 = v169;
        mark = v104;
        v10 = v174;
      }

      v21 = 0;
      v20 = 0;
      goto LABEL_51;
    }

    v14 = *(mark + 46);
    if (!v14)
    {
      lastSyncDate = [*(mark + 45) lastSyncDate];
      +[_DKPerformSyncUpHistoryDeletionsOperation _updateEventStatsWithPreviousSyncDate:transportType:](_DKPerformSyncUpHistoryDeletionsOperation, lastSyncDate, [*&mark[v6[891]] transportType]);

      v14 = *(mark + 46);
    }

    *(mark + 46) = v14 + 1;
    v16 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v86 = [objc_opt_class() description];
      dk_localtimeString3 = [(NSDate *)v10 dk_localtimeString];
      OUTLINED_FUNCTION_9_8();
      *(v88 + 4) = v86;
      OUTLINED_FUNCTION_12_4();
      *(v90 + 14) = v89;
      OUTLINED_FUNCTION_5_12();
      _os_log_debug_impl(v91, v92, v93, v94, v95, 0x16u);
    }

    v17 = *(mark + 38);
    v18 = *(mark + 43);
    syncBatchSizeInEvents = [*(mark + 41) syncBatchSizeInEvents];
    v198 = 0;
    v199 = 0;
    v20 = [v17 tombstonesSinceDate:v10 streamNames:v18 limit:syncBatchSizeInEvents endDate:&v199 error:&v198];
    v175 = v199;
    v21 = v198;
    v22 = +[_CDLogging syncChannel];
    v23 = v22;
    if (v21)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        v114 = v172 = v20;
        dk_localtimeString4 = [(NSDate *)v10 dk_localtimeString];
        [(NSDate *)v175 dk_localtimeString];
        v117 = v116 = v3;
        domain = [(__CFString *)v21 domain];
        [(__CFString *)v21 code];
        OUTLINED_FUNCTION_9_8();
        *(v119 + 4) = v114;
        v202 = 2114;
        *(v119 + 14) = dk_localtimeString4;
        v203 = 2114;
        v204 = v117;
        v205 = 2114;
        *(v119 + 34) = domain;
        v206 = 2048;
        *(v119 + 44) = v120;
        v207 = 2112;
        *(v119 + 54) = v21;
        _os_log_error_impl(&dword_191750000, v23, OS_LOG_TYPE_ERROR, "%{public}@: Failed while querying for deletions with bookmark [%{public}@ ending %{public}@]: %{public}@:%lld (%@)", buf, 0x3Eu);

        v20 = v172;
        v3 = v116;
      }

      LOBYTE(v24) = 1;
LABEL_50:
      errors = [mark errors];
      [errors addObject:v21];

      if ((v24 & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v129 = [objc_opt_class() description];
      v130 = v20;
      v131 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];
      [(NSDate *)v10 dk_localtimeString];
      v133 = v132 = v3;
      dk_localtimeString5 = [(NSDate *)v175 dk_localtimeString];
      OUTLINED_FUNCTION_9_8();
      *(v135 + 4) = v129;
      OUTLINED_FUNCTION_12_4();
      *(v136 + 14) = v131;
      v203 = 2114;
      v204 = v133;
      v205 = 2114;
      *(v136 + 34) = v137;
      OUTLINED_FUNCTION_5_12();
      _os_log_debug_impl(v138, v139, v140, v141, v142, 0x2Au);

      v20 = v130;
      v3 = v132;
    }

    v173 = v10;

    v171 = v20;
    if (![v20 count])
    {
      v186 = 0;
      goto LABEL_38;
    }

    markCopy3 = mark;
    v167 = v3;
    v165 = +[_DKSyncPeerStatusTracker sharedInstance];
    pseudoPeerForSyncTransportCloudUp = [v165 pseudoPeerForSyncTransportCloudUp];
    sourceDeviceID = [pseudoPeerForSyncTransportCloudUp sourceDeviceID];
    v26 = +[_DKSystemEventStreams appWebUsageStream];
    name2 = [v26 name];

    v186 = objc_opt_new();
    v194 = 0u;
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    obj = v20;
    v27 = [obj countByEnumeratingWithState:&v194 objects:v211 count:16];
    v29 = 0x1E7366000uLL;
    if (!v27)
    {
      goto LABEL_36;
    }

    v30 = v27;
    v31 = *v195;
    *&v28 = 138543618;
    v176 = v28;
    v32 = 0x1E7366000uLL;
    v182 = *v195;
LABEL_19:
    v33 = 0;
    while (1)
    {
      if (*v195 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(*(&v194 + 1) + 8 * v33);
      stringValue = [v34 stringValue];
      if (stringValue)
      {
        break;
      }

      syncChannel = [*(v29 + 648) syncChannel];
      if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_ERROR))
      {
        syncChannel2 = [objc_opt_class() description];
        OUTLINED_FUNCTION_10_9(syncChannel2, v44, v45, v46, v47, v48, v49, v50, v162, v163, pseudoPeerForSyncTransportCloudUp, v165, v167, v171, v173, v175, v176);
        *(v51 + 14) = v34;
        _os_log_error_impl(&dword_191750000, syncChannel, OS_LOG_TYPE_ERROR, "%{public}@: Skipping tombstone due to missing tombstone uuid: %@", buf, 0x16u);
LABEL_33:
      }

      if (v30 == ++v33)
      {
        v30 = [obj countByEnumeratingWithState:&v194 objects:v211 count:16];
        if (!v30)
        {
LABEL_36:

          v3 = v167;
          mark = markCopy3;
LABEL_38:
          sourceDeviceID2 = [*(mark + 40) sourceDeviceID];
          v62 = [_DKSyncMetadataStorage bookmarkStreamNameWithSourceDeviceID:sourceDeviceID2];

          name3 = [*(mark + 39) name];
          obja = v62;
          v64 = [_DKSyncMetadataStorage eventFromStartDate:v173 endDate:v175 bookmarkStreamName:v62 transportName:name3];

          v185 = v64;
          if ([v171 count] || objc_msgSend(*(mark + 39), "transportType") != 8 || -[_DKSyncType forceSync](*(mark + 42)))
          {
            v65 = *(mark + 41);
            v66 = *(mark + 42);
            lastSyncDate2 = [*(mark + 45) lastSyncDate];
            v68 = [v65 highPriorityForSyncUpWithSyncType:v66 lastSyncDate:lastSyncDate2];

            v69 = *(mark + 39);
            v210 = v64;
            v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v210 count:1];
            v190[0] = MEMORY[0x1E69E9820];
            v190[1] = 3221225472;
            v190[2] = __100___DKPerformSyncUpHistoryDeletionsOperation_performSyncUpHistoryDeletionsWithPreviousHighWaterMark___block_invoke;
            v190[3] = &unk_1E7369CB0;
            v190[4] = mark;
            v71 = v173;
            v191 = v173;
            v72 = v175;
            v192 = v175;
            v193 = v186;
            [v69 updateStorageWithAddedEvents:v70 deletedEventIDs:v193 highPriority:v68 completion:v190];

            v24 = 0;
          }

          else
          {
            v24 = 1;
            v71 = v173;
            v72 = v175;
          }

          v73 = *(mark + 38);
          v74 = *(mark + 40);
          name4 = [*(mark + 39) name];
          v189 = 0;
          [v73 setLastSyncDownDeletionDate:v72 previousDate:v71 forPeer:v74 transportName:name4 error:&v189];
          v21 = v189;

          v76 = +[_CDLogging syncChannel];
          errors2 = v76;
          v78 = v72;
          if (v21)
          {
            v79 = obja;
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              v143 = [objc_opt_class() description];
              [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-[_DKSyncDeletedEventIDs count](v186)];
              v144 = v170 = v3;
              dk_localtimeString6 = [(NSDate *)v173 dk_localtimeString];
              dk_localtimeString7 = [(NSDate *)v78 dk_localtimeString];
              domain2 = [(__CFString *)v21 domain];
              [(__CFString *)v21 code];
              *buf = 138544898;
              v201 = v143;
              OUTLINED_FUNCTION_12_4();
              *(v148 + 14) = v144;
              v203 = 2114;
              v204 = dk_localtimeString6;
              v205 = 2114;
              *(v148 + 34) = dk_localtimeString7;
              v206 = 2114;
              *(v148 + 44) = domain2;
              v207 = 2048;
              *(v148 + 54) = v149;
              v208 = v150;
              v209 = v21;
              _os_log_error_impl(&dword_191750000, errors2, OS_LOG_TYPE_ERROR, "%{public}@: Failed while syncing up %@ deletions with bookmark [%{public}@ ending %{public}@]: %{public}@:%lld (%@)", buf, 0x48u);

              v3 = v170;
              v78 = v175;
            }

            errors2 = [mark errors];
            [errors2 addObject:v21];
          }

          else if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
          {
            v177 = [objc_opt_class() description];
            v151 = v72;
            v183 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-[_DKSyncDeletedEventIDs count](v186)];
            dk_localtimeString8 = [(NSDate *)v173 dk_localtimeString];
            dk_localtimeString9 = [(NSDate *)v151 dk_localtimeString];
            v153 = [*(mark + 40) me];
            v154 = &stru_1F05B9908;
            if (v153)
            {
              v154 = @"pseudo ";
            }

            v166 = v154;
            identifier3 = [*(mark + 40) identifier];
            model4 = [*(mark + 40) model];
            if (model4)
            {
              v158 = MEMORY[0x1E696AEC0];
              pseudoPeerForSyncTransportCloudUp = [*(mark + 40) model];
              v164 = [v158 stringWithFormat:@" (%@)", pseudoPeerForSyncTransportCloudUp];
            }

            else
            {
              v164 = &stru_1F05B9908;
            }

            OUTLINED_FUNCTION_9_8();
            *(v159 + 4) = v177;
            OUTLINED_FUNCTION_12_4();
            *(v160 + 14) = v183;
            v203 = 2114;
            v161 = dk_localtimeString8;
            v204 = dk_localtimeString8;
            v205 = 2114;
            *(v160 + 34) = dk_localtimeString9;
            v206 = 2114;
            *(v160 + 44) = v166;
            v207 = 2114;
            *(v160 + 54) = identifier3;
            v208 = 2114;
            v209 = v164;
            _os_log_debug_impl(&dword_191750000, errors2, OS_LOG_TYPE_DEBUG, "%{public}@: Successfully synced up %@ deletions with bookmark [%{public}@ ending %{public}@] to %{public}@peer %{public}@%{public}@", buf, 0x48u);
            v79 = obja;
            if (model4)
            {
            }

            v78 = v175;
          }

          else
          {
            v79 = obja;
          }

          if (v21)
          {
            v20 = v171;
            v10 = v173;
            goto LABEL_50;
          }

          v20 = v171;
          v10 = v173;
          if (!v24)
          {
LABEL_52:

            goto LABEL_53;
          }

LABEL_51:
          [mark endOperation];
          goto LABEL_52;
        }

        goto LABEL_19;
      }
    }

    syncChannel = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:stringValue];
    if (syncChannel)
    {
      metadata = [v34 metadata];
      [*(v32 + 2616) eventSourceDeviceID];
      v39 = v38 = v32;
      syncChannel2 = [metadata objectForKeyedSubscript:v39];

      if (syncChannel2)
      {
        metadata2 = [v34 metadata];
        eventStreamName = [*(v38 + 2616) eventStreamName];
        v43 = [metadata2 objectForKeyedSubscript:eventStreamName];

        if ([v43 isEqualToString:name2])
        {
          [(_DKSyncDeletedEventIDs *)v186 addDeletedEventID:syncChannel forSourceDeviceID:syncChannel2];
        }

        v29 = 0x1E7366000;
        v32 = v38;
        v31 = v182;
      }

      else
      {
        [(_DKSyncDeletedEventIDs *)v186 addDeletedEventID:syncChannel forSourceDeviceID:sourceDeviceID];
        v29 = 0x1E7366000;
        v32 = v38;
      }
    }

    else
    {
      syncChannel2 = [*(v29 + 648) syncChannel];
      if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_ERROR))
      {
        v52 = [objc_opt_class() description];
        OUTLINED_FUNCTION_10_9(v52, v53, v54, v55, v56, v57, v58, v59, v162, v163, pseudoPeerForSyncTransportCloudUp, v165, v167, v171, v173, v175, v176);
        *(v60 + 14) = stringValue;
        _os_log_error_impl(&dword_191750000, syncChannel2, OS_LOG_TYPE_ERROR, "%{public}@: Skipping tombstone due to malformed tombstone uuid: %@", buf, 0x16u);

        v29 = 0x1E7366000;
      }
    }

    goto LABEL_33;
  }

LABEL_53:
}

- (void)handleUpdateStorageWithStartDate:(void *)date endDate:(uint64_t)endDate deletedEventIDsCount:(void *)count orError:
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a2;
  dateCopy = date;
  countCopy = count;
  if (self)
  {
    v12 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v12);

    if (countCopy)
    {
      v13 = [_DKCKError isIgnorableError:countCopy];
      v14 = +[_CDLogging syncChannel];
      v15 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v16 = [objc_opt_class() description];
          domain = [countCopy domain];
          [countCopy code];
          OUTLINED_FUNCTION_4_15();
          _os_log_debug_impl(&dword_191750000, v15, OS_LOG_TYPE_DEBUG, "%{public}@: Did not update storage: %{public}@:%lld (%@)", buf, 0x2Au);
LABEL_25:
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = [objc_opt_class() description];
        domain = [countCopy domain];
        [countCopy code];
        OUTLINED_FUNCTION_4_15();
        _os_log_error_impl(&dword_191750000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed while updating storage: %{public}@:%lld (%@)", buf, 0x2Au);
        goto LABEL_25;
      }

      errors = [self errors];
      [errors addObject:countCopy];

LABEL_12:
      [self endOperation];
      goto LABEL_13;
    }

    v18 = +[_CDLogging syncChannel];
    v19 = v18;
    if (endDate)
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      v33 = [objc_opt_class() description];
      v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:endDate];
      dk_localtimeString = [(NSDate *)v9 dk_localtimeString];
      dk_localtimeString2 = [(NSDate *)dateCopy dk_localtimeString];
      [*(self + 312) transportType];
      v20 = &stru_1F05B9908;
      [OUTLINED_FUNCTION_6_15() me];
      identifier = [OUTLINED_FUNCTION_6_15() identifier];
      model = [OUTLINED_FUNCTION_6_15() model];
      if (model)
      {
        v23 = MEMORY[0x1E696AEC0];
        model2 = [OUTLINED_FUNCTION_6_15() model];
        v20 = [v23 stringWithFormat:@" (%@)", model2];
      }

      name = [*(self + 312) name];
      OUTLINED_FUNCTION_0_25();
      _os_log_impl(&dword_191750000, v19, OS_LOG_TYPE_INFO, "%{public}@: Synced up %@ deletions and high water mark with bookmark [%{public}@ ending %{public}@] doing sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x5Cu);
    }

    else
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      v33 = [objc_opt_class() description];
      v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
      dk_localtimeString = [(NSDate *)v9 dk_localtimeString];
      dk_localtimeString2 = [(NSDate *)dateCopy dk_localtimeString];
      [*(self + 312) transportType];
      v20 = &stru_1F05B9908;
      [OUTLINED_FUNCTION_6_15() me];
      identifier = [OUTLINED_FUNCTION_6_15() identifier];
      model = [OUTLINED_FUNCTION_6_15() model];
      if (model)
      {
        v28 = MEMORY[0x1E696AEC0];
        model2 = [OUTLINED_FUNCTION_6_15() model];
        v20 = [v28 stringWithFormat:@" (%@)", model2];
      }

      name = [*(self + 312) name];
      OUTLINED_FUNCTION_0_25();
      _os_log_debug_impl(&dword_191750000, v19, OS_LOG_TYPE_DEBUG, "%{public}@: Synced up %@ deletions and high water mark with bookmark [%{public}@ ending %{public}@] doing sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x5Cu);
    }

    if (model)
    {
    }

LABEL_21:
    +[_DKPerformSyncUpHistoryDeletionsOperation _updateEventStatsWithTotal:transportType:](_DKPerformSyncUpHistoryDeletionsOperation, endDate, [*(self + 312) transportType]);
    v26 = *(self + 368);
    maxBatchesPerSync = [*(self + 328) maxBatchesPerSync];
    if (endDate && v26 < maxBatchesPerSync)
    {
      OUTLINED_FUNCTION_3_17();
      v35 = 3221225472;
      v36 = __115___DKPerformSyncUpHistoryDeletionsOperation_handleUpdateStorageWithStartDate_endDate_deletedEventIDsCount_orError___block_invoke;
      v37 = &unk_1E7367710;
      selfCopy = self;
      v39 = dateCopy;
      [_DKSyncSerializer performAsyncBlock:v34];

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
}

@end