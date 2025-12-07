@interface JavaUtilConcurrentLocksLockSupport
+ (void)initialize;
@end

@implementation JavaUtilConcurrentLocksLockSupport

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {
    Unsafe = SunMiscUnsafe_getUnsafe(v3, v4);
    v6 = JreStrongAssign(&qword_100554AA8, Unsafe);
    if (!qword_100554AA8)
    {
      JreThrowNullPointerException();
    }

    qword_100554AB0 = [qword_100554AA8 objectFieldOffsetWithJavaLangReflectField:{objc_msgSend(JavaLangThread_class_(v6, v7), "getDeclaredField:", @"parkBlocker"}];
    atomic_store(1u, JavaUtilConcurrentLocksLockSupport__initialized);
  }
}

@end