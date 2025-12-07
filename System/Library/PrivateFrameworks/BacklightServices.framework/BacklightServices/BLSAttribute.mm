@interface BLSAttribute
- (BLSAttribute)init;
- (BLSAttribute)initWithCoder:(id)coder;
- (BLSAttribute)initWithXPCDictionary:(id)dictionary;
- (BOOL)checkEntitlementSource:(id)source forSingleEntitlement:(id)entitlement error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)errorForMissingEntitlement:(id)entitlement inSource:(id)source;
- (unint64_t)hash;
@end

@implementation BLSAttribute

- (BLSAttribute)init
{
  v3.receiver = self;
  v3.super_class = BLSAttribute;
  return [(BLSAttribute *)&v3 init];
}

- (unint64_t)hash
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  v4 = objc_opt_class();
  v5 = objc_opt_class();

  return v4 == v5;
}

- (BOOL)checkEntitlementSource:(id)source forSingleEntitlement:(id)entitlement error:(id *)error
{
  sourceCopy = source;
  entitlementCopy = entitlement;
  v10 = [sourceCopy hasEntitlement:entitlementCopy];
  v11 = v10;
  if (error && (v10 & 1) == 0)
  {
    v12 = [sourceCopy description];
    *error = [(BLSAttribute *)self errorForMissingEntitlement:entitlementCopy inSource:v12];
  }

  return v11;
}

- (id)errorForMissingEntitlement:(id)entitlement inSource:(id)source
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA450];
  entitlement = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ missing entitlement:%@", source, entitlement];
  v10[0] = entitlement;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 errorWithDomain:@"com.apple.BacklightServices" code:21 userInfo:v6];

  return v7;
}

- (BLSAttribute)initWithXPCDictionary:(id)dictionary
{
  selfCopy = self;
  v4 = [(BLSAttribute *)self isMemberOfClass:objc_opt_class()];
  if (v4)
  {
    v5 = bls_assertions_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [BLSAttribute initWithXPCDictionary:v5];
    }

    v6 = 0;
  }

  else
  {
    selfCopy = [(BLSAttribute *)selfCopy init];
    v6 = selfCopy;
  }

  return v6;
}

- (BLSAttribute)initWithCoder:(id)coder
{
  selfCopy = self;
  v4 = [(BLSAttribute *)self isMemberOfClass:objc_opt_class()];
  if (v4)
  {
    v5 = bls_assertions_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [BLSAttribute initWithXPCDictionary:v5];
    }

    v6 = 0;
  }

  else
  {
    selfCopy = [(BLSAttribute *)selfCopy init];
    v6 = selfCopy;
  }

  return v6;
}

@end