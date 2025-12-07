@interface RBSLaunchGrant(RBProcessState)
- (uint64_t)isValidForContext:()RBProcessState withError:;
- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:;
@end

@implementation RBSLaunchGrant(RBProcessState)

- (uint64_t)isValidForContext:()RBProcessState withError:
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![MEMORY[0x277D46DD8] allowedForPrimitiveAttributeForProcessTarget:v6 withError:a4])
  {
    goto LABEL_6;
  }

  target = [v6 target];
  identity = [target identity];
  hasConsistentLaunchdJob = [identity hasConsistentLaunchdJob];

  if ((hasConsistentLaunchdJob & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_7;
    }

    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D47050];
    v12 = *MEMORY[0x277CCA470];
    v18[0] = @"Attribute is only applicable to daemons and angels";
    v13 = *MEMORY[0x277D47048];
    v17[0] = v12;
    v17[1] = v13;
    v14 = [self description];
    v18[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    *a4 = [v10 errorWithDomain:v11 code:2 userInfo:v15];

LABEL_6:
    a4 = 0;
    goto LABEL_7;
  }

  a4 = 1;
LABEL_7:

  return a4;
}

- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:
{
  v6 = a3;
  v7 = a5;
  if ([v7 isActiveDueToInheritedEndowment])
  {
    v8 = rbs_assertion_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [RBSLaunchGrant(RBProcessState) applyToAssertionIntransientState:v7 attributePath:v8 context:?];
    }
  }

  else
  {
    [v6 setIsPersistent:1];
  }
}

- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 assertion];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Not applying RBSLaunchGrant as it is not permitted as the subattribute of a hereditary grant for assertion %{public}@", &v4, 0xCu);
}

@end