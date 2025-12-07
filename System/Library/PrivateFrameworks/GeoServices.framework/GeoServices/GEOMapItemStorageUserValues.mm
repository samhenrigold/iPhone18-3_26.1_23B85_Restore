@interface GEOMapItemStorageUserValues
- (GEOMapItemStorageUserValues)init;
- (NSString)name;
- (unint64_t)hash;
- (void)_readName;
@end

@implementation GEOMapItemStorageUserValues

- (GEOMapItemStorageUserValues)init
{
  v6.receiver = self;
  v6.super_class = GEOMapItemStorageUserValues;
  v2 = [(GEOMapItemStorageUserValues *)&v6 init];
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
  [(GEOMapItemStorageUserValues *)self _readName];
  name = self->_name;

  return name;
}

- (void)_readName
{
  if (self)
  {
    os_unfair_lock_lock((self + 72));
    if ((*(self + 76) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapItemStorageUserValuesReadSpecified(self, *(self + 8), &_readName_tags_1215);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 72));
  }
}

- (unint64_t)hash
{
  [(GEOMapItemStorageUserValues *)self readAll:1];
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_phoneNumber hash]^ v3;
  v5 = [(NSString *)self->_url hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_timeZoneName hash];
  return v6 ^ [(NSData *)self->_timeZoneData hash];
}

@end