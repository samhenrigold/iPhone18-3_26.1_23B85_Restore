@interface HMIEmptyTask
- (HMIEmptyTask)initWithTaskID:(int)d duration:(double)duration;
- (void)mainInsideAutoreleasePool;
@end

@implementation HMIEmptyTask

- (HMIEmptyTask)initWithTaskID:(int)d duration:(double)duration
{
  v6.receiver = self;
  v6.super_class = HMIEmptyTask;
  result = [(HMITask *)&v6 initWithTaskID:*&d];
  if (result)
  {
    result->_duration = duration;
  }

  return result;
}

- (void)mainInsideAutoreleasePool
{
  *&v25[5] = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    taskID = [(HMITask *)selfCopy taskID];
    [v8 duration];
    *buf = 138543874;
    v21 = v6;
    v22 = 1024;
    v23 = taskID;
    v24 = 2048;
    *v25 = v9;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_INFO, "%{public}@TaskID: %u running for %f seconds ...", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v3);
  v10 = 0;
  do
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      taskID2 = [(HMITask *)v12 taskID];
      *buf = 138544130;
      ++v10;
      v21 = v14;
      v22 = 1024;
      v23 = taskID2;
      v24 = 1024;
      v25[0] = v10;
      LOWORD(v25[1]) = 1024;
      *(&v25[1] + 2) = 10;
      _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_INFO, "%{public}@TaskID: %u step %d of %d", buf, 0x1Eu);
    }

    else
    {
      ++v10;
    }

    objc_autoreleasePoolPop(v11);
    v16 = MEMORY[0x277CCACC8];
    [v17 duration];
    [v16 sleepForTimeInterval:?];
    progressBlock = [(HMITask *)v12 progressBlock];
    progressBlock[2](v10 / 10.0);
  }

  while (v10 != 10);
  v19.receiver = v12;
  v19.super_class = HMIEmptyTask;
  [(HMFOperation *)&v19 finish];
}

@end