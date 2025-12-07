@interface _DKPerformSyncDownPeerOperation
+ (void)_updateEventStatsWithTransportType:(uint64_t)type;
- (id)initWithParent:(void *)parent localStorage:(void *)storage transport:(void *)transport peer:(void *)peer policy:(void *)policy type:;
- (void)addSyncDownPeerAdditionsOperation;
- (void)addSyncDownPeerDeletionsOperation;
- (void)endOperation;
- (void)main;
- (void)performSyncDownPeer;
@end

@implementation _DKPerformSyncDownPeerOperation

- (void)main
{
  v3 = objc_opt_class();
  if ([_DKSync2Coordinator shouldDeferSyncOperationWithClass:v3 syncType:self->_type transport:self->_transport peer:self->_peer policy:self->_policy])
  {

    [(_DKPerformSyncDownPeerOperation *)self endOperation];
  }

  else
  {

    [(_DKPerformSyncDownPeerOperation *)self performSyncDownPeer];
  }
}

+ (void)_updateEventStatsWithTransportType:(uint64_t)type
{
  objc_opt_self();
  if (_updateEventStatsWithTransportType__rapportVsCloudOptimizationCounterInitialized != -1)
  {
    +[_DKPerformSyncDownPeerOperation _updateEventStatsWithTransportType:];
  }

  v3 = _updateEventStatsWithTransportType__rapportVsCloudOptimizationCounter;
  if (a2 == 1)
  {
    v4 = @"Rapport";
  }

  else
  {
    v4 = @"Cloud";
  }

  [(_DKEventTypeStatsCounter *)v3 incrementCountByNumber:v4 typeValue:?];
}

