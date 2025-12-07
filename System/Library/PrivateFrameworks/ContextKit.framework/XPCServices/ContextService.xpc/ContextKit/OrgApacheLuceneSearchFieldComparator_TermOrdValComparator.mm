@interface OrgApacheLuceneSearchFieldComparator_TermOrdValComparator
- (id)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (id)getSortedDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(id)context withNSString:(id)string;
- (id)valueWithInt:(int)int;
- (int)compareBottomWithInt:(int)int;
- (int)compareTopWithInt:(int)int;
- (int)compareValuesWithId:(id)id withId:(id)withId;
- (int)compareWithInt:(int)int withInt:(int)withInt;
- (void)copy__WithInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)setBottomWithInt:(int)int;
@end

@implementation OrgApacheLuceneSearchFieldComparator_TermOrdValComparator

- (int)compareWithInt:(int)int withInt:(int)withInt
{
  readerGen = self->readerGen_;
  if (!readerGen)
  {
    goto LABEL_27;
  }

  size = readerGen->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  v7 = readerGen;
  v8 = *(&readerGen->super.size_ + int + 1);
  if (withInt < 0 || size <= withInt)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&withInt);
  }

  if (v8 == *(&v7->super.size_ + withInt + 1))
  {
    ords = self->ords_;
    if (ords)
    {
      v10 = ords->super.size_;
      if (int < 0 || v10 <= int)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, *&int);
      }

      if (withInt < 0 || v10 <= withInt)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, *&withInt);
      }

      return *(&ords->super.size_ + int + 1) - *(&ords->super.size_ + withInt + 1);
    }

LABEL_27:
    JreThrowNullPointerException();
  }

  values = self->values_;
  if (!values)
  {
    goto LABEL_27;
  }

  v13 = values->super.size_;
  if (int < 0 || v13 <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, *&int);
  }

  v14 = (&values->elementType_)[int];
  if (withInt < 0 || v13 <= withInt)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, *&withInt);
  }

  v15 = (&values->elementType_)[withInt];
  if (v14)
  {
    if (v15)
    {

      return [(IOSClass *)v14 compareToWithId:?];
    }

    else
    {
      return -self->missingSortCmp_;
    }
  }

  else if (v15)
  {
    return self->missingSortCmp_;
  }

  else
  {
    return 0;
  }
}

- (int)compareBottomWithInt:(int)int
{
  termsIndex = self->termsIndex_;
  if (!termsIndex)
  {
    JreThrowNullPointerException();
  }

  missingOrd = [(OrgApacheLuceneIndexSortedDocValues *)termsIndex getOrdWithInt:*&int];
  if (missingOrd == -1)
  {
    missingOrd = self->missingOrd_;
  }

  bottomOrd = self->bottomOrd_;
  v7 = __OFSUB__(bottomOrd, missingOrd);
  v8 = bottomOrd - missingOrd;
  if (v8 < 0 != v7)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  if (self->bottomSameReader_)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

- (void)copy__WithInt:(int)int withInt:(int)withInt
{
  termsIndex = self->termsIndex_;
  if (!termsIndex)
  {
    goto LABEL_25;
  }

  v6 = *&int;
  v7 = [(OrgApacheLuceneIndexSortedDocValues *)termsIndex getOrdWithInt:*&withInt];
  if (v7 == -1)
  {
    values = self->values_;
    if (!values)
    {
      goto LABEL_25;
    }

    LODWORD(v9) = self->missingOrd_;
    v21 = v6;
    v19 = 0;
  }

  else
  {
    tempBRs = self->tempBRs_;
    if (!tempBRs)
    {
      goto LABEL_25;
    }

    v9 = v7;
    size = tempBRs->super.size_;
    if ((v6 & 0x80000000) != 0 || (v11 = self->tempBRs_, size <= v6))
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v6);
    }

    if (!(&tempBRs->elementType_)[v6])
    {
      v12 = new_OrgApacheLuceneUtilBytesRefBuilder_init();
      IOSObjectArray_SetAndConsume(tempBRs, v6, v12);
      v11 = self->tempBRs_;
    }

    v13 = v11->super.size_;
    if ((v6 & 0x80000000) != 0 || v13 <= v6)
    {
      IOSArray_throwOutOfBoundsWithMsg(v13, v6);
    }

    v14 = (&v11->elementType_)[v6];
    if (!v14)
    {
      goto LABEL_25;
    }

    [(IOSClass *)v14 copyBytesWithOrgApacheLuceneUtilBytesRef:[(OrgApacheLuceneIndexSortedDocValues *)self->termsIndex_ lookupOrdWithInt:v9]];
    v15 = self->values_;
    if (!v15)
    {
      goto LABEL_25;
    }

    v16 = self->tempBRs_;
    v17 = v16->super.size_;
    if ((v6 & 0x80000000) != 0 || v17 <= v6)
    {
      IOSArray_throwOutOfBoundsWithMsg(v17, v6);
    }

    v18 = (&v16->elementType_)[v6];
    if (!v18)
    {
LABEL_25:
      JreThrowNullPointerException();
    }

    v19 = [(IOSClass *)v18 get];
    values = v15;
    v21 = v6;
  }

  IOSObjectArray_Set(values, v21, v19);
  ords = self->ords_;
  if (!ords)
  {
    goto LABEL_25;
  }

  v23 = ords->super.size_;
  if ((v6 & 0x80000000) != 0 || v23 <= v6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, v6);
  }

  *(&ords->super.size_ + v6 + 1) = v9;
  readerGen = self->readerGen_;
  if (!readerGen)
  {
    goto LABEL_25;
  }

  currentReaderGen = self->currentReaderGen_;
  v26 = readerGen->super.size_;
  if ((v6 & 0x80000000) != 0 || v26 <= v6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v26, v6);
  }

  *(&readerGen->super.size_ + v6 + 1) = currentReaderGen;
}

