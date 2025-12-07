@interface OrgApacheLuceneAnalysisCharFilter
- (OrgApacheLuceneAnalysisCharFilter)initWithJavaIoReader:(id)reader;
- (int)correctOffsetWithInt:(int)int;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneAnalysisCharFilter

- (OrgApacheLuceneAnalysisCharFilter)initWithJavaIoReader:(id)reader
{
  JavaIoReader_initWithId_(self, reader);
  JreStrongAssign(&self->input_, reader);
  return self;
}

- (void)close
{
  input = self->input_;
  if (!input)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoReader *)input close];
}

- (int)correctOffsetWithInt:(int)int
{
  v3 = *&int;
  while (1)
  {
    v3 = [(OrgApacheLuceneAnalysisCharFilter *)self correctWithInt:v3];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    self = self->input_;
    objc_opt_class();
    if (!self)
    {
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneAnalysisCharFilter;
  [(JavaIoReader *)&v3 dealloc];
}

@end