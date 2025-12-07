@interface DKRateLimitPolicyEnforcer
@end

@implementation DKRateLimitPolicyEnforcer

uint64_t __53___DKRateLimitPolicyEnforcer_rateLimitPolicyEnforcer__block_invoke()
{
  v0 = objc_alloc_init(_DKRateLimitPolicyEnforcer);
  v1 = rateLimitPolicyEnforcer_enforcer;
  rateLimitPolicyEnforcer_enforcer = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end