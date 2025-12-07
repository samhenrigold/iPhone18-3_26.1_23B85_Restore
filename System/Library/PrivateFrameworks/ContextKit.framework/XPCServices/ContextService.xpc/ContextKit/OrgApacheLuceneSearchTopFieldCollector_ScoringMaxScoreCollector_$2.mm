@interface OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector_$2
- (OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector_$2)initWithOrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector:(id)collector withOrgApacheLuceneSearchLeafFieldComparatorArray:(id)array withIntArray:(id)intArray;
- (void)collectWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector_$2

- (void)collectWithInt:(int)int
{
  scorer = self->super.scorer_;
  if (!scorer)
  {
    goto LABEL_14;
  }

  v5 = *&int;
  [(OrgApacheLuceneSearchScorer *)scorer score];
  v7 = v6;
  v8 = self->this$0_;
  if (v6 > *(&v8->super.super.totalHits_ + 1))
  {
    *(&v8->super.super.totalHits_ + 1) = v6;
    v8 = self->this$0_;
  }

  ++v8->super.super.totalHits_;
  v9 = self->this$0_;
  if (v9->super.queueFull_)
  {
    if (sub_100094F84(self, v5) < 1)
    {
      return;
    }

    bottom = self->this$0_->super.bottom_;
    if (bottom)
    {
      sub_1000950A4(self, *(&bottom->super.shardIndex_ + 1), v5);
      sub_1000949E8(self->this$0_, v5, v7);
      v11 = self->this$0_->super.bottom_;
      goto LABEL_10;
    }

LABEL_14:
    JreThrowNullPointerException();
  }

  v12 = v9->super.super.totalHits_ - 1;
  sub_1000950A4(self, v12, v5);
  sub_1000948A0(self->this$0_, v12, v5, v7);
  v13 = self->this$0_;
  if (!v13->super.queueFull_)
  {
    return;
  }

  v11 = v13->super.bottom_;
  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_10:
  v14 = *(&v11->super.shardIndex_ + 1);

  sub_100095130(self, v14);
}

- (OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector_$2)initWithOrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector:(id)collector withOrgApacheLuceneSearchLeafFieldComparatorArray:(id)array withIntArray:(id)intArray
{
  JreStrongAssign(&self->this$0_, collector);
  sub_100094EC0(self, array, intArray);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector__2;
  [(OrgApacheLuceneSearchTopFieldCollector_MultiComparatorLeafCollector *)&v3 dealloc];
}

@end