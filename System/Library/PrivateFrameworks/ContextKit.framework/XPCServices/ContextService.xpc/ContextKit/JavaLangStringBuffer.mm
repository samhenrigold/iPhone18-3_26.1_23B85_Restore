@interface JavaLangStringBuffer
- (JavaLangStringBuffer)initWithJavaLangCharSequence:(id)sequence;
- (NSString)description;
- (id)appendCodePointWithInt:(int)int;
- (id)appendWithBoolean:(BOOL)boolean;
- (id)appendWithChar:(unsigned __int16)char;
- (id)appendWithCharArray:(id)array;
- (id)appendWithCharArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)appendWithId:(id)id;
- (id)appendWithJavaLangCharSequence:(id)sequence;
- (id)appendWithJavaLangCharSequence:(id)sequence withInt:(int)int withInt:(int)withInt;
- (id)appendWithJavaLangStringBuffer:(id)buffer;
- (id)appendWithNSString:(id)string;
- (id)deleteCharAtWithInt:(int)int;
- (id)delete__WithInt:(int)int withInt:(int)withInt;
- (id)insertWithInt:(int)int withBoolean:(BOOL)boolean;
- (id)insertWithInt:(int)int withChar:(unsigned __int16)char;
- (id)insertWithInt:(int)int withCharArray:(id)array;
- (id)insertWithInt:(int)int withCharArray:(id)array withInt:(int)withInt withInt:(int)a6;
- (id)insertWithInt:(int)int withDouble:(double)double;
- (id)insertWithInt:(int)int withFloat:(float)float;
- (id)insertWithInt:(int)int withId:(id)id;
- (id)insertWithInt:(int)int withInt:(int)withInt;
- (id)insertWithInt:(int)int withJavaLangCharSequence:(id)sequence;
- (id)insertWithInt:(int)int withJavaLangCharSequence:(id)sequence withInt:(int)withInt withInt:(int)a6;
- (id)insertWithInt:(int)int withLong:(int64_t)long;
- (id)insertWithInt:(int)int withNSString:(id)string;
- (id)replaceWithInt:(int)int withInt:(int)withInt withNSString:(id)string;
- (id)reverse;
- (id)subSequenceFrom:(int)from to:(int)to;
- (id)substringWithInt:(int)int;
- (id)substringWithInt:(int)int withInt:(int)withInt;
- (int)codePointAtWithInt:(int)int;
- (int)codePointBeforeWithInt:(int)int;
- (int)codePointCountWithInt:(int)int withInt:(int)withInt;
- (int)indexOfWithNSString:(id)string withInt:(int)int;
- (int)lastIndexOfWithNSString:(id)string withInt:(int)int;
- (int)length;
- (int)offsetByCodePointsWithInt:(int)int withInt:(int)withInt;
- (unsigned)charAtWithInt:(int)int;
- (void)ensureCapacityWithInt:(int)int;
- (void)getCharsWithInt:(int)int withInt:(int)withInt withCharArray:(id)array withInt:(int)a6;
- (void)setCharAtWithInt:(int)int withChar:(unsigned __int16)char;
- (void)setLengthWithInt:(int)int;
- (void)trimToSize;
@end

@implementation JavaLangStringBuffer

- (JavaLangStringBuffer)initWithJavaLangCharSequence:(id)sequence
{
  if (!sequence)
  {
    JreThrowNullPointerException();
  }

  JavaLangStringBuffer_initWithNSString_(self, [sequence description]);
  return self;
}

- (id)appendWithBoolean:(BOOL)boolean
{
  if (boolean)
  {
    v3 = @"true";
  }

  else
  {
    v3 = @"false";
  }

  return [(JavaLangStringBuffer *)self appendWithNSString:v3];
}

- (id)appendWithChar:(unsigned __int16)char
{
  objc_sync_enter(self);
  JreStringBuilder_appendChar(&self->super.delegate_, char);
  objc_sync_exit(self);
  return self;
}

- (id)appendWithId:(id)id
{
  objc_sync_enter(self);
  if (id)
  {
    JreStringBuilder_appendString(&self->super.delegate_, [id description]);
  }

  else
  {
    JreStringBuilder_appendNull(&self->super.delegate_);
  }

  objc_sync_exit(self);
  return self;
}

