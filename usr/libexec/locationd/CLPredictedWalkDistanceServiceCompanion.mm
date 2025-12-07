@interface CLPredictedWalkDistanceServiceCompanion
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLPredictedWalkDistanceServiceCompanion)init;
- (id).cxx_construct;
- (void)beginService;
- (void)completeActivity:(id)activity withNextEstimateTime:(double)time;
- (void)endService;
- (void)getSixMinuteWalkDistancePrediction:(id)prediction;
- (void)onP6MWDActivity:(id)activity;
- (void)onUserInfoUpdate:(const int *)update data:(const void *)data;
- (void)receivePredictedWalkDistanceBout:(id)bout;
- (void)scheduleEstimate;
- (void)sendAnalyticsWeeklyEstimate:(CLPredictedWalkDistanceEstimate *)estimate strideCalInfo:(StrideCalInfo *)info walkingWorkoutPaceStats:(CLRunningStat *)stats runningWorkoutPaceStats:(CLRunningStat *)paceStats userInfo:(CLBodyMetrics *)userInfo;
- (void)sendToCoreAnalyticsWeeklyEstimate:(const CLPredictedWalkDistanceEstimateAnalytics *)estimate;
- (void)setUpAggregationOnTimer;
- (void)writeToHealthKitPrediction:(double)prediction estimateTime:(double)time earliestTimeUsed:(double)used calibrationStatus:(BOOL)status;
@end

@implementation CLPredictedWalkDistanceServiceCompanion

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
  if (qword_102656210 != -1)
  {
    sub_10187CE14();
  }

  return qword_102656208;
}

- (CLPredictedWalkDistanceServiceCompanion)init
{
  v3.receiver = self;
  v3.super_class = CLPredictedWalkDistanceServiceCompanion;
  return [(CLPredictedWalkDistanceServiceCompanion *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLPredictedWalkDistanceServiceCompanionProtocol outboundProtocol:&OBJC_PROTOCOL___CLPredictedWalkDistanceServiceCompanionClientProtocol];
}

+ (BOOL)isSupported
{
  if (qword_102656220 != -1)
  {
    sub_10187CE28();
  }

  return byte_102656218;
}

- (void)beginService
{
  if (qword_1025D4430 != -1)
  {
    sub_10187CE3C();
  }

  v2 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Starting up CLPredictedWalkDistanceServiceCompanion", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187CE50();
  }

  LOBYTE(v3) = 0;
  sub_1003F72AC();
}

- (void)endService
{
  fAggregationTimer = self->fAggregationTimer;
  if (fAggregationTimer)
  {
    dispatch_source_cancel(fAggregationTimer);
    dispatch_release(self->fAggregationTimer);
    self->fAggregationTimer = 0;
  }

  self->fHkHealthStore = 0;
}

- (void)scheduleEstimate
{
  Current = CFAbsoluteTimeGetCurrent();
  v6 = sub_100011660(v4, v5);
  sub_100185AC0(v6, &v19);
  v18 = 0.0;
  sub_1000B9370(v19, "kP6MWDNextEstimateTime", &v18);
  v7 = v18;
  if (v18 > Current + 604800.0)
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CF34();
    }

    v8 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v28 = "kP6MWDNextEstimateTime";
      v29 = 2050;
      v30 = v18;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "%{public}s is too far in the future (%{public}.2f). Resetting!", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187CF5C(buf);
      v21 = 136446466;
      v22 = "kP6MWDNextEstimateTime";
      v23 = 2050;
      v24 = v18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4438, 16, "%{public}s is too far in the future (%{public}.2f). Resetting!", &v21, 22);
      v15 = v14;
      sub_100152C7C("Generic", 1, 0, 0, "[CLPredictedWalkDistanceServiceCompanion scheduleEstimate]", "%s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    sub_1004FA8B8(v19, "kP6MWDNextEstimateTime", 0xFFFFFFFFLL);
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

  if (qword_1025D4430 != -1)
  {
    sub_10187CF34();
  }

  v11 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v28 = "com.apple.locationd.P6MWD";
    v29 = 2050;
    v30 = v18;
    v31 = 2050;
    v32 = v10;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: Registering XPC Activity with nextEstimateTime=(%{public}.2f) and delay=(%{public}lld)", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187CF5C(buf);
    v21 = 136446722;
    v22 = "com.apple.locationd.P6MWD";
    v23 = 2050;
    v24 = v18;
    v25 = 2050;
    v26 = v10;
    LODWORD(v16) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4438, 0, "%{public}s: Registering XPC Activity with nextEstimateTime=(%{public}.2f) and delay=(%{public}lld)", &v21, v16);
    v13 = v12;
    sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion scheduleEstimate]", "%s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  xpc_activity_unregister("com.apple.locationd.P6MWD");
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1003EF2F0;
  handler[3] = &unk_102450188;
  handler[4] = [objc_msgSend(-[CLPredictedWalkDistanceServiceCompanion universe](self "universe")];
  handler[5] = v10;
  xpc_activity_register("com.apple.locationd.P6MWD", XPC_ACTIVITY_CHECK_IN, handler);
  if (v20)
  {
    sub_100008080(v20);
  }
}

