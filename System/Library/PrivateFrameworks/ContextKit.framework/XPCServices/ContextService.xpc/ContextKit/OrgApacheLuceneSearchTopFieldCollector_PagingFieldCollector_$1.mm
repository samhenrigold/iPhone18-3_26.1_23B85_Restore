@interface OrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector_$1
- (OrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector_$1)initWithOrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector:(id)collector withInt:(int)int withOrgApacheLuceneSearchLeafFieldComparatorArray:(id)array withIntArray:(id)intArray;
- (void)collectWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector_$1

- (void)collectWithInt:(int)int
{
  v3 = *&int;
  ++self->this$0_->super.super.totalHits_;
  v5 = self->this$0_;
  if (BYTE1(v5->queue_) == 1)
  {
    scorer = self->super.scorer_;
    if (!scorer)
    {
      goto LABEL_29;
    }

    [(OrgApacheLuceneSearchScorer *)scorer score];
    v8 = v7;
    v5 = self->this$0_;
    if (v7 > *(&v5->super.super.totalHits_ + 1))
    {
      *(&v5->super.super.totalHits_ + 1) = v7;
      v5 = self->this$0_;
    }
  }

  else
  {
    v8 = NAN;
  }

  if (!v5->super.queueFull_ || sub_100094F84(self, v3) >= 1)
  {
    v9 = sub_1000951B4(self, v3);
    if (v9 <= 0 && (v9 || self->val$afterDoc_ < v3))
    {
      v10 = self->this$0_;
      if (v10->super.queueFull_)
      {
        bottom = v10->super.bottom_;
        if (bottom)
        {
          sub_1000950A4(self, *(&bottom->super.shardIndex_ + 1), v3);
          v12 = self->this$0_;
          if (LOBYTE(v12->queue_) != 1 || (BYTE1(v12->queue_) & 1) != 0)
          {
            goto LABEL_18;
          }

          v13 = self->super.scorer_;
          if (v13)
          {
            [(OrgApacheLuceneSearchScorer *)v13 score];
            v8 = v14;
            v12 = self->this$0_;
LABEL_18:
            sub_1000949E8(v12, v3, v8);
            v15 = self->this$0_->super.bottom_;
LABEL_26:
            v23 = *(&v15->super.shardIndex_ + 1);

            sub_100095130(self, v23);
            return;
          }
        }
      }

      else
      {
        ++*(&v10->super.fillFields_ + 3);
        v16 = *(&self->this$0_->super.fillFields_ + 3) - 1;
        sub_1000950A4(self, v16, v3);
        v17 = self->this$0_;
        if (LOBYTE(v17->queue_) == 1 && (BYTE1(v17->queue_) & 1) == 0)
        {
          v18 = self->super.scorer_;
          if (!v18)
          {
            goto LABEL_29;
          }

          [(OrgApacheLuceneSearchScorer *)v18 score];
          v8 = v19;
          v17 = self->this$0_;
        }

        pq = v17->super.super.pq_;
        if (pq)
        {
          v21 = [(OrgApacheLuceneUtilPriorityQueue *)pq addWithId:new_OrgApacheLuceneSearchFieldValueHitQueue_Entry_initWithInt_withInt_withFloat_(v16, (v17->super.docBase_ + v3), v8)];
          JreStrongAssign(&v17->super.bottom_, v21);
          self->this$0_->super.queueFull_ = *(&self->this$0_->super.fillFields_ + 3) == LODWORD(self->this$0_->super.maxScore_);
          v22 = self->this$0_;
          if (!v22->super.queueFull_)
          {
            return;
          }

          v15 = v22->super.bottom_;
          if (v15)
          {
            goto LABEL_26;
          }
        }
      }

LABEL_29:
      JreThrowNullPointerException();
    }
  }
}

- (OrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector_$1)initWithOrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector:(id)collector withInt:(int)int withOrgApacheLuceneSearchLeafFieldComparatorArray:(id)array withIntArray:(id)intArray
{
  JreStrongAssign(&self->this$0_, collector);
  self->val$afterDoc_ = int;
  sub_100094EC0(self, array, intArray);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector__1;
  [(OrgApacheLuceneSearchTopFieldCollector_MultiComparatorLeafCollector *)&v3 dealloc];
}

@end