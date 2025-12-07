@interface JavaUtilConcurrentLocksReentrantLock_FairSync
- (BOOL)tryAcquireWithInt:(int)int;
@end

@implementation JavaUtilConcurrentLocksReentrantLock_FairSync

- (BOOL)tryAcquireWithInt:(int)int
{
  v3 = *&int;
  v5 = JavaLangThread_currentThread(self, a2);
  getState = [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self getState];
  if (getState)
  {
    v7 = getState;
    if (v5 == [(JavaUtilConcurrentLocksAbstractOwnableSynchronizer *)self getExclusiveOwnerThread])
    {
      if ((v7 + v3) < 0)
      {
        v9 = new_JavaLangError_initWithNSString_(@"Maximum lock count exceeded");
        objc_exception_throw(v9);
      }

      [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self setStateWithInt:v7 + v3];
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if ([(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self hasQueuedPredecessors])
  {
LABEL_6:
    LOBYTE(v8) = 0;
    return v8;
  }

  v8 = [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self compareAndSetStateWithInt:0 withInt:v3];
  if (v8)
  {
    [(JavaUtilConcurrentLocksAbstractOwnableSynchronizer *)self setExclusiveOwnerThreadWithJavaLangThread:v5];
LABEL_9:
    LOBYTE(v8) = 1;
  }

  return v8;
}

@end