@interface _DKPerformSyncDownPeerDeletionsOperation
+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)date transportType:;
+ (void)_updateEventStatsWithTotal:(uint64_t)total transportType:;
- (id)initWithParent:(void *)parent localStorage:(void *)storage transport:(void *)transport peer:(void *)peer policy:(void *)policy type:;
- (void)endOperation;
- (void)handleFetchedDeletedEventIDs:(void *)ds startDate:(void *)date endDate:(void *)endDate untilDate:;
- (void)main;
- (void)performSyncDownPeerDeletions;
- (void)performSyncDownPeerDeletionsWithDidPrewarm:(void *)prewarm orError:;
- (void)performSyncDownPeerDeletionsWithHighWaterMark:(void *)mark orError:;
- (void)performSyncDownPeerDeletionsWithPreviousUntilDate:(uint64_t)date;
@end

@implementation _DKPerformSyncDownPeerDeletionsOperation

- (void)main
{
  v3 = objc_opt_class();
  if ([_DKSync2Coordinator shouldDeferSyncOperationWithClass:v3 syncType:self->_type transport:self->_transport peer:self->_peer policy:self->_policy])
  {

    [(_DKPerformSyncDownPeerDeletionsOperation *)self endOperation];
  }

  else
  {

    [(_DKPerformSyncDownPeerDeletionsOperation *)self performSyncDownPeerDeletions];
  }
}

+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)date transportType:
{
  v11 = a2;
  objc_opt_self();
  if (_updateEventStatsWithPreviousSyncDate_transportType__syncCadenceInitialized != -1)
  {
    +[_DKPerformSyncDownPeerDeletionsOperation _updateEventStatsWithPreviousSyncDate:transportType:];
  }

  if (v11)
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    v5 = [v11 isEqualToDate:distantPast];

    if ((v5 & 1) == 0)
    {
      v6 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceByTransportCounter;
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

  v9 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceCounter;
  date2 = [MEMORY[0x1E695DF00] date];
  [(_DKEventStatsTimerCounter *)v9 addTimingWithStartDate:v11 endDate:date2];
}

+ (void)_updateEventStatsWithTotal:(uint64_t)total transportType:
{
  objc_opt_self();
  if (_updateEventStatsWithTotal_transportType__syncDownDeletionsCounterInitialized != -1)
  {
    +[_DKPerformSyncDownPeerDeletionsOperation _updateEventStatsWithTotal:transportType:];
  }

  [(_DKEventStatsCounter *)_updateEventStatsWithTotal_transportType__syncDownDeletionsTotalCounter incrementCountByNumber:a2];
  v5 = _updateEventStatsWithTotal_transportType__syncDownDeletionsTotalByTransportCounter;
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
  v2.super_class = _DKPerformSyncDownPeerDeletionsOperation;
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
    v22.super_class = _DKPerformSyncDownPeerDeletionsOperation;
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

- (void)performSyncDownPeerDeletions
{
  if (result)
  {
    v1 = result;
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    v3 = *(v1 + 37);
    v4 = *(v1 + 39);
    name = [*(v1 + 38) name];
    v6 = [v3 deletionsSyncHistoryForPeer:v4 transportName:name error:0];
    v7 = *(v1 + 43);
    *(v1 + 43) = v6;

    v8 = objc_opt_class();
    if ([_DKSync2Coordinator canPerformSyncOperationWithClass:v8 syncType:*(v1 + 41) history:*(v1 + 43) transport:*(v1 + 38) peer:*(v1 + 39) policy:*(v1 + 40)])
    {
      v9 = *(v1 + 38);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __72___DKPerformSyncDownPeerDeletionsOperation_performSyncDownPeerDeletions__block_invoke;
      v10[3] = &unk_1E73675F8;
      v10[4] = v1;
      return [v9 prewarmFetchWithCompletion:v10];
    }

    else
    {

      return [v1 endOperation];
    }
  }

  return result;
}

- (void)performSyncDownPeerDeletionsWithDidPrewarm:(void *)prewarm orError:
{
  v41 = *MEMORY[0x1E69E9840];
  prewarmCopy = prewarm;
  if (self)
  {
    v6 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v6);

    if (prewarmCopy)
    {
      errors = [self errors];
      [errors addObject:prewarmCopy];
    }

    else
    {
      v8 = +[_CDLogging syncChannel];
      model4 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      v10 = &stru_1F05B9908;
      v11 = "uesWithRequest:options:responseHandler:]";
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v31 = [objc_opt_class() description];
        [OUTLINED_FUNCTION_13_2() transportType];
        [OUTLINED_FUNCTION_5_5() me];
        identifier = [OUTLINED_FUNCTION_5_5() identifier];
        model = [OUTLINED_FUNCTION_5_5() model];
        if (model)
        {
          v17 = MEMORY[0x1E696AEC0];
          model2 = [OUTLINED_FUNCTION_5_5() model];
          v29 = [v17 stringWithFormat:@" (%@)", model2];
        }

        else
        {
          v29 = &stru_1F05B9908;
        }

        name = [OUTLINED_FUNCTION_13_2() name];
        v33 = 138544642;
        v34 = v31;
        v35 = 2082;
        OUTLINED_FUNCTION_14_2();
        v36 = identifier;
        v37 = v19;
        v38 = v29;
        v39 = v19;
        v40 = v20;
        OUTLINED_FUNCTION_15_0(&dword_191750000, v8, v21, "%{public}@: Performing deletions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", &v33);

        if (model)
        {
        }

        v11 = "[_DKSyncRapportContextStorage handleFetchContextValuesWithRequest:options:responseHandler:]" + 52;
      }

      if (a2 && [OUTLINED_FUNCTION_13_2() hasDeletionsFlagForPeer:self[39]])
      {
        date = [MEMORY[0x1E695DF00] date];
        [(_DKPerformSyncDownPeerDeletionsOperation *)self performSyncDownPeerDeletionsWithHighWaterMark:date orError:0];

        goto LABEL_10;
      }

      v12 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v32 = [objc_opt_class() description];
        [OUTLINED_FUNCTION_13_2() transportType];
        [OUTLINED_FUNCTION_5_5() me];
        identifier2 = [OUTLINED_FUNCTION_5_5() identifier];
        model3 = [OUTLINED_FUNCTION_5_5() model];
        v15 = v11;
        if (model3)
        {
          v22 = MEMORY[0x1E696AEC0];
          model4 = [OUTLINED_FUNCTION_5_5() model];
          v10 = [v22 stringWithFormat:@" (%@)", model4];
        }

        name2 = [OUTLINED_FUNCTION_13_2() name];
        v33 = *(v15 + 377);
        v34 = v32;
        v35 = 2082;
        OUTLINED_FUNCTION_14_2();
        v36 = identifier2;
        v37 = v24;
        v38 = v10;
        v39 = v24;
        v40 = v25;
        OUTLINED_FUNCTION_15_0(&dword_191750000, v12, v26, "%{public}@: Skipping fetching deletions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ due to no changes to sync", &v33);

        if (model3)
        {
        }
      }
    }

    [self endOperation];
  }

