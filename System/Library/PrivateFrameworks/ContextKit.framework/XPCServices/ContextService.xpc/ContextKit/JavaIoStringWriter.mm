@interface JavaIoStringWriter
- (id)appendWithJavaLangCharSequence:(id)sequence;
- (id)appendWithJavaLangCharSequence:(id)sequence withInt:(int)int withInt:(int)withInt;
- (id)description;
- (void)dealloc;
- (void)writeWithCharArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)writeWithInt:(int)int;
- (void)writeWithNSString:(id)string;
- (void)writeWithNSString:(id)string withInt:(int)int withInt:(int)withInt;
@end

@implementation JavaIoStringWriter

- (id)description
{
  buf = self->buf_;
  if (!buf)
  {
    JreThrowNullPointerException();
  }

  return [(JavaLangStringBuffer *)buf description];
}

- (void)writeWithCharArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    goto LABEL_8;
  }

  v5 = *&withInt;
  v6 = *&int;
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), *&int, withInt);
  if (!v5)
  {
    return;
  }

  buf = self->buf_;
  if (!buf)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  [(JavaLangStringBuffer *)buf appendWithCharArray:array withInt:v6 withInt:v5];
}

- (void)writeWithInt:(int)int
{
  buf = self->buf_;
  if (!buf)
  {
    JreThrowNullPointerException();
  }

  [(JavaLangStringBuffer *)buf appendWithChar:int];
}

- (void)writeWithNSString:(id)string
{
  buf = self->buf_;
  if (!buf)
  {
    JreThrowNullPointerException();
  }

  [(JavaLangStringBuffer *)buf appendWithNSString:string];
}

- (void)writeWithNSString:(id)string withInt:(int)int withInt:(int)withInt
{
  if (!string || (v6 = [string substring:*&int endIndex:(withInt + int)], (buf = self->buf_) == 0))
  {
    JreThrowNullPointerException();
  }

  [(JavaLangStringBuffer *)buf appendWithNSString:v6];
}

- (id)appendWithJavaLangCharSequence:(id)sequence
{
  if (sequence)
  {
    sequenceCopy = sequence;
  }

  else
  {
    sequenceCopy = @"null";
  }

  [(JavaIoStringWriter *)self writeWithNSString:[(__CFString *)sequenceCopy description]];
  return self;
}

- (id)appendWithJavaLangCharSequence:(id)sequence withInt:(int)int withInt:(int)withInt
{
  if (sequence)
  {
    sequenceCopy = sequence;
  }

  else
  {
    sequenceCopy = @"null";
  }

  v7 = [(__CFString *)sequenceCopy subSequenceFrom:*&int to:*&withInt];
  if (!v7 || (v8 = [v7 description]) == 0)
  {
    JreThrowNullPointerException();
  }

  -[JavaIoStringWriter writeWithNSString:withInt:withInt:](self, "writeWithNSString:withInt:withInt:", v8, 0, [v8 length]);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoStringWriter;
  [(JavaIoWriter *)&v3 dealloc];
}

@end