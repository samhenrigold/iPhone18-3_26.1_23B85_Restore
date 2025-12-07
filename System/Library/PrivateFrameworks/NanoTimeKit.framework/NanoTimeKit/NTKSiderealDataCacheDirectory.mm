@interface NTKSiderealDataCacheDirectory
@end

@implementation NTKSiderealDataCacheDirectory

void ___NTKSiderealDataCacheDirectory_block_invoke(uint64_t a1)
{
  v1 = NTKCacheDirectory(a1);
  v2 = [v1 stringByAppendingPathComponent:@"SiderealData"];
  v3 = _NTKSiderealDataCacheDirectory___path;
  _NTKSiderealDataCacheDirectory___path = v2;

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  [v4 createDirectoryAtPath:_NTKSiderealDataCacheDirectory___path withIntermediateDirectories:1 attributes:0 error:0];
}

@end