@interface CLVO2MaxService
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (BOOL)updateRetrocomputeLastTimestampToHealthKit:(double)kit;
- (BOOL)validateBodyMetrics;
- (CLVO2MaxService)init;
- (id).cxx_construct;
- (int)getIndexInHealthKitSamples:(const void *)samples forSessionAttributes:(const VO2MaxSessionAttributes *)attributes withStartIndex:(int)index;
- (unsigned)retrocomputeForSamples:(const void *)samples withRetrocomputeHistory:(VO2MaxRetrocomputeHistory *)history;
- (unsigned)retrocomputeSession:(const VO2MaxSessionAttributes *)session withHealthKitSample:(VO2MaxHealthKitSample *)sample withRetrocomputeHistory:;
- (unsigned)updateRetrocomputeHistoryPostProcessing:(VO2MaxRetrocomputeHistory *)processing;
- (void)beginService;
- (void)calculatePrior:(BOOL *)prior;
- (void)deleteHealthKitSamples:(BOOL)samples;
- (void)deleteSessionsFromHealthKit:()vector<VO2MaxStagingLostEstimate withRetry:(std:(BOOL)retry :allocator<VO2MaxStagingLostEstimate>> *)a3;
- (void)endService;
- (void)executeRetrocomputePreprocessing:(id)preprocessing;
- (void)forceClearHistoryDatabase;
- (void)getLatestVO2MaxValueForBodyMetrics:(const CLBodyMetrics *)metrics sinceTime:(double)time withReply:(id)reply;
- (void)handlePriorRepeatingTask:(id)task;
- (void)handleRetryHealthKitDeleteSamples:(id)samples;
- (void)handleRetryTriggerRetrocompute:(id)retrocompute;
- (void)markXpcActivityDone:(id)done;
- (void)onRetrocomputeHealthKitSampleFailed:(id)failed;
- (void)onRetrocomputeHealthKitSampleSavedWithStartTime:(double)time activity:(id)activity;
- (void)onRetrocomputePreprocessingActivity:(id)activity;
- (void)onRetryHealthKitDeleteSamples:(id)samples;
- (void)onRetryTriggerRetrocompute:(id)retrocompute;
- (void)onUserInfoUpdate:(const int *)update data:(const void *)data;
- (void)persistLostEstimateToStagingTables:(const void *)tables;
- (void)persistRetrocomputeResultsToStagingTables:(VO2MaxRetrocomputeSessionResult *)tables;
- (void)promoteStagingData:(id)data;
- (void)queryVO2MaxRetrocomputeStatusWithReply:(id)reply;
- (void)registerForRetrocomputeStatusUpdates:(id)updates;
- (void)registerPriorRepeatingTask;
- (void)resetRetrocomputePreProcessingActivity:(id)activity withDelay:(int64_t)delay;
- (void)retryHealthKitDeleteSamples;
- (void)retryTriggerRetrocompute;
- (void)savePrior:(VO2MaxPrior *)prior;
- (void)saveStagingOutputToHealthKit:(VO2MaxStagingOutput *)kit activity:;
- (void)scheduleRetrocomputePreprocessing;
- (void)sendRetroComputeAnalytics;
- (void)submitPriorRepeatingTask;
- (void)triggerRetrocomputeWithReply:(id)reply;
- (void)unregisterForRetrocomputeStatusUpdates:(id)updates;
- (void)updateBypassParameters;
- (void)updateRetrocomputeHistory:(VO2MaxRetrocomputeHistory *)history withResult:(VO2MaxRetrocomputeSessionResult *)result;
- (void)updateRetrocomputeStatus:(int)status unavailableReasons:(unsigned int)reasons;
@end

@implementation CLVO2MaxService

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  v5 = index + 1;
  if (index + 1 < [blocked count])
  {
    [objc_msgSend(blocked objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", blocked, v5}];
  }
}

+ (id)getSilo
{
  if (qword_102656E58 != -1)
  {
    sub_1018BE054();
  }

  return qword_102656E50;
}

- (void)updateBypassParameters
{
  v3 = sub_100011660(self, a2);
  sub_100185AC0(v3, &v16);
  sub_10001CB4C(v16, "VO2MaxRetrocomputeMinMeanDelta_Bypass", &self->fShouldBypassMinDelta, 0xFFFFFFFFLL);
  if (v17)
  {
    sub_100008080(v17);
  }

  if (qword_1025D4450 != -1)
  {
    sub_1018BE068();
  }

  v4 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
  {
    fShouldBypassMinDelta = self->fShouldBypassMinDelta;
    LODWORD(v16) = 67240192;
    HIDWORD(v16) = fShouldBypassMinDelta;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Updated fShouldBypassMinDelta to %{public}d", &v16, 8u);
  }

  v6 = sub_10000A100(121, 2);
  if (v6)
  {
    sub_1018BE090(&self->fShouldBypassMinDelta);
  }

  v8 = sub_100011660(v6, v7);
  sub_100185AC0(v8, &v16);
  sub_10001CB4C(v16, "VO2MaxRetrocomputeMinPrevAlgSampleInterval_Bypass", &self->fShouldBypassPreviousSampleInternal, 0xFFFFFFFFLL);
  if (v17)
  {
    sub_100008080(v17);
  }

  if (qword_1025D4450 != -1)
  {
    sub_1018BE068();
  }

  v9 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
  {
    fShouldBypassPreviousSampleInternal = self->fShouldBypassPreviousSampleInternal;
    LODWORD(v16) = 67240192;
    HIDWORD(v16) = fShouldBypassPreviousSampleInternal;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Updated fShouldBypassPreviousSampleInternal to %{public}d", &v16, 8u);
  }

  v11 = sub_10000A100(121, 2);
  if (v11)
  {
    sub_1018BE18C(&self->fShouldBypassPreviousSampleInternal);
  }

  v13 = sub_100011660(v11, v12);
  sub_100185AC0(v13, &v16);
  sub_10001CB4C(v16, "VO2MaxRetrocomputeMinEstimatesUpdatedRatio_Bypass", &self->fShouldBypassMinEstimatesUpdatedRatio, 0xFFFFFFFFLL);
  if (v17)
  {
    sub_100008080(v17);
  }

  if (qword_1025D4450 != -1)
  {
    sub_1018BE068();
  }

  v14 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
  {
    fShouldBypassMinEstimatesUpdatedRatio = self->fShouldBypassMinEstimatesUpdatedRatio;
    LODWORD(v16) = 67240192;
    HIDWORD(v16) = fShouldBypassMinEstimatesUpdatedRatio;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "Updated fShouldBypassMinEstimatesUpdatedRatio to %{public}d", &v16, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BE288(&self->fShouldBypassMinEstimatesUpdatedRatio);
  }
}

- (void)forceClearHistoryDatabase
{
  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v3 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "Force clearing history database", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BE398();
  }

  sub_10105499C(self->fRetrocomputeDb.__ptr_ + 9);
}

- (CLVO2MaxService)init
{
  v3.receiver = self;
  v3.super_class = CLVO2MaxService;
  return [(CLVO2MaxService *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLVO2MaxServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CLVO2MaxServiceClientProtocol];
}

+ (BOOL)isSupported
{
  if (qword_102656E68 != -1)
  {
    sub_1018BE47C();
  }

  return byte_102656E60;
}

- (void)beginService
{
  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v3 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Starting up CLVO2MaxService", buf, 2u);
  }

  v4 = sub_10000A100(121, 2);
  if (v4)
  {
    sub_1018BE490();
  }

  v6 = sub_10001A3E8(v4, v5);
  v8 = sub_10001CF04(v6, v7);
  if (v8)
  {
    sub_1004E1D6C();
  }

  v10 = sub_10001A3E8(v8, v9);
  cntrl = sub_10071C8FC(v10, v11);
  if (cntrl)
  {
    sub_1008FC5E0(buf);
    v14 = *buf;
    memset(buf, 0, sizeof(buf));
    cntrl = self->fPriorDb.__cntrl_;
    self->fPriorDb = v14;
    if (cntrl)
    {
      sub_100008080(cntrl);
      cntrl = *&buf[8];
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }
    }
  }

  v15 = sub_10001A3E8(cntrl, v13);
  if (sub_10001CF04(v15, v16))
  {
    [(CLVO2MaxService *)self registerPriorRepeatingTask];
    [(CLVO2MaxService *)self submitPriorRepeatingTask];
  }
}

- (void)endService
{
  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v3 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Shutting down CLVO2MaxService", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BE57C();
  }

  fHkHealthStore = self->fHkHealthStore;
  if (fHkHealthStore)
  {

    self->fHkHealthStore = 0;
  }

  if ([(CLVO2MaxService *)self retrocomputeStatusClients])
  {
  }
}

- (void)registerForRetrocomputeStatusUpdates:(id)updates
{
  if (sub_10001CF04(self, a2))
  {
    [(NSMutableSet *)[(CLVO2MaxService *)self retrocomputeStatusClients] addObject:updates];
    sub_10000FF38(v12, "com.apple.locationd.VO2MaxService.Retrocompute", 0);
    *buf = 0;
    v14 = 0;
    v15 = 4;
    v21 = 0;
    v16 = 0u;
    memset(v17, 0, sizeof(v17));
    v18 = 0u;
    v19 = 0u;
    memset(v20, 0, sizeof(v20));
    if (sub_1007B8870(self->fRetrocomputeDb.__ptr_, 4, buf) == 100)
    {
      v5 = [NSDate alloc];
      v6 = [v5 initWithTimeIntervalSinceReferenceDate:*(&v16 + 4)];
      v7 = [NSDate alloc];
      v8 = [v7 initWithTimeIntervalSinceReferenceDate:*&v17[1]];
      v9 = [NSNumber alloc];
      v10 = [v9 initWithDouble:*&v18];
      [updates onRetrocomputeStatusUpdate:{objc_msgSend([CMVO2MaxRetrocomputeState alloc], "initWithStatus:startDate:endDate:meanDelta:", v16, v6, v8, v10)}];
    }

    sub_10001A420(v12);
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v11 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "registerForRetrocomputeStatusUpdates is only supported on phone", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018BE660();
    }
  }
}

- (void)unregisterForRetrocomputeStatusUpdates:(id)updates
{
  if (sub_10001CF04(self, a2))
  {
    retrocomputeStatusClients = [(CLVO2MaxService *)self retrocomputeStatusClients];

    [(NSMutableSet *)retrocomputeStatusClients removeObject:updates];
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v6 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "unregisterForRetrocomputeStatusUpdates is only supported on phone", v7, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018BE74C();
    }
  }
}

