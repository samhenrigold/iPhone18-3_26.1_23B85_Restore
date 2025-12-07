@interface OrgApacheLuceneSearchIndexSearcher_$4
- (OrgApacheLuceneSearchIndexSearcher_$4)initWithOrgApacheLuceneSearchSort:(id)sort withInt:(int)int withOrgApacheLuceneSearchFieldDoc:(id)doc withBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean;
- (id)reduceWithJavaUtilCollection:(id)collection;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchIndexSearcher_$4

- (id)reduceWithJavaUtilCollection:(id)collection
{
  if (!collection)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v5 = [collection size];
  v7 = [IOSObjectArray arrayWithLength:v5 type:OrgApacheLuceneSearchTopFieldDocs_class_(v5, v6)];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [collection countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(collection);
        }

        v14 = *(*(&v16 + 1) + 8 * v12);
        if (!v14)
        {
          goto LABEL_11;
        }

        v10 = v13 + 1;
        IOSObjectArray_Set(v7, v13, [v14 topDocs]);
        v12 = v12 + 1;
        ++v13;
      }

      while (v9 != v12);
      v9 = [collection countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return OrgApacheLuceneSearchTopDocs_mergeWithOrgApacheLuceneSearchSort_withInt_withOrgApacheLuceneSearchTopFieldDocsArray_(self->val$sort_, self->val$cappedNumHits_, v7);
}

- (OrgApacheLuceneSearchIndexSearcher_$4)initWithOrgApacheLuceneSearchSort:(id)sort withInt:(int)int withOrgApacheLuceneSearchFieldDoc:(id)doc withBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean
{
  JreStrongAssign(&self->val$sort_, sort);
  self->val$cappedNumHits_ = int;
  JreStrongAssign(&self->val$after_, doc);
  self->val$doDocScores_ = boolean;
  self->val$doMaxScore_ = withBoolean;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchIndexSearcher__4;
  [(OrgApacheLuceneSearchIndexSearcher_$4 *)&v3 dealloc];
}

@end