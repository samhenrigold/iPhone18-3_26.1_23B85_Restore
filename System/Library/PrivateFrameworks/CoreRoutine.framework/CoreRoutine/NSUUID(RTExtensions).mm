@interface NSUUID(RTExtensions)
+ (id)nilUUID;
- (id)dataRepresentation;
@end

@implementation NSUUID(RTExtensions)

+ (id)nilUUID
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  v2[1] = 0;
  v0 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v2];

  return v0;
}

- (id)dataRepresentation
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v3[1] = 0;
  [self getUUIDBytes:v3];
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:v3 length:16];

  return v1;
}

@end