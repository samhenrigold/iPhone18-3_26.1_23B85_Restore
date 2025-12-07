@interface OrgApacheLuceneSearchTermQuery_TermWeight
- (BOOL)termNotInReaderWithOrgApacheLuceneIndexLeafReader:(id)reader withOrgApacheLuceneIndexTerm:(id)term;
- (float)getValueForNormalization;
- (id)explainWithOrgApacheLuceneIndexLeafReaderContext:(id)context withInt:(int)int;
- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (void)dealloc;
- (void)extractTermsWithJavaUtilSet:(id)set;
- (void)normalizeWithFloat:(float)float withFloat:(float)withFloat;
@end

@implementation OrgApacheLuceneSearchTermQuery_TermWeight

- (void)extractTermsWithJavaUtilSet:(id)set
{
  if (!set)
  {
    JreThrowNullPointerException();
  }

  getTerm = [(OrgApacheLuceneSearchTermQuery *)self->this$0_ getTerm];

  [set addWithId:getTerm];
}

- (float)getValueForNormalization
{
  stats = self->stats_;
  if (!stats)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *)stats getValueForNormalization];
  return result;
}

- (void)normalizeWithFloat:(float)float withFloat:(float)withFloat
{
  stats = self->stats_;
  if (!stats)
  {
    JreThrowNullPointerException();
  }

  [OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight normalizeWithFloat:"normalizeWithFloat:withFloat:" withFloat:?];
}

- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  result = sub_10001A680(self, context);
  if (result)
  {
    if (self->needsScores_)
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    v7 = [result postingsWithOrgApacheLuceneIndexPostingsEnum:0 withInt:v6];
    similarity = self->similarity_;
    if (!similarity)
    {
      JreThrowNullPointerException();
    }

    v9 = new_OrgApacheLuceneSearchTermScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(self, v7, [(OrgApacheLuceneSearchSimilaritiesSimilarity *)similarity simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:self->stats_ withOrgApacheLuceneIndexLeafReaderContext:context]);

    return v9;
  }

  return result;
}

- (BOOL)termNotInReaderWithOrgApacheLuceneIndexLeafReader:(id)reader withOrgApacheLuceneIndexTerm:(id)term
{
  if (!reader)
  {
    JreThrowNullPointerException();
  }

  return [reader docFreqWithOrgApacheLuceneIndexTerm:term] == 0;
}

- (id)explainWithOrgApacheLuceneIndexLeafReaderContext:(id)context withInt:(int)int
{
  v4 = *&int;
  v7 = [(OrgApacheLuceneSearchTermQuery_TermWeight *)self scorerWithOrgApacheLuceneIndexLeafReaderContext:?];
  if (v7 && (v9 = v7, v7 = [v7 advanceWithInt:v4], v7 == v4))
  {
    freq = [v9 freq];
    similarity = self->similarity_;
    if (!similarity || (v12 = freq, v13 = -[OrgApacheLuceneSearchSimilaritiesSimilarity simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:withOrgApacheLuceneIndexLeafReaderContext:](similarity, "simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:withOrgApacheLuceneIndexLeafReaderContext:", self->stats_, context), v21 = JreStrcat("$F", v14, v15, v16, v17, v18, v19, v20, @"termFreq="), v23 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 0, OrgApacheLuceneSearchExplanation_class_(v21, v22)), v24 = OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(v12, v21, v23), !v13) || (v25 = [v13 explainWithInt:v4 withOrgApacheLuceneSearchExplanation:v24]) == 0)
    {
      JreThrowNullPointerException();
    }

    v26 = v25;
    [v25 getValue];
    v28 = v27;
    [(OrgApacheLuceneSearchWeight *)self getQuery];
    [-[OrgApacheLuceneSearchSimilaritiesSimilarity getClass](self->similarity_ "getClass")];
    v36 = JreStrcat("$@$I$$$", v29, v30, v31, v32, v33, v34, v35, @"weight(");
    v41 = v26;
    v38 = [IOSObjectArray arrayWithObjects:&v41 count:1 type:OrgApacheLuceneSearchExplanation_class_(v36, v37)];
    return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(v28, v36, v38);
  }

  else
  {
    v40 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_(v7, v8)];

    return OrgApacheLuceneSearchExplanation_noMatchWithNSString_withOrgApacheLuceneSearchExplanationArray_(@"no matching term", v40);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTermQuery_TermWeight;
  [(OrgApacheLuceneSearchWeight *)&v3 dealloc];
}

@end