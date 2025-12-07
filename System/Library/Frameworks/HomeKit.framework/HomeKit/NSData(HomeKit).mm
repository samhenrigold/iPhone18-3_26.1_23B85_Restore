@interface NSData(HomeKit)
- (id)hm_generateSHA256;
- (id)hm_stringInHexFormat;
- (unsigned)hm_generateSHA1;
@end

@implementation NSData(HomeKit)

- (id)hm_generateSHA256
{
  v4 = *MEMORY[0x1E69E9840];
  memset(v3, 0, sizeof(v3));
  CC_SHA256([self bytes], objc_msgSend(self, "length"), v3);
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:v3 length:32];

  return v1;
}

- (unsigned)hm_generateSHA1
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v3[1] = 0;
  LODWORD(v4) = 0;
  v1 = CC_SHA1([self bytes], objc_msgSend(self, "length"), v3);
  if (v1)
  {
    v1 = [MEMORY[0x1E695DEF0] dataWithBytes:v3 length:20];
  }

  return v1;
}

- (id)hm_stringInHexFormat
{
  bytes = [self bytes];
  v3 = [MEMORY[0x1E696AD60] stringWithCapacity:{2 * objc_msgSend(self, "length")}];
  if ([self length])
  {
    v4 = 0;
    do
    {
      [v3 appendFormat:@"%02x", *(bytes + v4++)];
    }

    while ([self length] > v4);
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithString:v3];

  return v5;
}

@end