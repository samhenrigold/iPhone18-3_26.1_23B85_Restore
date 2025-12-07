@interface JavaUtilWeakHashMap_$1
- (BOOL)containsWithId:(id)id;
- (BOOL)removeWithId:(id)id;
- (JavaUtilWeakHashMap_$1)initWithJavaUtilWeakHashMap:(id)map;
- (id)iterator;
- (void)dealloc;
@end

@implementation JavaUtilWeakHashMap_$1

- (BOOL)removeWithId:(id)id
{
  v5 = [(JavaUtilWeakHashMap_$1 *)self containsWithId:?];
  v7 = v5;
  if (v5)
  {
    v8 = self->this$0_;
    v9 = JavaUtilMap_Entry_class_(v5, v6);
    if (!id)
    {
      JreThrowNullPointerException();
    }

    if (([v9 isInstance:id] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    -[JavaUtilWeakHashMap removeWithId:](v8, "removeWithId:", [id getKey]);
  }

  return v7;
}

- (BOOL)containsWithId:(id)id
{
  v5 = [JavaUtilMap_Entry_class_(self a2)];
  if (!v5)
  {
    return 0;
  }

  v7 = self->this$0_;
  v8 = JavaUtilMap_Entry_class_(v5, v6);
  if (!id)
  {
    JreThrowNullPointerException();
  }

  if (([v8 isInstance:id] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v9 = -[JavaUtilWeakHashMap getEntryWithId:](v7, "getEntryWithId:", [id getKey]);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (![v9 get] && v10[44] != 1)
  {
    return 0;
  }

  return [id isEqual:v10];
}

- (id)iterator
{
  v2 = new_JavaUtilWeakHashMap_HashIterator_initWithJavaUtilWeakHashMap_withJavaUtilWeakHashMap_Entry_Type_(self->this$0_, [JavaUtilWeakHashMap__1__1 alloc]);

  return v2;
}

- (JavaUtilWeakHashMap_$1)initWithJavaUtilWeakHashMap:(id)map
{
  JreStrongAssign(&self->this$0_, map);
  JavaUtilAbstractSet_init(self, v4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilWeakHashMap__1;
  [(JavaUtilWeakHashMap_$1 *)&v3 dealloc];
}

@end