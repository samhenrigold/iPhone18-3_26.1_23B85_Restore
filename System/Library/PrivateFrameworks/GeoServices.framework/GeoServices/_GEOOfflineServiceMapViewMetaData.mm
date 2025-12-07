@interface _GEOOfflineServiceMapViewMetaData
- (_GEOOfflineServiceMapViewMetaData)init;
@end

@implementation _GEOOfflineServiceMapViewMetaData

- (_GEOOfflineServiceMapViewMetaData)init
{
  v6.receiver = self;
  v6.super_class = _GEOOfflineServiceMapViewMetaData;
  v2 = [(_GEOOfflineServiceMapViewMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->priority = 2.22507386e-308;
    v2->state = 0;
    v2->_viewPort.center = kGEOCoordinateRegionInvalid;
    v2->_viewPort.span = unk_1880291A0;
    v2->_lastUpdated = 2.22507386e-308;
    v4 = v2;
  }

  return v3;
}

@end