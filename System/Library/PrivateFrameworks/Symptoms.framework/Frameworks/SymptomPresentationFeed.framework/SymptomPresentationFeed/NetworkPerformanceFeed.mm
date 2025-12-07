@interface NetworkPerformanceFeed
- (BOOL)_rollFlowMetricsValuesFromDict:(id)dict toDict:(id)toDict forKey:(id)key andRequest:(id)request;
- (BOOL)_rollRouteMetricsValuesFromDict:(id)dict toDict:(id)toDict forKey:(id)key;
- (BOOL)fullScorecardFor:(int)for options:(id)options reply:(id)reply;
- (BOOL)getPreferCellOverWiFiWithOptions:(id)options reply:(id)reply;
- (BOOL)predictWaitUntilKnownGoodNetworkFor:(int)for matchSignature:(BOOL)signature reply:(id)reply;
- (BOOL)resetDataForKeys:(id)keys reply:(id)reply;
- (BOOL)setPreferCellOverWiFiWithOptions:(id)options reply:(id)reply;
- (BOOL)setReferencePoint:(int)point reply:(id)reply;
- (BOOL)usageConsultOn:(int)on onlyRelativeToReferencePoint:(id)point reply:(id)reply;
- (BOOL)watchpointOn:(int)on forIdentifier:(id)identifier andKey:(id)key onThreshold:(double)threshold withOptions:(id)options uponHit:(id)hit;
- (NetworkPerformanceFeed)initWithWorkspace:(id)workspace;
- (id)_flowMetricsPresentationFromRoll:(id)roll source:(flow_stats_stuct *)source;
- (id)_formatInstantRouteMetrics:(id)metrics;
- (id)_formatWatchpointHit:(id)hit;
- (id)_normalizedOpts:(id)opts toNetwork:(int)network;
- (id)_routeMetricsPresentationFromRoll:(id)roll source:(route_stats_stuct *)source since:(id)since isKnownGood:(id)good isLowInternetDL:(id)l isLowInternetUL:(id)uL isHotSpot:(id)spot rpmAverage:(id)self0 rpmCount:(id)self1 rpmVariance:(id)self2 rpmExitAverage:(id)self3 rpmExitCount:(id)self4 rpmExitVariance:(id)self5;
- (void)_consultReturn:(id)return advice:(int)advice;
- (void)dealloc;
- (void)setQueue:(id)queue;
@end

@implementation NetworkPerformanceFeed

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = networkperfLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_DEBUG, "> dealloc %p", buf, 0xCu);
  }

  self->_delegate = 0;
  v4.receiver = self;
  v4.super_class = NetworkPerformanceFeed;
  [(NetworkPerformanceFeed *)&v4 dealloc];
}

- (NetworkPerformanceFeed)initWithWorkspace:(id)workspace
{
  v16 = *MEMORY[0x1E69E9840];
  workspaceCopy = workspace;
  v6 = networkperfLogHandle(workspaceCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v15 = workspaceCopy;
    _os_log_impl(&dword_1C85F9000, v6, OS_LOG_TYPE_DEBUG, "> initWithWorkspace:%@", buf, 0xCu);
  }

  if (workspaceCopy)
  {
    v13.receiver = self;
    v13.super_class = NetworkPerformanceFeed;
    v7 = [(NetworkPerformanceFeed *)&v13 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->workspace, workspace);
      v9 = dispatch_queue_create("com.apple.Symptoms.SymptomsPresentationFeed.internalQueue", 0);
      internalQueue = v8->internalQueue;
      v8->internalQueue = v9;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setQueue:(id)queue
{
  v9 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v5 = networkperfLogHandle(queueCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = queueCopy;
    _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "> setQueue:%@", &v7, 0xCu);
  }

  callerQueue = self->callerQueue;
  self->callerQueue = queueCopy;
}

- (BOOL)setReferencePoint:(int)point reply:(id)reply
{
  v26 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v7 = networkperfLogHandle(replyCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 67109376;
    *v25 = point;
    *&v25[4] = 2048;
    *&v25[6] = v8;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "> setReferencePoint:%d reply:%p", buf, 0x12u);
  }

  if ((point - 1) <= 2 && (v9 = **(&unk_1E8318E08 + (point - 1))) != 0)
  {
    v10 = v9;
    connection = [(AnalyticsWorkspace *)self->workspace connection];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __50__NetworkPerformanceFeed_setReferencePoint_reply___block_invoke;
    v22[3] = &unk_1E8318A28;
    v22[4] = self;
    v12 = replyCopy;
    v23 = v12;
    v13 = [connection remoteObjectProxyWithErrorHandler:v22];

    v14 = v13 != 0;
    if (v13)
    {
      v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", v10];
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E69D5378], 0}];
      v17 = networkperfLogHandle(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        *v25 = v15;
        *&v25[8] = 2112;
        *&v25[10] = v16;
        _os_log_impl(&dword_1C85F9000, v17, OS_LOG_TYPE_DEBUG, "setReferencePoint:reply: createSnapshotFor:SFNetworkAttachment pred:%@ act:%@", buf, 0x16u);
      }

      entityName = [MEMORY[0x1E69D5190] entityName];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __50__NetworkPerformanceFeed_setReferencePoint_reply___block_invoke_23;
      v20[3] = &unk_1E8318A78;
      v20[4] = self;
      v21 = v12;
      [v13 createSnapshotFor:entityName pred:v15 actions:v16 reply:v20];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __50__NetworkPerformanceFeed_setReferencePoint_reply___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = networkperfLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for setReferencePoint:reply: %@", buf, 0xCu);
  }

  v5 = *(*(a1 + 32) + 24);
  if (v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__NetworkPerformanceFeed_setReferencePoint_reply___block_invoke_14;
    v6[3] = &unk_1E8318A00;
    v8 = *(a1 + 40);
    v7 = v3;
    dispatch_async(v5, v6);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __50__NetworkPerformanceFeed_setReferencePoint_reply___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = networkperfLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "setReferencePoint: received NSUUID: %@, error: %@", buf, 0x16u);
  }

  if (v5)
  {
    v8 = [v5 UUIDString];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(a1 + 32) + 24);
  if (v9)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__NetworkPerformanceFeed_setReferencePoint_reply___block_invoke_24;
    block[3] = &unk_1E8318A50;
    v13 = *(a1 + 40);
    v11 = v8;
    v12 = v6;
    dispatch_async(v9, block);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_consultReturn:(id)return advice:(int)advice
{
  v4 = *&advice;
  returnCopy = return;
  v7 = returnCopy;
  callerQueue = self->callerQueue;
  if (callerQueue)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__NetworkPerformanceFeed__consultReturn_advice___block_invoke;
    v9[3] = &unk_1E8318AA0;
    v10 = returnCopy;
    v11 = v4;
    dispatch_async(callerQueue, v9);
  }

  else
  {
    (*(returnCopy + 2))(returnCopy, v4);
  }
}

- (BOOL)usageConsultOn:(int)on onlyRelativeToReferencePoint:(id)point reply:(id)reply
{
  v37 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  replyCopy = reply;
  v10 = networkperfLogHandle(replyCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 67109634;
    *v36 = on;
    *&v36[4] = 2112;
    *&v36[6] = pointCopy;
    *&v36[14] = 2048;
    *&v36[16] = v11;
    _os_log_impl(&dword_1C85F9000, v10, OS_LOG_TYPE_DEBUG, "> usageConsultOn:%d onlyRelativeToReferencePoint:%@ reply:%p", buf, 0x1Cu);
  }

  if ((on - 1) <= 2)
  {
    v12 = **(&unk_1E8318E08 + (on - 1));
    if (v12)
    {
      v13 = v12;
      v14 = pointCopy;
      if (v14)
      {
        v15 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v14];
        if (!v15)
        {
          v16 = 0;
LABEL_20:

          goto LABEL_21;
        }
      }

      else
      {
        v15 = 0;
      }

      connection = [(AnalyticsWorkspace *)self->workspace connection];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __76__NetworkPerformanceFeed_usageConsultOn_onlyRelativeToReferencePoint_reply___block_invoke;
      v33[3] = &unk_1E8318A28;
      v33[4] = self;
      v18 = replyCopy;
      v34 = v18;
      v19 = [connection remoteObjectProxyWithErrorHandler:v33];

      v16 = v19 != 0;
      if (v19)
      {
        v28 = v18;
        v30 = v14;
        v29 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", v13];
        v20 = MEMORY[0x1E695DF20];
        if (v15)
        {
          uUIDString = [v15 UUIDString];
          null = *MEMORY[0x1E69D53A0];
        }

        else
        {
          uUIDString = [MEMORY[0x1E695DFB0] null];
          null = [MEMORY[0x1E695DFB0] null];
        }

        v23 = [v20 dictionaryWithObjectsAndKeys:{uUIDString, null, *MEMORY[0x1E69D5390], *MEMORY[0x1E69D5390], *MEMORY[0x1E69D5398], *MEMORY[0x1E69D5398], 0}];
        if (!v15)
        {
        }

        v25 = networkperfLogHandle(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *v36 = v29;
          *&v36[8] = 2112;
          *&v36[10] = v23;
          _os_log_impl(&dword_1C85F9000, v25, OS_LOG_TYPE_DEBUG, "usageConsultOn:onlyRelativeToReferencePoint:reply: query SFNetworkAttachment with pred:%@ sort:nil actions:%@", buf, 0x16u);
        }

        entityName = [MEMORY[0x1E69D5190] entityName];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __76__NetworkPerformanceFeed_usageConsultOn_onlyRelativeToReferencePoint_reply___block_invoke_28;
        v31[3] = &unk_1E8318AC8;
        v31[4] = self;
        v32 = v28;
        [v19 performQueryOnEntity:entityName pred:v29 sort:0 actions:v23 reply:v31];

        v14 = v30;
      }

      goto LABEL_20;
    }
  }

  v16 = 0;
LABEL_21:

  return v16;
}

void __76__NetworkPerformanceFeed_usageConsultOn_onlyRelativeToReferencePoint_reply___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = networkperfLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for usageConsultOn:onlyRelativeToReferencePoint:reply: %@", &v5, 0xCu);
  }

  [*(a1 + 32) _consultReturn:*(a1 + 40) advice:0];
}

