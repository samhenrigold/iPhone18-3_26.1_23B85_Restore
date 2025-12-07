@interface JavaUtilCollections_SynchronizedList
- (BOOL)addAllWithInt:(int)int withJavaUtilCollection:(id)collection;
- (BOOL)isEqual:(id)equal;
- (JavaUtilCollections_SynchronizedList)initWithJavaUtilList:(id)list;
- (id)getWithInt:(int)int;
- (id)listIterator;
- (id)listIteratorWithInt:(int)int;
- (id)readResolve;
- (id)removeWithInt:(int)int;
- (id)setWithInt:(int)int withId:(id)id;
- (id)subListWithInt:(int)int withInt:(int)withInt;
- (int)indexOfWithId:(id)id;
- (int)lastIndexOfWithId:(id)id;
- (unint64_t)hash;
- (void)addWithInt:(int)int withId:(id)id;
- (void)dealloc;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaUtilCollections_SynchronizedList

- (JavaUtilCollections_SynchronizedList)initWithJavaUtilList:(id)list
{
  JavaUtilCollections_SynchronizedCollection_initWithJavaUtilCollection_(self, list);
  JreStrongAssign(&self->list_, list);
  return self;
}

- (void)addWithInt:(int)int withId:(id)id
{
  v5 = *&int;
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilList *)list addWithInt:v5 withId:id];

  objc_sync_exit(mutex);
}

- (BOOL)addAllWithInt:(int)int withJavaUtilCollection:(id)collection
{
  v5 = *&int;
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  v9 = [(JavaUtilList *)list addAllWithInt:v5 withJavaUtilCollection:collection];
  objc_sync_exit(mutex);
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilList *)list isEqual:equal];
  objc_sync_exit(mutex);
  return v7;
}

- (id)getWithInt:(int)int
{
  v3 = *&int;
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilList *)list getWithInt:v3];
  objc_sync_exit(mutex);
  return v7;
}

- (unint64_t)hash
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilList *)list hash];
  objc_sync_exit(mutex);
  return v5;
}

- (int)indexOfWithId:(id)id
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilList *)list size];
  v8 = v7;
  v10 = [IOSObjectArray arrayWithLength:v7 type:NSObject_class_(v7, v9)];
  [(JavaUtilList *)self->list_ toArrayWithNSObjectArray:v10];
  objc_sync_exit(mutex);
  if (id)
  {
    if (v8 >= 1)
    {
      v11 = 0;
      while (1)
      {
        size = v10->super.size_;
        if (v11 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v11);
        }

        if ([id isEqual:(&v10->elementType_)[v11]])
        {
          break;
        }

        if (v8 == ++v11)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v13) = v11;
      return v13;
    }

LABEL_17:
    LODWORD(v13) = -1;
    return v13;
  }

  if (v8 < 1)
  {
    goto LABEL_17;
  }

  v13 = 0;
  while (1)
  {
    v14 = v10->super.size_;
    if (v13 >= v14)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, v13);
    }

    if (!(&v10->elementType_)[v13])
    {
      return v13;
    }

    if (v8 == ++v13)
    {
      goto LABEL_17;
    }
  }
}

- (int)lastIndexOfWithId:(id)id
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilList *)list size];
  LODWORD(v8) = v7;
  v10 = [IOSObjectArray arrayWithLength:v7 type:NSObject_class_(v7, v9)];
  [(JavaUtilList *)self->list_ toArrayWithNSObjectArray:v10];
  objc_sync_exit(mutex);
  if (id)
  {
    v11 = v8 - 1;
    while (1)
    {
      v8 = (v8 - 1);
      if (v8 < 0)
      {
        break;
      }

      size = v10->super.size_;
      if (size <= v8)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v8);
      }

      v13 = [id isEqual:(&v10->elementType_)[v11-- & 0x7FFFFFFF]];
      if (v13)
      {
        return v8;
      }
    }
  }

  else
  {
    v14 = v8 - 1;
    while (1)
    {
      v8 = (v8 - 1);
      if (v8 < 0)
      {
        break;
      }

      v15 = v10->super.size_;
      if (v15 <= v8)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v8);
      }

      if (!(&v10->elementType_)[v14-- & 0x7FFFFFFF])
      {
        return v8;
      }
    }
  }

  LODWORD(v8) = -1;
  return v8;
}

- (id)listIterator
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  listIterator = [(JavaUtilList *)list listIterator];
  objc_sync_exit(mutex);
  return listIterator;
}

- (id)listIteratorWithInt:(int)int
{
  v3 = *&int;
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilList *)list listIteratorWithInt:v3];
  objc_sync_exit(mutex);
  return v7;
}

- (id)removeWithInt:(int)int
{
  v3 = *&int;
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilList *)list removeWithInt:v3];
  objc_sync_exit(mutex);
  return v7;
}

- (id)setWithInt:(int)int withId:(id)id
{
  v5 = *&int;
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  v9 = [(JavaUtilList *)list setWithInt:v5 withId:id];
  objc_sync_exit(mutex);
  return v9;
}

- (id)subListWithInt:(int)int withInt:(int)withInt
{
  v4 = *&withInt;
  v5 = *&int;
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  v9 = [(JavaUtilList *)list subListWithInt:v5 withInt:v4];
  v10 = self->super.mutex_;
  v11 = [JavaUtilCollections_SynchronizedList alloc];
  JavaUtilCollections_SynchronizedList_initWithJavaUtilList_withId_(&v11->super.super.isa, v9, v10);
  v12 = v11;
  objc_sync_exit(mutex);
  return v12;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultWriteObject];

  objc_sync_exit(mutex);
}

- (id)readResolve
{
  if (![JavaUtilRandomAccess_class_(self a2)])
  {
    return self;
  }

  list = self->list_;
  mutex = self->super.mutex_;
  v5 = [JavaUtilCollections_SynchronizedRandomAccessList alloc];
  JavaUtilCollections_SynchronizedList_initWithJavaUtilList_withId_(&v5->super.super.super.isa, list, mutex);

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_SynchronizedList;
  [(JavaUtilCollections_SynchronizedCollection *)&v3 dealloc];
}

@end