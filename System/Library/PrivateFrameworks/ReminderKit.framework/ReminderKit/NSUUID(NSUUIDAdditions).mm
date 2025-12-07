@interface NSUUID(NSUUIDAdditions)
+ (id)TTZero;
- (id)TTShortDescription;
- (uint64_t)TTCompare:()NSUUIDAdditions;
@end

@implementation NSUUID(NSUUIDAdditions)

+ (id)TTZero
{
  if (TTZero_once != -1)
  {
    +[NSUUID(NSUUIDAdditions) TTZero];
  }

  v2 = TTZero_zero;

  return v2;
}

- (uint64_t)TTCompare:()NSUUIDAdditions
{
  v10 = *MEMORY[0x1E69E9840];
  *uu1 = 0;
  v9 = 0;
  *uu2 = 0;
  v7 = 0;
  v4 = a3;
  [self getUUIDBytes:uu1];
  [v4 getUUIDBytes:uu2];

  return uuid_compare(uu1, uu2);
}

- (id)TTShortDescription
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v3[1] = 0;
  [self getUUIDBytes:v3];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X%02X", LOBYTE(v3[0]), BYTE1(v3[0])];

  return v1;
}

@end