@interface NSData(Checksum)
- (BOOL)matchesChecksum:()Checksum;
- (id)checksumData;
- (uint64_t)checksumDataToChecksum:()Checksum;
- (uint64_t)matchesChecksumData:()Checksum;
- (unsigned)checksum:()Checksum;
@end

@implementation NSData(Checksum)

- (id)checksumData
{
  v4 = *MEMORY[0x277D85DE8];
  [self checksum:v3];
  v1 = [MEMORY[0x277CBEA90] dataWithBytes:v3 length:32];

  return v1;
}

- (unsigned)checksum:()Checksum
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  bytes = [self bytes];
  v6 = [self length];

  return CC_SHA256(bytes, v6, a3);
}

- (uint64_t)checksumDataToChecksum:()Checksum
{
  *a3 = 0u;
  a3[1] = 0u;
  return [self getBytes:? length:?];
}

- (BOOL)matchesChecksum:()Checksum
{
  v8[4] = *MEMORY[0x277D85DE8];
  [self checksum:v8];
  return *a3 == v8[0] && a3[1] == v8[1] && a3[2] == v8[2] && a3[3] == v8[3];
}

- (uint64_t)matchesChecksumData:()Checksum
{
  v6 = *MEMORY[0x277D85DE8];
  [a3 checksumDataToChecksum:v5];
  return [self matchesChecksum:v5];
}

@end