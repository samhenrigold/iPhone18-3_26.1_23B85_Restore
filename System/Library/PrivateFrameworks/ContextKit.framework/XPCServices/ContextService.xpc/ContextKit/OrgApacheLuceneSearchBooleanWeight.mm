@interface OrgApacheLuceneSearchBooleanWeight
- (float)coordWithInt:(int)int withInt:(int)withInt;
- (float)getValueForNormalization;
- (id)BOOLeanScorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (id)bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (id)explainWithOrgApacheLuceneIndexLeafReaderContext:(id)context withInt:(int)int;
- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (void)dealloc;
- (void)extractTermsWithJavaUtilSet:(id)set;
- (void)normalizeWithFloat:(float)float withFloat:(float)withFloat;
@end

@implementation OrgApacheLuceneSearchBooleanWeight

- (void)extractTermsWithJavaUtilSet:(id)set
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  query = self->query_;
  if (!query)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v6 = [(OrgApacheLuceneSearchBooleanQuery *)self->query_ countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(query);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (!v11)
        {
          goto LABEL_17;
        }

        if (([*(*(&v14 + 1) + 8 * i) isScoring] & 1) != 0 || !self->needsScores_ && (objc_msgSend(v11, "isProhibited") & 1) == 0)
        {
          weights = self->weights_;
          if (!weights)
          {
            goto LABEL_17;
          }

          v13 = [(JavaUtilArrayList *)weights getWithInt:v8];
          if (!v13)
          {
            goto LABEL_17;
          }

          [v13 extractTermsWithJavaUtilSet:set];
        }

        v8 = (v8 + 1);
      }

      v7 = [(OrgApacheLuceneSearchBooleanQuery *)query countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (float)getValueForNormalization
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  query = self->query_;
  if (!query)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  v4 = [(OrgApacheLuceneSearchBooleanQuery *)self->query_ countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(query);
        }

        weights = self->weights_;
        if (!weights)
        {
          goto LABEL_15;
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [(JavaUtilArrayList *)weights getWithInt:v6, v19];
        if (!v12)
        {
          goto LABEL_15;
        }

        [v12 getValueForNormalization];
        if (!v11)
        {
          goto LABEL_15;
        }

        v14 = v13;
        if ([v11 isScoring])
        {
          v8 = v8 + v14;
        }

        v6 = (v6 + 1);
      }

      v5 = [(OrgApacheLuceneSearchBooleanQuery *)query countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v8 = 0.0;
  }

  [(OrgApacheLuceneSearchQuery *)self->query_ getBoost];
  v16 = v15;
  [(OrgApacheLuceneSearchQuery *)self->query_ getBoost];
  return v8 * (v16 * v17);
}

