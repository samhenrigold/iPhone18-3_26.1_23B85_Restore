@interface GEOPlaceCardDiskSpaceProvider
- (unint64_t)freePurgableDiskSpace:(unint64_t)space urgency:(int)urgency;
- (unint64_t)purgableDiskSpaceForUrgency:(int)urgency;
@end

@implementation GEOPlaceCardDiskSpaceProvider

- (unint64_t)freePurgableDiskSpace:(unint64_t)space urgency:(int)urgency
{
  v4 = *&urgency;
  if ([(GEOPlaceCardDiskSpaceProvider *)self minimumUrgency]> urgency)
  {
    return 0;
  }

  v8 = [(GEOPlaceCardDiskSpaceProvider *)self purgableDiskSpaceForUrgency:v4];
  if (v8 >= space)
  {
    v9 = v8 - space;
  }

  else
  {
    v9 = 0;
  }

  v10 = +[GEOPlaceDataLocalProxy shared];
  v11 = [v10 shrinkBySizeSync:v9];

  return v11;
}

- (unint64_t)purgableDiskSpaceForUrgency:(int)urgency
{
  if ([(GEOPlaceCardDiskSpaceProvider *)self minimumUrgency]> urgency)
  {
    return 0;
  }

  v4 = +[GEOPlaceDataLocalProxy shared];
  calculateFreeableSpaceSync = [v4 calculateFreeableSpaceSync];

  return calculateFreeableSpaceSync;
}

@end