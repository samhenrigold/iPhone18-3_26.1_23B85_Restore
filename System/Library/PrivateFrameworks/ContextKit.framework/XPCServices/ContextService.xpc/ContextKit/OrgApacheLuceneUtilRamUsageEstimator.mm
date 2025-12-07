@interface OrgApacheLuceneUtilRamUsageEstimator
+ (int64_t)adjustForFieldWithLong:(int64_t)long withJavaLangReflectField:(id)field;
+ (int64_t)alignObjectSizeWithLong:(int64_t)long;
+ (void)initialize;
@end

@implementation OrgApacheLuceneUtilRamUsageEstimator

+ (int64_t)alignObjectSizeWithLong:(int64_t)long
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  return (long + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ - 1) / OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_;
}

+ (int64_t)adjustForFieldWithLong:(int64_t)long withJavaLangReflectField:(id)field
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  return OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_ + long;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = new_JavaUtilIdentityHashMap_init();
    JreStrongAssignAndConsume(&qword_1005541B0, v2);
    [qword_1005541B0 putWithId:+[IOSClass BOOLeanClass](IOSClass withId:{"BOOLeanClass"), JavaLangInteger_valueOfWithInt_(1)}];
    [qword_1005541B0 putWithId:+[IOSClass byteClass](IOSClass withId:{"byteClass"), JavaLangInteger_valueOfWithInt_(1)}];
    [qword_1005541B0 putWithId:+[IOSClass charClass](IOSClass withId:{"charClass"), JavaLangInteger_valueOfWithInt_(2)}];
    [qword_1005541B0 putWithId:+[IOSClass shortClass](IOSClass withId:{"shortClass"), JavaLangInteger_valueOfWithInt_(2)}];
    [qword_1005541B0 putWithId:+[IOSClass intClass](IOSClass withId:{"intClass"), JavaLangInteger_valueOfWithInt_(4)}];
    [qword_1005541B0 putWithId:+[IOSClass floatClass](IOSClass withId:{"floatClass"), JavaLangInteger_valueOfWithInt_(4)}];
    [qword_1005541B0 putWithId:+[IOSClass doubleClass](IOSClass withId:{"doubleClass"), JavaLangInteger_valueOfWithInt_(8)}];
    v3 = [qword_1005541B0 putWithId:+[IOSClass longClass](IOSClass withId:{"longClass"), JavaLangInteger_valueOfWithInt_(8)}];
    if ((atomic_load_explicit(OrgApacheLuceneUtilConstants__initialized, memory_order_acquire) & 1) == 0)
    {
      v3 = sub_100070498();
    }

    if (OrgApacheLuceneUtilConstants_JRE_IS_64BIT_ == 1)
    {
      v5 = IOSClass_forName_(OrgApacheLuceneUtilRamUsageEstimator_HOTSPOT_BEAN_CLASS_);
      v6 = IOSClass_forName_(OrgApacheLuceneUtilRamUsageEstimator_MANAGEMENT_FACTORY_CLASS_);
      if (!v6 || (v50 = IOSClass_class_(), (v7 = [v6 getMethod:@"getPlatformMXBean" parameterTypes:{+[IOSObjectArray arrayWithObjects:count:type:](IOSObjectArray, "arrayWithObjects:count:type:", &v50, 1, IOSClass_class_())}]) == 0))
      {
        JreThrowNullPointerException();
      }

      v49 = v5;
      v3 = [v7 invokeWithId:0 withNSObjectArray:{+[IOSObjectArray arrayWithObjects:count:type:](IOSObjectArray, "arrayWithObjects:count:type:", &v49, 1, NSObject_class_(v7, v8))}];
      v9 = v3;
      if (v3)
      {
        if (!v5)
        {
          JreThrowNullPointerException();
        }

        v48 = NSString_class_();
        v10 = [v5 getMethod:@"getVMOption" parameterTypes:{+[IOSObjectArray arrayWithObjects:count:type:](IOSObjectArray, "arrayWithObjects:count:type:", &v48, 1, IOSClass_class_())}];
        v12 = v10;
        if (!v10 || (v47 = @"UseCompressedOops", v13 = [v10 invokeWithId:v9 withNSObjectArray:{+[IOSObjectArray arrayWithObjects:count:type:](IOSObjectArray, "arrayWithObjects:count:type:", &v47, 1, NSObject_class_(v10, v11))}], (v14 = v13) == 0) || (v15 = objc_msgSend(objc_msgSend(v13, "getClass"), "getMethod:parameterTypes:", @"getValue", +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 0, IOSClass_class_()))) == 0 || (v17 = objc_msgSend(v15, "invokeWithId:withNSObjectArray:", v14, +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 0, NSObject_class_(v15, v16)))) == 0)
        {
          JreThrowNullPointerException();
        }

        v18 = JavaLangBoolean_parseBooleanWithNSString_([v17 description]);
        v19 = v18;
        v46 = @"ObjectAlignmentInBytes";
        v21 = [IOSObjectArray arrayWithObjects:&v46 count:1 type:NSObject_class_(v18, v20)];
        v22 = [v12 invokeWithId:v9 withNSObjectArray:{v21, v46, v47, v48, v49, v50}];
        v23 = v22;
        if (!v22 || (v24 = [objc_msgSend(v22 "getClass")]) == 0 || (v26 = objc_msgSend(v24, "invokeWithId:withNSObjectArray:", v23, +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 0, NSObject_class_(v24, v25)))) == 0)
        {
          JreThrowNullPointerException();
        }

        v27 = [v26 description];
        v3 = JavaLangInteger_parseIntWithNSString_(v27, v28, v29, v30, v31, v32, v33, v34);
        OrgApacheLuceneUtilRamUsageEstimator_JVM_IS_HOTSPOT_64BIT_ = 1;
        OrgApacheLuceneUtilRamUsageEstimator_COMPRESSED_REFS_ENABLED_ = v19 & 1;
        OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ = v3;
        if (v19)
        {
          v35 = 4;
        }

        else
        {
          v35 = 8;
        }
      }

      else
      {
        OrgApacheLuceneUtilRamUsageEstimator_JVM_IS_HOTSPOT_64BIT_ = 0;
        OrgApacheLuceneUtilRamUsageEstimator_COMPRESSED_REFS_ENABLED_ = 0;
        v35 = 8;
        OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ = 8;
      }

      OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_ = v35;
      OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER_ = v35 + 8;
      if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
      {
        v3 = sub_1000865D4();
      }

      v36 = (OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ + (v35 + 11)) / OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_;
    }

    else
    {
      OrgApacheLuceneUtilRamUsageEstimator_JVM_IS_HOTSPOT_64BIT_ = 0;
      OrgApacheLuceneUtilRamUsageEstimator_COMPRESSED_REFS_ENABLED_ = 0;
      OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ = 8;
      OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_ = 4;
      v36 = 12;
      OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER_ = 8;
    }

    v37 = 0;
    OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER_ = v36;
    do
    {
      v38 = v37;
      if (v37 == 0x8000000000000000)
      {
        break;
      }

      --v37;
      v39 = JavaLangLong_valueOfWithLong_(v38 - 1, v4);
      v3 = JavaLangLong_valueOfWithLong_(v38 - 1, v40);
    }

    while (v39 == v3);
    v41 = 0;
    do
    {
      v42 = v41;
      if (v41 == 0x8000000000000000)
      {
        break;
      }

      v43 = JavaLangLong_valueOfWithLong_(v41, v4);
      v3 = JavaLangLong_valueOfWithLong_(v42, v44);
      v41 = v42 + 1;
    }

    while (v43 == v3);
    OrgApacheLuceneUtilRamUsageEstimator_LONG_CACHE_MIN_VALUE_ = v38;
    OrgApacheLuceneUtilRamUsageEstimator_LONG_CACHE_MAX_VALUE_ = v42 - 1;
    v45 = JavaLangLong_class_(v3, v4);
    OrgApacheLuceneUtilRamUsageEstimator_LONG_SIZE_ = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v45);
    atomic_store(1u, &OrgApacheLuceneUtilRamUsageEstimator__initialized);
  }
}

@end