@interface JavaIoWriter
- (id)appendWithJavaLangCharSequence:(id)sequence;
- (id)appendWithJavaLangCharSequence:(id)sequence withInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)writeWithCharArray:(id)array;
- (void)writeWithInt:(int)int;
- (void)writeWithNSString:(id)string;
- (void)writeWithNSString:(id)string withInt:(int)int withInt:(int)withInt;
@end

@implementation JavaIoWriter

- (void)writeWithCharArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  [(JavaIoWriter *)self writeWithCharArray:array withInt:0 withInt:v4];
}

- (void)writeWithInt:(int)int
{
  intCopy = int;
  lock = self->lock_;
  objc_sync_enter(lock);
  v6 = [IOSCharArray arrayWithLength:1];
  size = v6->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  *(&v6->super.size_ + 2) = intCopy;
  [(JavaIoWriter *)self writeWithCharArray:v6];

  objc_sync_exit(lock);
}

- (void)writeWithNSString:(id)string
{
  if (!string)
  {
    JreThrowNullPointerException();
  }

  v5 = [string length];

  [(JavaIoWriter *)self writeWithNSString:string withInt:0 withInt:v5];
}

- (void)writeWithNSString:(id)string withInt:(int)int withInt:(int)withInt
{
  v6 = *&int;
  if ((withInt | int) < 0)
  {
    goto LABEL_8;
  }

  if (!string)
  {
    JreThrowNullPointerException();
  }

  if (([string length] - withInt) < int)
  {
LABEL_8:
    v11 = new_JavaLangStringIndexOutOfBoundsException_initWithNSString_withInt_withInt_(string);
    objc_exception_throw(v11);
  }

  v9 = [IOSCharArray arrayWithLength:withInt];
  [string getChars:v6 sourceEnd:(withInt + v6) destination:v9 destinationBegin:0];
  lock = self->lock_;
  objc_sync_enter(lock);
  [(JavaIoWriter *)self writeWithCharArray:v9 withInt:0 withInt:v9->super.size_];

  objc_sync_exit(lock);
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

  [(JavaIoWriter *)self writeWithNSString:[(__CFString *)sequenceCopy description]];
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
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  -[JavaIoWriter writeWithNSString:](self, "writeWithNSString:", [v7 description]);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoWriter;
  [(JavaIoWriter *)&v3 dealloc];
}

@end