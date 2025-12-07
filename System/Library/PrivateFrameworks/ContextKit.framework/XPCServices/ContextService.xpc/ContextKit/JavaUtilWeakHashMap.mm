@interface JavaUtilWeakHashMap
- (BOOL)containsValueWithId:(id)id;
- (IOSObjectArray)rehash;
- (id)entrySet;
- (id)getEntryWithId:(id)id;
- (id)getWithId:(id)id;
- (id)keySet;
- (id)putWithId:(id)id withId:(id)withId;
- (id)removeWithId:(id)id;
- (id)values;
- (void)clear;
- (void)computeMaxSize;
- (void)dealloc;
- (void)poll;
- (void)putAllImplWithJavaUtilMap:(id)map;
- (void)removeEntryWithJavaUtilWeakHashMap_Entry:(id)entry;
@end

@implementation JavaUtilWeakHashMap

- (void)clear
{
  if (self->elementCount_ >= 1)
  {
    self->elementCount_ = 0;
    JavaUtilArrays_fillWithNSObjectArray_withId_(self->elementData_, 0);
    atomic_fetch_add(&self->modCount_, 1u);
    do
    {
      referenceQueue = self->referenceQueue_;
      if (!referenceQueue)
      {
        JreThrowNullPointerException();
      }
    }

    while ([(JavaLangRefReferenceQueue *)referenceQueue poll]);
  }
}

- (void)computeMaxSize
{
  elementData = self->elementData_;
  if (!elementData)
  {
    JreThrowNullPointerException();
  }

  v3 = (self->loadFactor_ * elementData->super.size_ * 0x346DC5D63886594BLL) >> 64;
  self->threshold_ = (v3 >> 11) + (v3 >> 63);
}

- (id)entrySet
{
  [(JavaUtilWeakHashMap *)self poll];
  v3 = [JavaUtilWeakHashMap__1 alloc];
  JreStrongAssign(&v3->this$0_, self);
  JavaUtilAbstractSet_init(v3, v4);

  return v3;
}

- (id)keySet
{
  [(JavaUtilWeakHashMap *)self poll];
  result = self->super.keySet_;
  if (!result)
  {
    v4 = [JavaUtilWeakHashMap_KeySet alloc];
    objc_storeWeak(&v4->this$0_, self);
    JavaUtilAbstractSet_init(v4, v5);
    JreStrongAssignAndConsume(&self->super.keySet_, v4);
    return self->super.keySet_;
  }

  return result;
}

- (id)values
{
  [(JavaUtilWeakHashMap *)self poll];
  result = self->super.valuesCollection_;
  if (!result)
  {
    v4 = [JavaUtilWeakHashMap_ValuesCollection alloc];
    objc_storeWeak(&v4->this$0_, self);
    JavaUtilAbstractCollection_init();
    JreStrongAssignAndConsume(&self->super.valuesCollection_, v4);
    return self->super.valuesCollection_;
  }

  return result;
}

- (id)getWithId:(id)id
{
  [(JavaUtilWeakHashMap *)self poll];
  if (!id)
  {
    elementData = self->elementData_;
    if (elementData)
    {
      size = elementData->super.size_;
      if (size <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, 0);
      }

      elementType = elementData->elementType_;
      if (elementType)
      {
        while ((BYTE4(elementType[5].super.isa) & 1) == 0)
        {
          elementType = elementType[7].super.isa;
          if (!elementType)
          {
            return 0;
          }
        }

        return elementType[6].super.isa;
      }

      return 0;
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  v6 = JavaUtilCollections_secondaryHashWithId_(id, v5);
  v7 = self->elementData_;
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v6 & 0x7FFFFFFF;
  v9 = v7->super.size_;
  if ((v9 & 0x80000000) != 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, (v8 % v9));
  }

  elementType = (&v7->elementType_)[v8 % v9];
  if (!elementType)
  {
    return 0;
  }

  while (([id isEqual:{-[IOSClass get](elementType, "get")}] & 1) == 0)
  {
    elementType = elementType[7].super.isa;
    if (!elementType)
    {
      return 0;
    }
  }

  return elementType[6].super.isa;
}

