@interface OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice
- (id)description;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice

- (id)description
{
  slice = self->slice_;
  if (!slice)
  {
    JreThrowNullPointerException();
  }

  v3 = [(OrgApacheLuceneIndexReaderSlice *)slice description];
  return JreStrcat("$C@", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice;
  [(OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice *)&v3 dealloc];
}

@end