- (float)coordWithInt:(int)int withInt:(int)withInt
{
  if (int)
  {
    LODWORD(v5) = 1.0;
    if (withInt != 1)
    {
      similarity = self->similarity_;
      if (!similarity)
      {
        JreThrowNullPointerException();
      }

      [(OrgApacheLuceneSearchSimilaritiesSimilarity *)similarity coordWithInt:v5 withInt:?];
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  return *&v5;
}

- (void)normalizeWithFloat:(float)float withFloat:(float)withFloat
{
  query = self->query_;
  if (!query || ([(OrgApacheLuceneSearchQuery *)query getBoost], v9 = v8, v19 = 0u, v20 = 0u, v21 = 0u, v22 = 0u, (weights = self->weights_) == 0))
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v11 = [(JavaUtilArrayList *)weights countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v14 = v11;
    v15 = v9 * withFloat;
    v16 = *v20;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(weights);
        }

        v18 = *(*(&v19 + 1) + 8 * i);
        if (!v18)
        {
          goto LABEL_12;
        }

        *&v12 = float;
        *&v13 = v15;
        [v18 normalizeWithFloat:v12 withFloat:{v13, v19}];
      }

      v14 = [(JavaUtilArrayList *)weights countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }
}

- (id)explainWithOrgApacheLuceneIndexLeafReaderContext:(id)context withInt:(int)int
{
  selfCopy = self;
  query = self->query_;
  if (!query || (v6 = *&int, v8 = [(OrgApacheLuceneSearchBooleanQuery *)query getMinimumNumberShouldMatch], v96 = new_JavaUtilArrayList_init(), v9 = [(OrgApacheLuceneSearchBooleanQuery *)selfCopy->query_ iterator], (weights = selfCopy->weights_) == 0) || (v11 = [(JavaUtilArrayList *)weights iterator]) == 0)
  {
LABEL_43:
    JreThrowNullPointerException();
  }

  v12 = v11;
  v92 = v8;
  if ([v11 hasNext])
  {
    v91 = selfCopy;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v95 = 0;
    v23 = 0.0;
    v94 = v6;
    do
    {
      next = [v12 next];
      if (!v9)
      {
        goto LABEL_43;
      }

      v25 = next;
      next2 = [v9 next];
      if (!v25)
      {
        goto LABEL_43;
      }

      v27 = next2;
      v28 = [v25 explainWithOrgApacheLuceneIndexLeafReaderContext:context withInt:v6];
      if (!v28)
      {
        goto LABEL_43;
      }

      v29 = v28;
      if ([v28 isMatch])
      {
        if (!v27)
        {
          goto LABEL_43;
        }

        if ([v27 isScoring])
        {
          [(JavaUtilArrayList *)v96 addWithId:v29];
          [v29 getValue];
          v23 = v23 + v30;
          v95 = (v95 + 1);
        }

        else if ([v27 isRequired])
        {
          v93 = v21;
          v49 = v20;
          contextCopy = context;
          v51 = v22;
          if ((atomic_load_explicit(OrgApacheLuceneSearchBooleanClause_OccurEnum__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_10002605C();
          }

          v52 = JreStrcat("@$", v42, v43, v44, v45, v46, v47, v48, qword_100557BA0);
          v54 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_(v52, v53)];
          v101[0] = OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(0.0, v52, v54);
          v101[1] = v29;
          v56 = [IOSObjectArray arrayWithObjects:v101 count:2 type:OrgApacheLuceneSearchExplanation_class_(v101[0], v55)];
          [(JavaUtilArrayList *)v96 addWithId:OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(0.0, @"match on required clause, product of:", v56)];
          v22 = v51;
          context = contextCopy;
          v20 = v49;
          v21 = v93;
          v6 = v94;
        }

        else if ([v27 isProhibited])
        {
          getQuery = [v27 getQuery];
          if (!getQuery)
          {
            goto LABEL_43;
          }

          [getQuery description];
          v65 = JreStrcat("$$C", v58, v59, v60, v61, v62, v63, v64, @"match on prohibited clause (");
          v100 = v29;
          v6 = v94;
          v67 = [IOSObjectArray arrayWithObjects:&v100 count:1 type:OrgApacheLuceneSearchExplanation_class_(v65, v66)];
          v68 = v65;
          v22 = 1;
          [(JavaUtilArrayList *)v96 addWithId:OrgApacheLuceneSearchExplanation_noMatchWithNSString_withOrgApacheLuceneSearchExplanationArray_(v68, v67)];
        }

        isProhibited = [v27 isProhibited];
        getOccur = [v27 getOccur];
        if ((atomic_load_explicit(OrgApacheLuceneSearchBooleanClause_OccurEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_10002605C();
        }

        v21 += isProhibited ^ 1;
        if (getOccur == qword_100557BA8)
        {
          ++v20;
        }
      }

      else
      {
        if (!v27)
        {
          goto LABEL_43;
        }

        if ([v27 isRequired])
        {
          getQuery2 = [v27 getQuery];
          if (!getQuery2)
          {
            goto LABEL_43;
          }

          [getQuery2 description];
          v39 = JreStrcat("$$C", v32, v33, v34, v35, v36, v37, v38, @"no match on required clause (");
          v99 = v29;
          v6 = v94;
          v41 = [IOSObjectArray arrayWithObjects:&v99 count:1 type:OrgApacheLuceneSearchExplanation_class_(v39, v40)];
          [(JavaUtilArrayList *)v96 addWithId:OrgApacheLuceneSearchExplanation_noMatchWithNSString_withOrgApacheLuceneSearchExplanationArray_(v39, v41)];
          v22 = 1;
        }
      }
    }

    while (([v12 hasNext] & 1) != 0);
    v73 = v21 == 0;
    selfCopy = v91;
    v71 = v95;
    if (v22)
    {
      v72 = @"Failure to meet condition(s) of required/prohibited clause(s)";
      return OrgApacheLuceneSearchExplanation_noMatchWithNSString_withJavaUtilCollection_(v72, v96);
    }
  }

  else
  {
    v71 = 0;
    v20 = 0;
    v23 = 0.0;
    v73 = 1;
  }

  if (v73)
  {
    v72 = @"No matching clauses";
    return OrgApacheLuceneSearchExplanation_noMatchWithNSString_withJavaUtilCollection_(v72, v96);
  }

  if (v20 < v92)
  {
    v72 = JreStrcat("$I", v13, v14, v15, v16, v17, v18, v19, @"Failure to match minimum number of optional clauses: ");
    return OrgApacheLuceneSearchExplanation_noMatchWithNSString_withJavaUtilCollection_(v72, v96);
  }

  v75 = OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withJavaUtilCollection_(v23, @"sum of:", v96);
  if (!selfCopy->disableCoord_)
  {
    [(OrgApacheLuceneSearchBooleanWeight *)selfCopy coordWithInt:v71 withInt:selfCopy->maxCoord_];
    v85 = v84;
    if (v84 != 1.0)
    {
      v97 = v75;
      v86 = JreStrcat("$ICIC", v77, v78, v79, v80, v81, v82, v83, @"coord(");
      v88 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_(v86, v87)];
      v98 = OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(v85, v86, v88);
      v90 = [IOSObjectArray arrayWithObjects:&v97 count:2 type:OrgApacheLuceneSearchExplanation_class_(v98, v89)];
      return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(v23 * v85, @"product of:", v90);
    }
  }

  return v75;
}

- (id)BOOLeanScorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  bulkScorerSize = self->bulkScorerSize_;
  if (!bulkScorerSize)
  {
    return 0;
  }

  v6 = new_JavaUtilArrayList_initWithInt_(bulkScorerSize);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  weights = self->weights_;
  if (!weights)
  {
    goto LABEL_20;
  }

  v8 = v6;
  v9 = [(JavaUtilArrayList *)self->weights_ countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(weights);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if (!v13)
        {
          goto LABEL_20;
        }

        v14 = [v13 bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:{context, v23}];
        if (v14)
        {
          [(JavaUtilArrayList *)v8 addWithId:v14];
        }
      }

      v10 = [(JavaUtilArrayList *)weights countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v15 = [(JavaUtilArrayList *)v8 size];
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  query = self->query_;
  if (!query)
  {
LABEL_20:
    JreThrowNullPointerException();
  }

  if ([(OrgApacheLuceneSearchBooleanQuery *)query getMinimumNumberShouldMatch]<= v16)
  {
    v19 = self->query_;
    if (v19)
    {
      maxCoord = self->maxCoord_;
      disableCoord = self->disableCoord_;
      v22 = JavaLangMath_maxWithInt_withInt_(1, [(OrgApacheLuceneSearchBooleanQuery *)v19 getMinimumNumberShouldMatch]);
      return new_OrgApacheLuceneSearchBooleanScorer_initWithOrgApacheLuceneSearchBooleanWeight_withBoolean_withInt_withJavaUtilCollection_withInt_withBoolean_(self, disableCoord, maxCoord, v8, v22, self->needsScores_);
    }

    goto LABEL_20;
  }

  return 0;
}

- (id)bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  v5 = [(OrgApacheLuceneSearchBooleanWeight *)self BOOLeanScorerWithOrgApacheLuceneIndexLeafReaderContext:?];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  query = self->query_;
  if (!query)
  {
    goto LABEL_11;
  }

  if ([(OrgApacheLuceneSearchBooleanQuery *)query getMinimumNumberShouldMatch]< 2)
  {
    v8 = -1;
    goto LABEL_8;
  }

  if (!context || (v9 = [context reader]) == 0)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v8 = [v9 maxDoc] / 3;
LABEL_8:
  if ([v6 cost] <= v8)
  {
LABEL_9:
    v11.receiver = self;
    v11.super_class = OrgApacheLuceneSearchBooleanWeight;
    return [(OrgApacheLuceneSearchWeight *)&v11 bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:context];
  }

  return v6;
}

- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  query = self->query_;
  if (!query || (v6 = [(OrgApacheLuceneSearchBooleanQuery *)query getMinimumNumberShouldMatch], v7 = new_JavaUtilArrayList_init(), v53 = new_JavaUtilArrayList_init(), v52 = new_JavaUtilArrayList_init(), v8 = new_JavaUtilArrayList_init(), v9 = [(OrgApacheLuceneSearchBooleanQuery *)self->query_ iterator], v54 = 0u, v55 = 0u, v56 = 0u, v57 = 0u, (weights = self->weights_) == 0))
  {
LABEL_39:
    JreThrowNullPointerException();
  }

  v11 = v9;
  v50 = v6;
  selfCopy = self;
  v12 = [(JavaUtilArrayList *)weights countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v55;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v55 != v14)
        {
          objc_enumerationMutation(weights);
        }

        if (!v11)
        {
          goto LABEL_39;
        }

        v16 = *(*(&v54 + 1) + 8 * i);
        next = [v11 next];
        if (!v16)
        {
          goto LABEL_39;
        }

        v18 = next;
        v19 = [v16 scorerWithOrgApacheLuceneIndexLeafReaderContext:context];
        if (v19)
        {
          if (!v18)
          {
            goto LABEL_39;
          }

          v20 = v19;
          if (![v18 isRequired])
          {
            if ([v18 isProhibited])
            {
              v22 = v52;
            }

            else
            {
              v22 = v8;
            }

LABEL_21:
            [(JavaUtilArrayList *)v22 addWithId:v20];
            continue;
          }

          [(JavaUtilArrayList *)v7 addWithId:v20];
          isScoring = [v18 isScoring];
          v22 = v53;
          if (isScoring)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (!v18)
          {
            goto LABEL_39;
          }

          if ([v18 isRequired])
          {
            return 0;
          }
        }
      }

      v13 = [(JavaUtilArrayList *)weights countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v13);
  }

  v23 = v50;
  if ([(JavaUtilArrayList *)v8 size]== v50)
  {
    [(JavaUtilArrayList *)v7 addAllWithJavaUtilCollection:v8];
    [(JavaUtilArrayList *)v53 addAllWithJavaUtilCollection:v8];
    [(JavaUtilArrayList *)v8 clear];
    v23 = 0;
  }

  if ([(JavaUtilArrayList *)v7 isEmpty]&& [(JavaUtilArrayList *)v8 isEmpty]|| [(JavaUtilArrayList *)v8 size]< v23)
  {
    return 0;
  }

  if (!selfCopy->needsScores_ && !v23 && [(JavaUtilArrayList *)v7 size]>= 1)
  {
    [(JavaUtilArrayList *)v8 clear];
  }

  if ([(JavaUtilArrayList *)v8 isEmpty])
  {
    v25 = sub_1000DA07C(selfCopy, v7, v53, selfCopy->disableCoord_);
    return sub_1000D9FA4(selfCopy, v25, v52);
  }

  if ([(JavaUtilArrayList *)v7 isEmpty])
  {
    v25 = sub_1000DA1B0(selfCopy, v8, v23, selfCopy->disableCoord_);
    return sub_1000D9FA4(selfCopy, v25, v52);
  }

  v26 = sub_1000DA07C(selfCopy, v7, v53, 1);
  v27 = sub_1000D9FA4(selfCopy, v26, v52);
  v28 = sub_1000DA1B0(selfCopy, v8, v23, 1);
  v30 = v28;
  if (selfCopy->disableCoord_)
  {
    if (v23 < 1)
    {
      v46 = new_OrgApacheLuceneSearchReqOptSumScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(&v27->super.super.super.isa, v28);
      return v46;
    }

    v61[0] = v27;
    v61[1] = v28;
    v31 = [IOSObjectArray arrayWithObjects:v61 count:2 type:OrgApacheLuceneSearchScorer_class_(v28, v29)];
    v32 = JavaUtilArrays_asListWithNSObjectArray_(v31);
    v60[0] = v27;
    v60[1] = v30;
    v34 = [IOSObjectArray arrayWithObjects:v60 count:2 type:OrgApacheLuceneSearchScorer_class_(v32, v33)];
    v35 = JavaUtilArrays_asListWithNSObjectArray_(v34);
    v36 = 1.0;
    v37 = selfCopy;
    v38 = v32;
  }

  else
  {
    v39 = [(JavaUtilArrayList *)v8 size];
    if (v39 != 1)
    {
      if (v23 < 1)
      {
        v46 = new_OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_withInt_withFloatArray_(&v27->super.super.super.isa, v30, [(JavaUtilArrayList *)v53 size], selfCopy->coords_);
      }

      else
      {
        v46 = new_OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withFloatArray_withOrgApacheLuceneSearchScorer_withInt_withOrgApacheLuceneSearchScorer_(selfCopy, selfCopy->coords_, v27, [(JavaUtilArrayList *)v53 size], v30);
      }

      return v46;
    }

    if (v23 < 1)
    {
      [(OrgApacheLuceneSearchBooleanWeight *)selfCopy coordWithInt:[(JavaUtilArrayList *)v53 size] withInt:selfCopy->maxCoord_];
      v48 = v47;
      [(OrgApacheLuceneSearchBooleanWeight *)selfCopy coordWithInt:[(JavaUtilArrayList *)v53 size]+ 1 withInt:selfCopy->maxCoord_];
      v46 = new_OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_withFloat_withFloat_(&v27->super.super.super.isa, v30, v48, v49);
      return v46;
    }

    v59[0] = v27;
    v59[1] = v30;
    v41 = [IOSObjectArray arrayWithObjects:v59 count:2 type:OrgApacheLuceneSearchScorer_class_(v39, v40)];
    v42 = JavaUtilArrays_asListWithNSObjectArray_(v41);
    v58[0] = v27;
    v58[1] = v30;
    v44 = [IOSObjectArray arrayWithObjects:v58 count:2 type:OrgApacheLuceneSearchScorer_class_(v42, v43)];
    v45 = JavaUtilArrays_asListWithNSObjectArray_(v44);
    [(OrgApacheLuceneSearchBooleanWeight *)selfCopy coordWithInt:[(JavaUtilArrayList *)v53 size]+ 1 withInt:selfCopy->maxCoord_];
    v37 = selfCopy;
    v38 = v42;
    v35 = v45;
  }

  v46 = new_OrgApacheLuceneSearchConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_withFloat_(v37, v38, v35, v36);
  return v46;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchBooleanWeight;
  [(OrgApacheLuceneSearchWeight *)&v3 dealloc];
}

@end