@interface GEOPDTrailHead
- (GEOPDTrailHead)init;
@end

@implementation GEOPDTrailHead

- (GEOPDTrailHead)init
{
  v6.receiver = self;
  v6.super_class = GEOPDTrailHead;
  v2 = [(GEOPDTrailHead *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end