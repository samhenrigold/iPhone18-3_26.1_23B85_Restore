@interface JavaUtilCollections_CheckedMap
- (BOOL)containsKeyWithId:(id)id;
- (BOOL)containsValueWithId:(id)id;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)entrySet;
- (id)getWithId:(id)id;
- (id)keySet;
- (id)putWithId:(id)id withId:(id)withId;
- (id)removeWithId:(id)id;
- (id)values;
- (int)size;
- (unint64_t)hash;
- (void)clear;
- (void)dealloc;
- (void)putAllWithJavaUtilMap:(id)map;
@end

@implementation JavaUtilCollections_CheckedMap

- (int)size
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m size];
}

- (BOOL)isEmpty
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m isEmpty];
}

- (BOOL)containsKeyWithId:(id)id
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m containsKeyWithId:id];
}

- (BOOL)containsValueWithId:(id)id
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m containsValueWithId:id];
}

- (id)getWithId:(id)id
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m getWithId:id];
}

- (id)putWithId:(id)id withId:(id)withId
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  JavaUtilCollections_checkTypeWithId_withIOSClass_(id, self->keyType_);
  JavaUtilCollections_checkTypeWithId_withIOSClass_(withId, self->valueType_);

  return [(JavaUtilMap *)m putWithId:id withId:withId];
}

- (id)removeWithId:(id)id
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m removeWithId:id];
}

- (void)putAllWithJavaUtilMap:(id)map
{
  if (!map)
  {
    goto LABEL_20;
  }

  v5 = [map size];
  if (v5)
  {
    v7 = v5;
    v8 = [IOSObjectArray arrayWithLength:v5 type:JavaUtilMap_Entry_class_(v5, v6)];
    entrySet = [map entrySet];
    if (!entrySet)
    {
      goto LABEL_20;
    }

    iterator = [entrySet iterator];
    if (v7 >= 1)
    {
      v11 = iterator;
      if (iterator)
      {
        v12 = 0;
        v13 = v7;
        do
        {
          next = [v11 next];
          if (!next)
          {
            goto LABEL_20;
          }

          v15 = next;
          JavaUtilCollections_checkTypeWithId_withIOSClass_([next getKey], self->keyType_);
          JavaUtilCollections_checkTypeWithId_withIOSClass_([v15 getValue], self->valueType_);
          IOSObjectArray_Set(v8, v12++, v15);
        }

        while (v13 != v12);
        v16 = 0;
        for (i = v8; ; i = (i + 8))
        {
          m = self->m_;
          if (!m)
          {
            break;
          }

          size = v8->super.size_;
          if (v16 >= size)
          {
            IOSArray_throwOutOfBoundsWithMsg(size, v16);
          }

          elementType = i->elementType_;
          if (!elementType)
          {
            break;
          }

          getKey = [(IOSClass *)elementType getKey];
          v22 = v8->super.size_;
          if (v16 >= v22)
          {
            IOSArray_throwOutOfBoundsWithMsg(v22, v16);
          }

          v23 = i->elementType_;
          if (!v23)
          {
            break;
          }

          [(JavaUtilMap *)m putWithId:getKey withId:[(IOSClass *)v23 getValue]];
          if (v13 == ++v16)
          {
            return;
          }
        }
      }

LABEL_20:
      JreThrowNullPointerException();
    }
  }
}

- (void)clear
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilMap *)m clear];
}

- (id)keySet
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m keySet];
}

- (id)values
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m values];
}

- (id)entrySet
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  entrySet = [(JavaUtilMap *)m entrySet];
  valueType = self->valueType_;
  v6 = [JavaUtilCollections_CheckedMap_CheckedEntrySet alloc];
  JreStrongAssign(&v6->s_, entrySet);
  JreStrongAssign(&v6->valueType_, valueType);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m isEqual:equal];
}

- (unint64_t)hash
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m hash];
}

- (NSString)description
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_CheckedMap;
  [(JavaUtilCollections_CheckedMap *)&v3 dealloc];
}

@end