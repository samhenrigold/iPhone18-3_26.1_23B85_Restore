@interface OrgApacheLuceneIndexDocValues_$6
- (BOOL)getWithInt:(int)int;
- (OrgApacheLuceneIndexDocValues_$6)initWithOrgApacheLuceneIndexSortedNumericDocValues:(id)values withInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexDocValues_$6

- (BOOL)getWithInt:(int)int
{
  v4 = self->val$dv_;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneIndexSortedNumericDocValues *)v4 setDocumentWithInt:*&int];
  return [(OrgApacheLuceneIndexSortedNumericDocValues *)self->val$dv_ count]!= 0;
}

- (OrgApacheLuceneIndexDocValues_$6)initWithOrgApacheLuceneIndexSortedNumericDocValues:(id)values withInt:(int)int
{
  JreStrongAssign(&self->val$dv_, values);
  self->val$maxDoc_ = int;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexDocValues__6;
  [(OrgApacheLuceneIndexDocValues_$6 *)&v3 dealloc];
}

@end