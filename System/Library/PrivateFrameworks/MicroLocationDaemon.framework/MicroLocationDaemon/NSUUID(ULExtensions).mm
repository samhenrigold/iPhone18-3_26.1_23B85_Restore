@interface NSUUID(ULExtensions)
+ (id)fromBoostUUID:()ULExtensions;
+ (id)nilUUID;
+ (uint64_t)nilBoostUUID;
- (uint64_t)isNilUUID;
- (uint64_t)toBoostUUID;
@end

@implementation NSUUID(ULExtensions)

+ (id)nilUUID
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];

  return v0;
}

+ (uint64_t)nilBoostUUID
{
  v4 = *MEMORY[0x277D85DE8];
  nilUUID = [MEMORY[0x277CCAD78] nilUUID];
  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(&v2, nilUUID);

  if ((v3 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return v2;
}

- (uint64_t)isNilUUID
{
  nilUUID = [MEMORY[0x277CCAD78] nilUUID];
  v3 = [self isEqual:nilUUID];

  return v3;
}

+ (id)fromBoostUUID:()ULExtensions
{
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];

  return v3;
}

- (uint64_t)toBoostUUID
{
  v4 = *MEMORY[0x277D85DE8];
  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(&v2, self);
  if (v3 == 1)
  {
    return v2;
  }

  else
  {
    return [MEMORY[0x277CCAD78] nilBoostUUID];
  }
}

@end