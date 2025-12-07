@interface OrgApacheLuceneUtilStringHelper
+ (BOOL)equalsWithNSString:(id)string withNSString:(id)sString;
+ (void)initialize;
@end

@implementation OrgApacheLuceneUtilStringHelper

+ (BOOL)equalsWithNSString:(id)string withNSString:(id)sString
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilStringHelper__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100005258();
    if (string)
    {
      goto LABEL_3;
    }

    return sString == 0;
  }

  if (!string)
  {
    return sString == 0;
  }

LABEL_3:

  return [string isEqual:sString];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    PropertyWithNSString = JavaLangSystem_getPropertyWithNSString_(@"tests.seed", v2);
    if (PropertyWithNSString)
    {
      v4 = [PropertyWithNSString hash];
    }

    else
    {
      v4 = JavaLangSystem_currentTimeMillis();
    }

    OrgApacheLuceneUtilStringHelper_GOOD_FAST_HASH_SEED_ = v4;
    JreStrongAssignAndConsume(&qword_100553D88, [NSObject alloc]);
    v5 = [IOSByteArray arrayWithLength:16];
    JavaUtilArrays_fillWithByteArray_withByte_(v5, -1);
    v6 = new_JavaMathBigInteger_initWithInt_withByteArray_(1, v5);
    JreStrongAssignAndConsume(&qword_100553D90, v6);
    v8 = JavaLangSystem_getPropertyWithNSString_(@"tests.seed", v7);
    if (v8)
    {
      v9 = v8;
      if ([v8 length] >= 9)
      {
        v9 = [v9 substring:{objc_msgSend(v9, "length") - 8}];
      }

      v16 = JavaLangLong_parseLongWithNSString_withInt_(v9, 16, v10, v11, v12, v13, v14, v15);
      v17 = v16;
    }

    else
    {
      v18 = arc4random();
      v16 = v18 | (arc4random() << 32);
      v19 = arc4random();
      v17 = v19 | (arc4random() << 32);
    }

    v20 = 10;
    do
    {
      v21 = v17;
      v17 ^= (v17 >> 26) ^ ((v16 ^ (v16 << 23)) >> 17) ^ v16 ^ (v16 << 23);
      v16 = v21;
      --v20;
    }

    while (v20);
    v22 = [IOSByteArray arrayWithLength:8];
    JavaUtilArrays_fillWithByteArray_withByte_(v22, -1);
    v23 = new_JavaMathBigInteger_initWithInt_withByteArray_(1, v22);
    v24 = JavaMathBigInteger_valueOfWithLong_(v21);
    if (!v24 || (v25 = -[JavaMathBigInteger and__WithJavaMathBigInteger:](v24, "and__WithJavaMathBigInteger:", v23), (v26 = JavaMathBigInteger_valueOfWithLong_(v17)) == 0) || (v27 = -[JavaMathBigInteger and__WithJavaMathBigInteger:](v26, "and__WithJavaMathBigInteger:", v23), !v25) || (v28 = v27, (v29 = [v25 shiftLeftWithInt:64]) == 0))
    {
      JreThrowNullPointerException();
    }

    JreStrongAssign(&qword_100553D98, [v29 or__WithJavaMathBigInteger:v28]);
    atomic_store(1u, OrgApacheLuceneUtilStringHelper__initialized);
  }
}

@end