@interface RMLog(statusPublisherDescription)
+ (id)statusPublisherDescription;
@end

@implementation RMLog(statusPublisherDescription)

+ (id)statusPublisherDescription
{
  if (statusPublisherDescription_onceToken != -1)
  {
    +[RMLog(statusPublisherDescription) statusPublisherDescription];
  }

  v2 = statusPublisherDescription_result;

  return v2;
}

@end