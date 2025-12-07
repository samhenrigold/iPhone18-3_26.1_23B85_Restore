@interface LibcoreUtilEmptyArray
+ (void)initialize;
@end

@implementation LibcoreUtilEmptyArray

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_BOOLEAN_, [IOSBooleanArray newArrayWithLength:0]);
    JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_BYTE_, [IOSByteArray newArrayWithLength:0]);
    JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_CHAR_, [IOSCharArray newArrayWithLength:0]);
    JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_DOUBLE_, [IOSDoubleArray newArrayWithLength:0]);
    JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_INT_, [IOSIntArray newArrayWithLength:0]);
    v2 = [IOSObjectArray newArrayWithLength:0 type:IOSClass_class_()];
    v3 = JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_CLASS_, v2);
    v5 = [IOSObjectArray newArrayWithLength:0 type:NSObject_class_(v3, v4)];
    JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_OBJECT_, v5);
    v6 = [IOSObjectArray newArrayWithLength:0 type:NSString_class_()];
    v7 = JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_STRING_, v6);
    v8 = [IOSObjectArray newArrayWithLength:0 type:JavaLangThrowable_class_(v7)];
    v9 = JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_THROWABLE_, v8);
    v11 = [IOSObjectArray newArrayWithLength:0 type:JavaLangStackTraceElement_class_(v9, v10)];
    v12 = JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_STACK_TRACE_ELEMENT_, v11);
    v14 = [IOSObjectArray newArrayWithLength:0 type:JavaLangReflectType_class_(v12, v13)];
    v15 = JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_TYPE_, v14);
    v17 = [IOSObjectArray newArrayWithLength:0 type:JavaLangReflectTypeVariable_class_(v15, v16)];
    JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_TYPE_VARIABLE_, v17);
    atomic_store(1u, LibcoreUtilEmptyArray__initialized);
  }
}

@end