@interface NSData(CommonCrypto)
- (unsigned)sha256;
@end

@implementation NSData(CommonCrypto)

- (unsigned)sha256
{
  v4 = *MEMORY[0x277D85DE8];
  memset(v3, 0, sizeof(v3));
  v1 = CC_SHA256([self bytes], objc_msgSend(self, "length"), v3);
  if (v1)
  {
    v1 = [MEMORY[0x277CBEA98] dataWithBytes:v3 length:32];
  }

  return v1;
}

@end