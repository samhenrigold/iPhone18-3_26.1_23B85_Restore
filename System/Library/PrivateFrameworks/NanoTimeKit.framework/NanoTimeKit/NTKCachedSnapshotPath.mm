@interface NTKCachedSnapshotPath
@end

@implementation NTKCachedSnapshotPath

void ___NTKCachedSnapshotPath_block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = BSCurrentUserDirectory();
  v2 = [v6 stringByAppendingPathComponent:@"/Library/Caches"];
  v3 = [v2 stringByAppendingPathComponent:@"NanoTimeKit"];
  v4 = [v3 stringByAppendingPathComponent:@"GallerySnapshots"];
  v5 = _NTKCachedSnapshotPath_snapshotPath;
  _NTKCachedSnapshotPath_snapshotPath = v4;
}

@end