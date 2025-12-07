@interface ComAppleContextkitCategoriesConstellation_Request_$2
- (ComAppleContextkitCategoriesConstellation_Request_$2)initWithComAppleContextkitCategoriesConstellation_Request:(id)request withInt:(int)int withInt:(int)withInt withJavaUtilConcurrentAtomicAtomicBoolean:(id)boolean withJavaUtilConcurrentAtomicAtomicInteger:(id)integer;
- (void)acceptWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (void)dealloc;
@end

@implementation ComAppleContextkitCategoriesConstellation_Request_$2

- (void)acceptWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  v5 = *&a5;
  v7 = self->val$weight_;
  v8 = sub_1000C15D4(self->this$0_->qidCounts_, *&a5, self->val$count_);
  v9 = sub_1000C15D4(self->this$0_->qidWeights_, v5, v7);
  if (v8 > 0 || v9 >= 1)
  {
    v11 = self->val$hasModifications_;
    if (!v11)
    {
      goto LABEL_26;
    }

    [(JavaUtilConcurrentAtomicAtomicBoolean *)v11 setWithBoolean:1];
  }

  v12 = self->this$0_;
  qidWeights = v12->qidWeights_;
  if (!qidWeights)
  {
LABEL_26:
    JreThrowNullPointerException();
  }

  size = qidWeights->super.size_;
  if ((v5 & 0x80000000) != 0 || size <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  if (*(&qidWeights->super.size_ + v5 + 1) >= 1)
  {
    qidCounts = v12->qidCounts_;
    if (!qidCounts)
    {
      goto LABEL_26;
    }

    v16 = qidCounts->super.size_;
    if ((v5 & 0x80000000) != 0 || v16 <= v5)
    {
      IOSArray_throwOutOfBoundsWithMsg(v16, v5);
    }

    if (*(&qidCounts->super.size_ + v5 + 1) > 0)
    {
      goto LABEL_22;
    }

    v12 = self->this$0_;
  }

  v17 = v12->qidCounts_;
  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = v17->super.size_;
  if ((v5 & 0x80000000) != 0 || v18 <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v18, v5);
  }

  *(&v17->super.size_ + v5 + 1) = 0;
  v19 = self->this$0_->qidWeights_;
  v20 = v19->super.size_;
  if ((v5 & 0x80000000) != 0 || v20 <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v20, v5);
  }

  *(&v19->super.size_ + v5 + 1) = 0;
LABEL_22:
  v21 = self->val$numNonZeroesTouched_;
  if (!v21)
  {
    goto LABEL_26;
  }

  [(JavaUtilConcurrentAtomicAtomicInteger *)v21 incrementAndGet];
}

- (ComAppleContextkitCategoriesConstellation_Request_$2)initWithComAppleContextkitCategoriesConstellation_Request:(id)request withInt:(int)int withInt:(int)withInt withJavaUtilConcurrentAtomicAtomicBoolean:(id)boolean withJavaUtilConcurrentAtomicAtomicInteger:(id)integer
{
  JreStrongAssign(&self->this$0_, request);
  self->val$count_ = int;
  self->val$weight_ = withInt;
  JreStrongAssign(&self->val$hasModifications_, boolean);
  JreStrongAssign(&self->val$numNonZeroesTouched_, integer);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitCategoriesConstellation_Request__2;
  [(ComAppleContextkitCategoriesConstellation_Request_$2 *)&v3 dealloc];
}

@end