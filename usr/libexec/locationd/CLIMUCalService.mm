@interface CLIMUCalService
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLIMUCalService)init;
- (id).cxx_construct;
- (void)beginService;
- (void)dealloc;
- (void)endService;
- (void)handleOutdoorServiceNotification:(const OutdoorUpdate *)notification;
- (void)insertEstimate:(SensorParameterEstimate *)estimate intervalBeforeCurrentTimeSec:(double)sec;
- (void)onDeviceImpactEvent:(DeviceImpactEvent *)event;
- (void)onSensorParameterEstimate:(SensorParameterEstimate *)estimate;
- (void)sendEstimatesToAOPAndAOP2ForParam:(int)param atTime:(double)time;
- (void)sendNotification:(int)notification;
@end

@implementation CLIMUCalService

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
  if (qword_10265A678 != -1)
  {
    sub_101953888();
  }

  return qword_10265A670;
}

- (CLIMUCalService)init
{
  v7.receiver = self;
  v7.super_class = CLIMUCalService;
  v2 = [(CLIMUCalService *)&v7 initWithInboundProtocol:&OBJC_PROTOCOL___CLIMUCalServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CLIMUCalServiceClientProtocol];
  v2->_isIndoor = 1;
  v2->_relativeHumidityOutside = NAN;
  v2->_temperatureOutside = NAN;
  v2->fAdapterOutdoorUpdate = [[CLIMUCalServiceAdapterOutdoorUpdate alloc] initWithController:v2];
  v3 = [objc_msgSend(-[CLIMUCalService universe](v2 "universe")];
  v2->fOutdoorServiceProxy = v3;
  if (v3)
  {
    -[CLOutdoorServiceProtocol registerDelegate:inSilo:](v3, "registerDelegate:inSilo:", v2->fAdapterOutdoorUpdate, [-[CLIMUCalService universe](v2 "universe")]);
    [(CLOutdoorServiceProtocol *)v2->fOutdoorServiceProxy setDelegateEntityName:"CLIMUCalServiceAdapterOutdoorUpdate"];
    if (qword_1025D4680 != -1)
    {
      sub_10195389C();
    }

    v4 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_INFO))
    {
      v6[0] = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Registered for outdoor service notification", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019538C4();
    }
  }

  return v2;
}

- (void)dealloc
{
  v5.receiver = self;
  v5.super_class = CLIMUCalService;
  [(CLIMUCalService *)&v5 dealloc];
  fOutdoorServiceProxy = self->fOutdoorServiceProxy;
  if (fOutdoorServiceProxy)
  {

    self->fOutdoorServiceProxy = 0;
  }

  fAdapterOutdoorUpdate = self->fAdapterOutdoorUpdate;
  if (fAdapterOutdoorUpdate)
  {

    self->fAdapterOutdoorUpdate = 0;
  }
}

- (void)beginService
{
  v3 = [-[CLIMUCalService universe](self "universe")];
  if (!self->_sensorParameterEstimateDispatcher.__ptr_)
  {
    [-[CLIMUCalService universe](self "universe")];
    operator new();
  }

  if (!self->_deviceImpactDispatcher.__ptr_)
  {
    [-[CLIMUCalService universe](self "universe")];
    operator new();
  }

  v5 = sub_10001A3E8(v3, v4);
  if (sub_100316E74(v5))
  {
    v7 = sub_100BC9FB0(0, v6);
    sub_100BCA21C(v7, 0);
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(CLIMUCalService *)self sendEstimatesToAOPAndAOP2ForParam:2 atTime:?];
  [(CLIMUCalService *)self sendEstimatesToAOPAndAOP2ForParam:0 atTime:Current];
  v10 = 0;
  sub_100126E84(v11, "EnableInFieldIMUCalibrationNotifications", &v10, 0);
  self->_enableInFieldIMUCalibrationNotifications = v11[1];
  if (self->fAdapterOutdoorUpdate)
  {
    fOutdoorServiceProxy = self->fOutdoorServiceProxy;
    if (fOutdoorServiceProxy)
    {
      [(CLOutdoorServiceProtocol *)fOutdoorServiceProxy registerForUpdates:?];
    }
  }
}

