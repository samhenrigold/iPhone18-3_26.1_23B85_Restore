@interface CLHealthAssessmentNotifierAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLHealthAssessmentNotifierAdapter)init;
- (void)adaptee;
- (void)addMonitoringPeriodFrom:(double)from until:(double)until;
- (void)aggregateRecords;
- (void)beginService;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)endService;
- (void)processDataWithMaxDuration:(double)duration endTime:(double)time;
- (void)processNextIntervalWithRemainingDurationToProcess:(double *)process endTime:(double)time updateCanContinue:(BOOL *)continue;
- (void)setLastProcessedTime:(double)time;
- (void)setupService;
- (void)startUpdatesforAnalyzer:(int)analyzer;
- (void)stopMonitoring;
- (void)syncgetResultReady:(id)ready ForAnalyzer:(int)analyzer;
- (void)teardownService;
- (void)updateSensorRecorderQuery;
- (void)updateSensorRecorderSubscription;
@end

@implementation CLHealthAssessmentNotifierAdapter

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
  if (qword_102656338 != -1)
  {
    sub_10188BE58();
  }

  return qword_102656330;
}

- (CLHealthAssessmentNotifierAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLHealthAssessmentNotifierAdapter;
  return [(CLHealthAssessmentNotifierAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLHealthAssessmentNotifierProtocol outboundProtocol:&OBJC_PROTOCOL___CLHealthAssessmentNotifierClientProtocol];
}

- (void)beginService
{
  if (qword_1025D4590 != -1)
  {
    sub_10188BE6C();
  }

  v3 = qword_1025D4598;
  if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CLHealthAssessmentNotifier starting up", &v25, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188BE80();
  }

  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_100475F14([(CLHealthAssessmentNotifierAdapter *)self universe])];
  notifier = [(CLNotifierServiceAdapter *)self notifier];
  if (!notifier)
  {
    sub_10188C14C();
  }

  v6 = sub_1000206B4(notifier, v5);
  if (sub_1004FB14C(v6))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v10 = sub_1000206B4(v8, v9);
    v11 = sub_100023B78(v10, @"kMonitorKinesiasStart", &self->_monitorKinesiasStart);
    monitorKinesiasStart = self->_monitorKinesiasStart;
    if (Current < monitorKinesiasStart)
    {
      monitorKinesiasStart = Current;
    }

    self->_monitorKinesiasStart = monitorKinesiasStart;
    v14 = sub_1000206B4(v11, v12);
    sub_100023B78(v14, @"kMonitorKinesiasExpiration", &self->_monitorKinesiasExpiration);
    monitorKinesiasExpiration = self->_monitorKinesiasStart + 604800.0;
    if (monitorKinesiasExpiration >= self->_monitorKinesiasExpiration)
    {
      monitorKinesiasExpiration = self->_monitorKinesiasExpiration;
    }

    self->_monitorKinesiasExpiration = monitorKinesiasExpiration;
    if (qword_1025D4590 != -1)
    {
      sub_10188BF5C();
    }

    v16 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_monitorKinesiasStart;
      v18 = self->_monitorKinesiasExpiration;
      v25 = 134349312;
      v26 = v17;
      v27 = 2050;
      v28 = v18;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "Loaded monitoring period start: %{public}f expiration date: %{public}f", &v25, 0x16u);
    }

    v19 = sub_10000A100(121, 2);
    if (v19)
    {
      sub_10188BF84();
    }

    v21 = sub_1000206B4(v19, v20);
    sub_100023B78(v21, @"kMonitorKinesiasLastProcessed", &self->_lastProcessedTime);
    lastProcessedTime = self->_lastProcessedTime;
    if (Current < lastProcessedTime)
    {
      lastProcessedTime = Current;
    }

    self->_lastProcessedTime = lastProcessedTime;
    [(CLHealthAssessmentNotifierAdapter *)self setupService];
    [(CLHealthAssessmentNotifierAdapter *)self monitorKinesiasExpiration];
    if (v23 > Current)
    {
      if (qword_1025D4590 != -1)
      {
        sub_10188BF5C();
      }

      v24 = qword_1025D4598;
      if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "Resume sensor recording on service start", &v25, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10188C070();
      }

      [(CLHealthAssessmentNotifierAdapter *)self updateSensorRecorderSubscription];
      self->fDyskinesiaSubscribed = 1;
      self->fTremorSubscribed = 1;
    }
  }
}

