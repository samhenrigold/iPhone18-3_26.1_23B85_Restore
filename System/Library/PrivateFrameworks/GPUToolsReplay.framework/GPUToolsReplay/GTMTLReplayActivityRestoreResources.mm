@interface GTMTLReplayActivityRestoreResources
- (GTMTLReplayActivityRestoreResources)initWithRequests:(const GTResourceRestoreRequest *)requests count:(int)count;
- (id)copyWithZone:(_NSZone *)zone;
- (id)jsonObject;
- (void)outputToLog:(id)log;
- (void)signpostIntervalBegin:(unint64_t)begin;
@end

@implementation GTMTLReplayActivityRestoreResources

- (void)signpostIntervalBegin:(unint64_t)begin
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = g_signpostLog;
  v6 = v5;
  if (begin - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    messageSerial = [(GTMTLReplayActivity *)self messageSerial];
    activityType = self->super._activityType;
    requestCount = self->_requestCount;
    v10[0] = 67109634;
    v10[1] = messageSerial;
    v11 = 2112;
    v12 = activityType;
    v13 = 1024;
    v14 = requestCount;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v6, OS_SIGNPOST_INTERVAL_BEGIN, begin, "Replayer-3-commandQueue", "%u. %@ x%d", v10, 0x18u);
  }
}

- (void)outputToLog:(id)log
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    activityType = self->super._activityType;
    requests = self->_requests;
    requestCount = self->_requestCount;
    logCopy = log;
    v9 = ArrayFromDownloadRequests(requests, requestCount);
    v10 = 138543618;
    v11 = activityType;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_24D764000, logCopy, OS_LOG_TYPE_INFO, "%{public}@:\t%{public}@", &v10, 0x16u);
  }
}

- (id)jsonObject
{
  v9[4] = *MEMORY[0x277D85DE8];
  v9[0] = self->super._activityType;
  v8[0] = @"activityType";
  v8[1] = @"requests";
  v3 = ArrayFromDownloadRequests(self->_requests, self->_requestCount);
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
  v5.super_class = GTMTLReplayActivityRestoreResources;
  result = [(GTMTLReplayActivity *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 5) = self->_requests;
    *(result + 12) = self->_requestCount;
  }

  return result;
}

- (GTMTLReplayActivityRestoreResources)initWithRequests:(const GTResourceRestoreRequest *)requests count:(int)count
{
  v7.receiver = self;
  v7.super_class = GTMTLReplayActivityRestoreResources;
  result = [(GTMTLReplayActivity *)&v7 initWithType:@"restoreResources"];
  if (result)
  {
    result->_requests = requests;
    result->_requestCount = count;
  }

  return result;
}

@end