- (void)sendRetroComputeAnalytics
{
  if (objc_opt_class() && ([+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")] & 1) != 0)
  {
    if ((atomic_load_explicit(&qword_102656E88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102656E88))
    {
      *&v22[16] = xmmword_101C7E8DC;
      *&v22[32] = unk_101C7E8EC;
      *&v22[44] = unk_101C7E8F8;
      *buf = xmmword_101C7E8BC;
      *v22 = unk_101C7E8CC;
      qword_102656E78 = 0;
      unk_102656E80 = 0;
      qword_102656E70 = 0;
      sub_1003F6D44(&qword_102656E70, buf, &v22[60], 0x13uLL);
      __cxa_atexit(sub_1003F5F88, &qword_102656E70, dword_100000000);
      __cxa_guard_release(&qword_102656E88);
    }

    memset(buf, 0, sizeof(buf));
    *v22 = 4;
    v26 = 0;
    memset(&v22[4], 0, 44);
    v23 = 0u;
    v24 = 0u;
    memset(v25, 0, 28);
    if (sub_1007B8870(self->fRetrocomputeDb.__ptr_, 4, buf) != 109)
    {
      v6 = _NSConcreteStackBlock;
      v7 = 3221225472;
      v17 = v24;
      v18 = *v25;
      v19 = *&v25[16];
      v13 = *&v22[16];
      v14 = *&v22[32];
      v15 = *&v22[48];
      v16 = v23;
      v11 = *buf;
      v8 = sub_100556770;
      v9 = &unk_10245EA00;
      selfCopy = self;
      v20 = v26;
      v12 = *v22;
      AnalyticsSendEventLazy();
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v3 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
      {
        *v5 = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Succesfully accessed history table, sent Core Analytics event", v5, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BE830();
      }
    }
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v4 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Retro-compute, not sending analytics, no IHA permission", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BE91C();
    }
  }
}

- (void)scheduleRetrocomputePreprocessing
{
  Current = CFAbsoluteTimeGetCurrent();
  v6 = sub_100011660(v4, v5);
  sub_100185AC0(v6, &v19);
  v18 = 0.0;
  sub_1000B9370(v19, "VO2MaxRetrocomputeNextPreprocessingTime", &v18);
  v7 = v18;
  if (v18 > Current + XPC_ACTIVITY_INTERVAL_1_DAY)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v8 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v28 = "VO2MaxRetrocomputeNextPreprocessingTime";
      v29 = 2050;
      v30 = v18;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "%{public}s is too far in the future (%{public}.2f). Resetting!", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018BEA08(buf);
      v21 = 136446466;
      v22 = "VO2MaxRetrocomputeNextPreprocessingTime";
      v23 = 2050;
      v24 = v18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 16, "%{public}s is too far in the future (%{public}.2f). Resetting!", &v21, 22);
      v15 = v14;
      sub_100152C7C("Generic", 1, 0, 0, "[CLVO2MaxService scheduleRetrocomputePreprocessing]", "%s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    sub_1004FA8B8(v19, "VO2MaxRetrocomputeNextPreprocessingTime", 0xFFFFFFFFLL);
    v18 = 0.0;
    v7 = 0.0;
  }

  v9 = v7 - Current;
  if (XPC_ACTIVITY_INTERVAL_30_MIN <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = XPC_ACTIVITY_INTERVAL_30_MIN;
  }

  if (qword_1025D4450 != -1)
  {
    sub_1018BE068();
  }

  v11 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v28 = "com.apple.locationd.VO2Max.RetrocomputePreprocessing";
    v29 = 2050;
    v30 = v18;
    v31 = 2050;
    v32 = v10;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: Registering XPC Activity with nextPreprocessingTime=(%{public}.2f) and delay=(%{public}lld)", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BEA08(buf);
    v21 = 136446722;
    v22 = "com.apple.locationd.VO2Max.RetrocomputePreprocessing";
    v23 = 2050;
    v24 = v18;
    v25 = 2050;
    v26 = v10;
    LODWORD(v16) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 0, "%{public}s: Registering XPC Activity with nextPreprocessingTime=(%{public}.2f) and delay=(%{public}lld)", &v21, v16);
    v13 = v12;
    sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService scheduleRetrocomputePreprocessing]", "%s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  xpc_activity_unregister("com.apple.locationd.VO2Max.RetrocomputePreprocessing");
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100556E2C;
  handler[3] = &unk_102450188;
  handler[4] = [objc_msgSend(-[CLVO2MaxService universe](self "universe")];
  handler[5] = v10;
  xpc_activity_register("com.apple.locationd.VO2Max.RetrocomputePreprocessing", XPC_ACTIVITY_CHECK_IN, handler);
  if (v20)
  {
    sub_100008080(v20);
  }
}

- (void)resetRetrocomputePreProcessingActivity:(id)activity withDelay:(int64_t)delay
{
  v6 = CFAbsoluteTimeGetCurrent() + delay;
  v11 = v6;
  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v7 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "VO2MaxRetrocomputeNextPreprocessingTime";
    *&buf[12] = 2050;
    *&buf[14] = v6;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Resetting next activity time to: %{public}.1f", buf, 0x16u);
  }

  v8 = sub_10000A100(121, 2);
  if (v8)
  {
    sub_1018BED6C();
  }

  v10 = sub_100011660(v8, v9);
  sub_100185AC0(v10, buf);
  sub_100116D68(*buf, "VO2MaxRetrocomputeNextPreprocessingTime", &v11);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  [(CLVO2MaxService *)self markXpcActivityDone:activity];
  [(CLVO2MaxService *)self scheduleRetrocomputePreprocessing];
}

- (void)onRetrocomputePreprocessingActivity:(id)activity
{
  if (activity)
  {
    state = xpc_activity_get_state(activity);
    if (state == 4 || (v6 = state, state == 2))
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE384();
      }

      v7 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Preparing to execute VO2MaxRetrocomputePreProcessing", &v10, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BEE8C();
      }

      [(CLVO2MaxService *)self executeRetrocomputePreprocessing:activity];
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE384();
      }

      v9 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        v10 = 134217984;
        v11 = v6;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "Unexpected VO2MaxRetrocomputePreProcessing activity state: %ld", &v10, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018BEF70();
      }
    }
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v8 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Invalid xpc activity.", &v10, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018BF060();
    }
  }
}

- (void)queryVO2MaxRetrocomputeStatusWithReply:(id)reply
{
  if (sub_10001CF04(self, a2))
  {
    *buf = 0;
    v22 = 0;
    v23 = 4;
    v29 = 0;
    v24 = 0u;
    memset(v25, 0, sizeof(v25));
    v26 = 0u;
    v27 = 0u;
    memset(v28, 0, sizeof(v28));
    v5 = sub_1007B8870(self->fRetrocomputeDb.__ptr_, 4, buf);
    if (v5 == 100)
    {
      v6 = [NSDate alloc];
      v7 = [v6 initWithTimeIntervalSinceReferenceDate:*(&v24 + 4)];
      v8 = [NSDate alloc];
      v9 = [v8 initWithTimeIntervalSinceReferenceDate:*&v25[1]];
      v10 = [NSNumber alloc];
      v11 = [v10 initWithDouble:*&v26];
      v12 = [[CMVO2MaxRetrocomputeState alloc] initWithStatus:v24 startDate:v7 endDate:v9 meanDelta:v11];
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v13 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
      {
        v17 = 67109378;
        v18 = 4;
        v19 = 2080;
        v20 = [objc_msgSend(v12 "description")];
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Queried VO2MaxRetrocomputeHistory for algVersion = %d and received %s", &v17, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BF318();
      }

      (*(reply + 2))(reply, v12, 100);
    }

    else
    {
      v15 = v5;
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v16 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        v17 = 67109120;
        v18 = v15;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "Error querying VO2MaxRetrocomputeHistory: %u", &v17, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018BF228(v15);
      }

      (*(reply + 2))(reply, 0, v15);
    }
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v14 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "queryVO2MaxRetrocomputeStatusWithReply is only supported on phone", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018BF144();
    }

    (*(reply + 2))(reply, 0, 109);
  }
}

- (void)executeRetrocomputePreprocessing:(id)preprocessing
{
  if (objc_opt_class())
  {
    sub_100156634();
  }

  [(CLVO2MaxService *)self markXpcActivityDone:preprocessing];

  [(CLVO2MaxService *)self sendRetroComputeAnalytics];
}

- (void)markXpcActivityDone:(id)done
{
  if (!xpc_activity_set_state(done, 5))
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v4 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_FAULT))
    {
      v5 = 134349056;
      state = xpc_activity_get_state(done);
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Failed to mark activity as done. Current state is %{public}ld", &v5, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018BF91C();
    }
  }
}

- (unsigned)retrocomputeForSamples:(const void *)samples withRetrocomputeHistory:(VO2MaxRetrocomputeHistory *)history
{
  v4 = *samples;
  if (*samples == *(samples + 1))
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v38 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEFAULT, "There are no VO2Max HealthKit samples to retrocompute", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BFA1C();
    }

    return 0;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v53 = 0;
    var8 = history->var8;
    if (var8 == 0.0)
    {
      var8 = *v4 + -1.0;
    }

    v8 = sub_10104516C();
    sub_101045F44(v8, &v51, var8);
    v10 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v52 - v51) >> 4));
    if (v52 == v51)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    sub_100562214(v51, v52, v11, 1, v9);
    v13 = v51;
    v12 = v52;
    if (v51 == v52)
    {
      v37 = 0;
LABEL_45:
      if (0x8E38E38E38E38E39 * ((*(samples + 1) - *samples) >> 3) > v37)
      {
        v39 = 72 * v37 + 24;
        do
        {
          v40 = [[NSUUID alloc] initWithUUIDBytes:*samples + v39];
          if (qword_1025D4450 != -1)
          {
            sub_1018BE068();
          }

          v41 = qword_1025D4458;
          if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
          {
            uUIDString = [v40 UUIDString];
            *buf = 138477827;
            v64 = uUIDString;
            _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEFAULT, "Retrocompute encountered HealthKit sample with no SessionAttributes for sessionId %{private}@", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018BEA08(buf);
            v43 = qword_1025D4458;
            uUIDString2 = [v40 UUIDString];
            LODWORD(v72[0]) = 138477827;
            *(v72 + 4) = uUIDString2;
            LODWORD(v48) = 12;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v43, 0, "Retrocompute encountered HealthKit sample with no SessionAttributes for sessionId %{private}@", v72, v48);
            v46 = v45;
            sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService retrocomputeForSamples:withRetrocomputeHistory:]", "%s\n", v45);
            if (v46 != buf)
            {
              free(v46);
            }
          }

          ++history->var15;
          ++v37;
          v39 += 72;
        }

        while (0x8E38E38E38E38E39 * ((*(samples + 1) - *samples) >> 3) > v37);
      }

      v36 = [(CLVO2MaxService *)self updateRetrocomputeHistoryPostProcessing:history];
    }

    else
    {
      v14 = 0;
      v49 = v52;
      while (1)
      {
        v72[0] = *v13;
        v15 = v13[1];
        v16 = v13[2];
        v17 = v13[4];
        v72[3] = v13[3];
        v72[4] = v17;
        v72[1] = v15;
        v72[2] = v16;
        v69 = 0uLL;
        *v70 = 0xBFF0000000000000;
        *&v70[24] = 0;
        sub_10000EC00(&__src, "");
        v18 = [(CLVO2MaxService *)self getIndexInHealthKitSamples:samples forSessionAttributes:v72 withStartIndex:v14];
        v19 = v18;
        if ((v18 & 0x80000000) == 0)
        {
          if (v14 < v18)
          {
            v20 = 72 * v14;
            v21 = v18 - v14;
            do
            {
              v22 = [[NSUUID alloc] initWithUUIDBytes:*samples + v20 + 24];
              var4 = history->var4;
              v24 = var4 > 0.0 && *(*samples + v20) > var4;
              if (qword_1025D4450 != -1)
              {
                sub_1018BE068();
              }

              v25 = qword_1025D4458;
              if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
              {
                uUIDString3 = [v22 UUIDString];
                v27 = *(*samples + v20);
                *buf = 138478339;
                v64 = uUIDString3;
                v65 = 2049;
                v66 = v27;
                v67 = 1026;
                v68 = v24;
                _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "Retrocompute encountered HealthKit sample with no SessionAttributes for sessionId %{private}@, startTime:%{private}f, isLostEstimate:%{public}d", buf, 0x1Cu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1018BEA08(buf);
                v28 = qword_1025D4458;
                uUIDString4 = [v22 UUIDString];
                v30 = *(*samples + v20);
                v57 = 138478339;
                v58 = uUIDString4;
                v59 = 2049;
                v60 = v30;
                v61 = 1026;
                v62 = v24;
                LODWORD(v48) = 28;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v28, 0, "Retrocompute encountered HealthKit sample with no SessionAttributes for sessionId %{private}@, startTime:%{private}f, isLostEstimate:%{public}d", &v57, v48);
                v32 = v31;
                sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService retrocomputeForSamples:withRetrocomputeHistory:]", "%s\n", v31);
                if (v32 != buf)
                {
                  free(v32);
                }
              }

              if (v24)
              {
                ++history->var14;
                [(CLVO2MaxService *)self persistLostEstimateToStagingTables:*samples + v20];
              }

              v20 += 72;
              --v21;
            }

            while (v21);
            LODWORD(v14) = v19;
            v12 = v49;
          }

          v33 = *samples + 72 * v19;
          v34 = *(v33 + 28);
          v35 = *(v33 + 16);
          v69 = *v33;
          *v70 = v35;
          *&v70[12] = v34;
          std::string::operator=(&__src, (v33 + 48));
          v14 = (v14 + 1);
        }

        v54 = v69;
        v55[0] = *v70;
        *(v55 + 12) = *&v70[12];
        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100007244(&__p, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = __src;
        }

        v36 = [(CLVO2MaxService *)self retrocomputeSession:v72 withHealthKitSample:&v54 withRetrocomputeHistory:history];
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
        }

        if (v36)
        {
          break;
        }

        v13 += 5;
        if (v13 == v12)
        {
          v37 = v14;
          goto LABEL_45;
        }
      }
    }

    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }
  }

  return v36;
}

- (int)getIndexInHealthKitSamples:(const void *)samples forSessionAttributes:(const VO2MaxSessionAttributes *)attributes withStartIndex:(int)index
{
  v5 = *&index;
  v8 = *(samples + 1);
  v9 = *samples + 72 * index;
  if (v9 != v8)
  {
    v10 = *samples + 72 * index;
    while (uuid_compare(attributes->var2, (v10 + 24)))
    {
      v10 += 72;
      v9 += 72;
      if (v10 == v8)
      {
        v9 = v8;
        break;
      }
    }
  }

  v11 = [[NSUUID alloc] initWithUUIDBytes:attributes->var2];
  if (*(samples + 1) == v9)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v18 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138478083;
      uUIDString = [v11 UUIDString];
      v28 = 1026;
      v29 = v5;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "CLVO2MaxService::getIndexInHealthKitSamples - index not found for sessionId: %{private}@, startIndex: %{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BFB08(v11, v5);
    }

    LODWORD(v13) = -1;
  }

  else
  {
    v12 = (v9 - *samples) >> 3;
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v13 = 0x8E38E38E38E38E39 * v12;
    v14 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138478339;
      uUIDString = [v11 UUIDString];
      v28 = 1026;
      v29 = v5;
      v30 = 2050;
      v31 = v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "CLVO2MaxService::getIndexInHealthKitSamples - sessionId: %{private}@, startIndex: %{public}d, index: %{public}zu", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v15 = qword_1025D4458;
      v20 = 138478339;
      uUIDString2 = [v11 UUIDString];
      v22 = 1026;
      v23 = v5;
      v24 = 2050;
      v25 = v13;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v15, 2, "CLVO2MaxService::getIndexInHealthKitSamples - sessionId: %{private}@, startIndex: %{public}d, index: %{public}zu", &v20, 28);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService getIndexInHealthKitSamples:forSessionAttributes:withStartIndex:]", "%s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  return v13;
}

