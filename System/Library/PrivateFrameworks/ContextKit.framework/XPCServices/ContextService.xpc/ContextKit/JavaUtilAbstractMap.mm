@interface JavaUtilAbstractMap
- (BOOL)containsKeyWithId:(id)id;
- (BOOL)containsValueWithId:(id)id;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)clone;
- (id)getWithId:(id)id;
- (id)keySet;
- (id)removeWithId:(id)id;
- (id)values;
- (int)size;
- (unint64_t)hash;
- (void)clear;
- (void)dealloc;
- (void)putAllWithJavaUtilMap:(id)map;
@end

@implementation JavaUtilAbstractMap

- (void)clear
{
  entrySet = [(JavaUtilAbstractMap *)self entrySet];
  if (!entrySet)
  {
    JreThrowNullPointerException();
  }

  [entrySet clear];
}

- (BOOL)containsKeyWithId:(id)id
{
  entrySet = [(JavaUtilAbstractMap *)self entrySet];
  if (!entrySet)
  {
    goto LABEL_13;
  }

  iterator = [entrySet iterator];
  v6 = iterator;
  if (id)
  {
    if (iterator)
    {
      do
      {
        hasNext = [v6 hasNext];
        if ((hasNext & 1) == 0)
        {
          break;
        }

        next = [v6 next];
        if (!next)
        {
          goto LABEL_13;
        }
      }

      while (([id isEqual:{objc_msgSend(next, "getKey")}] & 1) == 0);
      return hasNext;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  if (!iterator)
  {
    goto LABEL_13;
  }

  do
  {
    hasNext = [v6 hasNext];
    if ((hasNext & 1) == 0)
    {
      break;
    }

    next2 = [v6 next];
    if (!next2)
    {
      goto LABEL_13;
    }
  }

  while ([next2 getKey]);
  return hasNext;
}

- (BOOL)containsValueWithId:(id)id
{
  entrySet = [(JavaUtilAbstractMap *)self entrySet];
  if (!entrySet)
  {
    goto LABEL_13;
  }

  iterator = [entrySet iterator];
  v6 = iterator;
  if (id)
  {
    if (iterator)
    {
      do
      {
        hasNext = [v6 hasNext];
        if ((hasNext & 1) == 0)
        {
          break;
        }

        next = [v6 next];
        if (!next)
        {
          goto LABEL_13;
        }
      }

      while (([id isEqual:{objc_msgSend(next, "getValue")}] & 1) == 0);
      return hasNext;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  if (!iterator)
  {
    goto LABEL_13;
  }

  do
  {
    hasNext = [v6 hasNext];
    if ((hasNext & 1) == 0)
    {
      break;
    }

    next2 = [v6 next];
    if (!next2)
    {
      goto LABEL_13;
    }
  }

  while ([next2 getValue]);
  return hasNext;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    goto LABEL_21;
  }

  v5 = [JavaUtilMap_class_(self a2)];
  if (!v5)
  {
    return v5;
  }

  v7 = JavaUtilMap_class_(v5, v6);
  if (!equal)
  {
    [(JavaUtilAbstractMap *)self size];
    JreThrowNullPointerException();
  }

  if (([v7 isInstance:equal] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v8 = [(JavaUtilAbstractMap *)self size];
  if (v8 != [equal size])
  {
LABEL_26:
    LOBYTE(v5) = 0;
    return v5;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  entrySet = [(JavaUtilAbstractMap *)self entrySet];
  v10 = entrySet;
  if (!entrySet)
  {
    JreThrowNullPointerException();
  }

  v11 = [entrySet countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v11)
  {
LABEL_21:
    LOBYTE(v5) = 1;
    return v5;
  }

  v12 = *v20;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v19 + 1) + 8 * i);
      if (!v14)
      {
        JreThrowNullPointerException();
      }

      getKey = [*(*(&v19 + 1) + 8 * i) getKey];
      getValue = [v14 getValue];
      v17 = [equal getWithId:getKey];
      if (getValue)
      {
        LODWORD(v5) = [getValue isEqual:v17];
        if (!v5)
        {
          return v5;
        }
      }

      else if (v17 || ([equal containsKeyWithId:getKey] & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    LOBYTE(v5) = 1;
  }

  while (v11);
  return v5;
}

- (id)getWithId:(id)id
{
  entrySet = [(JavaUtilAbstractMap *)self entrySet];
  if (!entrySet)
  {
    goto LABEL_16;
  }

  iterator = [entrySet iterator];
  v6 = iterator;
  if (id)
  {
    if (iterator)
    {
      while (([v6 hasNext] & 1) != 0)
      {
        next = [v6 next];
        if (!next)
        {
          goto LABEL_16;
        }

        v8 = next;
        if ([id isEqual:{objc_msgSend(next, "getKey")}])
        {
          goto LABEL_12;
        }
      }

      return 0;
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  if (!iterator)
  {
    goto LABEL_16;
  }

  while (([v6 hasNext] & 1) != 0)
  {
    next2 = [v6 next];
    if (!next2)
    {
      goto LABEL_16;
    }

    v8 = next2;
    if (![next2 getKey])
    {
LABEL_12:

      return [v8 getValue];
    }
  }

  return 0;
}

- (unint64_t)hash
{
  entrySet = [(JavaUtilAbstractMap *)self entrySet];
  if (!entrySet || (v3 = [entrySet iterator]) == 0)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v4 = v3;
  if (![v3 hasNext])
  {
    return 0;
  }

  v5 = 0;
  do
  {
    next = [v4 next];
    if (!next)
    {
      goto LABEL_9;
    }

    v5 += [next hash];
  }

  while (([v4 hasNext] & 1) != 0);
  return v5;
}

- (id)keySet
{
  p_keySet = &self->keySet_;
  result = self->keySet_;
  if (!result)
  {
    v5 = [JavaUtilAbstractMap_1AbstractMapKeySet alloc];
    objc_storeWeak(&v5->this$0_, self);
    JavaUtilAbstractSet_init(v5, v6);
    JreStrongAssignAndConsume(p_keySet, v5);
    return self->keySet_;
  }

  return result;
}

- (void)putAllWithJavaUtilMap:(id)map
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (!map || (v4 = [map entrySet]) == 0)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v5 = v4;
  v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (!v10)
        {
          goto LABEL_12;
        }

        -[JavaUtilAbstractMap putWithId:withId:](self, "putWithId:withId:", [*(*(&v11 + 1) + 8 * i) getKey], objc_msgSend(v10, "getValue"));
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)removeWithId:(id)id
{
  entrySet = [(JavaUtilAbstractMap *)self entrySet];
  if (!entrySet)
  {
    goto LABEL_16;
  }

  iterator = [entrySet iterator];
  v6 = iterator;
  if (id)
  {
    if (iterator)
    {
      while (([v6 hasNext] & 1) != 0)
      {
        next = [v6 next];
        if (!next)
        {
          goto LABEL_16;
        }

        v8 = next;
        if ([id isEqual:{objc_msgSend(next, "getKey")}])
        {
          goto LABEL_12;
        }
      }

      return 0;
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  if (!iterator)
  {
    goto LABEL_16;
  }

  while (([v6 hasNext] & 1) != 0)
  {
    next2 = [v6 next];
    if (!next2)
    {
      goto LABEL_16;
    }

    v8 = next2;
    if (![next2 getKey])
    {
LABEL_12:
      [v6 remove];

      return [v8 getValue];
    }
  }

  return 0;
}

- (int)size
{
  entrySet = [(JavaUtilAbstractMap *)self entrySet];
  if (!entrySet)
  {
    JreThrowNullPointerException();
  }

  return [entrySet size];
}

- (NSString)description
{
  if ([(JavaUtilAbstractMap *)self isEmpty])
  {
    return @"{}";
  }

  v4 = new_JavaLangStringBuilder_initWithInt_(28 * [(JavaUtilAbstractMap *)self size]);
  [(JavaLangStringBuilder *)v4 appendWithChar:123];
  entrySet = [(JavaUtilAbstractMap *)self entrySet];
  if (!entrySet || (v6 = [entrySet iterator]) == 0)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  v7 = v6;
  if ([v6 hasNext])
  {
    do
    {
      next = [v7 next];
      if (!next)
      {
        goto LABEL_19;
      }

      v9 = next;
      getKey = [next getKey];
      if (getKey == self)
      {
        [(JavaLangStringBuilder *)v4 appendWithNSString:@"(this Map)"];
      }

      else
      {
        [(JavaLangStringBuilder *)v4 appendWithId:getKey];
      }

      [(JavaLangStringBuilder *)v4 appendWithChar:61];
      getValue = [v9 getValue];
      if (getValue == self)
      {
        [(JavaLangStringBuilder *)v4 appendWithNSString:@"(this Map)"];
      }

      else
      {
        [(JavaLangStringBuilder *)v4 appendWithId:getValue];
      }

      if ([v7 hasNext])
      {
        [(JavaLangStringBuilder *)v4 appendWithNSString:@", "];
      }
    }

    while (([v7 hasNext] & 1) != 0);
  }

  [(JavaLangStringBuilder *)v4 appendWithChar:125];

  return [(JavaLangStringBuilder *)v4 description];
}

- (id)values
{
  p_valuesCollection = &self->valuesCollection_;
  result = self->valuesCollection_;
  if (!result)
  {
    v5 = [JavaUtilAbstractMap_1AbstractMapValuesCollection alloc];
    objc_storeWeak(&v5->this$0_, self);
    JavaUtilAbstractCollection_init();
    JreStrongAssignAndConsume(p_valuesCollection, v5);
    return self->valuesCollection_;
  }

  return result;
}

- (id)clone
{
  v4.receiver = self;
  v4.super_class = JavaUtilAbstractMap;
  clone = [(JavaUtilAbstractMap *)&v4 clone];
  objc_opt_class();
  if (!clone)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign(clone + 1, 0);
  JreStrongAssign(clone + 2, 0);
  return clone;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilAbstractMap;
  [(JavaUtilAbstractMap *)&v3 dealloc];
}

@end