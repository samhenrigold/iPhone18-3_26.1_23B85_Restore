@interface CLHarvesterService
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CLHarvesterService)init;
- (id).cxx_construct;
- (id)jsonObject;
- (void)beginService;
- (void)constructController;
- (void)constructMonitors;
- (void)constructPolicies;
- (void)constructSubHarvesters;
- (void)endService;
- (void)fetchStateWithReply:(id)reply;
- (void)submitSample:(id)sample;
@end

@implementation CLHarvesterService

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
  if (qword_102656630 != -1)
  {
    sub_1018987C8();
  }

  return qword_102656628;
}

+ (BOOL)isSupported
{
  if (qword_102656640 != -1)
  {
    sub_1018987DC();
  }

  return byte_102656638;
}

- (CLHarvesterService)init
{
  v3.receiver = self;
  v3.super_class = CLHarvesterService;
  return [(CLHarvesterService *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLHarvesterProtocol outboundProtocol:&OBJC_PROTOCOL___CLHarvesterClientProtocol];
}

- (void)constructController
{
  [(CLHarvesterService *)self universe];
  [(CLHarvesterService *)self universe];
  sub_1004CADBC();
}

- (void)constructMonitors
{
  if (self->_harvestController.__ptr_)
  {
    [(CLHarvesterService *)self universe];
    [(CLHarvesterService *)self universe];
    sub_1004CB0F8();
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1018987F0();
  }

  v3 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "Service attempting to construct monitors without controller", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101898B04();
  }
}

- (void)constructPolicies
{
  if (self->_harvestController.__ptr_)
  {
    if (self->_monitorGps.__ptr_)
    {
      [(CLHarvesterService *)self universe];
      [(CLHarvesterService *)self universe];
      sub_1004CB4C8();
    }

    sub_101898BF0();
  }

  sub_101898D7C();
}

- (void)constructSubHarvesters
{
  if (self->_harvestController.__ptr_)
  {
    if (self->_monitorGps.__ptr_)
    {
      if (self->_policyProactive.__ptr_ && self->_policyTrip.__ptr_)
      {
        [(CLHarvesterService *)self universe];
        [(CLHarvesterService *)self universe];
        sub_1004CBD14();
      }

      if (qword_1025D47D0 != -1)
      {
        sub_1018987F0();
      }

      v4 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Service attempting to construct subharvesters without policies", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101898F08();
      }
    }

    else
    {
      if (qword_1025D47D0 != -1)
      {
        sub_1018987F0();
      }

      v5 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Service attempting to construct subharvesters without gps monitor", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101898FF4();
      }
    }
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_1018987F0();
    }

    v3 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "Service attempting to construct subharvesters without controller", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018990E0();
    }
  }
}

- (void)beginService
{
  v3 = [objc_msgSend(-[CLHarvesterService universe](self "universe")];
  [(CLHarvesterService *)self constructController];
  [(CLHarvesterService *)self constructMonitors];
  self->_endpointSelector = objc_alloc_init(CLHEndpointSelector);
  v4 = [[CLHNetworkController alloc] initWithQueue:v3];
  self->_networkController = v4;
  [(CLHNetworkController *)v4 setEndpointSelector:self->_endpointSelector];
  v5 = [[CLHLocationClassifier alloc] initInUniverse:[(CLHarvesterService *)self universe]];
  self->_classifier = v5;
  [(CLHLocationClassifier *)v5 fetchLocationsOfInterestIfPossibleWithCompletionHandler:&stru_1024580D0];
  v6 = [[NSURL alloc] initFileURLWithPath:@"/var/root/Library/Caches/locationd/harvest/" isDirectory:1];
  self->_requestStore = [[CLHRequestStore alloc] initWithRootDirectory:v6 classifier:self->_classifier];

  self->_mescalSigner = -[CLMescalSigner initInSilo:]([CLMescalSigner alloc], "initInSilo:", [-[CLHarvesterService universe](self "universe")]);
  [(CLHarvesterService *)self constructPolicies];
  constructSubHarvesters = [(CLHarvesterService *)self constructSubHarvesters];
  v9 = sub_10001A3E8(constructSubHarvesters, v8);
  if (sub_100328630(v9, v10))
  {
    out_token[0] = 0;
    notify_register_dispatch("persistHarvestData", out_token, v3, &stru_102458110);
  }

  +[CLPMeta updateRegulatoryDomainEstimates];
  ptr = self->_harvestController.__ptr_;
  cntrl = self->_monitorGps.__cntrl_;
  v20 = self->_monitorGps.__ptr_;
  v21 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v13 = self->_policyProactive.__cntrl_;
  v18 = self->_policyProactive.__ptr_;
  v19 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  v14 = self->_policyTrip.__cntrl_;
  v16 = self->_policyTrip.__ptr_;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
  }

  memset(v15, 0, sizeof(v15));
  sub_1004CA7AC(v15, self->_subHarvesters.__begin_, self->_subHarvesters.__end_, (self->_subHarvesters.__end_ - self->_subHarvesters.__begin_) >> 4);
  sub_10056ECF8(ptr, &v20, &v18, &v16, v15);
  *out_token = v15;
  sub_1004CA974(out_token);
  if (v17)
  {
    sub_100008080(v17);
  }

  if (v19)
  {
    sub_100008080(v19);
  }

  if (v21)
  {
    sub_100008080(v21);
  }

  [-[CLHarvesterService universe](self "universe")];
  [(CLHarvesterService *)self universe];
  operator new();
}