void __76__NetworkPerformanceFeed_usageConsultOn_onlyRelativeToReferencePoint_reply___block_invoke_28(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = networkperfLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134218242;
    v12 = [v3 count];
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_DEBUG, "usageConsultOn: received %lu records with: %@", &v11, 0x16u);
  }

  if (v3 && [v3 count] == 1)
  {
    v5 = [v3 objectAtIndexedSubscript:0];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69D51D8]];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = v6;
    if ([v9 isEqualToString:*MEMORY[0x1E69D51C0]])
    {
      v10 = 0;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E69D51C8]])
    {
      v10 = 1;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E69D51E8]])
    {
      v10 = 2;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E69D51D0]])
    {
      v10 = 3;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E69D51B0]])
    {
      v10 = 4;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E69D51F8]])
    {
      v10 = 5;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E69D5200]])
    {
      v10 = 6;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E69D51B8]])
    {
      v10 = 7;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E69D51A8]])
    {
      v10 = 8;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E69D51F0]])
    {
      v10 = 9;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E69D51E0]])
    {
      v10 = 10;
    }

    else
    {
      v10 = 0;
    }

    [v7 _consultReturn:v8 advice:v10];
  }

  else
  {
    [*(a1 + 32) _consultReturn:*(a1 + 40) advice:0];
  }
}

- (BOOL)predictWaitUntilKnownGoodNetworkFor:(int)for matchSignature:(BOOL)signature reply:(id)reply
{
  signatureCopy = signature;
  v16 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v8 = networkperfLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    v11[0] = 67109632;
    v11[1] = for;
    v12 = 1024;
    v13 = signatureCopy;
    v14 = 2048;
    v15 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> predictWaitUntilKnownGoodNetworkFor:%d matchSignature:%{BOOL}d reply:%p", v11, 0x18u);
  }

  return 0;
}

- (BOOL)_rollFlowMetricsValuesFromDict:(id)dict toDict:(id)toDict forKey:(id)key andRequest:(id)request
{
  v56 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  toDictCopy = toDict;
  keyCopy = key;
  v12 = [request objectForKeyedSubscript:*MEMORY[0x1E69D52C0]];

  v13 = [toDictCopy objectForKey:{keyCopy, 0, 0, 0, 0, 0, 0, 0, 0}];
  v14 = v13;
  if (v13)
  {
    bytes = [v13 bytes];
    v16 = networkperfLogHandle(bytes);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v53 = keyCopy;
      v54 = 2112;
      v55 = dictCopy;
      _os_log_impl(&dword_1C85F9000, v16, OS_LOG_TYPE_DEBUG, "rolling up for flow entry %@ data: %@", buf, 0x16u);
    }
  }

  else
  {
    v16 = networkperfLogHandle(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v53 = keyCopy;
      v54 = 2112;
      v55 = dictCopy;
      _os_log_impl(&dword_1C85F9000, v16, OS_LOG_TYPE_DEBUG, "creating flow entry %@ data: %@", buf, 0x16u);
    }

    bytes = &v51;
  }

  if (v12)
  {
    v17 = [dictCopy objectForKeyedSubscript:@"kind"];
    shortValue = [v17 shortValue];

    if (shortValue)
    {
      bytes[3] = bytes[3] + 1.0;
      v19 = [dictCopy objectForKeyedSubscript:@"txPackets"];
      [v19 doubleValue];
      *(bytes + 4) = v20;

      v21 = [dictCopy objectForKeyedSubscript:@"txReTxPackets"];
      [v21 doubleValue];
      *(bytes + 5) = v22;

      date = [dictCopy objectForKeyedSubscript:@"txFailPackets"];
      [date doubleValue];
      *(bytes + 6) = v24;
    }

    else
    {
      date = [MEMORY[0x1E695DF00] date];
      v40 = [dictCopy objectForKeyedSubscript:@"connSuccesses"];
      [v40 doubleValue];
      bytes[1] = v41 + bytes[1];

      v42 = [dictCopy objectForKeyedSubscript:@"connAttempts"];
      [v42 doubleValue];
      bytes[2] = v43 + bytes[2];

      v44 = [dictCopy objectForKeyedSubscript:@"timeStamp"];

      if (v44)
      {
        v45 = [dictCopy objectForKeyedSubscript:@"timeStamp"];
        [date timeIntervalSinceDate:v45];
        *bytes = v46 + *bytes;
      }

      v47 = [dictCopy objectForKeyedSubscript:@"usecsEstabTime"];
      [v47 doubleValue];
      bytes[7] = v48 + bytes[7];
    }
  }

  else
  {
    v25 = [dictCopy objectForKeyedSubscript:@"connSuccesses"];
    [v25 doubleValue];
    bytes[1] = v26 + bytes[1];

    v27 = [dictCopy objectForKeyedSubscript:@"connAttempts"];
    [v27 doubleValue];
    bytes[2] = v28 + bytes[2];

    v29 = [dictCopy objectForKeyedSubscript:@"timesThresholded"];
    [v29 doubleValue];
    bytes[3] = v30 + bytes[3];

    v31 = [dictCopy objectForKeyedSubscript:@"overallTime"];
    [v31 doubleValue];
    *bytes = v32 + *bytes;

    v33 = [dictCopy objectForKeyedSubscript:@"txPackets"];
    [v33 doubleValue];
    bytes[4] = v34 + bytes[4];

    v35 = [dictCopy objectForKeyedSubscript:@"txReTxPackets"];
    [v35 doubleValue];
    bytes[5] = v36 + bytes[5];

    v37 = [dictCopy objectForKeyedSubscript:@"txFailPackets"];
    [v37 doubleValue];
    bytes[6] = v38 + bytes[6];

    date = [dictCopy objectForKeyedSubscript:@"usecsEstabTime"];
    [date doubleValue];
    bytes[7] = v39 + bytes[7];
  }

  if (!v14)
  {
    v49 = [MEMORY[0x1E695DEF0] dataWithBytes:&v51 length:64];
    [toDictCopy setObject:v49 forKey:keyCopy];
  }

  return v14 == 0;
}

- (id)_flowMetricsPresentationFromRoll:(id)roll source:(flow_stats_stuct *)source
{
  var1 = source->var1;
  if (var1 > 1.0)
  {
    source->var7 = source->var7 / var1;
  }

  v19 = MEMORY[0x1E695DF20];
  v6 = MEMORY[0x1E696AD98];
  var0 = source->var0;
  rollCopy = roll;
  v17 = [v6 numberWithDouble:var0];
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:source->var1];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:source->var2];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:source->var3];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:source->var4];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:source->var5];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:source->var6];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:source->var7];
  v13 = [v19 dictionaryWithObjectsAndKeys:{rollCopy, @"remoteID", v17, @"overallTime", v16, @"connSuccesses", v15, @"connAttempts", v8, @"timesThresholded", v9, @"txPackets", v10, @"txReTxPackets", v11, @"txFailPackets", v12, @"usecsEstabTime", 0}];

  return v13;
}

- (BOOL)_rollRouteMetricsValuesFromDict:(id)dict toDict:(id)toDict forKey:(id)key
{
  v94 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  toDictCopy = toDict;
  keyCopy = key;
  v10 = [dictCopy objectForKeyedSubscript:@"overallStay"];
  [v10 doubleValue];
  v12 = v11;

  if (v12 == 0.0)
  {
    v13 = 0;
  }

  else
  {
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    memset(v85, 0, sizeof(v85));
    v14 = [toDictCopy objectForKey:keyCopy];
    v15 = v14;
    v83 = v14 == 0;
    v84 = toDictCopy;
    if (v14)
    {
      bytes = [v14 bytes];
      v17 = networkperfLogHandle(bytes);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v91 = keyCopy;
        v92 = 2112;
        v93 = dictCopy;
        _os_log_impl(&dword_1C85F9000, v17, OS_LOG_TYPE_DEBUG, "rolling up for route entry %@ data: %@", buf, 0x16u);
      }
    }

    else
    {
      *&v86 = 0x7FEFFFFFFFFFFFFFLL;
      v17 = networkperfLogHandle(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v91 = keyCopy;
        v92 = 2112;
        v93 = dictCopy;
        _os_log_impl(&dword_1C85F9000, v17, OS_LOG_TYPE_DEBUG, "creating route entry %@ data: %@", buf, 0x16u);
      }

      bytes = v85;
    }

    v18 = [dictCopy objectForKeyedSubscript:@"epochs"];
    [v18 doubleValue];
    *bytes = v19 + *bytes;

    v20 = [dictCopy objectForKeyedSubscript:@"faultyStay"];
    [v20 doubleValue];
    bytes[1] = v21 + bytes[1];

    v22 = [dictCopy objectForKeyedSubscript:@"lowqStay"];
    [v22 doubleValue];
    bytes[3] = v23 + bytes[3];

    v24 = [dictCopy objectForKeyedSubscript:@"overallStay"];
    [v24 doubleValue];
    bytes[6] = v25 + bytes[6];

    v26 = [dictCopy objectForKeyedSubscript:@"packetsIn"];
    [v26 doubleValue];
    bytes[7] = v27 + bytes[7];

    v28 = [dictCopy objectForKeyedSubscript:@"packetsOut"];
    [v28 doubleValue];
    bytes[8] = v29 + bytes[8];

    v30 = [dictCopy objectForKeyedSubscript:@"bytesIn"];
    [v30 doubleValue];
    bytes[9] = v31 + bytes[9];

    v32 = [dictCopy objectForKeyedSubscript:@"bytesOut"];
    [v32 doubleValue];
    bytes[10] = v33 + bytes[10];

    v34 = [dictCopy objectForKeyedSubscript:@"rxDupeBytes"];
    [v34 doubleValue];
    bytes[11] = v35 + bytes[11];

    v36 = [dictCopy objectForKeyedSubscript:@"rxOOOBytes"];
    [v36 doubleValue];
    bytes[12] = v37 + bytes[12];

    v38 = [dictCopy objectForKeyedSubscript:@"reTxBytes"];
    [v38 doubleValue];
    bytes[13] = v39 + bytes[13];

    v40 = [dictCopy objectForKeyedSubscript:@"connSuccesses"];
    [v40 doubleValue];
    bytes[15] = v41 + bytes[15];

    v42 = [dictCopy objectForKeyedSubscript:@"connAttempts"];
    [v42 doubleValue];
    bytes[14] = v43 + bytes[14];

    v44 = [dictCopy objectForKeyedSubscript:@"rttMin"];
    [v44 doubleValue];
    if (v45 == 0.0)
    {
      v48 = bytes[16];
    }

    else
    {
      v46 = [dictCopy objectForKeyedSubscript:@"rttMin"];
      [v46 doubleValue];
      v48 = v47;
    }

    v49 = bytes[16];
    if (v48 < v49)
    {
      v49 = v48;
    }

    bytes[16] = v49;
    v50 = [dictCopy objectForKeyedSubscript:@"topDownloadRate"];
    [v50 doubleValue];
    v52 = v51;

    v53 = bytes[19];
    if (v52 >= v53)
    {
      v53 = v52;
    }

    bytes[19] = v53;
    v54 = [dictCopy objectForKeyedSubscript:@"dataStalls"];
    null = [MEMORY[0x1E695DFB0] null];

    if (v54 != null)
    {
      [v54 doubleValue];
      bytes[20] = v56 + bytes[20];
    }

    v57 = [dictCopy objectForKeyedSubscript:@"certErrors"];
    null2 = [MEMORY[0x1E695DFB0] null];

    if (v57 != null2)
    {
      [v57 doubleValue];
      bytes[23] = v59 + bytes[23];
    }

    v60 = [dictCopy objectForKeyedSubscript:@"adminDisables"];
    null3 = [MEMORY[0x1E695DFB0] null];

    if (v60 != null3)
    {
      [v60 doubleValue];
      bytes[21] = v62 + bytes[21];
    }

    v82 = v15;
    v63 = [dictCopy objectForKeyedSubscript:@"passiveCaptivity"];
    null4 = [MEMORY[0x1E695DFB0] null];

    if (v63 != null4)
    {
      [v63 doubleValue];
      bytes[22] = v65 + bytes[22];
    }

    v81 = v63;
    v66 = [dictCopy objectForKeyedSubscript:@"lowLqmStay"];
    null5 = [MEMORY[0x1E695DFB0] null];
    v68 = null5;
    if (v66 == null5)
    {
    }

    else
    {
      [dictCopy objectForKeyedSubscript:?];
      v69 = v60;
      v70 = v57;
      v72 = v71 = v54;
      null6 = [MEMORY[0x1E695DFB0] null];

      v74 = v72 == null6;
      v54 = v71;
      v57 = v70;
      v60 = v69;
      if (!v74)
      {
        v75 = [dictCopy objectForKeyedSubscript:@"lowLqmStay"];
        [v75 doubleValue];
        bytes[2] = v76 + bytes[2];

        v77 = [dictCopy objectForKeyedSubscript:@"lqmTransitionCount"];
        [v77 doubleValue];
        bytes[4] = v78 + bytes[4];

        bytes[5] = bytes[4] * 100.0 / bytes[6];
      }
    }

    toDictCopy = v84;
    if (!v82)
    {
      v79 = [MEMORY[0x1E695DEF0] dataWithBytes:v85 length:192];
      [v84 setObject:v79 forKey:keyCopy];
    }

    v13 = v83;
  }

  return v13;
}

