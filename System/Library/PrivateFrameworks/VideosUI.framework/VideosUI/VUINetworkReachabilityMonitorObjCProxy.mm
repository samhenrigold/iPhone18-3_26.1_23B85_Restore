@interface VUINetworkReachabilityMonitorObjCProxy
+ (NSString)networkReachabilityDidChangeNotificationName;
+ (NSString)networkReachableUserInfoKey;
@end

@implementation VUINetworkReachabilityMonitorObjCProxy

+ (NSString)networkReachabilityDidChangeNotificationName
{
  v3 = static VUINetworkReachabilityMonitorObjCProxy.networkReachabilityDidChangeNotificationName.getter(self, a2, v2);

  return v3;
}

+ (NSString)networkReachableUserInfoKey
{
  static VUINetworkReachabilityMonitorObjCProxy.networkReachableUserInfoKey.getter(self, a2, v2);
  v3 = sub_1E4205ED4();

  return v3;
}

@end