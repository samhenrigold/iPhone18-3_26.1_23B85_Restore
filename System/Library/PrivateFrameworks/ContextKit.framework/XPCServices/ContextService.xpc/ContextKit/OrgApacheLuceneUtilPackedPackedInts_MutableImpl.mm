@interface OrgApacheLuceneUtilPackedPackedInts_MutableImpl
- (OrgApacheLuceneUtilPackedPackedInts_MutableImpl)initWithInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_MutableImpl

- (OrgApacheLuceneUtilPackedPackedInts_MutableImpl)initWithInt:(int)int withInt:(int)withInt
{
  OrgApacheLuceneIndexNumericDocValues_init();
  self->valueCount_ = int;
  self->bitsPerValue_ = withInt;
  return self;
}

@end