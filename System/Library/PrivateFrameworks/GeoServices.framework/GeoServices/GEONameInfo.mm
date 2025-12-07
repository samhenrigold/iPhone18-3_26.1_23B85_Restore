@interface GEONameInfo
- (GEONameInfo)init;
- (NSString)name;
- (void)_readName;
@end

@implementation GEONameInfo

- (GEONameInfo)init
{
  v6.receiver = self;
  v6.super_class = GEONameInfo;
  v2 = [(GEONameInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (NSString)name
{
  [(GEONameInfo *)self _readName];
  name = self->_name;

  return name;
}

- (void)_readName
{
  if (self)
  {
    os_unfair_lock_lock((self + 64));
    if ((*(self + 80) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEONameInfoReadSpecified(self, *(self + 8), &_readName_tags_139014);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 64));
  }
}

@end