- (void)endService
{
  ptr = self->fHarvestSettings.__ptr_;
  if (ptr)
  {
    sub_100EFD6E4(ptr);
  }

  notify_cancel(self->_countryCodeNotificationToken);
  dispatch_queue_set_specific([objc_msgSend(-[CLHarvesterService universe](self "universe")], &unk_102656648, &unk_102656648, 0);
  if (dispatch_get_specific(&unk_102656648) == &unk_102656648)
  {
    cntrl = self->_harvestController.__cntrl_;
    self->_harvestController.__ptr_ = 0;
    self->_harvestController.__cntrl_ = 0;
    if (cntrl)
    {
      sub_100008080(cntrl);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1004C9BD0;
    v8[3] = &unk_102447418;
    v8[4] = self;
    [objc_msgSend(-[CLHarvesterService universe](self "universe")];
  }

  v5 = self->_monitorGps.__cntrl_;
  self->_monitorGps.__ptr_ = 0;
  self->_monitorGps.__cntrl_ = 0;
  if (v5)
  {
    sub_100008080(v5);
  }

  v6 = self->_policyTrip.__cntrl_;
  self->_policyTrip.__ptr_ = 0;
  self->_policyTrip.__cntrl_ = 0;
  if (v6)
  {
    sub_100008080(v6);
  }

  v7 = self->_policyProactive.__cntrl_;
  self->_policyProactive.__ptr_ = 0;
  self->_policyProactive.__cntrl_ = 0;
  if (v7)
  {
    sub_100008080(v7);
  }

  sub_1004C9BF4(&self->_subHarvesters);
}

- (id)jsonObject
{
  v5[0] = @"endpointSelector";
  jsonObject = [(CLHEndpointSelector *)self->_endpointSelector jsonObject];
  v5[1] = @"locationClassifier";
  v6[0] = jsonObject;
  v6[1] = [(CLHLocationClassifier *)self->_classifier jsonObject];
  return [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
}

- (void)submitSample:(id)sample
{
  if (qword_1025D47D0 != -1)
  {
    sub_1018987F0();
  }

  v4 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 68289026;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:-submitSample: called}", &v15, 0x12u);
  }

  if (sub_1004C9FF8(+[NSXPCConnection currentConnection], @"com.apple.locationd.harvest.contribute"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      begin = self->_subHarvesters.__begin_;
      end = self->_subHarvesters.__end_;
      if (begin != end)
      {
        while (1)
        {
          v7 = *begin;
          v8 = begin[1];
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v9 = sub_1000183C0(v7);
          if (v8)
          {
            sub_100008080(v8);
          }

          if (v9 == 9)
          {
            break;
          }

          begin += 2;
          if (begin == end)
          {
            begin = end;
            break;
          }
        }
      }

      v10 = begin[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1004025E0();
      if (v10)
      {
        sub_100008080(v10);
      }
    }

    else
    {
      if (qword_1025D47D0 != -1)
      {
        sub_1018989CC();
      }

      v11 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_FAULT))
      {
        v12 = objc_opt_class();
        v15 = 68289282;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2114;
        v20 = v12;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:received sample of unrecognized type, class:%{public, location:escape_only}@}", &v15, 0x1Cu);
        if (qword_1025D47D0 != -1)
        {
          sub_1018989CC();
        }
      }

      v13 = qword_1025D47D8;
      if (os_signpost_enabled(qword_1025D47D8))
      {
        v14 = objc_opt_class();
        v15 = 68289282;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2114;
        v20 = v14;
        _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "received sample of unrecognized type", "{msg%{public}.0s:received sample of unrecognized type, class:%{public, location:escape_only}@}", &v15, 0x1Cu);
      }
    }
  }
}

- (void)fetchStateWithReply:(id)reply
{
  if (qword_1025D47D0 != -1)
  {
    sub_1018987F0();
  }

  v5 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:-fetchStateWithReply: called}", buf, 0x12u);
  }

  if (sub_1004C9FF8(+[NSXPCConnection currentConnection], @"com.apple.locationd.harvest.introspection"))
  {
    v7[0] = [(CLHEndpointSelector *)self->_endpointSelector jsonObject];
    v6[1] = @"classifier";
    v7[1] = [(CLHLocationClassifier *)self->_classifier jsonObject];
    v6[2] = @"requestStore";
    v7[2] = [(CLHRequestStore *)self->_requestStore jsonObject];
    (*(reply + 2))(reply, [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3]);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  if (qword_1025D47D0 != -1)
  {
    sub_1018987F0();
  }

  v6 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "received connection request", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018993C0();
  }

  v7 = sub_1004C9FF8(connection, @"com.apple.locationd.harvest.introspection");
  v8 = v7 | sub_1004C9FF8(connection, @"com.apple.locationd.harvest.contribute");
  if (v8 == 1)
  {
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CLHarvesterServerInterface];
    [(NSXPCInterface *)v9 setClass:objc_opt_class() forSelector:"submitSample:" argumentIndex:0 ofReply:0];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    [(NSXPCInterface *)v9 setClasses:[NSSet forSelector:"setWithObjects:" argumentIndex:v10 ofReply:v11 setWithObjects:v12, objc_opt_class(), 0], "fetchStateWithReply:", 0, 1];
    [connection setExportedInterface:v9];
    [connection setExportedObject:self];
    [connection _setQueue:{objc_msgSend(objc_msgSend(-[CLHarvesterService universe](self, "universe"), "silo"), "queue")}];
    [connection resume];
  }

  return v8;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 16) = 0;
  *(self + 19) = 0;
  return self;
}

@end