- (id)_routeMetricsPresentationFromRoll:(id)roll source:(route_stats_stuct *)source since:(id)since isKnownGood:(id)good isLowInternetDL:(id)l isLowInternetUL:(id)uL isHotSpot:(id)spot rpmAverage:(id)self0 rpmCount:(id)self1 rpmVariance:(id)self2 rpmExitAverage:(id)self3 rpmExitCount:(id)self4 rpmExitVariance:(id)self5
{
  v32 = MEMORY[0x1E695DF20];
  v52 = MEMORY[0x1E696AD98];
  var0 = source->var0;
  exitVarianceCopy = exitVariance;
  exitCountCopy = exitCount;
  exitAverageCopy = exitAverage;
  varianceCopy = variance;
  countCopy = count;
  averageCopy = average;
  spotCopy = spot;
  uLCopy = uL;
  lCopy = l;
  goodCopy = good;
  sinceCopy = since;
  rollCopy = roll;
  v59 = [v52 numberWithDouble:var0];
  v57 = [MEMORY[0x1E696AD98] numberWithDouble:source->var1];
  v55 = [MEMORY[0x1E696AD98] numberWithDouble:source->var2];
  v53 = [MEMORY[0x1E696AD98] numberWithDouble:source->var3];
  v51 = [MEMORY[0x1E696AD98] numberWithDouble:source->var4];
  v50 = [MEMORY[0x1E696AD98] numberWithDouble:source->var5];
  v47 = [MEMORY[0x1E696AD98] numberWithDouble:source->var6];
  v46 = [MEMORY[0x1E696AD98] numberWithDouble:source->var7];
  v45 = [MEMORY[0x1E696AD98] numberWithDouble:source->var8];
  v44 = [MEMORY[0x1E696AD98] numberWithDouble:source->var9];
  v43 = [MEMORY[0x1E696AD98] numberWithDouble:source->var10];
  v42 = [MEMORY[0x1E696AD98] numberWithDouble:source->var11];
  v40 = [MEMORY[0x1E696AD98] numberWithDouble:source->var12];
  v39 = [MEMORY[0x1E696AD98] numberWithDouble:source->var13];
  v38 = [MEMORY[0x1E696AD98] numberWithDouble:source->var15];
  v37 = [MEMORY[0x1E696AD98] numberWithDouble:source->var14];
  v36 = [MEMORY[0x1E696AD98] numberWithDouble:source->var16];
  v35 = [MEMORY[0x1E696AD98] numberWithDouble:source->var19];
  v34 = [MEMORY[0x1E696AD98] numberWithDouble:source->var20];
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:source->var21];
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:source->var22];
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:source->var23];
  v33 = [v32 dictionaryWithObjectsAndKeys:{rollCopy, @"identifier", v59, @"epochs", v57, @"faultyStay", v55, @"lowLqmStay", v53, @"lowqStay", v51, @"lqmTransitionCount", v50, @"lqmTransitionRate", v47, @"overallStay", v46, @"packetsIn", v45, @"packetsOut", v44, @"bytesIn", v43, @"bytesOut", v42, @"rxDupeBytes", v40, @"rxOOOBytes", v39, @"reTxBytes", v38, @"connSuccesses", v37, @"connAttempts", v36, @"rttMin", v35, @"topDownloadRate", v34, @"dataStalls", v25, @"adminDisables", v22, @"passiveCaptivity", v24, @"certErrors", sinceCopy, @"sinceTime", goodCopy, @"isKnownGood", lCopy, @"isLowInternetDL", uLCopy, @"isLowInternetUL", spotCopy, @"isHotSpot", averageCopy, @"rpmAvg", countCopy, @"rpmCount", varianceCopy}];

  return v33;
}

