@interface JavaUtilConcurrentCopyOnWriteArrayList
- (BOOL)addAllWithInt:(int)int withJavaUtilCollection:(id)collection;
- (BOOL)addAllWithJavaUtilCollection:(id)collection;
- (BOOL)addIfAbsentWithId:(id)id;
- (BOOL)addWithId:(id)id;
- (BOOL)containsAllWithJavaUtilCollection:(id)collection;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)removeAllWithJavaUtilCollection:(id)collection;
- (BOOL)removeWithId:(id)id;
- (BOOL)retainAllWithJavaUtilCollection:(id)collection;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)getWithInt:(int)int;
- (id)iterator;
- (id)listIterator;
- (id)listIteratorWithInt:(int)int;
- (id)removeWithInt:(int)int;
- (id)setWithInt:(int)int withId:(id)id;
- (id)subListWithInt:(int)int withInt:(int)withInt;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)array;
- (int)addAllAbsentWithJavaUtilCollection:(id)collection;
- (int)indexOfWithId:(id)id;
- (int)indexOfWithId:(id)id withInt:(int)int;
- (int)lastIndexOfWithId:(id)id;
- (int)size;
- (void)__javaClone;
- (void)addWithInt:(int)int withId:(id)id;
- (void)clear;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaUtilConcurrentCopyOnWriteArrayList

- (id)clone
{
  v5.receiver = self;
  v5.super_class = JavaUtilConcurrentCopyOnWriteArrayList;
  clone = [(JavaUtilConcurrentCopyOnWriteArrayList *)&v5 clone];
  objc_opt_class();
  if (!clone)
  {
    goto LABEL_5;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v3 = atomic_load(clone + 1);
  if (!v3)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  JreVolatileStrongAssign(clone + 1, [v3 clone]);
  return clone;
}

- (int)size
{
  v2 = atomic_load(&self->elements_);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return *(v2 + 8);
}

- (id)getWithInt:(int)int
{
  v3 = atomic_load(&self->elements_);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(v3 + 8);
  if (int < 0 || v4 <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, *&int);
  }

  return *(v3 + 24 + 8 * int);
}

- (BOOL)containsAllWithJavaUtilCollection:(id)collection
{
  v4 = atomic_load(&self->elements_);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = *(v4 + 8);

  return JavaUtilConcurrentCopyOnWriteArrayList_containsAllWithJavaUtilCollection_withNSObjectArray_withInt_withInt_(collection, v4, 0, v5);
}

- (int)indexOfWithId:(id)id withInt:(int)int
{
  v5 = atomic_load(&self->elements_);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v7 = *&int;
  v8 = *(v5 + 8);

  return JavaUtilConcurrentCopyOnWriteArrayList_indexOfWithId_withNSObjectArray_withInt_withInt_(id, v5, v7, v8);
}

- (int)indexOfWithId:(id)id
{
  v4 = atomic_load(&self->elements_);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = *(v4 + 8);

  return JavaUtilConcurrentCopyOnWriteArrayList_indexOfWithId_withNSObjectArray_withInt_withInt_(id, v4, 0, v5);
}

- (int)lastIndexOfWithId:(id)id
{
  v4 = atomic_load(&self->elements_);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = *(v4 + 8);

  return JavaUtilConcurrentCopyOnWriteArrayList_lastIndexOfWithId_withNSObjectArray_withInt_withInt_(id, v4, 0, v5);
}

- (BOOL)isEmpty
{
  v2 = atomic_load(&self->elements_);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return *(v2 + 8) == 0;
}

- (id)iterator
{
  v2 = atomic_load(&self->elements_);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = v2[2];
  v4 = [JavaUtilConcurrentCopyOnWriteArrayList_CowIterator alloc];
  v4->index_ = 0;
  JreStrongAssign(&v4->snapshot_, v2);
  v4->from_ = 0;
  v4->to_ = v3;
  v4->index_ = 0;

  return v4;
}

