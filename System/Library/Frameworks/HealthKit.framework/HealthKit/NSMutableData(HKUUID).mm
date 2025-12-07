@interface NSMutableData(HKUUID)
- (void)hk_appendBytesWithUUID:()HKUUID;
@end

@implementation NSMutableData(HKUUID)

- (void)hk_appendBytesWithUUID:()HKUUID
{
  v4[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = result;
    v4[0] = 0;
    v4[1] = 0;
    [a3 getUUIDBytes:v4];
    return [v3 appendBytes:v4 length:16];
  }

  return result;
}

@end