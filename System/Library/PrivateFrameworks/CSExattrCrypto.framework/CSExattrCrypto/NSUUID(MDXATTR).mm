@interface NSUUID(MDXATTR)
- (uint64_t)MDUUIDData;
@end

@implementation NSUUID(MDXATTR)

- (uint64_t)MDUUIDData
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  v2[1] = 0;
  [self getUUIDBytes:v2];
  return [MEMORY[0x277CBEA90] dataWithBytes:v2 length:16];
}

@end