- (unsigned)retrocomputeSession:(const VO2MaxSessionAttributes *)session withHealthKitSample:(VO2MaxHealthKitSample *)sample withRetrocomputeHistory:
{
  v5 = v4;
  if ([(CLVO2MaxService *)self validateBodyMetrics])
  {
    *&dst[8] = 0;
    *dst = 0;
    *&dst[16] = session->var1;
    dst[24] = session->var6;
    v114 = 0u;
    memset(v115, 0, 156);
    v9 = *&sample->var0;
    v10 = *&sample->var2;
    *(v117 + 12) = *&sample->var3[4];
    v117[0] = v10;
    v116 = v9;
    if (*(&sample->var5.__rep_.__l + 23) < 0)
    {
      sub_100007244(&v118, sample->var5.__rep_.__l.__data_, sample->var5.__rep_.__l.__size_);
    }

    else
    {
      v118 = *sample->var5.__rep_.__s.__data_;
      v119 = *(&sample->var5.__rep_.__l + 2);
    }

    var7 = session->var7;
    uuid_copy(dst, session->var2);
    memset(uu, 0, sizeof(uu));
    uuid_copy(uu, session->var2);
    sub_101110AD0(self->fStagingOutputStore.__ptr_, uu);
    sub_1011109E0(self->fStagingOutputStore.__ptr_, uu);
    sub_101110E6C(self->fStagingOutputStore.__ptr_, uu);
    sub_10102F350(&v84, uu, self->fInputStore.__ptr_);
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v13 = sub_10104516C();
    if (!sub_101046048(v13, uu, &v81))
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v19 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "Query for pre-existing session summary for current session failed due to device lock", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BEA08(buf);
        *out = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 0, "Query for pre-existing session summary for current session failed due to device lock", out, 2);
        v69 = v68;
        sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService retrocomputeSession:withHealthKitSample:withRetrocomputeHistory:]", "%s\n", v68);
        if (v69 != buf)
        {
          free(v69);
        }
      }

      v12 = 2;
      goto LABEL_99;
    }

    memset(out, 0, 37);
    uuid_unparse(session->var2, out);
    if (v81 == v82)
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v20 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = out;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "Current session summary missing from VO2MaxSummary table, cannot retrocompute for sessionId %s", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_91;
      }

      sub_1018BEA08(buf);
      LODWORD(v105[0]) = 136315138;
      *(v105 + 4) = out;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 0, "Current session summary missing from VO2MaxSummary table, cannot retrocompute for sessionId %s", v105);
      v18 = v21;
      sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService retrocomputeSession:withHealthKitSample:withRetrocomputeHistory:]", "%s\n", v21);
      goto LABEL_33;
    }

    if (*(v81 + 46))
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v14 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(v81 + 46);
        *buf = 136315394;
        *&buf[4] = out;
        *&buf[12] = 1024;
        *&buf[14] = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "Platform source for sessionId %s is not watchOS, retrocompute is not supported, platform source, %d", buf, 0x12u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_91;
      }

      sub_1018BEA08(buf);
      v16 = *(v81 + 46);
      LODWORD(v105[0]) = 136315394;
      *(v105 + 4) = out;
      WORD2(v105[1]) = 1024;
      *(&v105[1] + 6) = v16;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 0, "Platform source for sessionId %s is not watchOS, retrocompute is not supported, platform source, %d", v105, 18);
      v18 = v17;
      sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService retrocomputeSession:withHealthKitSample:withRetrocomputeHistory:]", "%s\n", v17);
LABEL_33:
      if (v18 != buf)
      {
        free(v18);
      }

LABEL_91:
      v86[0] = *dst;
      *(v86 + 9) = *&dst[9];
      v88 = 0;
      v89 = 0;
      v87 = 0;
      sub_10056474C(&v87, v114, *(&v114 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v114 + 1) - v114) >> 6));
      v96 = *&v115[104];
      v97 = *&v115[120];
      v98 = *&v115[136];
      v99 = *&v115[152];
      v92 = *&v115[40];
      v93 = *&v115[56];
      v94 = *&v115[72];
      v95 = *&v115[88];
      v90 = *&v115[8];
      v91 = *&v115[24];
      v100 = v116;
      v101[0] = v117[0];
      *(v101 + 12) = *(v117 + 12);
      if (SHIBYTE(v119) < 0)
      {
        sub_100007244(&v102, v118, *(&v118 + 1));
      }

      else
      {
        v102 = v118;
        v103 = v119;
      }

      v104 = var7;
      [(CLVO2MaxService *)self updateRetrocomputeHistory:v5 withResult:v86];
      if (SHIBYTE(v103) < 0)
      {
        operator delete(v102);
      }

      if (v87)
      {
        v88 = v87;
        operator delete(v87);
      }

      v12 = 0;
LABEL_99:
      if (v81)
      {
        v82 = v81;
        operator delete(v81);
      }

      if (v84)
      {
        v85 = v84;
        operator delete(v84);
      }

      if (SHIBYTE(v119) < 0)
      {
        operator delete(v118);
      }

      if (v114)
      {
        *(&v114 + 1) = v114;
        operator delete(v114);
      }

      return v12;
    }

    __src = 0;
    __dst = 0;
    v80 = 0;
    v22 = *&dst[16] + -7776000.0;
    if (*(v5 + 32) == 0.0)
    {
      v23 = sub_10104516C();
      v24 = sub_101046084(v23, &__src, 1, v22, *&dst[16]);
      if ((v24 & 1) == 0)
      {
        if (qword_1025D4450 != -1)
        {
          sub_1018BE068();
        }

        v26 = qword_1025D4458;
        if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "Query for historical summaries failed due to device lock", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018BEA08(buf);
          LOWORD(v105[0]) = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 0, "Query for historical summaries failed due to device lock", v105, 2);
          v28 = v27;
          sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService retrocomputeSession:withHealthKitSample:withRetrocomputeHistory:]", "%s\n", v27);
          if (v28 != buf)
          {
            free(v28);
          }
        }

LABEL_86:
        v66 = 0;
        v12 = 2;
        goto LABEL_88;
      }

LABEL_80:
      if (v84 != v85)
      {
        v64 = *(v81 + 8);
        self->fUserInfo.hrmax = v64;
        self->fUserInfo.betaBlockerUse = session->var6;
        v74 = ((session->var5 - 82) & 0xFFFFFFF9) == 0;
        v73 = 1;
        v65 = sub_100011660(v24, v25);
        sub_100185AC0(v65, buf);
        sub_10005BBE4(*buf, "VO2MaxMinPreviousEstimatesForHealthKitWrite", &v73);
        if (*&buf[8])
        {
          sub_100008080(*&buf[8]);
        }

        *buf = 0;
        v105[0] = 0;
        sub_1005651C8();
      }

      v12 = 2;
      v66 = 1;
LABEL_88:
      if (__src)
      {
        __dst = __src;
        operator delete(__src);
      }

      if ((v66 & 1) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_91;
    }

    memset(v105, 0, sizeof(v105));
    if (sub_101110B20(self->fStagingOutputStore.__ptr_, v105, 1, *&dst[16] + -7776000.0, *&dst[16]) == 109)
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v29 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "Query for staged summaries failed due to device lock", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BEA08(buf);
        LOWORD(__p) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 0, "Query for staged summaries failed due to device lock", &__p, 2);
        v31 = v30;
        sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService retrocomputeSession:withHealthKitSample:withRetrocomputeHistory:]", "%s\n", v30);
        if (v31 != buf)
        {
          free(v31);
        }
      }
    }

    else
    {
      if (v105[0] != v105[1])
      {
        v32 = v105[0] + 104;
        do
        {
          *buf = 0;
          *&buf[8] = *(v32 - 12);
          LODWORD(v108) = 0;
          *&buf[16] = 0;
          *&buf[24] = 0;
          *(&v108 + 1) = *(v32 - 8);
          *v109 = *(v32 - 7);
          *&v109[8] = *(v32 - 3);
          *&v109[24] = *(v32 - 2);
          *&v109[40] = *(v32 - 1);
          *&v109[56] = *v32;
          *&v109[72] = *(v32 + 1);
          *&v109[88] = *(v32 + 4);
          *v110 = 0;
          *&v110[8] = *(v32 + 3);
          *&v110[24] = *(v32 + 8);
          *&v111 = *(v32 + 9);
          DWORD2(v111) = *(v32 + 20);
          uuid_copy(&buf[20], v32 - 84);
          v33 = __dst;
          if (__dst >= v80)
          {
            v44 = __src;
            v45 = __dst - __src;
            v46 = 0xAAAAAAAAAAAAAAABLL * ((__dst - __src) >> 6);
            v47 = v46 + 1;
            if (v46 + 1 > 0x155555555555555)
            {
              sub_10028C64C();
            }

            if (0x5555555555555556 * ((v80 - __src) >> 6) > v47)
            {
              v47 = 0x5555555555555556 * ((v80 - __src) >> 6);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v80 - __src) >> 6) >= 0xAAAAAAAAAAAAAALL)
            {
              v47 = 0x155555555555555;
            }

            if (v47)
            {
              sub_1005642D8(&__src, v47);
            }

            v48 = ((__dst - __src) >> 6 << 6);
            v49 = *buf;
            v50 = *&buf[16];
            v51 = *v109;
            v48[2] = v108;
            v48[3] = v51;
            *v48 = v49;
            v48[1] = v50;
            v52 = *&v109[16];
            v53 = *&v109[32];
            v54 = *&v109[64];
            v48[6] = *&v109[48];
            v48[7] = v54;
            v48[4] = v52;
            v48[5] = v53;
            v55 = *&v109[80];
            v56 = *v110;
            v57 = v111;
            v48[10] = *&v110[16];
            v48[11] = v57;
            v48[8] = v55;
            v48[9] = v56;
            v43 = (192 * v46 + 192);
            v58 = (192 * v46 - v45);
            memcpy(v48 - v45, v44, v45);
            v59 = __src;
            __src = v58;
            __dst = v43;
            v80 = 0;
            if (v59)
            {
              operator delete(v59);
            }
          }

          else
          {
            v34 = *buf;
            v35 = *&buf[16];
            v36 = *v109;
            *(__dst + 2) = v108;
            v33[3] = v36;
            *v33 = v34;
            v33[1] = v35;
            v37 = *&v109[16];
            v38 = *&v109[32];
            v39 = *&v109[64];
            v33[6] = *&v109[48];
            v33[7] = v39;
            v33[4] = v37;
            v33[5] = v38;
            v40 = *&v109[80];
            v41 = *v110;
            v42 = v111;
            v33[10] = *&v110[16];
            v33[11] = v42;
            v33[8] = v40;
            v33[9] = v41;
            v43 = v33 + 12;
          }

          __dst = v43;
          v60 = v32 + 88;
          v32 += 192;
        }

        while (v60 != v105[1]);
      }

      if (v22 >= *(v5 + 32))
      {
        goto LABEL_78;
      }

      __p = 0;
      v76 = 0;
      v77 = 0;
      v61 = sub_10104516C();
      v62 = sub_101046084(v61, &__p, 1, *&dst[16] + -7776000.0, *(v5 + 32));
      if (v62)
      {
        sub_100564330(&__src, __dst, __p, v76, 0xAAAAAAAAAAAAAAABLL * ((v76 - __p) >> 6));
      }

      else
      {
        if (qword_1025D4450 != -1)
        {
          sub_1018BE068();
        }

        v63 = qword_1025D4458;
        if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEFAULT, "Query for historical summaries failed due to device lock", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018BEA08(buf);
          LOWORD(v72) = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 0, "Query for historical summaries failed due to device lock", &v72, 2);
          v71 = v70;
          sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService retrocomputeSession:withHealthKitSample:withRetrocomputeHistory:]", "%s\n", v70);
          if (v71 != buf)
          {
            free(v71);
          }
        }
      }

      if (__p)
      {
        v76 = __p;
        operator delete(__p);
      }

      if (v62)
      {
LABEL_78:
        v24 = v105[0];
        if (v105[0])
        {
          v105[1] = v105[0];
          operator delete(v105[0]);
        }

        goto LABEL_80;
      }
    }

    if (v105[0])
    {
      v105[1] = v105[0];
      operator delete(v105[0]);
    }

    goto LABEL_86;
  }

  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v11 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "Will not attempt retrocompute pre-processing, body metrics changed significantly.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BFC2C();
  }

  *(v5 + 136) |= 0x200u;
  [(CLVO2MaxService *)self updateRetrocomputeStatus:0 unavailableReasons:?];
  [(CLVO2MaxService *)self sendRetroComputeAnalytics];
  sub_1003FC6DC(self->fRetrocomputeBodyMetricsDb.__ptr_);
  return 4;
}

