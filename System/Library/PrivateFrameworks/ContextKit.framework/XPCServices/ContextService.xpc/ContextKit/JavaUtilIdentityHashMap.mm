@interface JavaUtilIdentityHashMap
+ (void)initialize;
- (BOOL)containsKeyWithId:(id)id;
- (BOOL)containsValueWithId:(id)id;
- (BOOL)isEqual:(id)equal;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)entrySet;
- (id)getWithId:(id)id;
- (id)keySet;
- (id)massageValueWithId:(id)id;
- (id)newElementArrayWithInt:(int)int;
- (id)putWithId:(id)id withId:(id)withId;
- (id)rehash;
- (id)removeWithId:(id)id;
- (id)values;
- (int)computeElementArraySize;
- (int)getThresholdWithInt:(int)int;
- (void)clear;
- (void)computeMaxSize;
- (void)dealloc;
- (void)putAllImplWithJavaUtilMap:(id)map;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaUtilIdentityHashMap

- (int)getThresholdWithInt:(int)int
{
  if (int <= 3)
  {
    return 3;
  }

  else
  {
    return int;
  }
}

- (int)computeElementArraySize
{
  if (((10000 * self->threshold_ / 7500) & 0x40000000) != 0)
  {
    return -2 * (10000 * self->threshold_ / 7500);
  }

  else
  {
    return 2 * (10000 * self->threshold_ / 7500);
  }
}

- (id)newElementArrayWithInt:(int)int
{
  intCopy = int;
  v4 = NSObject_class_(self, a2);

  return [IOSObjectArray arrayWithLength:intCopy type:v4];
}

- (id)massageValueWithId:(id)id
{
  if (qword_1005568B0 == id)
  {
    return 0;
  }

  else
  {
    return id;
  }
}

- (void)clear
{
  self->size_ = 0;
  elementData = self->elementData_;
  if (!elementData)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  v4 = 0;
  while (v4 < elementData->super.size_)
  {
    IOSObjectArray_Set(elementData, v4++, 0);
    elementData = self->elementData_;
    if (!elementData)
    {
      goto LABEL_5;
    }
  }

  ++self->modCount_;
}

- (BOOL)containsKeyWithId:(id)id
{
  if (id)
  {
    idCopy = id;
  }

  else
  {
    idCopy = qword_1005568B0;
  }

  v5 = sub_1002619CC(idCopy, self->elementData_);
  elementData = self->elementData_;
  if (!elementData)
  {
    JreThrowNullPointerException();
  }

  v7 = v5;
  size = elementData->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7);
  }

  return (&elementData->elementType_)[v7] == idCopy;
}

- (BOOL)containsValueWithId:(id)id
{
  if (id)
  {
    idCopy = id;
  }

  else
  {
    idCopy = qword_1005568B0;
  }

  elementData = self->elementData_;
  if (!elementData)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v5 = 1;
  while (1)
  {
    size = elementData->super.size_;
    if (v5 >= size)
    {
      break;
    }

    if ((v5 & 0x80000000) != 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(elementData->super.size_, v5);
    }

    if ((&elementData->elementType_)[v5] == idCopy)
    {
      break;
    }

    v5 = (v5 + 2);
    elementData = self->elementData_;
    if (!elementData)
    {
      goto LABEL_13;
    }
  }

  return v5 < size;
}

- (id)getWithId:(id)id
{
  if (id)
  {
    idCopy = id;
  }

  else
  {
    idCopy = qword_1005568B0;
  }

  v5 = sub_1002619CC(idCopy, self->elementData_);
  elementData = self->elementData_;
  if (!elementData)
  {
    JreThrowNullPointerException();
  }

  v7 = v5;
  size = elementData->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7);
  }

  if ((&elementData->elementType_)[v7] != idCopy)
  {
    return 0;
  }

  v10 = self->elementData_;
  v11 = v10->super.size_;
  v12 = v7 + 1;
  if (v7 + 1 < 0 || v12 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, v12);
  }

  if (qword_1005568B0 == (&v10->elementType_)[v12])
  {
    return 0;
  }

  else
  {
    return (&v10->elementType_)[v12];
  }
}

