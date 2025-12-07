@interface NSUUID(Deterministic)
+ (id)sa_deterministicUUIDv5ForNamespace:()Deterministic name:;
+ (id)sa_deterministicUUIDv5ForNamespaceUUID:()Deterministic sourceUUID:;
- (id)sa_uuidBytes;
@end

@implementation NSUUID(Deterministic)

- (id)sa_uuidBytes
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v3[1] = 0;
  [self getUUIDBytes:v3];
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:v3 length:16];

  return v1;
}

+ (id)sa_deterministicUUIDv5ForNamespace:()Deterministic name:
{
  v17 = *MEMORY[0x1E69E9840];
  memset(&v13, 0, sizeof(v13));
  v5 = a4;
  v6 = a3;
  CC_SHA1_Init(&v13);
  v7 = v6;
  bytes = [v7 bytes];
  v9 = [v6 length];

  CC_SHA1_Update(&v13, bytes, v9);
  bytes2 = [v5 bytes];
  LODWORD(bytes) = [v5 length];

  CC_SHA1_Update(&v13, bytes2, bytes);
  CC_SHA1_Final(md, &v13);
  v15 = v15 & 0xFFF | 0x5000;
  v16 = v16 & 0x3F | 0x80;
  v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:md];

  return v11;
}

+ (id)sa_deterministicUUIDv5ForNamespaceUUID:()Deterministic sourceUUID:
{
  v5 = MEMORY[0x1E696AFB0];
  v6 = a4;
  sa_uuidBytes = [a3 sa_uuidBytes];
  sa_uuidBytes2 = [v6 sa_uuidBytes];

  v9 = [v5 sa_deterministicUUIDv5ForNamespace:sa_uuidBytes name:sa_uuidBytes2];

  return v9;
}

@end