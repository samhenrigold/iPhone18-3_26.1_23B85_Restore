@interface JavaUtilConcurrentLocksReentrantLock_NonfairSync
- (void)lock;
@end

@implementation JavaUtilConcurrentLocksReentrantLock_NonfairSync

- (void)lock
{
  v3 = [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self compareAndSetStateWithInt:0 withInt:1];
  if (v3)
  {
    v5 = JavaLangThread_currentThread(v3, v4);

    [(JavaUtilConcurrentLocksAbstractOwnableSynchronizer *)self setExclusiveOwnerThreadWithJavaLangThread:v5];
  }

  else
  {

    [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self acquireWithInt:1];
  }
}

@end