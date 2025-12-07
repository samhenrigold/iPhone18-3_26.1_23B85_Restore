@interface OrgApacheLuceneAnalysisTokenStream
+ (void)initialize;
- (void)end;
@end

@implementation OrgApacheLuceneAnalysisTokenStream

- (void)end
{
  clearAttributes = [(OrgApacheLuceneUtilAttributeSource *)self clearAttributes];
  v5 = [(OrgApacheLuceneUtilAttributeSource *)self getAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_(clearAttributes, v4)];
  if (v5)
  {

    [v5 setPositionIncrementWithInt:0];
  }
}

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {
    if ((atomic_load_explicit(OrgApacheLuceneUtilAttributeFactory__initialized, memory_order_acquire) & 1) == 0)
    {
      v3 = sub_100049134();
    }

    v5 = OrgApacheLuceneUtilAttributeFactory_DEFAULT_ATTRIBUTE_FACTORY_;
    v6 = OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl_class_(v3, v4);
    StaticImplementationWithOrgApacheLuceneUtilAttributeFactory_withIOSClass = OrgApacheLuceneUtilAttributeFactory_getStaticImplementationWithOrgApacheLuceneUtilAttributeFactory_withIOSClass_(v5, v6);
    JreStrongAssign(&OrgApacheLuceneAnalysisTokenStream_DEFAULT_TOKEN_ATTRIBUTE_FACTORY_, StaticImplementationWithOrgApacheLuceneUtilAttributeFactory_withIOSClass);
    atomic_store(1u, OrgApacheLuceneAnalysisTokenStream__initialized);
  }
}

@end