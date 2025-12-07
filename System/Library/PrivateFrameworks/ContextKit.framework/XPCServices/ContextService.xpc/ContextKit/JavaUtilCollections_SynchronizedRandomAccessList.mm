@interface JavaUtilCollections_SynchronizedRandomAccessList
- (JavaUtilCollections_SynchronizedRandomAccessList)initWithJavaUtilList:(id)list;
- (id)subListWithInt:(int)int withInt:(int)withInt;
- (id)writeReplace;
@end

@implementation JavaUtilCollections_SynchronizedRandomAccessList

- (JavaUtilCollections_SynchronizedRandomAccessList)initWithJavaUtilList:(id)list
{
  JavaUtilCollections_SynchronizedCollection_initWithJavaUtilCollection_(self, list);
  JreStrongAssign(&self->super.list_, list);
  return self;
}

- (id)subListWithInt:(int)int withInt:(int)withInt
{
  v4 = *&withInt;
  v5 = *&int;
  mutex = self->super.super.mutex_;
  objc_sync_enter(mutex);
  list = self->super.list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  v9 = [(JavaUtilList *)list subListWithInt:v5 withInt:v4];
  v10 = self->super.super.mutex_;
  v11 = [JavaUtilCollections_SynchronizedRandomAccessList alloc];
  JavaUtilCollections_SynchronizedList_initWithJavaUtilList_withId_(&v11->super.super.super.isa, v9, v10);
  v12 = v11;
  objc_sync_exit(mutex);
  return v12;
}

- (id)writeReplace
{
  v2 = new_JavaUtilCollections_SynchronizedList_initWithJavaUtilList_(self->super.list_);

  return v2;
}

@end