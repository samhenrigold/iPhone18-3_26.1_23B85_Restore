@interface WAAirQualityIsDAQI
@end

@implementation WAAirQualityIsDAQI

uint64_t ___WAAirQualityIsDAQI_block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObject:@"GB"];
  v1 = _WAAirQualityIsDAQI_DAQICountries;
  _WAAirQualityIsDAQI_DAQICountries = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end