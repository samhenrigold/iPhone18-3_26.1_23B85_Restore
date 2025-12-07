@interface OrgApacheLuceneSearchWeight_DefaultBulkScorer
- (int)scoreWithOrgApacheLuceneSearchLeafCollector:(id)collector withOrgApacheLuceneUtilBits:(id)bits withInt:(int)int withInt:(int)withInt;
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchWeight_DefaultBulkScorer

- (int64_t)cost
{
  scorer = self->scorer_;
  if (!scorer)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchScorer *)scorer cost];
}

- (int)scoreWithOrgApacheLuceneSearchLeafCollector:(id)collector withOrgApacheLuceneUtilBits:(id)bits withInt:(int)int withInt:(int)withInt
{
  if (!collector || (v7 = *&int, [collector setScorerWithOrgApacheLuceneSearchScorer:self->scorer_], (scorer = self->scorer_) == 0))
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  asTwoPhaseIterator = [(OrgApacheLuceneSearchScorer *)scorer asTwoPhaseIterator];
  docID = [(OrgApacheLuceneSearchScorer *)self->scorer_ docID];
  if (withInt == 0x7FFFFFFF && !v7 && docID == -1)
  {
    OrgApacheLuceneSearchWeight_DefaultBulkScorer_scoreAllWithOrgApacheLuceneSearchLeafCollector_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneUtilBits_(collector, self->scorer_, asTwoPhaseIterator, bits);
    return 0x7FFFFFFF;
  }

  docID2 = [(OrgApacheLuceneSearchScorer *)self->scorer_ docID];
  if (docID2 < v7)
  {
    if (asTwoPhaseIterator)
    {
      approximation = [asTwoPhaseIterator approximation];
      if (!approximation)
      {
        goto LABEL_10;
      }
    }

    else
    {
      approximation = self->scorer_;
    }

    docID2 = [(OrgApacheLuceneSearchScorer *)approximation advanceWithInt:v7];
  }

  v17 = self->scorer_;

  return OrgApacheLuceneSearchWeight_DefaultBulkScorer_scoreRangeWithOrgApacheLuceneSearchLeafCollector_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneUtilBits_withInt_withInt_(collector, v17, asTwoPhaseIterator, bits, docID2, withInt);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchWeight_DefaultBulkScorer;
  [(OrgApacheLuceneSearchWeight_DefaultBulkScorer *)&v3 dealloc];
}

@end