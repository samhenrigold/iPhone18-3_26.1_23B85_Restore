@interface LACPWDHelper
- (id)uidForUUID:(id)d;
- (id)uidForUserName:(id)name;
@end

@implementation LACPWDHelper

- (id)uidForUUID:(id)d
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  [d getUUIDBytes:v5];
  v3 = getpwuuid(v5);
  if (v3)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3[4]];
  }

  return v3;
}

- (id)uidForUserName:(id)name
{
  v3 = getpwnam([name cStringUsingEncoding:4]);
  if (v3)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3[4]];
  }

  return v3;
}

@end