- (id)_formatInstantRouteMetrics:(id)metrics
{
  metricsCopy = metrics;
  if ([metricsCopy count] == 1)
  {
    v4 = [metricsCopy objectAtIndexedSubscript:0];
    v5 = [v4 mutableCopy];

    v6 = [v5 objectForKeyedSubscript:@"timeStamp"];
    [v5 setObject:v6 forKeyedSubscript:@"sinceTime"];

    [v5 removeObjectForKey:@"timeStamp"];
    v7 = [v5 objectForKeyedSubscript:@"hasNetworkAttachment.identifier"];
    [v5 setObject:v7 forKeyedSubscript:@"identifier"];

    [v5 removeObjectForKey:@"hasNetworkAttachment.identifier"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_normalizedOpts:(id)opts toNetwork:(int)network
{
  v31 = *MEMORY[0x1E69E9840];
  optsCopy = opts;
  if ((network - 1) <= 2 && (v6 = **(&unk_1E8318E08 + (network - 1))) != 0)
  {
    v7 = v6;
    v8 = [optsCopy mutableCopy];
    v9 = [v8 allKeysForObject:*MEMORY[0x1E69D52B0]];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v8 setObject:v7 forKeyedSubscript:*(*(&v25 + 1) + 8 * i)];
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v11);
    }

    v14 = [v8 allKeysForObject:*MEMORY[0x1E69D5368]];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [v8 setObject:v7 forKeyedSubscript:{*(*(&v21 + 1) + 8 * j), v21}];
        }

        v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)fullScorecardFor:(int)for options:(id)options reply:(id)reply
{
  v81 = *&for;
  v170 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  replyCopy = reply;
  v6 = networkperfLogHandle(replyCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 67109634;
    *&buf[4] = v81;
    *v167 = 2112;
    *&v167[2] = optionsCopy;
    *&v167[10] = 2048;
    *&v167[12] = v7;
    _os_log_impl(&dword_1C85F9000, v6, OS_LOG_TYPE_DEBUG, "> fullScorecardFor:%d options:%@ reply:%p", buf, 0x1Cu);
  }

  v158[0] = 0;
  v158[1] = v158;
  v158[2] = 0x2020000000;
  v159 = 0;
  connection = [(AnalyticsWorkspace *)self->workspace connection];
  v9 = connection == 0;

  if (v9)
  {
    v76 = 0;
  }

  else
  {
    v10 = optionsCopy;
    if (!optionsCopy)
    {
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E69D5368], *MEMORY[0x1E69D5378], 0}];
    }

    v99 = ++fullScorecardFor_options_reply__persistentTransactionID;
    v11 = [(NetworkPerformanceFeed *)self _normalizedOpts:v10 toNetwork:v81];
    optionsCopy = v10;
    if (v11)
    {
      v103 = v11;
      *buf = 0;
      *v167 = buf;
      *&v167[8] = 0x3032000000;
      *&v167[16] = __Block_byref_object_copy_;
      v168 = __Block_byref_object_dispose_;
      v169 = 0;
      v156[0] = 0;
      v156[1] = v156;
      v156[2] = 0x3032000000;
      v156[3] = __Block_byref_object_copy_;
      v156[4] = __Block_byref_object_dispose_;
      v157 = 0;
      v154[0] = 0;
      v154[1] = v154;
      v154[2] = 0x3032000000;
      v154[3] = __Block_byref_object_copy_;
      v154[4] = __Block_byref_object_dispose_;
      v155 = 0;
      v147[0] = MEMORY[0x1E69E9820];
      v147[1] = 3221225472;
      v147[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke;
      v147[3] = &unk_1E8318B18;
      v150 = buf;
      v151 = v156;
      v153 = v99;
      v152 = v154;
      v149 = v158;
      v147[4] = self;
      v148 = replyCopy;
      v12 = MEMORY[0x1CCA78840](v147);
      connection2 = [(AnalyticsWorkspace *)self->workspace connection];
      v143[0] = MEMORY[0x1E69E9820];
      v143[1] = 3221225472;
      v143[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_38;
      v143[3] = &unk_1E8318B68;
      v143[4] = self;
      v146 = v99;
      v98 = v12;
      v144 = v98;
      v145 = v158;
      v97 = [connection2 remoteObjectProxyWithErrorHandler:v143];

      v76 = v97 != 0;
      if (v97)
      {
        v96 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
        v14 = networkperfLogHandle(v96);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *v160 = 134218499;
          v161 = v99;
          v162 = 2113;
          v163 = optionsCopy;
          v164 = 2113;
          v165 = v103;
          _os_log_impl(&dword_1C85F9000, v14, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: options: %{private}@, normal: %{private}@", v160, 0x20u);
        }

        v15 = objc_alloc(MEMORY[0x1E695DFA8]);
        v91 = *MEMORY[0x1E69D5378];
        v92 = *MEMORY[0x1E69D5370];
        v88 = *MEMORY[0x1E69D52B8];
        v86 = *MEMORY[0x1E69D52C0];
        v102 = [v15 initWithObjects:{*MEMORY[0x1E69D52B8], *MEMORY[0x1E69D5378], *MEMORY[0x1E69D5370], 0}];
        v94 = 0;
        v74 = v127;
        v93 = *MEMORY[0x1E69D52C8];
        v95 = *MEMORY[0x1E69D5208];
        v16 = &stru_1F483F350;
        v85 = *MEMORY[0x1E69D53B8];
        v75 = *MEMORY[0x1E69D51A0];
        v78 = *MEMORY[0x1E69D53A8];
        if (v81 == 2)
        {
          v16 = @"[0-9]{1,}";
        }

        if (v81 == 1)
        {
          v16 = @"([0-9A-Fa-f]{1,2}[:-]){5}([0-9A-Fa-f]{1,2})";
        }

        v77 = v16;
        v17 = v103;
        while (1)
        {
          anyObject = [v102 anyObject];
          v19 = [v17 objectForKeyedSubscript:anyObject];
          if (v19)
          {
            break;
          }

LABEL_34:
          v37 = [v17 objectForKeyedSubscript:anyObject];
          if (v37)
          {
            v38 = [anyObject isEqualToString:v92];

            if (v38)
            {
              v39 = [v103 objectForKeyedSubscript:v92];
              v40 = v97;
              null = [MEMORY[0x1E695DFB0] null];

              if (v39 == null)
              {
                v55 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", v81];
                v43 = 0;
                v56 = 0;
                v52 = MEMORY[0x1E695DF20];
                v53 = v85;
                null2 = v85;
              }

              else
              {
                v42 = [v39 rangeOfString:v77 options:1024];
                v43 = v42 == 0x7FFFFFFFFFFFFFFFLL;
                if (v42 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v44 = MEMORY[0x1E696AEC0];
                  v45 = [MEMORY[0x1E696AE70] escapedPatternForString:v39];
                  v46 = [v44 stringWithFormat:@"%@-%@", v45, v77];

                  v55 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K MATCHES %@ AND %K == %d", @"hasNetworkAttachment.identifier", v46, @"kind", v81];
                  v56 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:v75 options:4096];
                  if (v56)
                  {
                    v47 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4845530];
                    [v56 setRemoteObjectInterface:v47];

                    [v56 setInterruptionHandler:0];
                    [v56 resume];
                    v126[0] = MEMORY[0x1E69E9820];
                    v126[1] = 3221225472;
                    v127[0] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_157;
                    v127[1] = &unk_1E8318B68;
                    v127[2] = self;
                    v48 = v98;
                    v130 = v99;
                    v128 = v48;
                    v129 = v158;
                    v49 = [v56 remoteObjectProxyWithErrorHandler:v126];
                    v50 = v49;
                    if (v49)
                    {
                      v51 = v49;

                      v40 = v51;
                    }
                  }
                }

                else
                {
                  v55 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ AND %K == %d", @"hasNetworkAttachment.identifier", v39, @"kind", v81];
                  v56 = 0;
                }

                v52 = MEMORY[0x1E695DF20];
                null2 = [MEMORY[0x1E695DFB0] null];
                null3 = [MEMORY[0x1E695DFB0] null];
                v80 = null2;
                v53 = null3;
              }

              v57 = [v52 dictionaryWithObjectsAndKeys:{@"hasNetworkAttachment.firstTimeStamp", v95, @"hasNetworkAttachment.identifier", v95, @"hasNetworkAttachment.isKnownGood", v95, @"hasNetworkAttachment.isLowInternetDL", v95, @"hasNetworkAttachment.isLowInternetUL", v95, @"hasNetworkAttachment.isHotSpot", v95, @"hasNetworkAttachment.rpmAvg", v95, @"hasNetworkAttachment.rpmCount", v95, @"hasNetworkAttachment.rpmVar", v95, @"hasNetworkAttachment.rpmExitAvg", v95, @"hasNetworkAttachment.rpmExitCount", v95, @"hasNetworkAttachment.rpmExitVar", null2, v53, anyObject, anyObject, 0, v74}];
              if (v39 != null)
              {
              }

              internalQueue = self->internalQueue;
              v114[0] = MEMORY[0x1E69E9820];
              v114[1] = 3221225472;
              v114[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_195;
              v114[3] = &unk_1E8318CA8;
              v122 = v158;
              v59 = v98;
              v123 = v156;
              v121 = v59;
              v114[4] = self;
              v115 = v96;
              v116 = v55;
              v117 = v57;
              v118 = v40;
              v125 = v43;
              v124 = v99;
              v119 = v56;
              v120 = anyObject;
              v60 = v56;
              v61 = v40;
              v62 = v57;
              v63 = v55;
              dispatch_async(internalQueue, v114);
            }

            v17 = v103;
          }

          v64 = [v17 objectForKeyedSubscript:anyObject];
          if (v64)
          {
            v65 = [anyObject isEqualToString:v91];

            if (v65)
            {
              v66 = [v103 objectForKeyedSubscript:v91];
              v67 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"hasNetworkAttachment.identifier", v66];
              v68 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v95, @"hasNetworkAttachment.identifier", v78, v78, anyObject, anyObject, 0}];
              v69 = self->internalQueue;
              v104[0] = MEMORY[0x1E69E9820];
              v104[1] = 3221225472;
              v104[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_202;
              v104[3] = &unk_1E8318CF8;
              v111 = v158;
              v70 = v98;
              v112 = v154;
              v110 = v70;
              v104[4] = self;
              v105 = v96;
              v106 = v67;
              v113 = v99;
              v107 = v68;
              v108 = v97;
              v109 = anyObject;
              v71 = v68;
              v72 = v67;
              dispatch_async(v69, v104);
            }
          }

          [v102 removeObject:anyObject];

          v17 = v103;
          if (![v102 count])
          {

            goto LABEL_58;
          }
        }

        if ([anyObject isEqualToString:v86])
        {
        }

        else
        {
          v20 = [anyObject isEqualToString:v88];

          if ((v20 & 1) == 0)
          {
LABEL_33:
            v17 = v103;
            goto LABEL_34;
          }
        }

        v21 = [anyObject isEqualToString:v88];
        v22 = [v103 objectForKeyedSubscript:anyObject];
        v23 = @"tmpID";
        if (v21)
        {
          v23 = @"hasFlow.remoteID";
        }

        v24 = v23;
        v100 = [v103 objectForKeyedSubscript:v93];
        null4 = [MEMORY[0x1E695DFB0] null];

        if (v22 == null4)
        {
          [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", v93, v100];
        }

        else
        {
          [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ AND %K == %@", v24, v22, v93, v100];
        }
        v26 = ;

        v27 = MEMORY[0x1E695DF20];
        null5 = v95;
        v29 = @"hasFlow.remoteID";
        if ((v21 & 1) == 0)
        {
          null5 = [MEMORY[0x1E695DFB0] null];
          null6 = [MEMORY[0x1E695DFB0] null];
          v82 = null5;
          v29 = null6;
        }

        v30 = v85;
        null7 = v85;
        if (v22 != null4)
        {
          null7 = [MEMORY[0x1E695DFB0] null];
          null8 = [MEMORY[0x1E695DFB0] null];
          v84 = null7;
          v30 = null8;
        }

        v32 = [v27 dictionaryWithObjectsAndKeys:{null5, v29, null7, v30, anyObject, anyObject, 0}];
        if (v22 != null4)
        {
        }

        if ((v21 & 1) == 0)
        {
        }

        v33 = self->internalQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_52;
        block[3] = &unk_1E8318C30;
        v140 = v158;
        v34 = v98;
        v141 = buf;
        v139 = v34;
        block[4] = self;
        v132 = v96;
        v142 = v99;
        v94 = v26;
        v133 = v94;
        v134 = v32;
        v135 = v97;
        v136 = v24;
        v137 = optionsCopy;
        v138 = anyObject;
        v35 = v24;
        v36 = v32;
        dispatch_async(v33, block);

        goto LABEL_33;
      }

      v94 = 0;
LABEL_58:

      _Block_object_dispose(v154, 8);
      _Block_object_dispose(v156, 8);

      _Block_object_dispose(buf, 8);
      v11 = v103;
    }

    else
    {
      v94 = 0;
      v76 = 0;
    }
  }

  _Block_object_dispose(v158, 8);

  return v76;
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = *(*(*(a1 + 48) + 8) + 24);
  v10 = networkperfLogHandle(v8);
  v11 = v10;
  if (v9)
  {
    v12 = a4 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    if (a4)
    {
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v13 = *(a1 + 80);
      *buf = 134218242;
      v41 = v13;
      v42 = 2112;
      v43 = v8;
      v14 = "fullScorecardFor %lu: Forcing callback due to error: %@";
      v15 = v11;
      v16 = OS_LOG_TYPE_DEFAULT;
      v17 = 22;
    }

    else
    {
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }

      v20 = *(a1 + 80);
      *buf = 134217984;
      v41 = v20;
      v14 = "fullScorecardFor %lu: All operations complete, ready to perform callback";
      v15 = v11;
      v16 = OS_LOG_TYPE_INFO;
      v17 = 12;
    }

    _os_log_impl(&dword_1C85F9000, v15, v16, v14, buf, v17);
