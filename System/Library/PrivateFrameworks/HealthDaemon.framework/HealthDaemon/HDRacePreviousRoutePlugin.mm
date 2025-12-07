@interface HDRacePreviousRoutePlugin
- (id)extensionForProfile:(id)profile;
- (id)orderedSyncEntities;
- (id)taskServerClasses;
@end

@implementation HDRacePreviousRoutePlugin

- (id)extensionForProfile:(id)profile
{
  profileCopy = profile;
  if ([profileCopy profileType] == 1)
  {
    v4 = [[HDRacePreviousRouteProfileExtension alloc] initWithProfile:profileCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)orderedSyncEntities
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)taskServerClasses
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

@end