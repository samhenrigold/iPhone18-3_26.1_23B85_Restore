@interface OrgApacheLuceneSearchBooleanQuery
- (BOOL)isEqual:(id)equal;
- (id)clone;
- (id)createWeightWithOrgApacheLuceneSearchIndexSearcher:(id)searcher withBoolean:(BOOL)boolean;
- (id)getClauses;
- (id)iterator;
- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)reader;
- (id)toStringWithNSString:(id)string;
- (unint64_t)hash;
- (void)addWithOrgApacheLuceneSearchBooleanClause:(id)clause;
- (void)addWithOrgApacheLuceneSearchQuery:(id)query withOrgApacheLuceneSearchBooleanClause_OccurEnum:(id)enum;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchBooleanQuery

- (id)iterator
{
  v3 = *&self->minimumNumberShouldMatch_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 iterator];
}

- (id)createWeightWithOrgApacheLuceneSearchIndexSearcher:(id)searcher withBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  selfCopy = self;
  if (!boolean)
  {
    self = sub_1000E41B8(self);
  }

  v7 = new_OrgApacheLuceneSearchBooleanWeight_initWithOrgApacheLuceneSearchBooleanQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withBoolean_(self, searcher, booleanCopy, *(&selfCopy->super.boost_ + 5));

  return v7;
}

- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)reader
{
  if (*&self->mutable__)
  {
    goto LABEL_6;
  }

  v5 = *&self->minimumNumberShouldMatch_;
  if (!v5)
  {
    goto LABEL_28;
  }

  if ([v5 size] != 1)
  {
    goto LABEL_6;
  }

  v6 = [*&self->minimumNumberShouldMatch_ getWithInt:0];
  if (!v6)
  {
    goto LABEL_28;
  }

  v7 = v6;
  if ([v6 isProhibited])
  {
LABEL_6:
    v8 = [OrgApacheLuceneSearchBooleanQuery_Builder alloc];
    v9 = new_JavaUtilArrayList_init();
    JreStrongAssignAndConsume(&v8->clauses_, v9);
    v10 = v8;
    [(OrgApacheLuceneSearchBooleanQuery_Builder *)v10 setDisableCoordWithBoolean:[(OrgApacheLuceneSearchBooleanQuery *)self isCoordDisabled]];
    [(OrgApacheLuceneSearchBooleanQuery_Builder *)v10 setMinimumNumberShouldMatchWithInt:[(OrgApacheLuceneSearchBooleanQuery *)self getMinimumNumberShouldMatch]];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = [(OrgApacheLuceneSearchBooleanQuery *)self countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(self);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          if (!v16)
          {
            goto LABEL_28;
          }

          getQuery = [*(*(&v30 + 1) + 8 * i) getQuery];
          if (!getQuery)
          {
            goto LABEL_28;
          }

          v18 = getQuery;
          v19 = [getQuery rewriteWithOrgApacheLuceneIndexIndexReader:reader];
          v13 |= v19 != v18;
          -[OrgApacheLuceneSearchBooleanQuery_Builder addWithOrgApacheLuceneSearchQuery:withOrgApacheLuceneSearchBooleanClause_OccurEnum:](v10, "addWithOrgApacheLuceneSearchQuery:withOrgApacheLuceneSearchBooleanClause_OccurEnum:", v19, [v16 getOccur]);
        }

        v12 = [(OrgApacheLuceneSearchBooleanQuery *)self countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v12);
      if (v13)
      {
        build = [(OrgApacheLuceneSearchBooleanQuery_Builder *)v10 build];
        if (build)
        {
          clone = build;
          [(OrgApacheLuceneSearchQuery *)self getBoost];
LABEL_18:
          v23 = clone;
LABEL_30:
          [(OrgApacheLuceneSearchQuery *)v23 setBoostWithFloat:v22];
          return clone;
        }

        goto LABEL_28;
      }
    }

    v29.receiver = self;
    v29.super_class = OrgApacheLuceneSearchBooleanQuery;
    return [(OrgApacheLuceneSearchQuery *)&v29 rewriteWithOrgApacheLuceneIndexIndexReader:reader];
  }

  else
  {
    getQuery2 = [v7 getQuery];
    if (!getQuery2)
    {
      goto LABEL_28;
    }

    clone = [getQuery2 rewriteWithOrgApacheLuceneIndexIndexReader:reader];
    if (![v7 isScoring])
    {
      v23 = new_OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_(clone);
      clone = v23;
      v22 = 0.0;
      goto LABEL_30;
    }

    [(OrgApacheLuceneSearchQuery *)self getBoost];
    if (v25 != 1.0)
    {
      if (clone == [v7 getQuery])
      {
        if (!clone)
        {
          goto LABEL_28;
        }

        clone = [(OrgApacheLuceneSearchQuery *)clone clone];
      }

      [(OrgApacheLuceneSearchQuery *)self getBoost];
      if (clone)
      {
        v27 = v26;
        [(OrgApacheLuceneSearchQuery *)clone getBoost];
        *&v22 = v27 * *&v22;
        goto LABEL_18;
      }

LABEL_28:
      JreThrowNullPointerException();
    }
  }

  return clone;
}

