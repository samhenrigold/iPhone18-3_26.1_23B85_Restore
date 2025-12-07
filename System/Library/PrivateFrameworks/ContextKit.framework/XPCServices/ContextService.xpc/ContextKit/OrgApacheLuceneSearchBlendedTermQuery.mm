@interface OrgApacheLuceneSearchBlendedTermQuery
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)reader;
- (id)toStringWithNSString:(id)string;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchBlendedTermQuery

- (BOOL)isEqual:(id)equal
{
  v8.receiver = self;
  v8.super_class = OrgApacheLuceneSearchBlendedTermQuery;
  v5 = [(OrgApacheLuceneSearchQuery *)&v8 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if (!equal)
    {
      goto LABEL_11;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v5 = JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(*(&self->super.boost_ + 1), *(equal + 12));
    if (v5)
    {
      v5 = JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(*(&self->boosts_ + 4), *(equal + 28));
      if (v5)
      {
        v5 = JavaUtilArrays_equalsWithFloatArray_withFloatArray_(*(&self->terms_ + 4), *(equal + 20));
        if (v5)
        {
          v6 = *(&self->contexts_ + 4);
          if (v6)
          {
            LOBYTE(v5) = [v6 isEqual:*(equal + 36)];
            return v5;
          }

LABEL_11:
          JreThrowNullPointerException();
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = OrgApacheLuceneSearchBlendedTermQuery;
  v3 = [(OrgApacheLuceneSearchQuery *)&v10 hash];
  v4 = JavaUtilArrays_hashCodeWithNSObjectArray_(*(&self->super.boost_ + 1));
  v5 = JavaUtilArrays_hashCodeWithNSObjectArray_(*(&self->boosts_ + 4));
  v7 = JavaUtilArrays_hashCodeWithFloatArray_(*(&self->terms_ + 4), v6);
  if (!*(&self->contexts_ + 4))
  {
    JreThrowNullPointerException();
  }

  v8 = v5 - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
  return ([*(&self->contexts_ + 4) hash] - (v7 - v8 + 32 * v8) + 32 * (v7 - v8 + 32 * v8));
}

- (id)toStringWithNSString:(id)string
{
  v5 = objc_autorelease(new_JavaLangStringBuilder_initWithNSString_(@"Blended("));
  v6 = *(&self->super.boost_ + 1);
  if (!v6)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v7 = v5;
  v8 = 0;
  while (1)
  {
    v9 = *(v6 + 8);
    if (v8 >= v9)
    {
      break;
    }

    if (v8)
    {
      [(JavaLangStringBuilder *)v7 appendWithNSString:@" "];
      v6 = *(&self->super.boost_ + 1);
      v9 = *(v6 + 8);
    }

    if (v8 >= v9)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, v8);
    }

    v10 = new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(*(v6 + 24 + 8 * v8));
    v12 = *(&self->terms_ + 4);
    if (v12)
    {
      v13 = v10;
      v14 = *(v12 + 8);
      if (v8 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v8);
      }

      LODWORD(v11) = *(v12 + 12 + 4 * v8);
      [(OrgApacheLuceneSearchQuery *)v13 setBoostWithFloat:v11];
      [(JavaLangStringBuilder *)v7 appendWithNSString:[(OrgApacheLuceneSearchTermQuery *)v13 toStringWithNSString:string]];
      ++v8;
      v6 = *(&self->super.boost_ + 1);
      if (v6)
      {
        continue;
      }
    }

    goto LABEL_16;
  }

  [(JavaLangStringBuilder *)v7 appendWithNSString:@""]);

  return [(JavaLangStringBuilder *)v7 description];
}

- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)reader
{
  selfCopy = self;
  v4 = *(&self->boosts_ + 4);
  if (!v4)
  {
    goto LABEL_62;
  }

  getContext = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(v4, v4[2]);
  if (!getContext)
  {
    goto LABEL_62;
  }

  v8 = getContext;
  v9 = *(getContext + 8);
  v10 = &OBJC_IVAR___OrgApacheLuceneIndexTermContext_topReaderContext_;
  if (v9 >= 1)
  {
    v11 = 0;
    while (1)
    {
      v12 = *(v8 + 24 + 8 * v11);
      if (!v12)
      {
        break;
      }

      if (!reader)
      {
        goto LABEL_62;
      }

      v13 = *(v12 + 8);
      getContext = [reader getContext];
      if (v13 != getContext)
      {
        goto LABEL_10;
      }

LABEL_13:
      ++v11;
      v9 = *(v8 + 8);
      if (v11 >= v9)
      {
        v19 = v9;
        goto LABEL_17;
      }
    }

    if (!reader)
    {
      goto LABEL_62;
    }

LABEL_10:
    getContext2 = [reader getContext];
    v15 = *(&selfCopy->super.boost_ + 1);
    if (!v15)
    {
      goto LABEL_62;
    }

    v16 = getContext2;
    v17 = *(v15 + 8);
    if (v11 >= v17)
    {
      IOSArray_throwOutOfBoundsWithMsg(v17, v11);
    }

    v18 = OrgApacheLuceneIndexTermContext_buildWithOrgApacheLuceneIndexIndexReaderContext_withOrgApacheLuceneIndexTerm_(v16, *(v15 + 24 + 8 * v11));
    getContext = IOSObjectArray_Set(v8, v11, v18);
    goto LABEL_13;
  }

  v19 = v9;
LABEL_17:
  v20 = (v8 + 24);
  v21 = v8 + 24 + 8 * v19;
  if (v8 + 24 >= v21)
  {
    v23 = 0;
    v22 = 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v25 = *v20++;
      v24 = v25;
      if (!v25)
      {
        goto LABEL_62;
      }

      v22 = JavaLangMath_maxWithInt_withInt_(v22, [v24 docFreq]);
      getContext = [v24 totalTermFreq];
      if (getContext == -1 || v23 == -1)
      {
        v23 = -1;
      }

      else
      {
        getContext = [v24 totalTermFreq];
        v23 += getContext;
      }
    }

    while (v20 < v21);
    v9 = *(v8 + 8);
  }

  if (v9 >= 1)
  {
    v27 = 0;
    v28 = selfCopy;
    do
    {
      v29 = *(v8 + 24 + 8 * v27);
      if (atomic_load_explicit(OrgApacheLuceneSearchBlendedTermQuery__initialized, memory_order_acquire))
      {
        if (!v29)
        {
          goto LABEL_62;
        }
      }

      else
      {
        sub_1000361F0();
        if (!v29)
        {
          goto LABEL_62;
        }
      }

      v30 = *&v29[*v10];
      if (!v30)
      {
        goto LABEL_62;
      }

      leaves = [v30 leaves];
      if (leaves)
      {
        v32 = [leaves size];
      }

      else
      {
        v32 = 1;
      }

      v33 = v10;
      v34 = new_OrgApacheLuceneIndexTermContext_initWithOrgApacheLuceneIndexIndexReaderContext_(*&v29[*v10]);
      if (v32 >= 1)
      {
        v35 = 0;
        do
        {
          v36 = [v29 getWithInt:v35];
          if (v36)
          {
            [(OrgApacheLuceneIndexTermContext *)v34 register__WithOrgApacheLuceneIndexTermState:v36 withInt:v35];
          }

          v35 = (v35 + 1);
        }

        while (v32 != v35);
      }

      [(OrgApacheLuceneIndexTermContext *)v34 accumulateStatisticsWithInt:v22 withLong:v23];
      getContext = IOSObjectArray_Set(v8, v27++, v34);
      v10 = v33;
    }

    while (v27 < *(v8 + 8));
    selfCopy = v28;
  }

  v37 = *(&selfCopy->super.boost_ + 1);
  if (!v37)
  {
LABEL_62:
    JreThrowNullPointerException();
  }

  v38 = [IOSObjectArray arrayWithLength:*(v37 + 8) type:OrgApacheLuceneSearchTermQuery_class_(getContext, v7)];
  v39 = *(&selfCopy->super.boost_ + 1);
  if (*(v39 + 8) >= 1)
  {
    v40 = 0;
    do
    {
      v41 = *(v8 + 8);
      if (v40 >= v41)
      {
        IOSArray_throwOutOfBoundsWithMsg(v41, v40);
      }

      initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneIndexTermContext = new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneIndexTermContext_(*(v39 + 24 + 8 * v40), *(v8 + 24 + 8 * v40));
      IOSObjectArray_SetAndConsume(v38, v40, initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneIndexTermContext);
      size = v38->super.size_;
      if (v40 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v40);
      }

      v45 = (&v38->elementType_)[v40];
      if (!v45)
      {
        goto LABEL_62;
      }

      v46 = *(&selfCopy->terms_ + 4);
      if (!v46)
      {
        goto LABEL_62;
      }

      v47 = *(v46 + 8);
      if (v40 >= v47)
      {
        IOSArray_throwOutOfBoundsWithMsg(v47, v40);
      }

      LODWORD(v43) = *(v46 + 12 + 4 * v40);
      [(IOSClass *)v45 setBoostWithFloat:v43];
      ++v40;
      v39 = *(&selfCopy->super.boost_ + 1);
    }

    while (v40 < *(v39 + 8));
  }

  v48 = *(&selfCopy->contexts_ + 4);
  if (!v48)
  {
    goto LABEL_62;
  }

  v49 = [v48 rewriteWithOrgApacheLuceneSearchQueryArray:v38];
  if (!v49)
  {
    goto LABEL_62;
  }

  v50 = v49;
  [(OrgApacheLuceneSearchQuery *)selfCopy getBoost];
  [v50 setBoostWithFloat:?];
  return v50;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchBlendedTermQuery;
  [(OrgApacheLuceneSearchBlendedTermQuery *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchBlendedTermQuery_BOOLEAN_REWRITE_, [OrgApacheLuceneSearchBlendedTermQuery__1 alloc]);
    v2 = [OrgApacheLuceneSearchBlendedTermQuery_DisjunctionMaxRewrite alloc];
    v2->tieBreakerMultiplier_ = 0.01;
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchBlendedTermQuery_DISJUNCTION_MAX_REWRITE_, v2);
    atomic_store(1u, OrgApacheLuceneSearchBlendedTermQuery__initialized);
  }
}

@end