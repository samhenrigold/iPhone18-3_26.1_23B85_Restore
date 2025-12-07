@interface JavaUtilConcurrentLocksReentrantLock_Sync
- (BOOL)tryReleaseWithInt:(int)int;
- (id)getOwner;
- (id)newCondition;
- (int)getHoldCount;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
@end

@implementation JavaUtilConcurrentLocksReentrantLock_Sync

- (BOOL)tryReleaseWithInt:(int)int
{
  getState = [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self getState];
  v6 = getState;
  v8 = JavaLangThread_currentThread(getState, v7);
  if (v8 != [(JavaUtilConcurrentLocksAbstractOwnableSynchronizer *)self getExclusiveOwnerThread])
  {
    v10 = new_JavaLangIllegalMonitorStateException_init();
    objc_exception_throw(v10);
  }

  if (v6 == int)
  {
    [(JavaUtilConcurrentLocksAbstractOwnableSynchronizer *)self setExclusiveOwnerThreadWithJavaLangThread:0];
  }

  [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self setStateWithInt:(v6 - int)];
  return v6 == int;
}

- (id)newCondition
{
  v2 = new_JavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject_initWithJavaUtilConcurrentLocksAbstractQueuedSynchronizer_(self);

  return v2;
}

- (id)getOwner
{
  if (![(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self getState])
  {
    return 0;
  }

  return [(JavaUtilConcurrentLocksAbstractOwnableSynchronizer *)self getExclusiveOwnerThread];
}

- (int)getHoldCount
{
  getExclusiveOwnerThread = [(JavaUtilConcurrentLocksAbstractOwnableSynchronizer *)self getExclusiveOwnerThread];
  if (getExclusiveOwnerThread != JavaLangThread_currentThread(getExclusiveOwnerThread, v4))
  {
    return 0;
  }

  return [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self getState];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultReadObject];

  [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self setStateWithInt:0];
}

@end