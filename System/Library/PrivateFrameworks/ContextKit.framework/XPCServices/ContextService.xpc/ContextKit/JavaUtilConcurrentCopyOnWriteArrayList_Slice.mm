@interface JavaUtilConcurrentCopyOnWriteArrayList_Slice
- (JavaUtilConcurrentCopyOnWriteArrayList_Slice)initWithNSObjectArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)checkConcurrentModificationWithNSObjectArray:(id)array;
- (void)checkElementIndexWithInt:(int)int;
- (void)checkPositionIndexWithInt:(int)int;
- (void)dealloc;
@end

@implementation JavaUtilConcurrentCopyOnWriteArrayList_Slice

- (JavaUtilConcurrentCopyOnWriteArrayList_Slice)initWithNSObjectArray:(id)array withInt:(int)int withInt:(int)withInt
{
  JreStrongAssign(&self->expectedElements_, array);
  self->from_ = int;
  self->to_ = withInt;
  return self;
}

- (void)checkElementIndexWithInt:(int)int
{
  if (int < 0 || self->to_ - self->from_ <= int)
  {
    v8 = JreStrcat("$I$I", a2, *&int, v3, v4, v5, v6, v7, @"index=");
    v9 = new_JavaLangIndexOutOfBoundsException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }
}

- (void)checkPositionIndexWithInt:(int)int
{
  if (int < 0 || self->to_ - self->from_ < int)
  {
    v8 = JreStrcat("$I$I", a2, *&int, v3, v4, v5, v6, v7, @"index=");
    v9 = new_JavaLangIndexOutOfBoundsException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }
}

- (void)checkConcurrentModificationWithNSObjectArray:(id)array
{
  if (self->expectedElements_ != array)
  {
    v3 = new_JavaUtilConcurrentModificationException_init();
    objc_exception_throw(v3);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentCopyOnWriteArrayList_Slice;
  [(JavaUtilConcurrentCopyOnWriteArrayList_Slice *)&v3 dealloc];
}

@end