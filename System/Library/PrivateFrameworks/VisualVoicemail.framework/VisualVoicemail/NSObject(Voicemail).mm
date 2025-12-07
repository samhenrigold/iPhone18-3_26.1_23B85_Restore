@interface NSObject(Voicemail)
+ (id)vm_classIdentifier;
@end

@implementation NSObject(Voicemail)

+ (id)vm_classIdentifier
{
  v2 = objc_opt_class();
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:v2];
  bundleIdentifier = [v4 bundleIdentifier];
  v6 = NSStringFromClass(v2);
  v7 = [v3 stringWithFormat:@"%@.%@", bundleIdentifier, v6];

  return v7;
}

@end