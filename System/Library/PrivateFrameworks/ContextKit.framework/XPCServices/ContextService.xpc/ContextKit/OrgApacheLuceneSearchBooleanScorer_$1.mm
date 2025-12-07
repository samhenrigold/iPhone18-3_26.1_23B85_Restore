@interface OrgApacheLuceneSearchBooleanScorer_$1
- (OrgApacheLuceneSearchBooleanScorer_$1)initWithOrgApacheLuceneSearchBulkScorer:(id)scorer;
- (int)scoreWithOrgApacheLuceneSearchLeafCollector:(id)collector withOrgApacheLuceneUtilBits:(id)bits withInt:(int)int withInt:(int)withInt;
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchBooleanScorer_$1

- (int)scoreWithOrgApacheLuceneSearchLeafCollector:(id)collector withOrgApacheLuceneUtilBits:(id)bits withInt:(int)int withInt:(int)withInt
{
  v6 = *&withInt;
  v7 = *&int;
  v11 = [OrgApacheLuceneSearchBooleanScorer__1__1 alloc];
  JreStrongAssign(&v11->val$collector_, collector);
  v12 = new_OrgApacheLuceneSearchFakeScorer_init();
  JreStrongAssignAndConsume(&v11->fake_, v12);
  v13 = v11;
  v14 = self->val$scorer_;
  if (!v14)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchBulkScorer *)v14 scoreWithOrgApacheLuceneSearchLeafCollector:v13 withOrgApacheLuceneUtilBits:bits withInt:v7 withInt:v6];
}

- (int64_t)cost
{
  v3 = self->val$scorer_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchBulkScorer *)v3 cost];
}

- (OrgApacheLuceneSearchBooleanScorer_$1)initWithOrgApacheLuceneSearchBulkScorer:(id)scorer
{
  JreStrongAssign(&self->val$scorer_, scorer);
  OrgApacheLuceneSearchBulkScorer_init();
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchBooleanScorer__1;
  [(OrgApacheLuceneSearchBooleanScorer_$1 *)&v3 dealloc];
}

@end