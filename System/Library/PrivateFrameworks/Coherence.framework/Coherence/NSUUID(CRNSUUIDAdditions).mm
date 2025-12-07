@interface NSUUID(CRNSUUIDAdditions)
+ (id)Coherence_zero;
- (id)Coherence_shortDescription;
- (id)Coherence_xorWith:()CRNSUUIDAdditions;
- (uint64_t)Coherence_compare:()CRNSUUIDAdditions;
@end

@implementation NSUUID(CRNSUUIDAdditions)

+ (id)Coherence_zero
{
  if (Coherence_zero_once[0] != -1)
  {
    +[NSUUID(CRNSUUIDAdditions) Coherence_zero];
  }

  v2 = Coherence_zero_zero;

  return v2;
}

- (uint64_t)Coherence_compare:()CRNSUUIDAdditions
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

- (id)Coherence_shortDescription
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = 0;
  [self getUUIDBytes:&v3];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X%02X", BYTE6(v4), HIBYTE(v4)];

  return v1;
}

- (id)Coherence_xorWith:()CRNSUUIDAdditions
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8 = 0uLL;
  v7 = 0uLL;
  [self getUUIDBytes:&v8];
  [v4 getUUIDBytes:&v7];
  v8 = veorq_s8(v7, v8);
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v8];

  return v5;
}

@end