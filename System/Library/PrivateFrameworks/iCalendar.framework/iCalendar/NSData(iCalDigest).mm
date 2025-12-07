@interface NSData(iCalDigest)
- (id)ical_digestWithVersionNumber:()iCalDigest;
@end

@implementation NSData(iCalDigest)

- (id)ical_digestWithVersionNumber:()iCalDigest
{
  v10 = *MEMORY[0x277D85DE8];
  data = a3;
  v5 = [self length];
  if (v5)
  {
    memset(&v7, 0, sizeof(v7));
    CC_SHA1_Init(&v7);
    if (a3)
    {
      CC_SHA1_Update(&v7, &data, 4u);
    }

    CC_SHA1_Update(&v7, [self bytes], objc_msgSend(self, "length"));
    CC_SHA1_Final(md, &v7);
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:md length:20];
  }

  return v5;
}

@end