- (void)setUpAggregationOnTimer
{
  selfCopy = self;
  ptr = self->fBoutAggregator.__ptr_;
  v5 = ptr[1];
  v4 = ptr[2];
  if (v5 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *ptr) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10028C64C();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *ptr) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_10013E290(self->fBoutAggregator.__ptr_, v10);
    }

    v11 = 24 * v7;
    *v11 = xmmword_101C76360;
    *(v11 + 16) = 0;
    p_fBoutAggregator = 24 * v7 + 24;
    v12 = ptr[1] - *ptr;
    v13 = 24 * v7 - v12;
    memcpy((v11 - v12), *ptr, v12);
    self = *ptr;
    *ptr = v13;
    ptr[1] = p_fBoutAggregator;
    ptr[2] = 0;
    if (self)
    {
      operator delete(self);
    }
  }

  else
  {
    *v5->CLIntersiloService_opaque = xmmword_101C76360;
    LOBYTE(v5->fBoutDb.__cntrl_) = 0;
    p_fBoutAggregator = &v5->fBoutAggregator;
  }

  ptr[1] = p_fBoutAggregator;
  v21 = 86400;
  v14 = sub_100011660(self, a2);
  sub_100185AC0(v14, &v19);
  sub_10005BBE4(v19, "P6MWDAggregationTimeInterval", &v21);
  if (v20)
  {
    sub_100008080(v20);
  }

  v15 = 1000000000 * v21;
  v16 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, [objc_msgSend(-[dispatch_object_t universe](selfCopy "universe")]);
  selfCopy[4] = v16;
  dispatch_source_set_timer(v16, 0, v15, 0xDF8475800uLL);
  v17 = selfCopy[4];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1003EF870;
  v18[3] = &unk_102447418;
  v18[4] = selfCopy;
  dispatch_source_set_event_handler(v17, v18);
  dispatch_resume(selfCopy[4]);
}

- (void)onP6MWDActivity:(id)activity
{
  if (activity)
  {
    state = xpc_activity_get_state(activity);
    if (state == 4 || (v6 = state, state == 2))
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v7 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Preparing to make weekly 6MWD prediction", &v10, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187D6FC();
      }

      [(CLPredictedWalkDistanceServiceCompanion *)self getSixMinuteWalkDistancePrediction:activity];
    }

    else
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v9 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
      {
        v10 = 134217984;
        v11 = v6;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "Unexpected activity state: %ld", &v10, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10187D7D8();
      }
    }
  }

  else
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v8 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Invalid xpc activity.", &v10, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187D8D0();
    }
  }
}

