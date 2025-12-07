@interface AppState
- (void)applicationDidEnterBackgroundNotification;
- (void)applicationWillEnterForegroundNotification;
- (void)applicationWillTerminate;
@end

@implementation AppState

- (void)applicationWillTerminate
{
  selfCopy = self;
  sub_26B6E0084("AppState - applicationWillTerminate", 0);
}

- (void)applicationDidEnterBackgroundNotification
{
  selfCopy = self;
  sub_26B6E0084("AppState - applicationDidEnterBackgroundNotification", 1);
}

- (void)applicationWillEnterForegroundNotification
{
  selfCopy = self;
  sub_26B6E0084("AppState - applicationWillEnterForegroundNotification", 2);
}

@end