- (id)appendWithNSString:(id)string
{
  objc_sync_enter(self);
  JreStringBuilder_appendString(&self->super.delegate_, string);
  objc_sync_exit(self);
  return self;
}

- (id)appendWithJavaLangStringBuffer:(id)buffer
{
  objc_sync_enter(self);
  if (buffer)
  {
    objc_sync_enter(buffer);
    JreStringBuilder_appendBuffer(&self->super.delegate_, *(buffer + 1), *(buffer + 5));
    objc_sync_exit(buffer);
  }

  else
  {
    JreStringBuilder_appendNull(&self->super.delegate_);
  }

  objc_sync_exit(self);
  return self;
}

- (id)appendWithCharArray:(id)array
{
  objc_sync_enter(self);
  JreStringBuilder_appendCharArray(&self->super.delegate_, array);
  objc_sync_exit(self);
  return self;
}

- (id)appendWithCharArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v6 = *&int;
  objc_sync_enter(self);
  JreStringBuilder_appendCharArraySubset(&self->super.delegate_, array, v6, withInt);
  objc_sync_exit(self);
  return self;
}

- (id)appendWithJavaLangCharSequence:(id)sequence
{
  objc_sync_enter(self);
  if (sequence)
  {
    JreStringBuilder_appendCharSequence(&self->super.delegate_, sequence, 0, [sequence length]);
  }

  else
  {
    JreStringBuilder_appendNull(&self->super.delegate_);
  }

  objc_sync_exit(self);
  return self;
}

- (id)appendWithJavaLangCharSequence:(id)sequence withInt:(int)int withInt:(int)withInt
{
  v6 = *&int;
  objc_sync_enter(self);
  JreStringBuilder_appendCharSequence(&self->super.delegate_, sequence, v6, withInt);
  objc_sync_exit(self);
  return self;
}

- (id)appendCodePointWithInt:(int)int
{
  v9 = JavaLangCharacter_toCharsWithInt_(*&int, a2, *&int, v3, v4, v5, v6, v7);

  return [(JavaLangStringBuffer *)self appendWithCharArray:v9];
}

- (unsigned)charAtWithInt:(int)int
{
  v3 = *&int;
  objc_sync_enter(self);
  v6.receiver = self;
  v6.super_class = JavaLangStringBuffer;
  LOWORD(v3) = [(JavaLangAbstractStringBuilder *)&v6 charAtWithInt:v3];
  objc_sync_exit(self);
  return v3;
}

- (int)codePointAtWithInt:(int)int
{
  v3 = *&int;
  objc_sync_enter(self);
  v6.receiver = self;
  v6.super_class = JavaLangStringBuffer;
  LODWORD(v3) = [(JavaLangAbstractStringBuilder *)&v6 codePointAtWithInt:v3];
  objc_sync_exit(self);
  return v3;
}

- (int)codePointBeforeWithInt:(int)int
{
  v3 = *&int;
  objc_sync_enter(self);
  v6.receiver = self;
  v6.super_class = JavaLangStringBuffer;
  LODWORD(v3) = [(JavaLangAbstractStringBuilder *)&v6 codePointBeforeWithInt:v3];
  objc_sync_exit(self);
  return v3;
}

- (int)codePointCountWithInt:(int)int withInt:(int)withInt
{
  v4 = *&withInt;
  v5 = *&int;
  objc_sync_enter(self);
  v8.receiver = self;
  v8.super_class = JavaLangStringBuffer;
  LODWORD(v4) = [(JavaLangAbstractStringBuilder *)&v8 codePointCountWithInt:v5 withInt:v4];
  objc_sync_exit(self);
  return v4;
}

- (id)delete__WithInt:(int)int withInt:(int)withInt
{
  v5 = *&int;
  objc_sync_enter(self);
  JreStringBuilder_delete(&self->super.delegate_, v5, withInt);
  objc_sync_exit(self);
  return self;
}

- (id)deleteCharAtWithInt:(int)int
{
  v3 = *&int;
  objc_sync_enter(self);
  JreStringBuilder_deleteCharAt(&self->super.delegate_, v3);
  objc_sync_exit(self);
  return self;
}

