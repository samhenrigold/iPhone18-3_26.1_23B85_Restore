@interface NSUUID(HomeKitClient)
+ (id)hm_deriveUUIDForAssistantFromBaseUUID:()HomeKitClient withSalts:;
+ (id)hm_deriveUUIDFromBaseUUID:()HomeKitClient identifierSalt:withSalts:;
+ (id)hm_deriveUUIDFromBaseUUID:()HomeKitClient withSalts:;
+ (uint64_t)hm_setAssistantIdentifierSalt:()HomeKitClient;
+ (void)hm_setIdentifierSalt:()HomeKitClient;
- (id)hm_convertToData;
@end

@implementation NSUUID(HomeKitClient)

- (id)hm_convertToData
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v3[1] = 0;
  [self getUUIDBytes:v3];
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:v3 length:16];

  return v1;
}

+ (uint64_t)hm_setAssistantIdentifierSalt:()HomeKitClient
{
  v3 = a3;
  v4 = +[HMIdentifierSaltStore sharedIdentifierSaltStore];
  assistantIdentifierSalt = [v4 assistantIdentifierSalt];

  v6 = +[HMIdentifierSaltStore sharedIdentifierSaltStore];
  v7 = [v3 copy];
  [v6 setAssistantIdentifierSalt:v7];

  LODWORD(v6) = HMFEqualObjects();
  return v6 ^ 1;
}

+ (id)hm_deriveUUIDForAssistantFromBaseUUID:()HomeKitClient withSalts:
{
  v5 = a3;
  v6 = a4;
  v7 = +[HMIdentifierSaltStore sharedIdentifierSaltStore];
  assistantIdentifierSalt = [v7 assistantIdentifierSalt];

  if (assistantIdentifierSalt)
  {
    v9 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:v5 identifierSalt:assistantIdentifierSalt withSalts:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)hm_setIdentifierSalt:()HomeKitClient
{
  v3 = a3;
  v4 = +[HMIdentifierSaltStore sharedIdentifierSaltStore];
  [v4 setIdentifierSalt:v3];
}

+ (id)hm_deriveUUIDFromBaseUUID:()HomeKitClient withSalts:
{
  v5 = MEMORY[0x1E696AFB0];
  v6 = a4;
  v7 = a3;
  v8 = +[HMIdentifierSaltStore sharedIdentifierSaltStore];
  identifierSalt = [v8 identifierSalt];
  v10 = [v5 hm_deriveUUIDFromBaseUUID:v7 identifierSalt:identifierSalt withSalts:v6];

  return v10;
}

+ (id)hm_deriveUUIDFromBaseUUID:()HomeKitClient identifierSalt:withSalts:
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [MEMORY[0x1E696AFB0] hmf_UUIDWithNamespace:v8 data:v9 salts:v10];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v15 = HMFGetLogIdentifier();
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = callStackSymbols;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_FAULT, "%{public}@API Misuse: requested to derive UUID from nil base UUID. Call stack: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  return v11;
}

@end