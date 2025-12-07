@interface JavaUtilCollections_UnmodifiableList
- (BOOL)isEqual:(id)equal;
- (JavaUtilCollections_UnmodifiableList)initWithJavaUtilList:(id)list;
- (id)getWithInt:(int)int;
- (id)listIteratorWithInt:(int)int;
- (id)readResolve;
- (id)subListWithInt:(int)int withInt:(int)withInt;
- (int)indexOfWithId:(id)id;
- (int)lastIndexOfWithId:(id)id;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilCollections_UnmodifiableList

- (JavaUtilCollections_UnmodifiableList)initWithJavaUtilList:(id)list
{
  JreStrongAssign(&self->super.c_, list);
  JreStrongAssign(&self->list_, list);
  return self;
}

- (BOOL)isEqual:(id)equal
{
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)list isEqual:equal];
}

- (id)getWithInt:(int)int
{
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)list getWithInt:*&int];
}

- (unint64_t)hash
{
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)list hash];
}

- (int)indexOfWithId:(id)id
{
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)list indexOfWithId:id];
}

- (int)lastIndexOfWithId:(id)id
{
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)list lastIndexOfWithId:id];
}

- (id)listIteratorWithInt:(int)int
{
  v3 = *&int;
  v5 = [JavaUtilCollections_UnmodifiableList__1 alloc];
  v5->val$location_ = v3;
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign(&v5->iterator_, [(JavaUtilList *)list listIteratorWithInt:v3]);

  return v5;
}

- (id)subListWithInt:(int)int withInt:(int)withInt
{
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  v5 = sub_1001C23C8([(JavaUtilList *)list subListWithInt:*&int withInt:*&withInt]);

  return v5;
}

- (id)readResolve
{
  if (![JavaUtilRandomAccess_class_(self a2)])
  {
    return self;
  }

  v3 = sub_1001C2374(self->list_);

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_UnmodifiableList;
  [(JavaUtilCollections_UnmodifiableCollection *)&v3 dealloc];
}

@end