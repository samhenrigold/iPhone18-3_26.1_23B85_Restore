@interface GEORouteLineStyleInfo
- (BOOL)preserveStyleInUpdates;
- (GEOLabelInfo)labelInfo;
- (GEORouteLineStyleInfo)init;
- (GEOStyleAttributes)styleAttributes;
- (NSMutableArray)laneChangeInfos;
- (void)_readLabelInfo;
- (void)_readLaneChangeInfos;
- (void)_readStyleAttributes;
@end

@implementation GEORouteLineStyleInfo

- (GEORouteLineStyleInfo)init
{
  v6.receiver = self;
  v6.super_class = GEORouteLineStyleInfo;
  v2 = [(GEORouteLineStyleInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (GEOLabelInfo)labelInfo
{
  [(GEORouteLineStyleInfo *)self _readLabelInfo];
  labelInfo = self->_labelInfo;

  return labelInfo;
}

- (void)_readStyleAttributes
{
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    if ((*(self + 76) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteLineStyleInfoReadSpecified(self, *(self + 8), &_readStyleAttributes_tags_48510);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 56));
  }
}

- (NSMutableArray)laneChangeInfos
{
  [(GEORouteLineStyleInfo *)self _readLaneChangeInfos];
  laneChangeInfos = self->_laneChangeInfos;

  return laneChangeInfos;
}

- (BOOL)preserveStyleInUpdates
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  return (flags & 8) == 0 || self->_preserveStyleInUpdates;
}

- (void)_readLabelInfo
{
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    if ((*(self + 76) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteLineStyleInfoReadSpecified(self, *(self + 8), &_readLabelInfo_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 56));
  }
}

- (GEOStyleAttributes)styleAttributes
{
  [(GEORouteLineStyleInfo *)self _readStyleAttributes];
  styleAttributes = self->_styleAttributes;

  return styleAttributes;
}

- (void)_readLaneChangeInfos
{
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    if ((*(self + 76) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteLineStyleInfoReadSpecified(self, *(self + 8), &_readLaneChangeInfos_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 56));
  }
}

@end