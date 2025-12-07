@interface GEOPDCategory
- (GEOPDCategory)init;
- (NSMutableArray)localizedNames;
- (void)_readLocalizedNames;
@end

@implementation GEOPDCategory

- (NSMutableArray)localizedNames
{
  [(GEOPDCategory *)self _readLocalizedNames];
  localizedNames = self->_localizedNames;

  return localizedNames;
}

- (void)_readLocalizedNames
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 56) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDCategoryReadSpecified(self, *(self + 8), &_readLocalizedNames_tags_71549);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

- (GEOPDCategory)init
{
  v6.receiver = self;
  v6.super_class = GEOPDCategory;
  v2 = [(GEOPDCategory *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end