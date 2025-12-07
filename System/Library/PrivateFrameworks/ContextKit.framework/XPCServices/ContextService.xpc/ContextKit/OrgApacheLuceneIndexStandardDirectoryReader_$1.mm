@interface OrgApacheLuceneIndexStandardDirectoryReader_$1
- (id)doBodyWithNSString:(id)string;
@end

@implementation OrgApacheLuceneIndexStandardDirectoryReader_$1

- (id)doBodyWithNSString:(id)string
{
  CommitWithOrgApacheLuceneStoreDirectory_withNSString = OrgApacheLuceneIndexSegmentInfos_readCommitWithOrgApacheLuceneStoreDirectory_withNSString_(self->super.directory_, string);
  if (!CommitWithOrgApacheLuceneStoreDirectory_withNSString)
  {
    JreThrowNullPointerException();
  }

  v5 = CommitWithOrgApacheLuceneStoreDirectory_withNSString;
  v6 = [(OrgApacheLuceneIndexSegmentInfos *)CommitWithOrgApacheLuceneStoreDirectory_withNSString size];
  v8 = [IOSObjectArray arrayWithLength:v6 type:OrgApacheLuceneIndexSegmentReader_class_(v6, v7)];
  for (i = [(OrgApacheLuceneIndexSegmentInfos *)v5 size]; (--i & 0x80000000) == 0; IOSObjectArray_SetAndConsume(v8, i & 0x7FFFFFFF, v11))
  {
    v10 = [(OrgApacheLuceneIndexSegmentInfos *)v5 infoWithInt:i];
    if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    v11 = new_OrgApacheLuceneIndexSegmentReader_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreIOContext_(v10, OrgApacheLuceneStoreIOContext_READ_);
  }

  directory = self->super.directory_;
  v13 = [OrgApacheLuceneIndexStandardDirectoryReader alloc];
  OrgApacheLuceneIndexStandardDirectoryReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexLeafReaderArray_withOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexSegmentInfos_withBoolean_(v13, directory, v8, 0, v5, 0);
  return v13;
}

@end