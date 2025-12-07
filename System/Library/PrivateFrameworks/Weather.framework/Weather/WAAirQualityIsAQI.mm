@interface WAAirQualityIsAQI
@end

@implementation WAAirQualityIsAQI

uint64_t ___WAAirQualityIsAQI_block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"CN", @"US", @"MX", 0}];
  v1 = _WAAirQualityIsAQI_AQICountries;
  _WAAirQualityIsAQI_AQICountries = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end