- (void)getSixMinuteWalkDistancePrediction:(id)prediction
{
  if (objc_opt_class() && ![(CLPredictedWalkDistanceServiceCompanion *)self isWheelchairMode])
  {
    Current = CFAbsoluteTimeGetCurrent();
    v134 = 0.0;
    v9 = sub_100011660(v7, v8);
    sub_100185AC0(v9, buf);
    sub_1000B9370(*buf, "kP6MWDNextEstimateTime", &v134);
    v11 = *&buf[8];
    if (*&buf[8])
    {
      sub_100008080(*&buf[8]);
    }

    if (Current >= v134)
    {
      v133 = *self->fP6MWDEstimator.__ptr_;
      v13 = sub_100011660(v11, v10);
      sub_100185AC0(v13, buf);
      v14 = sub_10005BBE4(*buf, "P6MWDActivityHistoryDuration", &v133);
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }

      v15 = v133;
      if (v14)
      {
        *self->fP6MWDEstimator.__ptr_ = v133;
      }

      v16 = +[NSDate date];
      v17 = [(NSDate *)v16 dateByAddingTimeInterval:v15 * -86400.0];
      v18 = dispatch_group_create();
      v131[0] = 0;
      v131[1] = v131;
      v131[2] = 0x2020000000;
      v132 = 0;
      v129[0] = 0;
      v129[1] = v129;
      v129[2] = 0x2020000000;
      v130 = 0;
      v125[0] = 0;
      v125[1] = v125;
      v125[2] = 0x4812000000;
      v125[3] = sub_1000473E0;
      v125[4] = sub_1000483B4;
      v125[5] = &unk_10238AE8B;
      v128 = 0;
      v126 = 0;
      v127 = 0;
      v121[0] = 0;
      v121[1] = v121;
      v121[2] = 0x4812000000;
      v121[3] = sub_1003F118C;
      v121[4] = sub_1003F11B0;
      v121[5] = &unk_10238AE8B;
      v124 = 0;
      v122 = 0;
      v123 = 0;
      v117[0] = 0;
      v117[1] = v117;
      v117[2] = 0x4812000000;
      v117[3] = sub_1003F118C;
      v117[4] = sub_1003F11B0;
      v117[5] = &unk_10238AE8B;
      v120 = 0;
      v118 = 0;
      v119 = 0;
      v113[0] = 0;
      v113[1] = v113;
      v113[2] = 0x4812000000;
      v113[3] = sub_1003F118C;
      v113[4] = sub_1003F11B0;
      v113[5] = &unk_10238AE8B;
      v116 = 0;
      v114 = 0;
      v115 = 0;
      v109[0] = 0;
      v109[1] = v109;
      v109[2] = 0x4812000000;
      v109[3] = sub_1003F118C;
      v109[4] = sub_1003F11B0;
      v109[5] = &unk_10238AE8B;
      v112 = 0;
      v110 = 0;
      v111 = 0;
      v105[0] = 0;
      v105[1] = v105;
      v105[2] = 0x4812000000;
      v105[3] = sub_1003F118C;
      v105[4] = sub_1003F11B0;
      v105[5] = &unk_10238AE8B;
      v108 = 0;
      v106 = 0;
      v107 = 0;
      v101[0] = 0;
      v101[1] = v101;
      v101[2] = 0x4812000000;
      v101[3] = sub_1003F11C8;
      v101[4] = sub_1003F11EC;
      v101[5] = &unk_10238AE8B;
      v104 = 0;
      v102 = 0;
      v103 = 0;
      v97[0] = 0;
      v97[1] = v97;
      v97[2] = 0x4812000000;
      v97[3] = sub_1003F1204;
      v97[4] = sub_1003F1228;
      v97[5] = &unk_10238AE8B;
      v100 = 0;
      v98 = 0;
      v99 = 0;
      v93[0] = 0;
      v93[1] = v93;
      v93[2] = 0x4812000000;
      v93[3] = sub_1003F1204;
      v93[4] = sub_1003F1228;
      v93[5] = &unk_10238AE8B;
      v96 = 0;
      v94 = 0;
      v95 = 0;
      v89[0] = 0;
      v89[1] = v89;
      v89[2] = 0x4812000000;
      v89[3] = sub_1003F1240;
      v89[4] = sub_1003F1264;
      v89[5] = &unk_10238AE8B;
      v92 = 0;
      __p = 0;
      v91 = 0;
      v85[0] = 0;
      v85[1] = v85;
      v85[2] = 0x5812000000;
      v85[3] = sub_1003F127C;
      v85[4] = nullsub_100;
      v85[5] = &unk_10238AE8B;
      v86 = 0;
      v87 = 0u;
      v88 = 0u;
      v81[0] = 0;
      v81[1] = v81;
      v81[2] = 0x5812000000;
      v81[3] = sub_1003F127C;
      v81[4] = nullsub_100;
      v81[5] = &unk_10238AE8B;
      v82 = 0;
      v83 = 0u;
      v84 = 0u;
      dispatch_group_enter(v18);
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003F1294;
      block[3] = &unk_1024501B0;
      block[4] = self;
      v62 = v17;
      block[5] = v17;
      block[8] = v125;
      block[9] = v131;
      block[6] = v16;
      block[7] = v18;
      dispatch_async(global_queue, block);
      v20 = [objc_msgSend(objc_msgSend(objc_msgSend(-[CLPredictedWalkDistanceServiceCompanion universe](self "universe")];
      v71 = 0;
      v72 = &v71;
      v73 = 0x7012000000;
      v74 = sub_1003F1494;
      v75 = nullsub_101;
      v76 = &unk_10238AE8B;
      v77 = xmmword_101C763B0;
      v78 = unk_101C763C0;
      v79[0] = xmmword_101C763D0;
      *(v79 + 12) = *(&xmmword_101C763D0 + 12);
      v21 = [v20 objectForKey:CMNatalimeterSetUserAgeYr];
      if (v21)
      {
        v22 = v72;
        [v21 floatValue];
        *(v22 + 104) = 1;
        *(v22 + 17) = v23;
      }

      v24 = [v20 objectForKey:CMNatalimeterSetUserHeightMeter];
      if (v24)
      {
        v25 = v72;
        [v24 floatValue];
        *(v25 + 105) = 1;
        *(v25 + 14) = v26;
      }

      [objc_msgSend(v20 objectForKey:{CMNatalimeterSetUserWeightKG), "floatValue"}];
      *(v72 + 15) = v27;
      v28 = [objc_msgSend(v20 objectForKey:{CMNatalimeterSetUserBiologicalSex), "intValue"}];
      *(v72 + 13) = v28;
      if (qword_1025D4430 != -1)
      {
        sub_10187CF34();
      }

      v29 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
      {
        v30 = *(v72 + 17);
        v31 = *(v72 + 14);
        v32 = *(v72 + 15);
        *buf = 134284033;
        *&buf[4] = v30;
        *&buf[12] = 2049;
        *&buf[14] = v31;
        v143 = 2049;
        v144 = v32;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "Retrieved demographics: age=%{private}.0f, height=%{private}.2f, weight=%{private}.1f", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187CF5C(buf);
        v50 = *(v72 + 17);
        v51 = *(v72 + 14);
        v52 = *(v72 + 15);
        v136 = 134284033;
        v137 = v50;
        v138 = 2049;
        v139 = v51;
        v140 = 2049;
        v141 = v52;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4438, 2, "Retrieved demographics: age=%{private}.0f, height=%{private}.2f, weight=%{private}.1f", &v136, 32);
        v54 = v53;
        sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion getSixMinuteWalkDistancePrediction:]", "%s\n", v53);
        if (v54 != buf)
        {
          free(v54);
        }
      }

      v33 = objc_alloc_init(CMPedometer);
      dispatch_group_enter(v18);
      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = sub_1003F14B4;
      v70[3] = &unk_1024501D8;
      v70[5] = v97;
      v70[4] = v18;
      [v33 queryRemoteStepCadenceToStrideLengthBinsWithHandler:v70];
      dispatch_group_enter(v18);
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_1003F17CC;
      v69[3] = &unk_1024501D8;
      v69[5] = v93;
      v69[4] = v18;
      [v33 queryStepCadenceToStrideLengthBinsWithHandler:v69];
      dispatch_group_enter(v18);
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_1003F1AE4;
      v68[3] = &unk_102450200;
      v68[4] = self;
      v68[5] = v16;
      v68[8] = v131;
      v68[7] = v89;
      v68[6] = v18;
      dispatch_async(global_queue, v68);
      v34 = [(NSDate *)v62 dateByAddingTimeInterval:-86400.0];
      if (qword_1025D4430 != -1)
      {
        sub_10187CF34();
      }

      v35 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
      {
        [(NSDate *)v34 timeIntervalSinceReferenceDate];
        v37 = v36;
        [(NSDate *)v16 timeIntervalSinceReferenceDate];
        *buf = 134349312;
        *&buf[4] = v37;
        *&buf[12] = 2050;
        *&buf[14] = v38;
        _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "HealthKit queries from %{public}.0f to %{public}.0f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187CF5C(buf);
        v55 = qword_1025D4438;
        [(NSDate *)v34 timeIntervalSinceReferenceDate];
        v57 = v56;
        [(NSDate *)v16 timeIntervalSinceReferenceDate];
        v136 = 134349312;
        v137 = v57;
        v138 = 2050;
        v139 = v58;
        LODWORD(v61) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v55, 2, "HealthKit queries from %{public}.0f to %{public}.0f", &v136, v61);
        v60 = v59;
        sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion getSixMinuteWalkDistancePrediction:]", "%s\n", v59);
        if (v60 != buf)
        {
          free(v60);
        }
      }

      v39 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
      v40 = [(NSCalendar *)v39 components:30 fromDate:v34];
      [(NSDateComponents *)v40 setCalendar:v39];
      v41 = [(NSCalendar *)v39 components:30 fromDate:v16];
      [(NSDateComponents *)v41 setCalendar:v39];
      v42 = [HKQuery predicateForActivitySummariesBetweenStartDateComponents:v40 endDateComponents:v41];
      dispatch_group_enter(v18);
      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = sub_1003F1CC4;
      v67[3] = &unk_102450250;
      v67[6] = v131;
      v67[7] = v121;
      v67[8] = v113;
      v67[9] = v109;
      v67[4] = self;
      v67[5] = v18;
      v43 = [[HKActivitySummaryQuery alloc] initWithPredicate:v42 resultsHandler:v67];
      [(HKHealthStore *)self->fHkHealthStore executeQuery:v43];

      v44 = [HKQuery predicateForSamplesWithStartDate:v34 endDate:v16 options:3];
      v45 = +[HKQuery _predicateForObjectsFromAppleWatches];
      v135[0] = v44;
      v135[1] = v45;
      v46 = [NSCompoundPredicate andPredicateWithSubpredicates:[NSArray arrayWithObjects:v135 count:2]];
      dispatch_group_enter(v18);
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_1003F24EC;
      v66[3] = &unk_102450278;
      v66[6] = v131;
      v66[7] = v101;
      v66[8] = v85;
      v66[9] = v81;
      v66[4] = self;
      v66[5] = v18;
      v47 = [[HKSampleQuery alloc] initWithSampleType:+[HKSampleType workoutType](HKSampleType predicate:"workoutType") limit:v46 sortDescriptors:0 resultsHandler:{0, v66}];
      [(HKHealthStore *)self->fHkHealthStore executeQuery:v47];

      dispatch_group_enter(v18);
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_1003F2CBC;
      v65[3] = &unk_1024502C8;
      v65[6] = v131;
      v65[7] = v105;
      v65[4] = self;
      v65[5] = v18;
      v48 = [[HKSampleQuery alloc] initWithSampleType:+[HKObjectType categoryTypeForIdentifier:](HKObjectType predicate:"categoryTypeForIdentifier:" limit:HKCategoryTypeIdentifierAppleStandHour) sortDescriptors:v46 resultsHandler:{0, 0, v65}];
      [(HKHealthStore *)self->fHkHealthStore executeQuery:v48];

      dispatch_group_enter(v18);
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_1003F3250;
      v64[3] = &unk_102450318;
      v64[6] = v131;
      v64[7] = v129;
      v64[8] = v117;
      v64[4] = self;
      v64[5] = v18;
      v49 = [[HKSampleQuery alloc] initWithSampleType:+[HKSampleType quantityTypeForIdentifier:](HKSampleType predicate:"quantityTypeForIdentifier:" limit:HKQuantityTypeIdentifierFlightsClimbed) sortDescriptors:v44 resultsHandler:{0, 0, v64}];
      [(HKHealthStore *)self->fHkHealthStore executeQuery:v49];

      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_1003F38EC;
      v63[3] = &unk_102450340;
      v63[4] = v18;
      v63[5] = prediction;
      v63[8] = v131;
      v63[9] = v125;
      v63[6] = self;
      v63[7] = v16;
      v63[10] = v121;
      v63[11] = v105;
      v63[12] = v97;
      v63[13] = &v71;
      v63[14] = v93;
      v63[15] = v89;
      v63[16] = v129;
      v63[17] = v117;
      v63[18] = v109;
      v63[19] = v113;
      v63[20] = v101;
      v63[21] = v85;
      v63[22] = v81;
      dispatch_group_notify(v18, [objc_msgSend(-[CLPredictedWalkDistanceServiceCompanion universe](self "universe")], v63);
      _Block_object_dispose(&v71, 8);
      _Block_object_dispose(v81, 8);
      _Block_object_dispose(v85, 8);
      _Block_object_dispose(v89, 8);
      if (__p)
      {
        v91 = __p;
        operator delete(__p);
      }

      _Block_object_dispose(v93, 8);
      if (v94)
      {
        v95 = v94;
        operator delete(v94);
      }

      _Block_object_dispose(v97, 8);
      if (v98)
      {
        v99 = v98;
        operator delete(v98);
      }

      _Block_object_dispose(v101, 8);
      if (v102)
      {
        v103 = v102;
        operator delete(v102);
      }

      _Block_object_dispose(v105, 8);
      if (v106)
      {
        v107 = v106;
        operator delete(v106);
      }

      _Block_object_dispose(v109, 8);
      if (v110)
      {
        v111 = v110;
        operator delete(v110);
      }

      _Block_object_dispose(v113, 8);
      if (v114)
      {
        v115 = v114;
        operator delete(v114);
      }

      _Block_object_dispose(v117, 8);
      if (v118)
      {
        v119 = v118;
        operator delete(v118);
      }

      _Block_object_dispose(v121, 8);
      if (v122)
      {
        v123 = v122;
        operator delete(v122);
      }

      _Block_object_dispose(v125, 8);
      if (v126)
      {
        v127 = v126;
        operator delete(v126);
      }

      _Block_object_dispose(v129, 8);
      _Block_object_dispose(v131, 8);
    }

    else
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CF34();
      }

      v12 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "kP6MWDNextEstimateTime";
        *&buf[12] = 2050;
        *&buf[14] = v134;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "Estimate should not be made now. %{public}s is in the future (%{public}.2f). Resetting!", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10187D9B4();
      }

      [(CLPredictedWalkDistanceServiceCompanion *)self completeActivity:prediction withNextEstimateTime:v134];
    }
  }

  else
  {
    v5 = CFAbsoluteTimeGetCurrent() + self->fP6MWDPredictionInterval;

    [(CLPredictedWalkDistanceServiceCompanion *)self completeActivity:prediction withNextEstimateTime:v5];
  }
}

