@interface OrgApacheLuceneIndexLeafReaderContext
- (id)leaves;
- (void)__javaClone;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexLeafReaderContext

- (id)leaves
{
  if (!self->super.isTopLevel_)
  {
    v3 = new_JavaLangUnsupportedOperationException_initWithNSString_(@"This is not a top-level context.");
    objc_exception_throw(v3);
  }

  return self->leaves_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexLeafReaderContext;
  [(OrgApacheLuceneIndexIndexReaderContext *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexLeafReaderContext;
  [(OrgApacheLuceneIndexLeafReaderContext *)&v3 __javaClone];
}

@end