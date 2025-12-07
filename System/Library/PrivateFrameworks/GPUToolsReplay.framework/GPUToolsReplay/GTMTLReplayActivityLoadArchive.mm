@interface GTMTLReplayActivityLoadArchive
- (GTMTLReplayActivityLoadArchive)initWithPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)jsonObject;
- (void)outputToLog:(id)log;
@end

@implementation GTMTLReplayActivityLoadArchive

- (void)outputToLog:(id)log
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    activityType = self->super._activityType;
    path = self->_path;
    v7 = 138543618;
    v8 = activityType;
    v9 = 2114;
    v10 = path;
    _os_log_impl(&dword_24D764000, log, OS_LOG_TYPE_INFO, "%{public}@:\t%{public}@", &v7, 0x16u);
  }
}

- (id)jsonObject
{
  v10[4] = *MEMORY[0x277D85DE8];
  activityType = self->super._activityType;
  v9[0] = @"activityType";
  v9[1] = @"path";
  path = self->_path;
  v10[0] = activityType;
  v10[1] = path;
  v9[2] = @"activityStartTime";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityStartTime];
  v10[2] = v5;
  v9[3] = @"activityEndTime";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityEndTime];
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = GTMTLReplayActivityLoadArchive;
  v4 = [(GTMTLReplayActivity *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 5, self->_path);
  }

  return v5;
}

- (GTMTLReplayActivityLoadArchive)initWithPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = GTMTLReplayActivityLoadArchive;
  v6 = [(GTMTLReplayActivity *)&v9 initWithType:@"loadArchive"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, path);
  }

  return v7;
}

@end