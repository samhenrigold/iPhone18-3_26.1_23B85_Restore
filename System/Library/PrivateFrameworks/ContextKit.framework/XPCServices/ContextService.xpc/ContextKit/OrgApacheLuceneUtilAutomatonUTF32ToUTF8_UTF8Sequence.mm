@interface OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence
- (id)description;
- (int)byteAtWithInt:(int)int;
- (int)numBitsWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence

- (int)byteAtWithInt:(int)int
{
  bytes = self->bytes_;
  if (!bytes)
  {
    goto LABEL_6;
  }

  size = bytes->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  v5 = (&bytes->elementType_)[int];
  if (!v5)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  return v5[1].super.isa;
}

- (int)numBitsWithInt:(int)int
{
  bytes = self->bytes_;
  if (!bytes)
  {
    goto LABEL_6;
  }

  size = bytes->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  v5 = (&bytes->elementType_)[int];
  if (!v5)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  return SBYTE4(v5[1].super.isa);
}

- (id)description
{
  v3 = new_JavaLangStringBuilder_init();
  if (self->len_ >= 1)
  {
    v4 = 0;
    do
    {
      if (v4)
      {
        [(JavaLangStringBuilder *)v3 appendWithChar:32];
      }

      bytes = self->bytes_;
      if (!bytes)
      {
        goto LABEL_14;
      }

      size = bytes->super.size_;
      if (v4 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v4);
      }

      v7 = (&bytes->elementType_)[v4];
      if (!v7)
      {
LABEL_14:
        JreThrowNullPointerException();
      }

      [(JavaLangStringBuilder *)v3 appendWithNSString:JavaLangInteger_toBinaryStringWithInt_(LODWORD(v7[1].super.isa))];
      ++v4;
    }

    while (v4 < self->len_);
  }

  return [(JavaLangStringBuilder *)v3 description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence;
  [(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *)&v3 dealloc];
}

@end