@interface RBSInvalidateUnderConditionAttribute(RBProcessState)
- (uint64_t)isValidForContext:()RBProcessState withError:;
- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:;
@end

@implementation RBSInvalidateUnderConditionAttribute(RBProcessState)

- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:
{
  v7 = a3;
  v8 = a5;
  if (_os_feature_enabled_impl())
  {
    if ([v8 isActiveDueToInheritedEndowment])
    {
      v9 = rbs_assertion_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [RBSInvalidateUnderConditionAttribute(RBProcessState) applyToAssertionIntransientState:v8 attributePath:v9 context:?];
      }
    }

    else
    {
      invalidatesOnConditions = [v7 invalidatesOnConditions];
      if (!invalidatesOnConditions)
      {
        invalidatesOnConditions = [MEMORY[0x277CBEB38] dictionary];
        [v7 setInvalidatesOnConditions:invalidatesOnConditions];
      }

      condition = [self condition];
      v12 = [invalidatesOnConditions objectForKey:condition];

      if (!v12 || (v13 = [self minValue], v13 < objc_msgSend(v12, "integerValue")))
      {
        v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "minValue")}];
        condition2 = [self condition];
        [invalidatesOnConditions setValue:v14 forKey:condition2];
      }
    }
  }
}

- (uint64_t)isValidForContext:()RBProcessState withError:
{
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 ignoreRestrictions] & 1) != 0 || (objc_msgSend(v6, "originatorEntitlements"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "rb_hasEntitlement:", @"com.apple.runningboard.primitiveattribute"), v7, (v8))
  {
    a4 = 1;
  }

  else if (a4)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D47050];
    v12 = *MEMORY[0x277CCA470];
    v17[0] = @"Required client entitlement is missing";
    v13 = *MEMORY[0x277D47048];
    v16[0] = v12;
    v16[1] = v13;
    v14 = [self description];
    v17[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    *a4 = [v10 errorWithDomain:v11 code:2 userInfo:v15];

    a4 = 0;
  }

  return a4;
}

- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 assertion];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Not applying RBSMimicTaskSuspensionAttribute as it is not permitted as the subattribute of a hereditary grant for assertion %{public}@", &v4, 0xCu);
}

@end