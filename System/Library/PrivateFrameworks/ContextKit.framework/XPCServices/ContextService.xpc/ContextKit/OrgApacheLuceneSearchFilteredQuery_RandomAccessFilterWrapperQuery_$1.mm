@interface OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery_$1
- (OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery_$1)initWithOrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery:(id)query withOrgApacheLuceneSearchQuery:(id)searchQuery;
- (id)explainWithOrgApacheLuceneIndexLeafReaderContext:(id)context withInt:(int)int;
- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery_$1

- (id)explainWithOrgApacheLuceneIndexLeafReaderContext:(id)context withInt:(int)int
{
  v4 = *&int;
  v5 = [(OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery_$1 *)self scorerWithOrgApacheLuceneIndexLeafReaderContext:context];
  if (!v5)
  {
    goto LABEL_6;
  }

  v13 = v5;
  asTwoPhaseIterator = [v5 asTwoPhaseIterator];
  if (!asTwoPhaseIterator)
  {
    if ([v13 advanceWithInt:v4] == v4)
    {
      goto LABEL_8;
    }

LABEL_6:
    v17 = @"No match on id ";
    goto LABEL_9;
  }

  v15 = asTwoPhaseIterator;
  approximation = [asTwoPhaseIterator approximation];
  if (!approximation)
  {
    JreThrowNullPointerException();
  }

  if ([approximation advanceWithInt:v4] != v4 || (objc_msgSend(v15, "matches") & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_8:
  v17 = @"Match on id ";
LABEL_9:
  v18 = JreStrcat("$I", v6, v7, v8, v9, v10, v11, v12, v17);
  v20 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_(v18, v19)];

  return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(0.0, v18, v20);
}

- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  v4 = *(&self->this$0_->super.boost_ + 1);
  if (!v4)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  v6 = [v4 getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:context withOrgApacheLuceneUtilBits:0];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  bits = [v6 bits];
  if (!bits)
  {
    iterator = [v7 iterator];
    if (iterator)
    {
      goto LABEL_13;
    }

    return 0;
  }

  v9 = bits;
  v10 = *(&self->this$0_->filter_ + 4);
  if (!v10)
  {
    goto LABEL_18;
  }

  if ([v10 alwaysUseRandomAccess])
  {
    goto LABEL_9;
  }

  iterator2 = [v7 iterator];
  if (!iterator2)
  {
    return 0;
  }

  v12 = *(&self->this$0_->filter_ + 4);
  if (!v12)
  {
    goto LABEL_18;
  }

  iterator = iterator2;
  if (![v12 useRandomAccessWithOrgApacheLuceneUtilBits:v9 withLong:{objc_msgSend(iterator2, "cost")}])
  {
LABEL_13:
    v17 = new_OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchDocIdSetIterator_(self, iterator, 0.0);
    goto LABEL_14;
  }

LABEL_9:
  if (!context)
  {
    goto LABEL_18;
  }

  reader = [context reader];
  if (!reader)
  {
    goto LABEL_18;
  }

  v15 = OrgApacheLuceneSearchDocIdSetIterator_allWithInt_([reader maxDoc]);
  v16 = [OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery__1__1 alloc];
  JreStrongAssign(&v16->val$bits_, v9);
  OrgApacheLuceneSearchTwoPhaseIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(v16, v15);
  v17 = new_OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchTwoPhaseIterator_(self, v16, 0.0);
LABEL_14:

  return v17;
}

- (OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery_$1)initWithOrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery:(id)query withOrgApacheLuceneSearchQuery:(id)searchQuery
{
  JreStrongAssign(&self->this$0_, query);
  OrgApacheLuceneSearchWeight_initWithOrgApacheLuceneSearchQuery_(self, searchQuery);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery__1;
  [(OrgApacheLuceneSearchWeight *)&v3 dealloc];
}

@end