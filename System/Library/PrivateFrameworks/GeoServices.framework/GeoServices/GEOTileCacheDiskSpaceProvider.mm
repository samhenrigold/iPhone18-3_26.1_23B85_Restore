@interface GEOTileCacheDiskSpaceProvider
- (unint64_t)freePurgableDiskSpace:(unint64_t)space urgency:(int)urgency;
- (unint64_t)purgableDiskSpaceForUrgency:(int)urgency;
@end

@implementation GEOTileCacheDiskSpaceProvider

- (unint64_t)freePurgableDiskSpace:(unint64_t)space urgency:(int)urgency
{
  v4 = *&urgency;
  if ([(GEOTileCacheDiskSpaceProvider *)self minimumUregency]> urgency)
  {
    return 0;
  }

  v8 = [(GEOTileCacheDiskSpaceProvider *)self purgableDiskSpaceForUrgency:v4];
  if (v8 >= space)
  {
    v9 = v8 - space;
  }

  else
  {
    v9 = 0;
  }

  v10 = +[NSUUID UUID];
  uUIDString = [v10 UUIDString];
  v12 = [NSString stringWithFormat:@"GEODiskSpaceManager-%@", uUIDString];

  v13 = +[GEOTileLoader modernLoader];
  [v13 openForClient:v12];

  v14 = +[GEOTileLoader modernLoader];
  v15 = [v14 shrinkDiskCacheToSizeSync:v9];

  v16 = +[GEOTileLoader modernLoader];
  [v16 closeForClient:v12];

  return v15;
}

- (unint64_t)purgableDiskSpaceForUrgency:(int)urgency
{
  if ([(GEOTileCacheDiskSpaceProvider *)self minimumUregency]> urgency)
  {
    return 0;
  }

  v4 = +[NSUUID UUID];
  uUIDString = [v4 UUIDString];
  v6 = [NSString stringWithFormat:@"GEODiskSpaceManager-%@", uUIDString];

  v7 = +[GEOTileLoader modernLoader];
  [v7 openForClient:v6];

  v8 = +[GEOTileLoader modernLoader];
  calculateFreeableSizeSync = [v8 calculateFreeableSizeSync];

  v10 = +[GEOTileLoader modernLoader];
  [v10 closeForClient:v6];

  return calculateFreeableSizeSync;
}

@end