LABEL_14:

    v22 = *(*(a1 + 56) + 8);
    v23 = *(v22 + 40);
    if (v23)
    {
      v21 = dispatch_source_testcancel(*(v22 + 40));
      if (!v21)
      {
        dispatch_source_cancel(v23);
      }
    }

    v24 = *(*(a1 + 64) + 8);
    v25 = *(v24 + 40);
    if (v25)
    {
      v21 = dispatch_source_testcancel(*(v24 + 40));
      if (!v21)
      {
        dispatch_source_cancel(v25);
      }
    }

    v26 = *(*(a1 + 72) + 8);
    v27 = *(v26 + 40);
    if (v27)
    {
      v21 = dispatch_source_testcancel(*(v26 + 40));
      if (!v21)
      {
        dispatch_source_cancel(v27);
      }
    }

    v28 = *(*(a1 + 32) + 24);
    if (v28)
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_36;
      v35[3] = &unk_1E8318AF0;
      v29 = v8;
      v30 = *(a1 + 80);
      v36 = v29;
      v39 = v30;
      v38 = *(a1 + 40);
      v37 = v7;
      dispatch_async(v28, v35);
    }

    else
    {
      v31 = networkperfLogHandle(v21);
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_INFO);
      if (v8)
      {
        if (v32)
        {
          v33 = *(a1 + 80);
          *buf = 134218243;
          v41 = v33;
          v42 = 2113;
          v43 = v8;
          _os_log_impl(&dword_1C85F9000, v31, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: callback with error %{private}@", buf, 0x16u);
        }
      }

      else if (v32)
      {
        v34 = *(a1 + 80);
        *buf = 134218243;
        v41 = v34;
        v42 = 2113;
        v43 = v7;
        _os_log_impl(&dword_1C85F9000, v31, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: callback with result %{private}@", buf, 0x16u);
      }

      (*(*(a1 + 40) + 16))();
    }

    goto LABEL_32;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v18 = *(a1 + 80);
    v19 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 134218240;
    v41 = v18;
    v42 = 1024;
    LODWORD(v43) = v19;
    _os_log_impl(&dword_1C85F9000, v11, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: Still waiting for %d outstanding operations", buf, 0x12u);
  }

LABEL_32:
}

uint64_t __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_36(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = networkperfLogHandle(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      v5 = a1[7];
      v6 = a1[4];
      v10 = 134218243;
      v11 = v5;
      v12 = 2113;
      v13 = v6;
      _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: callback on caller queue with error %{private}@", &v10, 0x16u);
    }
  }

  else if (v4)
  {
    v7 = a1[7];
    v8 = a1[5];
    v10 = 134218243;
    v11 = v7;
    v12 = 2113;
    v13 = v8;
    _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: callback on caller queue with result %{private}@", &v10, 0x16u);
  }

  return (*(a1[6] + 16))();
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_38(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = networkperfLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for fullScorecardFor:options:reply: %@", buf, 0xCu);
  }

  v5 = *(*(a1 + 32) + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_39;
  v9[3] = &unk_1E8318B40;
  v6 = *(a1 + 40);
  v10 = v3;
  v11 = v6;
  v7 = *(a1 + 56);
  v12 = *(a1 + 48);
  v13 = v7;
  v8 = v3;
  dispatch_async(v5, v9);
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_39(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1CCA78840](a1[5]);
  v3 = networkperfLogHandle(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = a1[7];
    v5 = a1[4];
    v12 = 134218242;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_ERROR, "fullScorecardFor %lu: Remote proxy error %@", &v12, 0x16u);
  }

  if (v2)
  {
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 24);
    if (v8 <= 0)
    {
      v9 = networkperfLogHandle(v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *(*(a1[6] + 8) + 24);
        v12 = 67109120;
        LODWORD(v13) = v10;
        _os_log_impl(&dword_1C85F9000, v9, OS_LOG_TYPE_ERROR, "fullScorecardFor: attempting to decrement outstanding operations below 0! (%d)", &v12, 8u);
      }

      v7 = *(a1[6] + 8);
      v8 = *(v7 + 24);
    }

    *(v7 + 24) = v8 - 1;
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
    (v2)[2](v2, 0, v11, 1);
  }
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_52(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 104);
  ++*(*(*(a1 + 104) + 8) + 24);
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__53;
  v39[4] = __Block_byref_object_dispose__54;
  v40 = MEMORY[0x1CCA78840](*(a1 + 96));
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(*(a1 + 32) + 16));
  v4 = *(*(a1 + 112) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 112) + 8) + 40);
  v7 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v8 = *(*(*(a1 + 112) + 8) + 40);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_55;
  handler[3] = &unk_1E8318B90;
  v9 = *v2;
  v36 = v39;
  v37 = v9;
  v10 = *(a1 + 40);
  v11 = *(a1 + 112);
  v35 = v10;
  v38 = v11;
  dispatch_source_set_event_handler(v8, handler);
  dispatch_activate(*(*(*(a1 + 112) + 8) + 40));
  v13 = networkperfLogHandle(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 120);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    *buf = 134218499;
    v42 = v14;
    v43 = 2113;
    v44 = v15;
    v45 = 2113;
    v46 = v16;
    _os_log_impl(&dword_1C85F9000, v13, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: requesting flow performance with pred %{private}@ and action %{private}@", buf, 0x20u);
  }

  v17 = *(a1 + 64);
  v18 = [MEMORY[0x1E69D5180] entityName];
  v20 = *(a1 + 48);
  v19 = *(a1 + 56);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_58;
  v24[3] = &unk_1E8318C08;
  v21 = *(a1 + 120);
  v30 = *(a1 + 112);
  v33 = v21;
  v22 = *(a1 + 72);
  v23 = *(a1 + 32);
  v25 = v22;
  v26 = v23;
  v27 = *(a1 + 80);
  v28 = *(a1 + 40);
  v29 = *(a1 + 88);
  v31 = v39;
  v32 = *(a1 + 104);
  [v17 performQueryOnEntity:v18 pred:v20 sort:0 actions:v19 reply:v24];

  _Block_object_dispose(v39, 8);
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_55(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = networkperfLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "flow performance";
    _os_log_impl(&dword_1C85F9000, v2, OS_LOG_TYPE_ERROR, "fullScorecardFor: timed out while waiting for XPC response (%s)", &v13, 0xCu);
  }

  if (*(*(a1[5] + 8) + 40))
  {
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 24);
    if (v5 <= 0)
    {
      v6 = networkperfLogHandle(v3);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(*(a1[6] + 8) + 24);
        v13 = 67109120;
        LODWORD(v14) = v7;
        _os_log_impl(&dword_1C85F9000, v6, OS_LOG_TYPE_ERROR, "fullScorecardFor: attempting to decrement outstanding operations below 0! (%d)", &v13, 8u);
      }

      v4 = *(a1[6] + 8);
      v5 = *(v4 + 24);
    }

    *(v4 + 24) = v5 - 1;
    v8 = a1[4];
    v9 = *(*(a1[5] + 8) + 40);
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:60 userInfo:0];
    (*(v9 + 16))(v9, v8, v10, 0);

    v11 = *(a1[5] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;
  }

  dispatch_source_cancel(*(*(a1[7] + 8) + 40));
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_58(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(*(a1 + 72) + 8) + 40);
  v5 = dispatch_source_testcancel(v4);
  if (v5)
  {
    v6 = networkperfLogHandle(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 96);
      *buf = 134217984;
      v51 = v7;
      _os_log_impl(&dword_1C85F9000, v6, OS_LOG_TYPE_DEFAULT, "fullScorecardFor %lu: Timeout timer already fired. Will not process XPC reply for flow performance.", buf, 0xCu);
    }
  }

  else
  {
    dispatch_source_cancel(v4);
    v9 = networkperfLogHandle(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 96);
      *buf = 134218498;
      v51 = v10;
      v52 = 2048;
      v53 = [v3 count];
      v54 = 2112;
      v55 = v3;
      _os_log_impl(&dword_1C85F9000, v9, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: flow received %lu records with: %@", buf, 0x20u);
    }

    v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v29 = v3;
    obj = v3;
    v11 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v11)
    {
      v12 = v11;
      v32 = *v45;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v45 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v44 + 1) + 8 * i);
          v15 = [v14 allKeys];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v16 = v15;
          v17 = [v16 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v41;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v41 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v40 + 1) + 8 * j);
                if ([v21 rangeOfString:*(a1 + 32)] != 0x7FFFFFFFFFFFFFFFLL && v22 != 0)
                {
                  v24 = [v14 objectForKey:v21];
                  [*(a1 + 40) _rollFlowMetricsValuesFromDict:v14 toDict:v31 forKey:v24 andRequest:*(a1 + 48)];

                  goto LABEL_23;
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v18);
          }

