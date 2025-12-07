@interface HMDLaunchEvent
- (HMDLaunchEvent)initWithFirstLaunchAfterBoot:(BOOL)boot;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDLaunchEvent

- (HMDLaunchEvent)initWithFirstLaunchAfterBoot:(BOOL)boot
{
  v5.receiver = self;
  v5.super_class = HMDLaunchEvent;
  result = [(HMMDatedLogEvent *)&v5 init];
  if (result)
  {
    result->_firstLaunchAfterBoot = boot;
  }

  return result;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"isFirstLaunchAfterBoot";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDLaunchEvent isFirstLaunchAfterBoot](self, "isFirstLaunchAfterBoot")}];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end