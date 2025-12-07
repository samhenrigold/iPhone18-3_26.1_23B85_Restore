@interface OrgApacheLuceneSearchFilterLeafCollector
- (void)collectWithInt:(int)int;
- (void)dealloc;
- (void)setScorerWithOrgApacheLuceneSearchScorer:(id)scorer;
@end

@implementation OrgApacheLuceneSearchFilterLeafCollector

- (void)setScorerWithOrgApacheLuceneSearchScorer:(id)scorer
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneSearchLeafCollector *)in setScorerWithOrgApacheLuceneSearchScorer:scorer];
}

- (void)collectWithInt:(int)int
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneSearchLeafCollector *)in collectWithInt:*&int];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFilterLeafCollector;
  [(OrgApacheLuceneSearchFilterLeafCollector *)&v3 dealloc];
}

@end