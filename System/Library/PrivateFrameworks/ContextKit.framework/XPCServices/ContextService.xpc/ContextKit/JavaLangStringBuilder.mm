@interface JavaLangStringBuilder
- (JavaLangStringBuilder)initWithJavaLangCharSequence:(id)sequence;
- (id)appendCodePointWithInt:(int)int;
- (id)appendWithBoolean:(BOOL)boolean;
- (id)appendWithId:(id)id;
- (id)appendWithJavaLangCharSequence:(id)sequence;
- (id)appendWithJavaLangStringBuffer:(id)buffer;
- (id)insertWithInt:(int)int withBoolean:(BOOL)boolean;
- (id)insertWithInt:(int)int withDouble:(double)double;
- (id)insertWithInt:(int)int withFloat:(float)float;
- (id)insertWithInt:(int)int withId:(id)id;
- (id)insertWithInt:(int)int withInt:(int)withInt;
- (id)insertWithInt:(int)int withJavaLangCharSequence:(id)sequence;
- (id)insertWithInt:(int)int withLong:(int64_t)long;
- (id)subSequenceFrom:(int)from to:(int)to;
- (int)length;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaLangStringBuilder

- (JavaLangStringBuilder)initWithJavaLangCharSequence:(id)sequence
{
  if (!sequence)
  {
    JreThrowNullPointerException();
  }

  JavaLangStringBuilder_initWithNSString_(self, [sequence description]);
  return self;
}

- (id)appendWithBoolean:(BOOL)boolean
{
  if (boolean)
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  JreStringBuilder_appendString(&self->super.delegate_, v4);
  return self;
}

- (id)appendWithId:(id)id
{
  if (id)
  {
    JreStringBuilder_appendString(&self->super.delegate_, [id description]);
  }

  else
  {
    JreStringBuilder_appendNull(&self->super.delegate_);
  }

  return self;
}

- (id)appendWithJavaLangStringBuffer:(id)buffer
{
  if (buffer)
  {
    JreStringBuilder_appendBuffer(&self->super.delegate_, *(buffer + 1), *(buffer + 5));
  }

  else
  {
    JreStringBuilder_appendNull(&self->super.delegate_);
  }

  return self;
}

- (id)appendWithJavaLangCharSequence:(id)sequence
{
  if (sequence)
  {
    JreStringBuilder_appendCharSequence(&self->super.delegate_, sequence, 0, [sequence length]);
  }

  else
  {
    JreStringBuilder_appendNull(&self->super.delegate_);
  }

  return self;
}

- (id)appendCodePointWithInt:(int)int
{
  v9 = JavaLangCharacter_toCharsWithInt_(*&int, a2, *&int, v3, v4, v5, v6, v7);
  JreStringBuilder_appendCharArray(&self->super.delegate_, v9);
  return self;
}

- (id)insertWithInt:(int)int withBoolean:(BOOL)boolean
{
  v4 = *&int;
  if (boolean)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  JreStringBuilder_insertString(&self->super.delegate_, v4, v6);
  return self;
}

- (id)insertWithInt:(int)int withInt:(int)withInt
{
  v4 = *&int;
  v6 = JavaLangInteger_toStringWithInt_(withInt);
  JreStringBuilder_insertString(&self->super.delegate_, v4, v6);
  return self;
}

- (id)insertWithInt:(int)int withLong:(int64_t)long
{
  v4 = *&int;
  v6 = JavaLangLong_toStringWithLong_(long, a2);
  JreStringBuilder_insertString(&self->super.delegate_, v4, v6);
  return self;
}

- (id)insertWithInt:(int)int withFloat:(float)float
{
  v4 = *&int;
  v6 = JavaLangFloat_toStringWithFloat_(self, a2, float);
  JreStringBuilder_insertString(&self->super.delegate_, v4, v6);
  return self;
}

- (id)insertWithInt:(int)int withDouble:(double)double
{
  v4 = *&int;
  v6 = JavaLangDouble_toStringWithDouble_(self, a2, double);
  JreStringBuilder_insertString(&self->super.delegate_, v4, v6);
  return self;
}

- (id)insertWithInt:(int)int withId:(id)id
{
  v4 = *&int;
  if (id)
  {
    v6 = [id description];
  }

  else
  {
    v6 = @"null";
  }

  JreStringBuilder_insertString(&self->super.delegate_, v4, v6);
  return self;
}

- (id)insertWithInt:(int)int withJavaLangCharSequence:(id)sequence
{
  v4 = *&int;
  if (sequence)
  {
    v6 = [sequence description];
  }

  else
  {
    v6 = @"null";
  }

  JreStringBuilder_insertString(&self->super.delegate_, v4, v6);
  return self;
}

- (int)length
{
  v3.receiver = self;
  v3.super_class = JavaLangStringBuilder;
  return [(JavaLangAbstractStringBuilder *)&v3 length];
}

- (id)subSequenceFrom:(int)from to:(int)to
{
  v5.receiver = self;
  v5.super_class = JavaLangStringBuilder;
  return [(JavaLangAbstractStringBuilder *)&v5 substringWithInt:*&from withInt:*&to];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultReadObject];
  readInt = [stream readInt];
  readObject = [stream readObject];
  objc_opt_class();
  if (readObject && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  [(JavaLangAbstractStringBuilder *)self setWithCharArray:readObject withInt:readInt];
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultWriteObject];
  [stream writeIntWithInt:{-[JavaLangStringBuilder length](self, "length")}];
  getValue = [(JavaLangAbstractStringBuilder *)self getValue];

  [stream writeObjectWithId:getValue];
}

@end