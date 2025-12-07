@interface SynchronousThumbnailImagesForAssets
@end

@implementation SynchronousThumbnailImagesForAssets

void *___SynchronousThumbnailImagesForAssets_block_invoke(void *result, uint64_t a2)
{
  if (a2)
  {
    return [*(*(result[4] + 8) + 40) addObject:a2];
  }

  return result;
}

@end