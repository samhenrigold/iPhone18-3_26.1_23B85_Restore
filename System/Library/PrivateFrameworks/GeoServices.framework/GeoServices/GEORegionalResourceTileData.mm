@interface GEORegionalResourceTileData
- (GEORegionalResourceTileData)init;
- (NSMutableArray)icons;
- (unint64_t)iconsCount;
- (void)_readIcons;
@end

@implementation GEORegionalResourceTileData

- (GEORegionalResourceTileData)init
{
  v6.receiver = self;
  v6.super_class = GEORegionalResourceTileData;
  v2 = [(GEORegionalResourceTileData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readIcons
{
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    if ((*(self + 60) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORegionalResourceTileDataReadSpecified(self, *(self + 8), &_readIcons_tags_1353);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 56));
  }
}

- (unint64_t)iconsCount
{
  [(GEORegionalResourceTileData *)self _readIcons];
  icons = self->_icons;

  return [(NSMutableArray *)icons count];
}

- (NSMutableArray)icons
{
  [(GEORegionalResourceTileData *)self _readIcons];
  icons = self->_icons;

  return icons;
}

@end