- (void)persistRetrocomputeResultsToStagingTables:(VO2MaxRetrocomputeSessionResult *)tables
{
  var0 = tables->var3.var0;
  var1 = tables->var3.var1;
  if (var0 != var1)
  {
    v7 = (var0 + 184);
    do
    {
      v10[0] = 0;
      v11 = 0;
      v15 = 0x7FEFFFFFFFFFFFFFLL;
      memset(v16, 0, sizeof(v16));
      LODWORD(v17) = 1;
      v10[1] = *(v7 - 22);
      uuid_copy(v12, v7 - 164);
      v11 = *(v7 - 42);
      v15 = *(v7 - 18);
      *&v16[0] = *(v7 - 17);
      *(v16 + 8) = *(v7 - 8);
      *(&v16[1] + 8) = *(v7 - 7);
      *(&v16[2] + 8) = *(v7 - 6);
      *(&v16[3] + 8) = *(v7 - 5);
      *(&v16[4] + 8) = *(v7 - 4);
      *(&v16[5] + 8) = *(v7 - 3);
      *(&v16[6] + 8) = *(v7 - 2);
      *(&v16[7] + 1) = *(v7 - 2);
      v17 = *(v7 - 1);
      LODWORD(v18) = *v7;
      sub_1011109E4(self->fStagingOutputStore.__ptr_, v10);
      v8 = (v7 + 2);
      v7 += 48;
    }

    while (v8 != var1);
  }

  if (tables->var4.var2 > 0.0)
  {
    var2 = 0.0;
    memset(&v16[4] + 8, 0, 24);
    *(&v16[6] + 4) = 4;
    BYTE12(v16[6]) = 0;
    sub_10000EC00(&v16[7], "");
    v18 = -1.0;
    var2 = tables->var4.var2;
    uuid_copy(&v16[1] + 8, tables->var4.var8);
    var3 = tables->var4.var3;
    LODWORD(v15) = tables->var4.var4;
    v16[0] = *&tables->var4.var5;
    *&v16[1] = tables->var4.var7;
    *(&v16[2] + 8) = *&tables->var4.var9;
    DWORD2(v16[3]) = tables->var4.var11;
    WORD6(v16[3]) = *&tables->var4.var12;
    LODWORD(v16[4]) = tables->var4.var14;
    *(&v16[4] + 8) = *&tables->var4.var15;
    v9 = tables->var5.var4 + 1;
    DWORD1(v16[6]) = 4;
    DWORD2(v16[6]) = v9;
    BYTE12(v16[6]) = tables->var2;
    std::string::operator=(&v16[7], &tables->var5.var5);
    v18 = tables->var5.var2;
    LODWORD(v16[6]) = tables->var4.var18;
    sub_1011108F8(self->fStagingOutputStore.__ptr_, v10);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*&v16[7]);
    }
  }
}

- (void)persistLostEstimateToStagingTables:(const void *)tables
{
  v4[0] = 0;
  v4[1] = *tables;
  uuid_copy(v5, tables + 24);
  sub_101110D80(self->fStagingOutputStore.__ptr_, v4);
}

- (void)updateRetrocomputeHistory:(VO2MaxRetrocomputeHistory *)history withResult:(VO2MaxRetrocomputeSessionResult *)result
{
  var1 = result->var1;
  history->var8 = var1;
  uuid_copy(history->var9, result->var0);
  if (result->var4.var2 <= 0.0)
  {
    if (history->var4 > 0.0 && result->var5.var2 > -1.0)
    {
      ++history->var14;
      [(CLVO2MaxService *)self persistLostEstimateToStagingTables:&result->var5];
    }
  }

  else
  {
    if (*result[1].var0 <= 3)
    {
      if (history->var4 == 0.0)
      {
        history->var4 = var1;
      }

      history->var7 = var1;
    }

    history->var6 = var1;
    var2 = result->var5.var2;
    if (var2 == -1.0)
    {
      ++history->var13;
    }

    else
    {
      v9.f64[0] = result->var4.var3 - var2;
      var12 = history->var12;
      v11 = var12++;
      history->var12 = var12;
      v9.f64[1] = v9.f64[0] / var2;
      *&history->var10 = vdivq_f64(vmlaq_n_f64(v9, *&history->var10, v11), vdupq_lane_s64(COERCE__INT64(var12), 0));
    }
  }

  if (history->var5 == 0.0)
  {
    var0 = result->var3.var0;
    if (var0 != result->var3.var1)
    {
      history->var5 = *(var0 + 1);
    }
  }

  v13 = [[NSUUID alloc] initWithUUIDBytes:history->var9];
  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v14 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    v16 = history->var1;
    v17 = history->var2;
    var3 = history->var3;
    var8 = history->var8;
    uUIDString = [v13 UUIDString];
    var4 = history->var4;
    var6 = history->var6;
    var7 = history->var7;
    var10 = history->var10;
    var11 = history->var11;
    v26 = history->var12;
    var13 = history->var13;
    var14 = history->var14;
    *buf = 134286595;
    v72 = v16;
    self = selfCopy;
    v73 = 1025;
    v74 = v17;
    v75 = 1025;
    v76 = var3;
    v77 = 2049;
    v78 = var8;
    v79 = 2113;
    v80 = uUIDString;
    v81 = 2049;
    v82 = var4;
    v83 = 2049;
    v84 = var6;
    v85 = 2049;
    v86 = var7;
    v87 = 2049;
    v88 = var10;
    v89 = 2049;
    v90 = var11;
    v91 = 1025;
    v92 = v26;
    v93 = 1025;
    v94 = var13;
    v95 = 1025;
    v96 = var14;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "Updating VO2MaxRetrocomputeHistory: startTime,%{private}f,algVersion,%{private}d,status,%{private}d,lastSessionTimestamp,%{private}f,lastSessionId,%{private}@,firstSampleDate,%{private}f,lastSampleDate,%{private}f,lastSampleDatePrevAlg,%{private}f,meanDelta,%{private}f,meanPercentileDelta,%{private}f,numUpdatedEstimates,%{private}d,numNewEstimates,%{private}d,numLostEstimates,%{private}d", buf, 0x70u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v29 = qword_1025D4458;
    v30 = history->var1;
    v31 = history->var2;
    v32 = history->var3;
    v33 = history->var8;
    uUIDString2 = [v13 UUIDString];
    v35 = history->var4;
    v36 = history->var6;
    v37 = history->var7;
    v38 = history->var10;
    v39 = history->var11;
    v40 = history->var12;
    v41 = history->var13;
    v42 = history->var14;
    v45 = 134286595;
    v46 = v30;
    v47 = 1025;
    v48 = v31;
    v49 = 1025;
    v50 = v32;
    v51 = 2049;
    v52 = v33;
    v53 = 2113;
    v54 = uUIDString2;
    v55 = 2049;
    v56 = v35;
    v57 = 2049;
    v58 = v36;
    v59 = 2049;
    v60 = v37;
    v61 = 2049;
    v62 = v38;
    v63 = 2049;
    v64 = v39;
    v65 = 1025;
    v66 = v40;
    v67 = 1025;
    v68 = v41;
    v69 = 1025;
    v70 = v42;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v29, 0, "Updating VO2MaxRetrocomputeHistory: startTime,%{private}f,algVersion,%{private}d,status,%{private}d,lastSessionTimestamp,%{private}f,lastSessionId,%{private}@,firstSampleDate,%{private}f,lastSampleDate,%{private}f,lastSampleDatePrevAlg,%{private}f,meanDelta,%{private}f,meanPercentileDelta,%{private}f,numUpdatedEstimates,%{private}d,numNewEstimates,%{private}d,numLostEstimates,%{private}d", &v45, 112);
    v44 = v43;
    sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService updateRetrocomputeHistory:withResult:]", "%s\n", v43);
    if (v44 != buf)
    {
      free(v44);
    }
  }

  sub_1007B855C(self->fRetrocomputeDb.__ptr_, history, history->var0);
}

- (unsigned)updateRetrocomputeHistoryPostProcessing:(VO2MaxRetrocomputeHistory *)processing
{
  v85 = 0;
  v86 = 0;
  v87 = 0;
  if (sub_101110B2C(self->fStagingOutputStore.__ptr_, &v85, 0.0) == 100)
  {
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v5 = sub_101110B98(self->fStagingOutputStore.__ptr_, &v82);
    if (v5 == 100)
    {
      __src = 0;
      v80 = 0;
      v81 = 0;
      v7 = v86;
      if (v85 == v86)
      {
        processing->var17 = 0.0;
        v45 = 0.0;
        v44 = 0.0;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = v85 + 10;
        v11 = 0.0;
        v12 = 0.0;
        v74 = 0.0;
        v75 = 0.0;
        v13 = 0.0;
        v14 = 0.0;
        do
        {
          v15 = *(v10 - 9);
          *buf = *(v10 - 10);
          *&buf[16] = v15;
          v16 = *(v10 - 8);
          v17 = *(v10 - 7);
          v18 = *(v10 - 5);
          v110 = *(v10 - 6);
          v111 = v18;
          *v109 = v16;
          *&v109[16] = v17;
          v19 = *(v10 - 4);
          v20 = *(v10 - 3);
          v21 = *(v10 - 2);
          *v115 = *(v10 - 2);
          v113 = v20;
          v114 = v21;
          v112 = v19;
          v22 = *(v10 - 12);
          v116 = *(v10 - 4);
          *&v115[4] = v22;
          if (*(v10 + 23) < 0)
          {
            v5 = sub_100007244(&__p, *v10, *(v10 + 1));
          }

          else
          {
            v23 = *v10;
            v118 = *(v10 + 2);
            __p = v23;
          }

          v24 = v10 - 10;
          v25 = *(v10 + 3);
          v119 = v25;
          if (v25 <= 0.0)
          {
            v31 = v14;
            v27 = v13;
            v28 = v12;
            v29 = v11;
          }

          else
          {
            v26 = v9 + 1;
            v27 = 0.0;
            v28 = 0.0;
            v29 = v25;
            if (v9)
            {
              v29 = v11 + (v25 - v11) / v26;
              v28 = v12 + (v25 - v11) * (v25 - v29);
              v75 = v28;
            }

            v30 = v8 + 1;
            v31 = *v109;
            if (v8)
            {
              v31 = v14 + (*v109 - v14) / v30;
              v27 = v13 + (*v109 - v14) * (*v109 - v31);
              v74 = v27;
            }

            v32 = *v109 - v25;
            v33 = v80;
            if (v80 >= v81)
            {
              v35 = __src;
              v36 = v80 - __src;
              v37 = (v80 - __src) >> 3;
              v38 = v37 + 1;
              if ((v37 + 1) >> 61)
              {
                sub_10028C64C();
              }

              v39 = v81 - __src;
              if ((v81 - __src) >> 2 > v38)
              {
                v38 = v39 >> 2;
              }

              v40 = v39 >= 0x7FFFFFFFFFFFFFF8;
              v41 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v40)
              {
                v41 = v38;
              }

              if (v41)
              {
                sub_1000B9708(&__src, v41);
              }

              *(8 * v37) = v32;
              v34 = 8 * v37 + 8;
              memcpy(0, v35, v36);
              v5 = __src;
              __src = 0;
              v80 = v34;
              v81 = 0;
              if (v5)
              {
                operator delete(v5);
              }
            }

            else
            {
              *v80 = v32;
              v34 = (v33 + 1);
            }

            v80 = v34;
            v9 = v26;
            v8 = v30;
          }

          if (SHIBYTE(v118) < 0)
          {
            operator delete(__p);
          }

          v10 += 12;
          v11 = v29;
          v12 = v28;
          v13 = v27;
          v14 = v31;
        }

        while (v24 + 12 != v7);
        v42 = 0.0;
        v43 = 0.0;
        if (__src != v80)
        {
          v43 = sub_1010BD760(&__src, 90);
        }

        processing->var17 = v43;
        if (v8 >= 2)
        {
          v42 = v74 / (v8 - 1);
        }

        v44 = 0.0;
        v45 = sqrt(v42);
        if (v9 >= 2)
        {
          v44 = v75 / (v9 - 1);
        }
      }

      processing->var18 = v45 - sqrt(v44);
      v78 = 15552000.0;
      v49 = sub_100011660(v5, v6);
      sub_100185AC0(v49, buf);
      sub_1000B9370(*buf, "VO2MaxRetrocomputeMinPrevAlgSampleInterval", &v78);
      v51 = *&buf[8];
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }

      v52 = processing->var7 - processing->var4;
      if (v52 >= v78 || self->fShouldBypassPreviousSampleInternal)
      {
        v53 = 0;
      }

      else
      {
        processing->var19 |= 8u;
        v53 = 1;
      }

      v77 = 0.9;
      v54 = sub_100011660(v51, v50);
      sub_100185AC0(v54, buf);
      sub_1000B9370(*buf, "VO2MaxRetrocomputeMinEstimatesUpdatedRatio", &v77);
      v56 = *&buf[8];
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }

      v57 = processing->var12 / (processing->var14 + processing->var12 + processing->var15);
      if (!processing->var3 && v57 < v77 && !self->fShouldBypassMinEstimatesUpdatedRatio)
      {
        processing->var19 |= 0x10u;
        v53 = 1;
      }

      v76 = 1.0;
      v58 = sub_100011660(v56, v55);
      sub_100185AC0(v58, buf);
      sub_1000B9370(*buf, "VO2MaxRetrocomputeMinMeanDelta", &v76);
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }

      if (!processing->var3 && fabs(processing->var10) < v76 && !self->fShouldBypassMinDelta)
      {
        processing->var19 |= 0x20u;
        v53 = 1;
      }

      v59 = v82;
      v60 = v83;
      if (v82 != v83)
      {
        processing->var19 |= 0x40u;
        v53 = 1;
      }

      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v61 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        var10 = processing->var10;
        var3 = processing->var3;
        *buf = 134285825;
        *&buf[4] = v52;
        *&buf[12] = 2049;
        *&buf[14] = v78;
        *&buf[22] = 2049;
        *&buf[24] = v57;
        *v109 = 2049;
        *&v109[2] = v77;
        *&v109[10] = 2049;
        *&v109[12] = var10;
        *&v109[20] = 2049;
        *&v109[22] = v76;
        *&v109[30] = 1026;
        LODWORD(v110) = v59 != v60;
        WORD2(v110) = 1025;
        *(&v110 + 6) = v53;
        WORD5(v110) = 1026;
        HIDWORD(v110) = var3;
        LOWORD(v111) = 1026;
        *(&v111 + 2) = v53 ^ 1;
        _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEFAULT, "VO2MaxRetrocomputeHistory data checks: prevAlgSampleInterval,%{private}f,minPrevAlgSampleInterval,%{private}f,estimatesUpdatedRatio,%{private}f,minEstimatesUpdatedRatio,%{private}f,meanDelta,%{private}f,minMeanDelta,%{private}f,badStagingDataExists,%{public}d,failedDataCheck,%{private}d,oldRetrocomputeStatus,%{public}d,newRetrocomputeStatus,%{public}d", buf, 0x56u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BEA08(buf);
        v70 = processing->var10;
        v71 = processing->var3;
        v88 = 134285825;
        v89 = v52;
        v90 = 2049;
        v91 = v78;
        v92 = 2049;
        v93 = v57;
        v94 = 2049;
        v95 = v77;
        v96 = 2049;
        v97 = v70;
        v98 = 2049;
        v99 = v76;
        v100 = 1026;
        v101 = v59 != v60;
        v102 = 1025;
        v103 = v53;
        v104 = 1026;
        v105 = v71;
        v106 = 1026;
        v107 = v53 ^ 1;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 0, "VO2MaxRetrocomputeHistory data checks: prevAlgSampleInterval,%{private}f,minPrevAlgSampleInterval,%{private}f,estimatesUpdatedRatio,%{private}f,minEstimatesUpdatedRatio,%{private}f,meanDelta,%{private}f,minMeanDelta,%{private}f,badStagingDataExists,%{public}d,failedDataCheck,%{private}d,oldRetrocomputeStatus,%{public}d,newRetrocomputeStatus,%{public}d", &v88, 86);
        v73 = v72;
        sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService updateRetrocomputeHistoryPostProcessing:]", "%s\n", v72);
        if (v73 != buf)
        {
          free(v73);
        }
      }

      if (processing->var3 == 1)
      {
        v64 = 1;
      }

      else
      {
        v64 = v53;
      }

      if ((v64 & 1) == 0)
      {
        processing->var20 = CFAbsoluteTimeGetCurrent();
      }

      processing->var3 = v53 ^ 1;
      sub_1007B855C(self->fRetrocomputeDb.__ptr_, processing, processing->var0);
      if (__src)
      {
        v80 = __src;
        operator delete(__src);
      }

      v47 = 0;
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v48 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEFAULT, "Unable to check for bad staging data due to device lock", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BEA08(buf);
        LOWORD(v88) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 0, "Unable to check for bad staging data due to device lock", &v88, 2);
        v69 = v68;
        sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService updateRetrocomputeHistoryPostProcessing:]", "%s\n", v68);
        if (v69 != buf)
        {
          free(v69);
        }
      }

      v47 = 2;
    }

    *buf = &v82;
    sub_1005648F0(buf);
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v46 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEFAULT, "Unable to query for staging output due to device lock", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BEA08(buf);
      LOWORD(v88) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 0, "Unable to query for staging output due to device lock", &v88, 2);
      v67 = v66;
      sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService updateRetrocomputeHistoryPostProcessing:]", "%s\n", v66);
      if (v67 != buf)
      {
        free(v67);
      }
    }

    v47 = 2;
  }

  *buf = &v85;
  sub_1005648F0(buf);
  return v47;
}

