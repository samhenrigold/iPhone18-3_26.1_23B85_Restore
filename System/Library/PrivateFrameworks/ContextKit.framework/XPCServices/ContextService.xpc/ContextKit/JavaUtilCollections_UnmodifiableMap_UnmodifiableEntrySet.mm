@interface JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet
- (id)iterator;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)array;
@end

@implementation JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet

- (id)iterator
{
  v3 = [JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet__1 alloc];
  c = self->super.super.c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign(&v3->iterator_, [(JavaUtilCollection *)c iterator]);

  return v3;
}

- (id)toArray
{
  c = self->super.super.c_;
  if (!c)
  {
    goto LABEL_6;
  }

  v4 = [(JavaUtilCollection *)c size];
  v5 = v4;
  v7 = [IOSObjectArray arrayWithLength:v4 type:NSObject_class_(v4, v6)];
  iterator = [(JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet *)self iterator];
  v9 = (v5 - 1);
  if (v9 < 0)
  {
    return v7;
  }

  v10 = iterator;
  if (!iterator)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  do
  {
    IOSObjectArray_Set(v7, v9--, [v10 next]);
  }

  while (v9 != -1);
  return v7;
}

- (id)toArrayWithNSObjectArray:(id)array
{
  c = self->super.super.c_;
  if (!c)
  {
    goto LABEL_15;
  }

  v6 = [(JavaUtilCollection *)c size];
  iterator = [(JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet *)self iterator];
  if (!array)
  {
    goto LABEL_15;
  }

  v8 = iterator;
  if (v6 > *(array + 2))
  {
    array = JavaLangReflectArray_newInstanceWithIOSClass_withInt_([objc_msgSend(array "getClass")], v6);
    objc_opt_class();
    if (!array)
    {
      goto LABEL_15;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  if (v6 <= 0)
  {
    v6 = 0;
    goto LABEL_12;
  }

  if (!v8)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

    ;
  }

LABEL_12:
  if (v6 < *(array + 2))
  {
    IOSObjectArray_Set(array, v6, 0);
  }

  return array;
}

@end