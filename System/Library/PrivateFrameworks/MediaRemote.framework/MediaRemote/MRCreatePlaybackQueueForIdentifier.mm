@interface MRCreatePlaybackQueueForIdentifier
@end

@implementation MRCreatePlaybackQueueForIdentifier

void ___onQueue_MRCreatePlaybackQueueForIdentifier_block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 48) + 16))();
  if (v2)
  {
    v3 = *(a1 + 40);
    v5 = v2;
    SkeletonFrom = MRContentItemCreateSkeletonFrom(v2);
    [v3 addObject:SkeletonFrom];

    v2 = v5;
  }
}

@end