- (void)triggerRetrocomputeWithReply:(id)reply
{
  if (sub_10001CF04(self, a2))
  {
    sub_10000FF38(v27, "com.apple.locationd.VO2MaxService.Retrocompute", 0);
    self->fTriggerRetrocomputeInProgress = 1;
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v5 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Retrocompute triggered", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BEA08(buf);
      LOWORD(v34[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 0, "Retrocompute triggered", v34, 2);
      v21 = v20;
      sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService triggerRetrocomputeWithReply:]", "%s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    [(CLVO2MaxService *)self updateRetrocomputeStatus:2 unavailableReasons:0];
    self->fUpdateRetrocomputedDataSuccess = 0;
    self->fUpdateRetrocomputedDataAttempts = 0;
    self->fDeleteHealthKitSamplesSuccess = 0;
    self->fDeleteHealthKitSamplesAttempts = 0;
    sub_10055CAE4(&self->fPendingHealthKitWrites);
    v6 = sub_101110B2C(self->fStagingOutputStore.__ptr_, &self->fPendingHealthKitWrites, 0.0);
    if (v6 == 100)
    {
      (*(reply + 2))(reply, 100);
      end = self->fPendingHealthKitWrites.__end_;
      if (self->fPendingHealthKitWrites.__begin_ != end)
      {
        v8 = *end[-1].var1;
        v28[0] = *(&end[-2].var22.__rep_.__l + 1);
        v28[1] = v8;
        v9 = *&end[-1].var2;
        v10 = *&end[-1].var4;
        v11 = *end[-1].var8;
        v28[4] = *&end[-1].var6;
        v28[5] = v11;
        v28[2] = v9;
        v28[3] = v10;
        v12 = *&end[-1].var9;
        v13 = *&end[-1].var11;
        v14 = *&end[-1].var15;
        *v29 = end[-1].var17;
        v28[7] = v13;
        v28[8] = v14;
        v28[6] = v12;
        v15 = *(&end[-1].var17 + 4);
        var19 = end[-1].var19;
        *&v29[4] = v15;
        if (end[-1].var22.__rep_.__s.__data_[15] < 0)
        {
          sub_100007244(&__p, *&end[-1].var20, end[-1].var22.__rep_.__l.__data_);
        }

        else
        {
          v16 = *&end[-1].var20;
          size = end[-1].var22.__rep_.__l.__size_;
          __p = v16;
        }

        v33 = *(&end[-1].var22.__rep_.__l + 2);
        [(CLVO2MaxService *)self saveStagingOutputToHealthKit:v28 activity:0];
        if (SHIBYTE(size) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_34;
      }

      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v19 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "No staging data found", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BEA08(buf);
        LOWORD(v34[0]) = 0;
        LODWORD(v26) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 0, "No staging data found", v34, v26);
        v25 = v24;
        sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService triggerRetrocomputeWithReply:]", "%s\n", v24);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      [(CLVO2MaxService *)self updateRetrocomputeStatus:3 unavailableReasons:0];
      sub_1003FC6DC(self->fRetrocomputeBodyMetricsDb.__ptr_);
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v18 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v36 = v6;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "Unable to query for staging output: %d", buf, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018BEA08(buf);
        v34[0] = 67109120;
        v34[1] = v6;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 16, "Unable to query for staging output: %d", v34);
        v23 = v22;
        sub_100152C7C("Generic", 1, 0, 0, "[CLVO2MaxService triggerRetrocomputeWithReply:]", "%s\n", v22);
        if (v23 != buf)
        {
          free(v23);
        }
      }

      [(CLVO2MaxService *)self updateRetrocomputeStatus:1 unavailableReasons:0];
      (*(reply + 2))(reply, v6);
    }

    self->fTriggerRetrocomputeInProgress = 0;
LABEL_34:
    sub_10001A420(v27);
    return;
  }

  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v17 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "Retrocompute is only available on phone", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BFD18();
  }

  (*(reply + 2))(reply, 109);
}

- (void)saveStagingOutputToHealthKit:(VO2MaxStagingOutput *)kit activity:
{
  v4 = v3;
  v7 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierVO2Max];
  var2 = kit->var2;
  v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:var2];
  v10 = [HKQuantity quantityWithUnit:[HKUnit unitFromString:@"ml/(kg*min)"] doubleValue:round(kit->var3 * 100.0) / 100.0];
  v11 = [[NSUUID alloc] initWithUUIDBytes:kit->var8];
  v12 = objc_alloc_init(NSMutableDictionary);
  [v12 setObject:&off_10254EAB0 forKeyedSubscript:HKMetadataKeyVO2MaxTestType];
  if (kit->var21)
  {
    v13 = &__kCFBooleanTrue;
  }

  else
  {
    v13 = &__kCFBooleanFalse;
  }

  [v12 setObject:v13 forKeyedSubscript:_HKPrivateMetadataKeyUserOnBetaBlocker];
  [v12 setObject:objc_msgSend(v11 forKeyedSubscript:{"UUIDString"), HKMetadataKeySyncIdentifier}];
  [v12 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", kit->var20), HKMetadataKeySyncVersion}];
  v14 = [HKQuantitySample quantitySampleWithType:v7 quantity:v10 startDate:v9 endDate:v9 metadata:v12];
  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v15 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    uUIDString = [v11 UUIDString];
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "Adding retrocomputed sample to HKHealthStore: %{public}@", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BFE04();
  }

  v16 = [objc_msgSend(-[CLVO2MaxService universe](self "universe")];
  if ((*(&kit->var22.__rep_.__l + 23) & 0x8000000000000000) != 0)
  {
    if (kit->var22.__rep_.__l.__size_)
    {
      goto LABEL_12;
    }

LABEL_16:
    fHkHealthStore = self->fHkHealthStore;
    v38 = v14;
    v19 = [NSArray arrayWithObjects:&v38 count:1];
    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_10055CF0C;
    v33 = &unk_10245EA90;
    v34 = v16;
    v35 = v4;
    v36 = var2;
    v20 = &v30;
    v21 = fHkHealthStore;
    goto LABEL_17;
  }

  if (!*(&kit->var22.__rep_.__l + 23))
  {
    goto LABEL_16;
  }

LABEL_12:
  p_var22 = &kit->var22;
  v18 = objc_alloc_init(HKHealthStore);
  if (*(&kit->var22.__rep_.__l + 23) < 0)
  {
    p_var22 = p_var22->__rep_.__l.__data_;
  }

  [(HKHealthStore *)v18 setSourceBundleIdentifier:[NSString stringWithUTF8String:p_var22]];
  [(HKHealthStore *)v18 resume];
  v37 = v14;
  v19 = [NSArray arrayWithObjects:&v37 count:1];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_10055D070;
  v26 = &unk_10245EA90;
  v27 = v16;
  v28 = v4;
  v29 = var2;
  v20 = &v23;
  v21 = v18;
LABEL_17:
  [(HKHealthStore *)v21 saveObjects:v19 withCompletion:v20, v23, v24, v25, v26, v27, v28, *&v29, v30, v31, v32, v33, v34, v35, *&v36];
}

