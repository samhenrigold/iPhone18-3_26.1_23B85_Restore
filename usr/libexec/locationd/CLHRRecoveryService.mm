@interface CLHRRecoveryService
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (BOOL)shouldForceWriteSampleToHealthKit;
- (CLHRRecoveryService)init;
- (id).cxx_construct;
- (unint64_t)mapWorkoutTypeToHKWorkoutActivityType:(int64_t)type;
- (void)beginService;
- (void)endService;
- (void)forceWriteSampleToHealthKit:(const WorkoutEvent *)kit;
- (void)logBodyMetrics:(const CLBodyMetrics *)metrics;
- (void)logSessionStats:(const HRRecoveryResult *)stats;
- (void)logVO2MaxStats:(const VO2MaxResult *)stats;
- (void)onCatherineNotification:(const int *)notification data:(const NotificationData *)data;
- (void)onHRRecoveryEstimate:(HRRecoveryResult *)estimate;
- (void)onHRRecoverySessionEnd;
- (void)onHRRecoverySessionStart;
- (void)onMotionStateMediatorNotification:(const int *)notification data:(const NotificationData *)data;
- (void)onNatalimetryNotification:(const int *)notification data:(const void *)data;
- (void)sendAnalytics;
- (void)setUpAggregationOnTimer;
- (void)storeHRRecoveryToHealthKit:(const HRRecoveryResult *)kit;
@end

@implementation CLHRRecoveryService

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
  if (qword_102656468 != -1)
  {
    sub_101896D20();
  }

  return qword_102656460;
}

- (CLHRRecoveryService)init
{
  v3.receiver = self;
  v3.super_class = CLHRRecoveryService;
  return [(CLHRRecoveryService *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLHRRecoveryServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CLHRRecoveryServiceClientProtocol];
}

+ (BOOL)isSupported
{
  if (qword_102656478 != -1)
  {
    sub_101896D34();
  }

  return byte_102656470;
}

- (void)beginService
{
  if (qword_1025D44F0 != -1)
  {
    sub_101896D48();
  }

  v2 = qword_1025D44F8;
  if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Starting up CLHRRecoveryService", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101896D5C();
  }

  sub_1004C5304();
}

- (void)endService
{
  if (qword_1025D44F0 != -1)
  {
    sub_101896D48();
  }

  v3 = qword_1025D44F8;
  if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Shutting down CLHRRecoveryService", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101896E78();
  }

  fAggregationTimer = self->fAggregationTimer;
  if (fAggregationTimer)
  {
    dispatch_source_cancel(fAggregationTimer);
    dispatch_release(self->fAggregationTimer);
    self->fAggregationTimer = 0;
  }

  self->fHkHealthStore = 0;
}

- (void)setUpAggregationOnTimer
{
  selfCopy = self;
  ptr = self->fInputHRAggregator.__ptr_;
  v5 = ptr[1];
  v4 = ptr[2];
  if (v5 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *ptr) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_40;
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
      sub_10013E290(self->fInputHRAggregator.__ptr_, v10);
    }

    v11 = 24 * v7;
    *v11 = xmmword_101C79F40;
    *(v11 + 16) = 0;
    p_fInputHRAggregator = 24 * v7 + 24;
    v12 = ptr[1] - *ptr;
    v13 = 24 * v7 - v12;
    memcpy((v11 - v12), *ptr, v12);
    self = *ptr;
    *ptr = v13;
    ptr[1] = p_fInputHRAggregator;
    ptr[2] = 0;
    if (self)
    {
      operator delete(self);
    }
  }

  else
  {
    *v5->CLIntersiloService_opaque = xmmword_101C79F40;
    LOBYTE(v5->fInputHRDb.__cntrl_) = 0;
    p_fInputHRAggregator = &v5->fInputHRAggregator;
  }

  ptr[1] = p_fInputHRAggregator;
  v14 = selfCopy->fInputWRAggregator.__ptr_;
  v16 = v14[1];
  v15 = v14[2];
  if (v16 >= v15)
  {
    v18 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *v14) >> 3);
    v19 = v18 + 1;
    if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_40;
    }

    v20 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *v14) >> 3);
    if (2 * v20 > v19)
    {
      v19 = 2 * v20;
    }

    if (v20 >= 0x555555555555555)
    {
      v21 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      sub_10013E290(selfCopy->fInputWRAggregator.__ptr_, v21);
    }

    v22 = 24 * v18;
    *v22 = xmmword_101C79F40;
    *(v22 + 16) = 0;
    v17 = 24 * v18 + 24;
    v23 = v14[1] - *v14;
    v24 = 24 * v18 - v23;
    memcpy((v22 - v23), *v14, v23);
    self = *v14;
    *v14 = v24;
    v14[1] = v17;
    v14[2] = 0;
    if (self)
    {
      operator delete(self);
    }
  }

  else
  {
    *v16 = xmmword_101C79F40;
    *(v16 + 16) = 0;
    v17 = v16 + 24;
  }

  v14[1] = v17;
  v25 = selfCopy->fSessionAggregator.__ptr_;
  v27 = v25[1];
  v26 = v25[2];
  if (v27 < v26)
  {
    *v27 = xmmword_101C79F50;
    *(v27 + 16) = 0;
    v28 = v27 + 24;
    goto LABEL_37;
  }

  v29 = 0xAAAAAAAAAAAAAAABLL * ((v27 - *v25) >> 3);
  v30 = v29 + 1;
  if (v29 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_40:
    sub_10028C64C();
  }

  v31 = 0xAAAAAAAAAAAAAAABLL * ((v26 - *v25) >> 3);
  if (2 * v31 > v30)
  {
    v30 = 2 * v31;
  }

  if (v31 >= 0x555555555555555)
  {
    v32 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v32 = v30;
  }

  if (v32)
  {
    sub_10013E290(selfCopy->fSessionAggregator.__ptr_, v32);
  }

  v33 = 24 * v29;
  *v33 = xmmword_101C79F50;
  *(v33 + 16) = 0;
  v28 = 24 * v29 + 24;
  v34 = v25[1] - *v25;
  v35 = 24 * v29 - v34;
  memcpy((v33 - v34), *v25, v34);
  self = *v25;
  *v25 = v35;
  v25[1] = v28;
  v25[2] = 0;
  if (self)
  {
    operator delete(self);
  }

