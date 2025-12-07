@interface NSString(C2MetricOptionsPrivateNSStringExtension)
- (int8x8_t)c2UniformlyDistributedIdentifier;
@end

@implementation NSString(C2MetricOptionsPrivateNSStringExtension)

- (int8x8_t)c2UniformlyDistributedIdentifier
{
  v9 = *MEMORY[0x277D85DE8];
  *md = 0u;
  v8 = 0u;
  v1 = [self dataUsingEncoding:4];
  if (!v1)
  {
    [NSString(C2MetricOptionsPrivateNSStringExtension) c2UniformlyDistributedIdentifier];
  }

  v2 = v1;
  if (![v1 length])
  {
    [NSString(C2MetricOptionsPrivateNSStringExtension) c2UniformlyDistributedIdentifier];
  }

  CC_SHA256([v2 bytes], objc_msgSend(v2, "length"), md);
  v5 = *md;
  v6 = v8;

  v3 = veorq_s8(v5, v6);
  return veor_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
}

@end