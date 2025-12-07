@interface GEOPDUser
- (GEOPDUser)init;
@end

@implementation GEOPDUser

- (GEOPDUser)init
{
  v6.receiver = self;
  v6.super_class = GEOPDUser;
  v2 = [(GEOPDUser *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end