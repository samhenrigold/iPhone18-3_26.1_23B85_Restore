@interface GEOPDISO3166Code
- (GEOPDISO3166Code)init;
@end

@implementation GEOPDISO3166Code

- (GEOPDISO3166Code)init
{
  v6.receiver = self;
  v6.super_class = GEOPDISO3166Code;
  v2 = [(GEOPDISO3166Code *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end