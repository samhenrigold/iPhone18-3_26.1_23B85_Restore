@interface HMITask
- (HMITask)initWithTaskID:(int)d timeout:(double)timeout;
- (NSDictionary)results;
- (void)main;
- (void)mainInsideAutoreleasePool;
@end

@implementation HMITask

- (HMITask)initWithTaskID:(int)d timeout:(double)timeout
{
  v6.receiver = self;
  v6.super_class = HMITask;
  result = [(HMFOperation *)&v6 initWithTimeout:timeout];
  if (result)
  {
    result->_taskID = d;
  }

  return result;
}

- (NSDictionary)results
{
  error = [(HMFOperation *)self error];
  if (error && (v4 = error, -[HMFOperation error](self, "error"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 code], v5, v4, v6 == 12))
  {
    v7 = @"Canceled";
  }

  else
  {
    error2 = [(HMFOperation *)self error];

    v7 = @"Error";
    if (!error2)
    {
      v7 = @"Success";
    }
  }

  v9 = MEMORY[0x277CBEAC0];
  v10 = v7;
  v11 = [v9 dictionaryWithObjects:? forKeys:? count:?];

  return v11;
}

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  [(HMITask *)self mainInsideAutoreleasePool];

  objc_autoreleasePoolPop(v3);
}

- (void)mainInsideAutoreleasePool
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(a2);
  v5 = [v3 stringWithFormat:v4];
  v6 = [v2 exceptionWithName:? reason:? userInfo:?];
  v7 = v6;

  objc_exception_throw(v6);
}

@end