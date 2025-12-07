@interface FMDDeviceIdentityProxyFactory
+ (BOOL)isAutomationActive;
+ (id)deviceIdentityProxy;
@end

@implementation FMDDeviceIdentityProxyFactory

+ (BOOL)isAutomationActive
{
  if (qword_1003149B8 != -1)
  {
    sub_10022D718();
  }

  v2 = sub_100002880(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10022D72C(v2);
  }

  return byte_1003149B0;
}

+ (id)deviceIdentityProxy
{
  v2 = +[FMDDeviceIdentityProxyFactory isAutomationActive];
  if (v2)
  {
    v3 = +[FMDAutomationHelperFactory sharedFactory];
    [v3 automationHelperClassWithName:@"FMDAutomationDeviceIdentity"];

    v5 = sub_100002880(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10022D7F4(v5);
    }

    v6 = objc_opt_new();
  }

  else
  {
    v7 = sub_100002880(v2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10022D7B0(v7);
    }

    v6 = +[FMDRealDeviceIdentity sharedInstance];
  }

  return v6;
}

@end