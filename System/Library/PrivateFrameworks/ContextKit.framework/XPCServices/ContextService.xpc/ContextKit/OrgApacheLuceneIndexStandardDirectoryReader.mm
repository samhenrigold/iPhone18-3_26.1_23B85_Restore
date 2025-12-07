@interface OrgApacheLuceneIndexStandardDirectoryReader
- (BOOL)isCurrent;
- (id)description;
- (id)doOpenIfChangedWithOrgApacheLuceneIndexIndexCommit:(id)commit;
- (id)doOpenIfChangedWithOrgApacheLuceneIndexIndexWriter:(id)writer withBoolean:(BOOL)boolean;
- (id)doOpenIfChangedWithOrgApacheLuceneIndexSegmentInfos:(id)infos;
- (id)getIndexCommit;
- (int64_t)getVersion;
- (void)dealloc;
- (void)doClose;
@end

@implementation OrgApacheLuceneIndexStandardDirectoryReader

- (id)description
{
  v3 = new_JavaLangStringBuilder_init();
  -[JavaLangStringBuilder appendWithNSString:](v3, "appendWithNSString:", [-[OrgApacheLuceneIndexStandardDirectoryReader getClass](self "getClass")]);
  [(JavaLangStringBuilder *)v3 appendWithChar:40];
  segmentInfos = self->segmentInfos_;
  if (!segmentInfos)
  {
    goto LABEL_17;
  }

  getSegmentsFileName = [(OrgApacheLuceneIndexSegmentInfos *)segmentInfos getSegmentsFileName];
  if (getSegmentsFileName)
  {
    v6 = [(JavaLangStringBuilder *)v3 appendWithNSString:getSegmentsFileName];
    if (!v6)
    {
      goto LABEL_17;
    }

    v7 = [v6 appendWithNSString:@":"];
    if (!v7)
    {
      goto LABEL_17;
    }

    [v7 appendWithLong:{-[OrgApacheLuceneIndexSegmentInfos getVersion](self->segmentInfos_, "getVersion")}];
  }

  if (self->writer_)
  {
    [(JavaLangStringBuilder *)v3 appendWithNSString:@":nrt"];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  getSequentialSubReaders = [(OrgApacheLuceneIndexBaseCompositeReader *)self getSequentialSubReaders];
  if (!getSequentialSubReaders)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v9 = getSequentialSubReaders;
  v10 = [getSequentialSubReaders countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        [(JavaLangStringBuilder *)v3 appendWithChar:32];
        [(JavaLangStringBuilder *)v3 appendWithId:v14];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:41];
  return [(JavaLangStringBuilder *)v3 description];
}

- (id)doOpenIfChangedWithOrgApacheLuceneIndexIndexCommit:(id)commit
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  if (self->writer_)
  {

    return sub_10010FF54(self, commit);
  }

  else
  {

    return sub_10011001C(self, commit);
  }
}

- (id)doOpenIfChangedWithOrgApacheLuceneIndexIndexWriter:(id)writer withBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  if (self->writer_ == writer && self->applyAllDeletes_ == booleanCopy)
  {

    return sub_10010FF54(self, 0);
  }

  else
  {
    if (!writer)
    {
      JreThrowNullPointerException();
    }

    return [writer getReaderWithBoolean:booleanCopy];
  }
}

