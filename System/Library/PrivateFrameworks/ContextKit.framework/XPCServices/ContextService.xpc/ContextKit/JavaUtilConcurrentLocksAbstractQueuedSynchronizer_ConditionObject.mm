@interface JavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject
- (BOOL)awaitUntilWithJavaUtilDate:(id)date;
- (BOOL)awaitWithLong:(int64_t)long withJavaUtilConcurrentTimeUnitEnum:(id)enum;
- (BOOL)hasWaiters;
- (JavaUtilArrayList)getWaitingThreads;
- (int)checkInterruptWhileWaitingWithJavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node:(id)node;
- (int64_t)awaitNanosWithLong:(int64_t)long;
- (uint64_t)getWaitQueueLength;
- (void)await;
- (void)awaitUninterruptibly;
- (void)dealloc;
- (void)signal;
- (void)signalAll;
@end

@implementation JavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject

- (BOOL)hasWaiters
{
  if (([*(self + 8) isHeldExclusively] & 1) == 0)
  {
    v5 = new_JavaLangIllegalMonitorStateException_init();
    objc_exception_throw(v5);
  }

  v2 = *(self + 16);
  if (!v2)
  {
    return 0;
  }

  do
  {
    v3 = atomic_load((v2 + 8));
    result = v3 == -2;
    if (v3 == -2)
    {
      break;
    }

    v2 = *(v2 + 40);
  }

  while (v2);
  return result;
}

- (uint64_t)getWaitQueueLength
{
  if (([*(self + 8) isHeldExclusively] & 1) == 0)
  {
    v5 = new_JavaLangIllegalMonitorStateException_init();
    objc_exception_throw(v5);
  }

  v2 = *(self + 16);
  if (!v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    v4 = atomic_load((v2 + 8));
    if (v4 == -2)
    {
      result = (result + 1);
    }

    else
    {
      result = result;
    }

    v2 = *(v2 + 40);
  }

  while (v2);
  return result;
}

- (JavaUtilArrayList)getWaitingThreads
{
  if (([*(self + 8) isHeldExclusively] & 1) == 0)
  {
    v7 = new_JavaLangIllegalMonitorStateException_init();
    objc_exception_throw(v7);
  }

  v2 = new_JavaUtilArrayList_init();
  for (i = *(self + 16); i; i = *(i + 40))
  {
    v4 = atomic_load((i + 8));
    if (v4 == -2)
    {
      if (atomic_load((i + 32)))
      {
        [(JavaUtilArrayList *)v2 addWithId:?];
      }
    }
  }

  return v2;
}

