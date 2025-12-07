@interface RMLog(configurationSubscriberDelegate)
+ (id)configurationSubscriberDelegate;
@end

@implementation RMLog(configurationSubscriberDelegate)

+ (id)configurationSubscriberDelegate
{
  if (configurationSubscriberDelegate_onceToken != -1)
  {
    +[RMLog(configurationSubscriberDelegate) configurationSubscriberDelegate];
  }

  v2 = configurationSubscriberDelegate_result;

  return v2;
}

@end