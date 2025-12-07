@interface WAAirQualityIsUBA
@end

@implementation WAAirQualityIsUBA

uint64_t ___WAAirQualityIsUBA_block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObject:@"DE"];
  v1 = _WAAirQualityIsUBA_UBACountries;
  _WAAirQualityIsUBA_UBACountries = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end