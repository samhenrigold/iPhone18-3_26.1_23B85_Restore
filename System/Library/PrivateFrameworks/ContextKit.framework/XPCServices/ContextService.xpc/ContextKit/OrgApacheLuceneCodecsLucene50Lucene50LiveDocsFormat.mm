@interface OrgApacheLuceneCodecsLucene50Lucene50LiveDocsFormat
- (id)newLiveDocsWithInt:(int)int;
- (id)newLiveDocsWithOrgApacheLuceneUtilBits:(id)bits;
- (id)readLiveDocsWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentCommitInfo:(id)info withOrgApacheLuceneStoreIOContext:(id)context;
- (void)filesWithOrgApacheLuceneIndexSegmentCommitInfo:(id)info withJavaUtilCollection:(id)collection;
- (void)writeLiveDocsWithOrgApacheLuceneUtilMutableBits:(id)bits withOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentCommitInfo:(id)info withInt:(int)int withOrgApacheLuceneStoreIOContext:(id)context;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50LiveDocsFormat

- (id)newLiveDocsWithInt:(int)int
{
  v3 = *&int;
  v4 = new_OrgApacheLuceneUtilFixedBitSet_initWithInt_(int);
  [(OrgApacheLuceneUtilFixedBitSet *)v4 setWithInt:0 withInt:v3];
  return v4;
}

- (id)newLiveDocsWithOrgApacheLuceneUtilBits:(id)bits
{
  objc_opt_class();
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [bits clone];
}

- (id)readLiveDocsWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentCommitInfo:(id)info withOrgApacheLuceneStoreIOContext:(id)context
{
  if (!info || (v8 = [info getDelGen], (v9 = *(info + 1)) == 0) || (v10 = v8, v11 = OrgApacheLuceneIndexIndexFileNames_fileNameFromGenerationWithNSString_withNSString_withLong_(*(v9 + 8), @"liv", v8), v12 = objc_msgSend(*(info + 1), "maxDoc"), !directory))
  {
    JreThrowNullPointerException();
  }

  v13 = v12;
  v14 = [directory openChecksumInputWithNSString:v11 withOrgApacheLuceneStoreIOContext:context];
  getId = [*(info + 1) getId];
  v16 = JavaLangLong_toStringWithLong_withInt_(v10, 36);
  OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(v14, @"Lucene50LiveDocs", 0, 0, getId, v16);
  v18 = [IOSLongArray arrayWithLength:OrgApacheLuceneUtilFixedBitSet_bits2wordsWithInt_(v13, v17)];
  v19 = v18;
  if (v18->super.size_ >= 1)
  {
    if (!v14)
    {
      JreThrowNullPointerException();
    }

    v20 = 0;
    v21 = v18;
    do
    {
      readLong = [v14 readLong];
      size = v19->super.size_;
      if (v20 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v20);
      }

      v21->buffer_[0] = readLong;
      ++v20;
      v21 = (v21 + 8);
    }

    while (v20 < v19->super.size_);
  }

  v24 = new_OrgApacheLuceneUtilFixedBitSet_initWithLongArray_withInt_(v19, v13);
  v25 = [(OrgApacheLuceneUtilFixedBitSet *)v24 length];
  cardinality = [(OrgApacheLuceneUtilFixedBitSet *)v24 cardinality];
  if (v25 - cardinality != [info getDelCount])
  {
    [(OrgApacheLuceneUtilFixedBitSet *)v24 length];
    [(OrgApacheLuceneUtilFixedBitSet *)v24 cardinality];
    [info getDelCount];
    v35 = JreStrcat("$I$I", v28, v29, v30, v31, v32, v33, v34, @"bits.deleted=");
    v36 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v35, v14);
    objc_exception_throw(v36);
  }

  OrgApacheLuceneCodecsCodecUtil_checkFooterWithOrgApacheLuceneStoreChecksumIndexInput_withJavaLangThrowable_(v14, 0);
  [v14 close];
  return v24;
}

- (void)writeLiveDocsWithOrgApacheLuceneUtilMutableBits:(id)bits withOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentCommitInfo:(id)info withInt:(int)int withOrgApacheLuceneStoreIOContext:(id)context
{
  if (!info)
  {
    goto LABEL_16;
  }

  getNextDelGen = [info getNextDelGen];
  v13 = *(info + 1);
  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = getNextDelGen;
  v15 = OrgApacheLuceneIndexIndexFileNames_fileNameFromGenerationWithNSString_withNSString_withLong_(*(v13 + 8), @"liv", getNextDelGen);
  objc_opt_class();
  if (!bits)
  {
    goto LABEL_16;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v16 = [bits length];
  v17 = v16 - [bits cardinality];
  if (v17 != [info getDelCount] + int)
  {
    [bits length];
    [bits cardinality];
    [info getDelCount];
    v31 = JreStrcat("$I$I$I", v24, v25, v26, v27, v28, v29, v30, @"bits.deleted=");
    v32 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_(v31, v15);
    objc_exception_throw(v32);
  }

  getBits = [bits getBits];
  if (!directory)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v19 = getBits;
  v20 = [directory createOutputWithNSString:v15 withOrgApacheLuceneStoreIOContext:context];
  getId = [*(info + 1) getId];
  v22 = JavaLangLong_toStringWithLong_withInt_(v14, 36);
  OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(v20, @"Lucene50LiveDocs", 0, getId, v22);
  if (!v19)
  {
    goto LABEL_15;
  }

  if (v19[2] >= 1)
  {
    v23 = 0;
    while (v20)
    {
      [(OrgApacheLuceneUtilBytesRef *)v20 writeLongWithLong:*&v19[2 * v23++ + 4]];
      if (v23 >= v19[2])
      {
        goto LABEL_12;
      }
    }

LABEL_15:
    JreThrowNullPointerException();
  }

LABEL_12:
  OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(v20);
  if (v20)
  {
    [(OrgApacheLuceneUtilBytesRef *)v20 close];
  }
}

- (void)filesWithOrgApacheLuceneIndexSegmentCommitInfo:(id)info withJavaUtilCollection:(id)collection
{
  if (!info)
  {
    goto LABEL_9;
  }

  if (![info hasDeletions])
  {
    return;
  }

  if (!collection || (v6 = *(info + 1)) == 0)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v7 = OrgApacheLuceneIndexIndexFileNames_fileNameFromGenerationWithNSString_withNSString_withLong_(*(v6 + 8), @"liv", [info getDelGen]);

  [collection addWithId:v7];
}

@end