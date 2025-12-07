@interface ICQPreferences
+ (void)setShouldEnableUnifiedMessaging:(BOOL)messaging;
@end

@implementation ICQPreferences

+ (void)setShouldEnableUnifiedMessaging:(BOOL)messaging
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:messaging];

  CFPreferencesSetAppValue(@"ICQEnableUnifiedMessaging", v3, @"com.apple.cloud.quota");
}

@end