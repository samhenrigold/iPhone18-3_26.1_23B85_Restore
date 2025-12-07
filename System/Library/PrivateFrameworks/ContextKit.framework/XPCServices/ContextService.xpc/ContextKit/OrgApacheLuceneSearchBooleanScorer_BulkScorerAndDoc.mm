@interface OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc
- (void)__javaClone;
- (void)scoreWithOrgApacheLuceneUtilBits:(id)bits withInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc

- (void)scoreWithOrgApacheLuceneUtilBits:(id)bits withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  Weak = objc_loadWeak(&self->scorer_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  self->next_ = [Weak scoreWithOrgApacheLuceneSearchLeafCollector:*(objc_loadWeak(&self->this$0_) + 10) withOrgApacheLuceneUtilBits:bits withInt:v6 withInt:v5];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc;
  [(OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc *)&v3 __javaClone];
}

@end