- (void)completeActivity:(id)activity withNextEstimateTime:(double)time
{
  timeCopy = time;
  v6 = sub_100011660(self, a2);
  sub_100185AC0(v6, buf);
  sub_100116D68(*buf, "kP6MWDNextEstimateTime", &timeCopy);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if (!xpc_activity_set_state(activity, 5))
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CF34();
    }

    v7 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_FAULT))
    {
      state = xpc_activity_get_state(activity);
      *buf = 136446466;
      *&buf[4] = "com.apple.locationd.P6MWD";
      *&buf[12] = 2050;
      *&buf[14] = state;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Failed to mark %{public}s activity as Done. Current state is %{public}ld", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187ED94(activity);
    }
  }

  [(CLPredictedWalkDistanceServiceCompanion *)self scheduleEstimate];
}

- (void)writeToHealthKitPrediction:(double)prediction estimateTime:(double)time earliestTimeUsed:(double)used calibrationStatus:(BOOL)status
{
  statusCopy = status;
  if (objc_opt_class())
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v11 = round(prediction);
    v12 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134350081;
      timeCopy = time;
      v34 = 2050;
      timeCopy2 = time;
      v36 = 2049;
      v37 = v11;
      v38 = 1025;
      v39 = statusCopy;
      v40 = 2049;
      usedCopy = used;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Writing predicted 6MWD to HealthKit, startTime: %{public}f, endTime: %{public}f, prediction: %{private}f, calibrationStatus: %{private}d, earliestTimeUsed: %{private}f", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4430 != -1)
      {
        sub_10187CF34();
      }

      v22 = 134350081;
      timeCopy3 = time;
      v24 = 2050;
      timeCopy4 = time;
      v26 = 2049;
      v27 = v11;
      v28 = 1025;
      v29 = statusCopy;
      v30 = 2049;
      usedCopy2 = used;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4438, 2, "Writing predicted 6MWD to HealthKit, startTime: %{public}f, endTime: %{public}f, prediction: %{private}f, calibrationStatus: %{private}d, earliestTimeUsed: %{private}f", &v22, 48);
      v20 = v19;
      sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion writeToHealthKitPrediction:estimateTime:earliestTimeUsed:calibrationStatus:]", "%s\n", v19);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    v13 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierSixMinuteWalkTestDistance];
    v14 = objc_opt_new();
    v15 = v14;
    if (statusCopy)
    {
      v16 = &__kCFBooleanTrue;
    }

    else
    {
      v16 = &__kCFBooleanFalse;
    }

    [v14 setObject:v16 forKeyedSubscript:HKMetadataKeyAppleDeviceCalibrated];
    if (used != 0.0)
    {
      [v15 setObject:+[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate forKeyedSubscript:{"dateWithTimeIntervalSinceReferenceDate:", used), HKMetadataKeyDateOfEarliestDataUsedForEstimate}];
    }

    v17 = [HKQuantitySample quantitySampleWithType:v13 quantity:[HKQuantity quantityWithUnit:[HKUnit unitFromString:@"m"] doubleValue:v11] startDate:[NSDate dateWithTimeIntervalSinceReferenceDate:time] endDate:[NSDate dateWithTimeIntervalSinceReferenceDate:time] metadata:v15];
    fHkHealthStore = self->fHkHealthStore;
    v21 = v17;
    [(HKHealthStore *)fHkHealthStore saveObjects:[NSArray withCompletion:"arrayWithObjects:count:" arrayWithObjects:1 count:?], &stru_102450380];
  }
}

