@interface NSData(Hash)
- (id)SHA1;
- (id)SHA256;
- (id)SHA256_16;
@end

@implementation NSData(Hash)

- (id)SHA1
{
  v4 = *MEMORY[0x277D85DE8];
  memset(v3, 170, 20);
  CC_SHA1([self bytes], objc_msgSend(self, "length"), v3);
  v1 = [MEMORY[0x277CBEA90] dataWithBytes:v3 length:20];

  return v1;
}

- (id)SHA256_16
{
  v5 = *MEMORY[0x277D85DE8];
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v4[0] = v1;
  v4[1] = v1;
  CC_SHA256([self bytes], objc_msgSend(self, "length"), v4);
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:16];

  return v2;
}

- (id)SHA256
{
  v5 = *MEMORY[0x277D85DE8];
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v4[0] = v1;
  v4[1] = v1;
  CC_SHA256([self bytes], objc_msgSend(self, "length"), v4);
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:32];

  return v2;
}

@end