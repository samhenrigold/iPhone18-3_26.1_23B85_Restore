@interface AMSMethodImplementationCache
+ (BOOL)implementationsOf:(SEL)of areEqualIn:(Class)in and:(Class)and;
@end

@implementation AMSMethodImplementationCache

+ (BOOL)implementationsOf:(SEL)of areEqualIn:(Class)in and:(Class)and
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = swift_getObjCClassMetadata();
  return static MethodImplementationCache.implementations(of:areEqualIn:and:)(of, ObjCClassMetadata, v7) & 1;
}

@end