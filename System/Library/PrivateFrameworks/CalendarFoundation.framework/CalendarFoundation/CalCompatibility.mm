@interface CalCompatibility
+ (BOOL)isProgramSDKAtLeast:(id)least;
+ (void)perform:(id)perform whileSimulatingLegacyBehaviors:(BOOL)behaviors;
@end

@implementation CalCompatibility

+ (BOOL)isProgramSDKAtLeast:(id)least
{
  if ([self simulateLegacyBehaviors])
  {
    return 0;
  }

  return (MEMORY[0x1EEE706E0])(least);
}

+ (void)perform:(id)perform whileSimulatingLegacyBehaviors:(BOOL)behaviors
{
  behaviorsCopy = behaviors;
  performCopy = perform;
  simulateLegacyBehaviors = [self simulateLegacyBehaviors];
  [self setSimulateLegacyBehaviors:behaviorsCopy];
  performCopy[2]();
  [self setSimulateLegacyBehaviors:simulateLegacyBehaviors];
}

@end