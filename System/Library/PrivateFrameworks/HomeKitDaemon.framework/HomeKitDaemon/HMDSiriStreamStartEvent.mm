@interface HMDSiriStreamStartEvent
- (HMDSiriStreamStartEvent)initWithActivationType:(unint64_t)type;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDSiriStreamStartEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"duration";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  v7[1] = @"activationType";
  v8[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSiriStreamStartEvent activationType](self, "activationType")}];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (HMDSiriStreamStartEvent)initWithActivationType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = HMDSiriStreamStartEvent;
  result = [(HMMLogEvent *)&v5 init];
  if (result)
  {
    result->_activationType = type;
  }

  return result;
}

@end