- (id)getEntryWithId:(id)id
{
  [(JavaUtilWeakHashMap *)self poll];
  if (id)
  {
    v6 = JavaUtilCollections_secondaryHashWithId_(id, v5);
    elementData = self->elementData_;
    if (elementData)
    {
      v8 = v6 & 0x7FFFFFFF;
      size = elementData->super.size_;
      if ((size & 0x80000000) != 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, (v8 % size));
      }

      for (i = (&elementData->elementType_)[v8 % size]; i; i = i[7].super.isa)
      {
        if ([id isEqual:{-[IOSClass get](i, "get")}])
        {
          break;
        }
      }

      return i;
    }

LABEL_14:
    JreThrowNullPointerException();
  }

  v11 = self->elementData_;
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v11->super.size_;
  if (v12 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, 0);
  }

  for (i = v11->elementType_; i; i = i[7].super.isa)
  {
    if (BYTE4(i[5].super.isa))
    {
      break;
    }
  }

  return i;
}

- (BOOL)containsValueWithId:(id)id
{
  [(JavaUtilWeakHashMap *)self poll];
  elementData = self->elementData_;
  if (id)
  {
    if (elementData)
    {
      size = elementData->super.size_;
      v7 = (size - 1);
      if (size - 1 >= 0)
      {
        while (1)
        {
          v8 = self->elementData_;
          v9 = v8->super.size_;
          if (v7 >= v9)
          {
            IOSArray_throwOutOfBoundsWithMsg(v9, v7);
          }

          isa = (&v8->elementType_)[v7];
          if (isa)
          {
            break;
          }

LABEL_10:
          v11 = v7-- < 1;
          if (v11)
          {
            return 0;
          }
        }

        while (!-[IOSClass get](isa, "get") && BYTE4(isa[5].super.isa) != 1 || ([id isEqual:isa[6].super.isa] & 1) == 0)
        {
          isa = isa[7].super.isa;
          if (!isa)
          {
            goto LABEL_10;
          }
        }

        return 1;
      }

      return 0;
    }

LABEL_28:
    JreThrowNullPointerException();
  }

  if (!elementData)
  {
    goto LABEL_28;
  }

  v12 = elementData->super.size_;
  v13 = (v12 - 1);
  if (v12 - 1 >= 0)
  {
    while (1)
    {
      v14 = self->elementData_;
      v15 = v14->super.size_;
      if (v13 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v13);
      }

      v16 = (&v14->elementType_)[v13];
      if (v16)
      {
        break;
      }

LABEL_22:
      result = 0;
      v11 = v13-- < 1;
      if (v11)
      {
        return result;
      }
    }

    while (![(IOSClass *)v16 get]&& BYTE4(v16[5].super.isa) != 1 || v16[6].super.isa)
    {
      v16 = v16[7].super.isa;
      if (!v16)
      {
        goto LABEL_22;
      }
    }

    return 1;
  }

  return 0;
}

