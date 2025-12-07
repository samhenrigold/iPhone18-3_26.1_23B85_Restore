@interface JavaUtilAbstractSequentialList
- (BOOL)addAllWithInt:(int)int withJavaUtilCollection:(id)collection;
- (id)getWithInt:(int)int;
- (id)removeWithInt:(int)int;
- (id)setWithInt:(int)int withId:(id)id;
- (void)addWithInt:(int)int withId:(id)id;
@end

@implementation JavaUtilAbstractSequentialList

- (void)addWithInt:(int)int withId:(id)id
{
  v5 = [(JavaUtilAbstractSequentialList *)self listIteratorWithInt:*&int];
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  [v5 addWithId:id];
}

- (BOOL)addAllWithInt:(int)int withJavaUtilCollection:(id)collection
{
  v5 = [(JavaUtilAbstractSequentialList *)self listIteratorWithInt:*&int];
  if (!collection || (v6 = v5, v7 = [collection iterator], !v6) || (v8 = v7, v9 = objc_msgSend(v6, "nextIndex"), !v8))
  {
    JreThrowNullPointerException();
  }

  v10 = v9;
  if ([v8 hasNext])
  {
    do
    {
      [v6 addWithId:{objc_msgSend(v8, "next")}];
    }

    while (([v8 hasNext] & 1) != 0);
  }

  return v10 != [v6 nextIndex];
}

- (id)getWithInt:(int)int
{
  v3 = [(JavaUtilAbstractSequentialList *)self listIteratorWithInt:*&int];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 next];
}

- (id)removeWithInt:(int)int
{
  v3 = [(JavaUtilAbstractSequentialList *)self listIteratorWithInt:*&int];
  v4 = v3;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  next = [v3 next];
  [v4 remove];
  return next;
}

- (id)setWithInt:(int)int withId:(id)id
{
  v5 = [(JavaUtilAbstractSequentialList *)self listIteratorWithInt:*&int];
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  if (([v5 hasNext] & 1) == 0)
  {
    v9 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v9);
  }

  next = [v6 next];
  [v6 setWithId:id];
  return next;
}

@end