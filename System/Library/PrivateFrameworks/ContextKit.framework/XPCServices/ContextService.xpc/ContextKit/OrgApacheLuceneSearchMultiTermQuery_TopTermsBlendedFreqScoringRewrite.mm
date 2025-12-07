@interface OrgApacheLuceneSearchMultiTermQuery_TopTermsBlendedFreqScoringRewrite
- (id)buildWithId:(id)id;
- (id)getTopLevelBuilder;
- (void)addClauseWithId:(id)id withOrgApacheLuceneIndexTerm:(id)term withInt:(int)int withFloat:(float)float withOrgApacheLuceneIndexTermContext:(id)context;
@end

@implementation OrgApacheLuceneSearchMultiTermQuery_TopTermsBlendedFreqScoringRewrite

- (id)getTopLevelBuilder
{
  v2 = new_OrgApacheLuceneSearchBlendedTermQuery_Builder_init();
  if ((atomic_load_explicit(OrgApacheLuceneSearchBlendedTermQuery__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000361F0();
  }

  [(OrgApacheLuceneSearchBlendedTermQuery_Builder *)v2 setRewriteMethodWithOrgApacheLuceneSearchBlendedTermQuery_RewriteMethod:OrgApacheLuceneSearchBlendedTermQuery_BOOLEAN_REWRITE_];
  return v2;
}

- (id)buildWithId:(id)id
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  return [id build];
}

- (void)addClauseWithId:(id)id withOrgApacheLuceneIndexTerm:(id)term withInt:(int)int withFloat:(float)float withOrgApacheLuceneIndexTermContext:(id)context
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  [id addWithOrgApacheLuceneIndexTerm:term withFloat:context withOrgApacheLuceneIndexTermContext:*&int];
}

@end