- (void)endOperation
{
  v2.receiver = self;
  v2.super_class = _DKPerformSyncDownPeerOperation;
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
    v24.super_class = _DKPerformSyncDownPeerOperation;
    v17 = objc_msgSendSuper2(&v24, sel_initWithParent_, a2, storageCopy, parentCopy);
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 37, parent);
      objc_storeStrong(v18 + 38, storage);
      objc_storeStrong(v18 + 39, transport);
      objc_storeStrong(v18 + 40, peer);
      objc_storeStrong(v18 + 41, policy);
      v19 = objc_opt_new();
      v20 = v18[42];
      v18[42] = v19;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)performSyncDownPeer
{
  v93 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  v2 = 0x1E7366000uLL;
  v3 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v3);

  v4 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
  v5 = "down from";
  v6 = &stru_1F05B9908;
  v7 = 0x1E7366000uLL;
  if ([OUTLINED_FUNCTION_2_6() transportType] == 4)
  {
    v8 = +[_DKSyncPeerStatusTracker sharedInstance];
    v9 = [v8 activeTransportsForPeer:*(self + 312)];
    if ([OUTLINED_FUNCTION_2_6() hasAdditionsFlagForPeer:*(self + 312)] & 1) != 0 || (objc_msgSend(OUTLINED_FUNCTION_2_6(), "hasDeletionsFlagForPeer:", *(self + 312)))
    {
      v10 = &stru_1F05B9908;
      v11 = 0x1E7366000uLL;
      if ((v9 & 1) == 0)
      {
LABEL_24:
        transportType = [OUTLINED_FUNCTION_2_6() transportType];
        [_DKPerformSyncDownPeerOperation _updateEventStatsWithTransportType:transportType];

        v7 = v11;
        v6 = &stru_1F05B9908;
        goto LABEL_25;
      }

      v12 = 1;
    }

    else
    {
      v17 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        model4 = [objc_opt_class() description];
        if ([OUTLINED_FUNCTION_2_6() transportType] == 8)
        {
          v18 = "up to";
        }

        else
        {
          v18 = "down from";
        }

        if ([OUTLINED_FUNCTION_0_10() me])
        {
          v19 = @"pseudo ";
        }

        else
        {
          v19 = &stru_1F05B9908;
        }

        model6 = v19;
        identifier = [OUTLINED_FUNCTION_0_10() identifier];
        [OUTLINED_FUNCTION_0_10() model];
        v22 = v21 = &stru_1F05B9908;
        v23 = v18;
        if (v22)
        {
          v24 = MEMORY[0x1E696AEC0];
          model = [OUTLINED_FUNCTION_0_10() model];
          v21 = [v24 stringWithFormat:@" (%@)", model];
        }

        name = [*(self + 304) name];
        *buf = 138544642;
        v80 = model4;
        v81 = 2082;
        v82 = v23;
        v83 = 2114;
        v84 = model6;
        v85 = 2114;
        v86 = identifier;
        v87 = 2114;
        v88 = v21;
        v89 = 2114;
        v90 = name;
        _os_log_impl(&dword_191750000, v17, OS_LOG_TYPE_INFO, "%{public}@: Skipping sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ because of no cloud changes", buf, 0x3Eu);

        if (v22)
        {
        }

        v4 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        v5 = "down from";
        v7 = 0x1E7366000;
      }

      v10 = &stru_1F05B9908;
      v11 = v7;

      v2 = 0x1E7366000;
      if ((v9 & 1) == 0)
      {
        goto LABEL_12;
      }

      v12 = 0;
    }

    v13 = [v8 lastSuccessfulActivityDateOnTransport:1 forPeer:*(self + 312)];
    v14 = v13;
    if (v13)
    {
      [v13 timeIntervalSinceNow];
      if (v15 > -120.0)
      {
        syncChannel = [*(v11 + 648) syncChannel];
        if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
        {
          v77 = [objc_opt_class() description];
          transportType2 = [OUTLINED_FUNCTION_2_6() transportType];
          v54 = "up to";
          if (transportType2 != 8)
          {
            v54 = "down from";
          }

          v71 = v54;
          if ([OUTLINED_FUNCTION_0_10() me])
          {
            v10 = @"pseudo ";
          }

          identifier2 = [OUTLINED_FUNCTION_0_10() identifier];
          model2 = [OUTLINED_FUNCTION_0_10() model];
          if (model2)
          {
            v63 = MEMORY[0x1E696AEC0];
            model = [OUTLINED_FUNCTION_0_10() model];
            v57 = [v63 stringWithFormat:@" (%@)", model];
          }

          else
          {
            v57 = &stru_1F05B9908;
          }

          name2 = [*(self + 304) name];
          *buf = 138544642;
          v80 = v77;
          v81 = 2082;
          v82 = v71;
          v83 = 2114;
          v84 = v10;
          v85 = 2114;
          v86 = identifier2;
          v87 = 2114;
          v88 = v57;
          v89 = 2114;
          v90 = name2;
          _os_log_debug_impl(&dword_191750000, syncChannel, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ because of recent successful sync on different transport", buf, 0x3Eu);

          if (model2)
          {
          }
        }

        [_DKPerformSyncDownPeerOperation _updateEventStatsWithTransportType:?];
        goto LABEL_12;
      }
    }

    if (!v12)
    {
LABEL_12:

LABEL_13:
      [self endOperation];
      return;
    }

    goto LABEL_24;
  }