- (void)onRetrocomputeHealthKitSampleSavedWithStartTime:(double)time activity:(id)activity
{
  p_fPendingHealthKitWrites = &self->fPendingHealthKitWrites;
  end = self->fPendingHealthKitWrites.__end_;
  if (self->fPendingHealthKitWrites.__begin_ != end && *&end[-1].var1[8] == time)
  {
    if (![(CLVO2MaxService *)self updateRetrocomputeLastTimestampToHealthKit:time])
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE384();
      }

      v13 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134283521;
        timeCopy = time;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "Failed to update retrocompute history record with lastTimestampToHealthKit (%{private}f). Will attempt to proceed with remaining HealthKit writes.", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C00D8();
      }
    }

    self->fUpdateRetrocomputedDataAttempts = 0;
    v14 = p_fPendingHealthKitWrites->__end_;
    if (v14[-1].var22.__rep_.__s.__data_[15] < 0)
    {
      operator delete(*&v14[-1].var20);
    }

    p_fPendingHealthKitWrites->__end_ = (v14 - 192);
    if (p_fPendingHealthKitWrites->__begin_ == (&v14[-2].var22.__rep_.__l + 1))
    {
      [(CLVO2MaxService *)self promoteStagingData:activity];
    }

    else
    {
      v15 = *&v14[-2].var0;
      v29[0] = *&v14[-3].var22.__rep_.__l.__size_;
      v29[1] = v15;
      v16 = *&v14[-2].var1[8];
      v17 = *&v14[-2].var3;
      v18 = *&v14[-2].var7;
      v29[4] = *&v14[-2].var5;
      v29[5] = v18;
      v29[2] = v16;
      v29[3] = v17;
      v19 = *&v14[-2].var8[8];
      v20 = *&v14[-2].var10;
      v21 = *&v14[-2].var14;
      *v30 = v14[-2].var16;
      v29[7] = v20;
      v29[8] = v21;
      v29[6] = v19;
      v22 = *(&v14[-2].var16 + 4);
      v31 = BYTE4(v14[-2].var17);
      *&v30[4] = v22;
      if (v14[-2].var22.__rep_.__s.__data_[7] < 0)
      {
        sub_100007244(&__p, *&v14[-2].var18, *&v14[-2].var20);
      }

      else
      {
        v23 = *&v14[-2].var18;
        data = v14[-2].var22.__rep_.__l.__data_;
        __p = v23;
      }

      size = v14[-2].var22.__rep_.__l.__size_;
      [(CLVO2MaxService *)self saveStagingOutputToHealthKit:v29 activity:activity];
      if (SHIBYTE(data) < 0)
      {
        operator delete(__p);
      }
    }
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v9 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      v10 = p_fPendingHealthKitWrites->__end_;
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - p_fPendingHealthKitWrites->__begin_) >> 6);
      if (v10 == p_fPendingHealthKitWrites->__begin_)
      {
        v12 = 0;
      }

      else
      {
        v12 = *&v10[-1].var1[8];
      }

      *buf = 134349569;
      timeCopy = *&v11;
      v43 = 2049;
      timeCopy2 = time;
      v45 = 2049;
      v46 = v12;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "Will retry retrocompute trigger due to unexpected state. fPendingHealthKitWrites count: %{public}lu, expected sample startTime: %{private}f, actual sample startTime: %{private}f", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v24 = p_fPendingHealthKitWrites->__end_;
      v25 = 0xAAAAAAAAAAAAAAABLL * ((v24 - p_fPendingHealthKitWrites->__begin_) >> 6);
      if (v24 == p_fPendingHealthKitWrites->__begin_)
      {
        v26 = 0;
      }

      else
      {
        v26 = *&v24[-1].var1[8];
      }

      v35 = 134349569;
      v36 = v25;
      v37 = 2049;
      timeCopy3 = time;
      v39 = 2049;
      v40 = v26;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 16, "Will retry retrocompute trigger due to unexpected state. fPendingHealthKitWrites count: %{public}lu, expected sample startTime: %{private}f, actual sample startTime: %{private}f", &v35, 32);
      v28 = v27;
      sub_100152C7C("Generic", 1, 0, 0, "[CLVO2MaxService onRetrocomputeHealthKitSampleSavedWithStartTime:activity:]", "%s\n", v27);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    if (activity)
    {
      [(CLVO2MaxService *)self markXpcActivityDone:activity];
    }

    else
    {
      [(CLVO2MaxService *)self retryTriggerRetrocompute];
    }
  }
}

- (void)onRetrocomputeHealthKitSampleFailed:(id)failed
{
  if (failed)
  {
    [(CLVO2MaxService *)self markXpcActivityDone:?];
  }

  else
  {
    [(CLVO2MaxService *)self retryTriggerRetrocompute];
  }
}

- (void)promoteStagingData:(id)data
{
  v5 = sub_101110B28(self->fStagingOutputStore.__ptr_);
  if (v5 != 100)
  {
    v6 = v5;
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v7 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = v6;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Could not promote staging data: %d", v8, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C01E4(v6);
      if (data)
      {
        goto LABEL_10;
      }
    }

    else if (data)
    {
      goto LABEL_10;
    }

    [(CLVO2MaxService *)self retryTriggerRetrocompute];
    return;
  }

  [(CLVO2MaxService *)self updateRetrocomputeStatus:3 unavailableReasons:0];
  self->fUpdateRetrocomputedDataSuccess = 1;
  sub_1003FC6DC(self->fRetrocomputeBodyMetricsDb.__ptr_);
  [(CLVO2MaxService *)self deleteHealthKitSamples:1];
  self->fTriggerRetrocomputeInProgress = 0;
  if (data)
  {
LABEL_10:
    [(CLVO2MaxService *)self markXpcActivityDone:data];
  }
}

- (void)retryTriggerRetrocompute
{
  self->fTriggerRetrocomputeInProgress = 1;
  self->fUpdateRetrocomputedDataSuccess = 0;
  self->fUpdateRetrocomputedDataAttempts = 0;
  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v3 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v7 = "com.apple.locationd.VO2Max.RetrocomputeRetryTrigger";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Setting up %{public}s activity", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C02D4();
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_DELAY, XPC_ACTIVITY_INTERVAL_1_MIN);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_MIN);
  xpc_dictionary_set_string(v4, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REQUIRES_CLASS_B, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_activity_unregister("com.apple.locationd.VO2Max.RetrocomputeRetryTrigger");
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10055D984;
  handler[3] = &unk_10245EAB8;
  handler[4] = [objc_msgSend(-[CLVO2MaxService universe](self "universe")];
  xpc_activity_register("com.apple.locationd.VO2Max.RetrocomputeRetryTrigger", v4, handler);
  xpc_release(v4);
}

- (void)onRetryTriggerRetrocompute:(id)retrocompute
{
  if (retrocompute)
  {
    state = xpc_activity_get_state(retrocompute);
    if (state == 4 || (v6 = state, state == 2))
    {

      [(CLVO2MaxService *)self handleRetryTriggerRetrocompute:retrocompute];
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE384();
      }

      v8 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        v9 = 134217984;
        v10 = v6;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Unexpected activity state: %ld", &v9, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C04EC();
      }
    }
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v7 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Invalid xpc activity.", &v9, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C05DC();
    }
  }
}

- (void)handleRetryTriggerRetrocompute:(id)retrocompute
{
  sub_10000FF38(v23, "com.apple.locationd.VO2MaxService.Retrocompute", 0);
  v35[0] = 0;
  v35[1] = 0;
  v36 = 4;
  v41[4] = 0.0;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  v39 = 0u;
  v40 = 0u;
  memset(v41, 0, 28);
  if (self->fUpdateRetrocomputedDataSuccess)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v5 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Retrying retrocompute trigger already succeeded, cancelling activity", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_7;
    }

    sub_1018BEA08(buf);
    LOWORD(v27) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 0, "Retrying retrocompute trigger already succeeded, cancelling activity", &v27, 2);
    v14 = v13;
    sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService handleRetryTriggerRetrocompute:]", "%s\n", v13);
    if (v14 == buf)
    {
      goto LABEL_7;
    }

    goto LABEL_49;
  }

  if (sub_1007B8870(self->fRetrocomputeDb.__ptr_, 4, v35) == 109)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v6 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "Unable to query for retrocompute history due to device lock", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_15;
    }

    sub_1018BEA08(buf);
    LOWORD(v27) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 16, "Unable to query for retrocompute history due to device lock", &v27, 2);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 0, "[CLVO2MaxService handleRetryTriggerRetrocompute:]", "%s\n", v15);
    if (v16 == buf)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

  if (v37 != 2)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v8 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240448;
      v32 = v37;
      v33 = 1026;
      v34 = v36;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Will not attempt to retry retrocompute trigger, status: %{public}d, algVersion: %{public}d", buf, 0xEu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_7;
    }

    sub_1018BEA08(buf);
    v27 = 67240448;
    v28 = v37;
    v29 = 1026;
    v30 = v36;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 0, "Will not attempt to retry retrocompute trigger, status: %{public}d, algVersion: %{public}d", &v27, 14);
    v14 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService handleRetryTriggerRetrocompute:]", "%s\n", v17);
    if (v14 == buf)
    {
      goto LABEL_7;
    }

LABEL_49:
    free(v14);
LABEL_7:
    [(CLVO2MaxService *)self markXpcActivityDone:retrocompute];
    xpc_activity_unregister("com.apple.locationd.VO2Max.RetrocomputeRetryTrigger");
LABEL_8:
    self->fTriggerRetrocomputeInProgress = 0;
    goto LABEL_16;
  }

  if (self->fUpdateRetrocomputedDataAttempts >= 3)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v7 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Giving up attempting to retry retrocompute trigger", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BEA08(buf);
      LOWORD(v27) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 0, "Giving up attempting to retry retrocompute trigger", &v27, 2);
      v19 = v18;
      sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService handleRetryTriggerRetrocompute:]", "%s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    [(CLVO2MaxService *)self markXpcActivityDone:retrocompute];
    xpc_activity_unregister("com.apple.locationd.VO2Max.RetrocomputeRetryHealthKitDelete");
    if (v41[0] == 0.0)
    {
      [(CLVO2MaxService *)self updateRetrocomputeStatus:1 unavailableReasons:0, v41[0]];
    }

    goto LABEL_8;
  }

  if (qword_1025D4450 != -1)
  {
    sub_1018BE068();
  }

  v9 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Retrying retrocompute trigger", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BEA08(buf);
    LOWORD(v27) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 0, "Retrying retrocompute trigger", &v27, 2);
    v21 = v20;
    sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService handleRetryTriggerRetrocompute:]", "%s\n", v20);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  ++self->fUpdateRetrocomputedDataAttempts;
  self->fDeleteHealthKitSamplesSuccess = 0;
  self->fDeleteHealthKitSamplesAttempts = 0;
  sub_10055CAE4(&self->fPendingHealthKitWrites);
  v10 = sub_101110B2C(self->fStagingOutputStore.__ptr_, &self->fPendingHealthKitWrites, v41[0]);
  if (v10 != 100)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v12 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v32 = v10;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "Unable to query for staging output: %d", buf, 8u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_15;
    }

    sub_1018BEA08(buf);
    v27 = 67109120;
    v28 = v10;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 16, "Unable to query for staging output: %d", &v27);
    v16 = v22;
    sub_100152C7C("Generic", 1, 0, 0, "[CLVO2MaxService handleRetryTriggerRetrocompute:]", "%s\n", v22);
    if (v16 == buf)
    {
      goto LABEL_15;
    }

LABEL_51:
    free(v16);
LABEL_15:
    [(CLVO2MaxService *)self markXpcActivityDone:retrocompute];
    goto LABEL_16;
  }

  end = self->fPendingHealthKitWrites.__end_;
  if (self->fPendingHealthKitWrites.__begin_ == end)
  {
    [(CLVO2MaxService *)self promoteStagingData:retrocompute];
  }

  else
  {
    sub_100564858(v24, (&end[-2].var22.__rep_.__l + 1));
    [(CLVO2MaxService *)self saveStagingOutputToHealthKit:v24 activity:retrocompute];
    if (v26 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_16:
  sub_10001A420(v23);
}

- (void)deleteHealthKitSamples:(BOOL)samples
{
  samplesCopy = samples;
  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v5 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "Attempting to delete samples without estimates in HKHealthStore", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C06C0();
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (sub_101110E74(self->fStagingOutputStore.__ptr_, &v16) == 100)
  {
    if (v16 == v17)
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v7 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "No sessions to delete from HKHealthStore", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BEA08(buf);
        v15 = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 1, "No sessions to delete from HKHealthStore", &v15, 2);
        v11 = v10;
        sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService deleteHealthKitSamples:]", "%s\n", v10);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    else
    {
      __p = 0;
      v13 = 0;
      v14 = 0;
      sub_100564944(&__p, v16, v17, (v17 - v16) >> 5);
      [(CLVO2MaxService *)self deleteSessionsFromHealthKit:&__p withRetry:samplesCopy];
      if (__p)
      {
        v13 = __p;
        operator delete(__p);
      }
    }
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v6 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Unable to fetch sessions without estimates", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BEA08(buf);
      v15 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 1, "Unable to fetch sessions without estimates", &v15, 2);
      v9 = v8;
      sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService deleteHealthKitSamples:]", "%s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    if (samplesCopy)
    {
      [(CLVO2MaxService *)self retryHealthKitDeleteSamples];
    }
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }
}

- (void)retryHealthKitDeleteSamples
{
  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v3 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "Setting up activity to attempt deleting sessions without estimates from HKHealthStore", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C07AC();
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_INTERVAL, 30);
  xpc_dictionary_set_string(v4, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REQUIRES_CLASS_B, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10055EA2C;
  handler[3] = &unk_10245EAB8;
  handler[4] = [objc_msgSend(-[CLVO2MaxService universe](self "universe")];
  xpc_activity_register("com.apple.locationd.VO2Max.RetrocomputeRetryHealthKitDelete", v4, handler);
  xpc_release(v4);
}

- (void)onRetryHealthKitDeleteSamples:(id)samples
{
  if (samples)
  {
    state = xpc_activity_get_state(samples);
    if (state == 4 || (v6 = state, state == 2))
    {
      sub_10000FF38(&v9, "com.apple.locationd.VO2MaxService.Retrocompute", 0);
      [(CLVO2MaxService *)self handleRetryHealthKitDeleteSamples:samples];
      sub_10001A420(&v9);
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE384();
      }

      v8 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        v9 = 134217984;
        v10 = v6;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Unexpected activity state: %ld", &v9, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C0990();
      }
    }
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v7 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Invalid xpc activity.", &v9, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C0A88();
    }
  }
}