- (void)endService
{
  [-[CLIMUCalService universe](self "universe")];
  if (self->_sensorParameterEstimateDispatcher.__ptr_)
  {
    v4 = sub_10017C7AC(0, v3);
    sub_10095D9F8(v4, 53, self->_sensorParameterEstimateDispatcher.__ptr_);
    ptr = self->_sensorParameterEstimateDispatcher.__ptr_;
    self->_sensorParameterEstimateDispatcher.__ptr_ = 0;
    if (ptr)
    {
      (*(*ptr + 8))(ptr);
    }
  }

  if (self->_deviceImpactDispatcher.__ptr_)
  {
    v6 = sub_10017C7AC(0, v3);
    sub_10095D9F8(v6, 52, self->_sensorParameterEstimateDispatcher.__ptr_);
    v7 = self->_deviceImpactDispatcher.__ptr_;
    self->_deviceImpactDispatcher.__ptr_ = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  if (self->fAdapterOutdoorUpdate)
  {
    fOutdoorServiceProxy = self->fOutdoorServiceProxy;
    if (fOutdoorServiceProxy)
    {

      [(CLOutdoorServiceProtocol *)fOutdoorServiceProxy unregisterForUpdates:?];
    }
  }
}

- (void)handleOutdoorServiceNotification:(const OutdoorUpdate *)notification
{
  if (notification->var3 == 3)
  {
    var2 = notification->var2;
    if (var2)
    {
      v5 = var2 == 1;
      if (self->_isIndoor != v5)
      {
        self->_isIndoor = v5;
        if (qword_1025D45D0 != -1)
        {
          sub_1019539C4();
        }

        v6 = qword_1025D45D8;
        if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
        {
          isIndoor = self->_isIndoor;
          v8[0] = 67240192;
          v8[1] = isIndoor;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "[IMUCal] Received high confidence indoor/outdoor update, isIndoor, %{public}d", v8, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019539D8(&self->_isIndoor);
        }
      }
    }
  }
}

- (void)onSensorParameterEstimate:(SensorParameterEstimate *)estimate
{
  sub_10083F9E0(&self->_dataStore, estimate, self->_isIndoor, self->_relativeHumidityOutside, self->_temperatureOutside, 0.0);
  if (self->_enableInFieldIMUCalibrationNotifications && (estimate->var1 | 2) == 2 && *(&estimate->var4 + 2) != 0)
  {

    [(CLIMUCalService *)self sendNotification:?];
  }
}

- (void)onDeviceImpactEvent:(DeviceImpactEvent *)event
{
  if (COERCE_FLOAT(v3 >> 8) > 25.6)
  {
    sub_100840BEC();
  }
}

- (void)insertEstimate:(SensorParameterEstimate *)estimate intervalBeforeCurrentTimeSec:(double)sec
{
  if (sec == 0.0)
  {
    v15 = v4;
    v16 = v5;
    v6 = *&estimate->var3[4];
    v13[2] = *&estimate->var3[2];
    v14[0] = v6;
    *(v14 + 10) = *(&estimate->var3[5] + 2);
    v7 = *estimate->var3;
    v13[0] = *&estimate->var0;
    v13[1] = v7;
    [(CLIMUCalService *)self onSensorParameterEstimate:v13];
  }

  else
  {
    isIndoor = self->_isIndoor;
    relativeHumidityOutside = self->_relativeHumidityOutside;
    temperatureOutside = self->_temperatureOutside;
    p_dataStore = &self->_dataStore;

    sub_10083F9E0(p_dataStore, estimate, isIndoor, relativeHumidityOutside, temperatureOutside, sec);
  }
}

- (void)sendEstimatesToAOPAndAOP2ForParam:(int)param atTime:(double)time
{
  sub_100840F78(*&param, &v56, time);
  v5 = sub_1008410C0(&v56, &v52);
  if (v55 == 1)
  {
    LOBYTE(__p) = 86;
    BYTE1(__p) = param;
    *(&__p + 2) = v53;
    *(&__p + 10) = v54;
    v5 = sub_10017C7AC(0, v6);
    if (v5)
    {
      if (qword_1025D45D0 != -1)
      {
        sub_101953AEC();
      }

      v7 = qword_1025D45D8;
      if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
      {
        v8 = sub_100840544(&v52);
        *buf = 67240450;
        v63 = BYTE1(__p);
        v64 = 2114;
        v65 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "[IMUCal] sending to AOP param,%{public}u,%{public}@", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101953B14(buf);
        v45 = qword_1025D45D8;
        v46 = sub_100840544(&v52);
        v61[0] = 67240450;
        v61[1] = BYTE1(__p);
        LOWORD(v61[2]) = 2114;
        *(&v61[2] + 2) = v46;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v45, 0, "[IMUCal] sending to AOP param,%{public}u,%{public}@", v61, 18);
        v48 = v47;
        sub_100152C7C("Generic", 1, 0, 2, "[CLIMUCalService sendEstimatesToAOPAndAOP2ForParam:atTime:]", "%s\n", v47);
        if (v48 != buf)
        {
          free(v48);
        }
      }

      v10 = sub_10017C7AC(0, v9);
      sub_1005ADCE4(v10, &__p);
    }
  }

  v11 = sub_10001A3E8(v5, v6);
  if (sub_100316E74(v11))
  {
    if (param)
    {
      if (param != 2)
      {
        goto LABEL_51;
      }

      v13 = 6;
    }

    else
    {
      v13 = 2;
    }

    __p = 0uLL;
    v51 = 0;
    v14 = v56;
    v15 = -1227133513 * ((v57 - v56) >> 4);
    if (v15 < 1)
    {
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = (v15 - 1);
        v19 = &v14[112 * v18 + 88];
        while (*(v19 - 1))
        {
          v19 -= 112;
          v20 = v15;
          --v18;
          --v15;
          if (v20 <= 1)
          {
            goto LABEL_38;
          }
        }

        if (*v19)
        {
          break;
        }

        if (v17 >= v51)
        {
          v21 = v17 - v16;
          v22 = (v17 - v16) >> 3;
          v23 = v22 + 1;
          if ((v22 + 1) >> 61)
          {
            sub_10028C64C();
          }

          v24 = v51 - v16;
          if ((v51 - v16) >> 2 > v23)
          {
            v23 = v24 >> 2;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFF8)
          {
            v25 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            sub_1000B9708(&__p, v25);
          }

          v26 = (v17 - v16) >> 3;
          v27 = (8 * v22);
          v28 = (8 * v22 - 8 * v26);
          *v27 = v18;
          v17 = (v27 + 1);
          memcpy(v28, v16, v21);
          v29 = __p;
          *&__p = v28;
          *(&__p + 1) = v17;
          v51 = 0;
          if (v29)
          {
            operator delete(v29);
            v16 = __p;
          }

          else
          {
            v16 = v28;
          }
        }

        else
        {
          *v17 = v18;
          v17 += 8;
        }

        *(&__p + 1) = v17;
        if (v13 == (v17 - v16) >> 3 || v15 < 2)
        {
          goto LABEL_38;
        }

        v14 = v56;
        --v15;
      }

      v44 = sub_100BC9FB0(0, v12);
      sub_100BCA6A8(v44, param);
      v17 = *(&__p + 1);
      v16 = __p;
    }

LABEL_38:
    if (((v17 - v16) >> 3) >= 1)
    {
      v30 = (((v17 - v16) >> 3) & 0x7FFFFFFF) - 1;
      do
      {
        v31 = *(__p + 8 * v30);
        memset(v61, 0, 74);
        BYTE1(v61[0]) = param;
        v32 = v56 + 112 * v31;
        *(v61 + 2) = *(v32 + 1);
        *(&v61[1] + 2) = *(v32 + 2);
        *(&v61[2] + 2) = *(v32 + 3);
        *(&v61[3] + 2) = *(v32 + 2);
        *(&v61[5] + 2) = *(v32 + 3);
        *(&v61[7] + 2) = *(v32 + 4);
        *(&v61[9] + 2) = *(v32 + 5);
        *(&v61[11] + 2) = *(v32 + 6);
        *(&v61[13] + 2) = *(v32 + 7);
        *(&v61[15] + 2) = *(v32 + 18);
        *(&v61[16] + 2) = *(v32 + 10);
        if (qword_1025D45D0 != -1)
        {
          sub_101953AEC();
        }

        v33 = qword_1025D45D8;
        if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
        {
          v34 = BYTE1(v61[0]);
          v35 = sub_100840544(v56 + 28 * v31);
          *buf = 67240450;
          v63 = v34;
          v64 = 2114;
          v65 = v35;
          _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "[IMUCal] Sending to AOP2 param,%{public}u,%{public}@", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101953B14(buf);
          v39 = qword_1025D45D8;
          v40 = BYTE1(v61[0]);
          v41 = sub_100840544(v56 + 28 * v31);
          v58[0] = 67240450;
          v58[1] = v40;
          v59 = 2114;
          v60 = v41;
          LODWORD(v49) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v39, 0, "[IMUCal] Sending to AOP2 param,%{public}u,%{public}@", v58, v49);
          v43 = v42;
          sub_100152C7C("Generic", 1, 0, 2, "[CLIMUCalService sendEstimatesToAOPAndAOP2ForParam:atTime:]", "%s\n", v42);
          if (v43 != buf)
          {
            free(v43);
          }
        }

        v37 = sub_100BC9FB0(0, v36);
        sub_100BCA4A0(v37, v61);
        v38 = v30-- + 1;
      }

      while (v38 > 1);
      v16 = __p;
    }

    if (v16)
    {
      *(&__p + 1) = v16;
      operator delete(v16);
    }
  }

