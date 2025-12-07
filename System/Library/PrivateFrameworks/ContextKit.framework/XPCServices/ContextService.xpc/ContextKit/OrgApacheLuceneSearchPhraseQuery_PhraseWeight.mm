@interface OrgApacheLuceneSearchPhraseQuery_PhraseWeight
- (BOOL)termNotInReaderWithOrgApacheLuceneIndexLeafReader:(id)reader withOrgApacheLuceneIndexTerm:(id)term;
- (float)getValueForNormalization;
- (id)explainWithOrgApacheLuceneIndexLeafReaderContext:(id)context withInt:(int)int;
- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (void)dealloc;
- (void)normalizeWithFloat:(float)float withFloat:(float)withFloat;
@end

@implementation OrgApacheLuceneSearchPhraseQuery_PhraseWeight

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
  if (!context)
  {
    goto LABEL_29;
  }

  reader = [context reader];
  v6 = &OBJC_IVAR___IOSArray_size_;
  size = self->terms_->super.size_;
  if (qword_100554370 != -1)
  {
    sub_1000AE978();
  }

  v41 = [IOSObjectArray arrayWithLength:size type:qword_100554368];
  if (!reader)
  {
    goto LABEL_29;
  }

  result = [reader termsWithNSString:*&self->this$0_->slop_];
  if (result)
  {
    v9 = result;
    if (([result hasPositions] & 1) == 0)
    {
      [(OrgApacheLuceneSearchWeight *)self getQuery];
      v39 = JreStrcat("$$$@C", v32, v33, v34, v35, v36, v37, v38, @"field ");
      v40 = new_JavaLangIllegalStateException_initWithNSString_(v39);
      objc_exception_throw(v40);
    }

    iterator = [v9 iterator];
    terms = self->terms_;
    LODWORD(v12) = 8;
    if (terms->super.size_ >= 1)
    {
      v13 = iterator;
      v14 = 0;
      while (1)
      {
        states = self->states_;
        if (!states)
        {
          break;
        }

        v16 = (&terms->elementType_)[v14];
        v17 = *(&states->super.super.isa + v12);
        if (v14 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v14);
        }

        v18 = (&states->elementType_)[v14];
        if (!v18)
        {
          break;
        }

        result = [(IOSClass *)v18 getWithInt:*(context + 7)];
        if (!result)
        {
          return result;
        }

        if (!v13)
        {
          break;
        }

        if (!v16)
        {
          break;
        }

        [v13 seekExactWithOrgApacheLuceneUtilBytesRef:-[IOSClass bytes](v16 withOrgApacheLuceneIndexTermState:{"bytes"), result}];
        v19 = [v13 postingsWithOrgApacheLuceneIndexPostingsEnum:0 withInt:24];
        positions = self->positions_;
        if (!positions)
        {
          break;
        }

        v22 = v19;
        v23 = *(&positions->super.super.isa + *v6);
        v24 = v6;
        if (v14 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, v14);
        }

        v25 = *(&positions->super.size_ + v14 + 1);
        v42 = v16;
        v26 = [IOSObjectArray arrayWithObjects:&v42 count:1 type:OrgApacheLuceneIndexTerm_class_(v23, v20)];
        v27 = [OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq alloc];
        OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq_initWithOrgApacheLuceneIndexPostingsEnum_withInt_withOrgApacheLuceneIndexTermArray_(v27, v22, v25, v26);
        IOSObjectArray_SetAndConsume(v41, v14++, v27);
        terms = self->terms_;
        v12 = *v24;
        v6 = v24;
        if (v14 >= *(&terms->super.super.isa + v12))
        {
          goto LABEL_21;
        }
      }

LABEL_29:
      JreThrowNullPointerException();
    }

LABEL_21:
    v28 = *&self->this$0_->mutable__;
    if (v28 || (OrgApacheLuceneUtilArrayUtil_timSortWithJavaLangComparableArray_(v41), (v28 = *&self->this$0_->mutable__) != 0))
    {
      similarity = self->similarity_;
      if (!similarity)
      {
        goto LABEL_29;
      }

      PostingsAndFreqArray_withInt_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean = new_OrgApacheLuceneSearchSloppyPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withInt_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean_(self, v41, v28, [(OrgApacheLuceneSearchSimilaritiesSimilarity *)similarity simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:self->stats_ withOrgApacheLuceneIndexLeafReaderContext:context], self->needsScores_);
    }

    else
    {
      v31 = self->similarity_;
      if (!v31)
      {
        goto LABEL_29;
      }

      PostingsAndFreqArray_withInt_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean = new_OrgApacheLuceneSearchExactPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean_(self, v41, [(OrgApacheLuceneSearchSimilaritiesSimilarity *)v31 simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:self->stats_ withOrgApacheLuceneIndexLeafReaderContext:context], self->needsScores_);
    }

    return PostingsAndFreqArray_withInt_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean;
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
  v7 = [(OrgApacheLuceneSearchPhraseQuery_PhraseWeight *)self scorerWithOrgApacheLuceneIndexLeafReaderContext:?];
  if (v7 && (v9 = v7, v7 = [v7 advanceWithInt:v4], v7 == v4))
  {
    if (*&self->this$0_->mutable__)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      [v9 sloppyFreq];
      freq = v10;
    }

    else
    {
      freq = [v9 freq];
    }

    similarity = self->similarity_;
    if (!similarity || (v15 = -[OrgApacheLuceneSearchSimilaritiesSimilarity simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:withOrgApacheLuceneIndexLeafReaderContext:](similarity, "simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:withOrgApacheLuceneIndexLeafReaderContext:", self->stats_, context), v23 = JreStrcat("$F", v16, v17, v18, v19, v20, v21, v22, @"phraseFreq="), v25 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 0, OrgApacheLuceneSearchExplanation_class_(v23, v24)), v26 = OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(freq, v23, v25), !v15) || (v27 = [v15 explainWithInt:v4 withOrgApacheLuceneSearchExplanation:v26]) == 0)
    {
      JreThrowNullPointerException();
    }

    v28 = v27;
    [v27 getValue];
    v30 = v29;
    [(OrgApacheLuceneSearchWeight *)self getQuery];
    [-[OrgApacheLuceneSearchSimilaritiesSimilarity getClass](self->similarity_ "getClass")];
    v38 = JreStrcat("$@$I$$$", v31, v32, v33, v34, v35, v36, v37, @"weight(");
    v41 = v28;
    v40 = [IOSObjectArray arrayWithObjects:&v41 count:1 type:OrgApacheLuceneSearchExplanation_class_(v38, v39)];
    return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(v30, v38, v40);
  }

  else
  {
    v12 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_(v7, v8)];

    return OrgApacheLuceneSearchExplanation_noMatchWithNSString_withOrgApacheLuceneSearchExplanationArray_(@"no matching term", v12);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchPhraseQuery_PhraseWeight;
  [(OrgApacheLuceneSearchWeight *)&v3 dealloc];
}

@end