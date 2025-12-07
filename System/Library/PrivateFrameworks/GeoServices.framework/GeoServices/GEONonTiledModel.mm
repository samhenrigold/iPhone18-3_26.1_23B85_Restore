@interface GEONonTiledModel
- (GEONonTiledInfo)info;
- (GEONonTiledModel)init;
- (void)_readInfo;
@end

@implementation GEONonTiledModel

- (GEONonTiledModel)init
{
  v6.receiver = self;
  v6.super_class = GEONonTiledModel;
  v2 = [(GEONonTiledModel *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (GEONonTiledInfo)info
{
  [(GEONonTiledModel *)self _readInfo];
  info = self->_info;

  return info;
}

- (void)_readInfo
{
  if (self)
  {
    os_unfair_lock_lock((self + 40));
    if ((*(self + 44) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEONonTiledModelReadSpecified(self, *(self + 8), &_readInfo_tags_77588);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 40));
  }
}

@end