- (id)listIteratorWithInt:(int)int
{
  v9 = atomic_load(&self->elements_);
  if (int < 0)
  {
    if (v9)
    {
LABEL_6:
      v13 = JreStrcat("$I$I", a2, *&int, v3, v4, v5, v6, v7, @"index=");
      v14 = new_JavaLangIndexOutOfBoundsException_initWithNSString_(v13);
      objc_exception_throw(v14);
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v9[2];
  if (v10 < int)
  {
    goto LABEL_6;
  }

  v11 = [JavaUtilConcurrentCopyOnWriteArrayList_CowIterator alloc];
  v11->index_ = 0;
  JreStrongAssign(&v11->snapshot_, v9);
  v11->from_ = 0;
  v11->to_ = v10;
  v11->index_ = 0;
  result = v11;
  *(result + 6) = int;
  return result;
}

- (id)listIterator
{
  v2 = atomic_load(&self->elements_);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = v2[2];
  v4 = [JavaUtilConcurrentCopyOnWriteArrayList_CowIterator alloc];
  v4->index_ = 0;
  JreStrongAssign(&v4->snapshot_, v2);
  v4->from_ = 0;
  v4->to_ = v3;
  v4->index_ = 0;

  return v4;
}

- (id)subListWithInt:(int)int withInt:(int)withInt
{
  v10 = atomic_load(&self->elements_);
  if (int < 0 || int > withInt)
  {
    if (v10)
    {
LABEL_9:
      v14 = JreStrcat("$I$I$I", a2, *&int, *&withInt, v4, v5, v6, v7, @"from=");
      v15 = new_JavaLangIndexOutOfBoundsException_initWithNSString_(v14);
      objc_exception_throw(v15);
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  if (v10[2] < withInt)
  {
    goto LABEL_9;
  }

  v12 = [JavaUtilConcurrentCopyOnWriteArrayList_CowSubList alloc];
  JavaUtilConcurrentCopyOnWriteArrayList_CowSubList_initWithJavaUtilConcurrentCopyOnWriteArrayList_withNSObjectArray_withInt_withInt_(v12, self, v10, int, withInt);

  return v12;
}

- (id)toArray
{
  v3 = atomic_load(&self->elements_);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 clone];
}

- (id)toArrayWithNSObjectArray:(id)array
{
  v3 = atomic_load(&self->elements_);
  if (!v3 || (v4 = array) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = v3[2];
  if (v5 <= *(array + 2))
  {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v3, 0, array, 0, v3[2]);
    v6 = v3[2];
    if (v6 < v4[2])
    {
      IOSObjectArray_Set(v4, v6, 0);
    }
  }

  else
  {
    v4 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_withIOSClass_(v3, v5, [array getClass]);
    objc_opt_class();
    if (v4 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v9 = [JavaUtilList_class_(isKindOfClass v6)];
    if (!v9)
    {
      return v9;
    }

    v11 = atomic_load(&self->elements_);
    v12 = JavaUtilList_class_(v9, v10);
    if (equal)
    {
      if (([v12 isInstance:equal] & 1) == 0)
      {
LABEL_23:
        JreThrowClassCastException();
      }

      iterator = [equal iterator];
      if (v11)
      {
        v14 = iterator;
        v15 = (v11 + 24);
        v16 = v11 + 24 + 8 * *(v11 + 8);
        while (v15 < v16)
        {
          if (!v14)
          {
            goto LABEL_22;
          }

          v18 = *v15++;
          v17 = v18;
          LODWORD(v9) = [v14 hasNext];
          if (!v9)
          {
            return v9;
          }

          if ((LibcoreUtilObjects_equalWithId_withId_(v17, [v14 next]) & 1) == 0)
          {
            LOBYTE(v9) = 0;
            return v9;
          }
        }

        if (v14)
        {
          LOBYTE(v9) = [v14 hasNext] ^ 1;
          return v9;
        }
      }
    }

LABEL_22:
    JreThrowNullPointerException();
  }

  if (self == equal)
  {
    LOBYTE(v9) = 1;
    return v9;
  }

  v7 = atomic_load(&self->elements_);
  objc_opt_class();
  if (!equal)
  {
    goto LABEL_22;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_23;
  }

  v8 = atomic_load(equal + 1);

  LOBYTE(v9) = JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(v7, v8);
  return v9;
}

- (BOOL)addWithId:(id)id
{
  v5 = objc_sync_enter(self);
  p_elements = &self->elements_;
  v8 = atomic_load(&self->elements_);
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  v9 = [IOSObjectArray arrayWithLength:*(v8 + 8) + 1 type:NSObject_class_(v5, v6)];
  v10 = atomic_load(p_elements);
  v11 = atomic_load(p_elements);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v10, 0, v9, 0, *(v11 + 8));
  v12 = atomic_load(p_elements);
  IOSObjectArray_Set(v9, *(v12 + 8), id);
  JreVolatileStrongAssign(&self->elements_, v9);
  objc_sync_exit(self);
  return 1;
}

- (void)addWithInt:(int)int withId:(id)id
{
  v5 = *&int;
  v7 = objc_sync_enter(self);
  p_elements = &self->elements_;
  v10 = atomic_load(&self->elements_);
  if (!v10)
  {
    JreThrowNullPointerException();
  }

  v11 = [IOSObjectArray arrayWithLength:*(v10 + 8) + 1 type:NSObject_class_(v7, v8)];
  v12 = atomic_load(p_elements);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v12, 0, v11, 0, v5);
  IOSObjectArray_Set(v11, v5, id);
  v13 = atomic_load(p_elements);
  v14 = atomic_load(p_elements);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v13, v5, v11, (v5 + 1), (*(v14 + 8) - v5));
  JreVolatileStrongAssign(&self->elements_, v11);

  objc_sync_exit(self);
}

- (BOOL)addAllWithJavaUtilCollection:(id)collection
{
  objc_sync_enter(self);
  v5 = atomic_load(&self->elements_);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaUtilConcurrentCopyOnWriteArrayList *)self addAllWithInt:*(v5 + 8) withJavaUtilCollection:collection];
  objc_sync_exit(self);
  return v6;
}

