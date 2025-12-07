@interface OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat
+ (void)initialize;
- (id)readWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context;
- (void)writeWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withNSString:(id)string withOrgApacheLuceneIndexFieldInfos:(id)infos withOrgApacheLuceneStoreIOContext:(id)context;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat

- (id)readWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context
{
  if (!info || (v10 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(info + 1), string, OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_EXTENSION_), !directory))
  {
    JreThrowNullPointerException();
  }

  v11 = [directory openChecksumInputWithNSString:v10 withOrgApacheLuceneStoreIOContext:context];
  v70 = v11;
  v68 = OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(v11, OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_CODEC_NAME_, 0, 1, [info getId], string);
  if (!v11)
  {
    JreThrowNullPointerException();
  }

  readVInt = [v11 readVInt];
  v13 = readVInt;
  v69 = [IOSObjectArray arrayWithLength:readVInt type:OrgApacheLuceneIndexFieldInfo_class_(readVInt, v14)];
  v16 = JavaUtilCollections_emptyMap(v69, v15);
  if (v13 >= 1)
  {
    v17 = v16;
    v18 = 0;
    v67 = v13;
    v19 = OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat__initialized;
    do
    {
      readString = [v70 readString];
      readVInt2 = [v70 readVInt];
      if (readVInt2 < 0)
      {
        v61 = JreStrcat("$$$I", v21, v22, v23, v24, v25, v26, v27, @"invalid field number for field: ");
        v62 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v61, v70);
        objc_exception_throw(v62);
      }

      readByte = [v70 readByte];
      readByte2 = [v70 readByte];
      if ((atomic_load_explicit(v19, memory_order_acquire) & 1) == 0)
      {
        objc_opt_class();
      }

      if (readByte2 <= 1u)
      {
        if (!readByte2)
        {
          v38 = OrgApacheLuceneIndexIndexOptionsEnum_values_;
          if (atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire))
          {
            goto LABEL_24;
          }

          goto LABEL_54;
        }

        if (readByte2 != 1)
        {
LABEL_65:
          v63 = JreStrcat("$B", v30, v31, v32, v33, v34, v35, v36, @"invalid IndexOptions byte: ");
          v64 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v63, v70);
          objc_exception_throw(v64);
        }

        v38 = &qword_100557378;
        if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (readByte2 == 2)
        {
          v38 = &qword_100557380;
          if (atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire))
          {
            goto LABEL_24;
          }

LABEL_54:
          objc_opt_class();
          goto LABEL_24;
        }

        if (readByte2 == 3)
        {
          v38 = &qword_100557388;
          if (atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire))
          {
            goto LABEL_24;
          }

          goto LABEL_54;
        }

        if (readByte2 != 4)
        {
          goto LABEL_65;
        }

        v38 = &qword_100557390;
        if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_54;
        }
      }

LABEL_24:
      v39 = *v38;
      readByte3 = [v70 readByte];
      if ((atomic_load_explicit(v19, memory_order_acquire) & 1) == 0)
      {
        objc_opt_class();
      }

      if (readByte3 > 2u)
      {
        switch(readByte3)
        {
          case 3u:
            v48 = &qword_100557A88;
            if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
            {
              goto LABEL_55;
            }

            break;
          case 4u:
            v48 = &qword_100557A98;
            if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
            {
              goto LABEL_55;
            }

            break;
          case 5u:
            v48 = &qword_100557A90;
            if (atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire))
            {
              break;
            }

LABEL_55:
            objc_opt_class();
            break;
          default:
LABEL_66:
            v65 = JreStrcat("$B", v40, v41, v42, v43, v44, v45, v46, @"invalid docvalues byte: ");
            v66 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v65, v70);
            objc_exception_throw(v66);
        }
      }

      else if (readByte3)
      {
        if (readByte3 != 1)
        {
          if (readByte3 != 2)
          {
            goto LABEL_66;
          }

          v48 = &qword_100557A80;
          if (atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire))
          {
            goto LABEL_44;
          }

          goto LABEL_55;
        }

        v48 = &qword_100557A78;
        if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v48 = OrgApacheLuceneIndexDocValuesTypeEnum_values_;
        if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_55;
        }
      }

