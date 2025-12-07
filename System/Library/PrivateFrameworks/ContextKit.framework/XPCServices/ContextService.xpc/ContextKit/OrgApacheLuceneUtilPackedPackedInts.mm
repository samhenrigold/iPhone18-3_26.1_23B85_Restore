@interface OrgApacheLuceneUtilPackedPackedInts
+ (id)getDecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum:(id)enum withInt:(int)int withInt:(int)withInt;
+ (id)getEncoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum:(id)enum withInt:(int)int withInt:(int)withInt;
+ (id)getReaderIteratorNoHeaderWithOrgApacheLuceneStoreDataInput:(id)input withOrgApacheLuceneUtilPackedPackedInts_FormatEnum:(id)enum withInt:(int)int withInt:(int)withInt withInt:(int)a7 withInt:(int)a8;
+ (id)getWriterNoHeaderWithOrgApacheLuceneStoreDataOutput:(id)output withOrgApacheLuceneUtilPackedPackedInts_FormatEnum:(id)enum withInt:(int)int withInt:(int)withInt withInt:(int)a7;
+ (int)unsignedBitsRequiredWithLong:(int64_t)long;
+ (int64_t)maxValueWithInt:(int)int;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts

+ (id)getDecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum:(id)enum withInt:(int)int withInt:(int)withInt
{
  OrgApacheLuceneUtilPackedPackedInts_checkVersionWithInt_(*&int, a2, enum, *&int, *&withInt, v5, v6, v7);

  return OrgApacheLuceneUtilPackedBulkOperation_ofWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_(enum, withInt);
}

+ (id)getEncoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum:(id)enum withInt:(int)int withInt:(int)withInt
{
  OrgApacheLuceneUtilPackedPackedInts_checkVersionWithInt_(*&int, a2, enum, *&int, *&withInt, v5, v6, v7);

  return OrgApacheLuceneUtilPackedBulkOperation_ofWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_(enum, withInt);
}

+ (id)getReaderIteratorNoHeaderWithOrgApacheLuceneStoreDataInput:(id)input withOrgApacheLuceneUtilPackedPackedInts_FormatEnum:(id)enum withInt:(int)int withInt:(int)withInt withInt:(int)a7 withInt:(int)a8
{
  v8 = *&a8;
  OrgApacheLuceneUtilPackedPackedInts_checkVersionWithInt_(*&int, a2, input, enum, *&int, *&withInt, *&a7, *&a8);
  v14 = new_OrgApacheLuceneUtilPackedPackedReaderIterator_initWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_withOrgApacheLuceneStoreDataInput_withInt_(enum, int, withInt, a7, input, v8);

  return v14;
}

+ (id)getWriterNoHeaderWithOrgApacheLuceneStoreDataOutput:(id)output withOrgApacheLuceneUtilPackedPackedInts_FormatEnum:(id)enum withInt:(int)int withInt:(int)withInt withInt:(int)a7
{
  v7 = new_OrgApacheLuceneUtilPackedPackedWriter_initWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withOrgApacheLuceneStoreDataOutput_withInt_withInt_withInt_(enum, output, *&int, *&withInt, *&a7);

  return v7;
}

+ (int)unsignedBitsRequiredWithLong:(int64_t)long
{
  v3 = 64 - JavaLangLong_numberOfLeadingZerosWithLong_(long, a2);

  return JavaLangMath_maxWithInt_withInt_(1, v3);
}

+ (int64_t)maxValueWithInt:(int)int
{
  if (int == 64)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return ~(-1 << int);
  }
}

@end