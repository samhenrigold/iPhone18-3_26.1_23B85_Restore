@interface DDRTaskClearTelephonySettings
- (DDRTaskClearTelephonySettings)initWithEraseDataPlan:(BOOL)plan;
- (void)run;
@end

@implementation DDRTaskClearTelephonySettings

- (DDRTaskClearTelephonySettings)initWithEraseDataPlan:(BOOL)plan
{
  planCopy = plan;
  v7.receiver = self;
  v7.super_class = DDRTaskClearTelephonySettings;
  v4 = [(DDRTaskClearTelephonySettings *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(DDRTaskClearTelephonySettings *)v4 setEraseDataPlan:planCopy];
  }

  return v5;
}

- (void)run
{
  v3 = [NSBundle mainBundle:0];
  [v3 bundleIdentifier];
  v4 = _CTServerConnectionCreateWithIdentifier();

  if (v4)
  {
    if ([(DDRTaskClearTelephonySettings *)self eraseDataPlan])
    {
      _CTServerConnectionEraseAllUserProfiles();
    }

    v5 = [CoreTelephonyClient alloc];
    v6 = dispatch_get_global_queue(2, 0);
    v7 = [v5 initWithQueue:v6];

    [v7 deleteHiddenSims:&stru_100014750];
    _CTServerConnectionEraseBasebandSettings();
    CFRelease(v4);
  }
}

@end