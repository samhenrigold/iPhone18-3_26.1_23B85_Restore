@interface RMLog(configurationCombineApplicator)
+ (id)configurationCombineApplicator;
@end

@implementation RMLog(configurationCombineApplicator)

+ (id)configurationCombineApplicator
{
  if (configurationCombineApplicator_onceToken != -1)
  {
    +[RMLog(configurationCombineApplicator) configurationCombineApplicator];
  }

  v2 = configurationCombineApplicator_result;

  return v2;
}

@end