- (void)ensureCapacityWithInt:(int)int
{
  v3 = *&int;
  objc_sync_enter(self);
  v5.receiver = self;
  v5.super_class = JavaLangStringBuffer;
  [(JavaLangAbstractStringBuilder *)&v5 ensureCapacityWithInt:v3];
  objc_sync_exit(self);
}

- (void)getCharsWithInt:(int)int withInt:(int)withInt withCharArray:(id)array withInt:(int)a6
{
  v6 = *&a6;
  v8 = *&withInt;
  v9 = *&int;
  objc_sync_enter(self);
  v11.receiver = self;
  v11.super_class = JavaLangStringBuffer;
  [(JavaLangAbstractStringBuilder *)&v11 getCharsWithInt:v9 withInt:v8 withCharArray:array withInt:v6];
  objc_sync_exit(self);
}

- (int)indexOfWithNSString:(id)string withInt:(int)int
{
  v4 = *&int;
  objc_sync_enter(self);
  v8.receiver = self;
  v8.super_class = JavaLangStringBuffer;
  LODWORD(v4) = [(JavaLangAbstractStringBuilder *)&v8 indexOfWithNSString:string withInt:v4];
  objc_sync_exit(self);
  return v4;
}

- (id)insertWithInt:(int)int withChar:(unsigned __int16)char
{
  v5 = *&int;
  objc_sync_enter(self);
  JreStringBuilder_insertChar(&self->super.delegate_, v5, char);
  objc_sync_exit(self);
  return self;
}

- (id)insertWithInt:(int)int withBoolean:(BOOL)boolean
{
  if (boolean)
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  return [(JavaLangStringBuffer *)self insertWithInt:*&int withNSString:v4];
}

- (id)insertWithInt:(int)int withInt:(int)withInt
{
  v4 = *&int;
  v6 = JavaLangInteger_toStringWithInt_(withInt);

  return [(JavaLangStringBuffer *)self insertWithInt:v4 withNSString:v6];
}

- (id)insertWithInt:(int)int withLong:(int64_t)long
{
  v4 = *&int;
  v6 = JavaLangLong_toStringWithLong_(long, a2);

  return [(JavaLangStringBuffer *)self insertWithInt:v4 withNSString:v6];
}

- (id)insertWithInt:(int)int withDouble:(double)double
{
  v4 = *&int;
  v6 = JavaLangDouble_toStringWithDouble_(self, a2, double);

  return [(JavaLangStringBuffer *)self insertWithInt:v4 withNSString:v6];
}

- (id)insertWithInt:(int)int withFloat:(float)float
{
  v4 = *&int;
  v6 = JavaLangFloat_toStringWithFloat_(self, a2, float);

  return [(JavaLangStringBuffer *)self insertWithInt:v4 withNSString:v6];
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

  return [(JavaLangStringBuffer *)self insertWithInt:v4 withNSString:v6];
}

- (id)insertWithInt:(int)int withNSString:(id)string
{
  v5 = *&int;
  objc_sync_enter(self);
  JreStringBuilder_insertString(&self->super.delegate_, v5, string);
  objc_sync_exit(self);
  return self;
}

- (id)insertWithInt:(int)int withCharArray:(id)array
{
  v5 = *&int;
  objc_sync_enter(self);
  JreStringBuilder_insertCharArray(&self->super.delegate_, v5, array);
  objc_sync_exit(self);
  return self;
}

- (id)insertWithInt:(int)int withCharArray:(id)array withInt:(int)withInt withInt:(int)a6
{
  v6 = *&a6;
  v7 = *&withInt;
  v9 = *&int;
  objc_sync_enter(self);
  JreStringBuilder_insertCharArraySubset(&self->super.delegate_, v9, array, v7, v6);
  objc_sync_exit(self);
  return self;
}

- (id)insertWithInt:(int)int withJavaLangCharSequence:(id)sequence
{
  v5 = *&int;
  objc_sync_enter(self);
  if (sequence)
  {
    v7 = [sequence description];
  }

  else
  {
    v7 = @"null";
  }

  JreStringBuilder_insertString(&self->super.delegate_, v5, v7);
  objc_sync_exit(self);
  return self;
}

