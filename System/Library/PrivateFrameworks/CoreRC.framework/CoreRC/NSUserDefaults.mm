@interface NSUserDefaults
@end

@implementation NSUserDefaults

uint64_t __38__NSUserDefaults_CEC__cecUserDefaults__block_invoke()
{
  v2[3] = *MEMORY[0x277D85DE8];
  cecUserDefaults_cecUserDefaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.CoreCEC"];
  v1[0] = @"deferLossOfLink";
  v1[1] = @"cecActiveSourceRecentlySentDuration";
  v2[0] = MEMORY[0x277CBEC38];
  v2[1] = &unk_28593C2A0;
  v1[2] = @"powerNotificationDebounceTime";
  v2[2] = &unk_28593C2B8;
  return [cecUserDefaults_cecUserDefaults registerDefaults:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v2, v1, 3)}];
}

@end