- (void)receivePredictedWalkDistanceBout:(id)bout
{
  if (qword_1025D4430 != -1)
  {
    sub_10187CE3C();
  }

  v5 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Received message in CLPredictedWalkDistanceServiceCompanion", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187F08C();
  }

  *buf = 0;
  *&buf[8] = 0;
  v25 = 0;
  v26 = 0;
  v28 = 0;
  v27 = 0uLL;
  v29 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  [bout getBytes:buf length:120];
  if (qword_1025D4430 != -1)
  {
    sub_10187CF34();
  }

  v6 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 134283777;
    *&v34[4] = *&buf[8];
    *&v34[12] = 2049;
    *&v34[14] = v25;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Received bout from watch...,startTime,%{private}f,endTime,%{private}f", v34, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187F170(&buf[8]);
  }

  sub_1003F5018(self->fBoutDb.__ptr_, buf, 0);
  if (DWORD2(v30) == 1)
  {
    operator new();
  }

  if (self->fPendingWatchBouts.__size_)
  {
    while (1)
    {
      next = self->fPendingWatchBouts.__end_.__next_;
      v8 = next[1];
      v9 = next[2];
      v10 = next[4];
      v35 = next[3];
      v36 = v10;
      v11 = next[5];
      v12 = next[7];
      v38 = next[6];
      v39 = v12;
      v40 = *(next + 16);
      v37 = v11;
      ptr = self->fGaitMetricsDb.__ptr_;
      v14 = ptr + 416;
      v15 = ptr == 0;
      v16 = self->fWalkingSpeedCalDb.__ptr_;
      v17 = v15 ? 0 : v14;
      v18 = v16 ? v16 + 368 : 0;
      *v34 = v8;
      *&v34[16] = v9;
      if (sub_1006267A8(v34, v17, v18) == 109)
      {
        break;
      }

      v19 = self->fPendingWatchBouts.__end_.__next_;
      v21 = *v19;
      v20 = v19[1];
      *(v21 + 8) = v20;
      *v20 = v21;
      --self->fPendingWatchBouts.__size_;
      operator delete(v19);
      if (!self->fPendingWatchBouts.__size_)
      {
        return;
      }
    }

    if (qword_1025D4430 != -1)
    {
      sub_10187CF34();
    }

    v22 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      v23[0] = 0;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "Gait Metrics unavailable, likely because device is locked.", v23, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187F284();
    }
  }
}

