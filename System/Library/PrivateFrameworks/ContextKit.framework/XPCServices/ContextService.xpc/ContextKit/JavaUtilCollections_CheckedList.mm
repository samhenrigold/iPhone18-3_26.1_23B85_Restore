@interface JavaUtilCollections_CheckedList
- (BOOL)addAllWithInt:(int)int withJavaUtilCollection:(id)collection;
- (BOOL)isEqual:(id)equal;
- (JavaUtilCollections_CheckedList)initWithJavaUtilList:(id)list withIOSClass:(id)class;
- (id)getWithInt:(int)int;
- (id)listIterator;
- (id)listIteratorWithInt:(int)int;
- (id)removeWithInt:(int)int;
- (id)setWithInt:(int)int withId:(id)id;
- (id)subListWithInt:(int)int withInt:(int)withInt;
- (int)indexOfWithId:(id)id;
- (int)lastIndexOfWithId:(id)id;
- (unint64_t)hash;
- (void)addWithInt:(int)int withId:(id)id;
- (void)dealloc;
@end

@implementation JavaUtilCollections_CheckedList

- (JavaUtilCollections_CheckedList)initWithJavaUtilList:(id)list withIOSClass:(id)class
{
  sub_1001C7CC4(self, list, class);
  JreStrongAssign(&self->l_, list);
  return self;
}

- (BOOL)addAllWithInt:(int)int withJavaUtilCollection:(id)collection
{
  if (!collection)
  {
    goto LABEL_12;
  }

  v4 = *&int;
  toArray = [collection toArray];
  if (!toArray)
  {
    goto LABEL_12;
  }

  v7 = toArray;
  v8 = toArray + 3;
  v9 = &toArray[*(toArray + 2) + 3];
  while (v8 < v9)
  {
    v10 = *v8++;
    JavaUtilCollections_checkTypeWithId_withIOSClass_(v10, self->super.type_);
  }

  l = self->l_;
  if (!l)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v12 = JavaUtilArrays_asListWithNSObjectArray_(v7);
  v14 = JavaUtilList_class_(v12, v13);
  if (v12 && ([v14 isInstance:v12] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [(JavaUtilList *)l addAllWithInt:v4 withJavaUtilCollection:v12];
}

- (id)getWithInt:(int)int
{
  l = self->l_;
  if (!l)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)l getWithInt:*&int];
}

- (id)setWithInt:(int)int withId:(id)id
{
  l = self->l_;
  if (!l)
  {
    JreThrowNullPointerException();
  }

  v6 = *&int;
  JavaUtilCollections_checkTypeWithId_withIOSClass_(id, self->super.type_);

  return [(JavaUtilList *)l setWithInt:v6 withId:id];
}

- (void)addWithInt:(int)int withId:(id)id
{
  l = self->l_;
  if (!l)
  {
    JreThrowNullPointerException();
  }

  v6 = *&int;
  JavaUtilCollections_checkTypeWithId_withIOSClass_(id, self->super.type_);

  [(JavaUtilList *)l addWithInt:v6 withId:id];
}

- (id)removeWithInt:(int)int
{
  l = self->l_;
  if (!l)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)l removeWithInt:*&int];
}

- (int)indexOfWithId:(id)id
{
  l = self->l_;
  if (!l)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)l indexOfWithId:id];
}

- (int)lastIndexOfWithId:(id)id
{
  l = self->l_;
  if (!l)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)l lastIndexOfWithId:id];
}

- (id)listIterator
{
  l = self->l_;
  if (!l)
  {
    JreThrowNullPointerException();
  }

  v4 = sub_1001C7E30([(JavaUtilList *)l listIterator], self->super.type_);

  return v4;
}

- (id)listIteratorWithInt:(int)int
{
  l = self->l_;
  if (!l)
  {
    JreThrowNullPointerException();
  }

  v5 = sub_1001C7E30([(JavaUtilList *)l listIteratorWithInt:*&int], self->super.type_);

  return v5;
}

- (id)subListWithInt:(int)int withInt:(int)withInt
{
  l = self->l_;
  if (!l)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaUtilList *)l subListWithInt:*&int withInt:*&withInt];
  type = self->super.type_;

  return JavaUtilCollections_checkedListWithJavaUtilList_withIOSClass_(v6, type);
}

- (BOOL)isEqual:(id)equal
{
  l = self->l_;
  if (!l)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)l isEqual:equal];
}

- (unint64_t)hash
{
  l = self->l_;
  if (!l)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)l hash];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_CheckedList;
  [(JavaUtilCollections_CheckedCollection *)&v3 dealloc];
}

@end