@interface JavaNioCharSequenceAdapter
- (id)getWithCharArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)slice;
- (id)subSequenceFrom:(int)from to:(int)to;
- (unsigned)get;
- (unsigned)getWithInt:(int)int;
- (void)dealloc;
@end

@implementation JavaNioCharSequenceAdapter

- (unsigned)get
{
  position = self->super.super.position_;
  if (position == self->super.super.limit_)
  {
    v5 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v5);
  }

  sequence = self->sequence_;
  if (!sequence)
  {
    JreThrowNullPointerException();
  }

  self->super.super.position_ = position + 1;

  return [(JavaLangCharSequence *)sequence charAtWithInt:?];
}

- (unsigned)getWithInt:(int)int
{
  v3 = *&int;
  [(JavaNioBuffer *)self checkIndexWithInt:?];
  sequence = self->sequence_;
  if (!sequence)
  {
    JreThrowNullPointerException();
  }

  return [(JavaLangCharSequence *)sequence charAtWithInt:v3];
}

- (id)getWithCharArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    goto LABEL_6;
  }

  v6 = *&int;
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), *&int, withInt);
  if ([(JavaNioBuffer *)self remaining]< withInt)
  {
    v14 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v14);
  }

  sequence = self->sequence_;
  if (!sequence || (position = self->super.super.position_, (v11 = [(JavaLangCharSequence *)sequence description]) == 0))
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  v12 = (position + withInt);
  [v11 getChars:self->super.super.position_ sourceEnd:v12 destination:array destinationBegin:v6];
  self->super.super.position_ = v12;
  return self;
}

- (id)slice
{
  if (!self->sequence_)
  {
    JreThrowNullPointerException();
  }

  v2 = [(JavaLangCharSequence *)self->sequence_ subSequenceFrom:self->super.super.position_ to:self->super.super.limit_];
  v3 = [JavaNioCharSequenceAdapter alloc];
  JavaNioCharSequenceAdapter_initWithJavaLangCharSequence_(v3, v2);

  return v3;
}

- (id)subSequenceFrom:(int)from to:(int)to
{
  [JavaNioBuffer checkStartEndRemainingWithInt:"checkStartEndRemainingWithInt:withInt:" withInt:?];
  result = JavaNioCharSequenceAdapter_copy__WithJavaNioCharSequenceAdapter_(self);
  if (!result)
  {
    JreThrowNullPointerException();
  }

  *(result + 5) = self->super.super.position_ + from;
  *(result + 3) = self->super.super.position_ + to;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioCharSequenceAdapter;
  [(JavaNioCharSequenceAdapter *)&v3 dealloc];
}

@end