LABEL_23:
        }

        v12 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v12);
    }

    v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_59;
    v38[3] = &unk_1E8318BB8;
    v38[4] = *(a1 + 40);
    v26 = v25;
    v39 = v26;
    v6 = v31;
    [v31 enumerateKeysAndObjectsUsingBlock:v38];
    v27 = *(*(a1 + 40) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_2;
    block[3] = &unk_1E8318BE0;
    v34 = v26;
    v35 = *(a1 + 56);
    v36 = *(a1 + 64);
    v37 = *(a1 + 80);
    v28 = v26;
    dispatch_async(v27, block);

    v3 = v29;
  }
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_59(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = v8;
  v6 = a2;
  v7 = [*(a1 + 32) _flowMetricsPresentationFromRoll:v6 source:{objc_msgSend(v8, "bytes")}];
  [*(a1 + 40) setObject:v7 forKeyedSubscript:v6];
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) count];
  if (v2)
  {
    v2 = [*(a1 + 40) setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 48)];
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v3 = *(*(a1 + 64) + 8);
    v4 = *(v3 + 24);
    if (v4 <= 0)
    {
      v5 = networkperfLogHandle(v2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(*(*(a1 + 64) + 8) + 24);
        v9[0] = 67109120;
        v9[1] = v6;
        _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_ERROR, "fullScorecardFor: attempting to decrement outstanding operations below 0! (%d)", v9, 8u);
      }

      v3 = *(*(a1 + 64) + 8);
      v4 = *(v3 + 24);
    }

    *(v3 + 24) = v4 - 1;
    (*(*(*(*(a1 + 56) + 8) + 40) + 16))();
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_157(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = networkperfLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for fullScorecardFor:options:reply: %@", buf, 0xCu);
  }

  v5 = *(*(a1 + 32) + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_158;
  v9[3] = &unk_1E8318B40;
  v6 = *(a1 + 40);
  v10 = v3;
  v11 = v6;
  v7 = *(a1 + 56);
  v12 = *(a1 + 48);
  v13 = v7;
  v8 = v3;
  dispatch_async(v5, v9);
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_158(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1CCA78840](a1[5]);
  v3 = networkperfLogHandle(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = a1[7];
    v5 = a1[4];
    v12 = 134218242;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_ERROR, "fullScorecardFor %lu: Remote proxy error %@", &v12, 0x16u);
  }

  if (v2)
  {
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 24);
    if (v8 <= 0)
    {
      v9 = networkperfLogHandle(v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *(*(a1[6] + 8) + 24);
        v12 = 67109120;
        LODWORD(v13) = v10;
        _os_log_impl(&dword_1C85F9000, v9, OS_LOG_TYPE_ERROR, "fullScorecardFor: attempting to decrement outstanding operations below 0! (%d)", &v12, 8u);
      }

      v7 = *(a1[6] + 8);
      v8 = *(v7 + 24);
    }

    *(v7 + 24) = v8 - 1;
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
    (v2)[2](v2, 0, v11, 1);
  }
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_195(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 96);
  ++*(*(*(a1 + 96) + 8) + 24);
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__53;
  v40[4] = __Block_byref_object_dispose__54;
  v41 = MEMORY[0x1CCA78840](*(a1 + 88));
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(*(a1 + 32) + 16));
  v4 = *(*(a1 + 104) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 104) + 8) + 40);
  v7 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v8 = *(*(*(a1 + 104) + 8) + 40);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_2_196;
  handler[3] = &unk_1E8318B90;
  v9 = *v2;
  v37 = v40;
  v38 = v9;
  v10 = *(a1 + 40);
  v11 = *(a1 + 104);
  v36 = v10;
  v39 = v11;
  dispatch_source_set_event_handler(v8, handler);
  dispatch_activate(*(*(*(a1 + 104) + 8) + 40));
  v13 = networkperfLogHandle(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 112);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    *buf = 134218499;
    v43 = v14;
    v44 = 2113;
    v45 = v15;
    v46 = 2113;
    v47 = v16;
    _os_log_impl(&dword_1C85F9000, v13, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: requesting historical network attachment performance with pred %{private}@ and action %{private}@", buf, 0x20u);
  }

  v17 = *(a1 + 64);
  v18 = [MEMORY[0x1E69D5188] entityName];
  v20 = *(a1 + 48);
  v19 = *(a1 + 56);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_199;
  v25[3] = &unk_1E8318C80;
  v21 = *(a1 + 112);
  v30 = *(a1 + 104);
  v33 = v21;
  v34 = *(a1 + 120);
  v22 = *(a1 + 72);
  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = *(a1 + 80);
  v31 = v40;
  v32 = *(a1 + 96);
  [v17 performQueryOnEntity:v18 pred:v20 sort:0 actions:v19 reply:v25];

  _Block_object_dispose(v40, 8);
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_2_196(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = networkperfLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "historical network attachment performance";
    _os_log_impl(&dword_1C85F9000, v2, OS_LOG_TYPE_ERROR, "fullScorecardFor: timed out while waiting for XPC response (%s)", &v13, 0xCu);
  }

  if (*(*(a1[5] + 8) + 40))
  {
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 24);
    if (v5 <= 0)
    {
      v6 = networkperfLogHandle(v3);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(*(a1[6] + 8) + 24);
        v13 = 67109120;
        LODWORD(v14) = v7;
        _os_log_impl(&dword_1C85F9000, v6, OS_LOG_TYPE_ERROR, "fullScorecardFor: attempting to decrement outstanding operations below 0! (%d)", &v13, 8u);
      }

      v4 = *(a1[6] + 8);
      v5 = *(v4 + 24);
    }

    *(v4 + 24) = v5 - 1;
    v8 = a1[4];
    v9 = *(*(a1[5] + 8) + 40);
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:60 userInfo:0];
    (*(v9 + 16))(v9, v8, v10, 0);

    v11 = *(a1[5] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;
  }

  dispatch_source_cancel(*(*(a1[7] + 8) + 40));
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_199(uint64_t a1, void *a2)
{
  v120 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v69 = a1;
  v4 = *(*(*(a1 + 64) + 8) + 40);
  v5 = dispatch_source_testcancel(v4);
  if (v5)
  {
    v6 = networkperfLogHandle(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v69 + 88);
      *buf = 134217984;
      v115 = v7;
      _os_log_impl(&dword_1C85F9000, v6, OS_LOG_TYPE_DEFAULT, "fullScorecardFor %lu: Timeout timer already fired. Will not process XPC reply for historical network attachment performance.", buf, 0xCu);
    }
  }

  else
  {
    dispatch_source_cancel(v4);
    v9 = networkperfLogHandle(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(v69 + 88);
      *buf = 134218498;
      v115 = v10;
      v116 = 2048;
      v117 = [v3 count];
      v118 = 2112;
      v119 = v3;
      _os_log_impl(&dword_1C85F9000, v9, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: route received %lu records with: %@", buf, 0x20u);
    }

    if (*(v69 + 96) == 1)
    {
      [*(v69 + 32) setInterruptionHandler:0];
      [*(v69 + 32) invalidate];
    }

    v68 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v83 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v82 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v79 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v78 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v77 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v76 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v67 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v80 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v74 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v72 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v70 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v64 = v3;
    obj = v3;
    v11 = [obj countByEnumeratingWithState:&v108 objects:v113 count:16];
    if (v11)
    {
      v12 = v11;
      v84 = *v109;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v109 != v84)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v108 + 1) + 8 * i);
          v15 = [v14 allKeys];
          v104 = 0u;
          v105 = 0u;
          v106 = 0u;
          v107 = 0u;
          v16 = v15;
          v17 = [v16 countByEnumeratingWithState:&v104 objects:v112 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v105;
            while (2)
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v105 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v104 + 1) + 8 * j);
                if ([v21 rangeOfString:@"identifier"] != 0x7FFFFFFFFFFFFFFFLL && v22 != 0)
                {
                  v24 = [v14 objectForKey:v21];
                  [*(v69 + 40) _rollRouteMetricsValuesFromDict:v14 toDict:v68 forKey:v24];
                  v25 = [v14 objectForKey:@"hasNetworkAttachment.firstTimeStamp"];
                  v26 = [v83 objectForKey:v24];

                  if (v26)
                  {
                    v27 = 1;
                  }

                  else
                  {
                    v27 = v25 == 0;
                  }

                  if (!v27)
                  {
                    [v83 setObject:v25 forKey:v24];
                  }

                  v28 = [v14 objectForKey:@"hasNetworkAttachment.isKnownGood"];
                  v29 = [v82 objectForKey:v24];

                  if (v29)
                  {
                    v30 = 1;
                  }

                  else
                  {
                    v30 = v28 == 0;
                  }

                  if (!v30)
                  {
                    [v82 setObject:v28 forKey:v24];
                  }

                  v31 = [v79 objectForKey:v24];

                  if (!v31)
                  {
                    v32 = [v14 objectForKey:@"hasNetworkAttachment.isLowInternetDL"];
                    v33 = v32;
                    if (v32)
                    {
                      v34 = v32;
                    }

                    else
                    {
                      v34 = MEMORY[0x1E695E110];
                    }

                    [v79 setObject:v34 forKey:v24];
                  }

                  v35 = [v78 objectForKey:v24];

                  if (!v35)
                  {
                    v36 = [v14 objectForKey:@"hasNetworkAttachment.isLowInternetUL"];
                    v37 = v36;
                    if (v36)
                    {
                      v38 = v36;
                    }

                    else
                    {
                      v38 = MEMORY[0x1E695E110];
                    }

                    [v78 setObject:v38 forKey:v24];
                  }

                  v39 = [v77 objectForKey:v24];

                  if (!v39)
                  {
                    v40 = [v14 objectForKey:@"hasNetworkAttachment.isHotSpot"];
                    v41 = v40;
                    if (v40)
                    {
                      v42 = v40;
                    }

                    else
                    {
                      v42 = MEMORY[0x1E695E110];
                    }

                    [v77 setObject:v42 forKey:v24];
                  }

                  v43 = [v76 objectForKey:v24];

                  if (!v43)
                  {
                    v44 = [v14 objectForKey:@"hasNetworkAttachment.rpmAvg"];
                    if (v44)
                    {
                      [v76 setObject:v44 forKey:v24];
                    }
                  }

                  v45 = [v67 objectForKey:v24];

                  if (!v45)
                  {
                    v46 = [v14 objectForKey:@"hasNetworkAttachment.rpmCount"];
                    if (v46)
                    {
                      [v80 setObject:v46 forKey:v24];
                    }
                  }

                  v47 = [v80 objectForKey:v24];

                  if (!v47)
                  {
                    v48 = [v14 objectForKey:@"hasNetworkAttachment.rpmVar"];
                    if (v48)
                    {
                      [v80 setObject:v48 forKey:v24];
                    }
                  }

                  v49 = [v74 objectForKey:v24];

                  if (!v49)
                  {
                    v50 = [v14 objectForKey:@"hasNetworkAttachment.rpmExitAvg"];
                    if (v50)
                    {
                      [v74 setObject:v50 forKey:v24];
                    }
                  }

                  v51 = [v72 objectForKey:v24];

                  if (!v51)
                  {
                    v52 = [v14 objectForKey:@"hasNetworkAttachment.rpmExitCount"];
                    if (v52)
                    {
                      [v72 setObject:v52 forKey:v24];
                    }
                  }

                  v53 = [v70 objectForKey:v24];

                  if (!v53)
                  {
                    v54 = [v14 objectForKey:@"hasNetworkAttachment.rpmExitVar"];
                    if (v54)
                    {
                      [v70 setObject:v54 forKey:v24];
                    }
                  }

                  goto LABEL_76;
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v104 objects:v112 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

LABEL_76:
        }

        v12 = [obj countByEnumeratingWithState:&v108 objects:v113 count:16];
      }

      while (v12);
    }

    v55 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_200;
    v91[3] = &unk_1E8318C58;
    v91[4] = *(v69 + 40);
    v92 = v83;
    v93 = v82;
    v94 = v79;
    v95 = v78;
    v96 = v77;
    v97 = v76;
    v98 = v67;
    v99 = v80;
    v100 = v74;
    v101 = v72;
    v102 = v70;
    obja = v55;
    v103 = obja;
    v85 = v70;
    v73 = v72;
    v75 = v74;
    v81 = v80;
    v71 = v67;
    v56 = v76;
    v57 = v77;
    v58 = v78;
    v59 = v79;
    v60 = v82;
    v61 = v83;
    v6 = v68;
    [v68 enumerateKeysAndObjectsUsingBlock:v91];
    v62 = *(*(v69 + 40) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_2_201;
    block[3] = &unk_1E8318BE0;
    v87 = obja;
    v88 = *(v69 + 48);
    v89 = *(v69 + 56);
    v90 = *(v69 + 72);
    v63 = obja;
    dispatch_async(v62, block);

    v3 = v64;
  }
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_200(uint64_t a1, void *a2, void *a3)
{
  v21 = a3;
  v5 = v21;
  v6 = a2;
  v19 = [v21 bytes];
  v20 = *(a1 + 32);
  v17 = [*(a1 + 40) objectForKey:v6];
  v15 = [*(a1 + 48) objectForKey:v6];
  v18 = [*(a1 + 56) objectForKey:v6];
  v16 = [*(a1 + 64) objectForKey:v6];
  v14 = [*(a1 + 72) objectForKey:v6];
  v13 = [*(a1 + 80) objectForKey:v6];
  v12 = [*(a1 + 88) objectForKey:v6];
  v7 = [*(a1 + 96) objectForKey:v6];
  v8 = [*(a1 + 104) objectForKey:v6];
  v9 = [*(a1 + 112) objectForKey:v6];
  v10 = [*(a1 + 120) objectForKey:v6];
  v11 = [v20 _routeMetricsPresentationFromRoll:v6 source:v19 since:v17 isKnownGood:v15 isLowInternetDL:v18 isLowInternetUL:v16 isHotSpot:v14 rpmAverage:v13 rpmCount:v12 rpmVariance:v7 rpmExitAverage:v8 rpmExitCount:v9 rpmExitVariance:v10];

  [*(a1 + 128) setObject:v11 forKeyedSubscript:v6];
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_2_201(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) count];
  if (v2)
  {
    v2 = [*(a1 + 40) setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 48)];
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v3 = *(*(a1 + 64) + 8);
    v4 = *(v3 + 24);
    if (v4 <= 0)
    {
      v5 = networkperfLogHandle(v2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(*(*(a1 + 64) + 8) + 24);
        v9[0] = 67109120;
        v9[1] = v6;
        _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_ERROR, "fullScorecardFor: attempting to decrement outstanding operations below 0! (%d)", v9, 8u);
      }

      v3 = *(*(a1 + 64) + 8);
      v4 = *(v3 + 24);
    }

    *(v3 + 24) = v4 - 1;
    (*(*(*(*(a1 + 56) + 8) + 40) + 16))();
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_202(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 88);
  ++*(*(*(a1 + 88) + 8) + 24);
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__53;
  v36[4] = __Block_byref_object_dispose__54;
  v37 = MEMORY[0x1CCA78840](*(a1 + 80));
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(*(a1 + 32) + 16));
  v4 = *(*(a1 + 96) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 96) + 8) + 40);
  v7 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v8 = *(*(*(a1 + 96) + 8) + 40);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_2_203;
  handler[3] = &unk_1E8318B90;
  v9 = *v2;
  v33 = v36;
  v34 = v9;
  v10 = *(a1 + 40);
  v11 = *(a1 + 96);
  v32 = v10;
  v35 = v11;
  dispatch_source_set_event_handler(v8, handler);
  dispatch_activate(*(*(*(a1 + 96) + 8) + 40));
  v13 = networkperfLogHandle(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 104);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    *buf = 134218499;
    v39 = v14;
    v40 = 2113;
    v41 = v15;
    v42 = 2113;
    v43 = v16;
    _os_log_impl(&dword_1C85F9000, v13, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: requesting instant network attachment performance with pred %{private}@ and action %{private}@", buf, 0x20u);
  }

  v17 = *(a1 + 64);
  v18 = [MEMORY[0x1E69D5188] entityName];
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_205;
  v24[3] = &unk_1E8318CD0;
  v21 = *(a1 + 96);
  v30 = *(a1 + 104);
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  v27 = v21;
  v24[4] = v22;
  v25 = v23;
  v26 = *(a1 + 72);
  v28 = v36;
  v29 = *(a1 + 88);
  [v17 performQueryOnEntity:v18 pred:v19 sort:0 actions:v20 reply:v24];

  _Block_object_dispose(v36, 8);
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_2_203(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = networkperfLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "instant network attachment performance";
    _os_log_impl(&dword_1C85F9000, v2, OS_LOG_TYPE_ERROR, "fullScorecardFor: timed out while waiting for XPC response (%s)", &v13, 0xCu);
  }

  if (*(*(a1[5] + 8) + 40))
  {
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 24);
    if (v5 <= 0)
    {
      v6 = networkperfLogHandle(v3);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(*(a1[6] + 8) + 24);
        v13 = 67109120;
        LODWORD(v14) = v7;
        _os_log_impl(&dword_1C85F9000, v6, OS_LOG_TYPE_ERROR, "fullScorecardFor: attempting to decrement outstanding operations below 0! (%d)", &v13, 8u);
      }

      v4 = *(a1[6] + 8);
      v5 = *(v4 + 24);
    }

    *(v4 + 24) = v5 - 1;
    v8 = a1[4];
    v9 = *(*(a1[5] + 8) + 40);
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:60 userInfo:0];
    (*(v9 + 16))(v9, v8, v10, 0);

    v11 = *(a1[5] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;
  }

  dispatch_source_cancel(*(*(a1[7] + 8) + 40));
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_205(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(*(a1 + 56) + 8) + 40);
  v5 = dispatch_source_testcancel(v4);
  if (v5)
  {
    v6 = networkperfLogHandle(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 80);
      *buf = 134217984;
      v22 = v7;
      _os_log_impl(&dword_1C85F9000, v6, OS_LOG_TYPE_DEFAULT, "fullScorecardFor %lu: Timeout timer already fired. Will not process XPC reply for instant network attachment performance.", buf, 0xCu);
    }
  }

  else
  {
    dispatch_source_cancel(v4);
    v9 = networkperfLogHandle(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 80);
      *buf = 134218498;
      v22 = v10;
      v23 = 2048;
      v24 = [v3 count];
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&dword_1C85F9000, v9, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: route received %lu records with: %@", buf, 0x20u);
    }

    v6 = [*(a1 + 32) _formatInstantRouteMetrics:v3];
    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    if (v6)
    {
      v12 = [v6 objectForKeyedSubscript:@"identifier"];

      if (v12)
      {
        v13 = [v6 objectForKeyedSubscript:@"identifier"];
        [v11 setObject:v6 forKeyedSubscript:v13];
      }
    }

    v14 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_206;
    block[3] = &unk_1E8318BE0;
    v17 = v11;
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v20 = *(a1 + 64);
    v15 = v11;
    dispatch_async(v14, block);
  }
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_206(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) count];
  if (v2)
  {
    v2 = [*(a1 + 40) setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 48)];
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v3 = *(*(a1 + 64) + 8);
    v4 = *(v3 + 24);
    if (v4 <= 0)
    {
      v5 = networkperfLogHandle(v2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(*(*(a1 + 64) + 8) + 24);
        v9[0] = 67109120;
        v9[1] = v6;
        _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_ERROR, "fullScorecardFor: attempting to decrement outstanding operations below 0! (%d)", v9, 8u);
      }

      v3 = *(*(a1 + 64) + 8);
      v4 = *(v3 + 24);
    }

    *(v3 + 24) = v4 - 1;
    (*(*(*(*(a1 + 56) + 8) + 40) + 16))();
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

