@interface OrgApacheLuceneSearchBlendedTermQuery_Builder
- (id)addWithOrgApacheLuceneIndexTerm:(id)term withFloat:(float)float withOrgApacheLuceneIndexTermContext:(id)context;
- (id)build;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchBlendedTermQuery_Builder

- (id)addWithOrgApacheLuceneIndexTerm:(id)term withFloat:(float)float withOrgApacheLuceneIndexTermContext:(id)context
{
  numTerms = self->numTerms_;
  if (numTerms >= OrgApacheLuceneSearchBooleanQuery_getMaxClauseCount())
  {
    v43 = new_OrgApacheLuceneSearchBooleanQuery_TooManyClauses_init();
    objc_exception_throw(v43);
  }

  v16 = OrgApacheLuceneUtilArrayUtil_growWithNSObjectArray_withInt_(self->terms_, self->numTerms_ + 1, v10, v11, v12, v13, v14, v15);
  JreStrongAssign(&self->terms_, v16);
  v23 = OrgApacheLuceneUtilArrayUtil_growWithFloatArray_withInt_(self->boosts_, self->numTerms_ + 1, v17, v18, v19, v20, v21, v22);
  JreStrongAssign(&self->boosts_, v23);
  p_contexts = &self->contexts_;
  v31 = OrgApacheLuceneUtilArrayUtil_growWithNSObjectArray_withInt_(self->contexts_, self->numTerms_ + 1, v25, v26, v27, v28, v29, v30);
  JreStrongAssign(&self->contexts_, v31);
  terms = self->terms_;
  if (!terms)
  {
    goto LABEL_9;
  }

  if (!term)
  {
    goto LABEL_9;
  }

  v33 = self->numTerms_;
  field = [term field];
  bytes = [term bytes];
  v37 = OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_(bytes, v36);
  v38 = new_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(field, v37);
  IOSObjectArray_SetAndConsume(terms, v33, v38);
  boosts = self->boosts_;
  if (!boosts)
  {
    goto LABEL_9;
  }

  v40 = self->numTerms_;
  size = boosts->super.size_;
  if (v40 < 0 || v40 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v40);
  }

  *(&boosts->super.size_ + v40 + 1) = float;
  if (!*p_contexts)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  IOSObjectArray_Set(*p_contexts, self->numTerms_, context);
  ++self->numTerms_;
  return self;
}

- (id)build
{
  v3 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(self->terms_, self->numTerms_);
  v4 = JavaUtilArrays_copyOfWithFloatArray_withInt_(self->boosts_, self->numTerms_);
  v5 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(self->contexts_, self->numTerms_);
  rewriteMethod = self->rewriteMethod_;
  v7 = [OrgApacheLuceneSearchBlendedTermQuery alloc];
  sub_100034E74(v7, v3, v4, v5, rewriteMethod);

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchBlendedTermQuery_Builder;
  [(OrgApacheLuceneSearchBlendedTermQuery_Builder *)&v3 dealloc];
}

@end