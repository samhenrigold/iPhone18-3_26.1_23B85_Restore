@interface DefaultDecimalPrecisionRule
@end

@implementation DefaultDecimalPrecisionRule

uint64_t ___DefaultDecimalPrecisionRule_block_invoke()
{
  v0 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:2];
  v1 = _DefaultDecimalPrecisionRule_defaultPrecisionRule;
  _DefaultDecimalPrecisionRule_defaultPrecisionRule = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end