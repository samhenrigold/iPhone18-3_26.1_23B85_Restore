@interface OrgApacheLuceneIndexDocValues_$1
- (OrgApacheLuceneIndexDocValues_$1)initWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexDocValues_$1

- (OrgApacheLuceneIndexDocValues_$1)initWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  JreStrongAssign(&self->val$empty_, ref);
  OrgApacheLuceneIndexBinaryDocValues_init();
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexDocValues__1;
  [(OrgApacheLuceneIndexDocValues_$1 *)&v3 dealloc];
}

@end