- (id)putWithId:(id)id withId:(id)withId
{
  v6 = qword_1005568B0;
  if (id)
  {
    idCopy = id;
  }

  else
  {
    idCopy = qword_1005568B0;
  }

  v8 = sub_1002619CC(idCopy, self->elementData_);
  elementData = self->elementData_;
  if (!elementData)
  {
    JreThrowNullPointerException();
  }

  v11 = v8;
  v12 = v8;
  size = elementData->super.size_;
  if ((v11 & 0x80000000) != 0 || v11 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v11);
  }

  if ((&elementData->elementType_)[v12] == idCopy)
  {
    v16 = (v11 + 1);
  }

  else
  {
    ++self->modCount_;
    v14 = self->size_ + 1;
    self->size_ = v14;
    if (v14 > self->threshold_)
    {
      [JavaUtilIdentityHashMap rehash]_0(self, v9);
      v15 = sub_1002619CC(idCopy, self->elementData_);
      v12 = v15;
      LODWORD(v11) = v15;
    }

    IOSObjectArray_Set(self->elementData_, v12, idCopy);
    v16 = (v11 + 1);
    IOSObjectArray_Set(self->elementData_, v16, 0);
  }

  v17 = self->elementData_;
  if ((v16 & 0x80000000) != 0 || v16 >= v17->super.size_)
  {
    IOSArray_throwOutOfBoundsWithMsg(v17->super.size_, v16);
  }

  if (withId)
  {
    withIdCopy = withId;
  }

  else
  {
    withIdCopy = v6;
  }

  v19 = (&v17->elementType_)[v16];
  IOSObjectArray_Set(self->elementData_, v16, withIdCopy);
  if (qword_1005568B0 == v19)
  {
    return 0;
  }

  else
  {
    return v19;
  }
}

- (id)rehash
{
  v2 = *(self + 24);
  if (!v2)
  {
    goto LABEL_18;
  }

  v4 = 2 * *(v2 + 8);
  if (v4 <= 1)
  {
    v4 = 1;
  }

  v5 = [IOSObjectArray arrayWithLength:v4 type:NSObject_class_(self, a2)];
  v6 = *(self + 24);
  v7 = *(v6 + 8);
  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = v8;
      if (v8 < 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, v8);
      }

      v10 = *(v6 + 24 + 8 * v8);
      if (v10)
      {
        v11 = sub_1002619CC(*(v6 + 24 + 8 * v8), v5);
        if (!v5)
        {
          goto LABEL_18;
        }

        v12 = v11;
        IOSObjectArray_Set(v5, v11, v10);
        v13 = *(self + 24);
        v14 = v9 + 1;
        v15 = *(v13 + 8);
        if (v9 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v14);
        }

        IOSObjectArray_Set(v5, v12 + 1, *(v13 + 24 + 8 * (v9 + 1)));
      }

      v8 = v9 + 2;
      v6 = *(self + 24);
      v7 = *(v6 + 8);
    }

    while (v9 + 2 < v7);
  }

  result = JreStrongAssign((self + 24), v5);
  v17 = *(self + 24);
  if (!v17)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  *(self + 36) = 7500 * (*(v17 + 8) / 2) / 10000;
  return result;
}

- (void)computeMaxSize
{
  elementData = self->elementData_;
  if (!elementData)
  {
    JreThrowNullPointerException();
  }

  self->threshold_ = 7500 * (elementData->super.size_ / 2) / 10000;
}

- (id)removeWithId:(id)id
{
  if (id)
  {
    idCopy = id;
  }

  else
  {
    idCopy = qword_1005568B0;
  }

  v5 = sub_1002619CC(idCopy, self->elementData_);
  elementData = self->elementData_;
  if (!elementData)
  {
    JreThrowNullPointerException();
  }

  v8 = v5;
  size = elementData->super.size_;
  if ((v8 & 0x80000000) != 0 || v8 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v8);
  }

  if ((&elementData->elementType_)[v8] != idCopy)
  {
    return 0;
  }

  v11 = self->elementData_;
  v12 = v11->super.size_;
  v13 = v8 + 1;
  if (v8 + 1 < 0 || v13 >= v12)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11->super.size_, v13);
  }

  v14 = self->elementData_;
  v26 = v11->buffer_[v8];
  v15 = v11->super.size_;
  v16 = v8;
  while (1)
  {
    v17 = v8 + 2;
    LODWORD(v8) = (v8 + 2) % v12;
    if ((v8 & 0x80000000) != 0 || v8 >= v15)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, (v17 % v12));
    }

    v18 = (&v14->elementType_)[v8];
    if (!v18)
    {
      break;
    }

    v19 = JavaUtilCollections_secondaryIdentityHashWithId_((&v14->elementType_)[v8], v6);
    v20 = 2 * (v19 - (v19 & 0x7FFFFFFF) / (v12 / 2) * (v12 / 2));
    if (v8 >= v16)
    {
      if (v20 > v16 && v20 <= v8)
      {
        goto LABEL_29;
      }
    }

    else if (v20 > v16 || v20 <= v8)
    {
      goto LABEL_29;
    }

    IOSObjectArray_Set(self->elementData_, v16, v18);
    v23 = self->elementData_;
    v24 = v23->super.size_;
    v25 = v8 + 1;
    if (v8 + 1 < 0 || v25 >= v24)
    {
      IOSArray_throwOutOfBoundsWithMsg(v24, v25);
    }

    IOSObjectArray_Set(self->elementData_, v16 + 1, v23->buffer_[v8]);
    v16 = v8;
