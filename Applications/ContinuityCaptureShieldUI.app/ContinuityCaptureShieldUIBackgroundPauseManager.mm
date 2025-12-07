@interface ContinuityCaptureShieldUIBackgroundPauseManager
+ (id)sharedInstance;
- (void)requestDefaultScreenPauseEvent:(int64_t)event;
- (void)requestDefaultScreenResumeEvent:(int64_t)event;
@end

@implementation ContinuityCaptureShieldUIBackgroundPauseManager

+ (id)sharedInstance
{
  if (qword_10001EAE8 != -1)
  {
    sub_10000AC64();
  }

  v3 = qword_10001EAE0;

  return v3;
}

- (void)requestDefaultScreenPauseEvent:(int64_t)event
{
  BoolAnswer = AVGestaltGetBoolAnswer();
  v6 = BoolAnswer;
  v7 = sub_100006DC0(BoolAnswer);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136316162;
    v10 = "[ContinuityCaptureShieldUIBackgroundPauseManager requestDefaultScreenPauseEvent:]";
    v11 = 2048;
    selfCopy = self;
    v13 = 2048;
    eventCopy = event;
    v15 = 1024;
    v16 = v6;
    v17 = 1024;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: <%p> Called pauseEvent:%zu. Ignoring event: %d. supportsCCMultitasking:%d", &v9, 0x2Cu);
  }

  if ((v6 & 1) == 0)
  {
    v8 = +[CMContinuityCaptureXPCClientCCD sharedInstance];
    [v8 pauseSessionForEvent:event];
  }
}

- (void)requestDefaultScreenResumeEvent:(int64_t)event
{
  BoolAnswer = AVGestaltGetBoolAnswer();
  v6 = BoolAnswer;
  v7 = sub_100006DC0(BoolAnswer);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136316162;
    v10 = "[ContinuityCaptureShieldUIBackgroundPauseManager requestDefaultScreenResumeEvent:]";
    v11 = 2048;
    selfCopy = self;
    v13 = 2048;
    eventCopy = event;
    v15 = 1024;
    v16 = v6;
    v17 = 1024;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: <%p> Called resumeEvent:%zu. Ignoring event: %d. supportsCCMultitasking:%d", &v9, 0x2Cu);
  }

  if ((v6 & 1) == 0)
  {
    v8 = +[CMContinuityCaptureXPCClientCCD sharedInstance];
    [v8 resumeStreamingForEvent:event];
  }
}

@end