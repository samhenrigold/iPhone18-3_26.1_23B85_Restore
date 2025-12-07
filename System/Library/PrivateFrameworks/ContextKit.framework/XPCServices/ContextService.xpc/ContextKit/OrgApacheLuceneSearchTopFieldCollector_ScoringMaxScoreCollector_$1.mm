@interface OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector_$1
- (OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector_$1)initWithOrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector:(id)collector withOrgApacheLuceneSearchLeafFieldComparator:(id)comparator withInt:(int)int;
- (void)collectWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector_$1

- (void)collectWithInt:(int)int
{
  scorer = self->super.scorer_;
  if (!scorer)
  {
    goto LABEL_16;
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
  comparator = self->super.comparator_;
  if (v9->super.queueFull_)
  {
    if (comparator)
    {
      reverseMul = self->super.reverseMul_;
      if (([(OrgApacheLuceneSearchLeafFieldComparator *)comparator compareBottomWithInt:v5]* reverseMul) < 1)
      {
        return;
      }

      bottom = self->this$0_->super.bottom_;
      if (bottom)
      {
        [(OrgApacheLuceneSearchLeafFieldComparator *)self->super.comparator_ copy__WithInt:*(&bottom->super.shardIndex_ + 1) withInt:v5];
        sub_1000949E8(self->this$0_, v5, v7);
        v13 = self->this$0_->super.bottom_;
        goto LABEL_12;
      }
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  if (!comparator)
  {
    goto LABEL_16;
  }

  v14 = v9->super.super.totalHits_ - 1;
  [(OrgApacheLuceneSearchLeafFieldComparator *)comparator copy__WithInt:v14 withInt:v5];
  sub_1000948A0(self->this$0_, v14, v5, v7);
  v15 = self->this$0_;
  if (!v15->super.queueFull_)
  {
    return;
  }

  v13 = v15->super.bottom_;
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_12:
  v16 = self->super.comparator_;
  v17 = *(&v13->super.shardIndex_ + 1);

  [(OrgApacheLuceneSearchLeafFieldComparator *)v16 setBottomWithInt:v17];
}

- (OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector_$1)initWithOrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector:(id)collector withOrgApacheLuceneSearchLeafFieldComparator:(id)comparator withInt:(int)int
{
  JreStrongAssign(&self->this$0_, collector);
  JreStrongAssign(&self->super.comparator_, comparator);
  self->super.reverseMul_ = int;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector__1;
  [(OrgApacheLuceneSearchTopFieldCollector_OneComparatorLeafCollector *)&v3 dealloc];
}

@end