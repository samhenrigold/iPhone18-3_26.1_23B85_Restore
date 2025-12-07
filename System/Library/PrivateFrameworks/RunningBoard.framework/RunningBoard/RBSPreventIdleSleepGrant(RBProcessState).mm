@interface RBSPreventIdleSleepGrant(RBProcessState)
- (uint64_t)isValidForContext:()RBProcessState withError:;
- (void)applyToProcessState:()RBProcessState attributePath:context:;
- (void)applyToSystemState:()RBProcessState attributePath:context:;
@end

@implementation RBSPreventIdleSleepGrant(RBProcessState)

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v6 = a5;
  v7 = a3;
  [v7 setPreventIdleSleep:1];
  v8 = MEMORY[0x277CCACA8];
  assertionID = [v6 assertionID];
  assertion = [v6 assertion];

  explanation = [assertion explanation];
  v11 = [v8 stringWithFormat:@"%@:%@", assertionID, explanation];
  [v7 addPreventIdleSleepIdentifier:v11];
}

- (void)applyToSystemState:()RBProcessState attributePath:context:
{
  v6 = a5;
  v7 = a3;
  [v7 setPreventIdleSleep:1];
  v8 = MEMORY[0x277CCACA8];
  assertionID = [v6 assertionID];
  assertion = [v6 assertion];

  explanation = [assertion explanation];
  v11 = [v8 stringWithFormat:@"%@:%@", assertionID, explanation];
  [v7 addPreventIdleSleepIdentifier:v11];
}

- (uint64_t)isValidForContext:()RBProcessState withError:
{
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  originatorEntitlements = [v6 originatorEntitlements];
  ignoreRestrictions = [v6 ignoreRestrictions];

  if (ignoreRestrictions & 1) != 0 || ([originatorEntitlements rb_hasEntitlement:@"com.apple.runningboard.primitiveattribute"])
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

@end