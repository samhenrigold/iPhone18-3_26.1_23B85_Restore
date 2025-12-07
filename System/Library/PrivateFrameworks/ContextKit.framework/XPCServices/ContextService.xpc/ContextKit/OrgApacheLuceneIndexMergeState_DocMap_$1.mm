@interface OrgApacheLuceneIndexMergeState_DocMap_$1
- (OrgApacheLuceneIndexMergeState_DocMap_$1)initWithOrgApacheLuceneUtilBits:(id)bits withOrgApacheLuceneUtilPackedPackedLongValues:(id)values withInt:(int)int withInt:(int)withInt;
- (int)getWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMergeState_DocMap_$1

- (int)getWithInt:(int)int
{
  v4 = self->val$liveDocs_;
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *&int;
  if ([(OrgApacheLuceneUtilBits *)v4 getWithInt:?])
  {
    v6 = self->val$docMap_;
    if (v6)
    {
      return [(OrgApacheLuceneUtilLongValues *)v6 getWithInt:v5];
    }

LABEL_6:
    JreThrowNullPointerException();
  }

  return -1;
}

- (OrgApacheLuceneIndexMergeState_DocMap_$1)initWithOrgApacheLuceneUtilBits:(id)bits withOrgApacheLuceneUtilPackedPackedLongValues:(id)values withInt:(int)int withInt:(int)withInt
{
  JreStrongAssign(&self->val$liveDocs_, bits);
  JreStrongAssign(&self->val$docMap_, values);
  self->val$maxDoc_ = int;
  self->val$numDeletedDocs_ = withInt;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMergeState_DocMap__1;
  [(OrgApacheLuceneIndexMergeState_DocMap_$1 *)&v3 dealloc];
}

@end