LABEL_10:
}

- (void)performSyncDownPeerDeletionsWithHighWaterMark:(void *)mark orError:
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a2;
  markCopy = mark;
  v8 = markCopy;
  if (self)
  {
    if (markCopy)
    {
      errors = [self errors];
      [errors addObject:v8];
    }

    else
    {
      if (v6)
      {
        distantPast = [MEMORY[0x1E695DF00] distantPast];
        v11 = [v6 isEqualToDate:distantPast];

        if ((v11 & 1) == 0)
        {
          objc_storeStrong((self + 352), a2);
          [(_DKPerformSyncDownPeerDeletionsOperation *)self performSyncDownPeerDeletionsWithPreviousUntilDate:?];
          goto LABEL_9;
        }
      }

      v12 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v26 = [objc_opt_class() description];
        transportType = [*(self + 304) transportType];
        v14 = "down from";
        if (transportType == 8)
        {
          v14 = "up to";
        }

        v25 = v14;
        v15 = [OUTLINED_FUNCTION_19_3() me];
        v16 = &stru_1F05B9908;
        v17 = @"pseudo ";
        if (!v15)
        {
          v17 = &stru_1F05B9908;
        }

        v24 = v17;
        identifier = [OUTLINED_FUNCTION_19_3() identifier];
        model = [OUTLINED_FUNCTION_19_3() model];
        if (model)
        {
          v20 = MEMORY[0x1E696AEC0];
          model2 = [OUTLINED_FUNCTION_19_3() model];
          v16 = [v20 stringWithFormat:@" (%@)", model2];
        }

        name = [*(self + 304) name];
        v27 = 138544642;
        v28 = v26;
        v29 = 2082;
        v30 = v25;
        v31 = 2114;
        v32 = v24;
        v33 = 2114;
        v34 = identifier;
        v35 = 2114;
        v36 = v16;
        v37 = 2114;
        v38 = name;
        OUTLINED_FUNCTION_15_0(&dword_191750000, v12, v22, "%{public}@: Will not attempt deletions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ because peer has not yet synced deletions", &v27);

        if (model)
        {
        }
      }

      [*(self + 304) setHasDeletionsFlag:0 forPeer:*(self + 312)];
    }

    [self endOperation];
  }

LABEL_9:
}

