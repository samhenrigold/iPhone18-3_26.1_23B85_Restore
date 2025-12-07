@interface ComAppleContextkitCategoriesConstellation_Request_$1
- (ComAppleContextkitCategoriesConstellation_Request_$1)initWithComAppleContextkitCategoriesConstellation_Request:(id)request withInt:(int)int withJavaUtilSet:(id)set;
- (void)acceptWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (void)dealloc;
@end

@implementation ComAppleContextkitCategoriesConstellation_Request_$1

- (void)acceptWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  v5 = *&a5;
  sub_1000BFD30(&self->this$0_->super.isa, *&a5, self->val$weight_, self->val$seen_);
  seenOrder = self->this$0_->seenOrder_;
  if (!seenOrder)
  {
    JreThrowNullPointerException();
  }

  size = seenOrder->super.size_;
  if ((v5 & 0x80000000) != 0 || size <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  if (!*(&seenOrder->super.size_ + v5 + 1))
  {
    v9 = self->this$0_;
    v10 = v9->seenCounter_ + 1;
    v9->seenCounter_ = v10;
    v11 = self->this$0_->seenOrder_;
    v12 = v11->super.size_;
    if ((v5 & 0x80000000) != 0 || v12 <= v5)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, v5);
    }

    *(&v11->super.size_ + v5 + 1) = v10;
  }
}

- (ComAppleContextkitCategoriesConstellation_Request_$1)initWithComAppleContextkitCategoriesConstellation_Request:(id)request withInt:(int)int withJavaUtilSet:(id)set
{
  JreStrongAssign(&self->this$0_, request);
  self->val$weight_ = int;
  JreStrongAssign(&self->val$seen_, set);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitCategoriesConstellation_Request__1;
  [(ComAppleContextkitCategoriesConstellation_Request_$1 *)&v3 dealloc];
}

@end