- (void)handleRetryHealthKitDeleteSamples:(id)samples
{
  if (self->fDeleteHealthKitSamplesSuccess)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v5 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "HealthKit samples without an estimate have been deleted, cancelling activity", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C0D3C();
    }

LABEL_22:
    [(CLVO2MaxService *)self markXpcActivityDone:samples];
    xpc_activity_unregister("com.apple.locationd.VO2Max.RetrocomputeRetryHealthKitDelete");
    return;
  }

  if (self->fDeleteHealthKitSamplesAttempts > 2)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v7 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "Giving up attempting to delete HealthKit samples without an estimate", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C0B74();
    }

    goto LABEL_22;
  }

  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v6 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Attempting to retry deleting HealthKit samples without an estimate", v9, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C0C58();
  }

  ++self->fDeleteHealthKitSamplesAttempts;
  [(CLVO2MaxService *)self deleteHealthKitSamples:0];
  [(CLVO2MaxService *)self markXpcActivityDone:samples];
}

- (void)deleteSessionsFromHealthKit:()vector<VO2MaxStagingLostEstimate withRetry:(std:(BOOL)retry :allocator<VO2MaxStagingLostEstimate>> *)a3
{
  v5 = objc_alloc_init(NSMutableArray);
  var0 = a3->var0;
  var1 = a3->var1;
  if (a3->var0 != var1)
  {
    do
    {
      v8 = *(var0 + 1);
      *v26 = *var0;
      v27 = v8;
      v9 = [[NSUUID alloc] initWithUUIDBytes:&v27];
      [v5 addObject:{objc_msgSend(v9, "UUIDString")}];
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v10 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
      {
        uUIDString = [v9 UUIDString];
        *buf = 138412290;
        v25 = uUIDString;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Deleting session %@ from HKHealthStore", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C0E20(&v22, v9, &v23);
      }

      var0 = (var0 + 32);
    }

    while (var0 != var1);
  }

  if ([v5 count])
  {
    v12 = [objc_msgSend(objc_msgSend(v18 "universe")];
    v13 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierVO2Max];
    v14 = [HKSampleQuery predicateForObjectsWithMetadataKey:HKMetadataKeySyncIdentifier allowedValues:v5];
    v15 = v18[1];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10055F190;
    v20[3] = &unk_10245EAE0;
    retryCopy = retry;
    v20[4] = v18;
    v20[5] = v12;
    [v15 deleteObjectsOfType:v13 predicate:v14 withCompletion:v20];
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v16 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
    {
      *v26 = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "No sessions found without estimates to delete from HKHealthStore", v26, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C0F44();
    }
  }
}

- (void)updateRetrocomputeStatus:(int)status unavailableReasons:(unsigned int)reasons
{
  v20[0] = 0;
  v20[1] = 0;
  v21 = 4;
  v27 = 0;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v24 = 0u;
  v25 = 0u;
  memset(v26, 0, 28);
  if (sub_1007B8870(self->fRetrocomputeDb.__ptr_, 4, v20) == 100)
  {
    v7 = v22;
    LODWORD(v22) = status;
    DWORD2(v26[1]) = reasons;
    sub_1007B855C(self->fRetrocomputeDb.__ptr_, v20, v20[0]);
    if (v7 != status)
    {
      v8 = [NSDate alloc];
      v9 = [v8 initWithTimeIntervalSinceReferenceDate:*(&v22 + 4)];
      v10 = [NSDate alloc];
      v11 = [v10 initWithTimeIntervalSinceReferenceDate:*&v23[1]];
      v12 = [NSNumber alloc];
      v13 = [v12 initWithDouble:*&v24];
      v14 = [[CMVO2MaxRetrocomputeState alloc] initWithStatus:v22 startDate:v9 endDate:v11 meanDelta:v13];
      retrocomputeStatusClients = [(CLVO2MaxService *)self retrocomputeStatusClients];
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(retrocomputeStatusClients);
      if (v16)
      {
        v17 = v16;
        v18 = MEMORY[0];
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (MEMORY[0] != v18)
            {
              objc_enumerationMutation(retrocomputeStatusClients);
            }

            [*(8 * i) onRetrocomputeStatusUpdate:v14];
          }

          v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(retrocomputeStatusClients);
        }

        while (v17);
      }

      if (status == 3)
      {
        [objc_msgSend(objc_msgSend(-[CLVO2MaxService universe](self "universe")];
      }
    }
  }
}

- (BOOL)updateRetrocomputeLastTimestampToHealthKit:(double)kit
{
  v6[0] = 0;
  v6[1] = 0;
  v7 = 4;
  v10 = 0;
  v8 = 0u;
  memset(v9, 0, 28);
  memset(&v9[44], 0, 60);
  if (sub_1007B8870(self->fRetrocomputeDb.__ptr_, 4, v6) != 100)
  {
    return 0;
  }

  *&v9[76] = kit;
  return sub_1007B855C(self->fRetrocomputeDb.__ptr_, v6, v6[0]);
}

- (BOOL)validateBodyMetrics
{
  p_fOriginalBodyMetrics = &self->fOriginalBodyMetrics;
  p_fUserInfo = &self->fUserInfo;
  if (self->fOriginalBodyMetrics.biologicalSex == self->fUserInfo.biologicalSex && vabds_f32(self->fOriginalBodyMetrics.age, self->fUserInfo.age) <= 3.0 && vabds_f32(self->fOriginalBodyMetrics.heightM, self->fUserInfo.heightM) <= 0.0254 && vabds_f32(self->fOriginalBodyMetrics.weightKG, self->fUserInfo.weightKG) <= 9.08)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v4 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      biologicalSex = p_fUserInfo->biologicalSex;
      age = p_fUserInfo->age;
      heightM = p_fUserInfo->heightM;
      weightKG = p_fUserInfo->weightKG;
      v9 = p_fOriginalBodyMetrics->biologicalSex;
      v10 = p_fOriginalBodyMetrics->age;
      v11 = p_fOriginalBodyMetrics->heightM;
      v12 = p_fOriginalBodyMetrics->weightKG;
      *buf = 67176449;
      v41 = biologicalSex;
      v42 = 2049;
      v43 = age;
      v44 = 2049;
      v45 = heightM;
      v46 = 2049;
      v47 = weightKG;
      v48 = 1025;
      v49 = v9;
      v50 = 2049;
      v51 = v10;
      v52 = 2049;
      v53 = v11;
      v54 = 2049;
      v55 = v12;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Significant change in BodyMetrics during pre-processing. Original values -- biologicalSex: %{private}d, age: %{private}f, height: %{private}f, weight: %{private}f\n\nCurrent values -- biologicalSex: %{private}d, age: %{private}f, height: %{private}f, weight: %{private}f", buf, 0x4Au);
    }

    v13 = sub_10000A100(121, 2);
    if (v13)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v14 = p_fUserInfo->biologicalSex;
      v15 = p_fUserInfo->age;
      v16 = p_fUserInfo->heightM;
      v17 = p_fUserInfo->weightKG;
      v18 = p_fOriginalBodyMetrics->biologicalSex;
      v19 = p_fOriginalBodyMetrics->age;
      v20 = p_fOriginalBodyMetrics->heightM;
      v21 = p_fOriginalBodyMetrics->weightKG;
      v25[0] = 67176449;
      v25[1] = v14;
      v26 = 2049;
      v27 = v15;
      v28 = 2049;
      v29 = v16;
      v30 = 2049;
      v31 = v17;
      v32 = 1025;
      v33 = v18;
      v34 = 2049;
      v35 = v19;
      v36 = 2049;
      v37 = v20;
      v38 = 2049;
      v39 = v21;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 0, "Significant change in BodyMetrics during pre-processing. Original values -- biologicalSex: %{private}d, age: %{private}f, height: %{private}f, weight: %{private}f\n\nCurrent values -- biologicalSex: %{private}d, age: %{private}f, height: %{private}f, weight: %{private}f", v25, 74);
      v23 = v22;
      sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService validateBodyMetrics]", "%s\n", v22);
      if (v23 != buf)
      {
        free(v23);
      }

      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (void)onUserInfoUpdate:(const int *)update data:(const void *)data
{
  [-[CLVO2MaxService universe](self "universe")];
  if (*update == 2)
  {
    v8 = *(data + 1);
    v7 = *(data + 2);
    v9 = *data;
    *&self->fUserInfo.runVo2max = *(data + 44);
    *&self->fUserInfo.vo2max = v8;
    *&self->fUserInfo.hronset = v7;
    *&self->fUserInfo.gender = v9;
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v10 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      isAgeSet = self->fUserInfo._isAgeSet;
      age = self->fUserInfo.age;
      biologicalSex = self->fUserInfo.biologicalSex;
      isHeightSet = self->fUserInfo._isHeightSet;
      heightM = self->fUserInfo.heightM;
      isWeightSet = self->fUserInfo._isWeightSet;
      weightKG = self->fUserInfo.weightKG;
      v20 = 67241729;
      v21 = isAgeSet;
      v22 = 2049;
      v23 = age;
      v24 = 1025;
      v25 = biologicalSex;
      v26 = 1026;
      v27 = isHeightSet;
      v28 = 2049;
      v29 = heightM;
      v30 = 1026;
      v31 = isWeightSet;
      v32 = 2049;
      v33 = weightKG;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "CLVO2MaxService: Received user info update. IsAgeSet,%{public}d,Age,%{private}f,BiologicalSex,%{private}d,IsHeightSet,%{public}d,Height,%{private}f,IsWeightSet,%{public}d,Weight,%{private}f", &v20, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C1200(&self->fUserInfo);
    }
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v18 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *update;
      v20 = 67109120;
      v21 = v19;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#Warning Unhandled notification type, %d", &v20, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C110C(update);
    }
  }
}

- (void)getLatestVO2MaxValueForBodyMetrics:(const CLBodyMetrics *)metrics sinceTime:(double)time withReply:(id)reply
{
  v7 = objc_alloc_init(NSMutableDictionary);
  v81 = 0;
  v83 = 0;
  v85 = 0;
  v84 = 0;
  v8 = sub_10104516C();
  if (sub_101045B90(v8, v80, time))
  {
    if (v82 < 10.0 || v82 > 100.0)
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v10 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543619;
        *&buf[4] = @"VO2MaxWatchEstimate";
        *&buf[12] = 2049;
        *&buf[14] = v82;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "Error: getLatestVO2MaxValueForBodyMetrics out of bounds for key, %{public}@, value, %{private}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C1364();
      }
    }

    else
    {
      [v7 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", v82), @"VO2MaxWatchEstimate"}];
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v11 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543619;
        *&buf[4] = @"VO2MaxWatchEstimate";
        *&buf[12] = 2049;
        *&buf[14] = v82;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "getLatestVO2MaxValueForBodyMetrics key, %{public}@, value, %{private}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C146C();
      }
    }
  }

  v75 = 0;
  v77 = 0;
  v79 = 0;
  v78 = 0;
  v12 = sub_10104516C();
  if (sub_101045CAC(v12, v74, time))
  {
    if (v76 < 10.0 || v76 > 100.0)
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v14 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543619;
        *&buf[4] = @"VO2MaxPhoneEstimate";
        *&buf[12] = 2049;
        *&buf[14] = v76;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "Error: getLatestVO2MaxValueForBodyMetrics out of bounds for key, %{public}@, value, %{private}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C1574();
      }
    }

    else
    {
      [v7 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", v76), @"VO2MaxPhoneEstimate"}];
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v13 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543619;
        *&buf[4] = @"VO2MaxPhoneEstimate";
        *&buf[12] = 2049;
        *&buf[14] = v76;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "getLatestVO2MaxValueForBodyMetrics key, %{public}@, value, %{private}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C167C();
      }
    }
  }

  ptr = self->fPriorDb.__ptr_;
  if (ptr)
  {
    v65 = 0;
    v66 = 0;
    v67 = 0;
    sub_1008FE1C0(ptr, &v65);
    if (0xAAAAAAAAAAAAAAABLL * ((v66 - v65) >> 4) >= 3)
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v16 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = 0xAAAAAAAAAAAAAAABLL * ((v66 - v65) >> 4);
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "Too many priors retrieved from DB (%{public}lu)", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018BEA08(buf);
        v68 = 134349056;
        v69 = (0xAAAAAAAAAAAAAAABLL * ((v66 - v65) >> 4));
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 16, "Too many priors retrieved from DB (%{public}lu)", &v68, 12);
        v60 = v59;
        sub_100152C7C("Generic", 1, 0, 0, "[CLVO2MaxService getLatestVO2MaxValueForBodyMetrics:sinceTime:withReply:]", "%s\n", v59);
        if (v60 != buf)
        {
          free(v60);
        }
      }
    }

    v17 = v65;
    if (v66 != v65)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = &v17[v18];
        if (*&v17[v18 + 8] <= time || *&v17[v18 + 24] != 0)
        {
          goto LABEL_64;
        }

        v22 = v20[2];
        if (v22 < 10.0 || v22 > 100.0)
        {
          if (qword_1025D4450 != -1)
          {
            sub_1018BE068();
          }

          v24 = qword_1025D4458;
          if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
          {
            v25 = *(v20 + 2);
            *buf = 138543619;
            *&buf[4] = @"VO2MaxWatchMaxMetsFallback";
            *&buf[12] = 2049;
            *&buf[14] = v25;
            _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "Error: getLatestVO2MaxValueForBodyMetrics out of bounds for key, %{public}@, value, %{private}f", buf, 0x16u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018BEA08(buf);
            v26 = *(v20 + 2);
            v68 = 138543619;
            v69 = @"VO2MaxWatchMaxMetsFallback";
            v70 = 2049;
            v71 = v26;
            LODWORD(v61) = 22;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 16, "Error: getLatestVO2MaxValueForBodyMetrics out of bounds for key, %{public}@, value, %{private}f", &v68, v61);
            v28 = v27;
            sub_100152C7C("Generic", 1, 0, 0, "[CLVO2MaxService getLatestVO2MaxValueForBodyMetrics:sinceTime:withReply:]", "%s\n", v27);
            goto LABEL_88;
          }
        }

        else
        {
          [v7 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"VO2MaxWatchMaxMetsFallback"}];
          if (qword_1025D4450 != -1)
          {
            sub_1018BE068();
          }

          v29 = qword_1025D4458;
          if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
          {
            v30 = *(v20 + 2);
            *buf = 138543619;
            *&buf[4] = @"VO2MaxWatchMaxMetsFallback";
            *&buf[12] = 2049;
            *&buf[14] = v30;
            _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "getLatestVO2MaxValueForBodyMetrics setting key, %{public}@, value, %{private}f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018BEA08(buf);
            v42 = *(v20 + 2);
            v68 = 138543619;
            v69 = @"VO2MaxWatchMaxMetsFallback";
            v70 = 2049;
            v71 = v42;
            LODWORD(v61) = 22;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 2, "getLatestVO2MaxValueForBodyMetrics setting key, %{public}@, value, %{private}f", &v68, v61);
            v28 = v43;
            sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService getLatestVO2MaxValueForBodyMetrics:sinceTime:withReply:]", "%s\n", v43);
