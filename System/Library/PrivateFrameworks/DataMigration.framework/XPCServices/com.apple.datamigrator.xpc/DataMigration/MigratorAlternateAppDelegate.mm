@interface MigratorAlternateAppDelegate
- (MigratorAlternateAppDelegate)init;
- (void)alternateSystemApp:(id)app didExitWithStatus:(int)status;
- (void)alternateSystemApp:(id)app didTerminateWithSignal:(int)signal;
- (void)alternateSystemAppDidLaunch:(id)launch;
- (void)waitUntilPreboardDidFinishUnlock;
@end

@implementation MigratorAlternateAppDelegate

- (MigratorAlternateAppDelegate)init
{
  v6.receiver = self;
  v6.super_class = MigratorAlternateAppDelegate;
  v2 = [(MigratorAlternateAppDelegate *)&v6 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    sema = v2->_sema;
    v2->_sema = v3;
  }

  return v2;
}

- (void)waitUntilPreboardDidFinishUnlock
{
  sema = [(MigratorAlternateAppDelegate *)self sema];
  dispatch_semaphore_wait(sema, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)alternateSystemAppDidLaunch:(id)launch
{
  _DMLogFunc();

  +[PUIProgressWindow setUsesPreBoardAppearance];
}

- (void)alternateSystemApp:(id)app didExitWithStatus:(int)status
{
  v4 = *&status;
  appCopy = app;
  if (v4)
  {
    v7 = [NSNumber numberWithInt:v4];
    _DMLogFunc();

LABEL_3:
    [appCopy activate];
    goto LABEL_6;
  }

  if (!MKBDeviceUnlockedSinceBoot())
  {
    _DMLogFunc();
    goto LABEL_3;
  }

  sema = [(MigratorAlternateAppDelegate *)self sema];
  dispatch_semaphore_signal(sema);

LABEL_6:
}

- (void)alternateSystemApp:(id)app didTerminateWithSignal:(int)signal
{
  v4 = *&signal;
  appCopy = app;
  v5 = [NSNumber numberWithInt:v4];
  _DMLogFunc();

  [appCopy activate];
}

@end