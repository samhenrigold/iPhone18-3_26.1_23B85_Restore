@interface JavaUtilConcurrentLocksAbstractQueuedSynchronizer
+ (void)initialize;
- (BOOL)apparentlyFirstQueuedIsExclusive;
- (BOOL)compareAndSetHeadWithJavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node:(id)node;
- (BOOL)compareAndSetStateWithInt:(int)int withInt:(int)withInt;
- (BOOL)compareAndSetTailWithJavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node:(id)node withJavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node:(id)synchronizer_Node;
- (BOOL)findNodeFromTailWithJavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node:(id)node;
- (BOOL)hasQueuedPredecessors;
- (BOOL)hasQueuedThreads;
- (BOOL)hasWaitersWithJavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject:(id)object;
- (BOOL)isQueuedWithJavaLangThread:(id)thread;
- (BOOL)parkAndCheckInterrupt;
- (BOOL)releaseSharedWithInt:(int)int;
- (BOOL)tryAcquireNanosWithInt:(int)int withLong:(int64_t)long;
- (BOOL)tryAcquireSharedNanosWithInt:(int)int withLong:(int64_t)long;
- (NSString)description;
- (id)getExclusiveQueuedThreads;
- (id)getFirstQueuedThread;
- (id)getQueuedThreads;
- (id)getSharedQueuedThreads;
- (id)getWaitingThreadsWithJavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject:(id)object;
- (int)getQueueLength;
- (int)getWaitQueueLengthWithJavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject:(id)object;
- (unint64_t)fullGetFirstQueuedThread;
- (void)__javaClone;
- (void)acquireInterruptiblyWithInt:(int)int;
- (void)acquireSharedInterruptiblyWithInt:(int)int;
- (void)acquireSharedWithInt:(int)int;
- (void)acquireWithInt:(int)int;
- (void)dealloc;
@end

@implementation JavaUtilConcurrentLocksAbstractQueuedSynchronizer

- (BOOL)compareAndSetStateWithInt:(int)int withInt:(int)withInt
{
  v5 = *&int;
  v7 = qword_100555250;
  if (!qword_100555250)
  {
    JreThrowNullPointerException();
  }

  v8 = *&withInt;
  v9 = qword_100555258;

  return [v7 compareAndSwapIntWithId:self withLong:v9 withInt:v5 withInt:v8];
}

- (BOOL)parkAndCheckInterrupt
{
  v2 = JavaUtilConcurrentLocksLockSupport_parkWithId_(self, a2);

  return JavaLangThread_interrupted(v2, v3);
}

