@interface OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap_$1
- (int)compareWithInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)swapWithInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap_$1

- (void)swapWithInt:(int)int withInt:(int)withInt
{
  v4 = self->val$newToOld_;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  size = v4->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  v7 = v4;
  v8 = *(&v4->super.size_ + int + 1);
  if (withInt < 0 || size <= withInt)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&withInt);
  }

  v9 = v7;
  v10 = *(&v7->super.size_ + withInt + 1);
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  *(&v9->super.size_ + int + 1) = v10;
  v11 = self->val$newToOld_;
  v12 = v11->super.size_;
  if (withInt < 0 || v12 <= withInt)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, *&withInt);
  }

  *(&v11->super.size_ + withInt + 1) = v8;
}

- (int)compareWithInt:(int)int withInt:(int)withInt
{
  v4 = self->val$weights_;
  if (!v4 || (v6 = self->val$newToOld_) == 0)
  {
    JreThrowNullPointerException();
  }

  size = v6->super.size_;
  if (withInt < 0 || size <= withInt)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&withInt);
  }

  v8 = *(&v6->super.size_ + withInt + 1);
  v9 = v4->super.size_;
  if (v8 < 0 || v8 >= v9)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, v8);
  }

  v10 = v4->buffer_[v8];
  v11 = self->val$weights_;
  v12 = self->val$newToOld_;
  v13 = v12->super.size_;
  if (int < 0 || v13 <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, *&int);
  }

  v14 = *(&v12->super.size_ + int + 1);
  v15 = v11->super.size_;
  if (v14 < 0 || v14 >= v15)
  {
    IOSArray_throwOutOfBoundsWithMsg(v15, v14);
  }

  v16 = v11->buffer_[v14];

  return JavaLangLong_compareWithLong_withLong_(v10, v16);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap__1;
  [(OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap_$1 *)&v3 dealloc];
}

@end