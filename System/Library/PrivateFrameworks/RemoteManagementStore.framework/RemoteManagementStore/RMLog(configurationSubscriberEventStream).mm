@interface RMLog(configurationSubscriberEventStream)
+ (id)configurationSubscriberEventStream;
@end

@implementation RMLog(configurationSubscriberEventStream)

+ (id)configurationSubscriberEventStream
{
  if (configurationSubscriberEventStream_onceToken != -1)
  {
    +[RMLog(configurationSubscriberEventStream) configurationSubscriberEventStream];
  }

  v2 = configurationSubscriberEventStream_result;

  return v2;
}

@end