- (id)_formatWatchpointHit:(id)hit
{
  lastObject = [hit lastObject];
  v4 = lastObject;
  if (lastObject && ([lastObject objectForKeyedSubscript:@"kind"], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "shortValue"), v5, v6 == 1))
  {
    v7 = MEMORY[0x1E695DF20];
    v8 = [v4 objectForKeyedSubscript:@"txPackets"];
    v9 = [v4 objectForKeyedSubscript:@"txReTxPackets"];
    v10 = [v4 objectForKeyedSubscript:@"txFailPackets"];
    v11 = [v4 objectForKeyedSubscript:@"txReTxInterval"];
    v12 = [v7 dictionaryWithObjectsAndKeys:{v8, @"txPackets", v9, @"txReTxPackets", v10, @"txFailPackets", v11, @"txReTxInterval", 0}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)watchpointOn:(int)on forIdentifier:(id)identifier andKey:(id)key onThreshold:(double)threshold withOptions:(id)options uponHit:(id)hit
{
  v60 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  keyCopy = key;
  optionsCopy = options;
  hitCopy = hit;
  v18 = networkperfLogHandle(hitCopy);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = MEMORY[0x1CCA78840](hitCopy);
    *buf = 67110402;
    *v53 = on;
    *&v53[4] = 2112;
    *&v53[6] = identifierCopy;
    *&v53[14] = 2112;
    *&v53[16] = keyCopy;
    v54 = 2048;
    thresholdCopy = threshold;
    v56 = 2112;
    v57 = optionsCopy;
    v58 = 2048;
    v59 = v19;
    _os_log_impl(&dword_1C85F9000, v18, OS_LOG_TYPE_DEBUG, "> watchpointOn:%d forIdentifier:%@ andKey:%@ onThreshold:%.2lf withOptions:%@ uponHit:%p", buf, 0x3Au);
  }

  v20 = 0;
  if (identifierCopy && threshold != 0.0)
  {
    connection = [(AnalyticsWorkspace *)self->workspace connection];

    if (connection)
    {
      v22 = *MEMORY[0x1E69D52C8];
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E69D52D0], *MEMORY[0x1E69D52C8], 0}];
      if (optionsCopy && ([optionsCopy isEqualToDictionary:v23] & 1) != 0)
      {
        connection2 = [(AnalyticsWorkspace *)self->workspace connection];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __92__NetworkPerformanceFeed_watchpointOn_forIdentifier_andKey_onThreshold_withOptions_uponHit___block_invoke_2;
        v47[3] = &unk_1E8318D20;
        v42 = hitCopy;
        v48 = v42;
        v25 = [connection2 remoteObjectProxyWithErrorHandler:v47];

        v20 = v25 != 0;
        if (v25)
        {
          v40 = v25;
          v41 = v23;
          v38 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
          v39 = [optionsCopy objectForKeyedSubscript:v22];
          v37 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ AND %K == %@", @"tmpID", identifierCopy, v22, v39];
          v26 = MEMORY[0x1E695DF20];
          v27 = *MEMORY[0x1E69D53D0];
          v28 = [MEMORY[0x1E696AD98] numberWithDouble:threshold];
          v29 = [v26 dictionaryWithObjectsAndKeys:{identifierCopy, v27, v28, *MEMORY[0x1E69D53D8], keyCopy, *MEMORY[0x1E69D53C8], *MEMORY[0x1E69D52C0], *MEMORY[0x1E69D52C0], 0}];

          v31 = networkperfLogHandle(v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            *v53 = v37;
            *&v53[8] = 2112;
            *&v53[10] = v29;
            _os_log_impl(&dword_1C85F9000, v31, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:SFLiveFlowPerf pred:%@ sort:nil actions:%@", buf, 0x16u);
          }

          entityName = [MEMORY[0x1E69D5180] entityName];
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __92__NetworkPerformanceFeed_watchpointOn_forIdentifier_andKey_onThreshold_withOptions_uponHit___block_invoke_207;
          v43[3] = &unk_1E8318D48;
          v43[4] = self;
          v44 = v38;
          v45 = identifierCopy;
          v46 = v42;
          v33 = v38;
          [v40 performQueryOnEntity:entityName pred:v37 sort:0 actions:v29 reply:v43];

          v25 = v40;
          v23 = v41;
        }

        v34 = v48;
      }

      else
      {
        v34 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:0];
        callerQueue = self->callerQueue;
        if (callerQueue)
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __92__NetworkPerformanceFeed_watchpointOn_forIdentifier_andKey_onThreshold_withOptions_uponHit___block_invoke;
          block[3] = &unk_1E8318A00;
          v51 = hitCopy;
          v34 = v34;
          v50 = v34;
          dispatch_async(callerQueue, block);
        }

        else
        {
          (*(hitCopy + 2))(hitCopy, 0, v34);
        }

        v20 = 1;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

