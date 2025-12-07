@interface OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery
- (BOOL)isEqual:(id)equal;
- (id)createWeightWithOrgApacheLuceneSearchIndexSearcher:(id)searcher withBoolean:(BOOL)boolean;
- (id)toStringWithNSString:(id)string;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery

- (BOOL)isEqual:(id)equal
{
  v9.receiver = self;
  v9.super_class = OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery;
  v5 = [(OrgApacheLuceneSearchQuery *)&v9 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if (!equal)
    {
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v6 = *(&self->super.boost_ + 1);
    if (!v6)
    {
      goto LABEL_9;
    }

    v5 = [v6 isEqual:*(equal + 12)];
    if (v5)
    {
      v7 = *(&self->filter_ + 4);
      if (v7)
      {
        LOBYTE(v5) = [v7 isEqual:*(equal + 20)];
        return v5;
      }

LABEL_9:
      JreThrowNullPointerException();
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery;
  v3 = [(OrgApacheLuceneSearchQuery *)&v10 hash];
  v4 = v3;
  v5 = *(&self->filter_ + 4);
  v11[0] = *(&self->super.boost_ + 1);
  v11[1] = v5;
  v7 = [IOSObjectArray arrayWithObjects:v11 count:2 type:NSObject_class_(v3, v6)];
  return (OrgLukhnosPortmobileUtilObjects_hash__WithNSObjectArray_(v7, v8) - v4 + 32 * v4);
}

- (id)toStringWithNSString:(id)string
{
  v4 = *(&self->super.boost_ + 1);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 toStringWithNSString:string];
}

- (id)createWeightWithOrgApacheLuceneSearchIndexSearcher:(id)searcher withBoolean:(BOOL)boolean
{
  v5 = [OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery__1 alloc];
  JreStrongAssign(&v5->this$0_, self);
  OrgApacheLuceneSearchWeight_initWithOrgApacheLuceneSearchQuery_(v5, self);

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery;
  [(OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery *)&v3 dealloc];
}

@end