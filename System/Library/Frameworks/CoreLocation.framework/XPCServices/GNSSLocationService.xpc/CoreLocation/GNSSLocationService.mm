@interface GNSSLocationService
- (GNSSLocationService)init;
- (void)configureInitializeAndStartRavenSupervisorWithPlatformInfo:(id)info withParametersOverrideString:(id)string withCompletion:(id)completion;
- (void)getRavenSolutionAtMCTime:(double)time WithReply:(id)reply;
- (void)getRavenSolutionWithReply:(id)reply;
- (void)pauseResetAndFreeRavenSupervisorWithCompletion:(id)completion;
- (void)raiseRavenEventsFromData:(id)data;
@end

@implementation GNSSLocationService

- (GNSSLocationService)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,init", buf, 2u);
  }

  v11.receiver = self;
  v11.super_class = GNSSLocationService;
  v3 = [(GNSSLocationService *)&v11 init];
  if (v3)
  {
    v4 = [NSString stringWithFormat:@"_GNSSLocationService, %p", v3];
    uTF8String = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(uTF8String, v6);
    queue = v3->_queue;
    v3->_queue = v7;

    fOSTransaction = v3->fOSTransaction;
    v3->fOSTransaction = 0;

    v3->hasEntitlementToRunRaven = 0;
  }

  return v3;
}

- (void)configureInitializeAndStartRavenSupervisorWithPlatformInfo:(id)info withParametersOverrideString:(id)string withCompletion:(id)completion
{
  v5 = __chkstk_darwin(self, a2, info, string, completion);
  v7 = v6;
  v9 = v8;
  v10 = v5;
  v12 = v11;
  v13 = v9;
  v14 = v7;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLGLS,configureInitializeAndStartRavenSupervisorWithPlatformInfo", buf, 2u);
  }

  v15 = objc_autoreleasePoolPush();
  if ((*(v10 + 32) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v19 = "CLGLS,GNSSLocationService,application missing raven entitlement";
      goto LABEL_19;
    }

LABEL_20:
    v14[2](v14, 0);
    goto LABEL_21;
  }

  if (!*(v10 + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,Creating OS transaction", buf, 2u);
    }

    v16 = os_transaction_create();
    v17 = *(v10 + 24);
    *(v10 + 24) = v16;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,configureInitializeAndStartRavenSupervisorWithPlatformInfo", buf, 2u);
  }

  v18 = *(v10 + 16);
  if (!v18)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,fRavenSupervisor object not yet created. Creating...", buf, 2u);
    }

    operator new();
  }

  if (raven::RavenSupervisor::IsConfigured(v18))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v19 = "CLGLS,GNSSLocationService,configureRavenSupervisor,already configured, not reconfiguring.";
