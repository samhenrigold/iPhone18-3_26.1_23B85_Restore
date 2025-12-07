@interface OrgApacheLuceneUtilBytesRefBuilder
- (OrgApacheLuceneUtilBytesRefBuilder)init;
- (char)byteAtWithInt:(int)int;
- (id)bytes;
- (id)toBytesRef;
- (int)length;
- (void)appendWithByte:(char)byte;
- (void)appendWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)appendWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)appendWithOrgApacheLuceneUtilBytesRefBuilder:(id)builder;
- (void)copyBytesWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)copyBytesWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)copyBytesWithOrgApacheLuceneUtilBytesRefBuilder:(id)builder;
- (void)copyCharsWithCharArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)copyCharsWithJavaLangCharSequence:(id)sequence;
- (void)copyCharsWithJavaLangCharSequence:(id)sequence withInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)growWithInt:(int)int;
- (void)setByteAtWithInt:(int)int withByte:(char)byte;
- (void)setLengthWithInt:(int)int;
@end

@implementation OrgApacheLuceneUtilBytesRefBuilder

- (OrgApacheLuceneUtilBytesRefBuilder)init
{
  v3 = new_OrgApacheLuceneUtilBytesRef_init();
  JreStrongAssignAndConsume(&self->ref_, v3);
  return self;
}

- (id)bytes
{
  ref = self->ref_;
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  return ref->bytes_;
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

- (char)byteAtWithInt:(int)int
{
  ref = self->ref_;
  if (!ref || (bytes = ref->bytes_) == 0)
  {
    JreThrowNullPointerException();
  }

  size = bytes->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  return *(&bytes->super.size_ + int + 4);
}

- (void)setByteAtWithInt:(int)int withByte:(char)byte
{
  ref = self->ref_;
  if (!ref || (bytes = ref->bytes_) == 0)
  {
    JreThrowNullPointerException();
  }

  size = bytes->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  *(&bytes->super.size_ + int + 4) = byte;
}

- (void)growWithInt:(int)int
{
  ref = self->ref_;
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  v9 = OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(ref->bytes_, int, *&int, v3, v4, v5, v6, v7);

  JreStrongAssign(&ref->bytes_, v9);
}

- (void)appendWithByte:(char)byte
{
  ref = self->ref_;
  if (!ref || ([(OrgApacheLuceneUtilBytesRefBuilder *)self growWithInt:(ref->length_ + 1)], v6 = self->ref_, (bytes = v6->bytes_) == 0))
  {
    JreThrowNullPointerException();
  }

  length = v6->length_;
  v6->length_ = length + 1;
  size = bytes->super.size_;
  if (length < 0 || length >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, length);
  }

  *(&bytes->super.size_ + length + 4) = byte;
}

- (void)appendWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  ref = self->ref_;
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  v6 = *&withInt;
  v7 = *&int;
  [(OrgApacheLuceneUtilBytesRefBuilder *)self growWithInt:(ref->length_ + withInt)];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(array, v7, self->ref_->bytes_, self->ref_->length_, v6);
  self->ref_->length_ += v6;
}

- (void)appendWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  v4 = *(ref + 4);
  v5 = *(ref + 5);
  v6 = *(ref + 1);

  [(OrgApacheLuceneUtilBytesRefBuilder *)self appendWithByteArray:v6 withInt:v4 withInt:v5];
}

- (void)appendWithOrgApacheLuceneUtilBytesRefBuilder:(id)builder
{
  if (!builder)
  {
    JreThrowNullPointerException();
  }

  v4 = [builder get];

  [(OrgApacheLuceneUtilBytesRefBuilder *)self appendWithOrgApacheLuceneUtilBytesRef:v4];
}

- (void)copyBytesWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  [(OrgApacheLuceneUtilBytesRefBuilder *)self clear];

  [(OrgApacheLuceneUtilBytesRefBuilder *)self appendWithByteArray:array withInt:v6 withInt:v5];
}

- (void)copyBytesWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  [(OrgApacheLuceneUtilBytesRefBuilder *)self clear];

  [(OrgApacheLuceneUtilBytesRefBuilder *)self appendWithOrgApacheLuceneUtilBytesRef:ref];
}

- (void)copyBytesWithOrgApacheLuceneUtilBytesRefBuilder:(id)builder
{
  [(OrgApacheLuceneUtilBytesRefBuilder *)self clear];

  [(OrgApacheLuceneUtilBytesRefBuilder *)self appendWithOrgApacheLuceneUtilBytesRefBuilder:builder];
}

- (void)copyCharsWithJavaLangCharSequence:(id)sequence
{
  if (!sequence)
  {
    JreThrowNullPointerException();
  }

  v5 = [sequence length];

  [(OrgApacheLuceneUtilBytesRefBuilder *)self copyCharsWithJavaLangCharSequence:sequence withInt:0 withInt:v5];
}

- (void)copyCharsWithJavaLangCharSequence:(id)sequence withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  [(OrgApacheLuceneUtilBytesRefBuilder *)self growWithInt:(3 * withInt)];
  v9 = OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithJavaLangCharSequence_withInt_withInt_withByteArray_(sequence, v6, v5, self->ref_->bytes_);
  ref = self->ref_;
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  ref->length_ = v9;
}

- (void)copyCharsWithCharArray:(id)array withInt:(int)int withInt:(int)withInt
{
  [(OrgApacheLuceneUtilBytesRefBuilder *)self growWithInt:(3 * withInt)];
  v9 = OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithCharArray_withInt_withInt_withByteArray_(array, int, withInt, self->ref_->bytes_);
  ref = self->ref_;
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  ref->length_ = v9;
}

- (id)toBytesRef
{
  ref = self->ref_;
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  v3 = JavaUtilArrays_copyOfWithByteArray_withInt_(ref->bytes_, ref->length_);
  v4 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_(v3);

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilBytesRefBuilder;
  [(OrgApacheLuceneUtilBytesRefBuilder *)&v3 dealloc];
}

@end