@interface MSDDemoUpdateTimeKeeper
+ (id)sharedInstance;
- (BOOL)shouldCleanUp:(id *)up;
- (id)setCompletionTime:(int)time reserveTimeForCleanup:(BOOL)cleanup;
- (id)setCompletionTimeForFatalError:(int)error;
- (void)forceSwitchToDemoMode:(id)mode;
@end

@implementation MSDDemoUpdateTimeKeeper

+ (id)sharedInstance
{
  if (qword_1001A5A80 != -1)
  {
    sub_1000E9C98();
  }

  v3 = qword_1001A5A78;

  return v3;
}

- (id)setCompletionTime:(int)time reserveTimeForCleanup:(BOOL)cleanup
{
  cleanupCopy = cleanup;
  [(MSDDemoUpdateTimeKeeper *)self setCanceled:0];
  timer = [(MSDDemoUpdateTimeKeeper *)self timer];

  if (timer)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B50D0;
    block[3] = &unk_100169B70;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  v8 = [(MSDDemoUpdateTimeKeeper *)self setCompletionTimeForFatalError:0];
  if (time < 1)
  {
    [(MSDDemoUpdateTimeKeeper *)self setDate:0];
LABEL_12:
    v23 = 0;
    goto LABEL_16;
  }

  if (cleanupCopy)
  {
    [(MSDDemoUpdateTimeKeeper *)self setTimeIntervalReservedForCleanup:1800];
    timeCopy = (time - 600);
  }

  else
  {
    [(MSDDemoUpdateTimeKeeper *)self setTimeIntervalReservedForCleanup:0];
    timeCopy = time;
  }

  v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:timeCopy];
  [(MSDDemoUpdateTimeKeeper *)self setDate:v10];

  date = [(MSDDemoUpdateTimeKeeper *)self date];
  [date timeIntervalSinceNow];
  v13 = v12;
  timeIntervalReservedForCleanup = [(MSDDemoUpdateTimeKeeper *)self timeIntervalReservedForCleanup];

  v16 = sub_100063A54(v15);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v13 > timeIntervalReservedForCleanup)
  {
    if (v17)
    {
      date2 = [(MSDDemoUpdateTimeKeeper *)self date];
      [date2 timeIntervalSinceNow];
      v20 = v19;
      date3 = [(MSDDemoUpdateTimeKeeper *)self date];
      timeIntervalReservedForCleanup2 = [(MSDDemoUpdateTimeKeeper *)self timeIntervalReservedForCleanup];
      *buf = 134218498;
      v31 = v20;
      v32 = 2114;
      v33 = date3;
      v34 = 2048;
      v35 = timeIntervalReservedForCleanup2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "The operation needs to complete in %lf seconds (or by %{public}@). Will indicate system to clean up %td second before that. If no clean up action is taken then the device will be forced to demo mode by then (if possible).", buf, 0x20u);
    }

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000B5160;
    v28[3] = &unk_100169B70;
    v28[4] = self;
    dispatch_async(&_dispatch_main_q, v28);
    goto LABEL_12;
  }

  if (v17)
  {
    date4 = [(MSDDemoUpdateTimeKeeper *)self date];
    date5 = [(MSDDemoUpdateTimeKeeper *)self date];
    [date5 timeIntervalSinceNow];
    *buf = 138543618;
    v31 = date4;
    v32 = 2048;
    v33 = v26;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Already time for clean up: %{public}@ (in %lf seconds)", buf, 0x16u);
  }

  v23 = [NSError errorDomainMSDWithCode:3727741184 message:@"Cannot finish update within given time."];
LABEL_16:

  return v23;
}

- (id)setCompletionTimeForFatalError:(int)error
{
  timerForFatalError = [(MSDDemoUpdateTimeKeeper *)self timerForFatalError];

  if (timerForFatalError)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B52F0;
    block[3] = &unk_100169B70;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  if (error >= 1)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000B5380;
    v7[3] = &unk_10016AB80;
    errorCopy = error;
    v7[4] = self;
    dispatch_async(&_dispatch_main_q, v7);
  }

  return 0;
}

- (BOOL)shouldCleanUp:(id *)up
{
  date = [(MSDDemoUpdateTimeKeeper *)self date];

  if (date)
  {
    date2 = [(MSDDemoUpdateTimeKeeper *)self date];
    [date2 timeIntervalSinceNow];
    v8 = v7;
    timeIntervalReservedForCleanup = [(MSDDemoUpdateTimeKeeper *)self timeIntervalReservedForCleanup];

    if (v8 <= timeIntervalReservedForCleanup)
    {
      v11 = @"Cannot finish update within given time.";
      v12 = 3727741184;
      goto LABEL_6;
    }
  }

  canceled = [(MSDDemoUpdateTimeKeeper *)self canceled];
  if (canceled)
  {
    v11 = @"Operation canceled.";
    v12 = 3727741185;
LABEL_6:
    *up = [NSError errorDomainMSDWithCode:v12 message:v11];
    LOBYTE(canceled) = 1;
  }

  return canceled;
}

- (void)forceSwitchToDemoMode:(id)mode
{
  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Time is up, has to force the device into demo mode.", v5, 2u);
  }

  v4 = +[MSDTargetDevice sharedInstance];
  [v4 forceSwitchToDemoModeIfNeeded];
}

@end