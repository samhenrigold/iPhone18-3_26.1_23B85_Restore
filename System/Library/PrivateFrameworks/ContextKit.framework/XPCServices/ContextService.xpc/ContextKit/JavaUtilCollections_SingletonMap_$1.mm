@interface JavaUtilCollections_SingletonMap_$1
- (BOOL)containsWithId:(id)id;
- (JavaUtilCollections_SingletonMap_$1)initWithJavaUtilCollections_SingletonMap:(id)map;
- (id)iterator;
- (void)dealloc;
@end

@implementation JavaUtilCollections_SingletonMap_$1

- (BOOL)containsWithId:(id)id
{
  v5 = [JavaUtilMap_Entry_class_(self a2)];
  if (!v5)
  {
    return 0;
  }

  v7 = JavaUtilMap_Entry_class_(v5, v6);
  if (!id)
  {
    JreThrowNullPointerException();
  }

  if (([v7 isInstance:id] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (!-[JavaUtilCollections_SingletonMap containsKeyWithId:](self->this$0_, "containsKeyWithId:", [id getKey]))
  {
    return 0;
  }

  v8 = self->this$0_;
  getValue = [id getValue];

  return [(JavaUtilCollections_SingletonMap *)v8 containsValueWithId:getValue];
}

- (id)iterator
{
  v3 = [JavaUtilCollections_SingletonMap__1__1 alloc];
  JreStrongAssign(&v3->this$0_, self);
  v3->hasNext_ = 1;

  return v3;
}

- (JavaUtilCollections_SingletonMap_$1)initWithJavaUtilCollections_SingletonMap:(id)map
{
  JreStrongAssign(&self->this$0_, map);
  JavaUtilAbstractSet_init(self, v4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_SingletonMap__1;
  [(JavaUtilCollections_SingletonMap_$1 *)&v3 dealloc];
}

@end