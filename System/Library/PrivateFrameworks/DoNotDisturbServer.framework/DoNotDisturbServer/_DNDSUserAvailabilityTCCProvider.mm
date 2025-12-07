@interface _DNDSUserAvailabilityTCCProvider
- (id)userAvailabilityTCCApprovedBundleIds;
@end

@implementation _DNDSUserAvailabilityTCCProvider

- (id)userAvailabilityTCCApprovedBundleIds
{
  v2 = MEMORY[0x277CBEB98];
  v3 = TCCAccessCopyBundleIdentifiersForService();
  v4 = [v2 setWithArray:v3];

  return v4;
}

@end