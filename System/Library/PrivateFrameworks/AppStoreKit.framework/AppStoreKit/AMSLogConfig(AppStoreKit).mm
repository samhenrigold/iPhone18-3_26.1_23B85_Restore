@interface AMSLogConfig(AppStoreKit)
+ (id)ask_generalLogConfig;
@end

@implementation AMSLogConfig(AppStoreKit)

+ (id)ask_generalLogConfig
{
  if (ask_generalLogConfig_onceToken != -1)
  {
    +[AMSLogConfig(AppStoreKit) ask_generalLogConfig];
  }

  v2 = ask_generalLogConfig_logConfig;

  return v2;
}

@end