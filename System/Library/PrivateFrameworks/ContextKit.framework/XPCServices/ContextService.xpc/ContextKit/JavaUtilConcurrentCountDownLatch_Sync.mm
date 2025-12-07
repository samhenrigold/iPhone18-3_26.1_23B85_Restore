@interface JavaUtilConcurrentCountDownLatch_Sync
- (BOOL)tryReleaseSharedWithInt:(int)int;
- (JavaUtilConcurrentCountDownLatch_Sync)initWithInt:(int)int;
- (int)tryAcquireSharedWithInt:(int)int;
@end

@implementation JavaUtilConcurrentCountDownLatch_Sync

- (JavaUtilConcurrentCountDownLatch_Sync)initWithInt:(int)int
{
  v3 = *&int;
  JavaUtilConcurrentLocksAbstractQueuedSynchronizer_init();
  [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self setStateWithInt:v3];
  return self;
}

- (int)tryAcquireSharedWithInt:(int)int
{
  if ([(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self getState])
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

- (BOOL)tryReleaseSharedWithInt:(int)int
{
  while (1)
  {
    getState = [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self getState];
    if (!getState)
    {
      break;
    }

    v5 = (getState - 1);
    if ([(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self compareAndSetStateWithInt:getState withInt:v5])
    {
      LOBYTE(getState) = v5 == 0;
      return getState;
    }
  }

  return getState;
}

@end