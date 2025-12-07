@interface SMActivityManager
+ (BOOL)hasActivity;
+ (void)endActivities;
+ (void)startActivityWithState:(id)state localState:(id)localState;
+ (void)updateActivityWithState:(id)state localState:(id)localState shouldNotify:(BOOL)notify;
@end

@implementation SMActivityManager

+ (void)startActivityWithState:(id)state localState:(id)localState
{
  localStateCopy = localState;
  stateCopy = state;
  v7 = +[SMActivityManager shared];
  [v7 startActivityWith:stateCopy localState:localStateCopy];
}

+ (void)updateActivityWithState:(id)state localState:(id)localState shouldNotify:(BOOL)notify
{
  notifyCopy = notify;
  localStateCopy = localState;
  stateCopy = state;
  v9 = +[SMActivityManager shared];
  [v9 updateActivityWith:stateCopy localState:localStateCopy shouldNotify:notifyCopy];
}

+ (void)endActivities
{
  v2 = +[SMActivityManager shared];
  [v2 endActivities];
}

+ (BOOL)hasActivity
{
  v2 = +[SMActivityManager shared];
  hasActivity = [v2 hasActivity];

  return hasActivity;
}

@end