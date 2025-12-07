@interface OrgApacheLuceneUtilPackedPackedInts_FormatAndBits
- (OrgApacheLuceneUtilPackedPackedInts_FormatAndBits)initWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum:(id)enum withInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_FormatAndBits

- (OrgApacheLuceneUtilPackedPackedInts_FormatAndBits)initWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum:(id)enum withInt:(int)int
{
  JreStrongAssign(&self->format_, enum);
  self->bitsPerValue_ = int;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedPackedInts_FormatAndBits;
  [(OrgApacheLuceneUtilPackedPackedInts_FormatAndBits *)&v3 dealloc];
}

@end