- (void)onUserInfoUpdate:(const int *)update data:(const void *)data
{
  [-[CLPredictedWalkDistanceServiceCompanion universe](self "universe")];
  if (*update == 2)
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v7 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLPredictedWalkDistanceServiceCompanion: Received user info update", v13, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187F464();
    }

    v9 = *(data + 1);
    v8 = *(data + 2);
    v10 = *data;
    *&self->fUserInfo.runVo2max = *(data + 44);
    *&self->fUserInfo.vo2max = v9;
    *&self->fUserInfo.hronset = v8;
    *&self->fUserInfo.gender = v10;
  }

  else
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v11 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *update;
      v13[0] = 67109120;
      v13[1] = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Unhandled notification type, %d", v13, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187F368(update);
    }
  }
}

- (void)sendAnalyticsWeeklyEstimate:(CLPredictedWalkDistanceEstimate *)estimate strideCalInfo:(StrideCalInfo *)info walkingWorkoutPaceStats:(CLRunningStat *)stats runningWorkoutPaceStats:(CLRunningStat *)paceStats userInfo:(CLBodyMetrics *)userInfo
{
  if (objc_opt_class() && ([+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")] & 1) != 0)
  {
    v13 = estimate->var0 + -7862400.0;
    v14 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:estimate->var0];
    v15 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v13];
    v35 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierSixMinuteWalkTestDistance];
    v16 = [HKQuery predicateForSamplesWithStartDate:v15 endDate:v14 options:3];
    v17 = [HKSampleQuery alloc];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1003F5540;
    v36[3] = &unk_1024503D0;
    v36[4] = self;
    v18 = *&estimate->var34;
    v51 = *&estimate->var32;
    v52 = v18;
    v19 = *&estimate->var29;
    v49 = *&estimate->var27;
    v50 = v19;
    v20 = *&estimate->var21;
    v45 = *&estimate->var19;
    v46 = v20;
    v21 = *&estimate->var25;
    v47 = *&estimate->var23;
    v48 = v21;
    v22 = *&estimate->var10;
    v41 = *&estimate->var8;
    v42 = v22;
    v23 = *&estimate->var16;
    v43 = *&estimate->var14;
    v44 = v23;
    v24 = *&estimate->var2;
    v37 = *&estimate->var0;
    v38 = v24;
    v25 = *&estimate->var6;
    v39 = *&estimate->var4;
    v40 = v25;
    v26 = *&info->var7;
    v55 = *&info->var5;
    v56 = v26;
    v27 = *&info->var3;
    v53 = *&info->var0;
    v54 = v27;
    var9 = info->var9;
    v28 = *&stats->var2;
    v58 = *&stats->var0;
    v59 = v28;
    var4 = stats->var4;
    v30 = paceStats->var4;
    v31 = *&paceStats->var2;
    v61 = *&paceStats->var0;
    v62 = v31;
    v60 = var4;
    v63 = v30;
    *(v66 + 12) = *&userInfo->runVo2max;
    v32 = *&userInfo->hronset;
    v65 = *&userInfo->vo2max;
    v66[0] = v32;
    v64 = *&userInfo->gender;
    v33 = [v17 initWithSampleType:v35 predicate:v16 limit:0 sortDescriptors:0 resultsHandler:v36];
    [(HKHealthStore *)self->fHkHealthStore executeQuery:v33];
  }

  else
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v34 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "Not sending analytics, no IHA permission", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187F540();
    }
  }
}

