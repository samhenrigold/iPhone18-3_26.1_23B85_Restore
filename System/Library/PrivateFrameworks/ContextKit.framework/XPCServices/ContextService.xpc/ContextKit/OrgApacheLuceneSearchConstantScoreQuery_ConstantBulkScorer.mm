@interface OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer
- (int)scoreWithOrgApacheLuceneSearchLeafCollector:(id)collector withOrgApacheLuceneUtilBits:(id)bits withInt:(int)int withInt:(int)withInt;
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer

- (int)scoreWithOrgApacheLuceneSearchLeafCollector:(id)collector withOrgApacheLuceneUtilBits:(id)bits withInt:(int)int withInt:(int)withInt
{
  bulkScorer = self->bulkScorer_;
  if (!bulkScorer)
  {
    JreThrowNullPointerException();
  }

  v7 = *&withInt;
  v8 = *&int;
  v10 = sub_10009EE0C(self, collector);

  return [(OrgApacheLuceneSearchBulkScorer *)bulkScorer scoreWithOrgApacheLuceneSearchLeafCollector:v10 withOrgApacheLuceneUtilBits:bits withInt:v8 withInt:v7];
}

- (int64_t)cost
{
  bulkScorer = self->bulkScorer_;
  if (!bulkScorer)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchBulkScorer *)bulkScorer cost];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer;
  [(OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer *)&v3 dealloc];
}

@end