LABEL_51:
  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }
}

- (void)sendNotification:(int)notification
{
  v3 = *&notification;
  Current = CFAbsoluteTimeGetCurrent();
  sub_100840F78(v3, &__p, Current);
  sub_1008410C0(&__p, v37);
  if ((v39 & 1) == 0)
  {
    if (qword_1025D45D0 != -1)
    {
      sub_101953AEC();
    }

    v13 = qword_1025D45D8;
    if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      v47 = v3;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "[IMUCal] Could not get last robust param,%{public}u", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_39;
    }

    sub_101953B14(buf);
    v42 = 67240192;
    v43 = v3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45D8, 0, "[IMUCal] Could not get last robust param,%{public}u", &v42, 8);
    v15 = v14;
    sub_100152C7C("Generic", 1, 0, 2, "[CLIMUCalService sendNotification:]", "%s\n", v14);
LABEL_45:
    if (v15 != buf)
    {
      free(v15);
    }

    goto LABEL_39;
  }

  if (qword_1025D45D0 != -1)
  {
    sub_101953AEC();
  }

  v5 = qword_1025D45D8;
  if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_100840544(v37);
    *buf = 67240450;
    v47 = v3;
    v48 = 2114;
    v49 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "[IMUCal] notifying param,%{public}u,%{public}@", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101953B14(buf);
    v31 = qword_1025D45D8;
    v32 = sub_100840544(v37);
    v42 = 67240450;
    v43 = v3;
    v44 = 2114;
    v45 = v32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v31, 0, "[IMUCal] notifying param,%{public}u,%{public}@", &v42, 18);
    v34 = v33;
    sub_100152C7C("Generic", 1, 0, 2, "[CLIMUCalService sendNotification:]", "%s\n", v33);
    if (v34 != buf)
    {
      free(v34);
    }
  }

  AudioServicesPlaySystemSound(0x596u);
  v7 = objc_alloc_init(NSMutableDictionary);
  [v7 setObject:+[NSString stringWithFormat:](NSString forKeyedSubscript:{"stringWithFormat:", @"In-field IMU Calibration", kCFUserNotificationAlertHeaderKey}];
  [v7 setObject:@"Dismiss" forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  if (!v3)
  {
    [v9 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Accel-Bias"}];
    [v10 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"mg"}];
    *&v12 = 1000.0;
    goto LABEL_17;
  }

  v11 = 1.0;
  if (v3 == 2)
  {
    [v9 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Gyro-Scale"}];
    [v10 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%%"}];
    *&v12 = 100.0;
LABEL_17:
    v11 = *&v12;
  }

  [v8 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ [%@]", v9, v10)}];
  if (v39 != 1 || ([v8 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"\n\nAverage of %zu Most Recent Candidates:", v38)}], (v39 & 1) == 0))
  {
    sub_100173BA0();
  }

  [v8 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"\n{ %+.2f, %+.2f, %+.2f }", (v11 * *&v37[1]), (v11 * *&v37[2]), (v11 * *&v37[3]))}];
  v16 = objc_alloc_init(NSDateFormatter);
  [v16 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
  [v8 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"\n\nCandidates:"}];
  v17 = 0x6DB6DB6DB6DB6DB7 * ((v41 - __p) >> 4);
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = v17 & 0x7FFFFFFF;
    v20 = v19 + 1;
    v21 = 112 * v19;
    do
    {
      v22 = (__p + v21);
      if (!*(__p + v21 - 32))
      {
        v23 = *(v22 - 6);
        v24 = *(v22 - 10);
        [v8 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"\n{ %+.2f, %+.2f, %+.2f }", (v11 * *(v22 - 27)), (v11 * *(v22 - 26)), (v11 * *(v22 - 25)))}];
        [v8 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"\n%@, %.0fC", objc_msgSend(v16, "stringFromDate:", +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", v23)), roundf(v24))}];
        if (++v18 == 10)
        {
          break;
        }
      }

      --v20;
      v21 -= 112;
    }

    while (v20 > 1);
  }

  [v7 setObject:v8 forKeyedSubscript:kCFUserNotificationAlertMessageKey];
  v25 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, 0, v7);

  if (!v25)
  {
    if (qword_1025D45D0 != -1)
    {
      sub_101953AEC();
    }

    v28 = qword_1025D45D8;
    if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_FAULT, "[IMUCal] Could not create InFieldIMUCalibration user notification", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_39;
    }

    sub_101953B14(buf);
    LOWORD(v42) = 0;
    LODWORD(v36) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45D8, 17, "[IMUCal] Could not create InFieldIMUCalibration user notification", &v42, v36);
    v15 = v29;
    sub_100152C7C("Generic", 1, 0, 0, "[CLIMUCalService sendNotification:]", "%s\n", v29);
    goto LABEL_45;
  }

  CFRetain(v25);
  RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v25, 0, 0);
  if (RunLoopSource)
  {
    v27 = sub_100107858();
    CFRunLoopAddSource(v27, RunLoopSource, kCFRunLoopCommonModes);
    CFRelease(RunLoopSource);
    CFRelease(v25);
    goto LABEL_39;
  }

  if (qword_1025D45D0 != -1)
  {
    sub_101953AEC();
  }

  v30 = qword_1025D45D8;
  if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_FAULT, "[IMUCal] Could not create runloop source for InFieldIMUCalibration user notification", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101953B14(buf);
    LOWORD(v42) = 0;
    LODWORD(v36) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45D8, 17, "[IMUCal] Could not create runloop source for InFieldIMUCalibration user notification", &v42, v36);
    v15 = v35;
    sub_100152C7C("Generic", 1, 0, 0, "[CLIMUCalService sendNotification:]", "%s\n", v35);
    goto LABEL_45;
  }

LABEL_39:
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 7) = 0;
  return self;
}

@end