@interface SBFMappedImageCache(SBMappedImageCacheAdditions)
+ (id)sessionCache;
@end

@implementation SBFMappedImageCache(SBMappedImageCacheAdditions)

+ (id)sessionCache
{
  if (sessionCache___once != -1)
  {
    +[SBFMappedImageCache(SBMappedImageCacheAdditions) sessionCache];
  }

  v2 = sessionCache___cache;

  return v2;
}

@end