@interface OrgApacheLuceneSearchFieldComparator_LongComparator
- (OrgApacheLuceneSearchFieldComparator_LongComparator)initWithInt:(int)int withNSString:(id)string withJavaLangLong:(id)long;
- (id)valueWithInt:(int)int;
- (int)compareBottomWithInt:(int)int;
- (int)compareTopWithInt:(int)int;
- (int)compareWithInt:(int)int withInt:(int)withInt;
- (void)copy__WithInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)setBottomWithInt:(int)int;
- (void)setTopValueWithId:(id)id;
@end

@implementation OrgApacheLuceneSearchFieldComparator_LongComparator

- (OrgApacheLuceneSearchFieldComparator_LongComparator)initWithInt:(int)int withNSString:(id)string withJavaLangLong:(id)long
{
  OrgApacheLuceneSearchFieldComparator_NumericComparator_initWithNSString_withNSNumber_(self, string, long);
  JreStrongAssignAndConsume(&self->values_, [IOSLongArray newArrayWithLength:int]);
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

  return JavaLangLong_compareWithLong_withLong_(v7, v6);
}

- (int)compareBottomWithInt:(int)int
{
  currentReaderValues = self->super.currentReaderValues_;
  if (!currentReaderValues)
  {
    goto LABEL_14;
  }

  v5 = *&int;
  longLongValue = [(OrgApacheLuceneIndexNumericDocValues *)currentReaderValues getWithInt:?];
  docsWithField = self->super.docsWithField_;
  if (docsWithField)
  {
    v8 = longLongValue == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  if (([(OrgApacheLuceneUtilBits *)docsWithField getWithInt:v5]& 1) != 0)
  {
    longLongValue = 0;
    goto LABEL_11;
  }

  missingValue = self->super.missingValue_;
  if (!missingValue)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  longLongValue = [(NSNumber *)missingValue longLongValue];
LABEL_11:
  bottom = self->bottom_;

  return JavaLangLong_compareWithLong_withLong_(bottom, longLongValue);
}

- (void)copy__WithInt:(int)int withInt:(int)withInt
{
  currentReaderValues = self->super.currentReaderValues_;
  if (!currentReaderValues)
  {
    goto LABEL_15;
  }

  v6 = *&withInt;
  v7 = *&int;
  longLongValue = [(OrgApacheLuceneIndexNumericDocValues *)currentReaderValues getWithInt:*&withInt];
  docsWithField = self->super.docsWithField_;
  if (docsWithField)
  {
    v10 = longLongValue == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    if (([(OrgApacheLuceneUtilBits *)docsWithField getWithInt:v6]& 1) != 0)
    {
      longLongValue = 0;
    }

    else
    {
      missingValue = self->super.missingValue_;
      if (!missingValue)
      {
        goto LABEL_15;
      }

      longLongValue = [(NSNumber *)missingValue longLongValue];
    }
  }

  values = self->values_;
  if (!values)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  size = values->super.size_;
  if ((v7 & 0x80000000) != 0 || size <= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7);
  }

  values->buffer_[v7] = longLongValue;
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

  self->topValue_ = [id longLongValue];
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

  return JavaLangLong_valueOfWithLong_(v5, a2);
}

- (int)compareTopWithInt:(int)int
{
  currentReaderValues = self->super.currentReaderValues_;
  if (!currentReaderValues)
  {
    goto LABEL_14;
  }

  v5 = *&int;
  longLongValue = [(OrgApacheLuceneIndexNumericDocValues *)currentReaderValues getWithInt:?];
  docsWithField = self->super.docsWithField_;
  if (docsWithField)
  {
    v8 = longLongValue == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  if (([(OrgApacheLuceneUtilBits *)docsWithField getWithInt:v5]& 1) != 0)
  {
    longLongValue = 0;
    goto LABEL_11;
  }

  missingValue = self->super.missingValue_;
  if (!missingValue)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  longLongValue = [(NSNumber *)missingValue longLongValue];
LABEL_11:
  topValue = self->topValue_;

  return JavaLangLong_compareWithLong_withLong_(topValue, longLongValue);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldComparator_LongComparator;
  [(OrgApacheLuceneSearchFieldComparator_NumericComparator *)&v3 dealloc];
}

@end