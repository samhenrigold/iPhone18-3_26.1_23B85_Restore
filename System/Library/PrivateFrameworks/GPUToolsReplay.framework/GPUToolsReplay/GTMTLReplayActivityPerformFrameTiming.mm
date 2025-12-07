@interface GTMTLReplayActivityPerformFrameTiming
- (GTMTLReplayActivityPerformFrameTiming)initWithIndex:(int)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)jsonObject;
- (void)outputToLog:(id)log;
@end

@implementation GTMTLReplayActivityPerformFrameTiming

- (void)outputToLog:(id)log
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    activityType = self->super._activityType;
    index = self->_index;
    v7 = 138543618;
    v8 = activityType;
    v9 = 1024;
    v10 = index;
    _os_log_impl(&dword_24D764000, log, OS_LOG_TYPE_INFO, "%{public}@:\t%d", &v7, 0x12u);
  }
}

- (id)jsonObject
{
  v9[4] = *MEMORY[0x277D85DE8];
  v9[0] = self->super._activityType;
  v8[0] = @"activityType";
  v8[1] = @"index";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:self->_index];
  v9[1] = v3;
  v8[2] = @"activityStartTime";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityStartTime];
  v9[2] = v4;
  v8[3] = @"activityEndTime";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityEndTime];
  v9[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = GTMTLReplayActivityPerformFrameTiming;
  result = [(GTMTLReplayActivity *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 10) = self->_index;
  }

  return result;
}

- (GTMTLReplayActivityPerformFrameTiming)initWithIndex:(int)index
{
  v5.receiver = self;
  v5.super_class = GTMTLReplayActivityPerformFrameTiming;
  result = [(GTMTLReplayActivity *)&v5 initWithType:@"performFrameTiming"];
  if (result)
  {
    result->_index = index;
  }

  return result;
}

@end