- (BOOL)addAllWithInt:(int)int withJavaUtilCollection:(id)collection
{
  v5 = *&int;
  objc_sync_enter(self);
  if (!collection)
  {
    JreThrowNullPointerException();
  }

  toArray = [collection toArray];
  p_elements = &self->elements_;
  v10 = atomic_load(&self->elements_);
  if (!v10 || (v11 = toArray) == 0)
  {
    JreThrowNullPointerException();
  }

  v12 = [IOSObjectArray arrayWithLength:(toArray[2] + *(v10 + 8)) type:NSObject_class_(toArray, v8)];
  v13 = atomic_load(p_elements);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v13, 0, v12, 0, v5);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v11, 0, v12, v5, v11[2]);
  v14 = atomic_load(p_elements);
  v15 = v11[2];
  v16 = atomic_load(p_elements);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v14, v5, v12, v15 + v5, (*(v16 + 8) - v5));
  JreVolatileStrongAssign(&self->elements_, v12);
  v17 = v11[2] > 0;
  objc_sync_exit(self);
  return v17;
}

- (int)addAllAbsentWithJavaUtilCollection:(id)collection
{
  objc_sync_enter(self);
  if (!collection)
  {
    JreThrowNullPointerException();
  }

  toArray = [collection toArray];
  p_elements = &self->elements_;
  v8 = atomic_load(&self->elements_);
  if (!v8 || (v9 = toArray) == 0)
  {
    JreThrowNullPointerException();
  }

  v10 = [IOSObjectArray arrayWithLength:toArray[2] + *(v8 + 8) type:NSObject_class_(toArray, v6)];
  v11 = atomic_load(p_elements);
  v12 = atomic_load(p_elements);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v11, 0, v10, 0, *(v12 + 8));
  v13 = (v9 + 6);
  v14 = v9[2];
  v15 = &v9[2 * v14 + 6];
  if ((v9 + 6) >= v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      v18 = *v13++;
      v17 = v18;
      v19 = atomic_load(p_elements);
      if (JavaUtilConcurrentCopyOnWriteArrayList_indexOfWithId_withNSObjectArray_withInt_withInt_(v18, v10, 0, *(v19 + 8) + v16) == -1)
      {
        v20 = atomic_load(p_elements);
        IOSObjectArray_Set(v10, *(v20 + 8) + v16++, v17);
      }
    }

    while (v13 < v15);
    LODWORD(v14) = v9[2];
  }

  if (v16 < v14)
  {
    v21 = atomic_load(p_elements);
    v10 = JavaUtilArrays_copyOfRangeWithNSObjectArray_withInt_withInt_(v10, 0, *(v21 + 8) + v16);
  }

  JreVolatileStrongAssign(&self->elements_, v10);
  objc_sync_exit(self);
  return v16;
}