- (void)endService
{
  notifier = [(CLNotifierServiceAdapter *)self notifier];
  (*(notifier->var0 + 2))(notifier);

  tremorDetectionService = [(CLHealthAssessmentNotifierAdapter *)self tremorDetectionService];
}

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

- (void)doAsync:(id)async
{
  adaptee = [(CLHealthAssessmentNotifierAdapter *)self adaptee];
  v5 = *(async + 2);

  v5(async, adaptee);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  (*(async + 2))(async, [(CLHealthAssessmentNotifierAdapter *)self adaptee]);
  v5 = *(reply + 2);

  v5(reply);
}

- (void)setupService
{
  if (![(CLHealthAssessmentNotifierAdapter *)self sensorRecorder])
  {
    [(CLHealthAssessmentNotifierAdapter *)self setSensorRecorder:objc_alloc_init(CMSensorRecorder)];
    adaptee = [(CLHealthAssessmentNotifierAdapter *)self adaptee];
    sub_100476420(adaptee, v4);
    [(CLHealthAssessmentNotifierAdapter *)self setChoreaDetectionService:objc_alloc_init(CLHealthAssessmentChoreaDetectionService)];
    [(CLHealthAssessmentChoreaDetectionService *)[(CLHealthAssessmentNotifierAdapter *)self choreaDetectionService] setDelegate:self];
    [(CLHealthAssessmentNotifierAdapter *)self setTremorDetectionService:objc_alloc_init(CLHealthAssessmentTremorDetectionService)];
    [(CLHealthAssessmentTremorDetectionService *)[(CLHealthAssessmentNotifierAdapter *)self tremorDetectionService] setDelegate:self];
    -[CLHealthAssessmentNotifierAdapter setFSensorRecorderQueryTimer:](self, "setFSensorRecorderQueryTimer:", [objc_msgSend(-[CLHealthAssessmentNotifierAdapter universe](self "universe")]);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1004766C8;
    v13[3] = &unk_102447418;
    v13[4] = self;
    v5 = [(CLTimer *)[(CLHealthAssessmentNotifierAdapter *)self fSensorRecorderQueryTimer] setHandler:v13];
    v12 = 15.0;
    v7 = sub_100011660(v5, v6);
    sub_100185AC0(v7, &buf);
    sub_1000B9370(buf, "kMonitorKinesiasProcessingDelay", &v12);
    if (*(&buf + 1))
    {
      sub_100008080(*(&buf + 1));
    }

    fSensorRecorderQueryTimer = [(CLHealthAssessmentNotifierAdapter *)self fSensorRecorderQueryTimer];
    [(CLTimer *)fSensorRecorderQueryTimer setNextFireDelay:v12];
    if (qword_1025D4590 != -1)
    {
      sub_10188BF5C();
    }

    v9 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
    {
      [(CLTimer *)[(CLHealthAssessmentNotifierAdapter *)self fSensorRecorderQueryTimer] nextFireTime];
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "fSensorRecorderQueryTimer.nextFireTime, %{public}f", &buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188C2E0(self);
    }

    -[CLHealthAssessmentNotifierAdapter setFAggregateRecordsTimer:](self, "setFAggregateRecordsTimer:", [objc_msgSend(-[CLHealthAssessmentNotifierAdapter universe](self "universe")]);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1004766D0;
    v11[3] = &unk_102447418;
    v11[4] = self;
    [(CLTimer *)[(CLHealthAssessmentNotifierAdapter *)self fAggregateRecordsTimer] setHandler:v11];
    [(CLHealthAssessmentNotifierAdapter *)self aggregateRecords];
  }
}

- (void)teardownService
{
  if (qword_1025D4590 != -1)
  {
    sub_10188BE6C();
  }

  v3 = qword_1025D4598;
  if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Tearing down service", v19, 2u);
  }

  v4 = sub_10000A100(121, 2);
  if (v4)
  {
    sub_10188C3EC();
  }

  v6 = sub_1000206B4(v4, v5);
  v7 = sub_1004FA94C(v6);
  v9 = sub_1000206B4(v7, v8);
  v10 = sub_1004FA94C(v9);
  self->_monitorKinesiasStart = 0.0;
  v12 = sub_1000206B4(v10, v11);
  v13 = sub_1004FA94C(v12);
  self->_monitorKinesiasExpiration = 0.0;
  v15 = sub_1000206B4(v13, v14);
  v16 = sub_1004FA94C(v15);
  self->_lastProcessedTime = 0.0;
  self->_updateStartTime = 0.0;
  v18 = *sub_1000206B4(v16, v17);
  (*(v18 + 944))();
  [(CLHealthAssessmentNotifierAdapter *)self setFSensorRecorderQueryTimer:0];
  [(CLHealthAssessmentNotifierAdapter *)self setFAggregateRecordsTimer:0];
  [(CLHealthAssessmentNotifierAdapter *)self setFSensorRecorderSubscribeTimer:0];

  [(CLHealthAssessmentNotifierAdapter *)self setChoreaDetectionService:0];
  [(CLHealthAssessmentNotifierAdapter *)self setTremorDetectionService:0];

  [(CLHealthAssessmentNotifierAdapter *)self setSensorRecorder:0];
}

- (void)updateSensorRecorderSubscription
{
  [+[NSDate date](NSDate timeIntervalSinceReferenceDate];
  v4 = v3;
  [(CLHealthAssessmentNotifierAdapter *)self monitorKinesiasExpiration];
  if (v4 >= v5)
  {
    if (qword_1025D4590 != -1)
    {
      sub_10188BE6C();
    }

    v7 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Stop renewing sensorRecorder subscription", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188C4C8();
    }
  }

  else
  {
    if (![(CLHealthAssessmentNotifierAdapter *)self fSensorRecorderSubscribeTimer])
    {
      -[CLHealthAssessmentNotifierAdapter setFSensorRecorderSubscribeTimer:](self, "setFSensorRecorderSubscribeTimer:", [objc_msgSend(-[CLHealthAssessmentNotifierAdapter universe](self "universe")]);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100476A3C;
      v10[3] = &unk_102447418;
      v10[4] = self;
      [(CLTimer *)[(CLHealthAssessmentNotifierAdapter *)self fSensorRecorderSubscribeTimer] setHandler:v10];
    }

    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100476A44;
    block[3] = &unk_102447418;
    block[4] = self;
    dispatch_async(global_queue, block);
  }
}

- (void)updateSensorRecorderQuery
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100476D5C;
  v2[3] = &unk_102447418;
  v2[4] = self;
  [objc_msgSend(-[CLHealthAssessmentNotifierAdapter universe](self "universe")];
}

- (void)processDataWithMaxDuration:(double)duration endTime:(double)time
{
  if (duration > 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= time)
    {
      timeCopy = time;
    }

    else
    {
      timeCopy = Current;
      if (qword_1025D4590 != -1)
      {
        sub_10188BE6C();
      }

      v9 = qword_1025D4598;
      if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349312;
        durationCopy2 = timeCopy;
        v41 = 2050;
        timeCopy2 = time;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Limiting processing up to timestamp %{public}lf (asked %{public}lf)", buf, 0x16u);
      }

      v10 = sub_10000A100(121, 2);
      if (v10)
      {
        sub_10188C98C(v10, v11, v12, v13, v14, v15, v16, v17, timeCopy, time);
      }
    }

    durationCopy = duration;
    v27 = 1;
    v18 = 0;
    if (duration > 0.0)
    {
      while (v18 <= 0x1D)
      {
        [(CLHealthAssessmentNotifierAdapter *)self processNextIntervalWithRemainingDurationToProcess:&durationCopy endTime:&v27 updateCanContinue:timeCopy];
        if (qword_1025D4590 != -1)
        {
          sub_10188BF5C();
        }

        v19 = qword_1025D4598;
        if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349312;
          durationCopy2 = durationCopy;
          v41 = 1026;
          LODWORD(timeCopy2) = v18;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "Remaining duration to process = %{public}lf, current iteration = %{public}i", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4590 != -1)
          {
            sub_10188BF5C();
          }

          v29 = 134349312;
          durationCopy3 = durationCopy;
          v31 = 1026;
          LODWORD(v32) = v18;
          LODWORD(v26) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4598, 0, "Remaining duration to process = %{public}lf, current iteration = %{public}i", &v29, v26);
          v21 = v20;
          sub_100152C7C("Generic", 1, 0, 2, "[CLHealthAssessmentNotifierAdapter processDataWithMaxDuration:endTime:]", "%s\n", v20);
          if (v21 != buf)
          {
            free(v21);
          }
        }

        ++v18;
        if (durationCopy <= 0.0 || (v27 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      if (qword_1025D4590 != -1)
      {
        sub_10188BF5C();
      }

      v22 = qword_1025D4598;
      if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        LODWORD(durationCopy2) = v18;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "Exceeding maximum number of iterations when processing data = %{public}i - interrupting the processing", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10188CAA0(&v37, v18, v38);
      }

      v27 = 0;
    }

LABEL_31:
    if (qword_1025D4590 != -1)
    {
      sub_10188BF5C();
    }

    v23 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349824;
      durationCopy2 = duration;
      v41 = 2050;
      timeCopy2 = timeCopy;
      v43 = 2050;
      v44 = duration - durationCopy;
      v45 = 1026;
      v46 = v18;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "Processed data up to max duration = %{public}lf, endTime = %{public}lf, total duration processed = %{public}lf, number of iterations %{public}i", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4590 != -1)
      {
        sub_10188BF5C();
      }

      v29 = 134349824;
      durationCopy3 = duration;
      v31 = 2050;
      v32 = timeCopy;
      v33 = 2050;
      v34 = duration - durationCopy;
      v35 = 1026;
      v36 = v18;
      LODWORD(v26) = 38;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4598, 0, "Processed data up to max duration = %{public}lf, endTime = %{public}lf, total duration processed = %{public}lf, number of iterations %{public}i", &v29, v26);
      v25 = v24;
      sub_100152C7C("Generic", 1, 0, 2, "[CLHealthAssessmentNotifierAdapter processDataWithMaxDuration:endTime:]", "%s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }
}

