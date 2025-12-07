@interface HDOriginalFHIRResourceLastSeenEntity
+ (id)foreignKeys;
@end

@implementation HDOriginalFHIRResourceLastSeenEntity

+ (id)foreignKeys
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"resource_id";
  v2 = +[(HDHealthEntity *)HDOriginalFHIRResourceEntity];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end