- (id)getSortedDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(id)context withNSString:(id)string
{
  if (!context)
  {
    JreThrowNullPointerException();
  }

  reader = [context reader];

  return OrgApacheLuceneIndexDocValues_getSortedWithOrgApacheLuceneIndexLeafReader_withNSString_(reader, string);
}

- (id)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  JreStrongAssign(&self->termsIndex_, [(OrgApacheLuceneSearchFieldComparator_TermOrdValComparator *)self getSortedDocValuesWithOrgApacheLuceneIndexLeafReaderContext:context withNSString:self->field_]);
  ++self->currentReaderGen_;
  if (self->topValue_)
  {
    termsIndex = self->termsIndex_;
    if (!termsIndex)
    {
      JreThrowNullPointerException();
    }

    v5 = [(OrgApacheLuceneIndexSortedDocValues *)termsIndex lookupTermWithOrgApacheLuceneUtilBytesRef:?];
    if (v5 < 0)
    {
      self->topSameReader_ = 0;
      self->topOrd_ = -2 - v5;
    }

    else
    {
      self->topSameReader_ = 1;
      self->topOrd_ = v5;
    }
  }

  else
  {
    self->topOrd_ = self->missingOrd_;
    self->topSameReader_ = 1;
  }

  if (self->bottomSlot_ != -1)
  {
    [(OrgApacheLuceneSearchFieldComparator_TermOrdValComparator *)self setBottomWithInt:?];
  }

  return self;
}

- (void)setBottomWithInt:(int)int
{
  self->bottomSlot_ = int;
  values = self->values_;
  if (!values)
  {
    goto LABEL_25;
  }

  size = values->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  JreStrongAssign(&self->bottomValue_, (&values->elementType_)[int]);
  readerGen = self->readerGen_;
  if (!readerGen)
  {
    goto LABEL_25;
  }

  bottomSlot = self->bottomSlot_;
  v8 = readerGen->super.size_;
  if (bottomSlot < 0 || bottomSlot >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, bottomSlot);
  }

  if (self->currentReaderGen_ == *(&readerGen->super.size_ + bottomSlot + 1))
  {
    ords = self->ords_;
    if (ords)
    {
      v10 = self->bottomSlot_;
      v11 = ords->super.size_;
      if (v10 < 0 || v10 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v10);
      }

      self->bottomOrd_ = *(&ords->super.size_ + v10 + 1);
      self->bottomSameReader_ = 1;
      return;
    }

LABEL_25:
    JreThrowNullPointerException();
  }

  if (self->bottomValue_)
  {
    termsIndex = self->termsIndex_;
    if (!termsIndex)
    {
      goto LABEL_25;
    }

    v13 = [(OrgApacheLuceneIndexSortedDocValues *)termsIndex lookupTermWithOrgApacheLuceneUtilBytesRef:?];
    if (v13 < 0)
    {
      self->bottomOrd_ = -2 - v13;
      self->bottomSameReader_ = 0;
      return;
    }

    self->bottomOrd_ = v13;
    self->bottomSameReader_ = 1;
    v14 = self->readerGen_;
    v15 = self->bottomSlot_;
    v16 = v14->super.size_;
    if (v15 < 0 || v15 >= v16)
    {
      IOSArray_throwOutOfBoundsWithMsg(v16, v15);
    }

    *(&v14->super.size_ + v15 + 1) = self->currentReaderGen_;
    v17 = self->ords_;
    if (!v17)
    {
      goto LABEL_25;
    }

    v18 = self->bottomSlot_;
    v19 = v17->super.size_;
    if (v18 < 0 || v18 >= v19)
    {
      IOSArray_throwOutOfBoundsWithMsg(v19, v18);
    }

    *(&v17->super.size_ + v18 + 1) = self->bottomOrd_;
  }

  else
  {
    self->bottomOrd_ = self->missingOrd_;
    self->bottomSameReader_ = 1;
    v20 = self->readerGen_;
    v21 = self->bottomSlot_;
    v22 = v20->super.size_;
    if (v21 < 0 || v21 >= v22)
    {
      IOSArray_throwOutOfBoundsWithMsg(v22, v21);
    }

    *(&v20->super.size_ + v21 + 1) = self->currentReaderGen_;
  }
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

  return (&values->elementType_)[int];
}

- (int)compareTopWithInt:(int)int
{
  termsIndex = self->termsIndex_;
  if (!termsIndex)
  {
    JreThrowNullPointerException();
  }

  missingOrd = [(OrgApacheLuceneIndexSortedDocValues *)termsIndex getOrdWithInt:*&int];
  if (missingOrd == -1)
  {
    missingOrd = self->missingOrd_;
  }

  topOrd = self->topOrd_;
  v7 = __OFSUB__(topOrd, missingOrd);
  v8 = topOrd - missingOrd;
  if (v8 < 0 != v7)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  if (self->topSameReader_)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

- (int)compareValuesWithId:(id)id withId:(id)withId
{
  if (id)
  {
    if (withId)
    {
      return [id compareToWithId:withId];
    }

    else
    {
      return -self->missingSortCmp_;
    }
  }

  else if (withId)
  {
    return self->missingSortCmp_;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldComparator_TermOrdValComparator;
  [(OrgApacheLuceneSearchFieldComparator_TermOrdValComparator *)&v3 dealloc];
}

@end