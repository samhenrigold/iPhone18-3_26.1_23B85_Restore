@interface LCSystemUtilities
+ (BOOL)liveCaptionsSupported;
+ (void)registerLiveCaptionsPID;
- (void)idleSleepTimerDisabled:(BOOL)disabled;
@end

@implementation LCSystemUtilities

+ (BOOL)liveCaptionsSupported
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_FC220;
  v9 = off_FC220;
  if (!off_FC220)
  {
    v3 = sub_2870();
    v7[3] = dlsym(v3, "AXHasCapability");
    off_FC220 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = sub_B8F0C();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(@"LiveTranscription");
}

+ (void)registerLiveCaptionsPID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = qword_FC230;
  v9 = qword_FC230;
  if (!qword_FC230)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_29E4;
    v5[3] = &unk_EF500;
    v5[4] = &v6;
    sub_29E4(v5);
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
    v5 = qword_FC238;
    v18 = qword_FC238;
    if (!qword_FC238)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_2A3C;
      v14[3] = &unk_EF500;
      v14[4] = &v15;
      sub_2A3C(v14);
      v5 = v16[3];
    }

    v6 = v5;
    _Block_object_dispose(&v15, 8);
    sharedInstance = [v5 sharedInstance];
    v8 = [sharedInstance acquireAssertionToDisableIdleTimerWithReason:@"LiveCaptions"];
    v9 = self->_disableIdleTimerAssertion;
    self->_disableIdleTimerAssertion = v8;

    v11 = LCLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Idle sleep assertion is acquired", v14, 2u);
    }
  }

  else
  {
    if (disableIdleTimerAssertion)
    {
      v12 = LCLog(self);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Idle sleep assertion is invalidated", v14, 2u);
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