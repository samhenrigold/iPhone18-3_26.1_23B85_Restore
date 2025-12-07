@interface HMDAppleMediaAccessoryMatchingIdentifierRemovalEvent
- (HMDAppleMediaAccessoryMatchingIdentifierRemovalEvent)initWithRemovalCount:(int64_t)count;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDAppleMediaAccessoryMatchingIdentifierRemovalEvent

- (id)attributeDescriptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  removalCount = [(HMDAppleMediaAccessoryMatchingIdentifierRemovalEvent *)self removalCount];
  v5 = [v3 initWithName:@"removalCount" value:removalCount];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"removalCount";
  removalCount = [(HMDAppleMediaAccessoryMatchingIdentifierRemovalEvent *)self removalCount];
  v6[0] = removalCount;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (HMDAppleMediaAccessoryMatchingIdentifierRemovalEvent)initWithRemovalCount:(int64_t)count
{
  v8.receiver = self;
  v8.super_class = HMDAppleMediaAccessoryMatchingIdentifierRemovalEvent;
  v4 = [(HMMLogEvent *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:count];
    removalCount = v4->_removalCount;
    v4->_removalCount = v5;
  }

  return v4;
}

@end