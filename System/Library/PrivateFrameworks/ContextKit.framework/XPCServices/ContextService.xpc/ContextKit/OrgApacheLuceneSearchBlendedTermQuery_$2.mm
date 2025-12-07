@interface OrgApacheLuceneSearchBlendedTermQuery_$2
- (int)compareWithInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)swapWithInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneSearchBlendedTermQuery_$2

- (void)swapWithInt:(int)int withInt:(int)withInt
{
  v4 = self->val$terms_;
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = *&withInt;
  v6 = *&int;
  intCopy = int;
  size = v4->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  v10 = (&v4->elementType_)[int];
  if (withInt < 0 || size <= withInt)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&withInt);
  }

  IOSObjectArray_Set(v4, int, (&v4->elementType_)[withInt]);
  IOSObjectArray_Set(self->val$terms_, v5, v10);
  v11 = self->val$contexts_;
  if (!v11)
  {
    goto LABEL_21;
  }

  v12 = v11->super.size_;
  if ((v6 & 0x80000000) != 0 || v12 <= v6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, v6);
  }

  v13 = (&v11->elementType_)[intCopy];
  if ((v5 & 0x80000000) != 0 || v12 <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, v5);
  }

  IOSObjectArray_Set(self->val$contexts_, intCopy, (&self->val$contexts_->elementType_)[v5]);
  IOSObjectArray_Set(self->val$contexts_, v5, v13);
  v14 = self->val$boosts_;
  if (!v14)
  {
LABEL_21:
    JreThrowNullPointerException();
  }

  v15 = v14->super.size_;
  if ((v6 & 0x80000000) != 0 || v15 <= v6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v15, v6);
  }

  v16 = *(&v14->super.size_ + intCopy + 1);
  if ((v5 & 0x80000000) != 0 || v15 <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v15, v5);
  }

  if ((v6 & 0x80000000) != 0 || v15 <= v6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v15, v6);
  }

  *(&self->val$boosts_->super.size_ + intCopy + 1) = *(&self->val$boosts_->super.size_ + v5 + 1);
  v17 = self->val$boosts_;
  v18 = v17->super.size_;
  if ((v5 & 0x80000000) != 0 || v18 <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v18, v5);
  }

  *(&v17->super.size_ + v5 + 1) = v16;
}

- (int)compareWithInt:(int)int withInt:(int)withInt
{
  v4 = self->val$terms_;
  if (!v4)
  {
    goto LABEL_10;
  }

  size = v4->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  v7 = (&v4->elementType_)[int];
  if (!v7)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v8 = self->val$terms_;
  v9 = v8->super.size_;
  if (withInt < 0 || v9 <= withInt)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, *&withInt);
  }

  v10 = (&v8->elementType_)[withInt];

  return [(IOSClass *)v7 compareToWithId:v10];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchBlendedTermQuery__2;
  [(OrgApacheLuceneSearchBlendedTermQuery_$2 *)&v3 dealloc];
}

@end