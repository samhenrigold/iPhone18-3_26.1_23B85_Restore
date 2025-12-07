@interface CWFBrokenBackhaulMonitor
- (CWFBrokenBackhaulMonitor)init;
- (int64_t)__mapSymptomsBrokenBackhaulState:(unint64_t)state;
- (void)__confirmBrokenBackhaulUsingTimeout:(unint64_t)timeout count:(unint64_t)count completion:(id)completion;
- (void)__fetchSymptomsBrokenBackhaulStateWithEventID:(unint64_t)d completion:(id)completion;
- (void)__performProbeToRemoteEndpointUsingTimeout:(unint64_t)timeout completion:(id)completion;
- (void)__submitCoreAnalyticsEvent;
- (void)__updateBrokenBackhaulState:(int64_t)state timestamp:(id)timestamp usingQuickProbeTimeout:(unint64_t)timeout;
- (void)__updatePendingCoreAnalyticsPayloadWithNewBrokenBackhaulState:(int64_t)state usingQuickProbeTimeout:(unint64_t)timeout;
- (void)activateWithCompletion:(id)completion;
- (void)confirmBrokenBackhaulUsingTimeout:(unint64_t)timeout count:(unint64_t)count preflightPingAddress:(id)address completion:(id)completion;
- (void)invalidate;
- (void)reset;
@end

@implementation CWFBrokenBackhaulMonitor

- (CWFBrokenBackhaulMonitor)init
{
  v14.receiver = self;
  v14.super_class = CWFBrokenBackhaulMonitor;
  v2 = [(CWFBrokenBackhaulMonitor *)&v14 init];
  if (!v2 || (dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v3 = objc_claimAutoreleasedReturnValue(), v4 = dispatch_queue_create("com.apple.corewifi.bbh.internal", v3), v5 = *(v2 + 2), *(v2 + 2) = v4, v5, v3, !*(v2 + 2)) || (dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v6 = objc_claimAutoreleasedReturnValue(), v7 = dispatch_queue_create("com.apple.corewifi.bbh.target", v6), v8 = *(v2 + 8), *(v2 + 8) = v7, v8, v6, !*(v2 + 8)) || (v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 2)), v10 = *(v2 + 5), *(v2 + 5) = v9, v10, !*(v2 + 5)) || (v11 = objc_alloc_init(MEMORY[0x1E695DF90]), v12 = *(v2 + 4), *(v2 + 4) = v11, v12, !*(v2 + 4)))
  {
    [v2 invalidate];

    return 0;
  }

  return v2;
}

- (void)__submitCoreAnalyticsEvent
{
  v15 = *MEMORY[0x1E69E9840];
  if (objc_opt_class())
  {
    v3 = [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload copy];
    v4 = CWFGetOSLog();
    if (v4)
    {
      v5 = CWFGetOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = @"com.apple.wifi.bbh-detect";
      v13 = 2114;
      v14 = v3;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 0, "[corewifi] [bbh] Sending '%{public}@' CoreAnalytics metric (%{public}@)", &v11, 22);
    }

    block[5] = MEMORY[0x1E69E9820];
    block[6] = 3221225472;
    block[7] = sub_1E0C161AC;
    block[8] = &unk_1E86E6258;
    v10 = v3;
    v7 = v3;
    AnalyticsSendEventLazy();
  }

  self->_initialIndicationTimestamp = 0;
  [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload removeAllObjects];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C161B4;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)__updatePendingCoreAnalyticsPayloadWithNewBrokenBackhaulState:(int64_t)state usingQuickProbeTimeout:(unint64_t)timeout
{
  if (state <= 2)
  {
    if (!state)
    {
      if (!self->_initialIndicationTimestamp)
      {
        return;
      }

      [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"was_submitted_by_reset"];
      goto LABEL_26;
    }

    if (state == 1)
    {
      if (!self->_initialIndicationTimestamp)
      {
        return;
      }

      [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"bbh_indicated_not_broken"];
      0xF4240 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(clock_gettime_nsec_np(_CLOCK_MONOTONIC) - self->_initialIndicationTimestamp) / 0xF4240];
      pendingMetricSubmissionPayload = self->_pendingMetricSubmissionPayload;
      v7 = @"bbh_latency_not_broken";
      goto LABEL_25;
    }

    if (state != 2 || !self->_initialIndicationTimestamp)
    {
      return;
    }

    [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"bbh_indicated_detected"];
    0xF42402 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(clock_gettime_nsec_np(_CLOCK_MONOTONIC) - self->_initialIndicationTimestamp) / 0xF4240];
    [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:0xF42402 forKeyedSubscript:@"bbh_latency_detected", 0xF42402];
    goto LABEL_20;
  }

  if (state <= 4)
  {
    if (state != 3)
    {
      if (!self->_initialIndicationTimestamp)
      {
        return;
      }

      [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"bbh_indicated_confirmed"];
      0xF4240 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(clock_gettime_nsec_np(_CLOCK_MONOTONIC) - self->_initialIndicationTimestamp) / 0xF4240];
      pendingMetricSubmissionPayload = self->_pendingMetricSubmissionPayload;
      v7 = @"bbh_latency_confirmed";
LABEL_25:
      [(NSMutableDictionary *)pendingMetricSubmissionPayload setObject:0xF4240 forKeyedSubscript:v7];

LABEL_26:

      [(CWFBrokenBackhaulMonitor *)self __submitCoreAnalyticsEvent];
      return;
    }

    if (!self->_initialIndicationTimestamp)
    {
      return;
    }

    [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"bbh_indicated_confirmed_by_quick_probe"];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:timeout];
    [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:v10 forKeyedSubscript:@"quick_probe_timeout"];

    0xF42403 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(clock_gettime_nsec_np(_CLOCK_MONOTONIC) - self->_initialIndicationTimestamp) / 0xF4240];
    [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:0xF42403 forKeyedSubscript:@"bbh_latency_confirmed_by_quick_probe", 0xF42403];
    goto LABEL_20;
  }

  if (state == 6)
  {
    if (!self->_initialIndicationTimestamp)
    {
      return;
    }

    [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"bbh_indicated_tcp_friction_strong"];
    0xF42404 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(clock_gettime_nsec_np(_CLOCK_MONOTONIC) - self->_initialIndicationTimestamp) / 0xF4240];
    [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:0xF42404 forKeyedSubscript:@"bbh_latency_tcp_friction_strong", 0xF42404];
