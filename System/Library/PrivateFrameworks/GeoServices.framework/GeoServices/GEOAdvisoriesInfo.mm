@interface GEOAdvisoriesInfo
- (GEOAdvisoriesInfo)init;
- (NSMutableArray)genericAdvisorys;
- (void)_readGenericAdvisorys;
@end

@implementation GEOAdvisoriesInfo

- (NSMutableArray)genericAdvisorys
{
  [(GEOAdvisoriesInfo *)self _readGenericAdvisorys];
  genericAdvisorys = self->_genericAdvisorys;

  return genericAdvisorys;
}

- (void)_readGenericAdvisorys
{
  if (self)
  {
    os_unfair_lock_lock((self + 80));
    if ((*(self + 84) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOAdvisoriesInfoReadSpecified(self, *(self + 8), &_readGenericAdvisorys_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 80));
  }
}

- (GEOAdvisoriesInfo)init
{
  v6.receiver = self;
  v6.super_class = GEOAdvisoriesInfo;
  v2 = [(GEOAdvisoriesInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end