LABEL_37:
  v25[1] = v28;
  v43 = 86400;
  v36 = sub_100011660(self, a2);
  sub_100185AC0(v36, &v41);
  sub_10005BBE4(v41, "HRRecoveryAggregationTimeInterval", &v43);
  if (v42)
  {
    sub_100008080(v42);
  }

  v37 = 1000000000 * v43;
  v38 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, [objc_msgSend(-[CLHRRecoveryService universe](selfCopy "universe")]);
  selfCopy->fAggregationTimer = v38;
  dispatch_source_set_timer(v38, 0, v37, 0xDF8475800uLL);
  fAggregationTimer = selfCopy->fAggregationTimer;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1004C23D0;
  v40[3] = &unk_102447418;
  v40[4] = selfCopy;
  dispatch_source_set_event_handler(fAggregationTimer, v40);
  dispatch_resume(selfCopy->fAggregationTimer);
}

- (void)onCatherineNotification:(const int *)notification data:(const NotificationData *)data
{
  [-[CLHRRecoveryService universe](self "universe")];
  if (*notification == 9)
  {
    ptr = self->fHRRecoveryEstimator.__ptr_;

    sub_1008D0F34(ptr, data);
  }

  else if (*notification == 7)
  {
    v7 = self->fHRRecoveryEstimator.__ptr_;
    v8 = *(data + 3);

    sub_1008D0E40(v7, v8);
  }

  else
  {
    if (qword_1025D44F0 != -1)
    {
      sub_101896D48();
    }

    v10 = qword_1025D44F8;
    if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_ERROR))
    {
      v11 = *notification;
      v12[0] = 67109120;
      v12[1] = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "CLHRRecoveryService: Unhandled notification type, %d", v12, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101897924(notification);
    }
  }
}

- (void)onMotionStateMediatorNotification:(const int *)notification data:(const NotificationData *)data
{
  [-[CLHRRecoveryService universe](self universe];
  if (*notification == 2)
  {
    sub_1008D1A30(self->fHRRecoveryEstimator.__ptr_, data);
    if (*(data + 2) == 1 && sub_1008D1D1C(self->fHRRecoveryEstimator.__ptr_, *(data + 12)) && sub_1008D1E10(self->fHRRecoveryEstimator.__ptr_, *(data + 26)) && [(CLHRRecoveryService *)self shouldForceWriteSampleToHealthKit])
    {

      [(CLHRRecoveryService *)self forceWriteSampleToHealthKit:data];
    }
  }

  else
  {
    if (qword_1025D44F0 != -1)
    {
      sub_101896D48();
    }

    v10 = qword_1025D44F8;
    if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_ERROR))
    {
      v11 = *notification;
      v12[0] = 67109120;
      v12[1] = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "CLHRRecoveryService: Unhandled notification type, %d", v12, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101897A1C(notification);
    }
  }
}

- (void)onNatalimetryNotification:(const int *)notification data:(const void *)data
{
  [-[CLHRRecoveryService universe](self "universe")];
  v7 = *notification;
  if (*notification == 9)
  {
    ptr = self->fHRRecoveryEstimator.__ptr_;
    v9 = *(data + 2);
    v10 = *(data + 26);
    v11 = *(data + 12);
    v12 = *(data + 4);
    v13 = *(data + 22);
    v14 = *(data + 39);

    sub_1008D17D4(ptr, v10, v13, v9, v14, v11, v12);
  }

  else if (v7 == 6)
  {

    [(CLHRRecoveryService *)self logVO2MaxStats:data];
  }

  else if (v7 == 2)
  {
    sub_1008D0CE8(self->fHRRecoveryEstimator.__ptr_, data);

    [(CLHRRecoveryService *)self logBodyMetrics:data];
  }

  else
  {
    if (qword_1025D44F0 != -1)
    {
      sub_101896D48();
    }

    v15 = qword_1025D44F8;
    if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_ERROR))
    {
      v16 = *notification;
      v17[0] = 67109120;
      v17[1] = v16;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "CLHRRecoveryService: Unhandled notification type, %d", v17, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101897B14(notification);
    }
  }
}