- (void)processNextIntervalWithRemainingDurationToProcess:(double *)process endTime:(double)time updateCanContinue:(BOOL *)continue
{
  v5 = __chkstk_darwin(self);
  v7 = v6;
  v8 = v5;
  v10 = v9;
  v12 = v11;
  if (sub_100099160(*([v11 adaptee] + 20) + 72))
  {
    [v12 updateStartTime];
    if (v13 == 0.0)
    {
      [v12 lastProcessedTime];
      if (v14 > 0.0)
      {
        if (qword_1025D4590 != -1)
        {
          sub_10188BE6C();
        }

        v15 = qword_1025D4598;
        if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
        {
          [v12 lastProcessedTime];
          v120 = 134349056;
          v121 = v16;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "Updating start time to %{public}f based on last processed time", &v120, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10188CC8C();
        }

        [v12 lastProcessedTime];
        [v12 setUpdateStartTime:?];
      }
    }

    if (*v10 <= 0.0 || ([v12 updateStartTime], v17 > v8))
    {
      if (qword_1025D4590 != -1)
      {
        sub_10188BF5C();
      }

      v18 = qword_1025D4598;
      if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *v10;
        [v12 updateStartTime];
        v120 = 134349568;
        v121 = v19;
        v122 = 2050;
        v123 = v8;
        v124 = 2050;
        v125[0] = v20;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "No processing to do, remainingDurationToProcess=%{public}f, endTime=%{public}f, updateStartTime=%{public}f", &v120, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&v120, 0x65CuLL);
        if (qword_1025D4590 != -1)
        {
          sub_10188BF5C();
        }

        v84 = qword_1025D4598;
        v85 = *v10;
        [v12 updateStartTime];
        v114 = 134349568;
        v115 = v85;
        v116 = 2050;
        v117 = v8;
        v118 = 2050;
        v119[0] = v86;
        _os_log_send_and_compose_impl(2, 0, &v120, 1628, dword_100000000, v84, 0, "No processing to do, remainingDurationToProcess=%{public}f, endTime=%{public}f, updateStartTime=%{public}f", &v114, 32);
        v88 = v87;
        sub_100152C7C("Generic", 1, 0, 2, "[CLHealthAssessmentNotifierAdapter processNextIntervalWithRemainingDurationToProcess:endTime:updateCanContinue:]", "%s\n", v87);
        if (v88 != &v120)
        {
          free(v88);
        }
      }

LABEL_18:
      *v7 = 0;
      return;
    }

    v24 = fmin(*v10, 43200.0);
    [v12 updateStartTime];
    v106 = v8;
    v107 = v25;
    [CLHealthAssessmentUtilities limitStart:&v107 andEnd:&v106 maxDuration:259190.0 from:CFAbsoluteTimeGetCurrent()];
    if ((sub_100477FAC([v12 adaptee], &v107, &v106, v24) & 1) == 0)
    {
      [v12 setLastProcessedTime:v106];
      if (qword_1025D4590 != -1)
      {
        sub_10188BF5C();
      }

      v71 = qword_1025D4598;
      if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
      {
        v120 = 134349056;
        v121 = v106;
        _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_DEFAULT, "No valid period, marking up to %{public}f as processed", &v120, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10188CD80();
      }

      goto LABEL_18;
    }

    v106 = fmin(v106, v8);
    v26 = [NSDate alloc];
    v27 = [v26 initWithTimeIntervalSinceReferenceDate:v107];
    v28 = [NSDate alloc];
    v29 = [v28 initWithTimeIntervalSinceReferenceDate:v106 + 2.0];
    v105 = [objc_msgSend(v12 "sensorRecorder")];
    v104 = [objc_msgSend(v12 "sensorRecorder")];
    if (qword_1025D4590 != -1)
    {
      sub_10188BF5C();
    }

    v30 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
    {
      v120 = 134349824;
      v121 = v107;
      v122 = 2050;
      v123 = v106;
      v124 = 1026;
      LODWORD(v125[0]) = v105 != 0;
      WORD2(v125[0]) = 1026;
      *(v125 + 6) = v104 != 0;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "Requested sensorRecorder data from %{public}f to %{public}f. Accel=%{public}d, Gyro=%{public}d", &v120, 0x22u);
    }

    v101 = v10;
    v102 = v7;
    if (sub_10000A100(121, 2))
    {
      bzero(&v120, 0x65CuLL);
      if (qword_1025D4590 != -1)
      {
        sub_10188BF5C();
      }

      v114 = 134349824;
      v115 = v107;
      v116 = 2050;
      v117 = v106;
      v118 = 1026;
      LODWORD(v119[0]) = v105 != 0;
      WORD2(v119[0]) = 1026;
      *(v119 + 6) = v104 != 0;
      _os_log_send_and_compose_impl(2, 0, &v120, 1628, dword_100000000, qword_1025D4598, 0, "Requested sensorRecorder data from %{public}f to %{public}f. Accel=%{public}d, Gyro=%{public}d", &v114, 34);
      v90 = v89;
      sub_100152C7C("Generic", 1, 0, 2, "[CLHealthAssessmentNotifierAdapter processNextIntervalWithRemainingDurationToProcess:endTime:updateCanContinue:]", "%s\n", v89);
      if (v90 != &v120)
      {
        free(v90);
      }
    }

    v103 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    while (1)
    {
      if (v33 >= v35)
      {
        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v105);
        if (!v36)
        {
          goto LABEL_63;
        }

        v35 = v36;
        v33 = 0;
      }

      if (v32 >= v34)
      {
        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104);
        if (!v37)
        {
          goto LABEL_63;
        }

        v34 = v37;
        v32 = 0;
      }

      v38 = *(&v120 + v33);
      v39 = *(&v114 + v32);
      [v38 startTime];
      v41 = v40;
      [v39 startTime];
      v43 = v42;
      if (v41 > v106 && v42 > v106)
      {
        break;
      }

      if (v41 >= v42)
      {
        if (v42 <= v106 && v42 > v107)
        {
          [v39 rotationRate];
          v62 = v61;
          [v39 rotationRate];
          v64 = v63;
          [v39 rotationRate];
          v66 = v65;
          tremorDetectionService = [v12 tremorDetectionService];
          *&v68 = v62;
          *&v69 = v64;
          *&v70 = v66;
          [tremorDetectionService feedGyroSample:v68 time:{v69, v70, v43}];
          [v12 setUpdateStartTime:v43];
          ++v103;
        }

        ++v32;
      }

      else
      {
        if (v41 <= v106 && v41 > v107)
        {
          [v38 acceleration];
          v47 = v46;
          [v38 acceleration];
          v49 = v48;
          [v38 acceleration];
          v51 = v50;
          tremorDetectionService2 = [v12 tremorDetectionService];
          *&v53 = v47;
          *&v54 = v49;
          *&v55 = v51;
          [tremorDetectionService2 feedAccelSample:v53 time:{v54, v55, v41}];
          choreaDetectionService = [v12 choreaDetectionService];
          *&v57 = v47;
          *&v58 = v49;
          *&v59 = v51;
          [choreaDetectionService feedAccelSample:v57 time:{v58, v59, v41}];
          [v12 setUpdateStartTime:v41];
          ++v31;
        }

        ++v33;
      }
    }

    [v12 setUpdateStartTime:?];
