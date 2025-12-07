@interface OrgApacheLuceneIndexMergePolicy_OneMerge
- (id)getDocMapWithOrgApacheLuceneIndexMergeState:(id)state;
- (id)getException;
- (id)getMergeReaders;
- (id)getStoreMergeInfo;
- (id)segString;
- (int)totalNumDocs;
- (void)dealloc;
- (void)setExceptionWithJavaLangThrowable:(id)throwable;
@end

@implementation OrgApacheLuceneIndexMergePolicy_OneMerge

- (id)getMergeReaders
{
  readers = self->readers_;
  if (!readers)
  {
    v13 = new_JavaLangIllegalStateException_initWithNSString_(@"IndexWriter has not initialized readers from the segment infos yet");
    objc_exception_throw(v13);
  }

  v4 = new_JavaUtilArrayList_initWithInt_([(JavaUtilList *)readers size]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->readers_;
  v6 = [(JavaUtilList *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (!v11)
        {
          JreThrowNullPointerException();
        }

        if ([*(*(&v14 + 1) + 8 * i) numDocs] >= 1)
        {
          [(JavaUtilArrayList *)v4 addWithId:v11];
        }
      }

      v8 = [(JavaUtilList *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return JavaUtilCollections_unmodifiableListWithJavaUtilList_(v4, v7);
}

- (id)getDocMapWithOrgApacheLuceneIndexMergeState:(id)state
{
  v3 = [OrgApacheLuceneIndexMergePolicy_OneMerge__1 alloc];

  return v3;
}

- (void)setExceptionWithJavaLangThrowable:(id)throwable
{
  objc_sync_enter(self);
  JreStrongAssign(&self->error_, throwable);

  objc_sync_exit(self);
}

- (id)getException
{
  objc_sync_enter(self);
  error = self->error_;
  objc_sync_exit(self);
  return error;
}

- (id)segString
{
  v3 = new_JavaLangStringBuilder_init();
  segments = self->segments_;
  if (!segments)
  {
    goto LABEL_20;
  }

  v5 = [(JavaUtilList *)segments size];
  if (v5 >= 1)
  {
    v13 = v5;
    v14 = 0;
    do
    {
      if (v14)
      {
        [(JavaLangStringBuilder *)v3 appendWithChar:32];
      }

      v15 = [(JavaUtilList *)self->segments_ getWithInt:v14];
      if (!v15)
      {
        goto LABEL_20;
      }

      -[JavaLangStringBuilder appendWithNSString:](v3, "appendWithNSString:", [v15 description]);
      v14 = (v14 + 1);
    }

    while (v13 != v14);
  }

  if (self->info_)
  {
    v16 = [(JavaLangStringBuilder *)v3 appendWithNSString:@" into "];
    if (!v16)
    {
      goto LABEL_20;
    }

    info = self->info_->info_;
    if (!info)
    {
      goto LABEL_20;
    }

    [v16 appendWithNSString:info->name_];
  }

  if (self->maxNumSegments_ != -1)
  {
    [(JavaLangStringBuilder *)v3 appendWithNSString:JreStrcat("$IC", v6, v7, v8, v9, v10, v11, v12, @" [maxNumSegments=")];
  }

  rateLimiter = self->rateLimiter_;
  if (!rateLimiter)
  {
LABEL_20:
    JreThrowNullPointerException();
  }

  if ([(OrgApacheLuceneIndexMergeRateLimiter *)rateLimiter getAbort])
  {
    [(JavaLangStringBuilder *)v3 appendWithNSString:@" [ABORTED]"];
  }

  return [(JavaLangStringBuilder *)v3 description];
}

- (int)totalNumDocs
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  segments = self->segments_;
  if (!segments)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v3 = [(JavaUtilList *)self->segments_ countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v12;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(segments);
      }

      v8 = *(*(&v11 + 1) + 8 * i);
      if (!v8)
      {
        goto LABEL_14;
      }

      v9 = *(v8 + 8);
      if (!v9)
      {
        goto LABEL_14;
      }

      v5 += [v9 maxDoc];
    }

    v4 = [(JavaUtilList *)segments countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v4);
  return v5;
}

- (id)getStoreMergeInfo
{
  totalMaxDoc = self->totalMaxDoc_;
  v3 = atomic_load(&self->estimatedMergeBytes_);
  v4 = new_OrgApacheLuceneStoreMergeInfo_initWithInt_withLong_withBoolean_withInt_(totalMaxDoc, v3, self->isExternal_, self->maxNumSegments_);

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMergePolicy_OneMerge;
  [(OrgApacheLuceneIndexMergePolicy_OneMerge *)&v3 dealloc];
}

@end