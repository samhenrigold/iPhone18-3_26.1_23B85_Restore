@interface OrgApacheLuceneIndexBaseCompositeReader
- (id)getTermVectorsWithInt:(int)int;
- (int)docFreqWithOrgApacheLuceneIndexTerm:(id)term;
- (int)getDocCountWithNSString:(id)string;
- (int)readerBaseWithInt:(int)int;
- (int64_t)getSumDocFreqWithNSString:(id)string;
- (int64_t)getSumTotalTermFreqWithNSString:(id)string;
- (int64_t)totalTermFreqWithOrgApacheLuceneIndexTerm:(id)term;
- (void)dealloc;
- (void)documentWithInt:(int)int withOrgApacheLuceneIndexStoredFieldVisitor:(id)visitor;
@end

@implementation OrgApacheLuceneIndexBaseCompositeReader

- (id)getTermVectorsWithInt:(int)int
{
  v3 = *&int;
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  v11 = sub_10014054C(self, v3, v5, v6, v7, v8, v9, v10);
  subReaders = self->subReaders_;
  if (!subReaders)
  {
    goto LABEL_11;
  }

  v13 = v11;
  size = subReaders->super.size_;
  if ((v13 & 0x80000000) != 0 || v13 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v13);
  }

  v15 = (&subReaders->elementType_)[v13];
  if (!v15 || (starts = self->starts_) == 0)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v17 = starts->super.size_;
  if ((v13 & 0x80000000) != 0 || v13 >= v17)
  {
    IOSArray_throwOutOfBoundsWithMsg(v17, v13);
  }

  v18 = (v3 - *(&starts->super.size_ + v13 + 1));

  return [(IOSClass *)v15 getTermVectorsWithInt:v18];
}

- (void)documentWithInt:(int)int withOrgApacheLuceneIndexStoredFieldVisitor:(id)visitor
{
  v5 = *&int;
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  v13 = sub_10014054C(self, v5, v7, v8, v9, v10, v11, v12);
  subReaders = self->subReaders_;
  if (!subReaders)
  {
    goto LABEL_11;
  }

  v15 = v13;
  size = subReaders->super.size_;
  if ((v15 & 0x80000000) != 0 || v15 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v15);
  }

  v17 = (&subReaders->elementType_)[v15];
  if (!v17 || (starts = self->starts_) == 0)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v19 = starts->super.size_;
  if ((v15 & 0x80000000) != 0 || v15 >= v19)
  {
    IOSArray_throwOutOfBoundsWithMsg(v19, v15);
  }

  v20 = (v5 - *(&starts->super.size_ + v15 + 1));

  [(IOSClass *)v17 documentWithInt:v20 withOrgApacheLuceneIndexStoredFieldVisitor:visitor];
}

- (int)docFreqWithOrgApacheLuceneIndexTerm:(id)term
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  subReaders = self->subReaders_;
  if (!subReaders)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  v6 = 0;
  v7 = 0;
  while (v6 < subReaders->super.size_)
  {
    v8 = (&subReaders->elementType_)[v6];
    if (v8)
    {
      v7 += [(IOSClass *)v8 docFreqWithOrgApacheLuceneIndexTerm:term];
      ++v6;
      subReaders = self->subReaders_;
      if (subReaders)
      {
        continue;
      }
    }

    goto LABEL_6;
  }

  return v7;
}

- (int64_t)totalTermFreqWithOrgApacheLuceneIndexTerm:(id)term
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  subReaders = self->subReaders_;
  if (!subReaders)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  v6 = 0;
  v7 = 0;
  while (v6 < subReaders->super.size_)
  {
    v8 = (&subReaders->elementType_)[v6];
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = [(IOSClass *)v8 totalTermFreqWithOrgApacheLuceneIndexTerm:term];
    if (v9 == -1)
    {
      return -1;
    }

    v7 += v9;
    ++v6;
    subReaders = self->subReaders_;
    if (!subReaders)
    {
      goto LABEL_7;
    }
  }

  return v7;
}

- (int64_t)getSumDocFreqWithNSString:(id)string
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  subReaders = self->subReaders_;
  if (!subReaders)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v6 = 0;
  p_elementType = &subReaders->elementType_;
  v8 = &(&subReaders->elementType_)[subReaders->super.size_];
  while (p_elementType < v8)
  {
    v9 = *p_elementType;
    if (!*p_elementType)
    {
      goto LABEL_8;
    }

    ++p_elementType;
    v10 = [v9 getSumDocFreqWithNSString:string];
    v6 += v10;
    if (v10 == -1)
    {
      return -1;
    }
  }

  return v6;
}

- (int)getDocCountWithNSString:(id)string
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  subReaders = self->subReaders_;
  if (!subReaders)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v6 = 0;
  p_elementType = &subReaders->elementType_;
  v8 = &(&subReaders->elementType_)[subReaders->super.size_];
  while (p_elementType < v8)
  {
    v9 = *p_elementType;
    if (!*p_elementType)
    {
      goto LABEL_8;
    }

    ++p_elementType;
    v10 = [v9 getDocCountWithNSString:string];
    v6 += v10;
    if (v10 == -1)
    {
      return -1;
    }
  }

  return v6;
}

- (int64_t)getSumTotalTermFreqWithNSString:(id)string
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  subReaders = self->subReaders_;
  if (!subReaders)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v6 = 0;
  p_elementType = &subReaders->elementType_;
  v8 = &(&subReaders->elementType_)[subReaders->super.size_];
  while (p_elementType < v8)
  {
    v9 = *p_elementType;
    if (!*p_elementType)
    {
      goto LABEL_8;
    }

    ++p_elementType;
    v10 = [v9 getSumTotalTermFreqWithNSString:string];
    v6 += v10;
    if (v10 == -1)
    {
      return -1;
    }
  }

  return v6;
}

- (int)readerBaseWithInt:(int)int
{
  if (int < 0)
  {
    goto LABEL_9;
  }

  subReaders = self->subReaders_;
  if (!subReaders)
  {
    goto LABEL_7;
  }

  if (subReaders->super.size_ <= int)
  {
LABEL_9:
    v7 = new_JavaLangIllegalArgumentException_initWithNSString_(@"readerIndex must be >= 0 and < getSequentialSubReaders().size()");
    objc_exception_throw(v7);
  }

  starts = self->starts_;
  if (!starts)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  size = starts->super.size_;
  if (size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  return *(&starts->super.size_ + int + 1);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexBaseCompositeReader;
  [(OrgApacheLuceneIndexIndexReader *)&v3 dealloc];
}

@end