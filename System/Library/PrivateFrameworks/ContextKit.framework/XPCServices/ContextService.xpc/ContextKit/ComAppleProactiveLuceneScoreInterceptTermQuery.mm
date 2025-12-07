@interface ComAppleProactiveLuceneScoreInterceptTermQuery
- (ComAppleProactiveLuceneScoreInterceptTermQuery)initWithOrgApacheLuceneIndexTerm:(id)term withComAppleProactiveLuceneScoreInterceptTarget:(id)target;
- (id)createWeightWithOrgApacheLuceneSearchIndexSearcher:(id)searcher withBoolean:(BOOL)boolean;
- (void)__javaClone;
- (void)dealloc;
@end

@implementation ComAppleProactiveLuceneScoreInterceptTermQuery

- (ComAppleProactiveLuceneScoreInterceptTermQuery)initWithOrgApacheLuceneIndexTerm:(id)term withComAppleProactiveLuceneScoreInterceptTarget:(id)target
{
  OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(self, term);
  JreStrongAssign((&self->super.perReaderTermState_ + 4), target);
  return self;
}

- (id)createWeightWithOrgApacheLuceneSearchIndexSearcher:(id)searcher withBoolean:(BOOL)boolean
{
  v7.receiver = self;
  v7.super_class = ComAppleProactiveLuceneScoreInterceptTermQuery;
  v5 = [(OrgApacheLuceneSearchTermQuery *)&v7 createWeightWithOrgApacheLuceneSearchIndexSearcher:searcher withBoolean:boolean];
  return new_ComAppleProactiveLuceneScoreInterceptWeight_initWithOrgApacheLuceneSearchWeight_withComAppleProactiveLuceneScoreInterceptTarget_(v5, *(&self->super.perReaderTermState_ + 4));
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveLuceneScoreInterceptTermQuery;
  [(OrgApacheLuceneSearchTermQuery *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveLuceneScoreInterceptTermQuery;
  [(ComAppleProactiveLuceneScoreInterceptTermQuery *)&v3 __javaClone];
}

@end