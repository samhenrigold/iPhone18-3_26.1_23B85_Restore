@interface HDConceptQueryServer
- (HDConceptQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_start;
@end

@implementation HDConceptQueryServer

- (HDConceptQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = HDConceptQueryServer;
  return [(HDQueryServer *)&v7 initWithUUID:d configuration:configuration client:client delegate:delegate];
}

- (void)_queue_start
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = HKSensitiveLogItem();
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_2514A1000, a3, OS_LOG_TYPE_ERROR, "%{public}@: Error while fetching concepts: %{public}@", &v6, 0x16u);
}

@end