LABEL_63:
    if (v31 | v103)
    {
      if (qword_1025D4590 != -1)
      {
        sub_10188BF5C();
      }

      v78 = qword_1025D4598;
      if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
      {
        [v12 updateStartTime];
        *buf = 67240704;
        *v112 = v31;
        *&v112[4] = 1026;
        *&v112[6] = v103;
        *v113 = 2050;
        *&v113[2] = v79 - v107;
        _os_log_impl(dword_100000000, v78, OS_LOG_TYPE_DEFAULT, "New records read, accel = %{public}d, gyro = %{public}d, duration processed = %{public}lf", buf, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4590 != -1)
        {
          sub_10188BF5C();
        }

        v91 = qword_1025D4598;
        [v12 updateStartTime];
        v108 = 67240704;
        *v109 = v31;
        *&v109[4] = 1026;
        *&v109[6] = v103;
        *v110 = 2050;
        *&v110[2] = v92 - v107;
        LODWORD(v100) = 24;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v91, 0, "New records read, accel = %{public}d, gyro = %{public}d, duration processed = %{public}lf", &v108, v100);
        v94 = v93;
        sub_100152C7C("Generic", 1, 0, 2, "[CLHealthAssessmentNotifierAdapter processNextIntervalWithRemainingDurationToProcess:endTime:updateCanContinue:]", "%s\n", v93);
        if (v94 != buf)
        {
          free(v94);
        }
      }

      [v12 updateStartTime];
      v74 = v102;
      *v101 = *v101 - (v80 - v107);
    }

    else
    {
      v72 = CFAbsoluteTimeGetCurrent() + -600.0;
      [v12 updateStartTime];
      if (v73 >= v72)
      {
        v74 = v102;
        if (qword_1025D4590 != -1)
        {
          sub_10188BF5C();
        }

        v82 = qword_1025D4598;
        if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
        {
          [v12 updateStartTime];
          *buf = 134349056;
          *v112 = v83;
          _os_log_impl(dword_100000000, v82, OS_LOG_TYPE_DEFAULT, "No new records from sensorRecorder, updateStartTime is up to date (%{public}f)", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10188CE74();
        }

        goto LABEL_87;
      }

      v74 = v102;
      if (qword_1025D4590 != -1)
      {
        sub_10188BF5C();
      }

      v75 = qword_1025D4598;
      if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
      {
        [v12 updateStartTime];
        v77 = v106;
        if (v72 < v106)
        {
          v77 = v72;
        }

        *buf = 134349312;
        *v112 = v76;
        *&v112[8] = 2050;
        *v113 = v77;
        _os_log_impl(dword_100000000, v75, OS_LOG_TYPE_DEFAULT, "No new records from sensorRecorder, advancing startUpdateTime from %{public}f to %{public}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4590 != -1)
        {
          sub_10188BF5C();
        }

        v95 = qword_1025D4598;
        [v12 updateStartTime];
        v97 = v106;
        if (v72 < v106)
        {
          v97 = v72;
        }

        v108 = 134349312;
        *v109 = v96;
        *&v109[8] = 2050;
        *v110 = v97;
        LODWORD(v100) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v95, 0, "No new records from sensorRecorder, advancing startUpdateTime from %{public}f to %{public}f", &v108, v100);
        v99 = v98;
        sub_100152C7C("Generic", 1, 0, 2, "[CLHealthAssessmentNotifierAdapter processNextIntervalWithRemainingDurationToProcess:endTime:updateCanContinue:]", "%s\n", v98);
        if (v99 != buf)
        {
          free(v99);
        }

        v74 = v102;
      }

      if (v72 < v106)
      {
        [v12 setUpdateStartTime:v72];
LABEL_87:
        v81 = 0;
        goto LABEL_88;
      }

      [v12 setUpdateStartTime:?];
    }

    v81 = 1;
LABEL_88:
    *v74 = v81;
    return;
  }

  if (qword_1025D4590 != -1)
  {
    sub_10188BE6C();
  }

  v21 = qword_1025D4598;
  if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v120) = 0;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "DB not accessible, cannot process accel, gyro data", &v120, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10188CBA8();
  }

  *v7 = 0;
  adaptee = [v12 adaptee];
  sub_100477F10(adaptee, v23);
}

