@interface OrgApacheLuceneSearchFieldComparator_IntComparator
- (OrgApacheLuceneSearchFieldComparator_IntComparator)initWithInt:(int)int withNSString:(id)string withJavaLangInteger:(id)integer;
- (id)valueWithInt:(int)int;
- (int)compareBottomWithInt:(int)int;
- (int)compareTopWithInt:(int)int;
- (int)compareWithInt:(int)int withInt:(int)withInt;
- (void)copy__WithInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)setBottomWithInt:(int)int;
- (void)setTopValueWithId:(id)id;
@end

@implementation OrgApacheLuceneSearchFieldComparator_IntComparator

- (OrgApacheLuceneSearchFieldComparator_IntComparator)initWithInt:(int)int withNSString:(id)string withJavaLangInteger:(id)integer
{
  OrgApacheLuceneSearchFieldComparator_NumericComparator_initWithNSString_withNSNumber_(self, string, integer);
  JreStrongAssignAndConsume(&self->values_, [IOSIntArray newArrayWithLength:int]);
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

  v7 = *(&values->super.size_ + withInt + 1);
  v6 = *(&values->super.size_ + int + 1);

  return JavaLangInteger_compareWithInt_withInt_(v6, v7);
}

- (int)compareBottomWithInt:(int)int
{
  currentReaderValues = self->super.currentReaderValues_;
  if (!currentReaderValues)
  {
    goto LABEL_14;
  }

  v5 = *&int;
  intValue = [(OrgApacheLuceneIndexNumericDocValues *)currentReaderValues getWithInt:?];
  docsWithField = self->super.docsWithField_;
  if (docsWithField)
  {
    v8 = intValue == 0;
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
    intValue = 0;
    goto LABEL_11;
  }

  missingValue = self->super.missingValue_;
  if (!missingValue)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  intValue = [(NSNumber *)missingValue intValue];
LABEL_11:
  bottom = self->bottom_;

  return JavaLangInteger_compareWithInt_withInt_(bottom, intValue);
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
  intValue = [(OrgApacheLuceneIndexNumericDocValues *)currentReaderValues getWithInt:*&withInt];
  docsWithField = self->super.docsWithField_;
  if (docsWithField)
  {
    v10 = intValue == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    if (([(OrgApacheLuceneUtilBits *)docsWithField getWithInt:v6]& 1) != 0)
    {
      intValue = 0;
    }

    else
    {
      missingValue = self->super.missingValue_;
      if (!missingValue)
      {
        goto LABEL_15;
      }

      intValue = [(NSNumber *)missingValue intValue];
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

  *(&values->super.size_ + v7 + 1) = intValue;
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

  self->bottom_ = *(&values->super.size_ + int + 1);
}

- (void)setTopValueWithId:(id)id
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  self->topValue_ = [id intValue];
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

  v5 = *(&values->super.size_ + int + 1);

  return JavaLangInteger_valueOfWithInt_(v5);
}

- (int)compareTopWithInt:(int)int
{
  currentReaderValues = self->super.currentReaderValues_;
  if (!currentReaderValues)
  {
    goto LABEL_14;
  }

  v5 = *&int;
  intValue = [(OrgApacheLuceneIndexNumericDocValues *)currentReaderValues getWithInt:?];
  docsWithField = self->super.docsWithField_;
  if (docsWithField)
  {
    v8 = intValue == 0;
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
    intValue = 0;
    goto LABEL_11;
  }

  missingValue = self->super.missingValue_;
  if (!missingValue)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  intValue = [(NSNumber *)missingValue intValue];
LABEL_11:
  topValue = self->topValue_;

  return JavaLangInteger_compareWithInt_withInt_(topValue, intValue);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldComparator_IntComparator;
  [(OrgApacheLuceneSearchFieldComparator_NumericComparator *)&v3 dealloc];
}

@end