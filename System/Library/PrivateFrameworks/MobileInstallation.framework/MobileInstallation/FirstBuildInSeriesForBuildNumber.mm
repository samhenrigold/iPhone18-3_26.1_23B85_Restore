@interface FirstBuildInSeriesForBuildNumber
@end

@implementation FirstBuildInSeriesForBuildNumber

uint64_t ___FirstBuildInSeriesForBuildNumber_block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithRange:{65, 26}];
  v1 = _FirstBuildInSeriesForBuildNumber_uppercaseEnglishCharacterSet;
  _FirstBuildInSeriesForBuildNumber_uppercaseEnglishCharacterSet = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end