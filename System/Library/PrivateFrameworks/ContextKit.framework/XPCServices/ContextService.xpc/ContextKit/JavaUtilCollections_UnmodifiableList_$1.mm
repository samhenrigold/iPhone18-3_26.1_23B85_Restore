@interface JavaUtilCollections_UnmodifiableList_$1
- (BOOL)hasNext;
- (BOOL)hasPrevious;
- (JavaUtilCollections_UnmodifiableList_$1)initWithJavaUtilCollections_UnmodifiableList:(id)list withInt:(int)int;
- (id)next;
- (id)previous;
- (int)nextIndex;
- (int)previousIndex;
- (void)dealloc;
@end

@implementation JavaUtilCollections_UnmodifiableList_$1

- (BOOL)hasNext
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilListIterator *)iterator hasNext];
}

- (BOOL)hasPrevious
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilListIterator *)iterator hasPrevious];
}

- (id)next
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilListIterator *)iterator next];
}

- (int)nextIndex
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilListIterator *)iterator nextIndex];
}

- (id)previous
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilListIterator *)iterator previous];
}

- (int)previousIndex
{
  iterator = self->iterator_;
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilListIterator *)iterator previousIndex];
}

- (JavaUtilCollections_UnmodifiableList_$1)initWithJavaUtilCollections_UnmodifiableList:(id)list withInt:(int)int
{
  self->val$location_ = int;
  v5 = *(list + 2);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign(&self->iterator_, [v5 listIteratorWithInt:*&int]);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_UnmodifiableList__1;
  [(JavaUtilCollections_UnmodifiableList_$1 *)&v3 dealloc];
}

@end