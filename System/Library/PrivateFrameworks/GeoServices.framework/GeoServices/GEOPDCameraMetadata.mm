@interface GEOPDCameraMetadata
- (GEOPDCameraMetadata)init;
- (void)dealloc;
@end

@implementation GEOPDCameraMetadata

- (GEOPDCameraMetadata)init
{
  v6.receiver = self;
  v6.super_class = GEOPDCameraMetadata;
  v2 = [(GEOPDCameraMetadata *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = GEOPDCameraMetadata;
  [(GEOPDCameraMetadata *)&v3 dealloc];
}

@end