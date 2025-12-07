@interface LCSystemUtilities
+ (BOOL)liveCaptionsSupported;
+ (void)registerLiveCaptionsPID;
- (void)idleSleepTimerDisabled:(BOOL)disabled;
@end

@implementation LCSystemUtilities

+ (BOOL)liveCaptionsSupported
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = off_100064590;
  v8 = off_100064590;
  if (!off_100064590)
  {
    v3 = sub_1000020F8();
    v6[3] = dlsym(v3, "AXHasCapability");
    off_100064590 = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    sub_100045398();
  }

  return v2(@"LiveTranscription");
}

+ (void)registerLiveCaptionsPID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = qword_1000645A0;
  v9 = qword_1000645A0;
  if (!qword_1000645A0)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000226C;
    v5[3] = &unk_10005DB00;
    v5[4] = &v6;
    sub_10000226C(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  server = [v2 server];
  [server registerLiveCaptionsPID:getpid()];
}

- (void)idleSleepTimerDisabled:(BOOL)disabled
{
  disableIdleTimerAssertion = self->_disableIdleTimerAssertion;
  if (disabled)
  {
    if (disableIdleTimerAssertion)
    {
      return;
    }

    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v5 = qword_1000645A8;
    v18 = qword_1000645A8;
    if (!qword_1000645A8)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000022C4;
      v14[3] = &unk_10005DB00;
      v14[4] = &v15;
      sub_1000022C4(v14);
      v5 = v16[3];
    }

    v6 = v5;
    _Block_object_dispose(&v15, 8);
    sharedInstance = [v5 sharedInstance];
    v8 = [sharedInstance acquireAssertionToDisableIdleTimerWithReason:@"LiveCaptions"];
    v9 = self->_disableIdleTimerAssertion;
    self->_disableIdleTimerAssertion = v8;

    v11 = sub_100001C60(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Idle sleep assertion is acquired", v14, 2u);
    }
  }

  else
  {
    if (disableIdleTimerAssertion)
    {
      v12 = sub_100001C60(self);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Idle sleep assertion is invalidated", v14, 2u);
      }

      v13 = self->_disableIdleTimerAssertion;
    }

    else
    {
      v13 = 0;
    }

    [(BSInvalidatable *)v13 invalidate];
    v11 = self->_disableIdleTimerAssertion;
    self->_disableIdleTimerAssertion = 0;
  }
}

@end