- (id)toStringWithNSString:(id)string
{
  v5 = new_JavaLangStringBuilder_init();
  [(OrgApacheLuceneSearchQuery *)self getBoost];
  if (v6 == 1.0 && [(OrgApacheLuceneSearchBooleanQuery *)self getMinimumNumberShouldMatch]< 1)
  {
    v23 = 0;
  }

  else
  {
    -[JavaLangStringBuilder appendWithNSString:](v5, "appendWithNSString:", @"(");
    v23 = 1;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [(OrgApacheLuceneSearchBooleanQuery *)self countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v26;
    do
    {
      v11 = 0;
      v24 = v9 + v8;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(self);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        if (!v12)
        {
          goto LABEL_28;
        }

        getOccur = [*(*(&v25 + 1) + 8 * v11) getOccur];
        if (!getOccur)
        {
          goto LABEL_28;
        }

        -[JavaLangStringBuilder appendWithNSString:](v5, "appendWithNSString:", [getOccur description]);
        getQuery = [v12 getQuery];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          -[JavaLangStringBuilder appendWithNSString:](v5, "appendWithNSString:", @"(");
          if (!getQuery)
          {
            goto LABEL_28;
          }

          -[JavaLangStringBuilder appendWithNSString:](v5, "appendWithNSString:", [getQuery toStringWithNSString:string]);
          v15 = v5;
          v16 = @"");
        }

        else
        {
          if (!getQuery)
          {
            goto LABEL_28;
          }

          v16 = [getQuery toStringWithNSString:string];
          v15 = v5;
        }

        [(JavaLangStringBuilder *)v15 appendWithNSString:v16];
        v17 = *&self->minimumNumberShouldMatch_;
        if (!v17)
        {
LABEL_28:
          JreThrowNullPointerException();
        }

        if (v9 != [v17 size] - 1)
        {
          [(JavaLangStringBuilder *)v5 appendWithNSString:@" "];
        }

        ++v9;
        ++v11;
      }

      while (v8 != v11);
      v8 = [(OrgApacheLuceneSearchBooleanQuery *)self countByEnumeratingWithState:&v25 objects:v29 count:16];
      v9 = v24;
    }

    while (v8);
  }

  if (v23)
  {
    [(JavaLangStringBuilder *)v5 appendWithNSString:@""]);
  }

  if ([(OrgApacheLuceneSearchBooleanQuery *)self getMinimumNumberShouldMatch]>= 1)
  {
    [(JavaLangStringBuilder *)v5 appendWithChar:126];
    [(JavaLangStringBuilder *)v5 appendWithInt:[(OrgApacheLuceneSearchBooleanQuery *)self getMinimumNumberShouldMatch]];
  }

  [(OrgApacheLuceneSearchQuery *)self getBoost];
  if (v18 != 1.0)
  {
    getBoost = [(OrgApacheLuceneSearchQuery *)self getBoost];
    [(JavaLangStringBuilder *)v5 appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_(v21, getBoost, v20)];
  }

  return [(JavaLangStringBuilder *)v5 description];
}

