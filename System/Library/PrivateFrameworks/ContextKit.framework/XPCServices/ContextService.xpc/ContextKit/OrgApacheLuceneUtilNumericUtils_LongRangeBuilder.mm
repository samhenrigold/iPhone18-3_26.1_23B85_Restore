@interface OrgApacheLuceneUtilNumericUtils_LongRangeBuilder
- (void)addRangeWithLong:(int64_t)long withLong:(int64_t)withLong withInt:(int)int;
@end

@implementation OrgApacheLuceneUtilNumericUtils_LongRangeBuilder

- (void)addRangeWithLong:(int64_t)long withLong:(int64_t)withLong withInt:(int)int
{
  v5 = *&int;
  v9 = new_OrgApacheLuceneUtilBytesRefBuilder_init();
  v10 = new_OrgApacheLuceneUtilBytesRefBuilder_init();
  OrgApacheLuceneUtilNumericUtils_longToPrefixCodedBytesWithLong_withInt_withOrgApacheLuceneUtilBytesRefBuilder_(long, v5, v9, v11, v12, v13, v14, v15);
  OrgApacheLuceneUtilNumericUtils_longToPrefixCodedBytesWithLong_withInt_withOrgApacheLuceneUtilBytesRefBuilder_(withLong, v5, v10, v16, v17, v18, v19, v20);
  v21 = [(OrgApacheLuceneUtilBytesRefBuilder *)v9 get];
  v22 = [(OrgApacheLuceneUtilBytesRefBuilder *)v10 get];

  [(OrgApacheLuceneUtilNumericUtils_LongRangeBuilder *)self addRangeWithOrgApacheLuceneUtilBytesRef:v21 withOrgApacheLuceneUtilBytesRef:v22];
}

@end