- (id)insertWithInt:(int)int withJavaLangCharSequence:(id)sequence withInt:(int)withInt withInt:(int)a6
{
  v6 = *&a6;
  v7 = *&withInt;
  v9 = *&int;
  objc_sync_enter(self);
  JreStringBuilder_insertCharSequence(&self->super.delegate_, v9, sequence, v7, v6);
  objc_sync_exit(self);
  return self;
}

- (int)lastIndexOfWithNSString:(id)string withInt:(int)int
{
  v4 = *&int;
  objc_sync_enter(self);
  v8.receiver = self;
  v8.super_class = JavaLangStringBuffer;
  LODWORD(v4) = [(JavaLangAbstractStringBuilder *)&v8 lastIndexOfWithNSString:string withInt:v4];
  objc_sync_exit(self);
  return v4;
}

- (int)length
{
  v3.receiver = self;
  v3.super_class = JavaLangStringBuffer;
  return [(JavaLangAbstractStringBuilder *)&v3 length];
}

- (int)offsetByCodePointsWithInt:(int)int withInt:(int)withInt
{
  v4 = *&withInt;
  v5 = *&int;
  objc_sync_enter(self);
  v8.receiver = self;
  v8.super_class = JavaLangStringBuffer;
  LODWORD(v4) = [(JavaLangAbstractStringBuilder *)&v8 offsetByCodePointsWithInt:v5 withInt:v4];
  objc_sync_exit(self);
  return v4;
}

- (id)replaceWithInt:(int)int withInt:(int)withInt withNSString:(id)string
{
  v7 = *&int;
  objc_sync_enter(self);
  JreStringBuilder_replace(&self->super.delegate_, v7, withInt, string);
  objc_sync_exit(self);
  return self;
}

- (id)reverse
{
  objc_sync_enter(self);
  JreStringBuilder_reverse(&self->super.delegate_);
  objc_sync_exit(self);
  return self;
}

- (void)setCharAtWithInt:(int)int withChar:(unsigned __int16)char
{
  charCopy = char;
  v5 = *&int;
  objc_sync_enter(self);
  v7.receiver = self;
  v7.super_class = JavaLangStringBuffer;
  [(JavaLangAbstractStringBuilder *)&v7 setCharAtWithInt:v5 withChar:charCopy];
  objc_sync_exit(self);
}

- (void)setLengthWithInt:(int)int
{
  v3 = *&int;
  objc_sync_enter(self);
  v5.receiver = self;
  v5.super_class = JavaLangStringBuffer;
  [(JavaLangAbstractStringBuilder *)&v5 setLengthWithInt:v3];
  objc_sync_exit(self);
}

- (id)subSequenceFrom:(int)from to:(int)to
{
  v4 = *&to;
  v5 = *&from;
  objc_sync_enter(self);
  v9.receiver = self;
  v9.super_class = JavaLangStringBuffer;
  v7 = [(JavaLangAbstractStringBuilder *)&v9 substringWithInt:v5 withInt:v4];
  objc_sync_exit(self);
  return v7;
}

- (id)substringWithInt:(int)int
{
  v3 = *&int;
  objc_sync_enter(self);
  v7.receiver = self;
  v7.super_class = JavaLangStringBuffer;
  v5 = [(JavaLangAbstractStringBuilder *)&v7 substringWithInt:v3];
  objc_sync_exit(self);
  return v5;
}

- (id)substringWithInt:(int)int withInt:(int)withInt
{
  v4 = *&withInt;
  v5 = *&int;
  objc_sync_enter(self);
  v9.receiver = self;
  v9.super_class = JavaLangStringBuffer;
  v7 = [(JavaLangAbstractStringBuilder *)&v9 substringWithInt:v5 withInt:v4];
  objc_sync_exit(self);
  return v7;
}

- (NSString)description
{
  objc_sync_enter(self);
  v3 = JreStringBuilder_toString(&self->super.delegate_);
  objc_sync_exit(self);
  return &v3->isa;
}

- (void)trimToSize
{
  objc_sync_enter(self);
  v3.receiver = self;
  v3.super_class = JavaLangStringBuffer;
  [(JavaLangAbstractStringBuilder *)&v3 trimToSize];
  objc_sync_exit(self);
}

@end