- (BOOL)isEqual:(id)equal
{
  v9.receiver = self;
  v9.super_class = OrgApacheLuceneSearchBooleanQuery;
  v5 = [(OrgApacheLuceneSearchQuery *)&v9 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if (!equal)
    {
      [(OrgApacheLuceneSearchBooleanQuery *)self getMinimumNumberShouldMatch];
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    getMinimumNumberShouldMatch = [(OrgApacheLuceneSearchBooleanQuery *)self getMinimumNumberShouldMatch];
    if (getMinimumNumberShouldMatch == [equal getMinimumNumberShouldMatch] && *(&self->super.boost_ + 5) == *(equal + 13))
    {
      v7 = *&self->minimumNumberShouldMatch_;
      if (!v7)
      {
        JreThrowNullPointerException();
      }

      LOBYTE(v5) = [v7 isEqual:*(equal + 20)];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = OrgApacheLuceneSearchBooleanQuery;
  v3 = [(OrgApacheLuceneSearchQuery *)&v10 hash];
  v11[0] = JavaLangBoolean_valueOfWithBoolean_(*(&self->super.boost_ + 5));
  v4 = JavaLangInteger_valueOfWithInt_(*&self->mutable__);
  v5 = *&self->minimumNumberShouldMatch_;
  v11[1] = v4;
  v11[2] = v5;
  v7 = [IOSObjectArray arrayWithObjects:v11 count:3 type:NSObject_class_(v4, v6)];
  return (OrgLukhnosPortmobileUtilObjects_hash__WithNSObjectArray_(v7, v8) - v3 + 32 * v3);
}

- (id)getClauses
{
  v2 = *&self->minimumNumberShouldMatch_;
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = [*&self->minimumNumberShouldMatch_ size];
  v5 = [IOSObjectArray arrayWithLength:v3 type:OrgApacheLuceneSearchBooleanClause_class_(v3, v4)];

  return [v2 toArrayWithNSObjectArray:v5];
}

- (id)clone
{
  v6.receiver = self;
  v6.super_class = OrgApacheLuceneSearchBooleanQuery;
  clone = [(OrgApacheLuceneSearchQuery *)&v6 clone];
  objc_opt_class();
  if (!clone)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v4 = new_JavaUtilArrayList_initWithJavaUtilCollection_(*&self->minimumNumberShouldMatch_);
  JreStrongAssignAndConsume((clone + 20), v4);
  return clone;
}

- (void)addWithOrgApacheLuceneSearchQuery:(id)query withOrgApacheLuceneSearchBooleanClause_OccurEnum:(id)enum
{
  v5 = new_OrgApacheLuceneSearchBooleanClause_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(query, enum);

  [(OrgApacheLuceneSearchBooleanQuery *)self addWithOrgApacheLuceneSearchBooleanClause:v5];
}

- (void)addWithOrgApacheLuceneSearchBooleanClause:(id)clause
{
  sub_1000E4CEC(self, @"add", clause, v3, v4, v5, v6, v7);
  OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(clause, @"BooleanClause must not be null");
  v10 = *&self->minimumNumberShouldMatch_;
  if (!v10)
  {
    JreThrowNullPointerException();
  }

  v11 = [v10 size];
  if (v11 >= dword_10054EE60)
  {
    v13 = new_OrgApacheLuceneSearchBooleanQuery_TooManyClauses_init();
    objc_exception_throw(v13);
  }

  v12 = *&self->minimumNumberShouldMatch_;

  [v12 addWithId:clause];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchBooleanQuery;
  [(OrgApacheLuceneSearchBooleanQuery *)&v3 dealloc];
}

@end