- (void)addMonitoringPeriodFrom:(double)from until:(double)until
{
  monitorKinesiasStart = [(CLHealthAssessmentNotifierAdapter *)self monitorKinesiasStart];
  if (v9 == 0.0 || (monitorKinesiasStart = [(CLHealthAssessmentNotifierAdapter *)self monitorKinesiasExpiration], v10 < from))
  {
    self->_monitorKinesiasStart = from;
    v11 = sub_1000206B4(monitorKinesiasStart, v8);
    v12 = sub_100116DD4(v11, @"kMonitorKinesiasStart", &self->_monitorKinesiasStart);
    v14 = sub_1000206B4(v12, v13);
    LOBYTE(v22) = 1;
    monitorKinesiasStart = sub_1000434C8(v14, @"kMonitorKinesiasHasData", &v22);
  }

  self->_monitorKinesiasExpiration = until;
  v15 = sub_1000206B4(monitorKinesiasStart, v8);
  v16 = sub_100116DD4(v15, @"kMonitorKinesiasExpiration", &self->_monitorKinesiasExpiration);
  v18 = *sub_1000206B4(v16, v17);
  (*(v18 + 944))();
  if (qword_1025D4590 != -1)
  {
    sub_10188BF5C();
  }

  v19 = qword_1025D4598;
  if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
  {
    monitorKinesiasStart = self->_monitorKinesiasStart;
    monitorKinesiasExpiration = self->_monitorKinesiasExpiration;
    v22 = 134349312;
    v23 = monitorKinesiasStart;
    v24 = 2050;
    v25 = monitorKinesiasExpiration;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "Updated monitoring period to %{public}f - %{public}f", &v22, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188D634();
  }
}

