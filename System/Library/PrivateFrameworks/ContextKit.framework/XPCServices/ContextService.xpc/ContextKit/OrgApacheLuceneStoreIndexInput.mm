@interface OrgApacheLuceneStoreIndexInput
- (id)clone;
- (id)getFullSliceDescriptionWithNSString:(id)string;
- (id)randomAccessSliceWithLong:(int64_t)long withLong:(int64_t)withLong;
- (void)dealloc;
@end

@implementation OrgApacheLuceneStoreIndexInput

- (id)clone
{
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneStoreIndexInput;
  clone = [(OrgApacheLuceneStoreDataInput *)&v4 clone];
  objc_opt_class();
  if (clone && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return clone;
}

- (id)getFullSliceDescriptionWithNSString:(id)string
{
  result = [(OrgApacheLuceneStoreIndexInput *)self description];
  if (string)
  {
    return JreStrcat("$$$C", v5, v6, v7, v8, v9, v10, v11, result);
  }

  return result;
}

- (id)randomAccessSliceWithLong:(int64_t)long withLong:(int64_t)withLong
{
  v4 = [(OrgApacheLuceneStoreIndexInput *)self sliceWithNSString:@"randomaccess" withLong:long withLong:withLong];
  v6 = [OrgApacheLuceneStoreRandomAccessInput_class_(v4 v5)];
  if (v6)
  {
    v8 = OrgApacheLuceneStoreRandomAccessInput_class_(v6, v7);
    if (v4)
    {
      if (([v8 isInstance:v4] & 1) == 0)
      {
        JreThrowClassCastException();
      }
    }

    return v4;
  }

  else
  {
    v10 = [OrgApacheLuceneStoreIndexInput__1 alloc];
    JreStrongAssign(&v10->val$slice_, v4);

    return v10;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreIndexInput;
  [(OrgApacheLuceneStoreDataInput *)&v3 dealloc];
}

@end