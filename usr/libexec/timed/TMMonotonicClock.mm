@interface TMMonotonicClock
- (TMMonotonicClock)initWithSyncInterval:(double)interval;
- (double)coarseMonotonicTime;
- (unint64_t)lastWake;
- (void)dealloc;
- (void)montonicTimeForMachTime:(unint64_t)time toQueue:(id)queue withCompletionHandler:(id)handler;
@end

@implementation TMMonotonicClock

- (double)coarseMonotonicTime
{
  machTime = [(TMMonotonicClock *)self machTime];
  v4 = sub_100001918(0, 0);
  v5 = sub_100001E00(self->_lastCoarseMonotonicTimeMachTime, machTime);
  v6 = v4 - self->_lastCoarseMonotonicTime;
  v9 = sub_100001EB0(v7, v8);
  if (v6 >= v9 * -0.5)
  {
    if (v5 > v9 + v9 && v6 < v9 * 0.5)
    {
      v16 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_FAULT))
      {
        lastCoarseMonotonicTime = self->_lastCoarseMonotonicTime;
        v19 = 134219008;
        v20 = v4;
        v21 = 2048;
        v22 = lastCoarseMonotonicTime;
        v23 = 2048;
        v24 = v6;
        v25 = 2048;
        v26 = v5;
        v27 = 2048;
        v28 = v9;
        v12 = "PMU RTC appears stalled: %f - %f = %f; mach advanced by %f; resolution %f";
        v13 = v16;
        v14 = 52;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v10 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_FAULT))
    {
      v11 = self->_lastCoarseMonotonicTime;
      v19 = 134218752;
      v20 = v4;
      v21 = 2048;
      v22 = v11;
      v23 = 2048;
      v24 = v6;
      v25 = 2048;
      v26 = v9;
      v12 = "PMU RTC went backward: %f - %f = %f; resolution %f";
      v13 = v10;
      v14 = 42;
LABEL_12:
      _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, v12, &v19, v14);
    }
  }

  self->_lastCoarseMonotonicTime = v4;
  self->_lastCoarseMonotonicTimeMachTime = machTime;
  return v4;
}

- (unint64_t)lastWake
{
  if (qword_100033208 != -1)
  {
    sub_1000174E4();
  }

  v7 = 8;
  v8 = 0;
  if (sysctl(&unk_1000331F8, qword_100033200, &v8, &v7, 0, 0))
  {
    v3 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
    {
      sub_1000174F8(v3);
    }

    v4 = -1;
    v8 = -1;
  }

  else
  {
    v4 = v8;
  }

  if (self->_lastWake != v4)
  {
    self->_lastWake = v4;
    v5 = qword_100033220;
    if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "cmd,lastWake,mach,%llu", buf, 0xCu);
    }

    AnalyticsSendEventLazy();
    return v8;
  }

  return v4;
}

- (TMMonotonicClock)initWithSyncInterval:(double)interval
{
  v8.receiver = self;
  v8.super_class = TMMonotonicClock;
  v4 = [(TMMonotonicClock *)&v8 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = [+[NSString stringWithFormat:](NSString UTF8String:@"%@.%llx"];
    v4->_workQ = dispatch_queue_create(v6, 0);
    v4->_lastCoarseMonotonicTimeMachTime = [(TMMonotonicClock *)v4 machTime];
    v4->_syncInterval = interval;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TMMonotonicClock;
  [(TMMonotonicClock *)&v3 dealloc];
}

- (void)montonicTimeForMachTime:(unint64_t)time toQueue:(id)queue withCompletionHandler:(id)handler
{
  v10 = mach_absolute_time();
  if (v10 < time)
  {
    sub_100017478(a2, self, time, v10);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000C190;
  v11[3] = &unk_100029210;
  v11[4] = self;
  v11[5] = queue;
  v11[6] = handler;
  v11[7] = time;
  dispatch_async([(TMMonotonicClock *)self workQ], v11);
}

@end