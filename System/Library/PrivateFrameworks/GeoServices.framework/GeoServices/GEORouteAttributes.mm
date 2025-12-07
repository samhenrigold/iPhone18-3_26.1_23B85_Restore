@interface GEORouteAttributes
- (GEORouteAttributes)init;
- (void)dealloc;
@end

@implementation GEORouteAttributes

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = GEORouteAttributes;
  [(GEORouteAttributes *)&v3 dealloc];
}

- (GEORouteAttributes)init
{
  v6.receiver = self;
  v6.super_class = GEORouteAttributes;
  v2 = [(GEORouteAttributes *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end