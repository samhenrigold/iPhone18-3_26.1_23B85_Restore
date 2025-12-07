@interface GEOPDBrowseCategory
- (GEOPDBrowseCategory)init;
- (id)shortDisplayString;
- (os_unfair_lock_s)styleAttributes;
- (void)_readShortDisplayString;
- (void)_readSubCategorys;
@end

@implementation GEOPDBrowseCategory

- (GEOPDBrowseCategory)init
{
  v6.receiver = self;
  v6.super_class = GEOPDBrowseCategory;
  v2 = [(GEOPDBrowseCategory *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (os_unfair_lock_s)styleAttributes
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(self + 20);
    if ((selfCopy[25]._os_unfair_lock_opaque & 0x400) == 0)
    {
      v2 = *&selfCopy[2]._os_unfair_lock_opaque;
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDBrowseCategoryReadSpecified(selfCopy, *&selfCopy[2]._os_unfair_lock_opaque, &_readStyleAttributes_tags_88426);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock(selfCopy + 20);
    self = *&selfCopy[12]._os_unfair_lock_opaque;
  }

  return self;
}

- (void)_readShortDisplayString
{
  os_unfair_lock_lock((self + 80));
  if ((*(self + 100) & 0x200) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDBrowseCategoryReadSpecified(self, *(self + 8), &_readShortDisplayString_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 80));
}

- (id)shortDisplayString
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDBrowseCategory *)self _readShortDisplayString];
    self = selfCopy[5];
    v1 = vars8;
  }

  return self;
}

- (void)_readSubCategorys
{
  os_unfair_lock_lock((self + 80));
  if ((*(self + 100) & 0x800) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDBrowseCategoryReadSpecified(self, *(self + 8), &_readSubCategorys_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 80));
}

@end