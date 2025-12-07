@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (void)applicationWillTerminate:(id)terminate;
@end

@implementation AppDelegate

- (void)applicationWillTerminate:(id)terminate
{
  terminateCopy = terminate;
  v4 = terminateCopy;
  if (dword_1001BE510 <= 30)
  {
    v5 = terminateCopy;
    if (dword_1001BE510 != -1 || (terminateCopy = _LogCategory_Initialize(), v4 = v5, terminateCopy))
    {
      terminateCopy = LogPrintF(&dword_1001BE510, "[AppDelegate applicationWillTerminate:]", 30, "WillTerminate\n");
      v4 = v5;
    }
  }

  _objc_release_x1(terminateCopy, v4);
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  applicationCopy = application;
  optionsCopy = options;
  if (dword_1001BE510 <= 30 && (dword_1001BE510 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE510, "[AppDelegate application:didFinishLaunchingWithOptions:]", 30, "DidFinishLaunching\n");
  }

  SFAWDEnsureInitialized();

  return 1;
}

@end