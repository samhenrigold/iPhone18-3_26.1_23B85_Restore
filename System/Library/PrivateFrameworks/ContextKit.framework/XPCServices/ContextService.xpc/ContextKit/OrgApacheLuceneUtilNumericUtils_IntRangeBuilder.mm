@interface OrgApacheLuceneUtilNumericUtils_IntRangeBuilder
- (void)addRangeWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
@end

@implementation OrgApacheLuceneUtilNumericUtils_IntRangeBuilder

- (void)addRangeWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  v5 = *&a5;
  v6 = *&withInt;
  v7 = *&int;
  v9 = new_OrgApacheLuceneUtilBytesRefBuilder_init();
  v10 = new_OrgApacheLuceneUtilBytesRefBuilder_init();
  OrgApacheLuceneUtilNumericUtils_intToPrefixCodedBytesWithInt_withInt_withOrgApacheLuceneUtilBytesRefBuilder_(v7, v5, v9, v11, v12, v13, v14, v15);
  OrgApacheLuceneUtilNumericUtils_intToPrefixCodedBytesWithInt_withInt_withOrgApacheLuceneUtilBytesRefBuilder_(v6, v5, v10, v16, v17, v18, v19, v20);
  v21 = [(OrgApacheLuceneUtilBytesRefBuilder *)v9 get];
  v22 = [(OrgApacheLuceneUtilBytesRefBuilder *)v10 get];

  [(OrgApacheLuceneUtilNumericUtils_IntRangeBuilder *)self addRangeWithOrgApacheLuceneUtilBytesRef:v21 withOrgApacheLuceneUtilBytesRef:v22];
}

@end