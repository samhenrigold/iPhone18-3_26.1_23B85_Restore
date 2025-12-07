@interface NSError(Analytics)
- (uint64_t)sendCECErrorAnalyticsWithContext:()Analytics;
@end

@implementation NSError(Analytics)

- (uint64_t)sendCECErrorAnalyticsWithContext:()Analytics
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB38];
  v7 = @"error";
  v8[0] = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(self, "code")];
  v5 = [v4 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  [v5 addEntriesFromDictionary:a3];
  return [MEMORY[0x277CCA9B8] sendCECErrorAnalyticsWithContext:v5];
}

@end