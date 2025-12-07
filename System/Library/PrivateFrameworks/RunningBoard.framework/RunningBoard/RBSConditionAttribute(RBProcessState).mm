@interface RBSConditionAttribute(RBProcessState)
- (uint64_t)isValidForContext:()RBProcessState withError:;
- (void)applyToSystemState:()RBProcessState attributePath:context:;
@end

@implementation RBSConditionAttribute(RBProcessState)

- (void)applyToSystemState:()RBProcessState attributePath:context:
{
  v5 = a3;
  if (_os_feature_enabled_impl())
  {
    condition = [self condition];
    [v5 upgradeCondition:condition toValue:{objc_msgSend(self, "value")}];
  }
}

- (uint64_t)isValidForContext:()RBProcessState withError:
{
  v26[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (([v6 targetIsSystem] & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_8;
    }

    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277D47050];
    v11 = *MEMORY[0x277CCA470];
    v26[0] = @"Attribute is not current supported for process target";
    v12 = *MEMORY[0x277D47048];
    v25[0] = v11;
    v25[1] = v12;
    v13 = [self description];
    v26[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v15 = v9;
    v16 = v10;
    v17 = 2;
LABEL_7:
    *a4 = [v15 errorWithDomain:v16 code:v17 userInfo:v14];

    a4 = 0;
    goto LABEL_8;
  }

  if (([v6 ignoreRestrictions] & 1) == 0)
  {
    originatorEntitlements = [v6 originatorEntitlements];
    v8 = [originatorEntitlements rb_hasEntitlement:@"com.apple.runningboard.primitiveattribute"];

    if ((v8 & 1) == 0)
    {
      if (!a4)
      {
        goto LABEL_8;
      }

      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277D47050];
      v21 = *MEMORY[0x277CCA470];
      v24[0] = @"Required client entitlement is missing";
      v22 = *MEMORY[0x277D47048];
      v23[0] = v21;
      v23[1] = v22;
      v13 = [self description];
      v24[1] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
      v15 = v19;
      v16 = v20;
      v17 = 3;
      goto LABEL_7;
    }
  }

  a4 = 1;
LABEL_8:

  return a4;
}

@end