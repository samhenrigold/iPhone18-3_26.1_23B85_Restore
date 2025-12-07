@interface OrgApacheLuceneUtilBytesRefHash_$1
- (int)comparePivotWithInt:(int)int;
- (int)compareWithInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)setPivotWithInt:(int)int;
- (void)swapWithInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneUtilBytesRefHash_$1

- (void)swapWithInt:(int)int withInt:(int)withInt
{
  v4 = self->val$compact_;
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
  v11 = self->val$compact_;
  v12 = v11->super.size_;
  if (withInt < 0 || v12 <= withInt)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, *&withInt);
  }

  *(&v11->super.size_ + withInt + 1) = v8;
}

- (int)compareWithInt:(int)int withInt:(int)withInt
{
  v4 = self->val$compact_;
  if (!v4)
  {
    goto LABEL_15;
  }

  size = v4->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  v7 = *(&v4->super.size_ + int + 1);
  if (withInt < 0 || size <= withInt)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&withInt);
  }

  v8 = self->this$0_;
  if (!v8->pool_)
  {
    goto LABEL_15;
  }

  v9 = *(&v4->super.size_ + withInt + 1);
  bytesStart = v8->bytesStart_;
  v11 = bytesStart->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, v7);
  }

  [(OrgApacheLuceneUtilByteBlockPool *)v8->pool_ setBytesRefWithOrgApacheLuceneUtilBytesRef:self->scratch1_ withInt:*(&bytesStart->super.size_ + v7 + 1)];
  v12 = self->this$0_;
  v13 = v12->bytesStart_;
  v14 = v13->super.size_;
  if ((v9 & 0x80000000) != 0 || v9 >= v14)
  {
    IOSArray_throwOutOfBoundsWithMsg(v14, v9);
  }

  [(OrgApacheLuceneUtilByteBlockPool *)v12->pool_ setBytesRefWithOrgApacheLuceneUtilBytesRef:self->scratch2_ withInt:*(&v13->super.size_ + v9 + 1)];
  v15 = self->val$comp_;
  if (!v15)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  scratch1 = self->scratch1_;
  scratch2 = self->scratch2_;

  return [(JavaUtilComparator *)v15 compareWithId:scratch1 withId:scratch2];
}

- (void)setPivotWithInt:(int)int
{
  v3 = self->val$compact_;
  if (!v3)
  {
    goto LABEL_10;
  }

  size = v3->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  v6 = self->this$0_;
  if (!v6->pool_)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v7 = *(&v3->super.size_ + int + 1);
  pivot = self->pivot_;
  bytesStart = v6->bytesStart_;
  v10 = bytesStart->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v7);
  }

  v11 = *(&bytesStart->super.size_ + v7 + 1);
  pool = v6->pool_;

  [(OrgApacheLuceneUtilByteBlockPool *)pool setBytesRefWithOrgApacheLuceneUtilBytesRef:pivot withInt:v11];
}

- (int)comparePivotWithInt:(int)int
{
  v3 = self->val$compact_;
  if (!v3)
  {
    goto LABEL_11;
  }

  size = v3->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  v6 = self->this$0_;
  if (!v6->pool_)
  {
    goto LABEL_11;
  }

  v7 = *(&v3->super.size_ + int + 1);
  bytesStart = v6->bytesStart_;
  v9 = bytesStart->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= v9)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, v7);
  }

  [(OrgApacheLuceneUtilByteBlockPool *)v6->pool_ setBytesRefWithOrgApacheLuceneUtilBytesRef:self->scratch2_ withInt:*(&bytesStart->super.size_ + v7 + 1)];
  v10 = self->val$comp_;
  if (!v10)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  pivot = self->pivot_;
  scratch2 = self->scratch2_;

  return [(JavaUtilComparator *)v10 compareWithId:pivot withId:scratch2];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilBytesRefHash__1;
  [(OrgApacheLuceneUtilBytesRefHash_$1 *)&v3 dealloc];
}

@end