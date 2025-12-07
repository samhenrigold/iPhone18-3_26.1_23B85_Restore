@interface HMIPersonsModelsSummaryTask
- (HMIPersonsModelsSummaryTask)initWithTaskID:(int)d homeUUID:(id)iD;
- (void)mainInsideAutoreleasePool;
@end

@implementation HMIPersonsModelsSummaryTask

- (HMIPersonsModelsSummaryTask)initWithTaskID:(int)d homeUUID:(id)iD
{
  v5.receiver = self;
  v5.super_class = HMIPersonsModelsSummaryTask;
  return [(HMIHomeTask *)&v5 initWithTaskID:*&d homeUUID:iD timeout:30.0];
}

- (void)mainInsideAutoreleasePool
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = +[HMIPersonsModelManager sharedInstance];
  homeUUID = [(HMIHomeTask *)self homeUUID];
  v5 = [v3 summaryForHomeUUID:? error:?];
  v6 = 0;

  if (v5)
  {
    [HMIAnalytics sendEventForPersonsModels:?];
    [(HMFOperation *)self finish];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate persons model summary, error:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMFOperation *)selfCopy cancelWithError:?];
  }
}

@end