- (void)poll
{
  referenceQueue = self->referenceQueue_;
  if (!referenceQueue)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  while (1)
  {
    poll = [(JavaLangRefReferenceQueue *)referenceQueue poll];
    objc_opt_class();
    if (!poll)
    {
      break;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    [(JavaUtilWeakHashMap *)self removeEntryWithJavaUtilWeakHashMap_Entry:poll];
    referenceQueue = self->referenceQueue_;
    if (!referenceQueue)
    {
      goto LABEL_5;
    }
  }
}

- (void)removeEntryWithJavaUtilWeakHashMap_Entry:(id)entry
{
  if (!entry || (elementData = self->elementData_) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = *(entry + 10) & 0x7FFFFFFF;
  size = elementData->super.size_;
  v7 = (v5 % size);
  if ((size & 0x80000000) != 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (v5 % size));
  }

  p_isa = &(&elementData->elementType_)[v7]->super.isa;
  if (p_isa)
  {
    if (p_isa == entry)
    {
      v10 = 0;
LABEL_11:
      atomic_fetch_add(&self->modCount_, 1u);
      if (v10)
      {
        JreStrongAssign(&v10[7].super.isa, p_isa[7]);
      }

      else
      {
        IOSObjectArray_Set(self->elementData_, v7, p_isa[7]);
      }

      --self->elementCount_;
    }

    else
    {
      isa = (&elementData->elementType_)[v7];
      while (1)
      {
        p_isa = isa[7].super.isa;
        if (!p_isa)
        {
          break;
        }

        v10 = isa;
        isa = isa[7].super.isa;
        if (p_isa == entry)
        {
          goto LABEL_11;
        }
      }
    }
  }
}

- (id)putWithId:(id)id withId:(id)withId
{
  [(JavaUtilWeakHashMap *)self poll];
  if (id)
  {
    v8 = JavaUtilCollections_secondaryHashWithId_(id, v7);
    elementData = self->elementData_;
    if (!elementData)
    {
      goto LABEL_24;
    }

    v10 = v8 & 0x7FFFFFFF;
    size = elementData->super.size_;
    v12 = (v10 % size);
    if ((size & 0x80000000) != 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, (v10 % size));
    }

    isa = (&elementData->elementType_)[v12];
    if (isa)
    {
      while (([id isEqual:{-[IOSClass get](isa, "get")}] & 1) == 0)
      {
        isa = isa[7].super.isa;
        if (!isa)
        {
          goto LABEL_14;
        }
      }

LABEL_18:
      v20 = isa[6].super.isa;
      JreStrongAssign(&isa[6].super.isa, withId);
      return v20;
    }
  }

  else
  {
    v14 = self->elementData_;
    if (!v14)
    {
      goto LABEL_24;
    }

    v15 = v14->super.size_;
    if (v15 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, 0);
    }

    isa = v14->elementType_;
    if (isa)
    {
      while ((BYTE4(isa[5].super.isa) & 1) == 0)
      {
        isa = isa[7].super.isa;
        if (!isa)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_18;
    }

LABEL_13:
    v12 = 0;
  }

LABEL_14:
  atomic_fetch_add(&self->modCount_, 1u);
  v16 = self->elementCount_ + 1;
  self->elementCount_ = v16;
  if (v16 > self->threshold_)
  {
    [JavaUtilWeakHashMap rehash]_0(self);
    if (id)
    {
      v18 = JavaUtilCollections_secondaryHashWithId_(id, v17);
      v19 = self->elementData_;
      if (!v19)
      {
        goto LABEL_24;
      }

      v12 = ((v18 & 0x7FFFFFFF) % v19->super.size_);
    }

    else
    {
      v12 = 0;
    }
  }

  referenceQueue = self->referenceQueue_;
  v22 = [JavaUtilWeakHashMap_Entry alloc];
  JavaUtilWeakHashMap_Entry_initWithId_withId_withJavaLangRefReferenceQueue_(v22, id, withId, referenceQueue);
  v23 = v22;
  v24 = self->elementData_;
  if (!v24)
  {
LABEL_24:
    JreThrowNullPointerException();
  }

  p_isa = &v23->super.super.super.isa;
  v26 = v24->super.size_;
  if (v12 >= v26)
  {
    IOSArray_throwOutOfBoundsWithMsg(v26, v12);
  }

  JreStrongAssign(p_isa + 7, (&v24->elementType_)[v12]);
  IOSObjectArray_Set(self->elementData_, v12, p_isa);
  return 0;
}