LABEL_88:
            if (v28 != buf)
            {
              free(v28);
            }
          }
        }

LABEL_64:
        if (v20[1] > time && *(v20 + 6) == 1)
        {
          v32 = &v17[v18];
          v33 = *&v17[v18 + 16];
          if (v33 < 10.0 || v33 > 100.0)
          {
            if (qword_1025D4450 != -1)
            {
              sub_1018BE068();
            }

            v35 = qword_1025D4458;
            if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
            {
              v36 = *(v32 + 2);
              *buf = 138543619;
              *&buf[4] = @"VO2MaxMobilityFallback";
              *&buf[12] = 2049;
              *&buf[14] = v36;
              _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_ERROR, "Error: getLatestVO2MaxValueForBodyMetrics out of bounds for key, %{public}@, value, %{private}f", buf, 0x16u);
            }

            if (!sub_10000A100(121, 0))
            {
              goto LABEL_85;
            }

            sub_1018BEA08(buf);
            v37 = *(v32 + 2);
            v68 = 138543619;
            v69 = @"VO2MaxMobilityFallback";
            v70 = 2049;
            v71 = v37;
            LODWORD(v61) = 22;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 16, "Error: getLatestVO2MaxValueForBodyMetrics out of bounds for key, %{public}@, value, %{private}f", &v68, v61);
            v39 = v38;
            sub_100152C7C("Generic", 1, 0, 0, "[CLVO2MaxService getLatestVO2MaxValueForBodyMetrics:sinceTime:withReply:]", "%s\n", v38);
          }

          else
          {
            [v7 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"VO2MaxMobilityFallback"}];
            if (qword_1025D4450 != -1)
            {
              sub_1018BE068();
            }

            v40 = qword_1025D4458;
            if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
            {
              v41 = *(v32 + 2);
              *buf = 138543619;
              *&buf[4] = @"VO2MaxMobilityFallback";
              *&buf[12] = 2049;
              *&buf[14] = v41;
              _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "getLatestVO2MaxValueForBodyMetrics setting key, %{public}@, value, %{private}f", buf, 0x16u);
            }

            if (!sub_10000A100(121, 2))
            {
              goto LABEL_85;
            }

            sub_1018BEA08(buf);
            v44 = *(v32 + 2);
            v68 = 138543619;
            v69 = @"VO2MaxMobilityFallback";
            v70 = 2049;
            v71 = v44;
            LODWORD(v61) = 22;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 2, "getLatestVO2MaxValueForBodyMetrics setting key, %{public}@, value, %{private}f", &v68, v61);
            v39 = v45;
            sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService getLatestVO2MaxValueForBodyMetrics:sinceTime:withReply:]", "%s\n", v45);
          }

          if (v39 != buf)
          {
            free(v39);
          }
        }

LABEL_85:
        ++v19;
        v17 = v65;
        v18 += 48;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v66 - v65) >> 4) > v19);
    }

    if (v17)
    {
      v66 = v17;
      operator delete(v17);
    }
  }

  if (metrics)
  {
    v46 = *&metrics->vo2max;
    *buf = *&metrics->gender;
    *&buf[16] = v46;
    v73[0] = *&metrics->hronset;
    *(v73 + 12) = *&metrics->runVo2max;
    sub_10062AADC(buf);
    v48 = v47 * 3.5;
    v49 = v48;
    if (v48 < 10.0 || v48 > 100.0)
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v51 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543619;
        *&buf[4] = @"VO2MaxJacksonFallback";
        *&buf[12] = 2049;
        *&buf[14] = v49;
        _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_ERROR, "Error: getLatestVO2MaxValueForBodyMetrics out of bounds for key, %{public}@, value, %{private}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C1784();
      }
    }

    else
    {
      [v7 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", v48), @"VO2MaxJacksonFallback"}];
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v52 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543619;
        *&buf[4] = @"VO2MaxJacksonFallback";
        *&buf[12] = 2049;
        *&buf[14] = v49;
        _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEBUG, "getLatestVO2MaxValueForBodyMetrics setting key, %{public}@, value, %{private}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C1890();
      }
    }

    sub_100D9AB28(metrics, buf);
    CHVO2MaxPrior::estimatePhoneBasedPrior();
    v54 = v53;
    if (v53 < 10.0 || v53 > 100.0)
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v56 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543619;
        *&buf[4] = @"VO2MaxDemographicsOnlyFallback";
        *&buf[12] = 2049;
        *&buf[14] = v54;
        _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_ERROR, "Error: getLatestVO2MaxValueForBodyMetrics out of bounds for key, %{public}@, value, %{private}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C199C();
      }
    }

    else
    {
      [v7 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", v53), @"VO2MaxDemographicsOnlyFallback"}];
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v55 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543619;
        *&buf[4] = @"VO2MaxDemographicsOnlyFallback";
        *&buf[12] = 2049;
        *&buf[14] = v54;
        _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEBUG, "getLatestVO2MaxValueForBodyMetrics setting key, %{public}@  value, %{private}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C1AA8();
      }
    }
  }

  v57 = [NSMutableString stringWithString:@"getLatestVO2MaxValueForBodyMetrics results:"];
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_100560ACC;
  v64[3] = &unk_10245EB08;
  v64[4] = v57;
  [v7 enumerateKeysAndObjectsUsingBlock:v64];
  if (qword_1025D4450 != -1)
  {
    sub_1018BE068();
  }

  v58 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v57;
    _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C1BB4();
  }

  if (reply)
  {
    (*(reply + 2))();
  }
}

- (void)savePrior:(VO2MaxPrior *)prior
{
  ptr = self->fPriorDb.__ptr_;
  if (ptr)
  {
    sub_100560C48(ptr, prior, 0);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    sub_1008FD864(self->fPriorDb.__ptr_, prior, &v9);
    v6 = [objc_msgSend(-[CLVO2MaxService universe](self "universe")];
    [v6 saveUpdatedPrior:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%f", *&prior->var1)}];
    v7 = v9;
    v8 = v10;
    if (v9 != v10)
    {
      do
      {
        [v6 deleteRecordIdForPrior:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%f", v7[1])}];
        v7 += 6;
      }

      while (v7 != v8);
      v7 = v9;
    }

    if (v7)
    {
      v10 = v7;
      operator delete(v7);
    }
  }
}

- (void)registerPriorRepeatingTask
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100560DD0;
  v2[3] = &unk_10245EB30;
  v2[4] = self;
  [+[BGSystemTaskScheduler sharedScheduler](BGSystemTaskScheduler "sharedScheduler")];
}

- (void)submitPriorRepeatingTask
{
  if (![+[BGSystemTaskScheduler sharedScheduler](BGSystemTaskScheduler "sharedScheduler")])
  {
    v4 = 0;
    v2 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.locationd.VO2MaxPriorUpdate"];
    [v2 setRequiresNetworkConnectivity:0];
    [v2 setRequiresExternalPower:0];
    [v2 setInterval:86400.0];
    [v2 setMinDurationBetweenInstances:82800.0];
    if (([+[BGSystemTaskScheduler sharedScheduler](BGSystemTaskScheduler "sharedScheduler")] & 1) == 0)
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v3 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v6 = v4;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Failed to submit task with error: %{public}@", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C1D90();
      }
    }
  }
}

- (void)handlePriorRepeatingTask:(id)task
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100561244;
  v9[3] = &unk_10245AE50;
  v9[4] = &v10;
  [task setExpirationHandler:v9];
  [(CLVO2MaxService *)self calculatePrior:v11 + 3];
  v8 = 0;
  if (*(v11 + 24) == 1)
  {
    if ([task setTaskExpiredWithRetryAfter:&v8 error:0.0])
    {
      if (v11[3])
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v5 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v8;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "Failed to expire task with error: %@", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018BEA08(buf);
        v14 = 138412290;
        v15 = v8;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 16, "Failed to expire task with error: %@", &v14, 12);
        v7 = v6;
        sub_100152C7C("Generic", 1, 0, 0, "[CLVO2MaxService handlePriorRepeatingTask:]", "%s\n", v6);
        if (v7 != buf)
        {
          free(v7);
        }
      }
    }
  }

  [task setTaskCompleted];
LABEL_11:
  _Block_object_dispose(&v10, 8);
}

- (void)calculatePrior:(BOOL *)prior
{
  v5 = sub_10000FF38(v24, "VO2MaxService.calcPrior", 0);
  if (sub_10001CF04(v5, v6))
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v7 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "calculatePrior triggered", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BEA08(buf);
      LOWORD(__p) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 1, "calculatePrior triggered", &__p, 2);
      v16 = v15;
      sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService calculatePrior:]", "%s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    __p = 0;
    v22 = 0;
    v23 = 0;
    sub_101206658(&__p, &self->fPhonePriorDailyInputRecorderDb, &self->fStepCountDb.__ptr_);
    if (prior && *prior)
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v8 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "Asked to interrupt background activity by dasd. Aborting...", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BEA08(buf);
        v20[0] = 0;
        LODWORD(v19) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 1, "Asked to interrupt background activity by dasd. Aborting...", v20, v19);
        v10 = v9;
        sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService calculatePrior:]", "%s\n", v9);
        if (v10 != buf)
        {
          free(v10);
        }
      }
    }

    else
    {
      if (__p != v22)
      {
        sub_100D9AB28(&self->fUserInfo, buf);
        CHVO2MaxPrior::estimatePhoneBasedPriorFromDailyInputs();
        v12 = v11;
        Current = CFAbsoluteTimeGetCurrent();
        *buf = 0;
        v26 = Current;
        v27 = v12;
        v28 = 1;
        v29 = 0;
        v30 = 0;
        [(CLVO2MaxService *)self savePrior:buf];
      }

      if (qword_1025D4450 != -1)
      {
        sub_1018BE068();
      }

      v14 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "Aggregating PhonePriorDailyInputHistory", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BEA08(buf);
        v20[0] = 0;
        LODWORD(v19) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4458, 0, "Aggregating PhonePriorDailyInputHistory", v20, v19);
        v18 = v17;
        sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService calculatePrior:]", "%s\n", v17);
        if (v18 != buf)
        {
          free(v18);
        }
      }

      sub_100561758(self->fPhonePriorDailyInputHistoryAggregator.__ptr_);
    }

    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }
  }

  sub_10001A420(v24);
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 24) = 0;
  *(self + 41) = 0;
  *(self + 42) = 0;
  *(self + 40) = 0;
  *(self + 43) = 0;
  return self;
}

@end