- (id)doOpenIfChangedWithOrgApacheLuceneIndexSegmentInfos:(id)infos
{
  directory = self->super.directory_;
  getSequentialSubReaders = [(OrgApacheLuceneIndexBaseCompositeReader *)self getSequentialSubReaders];
  v6 = new_JavaUtilHashMap_init();
  if (getSequentialSubReaders)
  {
    v7 = [getSequentialSubReaders size];
    if (v7 >= 1)
    {
      v8 = v7;
      v9 = 0;
      while (1)
      {
        v10 = [getSequentialSubReaders getWithInt:v9];
        objc_opt_class();
        if (!v10)
        {
          break;
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_47:
          JreThrowClassCastException();
        }

        -[JavaUtilHashMap putWithId:withId:](v6, "putWithId:withId:", [v10 getSegmentName], JavaLangInteger_valueOfWithInt_(v9));
        v9 = (v9 + 1);
        if (v8 == v9)
        {
          goto LABEL_7;
        }
      }

LABEL_46:
      JreThrowNullPointerException();
    }
  }

LABEL_7:
  if (!infos)
  {
    goto LABEL_46;
  }

  v11 = [infos size];
  v48 = [IOSObjectArray arrayWithLength:v11 type:OrgApacheLuceneIndexSegmentReader_class_(v11, v12)];
  v13 = [infos size];
  v14 = v13 - 1;
  if ((v13 - 1) >= 0)
  {
    do
    {
      v15 = [infos infoWithInt:v14];
      if (!v15)
      {
        goto LABEL_46;
      }

      v16 = v15;
      v17 = v15[1];
      if (!v17)
      {
        goto LABEL_46;
      }

      v18 = [(JavaUtilHashMap *)v6 getWithId:v17[1]];
      if (!v18)
      {
        goto LABEL_17;
      }

      if (!getSequentialSubReaders)
      {
        goto LABEL_46;
      }

      v19 = [getSequentialSubReaders getWithInt:{objc_msgSend(v18, "intValue")}];
      objc_opt_class();
      if (!v19)
      {
        goto LABEL_17;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_47;
      }

      getUseCompoundFile = [v16[1] getUseCompoundFile];
      getSegmentInfo = [v19 getSegmentInfo];
      if (!getSegmentInfo)
      {
LABEL_48:
        JreThrowNullPointerException();
      }

      if (getUseCompoundFile == [getSegmentInfo[1] getUseCompoundFile])
      {
        getSegmentInfo2 = [v19 getSegmentInfo];
        if (!getSegmentInfo2)
        {
          goto LABEL_48;
        }

        getDelGen = [getSegmentInfo2 getDelGen];
        if (getDelGen != [v16 getDelGen])
        {
          goto LABEL_28;
        }

        getSegmentInfo3 = [v19 getSegmentInfo];
        if (!getSegmentInfo3)
        {
          goto LABEL_48;
        }

        getFieldInfosGen = [getSegmentInfo3 getFieldInfosGen];
        if (getFieldInfosGen == [v16 getFieldInfosGen])
        {
          [v19 incRef];
          IOSObjectArray_Set(v48, v14, v19);
        }

        else
        {
LABEL_28:
          maxDoc = [v16[1] maxDoc];
          getSegmentInfo4 = [v19 getSegmentInfo];
          if (!getSegmentInfo4)
          {
            JreThrowNullPointerException();
          }

          maxDoc2 = [getSegmentInfo4[1] maxDoc];
          if ([v16 hasDeletions])
          {
            LOBYTE(v31) = 0;
          }

          else
          {
            v31 = [v16 hasFieldUpdates] ^ 1;
          }

          if ([v16 getDelGen] == -1)
          {
            getSegmentInfo5 = [v19 getSegmentInfo];
            if (!getSegmentInfo5)
            {
              goto LABEL_49;
            }

            v39 = [getSegmentInfo5 getDelGen] != -1;
          }

          else
          {
            v39 = 0;
          }

          if ((maxDoc != maxDoc2) | v31 & 1 || v39)
          {
            v46 = JreStrcat("$$$", v32, v33, v34, v35, v36, v37, v38, @"same segment ");
            v47 = new_JavaLangIllegalStateException_initWithNSString_(v46);
            objc_exception_throw(v47);
          }

          getSegmentInfo6 = [v19 getSegmentInfo];
          if (!getSegmentInfo6)
          {
LABEL_49:
            JreThrowNullPointerException();
          }

          getDelGen2 = [getSegmentInfo6 getDelGen];
          if (getDelGen2 == [v16 getDelGen])
          {
            v43 = new_OrgApacheLuceneIndexSegmentReader_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneUtilBits_withInt_(v16, v19, [v19 getLiveDocs], objc_msgSend(v19, "numDocs"));
          }

          else
          {
            v43 = new_OrgApacheLuceneIndexSegmentReader_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneIndexSegmentReader_(v16, v19);
          }

          IOSObjectArray_SetAndConsume(v48, v14, v43);
        }
      }

      else
      {
LABEL_17:
        if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext__initialized, memory_order_acquire) & 1) == 0)
        {
          objc_opt_class();
        }

        v22 = new_OrgApacheLuceneIndexSegmentReader_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreIOContext_(v16, OrgApacheLuceneStoreIOContext_READ_);
        IOSObjectArray_Set(v48, v14, v22);
      }
    }

    while (v14-- > 0);
  }

  v44 = [OrgApacheLuceneIndexStandardDirectoryReader alloc];
  OrgApacheLuceneIndexStandardDirectoryReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexLeafReaderArray_withOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexSegmentInfos_withBoolean_(v44, directory, v48, 0, infos, 0);

  return v44;
}

- (int64_t)getVersion
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  segmentInfos = self->segmentInfos_;
  if (!segmentInfos)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexSegmentInfos *)segmentInfos getVersion];
}

- (BOOL)isCurrent
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  writer = self->writer_;
  if (writer && ![(OrgApacheLuceneIndexIndexWriter *)writer isClosed])
  {
    v8 = self->writer_;
    segmentInfos = self->segmentInfos_;

    return [(OrgApacheLuceneIndexIndexWriter *)v8 nrtIsCurrentWithOrgApacheLuceneIndexSegmentInfos:segmentInfos];
  }

  else
  {
    LatestCommitWithOrgApacheLuceneStoreDirectory = OrgApacheLuceneIndexSegmentInfos_readLatestCommitWithOrgApacheLuceneStoreDirectory_(self->super.directory_);
    if (!LatestCommitWithOrgApacheLuceneStoreDirectory || (v5 = [LatestCommitWithOrgApacheLuceneStoreDirectory getVersion], (v6 = self->segmentInfos_) == 0))
    {
      JreThrowNullPointerException();
    }

    return v5 == [(OrgApacheLuceneIndexSegmentInfos *)v6 getVersion];
  }
}

- (void)doClose
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  getSequentialSubReaders = [(OrgApacheLuceneIndexBaseCompositeReader *)self getSequentialSubReaders];
  if (!getSequentialSubReaders)
  {
    JreThrowNullPointerException();
  }

  v4 = getSequentialSubReaders;
  v5 = [getSequentialSubReaders countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (!v8)
        {
          JreThrowNullPointerException();
        }

        [v8 decRef];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v9 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v5 = v9;
    }

    while (v9);
  }

  writer = self->writer_;
  if (writer)
  {
    [(OrgApacheLuceneIndexIndexWriter *)writer decRefDeleterWithOrgApacheLuceneIndexSegmentInfos:self->segmentInfos_];
  }

  OrgApacheLuceneUtilIOUtils_reThrowWithJavaLangThrowable_(0);
}

- (id)getIndexCommit
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  segmentInfos = self->segmentInfos_;
  directory = self->super.directory_;
  v5 = [OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit alloc];
  OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit_initWithOrgApacheLuceneIndexStandardDirectoryReader_withOrgApacheLuceneIndexSegmentInfos_withOrgApacheLuceneStoreDirectory_(v5, self, segmentInfos, directory);

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexStandardDirectoryReader;
  [(OrgApacheLuceneIndexDirectoryReader *)&v3 dealloc];
}

@end