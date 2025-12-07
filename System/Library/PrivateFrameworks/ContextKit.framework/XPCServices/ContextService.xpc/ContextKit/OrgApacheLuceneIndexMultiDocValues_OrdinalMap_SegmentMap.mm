@interface OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap
+ (void)initialize;
- (int)newToOldWithInt:(int)int;
- (int)oldToNewWithInt:(int)int;
- (int64_t)ramBytesUsed;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap

- (int)newToOldWithInt:(int)int
{
  newToOld = self->newToOld_;
  if (!newToOld)
  {
    JreThrowNullPointerException();
  }

  size = newToOld->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  return *(&newToOld->super.size_ + int + 1);
}

- (int)oldToNewWithInt:(int)int
{
  oldToNew = self->oldToNew_;
  if (!oldToNew)
  {
    JreThrowNullPointerException();
  }

  size = oldToNew->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  return *(&oldToNew->super.size_ + int + 1);
}

- (int64_t)ramBytesUsed
{
  v3 = qword_1005548C8;
  v4 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithIntArray_(self->newToOld_) + v3;
  return v4 + OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithIntArray_(self->oldToNew_);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap;
  [(OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap *)&v3 dealloc];
}

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {
    v4 = OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap_class_(v3);
    qword_1005548C8 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v4);
    atomic_store(1u, OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap__initialized);
  }
}

@end