@interface RMLog(configurationSingleApplicator)
+ (id)configurationSingleApplicator;
@end

@implementation RMLog(configurationSingleApplicator)

+ (id)configurationSingleApplicator
{
  if (configurationSingleApplicator_onceToken != -1)
  {
    +[RMLog(configurationSingleApplicator) configurationSingleApplicator];
  }

  v2 = configurationSingleApplicator_result;

  return v2;
}

@end