LABEL_25:
  syncChannel2 = [*(v7 + 648) syncChannel];
  if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_DEBUG))
  {
    v27 = [objc_opt_class() description];
    [OUTLINED_FUNCTION_2_6() transportType];
    [OUTLINED_FUNCTION_0_10() me];
    identifier3 = [OUTLINED_FUNCTION_0_10() identifier];
    model3 = [OUTLINED_FUNCTION_0_10() model];
    if (model3)
    {
      v31 = MEMORY[0x1E696AEC0];
      model4 = [OUTLINED_FUNCTION_0_10() model];
      v6 = [v31 stringWithFormat:@" (%@)", model4];
    }

    name3 = [*(self + 304) name];
    *buf = 138544642;
    v80 = v27;
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_4_5(&dword_191750000, v33, v34, "%{public}@: Queuing subordinate operations for sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", v35, v36, v37, v38, v67, model, model6, model4);

    if (model3)
    {
    }

    v6 = &stru_1F05B9908;
    v4 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    v5 = "down from";
    v2 = 0x1E7366000uLL;
    v7 = 0x1E7366000uLL;
  }

  v39 = v2;
  if ([OUTLINED_FUNCTION_0_10() me])
  {
    syncChannel3 = [*(v7 + 648) syncChannel];
    if (os_log_type_enabled(syncChannel3, OS_LOG_TYPE_DEBUG))
    {
      v75 = [objc_opt_class() description];
      [OUTLINED_FUNCTION_2_6() transportType];
      [OUTLINED_FUNCTION_0_10() me];
      identifier4 = [OUTLINED_FUNCTION_0_10() identifier];
      model5 = [OUTLINED_FUNCTION_0_10() model];
      if (model5)
      {
        v43 = MEMORY[0x1E696AEC0];
        model6 = [OUTLINED_FUNCTION_0_10() model];
        v6 = [v43 stringWithFormat:@" (%@)", model6];
      }

      name4 = [*(self + 304) name];
      *buf = 138544642;
      v80 = v75;
      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_4_5(&dword_191750000, v45, v46, "%{public}@: Skipping additions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ because no additions will exist", v47, v48, v49, v50, v67, model, model6, v75);

      if (model5)
      {
      }

      v4 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      v5 = "down from";
      v7 = 0x1E7366000uLL;
    }
  }

  else
  {
    [(_DKPerformSyncDownPeerOperation *)self addSyncDownPeerAdditionsOperation];
  }

  [(_DKPerformSyncDownPeerOperation *)self addSyncDownPeerDeletionsOperation];
  v51 = [*(self + 336) count];
  if (v51)
  {
    [*(v39 + 2528) addOperations:*(self + 336) waitUntilFinished:0];
  }

  syncChannel4 = [*(v7 + 648) syncChannel];
  if (os_log_type_enabled(syncChannel4, OS_LOG_TYPE_DEBUG))
  {
    v72 = [objc_opt_class() description];
    v78 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(self + 336), "count")}];
    v58 = @"pseudo ";
    v59 = v4;
    if ([OUTLINED_FUNCTION_2_6() transportType] == 8)
    {
      v5 = "up to";
    }

    if (![OUTLINED_FUNCTION_0_10() me])
    {
      v58 = &stru_1F05B9908;
    }

    identifier5 = [OUTLINED_FUNCTION_0_10() identifier];
    model7 = [OUTLINED_FUNCTION_0_10() model];
    if (model7)
    {
      v65 = MEMORY[0x1E696AEC0];
      model = [OUTLINED_FUNCTION_0_10() model];
      v62 = [v65 stringWithFormat:@" (%@)", model];
    }

    else
    {
      v62 = &stru_1F05B9908;
    }

    name5 = [*(self + v59[192]) name];
    *buf = 138544898;
    v80 = v72;
    v81 = 2112;
    v82 = v78;
    v83 = 2082;
    v84 = v5;
    v85 = 2114;
    v86 = v58;
    v87 = 2114;
    v88 = identifier5;
    v89 = 2114;
    v90 = v62;
    v91 = 2114;
    v92 = name5;
    _os_log_debug_impl(&dword_191750000, syncChannel4, OS_LOG_TYPE_DEBUG, "%{public}@: Done queuing %@ subordinate operation for sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x48u);

    if (model7)
    {
    }
  }

  if (!v51)
  {
    goto LABEL_13;
  }
}

- (void)addSyncDownPeerAdditionsOperation
{
  if (self)
  {
    v2 = [[_DKPerformSyncDownPeerAdditionsOperation alloc] initWithParent:self localStorage:self[37] transport:self[38] peer:self[39] policy:self[40] type:self[41]];
    if ([OUTLINED_FUNCTION_3_5() count])
    {
      lastObject = [OUTLINED_FUNCTION_3_5() lastObject];
      [v2 addDependency:lastObject];
    }

    [OUTLINED_FUNCTION_3_5() addObject:v2];
  }
}

- (void)addSyncDownPeerDeletionsOperation
{
  if (self)
  {
    v2 = [[_DKPerformSyncDownPeerDeletionsOperation alloc] initWithParent:self localStorage:self[37] transport:self[38] peer:self[39] policy:self[40] type:self[41]];
    if ([OUTLINED_FUNCTION_3_5() count])
    {
      lastObject = [OUTLINED_FUNCTION_3_5() lastObject];
      [v2 addDependency:lastObject];
    }

    [OUTLINED_FUNCTION_3_5() addObject:v2];
  }
}

@end