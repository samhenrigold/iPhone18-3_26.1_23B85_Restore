@interface NTKCachedComplicationSnapshotPath
@end

@implementation NTKCachedComplicationSnapshotPath

void ___NTKCachedComplicationSnapshotPath_block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = BSCurrentUserDirectory();
  v2 = [v6 stringByAppendingPathComponent:@"/Library/Caches"];
  v3 = [v2 stringByAppendingPathComponent:@"NanoTimeKit"];
  v4 = [v3 stringByAppendingPathComponent:@"Complications"];
  v5 = _NTKCachedComplicationSnapshotPath_snapshotPath;
  _NTKCachedComplicationSnapshotPath_snapshotPath = v4;
}

@end