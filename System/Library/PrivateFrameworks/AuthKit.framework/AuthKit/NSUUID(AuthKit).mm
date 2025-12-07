@interface NSUUID(AuthKit)
- (uint64_t)ak_uuidData;
@end

@implementation NSUUID(AuthKit)

- (uint64_t)ak_uuidData
{
  v3 = *MEMORY[0x1E69E9840];
  [self getUUIDBytes:?];
  return [MEMORY[0x1E695DEF0] dataWithBytes:v2 length:16];
}

@end