- (void)startUpdatesforAnalyzer:(int)analyzer
{
  anySubscribedToSensorRecorder = [(CLHealthAssessmentNotifierAdapter *)self anySubscribedToSensorRecorder];
  if (!analyzer)
  {
    v6 = &OBJC_IVAR___CLHealthAssessmentNotifierAdapter_fTremorSubscribed;
    if (anySubscribedToSensorRecorder)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (analyzer != 1)
  {
    return;
  }

  v6 = &OBJC_IVAR___CLHealthAssessmentNotifierAdapter_fDyskinesiaSubscribed;
  if ((anySubscribedToSensorRecorder & 1) == 0)
  {
LABEL_4:
    [(CLHealthAssessmentNotifierAdapter *)self updateSensorRecorderSubscription];
  }

LABEL_5:
  self->super.CLIntersiloService_opaque[*v6] = 1;
}

- (void)stopMonitoring
{
  [+[NSDate date](NSDate timeIntervalSinceReferenceDate];
  v4 = v3;
  monitorKinesiasExpiration = [(CLHealthAssessmentNotifierAdapter *)self monitorKinesiasExpiration];
  if (v7 > v4)
  {
    self->_monitorKinesiasExpiration = v4;
    v8 = sub_1000206B4(monitorKinesiasExpiration, v6);
    v9 = sub_100116DD4(v8, @"kMonitorKinesiasExpiration", &self->_monitorKinesiasExpiration);
    v11 = *sub_1000206B4(v9, v10);
    (*(v11 + 944))();
    if (qword_1025D4590 != -1)
    {
      sub_10188BE6C();
    }

    v12 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
    {
      monitorKinesiasStart = self->_monitorKinesiasStart;
      monitorKinesiasExpiration = self->_monitorKinesiasExpiration;
      v15 = 134349312;
      v16 = monitorKinesiasStart;
      v17 = 2050;
      v18 = monitorKinesiasExpiration;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "Stop monitoring, set period to %{public}f - %{public}f", &v15, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188D72C();
    }

    self->fDyskinesiaSubscribed = 0;
    self->fTremorSubscribed = 0;
    [(CLHealthAssessmentNotifierAdapter *)self updateSensorRecorderSubscription];
  }
}

- (void)syncgetResultReady:(id)ready ForAnalyzer:(int)analyzer
{
  adaptee = [(CLHealthAssessmentNotifierAdapter *)self adaptee];

  sub_100478A38(adaptee, ready, analyzer);
}

- (void)aggregateRecords
{
  adaptee = [(CLHealthAssessmentNotifierAdapter *)self adaptee];
  if (sub_1004790B0(adaptee, v4))
  {
    [(CLTimer *)[(CLHealthAssessmentNotifierAdapter *)self fAggregateRecordsTimer] setNextFireDelay:3600.0];
    if (qword_1025D4590 != -1)
    {
      sub_10188BE6C();
    }

    v5 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
    {
      [(CLTimer *)[(CLHealthAssessmentNotifierAdapter *)self fAggregateRecordsTimer] nextFireTime];
      v8 = 134349056;
      v9 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "fAggregateRecordsTimer.nextFireTime, %{public}f", &v8, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188DC04();
    }
  }

  else
  {
    if (qword_1025D4590 != -1)
    {
      sub_10188BE6C();
    }

    v7 = qword_1025D4598;
    if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Closing down CLHealthAssessmentNotifier, past timeout period for stored data", &v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188DB28();
    }

    [(CLHealthAssessmentNotifierAdapter *)self teardownService];
  }
}

- (void)setLastProcessedTime:(double)time
{
  if (self->_lastProcessedTime < time)
  {
    self->_lastProcessedTime = time;
    v5 = sub_1000206B4(self, a2);
    v6 = sub_100116DD4(v5, @"kMonitorKinesiasLastProcessed", &self->_lastProcessedTime);
    v8 = *sub_1000206B4(v6, v7);
    (*(v8 + 944))();
  }

  [(CLHealthAssessmentNotifierAdapter *)self updateStartTime];
  if (timeCopy < time)
  {
    timeCopy = time;
  }

  [(CLHealthAssessmentNotifierAdapter *)self setUpdateStartTime:timeCopy];
}

+ (BOOL)isSupported
{
  if (qword_102656348 != -1)
  {
    sub_10188DDD8();
  }

  return byte_102656340;
}

@end