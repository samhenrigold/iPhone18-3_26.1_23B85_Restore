@interface OrgApacheLuceneIndexFieldInfos
- (id)fieldInfoWithInt:(int)int;
- (id)fieldInfoWithNSString:(id)string;
- (id)iterator;
- (int)size;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexFieldInfos

- (int)size
{
  byName = self->byName_;
  if (!byName)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilHashMap *)byName size];
}

- (id)iterator
{
  values = self->values_;
  if (!values)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)values iterator];
}

- (id)fieldInfoWithNSString:(id)string
{
  byName = self->byName_;
  if (!byName)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilHashMap *)byName getWithId:string];
}

- (id)fieldInfoWithInt:(int)int
{
  if (int < 0)
  {
    v12 = JreStrcat("$I", a2, *&int, v3, v4, v5, v6, v7, @"Illegal field number: ");
    v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

  byNumberTable = self->byNumberTable_;
  if (byNumberTable)
  {
    if (byNumberTable->super.size_ <= int)
    {
      return 0;
    }

    else
    {
      return (&byNumberTable->elementType_)[int];
    }
  }

  else
  {
    byNumberMap = self->byNumberMap_;
    if (!byNumberMap)
    {
      JreThrowNullPointerException();
    }

    v11 = JavaLangInteger_valueOfWithInt_(int);

    return [(JavaUtilSortedMap *)byNumberMap getWithId:v11];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexFieldInfos;
  [(OrgApacheLuceneIndexFieldInfos *)&v3 dealloc];
}

@end