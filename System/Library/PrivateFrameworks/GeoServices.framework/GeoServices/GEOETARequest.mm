@interface GEOETARequest
- (unint64_t)serviceTagsCount;
- (void)_readServiceTags;
@end

@implementation GEOETARequest

- (unint64_t)serviceTagsCount
{
  [(GEOETARequest *)self _readServiceTags];
  serviceTags = self->_serviceTags;

  return [(NSMutableArray *)serviceTags count];
}

- (void)_readServiceTags
{
  if (self)
  {
    os_unfair_lock_lock((self + 304));
    if ((*(self + 332) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETARequestReadSpecified(self, *(self + 8), &_readServiceTags_tags_183783);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 304));
  }
}

@end