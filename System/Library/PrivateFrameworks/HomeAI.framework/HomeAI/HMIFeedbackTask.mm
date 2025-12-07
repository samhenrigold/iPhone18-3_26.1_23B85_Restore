@interface HMIFeedbackTask
- (HMIFeedbackTask)initWithTaskID:(int)d cameraProfileUUID:(id)iD clipUUID:(id)uID;
- (void)mainInsideAutoreleasePool;
@end

@implementation HMIFeedbackTask

- (HMIFeedbackTask)initWithTaskID:(int)d cameraProfileUUID:(id)iD clipUUID:(id)uID
{
  v6 = *&d;
  iDCopy = iD;
  uIDCopy = uID;
  v15.receiver = self;
  v15.super_class = HMIFeedbackTask;
  v10 = [(HMITask *)&v15 initWithTaskID:v6];
  if (v10)
  {
    v11 = objc_alloc_init(HMIFeedbackSession);
    v12 = [HMIFeedbackSubmitClipOperation initWithFeedbackSession:"initWithFeedbackSession:cameraProfileUUID:clipUUID:" cameraProfileUUID:? clipUUID:?];
    operation = v10->_operation;
    v10->_operation = &v12->super;
  }

  return v10;
}

- (void)mainInsideAutoreleasePool
{
  v3 = self->_operation;
  objc_initWeak(&location, v3);
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __44__HMIFeedbackTask_mainInsideAutoreleasePool__block_invoke;
  v7 = &unk_278752BB0;
  objc_copyWeak(&v9, &location);
  selfCopy = self;
  [(HMFOperation *)v3 setCompletionBlock:?];
  [(HMFOperation *)v3 setQualityOfService:?];
  [(HMFOperation *)v3 start];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __44__HMIFeedbackTask_mainInsideAutoreleasePool__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained error];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [WeakRetained error];
    [v3 cancelWithError:?];
  }

  else
  {
    [v3 finish];
  }
}

@end