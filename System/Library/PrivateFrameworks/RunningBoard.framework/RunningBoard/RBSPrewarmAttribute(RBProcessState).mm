@interface RBSPrewarmAttribute(RBProcessState)
- (uint64_t)allowedWithAttribute:()RBProcessState error:;
- (uint64_t)isValidForContext:()RBProcessState withError:;
- (void)applyToSystemState:()RBProcessState attributePath:context:;
@end

@implementation RBSPrewarmAttribute(RBProcessState)

- (void)applyToSystemState:()RBProcessState attributePath:context:
{
  v4 = a3;
  identity = [self identity];
  [self interval];
  [v4 prewarmIdentity:identity withInterval:?];
}

- (uint64_t)isValidForContext:()RBProcessState withError:
{
  v24[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  target = [v6 target];
  isSystem = [target isSystem];

  if (isSystem)
  {
    originatorEntitlements = [v6 originatorEntitlements];
    if ([v6 ignoreRestrictions] & 1) != 0 || (objc_msgSend(originatorEntitlements, "rb_hasEntitlement:", @"com.apple.runningboard.launchprocess"))
    {
      a4 = 1;
LABEL_8:

      goto LABEL_9;
    }

    if (!a4)
    {
      goto LABEL_8;
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D47050];
    v18 = *MEMORY[0x277CCA470];
    v22[0] = @"Required client entitlement is missing for attribute";
    v19 = *MEMORY[0x277D47048];
    v21[0] = v18;
    v21[1] = v19;
    v14 = [self description];
    v22[1] = v14;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    *a4 = [v16 errorWithDomain:v17 code:2 userInfo:v20];

LABEL_7:
    a4 = 0;
    goto LABEL_8;
  }

  if (a4)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D47050];
    v12 = *MEMORY[0x277CCA470];
    v24[0] = @"Prewarm attribute must target system";
    v13 = *MEMORY[0x277D47048];
    v23[0] = v12;
    v23[1] = v13;
    originatorEntitlements = [self description];
    v24[1] = originatorEntitlements;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    *a4 = [v10 errorWithDomain:v11 code:2 userInfo:v14];
    goto LABEL_7;
  }

LABEL_9:

  return a4;
}

- (uint64_t)allowedWithAttribute:()RBProcessState error:
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a4 = 1;
  }

  else if (a4)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attribute conflict: attribute %@ conflicts with attribute %@", self, v6];
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277D47050];
    v12 = *MEMORY[0x277CCA470];
    v13[0] = v8;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *a4 = [v9 errorWithDomain:v10 code:2 userInfo:v11];

    a4 = 0;
  }

  return a4;
}

@end