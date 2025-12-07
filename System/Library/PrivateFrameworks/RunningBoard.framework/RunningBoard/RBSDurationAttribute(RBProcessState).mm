@interface RBSDurationAttribute(RBProcessState)
- (uint64_t)allowedWithAttribute:()RBProcessState error:;
- (uint64_t)isValidForContext:()RBProcessState withError:;
- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:;
@end

@implementation RBSDurationAttribute(RBProcessState)

- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:
{
  v7 = a3;
  v8 = a5;
  if ([v8 isActiveDueToInheritedEndowment])
  {
    v9 = rbs_assertion_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [RBSDurationAttribute(RBProcessState) applyToAssertionIntransientState:v8 attributePath:v9 context:?];
    }
  }

  else
  {
    [self invalidationDuration];
    v11 = v10;
    [v7 invalidationDuration];
    if (v11 > v12)
    {
      [v7 setInvalidationDuration:v11];
    }

    [self warningDuration];
    v14 = v13;
    [v7 warningDuration];
    if (v14 > v15)
    {
      [v7 setWarningDuration:v14];
    }

    startPolicy = [self startPolicy];
    if (startPolicy > [v7 startPolicy])
    {
      [v7 setStartPolicy:startPolicy];
    }

    endPolicy = [self endPolicy];
    if (endPolicy > [v7 endPolicy])
    {
      [v7 setEndPolicy:endPolicy];
    }
  }
}

- (uint64_t)allowedWithAttribute:()RBProcessState error:
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([self startPolicy] == 1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if ([self startPolicy] != 3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      a4 = 1;
      goto LABEL_14;
    }

    if (a4)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attribute conflict: attribute %@ conflicts with attribute %@", self, v6];
      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277D47050];
      v15 = *MEMORY[0x277CCA470];
      v16 = v7;
      v10 = MEMORY[0x277CBEAC0];
      v11 = &v16;
      v12 = &v15;
      goto LABEL_12;
    }
  }

  else if (a4)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attribute conflict: attribute %@ conflicts with attribute %@", self, v6];
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D47050];
    v17 = *MEMORY[0x277CCA470];
    v18[0] = v7;
    v10 = MEMORY[0x277CBEAC0];
    v11 = v18;
    v12 = &v17;
LABEL_12:
    v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
    *a4 = [v8 errorWithDomain:v9 code:2 userInfo:v13];

    a4 = 0;
  }

LABEL_14:

  return a4;
}

- (uint64_t)isValidForContext:()RBProcessState withError:
{
  v23[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  originatorEntitlements = [v6 originatorEntitlements];
  if ([v6 ignoreRestrictions] & 1) != 0 || (objc_msgSend(originatorEntitlements, "rb_hasEntitlement:", @"com.apple.runningboard.primitiveattribute") & 1) != 0 || (objc_msgSend(originatorEntitlements, "rb_hasEntitlementDomain:", 2))
  {
    if ([self startPolicy] == 1 || !objc_msgSend(v6, "targetIsSystem"))
    {
      a4 = 1;
    }

    else if (a4)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277D47050];
      v10 = *MEMORY[0x277CCA470];
      v21[0] = @"Start policy must be 'fixed' for the system target";
      v11 = *MEMORY[0x277D47048];
      v20[0] = v10;
      v20[1] = v11;
      v12 = [self description];
      v21[1] = v12;
      v13 = MEMORY[0x277CBEAC0];
      v14 = v21;
      v15 = v20;
LABEL_11:
      v18 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:2];
      *a4 = [v8 errorWithDomain:v9 code:2 userInfo:v18];

      a4 = 0;
    }
  }

  else if (a4)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D47050];
    v16 = *MEMORY[0x277CCA470];
    v23[0] = @"Required client entitlement is missing";
    v17 = *MEMORY[0x277D47048];
    v22[0] = v16;
    v22[1] = v17;
    v12 = [self description];
    v23[1] = v12;
    v13 = MEMORY[0x277CBEAC0];
    v14 = v23;
    v15 = v22;
    goto LABEL_11;
  }

  return a4;
}

- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 assertion];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Not applying RBSDurationAttribute as it is not permitted as the subattribute of a hereditary grant for assertion %{public}@", &v4, 0xCu);
}

@end