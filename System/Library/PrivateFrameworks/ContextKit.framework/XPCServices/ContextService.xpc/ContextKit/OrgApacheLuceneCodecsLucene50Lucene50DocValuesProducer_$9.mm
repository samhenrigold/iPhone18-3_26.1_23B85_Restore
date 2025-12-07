@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$9
- (int64_t)valueAtWithInt:(int)int;
- (void)dealloc;
- (void)setDocumentWithInt:(int)int;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$9

- (void)setDocumentWithInt:(int)int
{
  v4 = self->val$ordinals_;
  if (!v4 || (v5 = [(OrgApacheLuceneUtilLongValues *)v4 getWithInt:*&int], (v6 = self->val$offsets_) == 0))
  {
    JreThrowNullPointerException();
  }

  v7 = v5;
  v8 = v5 << 32;
  size = v6->super.size_;
  if ((v7 & 0x80000000) != 0 || size <= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7);
  }

  self->startOffset_ = *(&v6->super.size_ + v7 + 1);
  v10 = self->val$offsets_;
  v11 = (&_mh_execute_header + v8) >> 32;
  v12 = v10->super.size_;
  if (v11 < 0 || v12 <= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, (&_mh_execute_header + v8) >> 32);
  }

  self->endOffset_ = *(&v10->super.size_ + v11 + 1);
}

- (int64_t)valueAtWithInt:(int)int
{
  v3 = self->val$table_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  startOffset = self->startOffset_;
  size = v3->super.size_;
  v6 = startOffset + int;
  if (startOffset + int < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (startOffset + int));
  }

  return v3->buffer_[v6];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__9;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$9 *)&v3 dealloc];
}

@end