@interface OrgApacheLuceneIndexSegmentDocValuesProducer
+ (void)initialize;
- (id)description;
- (id)getBinaryWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (id)getChildResources;
- (id)getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (id)getNumericWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (id)getSortedNumericWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (id)getSortedSetWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (id)getSortedWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (int64_t)ramBytesUsed;
- (void)checkIntegrity;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexSegmentDocValuesProducer

- (id)getNumericWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  dvProducersByField = self->dvProducersByField_;
  if (!dvProducersByField || !info || (v5 = [(JavaUtilMap *)dvProducersByField getWithId:*(info + 1)]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v5 getNumericWithOrgApacheLuceneIndexFieldInfo:info];
}

- (id)getBinaryWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  dvProducersByField = self->dvProducersByField_;
  if (!dvProducersByField || !info || (v5 = [(JavaUtilMap *)dvProducersByField getWithId:*(info + 1)]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v5 getBinaryWithOrgApacheLuceneIndexFieldInfo:info];
}

- (id)getSortedWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  dvProducersByField = self->dvProducersByField_;
  if (!dvProducersByField || !info || (v5 = [(JavaUtilMap *)dvProducersByField getWithId:*(info + 1)]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v5 getSortedWithOrgApacheLuceneIndexFieldInfo:info];
}

- (id)getSortedNumericWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  dvProducersByField = self->dvProducersByField_;
  if (!dvProducersByField || !info || (v5 = [(JavaUtilMap *)dvProducersByField getWithId:*(info + 1)]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v5 getSortedNumericWithOrgApacheLuceneIndexFieldInfo:info];
}

- (id)getSortedSetWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  dvProducersByField = self->dvProducersByField_;
  if (!dvProducersByField || !info || (v5 = [(JavaUtilMap *)dvProducersByField getWithId:*(info + 1)]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v5 getSortedSetWithOrgApacheLuceneIndexFieldInfo:info];
}

- (id)getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  dvProducersByField = self->dvProducersByField_;
  if (!dvProducersByField || !info || (v5 = [(JavaUtilMap *)dvProducersByField getWithId:*(info + 1)]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v5 getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:info];
}

- (void)checkIntegrity
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  dvProducers = self->dvProducers_;
  if (!dvProducers)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v3 = [(JavaUtilSet *)self->dvProducers_ countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(dvProducers);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if (!v7)
        {
          goto LABEL_11;
        }

        [v7 checkIntegrity];
      }

      v4 = [(JavaUtilSet *)dvProducers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (int64_t)ramBytesUsed
{
  dvGens = self->dvGens_;
  if (!dvGens)
  {
    goto LABEL_17;
  }

  v4 = qword_100553E88;
  v5 = [(JavaUtilList *)dvGens size];
  dvProducers = self->dvProducers_;
  if (!dvProducers)
  {
    goto LABEL_17;
  }

  v7 = qword_100553E90;
  v8 = [(JavaUtilSet *)dvProducers size];
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  dvProducersByField = self->dvProducersByField_;
  if (!dvProducersByField)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v10 = v4 + v7 * v5 + (OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_ * v8);
  v11 = 2 * [(JavaUtilMap *)dvProducersByField size];
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  v12 = v10 + (v11 * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = self->dvProducers_;
  v14 = [(JavaUtilSet *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        if (!v18)
        {
          goto LABEL_17;
        }

        v12 += [v18 ramBytesUsed];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [(JavaUtilSet *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  return v12;
}

- (id)getChildResources
{
  v3 = new_JavaUtilArrayList_init();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  dvProducers = self->dvProducers_;
  if (!dvProducers)
  {
    JreThrowNullPointerException();
  }

  v5 = v3;
  v6 = [(JavaUtilSet *)dvProducers countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v14 = v6;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(dvProducers);
        }

        v17 = OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"delegate", *(*(&v19 + 1) + 8 * i), v8, v9, v10, v11, v12, v13);
        [(JavaUtilArrayList *)v5 addWithId:v17, v19];
      }

      v14 = [(JavaUtilSet *)dvProducers countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return JavaUtilCollections_unmodifiableListWithJavaUtilList_(v5, v7);
}

- (id)description
{
  v3 = [-[OrgApacheLuceneIndexSegmentDocValuesProducer getClass](self "getClass")];
  dvProducers = self->dvProducers_;
  if (!dvProducers)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilSet *)dvProducers size];
  return JreStrcat("$$IC", v5, v6, v7, v8, v9, v10, v11, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexSegmentDocValuesProducer;
  [(OrgApacheLuceneIndexSegmentDocValuesProducer *)&v3 dealloc];
}

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {
    v5 = JavaLangLong_class_(v3, v4);
    qword_100553E90 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v5);
    v6 = OrgApacheLuceneIndexSegmentDocValuesProducer_class_();
    qword_100553E88 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v6);
    atomic_store(1u, &OrgApacheLuceneIndexSegmentDocValuesProducer__initialized);
  }
}

@end