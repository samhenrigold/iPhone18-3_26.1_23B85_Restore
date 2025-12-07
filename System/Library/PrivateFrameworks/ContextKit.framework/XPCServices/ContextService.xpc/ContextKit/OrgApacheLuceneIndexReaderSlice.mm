@interface OrgApacheLuceneIndexReaderSlice
+ (void)initialize;
- (OrgApacheLuceneIndexReaderSlice)initWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
@end

@implementation OrgApacheLuceneIndexReaderSlice

- (OrgApacheLuceneIndexReaderSlice)initWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  self->start_ = int;
  self->length_ = withInt;
  self->readerIndex_ = a5;
  return self;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneIndexReaderSlice_class_()];
    JreStrongAssignAndConsume(&OrgApacheLuceneIndexReaderSlice_EMPTY_ARRAY_, v2);
    atomic_store(1u, OrgApacheLuceneIndexReaderSlice__initialized);
  }
}

@end