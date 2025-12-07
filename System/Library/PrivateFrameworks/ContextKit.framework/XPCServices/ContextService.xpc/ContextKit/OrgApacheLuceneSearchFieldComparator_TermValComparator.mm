@interface OrgApacheLuceneSearchFieldComparator_TermValComparator
- (BOOL)isNullWithInt:(int)int withOrgApacheLuceneUtilBytesRef:(id)ref;
- (id)getBinaryDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(id)context withNSString:(id)string;
- (id)getComparableBytesWithInt:(int)int withOrgApacheLuceneUtilBytesRef:(id)ref;
- (id)getDocsWithFieldWithOrgApacheLuceneIndexLeafReaderContext:(id)context withNSString:(id)string;
- (id)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (id)valueWithInt:(int)int;
- (int)compareBottomWithInt:(int)int;
- (int)compareTopWithInt:(int)int;
- (int)compareValuesWithId:(id)id withId:(id)withId;
- (int)compareWithInt:(int)int withInt:(int)withInt;
- (void)copy__WithInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)setBottomWithInt:(int)int;
@end

@implementation OrgApacheLuceneSearchFieldComparator_TermValComparator

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

  v7 = (&values->elementType_)[withInt];
  v8 = (&values->elementType_)[int];

  return [(OrgApacheLuceneSearchFieldComparator_TermValComparator *)self compareValuesWithId:v8 withId:v7];
}

- (int)compareBottomWithInt:(int)int
{
  docTerms = self->docTerms_;
  if (!docTerms || (v5 = *&int, (v6 = [(OrgApacheLuceneIndexBinaryDocValues *)docTerms getWithInt:?]) == 0))
  {
    JreThrowNullPointerException();
  }

  v7 = v6;
  if (!v6[5] && [(OrgApacheLuceneSearchFieldComparator_TermValComparator *)self isNullWithInt:v5 withOrgApacheLuceneUtilBytesRef:v6])
  {
    v7 = 0;
  }

  bottom = self->bottom_;

  return [(OrgApacheLuceneSearchFieldComparator_TermValComparator *)self compareValuesWithId:bottom withId:v7];
}

- (void)copy__WithInt:(int)int withInt:(int)withInt
{
  docTerms = self->docTerms_;
  if (!docTerms)
  {
    goto LABEL_23;
  }

  v6 = *&withInt;
  v7 = *&int;
  v8 = [(OrgApacheLuceneIndexBinaryDocValues *)docTerms getWithInt:*&withInt];
  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = v8;
  if (!v8[5] && [(OrgApacheLuceneSearchFieldComparator_TermValComparator *)self isNullWithInt:v6 withOrgApacheLuceneUtilBytesRef:v8])
  {
    values = self->values_;
    if (values)
    {
      v11 = v7;
      v12 = 0;
      goto LABEL_20;
    }

LABEL_23:
    JreThrowNullPointerException();
  }

  tempBRs = self->tempBRs_;
  if (!tempBRs)
  {
    goto LABEL_23;
  }

  size = tempBRs->super.size_;
  if ((v7 & 0x80000000) != 0 || (v15 = self->tempBRs_, size <= v7))
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7);
  }

  if (!(&tempBRs->elementType_)[v7])
  {
    v16 = new_OrgApacheLuceneUtilBytesRefBuilder_init();
    IOSObjectArray_SetAndConsume(tempBRs, v7, v16);
    v15 = self->tempBRs_;
  }

  v17 = v15->super.size_;
  if ((v7 & 0x80000000) != 0 || v17 <= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v17, v7);
  }

  v18 = (&v15->elementType_)[v7];
  if (!v18)
  {
    goto LABEL_23;
  }

  [(IOSClass *)v18 copyBytesWithOrgApacheLuceneUtilBytesRef:v9];
  v19 = self->values_;
  if (!v19)
  {
    goto LABEL_23;
  }

  v20 = self->tempBRs_;
  v21 = v20->super.size_;
  if ((v7 & 0x80000000) != 0 || v21 <= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v21, v7);
  }

  v22 = (&v20->elementType_)[v7];
  if (!v22)
  {
    goto LABEL_23;
  }

  v12 = [(IOSClass *)v22 get];
  values = v19;
  v11 = v7;
LABEL_20:

  IOSObjectArray_Set(values, v11, v12);
}

- (id)getBinaryDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(id)context withNSString:(id)string
{
  if (!context)
  {
    JreThrowNullPointerException();
  }

  reader = [context reader];

  return OrgApacheLuceneIndexDocValues_getBinaryWithOrgApacheLuceneIndexLeafReader_withNSString_(reader, string);
}

- (id)getDocsWithFieldWithOrgApacheLuceneIndexLeafReaderContext:(id)context withNSString:(id)string
{
  if (!context)
  {
    JreThrowNullPointerException();
  }

  reader = [context reader];

  return OrgApacheLuceneIndexDocValues_getDocsWithFieldWithOrgApacheLuceneIndexLeafReader_withNSString_(reader, string);
}

- (BOOL)isNullWithInt:(int)int withOrgApacheLuceneUtilBytesRef:(id)ref
{
  docsWithField = self->docsWithField_;
  if (docsWithField)
  {
    LOBYTE(docsWithField) = [(OrgApacheLuceneUtilBits *)docsWithField getWithInt:*&int, ref]^ 1;
  }

  return docsWithField;
}

- (id)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  JreStrongAssign(&self->docTerms_, [(OrgApacheLuceneSearchFieldComparator_TermValComparator *)self getBinaryDocValuesWithOrgApacheLuceneIndexLeafReaderContext:context withNSString:self->field_]);
  JreStrongAssign(&self->docsWithField_, [(OrgApacheLuceneSearchFieldComparator_TermValComparator *)self getDocsWithFieldWithOrgApacheLuceneIndexLeafReaderContext:context withNSString:self->field_]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    JreStrongAssign(&self->docsWithField_, 0);
  }

  return self;
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

  v6 = (&values->elementType_)[int];

  JreStrongAssign(&self->bottom_, v6);
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

- (int)compareTopWithInt:(int)int
{
  docTerms = self->docTerms_;
  if (!docTerms || (v5 = *&int, (v6 = [(OrgApacheLuceneIndexBinaryDocValues *)docTerms getWithInt:?]) == 0))
  {
    JreThrowNullPointerException();
  }

  v7 = v6;
  if (!v6[5] && [(OrgApacheLuceneSearchFieldComparator_TermValComparator *)self isNullWithInt:v5 withOrgApacheLuceneUtilBytesRef:v6])
  {
    v7 = 0;
  }

  topValue = self->topValue_;

  return [(OrgApacheLuceneSearchFieldComparator_TermValComparator *)self compareValuesWithId:topValue withId:v7];
}

- (id)getComparableBytesWithInt:(int)int withOrgApacheLuceneUtilBytesRef:(id)ref
{
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  refCopy = ref;
  if (!*(ref + 5) && [(OrgApacheLuceneSearchFieldComparator_TermValComparator *)self isNullWithInt:*&int withOrgApacheLuceneUtilBytesRef:ref])
  {
    return 0;
  }

  return refCopy;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldComparator_TermValComparator;
  [(OrgApacheLuceneSearchFieldComparator_TermValComparator *)&v3 dealloc];
}

@end