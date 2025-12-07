@interface MKApplicationAnalytics
@end

@implementation MKApplicationAnalytics

id __46__MKApplicationAnalytics_send_mismatchedApps___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"matched_apps";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v6[1] = @"mismatched_apps";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

@end