- (void)performSyncDownPeerDeletionsWithPreviousUntilDate:(uint64_t)date
{
  v138 = *MEMORY[0x1E69E9840];
  dk_localtimeString2 = a2;
  if (date)
  {
    v4 = +[_CDLogging syncChannel];
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
    v106 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    name = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    if (dk_localtimeString2)
    {
      if (v5)
      {
        dk_localtimeString2 = [OUTLINED_FUNCTION_17_3(v5 v6)];
        transportType = [OUTLINED_FUNCTION_12_2() transportType];
        v51 = "down from";
        if (transportType == 8)
        {
          v51 = "up to";
        }

        dk_localtimeString3 = v51;
        [OUTLINED_FUNCTION_1_13() me];
        identifier = [OUTLINED_FUNCTION_1_13() identifier];
        model = [OUTLINED_FUNCTION_1_13() model];
        if (model)
        {
          v63 = MEMORY[0x1E696AEC0];
          model2 = [OUTLINED_FUNCTION_1_13() model];
          v106 = [v63 stringWithFormat:@" (%@)", model2];
        }

        else
        {
          v106 = &stru_1F05B9908;
        }

        name = [*(date + 304) name];
        dk_localtimeString = [(NSDate *)v118 dk_localtimeString];
        *buf = 138544898;
        v125 = dk_localtimeString2;
        v126 = 2082;
        v127 = dk_localtimeString3;
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_22_1();
        v135 = name;
        v136 = 2112;
        v137 = v65;
        _os_log_debug_impl(&dword_191750000, v4, OS_LOG_TYPE_DEBUG, "%{public}@: Will attempt another deletions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ since %@", buf, 0x48u);

        if (model)
        {
        }

        OUTLINED_FUNCTION_6_9();
      }

      distantPast = dk_localtimeString2;
      goto LABEL_5;
    }

    if (v5)
    {
      v118 = [objc_opt_class() description];
      transportType2 = [OUTLINED_FUNCTION_12_2() transportType];
      v58 = "down from";
      if (transportType2 == 8)
      {
        v58 = "up to";
      }

      dk_localtimeString3 = v58;
      if ([OUTLINED_FUNCTION_1_13() me])
      {
        v59 = @"pseudo ";
      }

      else
      {
        v59 = &stru_1F05B9908;
      }

      identifier2 = [OUTLINED_FUNCTION_1_13() identifier];
      model3 = [OUTLINED_FUNCTION_1_13() model];
      if (model3)
      {
        v80 = MEMORY[0x1E696AEC0];
        model4 = [*(date + 312) model];
        v109 = [v80 stringWithFormat:@" (%@)", model4];
      }

      else
      {
        v109 = &stru_1F05B9908;
      }

      name2 = [*(date + 304) name];
      *buf = 138544642;
      v125 = v118;
      v126 = 2082;
      v127 = dk_localtimeString3;
      v128 = 2114;
      v129 = v59;
      v130 = 2114;
      OUTLINED_FUNCTION_22_1();
      v135 = v82;
      OUTLINED_FUNCTION_15_0(&dword_191750000, v4, v83, "%{public}@: Will attempt deletions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf);

      if (model3)
      {
      }

      name = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      v106 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    }

    if ([OUTLINED_FUNCTION_1_13() me])
    {
      v28 = 0;
    }

    else
    {
      v35 = v106;
      v36 = *(date + 296);
      v37 = *(date + name[515]);
      name3 = [*(date + v35[514]) name];
      v123 = 0;
      v39 = v36;
      v106 = v35;
      dk_localtimeString2 = 0;
      distantPast = [v39 lastSyncDownDeletionDateForPeer:v37 transportName:name3 error:&v123];
      v28 = v123;

      if (distantPast)
      {
        goto LABEL_23;
      }
    }

    distantPast = [MEMORY[0x1E695DF00] distantPast];
LABEL_23:
    if (v28)
    {
      v40 = +[_CDLogging syncChannel];
      v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG);
      if (v41)
      {
        dk_localtimeString2 = [OUTLINED_FUNCTION_17_3(v41 v42)];
        v71 = [OUTLINED_FUNCTION_1_13() me];
        v1092 = &stru_1F05B9908;
        v73 = @"pseudo ";
        if (!v71)
        {
          v73 = &stru_1F05B9908;
        }

        v116 = v73;
        name = [OUTLINED_FUNCTION_1_13() identifier];
        model5 = [OUTLINED_FUNCTION_5_5() model];
        if (model5)
        {
          v94 = MEMORY[0x1E696AEC0];
          model4 = [OUTLINED_FUNCTION_5_5() model];
          v1092 = [v94 stringWithFormat:@" (%@)", model4];
        }

        domain = [v28 domain];
        code = [v28 code];
        *buf = 138544898;
        v125 = dk_localtimeString2;
        v126 = 2114;
        v127 = v116;
        v128 = 2114;
        v129 = name;
        v130 = 2114;
        v131 = v1092;
        v132 = 2114;
        v133 = domain;
        v134 = 2048;
        v135 = code;
        v136 = 2112;
        v137 = v28;
        _os_log_debug_impl(&dword_191750000, v40, OS_LOG_TYPE_DEBUG, "%{public}@: Failed to find last sync down deletions bookmark from %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

        if (model5)
        {
        }

        OUTLINED_FUNCTION_6_9();
      }

      errors = [date errors];
      [errors addObject:v28];
      goto LABEL_29;
    }

LABEL_5:
    errors = *(date + 352);
    v11 = +[_CDLogging syncChannel];
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      v110 = [OUTLINED_FUNCTION_17_3(v12 v13)];
      dk_localtimeString2 = [(NSDate *)distantPast dk_localtimeString];
      dk_localtimeString3 = [(NSDate *)errors dk_localtimeString];
      v46 = [OUTLINED_FUNCTION_1_13() me];
      v106 = &stru_1F05B9908;
      v47 = @"pseudo ";
      if (!v46)
      {
        v47 = &stru_1F05B9908;
      }

      v107 = v47;
      identifier3 = [OUTLINED_FUNCTION_1_13() identifier];
      model6 = [OUTLINED_FUNCTION_1_13() model];
      if (model6)
      {
        v54 = MEMORY[0x1E696AEC0];
        model7 = [OUTLINED_FUNCTION_1_13() model];
        v106 = [v54 stringWithFormat:@" (%@)", model7];
      }

      *buf = 138544642;
      name = v110;
      v125 = v110;
      v126 = 2114;
      v127 = dk_localtimeString2;
      OUTLINED_FUNCTION_7_2();
      v131 = v107;
      v132 = v55;
      v133 = identifier3;
      v134 = v55;
      v135 = v106;
      OUTLINED_FUNCTION_15_0(&dword_191750000, v11, v56, "%{public}@: Syncing down deletions with bookmark [%{public}@ ending %{public}@] from %{public}@peer %{public}@%{public}@", buf);
      if (model6)
      {
      }

      OUTLINED_FUNCTION_6_9();
    }

    [errors timeIntervalSinceReferenceDate];
    v15 = v14;
    [distantPast timeIntervalSinceReferenceDate];
    if (v15 - v16 <= [*(date + 320) minSyncWindowInSeconds])
    {
      v17 = +[_CDLogging syncChannel];
      v29 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
      if (v29)
      {
        v31 = [OUTLINED_FUNCTION_17_3(v29 v30)];
        dk_localtimeString2 = [(NSDate *)distantPast dk_localtimeString];
        if ([OUTLINED_FUNCTION_1_13() me])
        {
          v32 = @"pseudo ";
        }

        else
        {
          v32 = &stru_1F05B9908;
        }

        identifier4 = [OUTLINED_FUNCTION_1_13() identifier];
        model8 = [OUTLINED_FUNCTION_1_13() model];
        if (model8)
        {
          v112 = identifier4;
          v75 = v32;
          v76 = dk_localtimeString2;
          v77 = v31;
          v78 = MEMORY[0x1E696AEC0];
          dk_localtimeString3 = [OUTLINED_FUNCTION_1_13() model];
          v79 = v78;
          v31 = v77;
          dk_localtimeString2 = v76;
          v32 = v75;
          identifier4 = v112;
          name = [v79 stringWithFormat:@" (%@)", dk_localtimeString3];
        }

        else
        {
          name = &stru_1F05B9908;
        }

        *buf = 138544386;
        v125 = v31;
        v126 = 2112;
        v127 = dk_localtimeString2;
        v128 = 2114;
        v129 = v32;
        v130 = 2114;
        v131 = identifier4;
        v132 = 2114;
        v133 = name;
        _os_log_debug_impl(&dword_191750000, v17, OS_LOG_TYPE_DEBUG, "%{public}@: Deletions bookmark %@ is up-to-date for deletions sync down for %{public}@peer %{public}@%{public}@", buf, 0x34u);
        if (model8)
        {
        }

        OUTLINED_FUNCTION_6_9();
      }
    }

    else
    {
      v17 = [*(date + 320) streamNamesToSyncWithDisabledFeatures:0];
      if ([v17 count])
      {
        v119 = dk_localtimeString2;
        v18 = v106;
        v19 = *(date + 360);
        if (!v19)
        {
          lastSyncDate = [*(date + 344) lastSyncDate];
          +[_DKPerformSyncDownPeerDeletionsOperation _updateEventStatsWithPreviousSyncDate:transportType:](_DKPerformSyncDownPeerDeletionsOperation, lastSyncDate, [*(date + v106[514]) transportType]);

          v19 = *(date + 360);
        }

        v21 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        *(date + 360) = v19 + 1;
        v22 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v115 = [objc_opt_class() description];
          dk_localtimeString4 = [(NSDate *)distantPast dk_localtimeString];
          dk_localtimeString5 = [(NSDate *)errors dk_localtimeString];
          v67 = [OUTLINED_FUNCTION_1_13() me];
          v68 = &stru_1F05B9908;
          if (v67)
          {
            v68 = @"pseudo ";
          }

          v105 = v68;
          identifier5 = [OUTLINED_FUNCTION_1_13() identifier];
          model9 = [OUTLINED_FUNCTION_1_13() model];
          if (model9)
          {
            v102 = dk_localtimeString4;
            v90 = MEMORY[0x1E696AEC0];
            model10 = [OUTLINED_FUNCTION_1_13() model];
            v91 = v90;
            dk_localtimeString4 = v102;
            v103 = [v91 stringWithFormat:@" (%@)", model10];
          }

          else
          {
            v103 = &stru_1F05B9908;
          }

          *buf = 138544642;
          v125 = v115;
          v126 = 2114;
          v127 = dk_localtimeString4;
          OUTLINED_FUNCTION_7_2();
          v131 = v105;
          v132 = v92;
          v133 = identifier5;
          v134 = v92;
          v135 = v103;
          OUTLINED_FUNCTION_15_0(&dword_191750000, v22, v93, "%{public}@: Fetching deletions with bookmark [%{public}@ ending %{public}@] from %{public}@peer %{public}@%{public}@", buf);
          if (model9)
          {
          }

          v21 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        }

        v23 = *(date + v18[514]);
        v24 = *(date + v21[515]);
        syncBatchSizeInEvents = [*(date + 320) syncBatchSizeInEvents];
        v26 = *(date + 336);
        v120[0] = MEMORY[0x1E69E9820];
        v120[1] = 3221225472;
        v120[2] = __94___DKPerformSyncDownPeerDeletionsOperation_performSyncDownPeerDeletionsWithPreviousUntilDate___block_invoke;
        v120[3] = &unk_1E7368E50;
        v120[4] = date;
        distantPast = distantPast;
        v121 = distantPast;
        v122 = errors;
        v27 = errors;
        [v23 fetchDeletedEventIDsFromPeer:v24 sinceDate:distantPast streamNames:v17 limit:syncBatchSizeInEvents highPriority:v26 completion:v120];

        v28 = 0;
        dk_localtimeString2 = v119;
LABEL_32:

        goto LABEL_33;
      }

      v43 = +[_CDLogging syncChannel];
      v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG);
      if (v44)
      {
        v117 = [OUTLINED_FUNCTION_17_3(v44 v45)];
        v84 = v106;
        transportType3 = [OUTLINED_FUNCTION_12_2() transportType];
        v86 = "down from";
        if (transportType3 == 8)
        {
          v86 = "up to";
        }

        v113 = v86;
        [OUTLINED_FUNCTION_1_13() me];
        identifier6 = [OUTLINED_FUNCTION_1_13() identifier];
        model11 = [OUTLINED_FUNCTION_1_13() model];
        if (model11)
        {
          v97 = MEMORY[0x1E696AEC0];
          model7 = [OUTLINED_FUNCTION_1_13() model];
          v104 = [v97 stringWithFormat:@" (%@)", model7];
        }

        else
        {
          v104 = &stru_1F05B9908;
        }

        name4 = [*(date + v84[514]) name];
        *buf = 138544642;
        v125 = v117;
        v126 = 2082;
        v127 = v113;
        OUTLINED_FUNCTION_7_2();
        v131 = identifier6;
        v132 = v99;
        v133 = v104;
        v134 = v99;
        v135 = v100;
        OUTLINED_FUNCTION_15_0(&dword_191750000, v43, v101, "%{public}@: Skipped fetching deletions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ due to no streams to sync", buf);

        if (model11)
        {
        }

        name = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        dk_localtimeString2 = v118;
      }
    }

    v28 = 0;
