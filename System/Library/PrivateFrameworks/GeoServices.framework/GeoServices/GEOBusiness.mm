@interface GEOBusiness
- (GEOBusiness)init;
- (void)_readLocalizedCategories;
- (void)_readName;
- (void)_readOpenHours;
- (void)_readPhotos;
- (void)_readSources;
@end

@implementation GEOBusiness

- (GEOBusiness)init
{
  v6.receiver = self;
  v6.super_class = GEOBusiness;
  v2 = [(GEOBusiness *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readSources
{
  if (self)
  {
    os_unfair_lock_lock((self + 168));
    if ((*(self + 178) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOBusinessReadSpecified(self, *(self + 8), &_readSources_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 168));
  }
}

- (void)_readOpenHours
{
  if (self)
  {
    os_unfair_lock_lock((self + 168));
    if ((*(self + 177) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOBusinessReadSpecified(self, *(self + 8), &_readOpenHours_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 168));
  }
}

- (void)_readPhotos
{
  if (self)
  {
    os_unfair_lock_lock((self + 168));
    if ((*(self + 177) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOBusinessReadSpecified(self, *(self + 8), &_readPhotos_tags_103339);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 168));
  }
}

- (void)_readLocalizedCategories
{
  if (self)
  {
    os_unfair_lock_lock((self + 168));
    if ((*(self + 177) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOBusinessReadSpecified(self, *(self + 8), &_readLocalizedCategories_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 168));
  }
}

- (void)_readName
{
  if (self)
  {
    os_unfair_lock_lock((self + 168));
    if ((*(self + 177) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOBusinessReadSpecified(self, *(self + 8), &_readName_tags_103344);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 168));
  }
}

@end