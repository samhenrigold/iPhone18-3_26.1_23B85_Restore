@interface OrgApacheLuceneSearchTopFieldCollector_NonScoringCollector_$1
- (OrgApacheLuceneSearchTopFieldCollector_NonScoringCollector_$1)initWithOrgApacheLuceneSearchTopFieldCollector_NonScoringCollector:(id)collector withOrgApacheLuceneSearchLeafFieldComparator:(id)comparator withInt:(int)int;
- (void)collectWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopFieldCollector_NonScoringCollector_$1

- (void)collectWithInt:(int)int
{
  v3 = *&int;
  ++self->this$0_->super.super.totalHits_;
  v5 = self->this$0_;
  comparator = self->super.comparator_;
  if (v5->super.queueFull_)
  {
    if (comparator)
    {
      reverseMul = self->super.reverseMul_;
      if (([(OrgApacheLuceneSearchLeafFieldComparator *)comparator compareBottomWithInt:*&int]* reverseMul) < 1)
      {
        return;
      }

      bottom = self->this$0_->super.bottom_;
      if (bottom)
      {
        [(OrgApacheLuceneSearchLeafFieldComparator *)self->super.comparator_ copy__WithInt:*(&bottom->super.shardIndex_ + 1) withInt:v3];
        sub_100094958(self->this$0_, v3);
        v9 = self->this$0_->super.bottom_;
        goto LABEL_9;
      }
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  if (!comparator)
  {
    goto LABEL_13;
  }

  v10 = v5->super.super.totalHits_ - 1;
  [(OrgApacheLuceneSearchLeafFieldComparator *)comparator copy__WithInt:v10 withInt:*&int];
  sub_1000948A0(self->this$0_, v10, v3, NAN);
  v11 = self->this$0_;
  if (!v11->super.queueFull_)
  {
    return;
  }

  v9 = v11->super.bottom_;
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_9:
  v12 = self->super.comparator_;
  v13 = *(&v9->super.shardIndex_ + 1);

  [(OrgApacheLuceneSearchLeafFieldComparator *)v12 setBottomWithInt:v13];
}

- (OrgApacheLuceneSearchTopFieldCollector_NonScoringCollector_$1)initWithOrgApacheLuceneSearchTopFieldCollector_NonScoringCollector:(id)collector withOrgApacheLuceneSearchLeafFieldComparator:(id)comparator withInt:(int)int
{
  JreStrongAssign(&self->this$0_, collector);
  JreStrongAssign(&self->super.comparator_, comparator);
  self->super.reverseMul_ = int;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldCollector_NonScoringCollector__1;
  [(OrgApacheLuceneSearchTopFieldCollector_OneComparatorLeafCollector *)&v3 dealloc];
}

@end