void __92__NetworkPerformanceFeed_watchpointOn_forIdentifier_andKey_onThreshold_withOptions_uponHit___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = networkperfLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for watchpointOn:forIdentifier:andKey: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
  (*(v5 + 16))(v5, 0, v6);
}

void __92__NetworkPerformanceFeed_watchpointOn_forIdentifier_andKey_onThreshold_withOptions_uponHit___block_invoke_207(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = networkperfLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v15 = [v3 count];
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_INFO, " watchpoint received %lu records with: %@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) _formatWatchpointHit:v3];
  if (!v5)
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    v6 = *(*(a1 + 32) + 24);
    if (v6)
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 56);
    if (v7)
    {
      v9 = 0;
      goto LABEL_12;
    }

LABEL_9:
    v7 = 0;
    v9 = *(a1 + 40);
LABEL_12:
    (*(v8 + 16))(v8, v9, v7);
    goto LABEL_13;
  }

  [*(a1 + 40) setObject:v5 forKeyedSubscript:*(a1 + 48)];
  v6 = *(*(a1 + 32) + 24);
  if (!v6)
  {
    v8 = *(a1 + 56);
    goto LABEL_9;
  }

  v7 = 0;
LABEL_7:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__NetworkPerformanceFeed_watchpointOn_forIdentifier_andKey_onThreshold_withOptions_uponHit___block_invoke_208;
  block[3] = &unk_1E8318A50;
  v13 = *(a1 + 56);
  v7 = v7;
  v11 = v7;
  v12 = *(a1 + 40);
  dispatch_async(v6, block);

LABEL_13:
}

uint64_t __92__NetworkPerformanceFeed_watchpointOn_forIdentifier_andKey_onThreshold_withOptions_uponHit___block_invoke_208(void *a1)
{
  v2 = a1[6];
  if (a1[4])
  {
    v3 = 0;
  }

  else
  {
    v3 = a1[5];
  }

  return (*(v2 + 16))(v2, v3);
}

- (BOOL)resetDataForKeys:(id)keys reply:(id)reply
{
  v25 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  replyCopy = reply;
  v8 = networkperfLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v22 = keysCopy;
    v23 = 2048;
    v24 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> resetDataForKeys:%@ reply:%p", buf, 0x16u);
  }

  connection = [(AnalyticsWorkspace *)self->workspace connection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __49__NetworkPerformanceFeed_resetDataForKeys_reply___block_invoke;
  v19[3] = &unk_1E8318D20;
  v11 = replyCopy;
  v20 = v11;
  v12 = [connection synchronousRemoteObjectProxyWithErrorHandler:v19];

  if (v12)
  {
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E69D5380], 0}];
    allObjects = [keysCopy allObjects];
    v15 = networkperfLogHandle(allObjects);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v22 = allObjects;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_1C85F9000, v15, OS_LOG_TYPE_DEBUG, "resetDataFor:%@ nameKind:nil inScopes:%@", buf, 0x16u);
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __49__NetworkPerformanceFeed_resetDataForKeys_reply___block_invoke_209;
    v17[3] = &unk_1E8318D70;
    v18 = v11;
    [v12 resetDataFor:allObjects nameKind:0 inScopes:v13 reply:v17];
  }

  return v12 != 0;
}

void __49__NetworkPerformanceFeed_resetDataForKeys_reply___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = networkperfLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for resetDataForKeys:reply: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __49__NetworkPerformanceFeed_resetDataForKeys_reply___block_invoke_209(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = networkperfLogHandle(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_DEBUG, "resetDataForKeys received callback with result:%{BOOL}d", v6, 8u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (BOOL)getPreferCellOverWiFiWithOptions:(id)options reply:(id)reply
{
  v24 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  replyCopy = reply;
  v8 = networkperfLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v21 = optionsCopy;
    v22 = 2048;
    v23 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> getPreferCellOverWiFiWithOptions:%@ reply:%p", buf, 0x16u);
  }

  if (replyCopy)
  {
    connection = [(AnalyticsWorkspace *)self->workspace connection];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__NetworkPerformanceFeed_getPreferCellOverWiFiWithOptions_reply___block_invoke;
    v18[3] = &unk_1E8318D20;
    v11 = replyCopy;
    v19 = v11;
    v12 = [connection remoteObjectProxyWithErrorHandler:v18];

    if (v12)
    {
      v14 = networkperfLogHandle(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = optionsCopy;
        _os_log_impl(&dword_1C85F9000, v14, OS_LOG_TYPE_DEBUG, "getPreferCellOverWiFiWithOptions:%@", buf, 0xCu);
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __65__NetworkPerformanceFeed_getPreferCellOverWiFiWithOptions_reply___block_invoke_211;
      v16[3] = &unk_1E8318D98;
      v17 = v11;
      [v12 getPreferCellOverWiFiWithOptions:optionsCopy reply:v16];
    }
  }

  return replyCopy != 0;
}

void __65__NetworkPerformanceFeed_getPreferCellOverWiFiWithOptions_reply___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = networkperfLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for getPreferCellOverWiFiWithOptions: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __65__NetworkPerformanceFeed_getPreferCellOverWiFiWithOptions_reply___block_invoke_211(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = networkperfLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "getPreferCellOverWiFiWithOptions received callback with error:%@ and outcome:%@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)setPreferCellOverWiFiWithOptions:(id)options reply:(id)reply
{
  v24 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  replyCopy = reply;
  v8 = networkperfLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v21 = optionsCopy;
    v22 = 2048;
    v23 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> setPreferCellOverWiFiWithOptions:%@ reply:%p", buf, 0x16u);
  }

  if (replyCopy)
  {
    connection = [(AnalyticsWorkspace *)self->workspace connection];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__NetworkPerformanceFeed_setPreferCellOverWiFiWithOptions_reply___block_invoke;
    v18[3] = &unk_1E8318D20;
    v11 = replyCopy;
    v19 = v11;
    v12 = [connection remoteObjectProxyWithErrorHandler:v18];

    if (v12)
    {
      v14 = networkperfLogHandle(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = optionsCopy;
        _os_log_impl(&dword_1C85F9000, v14, OS_LOG_TYPE_DEBUG, "setPreferCellOverWiFiWithOptions:%@", buf, 0xCu);
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __65__NetworkPerformanceFeed_setPreferCellOverWiFiWithOptions_reply___block_invoke_213;
      v16[3] = &unk_1E8318D98;
      v17 = v11;
      [v12 setPreferCellOverWiFiWithOptions:optionsCopy reply:v16];
    }
  }

  return replyCopy != 0;
}

void __65__NetworkPerformanceFeed_setPreferCellOverWiFiWithOptions_reply___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = networkperfLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for setPreferCellOverWiFiWithOptions: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __65__NetworkPerformanceFeed_setPreferCellOverWiFiWithOptions_reply___block_invoke_213(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = networkperfLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "setPreferCellOverWiFiWithOptions received callback with error:%@ and outcome:%@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

@end