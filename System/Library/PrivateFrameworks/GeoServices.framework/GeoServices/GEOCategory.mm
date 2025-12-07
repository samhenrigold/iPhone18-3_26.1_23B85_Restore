@interface GEOCategory
- (void)_readLocalizedNames;
@end

@implementation GEOCategory

- (void)_readLocalizedNames
{
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    if ((*(self + 64) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOCategoryReadSpecified(self, *(self + 8), &_readLocalizedNames_tags_103215);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 56));
  }
}

@end