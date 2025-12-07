@interface NSObject(TelephonyPreferences)
+ (id)tps_classIdentifier;
@end

@implementation NSObject(TelephonyPreferences)

+ (id)tps_classIdentifier
{
  v1 = objc_opt_class();
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:v1];
  bundleIdentifier = [v3 bundleIdentifier];
  v5 = NSStringFromClass(v1);
  v6 = [v2 stringWithFormat:@"%@.%@", bundleIdentifier, v5];

  return v6;
}

@end