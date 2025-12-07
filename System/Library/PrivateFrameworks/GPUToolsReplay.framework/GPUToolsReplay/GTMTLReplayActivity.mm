@interface GTMTLReplayActivity
- (GTMTLReplayActivity)initWithType:(id)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)jsonObject;
- (void)outputToLog:(id)log;
- (void)signpostIntervalBegin:(unint64_t)begin;
@end

@implementation GTMTLReplayActivity

- (void)signpostIntervalBegin:(unint64_t)begin
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = g_signpostLog;
  v6 = v5;
  if (begin - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    messageSerial = [(GTMTLReplayActivity *)self messageSerial];
    activityType = self->_activityType;
    v9[0] = 67109378;
    v9[1] = messageSerial;
    v10 = 2112;
    v11 = activityType;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v6, OS_SIGNPOST_INTERVAL_BEGIN, begin, "Replayer-3-commandQueue", "%u. %@", v9, 0x12u);
  }
}

- (void)outputToLog:(id)log
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    activityType = self->_activityType;
    v6 = 138543362;
    v7 = activityType;
    _os_log_impl(&dword_24D764000, log, OS_LOG_TYPE_INFO, "%{public}@", &v6, 0xCu);
  }
}

- (id)jsonObject
{
  v8[3] = *MEMORY[0x277D85DE8];
  v8[0] = self->_activityType;
  v7[0] = @"activityType";
  v7[1] = @"activityStartTime";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->_activityStartTime];
  v8[1] = v3;
  v7[2] = @"activityEndTime";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->_activityEndTime];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(v5 + 1, self->_activityType);
    v6[2] = self->_activityStartTime;
    v6[3] = self->_activityEndTime;
    v7 = [(GTMTLReplayActivity *)self->_previousActivity copyWithZone:zone];
    v8 = v6[4];
    v6[4] = v7;
  }

  return v6;
}

- (GTMTLReplayActivity)initWithType:(id)type
{
  typeCopy = type;
  v10.receiver = self;
  v10.super_class = GTMTLReplayActivity;
  v6 = [(GTMTLReplayActivity *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activityType, type);
    v8 = mach_absolute_time();
    v7->_activityStartTime = v8;
    v7->_activityEndTime = v8;
  }

  return v7;
}

@end