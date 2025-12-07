@interface OrgApacheLuceneIndexMultiDocValues_OrdinalMap
+ (void)initialize;
- (id)getChildResources;
- (id)getGlobalOrdsWithInt:(int)int;
- (int)getFirstSegmentNumberWithLong:(int64_t)long;
- (int64_t)getFirstSegmentOrdWithLong:(int64_t)long;
- (int64_t)getValueCount;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMultiDocValues_OrdinalMap

- (id)getGlobalOrdsWithInt:(int)int
{
  segmentToGlobalOrds = self->segmentToGlobalOrds_;
  if (!segmentToGlobalOrds || (segmentMap = self->segmentMap_) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = [(OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap *)segmentMap oldToNewWithInt:*&int];
  size = segmentToGlobalOrds->super.size_;
  if ((v5 & 0x80000000) != 0 || v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  return (&segmentToGlobalOrds->elementType_)[v5];
}

- (int64_t)getFirstSegmentOrdWithLong:(int64_t)long
{
  globalOrdDeltas = self->globalOrdDeltas_;
  if (!globalOrdDeltas)
  {
    JreThrowNullPointerException();
  }

  return long - [(OrgApacheLuceneUtilPackedPackedLongValues *)globalOrdDeltas getWithLong:?];
}

- (int)getFirstSegmentNumberWithLong:(int64_t)long
{
  segmentMap = self->segmentMap_;
  if (!segmentMap || (firstSegments = self->firstSegments_) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = [(OrgApacheLuceneUtilPackedPackedLongValues *)firstSegments getWithLong:long];

  return [(OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap *)segmentMap newToOldWithInt:v5];
}

- (int64_t)getValueCount
{
  globalOrdDeltas = self->globalOrdDeltas_;
  if (!globalOrdDeltas)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilPackedPackedLongValues *)globalOrdDeltas size];
}

- (id)getChildResources
{
  v3 = new_JavaUtilArrayList_init();
  [(JavaUtilArrayList *)v3 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"global ord deltas", self->globalOrdDeltas_, v4, v5, v6, v7, v8, v9)];
  [(JavaUtilArrayList *)v3 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"first segments", self->firstSegments_, v10, v11, v12, v13, v14, v15)];
  [(JavaUtilArrayList *)v3 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"segment map", self->segmentMap_, v16, v17, v18, v19, v20, v21)];
  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMultiDocValues_OrdinalMap;
  [(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = OrgApacheLuceneIndexMultiDocValues_OrdinalMap_class_();
    qword_1005548B0 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, &OrgApacheLuceneIndexMultiDocValues_OrdinalMap__initialized);
  }
}

@end