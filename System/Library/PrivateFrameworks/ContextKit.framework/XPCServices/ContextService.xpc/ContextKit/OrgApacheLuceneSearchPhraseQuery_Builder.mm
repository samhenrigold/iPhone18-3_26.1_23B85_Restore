@interface OrgApacheLuceneSearchPhraseQuery_Builder
- (OrgApacheLuceneSearchPhraseQuery_Builder)init;
- (id)addWithOrgApacheLuceneIndexTerm:(id)term;
- (id)addWithOrgApacheLuceneIndexTerm:(id)term withInt:(int)int;
- (id)build;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchPhraseQuery_Builder

- (OrgApacheLuceneSearchPhraseQuery_Builder)init
{
  self->slop_ = 0;
  v3 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&self->terms_, v3);
  v4 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&self->positions_, v4);
  return self;
}

- (id)addWithOrgApacheLuceneIndexTerm:(id)term
{
  positions = self->positions_;
  if (!positions)
  {
    goto LABEL_9;
  }

  if (([(JavaUtilList *)positions isEmpty]& 1) != 0)
  {
    v6 = 0;
    goto LABEL_6;
  }

  v7 = [(JavaUtilList *)self->positions_ getWithInt:[(JavaUtilList *)self->positions_ size]- 1];
  if (!v7)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v6 = [v7 intValue] + 1;
LABEL_6:

  return [(OrgApacheLuceneSearchPhraseQuery_Builder *)self addWithOrgApacheLuceneIndexTerm:term withInt:v6];
}

- (id)addWithOrgApacheLuceneIndexTerm:(id)term withInt:(int)int
{
  if (!term)
  {
    goto LABEL_18;
  }

  field = [term field];
  bytes = [term bytes];
  v10 = OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_(bytes, v9);
  v11 = new_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(field, v10);
  if (int < 0)
  {
    v34 = JreStrcat("$I", v12, v13, v14, v15, v16, v17, v18, @"Positions must be >= 0, got ");
    goto LABEL_17;
  }

  v19 = v11;
  positions = self->positions_;
  if (!positions)
  {
    goto LABEL_18;
  }

  if (([(JavaUtilList *)positions isEmpty]& 1) == 0)
  {
    v21 = [(JavaUtilList *)self->positions_ getWithInt:[(JavaUtilList *)self->positions_ size]- 1];
    if (!v21)
    {
      goto LABEL_18;
    }

    if ([v21 intValue] > int)
    {
      v34 = JreStrcat("$I$I", v22, v23, v24, v25, v26, v27, v28, @"Positions must be added in order, got ");
      goto LABEL_17;
    }
  }

  terms = self->terms_;
  if (!terms)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  if (([(JavaUtilList *)terms isEmpty]& 1) == 0)
  {
    field2 = [(OrgApacheLuceneIndexTerm *)v19 field];
    if (field2)
    {
      v31 = field2;
      v32 = [(JavaUtilList *)self->terms_ getWithInt:0];
      if (v32)
      {
        if ([v31 isEqual:{objc_msgSend(v32, "field")}])
        {
          goto LABEL_12;
        }

        [(OrgApacheLuceneIndexTerm *)v19 field];
        v35 = [(JavaUtilList *)self->terms_ getWithInt:0];
        if (v35)
        {
          [v35 field];
          v34 = JreStrcat("$$$$", v36, v37, v38, v39, v40, v41, v42, @"All terms must be on the same field, got ");
LABEL_17:
          v43 = new_JavaLangIllegalArgumentException_initWithNSString_(v34);
          objc_exception_throw(v43);
        }
      }
    }

    goto LABEL_18;
  }

LABEL_12:
  [(JavaUtilList *)self->terms_ addWithId:v19];
  [(JavaUtilList *)self->positions_ addWithId:JavaLangInteger_valueOfWithInt_(int)];
  return self;
}

- (id)build
{
  terms = self->terms_;
  if (!terms)
  {
    goto LABEL_13;
  }

  v4 = [(JavaUtilList *)self->terms_ size];
  v6 = [(JavaUtilList *)terms toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:v4 type:OrgApacheLuceneIndexTerm_class_(v4, v5)]];
  positions = self->positions_;
  if (!positions)
  {
    goto LABEL_13;
  }

  v8 = [IOSIntArray arrayWithLength:[(JavaUtilList *)positions size]];
  v9 = v8;
  if (v8->super.size_ >= 1)
  {
    v10 = 0;
    v11 = v8;
    while (1)
    {
      v12 = [(JavaUtilList *)self->positions_ getWithInt:v10];
      if (!v12)
      {
        break;
      }

      intValue = [v12 intValue];
      v14 = *(v9 + 8);
      if (v10 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v10);
      }

      *(&v11->super.size_ + 1) = intValue;
      ++v10;
      v11 = (v11 + 4);
      if (v10 >= *(v9 + 8))
      {
        goto LABEL_10;
      }
    }

LABEL_13:
    JreThrowNullPointerException();
  }

LABEL_10:
  slop = self->slop_;
  v16 = [OrgApacheLuceneSearchPhraseQuery alloc];
  sub_1000AC334(v16, slop, v6, v9);

  return v16;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchPhraseQuery_Builder;
  [(OrgApacheLuceneSearchPhraseQuery_Builder *)&v3 dealloc];
}

@end