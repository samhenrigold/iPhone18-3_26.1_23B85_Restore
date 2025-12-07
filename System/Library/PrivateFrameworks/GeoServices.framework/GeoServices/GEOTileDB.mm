@interface GEOTileDB
- (NSString)devicePostureCountry;
- (NSString)devicePostureRegion;
@end

@implementation GEOTileDB

- (NSString)devicePostureCountry
{
  v5 = self->_infrequentlyChangingMetadataIsolater;
  _geo_isolate_lock_data();
  v3 = self->_devicePostureCountry;
  _geo_isolate_unlock();

  return v3;
}

- (NSString)devicePostureRegion
{
  v5 = self->_infrequentlyChangingMetadataIsolater;
  _geo_isolate_lock_data();
  v3 = self->_devicePostureRegion;
  _geo_isolate_unlock();

  return v3;
}

@end