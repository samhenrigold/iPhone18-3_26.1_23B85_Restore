@interface HDMobilityPlugin
+ (BOOL)shouldLoadPluginForDaemon:(id)daemon;
- (id)extensionForProfile:(id)profile;
- (id)taskServerClasses;
@end

@implementation HDMobilityPlugin

+ (BOOL)shouldLoadPluginForDaemon:(id)daemon
{
  behavior = [daemon behavior];
  isRealityDevice = [behavior isRealityDevice];

  return isRealityDevice ^ 1;
}

- (id)extensionForProfile:(id)profile
{
  profileCopy = profile;
  if ([profileCopy profileType] == 1)
  {
    v4 = [[HDMobilityProfileExtension alloc] initWithProfile:profileCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)taskServerClasses
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end