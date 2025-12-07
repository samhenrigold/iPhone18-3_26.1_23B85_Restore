@interface VUILocationServiceProxyObjCNotificationName
+ (NSString)locationAuthorizationDidChange;
+ (NSString)locationDidChange;
@end

@implementation VUILocationServiceProxyObjCNotificationName

+ (NSString)locationAuthorizationDidChange
{
  v2 = static VUILocationServiceProxyObjCNotificationName.locationAuthorizationDidChange.getter(self, a2);

  return v2;
}

+ (NSString)locationDidChange
{
  v2 = static VUILocationServiceProxyObjCNotificationName.locationDidChange.getter(self, a2);

  return v2;
}

@end