- (void)acquireWithInt:(int)int
{
  v3 = *&int;
  if (![(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self tryAcquireWithInt:?])
  {
    if ((atomic_load_explicit(JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10022DE84();
    }

    v5 = sub_10022B1AC(self, JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node_EXCLUSIVE_);
    v6 = sub_10022B7A0(self, v5, v3);
    if (v6)
    {

      JavaUtilConcurrentLocksAbstractQueuedSynchronizer_selfInterrupt(v6, v7);
    }
  }
}

- (void)acquireInterruptiblyWithInt:(int)int
{
  v3 = *&int;
  if (JavaLangThread_interrupted(self, a2))
  {
    v5 = new_JavaLangInterruptedException_init();
    objc_exception_throw(v5);
  }

  if (![(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self tryAcquireWithInt:v3])
  {

    sub_10022B89C(self, v3);
  }
}

- (BOOL)tryAcquireNanosWithInt:(int)int withLong:(int64_t)long
{
  v5 = *&int;
  if (JavaLangThread_interrupted(self, a2))
  {
    v8 = new_JavaLangInterruptedException_init();
    objc_exception_throw(v8);
  }

  if ([(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self tryAcquireWithInt:v5])
  {
    return 1;
  }

  return sub_10022B9C4(self, v5, long);
}

- (void)acquireSharedWithInt:(int)int
{
  v3 = *&int;
  if ([(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self tryAcquireSharedWithInt:?]< 0)
  {

    sub_10022BB58(self, v3);
  }
}

- (void)acquireSharedInterruptiblyWithInt:(int)int
{
  v3 = *&int;
  if (JavaLangThread_interrupted(self, a2))
  {
    v5 = new_JavaLangInterruptedException_init();
    objc_exception_throw(v5);
  }

  if ([(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self tryAcquireSharedWithInt:v3]< 0)
  {

    sub_10022BC94(self, v3);
  }
}

- (BOOL)tryAcquireSharedNanosWithInt:(int)int withLong:(int64_t)long
{
  v5 = *&int;
  if (JavaLangThread_interrupted(self, a2))
  {
    v8 = new_JavaLangInterruptedException_init();
    objc_exception_throw(v8);
  }

  if (([(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self tryAcquireSharedWithInt:v5]& 0x80000000) == 0)
  {
    return 1;
  }

  return sub_10022BDD0(self, v5, long);
}

- (BOOL)releaseSharedWithInt:(int)int
{
  v4 = [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self tryReleaseSharedWithInt:*&int];
  if (v4)
  {
    sub_10022B394(self);
  }

  return v4;
}

- (BOOL)hasQueuedThreads
{
  v2 = atomic_load(&self->head_);
  v3 = atomic_load(&self->tail_);
  return v2 != v3;
}

- (id)getFirstQueuedThread
{
  v2 = atomic_load(&self->head_);
  v3 = atomic_load(&self->tail_);
  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    return [JavaUtilConcurrentLocksAbstractQueuedSynchronizer fullGetFirstQueuedThread]_0(self);
  }
}

- (unint64_t)fullGetFirstQueuedThread
{
  v1 = atomic_load((self + 16));
  if (!v1 || (v2 = atomic_load((v1 + 24))) == 0 || (v3 = atomic_load((v2 + 16)), v4 = atomic_load((self + 16)), v3 != v4) || (v5 = atomic_load((v2 + 32))) == 0)
  {
    v6 = atomic_load((self + 16));
    if (!v6 || (v7 = atomic_load((v6 + 24))) == 0 || (v8 = atomic_load((v7 + 16)), v9 = atomic_load((self + 16)), v8 != v9) || (v5 = atomic_load((v7 + 32))) == 0)
    {
      v10 = atomic_load((self + 24));
      if (v10)
      {
        v5 = 0;
        do
        {
          v11 = atomic_load((self + 16));
          if (v10 == v11)
          {
            break;
          }

          v12 = atomic_load((v10 + 32));
          if (v12)
          {
            v5 = v12;
          }

          v10 = atomic_load((v10 + 16));
        }

        while (v10);
      }

      else
      {
        return 0;
      }
    }
  }

  return v5;
}

- (BOOL)isQueuedWithJavaLangThread:(id)thread
{
  if (!thread)
  {
    v6 = new_JavaLangNullPointerException_init();
    objc_exception_throw(v6);
  }

  v3 = atomic_load(&self->tail_);
  if (!v3)
  {
    return 0;
  }

  do
  {
    v4 = atomic_load((v3 + 32));
    result = v4 == thread;
    if (v4 == thread)
    {
      break;
    }

    v3 = atomic_load((v3 + 16));
  }

  while (v3);
  return result;
}

- (BOOL)apparentlyFirstQueuedIsExclusive
{
  v2 = atomic_load(&self->head_);
  if (!v2)
  {
    return 0;
  }

  v3 = atomic_load((v2 + 24));
  if (!v3 || *(v3 + 40) == JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node_SHARED_)
  {
    return 0;
  }

  v4 = atomic_load((v3 + 32));
  return v4 != 0;
}

- (BOOL)hasQueuedPredecessors
{
  v2 = atomic_load(&self->tail_);
  v3 = atomic_load(&self->head_);
  if (v3 == v2)
  {
    return 0;
  }

  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v5 = atomic_load((v3 + 24));
  if (!v5)
  {
    return 1;
  }

  v6 = atomic_load((v5 + 32));
  return JavaLangThread_currentThread(self, a2) != v6;
}

- (int)getQueueLength
{
  v2 = atomic_load(&self->tail_);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (atomic_load((v2 + 32)))
    {
      ++result;
    }

    v2 = atomic_load((v2 + 16));
  }

  while (v2);
  return result;
}

- (id)getQueuedThreads
{
  v3 = new_JavaUtilArrayList_init();
  for (i = &self->tail_; ; i = (v5 + 16))
  {
    v5 = atomic_load(i);
    if (!v5)
    {
      break;
    }

    if (atomic_load((v5 + 32)))
    {
      [(JavaUtilArrayList *)v3 addWithId:?];
    }
  }

  return v3;
}

- (id)getExclusiveQueuedThreads
{
  v3 = new_JavaUtilArrayList_init();
  for (i = atomic_load(&self->tail_); i; i = atomic_load(i + 2))
  {
    if (i[5] != JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node_SHARED_)
    {
      if (atomic_load(i + 4))
      {
        [(JavaUtilArrayList *)v3 addWithId:?];
      }
    }
  }

  return v3;
}

- (id)getSharedQueuedThreads
{
  v3 = new_JavaUtilArrayList_init();
  for (i = atomic_load(&self->tail_); i; i = atomic_load(i + 2))
  {
    if (i[5] == JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node_SHARED_)
    {
      if (atomic_load(i + 4))
      {
        [(JavaUtilArrayList *)v3 addWithId:?];
      }
    }
  }

  return v3;
}

- (NSString)description
{
  atomic_load(&self->state_);
  atomic_load(&self->head_);
  atomic_load(&self->tail_);
  v11.receiver = self;
  v11.super_class = JavaUtilConcurrentLocksAbstractQueuedSynchronizer;
  v2 = [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)&v11 description];
  return JreStrcat("$$I$$$", v3, v4, v5, v6, v7, v8, v9, v2);
}

- (BOOL)findNodeFromTailWithJavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node:(id)node
{
  for (i = &self->tail_; ; i = (v4 + 16))
  {
    v4 = atomic_load(i);
    result = v4 == node;
    if (!v4 || v4 == node)
    {
      break;
    }
  }

  return result;
}

- (BOOL)hasWaitersWithJavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject:(id)object
{
  if (!sub_10022CA80(self, object))
  {
    v5 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Not owner");
    objc_exception_throw(v5);
  }

  if (!object)
  {
    JreThrowNullPointerException();
  }

  return [JavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject hasWaiters]_0(object);
}

- (int)getWaitQueueLengthWithJavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject:(id)object
{
  if (!sub_10022CA80(self, object))
  {
    v5 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Not owner");
    objc_exception_throw(v5);
  }

  if (!object)
  {
    JreThrowNullPointerException();
  }

  return [JavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject getWaitQueueLength]_0(object);
}

- (id)getWaitingThreadsWithJavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject:(id)object
{
  if (!sub_10022CA80(self, object))
  {
    v5 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Not owner");
    objc_exception_throw(v5);
  }

  if (!object)
  {
    JreThrowNullPointerException();
  }

  return [JavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject getWaitingThreads]_0(object);
}

- (BOOL)compareAndSetHeadWithJavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node:(id)node
{
  v6 = qword_100555250;
  if (!qword_100555250)
  {
    JreThrowNullPointerException();
  }

  v7 = qword_100555260;

  return [v6 compareAndSwapObjectWithId:self withLong:v7 withId:0 withId:node];
}

- (BOOL)compareAndSetTailWithJavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node:(id)node withJavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node:(id)synchronizer_Node
{
  v7 = qword_100555250;
  if (!qword_100555250)
  {
    JreThrowNullPointerException();
  }

  v9 = qword_100555268;

  return [v7 compareAndSwapObjectWithId:self withLong:v9 withId:node withId:synchronizer_Node];
}

- (void)dealloc
{
  JreReleaseVolatile(&self->head_);
  JreReleaseVolatile(&self->tail_);
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentLocksAbstractQueuedSynchronizer;
  [(JavaUtilConcurrentLocksAbstractOwnableSynchronizer *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentLocksAbstractQueuedSynchronizer;
  [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)&v3 __javaClone];
  JreRetainVolatile(&self->head_);
  JreRetainVolatile(&self->tail_);
}

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {
    Unsafe = SunMiscUnsafe_getUnsafe(v3, v4);
    JreStrongAssign(&qword_100555250, Unsafe);
    if (!qword_100555250)
    {
      JreThrowNullPointerException();
    }

    qword_100555258 = [qword_100555250 objectFieldOffsetWithJavaLangReflectField:{objc_msgSend(JavaUtilConcurrentLocksAbstractQueuedSynchronizer_class_(), "getDeclaredField:", @"state"}];
    qword_100555260 = [qword_100555250 objectFieldOffsetWithJavaLangReflectField:{objc_msgSend(JavaUtilConcurrentLocksAbstractQueuedSynchronizer_class_(), "getDeclaredField:", @"head"}];
    qword_100555268 = [qword_100555250 objectFieldOffsetWithJavaLangReflectField:{objc_msgSend(JavaUtilConcurrentLocksAbstractQueuedSynchronizer_class_(), "getDeclaredField:", @"tail"}];
    qword_100555270 = [qword_100555250 objectFieldOffsetWithJavaLangReflectField:{objc_msgSend(JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node_class_(), "getDeclaredField:", @"waitStatus"}];
    qword_100555278 = [qword_100555250 objectFieldOffsetWithJavaLangReflectField:{objc_msgSend(JavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node_class_(), "getDeclaredField:", @"next"}];
    atomic_store(1u, JavaUtilConcurrentLocksAbstractQueuedSynchronizer__initialized);
  }
}

@end