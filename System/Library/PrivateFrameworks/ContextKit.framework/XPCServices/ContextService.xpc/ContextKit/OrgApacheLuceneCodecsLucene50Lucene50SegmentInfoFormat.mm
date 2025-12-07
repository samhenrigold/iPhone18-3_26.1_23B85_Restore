@interface OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat
- (id)readWithOrgApacheLuceneStoreDirectory:(id)directory withNSString:(id)string withByteArray:(id)array withOrgApacheLuceneStoreIOContext:(id)context;
- (void)writeWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withOrgApacheLuceneStoreIOContext:(id)context;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat

- (id)readWithOrgApacheLuceneStoreDirectory:(id)directory withNSString:(id)string withByteArray:(id)array withOrgApacheLuceneStoreIOContext:(id)context
{
  v10 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(string, &stru_100484358, OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_SI_EXTENSION_);
  if (!directory)
  {
    JreThrowNullPointerException();
  }

  v11 = [directory openChecksumInputWithNSString:v10 withOrgApacheLuceneStoreIOContext:context];
  v12 = OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(v11, OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_CODEC_NAME_, 0, 1, array, &stru_100484358);
  if (!v11)
  {
    JreThrowNullPointerException();
  }

  v13 = v12;
  v14 = OrgApacheLuceneUtilVersion_fromBitsWithInt_withInt_withInt_([v11 readInt], objc_msgSend(v11, "readInt"), objc_msgSend(v11, "readInt"));
  readInt = [v11 readInt];
  if (readInt < 0)
  {
    v35 = JreStrcat("$I", v15, v16, v17, v18, v19, v20, v21, @"invalid docCount: ");
    v36 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v35, v11);
    objc_exception_throw(v36);
  }

  readByte = [v11 readByte];
  if (v13 < 1)
  {
    readStringStringMap = [v11 readStringStringMap];
    readMapOfStrings = JavaUtilCollections_unmodifiableMapWithJavaUtilMap_(readStringStringMap, v28);
    readStringSet = [v11 readStringSet];
    readSetOfStrings = JavaUtilCollections_unmodifiableSetWithJavaUtilSet_(readStringSet, v30);
    readStringStringMap2 = [v11 readStringStringMap];
    readMapOfStrings2 = JavaUtilCollections_unmodifiableMapWithJavaUtilMap_(readStringStringMap2, v32);
  }

  else
  {
    readMapOfStrings = [v11 readMapOfStrings];
    readSetOfStrings = [v11 readSetOfStrings];
    readMapOfStrings2 = [v11 readMapOfStrings];
  }

  v33 = new_OrgApacheLuceneIndexSegmentInfo_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneUtilVersion_withNSString_withInt_withBoolean_withOrgApacheLuceneCodecsCodec_withJavaUtilMap_withByteArray_withJavaUtilMap_(directory, v14, string, readInt, readByte == 1, 0, readMapOfStrings, array, readMapOfStrings2);
  [(OrgApacheLuceneIndexSegmentInfo *)v33 setFilesWithJavaUtilCollection:readSetOfStrings];
  OrgApacheLuceneCodecsCodecUtil_checkFooterWithOrgApacheLuceneStoreChecksumIndexInput_withJavaLangThrowable_(v11, 0);
  [v11 close];
  return v33;
}

- (void)writeWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withOrgApacheLuceneStoreIOContext:(id)context
{
  if (!info || (v8 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(info + 1), &stru_100484358, OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_SI_EXTENSION_), !directory))
  {
    JreThrowNullPointerException();
  }

  v9 = v8;
  v10 = [directory createOutputWithNSString:v8 withOrgApacheLuceneStoreIOContext:context];
  [info addFileWithNSString:v9];
  OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(v10, OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_CODEC_NAME_, 1, [info getId], &stru_100484358);
  getVersion = [info getVersion];
  v18 = getVersion;
  if (!getVersion)
  {
    goto LABEL_22;
  }

  v19 = getVersion[2];
  if (v19 <= 4)
  {
    v36 = JreStrcat("$I$@", v12, v19, v13, v14, v15, v16, v17, @"invalid major version: should be >= 5 but got: ");
    v37 = new_JavaLangIllegalArgumentException_initWithNSString_(v36);
    objc_exception_throw(v37);
  }

  if (!v10)
  {
LABEL_22:
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneUtilBytesRef *)v10 writeIntWithInt:?];
  [(OrgApacheLuceneUtilBytesRef *)v10 writeIntWithInt:v18[3]];
  [(OrgApacheLuceneUtilBytesRef *)v10 writeIntWithInt:v18[4]];
  -[OrgApacheLuceneUtilBytesRef writeIntWithInt:](v10, "writeIntWithInt:", [info maxDoc]);
  if ([info getUseCompoundFile])
  {
    v20 = 1;
  }

  else
  {
    v20 = 0xFFFFFFFFLL;
  }

  [(OrgApacheLuceneUtilBytesRef *)v10 writeByteWithByte:v20];
  -[OrgApacheLuceneUtilBytesRef writeMapOfStringsWithJavaUtilMap:](v10, "writeMapOfStringsWithJavaUtilMap:", [info getDiagnostics]);
  files = [info files];
  v22 = files;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  if (!files)
  {
LABEL_20:
    JreThrowNullPointerException();
  }

  v23 = [files countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v23)
  {
    v24 = *v39;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v39 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = OrgApacheLuceneIndexIndexFileNames_parseSegmentNameWithNSString_(*(*(&v38 + 1) + 8 * i));
        if (!v26)
        {
          goto LABEL_20;
        }

        if (([v26 isEqual:*(info + 1)] & 1) == 0)
        {
          v34 = JreStrcat("$$$@", v27, v28, v29, v30, v31, v32, v33, @"invalid files: expected segment=");
          v35 = new_JavaLangIllegalArgumentException_initWithNSString_(v34);
          objc_exception_throw(v35);
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v23);
  }

  [(OrgApacheLuceneUtilBytesRef *)v10 writeSetOfStringsWithJavaUtilSet:v22];
  -[OrgApacheLuceneUtilBytesRef writeMapOfStringsWithJavaUtilMap:](v10, "writeMapOfStringsWithJavaUtilMap:", [info getAttributes]);
  OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(v10);
  [(OrgApacheLuceneUtilBytesRef *)v10 close];
}

@end