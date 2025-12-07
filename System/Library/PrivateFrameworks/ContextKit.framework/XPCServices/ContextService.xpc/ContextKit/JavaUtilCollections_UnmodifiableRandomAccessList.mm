@interface JavaUtilCollections_UnmodifiableRandomAccessList
- (JavaUtilCollections_UnmodifiableRandomAccessList)initWithJavaUtilList:(id)list;
- (id)subListWithInt:(int)int withInt:(int)withInt;
- (id)writeReplace;
@end

@implementation JavaUtilCollections_UnmodifiableRandomAccessList

- (JavaUtilCollections_UnmodifiableRandomAccessList)initWithJavaUtilList:(id)list
{
  JreStrongAssign(&self->super.super.c_, list);
  JreStrongAssign(&self->super.list_, list);
  return self;
}

- (id)subListWithInt:(int)int withInt:(int)withInt
{
  list = self->super.list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  v5 = sub_1001C2374([(JavaUtilList *)list subListWithInt:*&int withInt:*&withInt]);

  return v5;
}

- (id)writeReplace
{
  v2 = sub_1001C23C8(self->super.list_);

  return v2;
}

@end