LABEL_20:

    return;
  }

  if (state == 5)
  {
    self->_initialIndicationTimestamp = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload removeAllObjects];
    [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"bbh_indicated_tcp_friction_early"];
    [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:&unk_1F5BBB770 forKeyedSubscript:@"bbh_latency_tcp_friction_early"];
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C165F8;
    block[3] = &unk_1E86E6010;
    block[4] = self;
    dispatch_async(internalQueue, block);
  }
}

- (void)__updateBrokenBackhaulState:(int64_t)state timestamp:(id)timestamp usingQuickProbeTimeout:(unint64_t)timeout
{
  v36 = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_brokenBackhaulState != state)
  {
    [(CWFBrokenBackhaulMonitor *)selfCopy __updatePendingCoreAnalyticsPayloadWithNewBrokenBackhaulState:state usingQuickProbeTimeout:timeout];
    if (selfCopy->_brokenBackhaulState != 3 || state > 6 || ((1 << state) & 0x64) == 0)
    {
      v12 = CWFGetOSLog();
      if (v12)
      {
        v13 = CWFGetOSLog();
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v17 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = sub_1E0BD3BE8(selfCopy->_brokenBackhaulState);
        v19 = sub_1E0BCC248(selfCopy->_brokenBackhaulStateUpdatedAt);
        v20 = sub_1E0BD3BE8(state);
        v21 = sub_1E0BCC248(timestampCopy);
        v28 = 138544130;
        v29 = v18;
        v30 = 2114;
        v31 = v19;
        v32 = 2114;
        v33 = v20;
        v34 = 2114;
        v35 = v21;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 0, "[corewifi] [bbh] Updated broken backhaul state ('%{public}@' / %{public}@ --> '%{public}@' / %{public}@)", &v28, 42);
      }

      selfCopy->_brokenBackhaulState = state;
      v22 = [timestampCopy copy];
      brokenBackhaulStateUpdatedAt = selfCopy->_brokenBackhaulStateUpdatedAt;
      selfCopy->_brokenBackhaulStateUpdatedAt = v22;

      targetQueue = [(CWFBrokenBackhaulMonitor *)selfCopy targetQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0C169A8;
      block[3] = &unk_1E86E6010;
      block[4] = selfCopy;
      dispatch_async(targetQueue, block);
    }

    else
    {
      v14 = CWFGetOSLog();
      v15 = v14;
      if (v14)
      {
        v16 = CWFGetOSLog();
      }

      else
      {
        v16 = MEMORY[0x1E69E9C10];
        v25 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v26 = sub_1E0BD3BE8(state);
        v28 = 138543362;
        v29 = v26;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v16, 0, "[corewifi] [bbh] Allowing quick probe confirmation to prevail over more transient symptoms-based state (%{public}@)", &v28, 12);
      }
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)__fetchSymptomsBrokenBackhaulStateWithEventID:(unint64_t)d completion:(id)completion
{
  completionCopy = completion;
  if (!sub_1E0C18B50(0))
  {
    v9 = 1;
    if (!completionCopy)
    {
LABEL_10:

      return;
    }

LABEL_8:
    if (v9)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }

    goto LABEL_10;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E0C16C40;
  v12[3] = &unk_1E86E6448;
  v13 = completionCopy;
  v6 = v12;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v7 = off_1ECE81AA0;
  v18 = off_1ECE81AA0;
  if (!off_1ECE81AA0)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E0C18C94;
    v14[3] = &unk_1E86E5600;
    v14[4] = &v15;
    sub_1E0C18C94(v14);
    v7 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (v7)
  {
    v8 = v7(d, v6);

    v9 = v8 ^ 1;
    if (!completionCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_Bool SOFT_managed_event_fetch(uint64_t, __strong managed_event_fetch_one_block_t)"}];
  [currentHandler handleFailureInFunction:v11 file:@"CWFBrokenBackhaulMonitor.m" lineNumber:42 description:{@"%s", dlerror()}];

  __break(1u);
}

- (int64_t)__mapSymptomsBrokenBackhaulState:(unint64_t)state
{
  if (state > 4)
  {
    return 0;
  }

  else
  {
    return qword_1E0D81900[state];
  }
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1E0C16FC4;
  handler[3] = &unk_1E86E60B0;
  handler[4] = self;
  notify_register_dispatch("com.apple.symptoms.managed_events.broken-backhaul", &self->_bbhNotifyToken, internalQueue, handler);
  v6 = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C1722C;
  block[3] = &unk_1E86E64C0;
  block[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, block);
}

- (void)invalidate
{
  [(CWFBrokenBackhaulMonitor *)self setUpdatedBrokenBackhaulState:0];
  bbhNotifyToken = self->_bbhNotifyToken;
  if (bbhNotifyToken)
  {
    notify_cancel(bbhNotifyToken);
  }

  metricAutoSubmissionTimer = self->_metricAutoSubmissionTimer;
  if (metricAutoSubmissionTimer)
  {

    dispatch_source_cancel(metricAutoSubmissionTimer);
  }
}

- (void)reset
{
  date = [MEMORY[0x1E695DF00] date];
  [(CWFBrokenBackhaulMonitor *)self __updateBrokenBackhaulState:0 timestamp:date usingQuickProbeTimeout:0];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1E0C17670;
  v4[3] = &unk_1E86E6470;
  v4[4] = self;
  [(CWFBrokenBackhaulMonitor *)self __fetchSymptomsBrokenBackhaulStateWithEventID:7 completion:v4];
}

- (void)__performProbeToRemoteEndpointUsingTimeout:(unint64_t)timeout completion:(id)completion
{
  completionCopy = completion;
  v6 = MEMORY[0x1E696AF68];
  v7 = [MEMORY[0x1E695DFF8] URLWithString:@"https://captive.apple.com"];
  v8 = [v6 requestWithURL:v7 cachePolicy:1 timeoutInterval:timeout / 1000.0];

  ephemeralSessionConfiguration = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
  [ephemeralSessionConfiguration setRequestCachePolicy:1];
  [ephemeralSessionConfiguration setHTTPMaximumConnectionsPerHost:1];
  [ephemeralSessionConfiguration setAllowsCellularAccess:0];
  v10 = [MEMORY[0x1E696AF78] sessionWithConfiguration:ephemeralSessionConfiguration];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = sub_1E0C17858;
  v17 = &unk_1E86E64E8;
  v18 = v10;
  v19 = completionCopy;
  v11 = v10;
  v12 = completionCopy;
  v13 = [v11 dataTaskWithRequest:v8 completionHandler:&v14];
  [v13 resume];
}

- (void)__confirmBrokenBackhaulUsingTimeout:(unint64_t)timeout count:(unint64_t)count completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v9 = dispatch_group_create();
  if (count)
  {
    v10 = 0;
    do
    {
      dispatch_group_enter(v9);
      v11 = CWFGetOSLog();
      if (v11)
      {
        v12 = CWFGetOSLog();
      }

      else
      {
        v12 = MEMORY[0x1E69E9C10];
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136447490;
        v30 = "[CWFBrokenBackhaulMonitor __confirmBrokenBackhaulUsingTimeout:count:completion:]";
        v31 = 2082;
        v32 = "CWFBrokenBackhaulMonitor.m";
        v33 = 1024;
        v34 = 440;
        v35 = 2048;
        v36 = v10 + 1;
        v37 = 2048;
        countCopy = count;
        v39 = 2048;
        timeoutCopy = timeout;
        LODWORD(v16) = 58;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 0, "[corewifi] %{public}s (%{public}s:%u) [bbh] Will probe remote endpoint %lu/%lu (timeout=%lums)", &v29, v16);
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_1E0C17BFC;
      v21[3] = &unk_1E86E6538;
      v25 = v10;
      countCopy2 = count;
      timeoutCopy2 = timeout;
      v21[4] = self;
      v24 = v28;
      v23 = completionCopy;
      v22 = v9;
      [(CWFBrokenBackhaulMonitor *)self __performProbeToRemoteEndpointUsingTimeout:timeout completion:v21];

      ++v10;
    }

    while (count != v10);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C17F28;
  block[3] = &unk_1E86E6560;
  v19 = v28;
  timeoutCopy3 = timeout;
  block[4] = self;
  v18 = completionCopy;
  v15 = completionCopy;
  dispatch_group_notify(v9, internalQueue, block);

  _Block_object_dispose(v28, 8);
}

- (void)confirmBrokenBackhaulUsingTimeout:(unint64_t)timeout count:(unint64_t)count preflightPingAddress:(id)address completion:(id)completion
{
  v65 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  completionCopy = completion;
  if (addressCopy)
  {
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x2020000000;
    v50 = 0;
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x3032000000;
    v47[3] = sub_1E0BC2CF4;
    v47[4] = sub_1E0BC61C4;
    v48 = 0;
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x3032000000;
    v45[3] = sub_1E0BC2CF4;
    v45[4] = sub_1E0BC61C4;
    v46 = 0;
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x2020000000;
    v44 = 0;
    v12 = dispatch_block_create(0, &unk_1F5B89A90);
    v13 = objc_alloc_init(CWFPinger);
    internalQueue = self->_internalQueue;
    notification_block[0] = MEMORY[0x1E69E9820];
    notification_block[1] = 3221225472;
    notification_block[2] = sub_1E0C184A8;
    notification_block[3] = &unk_1E86E6588;
    notification_block[4] = self;
    v15 = v13;
    v36 = v15;
    v39 = v49;
    v40 = v47;
    v16 = addressCopy;
    v37 = v16;
    v38 = completionCopy;
    timeoutCopy = timeout;
    countCopy = count;
    dispatch_block_notify(v12, internalQueue, notification_block);
    v17 = CWFGetOSLog();
    if (v17)
    {
      v18 = CWFGetOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      redactedForWiFi = [v16 redactedForWiFi];
      v51 = 136447746;
      v52 = "[CWFBrokenBackhaulMonitor confirmBrokenBackhaulUsingTimeout:count:preflightPingAddress:completion:]";
      v53 = 2082;
      v54 = "CWFBrokenBackhaulMonitor.m";
      v55 = 1024;
      v56 = 512;
      v57 = 2114;
      v58 = redactedForWiFi;
      v59 = 1024;
      v60 = 3;
      v61 = 1024;
      v62 = 1000;
      v63 = 1024;
      v64 = 33;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v18, 0, "[corewifi] %{public}s (%{public}s:%u) [bbh] Will ping %{public}@ (count=%d, timeout=%dms, limit=%d%%)", &v51, 56);
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1E0C188F4;
    v29[3] = &unk_1E86E65B0;
    v29[4] = self;
    v31 = v49;
    v32 = v45;
    v33 = v47;
    v34 = v43;
    v21 = v12;
    v30 = v21;
    [(CWFPinger *)v15 startPingingToHost:v16 withNumberOfPings:3 completion:v29];
    v22 = dispatch_time(0, 1000000000);
    v23 = self->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C189F4;
    block[3] = &unk_1E86E63D0;
    v27 = v49;
    v28 = v43;
    block[4] = self;
    v26 = v21;
    v24 = v21;
    dispatch_after(v22, v23, block);

    _Block_object_dispose(v43, 8);
    _Block_object_dispose(v45, 8);

    _Block_object_dispose(v47, 8);
    _Block_object_dispose(v49, 8);
  }

  else
  {
    [(CWFBrokenBackhaulMonitor *)self __confirmBrokenBackhaulUsingTimeout:timeout count:count completion:completionCopy];
  }
}

@end