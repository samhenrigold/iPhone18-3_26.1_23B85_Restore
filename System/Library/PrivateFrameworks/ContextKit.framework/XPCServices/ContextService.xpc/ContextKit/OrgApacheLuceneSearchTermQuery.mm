@interface OrgApacheLuceneSearchTermQuery
- (BOOL)isEqual:(id)equal;
- (id)createWeightWithOrgApacheLuceneSearchIndexSearcher:(id)searcher withBoolean:(BOOL)boolean;
- (id)toStringWithNSString:(id)string;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTermQuery

- (id)createWeightWithOrgApacheLuceneSearchIndexSearcher:(id)searcher withBoolean:(BOOL)boolean
{
  if (!searcher)
  {
    JreThrowNullPointerException();
  }

  booleanCopy = boolean;
  getTopReaderContext = [searcher getTopReaderContext];
  v8 = *(&self->term_ + 4);
  if (!v8 || v8->topReaderContext_ != getTopReaderContext)
  {
    v8 = OrgApacheLuceneIndexTermContext_buildWithOrgApacheLuceneIndexIndexReaderContext_withOrgApacheLuceneIndexTerm_(getTopReaderContext, *(&self->super.boost_ + 1));
  }

  v9 = [OrgApacheLuceneSearchTermQuery_TermWeight alloc];
  OrgApacheLuceneSearchTermQuery_TermWeight_initWithOrgApacheLuceneSearchTermQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withOrgApacheLuceneIndexTermContext_(v9, self, searcher, booleanCopy, v8);

  return v9;
}

- (id)toStringWithNSString:(id)string
{
  v5 = new_JavaLangStringBuilder_init();
  v6 = *(&self->super.boost_ + 1);
  if (!v6 || (v7 = [v6 field]) == 0)
  {
    JreThrowNullPointerException();
  }

  if (([v7 isEqual:string] & 1) == 0)
  {
    -[JavaLangStringBuilder appendWithNSString:](v5, "appendWithNSString:", [*(&self->super.boost_ + 1) field]);
    [(JavaLangStringBuilder *)v5 appendWithNSString:@":"];
  }

  -[JavaLangStringBuilder appendWithNSString:](v5, "appendWithNSString:", [*(&self->super.boost_ + 1) text]);
  getBoost = [(OrgApacheLuceneSearchQuery *)self getBoost];
  [(JavaLangStringBuilder *)v5 appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_(v10, getBoost, v9)];

  return [(JavaLangStringBuilder *)v5 description];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (equal && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v8.receiver = self;
    v8.super_class = OrgApacheLuceneSearchTermQuery;
    v5 = [(OrgApacheLuceneSearchQuery *)&v8 isEqual:equal];
    if (v5)
    {
      v6 = *(&self->super.boost_ + 1);
      if (!v6 || !equal)
      {
        JreThrowNullPointerException();
      }

      LOBYTE(v5) = [v6 isEqual:*(equal + 12)];
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = OrgApacheLuceneSearchTermQuery;
  v3 = [(OrgApacheLuceneSearchQuery *)&v6 hash];
  v4 = *(&self->super.boost_ + 1);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return ([v4 hash] ^ v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTermQuery;
  [(OrgApacheLuceneSearchTermQuery *)&v3 dealloc];
}

@end