- (IOSObjectArray)rehash
{
  v1 = result->buffer_[0];
  if (!v1)
  {
    goto LABEL_19;
  }

  v2 = result;
  v3 = 2 * v1[2];
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = sub_10015A254(v4);
  v6 = v2->buffer_[0];
  if (v6[2] >= 1)
  {
    v7 = 0;
    v15 = v2;
    do
    {
      v16 = v7;
      v8 = *&v6[2 * v7 + 6];
      if (v8)
      {
        do
        {
          if (*(v8 + 44))
          {
            v9 = 0;
            if (!v5)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v9 = ((*(v8 + 40) & 0x7FFFFFFF) % v4);
            if (!v5)
            {
              goto LABEL_19;
            }
          }

          v10 = *(v8 + 56);
          size = v5->super.size_;
          if (size <= v9)
          {
            IOSArray_throwOutOfBoundsWithMsg(size, v9);
          }

          JreStrongAssign((v8 + 56), (&v5->elementType_)[v9]);
          IOSObjectArray_Set(v5, v9, v8);
          v8 = v10;
        }

        while (v10);
        v2 = v15;
      }

      v7 = v16 + 1;
      v6 = v2->buffer_[0];
    }

    while (v16 + 1 < v6[2]);
  }

  v12 = JreStrongAssign(v2->buffer_, v5);
  v13 = v2->buffer_[0];
  if (!v13)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  v14 = (SLODWORD(v2->buffer_[3]) * v13[2] * 0x346DC5D63886594BLL) >> 64;
  HIDWORD(v2->buffer_[3]) = (v14 >> 11) + (v14 >> 63);
  return v12;
}

- (id)removeWithId:(id)id
{
  [(JavaUtilWeakHashMap *)self poll];
  if (id)
  {
    v6 = JavaUtilCollections_secondaryHashWithId_(id, v5);
    elementData = self->elementData_;
    if (!elementData)
    {
      goto LABEL_24;
    }

    v8 = v6 & 0x7FFFFFFF;
    size = elementData->super.size_;
    v10 = (v8 % size);
    if ((size & 0x80000000) != 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, (v8 % size));
    }

    isa = (&elementData->elementType_)[v10];
    if (isa)
    {
      if ([id isEqual:{-[IOSClass get](isa, "get")}])
      {
        v12 = 0;
        goto LABEL_18;
      }

      while (1)
      {
        v12 = isa;
        isa = isa[7].super.isa;
        if (!isa)
        {
          break;
        }

        if ([id isEqual:{-[IOSClass get](isa, "get")}])
        {
          goto LABEL_18;
        }
      }
    }

    return 0;
  }

  v13 = self->elementData_;
  if (!v13)
  {
    goto LABEL_24;
  }

  v14 = v13->super.size_;
  if (v14 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v14, 0);
  }

  isa = v13->elementType_;
  if (!isa)
  {
    return 0;
  }

  if (BYTE4(isa[5].super.isa))
  {
    v10 = 0;
    v12 = 0;
  }

  else
  {
    do
    {
      v12 = isa;
      isa = isa[7].super.isa;
      if (!isa)
      {
        return 0;
      }
    }

    while ((BYTE4(isa[5].super.isa) & 1) == 0);
    v10 = 0;
  }

LABEL_18:
  atomic_fetch_add(&self->modCount_, 1u);
  if (!v12)
  {
    v16 = self->elementData_;
    if (v16)
    {
      IOSObjectArray_Set(v16, v10, isa[7].super.isa);
      goto LABEL_23;
    }

LABEL_24:
    JreThrowNullPointerException();
  }

  JreStrongAssign(&v12[7].super.isa, isa[7].super.isa);
LABEL_23:
  --self->elementCount_;
  return isa[6].super.isa;
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
    v5.super_class = JavaUtilWeakHashMap;
    [(JavaUtilAbstractMap *)&v5 putAllWithJavaUtilMap:map];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilWeakHashMap;
  [(JavaUtilAbstractMap *)&v3 dealloc];
}

@end