LABEL_44:
      v49 = v19;
      v50 = *v48;
      readLong = [v70 readLong];
      if (v68 < 1)
      {
        readStringStringMap = [v70 readStringStringMap];
        readMapOfStrings = JavaUtilCollections_unmodifiableMapWithJavaUtilMap_(readStringStringMap, v54);
      }

      else
      {
        readMapOfStrings = [v70 readMapOfStrings];
      }

      v55 = readMapOfStrings;
      if (!readMapOfStrings)
      {
        JreThrowNullPointerException();
      }

      if (![(JavaUtilCollections_UnmodifiableMap *)readMapOfStrings isEqual:v17])
      {
        v17 = v55;
      }

      v56 = new_OrgApacheLuceneIndexFieldInfo_initWithNSString_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneIndexIndexOptionsEnum_withOrgApacheLuceneIndexDocValuesTypeEnum_withLong_withJavaUtilMap_(readString, readVInt2, readByte & 1, (readByte & 2) != 0, (readByte & 4) != 0, v39, v50, readLong, v17);
      v19 = v49;
      IOSObjectArray_SetAndConsume(v69, v18, v56);
      size = v69->super.size_;
      if (v18 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v18);
      }

      v58 = (&v69->elementType_)[v18];
      if (!v58)
      {
        JreThrowNullPointerException();
      }

      [(IOSClass *)v58 checkConsistency];
      ++v18;
    }

    while (v67 != v18);
  }

  OrgApacheLuceneCodecsCodecUtil_checkFooterWithOrgApacheLuceneStoreChecksumIndexInput_withJavaLangThrowable_(v70, 0);
  v59 = new_OrgApacheLuceneIndexFieldInfos_initWithOrgApacheLuceneIndexFieldInfoArray_(v69);
  if (v70)
  {
    [v70 close];
  }

  return v59;
}

- (void)writeWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withNSString:(id)string withOrgApacheLuceneIndexFieldInfos:(id)infos withOrgApacheLuceneStoreIOContext:(id)context
{
  if (!info || (v12 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(info + 1), string, OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_EXTENSION_), !directory))
  {
    JreThrowNullPointerException();
  }

  v13 = [directory createOutputWithNSString:v12 withOrgApacheLuceneStoreIOContext:context];
  OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(v13, OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_CODEC_NAME_, 1, [info getId], string);
  if (v13)
  {
    v14 = infos == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    JreThrowNullPointerException();
  }

  -[OrgApacheLuceneUtilBytesRef writeVIntWithInt:](v13, "writeVIntWithInt:", [infos size]);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = [infos countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v15)
  {
    v16 = *v39;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(infos);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        if (!v18)
        {
          JreThrowNullPointerException();
        }

        [*(*(&v38 + 1) + 8 * i) checkConsistency];
        [(OrgApacheLuceneUtilBytesRef *)v13 writeStringWithNSString:*(v18 + 8)];
        [(OrgApacheLuceneUtilBytesRef *)v13 writeVIntWithInt:*(v18 + 16)];
        hasVectors = [v18 hasVectors];
        omitsNorms = [v18 omitsNorms];
        hasPayloads = [v18 hasPayloads];
        v22 = hasVectors | 2;
        if (!omitsNorms)
        {
          v22 = hasVectors;
        }

        if (hasPayloads)
        {
          v23 = v22 | 4;
        }

        else
        {
          v23 = v22;
        }

        [(OrgApacheLuceneUtilBytesRef *)v13 writeByteWithByte:v23];
        getIndexOptions = [v18 getIndexOptions];
        if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat__initialized, memory_order_acquire) & 1) == 0)
        {
          objc_opt_class();
        }

        ordinal = [getIndexOptions ordinal];
        if (ordinal >= 5)
        {
          v35 = @"unhandled IndexOptions: ";
LABEL_32:
          v36 = JreStrcat("$@", v26, v27, v28, v29, v30, v31, v32, v35);
          v37 = new_JavaLangAssertionError_initWithId_(v36);
          objc_exception_throw(v37);
        }

        [(OrgApacheLuceneUtilBytesRef *)v13 writeByteWithByte:ordinal];
        getDocValuesType = [v18 getDocValuesType];
        if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat__initialized, memory_order_acquire) & 1) == 0)
        {
          objc_opt_class();
        }

        ordinal2 = [getDocValuesType ordinal];
        if (ordinal2 > 5)
        {
          v35 = @"unhandled DocValuesType: ";
          goto LABEL_32;
        }

        [(OrgApacheLuceneUtilBytesRef *)v13 writeByteWithByte:(0x40503020100uLL >> (8 * ordinal2)) & 7];
        -[OrgApacheLuceneUtilBytesRef writeLongWithLong:](v13, "writeLongWithLong:", [v18 getDocValuesGen]);
        -[OrgApacheLuceneUtilBytesRef writeMapOfStringsWithJavaUtilMap:](v13, "writeMapOfStringsWithJavaUtilMap:", [v18 attributes]);
      }

      v15 = [infos countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v15);
  }

  OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(v13);
  [(OrgApacheLuceneUtilBytesRef *)v13 close];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    atomic_store(1u, OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat__initialized);
  }
}

@end