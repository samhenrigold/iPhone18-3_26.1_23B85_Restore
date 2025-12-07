@interface OrgApacheLuceneSearchTopFieldCollector_NonScoringCollector_$2
- (OrgApacheLuceneSearchTopFieldCollector_NonScoringCollector_$2)initWithOrgApacheLuceneSearchTopFieldCollector_NonScoringCollector:(id)collector withOrgApacheLuceneSearchLeafFieldComparatorArray:(id)array withIntArray:(id)intArray;
- (void)collectWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopFieldCollector_NonScoringCollector_$2

- (void)collectWithInt:(int)int
{
  v3 = *&int;
  ++self->this$0_->super.super.totalHits_;
  v5 = self->this$0_;
  if (v5->super.queueFull_)
  {
    if (sub_100094F84(self, *&int) < 1)
    {
      return;
    }

    bottom = self->this$0_->super.bottom_;
    if (bottom)
    {
      sub_1000950A4(self, *(&bottom->super.shardIndex_ + 1), v3);
      sub_100094958(self->this$0_, v3);
      v7 = self->this$0_->super.bottom_;
      goto LABEL_7;
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  v8 = v5->super.super.totalHits_ - 1;
  sub_1000950A4(self, v8, *&int);
  sub_1000948A0(self->this$0_, v8, v3, NAN);
  v9 = self->this$0_;
  if (!v9->super.queueFull_)
  {
    return;
  }

  v7 = v9->super.bottom_;
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_7:
  v10 = *(&v7->super.shardIndex_ + 1);

  sub_100095130(self, v10);
}

- (OrgApacheLuceneSearchTopFieldCollector_NonScoringCollector_$2)initWithOrgApacheLuceneSearchTopFieldCollector_NonScoringCollector:(id)collector withOrgApacheLuceneSearchLeafFieldComparatorArray:(id)array withIntArray:(id)intArray
{
  JreStrongAssign(&self->this$0_, collector);
  sub_100094EC0(self, array, intArray);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldCollector_NonScoringCollector__2;
  [(OrgApacheLuceneSearchTopFieldCollector_MultiComparatorLeafCollector *)&v3 dealloc];
}

@end