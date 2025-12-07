@interface UITraitCollection(SBUISecureRenderingTraits)
- (uint64_t)isSecureRenderingEnabled;
@end

@implementation UITraitCollection(SBUISecureRenderingTraits)

- (uint64_t)isSecureRenderingEnabled
{
  v2 = [self valueForNSIntegerTrait:objc_opt_class()];

  return MEMORY[0x1EEDF0330](v2);
}

@end