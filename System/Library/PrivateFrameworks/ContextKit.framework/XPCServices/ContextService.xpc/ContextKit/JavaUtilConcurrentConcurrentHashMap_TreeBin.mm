@interface JavaUtilConcurrentConcurrentHashMap_TreeBin
+ (void)initialize;
- (id)findWithInt:(int)int withId:(id)id;
- (void)__javaClone;
- (void)dealloc;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_TreeBin

- (id)findWithInt:(int)int withId:(id)id
{
  if (!id)
  {
    return 0;
  }

  v5 = atomic_load(&self->first_);
  if (v5)
  {
    v7 = *&int;
    do
    {
      v8 = atomic_load(&self->lockState_);
      if ((v8 & 3) != 0)
      {
        if (*(v5 + 8) == v7)
        {
          v9 = *(v5 + 16);
          if (v9 == id || v9 && ([id isEqual:?] & 1) != 0)
          {
            return v5;
          }
        }

        v5 = *(v5 + 32);
      }

      else
      {
        if (!qword_100554D30)
        {
          JreThrowNullPointerException();
        }

        if ([qword_100554D30 compareAndSwapIntWithId:self withLong:qword_100554D38 withInt:v8 withInt:(v8 + 4)])
        {
          root = self->root_;
          if (root)
          {
            v5 = sub_1001B3D84(root, v7, id, 0);
          }

          else
          {
            v5 = 0;
          }

          do
          {
            v12 = atomic_load(&self->lockState_);
          }

          while (([qword_100554D30 compareAndSwapIntWithId:self withLong:qword_100554D38 withInt:v12 withInt:(v12 - 4)] & 1) == 0);
          if (v12 == 6)
          {
            v13 = atomic_load(&self->waiter_);
            if (v13)
            {
              JavaUtilConcurrentLocksLockSupport_unparkWithJavaLangThread_(v13);
            }
          }

          return v5;
        }
      }
    }

    while (v5);
  }

  return v5;
}

- (void)dealloc
{
  JreReleaseVolatile(&self->first_);
  JreReleaseVolatile(&self->waiter_);
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentConcurrentHashMap_TreeBin;
  [(JavaUtilConcurrentConcurrentHashMap_Node *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentConcurrentHashMap_TreeBin;
  [(JavaUtilConcurrentConcurrentHashMap_Node *)&v3 __javaClone];
  JreRetainVolatile(&self->first_);
  JreRetainVolatile(&self->waiter_);
}

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {
    Unsafe = SunMiscUnsafe_getUnsafe(v3, v4);
    JreStrongAssign(&qword_100554D30, Unsafe);
    v6 = JavaUtilConcurrentConcurrentHashMap_TreeBin_class_();
    if (!qword_100554D30)
    {
      JreThrowNullPointerException();
    }

    qword_100554D38 = [qword_100554D30 objectFieldOffsetWithJavaLangReflectField:{objc_msgSend(v6, "getDeclaredField:", @"lockState"}];
    atomic_store(1u, JavaUtilConcurrentConcurrentHashMap_TreeBin__initialized);
  }
}

@end