- (void)sendToCoreAnalyticsWeeklyEstimate:(const CLPredictedWalkDistanceEstimateAnalytics *)estimate
{
  if ((atomic_load_explicit(&qword_102656240, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102656240))
  {
    v6 = 1119092736;
    *v3 = xmmword_101C763EC;
    *&v3[16] = unk_101C763FC;
    v4 = xmmword_101C7640C;
    v5 = unk_101C7641C;
    qword_102656230 = 0;
    unk_102656238 = 0;
    qword_102656228 = 0;
    sub_1003F6D44(&qword_102656228, v3, &v7, 0x11uLL);
    __cxa_atexit(sub_1003F5F88, &qword_102656228, dword_100000000);
    __cxa_guard_release(&qword_102656240);
  }

  if ((atomic_load_explicit(&qword_102656260, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102656260))
  {
    *v3 = xmmword_101C76430;
    *&v3[12] = *(&xmmword_101C76430 + 12);
    qword_102656250 = 0;
    unk_102656258 = 0;
    qword_102656248 = 0;
    sub_1003F6D44(&qword_102656248, v3, &v3[28], 7uLL);
    __cxa_atexit(sub_1003F5F88, &qword_102656248, dword_100000000);
    __cxa_guard_release(&qword_102656260);
  }

  if ((atomic_load_explicit(&qword_102656280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102656280))
  {
    *v3 = xmmword_101C7644C;
    *&v3[12] = *(&xmmword_101C7644C + 12);
    qword_102656270 = 0;
    unk_102656278 = 0;
    qword_102656268 = 0;
    sub_1003F6D44(&qword_102656268, v3, &v3[28], 7uLL);
    __cxa_atexit(sub_1003F5F88, &qword_102656268, dword_100000000);
    __cxa_guard_release(&qword_102656280);
  }

  AnalyticsSendEventLazy();
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 8) = self + 64;
  *(self + 9) = self + 64;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  return self;
}

@end