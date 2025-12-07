@interface NTKComplicationNoContentImagesCacheDirectory
@end

@implementation NTKComplicationNoContentImagesCacheDirectory

void ___NTKComplicationNoContentImagesCacheDirectory_block_invoke(uint64_t a1)
{
  v1 = NTKCacheDirectory(a1);
  v2 = [v1 stringByAppendingPathComponent:@"ComplicationNoContentImages"];
  v3 = _NTKComplicationNoContentImagesCacheDirectory___path;
  _NTKComplicationNoContentImagesCacheDirectory___path = v2;

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  [v4 createDirectoryAtPath:_NTKComplicationNoContentImagesCacheDirectory___path withIntermediateDirectories:1 attributes:0 error:0];
}

@end