- (void)onHRRecoverySessionStart
{
  [*(self->fCatherineClient.__ptr_ + 2) register:*(self->fCatherineClient.__ptr_ + 1) forNotification:9 registrationInfo:0];
  ptr = self->fNatalimetryClient.__ptr_;
  v5 = *(ptr + 1);
  v4 = *(ptr + 2);

  [v4 register:v5 forNotification:9 registrationInfo:0];
}

- (void)onHRRecoverySessionEnd
{
  [*(self->fNatalimetryClient.__ptr_ + 2) unregister:*(self->fNatalimetryClient.__ptr_ + 1) forNotification:9];
  self->fSessionStats.biologicalSex = 0;
  __asm { FMOV            V0.2S, #-1.0 }

  *&self->fSessionStats.age = _D0;
  self->fSessionStats.betaBlockerUse = 0;
  self->fSessionStats.status = 0;
  *&self->fSessionStats.diffTimeRecoveryOnsetWorkout = vdupq_n_s64(0xC7EFFFFFE0000000);
  *&self->fSessionStats.hrRecovery = -1;
  __asm { FMOV            V2.4S, #-1.0 }

  *&self->fSessionStats.peakHR = xmmword_101C79F60;
  *&self->fSessionStats.recoveryLoad = _Q2;
  *&self->fSessionStats.recoveryMetsStdDev = _D0;
  self->fSessionStats.isOtherwiseEligibleForLongitudinal = 0;
  *&self->fSessionStats.hrRecoveryReference = _Q2;
  self->fSessionStats.isEligibleForHK = 0;
  *&self->fSessionStats.minHRAfterWorkoutEnd = _Q2;
  *&self->fSessionStats.hrmax = _D0;
  *&self->fSessionStats.estimationStatus = -14;
  *&self->fSessionStats.lambda = _D0;
  *&self->fSessionStats.explainedVarianceScore = 3212836864;
  self->fSessionStats.workoutType = 0;
  *&self->fSessionStats.sessionDuration = 0x1BF800000;
}

- (void)onHRRecoveryEstimate:(HRRecoveryResult *)estimate
{
  [(CLHRRecoveryService *)self logSessionStats:?];
  if ((estimate->var0 == 1 || estimate->var34) && estimate->var27)
  {

    [(CLHRRecoveryService *)self storeHRRecoveryToHealthKit:estimate];
  }
}

- (void)storeHRRecoveryToHealthKit:(const HRRecoveryResult *)kit
{
  if (objc_opt_class())
  {
    v5 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRateRecoveryOneMinute];
    v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:kit->var1];
    v7 = [HKQuantity quantityWithUnit:[HKUnit unitFromString:@"count/min"] doubleValue:kit->var2];
    v8 = objc_alloc_init(NSMutableDictionary);
    [v8 setObject:&off_10254E990 forKeyedSubscript:HKMetadataKeyAlgorithmVersion];
    [v8 setObject:&off_10254E9A8 forKeyedSubscript:HKMetadataKeyHeartRateRecoveryTestType];
    [v8 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", -[CLHRRecoveryService mapWorkoutTypeToHKWorkoutActivityType:](self, "mapWorkoutTypeToHKWorkoutActivityType:", kit->var4)), HKMetadataKeyHeartRateRecoveryActivityType}];
    [v8 setObject:+[HKQuantity quantityWithUnit:doubleValue:](HKQuantity forKeyedSubscript:{"quantityWithUnit:doubleValue:", +[HKUnit secondUnit](HKUnit, "secondUnit"), kit->var3), HKMetadataKeyHeartRateRecoveryActivityDuration}];
    if (kit->var17 > 0.0)
    {
      [v8 setObject:+[HKQuantity quantityWithUnit:doubleValue:](HKQuantity forKeyedSubscript:{"quantityWithUnit:doubleValue:", +[HKUnit unitFromString:](HKUnit, "unitFromString:", @"count/min", kit->var17), HKMetadataKeyHeartRateRecoveryMaxObservedRecoveryHeartRate}];
    }

    if (kit->var21)
    {
      v9 = &off_10254E9C0;
    }

    else
    {
      v9 = &off_10254E9A8;
    }

    [v8 setObject:v9 forKeyedSubscript:HKMetadataKeyUserMotionContext];
    if (kit->var5)
    {
      v10 = &__kCFBooleanTrue;
    }

    else
    {
      v10 = &__kCFBooleanFalse;
    }

    [v8 setObject:v10 forKeyedSubscript:_HKPrivateMetadataKeyUserOnBetaBlocker];
    if (kit->var0 == 1 && kit->var22 > 0.0)
    {
      [v8 setObject:+[HKQuantity quantityWithUnit:doubleValue:](HKQuantity forKeyedSubscript:{"quantityWithUnit:doubleValue:", +[HKUnit unitFromString:](HKUnit, "unitFromString:", @"count/min", kit->var22), HKMetadataKeySessionEstimate}];
    }

    v11 = [HKQuantitySample quantitySampleWithType:v5 quantity:v7 startDate:v6 endDate:v6 metadata:v8];
    fHkHealthStore = self->fHkHealthStore;
    v13 = v11;
    [(HKHealthStore *)fHkHealthStore saveObjects:[NSArray withCompletion:"arrayWithObjects:count:" arrayWithObjects:1 count:?], &stru_102457CC0];
  }
}

- (unint64_t)mapWorkoutTypeToHKWorkoutActivityType:(int64_t)type
{
  result = type;
  if (type <= 14)
  {
    if (type != 1)
    {
      if (type == 2)
      {
        return 37;
      }

      return 3000;
    }
  }

  else if (type != 15)
  {
    if (type == 24)
    {
      return result;
    }

    if (type == 17)
    {
      return 37;
    }

    return 3000;
  }

  return 52;
}

- (BOOL)shouldForceWriteSampleToHealthKit
{
  v11 = 0;
  v2 = sub_100011660(self, a2);
  sub_100185AC0(v2, &v9);
  sub_10001CB4C(v9, "ForceWriteHRRToHealthKit", &v11, 0xFFFFFFFFLL);
  v4 = v10;
  if (v10)
  {
    sub_100008080(v10);
  }

  v5 = sub_10001A3E8(v4, v3);
  v7 = sub_100328630(v5, v6);
  return v7 & v11;
}

- (void)forceWriteSampleToHealthKit:(const WorkoutEvent *)kit
{
  v50 = 0x4039000000000000;
  v5 = sub_100011660(self, a2);
  sub_100185AC0(v5, buf);
  sub_1000B9370(*buf, "FakeHRRValue", &v50);
  v7 = *&buf[8];
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  v49 = 0x4057C00000000000;
  v8 = sub_100011660(v7, v6);
  sub_100185AC0(v8, buf);
  sub_1000B9370(*buf, "FakeHRRMaxObservedRecoveryHR", &v49);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  ptr = self->fHRRecoveryEstimator.__ptr_;
  v24 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v25 = Current;
  v12 = v49;
  v11 = v50;
  v13 = kit->var1 - kit->var0;
  v26 = v50;
  v27 = v13;
  var2 = kit->var5.var2;
  v28 = var2;
  v15 = *(ptr + 144);
  v29 = v15;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  v33 = _Q1;
  v34 = 0u;
  v35 = 0u;
  v36 = v49;
  v48 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v40 = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 0;
  v47 = 0;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  if (qword_1025D44F0 != -1)
  {
    sub_101897DF0();
  }

  v21 = qword_1025D44F8;
  if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134284801;
    *&buf[4] = Current;
    *&buf[12] = 2049;
    *&buf[14] = v11;
    v64 = 2050;
    v65 = var2;
    v66 = 2050;
    v67 = v13;
    v68 = 2049;
    v69 = v12;
    v70 = 1025;
    v71 = v15;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "Forcing a fake HR Recovery sample to HealthKit: timeOfEstimate, %{private}f, hrRecovery, %{private}f, workoutType, %{public}ld, activityDuration, %{public}f, maxRecoveryHR, %{private}f, betaBlockerUse, %{private}d", buf, 0x3Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D44F0 != -1)
    {
      sub_101897DF0();
    }

    v51 = 134284801;
    v52 = Current;
    v53 = 2049;
    v54 = v11;
    v55 = 2050;
    v56 = var2;
    v57 = 2050;
    v58 = v13;
    v59 = 2049;
    v60 = v12;
    v61 = 1025;
    v62 = v15;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44F8, 0, "Forcing a fake HR Recovery sample to HealthKit: timeOfEstimate, %{private}f, hrRecovery, %{private}f, workoutType, %{public}ld, activityDuration, %{public}f, maxRecoveryHR, %{private}f, betaBlockerUse, %{private}d", &v51, 58);
    v23 = v22;
    sub_100152C7C("Generic", 1, 0, 2, "[CLHRRecoveryService forceWriteSampleToHealthKit:]", "%s\n", v22);
    if (v23 != buf)
    {
      free(v23);
    }
  }

  [(CLHRRecoveryService *)self storeHRRecoveryToHealthKit:&v24];
}

