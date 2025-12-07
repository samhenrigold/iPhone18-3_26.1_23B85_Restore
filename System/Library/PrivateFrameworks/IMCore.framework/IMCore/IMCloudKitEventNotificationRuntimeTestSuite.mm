@interface IMCloudKitEventNotificationRuntimeTestSuite
+ (void)runTestsIfNeeded;
- (IMCloudKitEventNotificationRuntimeTestSuite)init;
- (void)cloudKitEventNotificationManager:(id)manager syncProgressDidUpdate:(id)update;
- (void)setUp;
- (void)tearDown;
@end

@implementation IMCloudKitEventNotificationRuntimeTestSuite

- (IMCloudKitEventNotificationRuntimeTestSuite)init
{
  v11.receiver = self;
  v11.super_class = IMCloudKitEventNotificationRuntimeTestSuite;
  v2 = [(IMRuntimeTestSuite *)&v11 init];
  if (v2)
  {
    IMSetAlwaysUseSingletonProxies();
    [(IMRuntimeTestSuite *)v2 setTestSuiteStartDelay:5.0];
    v3 = objc_alloc_init(IMCloudKitSyncProgressRuntimeTestUploading);
    [(IMRuntimeTestSuite *)v2 addTest:v3];

    v4 = objc_alloc_init(IMCloudKitSyncProgressRuntimeTestDownloading);
    [(IMRuntimeTestSuite *)v2 addTest:v4];

    v5 = objc_alloc_init(IMCloudKitSyncProgressRuntimeTestDeleting);
    [(IMRuntimeTestSuite *)v2 addTest:v5];

    v6 = objc_alloc_init(IMCloudKitSyncProgressRuntimeTestPreparing);
    [(IMRuntimeTestSuite *)v2 addTest:v6];

    v7 = objc_alloc_init(IMCloudKitSyncProgressRuntimeTestPaused);
    [(IMRuntimeTestSuite *)v2 addTest:v7];

    v8 = [[IMCloudKitErrorProgressTest alloc] initWithErrorCode:3];
    [(IMRuntimeTestSuite *)v2 addTest:v8];

    v9 = [[IMCloudKitErrorProgressTest alloc] initWithErrorCode:6];
    [(IMRuntimeTestSuite *)v2 addTest:v9];

    [(IMRuntimeTest *)v2 testLog:@"installed tests"];
  }

  return v2;
}

- (void)setUp
{
  v10.receiver = self;
  v10.super_class = IMCloudKitEventNotificationRuntimeTestSuite;
  [(IMRuntimeTest *)&v10 setUp];
  [(IMCloudKitEventNotificationRuntimeTestSuite *)self setShouldTearDown:0];
  [(IMRuntimeTest *)self testLog:@"Setting up cloudkit hooks, etc"];
  v3 = +[IMCloudKitEventNotificationManager sharedInstance];
  [v3 progressBroadcastDelay];
  [(IMRuntimeTestSuite *)self setTestStartDelay:v4 + 2.0];

  v5 = objc_alloc_init(IMCloudKitHookTestSingleton);
  [(IMCloudKitEventNotificationRuntimeTestSuite *)self setCloudKitHooks:v5];

  cloudKitHooks = [(IMCloudKitEventNotificationRuntimeTestSuite *)self cloudKitHooks];
  [IMCloudKitHooks overrideSingletonWithObject:cloudKitHooks];

  v7 = +[IMCloudKitEventNotificationManager sharedInstance];
  [v7 addEventHandler:self];

  cloudKitHooks2 = [(IMCloudKitEventNotificationRuntimeTestSuite *)self cloudKitHooks];
  v9 = objc_alloc_init(IMCloudKitMockSyncState);
  [cloudKitHooks2 setTestState:v9];
}

- (void)cloudKitEventNotificationManager:(id)manager syncProgressDidUpdate:(id)update
{
  if ([(IMCloudKitEventNotificationRuntimeTestSuite *)self shouldTearDown:manager])
  {
    [(IMCloudKitEventNotificationRuntimeTestSuite *)self setShouldTearDown:0];
    [(IMRuntimeTest *)self testLog:@"Actually Tearing down cloudkit hooks"];
    +[IMCloudKitHooks removeSingletonOverride];
    [(IMCloudKitEventNotificationRuntimeTestSuite *)self setCloudKitHooks:0];
    v5 = +[IMCloudKitEventNotificationManager sharedInstance];
    [v5 removeEventHandler:self];
  }
}

- (void)tearDown
{
  [(IMCloudKitEventNotificationRuntimeTestSuite *)self setShouldTearDown:1];
  cloudKitHooks = [(IMCloudKitEventNotificationRuntimeTestSuite *)self cloudKitHooks];
  v4 = objc_alloc_init(IMCloudKitMockSyncState);
  [cloudKitHooks setTestState:v4];

  v5.receiver = self;
  v5.super_class = IMCloudKitEventNotificationRuntimeTestSuite;
  [(IMRuntimeTest *)&v5 tearDown];
}

+ (void)runTestsIfNeeded
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults integerForKey:@"cloudkit-sync-ui-tests"];

  if (v4 >= 1)
  {
    [self testLog:{@"user default cloudkit-sync-ui-tests == %ld, starting runtime tests", v4}];

    MEMORY[0x1EEE66B58](self, sel_runTestsIfNeededWithRepeatCount_);
  }
}

@end