@interface VCIDApplicationSyncState
+ (id)JSONKeyPathsByPropertyKey;
@end

@implementation VCIDApplicationSyncState

+ (id)JSONKeyPathsByPropertyKey
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"checksum";
  v4[1] = @"registeredDate";
  v5[0] = @"checksum";
  v5[1] = @"registeredDate";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

@end