@interface BKSPersistentConnectionDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation BKSPersistentConnectionDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];
}

@end