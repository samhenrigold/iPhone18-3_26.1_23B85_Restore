@interface OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile
- (id)runWithOrgApacheLuceneIndexIndexCommit:(id)commit;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile

- (id)runWithOrgApacheLuceneIndexIndexCommit:(id)commit
{
  directory = self->directory_;
  if (commit)
  {
    if (directory == [commit getDirectory])
    {
      getSegmentsFileName = [commit getSegmentsFileName];

      return [(OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile *)self doBodyWithNSString:getSegmentsFileName];
    }

    v32 = new_JavaIoIOException_initWithNSString_(@"the specified commit does not match the specified Directory");
LABEL_24:
    objc_exception_throw(v32);
  }

  if (!directory)
  {
LABEL_21:
    JreThrowNullPointerException();
  }

  while (1)
  {
    listAll = [(OrgApacheLuceneStoreDirectory *)directory listAll];
    listAll2 = [(OrgApacheLuceneStoreDirectory *)self->directory_ listAll];
    JavaUtilArrays_sortWithNSObjectArray_(listAll, v10);
    JavaUtilArrays_sortWithNSObjectArray_(listAll2, v11);
    if (JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(listAll, listAll2))
    {
      break;
    }

    directory = self->directory_;
    if (!directory)
    {
      goto LABEL_21;
    }
  }

  LastCommitGenerationWithNSStringArray = OrgApacheLuceneIndexSegmentInfos_getLastCommitGenerationWithNSStringArray_(listAll);
  if ((atomic_load_explicit(&OrgApacheLuceneIndexSegmentInfos__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001987C();
  }

  if (qword_100553E40)
  {
    v20 = JreStrcat("$J", v12, v13, v14, v15, v16, v17, v18, @"directory listing gen=");
    sub_10001975C(v20, v21);
  }

  if (LastCommitGenerationWithNSStringArray == -1)
  {
    JavaUtilArrays_toStringWithNSObjectArray_(listAll);
    v40 = JreStrcat("$@$$", v33, v34, v35, v36, v37, v38, v39, @"no segments* file found in ");
    v32 = new_OrgApacheLuceneIndexIndexNotFoundException_initWithNSString_(v40);
    goto LABEL_24;
  }

  if (LastCommitGenerationWithNSStringArray <= -1)
  {
    objc_exception_throw(0);
  }

  v29 = [(OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile *)self doBodyWithNSString:OrgApacheLuceneIndexIndexFileNames_fileNameFromGenerationWithNSString_withNSString_withLong_(OrgApacheLuceneIndexIndexFileNames_SEGMENTS_, &stru_100484358, LastCommitGenerationWithNSStringArray)];
  if ((atomic_load_explicit(&OrgApacheLuceneIndexSegmentInfos__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (qword_100553E40)
  {
    v30 = JreStrcat("$$", v22, v23, v24, v25, v26, v27, v28, @"success on ");
    sub_10001975C(v30, v31);
  }

  return v29;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile;
  [(OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile *)&v3 dealloc];
}

@end