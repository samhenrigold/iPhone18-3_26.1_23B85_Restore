@interface NSURL
+ (uint64_t)sk_PreferencesMotionAndFitness;
@end

@implementation NSURL

+ (uint64_t)sk_PreferencesMotionAndFitness
{
  objc_opt_self();
  v1 = MEMORY[0x277CBEBC0];

  return [v1 URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/MOTION"];
}

@end