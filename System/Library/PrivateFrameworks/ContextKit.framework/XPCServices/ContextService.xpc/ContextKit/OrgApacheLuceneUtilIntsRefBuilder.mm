@interface OrgApacheLuceneUtilIntsRefBuilder
- (OrgApacheLuceneUtilIntsRefBuilder)init;
- (id)ints;
- (id)toIntsRef;
- (int)intAtWithInt:(int)int;
- (int)length;
- (void)appendWithInt:(int)int;
- (void)copyIntsWithIntArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)copyIntsWithOrgApacheLuceneUtilIntsRef:(id)ref;
- (void)copyUTF8BytesWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)dealloc;
- (void)growWithInt:(int)int;
- (void)setIntAtWithInt:(int)int withInt:(int)withInt;
- (void)setLengthWithInt:(int)int;
@end

@implementation OrgApacheLuceneUtilIntsRefBuilder

- (OrgApacheLuceneUtilIntsRefBuilder)init
{
  v3 = new_OrgApacheLuceneUtilIntsRef_init();
  JreStrongAssignAndConsume(&self->ref_, v3);
  return self;
}

- (id)ints
{
  ref = self->ref_;
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  return ref->ints_;
}

- (int)length
{
  ref = self->ref_;
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  return ref->length_;
}

- (void)setLengthWithInt:(int)int
{
  ref = self->ref_;
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  ref->length_ = int;
}

- (int)intAtWithInt:(int)int
{
  ref = self->ref_;
  if (!ref || (ints = ref->ints_) == 0)
  {
    JreThrowNullPointerException();
  }

  size = ints->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  return *(&ints->super.size_ + int + 1);
}

- (void)setIntAtWithInt:(int)int withInt:(int)withInt
{
  ref = self->ref_;
  if (!ref || (ints = ref->ints_) == 0)
  {
    JreThrowNullPointerException();
  }

  size = ints->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  *(&ints->super.size_ + int + 1) = withInt;
}

- (void)appendWithInt:(int)int
{
  ref = self->ref_;
  if (!ref || ([(OrgApacheLuceneUtilIntsRefBuilder *)self growWithInt:(ref->length_ + 1)], v6 = self->ref_, (ints = v6->ints_) == 0))
  {
    JreThrowNullPointerException();
  }

  length = v6->length_;
  v6->length_ = length + 1;
  size = ints->super.size_;
  if (length < 0 || length >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, length);
  }

  *(&ints->super.size_ + length + 1) = int;
}

- (void)growWithInt:(int)int
{
  ref = self->ref_;
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  v9 = OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(ref->ints_, int, *&int, v3, v4, v5, v6, v7);

  JreStrongAssign(&ref->ints_, v9);
}

- (void)copyIntsWithIntArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  [(OrgApacheLuceneUtilIntsRefBuilder *)self growWithInt:*&withInt];
  ref = self->ref_;
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(array, v6, ref->ints_, 0, v5);
  self->ref_->length_ = v5;
}

- (void)copyIntsWithOrgApacheLuceneUtilIntsRef:(id)ref
{
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  v4 = *(ref + 4);
  v5 = *(ref + 5);
  v6 = *(ref + 1);

  [(OrgApacheLuceneUtilIntsRefBuilder *)self copyIntsWithIntArray:v6 withInt:v4 withInt:v5];
}

- (void)copyUTF8BytesWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  if (!ref || ([(OrgApacheLuceneUtilIntsRefBuilder *)self growWithInt:*(ref + 5)], v5 = OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF32WithOrgApacheLuceneUtilBytesRef_withIntArray_(ref, self->ref_->ints_), (ref = self->ref_) == 0))
  {
    JreThrowNullPointerException();
  }

  ref->length_ = v5;
}

- (id)toIntsRef
{
  v2 = [(OrgApacheLuceneUtilIntsRefBuilder *)self get];

  return OrgApacheLuceneUtilIntsRef_deepCopyOfWithOrgApacheLuceneUtilIntsRef_(v2);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilIntsRefBuilder;
  [(OrgApacheLuceneUtilIntsRefBuilder *)&v3 dealloc];
}

@end