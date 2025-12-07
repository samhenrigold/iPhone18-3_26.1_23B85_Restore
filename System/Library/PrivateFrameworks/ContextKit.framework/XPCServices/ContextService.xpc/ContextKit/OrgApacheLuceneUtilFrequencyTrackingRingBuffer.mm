@interface OrgApacheLuceneUtilFrequencyTrackingRingBuffer
+ (void)initialize;
- (id)asFrequencyMap;
- (int)frequencyWithInt:(int)int;
- (int64_t)ramBytesUsed;
- (void)addWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilFrequencyTrackingRingBuffer

- (int64_t)ramBytesUsed
{
  frequencies = self->frequencies_;
  if (!frequencies)
  {
    JreThrowNullPointerException();
  }

  v4 = qword_100553F70;
  v5 = [(OrgApacheLuceneUtilFrequencyTrackingRingBuffer_IntBag *)frequencies ramBytesUsed]+ v4;
  return &v5[OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithIntArray_(self->buffer_)];
}

- (void)addWithInt:(int)int
{
  buffer = self->buffer_;
  if (!buffer)
  {
    goto LABEL_11;
  }

  v4 = *&int;
  position = self->position_;
  size = buffer->super.size_;
  if (position < 0 || position >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, position);
  }

  frequencies = self->frequencies_;
  if (!frequencies)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneUtilFrequencyTrackingRingBuffer_IntBag *)frequencies removeWithInt:*(&buffer->super.size_ + position + 1)];
  v9 = self->buffer_;
  v10 = self->position_;
  v11 = v9->super.size_;
  if (v10 < 0 || v10 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, v10);
  }

  *(&v9->super.size_ + v10 + 1) = v4;
  [(OrgApacheLuceneUtilFrequencyTrackingRingBuffer_IntBag *)self->frequencies_ addWithInt:v4];
  v12 = self->position_;
  if (v12 + 1 == self->maxSize_)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12 + 1;
  }

  self->position_ = v13;
}

- (int)frequencyWithInt:(int)int
{
  frequencies = self->frequencies_;
  if (!frequencies)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilFrequencyTrackingRingBuffer_IntBag *)frequencies frequencyWithInt:*&int];
}

- (id)asFrequencyMap
{
  frequencies = self->frequencies_;
  if (!frequencies)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilFrequencyTrackingRingBuffer_IntBag *)frequencies asMap];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFrequencyTrackingRingBuffer;
  [(OrgApacheLuceneUtilFrequencyTrackingRingBuffer *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = OrgApacheLuceneUtilFrequencyTrackingRingBuffer_class_();
    qword_100553F70 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, &OrgApacheLuceneUtilFrequencyTrackingRingBuffer__initialized);
  }
}

@end