LABEL_19:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  sub_100001BE8(&__dst, [v12 bytes], objc_msgSend(v12, "length"));
  CoreNavigation::CLP::LogEntry::LogEntry::LogEntry(v39);
  if ((wireless_diagnostics::google::protobuf::MessageLite::ParseFromString() & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,configureInitializeAndStartRavenSupervisorWithPlatformInfo,failed to parse platforminfo from string", buf, 2u);
    }

    v14[2](v14, 0);
    goto LABEL_45;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  sub_100002924(&v35);
  if ((v41 & 2) == 0)
  {
    goto LABEL_38;
  }

  if (v40)
  {
    v20 = v40;
    if ((*(v40 + 320) & 2) == 0)
    {
      goto LABEL_38;
    }

LABEL_31:
    v21 = *(v20 + 272);
    if (!v21)
    {
      v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 272);
    }

    if ((*(v21 + 28) & 2) == 0 || (raven::ConvertProtobufToRavenPlatformInfoObject() & 1) == 0)
    {
      goto LABEL_38;
    }

    raven::RavenParameters::RavenParameters();
    sub_100001C98(&v32, [v13 UTF8String]);
    if (SHIBYTE(v33) < 0)
    {
      if (*(&v32 + 1))
      {
        v22 = v32;
LABEL_49:
        if (raven::RavenParameters::LoadConfigurationString(buf, v22, 0))
        {
          if (SHIBYTE(v33) < 0)
          {
            sub_100002990(__p, v32, *(&v32 + 1));
          }

          else
          {
            *__p = v32;
            v31 = v33;
          }

          v23 = HIBYTE(v31);
          v24 = HIBYTE(v31);
          v25 = __p[0];
          if (v31 < 0)
          {
            v23 = __p[1];
          }

          else
          {
            v25 = __p;
          }

          if (v23)
          {
            do
            {
              if (*v25 == 10)
              {
                *v25 = 44;
              }

              v25 = (v25 + 1);
              --v23;
            }

            while (v23);
            v24 = HIBYTE(v31);
          }

          if (v24 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    else if (HIBYTE(v33))
    {
      v22 = &v32;
      goto LABEL_49;
    }

    sub_100002A34(__p);
    sub_100001D50(__p, buf);
    raven::RavenSupervisor::Configure();
    IsConfigured = raven::RavenSupervisor::IsConfigured(*(v10 + 16));
    v27 = (*(**(v10 + 16) + 48))(*(v10 + 16));
    v28 = v27;
    v29 = IsConfigured & v27;
    if (v29 == 1)
    {
      cnframework::Supervisor::Start(*(v10 + 16));
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100004BB4(IsConfigured, v28);
    }

    v14[2](v14, v29);
    sub_100004540(__p);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    sub_100004540(buf);
    goto LABEL_41;
  }

  v20 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
  if ((*(v20 + 320) & 2) != 0)
  {
    goto LABEL_31;
  }

LABEL_38:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,configureInitializeAndStartRavenSupervisorWithPlatformInfo,failed to convert protobuf to platform info object", buf, 2u);
  }

  v14[2](v14, 0);
LABEL_41:
  if (SBYTE7(v38) < 0)
  {
    operator delete(v37);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(*(&v35 + 1));
  }

LABEL_45:
  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(v39);
  if (v43 < 0)
  {
    operator delete(__dst);
  }

LABEL_21:
  objc_autoreleasePoolPop(v15);
}

- (void)getRavenSolutionWithReply:(id)reply
{
  replyCopy = reply;
  v5 = objc_autoreleasePoolPush();
  if (!self->hasEntitlementToRunRaven)
  {
    v14 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      sub_100004C84(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,getRavenSolutionWithReply", buf, 2u);
  }

  if (!self->fRavenSupervisor.__ptr_)
  {
    v22 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      sub_100004CFC(v22, v23, v24, v25, v26, v27, v28, v29);
    }

LABEL_13:
    replyCopy[2](replyCopy, 0);
    goto LABEL_26;
  }

  sub_100004654(buf);
  if (raven::RavenSupervisor::GetRavenSolution(self->fRavenSupervisor.__ptr_, buf))
  {
    v6 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      sub_100004CC0(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    __p = 0;
    v34 = 0;
    v35 = 0;
    if (ConvertRavenSolutionEventToString(buf, &__p))
    {
      if (v35 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v35 >= 0)
      {
        v31 = HIBYTE(v35);
      }

      else
      {
        v31 = v34;
      }

      v32 = [NSData dataWithBytes:p_p length:v31];
      (replyCopy)[2](replyCopy, v32);
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }
  }

  raven::RavenSolutionEvent::~RavenSolutionEvent(buf);
LABEL_26:
  objc_autoreleasePoolPop(v5);
}

- (void)getRavenSolutionAtMCTime:(double)time WithReply:(id)reply
{
  replyCopy = reply;
  v7 = objc_autoreleasePoolPush();
  hasEntitlementToRunRaven = self->hasEntitlementToRunRaven;
  v9 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (!hasEntitlementToRunRaven)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,application missing raven entitlement", buf, 2u);
    }

    goto LABEL_13;
  }

  if (v9)
  {
    *buf = 134349056;
    timeCopy = time;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,getRavenSolutionAtMCTimeWithReply,%{public}.2lf", buf, 0xCu);
  }

  if (!self->fRavenSupervisor.__ptr_)
  {
    v18 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      sub_100004D74(v18, v19, v20, v21, v22, v23, v24, v25);
    }

LABEL_13:
    replyCopy[2](replyCopy, 0);
    goto LABEL_26;
  }

  sub_100004654(buf);
  __p[0] = 0;
  __p[1] = 0;
  CNTimeSpan::SetTimeSpan(__p, 0, time);
  v31 = *__p;
  if (raven::RavenSupervisor::GetRavenSolution())
  {
    v10 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      sub_100004D38(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v30 = 0;
    if (ConvertRavenSolutionEventToString(buf, __p))
    {
      if (v30 >= 0)
      {
        v26 = __p;
      }

      else
      {
        v26 = __p[0];
      }

      if (v30 >= 0)
      {
        v27 = HIBYTE(v30);
      }

      else
      {
        v27 = __p[1];
      }

      v28 = [NSData dataWithBytes:v26 length:v27];
      (replyCopy)[2](replyCopy, v28);
    }

    else
    {
      replyCopy[2](replyCopy, 0);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }
  }

  raven::RavenSolutionEvent::~RavenSolutionEvent(buf);
LABEL_26:
  objc_autoreleasePoolPop(v7);
}

- (void)pauseResetAndFreeRavenSupervisorWithCompletion:(id)completion
{
  completionCopy = completion;
  hasEntitlementToRunRaven = self->hasEntitlementToRunRaven;
  if (hasEntitlementToRunRaven)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,pauseResetAndFreeRavenSupervisor", buf, 2u);
    }

    ptr = self->fRavenSupervisor.__ptr_;
    if (ptr)
    {
      cnframework::Supervisor::Pause(ptr);
      cnframework::Supervisor::Reset(self->fRavenSupervisor.__ptr_);
      v7 = self->fRavenSupervisor.__ptr_;
      self->fRavenSupervisor.__ptr_ = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }

    if (self->fOSTransaction)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,Releasing OS transaction", v17, 2u);
      }

      fOSTransaction = self->fOSTransaction;
      self->fOSTransaction = 0;
    }
  }

  else
  {
    v9 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      sub_100004C84(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  completionCopy[2](completionCopy, hasEntitlementToRunRaven);
}

- (void)raiseRavenEventsFromData:(id)data
{
  dataCopy = data;
  v5 = objc_autoreleasePoolPush();
  if (self->hasEntitlementToRunRaven)
  {
    if (self->fRavenSupervisor.__ptr_)
    {
      sub_100001BE8(__p, [dataCopy bytes], objc_msgSend(dataCopy, "length"));
      v6 = v25;
      if ((v25 & 0x80u) != 0)
      {
        v6 = __p[1];
      }

      if (v6)
      {
        raven::RavenSupervisor::RaiseEventsFrom();
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CLGLS,warning,raiseRavenEventsFromData,msgString empty", v23, 2u);
      }

      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v15 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v15)
      {
        sub_100004DB0(v15, v16, v17, v18, v19, v20, v21, v22);
      }
    }
  }

  else
  {
    v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      sub_100004C84(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  objc_autoreleasePoolPop(v5);
}

@end