LABEL_29:

    if ([OUTLINED_FUNCTION_12_2() transportType] != 1)
    {
      [OUTLINED_FUNCTION_12_2() setHasDeletionsFlag:0 forPeer:*(date + name[515])];
    }

    [date endOperation];
    goto LABEL_32;
  }

LABEL_33:
}

- (void)handleFetchedDeletedEventIDs:(void *)ds startDate:(void *)date endDate:(void *)endDate untilDate:
{
  v192 = *MEMORY[0x1E69E9840];
  v9 = a2;
  dsCopy = ds;
  dateCopy = date;
  endDateCopy = endDate;
  if (self)
  {
    v12 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v12);

    if (!endDateCopy)
    {
      endDateCopy = *(self + 352);
    }

    v13 = 0x1E7366000uLL;
    v14 = +[_CDLogging syncChannel];
    v15 = 0x1E696A000;
    v168 = dsCopy;
    v169 = v9;
    v171 = endDateCopy;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_16_1();
      v161 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
      dk_localtimeString = [(NSDate *)dsCopy dk_localtimeString];
      dk_localtimeString2 = [(NSDate *)dateCopy dk_localtimeString];
      v77 = [OUTLINED_FUNCTION_21_2() isEqualToDate:?];
      if (v77)
      {
        dk_localtimeString3 = @"ending";
      }

      else
      {
        dk_localtimeString3 = [(NSDate *)endDateCopy dk_localtimeString];
      }

      v78 = &stru_1F05B9908;
      if ([OUTLINED_FUNCTION_2_9() me])
      {
        v79 = @"pseudo ";
      }

      else
      {
        v79 = &stru_1F05B9908;
      }

      identifier = [OUTLINED_FUNCTION_2_9() identifier];
      model = [OUTLINED_FUNCTION_2_9() model];
      if (model)
      {
        v82 = MEMORY[0x1E696AEC0];
        [*(self + 312) model];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_20_2();
        v78 = [v82 stringWithFormat:@" (%@)"];
      }

      *buf = 138545154;
      v177 = v165;
      OUTLINED_FUNCTION_9_3();
      v179 = v161;
      v180 = 2114;
      v181 = dk_localtimeString;
      v182 = 2114;
      v183 = dk_localtimeString2;
      v184 = 2114;
      v185 = dk_localtimeString3;
      v186 = 2114;
      v187 = v79;
      OUTLINED_FUNCTION_18_2();
      *(v83 + 74) = v78;
      _os_log_debug_impl(&dword_191750000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: Fetched %@ deleted event ids with bookmark [%{public}@ ending %{public}@] up through %{public}@ from %{public}@peer %{public}@%{public}@", buf, 0x52u);
      if (model)
      {
      }

      if ((v77 & 1) == 0)
      {
      }

      dsCopy = v168;
      v9 = v169;
      endDateCopy = v171;
      v13 = 0x1E7366000;
      v15 = 0x1E696A000;
    }

    v16 = [v9 count];
    syncChannel = [*(v13 + 648) syncChannel];
    v18 = syncChannel;
    if (v16)
    {
      if (!os_log_type_enabled(syncChannel, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_16_1();
      v153 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
      dk_localtimeString4 = [(NSDate *)dsCopy dk_localtimeString];
      v27 = OUTLINED_FUNCTION_10_5(dk_localtimeString4, v20, v21, v22, v23, v24, v25, v26, v138, v139, v140, v142, model7, dk_localtimeString6, dk_localtimeString5, v153, v161, v165, v168, v169, dateCopy);
      dk_localtimeString5 = [(NSDate *)v27 dk_localtimeString];
      v28 = [OUTLINED_FUNCTION_21_2() isEqualToDate:?];
      if (v28)
      {
        dk_localtimeString6 = @"ending";
      }

      else
      {
        dk_localtimeString6 = [(NSDate *)endDateCopy dk_localtimeString];
      }

      [*(self + 304) transportType];
      v38 = &stru_1F05B9908;
      [OUTLINED_FUNCTION_4_9() me];
      identifier2 = [OUTLINED_FUNCTION_4_9() identifier];
      model2 = [OUTLINED_FUNCTION_4_9() model];
      if (model2)
      {
        v41 = MEMORY[0x1E696AEC0];
        [OUTLINED_FUNCTION_4_9() model];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_20_2();
        v38 = [v41 stringWithFormat:@" (%@)"];
      }

      name = [*(self + 304) name];
      *buf = 138545666;
      v177 = v166;
      OUTLINED_FUNCTION_9_3();
      OUTLINED_FUNCTION_0_14();
      OUTLINED_FUNCTION_3_9();
      _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_INFO, "%{public}@: Fetched %@ deleted event ids with bookmark [%{public}@ ending %{public}@] up through %{public}@ doing sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x66u);
    }

    else
    {
      if (!os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_16_1();
      v155 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
      dk_localtimeString7 = [(NSDate *)dsCopy dk_localtimeString];
      v37 = OUTLINED_FUNCTION_10_5(dk_localtimeString7, v30, v31, v32, v33, v34, v35, v36, v138, v139, v140, v142, model7, dk_localtimeString6, dk_localtimeString5, v155, v161, v165, v168, v169, dateCopy);
      dk_localtimeString5 = [(NSDate *)v37 dk_localtimeString];
      v28 = [OUTLINED_FUNCTION_21_2() isEqualToDate:?];
      if (v28)
      {
        dk_localtimeString6 = @"ending";
      }

      else
      {
        dk_localtimeString6 = [(NSDate *)endDateCopy dk_localtimeString];
      }

      [*(self + 304) transportType];
      v38 = &stru_1F05B9908;
      [OUTLINED_FUNCTION_4_9() me];
      identifier2 = [OUTLINED_FUNCTION_4_9() identifier];
      model2 = [OUTLINED_FUNCTION_4_9() model];
      if (model2)
      {
        v117 = MEMORY[0x1E696AEC0];
        [OUTLINED_FUNCTION_4_9() model];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_20_2();
        v38 = [v117 stringWithFormat:@" (%@)"];
      }

      name = [*(self + 304) name];
      *buf = 138545666;
      v177 = v166;
      OUTLINED_FUNCTION_9_3();
      OUTLINED_FUNCTION_0_14();
      OUTLINED_FUNCTION_3_9();
      _os_log_debug_impl(&dword_191750000, v18, OS_LOG_TYPE_DEBUG, "%{public}@: Fetched %@ deleted event ids with bookmark [%{public}@ ending %{public}@] up through %{public}@ doing sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x66u);
    }

    if (model2)
    {
    }

    dsCopy = v168;
    v9 = v169;
    endDateCopy = v171;
    if ((v28 & 1) == 0)
    {
    }

    v13 = 0x1E7366000uLL;
    v15 = 0x1E696A000uLL;
LABEL_21:

    v43 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    sourceDeviceID = [OUTLINED_FUNCTION_2_9() sourceDeviceID];
    v45 = sourceDeviceID;
    if (sourceDeviceID)
    {
      v167 = sourceDeviceID;
      errors3 = +[_DKSyncPeerStatusTracker sharedInstance];
      date = [MEMORY[0x1E695DF00] date];
      [errors3 setLastSuccessfulActivityDate:date onTransport:objc_msgSend(OUTLINED_FUNCTION_11_4() forPeer:{"transportType"), *(self + 312)}];

      if ([v9 count])
      {
        *(self + 368) = 1;
        v48 = v13;
        v49 = [v9 count];
        [OUTLINED_FUNCTION_11_4() transportType];
        v50 = OUTLINED_FUNCTION_8_4();
        v51 = v49;
        v13 = v48;
        [(_DKPerformSyncDownPeerDeletionsOperation *)v50 _updateEventStatsWithTotal:v51 transportType:v52];
        v53 = *(self + 296);
        v175 = 0;
        v54 = [v53 deleteEventsWithEventIDs:v9 error:&v175];
        v55 = v175;
        syncChannel2 = [*(v48 + 648) syncChannel];
        errors = syncChannel2;
        if (v54)
        {
          if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_DEBUG))
          {
            v145 = [objc_opt_class() description];
            v58 = *(v15 + 3480);
            [v169 count];
            v156 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
            dk_localtimeString8 = [(NSDate *)v168 dk_localtimeString];
            v67 = OUTLINED_FUNCTION_10_5(dk_localtimeString8, v60, v61, v62, v63, v64, v65, v66, v138, v139, v140, v142, v145, dk_localtimeString6, dk_localtimeString5, v156, v161, v167, v168, v169, dateCopy);
            dk_localtimeString9 = [(NSDate *)v67 dk_localtimeString];
            v143 = [v58 isEqualToDate:v171];
            if (v143)
            {
              dk_localtimeString10 = @"ending";
            }

            else
            {
              dk_localtimeString10 = [(NSDate *)v171 dk_localtimeString];
            }

            v141 = &stru_1F05B9908;
            if ([OUTLINED_FUNCTION_2_9() me])
            {
              v119 = @"pseudo ";
            }

            else
            {
              v119 = &stru_1F05B9908;
            }

            identifier3 = [OUTLINED_FUNCTION_2_9() identifier];
            model3 = [OUTLINED_FUNCTION_2_9() model];
            if (model3)
            {
              v131 = MEMORY[0x1E696AEC0];
              model4 = [*(self + 312) model];
              v141 = [v131 stringWithFormat:@" (%@)", model4];
            }

            *buf = 138545154;
            v177 = model7;
            OUTLINED_FUNCTION_9_3();
            OUTLINED_FUNCTION_0_14();
            v186 = v132;
            v187 = v119;
            OUTLINED_FUNCTION_18_2();
            *(v133 + 74) = v141;
            OUTLINED_FUNCTION_23_1();
            _os_log_debug_impl(v134, v135, OS_LOG_TYPE_DEBUG, v136, v137, 0x52u);
            if (model3)
            {
            }

            v13 = v48;
            if ((v143 & 1) == 0)
            {
            }

            v43 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
          }
        }

        else
        {
          if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_ERROR))
          {
            v160 = [objc_opt_class() description];
            [v169 count];
            v164 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
            if ([OUTLINED_FUNCTION_2_9() me])
            {
              v106 = @"pseudo ";
            }

            else
            {
              v106 = &stru_1F05B9908;
            }

            identifier4 = [OUTLINED_FUNCTION_2_9() identifier];
            model5 = [OUTLINED_FUNCTION_2_9() model];
            if (model5)
            {
              v122 = MEMORY[0x1E696AEC0];
              dk_localtimeString6 = [*(self + 312) model];
              v146 = [v122 stringWithFormat:@" (%@)", dk_localtimeString6];
            }

            else
            {
              v146 = &stru_1F05B9908;
            }

            domain = [v55 domain];
            [v55 code];
            *buf = 138545154;
            v177 = v160;
            OUTLINED_FUNCTION_9_3();
            v179 = v124;
            v180 = 2114;
            v181 = v106;
            v182 = 2114;
            v183 = identifier4;
            v184 = 2114;
            v185 = v146;
            v186 = 2114;
            v187 = domain;
            v188 = 2048;
            v189 = v125;
            v190 = v126;
            v191 = v55;
            OUTLINED_FUNCTION_23_1();
            _os_log_error_impl(v127, v128, OS_LOG_TYPE_ERROR, v129, v130, 0x52u);

            if (model5)
            {
            }

            v43 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
            v13 = v48;
          }

          errors = [self errors];
          [errors addObject:v55];
        }

        v9 = v169;
        endDateCopy = v171;
      }

      if ([OUTLINED_FUNCTION_2_9() me])
      {
        v45 = v167;
        dsCopy = v168;
LABEL_76:

        if ([OUTLINED_FUNCTION_11_4() transportType] != 1)
        {
          [OUTLINED_FUNCTION_11_4() setHasDeletionsFlag:0 forPeer:*(self + v43[515])];
        }

        [self endOperation];
        goto LABEL_79;
      }

      name2 = [OUTLINED_FUNCTION_11_4() name];
      v174 = 0;
      dsCopy = v168;
      [OUTLINED_FUNCTION_21_2() setLastSyncDownDeletionDate:? previousDate:? forPeer:? transportName:? error:?];
      v69 = 0;

      syncChannel3 = [*(v13 + 648) syncChannel];
      v72 = syncChannel3;
      if (v69)
      {
        if (os_log_type_enabled(syncChannel3, OS_LOG_TYPE_ERROR))
        {
          v109 = [objc_opt_class() description];
          domain2 = [(__CFString *)v69 domain];
          code = [(__CFString *)v69 code];
          *buf = 138544130;
          v177 = v109;
          v178 = 2114;
          v179 = domain2;
          v180 = 2048;
          v181 = code;
          v182 = 2112;
          v183 = v69;
          OUTLINED_FUNCTION_23_1();
          _os_log_error_impl(v112, v113, OS_LOG_TYPE_ERROR, v114, v115, 0x2Au);
        }

        errors2 = [self errors];
        [errors2 addObject:v69];

        v9 = v169;
      }

      else
      {
        if (os_log_type_enabled(syncChannel3, OS_LOG_TYPE_INFO))
        {
          v163 = [objc_opt_class() description];
          dk_localtimeString11 = [(NSDate *)v168 dk_localtimeString];
          dk_localtimeString12 = [(NSDate *)dateCopy dk_localtimeString];
          v148 = [dateCopy isEqualToDate:v171];
          if (v148)
          {
            dk_localtimeString13 = @"ending";
          }

          else
          {
            dk_localtimeString13 = [(NSDate *)v171 dk_localtimeString];
          }

          v144 = &stru_1F05B9908;
          if ([OUTLINED_FUNCTION_2_9() me])
          {
            v85 = @"pseudo ";
          }

          else
          {
            v85 = &stru_1F05B9908;
          }

          identifier5 = [OUTLINED_FUNCTION_2_9() identifier];
          model6 = [OUTLINED_FUNCTION_2_9() model];
          v88 = v43;
          v89 = model6;
          if (model6)
          {
            v90 = MEMORY[0x1E696AEC0];
            model7 = [*(self + v88[515]) model];
            v91 = v90;
            dsCopy = v168;
            v144 = [v91 stringWithFormat:@" (%@)", model7];
          }

          *buf = 138544898;
          v177 = v163;
          v178 = 2114;
          v179 = dk_localtimeString11;
          v180 = 2114;
          v181 = dk_localtimeString12;
          v182 = 2114;
          v183 = dk_localtimeString13;
          v184 = 2114;
          v185 = v85;
          v186 = 2114;
          v187 = identifier5;
          v188 = 2114;
          v189 = v144;
          OUTLINED_FUNCTION_23_1();
          _os_log_impl(v98, v99, OS_LOG_TYPE_INFO, v100, v101, 0x48u);
          if (v89)
          {
          }

          if ((v148 & 1) == 0)
          {
          }

          v43 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        }

        v102 = *(self + 360);
        if (v102 >= [*(self + 320) maxBatchesPerSync])
        {
          v9 = v169;
        }

        else
        {
          [*(self + 352) timeIntervalSinceReferenceDate];
          v104 = v103;
          [v171 timeIntervalSinceReferenceDate];
          v9 = v169;
          if (v104 > v105)
          {
            v172[0] = MEMORY[0x1E69E9820];
            v172[1] = 3221225472;
            v172[2] = __101___DKPerformSyncDownPeerDeletionsOperation_handleFetchedDeletedEventIDs_startDate_endDate_untilDate___block_invoke;
            v172[3] = &unk_1E7367710;
            v172[4] = self;
            v173 = v171;
            [_DKSyncSerializer performAsyncBlock:v172];

            endDateCopy = v171;
            v45 = v167;
LABEL_79:

            goto LABEL_80;
          }
        }
      }

      v45 = v167;
    }

    else
    {
      syncChannel4 = [*(v13 + 648) syncChannel];
      if (os_log_type_enabled(syncChannel4, OS_LOG_TYPE_ERROR))
      {
        v92 = [objc_opt_class() description];
        [v9 count];
        v93 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
        v94 = &stru_1F05B9908;
        if ([OUTLINED_FUNCTION_4_9() me])
        {
          v95 = @"pseudo ";
        }

        else
        {
          v95 = &stru_1F05B9908;
        }

        identifier6 = [OUTLINED_FUNCTION_4_9() identifier];
        model8 = [OUTLINED_FUNCTION_4_9() model];
        if (model8)
        {
          v116 = MEMORY[0x1E696AEC0];
          [OUTLINED_FUNCTION_4_9() model];
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_20_2();
          v94 = [v116 stringWithFormat:@" (%@)"];
        }

        *buf = 138544386;
        v177 = v92;
        OUTLINED_FUNCTION_9_3();
        v179 = v93;
        v180 = 2114;
        v181 = v95;
        v182 = 2114;
        v183 = identifier6;
        v184 = 2114;
        v185 = v94;
        _os_log_error_impl(&dword_191750000, syncChannel4, OS_LOG_TYPE_ERROR, "%{public}@: Unable to delete %@ events, missing source device id in peer %{public}@peer %{public}@%{public}@", buf, 0x34u);
        if (model8)
        {
        }

        dsCopy = v168;
        v9 = v169;
        v43 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        v45 = 0;
      }

      errors3 = [self errors];
      v69 = +[_DKSyncErrors internalFailure];
      [errors3 addObject:v69];
    }

    endDateCopy = v171;
    goto LABEL_76;
  }

LABEL_80:
}

@end