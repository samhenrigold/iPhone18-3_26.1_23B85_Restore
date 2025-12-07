@interface OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector_$2
- (OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector_$2)initWithOrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector:(id)collector withOrgApacheLuceneSearchLeafFieldComparatorArray:(id)array withIntArray:(id)intArray;
- (void)collectWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector_$2

- (void)collectWithInt:(int)int
{
  v3 = *&int;
  ++self->this$0_->super.super.totalHits_;
  if (self->this$0_->super.queueFull_)
  {
    if (sub_100094F84(self, *&int) < 1)
    {
      return;
    }

    scorer = self->super.scorer_;
    if (scorer)
    {
      [(OrgApacheLuceneSearchScorer *)scorer score];
      bottom = self->this$0_->super.bottom_;
      if (bottom)
      {
        v8 = v6;
        sub_1000950A4(self, *(&bottom->super.shardIndex_ + 1), v3);
        sub_1000949E8(self->this$0_, v3, v8);
        v9 = self->this$0_->super.bottom_;
        goto LABEL_9;
      }
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  v10 = self->super.scorer_;
  if (!v10)
  {
    goto LABEL_13;
  }

  [(OrgApacheLuceneSearchScorer *)v10 score];
  v12 = v11;
  v13 = self->this$0_->super.super.totalHits_ - 1;
  sub_1000950A4(self, v13, v3);
  sub_1000948A0(self->this$0_, v13, v3, v12);
  v14 = self->this$0_;
  if (!v14->super.queueFull_)
  {
    return;
  }

  v9 = v14->super.bottom_;
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_9:
  v15 = *(&v9->super.shardIndex_ + 1);

  sub_100095130(self, v15);
}

- (OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector_$2)initWithOrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector:(id)collector withOrgApacheLuceneSearchLeafFieldComparatorArray:(id)array withIntArray:(id)intArray
{
  JreStrongAssign(&self->this$0_, collector);
  sub_100094EC0(self, array, intArray);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector__2;
  [(OrgApacheLuceneSearchTopFieldCollector_MultiComparatorLeafCollector *)&v3 dealloc];
}

@end