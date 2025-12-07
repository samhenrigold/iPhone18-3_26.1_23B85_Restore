@interface OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput
- (id)clone;
- (void)close;
- (void)dealloc;
- (void)readInternalWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput

- (id)clone
{
  v6.receiver = self;
  v6.super_class = OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput;
  clone = [(OrgApacheLuceneStoreBufferedIndexInput *)&v6 clone];
  objc_opt_class();
  if (!clone)
  {
    goto LABEL_5;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  base = self->base_;
  if (!base)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  JreStrongAssign(clone + 7, [(OrgApacheLuceneStoreIndexInput *)base clone]);
  clone[8] = self->fileOffset_;
  clone[9] = self->length_;
  return clone;
}

- (void)readInternalWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v9 = self->super.bufferStart_ + self->super.bufferPosition_;
  if (v9 + withInt > self->length_)
  {
    v15 = JreStrcat("$@", a2, array, *&int, *&withInt, v5, v6, v7, @"read past EOF: ");
    v16 = new_JavaIoEOFException_initWithNSString_(v15);
    objc_exception_throw(v16);
  }

  base = self->base_;
  if (!base)
  {
    JreThrowNullPointerException();
  }

  v11 = *&withInt;
  v12 = *&int;
  [(OrgApacheLuceneStoreIndexInput *)base seekWithLong:self->fileOffset_ + v9];
  v14 = self->base_;

  [(OrgApacheLuceneStoreDataInput *)v14 readBytesWithByteArray:array withInt:v12 withInt:v11 withBoolean:0];
}

- (void)close
{
  base = self->base_;
  if (!base)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexInput *)base close];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput;
  [(OrgApacheLuceneStoreBufferedIndexInput *)&v3 dealloc];
}

@end