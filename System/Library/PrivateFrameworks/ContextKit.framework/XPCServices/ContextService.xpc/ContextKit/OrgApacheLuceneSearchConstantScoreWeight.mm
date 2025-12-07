@interface OrgApacheLuceneSearchConstantScoreWeight
- (id)explainWithOrgApacheLuceneIndexLeafReaderContext:(id)context withInt:(int)int;
- (void)normalizeWithFloat:(float)float withFloat:(float)withFloat;
@end

@implementation OrgApacheLuceneSearchConstantScoreWeight

- (void)normalizeWithFloat:(float)float withFloat:(float)withFloat
{
  v4 = float * withFloat;
  self->queryNorm_ = v4;
  self->queryWeight_ = v4 * self->queryWeight_;
}

- (id)explainWithOrgApacheLuceneIndexLeafReaderContext:(id)context withInt:(int)int
{
  v4 = *&int;
  v6 = [(OrgApacheLuceneSearchConstantScoreWeight *)self scorerWithOrgApacheLuceneIndexLeafReaderContext:context];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  asTwoPhaseIterator = [v6 asTwoPhaseIterator];
  if (!asTwoPhaseIterator)
  {
    if ([v7 advanceWithInt:v4] != v4)
    {
      goto LABEL_6;
    }

LABEL_11:
    queryWeight = self->queryWeight_;
    getQuery = [(OrgApacheLuceneSearchWeight *)self getQuery];
    if (getQuery)
    {
      v26 = [getQuery description];
      v34 = JreStrcat("$$", v27, v28, v29, v30, v31, v32, v33, v26);
      getQuery2 = [(OrgApacheLuceneSearchWeight *)self getQuery];
      if (getQuery2)
      {
        getBoost = [getQuery2 getBoost];
        v38 = v37;
        v40 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_(getBoost, v39)];
        v46 = OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(v38, @"boost", v40);
        queryNorm = self->queryNorm_;
        v43 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_(v46, v42)];
        v47 = OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(queryNorm, @"queryNorm", v43);
        v45 = [IOSObjectArray arrayWithObjects:&v46 count:2 type:OrgApacheLuceneSearchExplanation_class_(v47, v44)];
        return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(queryWeight, v34, v45);
      }
    }

LABEL_14:
    JreThrowNullPointerException();
  }

  v9 = asTwoPhaseIterator;
  approximation = [asTwoPhaseIterator approximation];
  if (!approximation)
  {
    goto LABEL_14;
  }

  if ([approximation advanceWithInt:v4] == v4 && objc_msgSend(v9, "matches"))
  {
    goto LABEL_11;
  }

LABEL_6:
  getQuery3 = [(OrgApacheLuceneSearchWeight *)self getQuery];
  if (!getQuery3)
  {
    goto LABEL_14;
  }

  v12 = [getQuery3 description];
  v20 = JreStrcat("$$I", v13, v14, v15, v16, v17, v18, v19, v12);
  v22 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_(v20, v21)];

  return OrgApacheLuceneSearchExplanation_noMatchWithNSString_withOrgApacheLuceneSearchExplanationArray_(v20, v22);
}

@end