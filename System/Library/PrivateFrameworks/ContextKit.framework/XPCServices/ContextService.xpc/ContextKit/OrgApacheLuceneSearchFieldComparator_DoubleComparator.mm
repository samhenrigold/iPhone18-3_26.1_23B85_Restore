@interface OrgApacheLuceneSearchFieldComparator_DoubleComparator
- (OrgApacheLuceneSearchFieldComparator_DoubleComparator)initWithInt:(int)int withNSString:(id)string withJavaLangDouble:(id)double;
- (id)valueWithInt:(int)int;
- (int)compareBottomWithInt:(int)int;
- (int)compareTopWithInt:(int)int;
- (int)compareWithInt:(int)int withInt:(int)withInt;
- (void)copy__WithInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)setBottomWithInt:(int)int;
- (void)setTopValueWithId:(id)id;
@end

@implementation OrgApacheLuceneSearchFieldComparator_DoubleComparator

- (OrgApacheLuceneSearchFieldComparator_DoubleComparator)initWithInt:(int)int withNSString:(id)string withJavaLangDouble:(id)double
{
  OrgApacheLuceneSearchFieldComparator_NumericComparator_initWithNSString_withNSNumber_(self, string, double);
  JreStrongAssignAndConsume(&self->values_, [IOSDoubleArray newArrayWithLength:int]);
  return self;
}

- (int)compareWithInt:(int)int withInt:(int)withInt
{
  values = self->values_;
  if (!values)
  {
    JreThrowNullPointerException();
  }

  size = values->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  if (withInt < 0 || size <= withInt)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&withInt);
  }

  v6 = values->buffer_[withInt];
  v7 = values->buffer_[int];

  return JavaLangDouble_compareWithDouble_withDouble_(v7, v6);
}

- (int)compareBottomWithInt:(int)int
{
  currentReaderValues = self->super.currentReaderValues_;
  if (!currentReaderValues)
  {
    goto LABEL_10;
  }

  v5 = *&int;
  v6 = [(OrgApacheLuceneIndexNumericDocValues *)currentReaderValues getWithInt:?];
  v8 = JavaLangDouble_longBitsToDoubleWithLong_(v6, v7);
  v9 = v8;
  docsWithField = self->super.docsWithField_;
  if (docsWithField && v8 == 0.0 && ([(OrgApacheLuceneUtilBits *)docsWithField getWithInt:v5]& 1) == 0)
  {
    missingValue = self->super.missingValue_;
    if (missingValue)
    {
      [(NSNumber *)missingValue doubleValue];
      v9 = v12;
      goto LABEL_7;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

LABEL_7:
  bottom = self->bottom_;

  return JavaLangDouble_compareWithDouble_withDouble_(bottom, v9);
}

- (void)copy__WithInt:(int)int withInt:(int)withInt
{
  currentReaderValues = self->super.currentReaderValues_;
  if (!currentReaderValues)
  {
    goto LABEL_11;
  }

  v6 = *&withInt;
  v7 = *&int;
  v8 = [(OrgApacheLuceneIndexNumericDocValues *)currentReaderValues getWithInt:*&withInt];
  v10 = JavaLangDouble_longBitsToDoubleWithLong_(v8, v9);
  v11 = v10;
  docsWithField = self->super.docsWithField_;
  if (docsWithField && v10 == 0.0 && ([(OrgApacheLuceneUtilBits *)docsWithField getWithInt:v6]& 1) == 0)
  {
    missingValue = self->super.missingValue_;
    if (!missingValue)
    {
      goto LABEL_11;
    }

    [(NSNumber *)missingValue doubleValue];
    v11 = v14;
  }

  values = self->values_;
  if (!values)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  size = values->super.size_;
  if ((v7 & 0x80000000) != 0 || size <= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7);
  }

  values->buffer_[v7] = v11;
}

- (void)setBottomWithInt:(int)int
{
  values = self->values_;
  if (!values)
  {
    JreThrowNullPointerException();
  }

  size = values->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  self->bottom_ = values->buffer_[int];
}

- (void)setTopValueWithId:(id)id
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  [id doubleValue];
  self->topValue_ = v4;
}

- (id)valueWithInt:(int)int
{
  values = self->values_;
  if (!values)
  {
    JreThrowNullPointerException();
  }

  size = values->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  v5 = values->buffer_[int];

  return JavaLangDouble_valueOfWithDouble_(size, a2, v5);
}

- (int)compareTopWithInt:(int)int
{
  currentReaderValues = self->super.currentReaderValues_;
  if (!currentReaderValues)
  {
    goto LABEL_10;
  }

  v5 = *&int;
  v6 = [(OrgApacheLuceneIndexNumericDocValues *)currentReaderValues getWithInt:?];
  v8 = JavaLangDouble_longBitsToDoubleWithLong_(v6, v7);
  v9 = v8;
  docsWithField = self->super.docsWithField_;
  if (docsWithField && v8 == 0.0 && ([(OrgApacheLuceneUtilBits *)docsWithField getWithInt:v5]& 1) == 0)
  {
    missingValue = self->super.missingValue_;
    if (missingValue)
    {
      [(NSNumber *)missingValue doubleValue];
      v9 = v12;
      goto LABEL_7;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

LABEL_7:
  topValue = self->topValue_;

  return JavaLangDouble_compareWithDouble_withDouble_(topValue, v9);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldComparator_DoubleComparator;
  [(OrgApacheLuceneSearchFieldComparator_NumericComparator *)&v3 dealloc];
}

@end