- (void)signal
{
  if (![(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self->this$0_ isHeldExclusively])
  {
    v4 = new_JavaLangIllegalMonitorStateException_init();
    objc_exception_throw(v4);
  }

  firstWaiter = self->firstWaiter_;
  if (firstWaiter)
  {

    sub_10022D558(self, firstWaiter);
  }
}

- (void)signalAll
{
  if (![(JavaUtilConcurrentLocksAbstractQueuedSynchronizer *)self->this$0_ isHeldExclusively])
  {
    v4 = new_JavaLangIllegalMonitorStateException_init();
    objc_exception_throw(v4);
  }

  firstWaiter = self->firstWaiter_;
  if (firstWaiter)
  {

    sub_10022D5D8(self, firstWaiter);
  }
}

- (void)awaitUninterruptibly
{
  v3 = sub_10022D494(&self->super.isa, a2);
  v4 = sub_10022C9F0(self->this$0_);
  for (i = 0; !sub_10022C828(self->this$0_, v3); i |= JavaLangThread_interrupted(v7, v8))
  {
    v7 = JavaUtilConcurrentLocksLockSupport_parkWithId_(self, v5);
  }

  v9 = sub_10022B7A0(self->this$0_, v3, v4);
  if (v9 & 1) != 0 || (i)
  {

    JavaUtilConcurrentLocksAbstractQueuedSynchronizer_selfInterrupt(v9, v10);
  }
}

- (int)checkInterruptWhileWaitingWithJavaUtilConcurrentLocksAbstractQueuedSynchronizer_Node:(id)node
{
  result = JavaLangThread_interrupted(self, a2);
  if (result)
  {
    if (sub_10022C96C(self->this$0_, node))
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (void)await
{
  if (JavaLangThread_interrupted(self, a2))
  {
    v12 = new_JavaLangInterruptedException_init();
    objc_exception_throw(v12);
  }

  v4 = sub_10022D494(&self->super.isa, v3);
  v5 = sub_10022C9F0(self->this$0_);
  do
  {
    if (sub_10022C828(self->this$0_, v4))
    {
      v9 = 0;
      goto LABEL_9;
    }

    v7 = JavaUtilConcurrentLocksLockSupport_parkWithId_(self, v6);
  }

  while (!JavaLangThread_interrupted(v7, v8));
  if (sub_10022C96C(self->this$0_, v4))
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

LABEL_9:
  if (((v9 != -1) & sub_10022B7A0(self->this$0_, v4, v5)) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9;
  }

  if (!v4)
  {
    JreThrowNullPointerException();
  }

  if (v4[5])
  {
    sub_10022D64C(&self->super.isa);
  }

  if (v11)
  {

    sub_10022D8AC(v11, v10);
  }
}

- (int64_t)awaitNanosWithLong:(int64_t)long
{
  if (JavaLangThread_interrupted(self, a2))
  {
    v16 = new_JavaLangInterruptedException_init();
    objc_exception_throw(v16);
  }

  v6 = sub_10022D494(&self->super.isa, v5);
  v7 = sub_10022C9F0(self->this$0_);
  v8 = JavaLangSystem_nanoTime();
  if (sub_10022C828(self->this$0_, v6))
  {
LABEL_8:
    v12 = 0;
  }

  else
  {
    while (1)
    {
      if (long <= 0)
      {
        sub_10022C96C(self->this$0_, v6);
        goto LABEL_8;
      }

      v9 = JavaUtilConcurrentLocksLockSupport_parkNanosWithId_withLong_(self, long);
      if (JavaLangThread_interrupted(v9, v10))
      {
        break;
      }

      v11 = JavaLangSystem_nanoTime();
      long = long + v8 - v11;
      v8 = v11;
      if (sub_10022C828(self->this$0_, v6))
      {
        v12 = 0;
        v8 = v11;
        goto LABEL_9;
      }
    }

    if (sub_10022C96C(self->this$0_, v6))
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }
  }

LABEL_9:
  if (((v12 != -1) & sub_10022B7A0(self->this$0_, v6, v7)) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v12;
  }

  if (!v6)
  {
    JreThrowNullPointerException();
  }

  if (v6[5])
  {
    sub_10022D64C(&self->super.isa);
  }

  if (v14)
  {
    sub_10022D8AC(v14, v13);
  }

  return long + v8 - JavaLangSystem_nanoTime();
}

- (BOOL)awaitUntilWithJavaUtilDate:(id)date
{
  if (!date)
  {
    v16 = new_JavaLangNullPointerException_init();
    goto LABEL_25;
  }

  getTime = [date getTime];
  if (JavaLangThread_interrupted(getTime, v5))
  {
    v16 = new_JavaLangInterruptedException_init();
LABEL_25:
    objc_exception_throw(v16);
  }

  v7 = sub_10022D494(&self->super.isa, v6);
  v8 = sub_10022C9F0(self->this$0_);
  while (1)
  {
    if (sub_10022C828(self->this$0_, v7))
    {
      v11 = 0;
LABEL_11:
      LOBYTE(v12) = 1;
      goto LABEL_13;
    }

    if (JavaLangSystem_currentTimeMillis() > getTime)
    {
      break;
    }

    v9 = JavaUtilConcurrentLocksLockSupport_parkUntilWithId_withLong_(self, getTime);
    if (JavaLangThread_interrupted(v9, v10))
    {
      if (sub_10022C96C(self->this$0_, v7))
      {
        v11 = -1;
      }

      else
      {
        v11 = 1;
      }

      goto LABEL_11;
    }
  }

  v11 = 0;
  v12 = sub_10022C96C(self->this$0_, v7) ^ 1;
LABEL_13:
  if (((v11 != -1) & sub_10022B7A0(self->this$0_, v7, v8)) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v11;
  }

  if (!v7)
  {
    JreThrowNullPointerException();
  }

  if (v7[5])
  {
    sub_10022D64C(&self->super.isa);
  }

  if (v14)
  {
    sub_10022D8AC(v14, v13);
  }

  return v12;
}

- (BOOL)awaitWithLong:(int64_t)long withJavaUtilConcurrentTimeUnitEnum:(id)enum
{
  if (!enum)
  {
    v19 = new_JavaLangNullPointerException_init();
    goto LABEL_27;
  }

  v5 = [enum toNanosWithLong:long];
  if (JavaLangThread_interrupted(v5, v6))
  {
    v19 = new_JavaLangInterruptedException_init();
LABEL_27:
    objc_exception_throw(v19);
  }

  v8 = sub_10022D494(&self->super.isa, v7);
  v9 = sub_10022C9F0(self->this$0_);
  v10 = JavaLangSystem_nanoTime();
  v11 = sub_10022C828(self->this$0_, v8);
  if (v11)
  {
LABEL_9:
    v14 = 0;
  }

  else
  {
    while (1)
    {
      if (v5 <= 0)
      {
        v14 = 0;
        v15 = sub_10022C96C(self->this$0_, v8) ^ 1;
        goto LABEL_15;
      }

      if (v5 >= 0x3E8)
      {
        v11 = JavaUtilConcurrentLocksLockSupport_parkNanosWithId_withLong_(self, v5);
      }

      if (JavaLangThread_interrupted(v11, v12))
      {
        break;
      }

      v13 = JavaLangSystem_nanoTime();
      v5 = &v5[v10 - v13];
      v11 = sub_10022C828(self->this$0_, v8);
      v10 = v13;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    if (sub_10022C96C(self->this$0_, v8))
    {
      v14 = -1;
    }

    else
    {
      v14 = 1;
    }
  }

  LOBYTE(v15) = 1;
LABEL_15:
  if (((v14 != -1) & sub_10022B7A0(self->this$0_, v8, v9)) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = v14;
  }

  if (!v8)
  {
    JreThrowNullPointerException();
  }

  if (v8[5])
  {
    sub_10022D64C(&self->super.isa);
  }

  if (v17)
  {
    sub_10022D8AC(v17, v16);
  }

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject;
  [(JavaUtilConcurrentLocksAbstractQueuedSynchronizer_ConditionObject *)&v3 dealloc];
}

@end