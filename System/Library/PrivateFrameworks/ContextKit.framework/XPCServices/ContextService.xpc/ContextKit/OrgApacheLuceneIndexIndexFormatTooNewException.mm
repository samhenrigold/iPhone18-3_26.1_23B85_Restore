@interface OrgApacheLuceneIndexIndexFormatTooNewException
- (OrgApacheLuceneIndexIndexFormatTooNewException)initWithOrgApacheLuceneStoreDataInput:(id)input withInt:(int)int withInt:(int)withInt withInt:(int)a6;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexIndexFormatTooNewException

- (OrgApacheLuceneIndexIndexFormatTooNewException)initWithOrgApacheLuceneStoreDataInput:(id)input withInt:(int)int withInt:(int)withInt withInt:(int)a6
{
  v6 = *&a6;
  v7 = *&withInt;
  v8 = *&int;
  v10 = OrgLukhnosPortmobileUtilObjects_toStringWithId_(input);
  OrgApacheLuceneIndexIndexFormatTooNewException_initWithNSString_withInt_withInt_withInt_(&self->super.super.super.super.super.isa, v10, v8, v7, v6, v11, v12, v13);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexIndexFormatTooNewException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end