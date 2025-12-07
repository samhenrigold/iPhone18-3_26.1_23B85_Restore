@interface OrgApacheLuceneIndexIndexFormatTooOldException
- (OrgApacheLuceneIndexIndexFormatTooOldException)initWithOrgApacheLuceneStoreDataInput:(id)input withInt:(int)int withInt:(int)withInt withInt:(int)a6;
- (OrgApacheLuceneIndexIndexFormatTooOldException)initWithOrgApacheLuceneStoreDataInput:(id)input withNSString:(id)string;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexIndexFormatTooOldException

- (OrgApacheLuceneIndexIndexFormatTooOldException)initWithOrgApacheLuceneStoreDataInput:(id)input withNSString:(id)string
{
  v6 = OrgLukhnosPortmobileUtilObjects_toStringWithId_(input);
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(&self->super.super.super.super.super.isa, v6, string, v7, v8, v9, v10, v11);
  return self;
}

- (OrgApacheLuceneIndexIndexFormatTooOldException)initWithOrgApacheLuceneStoreDataInput:(id)input withInt:(int)int withInt:(int)withInt withInt:(int)a6
{
  v6 = *&a6;
  v7 = *&withInt;
  v8 = *&int;
  v10 = OrgLukhnosPortmobileUtilObjects_toStringWithId_(input);
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(&self->super.super.super.super.super.isa, v10, v8, v7, v6, v11, v12, v13);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexIndexFormatTooOldException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end