- (BOOL)addIfAbsentWithId:(id)id
{
  objc_sync_enter(self);
  v5 = [(JavaUtilConcurrentCopyOnWriteArrayList *)self containsWithId:id];
  if ((v5 & 1) == 0)
  {
    [(JavaUtilConcurrentCopyOnWriteArrayList *)self addWithId:id];
  }

  objc_sync_exit(self);
  return v5 ^ 1;
}

- (void)clear
{
  objc_sync_enter(self);
  if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  JreVolatileStrongAssign(&self->elements_, LibcoreUtilEmptyArray_OBJECT_);

  objc_sync_exit(self);
}

- (id)removeWithInt:(int)int
{
  v3 = *&int;
  objc_sync_enter(self);
  v5 = atomic_load(&self->elements_);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = *(v5 + 8);
  if ((v3 & 0x80000000) != 0 || v6 <= v3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, v3);
  }

  v7 = *(v5 + 24 + 8 * v3);
  sub_1002897FC(self, v3, (v3 + 1));
  objc_sync_exit(self);
  return v7;
}

- (BOOL)removeWithId:(id)id
{
  objc_sync_enter(self);
  v5 = [(JavaUtilConcurrentCopyOnWriteArrayList *)self indexOfWithId:id];
  if (v5 != -1)
  {
    [(JavaUtilConcurrentCopyOnWriteArrayList *)self removeWithInt:v5];
  }

  objc_sync_exit(self);
  return v5 != -1;
}

- (BOOL)removeAllWithJavaUtilCollection:(id)collection
{
  objc_sync_enter(self);
  v5 = atomic_load(&self->elements_);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = sub_1002899CC(self, collection, 0, 0, *(v5 + 8)) != 0;
  objc_sync_exit(self);
  return v6;
}

- (BOOL)retainAllWithJavaUtilCollection:(id)collection
{
  objc_sync_enter(self);
  v5 = atomic_load(&self->elements_);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = sub_1002899CC(self, collection, 1, 0, *(v5 + 8)) != 0;
  objc_sync_exit(self);
  return v6;
}

- (id)setWithInt:(int)int withId:(id)id
{
  v5 = *&int;
  objc_sync_enter(self);
  v7 = atomic_load(&self->elements_);
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  clone = [v7 clone];
  v9 = clone;
  if (!clone)
  {
    JreThrowNullPointerException();
  }

  v10 = clone[2];
  if ((v5 & 0x80000000) != 0 || v10 <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v5);
  }

  v11 = v5;
  v12 = v9[v5 + 3];
  IOSObjectArray_Set(v9, v11, id);
  JreVolatileStrongAssign(&self->elements_, v9);
  objc_sync_exit(self);
  return v12;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  v3 = atomic_load(&self->elements_);
  if (!stream || ([stream defaultWriteObject], !v3))
  {
    JreThrowNullPointerException();
  }

  [stream writeIntWithInt:*(v3 + 8)];
  v5 = (v3 + 24);
  v6 = v3 + 24 + 8 * *(v3 + 8);
  while (v5 < v6)
  {
    v7 = *v5++;
    [stream writeObjectWithId:v7];
  }
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  objc_sync_enter(self);
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultReadObject];
  readInt = [stream readInt];
  v7 = [IOSObjectArray arrayWithLength:readInt type:NSObject_class_(readInt, v6)];
  if (v7->super.size_ >= 1)
  {
    v8 = 0;
    do
    {
      IOSObjectArray_Set(v7, v8++, [stream readObject]);
    }

    while (v8 < v7->super.size_);
  }

  JreVolatileStrongAssign(&self->elements_, v7);

  objc_sync_exit(self);
}

- (void)dealloc
{
  JreReleaseVolatile(&self->elements_);
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentCopyOnWriteArrayList;
  [(JavaUtilConcurrentCopyOnWriteArrayList *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentCopyOnWriteArrayList;
  [(JavaUtilConcurrentCopyOnWriteArrayList *)&v3 __javaClone];
  JreRetainVolatile(&self->elements_);
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(JavaUtilConcurrentCopyOnWriteArrayList *)self clone];

  return clone;
}

@end