- (void)logBodyMetrics:(const CLBodyMetrics *)metrics
{
  [-[CLHRRecoveryService universe](self "universe")];
  self->fSessionStats.age = metrics->age;
  self->fSessionStats.biologicalSex = metrics->biologicalSex;
  self->fSessionStats.betaBlockerUse = metrics->betaBlockerUse;
  weightKG = metrics->weightKG;
  if (weightKG != 0.0)
  {
    heightM = metrics->heightM;
    if (heightM != 0.0)
    {
      self->fSessionStats.userBMI = weightKG / (heightM * heightM);
    }
  }

  self->fSessionStats.hrmax = metrics->hrmax;
}

- (void)logVO2MaxStats:(const VO2MaxResult *)stats
{
  [-[CLHRRecoveryService universe](self "universe")];
  v5 = llround(stats->var2);
  var13 = stats->var13;
  self->fSessionStats.estimationStatus = stats->var12;
  self->fSessionStats.vo2MaxValue = v5;
  self->fSessionStats.sessionType = var13;
}

- (void)logSessionStats:(const HRRecoveryResult *)stats
{
  [-[CLHRRecoveryService universe](self "universe")];
  p_fSessionStats = &self->fSessionStats;
  self->fSessionStats.status = stats->var0;
  var3 = stats->var3;
  self->fSessionStats.sessionDuration = var3;
  self->fSessionStats.workoutType = stats->var4;
  var6 = stats->var6;
  self->fSessionStats.diffTimeRecoveryOnsetWorkout = stats->var7 - var6;
  self->fSessionStats.diffTimeTDropWorkoutEnd = stats->var13 - var6;
  self->fSessionStats.hrRecovery = llround(stats->var2);
  self->fSessionStats.hrRecoverySession = llround(stats->var22);
  var29 = stats->var29;
  v9.f64[0] = stats->var14;
  var15 = stats->var15;
  v9.f64[1] = var29 - var15;
  *&self->fSessionStats.peakHR = vcvt_hight_f32_f64(vcvt_f32_f64(*&stats->var8), v9);
  *&self->fSessionStats.recoveryLoad = vcvt_hight_f32_f64(vcvt_f32_f64(*&stats->var16), *&stats->var18);
  var20 = stats->var20;
  self->fSessionStats.recoveryMetsStdDev = var20;
  var24 = stats->var24;
  self->fSessionStats.biasAdjustment = var24;
  self->fSessionStats.isOtherwiseEligibleForLongitudinal = stats->var34;
  v13 = var15;
  *&var29 = var29;
  self->fSessionStats.hrRecoveryReference = v13;
  self->fSessionStats.hrRecoveryReferencePeak = *&var29;
  var28 = stats->var28;
  self->fSessionStats.hrOneMinPostRecovery = var28;
  var30 = stats->var30;
  self->fSessionStats.hrOneMinExponential = var30;
  self->fSessionStats.isEligibleForHK = stats->var27;
  v16.f64[0] = stats->var33;
  v16.f64[1] = stats->var35;
  *&self->fSessionStats.minHRAfterWorkoutEnd = vcvt_hight_f32_f64(vcvt_f32_f64(*&stats->var31), v16);
  var23 = stats->var23;
  self->fSessionStats.peakHrOneMinusFhr = var23;
  *&self->fSessionStats.lambda = vcvt_f32_f64(*&stats->var10);
  var12 = stats->var12;
  self->fSessionStats.explainedVarianceScore = var12;
  if (qword_1025D44F0 != -1)
  {
    sub_101896D48();
  }

  v19 = qword_1025D44F8;
  if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_DEBUG))
  {
    age = self->fSessionStats.age;
    biologicalSex = p_fSessionStats->biologicalSex;
    betaBlockerUse = self->fSessionStats.betaBlockerUse;
    userBMI = self->fSessionStats.userBMI;
    sevenDayRestingHR = self->fSessionStats.sevenDayRestingHR;
    hrmax = self->fSessionStats.hrmax;
    status = self->fSessionStats.status;
    diffTimeRecoveryOnsetWorkout = self->fSessionStats.diffTimeRecoveryOnsetWorkout;
    diffTimeTDropWorkoutEnd = self->fSessionStats.diffTimeTDropWorkoutEnd;
    hrRecovery = self->fSessionStats.hrRecovery;
    hrRecoverySession = self->fSessionStats.hrRecoverySession;
    peakHR = self->fSessionStats.peakHR;
    steadyStateHR = self->fSessionStats.steadyStateHR;
    hrMinAdjusted = self->fSessionStats.hrMinAdjusted;
    observedHRRecovery = self->fSessionStats.observedHRRecovery;
    recoveryLoad = self->fSessionStats.recoveryLoad;
    maxRecoveryHR = self->fSessionStats.maxRecoveryHR;
    minRecoveryHR = self->fSessionStats.minRecoveryHR;
    recoveryMetsMean = self->fSessionStats.recoveryMetsMean;
    recoveryMetsStdDev = self->fSessionStats.recoveryMetsStdDev;
    biasAdjustment = self->fSessionStats.biasAdjustment;
    isOtherwiseEligibleForLongitudinal = self->fSessionStats.isOtherwiseEligibleForLongitudinal;
    hrRecoveryReference = self->fSessionStats.hrRecoveryReference;
    hrRecoveryReferencePeak = self->fSessionStats.hrRecoveryReferencePeak;
    hrOneMinPostRecovery = self->fSessionStats.hrOneMinPostRecovery;
    hrOneMinExponential = self->fSessionStats.hrOneMinExponential;
    isEligibleForHK = self->fSessionStats.isEligibleForHK;
    minHRAfterWorkoutEnd = self->fSessionStats.minHRAfterWorkoutEnd;
    maxHRAfterWorkoutEnd = self->fSessionStats.maxHRAfterWorkoutEnd;
    oneMinusFHRAfterWorkoutEnd = self->fSessionStats.oneMinusFHRAfterWorkoutEnd;
    peakHrOneMinusFhr = self->fSessionStats.peakHrOneMinusFhr;
    estimationStatus = self->fSessionStats.estimationStatus;
    vo2MaxValue = self->fSessionStats.vo2MaxValue;
    lambda = self->fSessionStats.lambda;
    meanSquaredError = self->fSessionStats.meanSquaredError;
    explainedVarianceScore = self->fSessionStats.explainedVarianceScore;
    sessionType = self->fSessionStats.sessionType;
    workoutType = self->fSessionStats.workoutType;
    sessionDuration = self->fSessionStats.sessionDuration;
    hrRecoveryAlgorithmVersion = self->fSessionStats.hrRecoveryAlgorithmVersion;
    *buf = 134227968;
    v183 = age;
    v184 = 1024;
    v185 = biologicalSex;
    v186 = 1024;
    v187 = betaBlockerUse;
    v188 = 2048;
    v189 = userBMI;
    v190 = 2048;
    v191 = sevenDayRestingHR;
    v192 = 2048;
    v193 = hrmax;
    v194 = 1024;
    v195 = status;
    v196 = 2048;
    v197 = diffTimeRecoveryOnsetWorkout;
    v198 = 2048;
    v199 = diffTimeTDropWorkoutEnd;
    v200 = 1024;
    v201 = hrRecovery;
    v202 = 1024;
    v203 = hrRecoverySession;
    v204 = 2048;
    v205 = peakHR;
    v206 = 2048;
    v207 = steadyStateHR;
    v208 = 2048;
    v209 = hrMinAdjusted;
    v210 = 2048;
    v211 = observedHRRecovery;
    v212 = 2048;
    v213 = recoveryLoad;
    v214 = 2048;
    v215 = maxRecoveryHR;
    v216 = 2048;
    v217 = minRecoveryHR;
    v218 = 2048;
    v219 = recoveryMetsMean;
    v220 = 2048;
    v221 = recoveryMetsStdDev;
    v222 = 2048;
    v223 = biasAdjustment;
    v224 = 1024;
    v225 = isOtherwiseEligibleForLongitudinal;
    v226 = 2048;
    v227 = hrRecoveryReference;
    v228 = 2048;
    v229 = hrRecoveryReferencePeak;
    v230 = 2048;
    v231 = hrOneMinPostRecovery;
    v232 = 2048;
    v233 = hrOneMinExponential;
    v234 = 1024;
    v235 = isEligibleForHK;
    v236 = 2048;
    v237 = minHRAfterWorkoutEnd;
    v238 = 2048;
    v239 = maxHRAfterWorkoutEnd;
    v240 = 2048;
    v241 = oneMinusFHRAfterWorkoutEnd;
    v242 = 2048;
    v243 = peakHrOneMinusFhr;
    v244 = 1024;
    v245 = estimationStatus;
    v246 = 1024;
    v247 = vo2MaxValue;
    v248 = 2048;
    v249 = lambda;
    v250 = 2048;
    v251 = meanSquaredError;
    v252 = 2048;
    v253 = explainedVarianceScore;
    v254 = 1024;
    v255 = sessionType;
    v256 = 1024;
    v257 = workoutType;
    v258 = 2048;
    v259 = sessionDuration;
    v260 = 1024;
    v261 = hrRecoveryAlgorithmVersion;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "HRRecovery Analytics,age,%.2f,biologicalSex,%d,useBetaBlocker,%d,userBMI,%.2f,sevenDayRestingHR,%.2f,hrmax,%.2f,status,%d,diffTimeRecoveryOnsetWorkout,%.2f,diffTimeTDropWorkoutEnd,%.2f,hrRecovery,%d,hrRecoverySession,%d,peakHR,%.2f,steadyStateHR,%.2f,hrMinAdjusted,%.2f,observedHRRecovery,%.2f,recoveryLoad,%.2f,maxRecoveryHR,%.2f,minRecoveryHR,%.2f,recoveryMetsMean,%.2f,recoveryMetsStdDev,%.2f,biasAdjustment,%.2f,isOtherwiseEligibleForLongitudinal,%d,hrRecoveryReference,%.2f,hrRecoveryReferencePeak,%.2f,hrOneMinPostRecovery,%.2f,hrOneMinExponential,%.2f,isEligibleForHK,%d,minHRAfterWorkoutEnd,%.2f,maxHRAfterWorkoutEnd,%.2f,oneMinusFHRAfterWorkoutEnd,%.2f,peakHrOneMinusFhr,%.2f,vo2MaxestimationStatus,%d,vo2MaxValue,%d,lambda,%.2f,mse,%.2f,evs,%.2f,sessionType,%d,workoutType,%d,sessionDuration,%.2f,hrRecoveryAlgorithmVersion,%d", buf, 0x162u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D44F0 != -1)
    {
      sub_101897DF0();
    }

    v60 = self->fSessionStats.age;
    v61 = p_fSessionStats->biologicalSex;
    v62 = self->fSessionStats.betaBlockerUse;
    v63 = self->fSessionStats.userBMI;
    v64 = self->fSessionStats.sevenDayRestingHR;
    v65 = self->fSessionStats.hrmax;
    v66 = self->fSessionStats.status;
    v68 = self->fSessionStats.diffTimeRecoveryOnsetWorkout;
    v67 = self->fSessionStats.diffTimeTDropWorkoutEnd;
    v70 = self->fSessionStats.hrRecovery;
    v69 = self->fSessionStats.hrRecoverySession;
    v71 = self->fSessionStats.peakHR;
    v72 = self->fSessionStats.steadyStateHR;
    v73 = self->fSessionStats.hrMinAdjusted;
    v74 = self->fSessionStats.observedHRRecovery;
    v75 = self->fSessionStats.recoveryLoad;
    v76 = self->fSessionStats.maxRecoveryHR;
    v77 = self->fSessionStats.minRecoveryHR;
    v78 = self->fSessionStats.recoveryMetsMean;
    v79 = self->fSessionStats.recoveryMetsStdDev;
    v80 = self->fSessionStats.biasAdjustment;
    v81 = self->fSessionStats.isOtherwiseEligibleForLongitudinal;
    v82 = self->fSessionStats.hrRecoveryReference;
    v83 = self->fSessionStats.hrRecoveryReferencePeak;
    v84 = self->fSessionStats.hrOneMinPostRecovery;
    v85 = self->fSessionStats.hrOneMinExponential;
    v86 = self->fSessionStats.isEligibleForHK;
    v87 = self->fSessionStats.minHRAfterWorkoutEnd;
    v88 = self->fSessionStats.maxHRAfterWorkoutEnd;
    v89 = self->fSessionStats.oneMinusFHRAfterWorkoutEnd;
    v90 = self->fSessionStats.peakHrOneMinusFhr;
    v92 = self->fSessionStats.estimationStatus;
    v91 = self->fSessionStats.vo2MaxValue;
    v93 = self->fSessionStats.lambda;
    v94 = self->fSessionStats.meanSquaredError;
    v95 = self->fSessionStats.explainedVarianceScore;
    v96 = self->fSessionStats.sessionType;
    v97 = self->fSessionStats.workoutType;
    v98 = self->fSessionStats.sessionDuration;
    v99 = self->fSessionStats.hrRecoveryAlgorithmVersion;
    v102 = 134227968;
    v103 = v60;
    v104 = 1024;
    v105 = v61;
    v106 = 1024;
    v107 = v62;
    v108 = 2048;
    v109 = v63;
    v110 = 2048;
    v111 = v64;
    v112 = 2048;
    v113 = v65;
    v114 = 1024;
    v115 = v66;
    v116 = 2048;
    v117 = v68;
    v118 = 2048;
    v119 = v67;
    v120 = 1024;
    v121 = v70;
    v122 = 1024;
    v123 = v69;
    v124 = 2048;
    v125 = v71;
    v126 = 2048;
    v127 = v72;
    v128 = 2048;
    v129 = v73;
    v130 = 2048;
    v131 = v74;
    v132 = 2048;
    v133 = v75;
    v134 = 2048;
    v135 = v76;
    v136 = 2048;
    v137 = v77;
    v138 = 2048;
    v139 = v78;
    v140 = 2048;
    v141 = v79;
    v142 = 2048;
    v143 = v80;
    v144 = 1024;
    v145 = v81;
    v146 = 2048;
    v147 = v82;
    v148 = 2048;
    v149 = v83;
    v150 = 2048;
    v151 = v84;
    v152 = 2048;
    v153 = v85;
    v154 = 1024;
    v155 = v86;
    v156 = 2048;
    v157 = v87;
    v158 = 2048;
    v159 = v88;
    v160 = 2048;
    v161 = v89;
    v162 = 2048;
    v163 = v90;
    v164 = 1024;
    v165 = v92;
    v166 = 1024;
    v167 = v91;
    v168 = 2048;
    v169 = v93;
    v170 = 2048;
    v171 = v94;
    v172 = 2048;
    v173 = v95;
    v174 = 1024;
    v175 = v96;
    v176 = 1024;
    v177 = v97;
    v178 = 2048;
    v179 = v98;
    v180 = 1024;
    v181 = v99;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44F8, 2, "HRRecovery Analytics,age,%.2f,biologicalSex,%d,useBetaBlocker,%d,userBMI,%.2f,sevenDayRestingHR,%.2f,hrmax,%.2f,status,%d,diffTimeRecoveryOnsetWorkout,%.2f,diffTimeTDropWorkoutEnd,%.2f,hrRecovery,%d,hrRecoverySession,%d,peakHR,%.2f,steadyStateHR,%.2f,hrMinAdjusted,%.2f,observedHRRecovery,%.2f,recoveryLoad,%.2f,maxRecoveryHR,%.2f,minRecoveryHR,%.2f,recoveryMetsMean,%.2f,recoveryMetsStdDev,%.2f,biasAdjustment,%.2f,isOtherwiseEligibleForLongitudinal,%d,hrRecoveryReference,%.2f,hrRecoveryReferencePeak,%.2f,hrOneMinPostRecovery,%.2f,hrOneMinExponential,%.2f,isEligibleForHK,%d,minHRAfterWorkoutEnd,%.2f,maxHRAfterWorkoutEnd,%.2f,oneMinusFHRAfterWorkoutEnd,%.2f,peakHrOneMinusFhr,%.2f,vo2MaxestimationStatus,%d,vo2MaxValue,%d,lambda,%.2f,mse,%.2f,evs,%.2f,sessionType,%d,workoutType,%d,sessionDuration,%.2f,hrRecoveryAlgorithmVersion,%d", COERCE_DOUBLE(&v102), 354);
    v101 = v100;
    sub_100152C7C("Generic", 1, 0, 2, "[CLHRRecoveryService logSessionStats:]", "%s\n", v100);
    if (v101 != buf)
    {
      free(v101);
    }
  }

  [(CLHRRecoveryService *)self sendAnalytics];
}

