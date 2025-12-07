@interface CLTelephonyStewieStateObserver
- (CLTelephonyStewieStateObserver)initWithQueue:(id)queue helperObj:(CLTelephonyStewieStateObserverHelper *)obj;
- (void)shutdown;
- (void)stateChanged:(id)changed;
@end

@implementation CLTelephonyStewieStateObserver

- (CLTelephonyStewieStateObserver)initWithQueue:(id)queue helperObj:(CLTelephonyStewieStateObserverHelper *)obj
{
  v12.receiver = self;
  v12.super_class = CLTelephonyStewieStateObserver;
  v6 = [(CLTelephonyStewieStateObserver *)&v12 init];
  if (v6)
  {
    v7 = [[CTStewieStateMonitor alloc] initWithDelegate:v6 queue:queue];
    v6->_fStewieStateObserver = v7;
    if (v7)
    {
      v6->_fHelper = obj;
      [(CTStewieStateMonitor *)v7 start];
      if (qword_1025D4870 != -1)
      {
        sub_1018C8028();
      }

      v8 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#CLT,CTStewieStateMonitor,started", v11, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C8DB0();
      }
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018C8028();
      }

      v9 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#CLT,CTStewieStateMonitor,alloc failed", v11, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C8E94();
      }
    }
  }

  return v6;
}

- (void)stateChanged:(id)changed
{
  if (changed)
  {
    isStewieActive = [changed isStewieActive];
    HIBYTE(v18) = isStewieActive;
    status = [changed status];
    reason = [changed reason];
    allowedServices = [changed allowedServices];
    transportType = [changed transportType];
    if (self->_fHelper)
    {
      v10 = transportType;
      if (qword_1025D4870 != -1)
      {
        sub_1018C7FD0();
      }

      v11 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67241216;
        *&buf[4] = status;
        v29 = 1026;
        v30 = reason;
        v31 = 1026;
        v32 = allowedServices;
        v33 = 1026;
        v34 = v10;
        v35 = 1026;
        v36 = isStewieActive;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#CLT,CTStewieStateMonitor,status,%{public}d,reason,%{public}d,service,%{public}d,transport,%{public}d,usecaseactive,%{public}d", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4870 != -1)
        {
          sub_1018C8028();
        }

        LODWORD(values) = 67241216;
        HIDWORD(values) = status;
        v20 = 1026;
        v21 = reason;
        v22 = 1026;
        v23 = allowedServices;
        v24 = 1026;
        v25 = v10;
        v26 = 1026;
        v27 = isStewieActive;
        LODWORD(v18) = 32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 0, "#CLT,CTStewieStateMonitor,status,%{public}d,reason,%{public}d,service,%{public}d,transport,%{public}d,usecaseactive,%{public}d", &values, v18);
        v17 = v16;
        sub_100152C7C("Generic", 1, 0, 2, "[CLTelephonyStewieStateObserver stateChanged:]", "%s\n", v16);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      v12 = sub_1001CF0F0(&v18 + 7);
      *buf = @"kStewieUseCaseActiveKey";
      values = v12;
      v13 = CFDictionaryCreate(0, buf, &values, 1, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v14 = v13;
      if (qword_102636F30)
      {
        (*(*qword_102636F30 + 256))(qword_102636F30, @"kStewieStatus", v13);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C7FD0();
    }

    v15 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "unexpected CTStewieState null pointer in delegate callback", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C8F78();
    }
  }
}

- (void)shutdown
{
  p_fStewieStateObserver = &self->_fStewieStateObserver;
  fStewieStateObserver = self->_fStewieStateObserver;
  if (fStewieStateObserver)
  {

    *p_fStewieStateObserver = 0;
    p_fStewieStateObserver[1] = 0;
  }
}

@end