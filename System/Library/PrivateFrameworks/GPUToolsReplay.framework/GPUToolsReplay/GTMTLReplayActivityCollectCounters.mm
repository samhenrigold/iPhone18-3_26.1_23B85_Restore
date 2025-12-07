@interface GTMTLReplayActivityCollectCounters
- (GTMTLReplayActivityCollectCounters)initWithCounters:(id)counters statLocations:(unint64_t)locations index:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)jsonObject;
- (void)outputToLog:(id)log;
@end

@implementation GTMTLReplayActivityCollectCounters

- (void)outputToLog:(id)log
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    activityType = self->super._activityType;
    index = self->_index;
    locations = self->_locations;
    counterNames = self->_counterNames;
    v9 = 138544130;
    v10 = activityType;
    v11 = 2048;
    v12 = index;
    v13 = 2048;
    v14 = locations;
    v15 = 2114;
    v16 = counterNames;
    _os_log_impl(&dword_24D764000, log, OS_LOG_TYPE_INFO, "%{public}@(%llu):\t0x%08llx %{public}@", &v9, 0x2Au);
  }
}

- (id)jsonObject
{
  v12[6] = *MEMORY[0x277D85DE8];
  activityType = self->super._activityType;
  counterNames = self->_counterNames;
  v11[0] = @"activityType";
  v11[1] = @"counterNames";
  v12[0] = activityType;
  v12[1] = counterNames;
  v11[2] = @"locations";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_locations];
  v12[2] = v5;
  v11[3] = @"index";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_index];
  v12[3] = v6;
  v11[4] = @"activityStartTime";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityStartTime];
  v12[4] = v7;
  v11[5] = @"activityEndTime";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityEndTime];
  v12[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:6];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = GTMTLReplayActivityCollectCounters;
  v4 = [(GTMTLReplayActivity *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 5, self->_counterNames);
    v5[6] = self->_locations;
    v5[7] = self->_index;
  }

  return v5;
}

- (GTMTLReplayActivityCollectCounters)initWithCounters:(id)counters statLocations:(unint64_t)locations index:(unint64_t)index
{
  countersCopy = counters;
  v13.receiver = self;
  v13.super_class = GTMTLReplayActivityCollectCounters;
  v10 = [(GTMTLReplayActivity *)&v13 initWithType:@"collectCounters"];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_counterNames, counters);
    v11->_locations = locations;
    v11->_index = index;
  }

  return v11;
}

@end