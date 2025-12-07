@interface DKPrivacyPolicyEnforcer
@end

@implementation DKPrivacyPolicyEnforcer

uint64_t __49___DKPrivacyPolicyEnforcer_privacyPolicyEnforcer__block_invoke()
{
  v0 = objc_alloc_init(_DKPrivacyPolicyEnforcer);
  v1 = privacyPolicyEnforcer_enforcer;
  privacyPolicyEnforcer_enforcer = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end