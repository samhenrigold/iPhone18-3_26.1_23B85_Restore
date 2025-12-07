@interface SSShouldIgnoreAbilityCheck
@end

@implementation SSShouldIgnoreAbilityCheck

void *___SSShouldIgnoreAbilityCheck_block_invoke()
{
  result = _SSUserDefaultsBooleanForKeyWithNODefault(@"SSIgnoreAbilityCheck");
  _SSShouldIgnoreAbilityCheck___SSShouldIgnoreAbilityCheck = result;
  return result;
}

@end