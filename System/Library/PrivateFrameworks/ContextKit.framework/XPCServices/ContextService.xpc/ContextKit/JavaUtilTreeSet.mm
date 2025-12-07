@interface JavaUtilTreeSet
- (BOOL)addAllWithJavaUtilCollection:(id)collection;
- (BOOL)addWithId:(id)id;
- (BOOL)containsWithId:(id)id;
- (BOOL)isEmpty;
- (BOOL)removeWithId:(id)id;
- (JavaUtilTreeSet)init;
- (JavaUtilTreeSet)initWithJavaUtilCollection:(id)collection;
- (JavaUtilTreeSet)initWithJavaUtilNavigableMap:(id)map;
- (id)ceilingWithId:(id)id;
- (id)clone;
- (id)comparator;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descendingIterator;
- (id)descendingSet;
- (id)first;
- (id)floorWithId:(id)id;
- (id)headSetWithId:(id)id withBoolean:(BOOL)boolean;
- (id)higherWithId:(id)id;
- (id)iterator;
- (id)last;
- (id)lowerWithId:(id)id;
- (id)pollFirst;
- (id)pollLast;
- (id)subSetWithId:(id)id withBoolean:(BOOL)boolean withId:(id)withId withBoolean:(BOOL)withBoolean;
- (id)tailSetWithId:(id)id withBoolean:(BOOL)boolean;
- (int)size;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)clear;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaUtilTreeSet

- (JavaUtilTreeSet)initWithJavaUtilNavigableMap:(id)map
{
  JavaUtilAbstractSet_init(self, a2);
  JreStrongAssign(&self->backingMap_, map);
  return self;
}

- (JavaUtilTreeSet)init
{
  JavaUtilAbstractSet_init(self, a2);
  v3 = new_JavaUtilTreeMap_init();
  JreStrongAssignAndConsume(&self->backingMap_, v3);
  return self;
}

- (JavaUtilTreeSet)initWithJavaUtilCollection:(id)collection
{
  JavaUtilAbstractSet_init(self, a2);
  v5 = new_JavaUtilTreeMap_init();
  JreStrongAssignAndConsume(&self->backingMap_, v5);
  [(JavaUtilTreeSet *)self addAllWithJavaUtilCollection:collection];
  return self;
}

- (BOOL)addWithId:(id)id
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  return [(JavaUtilNavigableMap *)backingMap putWithId:id withId:JavaLangBoolean_TRUE__]== 0;
}

- (BOOL)addAllWithJavaUtilCollection:(id)collection
{
  v4.receiver = self;
  v4.super_class = JavaUtilTreeSet;
  return [(JavaUtilAbstractCollection *)&v4 addAllWithJavaUtilCollection:collection];
}

- (void)clear
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilNavigableMap *)backingMap clear];
}

- (id)clone
{
  v10.receiver = self;
  v10.super_class = JavaUtilTreeSet;
  clone = [(JavaUtilTreeSet *)&v10 clone];
  objc_opt_class();
  if (clone && (objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_13:
    JreThrowClassCastException();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (clone)
    {
      v8 = new_JavaUtilTreeMap_initWithJavaUtilSortedMap_(self->backingMap_);
      JreStrongAssignAndConsume(clone + 1, v8);
      return clone;
    }

LABEL_14:
    JreThrowNullPointerException();
  }

  if (!clone)
  {
    goto LABEL_14;
  }

  backingMap = self->backingMap_;
  objc_opt_class();
  if (!backingMap)
  {
    goto LABEL_14;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  clone2 = [(JavaUtilNavigableMap *)backingMap clone];
  v7 = JavaUtilNavigableMap_class_(clone2, v6);
  if (clone2)
  {
    if (![v7 isInstance:clone2])
    {
      goto LABEL_13;
    }
  }

  JreStrongAssign(clone + 1, clone2);
  return clone;
}

- (id)comparator
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap comparator];
}

- (BOOL)containsWithId:(id)id
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap containsKeyWithId:id];
}

- (BOOL)isEmpty
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap isEmpty];
}

- (id)iterator
{
  backingMap = self->backingMap_;
  if (!backingMap || (v3 = [(JavaUtilNavigableMap *)backingMap keySet]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 iterator];
}

- (id)descendingIterator
{
  descendingSet = [(JavaUtilTreeSet *)self descendingSet];
  if (!descendingSet)
  {
    JreThrowNullPointerException();
  }

  return [descendingSet iterator];
}

- (BOOL)removeWithId:(id)id
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap removeWithId:id]!= 0;
}

- (int)size
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap size];
}

- (id)first
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap firstKey];
}

- (id)last
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap lastKey];
}

- (id)pollFirst
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaUtilNavigableMap *)backingMap pollFirstEntry];
  if (result)
  {

    return [result getKey];
  }

  return result;
}

- (id)pollLast
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaUtilNavigableMap *)backingMap pollLastEntry];
  if (result)
  {

    return [result getKey];
  }

  return result;
}

- (id)higherWithId:(id)id
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap higherKeyWithId:id];
}

