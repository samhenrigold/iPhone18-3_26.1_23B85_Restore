@interface GEOPDAttribution
- (BOOL)_isYelp;
- (GEOPDAttribution)init;
- (id)attributionUrls;
- (id)externalItemId;
- (id)vendorId;
- (void)_readAttributionUrls;
- (void)_readExternalItemId;
- (void)_readVendorId;
@end

@implementation GEOPDAttribution

- (GEOPDAttribution)init
{
  v6.receiver = self;
  v6.super_class = GEOPDAttribution;
  v2 = [(GEOPDAttribution *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readVendorId
{
  os_unfair_lock_lock((self + 72));
  if ((*(self + 76) & 0x20) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDAttributionReadSpecified(self, *(self + 8), &_readVendorId_tags_703);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 72));
}

- (id)vendorId
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDAttribution *)self _readVendorId];
    self = selfCopy[7];
    v1 = vars8;
  }

  return self;
}

- (void)_readAttributionUrls
{
  os_unfair_lock_lock((self + 72));
  if ((*(self + 76) & 4) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDAttributionReadSpecified(self, *(self + 8), &_readAttributionUrls_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 72));
}

- (id)attributionUrls
{
  [(GEOPDAttribution *)self _readAttributionUrls];
  v2 = *(self + 32);

  return v2;
}

- (void)_readExternalItemId
{
  os_unfair_lock_lock((self + 72));
  if ((*(self + 76) & 0x10) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDAttributionReadSpecified(self, *(self + 8), &_readExternalItemId_tags_69911);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 72));
}

- (id)externalItemId
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDAttribution *)self _readExternalItemId];
    self = selfCopy[6];
    v1 = vars8;
  }

  return self;
}

- (BOOL)_isYelp
{
  vendorId = [(GEOPDAttribution *)&self->super.super.isa vendorId];
  v3 = [vendorId rangeOfString:@"yelp"] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

@end