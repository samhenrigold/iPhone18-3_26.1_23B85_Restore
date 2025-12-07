@interface JavaUtilIdentityHashMap_IdentityHashMapEntrySet
- (BOOL)containsWithId:(id)id;
- (BOOL)removeWithId:(id)id;
- (JavaUtilIdentityHashMap_IdentityHashMapEntrySet)initWithJavaUtilIdentityHashMap:(id)map;
- (id)iterator;
- (int)size;
- (void)clear;
- (void)dealloc;
@end

@implementation JavaUtilIdentityHashMap_IdentityHashMapEntrySet

- (JavaUtilIdentityHashMap_IdentityHashMapEntrySet)initWithJavaUtilIdentityHashMap:(id)map
{
  JavaUtilAbstractSet_init(self, a2);
  JreStrongAssign(&self->associatedMap_, map);
  return self;
}

- (int)size
{
  associatedMap = self->associatedMap_;
  if (!associatedMap)
  {
    JreThrowNullPointerException();
  }

  return associatedMap->size_;
}

- (void)clear
{
  associatedMap = self->associatedMap_;
  if (!associatedMap)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilIdentityHashMap *)associatedMap clear];
}

- (BOOL)removeWithId:(id)id
{
  v5 = [(JavaUtilIdentityHashMap_IdentityHashMapEntrySet *)self containsWithId:?];
  v7 = v5;
  if (v5)
  {
    associatedMap = self->associatedMap_;
    if (!associatedMap || (v9 = JavaUtilMap_Entry_class_(v5, v6), !id))
    {
      JreThrowNullPointerException();
    }

    if (([v9 isInstance:id] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    -[JavaUtilIdentityHashMap removeWithId:](associatedMap, "removeWithId:", [id getKey]);
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

  associatedMap = self->associatedMap_;
  if (!associatedMap || (v8 = JavaUtilMap_Entry_class_(v5, v6), !id))
  {
    JreThrowNullPointerException();
  }

  if (([v8 isInstance:id] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v9 = sub_100261CB0(associatedMap, [id getKey]);
  if (!v9)
  {
    return 0;
  }

  return [(JavaUtilIdentityHashMap_IdentityHashMapEntry *)v9 isEqual:id];
}

- (id)iterator
{
  v3 = [JavaUtilIdentityHashMap_IdentityHashMapEntrySet__1 alloc];
  associatedMap = self->associatedMap_;
  v5 = [JavaUtilIdentityHashMap_IdentityHashMapIterator alloc];
  JavaUtilIdentityHashMap_IdentityHashMapIterator_initWithJavaUtilMapEntry_Type_withJavaUtilIdentityHashMap_(v5, v3, associatedMap);

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilIdentityHashMap_IdentityHashMapEntrySet;
  [(JavaUtilIdentityHashMap_IdentityHashMapEntrySet *)&v3 dealloc];
}

@end