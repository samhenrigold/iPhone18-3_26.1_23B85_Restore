@interface NSUUID(CRDT_Additions)
+ (id)CR_repeatedCharUUID:()CRDT_Additions;
+ (id)CR_zero;
- (id)CR_shortDescription;
- (uint64_t)CR_compare:()CRDT_Additions;
- (uint64_t)initWithCRCoder:()CRDT_Additions;
- (void)encodeWithCRCoder:()CRDT_Additions;
- (void)mergeWith:()CRDT_Additions;
@end

@implementation NSUUID(CRDT_Additions)

- (void)mergeWith:()CRDT_Additions
{
  v5 = a3;
  if (([self isEqual:?] & 1) == 0)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Cannot merge NSUUID with different value." userInfo:0];
    objc_exception_throw(v4);
  }
}

+ (id)CR_repeatedCharUUID:()CRDT_Additions
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = 0x101010101010101 * a3;
  v5[1] = v5[0];
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v5];

  return v3;
}

+ (id)CR_zero
{
  if (CR_zero_once != -1)
  {
    +[NSUUID(CRDT_Additions) CR_zero];
  }

  v2 = CR_zero_zero;

  return v2;
}

- (uint64_t)CR_compare:()CRDT_Additions
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

- (id)CR_shortDescription
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v3[1] = 0;
  [self getUUIDBytes:v3];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X%02X", LOBYTE(v3[0]), BYTE1(v3[0])];

  return v1;
}

- (uint64_t)initWithCRCoder:()CRDT_Additions
{
  v8[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeUUIDFromUUIDIndex:{objc_msgSend(v4, "decodeUInt64ForKey:", @"UUIDIndex"}];

  v8[0] = 0;
  v8[1] = 0;
  [v5 getUUIDBytes:v8];
  v6 = [self initWithUUIDBytes:v8];

  return v6;
}

- (void)encodeWithCRCoder:()CRDT_Additions
{
  v4 = a3;
  [v4 encodeUInt64:objc_msgSend(v4 forKey:{"encodeUUIDIndexFromUUID:", self), @"UUIDIndex"}];
}

@end