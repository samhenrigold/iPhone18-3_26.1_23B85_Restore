@interface GTMTLReplayActivityDebugFuncStop
- (GTMTLReplayActivityDebugFuncStop)initWithCurrentIndex:(id)index targetIndex:(id)targetIndex;
- (id)copyWithZone:(_NSZone *)zone;
- (id)jsonObject;
- (void)outputToLog:(id)log;
@end

@implementation GTMTLReplayActivityDebugFuncStop

- (void)outputToLog:(id)log
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    activityType = self->super._activityType;
    function = self->_currentIndex.function;
    subCommand = self->_currentIndex.subCommand;
    v9 = self->_targetIndex.function;
    v8 = self->_targetIndex.subCommand;
    v10 = 138544386;
    v11 = activityType;
    v12 = 1024;
    v13 = function;
    v14 = 1024;
    v15 = subCommand;
    v16 = 1024;
    v17 = v9;
    v18 = 1024;
    v19 = v8;
    _os_log_impl(&dword_24D764000, log, OS_LOG_TYPE_INFO, "%{public}@:\t%u:%u -> %u:%u", &v10, 0x24u);
  }
}

- (id)jsonObject
{
  v12[7] = *MEMORY[0x277D85DE8];
  v12[0] = self->super._activityType;
  v11[0] = @"activityType";
  v11[1] = @"currentFunctionIndex";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_currentIndex.function];
  v12[1] = v3;
  v11[2] = @"currentSubCommand";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_currentIndex.subCommand];
  v12[2] = v4;
  v11[3] = @"targetFunctionIndex";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_targetIndex.function];
  v12[3] = v5;
  v11[4] = @"targetSubCommand";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_targetIndex.subCommand];
  v12[4] = v6;
  v11[5] = @"activityStartTime";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityStartTime];
  v12[5] = v7;
  v11[6] = @"activityEndTime";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityEndTime];
  v12[6] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:7];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = GTMTLReplayActivityDebugFuncStop;
  result = [(GTMTLReplayActivity *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 5) = self->_currentIndex;
    *(result + 6) = self->_targetIndex;
  }

  return result;
}

- (GTMTLReplayActivityDebugFuncStop)initWithCurrentIndex:(id)index targetIndex:(id)targetIndex
{
  v7.receiver = self;
  v7.super_class = GTMTLReplayActivityDebugFuncStop;
  result = [(GTMTLReplayActivity *)&v7 initWithType:@"debugFuncStop"];
  if (result)
  {
    result->_currentIndex = index;
    result->_targetIndex = targetIndex;
  }

  return result;
}

@end