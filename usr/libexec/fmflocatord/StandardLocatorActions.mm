@interface StandardLocatorActions
+ (void)didReceiveLocation:(id)location isFinished:(BOOL)finished inProvider:(id)provider forCmd:(id)cmd withReason:(int64_t)reason andAccuracyChange:(double)change;
+ (void)didStopLocatingInProvider:(id)provider;
@end

@implementation StandardLocatorActions

+ (void)didReceiveLocation:(id)location isFinished:(BOOL)finished inProvider:(id)provider forCmd:(id)cmd withReason:(int64_t)reason andAccuracyChange:(double)change
{
  finishedCopy = finished;
  locationCopy = location;
  providerCopy = provider;
  cmdCopy = cmd;
  v15 = objc_autoreleasePoolPush();
  [providerCopy sendCurrentLocation:locationCopy isFinished:finishedCopy forCmd:cmdCopy withReason:reason andAccuracyChange:change];
  objc_autoreleasePoolPop(v15);
}

+ (void)didStopLocatingInProvider:(id)provider
{
  providerCopy = provider;
  standardLocator = [providerCopy standardLocator];

  if (standardLocator)
  {
    v6 = sub_100002830(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100037DB4(providerCopy, v6);
    }

    [providerCopy setStandardLocator:0];
  }
}

@end