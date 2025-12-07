@interface CLPredictedWalkDistanceServiceWatch
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLPredictedWalkDistanceServiceWatch)init;
- (id).cxx_construct;
- (void)beginService;
- (void)endService;
- (void)onAddBout:(CLPredictedWalkDistanceBoutEntry *)bout;
- (void)onMotionStateMediatorNotification:(const int *)notification data:(const NotificationData *)data;
- (void)onStepCountNotification:(const int *)notification data:(const NotificationData *)data;
- (void)onUserInfoUpdate:(const int *)update data:(const void *)data;
- (void)setUpAggregationOnTimer;
@end

@implementation CLPredictedWalkDistanceServiceWatch

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
  if (qword_10265A480 != -1)
  {
    sub_10194A81C();
  }

  return qword_10265A478;
}

- (CLPredictedWalkDistanceServiceWatch)init
{
  v3.receiver = self;
  v3.super_class = CLPredictedWalkDistanceServiceWatch;
  return [(CLPredictedWalkDistanceServiceWatch *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLPredictedWalkDistanceServiceWatchProtocol outboundProtocol:&OBJC_PROTOCOL___CLPredictedWalkDistanceServiceWatchClientProtocol];
}

- (void)beginService
{
  if (qword_1025D4430 != -1)
  {
    sub_10194A830();
  }

  v2 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Starting up CLPredictedWalkDistanceServiceWatch", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194A844();
  }

  sub_1003F72AC();
}

- (void)endService
{
  ptr = self->fMotionStateMediatorClient.__ptr_;
  if (ptr)
  {
    [*(ptr + 2) unregister:*(ptr + 1) forNotification:0];
  }

  v4 = self->fStepCountClient.__ptr_;
  if (v4)
  {
    v6 = *(v4 + 1);
    v5 = *(v4 + 2);

    [v5 unregister:v6 forNotification:0];
  }
}

- (void)onMotionStateMediatorNotification:(const int *)notification data:(const NotificationData *)data
{
  [-[CLPredictedWalkDistanceServiceWatch universe](self universe];
  ptr = self->fBoutDetector.__ptr_;

  sub_1005C8E44(ptr, (data + 8));
}

- (void)onStepCountNotification:(const int *)notification data:(const NotificationData *)data
{
  [-[CLPredictedWalkDistanceServiceWatch universe](self universe];
  ptr = self->fBoutDetector.__ptr_;

  sub_1005C9568(ptr, data);
}

- (void)onAddBout:(CLPredictedWalkDistanceBoutEntry *)bout
{
  if (qword_1025D4430 != -1)
  {
    sub_10194A830();
  }

  v5 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to send ids message from watch to phone", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194A928();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100822634;
  v6[3] = &unk_102471720;
  v6[4] = [NSData dataWithBytes:bout length:120];
  [objc_msgSend(objc_msgSend(-[CLPredictedWalkDistanceServiceWatch universe](self "universe")];
}

- (void)onUserInfoUpdate:(const int *)update data:(const void *)data
{
  [-[CLPredictedWalkDistanceServiceWatch universe](self "universe")];
  if (*update == 2)
  {
    if (qword_1025D4430 != -1)
    {
      sub_10194A830();
    }

    v7 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLPredictedWalkDistanceServiceWatch: Received user info update", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194AB08();
    }

    sub_1005CA638(self->fBoutDetector.__ptr_, data);
  }

  else
  {
    if (qword_1025D4430 != -1)
    {
      sub_10194A830();
    }

    v8 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *update;
      v10[0] = 67109120;
      v10[1] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning Unhandled notification type, %d", v10, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194AA04(update);
    }
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
    *v11 = xmmword_101C79F40;
    *(v11 + 16) = 0;
    p_fUserInfoClient = 24 * v7 + 24;
    v12 = ptr[1] - *ptr;
    v13 = 24 * v7 - v12;
    memcpy((v11 - v12), *ptr, v12);
    self = *ptr;
    *ptr = v13;
    ptr[1] = p_fUserInfoClient;
    ptr[2] = 0;
    if (self)
    {
      operator delete(self);
    }
  }

  else
  {
    *v5->CLIntersiloService_opaque = xmmword_101C79F40;
    LOBYTE(v5->fStepCountClient.__ptr_) = 0;
    p_fUserInfoClient = &v5->fUserInfoClient;
  }

  ptr[1] = p_fUserInfoClient;
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
  selfCopy[8] = v16;
  dispatch_source_set_timer(v16, 0, v15, 0xDF8475800uLL);
  v17 = selfCopy[8];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100822A28;
  v18[3] = &unk_102447418;
  v18[4] = selfCopy;
  dispatch_source_set_event_handler(v17, v18);
  dispatch_resume(selfCopy[8]);
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
  return self;
}

@end