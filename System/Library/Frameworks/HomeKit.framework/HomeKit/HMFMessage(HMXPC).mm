@interface HMFMessage(HMXPC)
+ (id)messageHeadersWithXPCTimeoutDisabled:()HMXPC;
- (uint64_t)hm_isXPCTimeoutDisabled;
@end

@implementation HMFMessage(HMXPC)

- (uint64_t)hm_isXPCTimeoutDisabled
{
  headers = [self headers];
  v2 = [headers hmf_BOOLForKey:@"HMXPCMessageHeaderKeyIsXPCTimeoutDisabled"];

  return v2;
}

+ (id)messageHeadersWithXPCTimeoutDisabled:()HMXPC
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"HMXPCMessageHeaderKeyIsXPCTimeoutDisabled";
  v0 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v4[0] = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];

  return v1;
}

@end