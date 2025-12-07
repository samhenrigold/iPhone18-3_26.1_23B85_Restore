@interface RMLog(statusPublisherDelegate)
+ (id)statusPublisherDelegate;
@end

@implementation RMLog(statusPublisherDelegate)

+ (id)statusPublisherDelegate
{
  if (statusPublisherDelegate_onceToken != -1)
  {
    +[RMLog(statusPublisherDelegate) statusPublisherDelegate];
  }

  v2 = statusPublisherDelegate_result;

  return v2;
}

@end