LABEL_29:
    v14 = self->elementData_;
    v15 = v14->super.size_;
  }

  --self->size_;
  ++self->modCount_;
  IOSObjectArray_Set(self->elementData_, v16, 0);
  IOSObjectArray_Set(self->elementData_, v16 + 1, 0);
  if (qword_1005568B0 == v26)
  {
    return 0;
  }

  else
  {
    return v26;
  }
}

- (id)entrySet
{
  v2 = new_JavaUtilIdentityHashMap_IdentityHashMapEntrySet_initWithJavaUtilIdentityHashMap_(self);

  return v2;
}

- (id)keySet
{
  result = self->super.keySet_;
  if (!result)
  {
    v4 = new_JavaUtilIdentityHashMap_KeySet_initWithJavaUtilIdentityHashMap_(self);
    JreStrongAssignAndConsume(&self->super.keySet_, v4);
    return self->super.keySet_;
  }

  return result;
}

- (id)values
{
  result = self->super.valuesCollection_;
  if (!result)
  {
    v4 = new_JavaUtilIdentityHashMap_ValuesCollection_initWithJavaUtilIdentityHashMap_(self);
    JreStrongAssignAndConsume(&self->super.valuesCollection_, v4);
    return self->super.valuesCollection_;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [JavaUtilMap_class_(self a2)];
    if (v5)
    {
      v7 = JavaUtilMap_class_(v5, v6);
      if (!equal)
      {
        [(JavaUtilIdentityHashMap *)self size];
        JreThrowNullPointerException();
      }

      if (([v7 isInstance:equal] & 1) == 0)
      {
        JreThrowClassCastException();
      }

      v8 = [(JavaUtilIdentityHashMap *)self size];
      if (v8 == [equal size])
      {
        entrySet = [(JavaUtilIdentityHashMap *)self entrySet];
        if (!entrySet)
        {
          JreThrowNullPointerException();
        }

        v10 = entrySet;
        entrySet2 = [equal entrySet];

        LOBYTE(v5) = [v10 isEqual:entrySet2];
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (id)clone
{
  v10.receiver = self;
  v10.super_class = JavaUtilIdentityHashMap;
  clone = [(JavaUtilAbstractMap *)&v10 clone];
  objc_opt_class();
  if (!clone)
  {
    goto LABEL_6;
  }

  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    JreThrowClassCastException();
  }

  elementData = self->elementData_;
  if (!elementData || (v7 = [IOSObjectArray arrayWithLength:elementData->super.size_ type:NSObject_class_(isKindOfClass, v5)], JreStrongAssign(clone + 3, v7), (v8 = self->elementData_) == 0))
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v8, 0, clone[3], 0, v8->super.size_);
  return clone;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  if (!stream)
  {
    goto LABEL_9;
  }

  [stream defaultWriteObject];
  [stream writeIntWithInt:self->size_];
  entrySet = [(JavaUtilIdentityHashMap *)self entrySet];
  if (!entrySet)
  {
    goto LABEL_9;
  }

  iterator = [entrySet iterator];
  if (!iterator)
  {
    goto LABEL_9;
  }

  v7 = iterator;
  if ([iterator hasNext])
  {
    while (1)
    {
      next = [v7 next];
      objc_opt_class();
      if (!next)
      {
        break;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      [stream writeObjectWithId:next[1]];
      [stream writeObjectWithId:next[2]];
      if (([v7 hasNext] & 1) == 0)
      {
        return;
      }
    }

LABEL_9:
    JreThrowNullPointerException();
  }
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultReadObject];
  readInt = [stream readInt];
  self->threshold_ = 21;
  v7 = [IOSObjectArray arrayWithLength:56 type:NSObject_class_(readInt, v6)];
  JreStrongAssign(&self->elementData_, v7);
  if (readInt - 1 >= 0)
  {
    v8 = readInt;
    do
    {
      -[JavaUtilIdentityHashMap putWithId:withId:](self, "putWithId:withId:", [stream readObject], objc_msgSend(stream, "readObject"));
      --v8;
    }

    while (v8);
  }

  self->size_ = readInt;
}

- (void)putAllImplWithJavaUtilMap:(id)map
{
  if (!map)
  {
    JreThrowNullPointerException();
  }

  if ([map entrySet])
  {
    v5.receiver = self;
    v5.super_class = JavaUtilIdentityHashMap;
    [(JavaUtilAbstractMap *)&v5 putAllWithJavaUtilMap:map];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilIdentityHashMap;
  [(JavaUtilAbstractMap *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(JavaUtilIdentityHashMap *)self clone];

  return clone;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&qword_1005568B0, [NSObject alloc]);
    atomic_store(1u, &JavaUtilIdentityHashMap__initialized);
  }
}

@end