- (void)sendAnalytics
{
  [-[CLHRRecoveryService universe](self "universe")];
  if (objc_opt_class() && ([+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")] & 1) != 0)
  {
    if ((atomic_load_explicit(&qword_102656498, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102656498))
    {
      LODWORD(v5) = 1153138688;
      *buf = xmmword_101C79F88;
      qword_102656488 = 0;
      unk_102656490 = 0;
      qword_102656480 = 0;
      sub_1003F6D44(&qword_102656480, buf, &v5 + 1, 5uLL);
      __cxa_atexit(sub_1003F5F88, &qword_102656480, dword_100000000);
      __cxa_guard_release(&qword_102656498);
    }

    if ((atomic_load_explicit(&qword_1026564B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026564B8))
    {
      v6 = 1118961664;
      *buf = xmmword_101C79F9C;
      v5 = unk_101C79FAC;
      qword_1026564A8 = 0;
      unk_1026564B0 = 0;
      qword_1026564A0 = 0;
      sub_1003F6D44(&qword_1026564A0, buf, &v7, 9uLL);
      __cxa_atexit(sub_1003F5F88, &qword_1026564A0, dword_100000000);
      __cxa_guard_release(&qword_1026564B8);
    }

    if ((atomic_load_explicit(&qword_1026564D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026564D8))
    {
      LODWORD(v5) = 1108056474;
      *buf = xmmword_101C79FC0;
      qword_1026564C8 = 0;
      unk_1026564D0 = 0;
      qword_1026564C0 = 0;
      sub_1003F6D44(&qword_1026564C0, buf, &v5 + 1, 5uLL);
      __cxa_atexit(sub_1003F5F88, &qword_1026564C0, dword_100000000);
      __cxa_guard_release(&qword_1026564D8);
    }

    AnalyticsSendEventLazy();
    if (qword_1025D44F0 != -1)
    {
      sub_101897DF0();
    }

    v2 = qword_1025D44F8;
    if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Sent Core Analytics event", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101897E18();
    }
  }

  else
  {
    if (qword_1025D44F0 != -1)
    {
      sub_101896D48();
    }

    v3 = qword_1025D44F8;
    if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "HRRecovery, not sending analytics, no IHA permission", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101897EFC();
    }
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 11) = 0;
  *(self + 24) = 0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(self + 100) = _D0;
  *(self + 108) = 0;
  *(self + 28) = 0;
  *(self + 120) = vdupq_n_s64(0xC7EFFFFFE0000000);
  *(self + 17) = -1;
  __asm { FMOV            V2.4S, #-1.0 }

  *(self + 9) = xmmword_101C79F60;
  *(self + 10) = _Q2;
  *(self + 22) = _D0;
  *(self + 184) = 0;
  *(self + 188) = _Q2;
  *(self + 204) = 0;
  *(self + 13) = _Q2;
  *(self + 28) = _D0;
  *(self + 29) = -14;
  *(self + 30) = _D0;
  *(self + 33) = 0x1BF800000;
  *(self + 31) = 3212836864;
  *(self + 34) = 0;
  *(self + 35) = 0;
  *(self + 32) = 0;
  *(self + 36) = 0;
  return self;
}

@end