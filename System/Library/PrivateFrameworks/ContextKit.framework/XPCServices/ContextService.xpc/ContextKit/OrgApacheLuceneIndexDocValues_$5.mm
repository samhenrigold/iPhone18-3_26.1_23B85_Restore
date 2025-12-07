@interface OrgApacheLuceneIndexDocValues_$5
- (BOOL)getWithInt:(int)int;
- (OrgApacheLuceneIndexDocValues_$5)initWithOrgApacheLuceneIndexSortedSetDocValues:(id)values withInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexDocValues_$5

- (BOOL)getWithInt:(int)int
{
  v4 = self->val$dv_;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneIndexSortedSetDocValues *)v4 setDocumentWithInt:*&int];
  return [(OrgApacheLuceneIndexSortedSetDocValues *)self->val$dv_ nextOrd]!= -1;
}

- (OrgApacheLuceneIndexDocValues_$5)initWithOrgApacheLuceneIndexSortedSetDocValues:(id)values withInt:(int)int
{
  JreStrongAssign(&self->val$dv_, values);
  self->val$maxDoc_ = int;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexDocValues__5;
  [(OrgApacheLuceneIndexDocValues_$5 *)&v3 dealloc];
}

@end