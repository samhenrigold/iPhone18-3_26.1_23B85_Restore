@interface OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight
- (float)getValueForNormalization;
- (id)explainWithOrgApacheLuceneIndexLeafReaderContext:(id)context withInt:(int)int;
- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (void)dealloc;
- (void)extractTermsWithJavaUtilSet:(id)set;
- (void)normalizeWithFloat:(float)float withFloat:(float)withFloat;
@end

@implementation OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight

- (void)extractTermsWithJavaUtilSet:(id)set
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  weights = self->weights_;
  if (!weights)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilArrayList *)self->weights_ countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(weights);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (!v9)
        {
          goto LABEL_11;
        }

        [v9 extractTermsWithJavaUtilSet:{set, v10}];
      }

      v6 = [(JavaUtilArrayList *)weights countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (float)getValueForNormalization
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  weights = self->weights_;
  if (!weights)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v4 = [(JavaUtilArrayList *)self->weights_ countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(weights);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if (!v10)
        {
          goto LABEL_13;
        }

        getValueForNormalization = [v10 getValueForNormalization];
        v7 = v7 + v12;
        JavaLangMath_maxWithFloat_withFloat_(v8, v12, getValueForNormalization, v13);
        v8 = v14;
      }

      v5 = [(JavaUtilArrayList *)weights countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
  }

  [(OrgApacheLuceneSearchQuery *)self->this$0_ getBoost];
  return v15 * (v15 * (v8 + (((v7 - v8) * *(&self->this$0_->disjuncts_ + 1)) * *(&self->this$0_->disjuncts_ + 1))));
}

- (void)normalizeWithFloat:(float)float withFloat:(float)withFloat
{
  [(OrgApacheLuceneSearchQuery *)self->this$0_ getBoost];
  v8 = v7;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  weights = self->weights_;
  if (!weights)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v10 = [(JavaUtilArrayList *)weights countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v13 = v10;
    v14 = v8 * withFloat;
    v15 = *v19;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(weights);
        }

        v17 = *(*(&v18 + 1) + 8 * i);
        if (!v17)
        {
          goto LABEL_11;
        }

        *&v11 = float;
        *&v12 = v14;
        [v17 normalizeWithFloat:v11 withFloat:{v12, v18}];
      }

      v13 = [(JavaUtilArrayList *)weights countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  v5 = new_JavaUtilArrayList_init();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  weights = self->weights_;
  if (!weights)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v7 = v5;
  v8 = [(JavaUtilArrayList *)self->weights_ countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(weights);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (!v12)
        {
          goto LABEL_16;
        }

        v13 = [v12 scorerWithOrgApacheLuceneIndexLeafReaderContext:{context, v15}];
        if (v13)
        {
          [(JavaUtilArrayList *)v7 addWithId:v13];
        }
      }

      v9 = [(JavaUtilArrayList *)weights countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if ([(JavaUtilArrayList *)v7 isEmpty])
  {
    return 0;
  }

  if ([(JavaUtilArrayList *)v7 size]== 1)
  {
    return [(JavaUtilArrayList *)v7 getWithInt:0];
  }

  return new_OrgApacheLuceneSearchDisjunctionMaxScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withJavaUtilList_withBoolean_(self, v7, self->needsScores_, *(&self->this$0_->disjuncts_ + 1));
}

- (id)explainWithOrgApacheLuceneIndexLeafReaderContext:(id)context withInt:(int)int
{
  v4 = *&int;
  v7 = new_JavaUtilArrayList_init();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  weights = self->weights_;
  if (!weights)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v9 = v7;
  v10 = [(JavaUtilArrayList *)self->weights_ countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = v10;
  v13 = 0;
  v14 = *v38;
  v15 = 0.0;
  v16 = 0.0;
  do
  {
    v17 = 0;
    do
    {
      if (*v38 != v14)
      {
        objc_enumerationMutation(weights);
      }

      v18 = *(*(&v37 + 1) + 8 * v17);
      if (!v18)
      {
        goto LABEL_17;
      }

      v19 = [v18 explainWithOrgApacheLuceneIndexLeafReaderContext:context withInt:v4];
      if (!v19)
      {
        goto LABEL_17;
      }

      v20 = v19;
      if ([v19 isMatch])
      {
        [(JavaUtilArrayList *)v9 addWithId:v20];
        [v20 getValue];
        v15 = v15 + v21;
        getValue = [v20 getValue];
        JavaLangMath_maxWithFloat_withFloat_(v16, v24, getValue, v23);
        v16 = v25;
        v13 = 1;
      }

      ++v17;
    }

    while (v12 != v17);
    v10 = [(JavaUtilArrayList *)weights countByEnumeratingWithState:&v37 objects:v41 count:16];
    v12 = v10;
  }

  while (v10);
  if (v13)
  {
    v32 = *(&self->this$0_->disjuncts_ + 1);
    v33 = v16 + ((v15 - v16) * v32);
    if (v32 == 0.0)
    {
      v34 = @"max of:";
    }

    else
    {
      v34 = JreStrcat("$F$", v11, v26, v27, v28, v29, v30, v31, @"max plus ");
    }

    return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withJavaUtilCollection_(v33, v34, v9);
  }

  else
  {
LABEL_16:
    v35 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_(v10, v11)];
    return OrgApacheLuceneSearchExplanation_noMatchWithNSString_withOrgApacheLuceneSearchExplanationArray_(@"No matching clause", v35);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight;
  [(OrgApacheLuceneSearchWeight *)&v3 dealloc];
}

@end