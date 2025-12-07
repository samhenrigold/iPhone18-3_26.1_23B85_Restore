@interface GEOAddress
- (GEOAddress)init;
- (GEOStructuredAddress)structuredAddress;
- (void)_readStructuredAddress;
@end

@implementation GEOAddress

- (GEOStructuredAddress)structuredAddress
{
  [(GEOAddress *)self _readStructuredAddress];
  structuredAddress = self->_structuredAddress;

  return structuredAddress;
}

- (void)_readStructuredAddress
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
        GEOAddressReadSpecified(self, *(self + 8), &_readStructuredAddress_tags_137615);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

- (GEOAddress)init
{
  v6.receiver = self;
  v6.super_class = GEOAddress;
  v2 = [(GEOAddress *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end