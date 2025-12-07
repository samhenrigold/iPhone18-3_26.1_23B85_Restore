@interface JavaUtilLoggingErrorManager
+ (void)initialize;
- (void)errorWithNSString:(id)string withJavaLangException:(id)exception withInt:(int)int;
@end

@implementation JavaUtilLoggingErrorManager

- (void)errorWithNSString:(id)string withJavaLangException:(id)exception withInt:(int)int
{
  v5 = *&int;
  objc_sync_enter(self);
  if (self->called_)
  {

    objc_sync_exit(self);
  }

  else
  {
    self->called_ = 1;
    objc_sync_exit(self);
    if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10014019C();
    }

    v9 = JavaLangSystem_err_;
    if (!JavaLangSystem_err_ || (v10 = [-[JavaUtilLoggingErrorManager getClass](self "getClass")], !qword_100554A38))
    {
      JreThrowNullPointerException();
    }

    v18 = v10;
    v19 = *(qword_100554A38 + 8);
    if ((v5 & 0x80000000) != 0 || v19 <= v5)
    {
      IOSArray_throwOutOfBoundsWithMsg(v19, v5);
    }

    [v9 printlnWithNSString:{JreStrcat("$$$", v11, v12, v13, v14, v15, v16, v17, v18)}];
    if (string)
    {
      if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10014019C();
      }

      [JavaLangSystem_err_ printlnWithNSString:{JreStrcat("$$", v20, v21, v22, v23, v24, v25, v26, @"Error message - "}];
    }

    if (exception)
    {
      if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10014019C();
      }

      v27 = JavaLangSystem_err_;
      v28 = JreStrcat("$@", v20, v21, v22, v23, v24, v25, v26, @"Exception - ");

      [v27 printlnWithNSString:v28];
    }
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3[0] = off_1003F7018;
    v3[1] = off_1003F7028;
    v3[2] = off_1003F7038;
    v2 = [IOSObjectArray newArrayWithObjects:v3 count:6 type:NSString_class_()];
    JreStrongAssignAndConsume(&qword_100554A38, v2);
    atomic_store(1u, JavaUtilLoggingErrorManager__initialized);
  }
}

@end