- (id)lowerWithId:(id)id
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap lowerKeyWithId:id];
}

- (id)ceilingWithId:(id)id
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap ceilingKeyWithId:id];
}

- (id)floorWithId:(id)id
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap floorKeyWithId:id];
}

- (id)descendingSet
{
  result = self->descendingSet_;
  if (!result)
  {
    backingMap = self->backingMap_;
    if (!backingMap)
    {
      JreThrowNullPointerException();
    }

    v5 = new_JavaUtilTreeSet_initWithJavaUtilNavigableMap_([(JavaUtilNavigableMap *)backingMap descendingMap]);

    return JreStrongAssignAndConsume(&self->descendingSet_, v5);
  }

  return result;
}

- (id)subSetWithId:(id)id withBoolean:(BOOL)boolean withId:(id)withId withBoolean:(BOOL)withBoolean
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    goto LABEL_11;
  }

  withBooleanCopy = withBoolean;
  booleanCopy = boolean;
  comparator = [(JavaUtilNavigableMap *)backingMap comparator];
  if (comparator)
  {
    v14 = [comparator compareWithId:id withId:withId];
    goto LABEL_7;
  }

  v15 = JavaLangComparable_class_(0, v13);
  if (!id)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  if (([v15 isInstance:id] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v14 = [id compareToWithId:withId];
LABEL_7:
  if (v14 > 0)
  {
    v18 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v18);
  }

  v16 = new_JavaUtilTreeSet_initWithJavaUtilNavigableMap_([(JavaUtilNavigableMap *)self->backingMap_ subMapWithId:id withBoolean:booleanCopy withId:withId withBoolean:withBooleanCopy]);

  return v16;
}

- (id)headSetWithId:(id)id withBoolean:(BOOL)boolean
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    goto LABEL_10;
  }

  booleanCopy = boolean;
  comparator = [(JavaUtilNavigableMap *)backingMap comparator];
  if (comparator)
  {
    [comparator compareWithId:id withId:id];
    goto LABEL_7;
  }

  v10 = JavaLangComparable_class_(0, v9);
  if (!id)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  if (([v10 isInstance:id] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  [id compareToWithId:id];
LABEL_7:
  v11 = new_JavaUtilTreeSet_initWithJavaUtilNavigableMap_([(JavaUtilNavigableMap *)self->backingMap_ headMapWithId:id withBoolean:booleanCopy]);

  return v11;
}

- (id)tailSetWithId:(id)id withBoolean:(BOOL)boolean
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    goto LABEL_10;
  }

  booleanCopy = boolean;
  comparator = [(JavaUtilNavigableMap *)backingMap comparator];
  if (comparator)
  {
    [comparator compareWithId:id withId:id];
    goto LABEL_7;
  }

  v10 = JavaLangComparable_class_(0, v9);
  if (!id)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  if (([v10 isInstance:id] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  [id compareToWithId:id];
LABEL_7:
  v11 = new_JavaUtilTreeSet_initWithJavaUtilNavigableMap_([(JavaUtilNavigableMap *)self->backingMap_ tailMapWithId:id withBoolean:booleanCopy]);

  return v11;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  if (!stream)
  {
    goto LABEL_9;
  }

  [stream defaultWriteObject];
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    goto LABEL_9;
  }

  [stream writeObjectWithId:{-[JavaUtilNavigableMap comparator](backingMap, "comparator")}];
  v6 = [(JavaUtilNavigableMap *)self->backingMap_ size];
  [stream writeIntWithInt:v6];
  if (v6 < 1)
  {
    return;
  }

  keySet = [(JavaUtilNavigableMap *)self->backingMap_ keySet];
  if (!keySet || (v8 = [keySet iterator]) == 0)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v9 = v8;
  if ([v8 hasNext])
  {
    do
    {
      [stream writeObjectWithId:{objc_msgSend(v9, "next")}];
    }

    while (([v9 hasNext] & 1) != 0);
  }
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultReadObject];
  readObject = [stream readObject];
  v7 = JavaUtilComparator_class_(readObject, v6);
  if (readObject && ([v7 isInstance:readObject] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v8 = new_JavaUtilTreeMap_initWithJavaUtilComparator_(readObject);
  readInt = [stream readInt];
  if (readInt >= 1)
  {
    v10 = readInt;
    do
    {
      readObject2 = [stream readObject];
      if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100129828();
      }

      [(JavaUtilTreeMap *)v8 putWithId:readObject2 withId:JavaLangBoolean_TRUE__];
      --v10;
    }

    while (v10);
  }

  JreStrongAssign(&self->backingMap_, v8);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeSet;
  [(JavaUtilTreeSet *)&v3 dealloc];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  keySet = state->var3[4];
  if (!keySet)
  {
    keySet = [(JavaUtilNavigableMap *)self->backingMap_ keySet];
    state->var3[4] = keySet;
  }

  return [keySet countByEnumeratingWithState:state objects:objects count:count];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(JavaUtilTreeSet *)self clone];

  return clone;
}

@end