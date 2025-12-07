@interface OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector_$1
- (OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector_$1)initWithOrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector:(id)collector withOrgApacheLuceneSearchLeafFieldComparator:(id)comparator withInt:(int)int;
- (void)collectWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector_$1

- (void)collectWithInt:(int)int
{
  v3 = *&int;
  ++self->this$0_->super.super.totalHits_;
  if (self->this$0_->super.queueFull_)
  {
    p_comparator = &self->super.comparator_;
    comparator = self->super.comparator_;
    if (comparator)
    {
      reverseMul = self->super.reverseMul_;
      if (([(OrgApacheLuceneSearchLeafFieldComparator *)comparator compareBottomWithInt:*&int]* reverseMul) < 1)
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
          v11 = v9;
          [(OrgApacheLuceneSearchLeafFieldComparator *)self->super.comparator_ copy__WithInt:*(&bottom->super.shardIndex_ + 1) withInt:v3];
          sub_1000949E8(self->this$0_, v3, v11);
          v12 = self->this$0_->super.bottom_;
          goto LABEL_11;
        }
      }
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  v13 = self->super.scorer_;
  if (!v13)
  {
    goto LABEL_15;
  }

  [(OrgApacheLuceneSearchScorer *)v13 score];
  p_comparator = &self->super.comparator_;
  v15 = self->super.comparator_;
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = v14;
  v17 = self->this$0_->super.super.totalHits_ - 1;
  [(OrgApacheLuceneSearchLeafFieldComparator *)v15 copy__WithInt:v17 withInt:v3];
  sub_1000948A0(self->this$0_, v17, v3, v16);
  v18 = self->this$0_;
  if (!v18->super.queueFull_)
  {
    return;
  }

  v12 = v18->super.bottom_;
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_11:
  v19 = *p_comparator;
  v20 = *(&v12->super.shardIndex_ + 1);

  [(OrgApacheLuceneSearchLeafFieldComparator *)v19 setBottomWithInt:v20];
}

- (OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector_$1)initWithOrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector:(id)collector withOrgApacheLuceneSearchLeafFieldComparator:(id)comparator withInt:(int)int
{
  JreStrongAssign(&self->this$0_, collector);
  JreStrongAssign(&self->super.comparator_, comparator);
  self->super.reverseMul_ = int;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector__1;
  [(OrgApacheLuceneSearchTopFieldCollector_OneComparatorLeafCollector *)&v3 dealloc];
}

@end